@Epic-Field_Investigation
@AuthoredBy-vipin.kishor
@ReviewedBy_None
@ImplementedBy-piyush.agnihotri
@ReviewedByDEV
#FeatureID-ACAUTOCAS-485
Feature:Field investigation verification


  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0



  @Release3
  Scenario Outline: ACAUTOCAS-1654: Field investigation verification page
    When user open Field Investigation Verification page
    Then On this page the grid displays "<FIV_Fields>"
    Examples:
      | FIV_Fields         |
      | Verification Type  |
      | Application Number |
      | Customer Number    |
      | Applicant Name     |

  @Release3
  Scenario Outline: ACAUTOCAS-1656: Agency information in Bulk ReAllocation
    And user open Field Investigation Verification page
    And user open Bulk ReAllocation screen
    And user reads data from the excel file "<FieldInvestigation>" under sheet "<FieldInvestigationV>" and row <Row_Number>
    When user fills mandatory fields for FIV page
    Then agency information display in which "<AgencyField>" present
    Examples:
      | AgencyField                         | FieldInvestigation       | FieldInvestigationV | Row_Number |
      | Threshold ,current Status,Bandwidth | field_investigation.xlsx | FieldInvestigationV | 0          |


  @Release3
  Scenario Outline: ACAUTOCAS-3372: Cancel verification for "<NumberOfCase>"
    And user open Field Investigation Verification page
    And user selects "<NumberOfCase>" case
    And user reads data from the excel file "<FieldInvestigation>" under sheet "<FieldInvestigationV>" and row <Row_Number>
    When user cancel "<NumberOfCase>" with "<NumberOfReason>" reason
    Then verification cancel successfully
    Examples:
      | NumberOfCase           | NumberOfReason | FieldInvestigation       | FieldInvestigationV | Row_Number |
      | single case            | single         | field_investigation.xlsx | CancelVerification  | 0          |
      | multiple cases in bulk | multiple       | field_investigation.xlsx | CancelVerification  | 1          |

  @Release3
  Scenario: ACAUTOCAS-3373: Generate XLS of all Cases
    And user open Field Investigation Verification page
    When user generates xls
    Then xls of all cases generated successfully

  @Release3
    @Perishable
  Scenario Outline: ACAUTOCAS-3375: User should not assign query to himself in Field investigation verification
    And user opens an application of "FIV" stage variant from "FIV" grid
    And user reads data from the excel file "<FieldInvestigation>" under sheet "<FieldInvestigationV>" and row <Row_Number>
    When user assigned the query to itself with filling mandatory fields
    Then user should not able to assign the query to himself

    Examples:
      | FieldInvestigation       | FieldInvestigationV | Row_Number |
      | field_investigation.xlsx | QueryRaise          | 0          |


  Scenario Outline: ACAUTOCAS-3374: Attach "<DocSize>" document for verification
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <LoginRow>
    And user open Field Investigation Verification page
    And user open any cases from the FIV grid
    When user attaches "<DocSize>" document
    Then "<DocSize>" document attached successfully
    Examples:
      | SourceDataFile       | SheetName | LoginRow | DocSize |
      | LoginDetailsCAS.xlsx | LoginData | 0        | single  |
      | LoginDetailsCAS.xlsx | LoginData | 0        | 2       |

  @Release3
    @Perishable
  Scenario Outline: ACAUTOCAS-3376: raise query with <Fields> fields in Field investigation verification
    And user opens an application of "FIV" stage variant from "FIV" grid
    And user reads data from the excel file "<FieldInvestigation>" under sheet "<FieldInvestigationV>" and row <Row_Number>
    When user fills "<Fields>" fields for raise query in Field investigation verification
    Then query raised successfully

    Examples:
      | Fields        | FieldInvestigation       | FieldInvestigationV | Row_Number |
      | mandatory     | field_investigation.xlsx | QueryRaise          | 0          |
      | Non-mandatory | field_investigation.xlsx | QueryRaise          | 0          |

  @Perishable
  @Release3
  Scenario Outline: ACAUTOCAS-3377: raise multiple query with <Fields> fields in Field investigation verification
    And user opens an application of "FIV" stage variant from "FIV" grid
    And user reads data from the excel file "<FieldInvestigation>" under sheet "<FieldInvestigationV>" and row <Row_Number>
    When user fills "<Fields>" fields for raise multiple query in Field investigation verification
    Then multiple query raised successfully

    Examples:
      | Fields    | FieldInvestigation       | FieldInvestigationV | Row_Number |
      | mandatory | field_investigation.xlsx | QueryRaise          | 2          |

  @Release3
    @Perishable
  Scenario Outline: ACAUTOCAS-3379: Unquery the raised query in Field investigation verification
    And user opens an application of "FIV" stage variant from "FIV" grid
    And user reads data from the excel file "<FieldInvestigation>" under sheet "<FieldInvestigationV>" and row <Row_Number>
    When user fills "<Fields>" fields for raise query in Field investigation verification
    And user unquery the raise query in Field investigation verification
    Then raised query should be unquery successfully

    Examples:
      | Fields    | FieldInvestigation       | FieldInvestigationV | Row_Number |
      | mandatory | field_investigation.xlsx | QueryRaise          | 2          |

  @Release3
    @Perishable
  Scenario Outline: ACAUTOCAS-3380: Unquery the multiple raised query in bulk for Field investigation verification
    And user opens an application of "FIV" stage variant from "FIV" grid
    And user reads data from the excel file "<FieldInvestigation>" under sheet "<FieldInvestigationV>" and row <Row_Number>
    When user raise multiple query in Field investigation verification
    And user unquery the multiple raise query in bulk for Field investigation verification
    Then raised query should be unquery successfully in bulk

    Examples:
      | FieldInvestigation       | FieldInvestigationV | Row_Number |
      | field_investigation.xlsx | QueryRaise          | 2          |

  @Release3
    @Perishable
  Scenario Outline: ACAUTOCAS-3378: query is raised to a <UserOrTeam> of a case is visible in raise query grid in in Field investigation verification
    And user opens an application of "FIV" stage variant from "FIV" grid
    And user reads data from the excel file "<FieldInvestigation>" under sheet "<FieldInvestigationV>" and row <Row_Number>
    And user raise query to "<UserOrTeam>" in Field investigation verification
    Then query should be visible in raise query grid in Field investigation verification page

    Examples:
      | UserOrTeam | FieldInvestigation       | FieldInvestigationV | Row_Number |
      | user       | field_investigation.xlsx | QueryRaise          | 0          |
      | team       | field_investigation.xlsx | QueryRaise          | 0          |

  @Release3
    @Perishable
  Scenario Outline: ACAUTOCAS-3381: User can not <Action> the multiple query in bulk once it unquery for Field investigation verification
    And user opens an application of "FIV" stage variant from "FIV" grid
    And user reads data from the excel file "<FieldInvestigation>" under sheet "<FieldInvestigationV>" and row <Row_Number>
    When user raise query to "<UserOrTeam>" in Field investigation verification
    And user unquery the multiple raise query in bulk for Field investigation verification
    And user wants to "<Action>" the multiple query in bulk for Field investigation verification
    Then user should not be "<Action>" in bulk
    Examples:m
      | Action   | FieldInvestigation       | FieldInvestigationV | Row_Number | UserOrTeam |
      | reassign | field_investigation.xlsx | QueryRaise          | 0          | user       |
      | unquery  | field_investigation.xlsx | QueryRaise          | 0          | team       |

  @Release3
    @Perishable
  Scenario Outline: ACAUTOCAS-3382: User can not <Action> the query once it unquery in Field investigation verification
    And user opens an application of "FIV" stage variant from "FIV" grid
    And user reads data from the excel file "<FieldInvestigation>" under sheet "<FieldInvestigationV>" and row <Row_Number>
    When user raise query to "<UserOrTeam>" in Field investigation verification
    And user unquery the multiple raise query in bulk for Field investigation verification
    And user wants to "<Action>" the multiple query in bulk for Field investigation verification
    Then user should not be "<Action>"


    Examples:
      | Action   | FieldInvestigation       | FieldInvestigationV | Row_Number | UserOrTeam |
      | reassign | field_investigation.xlsx | QueryRaise          | 0          | user       |
      | unquery  | field_investigation.xlsx | QueryRaise          | 0          | team       |

  @Release3
    @Perishable
  Scenario Outline: ACAUTOCAS-3383: Reassign the raised query to the new <TeamOrUser> in Field investigation verification
    And user opens an application of "FIV" stage variant from "FIV" grid
    And user reads data from the excel file "<FieldInvestigation>" under sheet "<FieldInvestigationV>" and row <Row_Number>
    When user fills "<Fields>" fields for raise query in Field investigation verification
    And user fills mandatory fields for reassign the query in Field investigation verification
    Then query should be reassigned successfully

    Examples:
      | FieldInvestigation       | FieldInvestigationV | Row_Number |
      | field_investigation.xlsx | QueryRaise          | 0          |

  @Release3
    @Perishable
  Scenario Outline: ACAUTOCAS-3384: Reassign the multiple raised query in bulk to the new <UserOrTeam> for Field investigation verification
    And user opens an application of "FIV" stage variant from "FIV" grid
    And user reads data from the excel file "<FieldInvestigation>" under sheet "<FieldInvestigationV>" and row <Row_Number>
    When user raise multiple query to "<UserOrTeam>" in Field investigation verification
    And user fills mandatory fields for reassign the multiple query in bulk for Field investigation verification
    Then multiple query should be reassigned successfully in bulk

    Examples:
      | UserOrTeam | FieldInvestigation       | FieldInvestigationV | Row_Number |
      | user       | field_investigation.xlsx | QueryRaise          | 3          |
      | team       | field_investigation.xlsx | QueryRaise          | 4          |

  @Release3
    @Perishable
  Scenario Outline: ACAUTOCAS-3385: Assigning more than one query with same Query code to the same team is not possible in Field investigation verification
    And user opens an application of "FIV" stage variant from "FIV" grid
    And user reads data from the excel file "<FieldInvestigation>" under sheet "<FieldInvestigationV>" and row <Row_Number>
    When user assigning more than one query with same Query code to the same team Field investigation verification
    Then query should not be raise
    Examples:
      | FieldInvestigation       | FieldInvestigationV | Row_Number |
      | field_investigation.xlsx | QueryRaise          | 3          |

  @Release3
  @Perishable
  Scenario: ACAUTOCAS-3386: Query history records of raise query once query is raised in Field investigation verification
    When user opens an application of "FIV" stage variant from "FIV" grid
    And user checks query history records with help of query code Field investigation verification
    Then query history records display successfully

  @Release3
  @Perishable
  Scenario: ACAUTOCAS-3388: Select the documents to raise query in Field investigation verification
    When user opens an application of "FIV" stage variant from "FIV" grid
    And user selects documents in Field investigation verification
    Then name of the selected documents will appear in the Documents field

  @Release3
    @Perishable
  Scenario Outline: ACAUTOCAS-3389: Select the documents that needs to be uploaded
    When user opens an application of "FIV" stage variant from "FIV" grid
    And user attaches a "<DocSize>" document
    Then documents uploaded successfully
    Examples:
      | DocSize |
      | single  |

  @Release3
    @Perishable
  Scenario Outline: ACAUTOCAS-3393: Mandatory Fields validation in Field investigation verification
    When user opens an application of "FIV" stage variant from "FIV" grid
    And user reads data from the excel file "field_investigation.xlsx" under sheet "FieldInvestigationV" and row <Row_Number>
    And user enters "<FIV_Fields>" with "<var>" in Field investigation verification
    Then the "<FIV_Fields>" field "<Throws_notThrows>" error
    Examples:
      | FIV_Fields        | var                       | Throws_notThrows | Row_Number |
      | No. Of Attempts   | Zero                      | throw an         | 1          |
      | No. Of Attempts   | negative value            | throw an         | 2          |
      | No. Of Attempts   | positive value            | not throw any    | 3          |
      | Verification Date | valid date                | not throw any    | 4          |
      | Verification Date | less than 1942            | throw an         | 5          |
      | Verification Date | greater than present date | throw an         | 6          |

  @Release3
    @Perishable
  Scenario Outline: ACAUTOCAS-3391: "<SaveProceed>" Field investigation verification
    When user opens an application of "FIV" stage variant from "FIV" grid
    And user reads data from the excel file "field_investigation.xlsx" under sheet "FieldInvestigationV" and row <Row_Number>
    And user fill all mandatory fields for Field investigation verification
    And user "<SaveProceed>" Field investigation verification
    Then Field investigation verification should be saved successfully
    Examples:
      | SaveProceed    | Row_Number |
      | save           | 0          |
      | save & proceed | 0          |

  Scenario: ACAUTOCAS-3371: ReAllocation of case to another agency
    And user open Field Investigation Verification page
    And user open Bulk ReAllocation screen
    And user fills mandatory fields
    When user ReAllocats of multiple cases in bulk to another agency
    Then case ReAllocated successfully

  Scenario: ACAUTOCAS-1657: Bulk ReAllocation of multiple cases to another agency
    And user open Field Investigation Verification page
    And user open Bulk ReAllocation screen
    And user fills mandatory fields
    When user ReAllocats of multiple cases in bulk to another agency
    Then multiple cases ReAllocated successfully

  Scenario Outline: ACAUTOCAS-1655: Bulk ReAllocation mandatory fields
    And user open Field Investigation Verification page
    When user open Bulk ReAllocation screen
    Then "<ReAllocationFields>" field appears to bulk reallocate
    Examples:
      | ReAllocationFields |
      | Verification Type  |
      | Agency             |

  Scenario Outline: ACAUTOCAS-3387:  Query history records <With_Without> query raised in Field investigation verification
    And user open Field Investigation Verification page
    And user open any cases from the FIV grid
    When user checks query history records "<With_Without>" query raised in Field investigation verification
    Then query history records "<Created_NotCreated>"
    Examples:
      | With_Without | Created_NotCreated |
      | with         | created            |
      | without      | not created        |

  Scenario: ACAUTOCAS-3390: Select the multiple documents that needs to be uploaded in Field investigation verification
    And user open Field Investigation Verification page
    And user open any cases from the FIV grid
    When user choose "<NoOfDocuments>" documents in Field investigation verification
    Then "<NoOfDocuments>" documents uploaded successfully


  Scenario Outline: ACAUTOCAS-3392: cancel verification for "<NumberOfCase>" from detail page of Field investigation verification
    And user open Field Investigation Verification page
    And user open any cases from the FIV grid
    And user selects "<NumberOfCase>" case
    When user cancel "<NumberOfCase>" with "<NumberOfReason>" reason
    Then verification cancel successfully
    Examples:
      | NumberOfCase           | NumberOfReason |
      | single case            | single         |
      | multiple cases in bulk | multiple       |




