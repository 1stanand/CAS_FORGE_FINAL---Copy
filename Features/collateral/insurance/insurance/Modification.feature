@Epic-Secondary_Collateral
@AuthoredBy-rsurya.kumar
@ImplementedBy-akash.bansal
@ReviewedByDEV
@ReviewedSecCollateral

#${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal Initiation"]}
#${CollateralSubType:["Insurance"]}

Feature: Insurance Modification
#
##  Pre-Requisites---
##  In this feature we will modify and delete an Insurance Insurance to the loan application.
#
  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0

  @Release2
  Scenario Outline: ACAUTOCAS-2194: Deleting a <CollateralSubType> to <ProductType> application at <ApplicationStage> stage attached to the application
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "collateral.xlsx" under sheet "insurance_details" and row 341
    And user selects collateral type along with collateral sub type
    And user fills all fields for Insurance in Collateral details
    And user enters all nominee details
    And user opens address details in nominee details
    And user fills mandatory nominee address in nominee details
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    And user opens Collateral Page
    When user deletes the saved collateral
    Then user should be able to successfully delete the collateral
    Examples:
      | ProductType   | ApplicationStage   | key | category | applicantType | CollateralSubType   |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |

  @Release2
  Scenario Outline: ACAUTOCAS-2195: Insurance Tab for <CollateralSubType> to <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "collateral.xlsx" under sheet "insurance_details" and row 342
    And user selects collateral type along with collateral sub type
    And user fills all fields for Insurance in Collateral details
    And user enters all nominee details
    And user opens address details in nominee details
    And user fills mandatory nominee address in nominee details
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    And user opens Collateral Page
    When user attempts to modify collateral based on "<CollateralSubType>"
    Then user should not see another Insurance Tab
    Examples:
      | ProductType   | ApplicationStage   | key | category | applicantType | CollateralSubType   |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |

  @Release2
  Scenario Outline: ACAUTOCAS-1320: <CollateralSubType> to <ProductType> application at <ApplicationStage> stage Data Modification
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "collateral.xlsx" under sheet "insurance_details" and row 343
    And user selects collateral type along with collateral sub type
    And user fills all fields for Insurance in Collateral details
    And user enters all nominee details
    And user opens address details in nominee details
    And user fills mandatory nominee address in nominee details
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    And user opens Collateral Page
    When user attempts to modify collateral based on "<CollateralSubType>"
    Then user should be able to modify the data in field "<FieldName>"
    Examples:
      | FieldName                | ProductType   | ApplicationStage   | key | category | applicantType | CollateralSubType   |
      | Collateral Ref No        | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | Description              | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | Policy Holder Name       | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | Policy Holder Name 2     | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | Policy Holder Name 3     | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | Policy Number            | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | Cover Note Number        | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | Cover Note Creation Date | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | Policy Value             | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | Surrender Amount         | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | Insurance Type           | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | Insurance Provider       | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | Issue Date               | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | Maturity Date            | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | Premium Due Date         | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | Premium Paid Upto        | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | Single Premium Paid      | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | Face Value               | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | Accrued Value            | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | Maturity Value           | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |

  @Release2
  Scenario Outline: ACAUTOCAS-1321: Modifying  <CollateralSubType> to <ProductType> application at <ApplicationStage> stage as a collateral to add nominee
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "collateral.xlsx" under sheet "insurance_details" and row 344
    And user selects collateral type along with collateral sub type
    And user fills all fields for Insurance in Collateral details
    And user enters all nominee details
    And user opens address details in nominee details
    And user fills mandatory nominee address in nominee details
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    And user opens Collateral Page
    When user attempts to modify collateral based on "<CollateralSubType>"
    And no nominees are attached to the insurance
    And user enters all nominee details
    And user saves the collateral data
    Then modified collateral should be saved successfully
    Examples:
      | ProductType   | ApplicationStage   | key | category | applicantType | CollateralSubType   |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |

#Percentage Of Entitlement Validation
  @Release2
  Scenario Outline: ACAUTOCAS-1322: Modifying to the <CollateralSubType> to <ProductType> application at <ApplicationStage> stage details to add nominee with less than 100% entitlement
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "collateral.xlsx" under sheet "insurance_details" and row 345
    And user selects collateral type along with collateral sub type
    And user fills all fields for Insurance in Collateral details
    And user enters all nominee details
    And user opens address details in nominee details
    And user fills mandatory nominee address in nominee details
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    And user opens Collateral Page
    When user attempts to modify collateral based on "<CollateralSubType>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_insuranceDetails>" and row <Collateral_insuranceDetails_rowNum>
    And no nominees are attached to the insurance
    And user enters all nominee details
    And user saves the collateral data
    Then User should receive a proper failure message
    Examples:
      | ProductType   | ApplicationStage   | key | category | applicantType | CollateralSubType   | CollateralWB    | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> | collateral.xlsx | insurance_details           | 346                                |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> | collateral.xlsx | insurance_details           | 347                                |

#Percentage Of Entitlement combined Validation
  @Release2
  Scenario Outline: ACAUTOCAS-2196: Modifying <CollateralSubType> to <ProductType> application at <ApplicationStage> stage details attached to add multiple nominees
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "collateral.xlsx" under sheet "insurance_details" and row 348
    And user selects collateral type along with collateral sub type
    And user fills all fields for Insurance in Collateral details
    And user enters all nominee details
    And user opens address details in nominee details
    And user fills mandatory nominee address in nominee details
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    And user opens Collateral Page
    When user attempts to modify collateral based on "<CollateralSubType>"
    And no nominees are attached to the insurance
    And user enters multiple nominee details
      | collateral.xlsx | insurance_details | 349 |
      | collateral.xlsx | insurance_details | 350 |
    And user saves the collateral data
    Then data should get saved successfully
    Examples:
      | ProductType   | ApplicationStage   | key | category | applicantType | CollateralSubType   |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |

##Entitlement % not more than 100%
  @Release2
  Scenario Outline: ACAUTOCAS-2197: Modifying <CollateralSubType> to <ProductType> application at <ApplicationStage> stage details attached to add nominees with more than 100% entitlement
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "collateral.xlsx" under sheet "insurance_details" and row 351
    And user selects collateral type along with collateral sub type
    And user fills all fields for Insurance in Collateral details
    And user enters all nominee details
    And user opens address details in nominee details
    And user fills mandatory nominee address in nominee details
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    And user opens Collateral Page
    When user attempts to modify collateral based on "<CollateralSubType>"
    And no nominees are attached to the insurance
    And user enters multiple nominee details
      | collateral.xlsx | insurance_details | 352 |
      | collateral.xlsx | insurance_details | 353 |
    And user saves the collateral data
    Then User should receive a proper failure message
    Examples:
      | ProductType   | ApplicationStage   | key | category | applicantType | CollateralSubType   |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |

  @Release2
  Scenario Outline: ACAUTOCAS-1323: Modifying <CollateralSubType> to <ProductType> application at <ApplicationStage> stage details attached as a collateral to add nominee and there address
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "collateral.xlsx" under sheet "insurance_details" and row 354
    And user selects collateral type along with collateral sub type
    And user fills all fields for Insurance in Collateral details
    And user enters all nominee details
    And user opens address details in nominee details
    And user fills mandatory nominee address in nominee details
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    And user opens Collateral Page
    When user attempts to modify collateral based on "<CollateralSubType>"
    And no nominees are attached to the insurance
    And user enters all nominee details
    And user opens address details in nominee details
    And user fills mandatory nominee address in nominee details
    Then data should get saved successfully
    Examples:
      | ProductType   | ApplicationStage   | key | category | applicantType | CollateralSubType   |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |

  @Release2
    @LoggedBug
  Scenario Outline: ACAUTOCAS-1324: Adding minor nominee without appointee in <CollateralSubType> to <ProductType> application at <ApplicationStage> stage details of collateral to get message <ErrorMessage>
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "collateral.xlsx" under sheet "insurance_details" and row 355
    And user selects collateral type along with collateral sub type
    And user fills all fields for Insurance in Collateral details
    And user enters all nominee details
    And user opens address details in nominee details
    And user fills mandatory nominee address in nominee details
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    And user opens Collateral Page
    When user attempts to modify collateral based on "<CollateralSubType>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_insuranceDetails>" and row <Collateral_insuranceDetails_rowNum>
    And user enters all nominee details
    And user clicks on save collateral
    Then User should receive a proper failure message
    Examples:
      | ProductType   | ApplicationStage   | key | category | applicantType | CollateralSubType   | CollateralWB    | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ErrorMessage                     |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> | collateral.xlsx | insurance_details           | 356                                | Appointee Name Required          |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> | collateral.xlsx | insurance_details           | 357                                | Appointee cannot be a minor      |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> | collateral.xlsx | insurance_details           | 358                                | Appointee relationship required  |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> | collateral.xlsx | insurance_details           | 359                                | Appointee date of birth required |

  @Release2
  Scenario Outline: ACAUTOCAS-1325:  <CollateralSubType> to <ProductType> application at <ApplicationStage> stage Nominee Data Modification
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "collateral.xlsx" under sheet "insurance_details" and row 360
    And user selects collateral type along with collateral sub type
    And user fills all fields for Insurance in Collateral details
    And user enters all nominee details
    And user opens address details in nominee details
    And user fills mandatory nominee address in nominee details
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    And user opens Collateral Page
    When user attempts to modify collateral based on "<CollateralSubType>"
    Then user should be able to modify the data in field "<FieldName>"
    Examples:
      | FieldName                 | ProductType   | ApplicationStage   | key | category | applicantType | CollateralSubType   |
      | Nominee Name              | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | Nominee Relationship      | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | Gender                    | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | Date of Birth             | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | Appointee Name            | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | Appointee Relationship    | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | Appointee DOB             | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | Nominee address           | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | Percentage of Entitlement | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |

  @Release2
  Scenario Outline: ACAUTOCAS-1326:  <CollateralSubType> to <ProductType> application at <ApplicationStage> stage restrictions in Data Modification
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "collateral.xlsx" under sheet "insurance_details" and row 361
    And user selects collateral type along with collateral sub type
    And user fills all fields for Insurance in Collateral details
    And user enters all nominee details
    And user opens address details in nominee details
    And user fills mandatory nominee address in nominee details
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    And user opens Collateral Page
    When user attempts to modify collateral based on "<CollateralSubType>"
    Then user should not be able to modify the data in field "<FieldName>"
    Examples:
      | FieldName                  | ProductType   | ApplicationStage   | key | category | applicantType | CollateralSubType   |
      | Collateral ID              | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | Global Collateral Number   | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | External Collateral Number | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | Collateral Type            | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | Collateral SubType         | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |


  @Release3
  Scenario Outline: ACAUTOCAS-3112:   <CollateralSubType> to <ProductType> application at <ApplicationStage> stage Nominee Address Modification
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "collateral.xlsx" under sheet "insurance_details" and row 362
    And user selects collateral type along with collateral sub type
    And user fills all fields for Insurance in Collateral details
    And user enters all nominee details
    And user opens address details in nominee details
    And user fills mandatory nominee address in nominee details
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    And user opens Collateral Page
    When user attempts to modify collateral based on "<CollateralSubType>"
    And user opens address details in nominee details
    Then user should be able to modify the data in field "<FieldName>" in nominee address
    Examples:
      | FieldName                     | ProductType   | ApplicationStage   | key | category | applicantType | CollateralSubType   |
      | Address Type                  | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | Full Address                  | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | Country                       | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | Flat/Plot Number              | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | Address Line 2                | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | Address Line 3                | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | PinCode                       | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | Region                        | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | State                         | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | City                          | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | District                      | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | Taluka                        | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | Village                       | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | Current Address               | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | Duration at this Address From | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | Duration at this Address To   | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | Duration at this City From    | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | Duration at this City To      | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | Phone Number:                 | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | Mobile Phone                  | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |

  @Release3
  Scenario Outline: ACAUTOCAS-2530:  Deleting a nominee attached to the <CollateralSubType> to <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "collateral.xlsx" under sheet "insurance_details" and row 363
    And user selects collateral type along with collateral sub type
    And user fills all fields for Insurance in Collateral details
    And user enters all nominee details
    And user opens address details in nominee details
    And user fills mandatory nominee address in nominee details
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    And user opens Collateral Page
    When user attempts to modify collateral based on "<CollateralSubType>"
    And user deletes the nominee attached
    Then user should be able to successfully delete the Nominee For Insurance Collateral
    Examples:
      | ProductType   | ApplicationStage   | key | category | applicantType | CollateralSubType   |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |

##Dedupe Check
  #FeatureID-ACAUTOCAS-238
  @Release3
  Scenario Outline: ACAUTOCAS-4383:   <CollateralSubType> to <ProductType> at <ApplicationStage> stage Data Modification for dedupe revalidation with <Insurance Provider> Insurance Provider <Policy Number> Policy Number <Cover Note Number> Cover Note Number and <Cover Note Creation Date> Cover Note Creation Date
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user adds collateral details with data from:
      | collateral.xlsx | insurance_details | 400 |
    When user attempts to modify collateral based on "<CollateralSubType>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_insuranceDetails>" and row <Collateral_insuranceDetails_rowNum>
    And user modifies the fields:
      | Insurance Provider       |
      | Policy Number            |
      | Cover Note Number        |
      | Cover Note Creation Date |
    And user saves the data of collateral subtype
    Then notification message is displayed for collateral as insurance
    Examples:
      | CollateralWB    | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | Insurance Provider | Policy Number | Cover Note Number | Cover Note Creation Date | ProductType   | ApplicationStage   | key | category | applicantType | CollateralSubType   |
      | collateral.xlsx | insurance_details           | 401                                | duplicate          | duplicate     | duplicate         | duplicate                | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | collateral.xlsx | insurance_details           | 402                                | unique             | unique        | duplicate         | duplicate                | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | collateral.xlsx | insurance_details           | 403                                | duplicate          | duplicate     | unique            | duplicate                | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | collateral.xlsx | insurance_details           | 404                                | unique             | unique        | duplicate         | unique                   | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | collateral.xlsx | insurance_details           | 405                                | unique             | duplicate     | unique            | duplicate                | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | collateral.xlsx | insurance_details           | 406                                | duplicate          | unique        | unique            | unique                   | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | collateral.xlsx | insurance_details           | 407                                | no                 | unique        | unique            | duplicate                | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | collateral.xlsx | insurance_details           | 408                                | duplicate          | duplicate     | duplicate         | duplicate                | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | collateral.xlsx | insurance_details           | 409                                | unique             | no            | duplicate         | no                       | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | collateral.xlsx | insurance_details           | 410                                | unique             | no            | no                | duplicate                | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |

  #FeatureID-ACAUTOCAS-238
  @Release3
    @ImplementedBy-priyanshu.kashyap
  Scenario Outline: ACAUTOCAS-4384:  Dedupe revalidation to  <CollateralSubType> to <ProductType> application at <ApplicationStage> stage identify duplicate collaterals
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user saves newly added collateral to context
    And user clicks on add new collateral
    And user adds collateral details with data from:
      | collateral.xlsx | default | 515 |
    And Collateral Page is showing already added collateral
    And user modifies previously added collateral
    And user sees the "Insurance details"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_insuranceDetails>" and row <Collateral_insuranceDetails_rowNum>
    And user modifies the fields:
      | Insurance Provider       |
      | Policy Number            |
      | Cover Note Number        |
      | Cover Note Creation Date |
    When checks for duplicate collateral
    Then user should get a message "<ErrorMessage>"
    Examples:
      | CollateralWB    | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum |ProductType   | ApplicationStage   | key | category | applicantType |
      | collateral.xlsx | insurance_details           | 578                                |<ProductType> | <ApplicationStage> |     |          | indiv         |
      | collateral.xlsx | insurance_details           | 579                                |<ProductType> | <ApplicationStage> |     |          | indiv         |

  #FeatureID-ACAUTOCAS-238
  @Release3
    @ImplementedBy-priyanshu.kashyap
  Scenario Outline: ACAUTOCAS-4385:  Dedupe revalidation to identify and view duplicate collaterals
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "collateral.xlsx" under sheet "insurance_details" and row 354
    And user selects collateral type along with collateral sub type
    And user fills all fields for Insurance in Collateral details
    And user enters all nominee details
    And user opens address details in nominee details
    And user fills mandatory nominee address in nominee details
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    And user opens Collateral Page
    When user click on modify collateral subtype
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_insuranceDetails>" and row <Collateral_insuranceDetails_rowNum>
    And user modifies the insurance details
    And checks for duplicate collateral
    And user click on view details
    Then User should be able to view the duplicates of collateral subtype
    Examples:
      | CollateralWB    | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum |ProductType   | ApplicationStage   | key | category | applicantType |
      | collateral.xlsx | insurance_details           | 578                                |<ProductType> | <ApplicationStage> |     |          | indiv         |
      | collateral.xlsx | insurance_details           | 579                                |<ProductType> | <ApplicationStage> |     |          | indiv         |

  #FeatureID-ACAUTOCAS-238
  @Release3
    @ImplementedBy-priyanshu.kashyap
    @LoggedBug
  Scenario Outline: ACAUTOCAS-4386:  Dedupe revalidation to identify and attach duplicate collaterals to the same application
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user reads data from the excel file "collateral.xlsx" under sheet "insurance_details" and row 354
    And user selects collateral type along with collateral sub type
    And user fills all fields for Insurance in Collateral details
    And user enters all nominee details
    And user opens address details in nominee details
    And user fills mandatory nominee address in nominee details
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    And user opens Collateral Page
    And user saves the existing global collateral number of collateral subtype
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_insuranceDetails>" and row <Collateral_insuranceDetails_rowNum>
    And user click on add new for adding new collateral
    And user selects collateral type along with collateral sub type
    When user fills all fields for Insurance in Collateral details
    And user enters all nominee details
    And user opens address details in nominee details
    And user fills mandatory nominee address in nominee details
    And checks for duplicate collateral
    And user click on view duplicates collateral
    Then user gets a proper notification on dedupe check
    Examples:
      | CollateralWB    | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum |ProductType   | ApplicationStage   | key | category | applicantType |
      | collateral.xlsx | insurance_details           | 578                                |<ProductType> | <ApplicationStage> |     |          | indiv         |
      | collateral.xlsx | insurance_details           | 579                                |<ProductType> | <ApplicationStage> |     |          | indiv         |

      #FeatureID-ACAUTOCAS-238
  @Perishable
    @Release3
    @ImplementedBy-priyanshu.kashyap
  Scenario Outline: ACAUTOCAS-4387:  Dedupe revalidation to identify and attach duplicate collaterals to different application
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user reads data from the excel file "collateral.xlsx" under sheet "insurance_details" and row 354
    And user selects collateral type along with collateral sub type
    And user fills all fields for Insurance in Collateral details
    And user enters all nominee details
    And user opens address details in nominee details
    And user fills mandatory nominee address in nominee details
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    And user opens Collateral Page
    And user saves the existing global collateral number of collateral subtype
    And user logout from CAS
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "ChildBrowserSheet" and 0
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_insuranceDetails>" and row <Collateral_insuranceDetails_rowNum>
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user click on add new for adding new collateral
    And user selects collateral type along with collateral sub type
    When user fills all fields for Insurance in Collateral details
    And user enters all nominee details
    And user opens address details in nominee details
    And user fills mandatory nominee address in nominee details
    And checks for duplicate collateral
    And user click on view duplicates collateral
    Then user gets a proper notification on dedupe check
    Examples:
      | CollateralWB    | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum |ProductType   | ApplicationStage   | key | category | applicantType |
      | collateral.xlsx | insurance_details           | 578                                |<ProductType> | <ApplicationStage> |     |          | indiv         |
      | collateral.xlsx | insurance_details           | 579                                |<ProductType> | <ApplicationStage> |     |          | indiv         |

# Ignore duplicate and save - Ask for reason
  #FeatureID-ACAUTOCAS-238
  @Release3
    @ImplementedBy-priyanshu.kashyap
  Scenario Outline: ACAUTOCAS-4388:  Dedupe revalidation to identify and ignore duplicate collaterals
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "collateral.xlsx" under sheet "insurance_details" and row 354
    And user selects collateral type along with collateral sub type
    And user fills all fields for Insurance in Collateral details
    And user enters all nominee details
    And user opens address details in nominee details
    And user fills mandatory nominee address in nominee details
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    And user opens Collateral Page
    When user click on modify collateral subtype
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_insuranceDetails>" and row <Collateral_insuranceDetails_rowNum>
    And user modifies the insurance details
    And user checks the duplicates on collateral dedupe check
    And saves the data
    Then user is asked to enter the reason of ignoring duplicates
    Examples:
      | CollateralWB    | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum |ProductType   | ApplicationStage   | key | category | applicantType |
      | collateral.xlsx | insurance_details           | 578                                |<ProductType> | <ApplicationStage> |     |          | indiv         |
      | collateral.xlsx | insurance_details           | 579                                |<ProductType> | <ApplicationStage> |     |          | indiv         |
