@Epic-Recommendation
@ReviewedBy-None
#@AuthoredBy-vinod.pandey
@AuthoredBy-vipin.kishor
@ImplementedBy-richa.singh
@ReviewedByDEV
Feature:Search CAM Report

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 7


 #FeatureID-ACAUTOCAS-6106
  Scenario Outline: ACAUTOCAS-6239: Search CAM report of <Loan_Type> application of <Stage> stage
    When user opens an application at "<Var_Stage>" stage from application grid
    And user records the application number at "<Stage>"
    And user clicks on CAM report at "<Stage>"
    And user navigates to CAM report screen
    And user search the CAM report for above application with "<var>" stage
    Then CAM report of "<var>" stage is displayed
    @Release3
    Examples:
      | Loan_Type     | Stage           | var             | Var_Stage                 |
      | Home Loan     | Credit Approval | Credit Approval | credit approval_indiv_hl  |
      | Home Loan     | Reconsideration | Latest          | reconsideration_indiv_hl  |
      | Home Loan     | Post Approval   | Latest          | post approval_indiv_hl    |
      | Home Loan     | Disbursal       | Latest          | disbursal_indiv_hl        |
      | Auto Loan     | Credit Approval | Credit Approval | credit approval_indiv_mal |
      | Auto Loan     | Reconsideration | Latest          | reconsideration_indiv_mal |
      | Auto Loan     | Post Approval   | Latest          | post approval_indiv_mal   |
      | Auto Loan     | Disbursal       | Latest          | disbursal_indiv_mal       |
      | Personal Loan | Credit Approval | Credit Approval | credit approval_indiv_pl  |
      | Personal Loan | Reconsideration | Latest          | reconsideration_indiv_pl  |
      | Personal Loan | Post Approval   | Latest          | post approval_indiv_pl    |
      | Personal Loan | Disbursal       | Latest          | disbursal_indiv_pl        |
    @NotImplemented
    Examples:
      | Loan_Type     | Stage                | var             |
      | Home Loan     | Disbursal Author     | Latest          |


  #FeatureID-ACAUTOCAS-6106
  @Release3
  Scenario Outline: ACAUTOCAS-6241: Unable to search CAM report of <Loan_Type> application of <Stage> stage
#    And the CAM report has not been generated even once
    When user opens an application at "<Var_Stage>" stage from application grid
    And user records the application number at "<Stage>"
    And user navigates to CAM report screen
    And user search the CAM report for above application with "<var>" stage
    Then no report appears in the search result
    Examples:
      | Loan_Type     | Stage           | var             | Var_Stage                 |
      | Home Loan     | Credit Approval | Credit Approval | credit approval_indiv_hl  |
      | Home Loan     | Reconsideration | Latest          | reconsideration_indiv_hl  |
      | Home Loan     | Post Approval   | Latest          | post approval_indiv_hl    |
      | Home Loan     | Disbursal       | Latest          | disbursal_indiv_hl        |
      | Auto Loan     | Credit Approval | Credit Approval | credit approval_indiv_mal |
      | Auto Loan     | Reconsideration | Latest          | reconsideration_indiv_mal |
      | Auto Loan     | Post Approval   | Latest          | post approval_indiv_mal   |
      | Auto Loan     | Disbursal       | Latest          | disbursal_indiv_mal       |
      | Personal Loan | Credit Approval | Credit Approval | credit approval_indiv_pl  |
      | Personal Loan | Reconsideration | Latest          | reconsideration_indiv_pl  |
      | Personal Loan | Post Approval   | Latest          | post approval_indiv_pl    |
      | Personal Loan | Disbursal       | Latest          | disbursal_indiv_pl        |


  #FeatureID-ACAUTOCAS-6106
  @NotImplemented
  Scenario Outline: ACAUTOCAS-6242: CAM report for <Loan_Type> application is generated only during the credit approval stage
    And CAM report is generated at credit approval stage
    When user navigates to CAM report screen
    And user search the CAM report of "<Loan_Type>" application of "<Stage>" stage
    Then pop up is display to show CAM report of credit approval
    Examples:
      | Loan_Type     | Stage                |
      | Home Loan     | Reconsideration      |
      | Home Loan     | Post Approval        |
      | Home Loan     | Disbursal Initiation |
      | Auto Loan     | Reconsideration      |
      | Auto Loan     | Post Approval        |
      | Auto Loan     | Disbursal Initiation |
      | Personal Loan | Reconsideration      |
      | Personal Loan | Post Approval        |
      | Personal Loan | Disbursal Initiation |

    ####
  #FeatureID-ACAUTOCAS-6106
  @NotImplemented
  Scenario Outline: ACAUTOCAS-6240: Search for credit approval CAM report of <Loan_Type> application of <Stage> stage
    And CAM report is generated at credit approval stage
    When user navigates to CAM report screen
    And user search the CAM report for "<Loan_Type>" application which is at "<Stage>"
    Then CAM report of credit approval stage is displayed
    Examples:
      | Loan_Type     | Stage                |
      | Home Loan     | Credit Approval      |
      | Home Loan     | Reconsideration      |
      | Home Loan     | Post Approval        |
      | Home Loan     | Disbursal Initiation |
      | Auto Loan     | Credit Approval      |
      | Auto Loan     | Reconsideration      |
      | Auto Loan     | Post Approval        |
      | Auto Loan     | Disbursal Initiation |
      | Personal Loan | Credit Approval      |
      | Personal Loan | Reconsideration      |
      | Personal Loan | Post Approval        |
      | Personal Loan | Disbursal Initiation |
