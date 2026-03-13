@Epic-PF_Share_Base
@PQMStory
@AuthoredBy-deep.maurya
@TechReviewedBy-
@ImplementedBy-deep.maurya
@ReleaseIslamicM3
@Release

@Islamic
@Shares

@Test01Dec

# ${ProductType:["IPF"]}
# ${ApplicationStage:["Share Sell"]}
Feature:Screen Validation on Share Sell Stage

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user reads data from the excel file "shares.xlsx" under sheet "background" and row 0
    And user picks an application of "IPF" product type as "indiv" applicant at stage "reconsideration" for category "shares" with key "isshare sell"
    And user moves an application from "Reconsideration" Stage to "Share Sell" Stage

  #PQM-5_CAS-187621,
  #PMG-9_CAS-187621,
  #UT-26_CAS-187621,
  #ST-35-187621,
 #FeatureID-ACAUTOCAS-11317,CAS-187621
  Scenario Outline: ACAUTOCAS-15028: Validate seeded tabs on <ApplicationStage> for a <ProductType> application
    And user opens an application of "<ApplicationStage>" stage present in context from application grid
    When User check Share Sell & Documents Tab
    Then Both the "<Tabs>" should be present on screen
    Examples:
      | ProductType   | ApplicationStage   | Tabs         |
      | <ProductType> | <ApplicationStage> | Share Sell   |
      | <ProductType> | <ApplicationStage> | Document Tab |


  #PQM-6_CAS-187621,
  #PMG-15_CAS-187621,
  #UT-28_CAS-187621,
  #ST-47-187621,
 #FeatureID-ACAUTOCAS-11317,CAS-187621
  @IslamicSanity
  Scenario Outline: ACAUTOCAS-15029: Validate Investor Details grid on <ApplicationStage> for a <ProductType> application
    And user opens an application of "<ApplicationStage>" stage present in context from application grid
    When user clicks on Share Sell Tab
    Then Investor Details Grid should be present with execution details column on Share Sell tab
    Examples:
      | ProductType   | ApplicationStage   |
      | <ProductType> | <ApplicationStage> |



 #FeatureID-ACAUTOCAS-11317,CAS-187621
  Scenario Outline: ACAUTOCAS-15030: Validate Pre & post Approval documents on <ApplicationStage> for a <ProductType> application
    And user opens an application of "<ApplicationStage>" stage present in context from application grid
    And user clicks on Document Tab on Share Sell Stage
    And user selects post-approval documents are visible in the document tab on share sell
    When user add the documents on share sell
    Then Post Approval Document should successfully get added on share sell
    Examples:
      | ProductType   | ApplicationStage   |
      | <ProductType> | <ApplicationStage> |


 #FeatureID-ACAUTOCAS-11317,CAS-187621
  Scenario Outline: ACAUTOCAS-15029: Validate Investor Details grid on <ApplicationStage> for a <ProductType> application
    And user opens an application of "<ApplicationStage>" stage present in context from application grid
    When user clicks on Share Sell Tab
    Then Investor Details Grid should be present with execution details column on Share Sell tab
    Examples:
      | ProductType   | ApplicationStage   |
      | <ProductType> | <ApplicationStage> |


  #PQM-12_CAS-187621,
  #PMG-17_CAS-187621,
  #UT-37_CAS-187621,
  #ST-72-187621,
 #FeatureID-ACAUTOCAS-11317,CAS-187621
  Scenario Outline: ACAUTOCAS-15031: Validate investor details modal window at <ApplicationStage> for a <ProductType> application
    And user opens an application of "<ApplicationStage>" stage present in context from application grid
    When user click on Unique ID hyperlink of any record
    Then Investor Details Modal window should get opened on view mode
    Examples:
      | ProductType   | ApplicationStage   |
      | <ProductType> | <ApplicationStage> |

 #FeatureID-ACAUTOCAS-11317,CAS-187621
  Scenario Outline: ACAUTOCAS-15032: Validate closing of modal window at <ApplicationStage> for a <ProductType> application
    And user opens an application of "<ApplicationStage>" stage present in context from application grid
    And user click on Unique ID hyperlink of any record
    When user perform given "<Action>"
    Then "<Action>" perform successfully
    Examples:
      | ProductType   | ApplicationStage   | Action   |
      | <ProductType> | <ApplicationStage> | Maximize |
      | <ProductType> | <ApplicationStage> | Minimize |
      | <ProductType> | <ApplicationStage> | Close    |
      | <ProductType> | <ApplicationStage> | Cross    |

  #PQM-12_CAS-187621,
  #PMG-17_CAS-187621,
  #UT-38_CAS-187621,39_CAS-187621,40_CAS-187621
  #ST-72-187621,
 #FeatureID-ACAUTOCAS-11317,CAS-187621
  Scenario Outline: ACAUTOCAS-15033: Validate different sections in Investor Details modal window at <ApplicationStage> for a <ProductType> application
    And user opens an application of "<ApplicationStage>" stage present in context from application grid
    When user click on Unique ID hyperlink of any record
    Then "<Fields>" are visible in "<Mode>" mode
    Examples:
      | ProductType   | ApplicationStage   | Fields                | Mode         |
      | <ProductType> | <ApplicationStage> | Platform              | non editable |
      | <ProductType> | <ApplicationStage> | Client ID             | non editable |
      | <ProductType> | <ApplicationStage> | Exchange Market       | non editable |
      | <ProductType> | <ApplicationStage> | ADX Investor No       | non editable |
      | <ProductType> | <ApplicationStage> | Company Name          | non editable |
      | <ProductType> | <ApplicationStage> | Order Type            | non editable |
      | <ProductType> | <ApplicationStage> | Share Validity        | non editable |
      | <ProductType> | <ApplicationStage> | Requested Share Price | non editable |
      | <ProductType> | <ApplicationStage> | Requested Quantity    | non editable |
      | <ProductType> | <ApplicationStage> | Executed Quantity     | non editable |
      | <ProductType> | <ApplicationStage> | Executed Share Price  | non editable |
      | <ProductType> | <ApplicationStage> | VAT Amount            | non editable |
      | <ProductType> | <ApplicationStage> | Executed Amount       | non editable |

 #FeatureID-ACAUTOCAS-11317,CAS-187621
  Scenario Outline: ACAUTOCAS-15034: Validate dummy data in Executed Share Details section at <ApplicationStage> for a <ProductType> application
    And user opens an application of "<ApplicationStage>" stage present in context from application grid
    When user click on Unique ID hyperlink of any record
    Then "<Fields>" filled with dummy data in executed share details should be visible in view only mode
    Examples:
      | ProductType   | ApplicationStage   | Fields                |
      | <ProductType> | <ApplicationStage> | Platform              |
      | <ProductType> | <ApplicationStage> | Client ID             |
      | <ProductType> | <ApplicationStage> | Exchange Market       |
      | <ProductType> | <ApplicationStage> | ADX Investor No       |
      | <ProductType> | <ApplicationStage> | Company Name          |
      | <ProductType> | <ApplicationStage> | Order Type            |
      | <ProductType> | <ApplicationStage> | Share Validity        |
      | <ProductType> | <ApplicationStage> | Requested Share Price |
      | <ProductType> | <ApplicationStage> | Requested Quantity    |
      | <ProductType> | <ApplicationStage> | Executed Quantity     |
      | <ProductType> | <ApplicationStage> | Executed Share Price  |
      | <ProductType> | <ApplicationStage> | VAT Amount            |
      | <ProductType> | <ApplicationStage> | Executed Amount       |

 #FeatureID-ACAUTOCAS-11317,CAS-187621
  Scenario Outline: ACAUTOCAS-15035: Validate <Column> are present at <ApplicationStage> for a <ProductType> application
    And user opens an application of "<ApplicationStage>" stage present in context from application grid
    When user is on Investor Details grid
    Then "<Column>" present on the Investor Details Grid in view mode
    Examples:
      | ProductType   | ApplicationStage   | Column                |
      | <ProductType> | <ApplicationStage> | Unique ID             |
      | <ProductType> | <ApplicationStage> | Platform              |
      | <ProductType> | <ApplicationStage> | Client ID             |
      | <ProductType> | <ApplicationStage> | Company Name          |
      | <ProductType> | <ApplicationStage> | Order Type            |
      | <ProductType> | <ApplicationStage> | Requested Share Price |
      | <ProductType> | <ApplicationStage> | Executed Quantity     |
      | <ProductType> | <ApplicationStage> | Executed Share Price  |
      | <ProductType> | <ApplicationStage> | Max. Original Cost    |
      | <ProductType> | <ApplicationStage> | Executed Amount       |

 #FeatureID-ACAUTOCAS-11317,CAS-187621
  Scenario Outline: ACAUTOCAS-15036: Validate <Fields> are present above the investor grid <ApplicationStage> for a <ProductType> application
    And user opens an application of "<ApplicationStage>" stage present in context from application grid
    When user clicks on Share Sell Tab
    Then "<Fields>" should be present on above Investor details grid
    Examples:
      | ProductType   | ApplicationStage   | Fields                  |
      | <ProductType> | <ApplicationStage> | Total Max Original Cost |
      | <ProductType> | <ApplicationStage> | Total Executed Amount   |
      | <ProductType> | <ApplicationStage> | Fulfill Percentage      |

 #FeatureID-ACAUTOCAS-11317,CAS-187621
  Scenario Outline: ACAUTOCAS-15037: Validate application in Application Grid <ApplicationStage> for a <ProductType> application
    When user opens an application of "<ApplicationStage>" stage present in context from application grid
    Then Application will get open on Share Sell stage in view mode
    Examples:
      | ProductType   | ApplicationStage   |
      | <ProductType> | <ApplicationStage> |


  #PQM-7_CAS-187621,
  #PMG-42_CAS-187621,
  #UT-30_CAS-187621,
  #ST-56-187621,
 #FeatureID-ACAUTOCAS-11317,CAS-187621
  Scenario Outline: ACAUTOCAS-15038: Validate Release Share Button on  <ApplicationStage> for a <ProductType> application
    When user opens an application of "<ApplicationStage>" stage present in context from application grid
    Then Release Share Button should be visible
    Examples:
      | ProductType   | ApplicationStage   |
      | <ProductType> | <ApplicationStage> |

 #FeatureID-ACAUTOCAS-11317,CAS-187621
  Scenario Outline: ACAUTOCAS-15039: Validate enquiry details at <ApplicationStage> for a <ProductType> application
    And user opens an application of "<ApplicationStage>" stage present in context from application grid
    And user save application data "<Fields>"
    And user opens enquiry form
    When user search Application via Application Number from enquiry
    Then Application "<Fields>" should matched with searched application
    Examples:
      | ProductType   | ApplicationStage   | Fields         |
      | <ProductType> | <ApplicationStage> | Application ID |
      | <ProductType> | <ApplicationStage> | Full Name      |
      | <ProductType> | <ApplicationStage> | Stages         |

  #FeatureID-ACAUTOCAS-11317,CAS-187621
  Scenario Outline: ACAUTOCAS-15040: Open application from Enquiry for <ApplicationStage> for a <ProductType> application
    When user opens an "<ProductType>" application at "<ApplicationStage>" stage from enquiry screen
    Then Application will get open on Share Sell stage in view mode
    Examples:
      | ProductType   | ApplicationStage   | Fields         |
      | <ProductType> | <ApplicationStage> | Application ID |


   #FeatureID-ACAUTOCAS-11317,CAS-187621
  Scenario Outline: ACAUTOCAS-15041: Validating communication history reports present on Share Sell Stage
    And user opens an application of "<ApplicationStage>" stage present in context from application grid
    When user opens communication history section on Share Sell Stage
    Then user should be able to view available past reports on Share Sell Stage
    Examples:
      | ProductType   | ApplicationStage   |
      | <ProductType> | <ApplicationStage> |

  #FeatureID-ACAUTOCAS-11317,CAS-187621
  Scenario Outline: ACAUTOCAS-15042: Validate no. entries in investor grid should not be more than given records at<ApplicationStage> for a <ProductType> application
    And user opens an application of "<ApplicationStage>" stage present in context from application grid
    And user reads data from the excel file "<ShareSellWB>" under sheet "<ShareSell_home>" and row <ShareSell_home_rowNum>
    When user is on Investor Details grid
    Then Investor Details grid should contains entry as per records
    Examples:
      | ProductType   | ApplicationStage   | ShareSellWB     | ShareSell_home | ShareSell_home_rowNum |
      | <ProductType> | <ApplicationStage> | share_sell.xlsx | share_sell     | 0                     |


    #FeatureID-ACAUTOCAS-11317,CAS-187621
  Scenario Outline: ACAUTOCAS-15043: Validate summation of <Fields> at<ApplicationStage> for a <ProductType> application
    And user opens an application of "<ApplicationStage>" stage present in context from application grid
    And user is on Investor Details grid
    Then Summation should be visible as per the defined logic for "<Fields>"
    Examples:
      | ProductType   | ApplicationStage   | Fields             |
      | <ProductType> | <ApplicationStage> | Max. Original Cost |
      | <ProductType> | <ApplicationStage> | Executed Amount    |

    #FeatureID-ACAUTOCAS-11317,CAS-187621
  Scenario Outline: ACAUTOCAS-15044: Validate Fulfill Percentage at<ApplicationStage> for a <ProductType> application
    And user opens an application of "<ApplicationStage>" stage present in context from application grid
    When user is on Investor Details grid
    Then Percentage should be visible as per the defined logic
    Examples:
      | ProductType   | ApplicationStage   |
      | <ProductType> | <ApplicationStage> |

#FeatureID-ACAUTOCAS-11317,CAS-187621
  Scenario Outline: ACAUTOCAS-15045: Validate Application Summary Details at<ApplicationStage> for a <ProductType> application
    And user opens an application of "<ApplicationStage>" stage present in context from application grid
    When user click on Application Summary button
    Then Application Summary Tab should be open
    Examples:
      | ProductType   | ApplicationStage   |
      | <ProductType> | <ApplicationStage> |


 #FeatureID-ACAUTOCAS-11317,CAS-187621
  Scenario Outline: ACAUTOCAS-15046: Validate options in more actions on <ApplicationStage> for a <ProductType> application
    And user opens an application of "<ApplicationStage>" stage present in context from application grid
    And user is on Share Sell tab
    When User clicks on more Actions button
    Then More Action dropdown will open and user will see various "<Options>"
    Examples:
      | ProductType   | ApplicationStage   | Options                  |
      | <ProductType> | <ApplicationStage> | Hold Application         |
      | <ProductType> | <ApplicationStage> | Workflow History Records |
      | <ProductType> | <ApplicationStage> | Raise Query              |
      | <ProductType> | <ApplicationStage> | Generate Sanction Letter |
      | <ProductType> | <ApplicationStage> | Send Back                |
      | <ProductType> | <ApplicationStage> | Reject Application       |
      | <ProductType> | <ApplicationStage> | Cancel Application       |
      | <ProductType> | <ApplicationStage> | Re-Assign Application    |

 #FeatureID-ACAUTOCAS-11317,CAS-187621
  Scenario Outline: ACAUTOCAS-15047: Validate fields on <ApplicationStage> for a <ProductType> application
    And user opens an application of "<ApplicationStage>" stage present in context from application grid
    And user is on Share Sell tab
    Then user should be able to see "<Sections>" under share sell
    Examples:
      | ProductType   | ApplicationStage   | Sections                       |
      | <ProductType> | <ApplicationStage> | Application TAT                |
      | <ProductType> | <ApplicationStage> | Move to Next Stage             |
      | <ProductType> | <ApplicationStage> | More Actions                   |
      | <ProductType> | <ApplicationStage> | Exit                           |
      | <ProductType> | <ApplicationStage> | Workflow Icon                  |
      | <ProductType> | <ApplicationStage> | Customer Communication History |
      | <ProductType> | <ApplicationStage> | Activity                       |


  #PQM-9_CAS-187621,
  #PMG-20_CAS-187621,
  #UT-33_CAS-187621,
  #ST-75-187621,
 #FeatureID-ACAUTOCAS-11317,CAS-187621
  Scenario Outline: ACAUTOCAS-15048: Validate All required fields by selecting radio button required on <ApplicationStage> for a <ProductType> application
    And user opens an application of "<ApplicationStage>" stage present in context from application grid
    And user is on Share Sell tab
    When user selects Required
    Then Only Mandatory and Conditional Mandatory "<Fields>" will be displayed
    Examples:
      | ProductType   | ApplicationStage   | Fields      |
      | <ProductType> | <ApplicationStage> | Decision    |
      | <ProductType> | <ApplicationStage> | Reason      |
      | <ProductType> | <ApplicationStage> | Description |

 #FeatureID-ACAUTOCAS-11317,CAS-187621
  Scenario Outline: ACAUTOCAS-15030: Validate Pre & post Approval documents on <ApplicationStage> for a <ProductType> application
    And user opens an application of "<ApplicationStage>" stage present in context from application grid
    And user clicks on Document Tab on Share Sell Stage
    And user selects post-approval documents are visible in the document tab on share sell
    When user add the documents on share sell
    Then Post Approval Document should successfully get added on share sell
    Examples:
      | ProductType   | ApplicationStage   |
      | <ProductType> | <ApplicationStage> |

  #FeatureID-ACAUTOCAS-11317,CAS-187621
  Scenario Outline: ACAUTOCAS-15049:  Share Order page <FieldName> label validation for customer communication history Details at <ApplicationStage> for a <ProductType> application
    And user opens an application of "<ApplicationStage>" stage present in context from application grid
    When user click on the customer communication history section
    Then user should be able to see customer communication history details "<FieldName>" on Share Sell
    Examples:
      | FieldName            | ProductType   | ApplicationStage   |
      | Reports              | <ProductType> | <ApplicationStage> |
      | Attachments          | <ProductType> | <ApplicationStage> |
      | Mode                 | <ProductType> | <ApplicationStage> |
      | Contacted By         | <ProductType> | <ApplicationStage> |
      | Added By             | <ProductType> | <ApplicationStage> |
      | Added On             | <ProductType> | <ApplicationStage> |
      | Description/Messages | <ProductType> | <ApplicationStage> |
      | Action               | <ProductType> | <ApplicationStage> |
      | History              | <ProductType> | <ApplicationStage> |

 #FeatureID-ACAUTOCAS-11317,CAS-187621
  Scenario Outline: ACAUTOCAS-15050:  Validating Schedule appointment <fieldName> present on Share Sell
    And user opens an application of "<ApplicationStage>" stage present in context from application grid
    And user opens communication history section
    When user opens schedule an appointment section
    Then user should be able to view the available "<fieldName>" schedule appointment details
    Examples:
      | ProductType   | ApplicationStage   | fieldName        |
      | <ProductType> | <ApplicationStage> | Date             |
      | <ProductType> | <ApplicationStage> | Time             |
      | <ProductType> | <ApplicationStage> | Party Role       |
      | <ProductType> | <ApplicationStage> | Party Contacted  |
      | <ProductType> | <ApplicationStage> | Added By         |
      | <ProductType> | <ApplicationStage> | Submit           |
      | <ProductType> | <ApplicationStage> | Cancel           |
      | <ProductType> | <ApplicationStage> | Meeting Location |

   #FeatureID-ACAUTOCAS-11317,CAS-187621
  Scenario Outline: ACAUTOCAS-15051:  Share sell page <FieldName> label validation for Current Stage Details at <ApplicationStage> for a <ProductType> application
    And user opens an application of "<ApplicationStage>" stage present in context from application grid
    And user reads data from the excel file "<ShareSellWB>" under sheet "<ShareSell_home>" and row <ShareSell_home_rowNum>
    Then user should be able to see current stage details fields with label as in workbook
    Examples:
      | FieldName          | ProductType   | ApplicationStage   | ShareSellWB     | ShareSell_home | ShareSell_home_rowNum |
      | share sell         | <ProductType> | <ApplicationStage> | share_sell.xlsx | share_sell     | 0                     |
      | Branch             | <ProductType> | <ApplicationStage> | share_sell.xlsx | share_sell     | 1                     |
      | Application Number | <ProductType> | <ApplicationStage> | share_sell.xlsx | share_sell     | 2                     |
      | Primary Applicant  | <ProductType> | <ApplicationStage> | share_sell.xlsx | share_sell     | 3                     |
      | Product            | <ProductType> | <ApplicationStage> | share_sell.xlsx | share_sell     | 4                     |
      | Scheme             | <ProductType> | <ApplicationStage> | share_sell.xlsx | share_sell     | 5                     |
      | Tenure             | <ProductType> | <ApplicationStage> | share_sell.xlsx | share_sell     | 6                     |


  #FeatureID-ACAUTOCAS-11317,CAS-187621
  Scenario Outline: ACAUTOCAS-15052: <StageName> stage validation on share sell stage details section
    And user opens an application of "<ApplicationStage>" stage present in context from application grid
    And user open the share sell stage section
    Then "<StageName>" should be present in Workflow
    Examples:
      | StageName              | ProductType   | ApplicationStage   |
      | Sourcing               | <ProductType> | <ApplicationStage> |
      | RCU INITIATION         | <ProductType> | <ApplicationStage> |
      | FII                    | <ProductType> | <ApplicationStage> |
      | CREDIT APPROVAL        | <ProductType> | <ApplicationStage> |
      | PURCHASE PROMISE       | <ProductType> | <ApplicationStage> |
      | SHARE PURCHASE         | <ProductType> | <ApplicationStage> |
      | POST APPROVAL          | <ProductType> | <ApplicationStage> |
      | RECONSIDERATION        | <ProductType> | <ApplicationStage> |


 #FeatureID-ACAUTOCAS-11317,CAS-187621
  Scenario Outline: ACAUTOCAS-15053:  On Share Sell Page <Fields> button is enable in activity section
    And user opens an application of "<ApplicationStage>" stage present in context from application grid
    When user opens activity section
    Then user is able to open "<Fields>" on share sell details page
    Examples:
      | Fields                | ProductType   | ApplicationStage   |
      | Comments              | <ProductType> | <ApplicationStage> |
      | Activity              | <ProductType> | <ApplicationStage> |
      | History               | <ProductType> | <ApplicationStage> |
      | Notes                 | <ProductType> | <ApplicationStage> |
      | Tags                  | <ProductType> | <ApplicationStage> |
      | Messages              | <ProductType> | <ApplicationStage> |
      | Rule Execution Result | <ProductType> | <ApplicationStage> |


 #FeatureID-ACAUTOCAS-11317,CAS-187621
  Scenario Outline: ACAUTOCAS-15054: Validate multiple reasons in Investor Details modal window on <ApplicationStage> for a <ProductType> application
    And user opens an application of "<ApplicationStage>" stage present in context from application grid
    When user clicks on Share Sell Tab
    Then reasons captured should be visible in view only mode
    Examples:
      | ProductType   | ApplicationStage   |
      | <ProductType> | <ApplicationStage> |


 #FeatureID-ACAUTOCAS-11317,CAS-187621
  #PQM_15_CAS-187621
  Scenario Outline: ACAUTOCAS-15055: Check for send back stages available on <ApplicationStage> for a <ProductType> application
    And user opens an application of "<ApplicationStage>" stage present in context from application grid
    When user open the share sell stage section
    Then Only Post Approval must be visible
    Examples:
      | ProductType   | ApplicationStage   |
      | <ProductType> | <ApplicationStage> |








































































































































































