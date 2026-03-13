@Epic-PF_Share_Base
@PQMStory
@AuthoredBy-piyush.agnihotri
@ReviewedBy-harshprit.kumar
@TechReviewedBy-harshprit.kumar
@ImplementedBy-piyush.agnihotri
@Shares
@Islamic
@ReleaseIslamicM3
@Release

#Story-CAS-186310
Feature: Validate Dynamic Form On Share Order Stage

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user reads data from the excel file "shares.xlsx" under sheet "background" and row 0


# ${ProductType:["IPF"]}
# ${ApplicationStage:["Reconsideration"]}
# ${ApplicantType:["indiv"]}
#PQM-10_CAS-186310
#FeatureID-ACAUTOCAS-11313
  Scenario Outline: ACAUTOCAS-14874: Verify the Dynamic Form on Share Order Stage
    And user picks an application of "<ProductType>" product type as "<ApplicantType>" applicant at stage "<ApplicationStage>" for category "<Category>" with key "<Key>"
    And user moves an application from "Reconsideration" Stage to "Share Order" Stage
    And user opens an application of "Share Order" stage present in context from application grid
    When user is on Share Order tab
    Then Dynamic Form as mapped on Share Order should be visible
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Category | Key           |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | isshare order |

# ${ProductType:["IPF"]}
# ${ApplicationStage:["Reconsideration"]}
# ${ApplicantType:["indiv"]}
#PQM-11_CAS-186310
#PMG-19_CAS-186310
#FeatureID-ACAUTOCAS-11313
  Scenario Outline: ACAUTOCAS-14875: Verify the data saved in Dynamic Form
    And user picks an application of "<ProductType>" product type as "<ApplicantType>" applicant at stage "<ApplicationStage>" for category "<Category>" with key "<Key>"
    And user moves an application from "Reconsideration" Stage to "Share Order" Stage
    And user opens an application of "Share Order" stage present in context from application grid
    And user is on Share Order tab
    And user reads data from the excel file "<ShareOrderWB>" under sheet "<ShareOrder_ShareOrder>" and row <ShareOrder_ShareOrder_rowNum>
    When user fills dynamic form details
    And user selects decision as "Approve" in Decision Details Section
    And user fills multiple reasons in Decision Details Section
    And user clicks on save button after filling dynamic form details
    Then dynamic form should be captured successfully
    Examples:
      | ProductType   | ApplicationStage   | ShareOrderWB    | ShareOrder_ShareOrder | ShareOrder_ShareOrder_rowNum | ApplicantType   | Category | Key           |
      | <ProductType> | <ApplicationStage> | shareorder.xlsx | share_order           | 5                            | <ApplicantType> | shares   | isshare order |


# ${ProductType:["IPF"]}
# ${ApplicationStage:["Reconsideration"]}
# ${ApplicantType:["indiv"]}
#PMG-24_CAS-186310
#FeatureID-ACAUTOCAS-11313
  Scenario Outline: ACAUTOCAS-14876: validate cancelling the captured data of dynamic form at <ApplicationStage> for a <ProductType> application
    And user picks an application of "<ProductType>" product type as "<ApplicantType>" applicant at stage "<ApplicationStage>" for category "<Category>" with key "<Key>"
    And user moves an application from "Reconsideration" Stage to "Share Order" Stage
    And user opens an application of "Share Order" stage present in context from application grid
    And user is on Share Order tab
    And user reads data from the excel file "<ShareOrderWB>" under sheet "<ShareOrder_ShareOrder>" and row <ShareOrder_ShareOrder_rowNum>
    When user fills dynamic form details
    And user clicks on Document Tab on Share Order Stage
    And user clicks on ok button in the warning popup
    Then All the data captured in dynamic form will be removed
    Examples:
      | ProductType   | ApplicationStage   | ShareOrderWB    | ShareOrder_ShareOrder | ShareOrder_ShareOrder_rowNum | ApplicantType   | Category | Key           |
      | <ProductType> | <ApplicationStage> | shareorder.xlsx | share_order           | 5                            | <ApplicantType> | shares   | isshare order |


# ${ProductType:["IPF"]}
# ${ApplicationStage:["Reconsideration"]}
# ${ApplicantType:["indiv"]}
#PMG-25_CAS-186310
#FeatureID-ACAUTOCAS-11313
  Scenario Outline: ACAUTOCAS-14877: validate not cancelling the captured data of dynamic form at <ApplicationStage> for a <ProductType> application
    And user picks an application of "<ProductType>" product type as "<ApplicantType>" applicant at stage "<ApplicationStage>" for category "<Category>" with key "<Key>"
    And user moves an application from "Reconsideration" Stage to "Share Order" Stage
    And user opens an application of "Share Order" stage present in context from application grid
    And user is on Share Order tab
    And user reads data from the excel file "<ShareOrderWB>" under sheet "<ShareOrder_ShareOrder>" and row <ShareOrder_ShareOrder_rowNum>
    When user fills dynamic form details
    And user clicks on Document Tab on Share Order Stage
    And user clicks on close button in the warning tab
    Then All the data captured in dynamic form will be retained
    Examples:
      | ProductType   | ApplicationStage   | ShareOrderWB    | ShareOrder_ShareOrder | ShareOrder_ShareOrder_rowNum | ApplicantType   | Category | Key           |
      | <ProductType> | <ApplicationStage> | shareorder.xlsx | share_order           | 5                            | <ApplicantType> | shares   | isshare order |

# ${ProductType:["IPF"]}
# ${ApplicationStage:["Reconsideration"]}
# ${ApplicantType:["indiv"]}
#PMG-27_CAS-186310
#FeatureID-ACAUTOCAS-11313
  Scenario Outline: ACAUTOCAS-14878: validate changing tabs without saving data of dynamic form at <ApplicationStage> for a <ProductType> application
    And user picks an application of "<ProductType>" product type as "<ApplicantType>" applicant at stage "<ApplicationStage>" for category "<Category>" with key "<Key>"
    And user moves an application from "Reconsideration" Stage to "Share Order" Stage
    And user opens an application of "Share Order" stage present in context from application grid
    And user is on Share Order tab
    And user reads data from the excel file "<ShareOrderWB>" under sheet "<ShareOrder_ShareOrder>" and row <ShareOrder_ShareOrder_rowNum>
    When user fills dynamic form details
    And user clicks on Document Tab on Share Order Stage
    Then warning message is displayed
    Examples:
      | ProductType   | ApplicationStage   | ShareOrderWB    | ShareOrder_ShareOrder | ShareOrder_ShareOrder_rowNum | ApplicantType   | Category | Key           |
      | <ProductType> | <ApplicationStage> | shareorder.xlsx | share_order           | 6                            | <ApplicantType> | shares   | isshare order |

# ${ProductType:["IPF"]}
# ${ApplicationStage:["Reconsideration"]}
# ${ApplicantType:["indiv"]}
#PMG-27_CAS-186310
#FeatureID-ACAUTOCAS-12101
  Scenario Outline: ACAUTOCAS-14879: validate data entered in dynamic form is retained after tab switching at <ApplicationStage> for a <ProductType> application
    And user picks an application of "<ProductType>" product type as "<ApplicantType>" applicant at stage "<ApplicationStage>" for category "<Category>" with key "<Key>"
    And user moves an application from "Reconsideration" Stage to "Share Order" Stage
    And user opens an application of "Share Order" stage present in context from application grid
    And user is on Share Order tab
    And user reads data from the excel file "<ShareOrderWB>" under sheet "<ShareOrder_ShareOrder>" and row <ShareOrder_ShareOrder_rowNum>
    When user fills dynamic form details
    And user selects decision as "Approve" in Decision Details Section
    And user fills multiple reasons in Decision Details Section
    And user clicks on save button after filling dynamic form details
    And user clicks on Document Tab on Share Order Stage
    Then All the data captured in dynamic form will be retained
    Examples:
      | ProductType   | ApplicationStage   | ShareOrderWB    | ShareOrder_ShareOrder | ShareOrder_ShareOrder_rowNum | ApplicantType   | Category | Key           |
      | <ProductType> | <ApplicationStage> | shareorder.xlsx | share_order           | 5                            | <ApplicantType> | shares   | isshare order |
