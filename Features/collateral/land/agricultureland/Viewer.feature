@Epic-Secondary_Collateral
@AuthoredBy-rsurya.kumar
@ReviewedBy-None
@ImplementedBy-ayush.garg
@Release2
@ReviewedByDEV
@Sanity
  #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal Initiation"]}
#${CollateralSubType:["Agricultural Land"]}
Feature: Agriculture Land Viewer

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0


  Scenario Outline: ACAUTOCAS-3182:  Agriculture Land data reconcile to validate if data was saved properly of "<ProductType>" application at "<ApplicationStage>" stage
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
    And user reads data from the excel file "<CollateralWB>" under sheet "<AgricultureLandDetails>" and row <AgricultureLandSubColl_rowNum>
    When user views the saved collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<AgricultureLandDetails>" and row <AgricultureLand_rowNum>
    Then user should be able to see data as available in excel file
    Examples:
      | CollateralWB    | AgricultureLandDetails | AgricultureLand_rowNum | AgricultureLandSubColl_rowNum | ProductType   | ApplicationStage   | key | category | applicantType |
      | collateral.xlsx | default                | 6                      | 285                           | <ProductType> | <ApplicationStage> |     |          | indiv         |

  Scenario Outline: ACAUTOCAS-3183:  CollateralPage should not allow to modify data in viewer mode of "<ProductType>" application at "<ApplicationStage>" stage
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
    And user reads data from the excel file "<CollateralWB>" under sheet "<AgricultureLandDetails>" and row <AgricultureLandSubColl_rowNum>
    When user views the saved collateral
    And user opens the address details of land collateral
    Then user should not be able to modify in field "<FieldName>"
    Examples:
      | FieldName                      | CollateralWB    | AgricultureLandDetails | AgricultureLandSubColl_rowNum | ProductType   | ApplicationStage   | key | category | applicantType |
      | Address Type                   | collateral.xlsx | default                | 285                           | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | Country                        | collateral.xlsx | default                | 285                           | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | Plot Number                    | collateral.xlsx | default                | 285                           | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | Address Line 2                 | collateral.xlsx | default                | 285                           | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | Address Line 3                 | collateral.xlsx | default                | 285                           | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | PinCode                        | collateral.xlsx | default                | 285                           | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | Region                         | collateral.xlsx | default                | 285                           | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | City                           | collateral.xlsx | default                | 285                           | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | City                           | collateral.xlsx | default                | 285                           | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | District                       | collateral.xlsx | default                | 285                           | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | Taluka                         | collateral.xlsx | default                | 285                           | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | Village                        | collateral.xlsx | default                | 285                           | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | Landmark                       | collateral.xlsx | default                | 285                           | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | Current Address                | collateral.xlsx | default                | 285                           | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | Duration at this Address: From | collateral.xlsx | default                | 285                           | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | Duration at this Address: To   | collateral.xlsx | default                | 285                           | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | Duration at this City: From    | collateral.xlsx | default                | 285                           | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | Duration at this City: To      | collateral.xlsx | default                | 285                           | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | Primary Phone                  | collateral.xlsx | default                | 285                           | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | Mobile Phone                   | collateral.xlsx | default                | 285                           | <ProductType> | <ApplicationStage> |     |          | indiv         |
