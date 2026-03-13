@Epic-Field_Investigation
@Release3
@ReviewedBy-aman.nagarkoti
@AuthoredBy-vipin.kishor
@ImplementedBy-aditya.tomar
@Reconciled
#FeatureID-ACAUTOCAS-491
Feature:Field investigation completion

  Scenario Outline: ACAUTOCAS-3335: Field investigation completion page
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    When user opens an application at "<Var_Stage>" stage from application grid
    Then On this page the grid displays "<FIC_Fields>" as column of the grid for each verification type performed for this Application

    Examples:
      | SourceDataFile       | SheetName | RowNumber | Var_Stage | FIC_Fields          |
      | LoginDetailsCAS.xlsx | LoginData | 0         | fic_hl    | Applicant Name      |
      | LoginDetailsCAS.xlsx | LoginData | 0         | fic_hl    | Applicant Type      |
      | LoginDetailsCAS.xlsx | LoginData | 0         | fic_hl    | Verification Date   |
      | LoginDetailsCAS.xlsx | LoginData | 0         | fic_hl    | Verification Type   |
      | LoginDetailsCAS.xlsx | LoginData | 0         | fic_hl    | Verification Agency |
      | LoginDetailsCAS.xlsx | LoginData | 0         | fic_hl    | Verification Agent  |
      | LoginDetailsCAS.xlsx | LoginData | 0         | fic_hl    | Result              |


  Scenario Outline: ACAUTOCAS-3336: View details of Field investigation verification in Field investigation completion
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    When user opens an application at "<Var_Stage>" stage from application grid
    And user navigates to view details inside result tab
    Then details of Field investigation verification successfully display
    Examples:
      | SourceDataFile       | SheetName | RowNumber | Var_Stage |
      | LoginDetailsCAS.xlsx | LoginData | 0         | fic_hl    |


  Scenario Outline: ACAUTOCAS-3337: View FI History in Field investigation completion
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    When user opens an application at "<Var_Stage>" stage from application grid
    And user View FI History
    Then FI History should be successfully display
    Examples:
      | SourceDataFile       | SheetName | RowNumber | Var_Stage |
      | LoginDetailsCAS.xlsx | LoginData | 0         | fic_hl    |


  Scenario Outline: ACAUTOCAS-3338: Dependent fields validation in Field investigation completion
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user opens an application at "<Var_Stage>" stage from application grid
    And user reads data from the excel file "<FieldInvestigationCompletionWB>" under sheet "<FieldInvestigationCompletion_decision>" and row <FieldInvestigationCompletion_rowNum>
    When user selects "<SelectedField>" on FIC
    Then "<DependentField>" field is "<Populated>" automatically based on the selected "<SelectedField>"
    Examples:
      | SourceDataFile       | SheetName | RowNumber | Var_Stage | SelectedField         | DependentField     | Populated | FieldInvestigationCompletionWB | FieldInvestigationCompletion_decision | FieldInvestigationCompletion_rowNum |
      | LoginDetailsCAS.xlsx | LoginData | 0         | fic_hl    | Decision              | Reason             | listed    | field_investigation.xlsx       | field_investigation_completion        | 0                                   |
      | LoginDetailsCAS.xlsx | LoginData | 0         | fic_hl    | Reason (except Other) | Reason Description | populated | field_investigation.xlsx       | field_investigation_completion        | 0                                   |





#  Scenario Outline:"<Decision>" Field investigation completion
#    Given user is on CAS Login Page
#    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
#    And user opens an application at "<Var_Stage>" stage from application grid
#    And user reads data from the excel file "<FieldInvestigationCompletionWB>" under sheet "<FieldInvestigationCompletion_decision>" and row <FieldInvestigationCompletion_rowNum>
#    When user "<Decision>" FIC with valid reason
#    Then  "<Var>" gets "<Decision>" successfully
#    Examples:
#      | SourceDataFile       | SheetName | RowNumber | Var_Stage | SelectedField | DependentField | Populated | FieldInvestigationCompletionWB | FieldInvestigationCompletion_decision | FieldInvestigationCompletion_rowNum | Decision | Var         |
#      | LoginDetailsCAS.xlsx | LoginData | 7         | fic       | Decision      | Reason         | listed    | field_investigation.xlsx       | field_investigation_completion        | 2                                   | reject   | application |
#      | LoginDetailsCAS.xlsx | LoginData | 7         | fic       | Decision      | Reason         | listed    | field_investigation.xlsx       | field_investigation_completion        | 0                                   | approve  | FI flow     |
#
#
#
##    Examples:
##      | SourceDataFile       | SheetName | LoginRow | Decision | Var         |
##      | LoginDetailsCAS.xlsx | LoginData | 0        | reject   | application |
##      | LoginDetailsCAS.xlsx | LoginData | 0        | approve  | FI flow     |


