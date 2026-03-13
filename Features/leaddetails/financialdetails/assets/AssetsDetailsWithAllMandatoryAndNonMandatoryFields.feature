@Epic-Applicant_Information
@AuthoredBy-vipin.kishor
@ReviewedBy-None
@AppInfoAdoption
#${ApplicantType:["indiv"]}
#FeatureID-ACAUTOCAS-164
Feature: Fill the assets details with occupation as salaried in financial detail page


  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0

  @Sanity
  Scenario Outline: ACAUTOCAS-3851:  fill the assets with mandatory fields
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user open Employment Details page on the basis of "<ApplicationStage>"
    And user reads data from the excel file "<EmploymentDetailsWB>" under sheet "<EmploymentDetails_home>" and row <EmploymentDetails_home_rowNum>
    And user fills employment details for "<Occupation_Type>"
    And user open financial details
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_assets>" and row <FinancialDetails_assets_rowNum>
    When user fills assets details with "<Mandatory_All>" fields
    Then "<NoOfAssets>" assets details should be added successfully
    @Release @Part-2
    @Conventional
    @ImplementedBy-vipin.kishor
       #${ ProductType : ["PF","HL","AL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
       #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | NoOfAssets | Occupation_Type | ProductType   | ApplicationStage   | ApplicantType   | Category | Key | Mandatory_All | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_assets | FinancialDetails_assets_rowNum |
      | single     | Salaried        | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | mandatory     | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | assets                  | 1                              |


       # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
       # ${ProductType:["IAF","IHF"]}
    @Islamic
    @Release
    @Part-2
    @ImplementedBy-vipin.kishor
    Examples:
      | NoOfAssets | Occupation_Type | ProductType   | ApplicationStage   | ApplicantType   | Category | Key | Mandatory_All | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_assets | FinancialDetails_assets_rowNum |
      | single     | Salaried        | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | mandatory     | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | assets                  | 1                              |

       # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
       # ${ProductType:["IPF"]}
       #${Category:["bonds"]}
    @FixedJsClick
    @Islamic
    @Release
    @Part-2
    @ImplementedBy-vipin.kishor
    Examples:
      | NoOfAssets | Occupation_Type | ProductType   | ApplicationStage   | ApplicantType   | Category   | Key | Mandatory_All | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_assets | FinancialDetails_assets_rowNum |
      | single     | Salaried        | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | mandatory     | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | assets                  | 1                              |


      # ${ProductType:["FAS","GL","JLG","SHG"]}
       # ${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
    @NotImplemented
    Examples:
      | NoOfAssets | Occupation_Type | ProductType   | ApplicationStage   | ApplicantType   | Category | Key | Mandatory_All | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_assets | FinancialDetails_assets_rowNum |
      | single     | Salaried        | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | mandatory     | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | assets                  | 1                              |

  @Sanity
  Scenario Outline: ACAUTOCAS-3852:  fill the assets details with <Mandatory_All> fields
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user open Employment Details page on the basis of "<ApplicationStage>"
    And user reads data from the excel file "<EmploymentDetailsWB>" under sheet "<EmploymentDetails_home>" and row <EmploymentDetails_home_rowNum>
    And user fills employment details for "<Occupation_Type>"
    And user open financial details
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_assets>" and row <FinancialDetails_assets_rowNum>
    When user fills assets details with "<Mandatory_All>" fields
    Then "<NoOfAssets>" assets details should be added successfully
    @Release @Part-2
    @Conventional
    @ImplementedBy-vipin.kishor
       #${ ProductType : ["PF","HL","AL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
       #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | NoOfAssets | Occupation_Type | ProductType   | ApplicationStage   | ApplicantType   | Category | Key | Mandatory_All | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_assets | FinancialDetails_assets_rowNum |
      | single     | Salaried        | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | mandatory     | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | assets                  | 1                              |
      | single     | Salaried        | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | all           | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | assets                  | 1                              |



       # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
       # ${ProductType:["IAF","IHF"]}
    @Islamic
    @Release
    @Part-2
    @ImplementedBy-vipin.kishor
    Examples:
      | NoOfAssets | Occupation_Type | ProductType   | ApplicationStage   | ApplicantType   | Category | Key | Mandatory_All | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_assets | FinancialDetails_assets_rowNum |
      | single     | Salaried        | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | mandatory     | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | assets                  | 1                              |
      | single     | Salaried        | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | all           | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | assets                  | 1                              |


       # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
       # ${ProductType:["IPF"]}
       #${Category:["bonds"]}
    @Islamic
    @Release
    @Part-2
    @ImplementedBy-vipin.kishor
    Examples:
      | NoOfAssets | Occupation_Type | ProductType   | ApplicationStage   | ApplicantType   | Category   | Key | Mandatory_All | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_assets | FinancialDetails_assets_rowNum |
      | single     | Salaried        | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | mandatory     | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | assets                  | 1                              |
      | single     | Salaried        | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | all           | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | assets                  | 1                              |


      # ${ProductType:["FAS","GL","JLG","SHG"]}
       # ${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
    @NotImplemented
    Examples:
      | NoOfAssets | Occupation_Type | ProductType   | ApplicationStage   | ApplicantType   | Category | Key | Mandatory_All | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_assets | FinancialDetails_assets_rowNum |
      | single     | Salaried        | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | mandatory     | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | assets                  | 1                              |
      | single     | Salaried        | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | all           | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | assets                  | 1                              |














