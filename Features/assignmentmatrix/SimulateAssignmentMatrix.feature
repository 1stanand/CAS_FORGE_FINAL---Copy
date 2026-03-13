@Epic-Assignment_Matrix
@AuthoredBy-Rajni.Gola
@ReviewedBy-
@ImplementedBy-priyanshu.kashyap
@TechReviewedBy-
@ReviewedByDEV

@Release3

Feature: Simulate Assignment Matrix

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user clicks on menu
    And user click on simulate assignment matrix
    And user reads data from the excel file "assignment_matrix.xlsx" under sheet "assignment_matrix_details" and row 40

    # In this feature, we will cover scenarios explaining significance of
    # fields available in Assignment Matrix master

  #FeatureID-ACAUTOCAS-5074
  Scenario: ACAUTOCAS-6102:  Search on Simulate Assignment Matrix to test assignment matrix
    When user types in the search box
    Then user should be shown list of all assignment matrix created through assignment matrix master

  #FeatureID-ACAUTOCAS-5074
  Scenario: ACAUTOCAS-6103:  View Simulate Assignment Matrix to test assignment matrix
    When user selects assignment matrix from left pane
    And user selects simulate option
    Then user should be shown option to select entity name for simulation

  #FeatureID-ACAUTOCAS-5074
  Scenario: ACAUTOCAS-6104:  Use Simulate Assignment Matrix to test single assignment matrix
    And user types in the search box
    And user selects one assignment matrix from left pane
    When user selects simulate option
    And user selects entity name for simulation
    And user selects value for the selected entity
    Then user should be shown result of all the assignment sets mapped to the selected assignment matrix

  #FeatureID-ACAUTOCAS-5074
  Scenario: ACAUTOCAS-6105:  Use Simulate Assignment Matrix to test multiple matrix together
    And user is on Simulate Assignment Matrix
    And user selects more than one assignment matrix from left pane
    When user selects simulate option
    And user selects entity name for simulation
    And user selects value for the selected entity
    Then user should be shown result of all the assignment matrix separately displaying the result of assignment sets executed under each assignment matrix
