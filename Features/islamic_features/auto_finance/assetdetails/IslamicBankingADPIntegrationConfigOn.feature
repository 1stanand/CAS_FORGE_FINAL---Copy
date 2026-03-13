@Epic-Loan_Application_Details
@AuthoredBy-aryan.jain
@ImplementedBy-aryan.jain
@PQMStory
@Islamic
@Perishable
Feature: Islamic Banking ADP Integration Config On


  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0



   # ${ProductType:["IAF"]} 
   # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Reconsideration","Credit Approval"]}
   # ${ApplicantType:["indiv"]} 
   # PQM-5_CAS-207794
   #FeatureID-ACAUTOCAS-17372
Scenario Outline: ACAUTOCAS-18002: Validate File number field should be present in <AssetType> for <FinanceMode> at <ApplicationStage> of <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user open asset details of "<ApplicationStage>"
    And user de link collateral in asset details
    And user reads data from the excel file "<AssetDetailsWB>" under sheet "<AssetDetails_SheetName>" and row <AssetDetails_SheetName_rowNum>
    And user fills asset details with asset type as "<AssetType>"
    When user click on vehicle Details accordion
    Then File number field should be present

    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | AssetType  | FinanceMode | AssetDetailsWB     | AssetDetails_SheetName | AssetDetails_SheetName_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | New Asset  | Purchase    | asset_details.xlsx | home                   | 77                            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Used Asset | Lease       | asset_details.xlsx | home                   | 78                            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Used Asset | Purchase    | asset_details.xlsx | home                   | 79                            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Used Asset | Refinance   | asset_details.xlsx | home                   | 80                            |


   # ${ProductType:["IAF"]}
   # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Reconsideration","Credit Approval"]}
   # ${ApplicantType:["indiv"]}
   # PQM-6_CAS-207794
   #FeatureID-ACAUTOCAS-17372
Scenario Outline: ACAUTOCAS-18003: Validate Asset details should be saved successfully without filling File Number in <AssetType> for <FinanceMode> at <ApplicationStage> of <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user open asset details of "<ApplicationStage>"
    And user de link collateral in asset details
    And user reads data from the excel file "<AssetDetailsWB>" under sheet "<AssetDetails_SheetName>" and row <AssetDetails_SheetName_rowNum>
    And user fills asset details with asset type as "<AssetType>"
    And user reads data from the excel file "<AssetDetailsWB>" under sheet "<AssetDetails_SheetName1>" and row <AssetDetails_SheetName1_rowNum>
    And user click on vehicle Details accordion
    When user fills vehicle details fields without file number
    And user checks for the duplicates in asset details
    And user save the filled details
    Then Asset details should be saved successfully

    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | AssetType  | FinanceMode | AssetDetailsWB     | AssetDetails_SheetName | AssetDetails_SheetName_rowNum | AssetDetails_SheetName1 | AssetDetails_SheetName1_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | New Asset  | Purchase    | asset_details.xlsx | home                   | 77                            | vehicle_details         | 122                            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Used Asset | Lease       | asset_details.xlsx | home                   | 78                            | vehicle_details         | 122                            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Used Asset | Purchase    | asset_details.xlsx | home                   | 79                            | vehicle_details         | 122                            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Used Asset | Refinance   | asset_details.xlsx | home                   | 80                            | vehicle_details         | 122                            |


   # ${ProductType:["IAF"]}
   # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Reconsideration","Credit Approval"]}
   # ${ApplicantType:["indiv"]}
   # PQM-7_CAS-207794
   #FeatureID-ACAUTOCAS-17372
Scenario Outline: ACAUTOCAS-18004: Verify <Validity> File Number with <validityReason> in <AssetType> for <FinanceMode> at <ApplicationStage> of <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user open asset details of "<ApplicationStage>"
    And user de link collateral in asset details
    And user reads data from the excel file "<AssetDetailsWB>" under sheet "<AssetDetails_SheetName>" and row <AssetDetails_SheetName_rowNum>
    And user fills asset details with asset type as "<AssetType>"
    And user reads data from the excel file "<AssetDetailsWB>" under sheet "<AssetDetails_SheetName1>" and row <AssetDetails_SheetName1_rowNum>
    And user click on vehicle Details accordion
    When user fills file number in vehicle details
    Then File Number throws not throws error after entering "<Validity>" details

    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | Validity | validityReason                   | AssetType  | FinanceMode | AssetDetailsWB     | AssetDetails_SheetName | AssetDetails_SheetName_rowNum | AssetDetails_SheetName1 | AssetDetails_SheetName1_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Valid    | positive digits                  | New Asset  | Purchase    | asset_details.xlsx | home                   | 77                            | vehicle_details         | 123                            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Valid    | characters                       | New Asset  | Purchase    | asset_details.xlsx | home                   | 77                            | vehicle_details         | 124                            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Valid    | both digits and characters       | New Asset  | Purchase    | asset_details.xlsx | home                   | 77                            | vehicle_details         | 125                            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Valid    | negative                         | New Asset  | Purchase    | asset_details.xlsx | home                   | 77                            | vehicle_details         | 126                            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Valid    | hyphen                           | New Asset  | Purchase    | asset_details.xlsx | home                   | 77                            | vehicle_details         | 127                            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Valid    | space                            | New Asset  | Purchase    | asset_details.xlsx | home                   | 77                            | vehicle_details         | 128                            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | InValid  | special characters except hyphen | New Asset  | Purchase    | asset_details.xlsx | home                   | 77                            | vehicle_details         | 129                            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Valid    | positive digits                  | Used Asset | Lease       | asset_details.xlsx | home                   | 78                            | vehicle_details         | 123                            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Valid    | characters                       | Used Asset | Lease       | asset_details.xlsx | home                   | 78                            | vehicle_details         | 124                            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Valid    | both digits and characters       | Used Asset | Lease       | asset_details.xlsx | home                   | 78                            | vehicle_details         | 125                            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Valid    | negative                         | Used Asset | Lease       | asset_details.xlsx | home                   | 78                            | vehicle_details         | 126                            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Valid    | hyphen                           | Used Asset | Lease       | asset_details.xlsx | home                   | 78                            | vehicle_details         | 127                            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Valid    | space                            | Used Asset | Lease       | asset_details.xlsx | home                   | 78                            | vehicle_details         | 128                            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | InValid  | special characters except hyphen | Used Asset | Lease       | asset_details.xlsx | home                   | 78                            | vehicle_details         | 129                            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Valid    | positive digits                  | Used Asset | Purchase    | asset_details.xlsx | home                   | 79                            | vehicle_details         | 123                            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Valid    | characters                       | Used Asset | Purchase    | asset_details.xlsx | home                   | 79                            | vehicle_details         | 124                            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Valid    | both digits and characters       | Used Asset | Purchase    | asset_details.xlsx | home                   | 79                            | vehicle_details         | 125                            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Valid    | negative                         | Used Asset | Purchase    | asset_details.xlsx | home                   | 79                            | vehicle_details         | 126                            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Valid    | hyphen                           | Used Asset | Purchase    | asset_details.xlsx | home                   | 79                            | vehicle_details         | 127                            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Valid    | space                            | Used Asset | Purchase    | asset_details.xlsx | home                   | 79                            | vehicle_details         | 128                            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | InValid  | special characters except hyphen | Used Asset | Purchase    | asset_details.xlsx | home                   | 79                            | vehicle_details         | 129                            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Valid    | positive digits                  | Used Asset | Refinance   | asset_details.xlsx | home                   | 80                            | vehicle_details         | 123                            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Valid    | characters                       | Used Asset | Refinance   | asset_details.xlsx | home                   | 80                            | vehicle_details         | 124                            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Valid    | both digits and characters       | Used Asset | Refinance   | asset_details.xlsx | home                   | 80                            | vehicle_details         | 125                            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Valid    | negative                         | Used Asset | Refinance   | asset_details.xlsx | home                   | 80                            | vehicle_details         | 126                            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Valid    | hyphen                           | Used Asset | Refinance   | asset_details.xlsx | home                   | 80                            | vehicle_details         | 127                            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Valid    | space                            | Used Asset | Refinance   | asset_details.xlsx | home                   | 80                            | vehicle_details         | 128                            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | InValid  | special characters except hyphen | Used Asset | Refinance   | asset_details.xlsx | home                   | 80                            | vehicle_details         | 129                            |


   # ${ProductType:["IAF"]}
   # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Reconsideration","Credit Approval"]}
   # ${ApplicantType:["indiv"]}
   # PQM-8_CAS-207794
   #FeatureID-ACAUTOCAS-17372
Scenario Outline: ACAUTOCAS-18005: Verify File Number field value upto 255 in <AssetType> for <FinanceMode> at <ApplicationStage> of <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user open asset details of "<ApplicationStage>"
    And user de link collateral in asset details
    And user reads data from the excel file "<AssetDetailsWB>" under sheet "<AssetDetails_SheetName>" and row <AssetDetails_SheetName_rowNum>
    And user fills asset details with asset type as "<AssetType>"
    And user reads data from the excel file "<AssetDetailsWB>" under sheet "<AssetDetails_SheetName1>" and row <AssetDetails_SheetName1_rowNum>
    And user click on vehicle Details accordion
    When user enter maximum alphanumeric values upto 255 in file number
    Then File number field should be saved successfully

    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | AssetType  | FinanceMode | AssetDetailsWB     | AssetDetails_SheetName | AssetDetails_SheetName_rowNum | AssetDetails_SheetName1 | AssetDetails_SheetName1_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | New Asset  | Purchase    | asset_details.xlsx | home                   | 77                            | vehicle_details         | 134                            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Used Asset | Lease       | asset_details.xlsx | home                   | 78                            | vehicle_details         | 134                            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Used Asset | Purchase    | asset_details.xlsx | home                   | 79                            | vehicle_details         | 134                            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Used Asset | Refinance   | asset_details.xlsx | home                   | 80                            | vehicle_details         | 134                            |


   # ${ProductType:["IAF"]}
   # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Reconsideration","Credit Approval"]}
   # ${ApplicantType:["indiv"]}
   # PQM-9_CAS-207794
   #FeatureID-ACAUTOCAS-17372
Scenario Outline: ACAUTOCAS-18006: Validate File Number value cannot be more than 255 characters in <AssetType> for <FinanceMode> at <ApplicationStage> of <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user open asset details of "<ApplicationStage>"
    And user de link collateral in asset details
    And user reads data from the excel file "<AssetDetailsWB>" under sheet "<AssetDetails_SheetName>" and row <AssetDetails_SheetName_rowNum>
    And user fills asset details with asset type as "<AssetType>"
    And user reads data from the excel file "<AssetDetailsWB>" under sheet "<AssetDetails_SheetName1>" and row <AssetDetails_SheetName1_rowNum>
    And user click on vehicle Details accordion
    When user enter maximum value more than 255 in file number
    Then User should not allowed to enter more than 255 characters

    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | AssetType  | FinanceMode | AssetDetailsWB     | AssetDetails_SheetName | AssetDetails_SheetName_rowNum | AssetDetails_SheetName1 | AssetDetails_SheetName1_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | New Asset  | Purchase    | asset_details.xlsx | home                   | 77                            | vehicle_details         | 133                            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Used Asset | Lease       | asset_details.xlsx | home                   | 78                            | vehicle_details         | 133                            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Used Asset | Purchase    | asset_details.xlsx | home                   | 79                            | vehicle_details         | 133                            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Used Asset | Refinance   | asset_details.xlsx | home                   | 80                            | vehicle_details         | 133                            |


   # ${ProductType:["IAF"]}
   # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Reconsideration","Credit Approval"]}
   # ${ApplicantType:["indiv"]}
   # PQM-10_CAS-207794
   #FeatureID-ACAUTOCAS-17372
Scenario Outline: ACAUTOCAS-18007: Asset Registration button should not present in <AssetType> for <FinanceMode> at <ApplicationStage> of <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user open asset details of "<ApplicationStage>"
    And user de link collateral in asset details
    And user reads data from the excel file "<AssetDetailsWB>" under sheet "<AssetDetails_SheetName>" and row <AssetDetails_SheetName_rowNum>
    When user fills asset details with asset type as "<AssetType>"
    Then Asset Registration button should not present

    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | AssetType  | FinanceMode | AssetDetailsWB     | AssetDetails_SheetName | AssetDetails_SheetName_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | New Asset  | Purchase    | asset_details.xlsx | home                   | 77                            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Used Asset | Lease       | asset_details.xlsx | home                   | 78                            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Used Asset | Purchase    | asset_details.xlsx | home                   | 79                            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Used Asset | Refinance   | asset_details.xlsx | home                   | 80                            |


   # ${ProductType:["IAF"]}
   # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Reconsideration","Credit Approval"]}
   # ${ApplicantType:["indiv"]}
   # PQM-11_CAS-207794
   #FeatureID-ACAUTOCAS-17372
Scenario Outline: ACAUTOCAS-18008: Validate State field should not be saved if special character record is not present in drop down in <AssetType> for <FinanceMode> at <ApplicationStage> of <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user open asset details of "<ApplicationStage>"
    And user de link collateral in asset details
    And user reads data from the excel file "<AssetDetailsWB>" under sheet "<AssetDetails_SheetName>" and row <AssetDetails_SheetName_rowNum>
    And user fills asset details with asset type as "<AssetType>"
    And user reads data from the excel file "<AssetDetailsWB>" under sheet "<AssetDetails_SheetName1>" and row <AssetDetails_SheetName1_rowNum>
    And user click on vehicle Details accordion
    When user enter special characters in state field
    Then State field data should not be saved

    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | AssetType  | FinanceMode | AssetDetailsWB     | AssetDetails_SheetName | AssetDetails_SheetName_rowNum | AssetDetails_SheetName1 | AssetDetails_SheetName1_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | New Asset  | Purchase    | asset_details.xlsx | home                   | 77                            | vehicle_details         | 130                            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Used Asset | Lease       | asset_details.xlsx | home                   | 78                            | vehicle_details         | 130                            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Used Asset | Purchase    | asset_details.xlsx | home                   | 79                            | vehicle_details         | 130                            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Used Asset | Refinance   | asset_details.xlsx | home                   | 80                            | vehicle_details         | 130                            |


   # ${ProductType:["IAF"]}
   # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Reconsideration","Credit Approval"]}
   # ${ApplicantType:["indiv"]}
   # PQM-12_CAS-207794
   #FeatureID-ACAUTOCAS-17372
Scenario Outline: ACAUTOCAS-18009: Validate State field should not be saved if more than 15 digit record is not present in drop down in <AssetType> for <FinanceMode> at <ApplicationStage> of <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user open asset details of "<ApplicationStage>"
    And user de link collateral in asset details
    And user reads data from the excel file "<AssetDetailsWB>" under sheet "<AssetDetails_SheetName>" and row <AssetDetails_SheetName_rowNum>
    And user fills asset details with asset type as "<AssetType>"
    And user reads data from the excel file "<AssetDetailsWB>" under sheet "<AssetDetails_SheetName1>" and row <AssetDetails_SheetName1_rowNum>
    And user click on vehicle Details accordion
    When user enter more than 15 digits in state field
    Then State field data should not be saved

    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | AssetType  | FinanceMode | AssetDetailsWB     | AssetDetails_SheetName | AssetDetails_SheetName_rowNum | AssetDetails_SheetName1 | AssetDetails_SheetName1_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | New Asset  | Purchase    | asset_details.xlsx | home                   | 77                            | vehicle_details         | 131                            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Used Asset | Lease       | asset_details.xlsx | home                   | 78                            | vehicle_details         | 131                            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Used Asset | Purchase    | asset_details.xlsx | home                   | 79                            | vehicle_details         | 131                            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Used Asset | Refinance   | asset_details.xlsx | home                   | 80                            | vehicle_details         | 131                            |


   # ${ProductType:["IAF"]}
   # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Reconsideration","Credit Approval"]}
   # ${ApplicantType:["indiv"]}
   # PQM-13_CAS-207794
   #FeatureID-ACAUTOCAS-17372
Scenario Outline: ACAUTOCAS-18010:Validate State field should be saved if record is present in drop down in <AssetType> for <FinanceMode> at <ApplicationStage> of <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user open asset details of "<ApplicationStage>"
    And user de link collateral in asset details
    And user reads data from the excel file "<AssetDetailsWB>" under sheet "<AssetDetails_SheetName>" and row <AssetDetails_SheetName_rowNum>
    And user fills asset details with asset type as "<AssetType>"
    And user reads data from the excel file "<AssetDetailsWB>" under sheet "<AssetDetails_SheetName1>" and row <AssetDetails_SheetName1_rowNum>
    And user click on vehicle Details accordion
    When user fills state value from drop down
    Then State field should be selected

    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | AssetType  | FinanceMode | AssetDetailsWB     | AssetDetails_SheetName | AssetDetails_SheetName_rowNum | AssetDetails_SheetName1 | AssetDetails_SheetName1_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | New Asset  | Purchase    | asset_details.xlsx | home                   | 77                            | vehicle_details         | 132                            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Used Asset | Lease       | asset_details.xlsx | home                   | 78                            | vehicle_details         | 132                            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Used Asset | Purchase    | asset_details.xlsx | home                   | 79                            | vehicle_details         | 132                            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Used Asset | Refinance   | asset_details.xlsx | home                   | 80                            | vehicle_details         | 132                            |


   # ${ProductType:["IAF"]}
   # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Reconsideration","Credit Approval"]}
   # ${ApplicantType:["indiv"]}
   # PQM-14_CAS-207794
   #FeatureID-ACAUTOCAS-17372
Scenario Outline: ACAUTOCAS-18011: Validate Asset details should be saved successfully with File Number in <AssetType> for <FinanceMode> at <ApplicationStage> of <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user open asset details of "<ApplicationStage>"
    And user de link collateral in asset details
    And user reads data from the excel file "<AssetDetailsWB>" under sheet "<AssetDetails_SheetName>" and row <AssetDetails_SheetName_rowNum>
    And user fills asset details with asset type as "<AssetType>"
    And user reads data from the excel file "<AssetDetailsWB>" under sheet "<AssetDetails_SheetName1>" and row <AssetDetails_SheetName1_rowNum>
    And user click on vehicle Details accordion
    And user fills vehicle details fields without file number
    When user fills file number in vehicle details
    And user checks for the duplicates in asset details
    And user save the filled details
    Then Asset details should be saved successfully

    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | AssetType  | FinanceMode | AssetDetailsWB     | AssetDetails_SheetName | AssetDetails_SheetName_rowNum | AssetDetails_SheetName1 | AssetDetails_SheetName1_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | New Asset  | Purchase    | asset_details.xlsx | home                   | 77                            | vehicle_details         | 122                            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Used Asset | Lease       | asset_details.xlsx | home                   | 78                            | vehicle_details         | 122                            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Used Asset | Purchase    | asset_details.xlsx | home                   | 79                            | vehicle_details         | 122                            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Used Asset | Refinance   | asset_details.xlsx | home                   | 80                            | vehicle_details         | 122                            |



   # ${ProductType:["IAF"]}
   # ${ApplicationStage:["Post Approval"]}
   # ${ApplicantType:["indiv"]}
   # PQM-30_CAS-207794
   #FeatureID-ACAUTOCAS-17372
Scenario Outline: ACAUTOCAS-18012:Validate Asset Registration button should be present at <ApplicationStage> of <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    When user open asset details of "<ApplicationStage>"
    Then Asset Registration button should be present

    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |


   # ${ProductType:["IAF"]}
   # ${ApplicationStage:["Post Approval"]}
   # ${ApplicantType:["indiv"]}
   # PQM-32_CAS-207794
   #FeatureID-ACAUTOCAS-17372
Scenario Outline: ACAUTOCAS-18013:Validate Asset Registration should be triggered successfully at <ApplicationStage> of <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user open asset details of "<ApplicationStage>"
    And user click on vehicle Details accordion
    And user reads data from the excel file "<AssetDetailsWB>" under sheet "<AssetDetails_SheetName>" and row <AssetDetails_SheetName_rowNum>
    And user fills vehicle details fields without file number
    And user fills file number in vehicle details
    And user checks for the duplicates in asset details
    And user save the filled details
    When user click on Asset Registration button
    Then Asset Registration should be triggered successfully
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | AssetDetailsWB     | AssetDetails_SheetName | AssetDetails_SheetName_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | asset_details.xlsx | vehicle_details        | 132                           |



   # ${ProductType:["IAF"]}
   # ${ApplicationStage:["Post Approval"]}
   # ${ApplicantType:["indiv"]}
   # PQM-33_CAS-207794
   #FeatureID-ACAUTOCAS-17372
Scenario Outline: ACAUTOCAS-18014: Validate Asset Registration button should be present in disable mode at <ApplicationStage> of <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user open asset details of "<ApplicationStage>"
    And user click on vehicle Details accordion
    And user reads data from the excel file "<AssetDetailsWB>" under sheet "<AssetDetails_SheetName>" and row <AssetDetails_SheetName_rowNum>
    And user fills vehicle details fields without file number
    And user fills file number in vehicle details
    And user checks for the duplicates in asset details
    And user save the filled details
    When user click on Asset Registration button
    Then Asset Registration button should be present in disable mode

    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | AssetDetailsWB     | AssetDetails_SheetName | AssetDetails_SheetName_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | asset_details.xlsx | vehicle_details        | 132                           |


   # ${ProductType:["IAF"]}
   # ${ApplicationStage:["Post Approval"]}
   # ${ApplicantType:["indiv"]}
   # PQM-34_CAS-207794
   #FeatureID-ACAUTOCAS-17372
Scenario Outline: ACAUTOCAS-18015:Validate File number should be editable at <ApplicationStage> of <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user open asset details of "<ApplicationStage>"
    When user click on vehicle Details accordion
    Then File number should be editable

    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |


   # ${ProductType:["IAF"]}
   # ${ApplicationStage:["Post Approval"]}
   # ${ApplicantType:["indiv"]}
   # PQM-36_CAS-207794
   #FeatureID-ACAUTOCAS-17372
Scenario Outline: ACAUTOCAS-18016:Validate Asset registration service success message should be present with transaction id at <ApplicationStage> of <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user open asset details of "<ApplicationStage>"
    And user click on vehicle Details accordion
    And user reads data from the excel file "<AssetDetailsWB>" under sheet "<AssetDetails_SheetName>" and row <AssetDetails_SheetName_rowNum>
    And user fills vehicle details fields without file number
    And user fills file number in vehicle details
    And user checks for the duplicates in asset details
    And user save the filled details
    When user click on Asset Registration button
    And On PDOC Stage check Activity section
    Then success messages gets stamped in Activity

    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | AssetDetailsWB     | AssetDetails_SheetName | AssetDetails_SheetName_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | asset_details.xlsx | vehicle_details        | 122                           |


   # ${ProductType:["IAF"]}
   # ${ApplicationStage:["Post Approval"]}
   # ${ApplicantType:["indiv"]}
   # PQM-37_CAS-207794
   #FeatureID-ACAUTOCAS-17372
Scenario Outline: ACAUTOCAS-18017:Validate Application should be successfully reach at disbursal of <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user open asset details of "<ApplicationStage>"
    And user click on vehicle Details accordion
    And user reads data from the excel file "<AssetDetailsWB>" under sheet "<AssetDetails_SheetName>" and row <AssetDetails_SheetName_rowNum>
    And user fills vehicle details fields without file number
    And user fills file number in vehicle details
    And user checks for the duplicates in asset details
    And user save the filled details
    And user click on Asset Registration button
    And user complete document printing
    When user clicks on move to next stage
    And user verify application at "Disbursal"
    Then application should move to "Disbursal" stage

    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | AssetDetailsWB     | AssetDetails_SheetName | AssetDetails_SheetName_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | asset_details.xlsx | vehicle_details        | 122                           |


   # ${ProductType:["IAF"]}
   # ${ApplicationStage:["Post Approval"]}
   # ${ApplicantType:["indiv"]}
   # PQM-39_CAS-207794
   #FeatureID-ACAUTOCAS-17372
Scenario Outline: ACAUTOCAS-18018: Validate popup message should be displayed as confirmation to the user stating <msg> at <VarStage> of <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user open asset details of "<ApplicationStage>"
    And user click on vehicle Details accordion
    And user reads data from the excel file "<AssetDetailsWB>" under sheet "<AssetDetails_SheetName>" and row <AssetDetails_SheetName_rowNum>
    And user fills vehicle details fields without file number
    And user fills file number in vehicle details
    And user checks for the duplicates in asset details
    And user save the filled details
    And user click on Asset Registration button
    And user reads data from the excel file "<MoreActionsWB>" under sheet "<MoreActions_sendBack>" and row <Row_Num>
    And user send back above application to "<VarStage>" stage
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<VarStage>" for "<Category>" with "<Key>" from application grid
    And user open asset details of "<ApplicationStage>"
    When user click on de link button in asset details
    Then popup message should be displayed with "<msg>"

    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | AssetDetailsWB     | AssetDetails_SheetName | AssetDetails_SheetName_rowNum | VarStage        | MoreActionsWB     | MoreActions_sendBack | Row_Num | msg                                                                      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | asset_details.xlsx | vehicle_details        | 122                           | Credit Approval | more_actions.xlsx | send_back            | 9       | Asset delinking will result in the cancellation of the registered asset. |

  # ${ProductType:["IAF"]}
  # ${ApplicationStage:["Post Approval"]}
  # ${ApplicantType:["indiv"]}
  # PQM-40_CAS-207794
  #FeatureID-ACAUTOCAS-17372
Scenario Outline: ACAUTOCAS-18019:Validate Asset cancellation service should be triggered successfully with success message at <VarStage> of <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user open asset details of "<ApplicationStage>"
    And user click on vehicle Details accordion
    And user reads data from the excel file "<AssetDetailsWB>" under sheet "<AssetDetails_SheetName>" and row <AssetDetails_SheetName_rowNum>
    And user fills vehicle details fields without file number
    And user fills file number in vehicle details
    And user checks for the duplicates in asset details
    And user save the filled details
    And user click on Asset Registration button
    And user reads data from the excel file "<MoreActionsWB>" under sheet "<MoreActions_sendBack>" and row <Row_Num>
    And user send back above application to "<VarStage>" stage
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<VarStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "<AssetDetailsWB>" under sheet "<AssetDetails_SheetName>" and row <AssetDetails_SheetName_rowNum>
    And user open asset details of "<ApplicationStage>"
    When user de link collateral in asset details
    Then Asset cancellation service should be triggered successfully with success message

    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | AssetDetailsWB     | AssetDetails_SheetName | AssetDetails_SheetName_rowNum | VarStage        | MoreActionsWB     | MoreActions_sendBack | Row_Num |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | asset_details.xlsx | vehicle_details        | 135                           | Credit Approval | more_actions.xlsx | send_back            | 9       |


   # ${ProductType:["IAF"]}
   # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Reconsideration","Credit Approval"]}
   # ${ApplicantType:["indiv"]}
   # PQM-42_CAS-207794
   #FeatureID-ACAUTOCAS-17372
Scenario Outline: ACAUTOCAS-18020:Validate collateral data should be updated from CMS in <AssetType> for <FinanceMode> at <ApplicationStage> of <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user open asset details of "<ApplicationStage>"
    And user de link collateral in asset details
    And user reads data from the excel file "<AssetDetailsWB>" under sheet "<AssetDetails_SheetName>" and row <AssetDetails_SheetName_rowNum>
    And user fills asset details with asset type as "<AssetType>"
    And user reads data from the excel file "<AssetDetailsWB>" under sheet "<AssetDetails_SheetName1>" and row <AssetDetails_SheetName1_rowNum>
    And user click on vehicle Details accordion
    And user fills vehicle details fields without file number
    And user fills file number in vehicle details
    And user checks for the duplicates in asset details
    And user save the filled details
    When user click on collateral refresh button
    Then collateral data should be updated from CMS

    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | AssetType  | FinanceMode | AssetDetailsWB     | AssetDetails_SheetName | AssetDetails_SheetName_rowNum | AssetDetails_SheetName1 | AssetDetails_SheetName1_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | New Asset  | Purchase    | asset_details.xlsx | home                   | 77                            | vehicle_details         | 136                            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Used Asset | Lease       | asset_details.xlsx | home                   | 78                            | vehicle_details         | 136                            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Used Asset | Purchase    | asset_details.xlsx | home                   | 79                            | vehicle_details         | 136                            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Used Asset | Refinance   | asset_details.xlsx | home                   | 80                            | vehicle_details         | 136                            |


  # ${ProductType:["IAF"]}
  # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Reconsideration","Credit Approval"]}
  # ${ApplicantType:["indiv"]}
  # PQM-43_CAS-207794,61_CAS-207794
  #FeatureID-ACAUTOCAS-17372
Scenario Outline: ACAUTOCAS-18021: Validate Asset Registration Service should be executed successfully in <AssetType> for <FinanceMode> at <ApplicationStage> of <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user open asset details of "<ApplicationStage>"
    And user de link collateral in asset details
    And user reads data from the excel file "<AssetDetailsWB>" under sheet "<AssetDetails_SheetName>" and row <AssetDetails_SheetName_rowNum>
    And user fills asset details with asset type as "<AssetType>"
    And user reads data from the excel file "<AssetDetailsWB>" under sheet "<AssetDetails_SheetName1>" and row <AssetDetails_SheetName1_rowNum>
    And user click on vehicle Details accordion
    And user fills vehicle details fields without file number
    And user fills file number in vehicle details
    And user checks for the duplicates in asset details
    And user save the filled details
    And user moves application from "<ApplicationStage>" stage to application of "<ProductType>" product type as "<ApplicantType>" applicant at "<NewStage>" for "<Category>" with "<Key>" stage without opening it
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<NewStage>" for "<Category>" with "<Key>" from application grid
    And user open asset details of "<ApplicationStage>"
    When user click on Asset Registration button
    Then Asset Registration should be triggered successfully
    Examples:
      | ProductType | ApplicantType | ApplicationStage | Category | Key | NewStage | AssetType | FinanceMode | AssetDetailsWB | AssetDetails_SheetName | AssetDetails_SheetName_rowNum | AssetDetails_SheetName1 | AssetDetails_SheetName1_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | | | Post Approval | New Asset | Purchase | asset_details.xlsx | home | 77 | vehicle_details | 132 |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | | | Post Approval | Used Asset | Lease | asset_details.xlsx | home | 78 | vehicle_details | 132 |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | | | Post Approval | Used Asset | Purchase | asset_details.xlsx | home | 79 | vehicle_details | 132 |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | | | Post Approval | Used Asset | Refinance | asset_details.xlsx | home | 80 | vehicle_details | 132 |
