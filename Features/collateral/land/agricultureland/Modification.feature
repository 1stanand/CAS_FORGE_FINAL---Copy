@Epic-Secondary_Collateral
@AuthoredBy-rsurya.kumar
@Reconciled
@ReviewedByDEV
@ReviewedSecCollateral
@Sanity
  #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
  #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal Initiation"]}
  #${CollateralSubType:["Agriculture Land"]}
Feature: Agriculture Land Modification

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0


  @ImplementedBy-ayush.garg
    @Release2
    @Perishable
  Scenario Outline: ACAUTOCAS-2225:  Deleting a Agriculture Land attached to the application
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user reads data from the excel file "collateral.xlsx" under sheet "default" and row 6
    And user adds new collateral to the application
    And user selects collateral type along with collateral sub type
    And user enters all mandatory information of collateral with description
    And user reads data from the excel file "collateral.xlsx" under sheet "address_details" and row 3
    And user enters address details of land collateral
    And user reads data from the excel file "collateral.xlsx" under sheet "other_details" and row 0
    And user enters other details of land collateral
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    When user deletes existing collateral present
    Then user should be able to successfully delete the Agriculture Land
    Examples:
      | ProductType   | ApplicationStage   | key | category | applicantType |
      | <ProductType> | <ApplicationStage> |     |          | indiv         |


  @ImplementedBy-ayush.garg
    @Release2
  Scenario Outline:ACAUTOCAS-3174:  Agriculture Land Data Modification
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user reads data from the excel file "collateral.xlsx" under sheet "default" and row 6
    And user adds new collateral to the application
    And user selects collateral type along with collateral sub type
    And user reads data from the excel file "collateral.xlsx" under sheet "default" and row 6
    And user enters all mandatory information of collateral
    And user reads data from the excel file "collateral.xlsx" under sheet "address_details" and row 3
    And user enters address details of land collateral
    And user reads data from the excel file "collateral.xlsx" under sheet "other_details" and row 0
    And user enters other details of land collateral
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    And Collateral Page is showing already added Agriculture Land
    When user modifies "Agricultural Land" collateral
    Then user should be able to modify the data in field "<FieldName>"
    Examples:
      | FieldName                          | ProductType   | ApplicationStage   | key | category | applicantType |
      | Collateral Ref No                  | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | Description                        | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | Survey Number                      | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | Landowner Name                     | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | Date of last land holding document | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | Vintage of Lease                   | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | Holding Status                     | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | Encumbrance                        | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | Mortgage                           | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | Document Types                     | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | Document Type Others               | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | Relation Type                      | <ProductType> | <ApplicationStage> |     |          | indiv         |

  Scenario Outline: ACAUTOCAS-3175:Agriculture Land - Data Modification in Land Address
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user reads data from the excel file "collateral.xlsx" under sheet "default" and row 6
    And user adds new collateral to the application
    And user selects collateral type along with collateral sub type
    And user reads data from the excel file "collateral.xlsx" under sheet "default" and row 6
    And user enters all mandatory information of collateral
    And user reads data from the excel file "collateral.xlsx" under sheet "address_details" and row 3
    And user enters address details of land collateral
    And user reads data from the excel file "collateral.xlsx" under sheet "other_details" and row 0
    And user enters other details of land collateral
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    And Collateral Page is showing already added Agriculture Land
    When user modifies "Agricultural Land" collateral
    And user opens the address details of land collateral
    Then user should be able to modify the data in field "<FieldName>"
    @ImplementedBy-ayush.garg
    @Release2
    Examples:
      | FieldName                      | ProductType   | ApplicationStage   | key | category | applicantType |
      | Address Lines 2                | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | Address Lines 3                | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | PinCode                        | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | Region                         | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | City                           | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | City                           | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | District                       | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | Taluka                         | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | Village                        | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | Landmark                       | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | Current Address                | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | Duration at this Address: From | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | Duration at this Address: To   | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | Duration at this City: From    | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | Duration at this City: To      | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | Primary Phone                  | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | Mobile Phone                   | <ProductType> | <ApplicationStage> |     |          | indiv         |

    @NotImplemented
    Examples:
      | FieldName    |
      | Address Type |
      | Country      |
      | Plot Number  |

  @ImplementedBy-ayush.garg
    @Release2
  Scenario Outline:ACAUTOCAS-3176:  Agriculture Land - Data Modification in Builder details
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user reads data from the excel file "collateral.xlsx" under sheet "default" and row 6
    And user adds new collateral to the application
    And user selects collateral type along with collateral sub type
    And user enters all mandatory information of collateral
    And user reads data from the excel file "collateral.xlsx" under sheet "address_details" and row 3
    And user enters address details of land collateral
    And user reads data from the excel file "collateral.xlsx" under sheet "other_details" and row 0
    And user enters other details of land collateral
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    And Collateral Page is showing already added Agriculture Land
    When user modifies "Agricultural Land" collateral
    And user opens the other details of land collateral
    Then user should be able to modify the data in field "<FieldName>"
    Examples:
      | FieldName                    | ProductType   | ApplicationStage   | key | category | applicantType |
      | Agricultural Land Area       | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | Agricultural Land Area Unit  | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | Agricultural Land Value      | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | Agricultural Land Value Unit | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | Irrigated                    | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | Irrigation source            | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | Patwari circle               | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | Revenue Circle               | <ProductType> | <ApplicationStage> |     |          | indiv         |

  @ImplementedBy-ayush.garg
    @Release2
  Scenario Outline: ACAUTOCAS-3177:Agriculture Land restrictions in Data Modification
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user adds new collateral to the application
    And user selects collateral type along with collateral sub type
    And user reads data from the excel file "collateral.xlsx" under sheet "default" and row 6
    And user enters all mandatory information of collateral
    And user reads data from the excel file "collateral.xlsx" under sheet "address_details" and row 3
    And user enters address details of land collateral
    And user reads data from the excel file "collateral.xlsx" under sheet "other_details" and row 0
    And user enters other details of land collateral
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    And Collateral Page is showing already added Agriculture Land
    When user modifies "Agricultural Land" collateral
    Then user should not be able to modify the data in field "<FieldName>"
    Examples:
      | FieldName                  | ProductType   | ApplicationStage   | key | category | applicantType |
      | Collateral ID              | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | Global Collateral Number   | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | External Collateral Number | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | Collateral Type            | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | Collateral SubType         | <ProductType> | <ApplicationStage> |     |          | indiv         |

  @ImplementedBy-aditya.tomar
    @Release2
  Scenario Outline: ACAUTOCAS-4442: Agriculture Land Data Modification in Collateral Details for dedupe revalidation
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user reads data from the excel file "collateral.xlsx" under sheet "default" and row 6
    And user adds new collateral to the application
    And user selects collateral type along with collateral sub type
    And user reads data from the excel file "collateral.xlsx" under sheet "default" and row 6
    And user enters all mandatory information of collateral
    And user reads data from the excel file "collateral.xlsx" under sheet "address_details" and row 3
    And user enters address details of land collateral
    And user reads data from the excel file "collateral.xlsx" under sheet "other_details" and row 0
    And user enters other details of land collateral
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    And Collateral Page is showing already added Agriculture Land
    And user reads data from the excel file "<CollateralWB>" under sheet "<AgricultureLandDetails>" and row <AgricultureLandSubColl_rowNum>
    When user modifies the Collateral to Agricultural Land
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_address_detail>" and row <Collateral_address_detail_rowNum>
    And user modifies SurveyNumber, Village collateral page
    And user saves the collateral data
    Then user should get notification error message
    Examples:
      | CollateralWB    | Collateral_address_detail | Collateral_address_detail_rowNum | AgricultureLandDetails | AgricultureLandSubColl_rowNum | ProductType   | ApplicationStage   | key | category | applicantType |
      | collateral.xlsx | address_details           | 19                               | default                | 285                           | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | collateral.xlsx | address_details           | 20                               | default                | 285                           | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | collateral.xlsx | address_details           | 21                               | default                | 285                           | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | collateral.xlsx | address_details           | 22                               | default                | 285                           | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | collateral.xlsx | address_details           | 23                               | default                | 285                           | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | collateral.xlsx | address_details           | 24                               | default                | 285                           | <ProductType> | <ApplicationStage> |     |          | indiv         |

  @ImplementedBy-aditya.tomar
    @Release2
  Scenario Outline: ACAUTOCAS-4443: Dedupe revalidation to identify duplicate collaterals with <ErrorMessage>
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user adds new collateral to the application
    And user selects collateral type along with collateral sub type
    And user reads data from the excel file "collateral.xlsx" under sheet "default" and row 6
    And user enters all mandatory information of collateral
    And user reads data from the excel file "collateral.xlsx" under sheet "address_details" and row 3
    And user enters address details of land collateral
    And user reads data from the excel file "collateral.xlsx" under sheet "other_details" and row 0
    And user enters other details of land collateral
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    And Collateral Page is showing already added Agriculture Land
    And user reads data from the excel file "<CollateralWB>" under sheet "<AgricultureLandDetails>" and row <AgricultureLandSubColl_rowNum>
    When user modifies the Collateral to Agricultural Land
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_address_detail>" and row <Collateral_address_detail_rowNum>
    And user modifies SurveyNumber, Village collateral page
    And user saves the collateral data
    Then user should get notification error message
    Examples:
      | CollateralWB    | Collateral_address_detail | Collateral_address_detail_rowNum | ErrorMessage                           | AgricultureLandDetails | AgricultureLandSubColl_rowNum | ProductType   | ApplicationStage   | key | category | applicantType |
      | collateral.xlsx | address_details           | 12                               | Survey Number is mandatory             | default                | 285                           | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | collateral.xlsx | address_details           | 7                                | Village is mandatory                   | default                | 285                           | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | collateral.xlsx | address_details           | 11                               | Survey Number and Village is mandatory | default                | 285                           | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | collateral.xlsx | address_details           | 9                                | 1 duplicates found                     | default                | 285                           | <ProductType> | <ApplicationStage> |     |          | indiv         |

  #FeatureID-ACAUTOCAS-239,ACAUTOCAS-244
  @NotImplemented
  Scenario Outline: ACAUTOCAS-4444:  Dedupe revalidation to identify and view duplicate collaterals
    Given user has captured a "Agriculture Land" against an application
    And "Agriculture Land" with values of "SurveyNumber", "Village":
      | SurveyNumber | Village |
      | ABCD1234     | Sarai   |
    And "Agriculture Land" with values of "GlobalCollateralNo", "SurveyNumber", "Village" is already available in "Module":
      | GlobalCollateralNo | SurveyNumber | Village   | Module |
      | CMS00010035        | ABCD12345    | Ber Sarai | CMS    |
    When user modifies "Agriculture Land" using "<CollateralWB>" under sheet "<AgricultureLandDetails>" row <AgricultureLand_rowNum>
    And user modifies data of "<Survey Number>", "<Village>"
    And checks for duplicate collateral
    And user gets a message saying "<ErrorMessage>"
    Then user should be able to view the duplicates
    Examples:
      | CollateralWB             | AgricultureLandDetails | AgricultureLand_rowNum | Survey Number | Village   | ErrorMessage       |
      | LandAgricultureLand.xlsx | LandAgricultureLand    | 6                      | ABCD12345     | Ber Sarai | 1 duplicates found |


  @Release3
    @ImplementedBy-priyanshu.kashyap
    @LoggedBug
  Scenario Outline:  ACAUTOCAS-4445: Dedupe revalidation to identify and attach duplicate collaterals to the same application
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "collateral.xlsx" under sheet "default" and row 6
    And user enters all mandatory information of collateral
    And user reads data from the excel file "collateral.xlsx" under sheet "address_details" and row 3
    And user enters address details of land collateral
    And user reads data from the excel file "collateral.xlsx" under sheet "other_details" and row 0
    And user enters other details of land collateral
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    And user saves the existing global collateral number of collateral subtype
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "collateral.xlsx" under sheet "default" and row 6
    When user enters all mandatory information of collateral
    And user reads data from the excel file "collateral.xlsx" under sheet "address_details" and row 3
    And user enters address details of land collateral
    And user reads data from the excel file "collateral.xlsx" under sheet "other_details" and row 0
    And user enters other details of land collateral
    And checks for duplicate collateral
    And user click on view duplicates collateral
    Then user gets a proper notification on dedupe check
    Examples:
      | ProductType   | ApplicationStage   | key | category | applicantType |
      | <ProductType> | <ApplicationStage> |     |          | indiv         |

  @Release3
    @ImplementedBy-priyanshu.kashyap
    @LoggedBug
      #FeatureID-ACAUTOCAS-239,ACAUTOCAS-244
  Scenario Outline: ACAUTOCAS-4446:  Dedupe revalidation to identify and attach duplicate collaterals to different application
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "collateral.xlsx" under sheet "default" and row 6
    And user enters all mandatory information of collateral
    And user reads data from the excel file "collateral.xlsx" under sheet "address_details" and row 3
    And user enters address details of land collateral
    And user reads data from the excel file "collateral.xlsx" under sheet "other_details" and row 0
    And user enters other details of land collateral
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    And user saves the existing global collateral number of collateral subtype
    And user logout from CAS
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "ChildBrowserSheet" and 0
    And user reads data from the excel file "collateral.xlsx" under sheet "default" and row 6
    When user enters all mandatory information of collateral
    And user reads data from the excel file "collateral.xlsx" under sheet "address_details" and row 3
    And user enters address details of land collateral
    And user reads data from the excel file "collateral.xlsx" under sheet "other_details" and row 0
    And user enters other details of land collateral
    And checks for duplicate collateral
    And user click on view duplicates collateral
    Then user gets a proper notification on dedupe check
    Examples:
      | ProductType   | ApplicationStage   | key | category | applicantType |
      | <ProductType> | <ApplicationStage> |     |          | indiv         |

## Ignore duplicate and save - Ask for reason
  @Release3
    @ImplementedBy-priyanshu.kashyap
  Scenario Outline: ACAUTOCAS-4447: Dedupe revalidation to identify and ignore duplicate collaterals
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "collateral.xlsx" under sheet "default" and row 6
    And user enters all mandatory information of collateral
    And user reads data from the excel file "collateral.xlsx" under sheet "address_details" and row 3
    And user enters address details of land collateral
    And user reads data from the excel file "collateral.xlsx" under sheet "other_details" and row 0
    And user enters other details of land collateral
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    And user opens Collateral Page
    When user click on modify collateral subtype
    And user reads data from the excel file "collateral.xlsx" under sheet "address_details" and row 1
    And user modifies the data of collateral subtype
    And user checks the duplicates on collateral dedupe check
    And saves the data
    Then user is asked to enter the reason of ignoring duplicates
    Examples:
      | ProductType   | ApplicationStage   | key | category | applicantType |
      | <ProductType> | <ApplicationStage> |     |          | indiv         |




