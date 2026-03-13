@Epic-Committee_Approval
@AuthoredBy-prachi
@ReviewedBy-
@ImplementedBy-
@TechReviewedBy-


Feature:Decision History

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user is on the Committee Approval grid

   #Positive
  Scenario: Only assign user can open the application present in committee approval grid
    When user open the initiated application
    And Application is assigned to the user
    Then user should be able to open the application

  #Negative
  Scenario: Only assign user can open the application present in committee approval grid
    When user open the initiated application
    And Application is not assigned to the user
    Then user should not be able to edit the application as an error message occur "This application is not assigned to you"

  #Positive
  Scenario: Verify Decision/Forward History accordion present in the committee approval screen
    When user open the application at committee approval
    Then Decision/Forward History accordion should be present

  Scenario: user validate Decision/Forward History accordion
    When user expands Decision/Forward History
    Then Decision/Forward History should be expanded

  Scenario: user validate Decision history tab should be present adjacent to Forward history tab
    When user expands the Decision/Forward History accordion
    Then Decision history tab should be present adjacent to Forward history tab

  Scenario: Verify user should be able to switch the tab under Decision/Forward History accordion
    When user switch the tab from Decision history to Forward history
    Then user should be able to do so

  Scenario: Verify by default Decision history tab should open on expanding Decision/Forward History accordion
    When user expands the Decision/Forward History
    Then By default Decision history tab should open

  Scenario: Decision/Forward History all fields is in view mode.
    When user view the Decision/Forward History feilds
    Then all the fields should be in view mode in Decision/Forward History

  Scenario Outline:Validate <var> is visible in Decision/Forward History at committee approval
    When user expands the Decision/Forward History
    And open Decision history tab
    Then "<var>" is displayed in Forward history
    Examples:
      | var                |
      | Decision           |
      | Reason Description |
      | Comments           |
      | Stage              |
      | Sanctioned Amount  |
      | Sanctioned Tenure  |
      | ROI                |
      | EMI                |
      | Decision Taken by  |
      | On Behalf Of       |
      | Decision Date      |


  Scenario: Verify proper stamping of Forward history
    When user expands the Decision/Forward History
    And open decision history tab
    Then Stamping of decision history should be proper

  Scenario Outline: Validate decision History tab data
    When user expands the Decision/Forward History
    And open decision  history tab
    And  user views data from workbook "<SourceFile>" under sheet name in "<SheetName>" and row number as "<rownum>" accordingly
    Then user should be able to view the fields with provided values

    Examples:
      | SourceFile                   | SheetName | rownum |
      | Decision/Forward History.xls | Decision   | 0      |
      | Decision/Forward History.xls | Decision   | 1      |
      | Decision/Forward History.xls | Decision   | 2      |
      | Decision/Forward History.xls | Decision   | 3      |
      | Decision/Forward History.xls | Decision   | 4      |
      | Decision/Forward History.xls | Decision   | 5      |
      | Decision/Forward History.xls | Decision   | 6      |
      | Decision/Forward History.xls | Decision   | 7      |

  Scenario Outline: Verify application at committee approval when no decision has been taken at credit approval stage
    When user expands the Decision/Forward History at committee approval
    And open decision history tab
    Then Only Column value "<var>" is displayed in decision history & no values should displayed
    Examples:
      | var                |
      | Decision           |
      | Reason Description |
      | Comments           |
      | Stage              |
      | Sanctioned Amount  |
      | Sanctioned Tenure  |
      | ROI                |
      | EMI                |
      | Decision Taken by  |
      | On Behalf Of       |
      | Decision Date      |