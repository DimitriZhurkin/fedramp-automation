Feature: OSCAL Document Constraints

@constraints
Scenario Outline: Validating OSCAL documents with metaschema constraints
  Given I have Metaschema extensions documents
    | filename                           |
#BEGIN_DYNAMIC_CONSTRAINT_FILES
  | fedramp-external-allowed-values-DZ.xml |
  | fedramp-external-allowed-values.xml |
  | fedramp-external-constraints-ssp-DZ.xml |
  | fedramp-external-constraints.xml |
  | oscal-external-constraints.xml |
#END_DYNAMIC_CONSTRAINT_FILES
  When I process the constraint unit test "<test_file>"
  Then the constraint unit test should pass

Examples:
  | test_file |
#BEGIN_DYNAMIC_TEST_CASES
  | address-type-FAIL.yaml |
  | address-type-PASS.yaml |
  | attachment-type-FAIL.yaml |
  | attachment-type-PASS.yaml |
  | authorization-type-FAIL.yaml |
  | authorization-type-PASS.yaml |
  | base64-has-content-FAIL.yaml |
  | base64-has-content-PASS.yaml |
  | categorization-has-correct-system-attribute-FAIL.yaml |
  | categorization-has-correct-system-attribute-PASS.yaml |
  | categorization-has-information-type-id-FAIL.yaml |
  | categorization-has-information-type-id-PASS.yaml |
  | categorization-has-system-attribute-FAIL.yaml |
  | categorization-has-system-attribute-PASS.yaml |
  | cia-impact-has-adjustment-justification-FAIL.yaml |
  | cia-impact-has-adjustment-justification-PASS.yaml |
  | cia-impact-has-base-FAIL.yaml |
  | cia-impact-has-base-PASS.yaml |
  | cia-impact-has-selected-FAIL.yaml |
  | cia-impact-has-selected-PASS.yaml |
  | cloud-service-model-FAIL.yaml |
  | cloud-service-model-PASS.yaml |
  | component-has-asset-type-FAIL.yaml |
  | component-has-asset-type-PASS.yaml |
  | component-has-one-asset-type-FAIL.yaml |
  | component-has-one-asset-type-PASS.yaml |
  | component-type-FAIL.yaml |
  | component-type-PASS.yaml |
  | control-implementation-status-FAIL.yaml |
  | control-implementation-status-PASS.yaml |
  | deployment-mode-FAIL.yaml |
  | deployment-mode-PASS.yaml |
  | extraneous-response-description-FAIL.yaml |
  | extraneous-response-description-PASS.yaml |
  | extraneous-response-remarks-FAIL.yaml |
  | extraneous-response-remarks-PASS.yaml |
  | has-asset-id-FAIL.yaml |
  | has-asset-id-PASS.yaml |
  | has-CMVP-validation-details-FAIL.yaml |
  | has-CMVP-validation-details-PASS.yaml |
  | has-CMVP-validation-FAIL.yaml |
  | has-CMVP-validation-PASS.yaml |
  | has-CMVP-validation-reference-FAIL.yaml |
  | has-CMVP-validation-reference-PASS.yaml |
  | has-consonant-CMVP-validation-details-FAIL.yaml |
  | has-consonant-CMVP-validation-details-PASS.yaml |
  | has-consonant-CMVP-validation-reference-FAIL.yaml |
  | has-consonant-CMVP-validation-reference-PASS.yaml |
  | has-credible-CMVP-validation-reference-FAIL.yaml |
  | has-credible-CMVP-validation-reference-PASS.yaml |
  | has-inventory-items-FAIL.yaml |
  | has-inventory-items-PASS.yaml |
  | has-one-asset-id-FAIL.yaml |
  | has-one-asset-id-PASS.yaml |
  | has-security-impact-level-FAIL.yaml |
  | has-security-impact-level-PASS.yaml |
  | has-security-objective-availability-FAIL.yaml |
  | has-security-objective-availability-PASS.yaml |
  | has-security-objective-confidentiality-FAIL.yaml |
  | has-security-objective-confidentiality-PASS.yaml |
  | has-security-objective-integrity-FAIL.yaml |
  | has-security-objective-integrity-PASS.yaml |
  | has-security-sensitivity-level-FAIL.yaml |
  | has-security-sensitivity-level-PASS.yaml |
  | has-system-name-FAIL.yaml |
  | has-system-name-PASS.yaml |
  | has-system-name-short-FAIL.yaml |
  | has-system-name-short-PASS.yaml |
  | has-this-system-component-FAIL.yaml |
  | has-this-system-component-PASS.yaml |
  | has-unique-asset-id-FAIL.yaml |
  | has-unique-asset-id-PASS.yaml |
  | has-unique-policy-and-procedure-FAIL.yaml |
  | has-unique-policy-and-procedure-PASS.yaml |
  | import-profile-has-href-attribute-FAIL.yaml |
  | import-profile-has-href-attribute-PASS.yaml |
  | incorrect-party-association-FAIL.yaml |
  | incorrect-party-association-PASS.yaml |
  | incorrect-role-association-FAIL.yaml |
  | incorrect-role-association-PASS.yaml |
  | information-type-has-availability-impact-FAIL.yaml |
  | information-type-has-availability-impact-PASS.yaml |
  | information-type-has-categorization-FAIL.yaml |
  | information-type-has-categorization-PASS.yaml |
  | information-type-has-confidentiality-impact-FAIL.yaml |
  | information-type-has-confidentiality-impact-PASS.yaml |
  | information-type-has-description-FAIL.yaml |
  | information-type-has-description-PASS.yaml |
  | information-type-has-integrity-impact-FAIL.yaml |
  | information-type-has-integrity-impact-PASS.yaml |
  | information-type-has-title-FAIL.yaml |
  | information-type-has-title-PASS.yaml |
  | information-type-system-FAIL.yaml |
  | information-type-system-PASS.yaml |
  | interconnection-direction-FAIL.yaml |
  | interconnection-direction-PASS.yaml |
  | interconnection-security-FAIL.yaml |
  | interconnection-security-PASS.yaml |
  | inventory-item-has-allows-authenticated-scan-FAIL.yaml |
  | inventory-item-has-allows-authenticated-scan-PASS.yaml |
  | inventory-item-has-asset-type-FAIL.yaml |
  | inventory-item-has-asset-type-PASS.yaml |
  | inventory-item-has-one-allows-authenticated-scan-FAIL.yaml |
  | inventory-item-has-one-allows-authenticated-scan-PASS.yaml |
  | inventory-item-has-one-asset-type-FAIL.yaml |
  | inventory-item-has-one-asset-type-PASS.yaml |
  | inventory-item-has-one-baseline-configuration-name-FAIL.yaml |
  | inventory-item-has-one-baseline-configuration-name-PASS.yaml |
  | inventory-item-has-one-public-FAIL.yaml |
  | inventory-item-has-one-public-PASS.yaml |
  | inventory-item-has-one-scan-type-FAIL.yaml |
  | inventory-item-has-one-scan-type-PASS.yaml |
  | inventory-item-has-one-virtual-FAIL.yaml |
  | inventory-item-has-one-virtual-PASS.yaml |
  | inventory-item-has-public-FAIL.yaml |
  | inventory-item-has-public-PASS.yaml |
  | inventory-item-has-scan-type-FAIL.yaml |
  | inventory-item-has-scan-type-PASS.yaml |
  | inventory-item-has-uuid-FAIL.yaml |
  | inventory-item-has-uuid-PASS.yaml |
  | inventory-item-has-virtual-FAIL.yaml |
  | inventory-item-has-virtual-PASS.yaml |
  | inventory-item-network-address-FAIL.yaml |
  | inventory-item-network-address-PASS.yaml |
  | ipv4-has-content-FAIL.yaml |
  | ipv4-has-content-PASS.yaml |
  | ipv4-has-non-placeholder-FAIL.yaml |
  | ipv4-has-non-placeholder-PASS.yaml |
  | ipv6-has-content-FAIL.yaml |
  | ipv6-has-content-PASS.yaml |
  | ipv6-has-non-placeholder-FAIL.yaml |
  | ipv6-has-non-placeholder-PASS.yaml |
  | missing-response-components-FAIL.yaml |
  | missing-response-components-PASS.yaml |
  | no-description-text-in-component-FAIL.yaml |
  | no-description-text-in-component-PASS.yaml |
  | privilege-level-FAIL.yaml |
  | privilege-level-PASS.yaml |
  | resource-base64-available-filename-FAIL.yaml |
  | resource-base64-available-filename-PASS.yaml |
  | resource-base64-available-media-type-FAIL.yaml |
  | resource-base64-available-media-type-PASS.yaml |
  | response-point-FAIL.yaml |
  | response-point-PASS.yaml |
  | scan-type-FAIL.yaml |
  | scan-type-PASS.yaml |
  | security-sensitivity-level-matches-security-impact-level-FAIL.yaml |
  | security-sensitivity-level-matches-security-impact-level-PASS.yaml |
  | system-information-has-information-type-FAIL.yaml |
  | system-information-has-information-type-PASS.yaml |
  | user-type-FAIL.yaml |
  | user-type-PASS.yaml |
#END_DYNAMIC_TEST_CASES

@full-coverage
Scenario: Ensuring full test coverage for each constraint
  Given I have loaded all Metaschema extensions documents
  And I have collected all YAML test files in the test directory
  When I extract all constraint IDs from the Metaschema extensions
  And I analyze the YAML test files for each constraint ID
  Then I should have both FAIL and PASS tests for each constraint ID:
    | Constraint ID  |
#BEGIN_DYNAMIC_CONSTRAINT_IDS
  | address-type |
  | attachment-type |
  | authorization-type |
  | cloud-service-model |
  | component-type |
  | control-implementation-status |
  | deployment-model |
  | import-profile-has-href-attribute |
  | information-type-system |
  | interconnection-direction |
  | interconnection-security |
  | privilege-level |
  | prop-response-point-has-cardinality-one |
  | scan-type |
  | user-type |
#END_DYNAMIC_CONSTRAINT_IDS