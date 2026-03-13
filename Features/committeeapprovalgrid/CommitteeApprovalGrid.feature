@Epic-Committee_Approval
@ReviewedBy-atul.mishra
@AuthoredBy-vipin.kishor
@Release3
#FeatureID-ACAUTOCAS-867,ACAUTOCAS-4143
Feature:Committee Approval grid validations

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 7
    And user open committee approval grid
    And user reads data from the excel file "committee_approval_grid.xlsx" under sheet "committee_approval_grid" and row 0

  @ImplementedBy-anuj.singh
  Scenario: ACAUTOCAS-2469: Check applications in committee approval grid
    When user open committee approval grid
    Then all pending applications for the committee decision in the committee approval grid should be displayed

  @ImplementedBy-anuj.singh
  Scenario Outline: ACAUTOCAS-2744: Perform "<Actions>" action in committee approval grid
    When user perform "<Actions>" action in committee approval grid
    Then "<Actions>" action perform successfully in committee approval grid
    Examples:
      | Actions      |
      | Copy         |
      | Save search  |
      #| Export       |
      | Load search  |
      | Clear filter |

  @Perishable
  @ImplementedBy-aryan.jain
  Scenario Outline: ACAUTOCAS-2745: Export committee approval grid as <ExportAs>
    And user opens an application of "credit approval_indiv_pl" stage variant from credit approval grid
    And user reads data from the excel file "committee_approval_grid.xlsx" under sheet "committee_approval" and row 0
    And user selects a committee to take decision
    And user initiate committee approval
    And user open committee approval grid
    When Export committee approval grid as "<ExportAs>"
    Then committee approval grid successfully Exported as "<ExportAs>"
    Examples:
      | ExportAs |
      | Excel    |
      | CSV      |

  @ImplementedBy-anuj.singh
  Scenario Outline: ACAUTOCAS-2746: Search applications on the basis of "<CreditApproval_Grid>"
    And user open committee approval grid
    When user Search all application on the basis of "<CreditApproval_Grid>" on Committee approval grid
    Then user should be able to Search all applications
    Examples:
      | CreditApproval_Grid |
      | Application ID      |
      | Committee Name      |
      | Committee Status    |
      | Customer Name       |
      | Identification No   |
      | Product Type        |
      | Scheme              |
      | Request Type        |
      | Sourcing channel    |
      | Created By          |
      | Priority            |
      | Branch              |
      | Assignee            |
      | Group Description   |
      | Initiated By        |

  @ImplementedBy-anuj.singh
  Scenario Outline: ACAUTOCAS-5422: Filter applications on the basis of "<CreditApproval_Grid>"
    And  user open committee approval grid
    When user Filter all application on the basis of "<CreditApproval_Grid>" on Committee approval grid
    Then user should be able to filter all applications
    Examples:
      | CreditApproval_Grid |
      | Sourcing Date       |
      | Branch              |
      | Product Type        |
      | Product Name        |
      | Scheme              |
      | Priority            |

  @Perishable
  @ImplementedBy-atul.mishra
  Scenario Outline: ACAUTOCAS-5423: Sort applications on the basis of "<CreditApproval_Grid>"
    And user opens an application at "credit approval_indiv_pl" stage from application grid
    And user reads data from the excel file "committee_approval_grid.xlsx" under sheet "committee_approval" and row 0
    And user selects a committee to take decision
    And user initiate committee approval
    And  user open committee approval grid
    When user sort all application on the basis of "<CreditApproval_Grid>" on Committee approval grid
    Then user should be able to sort all applications on "<CreditApproval_Grid>"
    Examples:
      | CreditApproval_Grid |
      | Application ID      |
      | Customer Name       |
      | Identification No   |
      | Product Type        |
      | Scheme              |
      | Request Type        |
      | Sourcing Channel    |
      | Created By          |
      | Priority            |
      | Branch              |
      | Assignee            |
      | Initiated By        |

  @ImplementedBy-atul.mishra
  Scenario Outline: ACAUTOCAS-2747: Show the "<Var>" applications rows in committee approval grid
    And user open committee approval grid
    When user selects "<NumberOfRows>" number of rows to show application in committee approval grid
    Then selected "<NumberOfRows>" rows "<Display>" of total entries are "<More_Less>" than selected number on Committee approval grid
    Examples:
      | NumberOfRows | Display                                 | More_Less |
      | 10           | display                                 | more      |
      | 25           | display                                 | more      |
      | 50           | display                                 | more      |
      | 100          | display                                 | more      |
      | 150          | display                                 | more      |
      | 200          | display                                 | more      |
      | 10           | not display only available rows display | less      |
      | 25           | not display only available rows display | less      |
      | 50           | not display only available rows display | less      |
      | 100          | not display only available rows display | less      |
      | 150          | not display only available rows display | less      |
      | 200          | not display only available rows display | less      |

  @Perishable
  @ImplementedBy-aryan.jain
  Scenario Outline: ACAUTOCAS-2748: Validation of Pagination in committee approval grid
    And user opens an application of "credit approval_indiv_pl" stage variant from credit approval grid
    And user reads data from the excel file "committee_approval_grid.xlsx" under sheet "committee_approval" and row 0
    And user selects a committee to take decision
    And user initiate committee approval
    When user open committee approval grid
    And "<Page>" page of committee approval grid is open
    Then "<Paginate_Btn>" should be "<Disable_Enable>" on committee approval grid for the "<Page>" page
    Examples:

      | Page   | Paginate_Btn             | Disable_Enable |
      | First  | paginate_button first    | disable        |
      | First  | paginate_button previous | disable        |
      | First  | paginate_button next     | enable         |
      | First  | paginate_button last     | enable         |
      | Middle | paginate_button first    | enable         |
      | Middle | paginate_button previous | enable         |
      | Middle | paginate_button next     | enable         |
      | Middle | paginate_button last     | enable         |
      | Last   | paginate_button first    | enable         |
      | Last   | paginate_button previous | enable         |
      | Last   | paginate_button next     | disable        |
      | Last   | paginate_button last     | disable        |

  @Perishable
  @ImplementedBy-aryan.jain
  Scenario Outline: ACAUTOCAS-2749: Validating all Pagination of committee approval grid
    And user opens an application of "credit approval_indiv_pl" stage variant from credit approval grid
    And user reads data from the excel file "committee_approval_grid.xlsx" under sheet "committee_approval" and row 0
    And user selects a committee to take decision
    And user initiate committee approval
    When user open committee approval grid
    And "<Page>" page of committee approval grid is open
    Then "<Paginate_Btn>" should work successfully on committee approval grid for "<Page>" page
    Examples:
      | Page   | Paginate_Btn             |
      | First  | paginate_button next     |
      | First  | paginate_button last     |
      | Middle | paginate_button first    |
      | Middle | paginate_button previous |
      | Middle | paginate_button next     |
      | Middle | paginate_button last     |
      | Last   | paginate_button first    |
      | Last   | paginate_button previous |


