@Epic-Reconsideration
@AuthoredBy-harshita.nayak
@ReviewedBy-tushar.chauhan
@ReviewedByDEV
@Release3

Feature: Intent Indicators for Field Investigations field validation in Reconsideration

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0

  @ImplementedBy-aniket.tripathi
  Scenario Outline: ACAUTOCAS-3564: Viewing the <Fii_Status> of Field Investigations Details with their <field_name> in Intent Indicators at Reconsideration for <Applicant>
    And user opens an application at "<Var_Stage>" stage from application grid
    And user reads data from the excel file "<FieldInvestigationWB>" under sheet "<FieldInvestigation_initiation>" and row <FieldInvestigation_initiation_rowNum>
    And user changes the application current status to fii "<Fii_Status>" status
    When user is on Intent Indicators at "<Stage>" stage
    And user check the "<Fii_Status>" status of Field Investigations Details at Reconsideration
    Then "<field_name>" should be present for view mode in Field Investigations Details with "<Fii_Status>" under Intent Indicators

    Examples:
      | Applicant  | Fii_Status            | field_name        | Var_Stage                             | Stage           | FieldInvestigationWB     | FieldInvestigation_initiation | FieldInvestigation_initiation_rowNum |
      | Individual | Initiate Verification | Verification Type | fii_indiv_reconsiderationinitiated_hl | reconsideration | field_investigation.xlsx | initiation                    | 0                                    |
      | Individual | Initiate Verification | Applicant Name    | fii_indiv_reconsiderationinitiated_hl | reconsideration | field_investigation.xlsx | initiation                    | 0                                    |
      | Individual | Initiate Verification | Applicant Type    | fii_indiv_reconsiderationinitiated_hl | reconsideration | field_investigation.xlsx | initiation                    | 0                                    |
      | Individual | Initiate Verification | Result            | fii_indiv_reconsiderationinitiated_hl | reconsideration | field_investigation.xlsx | initiation                    | 0                                    |
      | Individual | Initiate Verification | Verification Type | fii_indiv_reconsiderationinitiated_pl | reconsideration | field_investigation.xlsx | initiation                    | 0                                    |
      | Individual | Initiate Verification | Applicant Name    | fii_indiv_reconsiderationinitiated_pl | reconsideration | field_investigation.xlsx | initiation                    | 0                                    |
      | Individual | Initiate Verification | Applicant Type    | fii_indiv_reconsiderationinitiated_pl | reconsideration | field_investigation.xlsx | initiation                    | 0                                    |
      | Individual | Initiate Verification | Result            | fii_indiv_reconsiderationinitiated_pl | reconsideration | field_investigation.xlsx | initiation                    | 0                                    |
      | Individual | Initiate Verification | Verification Type | fii_indiv_reconsiderationinitiated_mal | reconsideration | field_investigation.xlsx | initiation                    | 0                                    |
      | Individual | Initiate Verification | Applicant Name    | fii_indiv_reconsiderationinitiated_mal | reconsideration | field_investigation.xlsx | initiation                    | 0                                    |
      | Individual | Initiate Verification | Applicant Type    | fii_indiv_reconsiderationinitiated_mal | reconsideration | field_investigation.xlsx | initiation                    | 0                                    |
      | Individual | Initiate Verification | Result            | fii_indiv_reconsiderationinitiated_mal | reconsideration | field_investigation.xlsx | initiation                    | 0                                    |
      | Individual | Waived of All         | Waive Off Reason  | fii_indiv_reconsiderationwaived_hl    | reconsideration | field_investigation.xlsx | initiation                    | 0                                    |
      | Individual | Waived of All         | Description       | fii_indiv_reconsiderationwaived_hl    | reconsideration | field_investigation.xlsx | initiation                    | 0                                    |
      | Individual | Waived of All         | Comment           | fii_indiv_reconsiderationwaived_hl    | reconsideration | field_investigation.xlsx | initiation                    | 0                                    |
      | Individual | Waived of All         | User By           | fii_indiv_reconsiderationwaived_hl    | reconsideration | field_investigation.xlsx | initiation                    | 0                                    |
      | Individual | Waived of All         | Waive Off Reason  | fii_indiv_reconsiderationwaived_pl    | reconsideration | field_investigation.xlsx | initiation                    | 0                                    |
      | Individual | Waived of All         | Description       | fii_indiv_reconsiderationwaived_pl    | reconsideration | field_investigation.xlsx | initiation                    | 0                                    |
      | Individual | Waived of All         | Comment           | fii_indiv_reconsiderationwaived_pl    | reconsideration | field_investigation.xlsx | initiation                    | 0                                    |
      | Individual | Waived of All         | User By           | fii_indiv_reconsiderationwaived_pl    | reconsideration | field_investigation.xlsx | initiation                    | 0                                    |
      | Individual | Waived of All         | Waive Off Reason  | fii_indiv_reconsiderationwaived_mal    | reconsideration | field_investigation.xlsx | initiation                    | 0                                    |
      | Individual | Waived of All         | Description       | fii_indiv_reconsiderationwaived_mal    | reconsideration | field_investigation.xlsx | initiation                    | 0                                    |
      | Individual | Waived of All         | Comment           | fii_indiv_reconsiderationwaived_mal    | reconsideration | field_investigation.xlsx | initiation                    | 0                                    |
      | Individual | Waived of All         | User By           | fii_indiv_reconsiderationwaived_mal    | reconsideration | field_investigation.xlsx | initiation                    | 0                                    |

  @ImplementedBy-tushar.chauhan
  Scenario Outline: ACAUTOCAS-3564: Viewing the <Fii_Status> of Field Investigations Details with their <field_name> in Intent Indicators at Reconsideration for <Applicant>
    And user opens an application at "<Var_Stage>" stage from application grid
    And user reads data from the excel file "<FieldInvestigationWB>" under sheet "<FieldInvestigation_initiation>" and row <FieldInvestigation_initiation_rowNum>
    And user changes the application current status to fii "<Fii_Status>" status
    When user is on Intent Indicators at "<Stage>" stage
    And user check the "<Fii_Status>" status of Field Investigations Details at Reconsideration
    Then "<field_name>" should be present for view mode in Field Investigations Details with "<Fii_Status>" under Intent Indicators

    Examples:
      | Var_Stage                                | Stage           | Fii_Status             | field_name        | Applicant      | FieldInvestigationWB     | FieldInvestigation_initiation | FieldInvestigation_initiation_rowNum |
      | fii_nonindiv_reconsiderationinitiated_hl | reconsideration | Initiate Verification  | Verification Type | Non-Individual | field_investigation.xlsx | initiation                    | 0                                    |
      | fii_nonindiv_reconsiderationinitiated_hl | reconsideration | Initiate Verification  | Applicant Name    | Non-Individual | field_investigation.xlsx | initiation                    | 0                                    |
      | fii_nonindiv_reconsiderationinitiated_hl | reconsideration | Initiate Verification  | Applicant Type    | Non-Individual | field_investigation.xlsx | initiation                    | 0                                    |
      | fii_nonindiv_reconsiderationinitiated_hl | reconsideration | Initiate Verification  | Result            | Non-Individual | field_investigation.xlsx | initiation                    | 0                                    |
      | fii_nonindiv_reconsiderationinitiated_pl | reconsideration | Initiate Verification  | Verification Type | Non-Individual | field_investigation.xlsx | initiation                    | 0                                    |
      | fii_nonindiv_reconsiderationinitiated_pl | reconsideration | fInitiate Verification | Applicant Name    | Non-Individual | field_investigation.xlsx | initiation                    | 0                                    |
      | fii_nonindiv_reconsiderationinitiated_pl | reconsideration | Initiate Verification  | Applicant Type    | Non-Individual | field_investigation.xlsx | initiation                    | 0                                    |
      | fii_nonindiv_reconsiderationinitiated_pl | reconsideration | Initiate Verification  | Result            | Non-Individual | field_investigation.xlsx | initiation                    | 0                                    |
      | fii_nonindiv_reconsiderationinitiated_mal | reconsideration | Initiate Verification  | Verification Type | Non-Individual | field_investigation.xlsx | initiation                    | 0                                    |
      | fii_nonindiv_reconsiderationinitiated_mal | reconsideration | Initiate Verification  | Applicant Name    | Non-Individual | field_investigation.xlsx | initiation                    | 0                                    |
      | fii_nonindiv_reconsiderationinitiated_mal | reconsideration | Initiate Verification  | Applicant Type    | Non-Individual | field_investigation.xlsx | initiation                    | 0                                    |
      | fii_nonindiv_reconsiderationinitiated_mal | reconsideration | Initiate Verification  | Result            | Non-Individual | field_investigation.xlsx | initiation                    | 0                                    |
      | fii_nonindiv_reconsiderationwaived_hl    | reconsideration | Waived of All          | Waive Off Reason  | Non-Individual | field_investigation.xlsx | initiation                    | 0                                    |
      | fii_nonindiv_reconsiderationwaived_hl    | reconsideration | Waived of All          | Description       | Non-Individual | field_investigation.xlsx | initiation                    | 0                                    |
      | fii_nonindiv_reconsiderationwaived_hl    | reconsideration | Waived of All          | Comment           | Non-Individual | field_investigation.xlsx | initiation                    | 0                                    |
      | fii_nonindiv_reconsiderationwaived_hl    | reconsideration | Waived of All          | User By           | Non-Individual | field_investigation.xlsx | initiation                    | 0                                    |
      | fii_nonindiv_reconsiderationwaived_pl    | reconsideration | Waived of All          | Waive Off Reason  | Non-Individual | field_investigation.xlsx | initiation                    | 0                                    |
      | fii_nonindiv_reconsiderationwaived_pl    | reconsideration | Waived of All          | Description       | Non-Individual | field_investigation.xlsx | initiation                    | 0                                    |
      | fii_nonindiv_reconsiderationwaived_pl    | reconsideration | Waived of All          | Comment           | Non-Individual | field_investigation.xlsx | initiation                    | 0                                    |
      | fii_nonindiv_reconsiderationwaived_pl    | reconsideration | Waived of All          | User By           | Non-Individual | field_investigation.xlsx | initiation                    | 0                                    |
      | fii_nonindiv_reconsiderationwaived_mal    | reconsideration | Waived of All          | Waive Off Reason  | Non-Individual | field_investigation.xlsx | initiation                    | 0                                    |
      | fii_nonindiv_reconsiderationwaived_mal    | reconsideration | Waived of All          | Description       | Non-Individual | field_investigation.xlsx | initiation                    | 0                                    |
      | fii_nonindiv_reconsiderationwaived_mal    | reconsideration | Waived of All          | Comment           | Non-Individual | field_investigation.xlsx | initiation                    | 0                                    |
      | fii_nonindiv_reconsiderationwaived_mal    | reconsideration | Waived of All          | User By           | Non-Individual | field_investigation.xlsx | initiation                    | 0                                    |

  @ImplementedBy-aniket.tripathi
  Scenario Outline: ACAUTOCAS-3565: Viewing the FI History in Intent Indicators at Reconsideration
    And user opens an application at "<Var_Stage>" stage from application grid
    And user reads data from the excel file "<ReconsiderationWB>" under sheet "<Reconsideration_intent_indicators>" and row <Reconsideration_intent_indicators_rowNum>
    And user is on Intent Indicators Field Investigations details
    When user open FI History under Intent Indicators
    Then should able the view the history of FI

    Examples:
      | Var_Stage                        | ReconsiderationWB    | Reconsideration_intent_indicators | Reconsideration_intent_indicators_rowNum |
      | reconsideration_individual_hl    | reconsideration.xlsx | intent_indicators                 | 0                                        |
      | reconsideration_individual_pl    | reconsideration.xlsx | intent_indicators                 | 0                                        |
      | reconsideration_individual_mal    | reconsideration.xlsx | intent_indicators                 | 0                                        |
      | reconsideration_nonindividual_hl | reconsideration.xlsx | intent_indicators                 | 0                                        |
      | reconsideration_nonindividual_pl | reconsideration.xlsx | intent_indicators                 | 0                                        |
      | reconsideration_nonindividual_mal | reconsideration.xlsx | intent_indicators                 | 0                                        |

  @ImplementedBy-tushar.chauhan
  Scenario Outline: ACAUTOCAS-3566: Unable to edit field with update details of FI Details in Intent Indicators at Reconsideration
    And user opens an application at "<Var_Stage>" stage from application grid
    And user reads data from the excel file "<ReconsiderationWB>" under sheet "<Reconsideration_IntentIndicators>" and row <Reconsideration_IntentIndicators_rowNum>
    When user "<var>" update details
    And user open FI History under Intent Indicators
    Then FI details should be "<visibility>" under Intent Indicators

    Examples:
      | Var_Stage                        | visibility   | var      | ReconsiderationWB    | Reconsideration_IntentIndicators | Reconsideration_IntentIndicators_rowNum |
      | reconsideration_individual_hl    | non-editable | unchecks | reconsideration.xlsx | intent_indicators                | 0                                       |
      | reconsideration_individual_hl    | non-editable | checks   | reconsideration.xlsx | intent_indicators                | 0                                       |
      | reconsideration_individual_pl    | non-editable | unchecks | reconsideration.xlsx | intent_indicators                | 0                                       |
      | reconsideration_individual_pl    | non-editable | checks   | reconsideration.xlsx | intent_indicators                | 0                                       |
      | reconsideration_individual_mal    | non-editable | unchecks | reconsideration.xlsx | intent_indicators                | 0                                       |
      | reconsideration_individual_mal    | non-editable | checks   | reconsideration.xlsx | intent_indicators                | 0                                       |
      | reconsideration_nonindividual_hl | non-editable | unchecks | reconsideration.xlsx | intent_indicators                | 0                                       |
      | reconsideration_nonindividual_hl | non-editable | checks   | reconsideration.xlsx | intent_indicators                | 0                                       |
      | reconsideration_nonindividual_pl | non-editable | unchecks | reconsideration.xlsx | intent_indicators                | 0                                       |
      | reconsideration_nonindividual_pl | non-editable | checks   | reconsideration.xlsx | intent_indicators                | 0                                       |
      | reconsideration_nonindividual_mal | non-editable | unchecks | reconsideration.xlsx | intent_indicators                | 0                                       |
      | reconsideration_nonindividual_mal | non-editable | checks   | reconsideration.xlsx | intent_indicators                | 0                                       |
