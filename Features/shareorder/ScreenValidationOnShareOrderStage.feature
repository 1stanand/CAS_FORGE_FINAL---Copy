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
Feature: Screen Validation On Share Order Stage

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user reads data from the excel file "shares.xlsx" under sheet "background" and row 0


# ${ProductType:["IPF"]}
# ${ApplicationStage:["Reconsideration"]}
# ${ApplicantType:["indiv"]}
#PMG-17_CAS-186310 , 18_CAS-186310
#FeatureID-ACAUTOCAS-11313
  Scenario Outline: ACAUTOCAS-14810: Validate <Action> on Investor Details Modal Window at <ApplicationStage> stage for <ProductType> product type
    And user picks an application of "<ProductType>" product type as "<ApplicantType>" applicant at stage "<ApplicationStage>" for category "<Category>" with key "<Key>"
    And user moves an application from "Reconsideration" Stage to "Share Order" Stage
    And user opens an application of "Share Order" stage present in context from application grid
    And user clicks on Unique ID hyperlink of any record
    When user take "<Action>" in Investor Details Modal Window
    Then "<Action>" should work properly on Investor Details Modal Window
    Examples:
      | ProductType   | ApplicationStage   | Action   | ApplicantType   | Category | Key           |
      | <ProductType> | <ApplicationStage> | Minimize | <ApplicantType> | shares   | isshare order |
      | <ProductType> | <ApplicationStage> | Maximize | <ApplicantType> | shares   | isshare order |
      | <ProductType> | <ApplicationStage> | Cross    | <ApplicantType> | shares   | isshare order |
      | <ProductType> | <ApplicationStage> | Cancel   | <ApplicantType> | shares   | isshare order |


# ${ProductType:["IPF"]}
# ${ApplicationStage:["Reconsideration"]}
# ${ApplicantType:["indiv"]}
#PMG-20_CAS-186310
#FeatureID-ACAUTOCAS-11313
  Scenario Outline: ACAUTOCAS-14811: Validate Decision Details Section at <ApplicationStage> stage for <ProductType> product type
    And user picks an application of "<ProductType>" product type as "<ApplicantType>" applicant at stage "<ApplicationStage>" for category "<Category>" with key "<Key>"
    And user moves an application from "Reconsideration" Stage to "Share Order" Stage
    And user opens an application of "Share Order" stage present in context from application grid
    When user is on Share Order tab
    Then Decision Details section should be present on Share Order tab
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Category | Key           |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | isshare order |


# ${ProductType:["IPF"]}
# ${ApplicationStage:["Reconsideration"]}
# ${ApplicantType:["indiv"]}
#PMG-12_CAS-186310
#FeatureID-ACAUTOCAS-11313
  Scenario Outline: ACAUTOCAS-14812: Validate Required Fields at <ApplicationStage> stage for <ProductType> product type
    And user picks an application of "<ProductType>" product type as "<ApplicantType>" applicant at stage "<ApplicationStage>" for category "<Category>" with key "<Key>"
    And user moves an application from "Reconsideration" Stage to "Share Order" Stage
    And user opens an application of "Share Order" stage present in context from application grid
    When user selects required field section
    Then Required fields should be displayed on the screen
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Category | Key           |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | isshare order |


# ${ProductType:["IPF"]}
# ${ApplicationStage:["Reconsideration"]}
# ${ApplicantType:["indiv"]}
#PMG-12_CAS-186310
#FeatureID-ACAUTOCAS-11313
  Scenario Outline: ACAUTOCAS-14813: Validate All Fields at <ApplicationStage> stage for <ProductType> product type
    And user picks an application of "<ProductType>" product type as "<ApplicantType>" applicant at stage "<ApplicationStage>" for category "<Category>" with key "<Key>"
    And user moves an application from "Reconsideration" Stage to "Share Order" Stage
    And user opens an application of "Share Order" stage present in context from application grid
    When user selects All field section
    Then All fields should be displayed on the screen
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Category | Key           |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | isshare order |


# ${ProductType:["IPF"]}
# ${ApplicationStage:["Reconsideration"]}
# ${ApplicantType:["indiv"]}
#PMG-16_CAS-186310
#FeatureID-ACAUTOCAS-11313
  Scenario Outline: ACAUTOCAS-14814: Validate Investor Details Modal Window at <ApplicationStage> stage for <ProductType> product type
    And user picks an application of "<ProductType>" product type as "<ApplicantType>" applicant at stage "<ApplicationStage>" for category "<Category>" with key "<Key>"
    And user moves an application from "Reconsideration" Stage to "Share Order" Stage
    And user opens an application of "Share Order" stage present in context from application grid
    When user clicks on Unique ID hyperlink of any record
    Then Investor Details Modal window should be opened successfully
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Category | Key           |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | isshare order |


# ${ProductType:["IPF"]}
# ${ApplicationStage:["Reconsideration"]}
# ${ApplicantType:["indiv"]}
#PMG-16_CAS-186310
#FeatureID-ACAUTOCAS-11313
  Scenario Outline: ACAUTOCAS-14815: Validate <FieldName> in Investor Details Modal Window In View Mode at <ApplicationStage> stage for <ProductType> product type
    And user picks an application of "<ProductType>" product type as "<ApplicantType>" applicant at stage "<ApplicationStage>" for category "<Category>" with key "<Key>"
    And user moves an application from "Reconsideration" Stage to "Share Order" Stage
    And user opens an application of "Share Order" stage present in context from application grid
    When user clicks on Unique ID hyperlink of any record
    Then "<FieldName>" in Investor Details Modal window should get opened in view mode
    Examples:
      | ProductType   | ApplicationStage   | FieldName             | ApplicantType   | Category | Key           |
      | <ProductType> | <ApplicationStage> | Platform              | <ApplicantType> | shares   | isshare order |
      | <ProductType> | <ApplicationStage> | Client Id             | <ApplicantType> | shares   | isshare order |
      | <ProductType> | <ApplicationStage> | Exchange Market       | <ApplicantType> | shares   | isshare order |
      | <ProductType> | <ApplicationStage> | ADX Investor No       | <ApplicantType> | shares   | isshare order |
      | <ProductType> | <ApplicationStage> | Company Name          | <ApplicantType> | shares   | isshare order |
      | <ProductType> | <ApplicationStage> | Order Type            | <ApplicantType> | shares   | isshare order |
      | <ProductType> | <ApplicationStage> | Share Validity        | <ApplicantType> | shares   | isshare order |
      | <ProductType> | <ApplicationStage> | Requested Share Price | <ApplicantType> | shares   | isshare order |
      | <ProductType> | <ApplicationStage> | Max Original Cost     | <ApplicantType> | shares   | isshare order |
      | <ProductType> | <ApplicationStage> | Requested Quantity    | <ApplicantType> | shares   | isshare order |


# ${ProductType:["IPF"]}
# ${ApplicationStage:["Reconsideration"]}
# ${ApplicantType:["indiv"]}
#PMG-21_CAS-186310
#FeatureID-ACAUTOCAS-11313
  Scenario Outline: ACAUTOCAS-14816: Validate <Fields> In Decision Details Section at <ApplicationStage> stage for <ProductType> product type
    And user picks an application of "<ProductType>" product type as "<ApplicantType>" applicant at stage "<ApplicationStage>" for category "<Category>" with key "<Key>"
    And user moves an application from "Reconsideration" Stage to "Share Order" Stage
    And user opens an application of "Share Order" stage present in context from application grid
    When user is on Share Order tab
    Then Decision Details "<Fields>" should be present on Share Order tab
    Examples:
      | ProductType   | ApplicationStage   | Fields           | ApplicantType   | Category | Key           |
      | <ProductType> | <ApplicationStage> | Decision         | <ApplicantType> | shares   | isshare order |
      | <ProductType> | <ApplicationStage> | Reason           | <ApplicantType> | shares   | isshare order |
      | <ProductType> | <ApplicationStage> | Description      | <ApplicantType> | shares   | isshare order |
      | <ProductType> | <ApplicationStage> | Decision Comment | <ApplicantType> | shares   | isshare order |


# ${ProductType:["IPF"]}
# ${ApplicationStage:["Reconsideration"]}
# ${ApplicantType:["indiv"]}
#UT-19_CAS-186310
#FeatureID-ACAUTOCAS-11313
  Scenario Outline: ACAUTOCAS-14817: Validate Share Order Tab at <ApplicationStage> stage for <ProductType> product type
    And user picks an application of "<ProductType>" product type as "<ApplicantType>" applicant at stage "<ApplicationStage>" for category "<Category>" with key "<Key>"
    And user moves an application from "Reconsideration" Stage to "Share Order" Stage
    When user opens an application of "Share Order" stage present in context from application grid
    Then Application will land on Share Order Tab
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Category | Key           |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | isshare order |

#OutOfScope
## ${ProductType:["IPF"]}
## ${ApplicationStage:["Reconsideration"]}
## ${ApplicantType:["indiv"]}
##ST-21_CAS-186310 , 22_CAS-186310
##FeatureID-ACAUTOCAS-11313
#  Scenario Outline:Validate Online Help Icon at <ApplicationStage> stage for <ProductType> product type
#    And user picks an application of "<ProductType>" product type as "<ApplicantType>" applicant at stage "<ApplicationStage>" for category "<Category>" with key "<Key>"
#    And user moves an application from "Reconsideration" Stage to "Share Order" Stage
#    And user opens an application of "Share Order" stage present in context from application grid
#    When user clicks on online help icon
#    Then user should get open a new separate tab of online help
#    Examples:
#      | ProductType   | ApplicationStage   | ApplicantType   | Category | Key           |
#      | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | isshare order |


# ${ProductType:["IPF"]}
# ${ApplicationStage:["Reconsideration"]}
# ${ApplicantType:["indiv"]}
#PMG-06_CAS-186310
#FeatureID-ACAUTOCAS-11313
  Scenario Outline: ACAUTOCAS-14818: Validate Additional Capabilities <fieldName> Available at <ApplicationStage> stage for <ProductType> product type
    And user picks an application of "<ProductType>" product type as "<ApplicantType>" applicant at stage "<ApplicationStage>" for category "<Category>" with key "<Key>"
    And user moves an application from "Reconsideration" Stage to "Share Order" Stage
    And user opens an application of "Share Order" stage present in context from application grid
    When user is on Share Order tab
    Then user should be able to see "<fieldName>" field under share order stage
    Examples:
      | ProductType   | ApplicationStage   | fieldName                      | ApplicantType   | Category | Key           |
      | <ProductType> | <ApplicationStage> | Application TAT                | <ApplicantType> | shares   | isshare order |
      | <ProductType> | <ApplicationStage> | Move to Next Stage             | <ApplicantType> | shares   | isshare order |
      | <ProductType> | <ApplicationStage> | More Actions                   | <ApplicantType> | shares   | isshare order |
      | <ProductType> | <ApplicationStage> | Exit                           | <ApplicantType> | shares   | isshare order |
      | <ProductType> | <ApplicationStage> | Workflow Icon                  | <ApplicantType> | shares   | isshare order |
      | <ProductType> | <ApplicationStage> | Customer Communication History | <ApplicantType> | shares   | isshare order |
      | <ProductType> | <ApplicationStage> | Activity                       | <ApplicantType> | shares   | isshare order |
#      | <ProductType> | <ApplicationStage> | Application Summary            | <ApplicantType> | shares   | isshare order |
      | <ProductType> | <ApplicationStage> | CAM Report                     | <ApplicantType> | shares   | isshare order |



# ${ProductType:["IPF"]}
# ${ApplicationStage:["Reconsideration"]}
# ${ApplicantType:["indiv"]}
#PMG-07_CAS-186310
#FeatureID-ACAUTOCAS-11313
  Scenario Outline: ACAUTOCAS-14819: Validate <options> in more actions at <ApplicationStage> stage for <ProductType> product type
    And user picks an application of "<ProductType>" product type as "<ApplicantType>" applicant at stage "<ApplicationStage>" for category "<Category>" with key "<Key>"
    And user moves an application from "Reconsideration" Stage to "Share Order" Stage
    And user opens an application of "Share Order" stage present in context from application grid
    And user is on Share Order tab
    When user clicks on More Actions button
    Then More Action dropdown will open and user will see various "<Options>" on Share Order Stage
    Examples:
      | ProductType   | ApplicationStage   | Options                 | ApplicantType   | Category | Key           |
      | <ProductType> | <ApplicationStage> | Hold Application        | <ApplicantType> | shares   | isshare order |
      | <ProductType> | <ApplicationStage> | Workflow History Record | <ApplicantType> | shares   | isshare order |
      | <ProductType> | <ApplicationStage> | Raise Query             | <ApplicantType> | shares   | isshare order |
      | <ProductType> | <ApplicationStage> | Re-Assign Application   | <ApplicantType> | shares   | isshare order |


# ${ProductType:["IPF"]}
# ${ApplicationStage:["Reconsideration"]}
# ${ApplicantType:["indiv"]}
#PMG-09_CAS-186310
#FeatureID-ACAUTOCAS-11313
  Scenario Outline: ACAUTOCAS-14820: Validate seeded tabs at <ApplicationStage> stage for <ProductType> product type
    And user picks an application of "<ProductType>" product type as "<ApplicantType>" applicant at stage "<ApplicationStage>" for category "<Category>" with key "<Key>"
    And user moves an application from "Reconsideration" Stage to "Share Order" Stage
    And user opens an application of "Share Order" stage present in context from application grid
    When user check Share Order & Documents Tab
    Then Both the tabs should be present on screen as below:
      | Share Order  |
      | Document Tab |
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Category | Key           |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | isshare order |


# ${ProductType:["IPF"]}
# ${ApplicationStage:["Reconsideration"]}
# ${ApplicantType:["indiv"]}
#PMG-14_CAS-186310
#FeatureID-ACAUTOCAS-11313

  Scenario Outline: ACAUTOCAS-14821: Validate documents at <ApplicationStage> stage for <ProductType> product type
    And user picks an application of "<ProductType>" product type as "<ApplicantType>" applicant at stage "<ApplicationStage>" for category "<Category>" with key "<Key>"
    And user moves an application from "Reconsideration" Stage to "Share Order" Stage
    And user opens an application of "Share Order" stage present in context from application grid
    And user clicks on Document Tab on Share Order Stage
    And user selects documents which are visible in the document tab
    When user add the documents
    Then Documents should successfully get added
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Category | Key           |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | isshare order |


# ${ProductType:["IPF"]}
# ${ApplicationStage:["Reconsideration"]}
# ${ApplicantType:["indiv"]}
#PMG-26_CAS-186310
#FeatureID-ACAUTOCAS-11313
  Scenario Outline: ACAUTOCAS-14822: Validate Changing Tabs Without Saving Data at <ApplicationStage> stage for <ProductType> product type
    And user picks an application of "<ProductType>" product type as "<ApplicantType>" applicant at stage "<ApplicationStage>" for category "<Category>" with key "<Key>"
    And user moves an application from "Reconsideration" Stage to "Share Order" Stage
    And user opens an application of "Share Order" stage present in context from application grid
    When user selects decision as "Approve" in Decision Details Section
    And user clicks on Document Tab on Share Order Stage
    And user reads data from the excel file "<ShareOrderWB>" under sheet "<ShareOrder_ShareOrder>" and row <ShareOrder_ShareOrder_rowNum>
    Then warning message is displayed
    Examples:
      | ProductType   | ApplicationStage   | ShareOrderWB    | ShareOrder_ShareOrder | ShareOrder_ShareOrder_rowNum | ApplicantType   | Category | Key           |
      | <ProductType> | <ApplicationStage> | shareorder.xlsx | share_order           | 0                            | <ApplicantType> | shares   | isshare order |


# ${ProductType:["IPF"]}
# ${ApplicationStage:["Reconsideration"]}
# ${ApplicantType:["indiv"]}
#ST-19_CAS-186310
#FeatureID-ACAUTOCAS-11313
  Scenario Outline: ACAUTOCAS-14823: Validating activity section <FieldName> present on Share Order Stage
    And user picks an application of "<ProductType>" product type as "<ApplicantType>" applicant at stage "<ApplicationStage>" for category "<Category>" with key "<Key>"
    And user moves an application from "Reconsideration" Stage to "Share Order" Stage
    And user opens an application of "Share Order" stage present in context from application grid
    When user opens activity section
    And user opens "<FieldName>" field on activity section
    Then user should be able to verify working of available "<FieldName>" field
    Examples:
      | FieldName             | ApplicationStage   | ProductType   | ApplicantType   | Category | Key           |
      | Comments              | <ApplicationStage> | <ProductType> | <ApplicantType> | shares   | isshare order |
      | Activity              | <ApplicationStage> | <ProductType> | <ApplicantType> | shares   | isshare order |
      | History               | <ApplicationStage> | <ProductType> | <ApplicantType> | shares   | isshare order |
      | Notes                 | <ApplicationStage> | <ProductType> | <ApplicantType> | shares   | isshare order |
      | Tag                   | <ApplicationStage> | <ProductType> | <ApplicantType> | shares   | isshare order |
      | Rule Execution Result | <ApplicationStage> | <ProductType> | <ApplicantType> | shares   | isshare order |
      | Messages              | <ApplicationStage> | <ProductType> | <ApplicantType> | shares   | isshare order |

  @Perishable
# ${ProductType:["IPF"]}
# ${ApplicationStage:["Reconsideration"]}
# ${ApplicantType:["indiv"]}
#PMG-16_CAS-186310
#FeatureID-ACAUTOCAS-11313
  Scenario Outline: ACAUTOCAS-14824: Validate dummy data <Fields> in Executed Share Details section at <ApplicationStage> for a <ProductType> application
    And user picks an application of "<ProductType>" product type as "<ApplicantType>" applicant at stage "<ApplicationStage>" for category "<Category>" with key "<Key>"
    And user moves an application from "Reconsideration" Stage to "Purchase Promise" Stage
    And user opens an application of "Purchase Promise" stage present in context from application grid
    And user add "Multiple" investor details by reading data from
      | purchase_promise.xlsx | home | 48 |
      | purchase_promise.xlsx | home | 49 |
    And user clicks on save button on investor details
    And user clicks on move to next stage
    And user opens an application of "Share Order" stage present in context from application grid
    When user clicks on Unique ID hyperlink of any record
    Then "<Fields>" filled with dummy data in executed share details should be visible in view mode
    Examples:
      | ProductType   | ApplicationStage   | Fields                | ApplicantType   | Category | Key                |
      | <ProductType> | <ApplicationStage> | Platform              | <ApplicantType> | shares   | ispurchase promise |
      | <ProductType> | <ApplicationStage> | Client Id             | <ApplicantType> | shares   | ispurchase promise |
      | <ProductType> | <ApplicationStage> | Exchange Market       | <ApplicantType> | shares   | ispurchase promise |
      | <ProductType> | <ApplicationStage> | ADX Investor No       | <ApplicantType> | shares   | ispurchase promise |
      | <ProductType> | <ApplicationStage> | Company Name          | <ApplicantType> | shares   | ispurchase promise |
      | <ProductType> | <ApplicationStage> | Order Type            | <ApplicantType> | shares   | ispurchase promise |
      | <ProductType> | <ApplicationStage> | Share Validity        | <ApplicantType> | shares   | ispurchase promise |
      | <ProductType> | <ApplicationStage> | Requested Share Price | <ApplicantType> | shares   | ispurchase promise |
      | <ProductType> | <ApplicationStage> | Max Original Cost     | <ApplicantType> | shares   | ispurchase promise |
      | <ProductType> | <ApplicationStage> | Requested Quantity    | <ApplicantType> | shares   | ispurchase promise |


# ${ProductType:["IPF"]}
# ${ApplicationStage:["Reconsideration"]}
# ${ApplicantType:["indiv"]}
#PMG-22_CAS-186310
#FeatureID-ACAUTOCAS-11313
  Scenario Outline: ACAUTOCAS-14825: Validate clicking save button without entering decision details at <ApplicationStage> stage for <ProductType> product type
    And user picks an application of "<ProductType>" product type as "<ApplicantType>" applicant at stage "<ApplicationStage>" for category "<Category>" with key "<Key>"
    And user moves an application from "Reconsideration" Stage to "Share Order" Stage
    And user opens an application of "Share Order" stage present in context from application grid
    And user is on Share Order tab
    When user clicks on save button without entering decision details
    And user reads data from the excel file "<ShareOrderWB>" under sheet "<ShareOrder_ShareOrder>" and row <ShareOrder_ShareOrder_rowNum>
    Then proper error message will be displayed on Share Order Tab
    Examples:
      | ProductType   | ApplicationStage   | ShareOrderWB    | ShareOrder_ShareOrder | ShareOrder_ShareOrder_rowNum | ApplicantType   | Category | Key           |
      | <ProductType> | <ApplicationStage> | shareorder.xlsx | share_order           | 1                            | <ApplicantType> | shares   | isshare order |

# ${ProductType:["IPF"]}
# ${ApplicationStage:["Reconsideration"]}
# ${ApplicantType:["indiv"]}
#PMG-22_CAS-186310
#FeatureID-ACAUTOCAS-11313
  Scenario Outline: ACAUTOCAS-14826: Validate clicking save button after filling decision on decision details section at <ApplicationStage> stage for <ProductType> product type
    And user picks an application of "<ProductType>" product type as "<ApplicantType>" applicant at stage "<ApplicationStage>" for category "<Category>" with key "<Key>"
    And user moves an application from "Reconsideration" Stage to "Share Order" Stage
    And user opens an application of "Share Order" stage present in context from application grid
    And user is on Share Order tab
    When user selects decision before clicking on save button
    And user reads data from the excel file "<ShareOrderWB>" under sheet "<ShareOrder_ShareOrder>" and row <ShareOrder_ShareOrder_rowNum>
    Then proper error message will be displayed on Share Order Tab
    Examples:
      | ProductType   | ApplicationStage   | ShareOrderWB    | ShareOrder_ShareOrder | ShareOrder_ShareOrder_rowNum | ApplicantType   | Category | Key           |
      | <ProductType> | <ApplicationStage> | shareorder.xlsx | share_order           | 2                            | <ApplicantType> | shares   | isshare order |


# ${ProductType:["IPF"]}
# ${ApplicationStage:["Reconsideration"]}
# ${ApplicantType:["indiv"]}
#PMG-27_CAS-186310
#FeatureID-ACAUTOCAS-11313
  Scenario Outline: ACAUTOCAS-14827: Validate Duplicate Reasons on decision details section at <ApplicationStage> stage for <ProductType> product type
    And user picks an application of "<ProductType>" product type as "<ApplicantType>" applicant at stage "<ApplicationStage>" for category "<Category>" with key "<Key>"
    And user moves an application from "Reconsideration" Stage to "Share Order" Stage
    And user opens an application of "Share Order" stage present in context from application grid
    And user is on Share Order tab
    When user selects decision as "Approve" in Decision Details Section
    And user reads data from the excel file "<ShareOrderWB>" under sheet "<ShareOrder_ShareOrder>" and row <ShareOrder_ShareOrder_rowNum>
    And user fills multiple reasons in Decision Details Section
    Then proper error message will be displayed on Share Order Tab
    Examples:
      | ProductType   | ApplicationStage   | ShareOrderWB    | ShareOrder_ShareOrder | ShareOrder_ShareOrder_rowNum | ApplicantType   | Category | Key           |
      | <ProductType> | <ApplicationStage> | shareorder.xlsx | share_order           | 3                            | <ApplicantType> | shares   | isshare order |

# ${ProductType:["IPF"]}
# ${ApplicationStage:["Reconsideration"]}
# ${ApplicantType:["indiv"]}
#PMG-29_CAS-186310
#FeatureID-ACAUTOCAS-11313
  Scenario Outline: ACAUTOCAS-14828: Validating max length should be 4000 characters in Decision Comments at <ApplicationStage> stage for <ProductType> product type
    And user picks an application of "<ProductType>" product type as "<ApplicantType>" applicant at stage "<ApplicationStage>" for category "<Category>" with key "<Key>"
    And user moves an application from "Reconsideration" Stage to "Share Order" Stage
    And user opens an application of "Share Order" stage present in context from application grid
    And user is on Share Order tab
    When user selects decision as "Approve" in Decision Details Section
    And user reads data from the excel file "<ShareOrderWB>" under sheet "<ShareOrder_ShareOrder>" and row <ShareOrder_ShareOrder_rowNum>
    And user select reason in Decision Details Section
    And user fills decision comments with maximum 4000 characters
    Then system should not allow user to enter more than "4000" characters in comment section
    Examples:
      | ProductType   | ApplicationStage   | ShareOrderWB    | ShareOrder_ShareOrder | ShareOrder_ShareOrder_rowNum | ApplicantType   | Category | Key           |
      | <ProductType> | <ApplicationStage> | shareorder.xlsx | share_order           | 0                            | <ApplicantType> | shares   | isshare order |


# ${ProductType:["IPF"]}
# ${ApplicationStage:["Reconsideration"]}
# ${ApplicantType:["indiv"]}
#PMG-31_CAS-186310
#FeatureID-ACAUTOCAS-11313
  Scenario Outline: ACAUTOCAS-14829: Validate hover on decision details section <FieldName> at <ApplicationStage> of <ProductType>
    And user picks an application of "<ProductType>" product type as "<ApplicantType>" applicant at stage "<ApplicationStage>" for category "<Category>" with key "<Key>"
    And user moves an application from "Reconsideration" Stage to "Share Order" Stage
    And user opens an application of "Share Order" stage present in context from application grid
    And user is on Share Order tab
    When user hover on "<FieldName>" in decision details section
    Then tooltip should be displayed for "<FieldName>" in decision details section
    Examples:
      | ProductType   | ApplicationStage   | FieldName | ApplicantType   | Category | Key           |
      | <ProductType> | <ApplicationStage> | Reason    | <ApplicantType> | shares   | isshare order |
      | <ProductType> | <ApplicationStage> | Comment   | <ApplicantType> | shares   | isshare order |


# ${ProductType:["IPF"]}
# ${ApplicationStage:["Reconsideration"]}
# ${ApplicantType:["indiv"]}
#PMG-30_CAS-186310
#FeatureID-ACAUTOCAS-11313
  Scenario Outline: ACAUTOCAS-14830: Validate tooltip name by hover on decision details section <FieldName> at <ApplicationStage> of <ProductType>
    And user picks an application of "<ProductType>" product type as "<ApplicantType>" applicant at stage "<ApplicationStage>" for category "<Category>" with key "<Key>"
    And user moves an application from "Reconsideration" Stage to "Share Order" Stage
    And user opens an application of "Share Order" stage present in context from application grid
    And user is on Share Order tab
    When user hover on "<FieldName>" in decision details section
    Then tooltip name should be same as "<FieldName>" in decision details section
    Examples:
      | ProductType   | ApplicationStage   | FieldName | ApplicantType   | Category | Key           |
      | <ProductType> | <ApplicationStage> | Reason    | <ApplicantType> | shares   | isshare order |
      | <ProductType> | <ApplicationStage> | Comment   | <ApplicantType> | shares   | isshare order |

# ${ProductType:["IPF"]}
# ${ApplicationStage:["Reconsideration"]}
# ${ApplicantType:["indiv"]}
#UT-31_CAS-186310
#FeatureID-ACAUTOCAS-11313
  Scenario Outline: ACAUTOCAS-14831: Verify CAM Report on Share Order screen at <ApplicationStage> of <ProductType>
    And user picks an application of "<ProductType>" product type as "<ApplicantType>" applicant at stage "<ApplicationStage>" for category "<Category>" with key "<Key>"
    And user moves an application from "Reconsideration" Stage to "Share Order" Stage
    And user opens an application of "Share Order" stage present in context from application grid
    When user is on Share Order tab
    Then CAM report button should be visible instead of link in More Action
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Category | Key           |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | isshare order |


# ${ProductType:["IPF"]}
# ${ApplicationStage:["Reconsideration"]}
# ${ApplicantType:["indiv"]}
#ST-62_CAS-186310
#FeatureID-ACAUTOCAS-11313
  Scenario Outline: ACAUTOCAS-14832: Approve Decision on Share Order Stage at <ApplicationStage> of <ProductType>
    And user picks an application of "<ProductType>" product type as "<ApplicantType>" applicant at stage "<ApplicationStage>" for category "<Category>" with key "<Key>"
    And user moves an application from "Reconsideration" Stage to "Share Order" Stage
    And user opens an application of "Share Order" stage present in context from application grid
    When user is on Share Order tab
    And user selects decision as "Approve" in Decision Details Section
    And user reads data from the excel file "<ShareOrderWB>" under sheet "<ShareOrder_ShareOrder>" and row <ShareOrder_ShareOrder_rowNum>
    And user select reason in Decision Details Section
    And user clicks on save button after filling decision details section
    Then Decision Details should get saved successfully
    Examples:
      | ProductType   | ApplicationStage   | ShareOrderWB    | ShareOrder_ShareOrder | ShareOrder_ShareOrder_rowNum | ApplicantType   | Category | Key           |
      | <ProductType> | <ApplicationStage> | shareorder.xlsx | share_order           | 4                            | <ApplicantType> | shares   | isshare order |


# ${ProductType:["IPF"]}
# ${ApplicationStage:["Reconsideration"]}
# ${ApplicantType:["indiv"]}
#PMG-05_CAS-186310
#FeatureID-ACAUTOCAS-11313
  @26MarFix
  Scenario Outline: ACAUTOCAS-14833: Validate Column <Fields> are present in Investor Details Grid at <ApplicationStage> for a <ProductType> application
    And user picks an application of "<ProductType>" product type as "<ApplicantType>" applicant at stage "<ApplicationStage>" for category "<Category>" with key "<Key>"
    And user moves an application from "Reconsideration" Stage to "Share Order" Stage
    And user opens an application of "Share Order" stage present in context from application grid
    When user is on Share Order tab
    Then "<Fields>" present on the Investor Details Grid in view mode on Share Order Stage
    Examples:
      | ProductType   | ApplicationStage   | Fields                | ApplicantType   | Category | Key           |
      | <ProductType> | <ApplicationStage> | Unique ID             | <ApplicantType> | shares   | isshare order |
      | <ProductType> | <ApplicationStage> | Platform              | <ApplicantType> | shares   | isshare order |
      | <ProductType> | <ApplicationStage> | Client ID             | <ApplicantType> | shares   | isshare order |
      | <ProductType> | <ApplicationStage> | Company Name          | <ApplicantType> | shares   | isshare order |
      | <ProductType> | <ApplicationStage> | Order Type            | <ApplicantType> | shares   | isshare order |
      | <ProductType> | <ApplicationStage> | Requested Share Price | <ApplicantType> | shares   | isshare order |
      | <ProductType> | <ApplicationStage> | Max. Original Cost    | <ApplicantType> | shares   | isshare order |

# ${ProductType:["IPF"]}
# ${ApplicationStage:["Reconsideration"]}
# ${ApplicantType:["indiv"]}
#ST-19_CAS-186310
#FeatureID-ACAUTOCAS-11313
  Scenario Outline: ACAUTOCAS-14834:  Validating communication history reports present on Share Order Stage
    And user picks an application of "<ProductType>" product type as "<ApplicantType>" applicant at stage "<ApplicationStage>" for category "<Category>" with key "<Key>"
    And user moves an application from "Reconsideration" Stage to "Share Order" Stage
    And user opens an application of "Share Order" stage present in context from application grid
    When user opens communication history section on Share Order Stage
    Then user should be able to view available past reports on Share Order Stage
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Category | Key           |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | isshare order |

# ${ProductType:["IPF"]}
# ${ApplicationStage:["Reconsideration"]}
# ${ApplicantType:["indiv"]}
#ST-20_CAS-186310
#FeatureID-ACAUTOCAS-11313
  Scenario Outline: ACAUTOCAS-14835:  Validating add communication details section present on Share Order Stage
    And user picks an application of "<ProductType>" product type as "<ApplicantType>" applicant at stage "<ApplicationStage>" for category "<Category>" with key "<Key>"
    And user moves an application from "Reconsideration" Stage to "Share Order" Stage
    And user opens an application of "Share Order" stage present in context from application grid
    And user opens communication history section on Share Order Stage
    When user opens add communication details on Share Order Stage
    Then user should be able to view the communication details section
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Category | Key           |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | isshare order |

# ${ProductType:["IPF"]}
# ${ApplicationStage:["Reconsideration"]}
# ${ApplicantType:["indiv"]}
#UT-31_CAS-186310
#FeatureID-ACAUTOCAS-11313
  Scenario Outline: ACAUTOCAS-14836:  Verify CAM Report at <ApplicationStage> of <ProductType>
    And user picks an application of "<ProductType>" product type as "<ApplicantType>" applicant at stage "<ApplicationStage>" for category "<Category>" with key "<Key>"
    And user moves an application from "Reconsideration" Stage to "Share Order" Stage
    And user opens an application of "Share Order" stage present in context from application grid
    And user is on Share Order tab
    When User clicks CAM Report option
    And user reads data from the excel file "<ShareOrderWB>" under sheet "<ShareOrder_ShareOrder>" and row <ShareOrder_ShareOrder_rowNum>
    Then CAM report is visible
    Examples:
      | ProductType   | ApplicationStage   | ShareOrderWB    | ShareOrder_ShareOrder | ShareOrder_ShareOrder_rowNum | ApplicantType   | Category | Key           |
      | <ProductType> | <ApplicationStage> | shareorder.xlsx | share_order           | 0                            | <ApplicantType> | shares   | isshare order |

# ${ProductType:["IPF"]}
# ${ApplicationStage:["Reconsideration"]}
# ${ApplicantType:["indiv"]}
#ST-20_CAS-186310
#FeatureID-ACAUTOCAS-11313
  Scenario Outline: ACAUTOCAS-14837:  Share Order page <FieldName> label validation for customer communication history Details at <ApplicationStage> for a <ProductType> application
    And user picks an application of "<ProductType>" product type as "<ApplicantType>" applicant at stage "<ApplicationStage>" for category "<Category>" with key "<Key>"
    And user moves an application from "Reconsideration" Stage to "Share Order" Stage
    And user opens an application of "Share Order" stage present in context from application grid
    When user click on the customer communication history section
    Then user should be able to view the available "<FieldName>" communication details headers
    Examples:
      | FieldName            | ProductType   | ApplicationStage   | ApplicantType   | Category | Key           |
      | Reports              | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | isshare order |
      | Attachments          | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | isshare order |
      | Mode                 | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | isshare order |
      | Contacted By         | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | isshare order |
      | Added By             | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | isshare order |
      | Added On             | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | isshare order |
      | Description/Messages | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | isshare order |
      | Action               | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | isshare order |
      | History              | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | isshare order |

# ${ProductType:["IPF"]}
# ${ApplicationStage:["Reconsideration"]}
# ${ApplicantType:["indiv"]}
#UT-34_CAS-186310
#FeatureID-ACAUTOCAS-11313

  Scenario Outline: ACAUTOCAS-14838:  Validate Workflow history record modal window at <ApplicationStage> of <ProductType>
    And user picks an application of "<ProductType>" product type as "<ApplicantType>" applicant at stage "<ApplicationStage>" for category "<Category>" with key "<Key>"
    And user moves an application from "Reconsideration" Stage to "Share Order" Stage
    And user opens an application of "Share Order" stage present in context from application grid
    And user is on Share Order tab
    When user clicks on More Actions button
    And user clicks on workflow history record
    Then Workflow history record modal window should be opened and history record should be visible
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Category | Key           |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | isshare order |

#${ProductType:["IPF"]}
# ${ApplicationStage:["Reconsideration"]}
# ${ApplicantType:["indiv"]}
#FeatureID-ACAUTOCAS-11313
#UT-CAS-186310-35

  Scenario Outline: ACAUTOCAS-14839:  Validate Hold application window at <ApplicationStage> of <ProductType>
    And user picks an application of "<ProductType>" product type as "<ApplicantType>" applicant at stage "<ApplicationStage>" for category "<Category>" with key "<Key>"
    And user moves an application from "Reconsideration" Stage to "Share Order" Stage
    And user opens an application of "Share Order" stage present in context from application grid
    And user is on Share Order tab
    When user clicks on More Actions button
    And user clicks on Hold application window
    Then Hold application window must be opened successfully
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Category | Key           |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | isshare order |

#${ProductType:["IPF"]}
# ${ApplicationStage:["Reconsideration"]}
# ${ApplicantType:["indiv"]}
#FeatureID-ACAUTOCAS-11313
#UT-CAS-186310-40

  Scenario Outline: ACAUTOCAS-14840:  Validate Raise Query window at <ApplicationStage> of <ProductType>
    And user picks an application of "<ProductType>" product type as "<ApplicantType>" applicant at stage "<ApplicationStage>" for category "<Category>" with key "<Key>"
    And user moves an application from "Reconsideration" Stage to "Share Order" Stage
    And user opens an application of "Share Order" stage present in context from application grid
    And user is on Share Order tab
    When user clicks on More Actions button
    And user clicks on Raise Query window
    Then Raise Query window must be opened successfully
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Category | Key           |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | isshare order |


#${ProductType:["IPF"]}
# ${ApplicationStage:["Reconsideration"]}
# ${ApplicantType:["indiv"]}
#FeatureID-ACAUTOCAS-11313

  Scenario Outline: ACAUTOCAS-14841: Verify Investor screen from Enquiry in view mode at <ApplicationStage> of <ProductType>
    And user picks an application of "<ProductType>" product type as "<ApplicantType>" applicant at stage "<ApplicationStage>" for category "<Category>" with key "<Key>"
    And user moves an application from "Reconsideration" Stage to "Share Order" Stage
    When user opens an "<ProductType>" application at "Share Order" stage from enquiry screen
    Then Application should be open in view mode of share order stage
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Category | Key           |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | isshare order |

#${ProductType:["IPF"]}
# ${ApplicationStage:["Reconsideration"]}
# ${ApplicantType:["indiv"]}
#FeatureID-ACAUTOCAS-11313
  Scenario Outline: ACAUTOCAS-14842: Validate All captured reason must be in same order at <ApplicationStage> of <ProductType>
    And user picks an application of "<ProductType>" product type as "<ApplicantType>" applicant at stage "<ApplicationStage>" for category "<Category>" with key "<Key>"
    And user moves an application from "Reconsideration" Stage to "Share Order" Stage
    And user opens an application of "Share Order" stage present in context from application grid
    And user is on Share Order tab
    When user selects decision as "Approve" in Decision Details Section
    And user reads data from the excel file "<ShareOrderWB>" under sheet "<ShareOrder_ShareOrder>" and row <ShareOrder_ShareOrder_rowNum>
    And user fills multiple reasons in Decision Details Section
    And user clicks on save button on share order stage
    And user refresh the tab on share order stage
    Then All captured reason must be in same order

    Examples:
      | ProductType   | ApplicationStage   | ShareOrderWB    | ShareOrder_ShareOrder | ShareOrder_ShareOrder_rowNum | ApplicantType   | Category | Key           |
      | <ProductType> | <ApplicationStage> | shareorder.xlsx | share_order           | 5                            | <ApplicantType> | shares   | isshare order |


#${ProductType:["IPF"]}
# ${ApplicationStage:["Reconsideration"]}
# ${ApplicantType:["indiv"]}
#FeatureID-ACAUTOCAS-11313
  Scenario Outline: ACAUTOCAS-14843: Validating max length should be 255 characters in Decision Description at <ApplicationStage> of <ProductType>
    And user picks an application of "<ProductType>" product type as "<ApplicantType>" applicant at stage "<ApplicationStage>" for category "<Category>" with key "<Key>"
    And user moves an application from "Reconsideration" Stage to "Share Order" Stage
    And user opens an application of "Share Order" stage present in context from application grid
    And user is on Share Order tab
    When user selects decision as "Approve" in Decision Details Section
    And user reads data from the excel file "<ShareOrderWB>" under sheet "<ShareOrder_ShareOrder>" and row <ShareOrder_ShareOrder_rowNum>
    And user select reason in Decision Details Section
    And user fills decision description with maximum 255 characters
    Then system should not allow user to enter more than "255" characters in description section

    Examples:
      | ProductType   | ApplicationStage   | ShareOrderWB    | ShareOrder_ShareOrder | ShareOrder_ShareOrder_rowNum | ApplicantType   | Category | Key           |
      | <ProductType> | <ApplicationStage> | shareorder.xlsx | share_order           | 0                            | <ApplicantType> | shares   | isshare order |


#${ProductType:["IPF"]}
# ${ApplicationStage:["Reconsideration"]}
# ${ApplicantType:["indiv"]}
#FeatureID-ACAUTOCAS-11313
  Scenario Outline: ACAUTOCAS-14844: Validate clicking save button without filling comments at <ApplicationStage> of <ProductType>
    And user picks an application of "<ProductType>" product type as "<ApplicantType>" applicant at stage "<ApplicationStage>" for category "<Category>" with key "<Key>"
    And user moves an application from "Reconsideration" Stage to "Share Order" Stage
    And user opens an application of "Share Order" stage present in context from application grid
    And user is on Share Order tab
    When user selects decision as "Approve" in Decision Details Section
    And user reads data from the excel file "<ShareOrderWB>" under sheet "<ShareOrder_ShareOrder>" and row <ShareOrder_ShareOrder_rowNum>
    And user select reason in Decision Details Section
    And user clicks on save button without filling comments
    Then Decision Details should get saved successfully
    Examples:
      | ProductType   | ApplicationStage   | ShareOrderWB    | ShareOrder_ShareOrder | ShareOrder_ShareOrder_rowNum | ApplicantType   | Category | Key           |
      | <ProductType> | <ApplicationStage> | shareorder.xlsx | share_order           | 4                            | <ApplicantType> | shares   | isshare order |


#${ProductType:["IPF"]}
# ${ApplicationStage:["Reconsideration"]}
# ${ApplicantType:["indiv"]}
#FeatureID-ACAUTOCAS-11313
  @26MarFix
  Scenario Outline: ACAUTOCAS-14845: In selection of <FieldName> as <var> <DependentFieldName> value will populate at <ApplicationStage> of <ProductType>
    And user picks an application of "<ProductType>" product type as "<ApplicantType>" applicant at stage "<ApplicationStage>" for category "<Category>" with key "<Key>"
    And user moves an application from "Reconsideration" Stage to "Share Order" Stage
    And user opens an application of "Share Order" stage present in context from application grid
    And user is on Share Order tab
    When user selects decision as "Approve" in Decision Details Section
    And user reads data from the excel file "<ShareOrderWB>" under sheet "<ShareOrder_ShareOrder>" and row <ShareOrder_ShareOrder_rowNum>
    And user select reason in Decision Details Section
    Then "<DependentFieldName>" must be auto populated
    Examples:
      | ProductType   | ApplicationStage   | FieldName | var                  | DependentFieldName | ShareOrderWB    | ShareOrder_ShareOrder | ShareOrder_ShareOrder_rowNum | ApplicantType   | Category | Key           |
      | <ProductType> | <ApplicationStage> | Reason    | Approve Registration | Description        | shareorder.xlsx | share_order           | 4                            | <ApplicantType> | shares   | isshare order |

#${ProductType:["IPF"]}
# ${ApplicationStage:["Reconsideration"]}
# ${ApplicantType:["indiv"]}
#FeatureID-ACAUTOCAS-11313

  Scenario Outline: ACAUTOCAS-14846: Validate radio buttons in decision details at <ApplicationStage> of <ProductType>
    And user picks an application of "<ProductType>" product type as "<ApplicantType>" applicant at stage "<ApplicationStage>" for category "<Category>" with key "<Key>"
    And user moves an application from "Reconsideration" Stage to "Share Order" Stage
    And user opens an application of "Share Order" stage present in context from application grid
    When user is on Share Order tab
    Then user should be able to see "<decision>" decision details radio buttons
    Examples:
      | ProductType   | ApplicationStage   | decision | ApplicantType   | Category | Key           |
      | <ProductType> | <ApplicationStage> | Approve  | <ApplicantType> | shares   | isshare order |
      | <ProductType> | <ApplicationStage> | Reject   | <ApplicantType> | shares   | isshare order |

#${ProductType:["IPF"]}
# ${ApplicationStage:["Reconsideration"]}
# ${ApplicantType:["indiv"]}
#FeatureID-ACAUTOCAS-11313

  Scenario Outline: ACAUTOCAS-14847: Validate <OrderType> order sorting for <ColumnName> in investor details at <ApplicationStage> of <ProductType>
    And user picks an application of "<ProductType>" product type as "<ApplicantType>" applicant at stage "<ApplicationStage>" for category "<Category>" with key "<Key>"
    And user moves an application from "Reconsideration" Stage to "Share Order" Stage
    And user opens an application of "Share Order" stage present in context from application grid
    And user is on Share Order tab
    When user sort "<ColumnName>" column in "<OrderType>" order on share order
    Then investor details table should be sort in "<OrderType>" order basis of "<ColumnName>"
    Examples:
      | ProductType   | ApplicationStage   | ColumnName   | OrderType  | ApplicantType   | Category | Key           |
      | <ProductType> | <ApplicationStage> | Unique ID    | Ascending  | <ApplicantType> | shares   | isshare order |
      | <ProductType> | <ApplicationStage> | Company Name | Ascending  | <ApplicantType> | shares   | isshare order |
      | <ProductType> | <ApplicationStage> | Unique ID    | Descending | <ApplicantType> | shares   | isshare order |
      | <ProductType> | <ApplicationStage> | Company Name | Descending | <ApplicantType> | shares   | isshare order |

#${ProductType:["IPF"]}
# ${ApplicationStage:["Reconsideration"]}
# ${ApplicantType:["indiv"]}
#FeatureID-ACAUTOCAS-11313

  Scenario Outline: ACAUTOCAS-14848:  Share Order page <FieldName> label validation for Current Stage Details at <ApplicationStage> for a <ProductType> application
    And user picks an application of "<ProductType>" product type as "<ApplicantType>" applicant at stage "<ApplicationStage>" for category "<Category>" with key "<Key>"
    And user moves an application from "Reconsideration" Stage to "Share Order" Stage
    When user opens an application of "Share Order" stage present in context from application grid
    And user reads data from the excel file "<ShareOrderWB>" under sheet "<ShareOrder_ShareOrder>" and row <ShareOrder_ShareOrder_rowNum>
    Then user should be able to see current stage details fields with label as in workbook
    Examples:
      | FieldName          | ProductType   | ApplicationStage   | ShareOrderWB    | ShareOrder_ShareOrder | ShareOrder_ShareOrder_rowNum | ApplicantType   | Category | Key           |
      | share order        | <ProductType> | <ApplicationStage> | shareorder.xlsx | share_order           | 0                            | <ApplicantType> | shares   | isshare order |
      | Branch             | <ProductType> | <ApplicationStage> | shareorder.xlsx | share_order           | 1                            | <ApplicantType> | shares   | isshare order |
      | Application Number | <ProductType> | <ApplicationStage> | shareorder.xlsx | share_order           | 2                            | <ApplicantType> | shares   | isshare order |
      | Primary Applicant  | <ProductType> | <ApplicationStage> | shareorder.xlsx | share_order           | 3                            | <ApplicantType> | shares   | isshare order |
      | Product            | <ProductType> | <ApplicationStage> | shareorder.xlsx | share_order           | 4                            | <ApplicantType> | shares   | isshare order |
      | Scheme             | <ProductType> | <ApplicationStage> | shareorder.xlsx | share_order           | 5                            | <ApplicantType> | shares   | isshare order |
      | Tenure             | <ProductType> | <ApplicationStage> | shareorder.xlsx | share_order           | 6                            | <ApplicantType> | shares   | isshare order |


#${ProductType:["IPF"]}
# ${ApplicationStage:["Reconsideration"]}
# ${ApplicantType:["indiv"]}
#FeatureID-ACAUTOCAS-11313

  Scenario Outline: ACAUTOCAS-14849: <StageName> stage validation on share order stage details section
    And user picks an application of "<ProductType>" product type as "<ApplicantType>" applicant at stage "<ApplicationStage>" for category "<Category>" with key "<Key>"
    And user moves an application from "Reconsideration" Stage to "Share Order" Stage
    And user opens an application of "Share Order" stage present in context from application grid
    When user open the share order stage section
    Then "<StageName>" should be present in Workflow on share order stage
    Examples:
      | StageName        | ProductType   | ApplicationStage   | ApplicantType   | Category | Key           |
      | Sourcing         | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | isshare order |
      | RCU INITIATION   | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | isshare order |
      | FII              | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | isshare order |
      | CREDIT APPROVAL  | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | isshare order |
      | PURCHASE PROMISE | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | isshare order |
      | RECONSIDERATION  | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | isshare order |


#${ProductType:["IPF"]}
# ${ApplicationStage:["Reconsideration"]}
# ${ApplicantType:["indiv"]}
#FeatureID-ACAUTOCAS-11313
  Scenario Outline: ACAUTOCAS-14850:  Validating Schedule appointment <fieldName> present on Share Order
    And user picks an application of "<ProductType>" product type as "<ApplicantType>" applicant at stage "<ApplicationStage>" for category "<Category>" with key "<Key>"
    And user moves an application from "Reconsideration" Stage to "Share Order" Stage
    And user opens an application of "Share Order" stage present in context from application grid
    And user opens communication history section
    When user opens schedule an appointment section
    Then user should be able to view the available "<fieldName>" schedule appointment details
    Examples:
      | ProductType   | ApplicationStage   | fieldName        | ApplicantType   | Category | Key           |
      | <ProductType> | <ApplicationStage> | Date             | <ApplicantType> | shares   | isshare order |
      | <ProductType> | <ApplicationStage> | Time             | <ApplicantType> | shares   | isshare order |
      | <ProductType> | <ApplicationStage> | Party Role       | <ApplicantType> | shares   | isshare order |
      | <ProductType> | <ApplicationStage> | Party Contacted  | <ApplicantType> | shares   | isshare order |
      | <ProductType> | <ApplicationStage> | Added By         | <ApplicantType> | shares   | isshare order |
      | <ProductType> | <ApplicationStage> | Submit           | <ApplicantType> | shares   | isshare order |
      | <ProductType> | <ApplicationStage> | Cancel           | <ApplicantType> | shares   | isshare order |
      | <ProductType> | <ApplicationStage> | Meeting Location | <ApplicantType> | shares   | isshare order |

#FeatureID-ACAUTOCAS-11313
  Scenario Outline: ACAUTOCAS-14851: Verify placeholder for Share Order screen
    When user logged in "Common Masters" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user navigates to Dynamic Form Screen Mapping
    And user reads data from the excel file "<ShareOrderWB>" under sheet "<ShareOrder_ShareOrder>" and row <ShareOrder_ShareOrder_rowNum>
    And user search by screenName on Dynamic Form Screen Mapping
    And user clicks on edit button on Dynamic Form Screen Mapping
    Then Placeholder should be available for Share Order screen
    Examples:
      | ShareOrderWB    | ShareOrder_ShareOrder | ShareOrder_ShareOrder_rowNum |
      | shareorder.xlsx | share_order           | 0                            |

#${ProductType:["IPF"]}
# ${ApplicationStage:["Reconsideration"]}
# ${ApplicantType:["indiv"]}
#FeatureID-ACAUTOCAS-11313
  Scenario Outline: ACAUTOCAS-14852: Verify Authority for Share Order stage with user having authority
    And user picks an application of "<ProductType>" product type as "<ApplicantType>" applicant at stage "<ApplicationStage>" for category "<Category>" with key "<Key>"
    And user moves an application from "Reconsideration" Stage to "Share Order" Stage
    When user opens an application of "Share Order" stage present in context from application grid
    Then Share Order tab should be visible
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Category | Key           |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | isshare order |

#Out-Of-Scope
#${ProductType:["IPF"]}
# ${ApplicationStage:["Reconsideration"]}
# ${ApplicantType:["indiv"]}
##FeatureID-ACAUTOCAS-11313
#  Scenario Outline:Verify Authority for Share Order stage with user not having authority
#    When user opens an "<ProductType>" application at "<ApplicationStage>" stage from application grid
#    When user opens an application of "<ApplicationStage>" stage present in context from application grid
#    Then Share Order tab should not be visible
#    Examples:
#      | ProductType   | ApplicationStage   |
#      | <ProductType> | <ApplicationStage> |


#@Perishable
##${ProductType:["IPF"]}
##${ApplicationStage:["Reconsideration"]}
##${ApplicantType:["indiv"]}
##FeatureID-ACAUTOCAS-
#  Scenario Outline:Verify Investor details data from Purchase promise stage on Share Order Stage
#    And user picks an application of "<ProductType>" product type as "<ApplicantType>" applicant at stage "<ApplicationStage>" for category "<Category>" with key "<Key>"
#    And user moves an application from "Reconsideration" Stage to "Purchase Promise" Stage
#    And user opens an application of "Purchase Promise" stage present in context from application grid
#    When user add "Multiple" investor details by reading data from
#      | purchase_promise.xlsx | home | 0 |
#      | purchase_promise.xlsx | home | 1 |
#      | purchase_promise.xlsx | home | 8 |
#    And user clicks on save button on investor details
#    And user saves the investor details record in context
#    And user clicks on move to next stage
#    And user opens an application of "Share Order" stage present in context from application grid
#    And user is on Share Order tab
#    Then Data should be persistant on Share Order Stage
#    Examples:
#      | ProductType   | ApplicationStage   | ApplicantType   | Category | Key                |
#      | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | ispurchase promise |


  @Perishable
#${ProductType:["IPF"]}
#${ApplicationStage:["Reconsideration"]}
#${ApplicantType:["indiv"]}
#FeatureID-ACAUTOCAS-11313
  Scenario Outline: ACAUTOCAS-14853: Validate All Investor Details Record at <ApplicationStage> of <ProductType>
    And user picks an application of "<ProductType>" product type as "<ApplicantType>" applicant at stage "<ApplicationStage>" for category "<Category>" with key "<Key>"
    And user moves an application from "Reconsideration" Stage to "Purchase Promise" Stage
    And user opens an application of "Purchase Promise" stage present in context from application grid
    When user add "Multiple" investor details by reading data from
      | purchase_promise.xlsx | home | 0 |
      | purchase_promise.xlsx | home | 1 |
      | purchase_promise.xlsx | home | 8 |
    And user clicks on save button on investor details
    And user clicks on move to next stage
    And user opens an application of "Share Order" stage present in context from application grid
    And user is on Share Order tab
    Then Investor Details Grid should be present with all the added records
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Category | Key                |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | ispurchase promise |


# ${ProductType:["IPF"]}
# ${ApplicationStage:["Reconsideration"]}
# ${ApplicantType:["indiv"]}
#FeatureID-ACAUTOCAS-11313
  #PQM-04_CAS-186310

  Scenario Outline: ACAUTOCAS-14854:  Bulk Allocation for Share Order Application at <ApplicationStage> for <ProductType>
    And user picks an application of "<ProductType>" product type as "<ApplicantType>" applicant at stage "<ApplicationStage>" for category "<Category>" with key "<Key>"
    And user moves an application from "Reconsideration" Stage to "Share Order" Stage
    And user opens an application of "Share Order" stage present in context from application grid
    And user reads data from the excel file "<ShareOrderWB>" under sheet "<ShareOrder_ShareOrder>" and row <ShareOrder_ShareOrder_rowNum>
    And user open application manager
    And user navigate to Bulk Allocation
    And user reads data from the excel file "document.xlsx" under sheet "document_approval" and row <rowNum>
    And user search for an Multiple application where document deferral task is already initiated
    When user selects bulk allocation option
    And user reassigns the application to team with user as per application manager capabilities
    Then user should be able to reassign application through application manager
    Examples:
      | ProductType   | ApplicationStage   | ShareOrderWB    | ShareOrder_ShareOrder | ShareOrder_ShareOrder_rowNum | ApplicantType   | Category | Key           | rowNum |
      | <ProductType> | <ApplicationStage> | shareorder.xlsx | share_order           | 0                            | <ApplicantType> | shares   | isshare order | 30     |

# ${ProductType:["IPF"]}
# ${ApplicationStage:["Reconsideration"]}
# ${ApplicantType:["indiv"]}
#FeatureID-ACAUTOCAS-11313
  #UT-28_CAS-186310
  Scenario Outline: ACAUTOCAS-14855:  Verify Activity accordian option at <ApplicationStage> for <ProductType>
    And user picks an application of "<ProductType>" product type as "<ApplicantType>" applicant at stage "<ApplicationStage>" for category "<Category>" with key "<Key>"
    And user moves an application from "Reconsideration" Stage to "Share Order" Stage
    And user opens an application of "Share Order" stage present in context from application grid
    When User verifies Activity accordion for an application
    Then Activity accordion should be displayed on Share Order stage
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Category | Key           |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | isshare order |

# ${ProductType:["IPF"]}
# ${ApplicationStage:["Reconsideration"]}
# ${ApplicantType:["indiv"]}
#FeatureID-ACAUTOCAS-11313
  #UT-29_CAS-186310
  Scenario Outline: ACAUTOCAS-14856:  Verify Activity tab at <ApplicationStage> for <ProductType>
    And user picks an application of "<ProductType>" product type as "<ApplicantType>" applicant at stage "<ApplicationStage>" for category "<Category>" with key "<Key>"
    And user moves an application from "Reconsideration" Stage to "Share Order" Stage
    And user opens an application of "Share Order" stage present in context from application grid
    When User verifies Activity accordion for an application
    And User verifies the activities and their timestamp in Activity tab for an application
    Then Activity tab should be displayed having correct Activity details along with timestamp
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Category | Key           |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | isshare order |

# ${ProductType:["IPF"]}
# ${ApplicationStage:["Reconsideration"]}
# ${ApplicantType:["indiv"]}
#FeatureID-ACAUTOCAS-11313
  #UT-15_CAS-186310
  Scenario Outline: ACAUTOCAS-14857:  Verify application search through Application Manager at <ApplicationStage> for <ProductType>
    And user picks an application of "<ProductType>" product type as "<ApplicantType>" applicant at stage "<ApplicationStage>" for category "<Category>" with key "<Key>"
    And user moves an application from "Reconsideration" Stage to "Share Order" Stage
    When User searches for an application present on Share Order stage through Application Manager
    Then User should be able to search the application successfully through Application Manager
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Category | Key           |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | isshare order |

# ${ProductType:["IPF"]}
# ${ApplicationStage:["Reconsideration"]}
# ${ApplicantType:["indiv"]}
#FeatureID-ACAUTOCAS-11313
  #PMG-34_CAS-186310
  Scenario Outline: ACAUTOCAS-14858:  Verify application search in Application grid at <ApplicationStage> for <ProductType>
    And user picks an application of "<ProductType>" product type as "<ApplicantType>" applicant at stage "<ApplicationStage>" for category "<Category>" with key "<Key>"
    And user moves an application from "Reconsideration" Stage to "Share Order" Stage
    When user search for an application present of "<ProductType>" application at "Share Order" stage
    Then user is able to search application at "Share Order" stage from the application grid
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Category | Key           |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | isshare order |

# ${ProductType:["IPF"]}
# ${ApplicationStage:["Reconsideration"]}
# ${ApplicantType:["indiv"]}
#FeatureID-ACAUTOCAS-11313
  #PQM-05_CAS-186310
  Scenario Outline: ACAUTOCAS-14859:  Verify search application in Assigned Applications grid at <ApplicationStage> for <ProductType>
    And user picks an application of "<ProductType>" product type as "<ApplicantType>" applicant at stage "<ApplicationStage>" for category "<Category>" with key "<Key>"
    And user moves an application from "Reconsideration" Stage to "Share Order" Stage
    And user opens an application of "Share Order" stage present in context from application grid
    When user navigates to assigned application Grid
    Then User should be able to search the application in Application grid
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Category | Key           |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | isshare order |

# ${ProductType:["IPF"]}
# ${ApplicationStage:["Reconsideration"]}
# ${ApplicantType:["indiv"]}
#FeatureID-ACAUTOCAS-11313
  #PQM-05_CAS-186310
  Scenario Outline: ACAUTOCAS-14860:  Search Application through the stage name at <ApplicationStage> for <ProductType>
    And user picks an application of "<ProductType>" product type as "<ApplicantType>" applicant at stage "<ApplicationStage>" for category "<Category>" with key "<Key>"
    And user moves an application from "Reconsideration" Stage to "Share Order" Stage
    When user search for an application present of "<ProductType>" application at "Share Order" stage
    Then User search the application at "Share Order" stage through stage name
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Category | Key           |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | isshare order |

## ${ProductType:["IPF"]}
## ${ApplicationStage:["Reconsideration"]}
## ${ApplicantType:["indiv"]}
##FeatureID-ACAUTOCAS-11313
#  #ST-28_CAS-186310
#  Scenario Outline: Validate <Reports> in Communication History at <ApplicationStage> for <ProductType>
#    And user picks an application of "<ProductType>" product type as "<ApplicantType>" applicant at stage "<ApplicationStage>" for category "<Category>" with key "<Key>"
#    And user moves an application from "Reconsideration" Stage to "Share Order" Stage
#    And user opens an application of "Share Order" stage present in context from application grid
#    When user has opened communication history section on share order stage
#    And user check "<Reports>" latest versions in communication history
#    Then "<Reports>" of latest versions should be available
#    Examples:
#      | Reports         | ProductType   | ApplicationStage   | ApplicantType   | Category | Key           |
#      | CAM Report      | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | isshare order |
#      | Sanction Letter | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | isshare order |

#Already Covered in #PMG-14_CAS-186310
## ${ProductType:["IPF"]}
## ${ApplicationStage:["Reconsideration"]}
## ${ApplicantType:["indiv"]}
#  #ST-42_CAS-186310
#  #FeatureID-ACAUTOCAS-11313
#  Scenario Outline: Verify document in document tab at <ApplicationStage> for a <ProductType>
#    And user picks an application of "<ProductType>" product type as "<ApplicantType>" applicant at stage "<ApplicationStage>" for category "<Category>" with key "<Key>"
#    And user moves an application from "Reconsideration" Stage to "Share Order" Stage
#    And user opens an application of "Share Order" stage present in context from application grid
#    When user clicks on Document Tab on Share Order Stage
#    Then Pre approval documents are present in document tab
#    Examples:
#      | ProductType   | ApplicationStage   | ApplicantType   | Category | Key           |
#      | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | isshare order |

# ${ProductType:["IPF"]}
# ${ApplicationStage:["Reconsideration"]}
# ${ApplicantType:["indiv"]}
  #ST-64_CAS-186310
  #FeatureID-ACAUTOCAS-11313
  Scenario Outline: ACAUTOCAS-14861:  Verify reasons are maintained in reason master at <ApplicationStage> for <ProductType>
    And user picks an application of "<ProductType>" product type as "<ApplicantType>" applicant at stage "<ApplicationStage>" for category "<Category>" with key "<Key>"
    And user moves an application from "Reconsideration" Stage to "Share Order" Stage
    And user opens an application of "Share Order" stage present in context from application grid
    When user navigates to reason master
    And user searches "Share Order" in reason master
    Then resons should be maintained for reason master
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Category | Key           |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | isshare order |

# ${ProductType:["IPF"]}
# ${ApplicationStage:["Reconsideration"]}
# ${ApplicantType:["indiv"]}
  #ST-81_CAS-186310
  #FeatureID-ACAUTOCAS-11313
  @Perishable
  Scenario Outline: ACAUTOCAS-14862:  Verify user can reassign the application at <ApplicationStage> for a <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user click on exit button
    And User fills the details of application exit prompt
    And user reads data from the excel file "<ShareOrderWB>" under sheet "<ShareOrder_ShareOrder>" and row <ShareOrder_ShareOrder_rowNum>
    When user reassign the application to another user
    And user should be successfully reassigned to another user
    Then application should be assigned to another user
    Examples:
      | ProductType   | ApplicationStage   | ShareOrderWB    | ShareOrder_ShareOrder | ShareOrder_ShareOrder_rowNum | ApplicantType   | Category | Key           |
      | <ProductType> | <ApplicationStage> | shareorder.xlsx | share_order           | 0                            | <ApplicantType> | shares   | isshare order |


#  @Perishable
## ${ProductType:["IPF"]}
## ${ApplicationStage:["Reconsideration"]}
## ${ApplicantType:["indiv"]}
#  #ST-82_CAS-186310
#  #FeatureID-ACAUTOCAS-11313
#  Scenario Outline: Verify User can hold the application at <ApplicationStage> for <ProductType>
#    And user picks an application of "<ProductType>" product type as "<ApplicantType>" applicant at stage "<ApplicationStage>" for category "<Category>" with key "<Key>"
#    And user moves an application from "Reconsideration" Stage to "Share Order" Stage
#    And user opens an application of "Share Order" stage present in context from application grid
#    And user reads data from the excel file "<HoldApplicationWB>" under sheet "<HoldApplication>" and row <HoldApplication_rownum>
#    When user holds the application
#    And user searches application in enquiry screen
#    Then user should be able to see the application details
#    Examples:
#      | ProductType   | ApplicationStage   | HoldApplicationWB    | HoldApplication | HoldApplication_rownum | ApplicantType   | Category | Key           |
#      | <ProductType> | <ApplicationStage> | HoldApplication.xlsx | HoldApplication | 0                      | <ApplicantType> | shares   | isshare order |

# ${ProductType:["IPF"]}
# ${ApplicationStage:["Reconsideration"]}
# ${ApplicantType:["indiv"]}
  #ST-83_CAS-186310
  #FeatureID-ACAUTOCAS-11313
  Scenario Outline: ACAUTOCAS-14863:  Verify User can raise query for the application at <ApplicationStage> for <ProductType>
    And user picks an application of "<ProductType>" product type as "<ApplicantType>" applicant at stage "<ApplicationStage>" for category "<Category>" with key "<Key>"
    And user moves an application from "Reconsideration" Stage to "Share Order" Stage
    And user opens an application of "Share Order" stage present in context from application grid
    And user reads data from the excel file "<MoreActionsWB>" under sheet "<MoreActions_home>" and row <MoreActions_home_rowNum>
    And user navigates to raise query
    When user raises a query
    Then user should be able to raise Query for selected application
    Examples:
      | ApplicationStage   | MoreActionsWB     | MoreActions_home | MoreActions_home_rowNum | ProductType   | ApplicantType   | Category | Key           |
      | <ApplicationStage> | more_actions.xlsx | raise_query      | 0                       | <ProductType> | <ApplicantType> | shares   | isshare order |

# ${ProductType:["IPF"]}
# ${ApplicationStage:["Reconsideration"]}
# ${ApplicantType:["indiv"]}
  #ST-82_CAS-186310
  #FeatureID-ACAUTOCAS-11313
  Scenario Outline: ACAUTOCAS-14864:  Check exit feature at <ApplicationStage> for <ProductType>
    And user picks an application of "<ProductType>" product type as "<ApplicantType>" applicant at stage "<ApplicationStage>" for category "<Category>" with key "<Key>"
    And user moves an application from "Reconsideration" Stage to "Share Order" Stage
    And user opens an application of "Share Order" stage present in context from application grid
    And user reads data from the excel file "<ShareDetailsWB>" under sheet "<ShareDetails_sharePurchase>" and row <ShareDetails_sharePurchase_rowNum>
    When user click on exit button
    And User fills the details of application exit prompt
    And user open the application grid
    And User searches for an application present of "<ProductType>" application at "Share Order" stage
    Then user is able to search application at "Share Order" stage from application grid
    Examples:
      | ProductType   | ApplicationStage   | ShareDetailsWB     | ShareDetails_sharePurchase | ShareDetails_sharePurchase_rowNum | ApplicantType   | Category | Key           |
      | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_purchase             | 0                                 | <ApplicantType> | shares   | isshare order |

# ${ProductType:["IPF"]}
# ${ApplicationStage:["Reconsideration"]}
# ${ApplicantType:["indiv"]}
  #PQM-06_CAS-186310
  #FeatureID-ACAUTOCAS-11313
  Scenario Outline: ACAUTOCAS-14865:  Verify search application in Pool Applications grid at <ApplicationStage> for <ProductType>
    And user picks an application of "<ProductType>" product type as "<ApplicantType>" applicant at stage "<ApplicationStage>" for category "<Category>" with key "<Key>"
    And user moves an application from "Reconsideration" Stage to "Share Order" Stage
    And user opens an application of "Share Order" stage present in context from application grid
    And user throw the application to the pool application grid
    When user search for an application present of "<ProductType>" application at "<ApplicationStage>" stage
    And user search application in the pool application grid
    Then user should be able to search the application in the Application grid
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Category | Key           |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | isshare order |

  @Perishable
# ${ProductType:["IPF"]}
# ${ApplicationStage:["Reconsideration"]}
# ${ApplicantType:["indiv"]}
  #UT-48_CAS-186310
  #FeatureID-ACAUTOCAS-11313
  Scenario Outline: ACAUTOCAS-14866:  cancel application from cancelled application screen for <ApplicationStage> of <ProductType>
    And user picks an application of "<ProductType>" product type as "<ApplicantType>" applicant at stage "<ApplicationStage>" for category "<Category>" with key "<Key>"
    And user moves an application from "Reconsideration" Stage to "Share Order" Stage
    And user opens an application of "Share Order" stage present in context from application grid
    And user reads data from the excel file "cancel_application.xlsx" under sheet "cancel_application" and row 33
    And user cancel the application present in context of "Share Order" stage
    And user opens an application from cancelled application grid
    When user confirms cancellation from review cancelled application screen
    Then application is cancelled successfully
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Category | Key           |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | isshare order |

# ${ProductType:["IPF"]}
# ${ApplicationStage:["Reconsideration"]}
# ${ApplicantType:["indiv"]}
  #UT-45_CAS-186310
  #FeatureID-ACAUTOCAS-11313
  Scenario Outline: ACAUTOCAS-14867: validate search in cancel application for <ApplicationStage> of <ProductType>
    And user picks an application of "<ProductType>" product type as "<ApplicantType>" applicant at stage "<ApplicationStage>" for category "<Category>" with key "<Key>"
    And user moves an application from "Reconsideration" Stage to "Share Order" Stage
    And user opens an application of "Share Order" stage present in context from application grid
    When user search application on cancel application screen
    Then Application must be search successfully on cancel application screen
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Category | Key           |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | isshare order |

# ${ProductType:["IPF"]}
# ${ApplicationStage:["Reconsideration"]}
# ${ApplicantType:["indiv"]}
  #UT-46_CAS-186310
  #FeatureID-ACAUTOCAS-11313
  Scenario Outline: ACAUTOCAS-14868: validate open application in cancel application screen for <ApplicationStage> of <ProductType>
    And user picks an application of "<ProductType>" product type as "<ApplicantType>" applicant at stage "<ApplicationStage>" for category "<Category>" with key "<Key>"
    And user moves an application from "Reconsideration" Stage to "Share Order" Stage
    And user opens an application of "Share Order" stage present in context from application grid
    And user search application on cancel application screen
    When user clicks on application ID hyperlink of "Share Order" stage on cancel application screen
    Then Application must be opened successfully on cancel application screen
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Category | Key           |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | isshare order |

  @Perishable
# ${ProductType:["IPF"]}
# ${ApplicationStage:["Reconsideration"]}
# ${ApplicantType:["indiv"]}
  #PQM-07_CAS-186310
  #FeatureID-ACAUTOCAS-11313
  Scenario Outline: ACAUTOCAS-14869:  Verify search application in Hold Applications grid at <ApplicationStage> for <ProductType>
    And user picks an application of "<ProductType>" product type as "<ApplicantType>" applicant at stage "<ApplicationStage>" for category "<Category>" with key "<Key>"
    And user moves an application from "Reconsideration" Stage to "Share Order" Stage
    And user opens an application of "Share Order" stage present in context from application grid
    And user throw the application to the hold application grid
    And user switches to the hold grid for application search
    When user search for an application present of "<ProductType>" application at "Share Order" stage
    And user search application in the hold application grid
    Then user verifies application in Hold application grid
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Category | Key           |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | isshare order |

# ${ProductType:["IPF"]}
# ${ApplicationStage:["Reconsideration"]}
# ${ApplicantType:["indiv"]}
  #FeatureID-ACAUTOCAS-11313
  Scenario Outline: ACAUTOCAS-14870:  Audit Trail Should be Maintain at Share Order
    And user picks an application of "<ProductType>" product type as "<ApplicantType>" applicant at stage "<ApplicationStage>" for category "<Category>" with key "<Key>"
    And user moves an application from "Reconsideration" Stage to "Share Order" Stage
    And user opens an application of "Share Order" stage present in context from application grid
    And user is on Share Order tab
    And user opens activity section
    When user navigates to activity Tab
    Then Audit Trail should be maintained
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Category | Key           |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | isshare order |

# ${ProductType:["IPF"]}
# ${ApplicationStage:["Reconsideration"]}
# ${ApplicantType:["indiv"]}
  #FeatureID-ACAUTOCAS-11313
  Scenario Outline: ACAUTOCAS-14871:  In Activity Bar User Name should be present with User Id
    And user picks an application of "<ProductType>" product type as "<ApplicantType>" applicant at stage "<ApplicationStage>" for category "<Category>" with key "<Key>"
    And user moves an application from "Reconsideration" Stage to "Share Order" Stage
    And user opens an application of "Share Order" stage present in context from application grid
    When user opens activity section
    And user navigates to activity Tab
    Then User Name should present with User Id
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Category | Key           |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | isshare order |

# ${ProductType:["IPF"]}
# ${ApplicationStage:["Reconsideration"]}
# ${ApplicantType:["indiv"]}
  #FeatureID-ACAUTOCAS-11313
  Scenario Outline: ACAUTOCAS-14872:  Verify Workflow History at <ApplicationStage>
    And user picks an application of "<ProductType>" product type as "<ApplicantType>" applicant at stage "<ApplicationStage>" for category "<Category>" with key "<Key>"
    And user moves an application from "Reconsideration" Stage to "Share Order" Stage
    And user opens an application of "Share Order" stage present in context from application grid
    When user navigates to workflow
    Then Current as well as previous action record should be present
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Category | Key           |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | isshare order |

  @Perishable
  # ${ProductType:["IPF"]}
  # ${ApplicationStage:["Reconsideration"]}
  # ${ApplicantType:["indiv"]}
  #PMG-16_CAS-186310
  #FeatureID-ACAUTOCAS-11313
  Scenario Outline: ACAUTOCAS-14873: Validate investor details data at <ApplicationStage> for a <ProductType> application
    And user picks an application of "<ProductType>" product type as "<ApplicantType>" applicant at stage "<ApplicationStage>" for category "<Category>" with key "<Key>"
    And user moves an application from "Reconsideration" Stage to "Purchase Promise" Stage
    And user opens an application of "Purchase Promise" stage present in context from application grid
    And user reads data from the excel file "purchase_promise.xlsx" under sheet "home" and row 48
    And user open investor details tab
    And user add investor details
    And user clicks on save button on investor details
    And user clicks on unique ID hyperlink in investor details record grid
    And user stores investor details data in context
    And user clicks on move to next stage
    When user opens an application of "Share Order" stage present in context from application grid
    Then same investor details data should be present on share order stage
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Category | Key                |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | ispurchase promise |

# ${ProductType:["IPF"]}
# ${ApplicationStage:["Reconsideration"]}
# ${ApplicantType:["indiv"]}
#FeatureID-ACAUTOCAS-11313
Scenario Outline: ACAUTOCAS-18142:Validate multiple Duplicate other Reasons can be added on decision details section at <ApplicationStage> stage for <ProductType> product type
    And user picks an application of "<ProductType>" product type as "<ApplicantType>" applicant at stage "<ApplicationStage>" for category "<Category>" with key "<Key>"
    And user moves an application from "Reconsideration" Stage to "Share Order" Stage
    And user opens an application of "Share Order" stage present in context from application grid
    And user is on Share Order tab
    When user selects decision as "Approve" in Decision Details Section
    And user reads data from the excel file "<ShareOrderWB>" under sheet "<ShareOrder_ShareOrder>" and row <ShareOrder_ShareOrder_rowNum>
    And user fills multiple reasons in Decision Details Section
    Then user can add multiple duplicate other reasons successfully
    Examples:
      | ProductType | ApplicationStage | ShareOrderWB    | ShareOrder_ShareOrder | ShareOrder_ShareOrder_rowNum | ApplicantType | Category | Key           |
      | IPF         | Reconsideration  | shareorder.xlsx | share_order           | 12                           | indiv         | shares   | isshare order |


  @Perishable
  # ${ProductType:["IPF"]}
  # ${ApplicationStage:["Reconsideration"]}
  # ${ApplicantType:["indiv"]}
  #FeatureID-ACAUTOCAS-11313
  Scenario Outline: ACAUTOCAS-14786: Validate user can select decision after moving same application from previous stage
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    When user selects decision as "Reject" in Decision Details Section
    And user reads data from the excel file "<ShareOrderWB>" under sheet "<ShareOrder_ShareOrder>" and row <ShareOrder_ShareOrder_rowNum>
    And user select reason in Decision Details Section
    And user clicks on save button on share order stage
    And user clicks on move to next stage
    And user verify application at "Purchase Promise"
    And user opens an application of "Purchase Promise" stage present in context from application grid
    And user clicks on move to next stage
    And user verify application at "Share Order"
    And user opens an application of "Share Order" stage present in context from application grid
    Then user is able to select decision again on share order screen
    Examples:
      | ProductType | ApplicationStage | ShareOrderWB    | ShareOrder_ShareOrder | ShareOrder_ShareOrder_rowNum | ApplicantType | Category | Key           |
      | IPF         | Reconsideration  | shareorder.xlsx | share_order           | 7                            | indiv         | shares   | isshare order |
