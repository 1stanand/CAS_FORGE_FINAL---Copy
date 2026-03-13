@Epic-Quick_Lead
@ReviewedBy-None
@AuthoredBy-vipin.kishor
@Reconciled
@ReviewedByDEV
@Conventional
#@Islamic
#FeatureID-ACAUTOCAS-85
Feature:Validation of lead grid pagination

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0

  @ImplementedBy-aman.nagarkoti
  #Application required(at least 200) for Hold, Archive and Reject leads rows in lead grid
  Scenario Outline: ACAUTOCAS-4645: Show the <Var> leads rows in lead grid for <More_Less> than <NumberOfRows> rows
    And user open lead grid
    When user selects <NumberOfRows> number of rows to show "<Var>" leads in lead grid
    Then selected <NumberOfRows> rows "<Display>" if total entries are "<More_Less>" than selected limit
    @Release2
    Examples:
      | Var      | NumberOfRows | Display                                             | More_Less |
      | Assigned | 10           | display                                             | more      |
      | Assigned | 25           | display                                             | more      |
      | Assigned | 50           | display                                             | more      |
      | Assigned | 100          | display                                             | more      |
      | Assigned | 150          | display                                             | more      |
      | Assigned | 200          | display                                             | more      |
      | Assigned | 10           | are not displayed only available rows are displayed | less      |
      | Assigned | 25           | are not displayed only available rows are displayed | less      |
      | Assigned | 50           | are not displayed only available rows are displayed | less      |
      | Assigned | 100          | are not displayed only available rows are displayed | less      |
      | Assigned | 150          | are not displayed only available rows are displayed | less      |
      | Assigned | 200          | are not displayed only available rows are displayed | less      |
      | Pool     | 10           | display                                             | more      |
      | Pool     | 25           | display                                             | more      |
      | Pool     | 50           | display                                             | more      |
      | Pool     | 100          | display                                             | more      |
      | Pool     | 150          | display                                             | more      |
      | Pool     | 200          | display                                             | more      |
      | Pool     | 10           | are not displayed only available rows are displayed | less      |
      | Pool     | 25           | are not displayed only available rows are displayed | less      |
      | Pool     | 50           | are not displayed only available rows are displayed | less      |
      | Pool     | 100          | are not displayed only available rows are displayed | less      |
      | Pool     | 150          | are not displayed only available rows are displayed | less      |
      | Pool     | 200          | are not displayed only available rows are displayed | less      |
      | Hold     | 10           | display                                             | more      |
      | Hold     | 25           | display                                             | more      |
      | Hold     | 50           | display                                             | more      |
      | Hold     | 100          | display                                             | more      |
      | Hold     | 150          | display                                             | more      |
      | Hold     | 200          | display                                             | more      |
      | Hold     | 10           | are not displayed only available rows are displayed | less      |
      | Hold     | 25           | are not displayed only available rows are displayed | less      |
      | Hold     | 50           | are not displayed only available rows are displayed | less      |
      | Hold     | 100          | are not displayed only available rows are displayed | less      |
      | Hold     | 150          | are not displayed only available rows are displayed | less      |
      | Hold     | 200          | are not displayed only available rows are displayed | less      |
      | Archive  | 10           | display                                             | more      |
      | Archive  | 25           | display                                             | more      |
      | Archive  | 50           | display                                             | more      |
      | Archive  | 100          | display                                             | more      |
      | Archive  | 150          | display                                             | more      |
      | Archive  | 200          | display                                             | more      |
      | Archive  | 10           | are not displayed only available rows are displayed | less      |
      | Archive  | 25           | are not displayed only available rows are displayed | less      |
      | Archive  | 50           | are not displayed only available rows are displayed | less      |
      | Archive  | 100          | are not displayed only available rows are displayed | less      |
      | Archive  | 150          | are not displayed only available rows are displayed | less      |
      | Archive  | 200          | are not displayed only available rows are displayed | less      |
      | Reject   | 10           | display                                             | more      |
      | Reject   | 25           | display                                             | more      |
      | Reject   | 50           | display                                             | more      |
      | Reject   | 100          | display                                             | more      |
      | Reject   | 150          | display                                             | more      |
      | Reject   | 200          | display                                             | more      |
      | Reject   | 10           | are not displayed only available rows are displayed | less      |
      | Reject   | 25           | are not displayed only available rows are displayed | less      |
      | Reject   | 50           | are not displayed only available rows are displayed | less      |
      | Reject   | 100          | are not displayed only available rows are displayed | less      |
      | Reject   | 150          | are not displayed only available rows are displayed | less      |
      | Reject   | 200          | are not displayed only available rows are displayed | less      |

  @Release2
  Scenario Outline: ACAUTOCAS-4646: Validate Pagination in lead grid
    And user open lead grid
    When "<Page>" page of lead grid is open
    Then "<Paginate_Btn_Type>" paginate button should be "<Disable_Enable>" in lead grid
    Examples:
      | Page   | Paginate_Btn_Type        | Disable_Enable |
      | first  | paginate_button first    | disabled       |
      | first  | paginate_button previous | disabled       |
      | first  | paginate_button next     | enabled        |
      | first  | paginate_button last     | enabled        |
      | middle | paginate_button first    | enabled        |
      | middle | paginate_button previous | enabled        |
      | middle | paginate_button next     | enabled        |
      | middle | paginate_button last     | enabled        |
      | last   | paginate_button first    | enabled        |
      | last   | paginate_button previous | enabled        |
      | last   | paginate_button next     | disabled       |
      | last   | paginate_button last     | disabled       |

  @Release2
  Scenario Outline: ACAUTOCAS-4647: Validating all Pagination of lead grid
    And user open lead grid
    When "<Page>" page of lead grid is open
    Then "<Paginate_Btn_Type>" paginate button should work successfully
    Examples:
      | Page   | Paginate_Btn_Type        |
      | first  | paginate_button next     |
      | first  | paginate_button last     |
      | middle | paginate_button first    |
      | middle | paginate_button previous |
      | middle | paginate_button next     |
      | middle | paginate_button last     |
      | last   | paginate_button first    |
      | last   | paginate_button previous |
