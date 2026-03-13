@Epic-Field_Investigation
@ReviewedBy_None
@AuthoredBy-vipin.kishor
@ImplementedBy-anuj.singh
@Release3
#FeatureID-ACAUTOCAS-498
Feature: Field investigation initiation grid

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0


  Scenario Outline: ACAUTOCAS-1651: Field investigation initiation gird validation
    When user open Field investigation initiation grid
    Then "<FIIGridFields>" should be present in grid
    Examples:
      | FIIGridFields      |
      | Application ID     |
      | Neo Cust ID        |
      | Identification No. |
      | Customer Name      |
      | Product Type       |
      | Product Name       |
      | Account Type       |
      | Scheme             |
      | Request Type       |
      | Phone No.          |
      | Sourcing Date      |
      | Sourcing Channel   |
      | Created By         |
      | Priority           |

  Scenario Outline: ACAUTOCAS-1652: "<Search_Sort>" applications on the basis of "<FIIGridFields>" in Field investigation initiation gird
    And user open Field investigation initiation grid
    And user reads data from the excel file "<FIIWB>" under sheet "<FIIGridUserDetails>" and row <FII_RowNum>
    When user "<Search_Sort>" all application on the basis of "<FIIGridFields>"
    Then user should be able to "<Search_Sort>" all application on the basis of "<FIIGridFields>"
    Examples:
      | Search_Sort | FIIGridFields      | FIIWB                    | FIIGridUserDetails    | FII_RowNum |
      | search      | Application ID     | field_investigation.xlsx | FII_Grid_User_Details | 0          |
      | search      | Neo Cust ID        | field_investigation.xlsx | FII_Grid_User_Details | 0          |
      | search      | Identification No. | field_investigation.xlsx | FII_Grid_User_Details | 0          |
      | search      | Customer Name      | field_investigation.xlsx | FII_Grid_User_Details | 0          |
      | search      | Product Type       | field_investigation.xlsx | FII_Grid_User_Details | 0          |
      | search      | Product Name       | field_investigation.xlsx | FII_Grid_User_Details | 0          |
      | search      | Account Type       | field_investigation.xlsx | FII_Grid_User_Details | 0          |
      | search      | Scheme             | field_investigation.xlsx | FII_Grid_User_Details | 0          |
      | search      | Request Type       | field_investigation.xlsx | FII_Grid_User_Details | 0          |
      | search      | Phone No.          | field_investigation.xlsx | FII_Grid_User_Details | 0          |
      | search      | Sourcing Channel   | field_investigation.xlsx | FII_Grid_User_Details | 0          |
      | search      | Priority           | field_investigation.xlsx | FII_Grid_User_Details | 0          |
      | sort        | Application ID     | field_investigation.xlsx | FII_Grid_User_Details | 0          |
      | sort        | Neo Cust ID        | field_investigation.xlsx | FII_Grid_User_Details | 0          |
      | sort        | Identification No. | field_investigation.xlsx | FII_Grid_User_Details | 0          |
      | sort        | Customer Name      | field_investigation.xlsx | FII_Grid_User_Details | 0          |
      | sort        | Product Type       | field_investigation.xlsx | FII_Grid_User_Details | 0          |
      | sort        | Product Name       | field_investigation.xlsx | FII_Grid_User_Details | 0          |
      | sort        | Account Type       | field_investigation.xlsx | FII_Grid_User_Details | 0          |
      | sort        | Scheme             | field_investigation.xlsx | FII_Grid_User_Details | 0          |
      | sort        | Request Type       | field_investigation.xlsx | FII_Grid_User_Details | 0          |
      | sort        | Sourcing Date      | field_investigation.xlsx | FII_Grid_User_Details | 0          |
      | sort        | Sourcing Channel   | field_investigation.xlsx | FII_Grid_User_Details | 0          |
      | sort        | Priority           | field_investigation.xlsx | FII_Grid_User_Details | 0          |


  Scenario Outline: ACAUTOCAS-1653: Perform "<Actions>" action for applications in Field investigation initiation grid
    And user open Field investigation initiation grid
    And user reads data from the excel file "<FIIWB>" under sheet "<FIIGridUserDetails>" and row <FII_RowNum>
    When user perform "<Actions>" action
    Then "<Actions>" action perform successfully in Field investigation initiation grid
    Examples:
      | Actions      | FIIWB                    | FIIGridUserDetails    | FII_RowNum |
      | Copy         | field_investigation.xlsx | FII_Grid_User_Details | 0          |
      | Export       | field_investigation.xlsx | FII_Grid_User_Details | 0          |
      | Save search  | field_investigation.xlsx | FII_Grid_User_Details | 0          |
      | Load search  | field_investigation.xlsx | FII_Grid_User_Details | 0          |
      | Clear filter | field_investigation.xlsx | FII_Grid_User_Details | 0          |


  Scenario Outline: ACAUTOCAS-3347: Validation of Pagination in Field investigation initiation grid
    And user open Field investigation initiation grid
    When "<Page>" page of Field investigation initiation grid is open
    Then "<Paginate_Btn>" should be "<Disable_Enable>" in Field investigation initiation grid for the "<Page>" page
    Examples:
      | Page   | Paginate_Btn             | Disable_Enable |
      | first  | paginate_button first    | disable        |
      | first  | paginate_button previous | disable        |
      | first  | paginate_button next     | enable         |
      | first  | paginate_button last     | enable         |
      | middle | paginate_button first    | enable         |
      | middle | paginate_button previous | enable         |
      | middle | paginate_button next     | enable         |
      | middle | paginate_button last     | enable         |
      | last   | paginate_button first    | enable         |
      | last   | paginate_button previous | enable         |
      | last   | paginate_button next     | disable        |
      | last   | paginate_button last     | disable        |


  Scenario Outline: ACAUTOCAS-3348: Validating all Pagination of Field investigation initiation grid
    And user open Field investigation initiation grid
    When "<Page>" page of Field investigation initiation grid is open
    Then "<Paginate_Btn>" should work successfully in FII Grid for "<Page>" page
    Examples:
      | Page   | Paginate_Btn             |
      | first  | paginate_button next     |
      | first  | paginate_button last     |
      | middle | paginate_button first    |
      | middle | paginate_button previous |
      | middle | paginate_button next     |
      | middle | paginate_button last     |
      | last   | paginate_button first    |
      | last   | paginate_button previous |


  Scenario Outline: ACAUTOCAS-3349: Show the applications rows in Field investigation initiation grid
    And user open Field investigation initiation grid
    When user selects "<NumberOfRows>" number of rows to show application in Field investigation initiation grid
    Then selected "<NumberOfRows>" rows "<Display>" if total entries are "<More_Less>" than selected number
    Examples:
      | NumberOfRows | Display                                 | More_Less |
      | 10           | display                                 | more      |
      | 10           | not display only available rows display | less      |
      | 25           | not display only available rows display | less      |
      | 50           | not display only available rows display | less      |
      | 100          | not display only available rows display | less      |
      | 150          | not display only available rows display | less      |
      | 200          | not display only available rows display | less      |
      | 25           | display                                 | more      |
      | 50           | display                                 | more      |
      | 100          | display                                 | more      |
      | 150          | display                                 | more      |
      | 200          | display                                 | more      |
#   FII via FII Grid
#   FII

  Scenario Outline: ACAUTOCAS-3350: Field investigation initiation page via FII grid
    And user open Field investigation initiation grid
    When user open an application from Field investigation initiation grid
    Then On this page the grid displays the "<FII_Fields>" for each applicant
    Examples:
      | FII_Fields                  |
      | Neo Cust ID                 |
      | Type of Applicant           |
      | Applicant Name              |
      | Last Verification Date      |
      | Current Verification Status |

#
#  Scenario Outline: ACAUTOCAS-4839: Waive off All the field investigation verifications via FII grid
#    Given user is on CAS Login Page
#    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
#    And user open Field investigation initiation grid
#    And users open Waive off All screen
#    When user Waive off All the field investigation verifications "<With_Without>" reasons
#    Then Waive off "<Initiated>"
#    Examples:
#      | Var_Stage | SourceDataFile       | SheetName | RowNumber | With_Without | Initiated     |
#      | FII       | LoginDetailsCAS.xlsx | LoginData | 0         | with         | initiated     |
#      | FII       | LoginDetailsCAS.xlsx | LoginData | 0         | without      | not initiated |
#
#  Scenario Outline:  ACAUTOCAS-3352: "<FII_Fields>" field appears in Waive off All screen via FII grid
#    Given user is on CAS Login Page
#    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
#    And user open Field investigation initiation grid
#    When user open Waive off All screen
#    Then Then "<FII_Fields>" field appears in Waive off All
#    Examples:
#      | SourceDataFile       | SheetName | RowNumber | FII_Fields         |
#      | LoginDetailsCAS.xlsx | LoginData | 0         | Reason Code        |
#      | LoginDetailsCAS.xlsx | LoginData | 0         | Reason Description |
#
#  Scenario Outline: ACAUTOCAS-3351: Waive off All the field investigation verifications via FII grid
#    Given user is on CAS Login Page
#    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
#    And user open Field investigation initiation grid
#    And user open Waive off All screen
#    When user Waive off All the field investigation verifications
#    Then user can view the Verification Waived Off details
#    Examples:
#      | SourceDataFile       | SheetName | RowNumber |
#      | LoginDetailsCAS.xlsx | LoginData | 0         |
#
#  Scenario Outline: ACAUTOCAS-3353: Add multiple reasons for Waive off All the field investigation verifications via FII grid
#    Given user is on CAS Login Page
#    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
#    And user open Field investigation initiation grid
#    And user open Waive off All screen
#    When user add multiple reasons for Waive off All the field investigation verifications
#    Then multiple reasons added successfully
#    Examples:
#      | SourceDataFile       | SheetName | RowNumber |
#      | LoginDetailsCAS.xlsx | LoginData | 0         |
#
#  Scenario Outline: ACAUTOCAS-3354: Delete reasons for Waive off All the field investigation verifications via FII grid
#    Given user is on CAS Login Page
#    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <LoginRow>
#    And user open Field investigation initiation grid
#    And user open Waive off All screen
#    And user add multiple reasons for Waive off All the field investigation verifications
#    When user deletes the added reasons
#    Then reason should be deleted successfully
#    Examples:
#      | SourceDataFile       | SheetName | LoginRow |
#      | LoginDetailsCAS.xlsx | LoginData | 0        |
#
#
##Waive Off Verification
#  Scenario Outline: ACAUTOCAS-3355: "<FII_Fields>" field appears in Wave Off Verification screen via FII grid
#    Given user is on CAS Login Page
#    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
#    And user open Field investigation initiation grid
#    When user open Wave Off Verification screen
#    Then "<FII_Fields>" field appears in Wave Off Verification
#    Examples:
#      | SourceDataFile       | SheetName | RowNumber | FII_Fields         |
#      | LoginDetailsCAS.xlsx | LoginData | 0         | Verification Type  |
#      | LoginDetailsCAS.xlsx | LoginData | 0         | Reason Code        |
#      | LoginDetailsCAS.xlsx | LoginData | 0         | Reason Description |
#
#  Scenario Outline: ACAUTOCAS-3356: Wave Off Verification for "<ApplicantType>" via FII grid
#    Given user is on CAS Login Page
#    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
#    And user open Field investigation initiation grid
#    And user open Wave Off Verification screen
#    When user Wave Off Verification for "<ApplicantType>" "<With_Without>" reasons
#    Then Waive off "<Initiated>"
#    Examples:
#      | SourceDataFile       | SheetName | RowNumber | With_Without | Initiated     | ApplicantType     |
#      | LoginDetailsCAS.xlsx | LoginData | 0         | with         | initiated     | Primary Applicant |
#      | LoginDetailsCAS.xlsx | LoginData | 0         | without      | not initiated | Primary Applicant |
#      | LoginDetailsCAS.xlsx | LoginData | 0         | with         | initiated     | Co-Applicant      |
#      | LoginDetailsCAS.xlsx | LoginData | 0         | without      | not initiated | Co-Applicant      |
#      | LoginDetailsCAS.xlsx | LoginData | 0         | with         | initiated     | Grantor           |
#      | LoginDetailsCAS.xlsx | LoginData | 0         | without      | not initiated | Grantor           |
#
#
#  Scenario Outline: ACAUTOCAS-3357: View history of Wave Off Verification via FII grid
#    Given user is on CAS Login Page
#    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
#    And user open Field investigation initiation grid
#    And user open Wave Off Verification screen
#    When user Wave Off Verification
#    Then history of Wave Off Verification display successfully
#    Examples:
#      | SourceDataFile       | SheetName | RowNumber |
#      | LoginDetailsCAS.xlsx | LoginData | 0         |
#
#  Scenario Outline: ACAUTOCAS-3358: Add multiple reasons for Wave Off Verification via FII grid
#    Given user is on CAS Login Page
#    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
#    And user open Field investigation initiation grid
#    And user open Wave Off Verification screen
#    When user add multiple reasons for Wave Off Verification
#    Then multiple reasons added successfully
#    Examples:
#      | SourceDataFile       | SheetName | RowNumber |
#      | LoginDetailsCAS.xlsx | LoginData | 0         |
#
#  Scenario Outline: ACAUTOCAS-3359: Delete reasons for Wave Off Verification via FII grid
#    Given user is on CAS Login Page
#    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
#    And user open Field investigation initiation grid
#    And user open Wave Off Verification screen
#    And user add multiple reasons for Wave Off Verification
#    When user deletes the added reasons for Wave Off Verification
#    Then reason should be deleted successfully for Wave Off Verification
#    Examples:
#      | Var_Stage | SourceDataFile       | SheetName | RowNumber |
#      | FII       | LoginDetailsCAS.xlsx | LoginData | 0         |
#

#Initiate Verification

  Scenario Outline: ACAUTOCAS-3360: Initiate Verification via FII grid
    And user open Field investigation initiation grid
    And user reads data from the excel file "<FIIWB>" under sheet "<FIIGridUserDetails>" and row <FII_RowNum>
    And user open Initiate Verification screen via FII Grid
    When user Initiate Verification "<With_Without>" verification type via FII Grid
    Then Initiate Verification "<Initiated>" via FII Grid
    Examples:
      | FIIWB                    | FIIGridUserDetails    | FII_RowNum | With_Without | Initiated     |
      | field_investigation.xlsx | FII_Grid_User_Details | 0          | with         | initiated     |
      | field_investigation.xlsx | FII_Grid_User_Details | 0          | without      | not initiated |


  Scenario Outline: ACAUTOCAS-3361: Add multiple verifications for Initiate Verification via FII grid
    And user open Field investigation initiation grid
    And user reads data from the excel file "<FIIWB>" under sheet "<FIIGridUserDetails>" and row <FII_RowNum>
    And user open Initiate Verification screen via FII Grid
    When user add multiple verifications for Initiate Verification via FII Grid
    Then multiple verifications should be added successfully
    Examples:
      | FIIWB                    | FIIGridUserDetails    | FII_RowNum |
      | field_investigation.xlsx | FII_Grid_User_Details | 0          |

  Scenario Outline: ACAUTOCAS-3362: Delete verifications for Initiate Verification via FII grid
    And user open Field investigation initiation grid
    And user reads data from the excel file "<FIIWB>" under sheet "<FIIGridUserDetails>" and row <FII_RowNum>
    And user open Initiate Verification screen via FII Grid
    And user add multiple verifications for Initiate Verification via FII Grid
    When user deletes the added verification for Initiated Verification
    Then reason should be deleted successfully for Initiate Verification
    Examples:
      | FIIWB                    | FIIGridUserDetails    | FII_RowNum |
      | field_investigation.xlsx | FII_Grid_User_Details | 0          |

#initiated or not
  Scenario Outline: ACAUTOCAS-3363: View details of initiated verification for the customer via FII grid
    And user open Field investigation initiation grid
    And user reads data from the excel file "<FIIWB>" under sheet "<FIIGridUserDetails>" and row <FII_RowNum>
    And user open Initiate Verification screen via FII Grid
    When user Views the detail of initiated verification
    Then details of initiated verification displayed successfully
    Examples:
      | FIIWB                    | FIIGridUserDetails    | FII_RowNum |
      | field_investigation.xlsx | FII_Grid_User_Details | 1          |


  Scenario Outline: ACAUTOCAS-3364: View history of initiated verification for the customer
    And user open Field investigation initiation grid
    And user reads data from the excel file "<FIIWB>" under sheet "<FIIGridUserDetails>" and row <FII_RowNum>
    And user open Initiate Verification screen via FII Grid
    #And user View the details of initiated verification
    When user Views the history of initiated verification
    Then history of initiated verification displayed successfully
    Examples:
      | FIIWB                    | FIIGridUserDetails    | FII_RowNum |
      | field_investigation.xlsx | FII_Grid_User_Details | 2          |


  Scenario Outline: ACAUTOCAS-3365: View history of initiated verification for the customer via FII grid
    And user open Field investigation initiation grid
    And user reads data from the excel file "<FIIWB>" under sheet "<FIIGridUserDetails>" and row <FII_RowNum>
    And user open Initiate Verification screen via FII Grid
    #And user View the details of initiated verification
    When user Views the history of initiated verification
    Then "<FIH_Fields>" field appears in history grid via FII Grid
    Examples:
      | FIIWB                    | FIIGridUserDetails    | FII_RowNum | FIH_Fields             |
      | field_investigation.xlsx | FII_Grid_User_Details | 2          | Applicant Name         |
      | field_investigation.xlsx | FII_Grid_User_Details | 2          | Applicant Type         |
      | field_investigation.xlsx | FII_Grid_User_Details | 2          | Verification Done Date |
      | field_investigation.xlsx | FII_Grid_User_Details | 2          | Verification Type      |
      | field_investigation.xlsx | FII_Grid_User_Details | 2          | Verification Agency    |
      | field_investigation.xlsx | FII_Grid_User_Details | 2          | Verification Agent     |
      | field_investigation.xlsx | FII_Grid_User_Details | 2          | Result                 |


  Scenario Outline: ACAUTOCAS-3366: View the result of initiated verification via FII grid
    And user open Field investigation initiation grid
    And user reads data from the excel file "<FIIWB>" under sheet "<FIIGridUserDetails>" and row <FII_RowNum>
    And user open Initiate Verification screen via FII Grid
    #And user View the details of initiated verification
    When user Views the history of initiated verification
    Then result field appears in history grid as initiated via FII Grid
    Examples:
      | FIIWB                    | FIIGridUserDetails    | FII_RowNum |
      | field_investigation.xlsx | FII_Grid_User_Details | 3          |

#  Scenario Outline: ACAUTOCAS-3367: Dependent Fields Validation via FII grid
#    Given user is on CAS Login Page
#    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
#    And user open Field investigation initiation grid
#    And user open "<Actions>" screen
#    When user selects reason
#    Then Reason Description will be populated automatically based on the Reason Code
#    Examples:
#      | SourceDataFile       | SheetName | RowNumber | Actions                |
#      | LoginDetailsCAS.xlsx | LoginData | 0         | Waive off All          |
#      | LoginDetailsCAS.xlsx | LoginData | 0         | Waive off Verification |

#
#  Scenario Outline: ACAUTOCAS-3368: Initiate Verification Status via FII grid
#    Given user is on CAS Login Page
#    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
#    And user open Field investigation initiation grid
#    And user open Initiate Verification screen
#    And user Initiate Verification "<With_Without>" verification type
#    When Initiate Verification "<Initiated>"
#    Then Initiate Verification status should be changed
#
#    Examples:
#      | SourceDataFile       | SheetName | RowNumber | With_Without | Initiated |
#      | LoginDetailsCAS.xlsx | LoginData | 0         | with         | initiated |

  Scenario Outline: ACAUTOCAS-3369: "<VerificationType>" not be duplicate in "<Actions>" via FII grid
    And user open Field investigation initiation grid
    And user reads data from the excel file "<FIIWB>" under sheet "<FIIGridUserDetails>" and row <FII_RowNum>
    And user open "<Actions>" screen in FII Grid
    When user performs "<Actions>" with duplicate "<Type>"
    Then throw an error of "<Type>" should not be duplicate
    Examples:
      | FIIWB                    | FIIGridUserDetails    | FII_RowNum | Actions               | Type              |
#      | field_investigation.xlsx | FII_Grid_User_Details | 3          | Waive off All          | Reasons           |
      | field_investigation.xlsx | FII_Grid_User_Details | 3          | Initiate Verification | Verification Type |
#      | field_investigation.xlsx | FII_Grid_User_Details | 3          | Waive off Verification | Verification Type |


  Scenario Outline: ACAUTOCAS-3370: FII "<ManuallyAutomatically>" Allocates to the agency for Verification via FII grid
    And user open Field investigation initiation grid
    And user reads data from the excel file "<FIIWB>" under sheet "<FIIGridUserDetails>" and row <FII_RowNum>
    And user open Initiate Verification screen via FII Grid
    When user Initiate Verification for verification by assigning application "<ManuallyAutomatically>" via FII Grid
    Then Application "<ManuallyAutomatically>" assigned to the agency for Verification

    Examples:
      | FIIWB                    | FIIGridUserDetails    | FII_RowNum | ManuallyAutomatically |
      | field_investigation.xlsx | FII_Grid_User_Details | 3          | manually              |
      | field_investigation.xlsx | FII_Grid_User_Details | 3          | automatically         |




