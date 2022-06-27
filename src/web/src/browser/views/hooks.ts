import { Reducer, useCallback, useRef, useState } from 'react';

export interface ThunkDispatch<S, A, E> {
  <
    Action extends ({
      dispatch,
      getState,
      effects,
    }: {
      dispatch: ThunkDispatch<S, A, E>;
      getState: () => S;
      effects: E;
    }) => unknown,
  >(
    action: Action,
  ): ReturnType<Action>;
  (value: A): void;
}

export const useThunkReducer = <State, Event, Effects>(
  reducer: Reducer<State, Event>,
  effects: Effects,
  initialState: State,
): [State, ThunkDispatch<State, Event, Effects>] => {
  const [hookState, setHookState] = useState(initialState);

  const state = useRef(hookState);
  const getState = useCallback(() => state.current, [state]);
  const setState = useCallback(
    (newState: State) => {
      state.current = newState;
      setHookState(newState);
    },
    [state, setHookState],
  );

  const reduce = useCallback(
    (event: Event) => {
      return reducer(getState(), event);
    },
    [reducer, getState],
  );

  // Dispatcher that optionally calls a thunk
  const dispatch: ThunkDispatch<State, Event, Effects> = useCallback(
    (event: Event) => {
      return typeof event === 'function'
        ? event({ dispatch, getState, effects })
        : setState(reduce(event));
    },
    [getState, setState, reduce],
  );

  return [hookState, dispatch];
};
