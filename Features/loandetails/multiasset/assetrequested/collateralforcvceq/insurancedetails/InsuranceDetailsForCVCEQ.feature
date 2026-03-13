@Epic-Loan_Application_Details
@AuthoredBy-harshita.nayak
@Conventional
@Islamic
@Deferred
Feature: Insurance Details Validation for Commercial Vehicle and Commercial Equipment under Multi Asset


  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0

     #Prerequisite:Application already punch with application type as Multi Asset
 # ${ ProductType : ["CEQ","CV"]}
# ${ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
  #${ApplicantType:["indiv","nonindiv"]}
   #FeatureID-ACAUTOCAS-11906
  @ImplementedBy-kanika.mahal
  Scenario Outline:Required list of field validation for Insurance Details for Funding For as <FundingFor> in collateral details at "<ApplicationStage>" in "<ProductType>"
    And user reads data from the excel file "sourcing_details.xlsx" under sheet "home" and row 286
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user navigates to asset requested page for "<ApplicationStage>"
    And user reads data from the excel file "asset_details.xlsx" under sheet "multi_asset_details" and row 47
    And user select Funding For as "<FundingFor>"
    And user select Finance Mode as "<FinanceMode>"
    And user select asset type as Used Asset
    And user edit the added asset requested details
    And user opens Collateral Details section
    And user edit the collateral details
    When user opens Insurance Details section under collateral details page
    And user select Required Fields in Insurance Details
    Then list of field should be present for Insurance Details in collateral details as required field
      | Insurance Company |
      | Coverage Amount   |
      | Coverage Type     |
      | Loss Payee        |
      | Premium Amount    |

    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | FundingFor | FinanceMode |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Purchase    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Refinance   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Purchase    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Refinance   |

      #Prerequisite:Application already punch with application type as Multi Asset
# ${ ProductType : ["CEQ","CV"]}
# ${ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
#${ApplicantType:["indiv","nonindiv"]}
   #FeatureID-ACAUTOCAS-11906
  @ImplementedBy-kanika.mahal
  Scenario Outline:Required list of field validation for Insurance Details for Funding For as <FundingFor> under collateral details at "<ApplicationStage>" in "<ProductType>"
    And user reads data from the excel file "sourcing_details.xlsx" under sheet "home" and row 286
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user navigates to asset requested page for "<ApplicationStage>"
    And user reads data from the excel file "asset_details.xlsx" under sheet "multi_asset_details" and row 47
    And user select Funding For as "<FundingFor>"
    And user select Finance Mode as "<FinanceMode>"
    And user select asset type as Used Asset
    And user edit the added asset requested details
    And user opens Collateral Details section
    And user edit the collateral details
    When user opens Insurance Details section under collateral details page
    And user select Required Fields in Insurance Details
    Then list of field should be present for Insurance Details in collateral details as required field
      | Insurance Company |
      | Coverage Amount   |
      | Coverage Type     |
      | Loss Payee        |
      | Premium Amount    |

    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | FundingFor | FinanceMode |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Refinance   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Purchase    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Refinance   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Purchase    |

       #Prerequisite:Application already punch with application type as Multi Asset
 # ${ ProductType : ["CEQ","CV"]}
# ${ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
#${ApplicantType:["indiv","nonindiv"]}
   #FeatureID-ACAUTOCAS-11906
  @ImplementedBy-kanika.mahal
  Scenario Outline:Fields validation in All Fields for Insurance Details for Funding For as <FundingFor> in collateral details for multi Asset at "<ApplicationStage>" in "<ProductType>"
    And user reads data from the excel file "sourcing_details.xlsx" under sheet "home" and row 286
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user navigates to asset requested page for "<ApplicationStage>"
    And user reads data from the excel file "asset_details.xlsx" under sheet "multi_asset_details" and row 47
    And user select Funding For as "<FundingFor>"
    And user select Finance Mode as "<FinanceMode>"
    And user select asset type as Used Asset
    And user edit the added asset requested details
    And user opens Collateral Details section
    And user edit the collateral details
    When user opens Insurance Details section under collateral details page
    And user select All Fields in Insurance Details
    Then list of field should be present for in Insurance Details
      | Insurance Company        |
      | Coverage Amount          |
      | Coverage Type            |
      | Loss Payee               |
      | Premium Amount           |
      | Policy Number            |
      | Cover Note Number        |
      | Cover Note Creation Date |
      | Start Date               |
      | Maturity Date            |
      | Insurance Term           |

    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | FundingFor | FinanceMode |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Purchase    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Refinance   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Purchase    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Refinance   |

# ${ ProductType : ["CEQ","CV"]}
# ${ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
#${ApplicantType:["indiv","nonindiv"]}
   #FeatureID-ACAUTOCAS-11906
  @ImplementedBy-kanika.mahal
  Scenario Outline:Fields validation in All Fields for Insurance Details for Funding For as <FundingFor> under collateral details for multi Asset at "<ApplicationStage>" in "<ProductType>"
    And user reads data from the excel file "sourcing_details.xlsx" under sheet "home" and row 286
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user navigates to asset requested page for "<ApplicationStage>"
    And user select Funding For as "<FundingFor>"
    And user select Finance Mode as "<FinanceMode>"
    And user select asset type as Used Asset
    And user edit the added asset requested details
    And user opens Collateral Details section
    And user edit the collateral details
    When user opens Insurance Details section under collateral details page
    And user select All Fields in Insurance Details
    Then list of field should be present for in Insurance Details
      | Insurance Company        |
      | Coverage Amount          |
      | Coverage Type            |
      | Loss Payee               |
      | Premium Amount           |
      | Policy Number            |
      | Cover Note Number        |
      | Cover Note Creation Date |
      | Start Date               |
      | Maturity Date            |
      | Insurance Term           |

    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | FundingFor | FinanceMode |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Refinance   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Purchase    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Refinance   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Purchase    |


       #Prerequisite:Application already punch with application type as Multi Asset
 # ${ ProductType : ["CEQ","CV"]}
# ${ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
#${ApplicantType:["indiv","nonindiv"]}
   #FeatureID-ACAUTOCAS-11906
  @ImplementedBy-kanika.mahal
  Scenario Outline:Validation of <Field_Name> for Insurance Details with <InputType> for Funding For as <FundingFor> in collateral details for multi Asset at "<ApplicationStage>" in "<ProductType>"
    And user reads data from the excel file "sourcing_details.xlsx" under sheet "home" and row 286
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user navigates to asset requested page for "<ApplicationStage>"
    And user select Funding For as "<FundingFor>"
    And user select Finance Mode as "<FinanceMode>"
    And user select asset type as Used Asset
    And user edit the added asset requested details
    And user opens Collateral Details section
    And user edit the collateral details
    And user opens Insurance Details section under collateral details page
    And user adds the insurance details
    And user reads data from the excel file "<AssetDetailsWB>" under sheet "<AssetDetailsWB_insuranceDetailsSheet>" and row <AssetDetailsWB_insuranceDetailsSheet_rowNum>
    When user fills "<Field_Name>" field with "<InputType>"
    Then "<Field_Name>" field "<Throws_notThrows>" with proper message
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | FundingFor | FinanceMode | Field_Name               | InputType                                | Throws_notThrows                   | AssetDetailsWB     | AssetDetailsWB_insuranceDetailsSheet | AssetDetailsWB_insuranceDetailsSheet_rowNum |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Purchase    | Coverage Amount          | valid value                              | does not throw any error           | asset_details.xlsx | insurance_details                    | 0                                           |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Refinance   | Coverage Amount          | valid value                              | does not throw any error           | asset_details.xlsx | insurance_details                    | 0                                           |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Purchase    | Coverage Amount          | valid value                              | does not throw any error           | asset_details.xlsx | insurance_details                    | 0                                           |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Refinance   | Coverage Amount          | valid value                              | does not throw any error           | asset_details.xlsx | insurance_details                    | 0                                           |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Purchase    | Coverage Amount          | up to 18 digits                          | does not throw any error           | asset_details.xlsx | insurance_details                    | 1                                           |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Refinance   | Coverage Amount          | up to 18 digits                          | does not throw any error           | asset_details.xlsx | insurance_details                    | 1                                           |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Purchase    | Coverage Amount          | up to 18 digits                          | does not throw any error           | asset_details.xlsx | insurance_details                    | 1                                           |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Refinance   | Coverage Amount          | up to 18 digits                          | does not throw any error           | asset_details.xlsx | insurance_details                    | 1                                           |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Purchase    | Coverage Amount          | both digits and characters               | throws an error with error message | asset_details.xlsx | insurance_details                    | 2                                           |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Refinance   | Coverage Amount          | both digits and characters               | throws an error with error message | asset_details.xlsx | insurance_details                    | 2                                           |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Purchase    | Coverage Amount          | both digits and characters               | throws an error with error message | asset_details.xlsx | insurance_details                    | 2                                           |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Refinance   | Coverage Amount          | both digits and characters               | throws an error with error message | asset_details.xlsx | insurance_details                    | 2                                           |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Purchase    | Coverage Amount          | special characters                       | throws an error with error message | asset_details.xlsx | insurance_details                    | 3                                           |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Refinance   | Coverage Amount          | special characters                       | throws an error with error message | asset_details.xlsx | insurance_details                    | 3                                           |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Purchase    | Coverage Amount          | special characters                       | throws an error with error message | asset_details.xlsx | insurance_details                    | 3                                           |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Refinance   | Coverage Amount          | special characters                       | throws an error with error message | asset_details.xlsx | insurance_details                    | 3                                           |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Purchase    | Coverage Amount          | space                                    | throws an error with error message | asset_details.xlsx | insurance_details                    | 4                                           |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Refinance   | Coverage Amount          | space                                    | throws an error with error message | asset_details.xlsx | insurance_details                    | 4                                           |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Purchase    | Coverage Amount          | space                                    | throws an error with error message | asset_details.xlsx | insurance_details                    | 4                                           |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Refinance   | Coverage Amount          | space                                    | throws an error with error message | asset_details.xlsx | insurance_details                    | 4                                           |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Purchase    | Coverage Amount          | paise format                             | does not throw any error           | asset_details.xlsx | insurance_details                    | 5                                           |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Refinance   | Coverage Amount          | paise format                             | does not throw any error           | asset_details.xlsx | insurance_details                    | 5                                           |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Purchase    | Coverage Amount          | paise format                             | does not throw any error           | asset_details.xlsx | insurance_details                    | 5                                           |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Refinance   | Coverage Amount          | paise format                             | does not throw any error           | asset_details.xlsx | insurance_details                    | 5                                           |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Purchase    | Coverage Amount          | zero value                               | does not throw any error           | asset_details.xlsx | insurance_details                    | 6                                           |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Refinance   | Coverage Amount          | zero value                               | does not throw any error           | asset_details.xlsx | insurance_details                    | 6                                           |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Purchase    | Coverage Amount          | zero value                               | does not throw any error           | asset_details.xlsx | insurance_details                    | 6                                           |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Refinance   | Coverage Amount          | zero value                               | does not throw any error           | asset_details.xlsx | insurance_details                    | 6                                           |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Purchase    | Coverage Amount          | equal to Premium Amount                  | throws an error with error message | asset_details.xlsx | insurance_details                    | 7                                           |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Refinance   | Coverage Amount          | equal to Premium Amount                  | throws an error with error message | asset_details.xlsx | insurance_details                    | 7                                           |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Purchase    | Coverage Amount          | equal to Premium Amount                  | throws an error with error message | asset_details.xlsx | insurance_details                    | 7                                           |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Refinance   | Coverage Amount          | equal to Premium Amount                  | throws an error with error message | asset_details.xlsx | insurance_details                    | 7                                           |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Purchase    | Coverage Amount          | negative value                           | throws an error with error message | asset_details.xlsx | insurance_details                    | 8                                           |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Refinance   | Coverage Amount          | negative value                           | throws an error with error message | asset_details.xlsx | insurance_details                    | 8                                           |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Purchase    | Coverage Amount          | negative value                           | throws an error with error message | asset_details.xlsx | insurance_details                    | 8                                           |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Refinance   | Coverage Amount          | negative value                           | throws an error with error message | asset_details.xlsx | insurance_details                    | 8                                           |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Purchase    | Coverage Amount          | less than Premium Amount                 | throws an error with error message | asset_details.xlsx | insurance_details                    | 9                                           |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Refinance   | Coverage Amount          | less than Premium Amount                 | throws an error with error message | asset_details.xlsx | insurance_details                    | 9                                           |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Purchase    | Coverage Amount          | less than Premium Amount                 | throws an error with error message | asset_details.xlsx | insurance_details                    | 9                                           |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Refinance   | Coverage Amount          | less than Premium Amount                 | throws an error with error message | asset_details.xlsx | insurance_details                    | 9                                           |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Purchase    | Premium Amount           | valid value                              | does not throw any error           | asset_details.xlsx | insurance_details                    | 10                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Refinance   | Premium Amount           | valid value                              | does not throw any error           | asset_details.xlsx | insurance_details                    | 10                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Purchase    | Premium Amount           | valid value                              | does not throw any error           | asset_details.xlsx | insurance_details                    | 10                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Refinance   | Premium Amount           | valid value                              | does not throw any error           | asset_details.xlsx | insurance_details                    | 10                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Purchase    | Premium Amount           | up to 18 digits                          | does not throw any error           | asset_details.xlsx | insurance_details                    | 11                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Refinance   | Premium Amount           | up to 18 digits                          | does not throw any error           | asset_details.xlsx | insurance_details                    | 11                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Purchase    | Premium Amount           | up to 18 digits                          | does not throw any error           | asset_details.xlsx | insurance_details                    | 11                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Refinance   | Premium Amount           | up to 18 digits                          | does not throw any error           | asset_details.xlsx | insurance_details                    | 11                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Purchase    | Premium Amount           | both digits and characters               | throws an error with error message | asset_details.xlsx | insurance_details                    | 12                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Refinance   | Premium Amount           | both digits and characters               | throws an error with error message | asset_details.xlsx | insurance_details                    | 12                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Purchase    | Premium Amount           | both digits and characters               | throws an error with error message | asset_details.xlsx | insurance_details                    | 12                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Refinance   | Premium Amount           | both digits and characters               | throws an error with error message | asset_details.xlsx | insurance_details                    | 12                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Purchase    | Premium Amount           | special characters                       | throws an error with error message | asset_details.xlsx | insurance_details                    | 13                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Refinance   | Premium Amount           | special characters                       | throws an error with error message | asset_details.xlsx | insurance_details                    | 13                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Purchase    | Premium Amount           | special characters                       | throws an error with error message | asset_details.xlsx | insurance_details                    | 13                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Refinance   | Premium Amount           | special characters                       | throws an error with error message | asset_details.xlsx | insurance_details                    | 13                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Purchase    | Premium Amount           | space                                    | throws an error with error message | asset_details.xlsx | insurance_details                    | 14                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Refinance   | Premium Amount           | space                                    | throws an error with error message | asset_details.xlsx | insurance_details                    | 14                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Purchase    | Premium Amount           | space                                    | throws an error with error message | asset_details.xlsx | insurance_details                    | 14                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Refinance   | Premium Amount           | space                                    | throws an error with error message | asset_details.xlsx | insurance_details                    | 14                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Purchase    | Premium Amount           | paise format                             | does not throw any error           | asset_details.xlsx | insurance_details                    | 15                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Refinance   | Premium Amount           | paise format                             | does not throw any error           | asset_details.xlsx | insurance_details                    | 15                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Purchase    | Premium Amount           | paise format                             | does not throw any error           | asset_details.xlsx | insurance_details                    | 15                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Refinance   | Premium Amount           | paise format                             | does not throw any error           | asset_details.xlsx | insurance_details                    | 15                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Purchase    | Premium Amount           | zero value                               | does not throw any error           | asset_details.xlsx | insurance_details                    | 16                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Refinance   | Premium Amount           | zero value                               | does not throw any error           | asset_details.xlsx | insurance_details                    | 16                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Purchase    | Premium Amount           | zero value                               | does not throw any error           | asset_details.xlsx | insurance_details                    | 16                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Refinance   | Premium Amount           | zero value                               | does not throw any error           | asset_details.xlsx | insurance_details                    | 16                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Purchase    | Premium Amount           | negative value                           | throws an error with error message | asset_details.xlsx | insurance_details                    | 17                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Refinance   | Premium Amount           | negative value                           | throws an error with error message | asset_details.xlsx | insurance_details                    | 17                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Purchase    | Premium Amount           | negative value                           | throws an error with error message | asset_details.xlsx | insurance_details                    | 17                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Refinance   | Premium Amount           | negative value                           | throws an error with error message | asset_details.xlsx | insurance_details                    | 17                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Purchase    | Premium Amount           | equal to coverage Amount                 | throws an error with error message | asset_details.xlsx | insurance_details                    | 18                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Refinance   | Premium Amount           | equal to coverage Amount                 | throws an error with error message | asset_details.xlsx | insurance_details                    | 18                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Purchase    | Premium Amount           | equal to coverage Amount                 | throws an error with error message | asset_details.xlsx | insurance_details                    | 18                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Refinance   | Premium Amount           | equal to coverage Amount                 | throws an error with error message | asset_details.xlsx | insurance_details                    | 18                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Purchase    | Premium Amount           | more than coverage amount                | throws an error with error message | asset_details.xlsx | insurance_details                    | 19                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Refinance   | Premium Amount           | more than coverage amount                | throws an error with error message | asset_details.xlsx | insurance_details                    | 19                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Purchase    | Premium Amount           | more than coverage amount                | throws an error with error message | asset_details.xlsx | insurance_details                    | 19                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Refinance   | Premium Amount           | more than coverage amount                | throws an error with error message | asset_details.xlsx | insurance_details                    | 19                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Purchase    | Loss Payee               | valid value                              | does not throw any error           | asset_details.xlsx | insurance_details                    | 20                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Refinance   | Loss Payee               | valid value                              | does not throw any error           | asset_details.xlsx | insurance_details                    | 20                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Purchase    | Loss Payee               | valid value                              | does not throw any error           | asset_details.xlsx | insurance_details                    | 20                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Refinance   | Loss Payee               | valid value                              | does not throw any error           | asset_details.xlsx | insurance_details                    | 20                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Purchase    | Loss Payee               | both digits and characters               | does not throw any error           | asset_details.xlsx | insurance_details                    | 21                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Refinance   | Loss Payee               | both digits and characters               | does not throw any error           | asset_details.xlsx | insurance_details                    | 21                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Purchase    | Loss Payee               | both digits and characters               | does not throw any error           | asset_details.xlsx | insurance_details                    | 21                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Refinance   | Loss Payee               | both digits and characters               | does not throw any error           | asset_details.xlsx | insurance_details                    | 21                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Purchase    | Loss Payee               | special characters with hyphen           | does not throw any error           | asset_details.xlsx | insurance_details                    | 22                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Refinance   | Loss Payee               | special characters with hyphen           | does not throw any error           | asset_details.xlsx | insurance_details                    | 22                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Purchase    | Loss Payee               | special characters with hyphen           | does not throw any error           | asset_details.xlsx | insurance_details                    | 22                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Refinance   | Loss Payee               | special characters with hyphen           | does not throw any error           | asset_details.xlsx | insurance_details                    | 22                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Purchase    | Loss Payee               | space                                    | does not throw any error           | asset_details.xlsx | insurance_details                    | 23                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Refinance   | Loss Payee               | space                                    | does not throw any error           | asset_details.xlsx | insurance_details                    | 23                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Purchase    | Loss Payee               | space                                    | does not throw any error           | asset_details.xlsx | insurance_details                    | 23                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Refinance   | Loss Payee               | space                                    | does not throw any error           | asset_details.xlsx | insurance_details                    | 23                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Purchase    | Loss Payee               | negative value                           | does not throw any error           | asset_details.xlsx | insurance_details                    | 24                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Refinance   | Loss Payee               | negative value                           | does not throw any error           | asset_details.xlsx | insurance_details                    | 24                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Purchase    | Loss Payee               | negative value                           | does not throw any error           | asset_details.xlsx | insurance_details                    | 24                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Refinance   | Loss Payee               | negative value                           | does not throw any error           | asset_details.xlsx | insurance_details                    | 24                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Purchase    | Loss Payee               | special characters                       | throws an error with error message | asset_details.xlsx | insurance_details                    | 25                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Refinance   | Loss Payee               | special characters                       | throws an error with error message | asset_details.xlsx | insurance_details                    | 25                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Purchase    | Loss Payee               | special characters                       | throws an error with error message | asset_details.xlsx | insurance_details                    | 25                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Refinance   | Loss Payee               | special characters                       | throws an error with error message | asset_details.xlsx | insurance_details                    | 25                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Purchase    | Loss Payee               | special characters with open brackets    | does not throw any error           | asset_details.xlsx | insurance_details                    | 26                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Refinance   | Loss Payee               | special characters with open brackets    | does not throw any error           | asset_details.xlsx | insurance_details                    | 26                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Purchase    | Loss Payee               | special characters with open brackets    | does not throw any error           | asset_details.xlsx | insurance_details                    | 26                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Refinance   | Loss Payee               | special characters with open brackets    | does not throw any error           | asset_details.xlsx | insurance_details                    | 26                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Purchase    | Loss Payee               | special characters with close brackets   | does not throw any error           | asset_details.xlsx | insurance_details                    | 27                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Refinance   | Loss Payee               | special characters with close brackets   | does not throw any error           | asset_details.xlsx | insurance_details                    | 27                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Purchase    | Loss Payee               | special characters with close brackets   | does not throw any error           | asset_details.xlsx | insurance_details                    | 27                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Refinance   | Loss Payee               | special characters with close brackets   | does not throw any error           | asset_details.xlsx | insurance_details                    | 27                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Purchase    | Loss Payee               | special characters with exclamation mark | does not throw any error           | asset_details.xlsx | insurance_details                    | 28                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Refinance   | Loss Payee               | special characters with exclamation mark | does not throw any error           | asset_details.xlsx | insurance_details                    | 28                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Purchase    | Loss Payee               | special characters with exclamation mark | does not throw any error           | asset_details.xlsx | insurance_details                    | 28                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Refinance   | Loss Payee               | special characters with exclamation mark | does not throw any error           | asset_details.xlsx | insurance_details                    | 28                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Purchase    | Loss Payee               | special characters with comma            | does not throw any error           | asset_details.xlsx | insurance_details                    | 29                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Refinance   | Loss Payee               | special characters with comma            | does not throw any error           | asset_details.xlsx | insurance_details                    | 29                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Purchase    | Loss Payee               | special characters with comma            | does not throw any error           | asset_details.xlsx | insurance_details                    | 29                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Refinance   | Loss Payee               | special characters with comma            | does not throw any error           | asset_details.xlsx | insurance_details                    | 29                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Purchase    | Loss Payee               | special characters with and operator     | does not throw any error           | asset_details.xlsx | insurance_details                    | 30                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Refinance   | Loss Payee               | special characters with and operator     | does not throw any error           | asset_details.xlsx | insurance_details                    | 30                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Purchase    | Loss Payee               | special characters with and operator     | does not throw any error           | asset_details.xlsx | insurance_details                    | 30                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Refinance   | Loss Payee               | special characters with and operator     | does not throw any error           | asset_details.xlsx | insurance_details                    | 30                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Purchase    | Loss Payee               | special characters with dollar sign      | does not throw any error           | asset_details.xlsx | insurance_details                    | 31                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Refinance   | Loss Payee               | special characters with dollar sign      | does not throw any error           | asset_details.xlsx | insurance_details                    | 31                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Purchase    | Loss Payee               | special characters with dollar sign      | does not throw any error           | asset_details.xlsx | insurance_details                    | 31                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Refinance   | Loss Payee               | special characters with dollar sign      | does not throw any error           | asset_details.xlsx | insurance_details                    | 31                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Purchase    | Loss Payee               | special characters with forward sign     | does not throw any error           | asset_details.xlsx | insurance_details                    | 32                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Refinance   | Loss Payee               | special characters with forward sign     | does not throw any error           | asset_details.xlsx | insurance_details                    | 32                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Purchase    | Loss Payee               | special characters with forward sign     | does not throw any error           | asset_details.xlsx | insurance_details                    | 32                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Refinance   | Loss Payee               | special characters with forward sign     | does not throw any error           | asset_details.xlsx | insurance_details                    | 32                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Purchase    | Cover Note Number        | valid value                              | does not throw any error           | asset_details.xlsx | insurance_details                    | 33                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Refinance   | Cover Note Number        | valid value                              | does not throw any error           | asset_details.xlsx | insurance_details                    | 33                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Purchase    | Cover Note Number        | valid value                              | does not throw any error           | asset_details.xlsx | insurance_details                    | 33                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Refinance   | Cover Note Number        | valid value                              | does not throw any error           | asset_details.xlsx | insurance_details                    | 33                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Purchase    | Cover Note Number        | both digits and characters               | does not throw any error           | asset_details.xlsx | insurance_details                    | 34                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Refinance   | Cover Note Number        | both digits and characters               | does not throw any error           | asset_details.xlsx | insurance_details                    | 34                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Purchase    | Cover Note Number        | both digits and characters               | does not throw any error           | asset_details.xlsx | insurance_details                    | 34                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Refinance   | Cover Note Number        | both digits and characters               | does not throw any error           | asset_details.xlsx | insurance_details                    | 34                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Purchase    | Cover Note Number        | space                                    | throws an error with error message | asset_details.xlsx | insurance_details                    | 35                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Refinance   | Cover Note Number        | space                                    | throws an error with error message | asset_details.xlsx | insurance_details                    | 35                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Purchase    | Cover Note Number        | space                                    | throws an error with error message | asset_details.xlsx | insurance_details                    | 35                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Refinance   | Cover Note Number        | space                                    | throws an error with error message | asset_details.xlsx | insurance_details                    | 35                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Purchase    | Cover Note Number        | negative value                           | throws an error with error message | asset_details.xlsx | insurance_details                    | 36                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Refinance   | Cover Note Number        | negative value                           | throws an error with error message | asset_details.xlsx | insurance_details                    | 36                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Purchase    | Cover Note Number        | negative value                           | throws an error with error message | asset_details.xlsx | insurance_details                    | 36                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Refinance   | Cover Note Number        | negative value                           | throws an error with error message | asset_details.xlsx | insurance_details                    | 36                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Purchase    | Cover Note Number        | digit with hyphen                        | does not throw any error           | asset_details.xlsx | insurance_details                    | 37                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Refinance   | Cover Note Number        | digit with hyphen                        | does not throw any error           | asset_details.xlsx | insurance_details                    | 37                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Purchase    | Cover Note Number        | digit with hyphen                        | does not throw any error           | asset_details.xlsx | insurance_details                    | 37                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Refinance   | Cover Note Number        | digit with hyphen                        | does not throw any error           | asset_details.xlsx | insurance_details                    | 37                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Purchase    | Cover Note Number        | special character with hyphen            | throws an error with error message | asset_details.xlsx | insurance_details                    | 38                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Refinance   | Cover Note Number        | special character with hyphen            | throws an error with error message | asset_details.xlsx | insurance_details                    | 38                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Purchase    | Cover Note Number        | special character with hyphen            | throws an error with error message | asset_details.xlsx | insurance_details                    | 38                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Refinance   | Cover Note Number        | special character with hyphen            | throws an error with error message | asset_details.xlsx | insurance_details                    | 38                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Purchase    | Cover Note Number        | special character with underscore        | throws an error with error message | asset_details.xlsx | insurance_details                    | 39                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Refinance   | Cover Note Number        | special character with underscore        | throws an error with error message | asset_details.xlsx | insurance_details                    | 39                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Purchase    | Cover Note Number        | special character with underscore        | throws an error with error message | asset_details.xlsx | insurance_details                    | 39                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Refinance   | Cover Note Number        | special character with underscore        | throws an error with error message | asset_details.xlsx | insurance_details                    | 39                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Purchase    | Cover Note Number        | digit with underscore                    | does not throw any error           | asset_details.xlsx | insurance_details                    | 40                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Refinance   | Cover Note Number        | digit with underscore                    | does not throw any error           | asset_details.xlsx | insurance_details                    | 40                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Purchase    | Cover Note Number        | digit with underscore                    | does not throw any error           | asset_details.xlsx | insurance_details                    | 40                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Refinance   | Cover Note Number        | digit with underscore                    | does not throw any error           | asset_details.xlsx | insurance_details                    | 40                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Purchase    | Cover Note Number        | special character with forward slash     | throws an error with error message | asset_details.xlsx | insurance_details                    | 41                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Refinance   | Cover Note Number        | special character with forward slash     | throws an error with error message | asset_details.xlsx | insurance_details                    | 41                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Purchase    | Cover Note Number        | special character with forward slash     | throws an error with error message | asset_details.xlsx | insurance_details                    | 41                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Refinance   | Cover Note Number        | special character with forward slash     | throws an error with error message | asset_details.xlsx | insurance_details                    | 41                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Purchase    | Cover Note Number        | digit with forward slash                 | does not throw any error           | asset_details.xlsx | insurance_details                    | 42                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Refinance   | Cover Note Number        | digit with forward slash                 | does not throw any error           | asset_details.xlsx | insurance_details                    | 42                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Purchase    | Cover Note Number        | digit with forward slash                 | does not throw any error           | asset_details.xlsx | insurance_details                    | 42                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Refinance   | Cover Note Number        | digit with forward slash                 | does not throw any error           | asset_details.xlsx | insurance_details                    | 42                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Purchase    | Cover Note Number        | special character with backward slash    | throws an error with error message | asset_details.xlsx | insurance_details                    | 43                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Refinance   | Cover Note Number        | special character with backward slash    | throws an error with error message | asset_details.xlsx | insurance_details                    | 43                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Purchase    | Cover Note Number        | special character with backward slash    | throws an error with error message | asset_details.xlsx | insurance_details                    | 43                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Refinance   | Cover Note Number        | special character with backward slash    | throws an error with error message | asset_details.xlsx | insurance_details                    | 43                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Purchase    | Cover Note Number        | digit with backward slash                | does not throw any error           | asset_details.xlsx | insurance_details                    | 44                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Refinance   | Cover Note Number        | digit with backward slash                | does not throw any error           | asset_details.xlsx | insurance_details                    | 44                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Purchase    | Cover Note Number        | digit with backward slash                | does not throw any error           | asset_details.xlsx | insurance_details                    | 44                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Refinance   | Cover Note Number        | digit with backward slash                | does not throw any error           | asset_details.xlsx | insurance_details                    | 44                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Purchase    | Cover Note Number        | special character                        | throws an error with error message | asset_details.xlsx | insurance_details                    | 45                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Refinance   | Cover Note Number        | special character                        | throws an error with error message | asset_details.xlsx | insurance_details                    | 45                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Purchase    | Cover Note Number        | special character                        | throws an error with error message | asset_details.xlsx | insurance_details                    | 45                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Refinance   | Cover Note Number        | special character                        | throws an error with error message | asset_details.xlsx | insurance_details                    | 45                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Purchase    | Cover Note Creation Date | valid date                               | does not throw any error           | asset_details.xlsx | insurance_details                    | 46                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Refinance   | Cover Note Creation Date | valid date                               | does not throw any error           | asset_details.xlsx | insurance_details                    | 46                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Purchase    | Cover Note Creation Date | valid date                               | does not throw any error           | asset_details.xlsx | insurance_details                    | 46                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Refinance   | Cover Note Creation Date | valid date                               | does not throw any error           | asset_details.xlsx | insurance_details                    | 46                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Purchase    | Cover Note Creation Date | more than current date                   | throws an error with error message | asset_details.xlsx | insurance_details                    | 47                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Refinance   | Cover Note Creation Date | more than current date                   | throws an error with error message | asset_details.xlsx | insurance_details                    | 47                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Purchase    | Cover Note Creation Date | more than current date                   | throws an error with error message | asset_details.xlsx | insurance_details                    | 47                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Refinance   | Cover Note Creation Date | more than current date                   | throws an error with error message | asset_details.xlsx | insurance_details                    | 47                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Purchase    | Cover Note Creation Date | before 1942                              | throws an error with error message | asset_details.xlsx | insurance_details                    | 48                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Refinance   | Cover Note Creation Date | before 1942                              | throws an error with error message | asset_details.xlsx | insurance_details                    | 48                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Purchase    | Cover Note Creation Date | before 1942                              | throws an error with error message | asset_details.xlsx | insurance_details                    | 48                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Refinance   | Cover Note Creation Date | before 1942                              | throws an error with error message | asset_details.xlsx | insurance_details                    | 48                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Purchase    | Cover Note Creation Date | equal to start date                      | does not throw any error           | asset_details.xlsx | insurance_details                    | 49                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Refinance   | Cover Note Creation Date | equal to start date                      | does not throw any error           | asset_details.xlsx | insurance_details                    | 49                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Purchase    | Cover Note Creation Date | equal to start date                      | does not throw any error           | asset_details.xlsx | insurance_details                    | 49                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Refinance   | Cover Note Creation Date | equal to start date                      | does not throw any error           | asset_details.xlsx | insurance_details                    | 49                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Purchase    | Start Date               | valid date                               | does not throw any error           | asset_details.xlsx | insurance_details                    | 50                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Refinance   | Start Date               | valid date                               | does not throw any error           | asset_details.xlsx | insurance_details                    | 50                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Purchase    | Start Date               | valid date                               | does not throw any error           | asset_details.xlsx | insurance_details                    | 50                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Refinance   | Start Date               | valid date                               | does not throw any error           | asset_details.xlsx | insurance_details                    | 50                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Purchase    | Start Date               | before 1942                              | throws an error with error message | asset_details.xlsx | insurance_details                    | 51                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Refinance   | Start Date               | before 1942                              | throws an error with error message | asset_details.xlsx | insurance_details                    | 51                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Purchase    | Start Date               | before 1942                              | throws an error with error message | asset_details.xlsx | insurance_details                    | 51                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Refinance   | Start Date               | before 1942                              | throws an error with error message | asset_details.xlsx | insurance_details                    | 51                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Purchase    | Maturity Date            | valid date                               | does not throw any error           | asset_details.xlsx | insurance_details                    | 52                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Refinance   | Maturity Date            | valid date                               | does not throw any error           | asset_details.xlsx | insurance_details                    | 52                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Purchase    | Maturity Date            | valid date                               | does not throw any error           | asset_details.xlsx | insurance_details                    | 52                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Refinance   | Maturity Date            | valid date                               | does not throw any error           | asset_details.xlsx | insurance_details                    | 52                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Purchase    | Maturity Date            | more than current date                   | does not throw any error           | asset_details.xlsx | insurance_details                    | 53                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Refinance   | Maturity Date            | more than current date                   | does not throw any error           | asset_details.xlsx | insurance_details                    | 53                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Purchase    | Maturity Date            | more than current date                   | does not throw any error           | asset_details.xlsx | insurance_details                    | 53                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Refinance   | Maturity Date            | more than current date                   | does not throw any error           | asset_details.xlsx | insurance_details                    | 53                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Purchase    | Maturity Date            | before 1942                              | throws an error with error message | asset_details.xlsx | insurance_details                    | 54                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Refinance   | Maturity Date            | before 1942                              | throws an error with error message | asset_details.xlsx | insurance_details                    | 54                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Purchase    | Maturity Date            | before 1942                              | throws an error with error message | asset_details.xlsx | insurance_details                    | 54                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Refinance   | Maturity Date            | before 1942                              | throws an error with error message | asset_details.xlsx | insurance_details                    | 54                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Purchase    | Maturity Date            | less than start date                     | throws an error with error message | asset_details.xlsx | insurance_details                    | 55                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Refinance   | Maturity Date            | less than start date                     | throws an error with error message | asset_details.xlsx | insurance_details                    | 55                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Purchase    | Maturity Date            | less than start date                     | throws an error with error message | asset_details.xlsx | insurance_details                    | 55                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Refinance   | Maturity Date            | less than start date                     | throws an error with error message | asset_details.xlsx | insurance_details                    | 55                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Purchase    | Maturity Date            | more than start date                     | does not throw any error           | asset_details.xlsx | insurance_details                    | 56                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Refinance   | Maturity Date            | more than start date                     | does not throw any error           | asset_details.xlsx | insurance_details                    | 56                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Purchase    | Maturity Date            | more than start date                     | does not throw any error           | asset_details.xlsx | insurance_details                    | 56                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Refinance   | Maturity Date            | more than start date                     | does not throw any error           | asset_details.xlsx | insurance_details                    | 56                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Purchase    | Maturity Date            | equal to start date                      | does not throw any error           | asset_details.xlsx | insurance_details                    | 57                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Refinance   | Maturity Date            | equal to start date                      | does not throw any error           | asset_details.xlsx | insurance_details                    | 57                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Purchase    | Maturity Date            | equal to start date                      | does not throw any error           | asset_details.xlsx | insurance_details                    | 57                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Refinance   | Maturity Date            | equal to start date                      | does not throw any error           | asset_details.xlsx | insurance_details                    | 57                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Purchase    | Policy Number            | positive digits                          | does not throw any error           | asset_details.xlsx | insurance_details                    | 58                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Refinance   | Policy Number            | positive digits                          | does not throw any error           | asset_details.xlsx | insurance_details                    | 58                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Purchase    | Policy Number            | positive digits                          | does not throw any error           | asset_details.xlsx | insurance_details                    | 58                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Refinance   | Policy Number            | positive digits                          | does not throw any error           | asset_details.xlsx | insurance_details                    | 58                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Purchase    | Policy Number            | characters                               | does not throw any error           | asset_details.xlsx | insurance_details                    | 59                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Refinance   | Policy Number            | characters                               | does not throw any error           | asset_details.xlsx | insurance_details                    | 59                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Purchase    | Policy Number            | characters                               | does not throw any error           | asset_details.xlsx | insurance_details                    | 59                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Refinance   | Policy Number            | characters                               | does not throw any error           | asset_details.xlsx | insurance_details                    | 59                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Purchase    | Policy Number            | both digits and characters               | does not throw any error           | asset_details.xlsx | insurance_details                    | 60                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Refinance   | Policy Number            | both digits and characters               | does not throw any error           | asset_details.xlsx | insurance_details                    | 60                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Purchase    | Policy Number            | both digits and characters               | does not throw any error           | asset_details.xlsx | insurance_details                    | 60                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Refinance   | Policy Number            | both digits and characters               | does not throw any error           | asset_details.xlsx | insurance_details                    | 60                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Purchase    | Policy Number            | negative                                 | throws error with error message    | asset_details.xlsx | insurance_details                    | 61                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Refinance   | Policy Number            | negative                                 | throws error with error message    | asset_details.xlsx | insurance_details                    | 61                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Purchase    | Policy Number            | negative                                 | throws error with error message    | asset_details.xlsx | insurance_details                    | 61                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Refinance   | Policy Number            | negative                                 | throws error with error message    | asset_details.xlsx | insurance_details                    | 61                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Purchase    | Policy Number            | space                                    | does not throw any error           | asset_details.xlsx | insurance_details                    | 62                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Refinance   | Policy Number            | space                                    | does not throw any error           | asset_details.xlsx | insurance_details                    | 62                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Purchase    | Policy Number            | space                                    | does not throw any error           | asset_details.xlsx | insurance_details                    | 62                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Refinance   | Policy Number            | space                                    | does not throw any error           | asset_details.xlsx | insurance_details                    | 62                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Purchase    | Policy Number            | first character as special symbols       | throws error with error message    | asset_details.xlsx | insurance_details                    | 63                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Refinance   | Policy Number            | first character as special symbols       | throws error with error message    | asset_details.xlsx | insurance_details                    | 63                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Purchase    | Policy Number            | first character as special symbols       | throws error with error message    | asset_details.xlsx | insurance_details                    | 63                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Refinance   | Policy Number            | first character as special symbols       | throws error with error message    | asset_details.xlsx | insurance_details                    | 63                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Purchase    | Policy Number            | last character as special symbols        | throws error with error message    | asset_details.xlsx | insurance_details                    | 64                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Refinance   | Policy Number            | last character as special symbols        | throws error with error message    | asset_details.xlsx | insurance_details                    | 64                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Purchase    | Policy Number            | last character as special symbols        | throws error with error message    | asset_details.xlsx | insurance_details                    | 64                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Refinance   | Policy Number            | last character as special symbols        | throws error with error message    | asset_details.xlsx | insurance_details                    | 64                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Purchase    | Policy Number            | consecutive special characters           | throws error with error message    | asset_details.xlsx | insurance_details                    | 65                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Refinance   | Policy Number            | consecutive special characters           | throws error with error message    | asset_details.xlsx | insurance_details                    | 65                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Purchase    | Policy Number            | consecutive special characters           | throws error with error message    | asset_details.xlsx | insurance_details                    | 65                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Refinance   | Policy Number            | consecutive special characters           | throws error with error message    | asset_details.xlsx | insurance_details                    | 65                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Purchase    | Policy Number            | non-consecutive special characters       | does not throw any error           | asset_details.xlsx | insurance_details                    | 66                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Refinance   | Policy Number            | non-consecutive special characters       | does not throw any error           | asset_details.xlsx | insurance_details                    | 66                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Purchase    | Policy Number            | non-consecutive special characters       | does not throw any error           | asset_details.xlsx | insurance_details                    | 66                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Refinance   | Policy Number            | non-consecutive special characters       | does not throw any error           | asset_details.xlsx | insurance_details                    | 66                                          |

       #Prerequisite:Application already punch with application type as Multi Asset
# ${ ProductType : ["CV"]}
# ${ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
#${ApplicantType:["indiv","nonindiv"]}
   #FeatureID-ACAUTOCAS-11906
  @ImplementedBy-kanika.mahal
  Scenario Outline:Validation of <Field_Name> for Insurance Details with <InputType> for Funding For as <FundingFor> under collateral details for multi Asset at "<ApplicationStage>" in "<ProductType>"
    And user reads data from the excel file "sourcing_details.xlsx" under sheet "home" and row 286
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user navigates to asset requested page for "<ApplicationStage>"
    And user select Funding For as "<FundingFor>"
    And user select Finance Mode as "<FinanceMode>"
    And user select asset type as Used Asset
    And user edit the added asset requested details
    And user opens Collateral Details section
    And user edit the collateral details
    And user opens Insurance Details section under collateral details page
    And user adds the insurance details
    And user reads data from the excel file "<AssetDetailsWB>" under sheet "<AssetDetailsWB_insuranceDetailsSheet>" and row <AssetDetailsWB_insuranceDetailsSheet_rowNum>
    When user fills "<Field_Name>" field with "<InputType>"
    Then "<Field_Name>" field "<Throws_notThrows>" with proper message
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | FundingFor | FinanceMode | Field_Name               | InputType                                | Throws_notThrows                   | AssetDetailsWB     | AssetDetailsWB_insuranceDetailsSheet | AssetDetailsWB_insuranceDetailsSheet_rowNum |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Refinance   | Coverage Amount          | valid value                              | does not throw any error           | asset_details.xlsx | insurance_details                    | 0                                           |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Purchase    | Coverage Amount          | valid value                              | does not throw any error           | asset_details.xlsx | insurance_details                    | 0                                           |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Refinance   | Coverage Amount          | valid value                              | does not throw any error           | asset_details.xlsx | insurance_details                    | 0                                           |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Purchase    | Coverage Amount          | valid value                              | does not throw any error           | asset_details.xlsx | insurance_details                    | 0                                           |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Refinance   | Coverage Amount          | up to 18 digits                          | does not throw any error           | asset_details.xlsx | insurance_details                    | 1                                           |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Purchase    | Coverage Amount          | up to 18 digits                          | does not throw any error           | asset_details.xlsx | insurance_details                    | 1                                           |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Refinance   | Coverage Amount          | up to 18 digits                          | does not throw any error           | asset_details.xlsx | insurance_details                    | 1                                           |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Purchase    | Coverage Amount          | up to 18 digits                          | does not throw any error           | asset_details.xlsx | insurance_details                    | 1                                           |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Refinance   | Coverage Amount          | both digits and characters               | throws an error with error message | asset_details.xlsx | insurance_details                    | 2                                           |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Purchase    | Coverage Amount          | both digits and characters               | throws an error with error message | asset_details.xlsx | insurance_details                    | 2                                           |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Refinance   | Coverage Amount          | both digits and characters               | throws an error with error message | asset_details.xlsx | insurance_details                    | 2                                           |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Purchase    | Coverage Amount          | both digits and characters               | throws an error with error message | asset_details.xlsx | insurance_details                    | 2                                           |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Refinance   | Coverage Amount          | special characters                       | throws an error with error message | asset_details.xlsx | insurance_details                    | 3                                           |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Purchase    | Coverage Amount          | special characters                       | throws an error with error message | asset_details.xlsx | insurance_details                    | 3                                           |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Refinance   | Coverage Amount          | special characters                       | throws an error with error message | asset_details.xlsx | insurance_details                    | 3                                           |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Purchase    | Coverage Amount          | special characters                       | throws an error with error message | asset_details.xlsx | insurance_details                    | 3                                           |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Refinance   | Coverage Amount          | space                                    | throws an error with error message | asset_details.xlsx | insurance_details                    | 4                                           |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Purchase    | Coverage Amount          | space                                    | throws an error with error message | asset_details.xlsx | insurance_details                    | 4                                           |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Refinance   | Coverage Amount          | space                                    | throws an error with error message | asset_details.xlsx | insurance_details                    | 4                                           |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Purchase    | Coverage Amount          | space                                    | throws an error with error message | asset_details.xlsx | insurance_details                    | 4                                           |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Refinance   | Coverage Amount          | paise format                             | does not throw any error           | asset_details.xlsx | insurance_details                    | 5                                           |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Purchase    | Coverage Amount          | paise format                             | does not throw any error           | asset_details.xlsx | insurance_details                    | 5                                           |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Refinance   | Coverage Amount          | paise format                             | does not throw any error           | asset_details.xlsx | insurance_details                    | 5                                           |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Purchase    | Coverage Amount          | paise format                             | does not throw any error           | asset_details.xlsx | insurance_details                    | 5                                           |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Refinance   | Coverage Amount          | zero value                               | does not throw any error           | asset_details.xlsx | insurance_details                    | 6                                           |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Purchase    | Coverage Amount          | zero value                               | does not throw any error           | asset_details.xlsx | insurance_details                    | 6                                           |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Refinance   | Coverage Amount          | zero value                               | does not throw any error           | asset_details.xlsx | insurance_details                    | 6                                           |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Purchase    | Coverage Amount          | zero value                               | does not throw any error           | asset_details.xlsx | insurance_details                    | 6                                           |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Refinance   | Coverage Amount          | equal to Premium Amount                  | throws an error with error message | asset_details.xlsx | insurance_details                    | 7                                           |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Purchase    | Coverage Amount          | equal to Premium Amount                  | throws an error with error message | asset_details.xlsx | insurance_details                    | 7                                           |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Refinance   | Coverage Amount          | equal to Premium Amount                  | throws an error with error message | asset_details.xlsx | insurance_details                    | 7                                           |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Purchase    | Coverage Amount          | equal to Premium Amount                  | throws an error with error message | asset_details.xlsx | insurance_details                    | 7                                           |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Refinance   | Coverage Amount          | negative value                           | throws an error with error message | asset_details.xlsx | insurance_details                    | 8                                           |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Purchase    | Coverage Amount          | negative value                           | throws an error with error message | asset_details.xlsx | insurance_details                    | 8                                           |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Refinance   | Coverage Amount          | negative value                           | throws an error with error message | asset_details.xlsx | insurance_details                    | 8                                           |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Purchase    | Coverage Amount          | negative value                           | throws an error with error message | asset_details.xlsx | insurance_details                    | 8                                           |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Refinance   | Coverage Amount          | less than Premium Amount                 | throws an error with error message | asset_details.xlsx | insurance_details                    | 9                                           |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Purchase    | Coverage Amount          | less than Premium Amount                 | throws an error with error message | asset_details.xlsx | insurance_details                    | 9                                           |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Refinance   | Coverage Amount          | less than Premium Amount                 | throws an error with error message | asset_details.xlsx | insurance_details                    | 9                                           |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Purchase    | Coverage Amount          | less than Premium Amount                 | throws an error with error message | asset_details.xlsx | insurance_details                    | 9                                           |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Refinance   | Premium Amount           | valid value                              | does not throw any error           | asset_details.xlsx | insurance_details                    | 10                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Purchase    | Premium Amount           | valid value                              | does not throw any error           | asset_details.xlsx | insurance_details                    | 10                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Refinance   | Premium Amount           | valid value                              | does not throw any error           | asset_details.xlsx | insurance_details                    | 10                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Purchase    | Premium Amount           | valid value                              | does not throw any error           | asset_details.xlsx | insurance_details                    | 10                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Refinance   | Premium Amount           | up to 18 digits                          | does not throw any error           | asset_details.xlsx | insurance_details                    | 11                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Purchase    | Premium Amount           | up to 18 digits                          | does not throw any error           | asset_details.xlsx | insurance_details                    | 11                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Refinance   | Premium Amount           | up to 18 digits                          | does not throw any error           | asset_details.xlsx | insurance_details                    | 11                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Purchase    | Premium Amount           | up to 18 digits                          | does not throw any error           | asset_details.xlsx | insurance_details                    | 11                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Refinance   | Premium Amount           | both digits and characters               | throws an error with error message | asset_details.xlsx | insurance_details                    | 12                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Purchase    | Premium Amount           | both digits and characters               | throws an error with error message | asset_details.xlsx | insurance_details                    | 12                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Refinance   | Premium Amount           | both digits and characters               | throws an error with error message | asset_details.xlsx | insurance_details                    | 12                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Purchase    | Premium Amount           | both digits and characters               | throws an error with error message | asset_details.xlsx | insurance_details                    | 12                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Refinance   | Premium Amount           | special characters                       | throws an error with error message | asset_details.xlsx | insurance_details                    | 13                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Purchase    | Premium Amount           | special characters                       | throws an error with error message | asset_details.xlsx | insurance_details                    | 13                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Refinance   | Premium Amount           | special characters                       | throws an error with error message | asset_details.xlsx | insurance_details                    | 13                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Purchase    | Premium Amount           | special characters                       | throws an error with error message | asset_details.xlsx | insurance_details                    | 13                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Refinance   | Premium Amount           | space                                    | throws an error with error message | asset_details.xlsx | insurance_details                    | 14                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Purchase    | Premium Amount           | space                                    | throws an error with error message | asset_details.xlsx | insurance_details                    | 14                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Refinance   | Premium Amount           | space                                    | throws an error with error message | asset_details.xlsx | insurance_details                    | 14                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Purchase    | Premium Amount           | space                                    | throws an error with error message | asset_details.xlsx | insurance_details                    | 14                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Refinance   | Premium Amount           | paise format                             | does not throw any error           | asset_details.xlsx | insurance_details                    | 15                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Purchase    | Premium Amount           | paise format                             | does not throw any error           | asset_details.xlsx | insurance_details                    | 15                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Refinance   | Premium Amount           | paise format                             | does not throw any error           | asset_details.xlsx | insurance_details                    | 15                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Purchase    | Premium Amount           | paise format                             | does not throw any error           | asset_details.xlsx | insurance_details                    | 15                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Refinance   | Premium Amount           | zero value                               | does not throw any error           | asset_details.xlsx | insurance_details                    | 16                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Purchase    | Premium Amount           | zero value                               | does not throw any error           | asset_details.xlsx | insurance_details                    | 16                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Refinance   | Premium Amount           | zero value                               | does not throw any error           | asset_details.xlsx | insurance_details                    | 16                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Purchase    | Premium Amount           | zero value                               | does not throw any error           | asset_details.xlsx | insurance_details                    | 16                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Refinance   | Premium Amount           | negative value                           | throws an error with error message | asset_details.xlsx | insurance_details                    | 17                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Purchase    | Premium Amount           | negative value                           | throws an error with error message | asset_details.xlsx | insurance_details                    | 17                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Refinance   | Premium Amount           | negative value                           | throws an error with error message | asset_details.xlsx | insurance_details                    | 17                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Purchase    | Premium Amount           | negative value                           | throws an error with error message | asset_details.xlsx | insurance_details                    | 17                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Refinance   | Premium Amount           | equal to coverage Amount                 | throws an error with error message | asset_details.xlsx | insurance_details                    | 18                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Purchase    | Premium Amount           | equal to coverage Amount                 | throws an error with error message | asset_details.xlsx | insurance_details                    | 18                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Refinance   | Premium Amount           | equal to coverage Amount                 | throws an error with error message | asset_details.xlsx | insurance_details                    | 18                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Purchase    | Premium Amount           | equal to coverage Amount                 | throws an error with error message | asset_details.xlsx | insurance_details                    | 18                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Refinance   | Premium Amount           | more than coverage amount                | throws an error with error message | asset_details.xlsx | insurance_details                    | 19                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Purchase    | Premium Amount           | more than coverage amount                | throws an error with error message | asset_details.xlsx | insurance_details                    | 19                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Refinance   | Premium Amount           | more than coverage amount                | throws an error with error message | asset_details.xlsx | insurance_details                    | 19                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Purchase    | Premium Amount           | more than coverage amount                | throws an error with error message | asset_details.xlsx | insurance_details                    | 19                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Refinance   | Loss Payee               | valid value                              | does not throw any error           | asset_details.xlsx | insurance_details                    | 20                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Purchase    | Loss Payee               | valid value                              | does not throw any error           | asset_details.xlsx | insurance_details                    | 20                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Refinance   | Loss Payee               | valid value                              | does not throw any error           | asset_details.xlsx | insurance_details                    | 20                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Purchase    | Loss Payee               | valid value                              | does not throw any error           | asset_details.xlsx | insurance_details                    | 20                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Refinance   | Loss Payee               | both digits and characters               | does not throw any error           | asset_details.xlsx | insurance_details                    | 21                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Purchase    | Loss Payee               | both digits and characters               | does not throw any error           | asset_details.xlsx | insurance_details                    | 21                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Refinance   | Loss Payee               | both digits and characters               | does not throw any error           | asset_details.xlsx | insurance_details                    | 21                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Purchase    | Loss Payee               | both digits and characters               | does not throw any error           | asset_details.xlsx | insurance_details                    | 21                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Refinance   | Loss Payee               | special characters with hyphen           | does not throw any error           | asset_details.xlsx | insurance_details                    | 22                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Purchase    | Loss Payee               | special characters with hyphen           | does not throw any error           | asset_details.xlsx | insurance_details                    | 22                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Refinance   | Loss Payee               | special characters with hyphen           | does not throw any error           | asset_details.xlsx | insurance_details                    | 22                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Purchase    | Loss Payee               | special characters with hyphen           | does not throw any error           | asset_details.xlsx | insurance_details                    | 22                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Refinance   | Loss Payee               | space                                    | does not throw any error           | asset_details.xlsx | insurance_details                    | 23                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Purchase    | Loss Payee               | space                                    | does not throw any error           | asset_details.xlsx | insurance_details                    | 23                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Refinance   | Loss Payee               | space                                    | does not throw any error           | asset_details.xlsx | insurance_details                    | 23                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Purchase    | Loss Payee               | space                                    | does not throw any error           | asset_details.xlsx | insurance_details                    | 23                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Refinance   | Loss Payee               | negative value                           | does not throw any error           | asset_details.xlsx | insurance_details                    | 24                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Purchase    | Loss Payee               | negative value                           | does not throw any error           | asset_details.xlsx | insurance_details                    | 24                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Refinance   | Loss Payee               | negative value                           | does not throw any error           | asset_details.xlsx | insurance_details                    | 24                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Purchase    | Loss Payee               | negative value                           | does not throw any error           | asset_details.xlsx | insurance_details                    | 24                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Refinance   | Loss Payee               | special characters                       | throws an error with error message | asset_details.xlsx | insurance_details                    | 25                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Purchase    | Loss Payee               | special characters                       | throws an error with error message | asset_details.xlsx | insurance_details                    | 25                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Refinance   | Loss Payee               | special characters                       | throws an error with error message | asset_details.xlsx | insurance_details                    | 25                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Purchase    | Loss Payee               | special characters                       | throws an error with error message | asset_details.xlsx | insurance_details                    | 25                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Refinance   | Loss Payee               | special characters with open brackets    | does not throw any error           | asset_details.xlsx | insurance_details                    | 26                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Purchase    | Loss Payee               | special characters with open brackets    | does not throw any error           | asset_details.xlsx | insurance_details                    | 26                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Refinance   | Loss Payee               | special characters with open brackets    | does not throw any error           | asset_details.xlsx | insurance_details                    | 26                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Purchase    | Loss Payee               | special characters with open brackets    | does not throw any error           | asset_details.xlsx | insurance_details                    | 26                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Refinance   | Loss Payee               | special characters with close brackets   | does not throw any error           | asset_details.xlsx | insurance_details                    | 27                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Purchase    | Loss Payee               | special characters with close brackets   | does not throw any error           | asset_details.xlsx | insurance_details                    | 27                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Refinance   | Loss Payee               | special characters with close brackets   | does not throw any error           | asset_details.xlsx | insurance_details                    | 27                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Purchase    | Loss Payee               | special characters with close brackets   | does not throw any error           | asset_details.xlsx | insurance_details                    | 27                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Refinance   | Loss Payee               | special characters with exclamation mark | does not throw any error           | asset_details.xlsx | insurance_details                    | 28                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Purchase    | Loss Payee               | special characters with exclamation mark | does not throw any error           | asset_details.xlsx | insurance_details                    | 28                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Refinance   | Loss Payee               | special characters with exclamation mark | does not throw any error           | asset_details.xlsx | insurance_details                    | 28                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Purchase    | Loss Payee               | special characters with exclamation mark | does not throw any error           | asset_details.xlsx | insurance_details                    | 28                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Refinance   | Loss Payee               | special characters with comma            | does not throw any error           | asset_details.xlsx | insurance_details                    | 29                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Purchase    | Loss Payee               | special characters with comma            | does not throw any error           | asset_details.xlsx | insurance_details                    | 29                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Refinance   | Loss Payee               | special characters with comma            | does not throw any error           | asset_details.xlsx | insurance_details                    | 29                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Purchase    | Loss Payee               | special characters with comma            | does not throw any error           | asset_details.xlsx | insurance_details                    | 29                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Refinance   | Loss Payee               | special characters with and operator     | does not throw any error           | asset_details.xlsx | insurance_details                    | 30                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Purchase    | Loss Payee               | special characters with and operator     | does not throw any error           | asset_details.xlsx | insurance_details                    | 30                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Refinance   | Loss Payee               | special characters with and operator     | does not throw any error           | asset_details.xlsx | insurance_details                    | 30                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Purchase    | Loss Payee               | special characters with and operator     | does not throw any error           | asset_details.xlsx | insurance_details                    | 30                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Refinance   | Loss Payee               | special characters with dollar sign      | does not throw any error           | asset_details.xlsx | insurance_details                    | 31                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Purchase    | Loss Payee               | special characters with dollar sign      | does not throw any error           | asset_details.xlsx | insurance_details                    | 31                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Refinance   | Loss Payee               | special characters with dollar sign      | does not throw any error           | asset_details.xlsx | insurance_details                    | 31                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Purchase    | Loss Payee               | special characters with dollar sign      | does not throw any error           | asset_details.xlsx | insurance_details                    | 31                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Refinance   | Loss Payee               | special characters with forward sign     | does not throw any error           | asset_details.xlsx | insurance_details                    | 32                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Purchase    | Loss Payee               | special characters with forward sign     | does not throw any error           | asset_details.xlsx | insurance_details                    | 32                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Refinance   | Loss Payee               | special characters with forward sign     | does not throw any error           | asset_details.xlsx | insurance_details                    | 32                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Purchase    | Loss Payee               | special characters with forward sign     | does not throw any error           | asset_details.xlsx | insurance_details                    | 32                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Refinance   | Cover Note Number        | valid value                              | does not throw any error           | asset_details.xlsx | insurance_details                    | 33                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Purchase    | Cover Note Number        | valid value                              | does not throw any error           | asset_details.xlsx | insurance_details                    | 33                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Refinance   | Cover Note Number        | valid value                              | does not throw any error           | asset_details.xlsx | insurance_details                    | 33                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Purchase    | Cover Note Number        | valid value                              | does not throw any error           | asset_details.xlsx | insurance_details                    | 33                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Refinance   | Cover Note Number        | both digits and characters               | does not throw any error           | asset_details.xlsx | insurance_details                    | 34                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Purchase    | Cover Note Number        | both digits and characters               | does not throw any error           | asset_details.xlsx | insurance_details                    | 34                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Refinance   | Cover Note Number        | both digits and characters               | does not throw any error           | asset_details.xlsx | insurance_details                    | 34                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Purchase    | Cover Note Number        | both digits and characters               | does not throw any error           | asset_details.xlsx | insurance_details                    | 34                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Refinance   | Cover Note Number        | space                                    | throws an error with error message | asset_details.xlsx | insurance_details                    | 35                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Purchase    | Cover Note Number        | space                                    | throws an error with error message | asset_details.xlsx | insurance_details                    | 35                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Refinance   | Cover Note Number        | space                                    | throws an error with error message | asset_details.xlsx | insurance_details                    | 35                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Purchase    | Cover Note Number        | space                                    | throws an error with error message | asset_details.xlsx | insurance_details                    | 35                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Refinance   | Cover Note Number        | negative value                           | throws an error with error message | asset_details.xlsx | insurance_details                    | 36                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Purchase    | Cover Note Number        | negative value                           | throws an error with error message | asset_details.xlsx | insurance_details                    | 36                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Refinance   | Cover Note Number        | negative value                           | throws an error with error message | asset_details.xlsx | insurance_details                    | 36                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Purchase    | Cover Note Number        | negative value                           | throws an error with error message | asset_details.xlsx | insurance_details                    | 36                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Refinance   | Cover Note Number        | digit with hyphen                        | does not throw any error           | asset_details.xlsx | insurance_details                    | 37                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Purchase    | Cover Note Number        | digit with hyphen                        | does not throw any error           | asset_details.xlsx | insurance_details                    | 37                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Refinance   | Cover Note Number        | digit with hyphen                        | does not throw any error           | asset_details.xlsx | insurance_details                    | 37                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Purchase    | Cover Note Number        | digit with hyphen                        | does not throw any error           | asset_details.xlsx | insurance_details                    | 37                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Refinance   | Cover Note Number        | special character with hyphen            | throws an error with error message | asset_details.xlsx | insurance_details                    | 38                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Purchase    | Cover Note Number        | special character with hyphen            | throws an error with error message | asset_details.xlsx | insurance_details                    | 38                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Refinance   | Cover Note Number        | special character with hyphen            | throws an error with error message | asset_details.xlsx | insurance_details                    | 38                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Purchase    | Cover Note Number        | special character with hyphen            | throws an error with error message | asset_details.xlsx | insurance_details                    | 38                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Refinance   | Cover Note Number        | special character with underscore        | throws an error with error message | asset_details.xlsx | insurance_details                    | 39                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Purchase    | Cover Note Number        | special character with underscore        | throws an error with error message | asset_details.xlsx | insurance_details                    | 39                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Refinance   | Cover Note Number        | special character with underscore        | throws an error with error message | asset_details.xlsx | insurance_details                    | 39                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Purchase    | Cover Note Number        | special character with underscore        | throws an error with error message | asset_details.xlsx | insurance_details                    | 39                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Refinance   | Cover Note Number        | digit with underscore                    | does not throw any error           | asset_details.xlsx | insurance_details                    | 40                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Purchase    | Cover Note Number        | digit with underscore                    | does not throw any error           | asset_details.xlsx | insurance_details                    | 40                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Refinance   | Cover Note Number        | digit with underscore                    | does not throw any error           | asset_details.xlsx | insurance_details                    | 40                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Purchase    | Cover Note Number        | digit with underscore                    | does not throw any error           | asset_details.xlsx | insurance_details                    | 40                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Refinance   | Cover Note Number        | special character with forward slash     | throws an error with error message | asset_details.xlsx | insurance_details                    | 41                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Purchase    | Cover Note Number        | special character with forward slash     | throws an error with error message | asset_details.xlsx | insurance_details                    | 41                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Refinance   | Cover Note Number        | special character with forward slash     | throws an error with error message | asset_details.xlsx | insurance_details                    | 41                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Purchase    | Cover Note Number        | special character with forward slash     | throws an error with error message | asset_details.xlsx | insurance_details                    | 41                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Refinance   | Cover Note Number        | digit with forward slash                 | does not throw any error           | asset_details.xlsx | insurance_details                    | 42                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Purchase    | Cover Note Number        | digit with forward slash                 | does not throw any error           | asset_details.xlsx | insurance_details                    | 42                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Refinance   | Cover Note Number        | digit with forward slash                 | does not throw any error           | asset_details.xlsx | insurance_details                    | 42                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Purchase    | Cover Note Number        | digit with forward slash                 | does not throw any error           | asset_details.xlsx | insurance_details                    | 42                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Refinance   | Cover Note Number        | special character with backward slash    | throws an error with error message | asset_details.xlsx | insurance_details                    | 43                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Purchase    | Cover Note Number        | special character with backward slash    | throws an error with error message | asset_details.xlsx | insurance_details                    | 43                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Refinance   | Cover Note Number        | special character with backward slash    | throws an error with error message | asset_details.xlsx | insurance_details                    | 43                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Purchase    | Cover Note Number        | special character with backward slash    | throws an error with error message | asset_details.xlsx | insurance_details                    | 43                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Refinance   | Cover Note Number        | digit with backward slash                | does not throw any error           | asset_details.xlsx | insurance_details                    | 44                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Purchase    | Cover Note Number        | digit with backward slash                | does not throw any error           | asset_details.xlsx | insurance_details                    | 44                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Refinance   | Cover Note Number        | digit with backward slash                | does not throw any error           | asset_details.xlsx | insurance_details                    | 44                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Purchase    | Cover Note Number        | digit with backward slash                | does not throw any error           | asset_details.xlsx | insurance_details                    | 44                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Refinance   | Cover Note Number        | special character                        | throws an error with error message | asset_details.xlsx | insurance_details                    | 45                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Purchase    | Cover Note Number        | special character                        | throws an error with error message | asset_details.xlsx | insurance_details                    | 45                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Refinance   | Cover Note Number        | special character                        | throws an error with error message | asset_details.xlsx | insurance_details                    | 45                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Purchase    | Cover Note Number        | special character                        | throws an error with error message | asset_details.xlsx | insurance_details                    | 45                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Refinance   | Cover Note Creation Date | valid date                               | does not throw any error           | asset_details.xlsx | insurance_details                    | 46                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Purchase    | Cover Note Creation Date | valid date                               | does not throw any error           | asset_details.xlsx | insurance_details                    | 46                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Refinance   | Cover Note Creation Date | valid date                               | does not throw any error           | asset_details.xlsx | insurance_details                    | 46                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Purchase    | Cover Note Creation Date | valid date                               | does not throw any error           | asset_details.xlsx | insurance_details                    | 46                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Refinance   | Cover Note Creation Date | more than current date                   | throws an error with error message | asset_details.xlsx | insurance_details                    | 47                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Purchase    | Cover Note Creation Date | more than current date                   | throws an error with error message | asset_details.xlsx | insurance_details                    | 47                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Refinance   | Cover Note Creation Date | more than current date                   | throws an error with error message | asset_details.xlsx | insurance_details                    | 47                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Purchase    | Cover Note Creation Date | more than current date                   | throws an error with error message | asset_details.xlsx | insurance_details                    | 47                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Refinance   | Cover Note Creation Date | before 1942                              | throws an error with error message | asset_details.xlsx | insurance_details                    | 48                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Purchase    | Cover Note Creation Date | before 1942                              | throws an error with error message | asset_details.xlsx | insurance_details                    | 48                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Refinance   | Cover Note Creation Date | before 1942                              | throws an error with error message | asset_details.xlsx | insurance_details                    | 48                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Purchase    | Cover Note Creation Date | before 1942                              | throws an error with error message | asset_details.xlsx | insurance_details                    | 48                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Refinance   | Cover Note Creation Date | equal to start date                      | does not throw any error           | asset_details.xlsx | insurance_details                    | 49                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Purchase    | Cover Note Creation Date | equal to start date                      | does not throw any error           | asset_details.xlsx | insurance_details                    | 49                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Refinance   | Cover Note Creation Date | equal to start date                      | does not throw any error           | asset_details.xlsx | insurance_details                    | 49                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Purchase    | Cover Note Creation Date | equal to start date                      | does not throw any error           | asset_details.xlsx | insurance_details                    | 49                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Refinance   | Start Date               | valid date                               | does not throw any error           | asset_details.xlsx | insurance_details                    | 50                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Purchase    | Start Date               | valid date                               | does not throw any error           | asset_details.xlsx | insurance_details                    | 50                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Refinance   | Start Date               | valid date                               | does not throw any error           | asset_details.xlsx | insurance_details                    | 50                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Purchase    | Start Date               | valid date                               | does not throw any error           | asset_details.xlsx | insurance_details                    | 50                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Refinance   | Start Date               | before 1942                              | throws an error with error message | asset_details.xlsx | insurance_details                    | 51                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Purchase    | Start Date               | before 1942                              | throws an error with error message | asset_details.xlsx | insurance_details                    | 51                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Refinance   | Start Date               | before 1942                              | throws an error with error message | asset_details.xlsx | insurance_details                    | 51                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Purchase    | Start Date               | before 1942                              | throws an error with error message | asset_details.xlsx | insurance_details                    | 51                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Refinance   | Maturity Date            | valid date                               | does not throw any error           | asset_details.xlsx | insurance_details                    | 52                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Purchase    | Maturity Date            | valid date                               | does not throw any error           | asset_details.xlsx | insurance_details                    | 52                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Refinance   | Maturity Date            | valid date                               | does not throw any error           | asset_details.xlsx | insurance_details                    | 52                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Purchase    | Maturity Date            | valid date                               | does not throw any error           | asset_details.xlsx | insurance_details                    | 52                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Refinance   | Maturity Date            | more than current date                   | does not throw any error           | asset_details.xlsx | insurance_details                    | 53                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Purchase    | Maturity Date            | more than current date                   | does not throw any error           | asset_details.xlsx | insurance_details                    | 53                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Refinance   | Maturity Date            | more than current date                   | does not throw any error           | asset_details.xlsx | insurance_details                    | 53                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Purchase    | Maturity Date            | more than current date                   | does not throw any error           | asset_details.xlsx | insurance_details                    | 53                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Refinance   | Maturity Date            | before 1942                              | throws an error with error message | asset_details.xlsx | insurance_details                    | 54                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Purchase    | Maturity Date            | before 1942                              | throws an error with error message | asset_details.xlsx | insurance_details                    | 54                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Refinance   | Maturity Date            | before 1942                              | throws an error with error message | asset_details.xlsx | insurance_details                    | 54                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Purchase    | Maturity Date            | before 1942                              | throws an error with error message | asset_details.xlsx | insurance_details                    | 54                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Refinance   | Maturity Date            | less than start date                     | throws an error with error message | asset_details.xlsx | insurance_details                    | 55                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Purchase    | Maturity Date            | less than start date                     | throws an error with error message | asset_details.xlsx | insurance_details                    | 55                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Refinance   | Maturity Date            | less than start date                     | throws an error with error message | asset_details.xlsx | insurance_details                    | 55                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Purchase    | Maturity Date            | less than start date                     | throws an error with error message | asset_details.xlsx | insurance_details                    | 55                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Refinance   | Maturity Date            | more than start date                     | does not throw any error           | asset_details.xlsx | insurance_details                    | 56                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Purchase    | Maturity Date            | more than start date                     | does not throw any error           | asset_details.xlsx | insurance_details                    | 56                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Refinance   | Maturity Date            | more than start date                     | does not throw any error           | asset_details.xlsx | insurance_details                    | 56                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Purchase    | Maturity Date            | more than start date                     | does not throw any error           | asset_details.xlsx | insurance_details                    | 56                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Refinance   | Maturity Date            | equal to start date                      | does not throw any error           | asset_details.xlsx | insurance_details                    | 57                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Purchase    | Maturity Date            | equal to start date                      | does not throw any error           | asset_details.xlsx | insurance_details                    | 57                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Refinance   | Maturity Date            | equal to start date                      | does not throw any error           | asset_details.xlsx | insurance_details                    | 57                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Purchase    | Maturity Date            | equal to start date                      | does not throw any error           | asset_details.xlsx | insurance_details                    | 57                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Refinance   | Policy Number            | positive digits                          | does not throw any error           | asset_details.xlsx | insurance_details                    | 58                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Purchase    | Policy Number            | positive digits                          | does not throw any error           | asset_details.xlsx | insurance_details                    | 58                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Refinance   | Policy Number            | positive digits                          | does not throw any error           | asset_details.xlsx | insurance_details                    | 58                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Purchase    | Policy Number            | positive digits                          | does not throw any error           | asset_details.xlsx | insurance_details                    | 58                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Refinance   | Policy Number            | characters                               | does not throw any error           | asset_details.xlsx | insurance_details                    | 59                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Purchase    | Policy Number            | characters                               | does not throw any error           | asset_details.xlsx | insurance_details                    | 59                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Refinance   | Policy Number            | characters                               | does not throw any error           | asset_details.xlsx | insurance_details                    | 59                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Purchase    | Policy Number            | characters                               | does not throw any error           | asset_details.xlsx | insurance_details                    | 59                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Refinance   | Policy Number            | both digits and characters               | does not throw any error           | asset_details.xlsx | insurance_details                    | 60                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Purchase    | Policy Number            | both digits and characters               | does not throw any error           | asset_details.xlsx | insurance_details                    | 60                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Refinance   | Policy Number            | both digits and characters               | does not throw any error           | asset_details.xlsx | insurance_details                    | 60                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Purchase    | Policy Number            | both digits and characters               | does not throw any error           | asset_details.xlsx | insurance_details                    | 60                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Refinance   | Policy Number            | negative                                 | throws error with error message    | asset_details.xlsx | insurance_details                    | 61                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Purchase    | Policy Number            | negative                                 | throws error with error message    | asset_details.xlsx | insurance_details                    | 61                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Refinance   | Policy Number            | negative                                 | throws error with error message    | asset_details.xlsx | insurance_details                    | 61                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Purchase    | Policy Number            | negative                                 | throws error with error message    | asset_details.xlsx | insurance_details                    | 61                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Refinance   | Policy Number            | space                                    | does not throw any error           | asset_details.xlsx | insurance_details                    | 62                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Purchase    | Policy Number            | space                                    | does not throw any error           | asset_details.xlsx | insurance_details                    | 62                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Refinance   | Policy Number            | space                                    | does not throw any error           | asset_details.xlsx | insurance_details                    | 62                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Purchase    | Policy Number            | space                                    | does not throw any error           | asset_details.xlsx | insurance_details                    | 62                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Refinance   | Policy Number            | first character as special symbols       | throws error with error message    | asset_details.xlsx | insurance_details                    | 63                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Purchase    | Policy Number            | first character as special symbols       | throws error with error message    | asset_details.xlsx | insurance_details                    | 63                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Refinance   | Policy Number            | first character as special symbols       | throws error with error message    | asset_details.xlsx | insurance_details                    | 63                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Purchase    | Policy Number            | first character as special symbols       | throws error with error message    | asset_details.xlsx | insurance_details                    | 63                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Refinance   | Policy Number            | last character as special symbols        | throws error with error message    | asset_details.xlsx | insurance_details                    | 64                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Purchase    | Policy Number            | last character as special symbols        | throws error with error message    | asset_details.xlsx | insurance_details                    | 64                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Refinance   | Policy Number            | last character as special symbols        | throws error with error message    | asset_details.xlsx | insurance_details                    | 64                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Purchase    | Policy Number            | last character as special symbols        | throws error with error message    | asset_details.xlsx | insurance_details                    | 64                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Refinance   | Policy Number            | consecutive special characters           | throws error with error message    | asset_details.xlsx | insurance_details                    | 65                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Purchase    | Policy Number            | consecutive special characters           | throws error with error message    | asset_details.xlsx | insurance_details                    | 65                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Refinance   | Policy Number            | consecutive special characters           | throws error with error message    | asset_details.xlsx | insurance_details                    | 65                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Purchase    | Policy Number            | consecutive special characters           | throws error with error message    | asset_details.xlsx | insurance_details                    | 65                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Refinance   | Policy Number            | non-consecutive special characters       | does not throw any error           | asset_details.xlsx | insurance_details                    | 66                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Purchase    | Policy Number            | non-consecutive special characters       | does not throw any error           | asset_details.xlsx | insurance_details                    | 66                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Refinance   | Policy Number            | non-consecutive special characters       | does not throw any error           | asset_details.xlsx | insurance_details                    | 66                                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Purchase    | Policy Number            | non-consecutive special characters       | does not throw any error           | asset_details.xlsx | insurance_details                    | 66                                          |

       #Prerequisite:Application already punch with application type as Multi Asset
 # ${ ProductType : ["CEQ","CV"]}
# ${ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
#${ApplicantType:["indiv","nonindiv"]}
   #FeatureID-ACAUTOCAS-11906
  @ImplementedBy-kanika.mahal
    @Sanity
  Scenario Outline:Saving Insurance details for Funding For as <FundingFor> in collateral details for multi Asset at "<ApplicationStage>" in "<ProductType>"
    And user reads data from the excel file "sourcing_details.xlsx" under sheet "home" and row 286
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user navigates to asset requested page for "<ApplicationStage>"
    And user select Funding For as "<FundingFor>"
    And user select Finance Mode as "<FinanceMode>"
    And user select asset type as Used Asset
    And user edit the added asset requested details
    And user opens Collateral Details section
    And user edit the collateral details
    And user opens Collateral Details section
    And user edit the collateral details
    And user opens Insurance Details section under collateral details page
    And user reads data from the excel file "<AssetDetailsWB>" under sheet "<AssetDetailsWB_insuranceDetailsSheet>" and row <AssetDetailsWB_insuranceDetailsSheet_rowNum>
    When user fills insurance details with "<Mandatory_All>"
    Then Insurance details data save successfully
    Examples:
      | Mandatory_All | ApplicantType   | ApplicationStage   | ProductType   | FundingFor | FinanceMode | AssetDetailsWB     | AssetDetailsWB_insuranceDetailsSheet | AssetDetailsWB_insuranceDetailsSheet_rowNum |
      | Mandatory     | <ApplicantType> | <ApplicationStage> | <ProductType> | Chassis    | Purchase    | asset_details.xlsx | insurance_details                    | 107                                         |
      | Mandatory     | <ApplicantType> | <ApplicationStage> | <ProductType> | Chassis    | Refinance   | asset_details.xlsx | insurance_details                    | 108                                         |
      | Mandatory     | <ApplicantType> | <ApplicationStage> | <ProductType> | FBV        | Purchase    | asset_details.xlsx | insurance_details                    | 109                                         |
      | Mandatory     | <ApplicantType> | <ApplicationStage> | <ProductType> | FBV        | Refinance   | asset_details.xlsx | insurance_details                    | 110                                         |
      | All           | <ApplicantType> | <ApplicationStage> | <ProductType> | Chassis    | Purchase    | asset_details.xlsx | insurance_details                    | 111                                         |
      | All           | <ApplicantType> | <ApplicationStage> | <ProductType> | Chassis    | Refinance   | asset_details.xlsx | insurance_details                    | 112                                         |
      | All           | <ApplicantType> | <ApplicationStage> | <ProductType> | FBV        | Purchase    | asset_details.xlsx | insurance_details                    | 113                                         |
      | All           | <ApplicantType> | <ApplicationStage> | <ProductType> | FBV        | Refinance   | asset_details.xlsx | insurance_details                    | 114                                         |

      #Prerequisite:Application already punch with application type as Multi Asset
# ${ ProductType : ["CV"]}
# ${ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
#${ApplicantType:["indiv","nonindiv"]}
   #FeatureID-ACAUTOCAS-11906
  @ImplementedBy-kanika.mahal
  Scenario Outline:Saving Insurance details for Funding For as <FundingFor> under collateral details for multi Asset at "<ApplicationStage>" in "<ProductType>"
    And user reads data from the excel file "sourcing_details.xlsx" under sheet "home" and row 286
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user navigates to asset requested page for "<ApplicationStage>"
    And user select Funding For as "<FundingFor>"
    And user select Finance Mode as "<FinanceMode>"
    And user select asset type as Used Asset
    And user edit the added asset requested details
    And user opens Collateral Details section
    And user edit the collateral details
    And user opens Collateral Details section
    And user edit the collateral details
    And user opens Insurance Details section under collateral details page
    When user fills insurance details with "<Mandatory_All>"
    Then Insurance details data save successfully
    Examples:
      | Mandatory_All | ApplicantType   | ApplicationStage   | ProductType   | FundingFor | FinanceMode | AssetDetailsWB     | AssetDetailsWB_insuranceDetailsSheet | AssetDetailsWB_insuranceDetailsSheet_rowNum |
      | Mandatory     | <ApplicantType> | <ApplicationStage> | <ProductType> | Both       | Refinance   | asset_details.xlsx | insurance_details                    | 107                                         |
      | Mandatory     | <ApplicantType> | <ApplicationStage> | <ProductType> | Both       | Purchase    | asset_details.xlsx | insurance_details                    | 108                                         |
      | Mandatory     | <ApplicantType> | <ApplicationStage> | <ProductType> | Body       | Refinance   | asset_details.xlsx | insurance_details                    | 109                                         |
      | Mandatory     | <ApplicantType> | <ApplicationStage> | <ProductType> | Body       | Purchase    | asset_details.xlsx | insurance_details                    | 110                                         |
      | All           | <ApplicantType> | <ApplicationStage> | <ProductType> | Both       | Refinance   | asset_details.xlsx | insurance_details                    | 111                                         |
      | All           | <ApplicantType> | <ApplicationStage> | <ProductType> | Both       | Purchase    | asset_details.xlsx | insurance_details                    | 112                                         |
      | All           | <ApplicantType> | <ApplicationStage> | <ProductType> | Body       | Refinance   | asset_details.xlsx | insurance_details                    | 113                                         |
      | All           | <ApplicantType> | <ApplicationStage> | <ProductType> | Body       | Purchase    | asset_details.xlsx | insurance_details                    | 114                                         |

     #Prerequisite:Application already punch with application type as Multi Asset
 # ${ ProductType : ["CEQ","CV"]}
# ${ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
#${ApplicantType:["indiv","nonindiv"]}
   #FeatureID-ACAUTOCAS-11906
  @ImplementedBy-kanika.mahal
  Scenario Outline:<Edit_Delete> existing Insurance details for Funding For as <FundingFor> under collateral details for multi Asset at "<ApplicationStage>" in "<ProductType>"
    And user reads data from the excel file "sourcing_details.xlsx" under sheet "home" and row 286
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user navigates to asset requested page for "<ApplicationStage>"
    And user select Funding For as "<FundingFor>"
    And user select Finance Mode as "<FinanceMode>"
    And user select asset type as Used Asset
    And user edit the added asset requested details
    And user opens Collateral Details section
    And user edit the collateral details
    And user opens Collateral Details section
    And user edit the collateral details
    And user opens Insurance Details section under collateral details page
    And user reads data from the excel file "asset_details.xlsx" under sheet "insurance_details" and row 104
    And user fills mandatory insurance details
    When user "<Edit_Delete>" Insurance details
    Then Insurance details "<Edit_Delete>" should be added
    Examples:
      | Edit_Delete | ApplicantType   | ApplicationStage   | ProductType   | FundingFor | FinanceMode |
      | Edit        | <ApplicantType> | <ApplicationStage> | <ProductType> | Chassis    | Purchase    |
      | Edit        | <ApplicantType> | <ApplicationStage> | <ProductType> | Chassis    | Refinance   |
      | Edit        | <ApplicantType> | <ApplicationStage> | <ProductType> | FBV        | Purchase    |
      | Edit        | <ApplicantType> | <ApplicationStage> | <ProductType> | FBV        | Refinance   |
      | Delete      | <ApplicantType> | <ApplicationStage> | <ProductType> | Chassis    | Purchase    |
      | Delete      | <ApplicantType> | <ApplicationStage> | <ProductType> | Chassis    | Refinance   |
      | Delete      | <ApplicantType> | <ApplicationStage> | <ProductType> | FBV        | Purchase    |
      | Delete      | <ApplicantType> | <ApplicationStage> | <ProductType> | FBV        | Refinance   |

       #Prerequisite:Application already punch with application type as Multi Asset
# ${ ProductType : ["CV"]}
# ${ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
#${ApplicantType:["indiv","nonindiv"]}
   #FeatureID-ACAUTOCAS-11906
  @NotImplemeted
  Scenario Outline:<Edit_Delete> existing Insurance details for Funding For as <FundingFor> in collateral details for multi Asset at "<ApplicationStage>" in "<ProductType>"
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user navigates to asset requested page
    And user select Funding For as "<FundingFor>"
    And user select Finance Mode as "<FinanceMode>"
    And user save the asset requested with asset type as Used Asset
    And user edit the added asset requested details
    And user opens Collateral Details section
    And user edit the collateral details
    And user opens Collateral Details section
    And user edit the collateral details
    And user opens Insurance Details section under collateral details page
    And user fill Insurance details
    When user "<Edit_Delete>" Insurance details
    Then Insurance details "<Edit_Delete>" should be added

    Examples:
      | Edit_Delete | ApplicantType   | ApplicationStage   | ProductType   | FundingFor | FinanceMode |
      | Edit        | <ApplicantType> | <ApplicationStage> | <ProductType> | Both       | Refinance   |
      | Edit        | <ApplicantType> | <ApplicationStage> | <ProductType> | Both       | Purchase    |
      | Edit        | <ApplicantType> | <ApplicationStage> | <ProductType> | Body       | Refinance   |
      | Edit        | <ApplicantType> | <ApplicationStage> | <ProductType> | Body       | Purchase    |
      | Delete      | <ApplicantType> | <ApplicationStage> | <ProductType> | Both       | Refinance   |
      | Delete      | <ApplicantType> | <ApplicationStage> | <ProductType> | Both       | Purchase    |
      | Delete      | <ApplicantType> | <ApplicationStage> | <ProductType> | Body       | Refinance   |
      | Delete      | <ApplicantType> | <ApplicationStage> | <ProductType> | Body       | Purchase    |


     #Prerequisite:Application already punch with application type as Multi Asset
 # ${ ProductType : ["CEQ","CV"]}
# ${ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
#${ApplicantType:["indiv","nonindiv"]}
   #FeatureID-ACAUTOCAS-11906
  @ImplementedBy-kanika.mahal
  Scenario Outline:Add multiple Insurance details for Funding For as <FundingFor> under collateral details for multi Asset at "<ApplicationStage>" in "<ProductType>"
    And user reads data from the excel file "sourcing_details.xlsx" under sheet "home" and row 286
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user navigates to asset requested page for "<ApplicationStage>"
    And user select Funding For as "<FundingFor>"
    And user select Finance Mode as "<FinanceMode>"
    And user select asset type as Used Asset
    And user edit the added asset requested details
    And user opens Collateral Details section
    And user edit the collateral details
    And user opens Collateral Details section
    And user edit the collateral details
    When user opens Insurance Details section under collateral details page
    And user reads data from the excel file "asset_details.xlsx" under sheet "insurance_details" and row 104
    And user add "<insurance>" Insurance details
    Then Insurance details data save successfully
    Examples:
      | insurance   | ApplicantType   | ApplicationStage   | ProductType   | FundingFor | FinanceMode |
      | one another | <ApplicantType> | <ApplicationStage> | <ProductType> | Chassis    | Purchase    |
      | one another | <ApplicantType> | <ApplicationStage> | <ProductType> | Chassis    | Refinance   |
      | one another | <ApplicantType> | <ApplicationStage> | <ProductType> | FBV        | Purchase    |
      | one another | <ApplicantType> | <ApplicationStage> | <ProductType> | FBV        | Refinance   |
      | multiple    | <ApplicantType> | <ApplicationStage> | <ProductType> | Chassis    | Purchase    |
      | multiple    | <ApplicantType> | <ApplicationStage> | <ProductType> | Chassis    | Refinance   |
      | multiple    | <ApplicantType> | <ApplicationStage> | <ProductType> | FBV        | Purchase    |
      | multiple    | <ApplicantType> | <ApplicationStage> | <ProductType> | FBV        | Refinance   |

        #Prerequisite:Application already punch with application type as Multi Asset
# ${ ProductType : ["CV"]}
# ${ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
#${ApplicantType:["indiv","nonindiv"]}
   #FeatureID-ACAUTOCAS-11906
  @NotImplemeted
  Scenario Outline:Add multiple Insurance details for Funding For as <FundingFor> in collateral details for multi Asset at "<ApplicationStage>" in "<ProductType>"
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user navigates to asset requested page
    And user select Funding For as "<FundingFor>"
    And user select Finance Mode as "<FinanceMode>"
    And user save the asset requested with asset type as Used Asset
    And user edit the added asset requested details
    And user opens Collateral Details section
    And user edit the collateral details
    And user opens Collateral Details section
    And user edit the collateral details
    When user opens Insurance Details section under collateral details page
    And user add "<insurance>" Insurance details
    Then Insurance details should be added successfully

    Examples:
      | insurance   | ApplicantType   | ApplicationStage   | ProductType   | FundingFor | FinanceMode |
      | one another | <ApplicantType> | <ApplicationStage> | <ProductType> | Both       | Refinance   |
      | one another | <ApplicantType> | <ApplicationStage> | <ProductType> | Both       | Purchase    |
      | one another | <ApplicantType> | <ApplicationStage> | <ProductType> | Body       | Refinance   |
      | one another | <ApplicantType> | <ApplicationStage> | <ProductType> | Body       | Purchase    |
      | multiple    | <ApplicantType> | <ApplicationStage> | <ProductType> | Both       | Refinance   |
      | multiple    | <ApplicantType> | <ApplicationStage> | <ProductType> | Both       | Purchase    |
      | multiple    | <ApplicantType> | <ApplicationStage> | <ProductType> | Body       | Refinance   |
      | multiple    | <ApplicantType> | <ApplicationStage> | <ProductType> | Body       | Purchase    |


    ###Nominee Detail

   #Prerequisite:Application already punch with application type as Multi Asset
# ${ ProductType : ["CEQ","CV"]}
# ${ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
#${ApplicantType:["indiv","nonindiv"]}
   #FeatureID-ACAUTOCAS-11906
  @NotImplemeted
  Scenario Outline:Save the nominee address with address type as <Address> in insurance details for Funding For as <FundingFor> under collateral details for multi Asset at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user navigates to asset requested page
    And user select Funding For as "<FundingFor>"
    And user select Finance Mode as "<FinanceMode>"
    And user save the asset requested with asset type as Used Asset
    And user edit the added asset requested details
    And user opens Collateral Details section
    And user edit the collateral details
    And user opens Insurance Details section under collateral details page
    And user adds the insurance details
    And user click on Add Address Details in Nominee Details
    When user add "<Address>" in nominee address with "<Mandatory_All>"
    Then Nominee address details save successfully



    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | FundingFor | FinanceMode | Mandatory_All | Address                    |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Refinance   | all           | Alternate Business Address |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Purchase    | all           | Alternate Business Address |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Refinance   | all           | Alternate Business Address |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Purchase    | all           | Alternate Business Address |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Refinance   | mandatory     | Alternate Business Address |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Purchase    | mandatory     | Alternate Business Address |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Refinance   | mandatory     | Alternate Business Address |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Purchase    | mandatory     | Alternate Business Address |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Refinance   | all           | Office/ Business Address   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Purchase    | all           | Office/ Business Address   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Refinance   | all           | Office/ Business Address   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Purchase    | all           | Office/ Business Address   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Refinance   | mandatory     | Office/ Business Address   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Purchase    | mandatory     | Office/ Business Address   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Refinance   | mandatory     | Office/ Business Address   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Purchase    | mandatory     | Office/ Business Address   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Refinance   | all           | Permanent Address          |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Purchase    | all           | Permanent Address          |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Refinance   | all           | Permanent Address          |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Purchase    | all           | Permanent Address          |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Refinance   | mandatory     | Permanent Address          |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Purchase    | mandatory     | Permanent Address          |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Refinance   | mandatory     | Permanent Address          |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Purchase    | mandatory     | Permanent Address          |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Refinance   | all           | Residential Address        |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Purchase    | all           | Residential Address        |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Refinance   | all           | Residential Address        |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Purchase    | all           | Residential Address        |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Refinance   | mandatory     | Residential Address        |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Purchase    | mandatory     | Residential Address        |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Refinance   | mandatory     | Residential Address        |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Purchase    | mandatory     | Residential Address        |

      #Prerequisite:Application already punch with application type as Multi Asset
# ${ ProductType : ["CV"]}
# ${ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
#${ApplicantType:["indiv","nonindiv"]}

   #FeatureID-ACAUTOCAS-11906
  @NotImplemeted
  Scenario Outline:Save the nominee address with address type as <Address> in insurance details for Funding For as <FundingFor> in collateral details for multi Asset at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user navigates to asset requested page
    And user select Funding For as "<FundingFor>"
    And user select Finance Mode as "<FinanceMode>"
    And user save the asset requested with asset type as Used Asset
    And user edit the added asset requested details
    And user opens Collateral Details section
    And user edit the collateral details
    And user opens Insurance Details section under collateral details page
    And user adds the insurance details
    And user click on Add Address Details in Nominee Details
    When user add "<Address>" in nominee address with "<Mandatory_All>"
    Then Nominee address details save successfully



    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | FundingFor | FinanceMode | Mandatory_All | Address                    |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Refinance   | all           | Alternate Business Address |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Purchase    | all           | Alternate Business Address |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Refinance   | all           | Alternate Business Address |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Purchase    | all           | Alternate Business Address |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Refinance   | mandatory     | Alternate Business Address |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Purchase    | mandatory     | Alternate Business Address |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Refinance   | mandatory     | Alternate Business Address |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Purchase    | mandatory     | Alternate Business Address |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Refinance   | all           | Office/ Business Address   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Purchase    | all           | Office/ Business Address   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Refinance   | all           | Office/ Business Address   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Purchase    | all           | Office/ Business Address   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Refinance   | mandatory     | Office/ Business Address   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Purchase    | mandatory     | Office/ Business Address   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Refinance   | mandatory     | Office/ Business Address   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Purchase    | mandatory     | Office/ Business Address   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Refinance   | all           | Permanent Address          |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Purchase    | all           | Permanent Address          |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Refinance   | all           | Permanent Address          |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Purchase    | all           | Permanent Address          |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Refinance   | mandatory     | Permanent Address          |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Purchase    | mandatory     | Permanent Address          |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Refinance   | mandatory     | Permanent Address          |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Purchase    | mandatory     | Permanent Address          |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Refinance   | all           | Residential Address        |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Purchase    | all           | Residential Address        |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Refinance   | all           | Residential Address        |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Purchase    | all           | Residential Address        |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Refinance   | mandatory     | Residential Address        |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Purchase    | mandatory     | Residential Address        |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Refinance   | mandatory     | Residential Address        |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Purchase    | mandatory     | Residential Address        |

  #Prerequisite:Application already punch with application type as Multi Asset
 # ${ ProductType : ["CEQ","CV"]}
# ${ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
#${ApplicantType:["indiv","nonindiv"]}
   #FeatureID-ACAUTOCAS-11906
  @ImplementedBy-kanika.mahal
  Scenario Outline:Required list of field validation for Alternate Business Address in Nominee Details for Funding For as <FundingFor> under collateral details for multi Asset at "<ApplicationStage>" in "<ProductType>"
    And user reads data from the excel file "sourcing_details.xlsx" under sheet "home" and row 286
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user navigates to asset requested page for "<ApplicationStage>"
    And user select Funding For as "<FundingFor>"
    And user select Finance Mode as "<FinanceMode>"
    And user select asset type as Used Asset
    And user edit the added asset requested details
    And user opens Collateral Details section
    And user edit the collateral details
    And user opens Insurance Details section under collateral details page
    And user reads data from the excel file "asset_details.xlsx" under sheet "nominee_address_details" and row 23
    And user click on Add Address Details in Nominee Details
    And user selects nominee address type as "Alternate Business Address"
    When user select Required tab in Nominee address details
    Then list of field should be present for "Alternate Business Address" in Nominee Address
      | Address Type     |
      | Country          |
      | Flat/Plot Number |
      | PinCode          |
      | State            |
      | City             |
      | Village          |

    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | FundingFor | FinanceMode |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Refinance   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Purchase    |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Refinance   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Purchase    |

 #Prerequisite:Application already punch with application type as Multi Asset
# ${ ProductType : ["CV"]}
# ${ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
#${ApplicantType:["indiv","nonindiv"]}
   #FeatureID-ACAUTOCAS-11906
  @NotImplemeted
  Scenario Outline:Required list of field validation for Alternate Business Address in Nominee Details for Funding For as <FundingFor> in collateral details for multi Asset at "<ApplicationStage>" in "<ProductType>"
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user navigates to asset requested page
    And user select Funding For as "<FundingFor>"
    And user select Finance Mode as "<FinanceMode>"
    And user save the asset requested with asset type as Used Asset
    And user edit the added asset requested details
    And user opens Collateral Details section
    And user edit the collateral details
    And user opens Insurance Details section under collateral details page
    And user adds the insurance details
    And user click on Add Address Details in Nominee Details
    When user select Required tab in Nominee Details
    Then list of field should be present for "Alternate Business Address" in Nominee Details as required field
      | Address Type     |
      | Country          |
      | Flat/Plot Number |
      | PinCode          |
      | State            |
      | City             |
      | Village          |

    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | FundingFor | FinanceMode |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Refinance   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Purchase    |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Refinance   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Purchase    |


   #Prerequisite:Application already punch with application type as Multi Asset
 # ${ ProductType : ["CEQ","CV"]}
# ${ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
#${ApplicantType:["indiv","nonindiv"]}
   #FeatureID-ACAUTOCAS-11906
  @ImplementedBy-kanika.mahal
  Scenario Outline:Fields validation in All Fields for Alternate Business Address in Nominee Details for Funding For as <FundingFor> under collateral details for multi Asset at <ApplicationStage> in <ProductType>
    And user reads data from the excel file "sourcing_details.xlsx" under sheet "home" and row 286
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user navigates to asset requested page for "<ApplicationStage>"
    And user select Funding For as "<FundingFor>"
    And user select Finance Mode as "<FinanceMode>"
    And user select asset type as Used Asset
    And user edit the added asset requested details
    And user opens Collateral Details section
    And user edit the collateral details
    And user opens Insurance Details section under collateral details page
    And user reads data from the excel file "asset_details.xlsx" under sheet "nominee_address_details" and row 23
    And user click on Add Address Details in Nominee Details
    And user selects nominee address type as "Alternate Business Address"
    When user select All Fields in Nominee Address
    Then list of field should be present for "Alternate Business Address" in Nominee Address
      | Address Type             |
      | Full Address             |
      | Country                  |
      | Flat/Plot Number         |
      | Address Line 2           |
      | Address Line 3           |
      | PinCode                  |
      | Region                   |
      | State                    |
      | City                     |
      | District                 |
      | Taluka                   |
      | Village                  |
      | Duration at this Address |
      | Duration at this City    |
      | Primary Phone            |
      | Mobile Phone             |
      | Current Address checkbox |

    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | FundingFor | FinanceMode |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Refinance   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Purchase    |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Refinance   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Purchase    |

 #Prerequisite:Application already punch with application type as Multi Asset
# ${ ProductType : ["CV"]}
# ${ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
#${ApplicantType:["indiv","nonindiv"]}
   #FeatureID-ACAUTOCAS-11906
  @NotImplemeted
  Scenario Outline:Fields validation in All Fields for Alternate Business Address in Nominee Details for Funding For as <FundingFor> under collateral details in multi Asset at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user navigates to asset requested page
    And user select Funding For as "<FundingFor>"
    And user select Finance Mode as "<FinanceMode>"
    And user save the asset requested with asset type as Used Asset
    And user edit the added asset requested details
    And user opens Collateral Details section
    And user edit the collateral details
    And user opens Insurance Details section under collateral details page
    And user adds the insurance details
    And user click on Add Address Details in Nominee Details
    And user selects nominee address type as "Alternate Business Address"
    When user select All Fields in Nominee Address
    Then list of field should be present for "Alternate Business Address" in Nominee Address
      | Address Type             |
      | Full Address             |
      | Country                  |
      | Flat/Plot Number         |
      | Address Line 2           |
      | Address Line 3           |
      | PinCode                  |
      | Region                   |
      | State                    |
      | City                     |
      | District                 |
      | Taluka                   |
      | Village                  |
      | Duration at this Address |
      | Duration at this City    |
      | Primary Phone            |
      | Mobile Phone             |
      | Current Address checkbox |

    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | FundingFor | FinanceMode |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Refinance   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Purchase    |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Refinance   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Purchase    |

    #Prerequisite:Application already punch with application type as Multi Asset
 # ${ ProductType : ["CEQ","CV"]}
# ${ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
#${ApplicantType:["indiv","nonindiv"]}
   #FeatureID-ACAUTOCAS-11906
  @NotImplemeted
  Scenario Outline:List of Field type validation Alternate Business Address in Nominee Details for Funding For as <FundingFor> under collateral details for multi Asset at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user navigates to asset requested page
    And user select Funding For as "<FundingFor>"
    And user select Finance Mode as "<FinanceMode>"
    And user save the asset requested with asset type as Used Asset
    And user edit the added asset requested details
    And user opens Collateral Details section
    And user edit the collateral details
    And user opens Insurance Details section under collateral details page
    And user adds the insurance details
    And user click on Add Address Details in Nominee Details
    When user selects nominee address type as "Alternate Business Address"
    Then list of field should be present in nominee Address for "Alternate Business Address"
      | Field                    | Field_Type     |
      | Address Type             | drop down      |
      | Full Address             | input          |
      | Country                  | drop down      |
      | Flat/Plot Number         | input          |
      | Address Line 2           | input          |
      | Address Line 3           | input          |
      | PinCode                  | list of values |
      | Region                   | drop down      |
      | State                    | drop down      |
      | City                     | drop down      |
      | District                 | drop down      |
      | Taluka                   | input          |
      | Village                  | input          |
      | Duration at this Address | input          |
      | Duration at this City    | input          |
      | Primary Phone            | input          |
      | Mobile Phone             | input          |
      | Current Address checkbox | checkbox       |

    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | FundingFor | FinanceMode |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Refinance   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Purchase    |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Refinance   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Purchase    |

     #Prerequisite:Application already punch with application type as Multi Asset
# ${ ProductType : ["CV"]}
# ${ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
#${ApplicantType:["indiv","nonindiv"]}
   #FeatureID-ACAUTOCAS-11906
  @NotImplemeted
  Scenario Outline:List of Field type validation for Alternate Business Address in Nominee Details for Funding For as <FundingFor> in collateral details for multi Asset at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user navigates to asset requested page
    And user select Funding For as "<FundingFor>"
    And user select Finance Mode as "<FinanceMode>"
    And user save the asset requested with asset type as Used Asset
    And user edit the added asset requested details
    And user opens Collateral Details section
    And user edit the collateral details
    And user opens Insurance Details section under collateral details page
    And user adds the insurance details
    And user click on Add Address Details in Nominee Details
    When user selects nominee address type as "Alternate Business Address"
    Then list of field should be present in nominee Address for "Alternate Business Address"
      | Field                    | Field_Type     |
      | Address Type             | drop down      |
      | Full Address             | input          |
      | Country                  | drop down      |
      | Flat/Plot Number         | input          |
      | Address Line 2           | input          |
      | Address Line 3           | input          |
      | PinCode                  | list of values |
      | Region                   | drop down      |
      | State                    | drop down      |
      | City                     | drop down      |
      | District                 | drop down      |
      | Taluka                   | input          |
      | Village                  | input          |
      | Duration at this Address | input          |
      | Duration at this City    | input          |
      | Primary Phone            | input          |
      | Mobile Phone             | input          |
      | Current Address checkbox | checkbox       |

    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | FundingFor | FinanceMode |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Refinance   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Purchase    |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Refinance   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Purchase    |

     #Prerequisite:Application already punch with application type as Multi Asset
 # ${ ProductType : ["CEQ","CV"]}
# ${ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
#${ApplicantType:["indiv","nonindiv"]}
   #FeatureID-ACAUTOCAS-11906
  @NotImplemeted
  Scenario Outline:Required list of field validation for Office Business Address in Nominee Details for Funding For as <FundingFor> under collateral details for multi Asset at "<ApplicationStage>" in "<ProductType>"
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user navigates to asset requested page
    And user select Funding For as "<FundingFor>"
    And user select Finance Mode as "<FinanceMode>"
    And user save the asset requested with asset type as Used Asset
    And user edit the added asset requested details
    And user opens Collateral Details section
    And user edit the collateral details
    And user opens Insurance Details section under collateral details page
    And user adds the insurance details
    And user click on Add Address Details in Nominee Details
    When user select Required tab in Nominee Details
    Then list field should be present for "Office Business Address" in Nominee Details as required field
      | Address Type     |
      | Country          |
      | Flat/Plot Number |
      | PinCode          |
      | State            |
      | City             |
      | Village          |

    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | FundingFor | FinanceMode |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Refinance   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Purchase    |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Refinance   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Purchase    |

  #Prerequisite:Application already punch with application type as Multi Asset
# ${ ProductType : ["CV"]}
# ${ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
#${ApplicantType:["indiv","nonindiv"]}
   #FeatureID-ACAUTOCAS-11906
  @NotImplemeted
  Scenario Outline:Required list of field validation for Office Business Address in Nominee Details for Funding For as <FundingFor> in collateral details for multi Asset at "<ApplicationStage>" in "<ProductType>"
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user navigates to asset requested page
    And user select Funding For as "<FundingFor>"
    And user select Finance Mode as "<FinanceMode>"
    And user save the asset requested with asset type as Used Asset
    And user edit the added asset requested details
    And user opens Collateral Details section
    And user edit the collateral details
    And user opens Insurance Details section under collateral details page
    And user adds the insurance details
    And user click on Add Address Details in Nominee Details
    When user select Required tab in Nominee Details
    Then list field should be present for "Office Business Address" in Nominee Details as required field
      | Address Type     |
      | Country          |
      | Flat/Plot Number |
      | PinCode          |
      | State            |
      | City             |
      | Village          |

    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | FundingFor | FinanceMode |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Refinance   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Purchase    |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Refinance   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Purchase    |


     #Prerequisite:Application already punch with application type as Multi Asset
 # ${ ProductType : ["CEQ","CV"]}
# ${ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
#${ApplicantType:["indiv","nonindiv"]}
   #FeatureID-ACAUTOCAS-11906
  @NotImplemeted
  Scenario Outline:Fields validation in All Fields for Office Business Address in Nominee Details for Funding For as <FundingFor> under collateral details for multi Asset at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user navigates to asset requested page
    And user select Funding For as "<FundingFor>"
    And user select Finance Mode as "<FinanceMode>"
    And user save the asset requested with asset type as Used Asset
    And user edit the added asset requested details
    And user opens Collateral Details section
    And user edit the collateral details
    And user opens Insurance Details section under collateral details page
    And user adds the insurance details
    And user click on Add Address Details in Nominee Details
    And user selects nominee address type as "Office Business Address"
    When user select All Fields in Nominee Address
    Then list of field should be present for "Office Business Address" in Nominee Address
      | Address Type             |
      | Full Address             |
      | Country                  |
      | Flat/Plot Number         |
      | Address Line 2           |
      | Address Line 3           |
      | PinCode                  |
      | Region                   |
      | State                    |
      | City                     |
      | District                 |
      | Taluka                   |
      | Village                  |
      | Duration at this Address |
      | Duration at this City    |
      | Primary Phone            |
      | Mobile Phone             |
      | Current Address checkbox |

    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | FundingFor | FinanceMode |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Refinance   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Purchase    |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Refinance   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Purchase    |


       #Prerequisite:Application already punch with application type as Multi Asset
# ${ ProductType : ["CV"]}
# ${ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
#${ApplicantType:["indiv","nonindiv"]}
   #FeatureID-ACAUTOCAS-11906
  @NotImplemeted
  Scenario Outline:Fields validation in All Fields for Office Business Address in Nominee Details for Funding For as <FundingFor> in collateral details for multi Asset at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user navigates to asset requested page
    And user select Funding For as "<FundingFor>"
    And user select Finance Mode as "<FinanceMode>"
    And user save the asset requested with asset type as Used Asset
    And user edit the added asset requested details
    And user opens Collateral Details section
    And user edit the collateral details
    And user opens Insurance Details section under collateral details page
    And user adds the insurance details
    And user click on Add Address Details in Nominee Details
    And user selects nominee address type as "Office Business Address"
    When user select All Fields in Nominee Address
    Then list of field should be present for "Office Business Address" in Nominee Address
      | Address Type             |
      | Full Address             |
      | Country                  |
      | Flat/Plot Number         |
      | Address Line 2           |
      | Address Line 3           |
      | PinCode                  |
      | Region                   |
      | State                    |
      | City                     |
      | District                 |
      | Taluka                   |
      | Village                  |
      | Duration at this Address |
      | Duration at this City    |
      | Primary Phone            |
      | Mobile Phone             |
      | Current Address checkbox |

    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | FundingFor | FinanceMode |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Refinance   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Purchase    |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Refinance   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Purchase    |


       #Prerequisite:Application already punch with application type as Multi Asset
 # ${ ProductType : ["CEQ","CV"]}
# ${ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
#${ApplicantType:["indiv","nonindiv"]}
   #FeatureID-ACAUTOCAS-11906
  @NotImplemeted
  Scenario Outline:List of Field type validation for Office Business Address in Nominee Details for Funding For as <FundingFor> under collateral details for multi Asset at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user navigates to asset requested page
    And user select Funding For as "<FundingFor>"
    And user select Finance Mode as "<FinanceMode>"
    And user save the asset requested with asset type as Used Asset
    And user edit the added asset requested details
    And user opens Collateral Details section
    And user edit the collateral details
    And user opens Insurance Details section under collateral details page
    And user adds the insurance details
    And user click on Add Address Details in Nominee Details
    When user selects nominee address type as "Office Business Address"
    Then list of field should be present in nominee Address for "Office Business Address"
      | Field                    | Field_Type     |
      | Address Type             | drop down      |
      | Full Address             | input          |
      | Country                  | drop down      |
      | Flat/Plot Number         | input          |
      | Address Line 2           | input          |
      | Address Line 3           | input          |
      | PinCode                  | list of values |
      | Region                   | drop down      |
      | State                    | drop down      |
      | City                     | drop down      |
      | District                 | drop down      |
      | Taluka                   | input          |
      | Village                  | input          |
      | Duration at this Address | input          |
      | Duration at this City    | input          |
      | Primary Phone            | input          |
      | Mobile Phone             | input          |
      | Current Address checkbox | checkbox       |

    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | FundingFor | FinanceMode |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Refinance   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Purchase    |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Refinance   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Purchase    |


       #Prerequisite:Application already punch with application type as Multi Asset
# ${ ProductType : ["CV"]}
# ${ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
#${ApplicantType:["indiv","nonindiv"]}
   #FeatureID-ACAUTOCAS-11906
  @NotImplemeted
  Scenario Outline:List of Field type validation for Office Business Address in Nominee Details for Funding For as <FundingFor> in collateral details for multi Asset at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user navigates to asset requested page
    And user select Funding For as "<FundingFor>"
    And user select Finance Mode as "<FinanceMode>"
    And user save the asset requested with asset type as Used Asset
    And user edit the added asset requested details
    And user opens Collateral Details section
    And user edit the collateral details
    And user opens Insurance Details section under collateral details page
    And user adds the insurance details
    And user click on Add Address Details in Nominee Details
    When user selects nominee address type as "Office Business Address"
    Then list of field should be present in nominee Address for "Office Business Address"
      | Field                    | Field_Type     |
      | Address Type             | drop down      |
      | Full Address             | input          |
      | Country                  | drop down      |
      | Flat/Plot Number         | input          |
      | Address Line 2           | input          |
      | Address Line 3           | input          |
      | PinCode                  | list of values |
      | Region                   | drop down      |
      | State                    | drop down      |
      | City                     | drop down      |
      | District                 | drop down      |
      | Taluka                   | input          |
      | Village                  | input          |
      | Duration at this Address | input          |
      | Duration at this City    | input          |
      | Primary Phone            | input          |
      | Mobile Phone             | input          |
      | Current Address checkbox | checkbox       |

    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | FundingFor | FinanceMode |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Refinance   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Purchase    |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Refinance   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Purchase    |



       #Prerequisite:Application already punch with application type as Multi Asset
 # ${ ProductType : ["CEQ","CV"]}
# ${ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
#${ApplicantType:["indiv","nonindiv"]}
   #FeatureID-ACAUTOCAS-11906
  @NotImplemeted
  Scenario Outline:Required list of field validation for Permanent Address in Nominee Details for Funding For as <FundingFor> under collateral details for multi Asset at "<ApplicationStage>" in "<ProductType>"
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user navigates to asset requested page
    And user select Funding For as "<FundingFor>"
    And user select Finance Mode as "<FinanceMode>"
    And user save the asset requested with asset type as Used Asset
    And user edit the added asset requested details
    And user opens Collateral Details section
    And user edit the collateral details
    And user opens Insurance Details section under collateral details page
    And user adds the insurance details
    And user click on Add Address Details in Nominee Details
    When user select Required tab in Nominee Details
    Then list of field should be present for "Permanent Address" in Nominee Details as required field
      | Address Type     |
      | Country          |
      | Flat/Plot Number |
      | PinCode          |
      | State            |
      | City             |
      | Village          |
      | Residence Status |

    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | FundingFor | FinanceMode |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Refinance   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Purchase    |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Refinance   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Purchase    |


       #Prerequisite:Application already punch with application type as Multi Asset
# ${ ProductType : ["CV"]}
# ${ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
#${ApplicantType:["indiv","nonindiv"]}
   #FeatureID-ACAUTOCAS-11906
  @NotImplemeted
  Scenario Outline:Required list of field validation for Permanent Address in Nominee Details for Funding For as <FundingFor> in collateral details for multi Asset at "<ApplicationStage>" in "<ProductType>"
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user navigates to asset requested page
    And user select Funding For as "<FundingFor>"
    And user select Finance Mode as "<FinanceMode>"
    And user save the asset requested with asset type as Used Asset
    And user edit the added asset requested details
    And user opens Collateral Details section
    And user edit the collateral details
    And user opens Insurance Details section under collateral details page
    And user adds the insurance details
    And user click on Add Address Details in Nominee Details
    When user select Required tab in Nominee Details
    Then list of field should be present for "Permanent Address" in Nominee Details as required field
      | Address Type     |
      | Country          |
      | Flat/Plot Number |
      | PinCode          |
      | State            |
      | City             |
      | Village          |
      | Residence Status |

    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | FundingFor | FinanceMode |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Refinance   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Purchase    |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Refinance   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Purchase    |


     #Prerequisite:Application already punch with application type as Multi Asset
 # ${ ProductType : ["CEQ","CV"]}
# ${ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
#${ApplicantType:["indiv","nonindiv"]}
   #FeatureID-ACAUTOCAS-11906
  @NotImplemeted
  Scenario Outline:Fields validation in All Fields for Permanent Address in Nominee Details for Funding For as <FundingFor> under collateral details for multi Asset at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user navigates to asset requested page
    And user select Funding For as "<FundingFor>"
    And user select Finance Mode as "<FinanceMode>"
    And user save the asset requested with asset type as Used Asset
    And user edit the added asset requested details
    And user opens Collateral Details section
    And user edit the collateral details
    And user opens Insurance Details section under collateral details page
    And user adds the insurance details
    And user click on Add Address Details in Nominee Details
    And user selects nominee address type as "Permanent Address"
    When user select All Fields in Nominee Address
    Then list of field should be present for "Permanent Address" in Nominee Address
      | Address Type             |
      | Full Address             |
      | Country                  |
      | Flat/Plot Number         |
      | Address Line 2           |
      | Address Line 3           |
      | PinCode                  |
      | Region                   |
      | State                    |
      | City                     |
      | District                 |
      | Taluka                   |
      | Village                  |
      | Duration at this Address |
      | Duration at this City    |
      | Primary Phone            |
      | Mobile Phone             |
      | Current Address checkbox |
      | Residence Status         |
      | Residence Type           |
      | Address In Document      |

    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | FundingFor | FinanceMode |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Refinance   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Purchase    |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Refinance   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Purchase    |

       #Prerequisite:Application already punch with application type as Multi Asset
# ${ ProductType : ["CV"]}
# ${ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
#${ApplicantType:["indiv","nonindiv"]}
   #FeatureID-ACAUTOCAS-11906
  @NotImplemeted
  Scenario Outline:Fields validation in All Fields for Permanent Address in Nominee Details for Funding For as <FundingFor> in collateral details for multi Asset at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user navigates to asset requested page
    And user select Funding For as "<FundingFor>"
    And user select Finance Mode as "<FinanceMode>"
    And user save the asset requested with asset type as Used Asset
    And user edit the added asset requested details
    And user opens Collateral Details section
    And user edit the collateral details
    And user opens Insurance Details section under collateral details page
    And user adds the insurance details
    And user click on Add Address Details in Nominee Details
    And user selects nominee address type as "Permanent Address"
    When user select All Fields in Nominee Address
    Then list of field should be present for "Permanent Address" in Nominee Address
      | Address Type             |
      | Full Address             |
      | Country                  |
      | Flat/Plot Number         |
      | Address Line 2           |
      | Address Line 3           |
      | PinCode                  |
      | Region                   |
      | State                    |
      | City                     |
      | District                 |
      | Taluka                   |
      | Village                  |
      | Duration at this Address |
      | Duration at this City    |
      | Primary Phone            |
      | Mobile Phone             |
      | Current Address checkbox |
      | Residence Status         |
      | Residence Type           |
      | Address In Document      |

    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | FundingFor | FinanceMode |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Refinance   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Purchase    |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Refinance   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Purchase    |


     #Prerequisite:Application already punch with application type as Multi Asset
 # ${ ProductType : ["CEQ","CV"]}
# ${ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
#${ApplicantType:["indiv","nonindiv"]}
   #FeatureID-ACAUTOCAS-11906
  @NotImplemeted
  Scenario Outline:List of Field type validation for Permanent Address in Nominee Details for Funding For as <FundingFor> under collateral details for multi Asset at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user navigates to asset requested page
    And user select Funding For as "<FundingFor>"
    And user select Finance Mode as "<FinanceMode>"
    And user save the asset requested with asset type as Used Asset
    And user edit the added asset requested details
    And user opens Collateral Details section
    And user edit the collateral details
    And user opens Insurance Details section under collateral details page
    And user adds the insurance details
    And user click on Add Address Details in Nominee Details
    When user selects nominee address type as "Permanent Address"
    Then list of field should be present in nominee Address for "Permanent Address"
      | Field                    | Field_Type     |
      | Address Type             | drop down      |
      | Full Address             | input          |
      | Country                  | drop down      |
      | Flat/Plot Number         | input          |
      | Address Line 2           | input          |
      | Address Line 3           | input          |
      | PinCode                  | list of values |
      | Region                   | drop down      |
      | State                    | drop down      |
      | City                     | drop down      |
      | District                 | drop down      |
      | Taluka                   | input          |
      | Village                  | input          |
      | Duration at this Address | input          |
      | Duration at this City    | input          |
      | Primary Phone            | input          |
      | Mobile Phone             | input          |
      | Current Address checkbox | checkbox       |
      | Residence Status         | drop down      |
      | Residence Type           | drop down      |
      | Address In Document      | dropdown       |


    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | FundingFor | FinanceMode |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Refinance   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Purchase    |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Refinance   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Purchase    |

     #Prerequisite:Application already punch with application type as Multi Asset
 # ${ ProductType : ["CV"]}
# ${ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
#${ApplicantType:["indiv","nonindiv"]}
   #FeatureID-ACAUTOCAS-11906
  @NotImplemeted
  Scenario Outline:List of Field type validation for Permanent Address in Nominee Details for Funding For as <FundingFor> in collateral details for multi Asset at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user navigates to asset requested page
    And user select Funding For as "<FundingFor>"
    And user select Finance Mode as "<FinanceMode>"
    And user save the asset requested with asset type as Used Asset
    And user edit the added asset requested details
    And user opens Collateral Details section
    And user edit the collateral details
    And user opens Insurance Details section under collateral details page
    And user adds the insurance details
    And user click on Add Address Details in Nominee Details
    When user selects nominee address type as "Permanent Address"
    Then list of field should be present in nominee Address for "Permanent Address"
      | Field                    | Field_Type     |
      | Address Type             | drop down      |
      | Full Address             | input          |
      | Country                  | drop down      |
      | Flat/Plot Number         | input          |
      | Address Line 2           | input          |
      | Address Line 3           | input          |
      | PinCode                  | list of values |
      | Region                   | drop down      |
      | State                    | drop down      |
      | City                     | drop down      |
      | District                 | drop down      |
      | Taluka                   | input          |
      | Village                  | input          |
      | Duration at this Address | input          |
      | Duration at this City    | input          |
      | Primary Phone            | input          |
      | Mobile Phone             | input          |
      | Current Address checkbox | checkbox       |
      | Residence Status         | drop down      |
      | Residence Type           | drop down      |
      | Address In Document      | dropdown       |


    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | FundingFor | FinanceMode |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Refinance   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Purchase    |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Refinance   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Purchase    |

    #Prerequisite:Application already punch with application type as Multi Asset
 # ${ ProductType : ["CEQ","CV"]}
# ${ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
#${ApplicantType:["indiv","nonindiv"]}
   #FeatureID-ACAUTOCAS-11906
  @NotImplemeted
  Scenario Outline: Required list of field validation for Residential Address in Nominee Details for Funding For as <FundingFor> under collateral details for multi Asset at "<ApplicationStage>" in "<ProductType>"
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user navigates to asset requested page
    And user select Funding For as "<FundingFor>"
    And user select Finance Mode as "<FinanceMode>"
    And user save the asset requested with asset type as Used Asset
    And user edit the added asset requested details
    And user opens Collateral Details section
    And user edit the collateral details
    And user opens Insurance Details section under collateral details page
    And user adds the insurance details
    And user click on Add Address Details in Nominee Details
    When user select Required tab in Nominee Details
    Then list of field should be present for "Residential Address" in Nominee Details as required field
      | Address Type     |
      | Country          |
      | Flat/Plot Number |
      | PinCode          |
      | State            |
      | City             |
      | Village          |
      | Residence Status |

    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | FundingFor | FinanceMode |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Refinance   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Purchase    |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Refinance   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Purchase    |

    #Prerequisite:Application already punch with application type as Multi Asset
 # ${ ProductType : ["CV"]}
# ${ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
#${ApplicantType:["indiv","nonindiv"]}
   #FeatureID-ACAUTOCAS-11906
  @NotImplemeted
  Scenario Outline: Required list of field validation for Residential Address in Nominee Details for Funding For as <FundingFor> in collateral details for multi Asset at "<ApplicationStage>" in "<ProductType>"
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user navigates to asset requested page
    And user select Funding For as "<FundingFor>"
    And user select Finance Mode as "<FinanceMode>"
    And user save the asset requested with asset type as Used Asset
    And user edit the added asset requested details
    And user opens Collateral Details section
    And user edit the collateral details
    And user opens Insurance Details section under collateral details page
    And user adds the insurance details
    And user click on Add Address Details in Nominee Details
    When user select Required tab in Nominee Details
    Then list of field should be present for "Residential Address" in Nominee Details as required field
      | Address Type     |
      | Country          |
      | Flat/Plot Number |
      | PinCode          |
      | State            |
      | City             |
      | Village          |
      | Residence Status |

    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | FundingFor | FinanceMode |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Refinance   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Purchase    |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Refinance   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Purchase    |


   #Prerequisite:Application already punch with application type as Multi Asset
 # ${ ProductType : ["CEQ","CV"]}
# ${ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
#${ApplicantType:["indiv","nonindiv"]}
   #FeatureID-ACAUTOCAS-11906
  @NotImplemeted
  Scenario Outline:Fields validation in All Fields for Residential Address in Nominee Details for Funding For as <FundingFor> under collateral details for multi Asset at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user navigates to asset requested page
    And user select Funding For as "<FundingFor>"
    And user select Finance Mode as "<FinanceMode>"
    And user save the asset requested with asset type as Used Asset
    And user edit the added asset requested details
    And user opens Collateral Details section
    And user edit the collateral details
    And user opens Insurance Details section under collateral details page
    And user adds the insurance details
    And user click on Add Address Details in Nominee Details
    And user selects nominee address type as "Residential Address"
    When user select All Fields in Nominee Address
    Then list of field should be present for "Residential Address" in Nominee Address
      | Address Type             |
      | Full Address             |
      | Country                  |
      | Flat/Plot Number         |
      | Address Line 2           |
      | Address Line 3           |
      | PinCode                  |
      | Region                   |
      | State                    |
      | City                     |
      | District                 |
      | Taluka                   |
      | Village                  |
      | Duration at this Address |
      | Duration at this City    |
      | Primary Phone            |
      | Mobile Phone             |
      | Current Address checkbox |
      | Residence Status         |
      | Residence Type           |
      | Address In Document      |

    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | FundingFor | FinanceMode |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Refinance   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Purchase    |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Refinance   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Purchase    |

 #Prerequisite:Application already punch with application type as Multi Asset
 # ${ ProductType : ["CV"]}
# ${ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
#${ApplicantType:["indiv","nonindiv"]}
   #FeatureID-ACAUTOCAS-11906
  @NotImplemeted
  Scenario Outline:Fields validation in All Fields for Residential Address in Nominee Details for Funding For as <FundingFor> in collateral details for multi Asset at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user navigates to asset requested page
    And user select Funding For as "<FundingFor>"
    And user select Finance Mode as "<FinanceMode>"
    And user save the asset requested with asset type as Used Asset
    And user edit the added asset requested details
    And user opens Collateral Details section
    And user edit the collateral details
    And user opens Insurance Details section under collateral details page
    And user adds the insurance details
    And user click on Add Address Details in Nominee Details
    And user selects nominee address type as "Residential Address"
    When user select All Fields in Nominee Address
    Then list of field should be present for "Residential Address" in Nominee Address
      | Address Type             |
      | Full Address             |
      | Country                  |
      | Flat/Plot Number         |
      | Address Line 2           |
      | Address Line 3           |
      | PinCode                  |
      | Region                   |
      | State                    |
      | City                     |
      | District                 |
      | Taluka                   |
      | Village                  |
      | Duration at this Address |
      | Duration at this City    |
      | Primary Phone            |
      | Mobile Phone             |
      | Current Address checkbox |
      | Residence Status         |
      | Residence Type           |
      | Address In Document      |

    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | FundingFor | FinanceMode |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Refinance   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Purchase    |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Refinance   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Purchase    |

     #Prerequisite:Application already punch with application type as Multi Asset
 # ${ ProductType : ["CEQ","CV"]}
# ${ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
#${ApplicantType:["indiv","nonindiv"]}
   #FeatureID-ACAUTOCAS-11906
  @NotImplemeted
  Scenario Outline:List of Field type validation for Residential Address in Nominee Details for Funding For as <FundingFor> under collateral details for multi Asset at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user navigates to asset requested page
    And user select Funding For as "<FundingFor>"
    And user select Finance Mode as "<FinanceMode>"
    And user save the asset requested with asset type as Used Asset
    And user edit the added asset requested details
    And user opens Collateral Details section
    And user edit the collateral details
    And user opens Insurance Details section under collateral details page
    And user adds the insurance details
    And user click on Add Address Details in Nominee Details
    When user selects nominee address type as "Residential Address"
    Then list of field should be present in nominee Address for "Residential Address"
      | Field                    | Field_Type     |
      | Address Type             | drop down      |
      | Full Address             | input          |
      | Country                  | drop down      |
      | Flat/Plot Number         | input          |
      | Address Line 2           | input          |
      | Address Line 3           | input          |
      | PinCode                  | list of values |
      | Region                   | drop down      |
      | State                    | drop down      |
      | City                     | drop down      |
      | District                 | drop down      |
      | Taluka                   | input          |
      | Village                  | input          |
      | Duration at this Address | input          |
      | Duration at this City    | input          |
      | Primary Phone            | input          |
      | Mobile Phone             | input          |
      | Current Address checkbox | checkbox       |
      | Residence Status         | drop down      |
      | Residence Type           | drop down      |
      | Address In Document      | dropdown       |

    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | FundingFor | FinanceMode |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Refinance   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Purchase    |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Refinance   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Purchase    |

      #Prerequisite:Application already punch with application type as Multi Asset
 # ${ ProductType : ["CV"]}
# ${ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
#${ApplicantType:["indiv","nonindiv"]}
   #FeatureID-ACAUTOCAS-11906
  @NotImplemeted
  Scenario Outline:List of Field type validation for Residential Address in Nominee Details for Funding For as <FundingFor> in collateral details for multi Asset at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user navigates to asset requested page
    And user select Funding For as "<FundingFor>"
    And user select Finance Mode as "<FinanceMode>"
    And user save the asset requested with asset type as Used Asset
    And user edit the added asset requested details
    And user opens Collateral Details section
    And user edit the collateral details
    And user opens Insurance Details section under collateral details page
    And user adds the insurance details
    And user click on Add Address Details in Nominee Details
    When user selects nominee address type as "Residential Address"
    Then list of field should be present in nominee Address for "Residential Address"
      | Field                    | Field_Type     |
      | Address Type             | drop down      |
      | Full Address             | input          |
      | Country                  | drop down      |
      | Flat/Plot Number         | input          |
      | Address Line 2           | input          |
      | Address Line 3           | input          |
      | PinCode                  | list of values |
      | Region                   | drop down      |
      | State                    | drop down      |
      | City                     | drop down      |
      | District                 | drop down      |
      | Taluka                   | input          |
      | Village                  | input          |
      | Duration at this Address | input          |
      | Duration at this City    | input          |
      | Primary Phone            | input          |
      | Mobile Phone             | input          |
      | Current Address checkbox | checkbox       |
      | Residence Status         | drop down      |
      | Residence Type           | drop down      |
      | Address In Document      | dropdown       |

    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | FundingFor | FinanceMode |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Refinance   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Purchase    |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Refinance   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Purchase    |


     #Prerequisite:Application already punch with application type as Multi Asset
 # ${ ProductType : ["CEQ","CV"]}
# ${ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
#${ApplicantType:["indiv","nonindiv"]}
   #FeatureID-ACAUTOCAS-11906
  @NotImplemeted
  Scenario Outline:<Field> field validation for <Address_City> in <Address_Type> for nominee address for Funding For as <FundingFor> under collateral details for multi Asset at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user navigates to asset requested page
    And user select Funding For as "<FundingFor>"
    And user select Finance Mode as "<FinanceMode>"
    And user save the asset requested with asset type as Used Asset
    And user edit the added asset requested details
    And user opens Collateral Details section
    And user edit the collateral details
    And user opens Insurance Details section under collateral details page
    And user adds the insurance details
    And user click on Add Address Details in Nominee Details
    When user selects address type as "<Address_Type>" in nominee Address
    Then "<Field>" field for "<Address_City>" should be display as Calendar field

    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | FundingFor | FinanceMode | Field     | Address_City                | Address_Type               |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Refinance   | From Date | Duration at current Address | Alternate Business Address |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Purchase    | From Date | Duration at current Address | Alternate Business Address |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Refinance   | From Date | Duration at current Address | Alternate Business Address |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Purchase    | From Date | Duration at current Address | Alternate Business Address |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Refinance   | To Date   | Duration at current Address | Alternate Business Address |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Purchase    | To Date   | Duration at current Address | Alternate Business Address |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Refinance   | To Date   | Duration at current Address | Alternate Business Address |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Purchase    | To Date   | Duration at current Address | Alternate Business Address |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Refinance   | From Date | Duration at Current City    | Alternate Business Address |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Purchase    | From Date | Duration at Current City    | Alternate Business Address |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Refinance   | From Date | Duration at Current City    | Alternate Business Address |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Purchase    | From Date | Duration at Current City    | Alternate Business Address |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Refinance   | To Date   | Duration at Current City    | Alternate Business Address |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Purchase    | To Date   | Duration at Current City    | Alternate Business Address |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Refinance   | To Date   | Duration at Current City    | Alternate Business Address |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Purchase    | To Date   | Duration at Current City    | Alternate Business Address |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Refinance   | From Date | Duration at current Address | Office/ Business Address   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Purchase    | From Date | Duration at current Address | Office/ Business Address   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Refinance   | From Date | Duration at current Address | Office/ Business Address   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Purchase    | From Date | Duration at current Address | Office/ Business Address   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Refinance   | To Date   | Duration at current Address | Office/ Business Address   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Purchase    | To Date   | Duration at current Address | Office/ Business Address   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Refinance   | To Date   | Duration at current Address | Office/ Business Address   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Purchase    | To Date   | Duration at current Address | Office/ Business Address   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Refinance   | From Date | Duration at Current City    | Office/ Business Address   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Purchase    | From Date | Duration at Current City    | Office/ Business Address   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Refinance   | From Date | Duration at Current City    | Office/ Business Address   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Purchase    | From Date | Duration at Current City    | Office/ Business Address   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Refinance   | To Date   | Duration at Current City    | Office/ Business Address   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Purchase    | To Date   | Duration at Current City    | Office/ Business Address   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Refinance   | To Date   | Duration at Current City    | Office/ Business Address   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Purchase    | To Date   | Duration at Current City    | Office/ Business Address   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Refinance   | From Date | Duration at current Address | Permanent Address          |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Purchase    | From Date | Duration at current Address | Permanent Address          |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Refinance   | From Date | Duration at current Address | Permanent Address          |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Purchase    | From Date | Duration at current Address | Permanent Address          |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Refinance   | To Date   | Duration at current Address | Permanent Address          |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Purchase    | To Date   | Duration at current Address | Permanent Address          |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Refinance   | To Date   | Duration at current Address | Permanent Address          |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Purchase    | To Date   | Duration at current Address | Permanent Address          |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Refinance   | From Date | Duration at Current City    | Permanent Address          |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Purchase    | From Date | Duration at Current City    | Permanent Address          |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Refinance   | From Date | Duration at Current City    | Permanent Address          |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Purchase    | From Date | Duration at Current City    | Permanent Address          |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Refinance   | To Date   | Duration at Current City    | Permanent Address          |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Purchase    | To Date   | Duration at Current City    | Permanent Address          |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Refinance   | To Date   | Duration at Current City    | Permanent Address          |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Purchase    | To Date   | Duration at Current City    | Permanent Address          |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Refinance   | From Date | Duration at current Address | Residential Address        |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Purchase    | From Date | Duration at current Address | Residential Address        |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Refinance   | From Date | Duration at current Address | Residential Address        |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Purchase    | From Date | Duration at current Address | Residential Address        |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Refinance   | To Date   | Duration at current Address | Residential Address        |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Purchase    | To Date   | Duration at current Address | Residential Address        |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Refinance   | To Date   | Duration at current Address | Residential Address        |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Purchase    | To Date   | Duration at current Address | Residential Address        |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Refinance   | From Date | Duration at Current City    | Residential Address        |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Purchase    | From Date | Duration at Current City    | Residential Address        |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Refinance   | From Date | Duration at Current City    | Residential Address        |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Purchase    | From Date | Duration at Current City    | Residential Address        |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Refinance   | To Date   | Duration at Current City    | Residential Address        |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Purchase    | To Date   | Duration at Current City    | Residential Address        |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Refinance   | To Date   | Duration at Current City    | Residential Address        |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Purchase    | To Date   | Duration at Current City    | Residential Address        |

     #Prerequisite:Application already punch with application type as Multi Asset
 # ${ ProductType : ["CV"]}
# ${ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
#${ApplicantType:["indiv","nonindiv"]}
   #FeatureID-ACAUTOCAS-11906
  @NotImplemeted
  Scenario Outline:<Field> field validation for <Address_City> in <Address_Type> for nominee address for Funding For as <FundingFor> in collateral details for multi Asset at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user navigates to asset requested page
    And user select Funding For as "<FundingFor>"
    And user select Finance Mode as "<FinanceMode>"
    And user save the asset requested with asset type as Used Asset
    And user edit the added asset requested details
    And user opens Collateral Details section
    And user edit the collateral details
    And user opens Insurance Details section under collateral details page
    And user adds the insurance details
    And user click on Add Address Details in Nominee Details
    When user selects address type as "<Address_Type>" in nominee Address
    Then "<Field>" field for "<Address_City>" should be display as Calendar field

    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | FundingFor | FinanceMode | Field     | Address_City                | Address_Type               |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Refinance   | From Date | Duration at current Address | Alternate Business Address |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Purchase    | From Date | Duration at current Address | Alternate Business Address |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Refinance   | From Date | Duration at current Address | Alternate Business Address |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Purchase    | From Date | Duration at current Address | Alternate Business Address |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Refinance   | To Date   | Duration at current Address | Alternate Business Address |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Purchase    | To Date   | Duration at current Address | Alternate Business Address |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Refinance   | To Date   | Duration at current Address | Alternate Business Address |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Purchase    | To Date   | Duration at current Address | Alternate Business Address |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Refinance   | From Date | Duration at Current City    | Alternate Business Address |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Purchase    | From Date | Duration at Current City    | Alternate Business Address |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Refinance   | From Date | Duration at Current City    | Alternate Business Address |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Purchase    | From Date | Duration at Current City    | Alternate Business Address |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Refinance   | To Date   | Duration at Current City    | Alternate Business Address |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Purchase    | To Date   | Duration at Current City    | Alternate Business Address |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Refinance   | To Date   | Duration at Current City    | Alternate Business Address |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Purchase    | To Date   | Duration at Current City    | Alternate Business Address |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Refinance   | From Date | Duration at current Address | Office/ Business Address   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Purchase    | From Date | Duration at current Address | Office/ Business Address   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Refinance   | From Date | Duration at current Address | Office/ Business Address   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Purchase    | From Date | Duration at current Address | Office/ Business Address   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Refinance   | To Date   | Duration at current Address | Office/ Business Address   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Purchase    | To Date   | Duration at current Address | Office/ Business Address   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Refinance   | To Date   | Duration at current Address | Office/ Business Address   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Purchase    | To Date   | Duration at current Address | Office/ Business Address   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Refinance   | From Date | Duration at Current City    | Office/ Business Address   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Purchase    | From Date | Duration at Current City    | Office/ Business Address   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Refinance   | From Date | Duration at Current City    | Office/ Business Address   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Purchase    | From Date | Duration at Current City    | Office/ Business Address   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Refinance   | To Date   | Duration at Current City    | Office/ Business Address   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Purchase    | To Date   | Duration at Current City    | Office/ Business Address   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Refinance   | To Date   | Duration at Current City    | Office/ Business Address   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Purchase    | To Date   | Duration at Current City    | Office/ Business Address   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Refinance   | From Date | Duration at current Address | Permanent Address          |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Purchase    | From Date | Duration at current Address | Permanent Address          |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Refinance   | From Date | Duration at current Address | Permanent Address          |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Purchase    | From Date | Duration at current Address | Permanent Address          |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Refinance   | To Date   | Duration at current Address | Permanent Address          |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Purchase    | To Date   | Duration at current Address | Permanent Address          |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Refinance   | To Date   | Duration at current Address | Permanent Address          |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Purchase    | To Date   | Duration at current Address | Permanent Address          |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Refinance   | From Date | Duration at Current City    | Permanent Address          |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Purchase    | From Date | Duration at Current City    | Permanent Address          |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Refinance   | From Date | Duration at Current City    | Permanent Address          |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Purchase    | From Date | Duration at Current City    | Permanent Address          |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Refinance   | To Date   | Duration at Current City    | Permanent Address          |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Purchase    | To Date   | Duration at Current City    | Permanent Address          |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Refinance   | To Date   | Duration at Current City    | Permanent Address          |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Purchase    | To Date   | Duration at Current City    | Permanent Address          |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Refinance   | From Date | Duration at current Address | Residential Address        |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Purchase    | From Date | Duration at current Address | Residential Address        |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Refinance   | From Date | Duration at current Address | Residential Address        |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Purchase    | From Date | Duration at current Address | Residential Address        |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Refinance   | To Date   | Duration at current Address | Residential Address        |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Purchase    | To Date   | Duration at current Address | Residential Address        |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Refinance   | To Date   | Duration at current Address | Residential Address        |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Purchase    | To Date   | Duration at current Address | Residential Address        |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Refinance   | From Date | Duration at Current City    | Residential Address        |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Purchase    | From Date | Duration at Current City    | Residential Address        |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Refinance   | From Date | Duration at Current City    | Residential Address        |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Purchase    | From Date | Duration at Current City    | Residential Address        |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Refinance   | To Date   | Duration at Current City    | Residential Address        |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Purchase    | To Date   | Duration at Current City    | Residential Address        |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Refinance   | To Date   | Duration at Current City    | Residential Address        |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Purchase    | To Date   | Duration at Current City    | Residential Address        |

   #Prerequisite:Application already punch with application type as Multi Asset
 # ${ ProductType : ["CEQ","CV"]}
# ${ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
#${ApplicantType:["indiv","nonindiv"]}
   #FeatureID-ACAUTOCAS-11906
  @NotImplemeted
  Scenario Outline:<Field> validation for <Address_City> in <Address_Type> for nominee address for Funding For as <FundingFor> under collateral details for multi Asset at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user navigates to asset requested page
    And user select Funding For as "<FundingFor>"
    And user select Finance Mode as "<FinanceMode>"
    And user save the asset requested with asset type as Used Asset
    And user edit the added asset requested details
    And user opens Collateral Details section
    And user edit the collateral details
    And user opens Insurance Details section under collateral details page
    And user adds the insurance details
    And user click on Add Address Details in Nominee Details
    And user selects address type as "<Address_Type>" in nominee Address
    And user fills To Date field for "<Address_City>"
    When user fills From Date field for "<Address_City>"
    Then "<Field>" field should be display in two separate block

    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | FundingFor | FinanceMode | Field           | Address_City                | Address_Type               |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Refinance   | Year and Months | Duration at current address | Alternate Business Address |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Purchase    | Year and Months | Duration at current address | Alternate Business Address |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Refinance   | Year and Months | Duration at current address | Alternate Business Address |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Purchase    | Year and Months | Duration at current address | Alternate Business Address |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Refinance   | Year and Months | Duration at Current City    | Alternate Business Address |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Purchase    | Year and Months | Duration at Current City    | Alternate Business Address |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Refinance   | Year and Months | Duration at Current City    | Alternate Business Address |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Purchase    | Year and Months | Duration at Current City    | Alternate Business Address |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Refinance   | Year and Months | Duration at current address | Office/ Business Address   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Purchase    | Year and Months | Duration at current address | Office/ Business Address   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Refinance   | Year and Months | Duration at current address | Office/ Business Address   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Purchase    | Year and Months | Duration at current address | Office/ Business Address   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Refinance   | Year and Months | Duration at Current City    | Office/ Business Address   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Purchase    | Year and Months | Duration at Current City    | Office/ Business Address   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Refinance   | Year and Months | Duration at Current City    | Office/ Business Address   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Purchase    | Year and Months | Duration at Current City    | Office/ Business Address   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Refinance   | Year and Months | Duration at current address | Permanent Address          |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Purchase    | Year and Months | Duration at current address | Permanent Address          |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Refinance   | Year and Months | Duration at current address | Permanent Address          |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Purchase    | Year and Months | Duration at current address | Permanent Address          |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Refinance   | Year and Months | Duration at Current City    | Permanent Address          |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Purchase    | Year and Months | Duration at Current City    | Permanent Address          |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Refinance   | Year and Months | Duration at Current City    | Permanent Address          |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Purchase    | Year and Months | Duration at Current City    | Permanent Address          |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Refinance   | Year and Months | Duration at current address | Residential Address        |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Purchase    | Year and Months | Duration at current address | Residential Address        |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Refinance   | Year and Months | Duration at current address | Residential Address        |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Purchase    | Year and Months | Duration at current address | Residential Address        |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Refinance   | Year and Months | Duration at Current City    | Residential Address        |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Purchase    | Year and Months | Duration at Current City    | Residential Address        |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Refinance   | Year and Months | Duration at Current City    | Residential Address        |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Purchase    | Year and Months | Duration at Current City    | Residential Address        |

     #Prerequisite:Application already punch with application type as Multi Asset
  # ${ ProductType : ["CV"]}
# ${ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
#${ApplicantType:["indiv","nonindiv"]}
   #FeatureID-ACAUTOCAS-11906
  @NotImplemeted
  Scenario Outline:<Field> validation for <Address_City> in <Address_Type> for nominee address for Funding For as <FundingFor> in collateral details for multi Asset at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user navigates to asset requested page
    And user select Funding For as "<FundingFor>"
    And user select Finance Mode as "<FinanceMode>"
    And user save the asset requested with asset type as Used Asset
    And user edit the added asset requested details
    And user opens Collateral Details section
    And user edit the collateral details
    And user opens Insurance Details section under collateral details page
    And user adds the insurance details
    And user click on Add Address Details in Nominee Details
    And user selects address type as "<Address_Type>" in nominee Address
    And user fills To Date field for "<Address_City>"
    When user fills From Date field for "<Address_City>"
    Then "<Field>" field should be display in two separate block

    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | FundingFor | FinanceMode | Field           | Address_City                | Address_Type               |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Refinance   | Year and Months | Duration at current address | Alternate Business Address |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Purchase    | Year and Months | Duration at current address | Alternate Business Address |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Refinance   | Year and Months | Duration at current address | Alternate Business Address |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Purchase    | Year and Months | Duration at current address | Alternate Business Address |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Refinance   | Year and Months | Duration at Current City    | Alternate Business Address |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Purchase    | Year and Months | Duration at Current City    | Alternate Business Address |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Refinance   | Year and Months | Duration at Current City    | Alternate Business Address |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Purchase    | Year and Months | Duration at Current City    | Alternate Business Address |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Refinance   | Year and Months | Duration at current address | Office/ Business Address   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Purchase    | Year and Months | Duration at current address | Office/ Business Address   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Refinance   | Year and Months | Duration at current address | Office/ Business Address   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Purchase    | Year and Months | Duration at current address | Office/ Business Address   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Refinance   | Year and Months | Duration at Current City    | Office/ Business Address   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Purchase    | Year and Months | Duration at Current City    | Office/ Business Address   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Refinance   | Year and Months | Duration at Current City    | Office/ Business Address   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Purchase    | Year and Months | Duration at Current City    | Office/ Business Address   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Refinance   | Year and Months | Duration at current address | Permanent Address          |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Purchase    | Year and Months | Duration at current address | Permanent Address          |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Refinance   | Year and Months | Duration at current address | Permanent Address          |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Purchase    | Year and Months | Duration at current address | Permanent Address          |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Refinance   | Year and Months | Duration at Current City    | Permanent Address          |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Purchase    | Year and Months | Duration at Current City    | Permanent Address          |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Refinance   | Year and Months | Duration at Current City    | Permanent Address          |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Purchase    | Year and Months | Duration at Current City    | Permanent Address          |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Refinance   | Year and Months | Duration at current address | Residential Address        |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Purchase    | Year and Months | Duration at current address | Residential Address        |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Refinance   | Year and Months | Duration at current address | Residential Address        |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Purchase    | Year and Months | Duration at current address | Residential Address        |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Refinance   | Year and Months | Duration at Current City    | Residential Address        |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Purchase    | Year and Months | Duration at Current City    | Residential Address        |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Refinance   | Year and Months | Duration at Current City    | Residential Address        |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Purchase    | Year and Months | Duration at Current City    | Residential Address        |

   #Prerequisite:Application already punch with application type as Multi Asset
 # ${ ProductType : ["CEQ","CV"]}
# ${ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
#${ApplicantType:["indiv","nonindiv"]}
   #FeatureID-ACAUTOCAS-11906
  @NotImplemeted
  Scenario Outline: <Field> calculation for <Address_City> in <Address_Type> for nominee address for Funding For as <FundingFor> under collateral details for multi Asset at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user navigates to asset requested page
    And user select Funding For as "<FundingFor>"
    And user select Finance Mode as "<FinanceMode>"
    And user save the asset requested with asset type as Used Asset
    And user edit the added asset requested details
    And user opens Collateral Details section
    And user edit the collateral details
    And user opens Insurance Details section under collateral details page
    And user adds the insurance details
    And user click on Add Address Details in Nominee Details
    And user selects address type as "<Address_Type>" in nominee Address
    And user fills To Date field for "<Address_City>"
    When user fills From Date field for "<Address_City>"
    Then "<Field>" field should be calculated correctly for "<Address_City>"

    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | FundingFor | FinanceMode | Field           | Address_City                | Address_Type               |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Refinance   | Year and Months | Duration at current address | Alternate Business Address |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Purchase    | Year and Months | Duration at current address | Alternate Business Address |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Refinance   | Year and Months | Duration at current address | Alternate Business Address |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Purchase    | Year and Months | Duration at current address | Alternate Business Address |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Refinance   | Year and Months | Duration at Current City    | Alternate Business Address |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Purchase    | Year and Months | Duration at Current City    | Alternate Business Address |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Refinance   | Year and Months | Duration at Current City    | Alternate Business Address |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Purchase    | Year and Months | Duration at Current City    | Alternate Business Address |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Refinance   | Year and Months | Duration at current address | Office/ Business Address   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Purchase    | Year and Months | Duration at current address | Office/ Business Address   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Refinance   | Year and Months | Duration at current address | Office/ Business Address   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Purchase    | Year and Months | Duration at current address | Office/ Business Address   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Refinance   | Year and Months | Duration at Current City    | Office/ Business Address   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Purchase    | Year and Months | Duration at Current City    | Office/ Business Address   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Refinance   | Year and Months | Duration at Current City    | Office/ Business Address   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Purchase    | Year and Months | Duration at Current City    | Office/ Business Address   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Refinance   | Year and Months | Duration at current address | Permanent  Address         |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Purchase    | Year and Months | Duration at current address | Permanent  Address         |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Refinance   | Year and Months | Duration at current address | Permanent  Address         |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Purchase    | Year and Months | Duration at current address | Permanent  Address         |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Refinance   | Year and Months | Duration at Current City    | Permanent  Address         |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Purchase    | Year and Months | Duration at Current City    | Permanent  Address         |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Refinance   | Year and Months | Duration at Current City    | Permanent  Address         |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Purchase    | Year and Months | Duration at Current City    | Permanent  Address         |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Refinance   | Year and Months | Duration at current address | Residential Address        |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Purchase    | Year and Months | Duration at current address | Residential Address        |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Refinance   | Year and Months | Duration at current address | Residential Address        |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Purchase    | Year and Months | Duration at current address | Residential Address        |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Refinance   | Year and Months | Duration at Current City    | Residential Address        |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Purchase    | Year and Months | Duration at Current City    | Residential Address        |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Refinance   | Year and Months | Duration at Current City    | Residential Address        |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Purchase    | Year and Months | Duration at Current City    | Residential Address        |

      #Prerequisite:Application already punch with application type as Multi Asset
 # ${ ProductType : ["CV"]}
# ${ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
#${ApplicantType:["indiv","nonindiv"]}
   #FeatureID-ACAUTOCAS-11906
  @NotImplemeted
  Scenario Outline: <Field> calculation for <Address_City> in <Address_Type> for nominee address for Funding For as <FundingFor> in collateral details for multi Asset at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user navigates to asset requested page
    And user select Funding For as "<FundingFor>"
    And user select Finance Mode as "<FinanceMode>"
    And user save the asset requested with asset type as Used Asset
    And user edit the added asset requested details
    And user opens Collateral Details section
    And user edit the collateral details
    And user opens Insurance Details section under collateral details page
    And user adds the insurance details
    And user click on Add Address Details in Nominee Details
    And user selects address type as "<Address_Type>" in nominee Address
    And user fills To Date field for "<Address_City>"
    When user fills From Date field for "<Address_City>"
    Then "<Field>" field should be calculated correctly for "<Address_City>"

    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | FundingFor | FinanceMode | Field           | Address_City                | Address_Type               |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Refinance   | Year and Months | Duration at current address | Alternate Business Address |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Purchase    | Year and Months | Duration at current address | Alternate Business Address |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Refinance   | Year and Months | Duration at current address | Alternate Business Address |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Purchase    | Year and Months | Duration at current address | Alternate Business Address |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Refinance   | Year and Months | Duration at Current City    | Alternate Business Address |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Purchase    | Year and Months | Duration at Current City    | Alternate Business Address |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Refinance   | Year and Months | Duration at Current City    | Alternate Business Address |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Purchase    | Year and Months | Duration at Current City    | Alternate Business Address |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Refinance   | Year and Months | Duration at current address | Office/ Business Address   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Purchase    | Year and Months | Duration at current address | Office/ Business Address   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Refinance   | Year and Months | Duration at current address | Office/ Business Address   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Purchase    | Year and Months | Duration at current address | Office/ Business Address   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Refinance   | Year and Months | Duration at Current City    | Office/ Business Address   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Purchase    | Year and Months | Duration at Current City    | Office/ Business Address   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Refinance   | Year and Months | Duration at Current City    | Office/ Business Address   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Purchase    | Year and Months | Duration at Current City    | Office/ Business Address   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Refinance   | Year and Months | Duration at current address | Permanent  Address         |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Purchase    | Year and Months | Duration at current address | Permanent  Address         |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Refinance   | Year and Months | Duration at current address | Permanent  Address         |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Purchase    | Year and Months | Duration at current address | Permanent  Address         |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Refinance   | Year and Months | Duration at Current City    | Permanent  Address         |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Purchase    | Year and Months | Duration at Current City    | Permanent  Address         |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Refinance   | Year and Months | Duration at Current City    | Permanent  Address         |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Purchase    | Year and Months | Duration at Current City    | Permanent  Address         |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Refinance   | Year and Months | Duration at current address | Residential Address        |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Purchase    | Year and Months | Duration at current address | Residential Address        |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Refinance   | Year and Months | Duration at current address | Residential Address        |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Purchase    | Year and Months | Duration at current address | Residential Address        |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Refinance   | Year and Months | Duration at Current City    | Residential Address        |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Purchase    | Year and Months | Duration at Current City    | Residential Address        |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Refinance   | Year and Months | Duration at Current City    | Residential Address        |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Purchase    | Year and Months | Duration at Current City    | Residential Address        |

   #Prerequisite:Application already punch with application type as Multi Asset
 # ${ ProductType : ["CEQ","CV"]}
# ${ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
#${ApplicantType:["indiv","nonindiv"]}
   #FeatureID-ACAUTOCAS-11906
  @NotImplemeted
  Scenario Outline:<Field> calculation for <Address_City> in <Address_Type> if Current Address checkbox for nominee address is checked for Funding For as <FundingFor> at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user navigates to asset requested page
    And user select Funding For as "<FundingFor>"
    And user select Finance Mode as "<FinanceMode>"
    And user save the asset requested with asset type as Used Asset
    And user edit the added asset requested details
    And user opens Collateral Details section
    And user edit the collateral details
    And user opens Insurance Details section under collateral details page
    And user adds the insurance details
    And user click on Add Address Details in Nominee Details
    And user selects address type as "<Address_Type>" in nominee Address
    And user checked Current Address checkbox
    When user fills From Date field for "<Address_City>"
    Then "<Field>" field should be calculated correctly as per current system date for "<Address_City>"

    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | FundingFor | FinanceMode | Field           | Address_City                | Address_Type               |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Refinance   | Year and Months | Duration at current address | Alternate Business Address |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Purchase    | Year and Months | Duration at current address | Alternate Business Address |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Refinance   | Year and Months | Duration at current address | Alternate Business Address |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Purchase    | Year and Months | Duration at current address | Alternate Business Address |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Refinance   | Year and Months | Duration at Current City    | Alternate Business Address |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Purchase    | Year and Months | Duration at Current City    | Alternate Business Address |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Refinance   | Year and Months | Duration at Current City    | Alternate Business Address |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Purchase    | Year and Months | Duration at Current City    | Alternate Business Address |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Refinance   | Year and Months | Duration at current address | Office/ Business Address   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Purchase    | Year and Months | Duration at current address | Office/ Business Address   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Refinance   | Year and Months | Duration at current address | Office/ Business Address   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Purchase    | Year and Months | Duration at current address | Office/ Business Address   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Refinance   | Year and Months | Duration at Current City    | Office/ Business Address   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Purchase    | Year and Months | Duration at Current City    | Office/ Business Address   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Refinance   | Year and Months | Duration at Current City    | Office/ Business Address   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Purchase    | Year and Months | Duration at Current City    | Office/ Business Address   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Refinance   | Year and Months | Duration at current address | Permanent Address          |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Purchase    | Year and Months | Duration at current address | Permanent Address          |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Refinance   | Year and Months | Duration at current address | Permanent Address          |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Purchase    | Year and Months | Duration at current address | Permanent Address          |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Refinance   | Year and Months | Duration at Current City    | Permanent Address          |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Purchase    | Year and Months | Duration at Current City    | Permanent Address          |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Refinance   | Year and Months | Duration at Current City    | Permanent Address          |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Purchase    | Year and Months | Duration at Current City    | Permanent Address          |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Refinance   | Year and Months | Duration at current address | Residential Address        |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Purchase    | Year and Months | Duration at current address | Residential Address        |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Refinance   | Year and Months | Duration at current address | Residential Address        |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Purchase    | Year and Months | Duration at current address | Residential Address        |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Refinance   | Year and Months | Duration at Current City    | Residential Address        |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Purchase    | Year and Months | Duration at Current City    | Residential Address        |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Refinance   | Year and Months | Duration at Current City    | Residential Address        |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Purchase    | Year and Months | Duration at Current City    | Residential Address        |

     #Prerequisite:Application already punch with application type as Multi Asset
 # ${ ProductType : ["CV"]}
# ${ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
#${ApplicantType:["indiv","nonindiv"]}
   #FeatureID-ACAUTOCAS-11906
  @NotImplemeted
  Scenario Outline:<Field> calculation for <Address_City> in <Address_Type> if Current Address checkbox for nominee address is checked for Funding For as <FundingFor> in collateral details at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user navigates to asset requested page
    And user select Funding For as "<FundingFor>"
    And user select Finance Mode as "<FinanceMode>"
    And user save the asset requested with asset type as Used Asset
    And user edit the added asset requested details
    And user opens Collateral Details section
    And user edit the collateral details
    And user opens Insurance Details section under collateral details page
    And user adds the insurance details
    And user click on Add Address Details in Nominee Details
    And user selects address type as "<Address_Type>" in nominee Address
    And user checked Current Address checkbox
    When user fills From Date field for "<Address_City>"
    Then "<Field>" field should be calculated correctly as per current system date for "<Address_City>"

    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | FundingFor | FinanceMode | Field           | Address_City                | Address_Type               |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Refinance   | Year and Months | Duration at current address | Alternate Business Address |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Purchase    | Year and Months | Duration at current address | Alternate Business Address |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Refinance   | Year and Months | Duration at current address | Alternate Business Address |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Purchase    | Year and Months | Duration at current address | Alternate Business Address |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Refinance   | Year and Months | Duration at Current City    | Alternate Business Address |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Purchase    | Year and Months | Duration at Current City    | Alternate Business Address |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Refinance   | Year and Months | Duration at Current City    | Alternate Business Address |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Purchase    | Year and Months | Duration at Current City    | Alternate Business Address |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Refinance   | Year and Months | Duration at current address | Office/ Business Address   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Purchase    | Year and Months | Duration at current address | Office/ Business Address   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Refinance   | Year and Months | Duration at current address | Office/ Business Address   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Purchase    | Year and Months | Duration at current address | Office/ Business Address   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Refinance   | Year and Months | Duration at Current City    | Office/ Business Address   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Purchase    | Year and Months | Duration at Current City    | Office/ Business Address   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Refinance   | Year and Months | Duration at Current City    | Office/ Business Address   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Purchase    | Year and Months | Duration at Current City    | Office/ Business Address   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Refinance   | Year and Months | Duration at current address | Permanent Address          |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Purchase    | Year and Months | Duration at current address | Permanent Address          |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Refinance   | Year and Months | Duration at current address | Permanent Address          |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Purchase    | Year and Months | Duration at current address | Permanent Address          |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Refinance   | Year and Months | Duration at Current City    | Permanent Address          |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Purchase    | Year and Months | Duration at Current City    | Permanent Address          |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Refinance   | Year and Months | Duration at Current City    | Permanent Address          |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Purchase    | Year and Months | Duration at Current City    | Permanent Address          |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Refinance   | Year and Months | Duration at current address | Residential Address        |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Purchase    | Year and Months | Duration at current address | Residential Address        |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Refinance   | Year and Months | Duration at current address | Residential Address        |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Purchase    | Year and Months | Duration at current address | Residential Address        |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Refinance   | Year and Months | Duration at Current City    | Residential Address        |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Purchase    | Year and Months | Duration at Current City    | Residential Address        |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Refinance   | Year and Months | Duration at Current City    | Residential Address        |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Purchase    | Year and Months | Duration at Current City    | Residential Address        |


   #Prerequisite:Application already punch with application type as Multi Asset
 # ${ ProductType : ["CEQ","CV"]}
# ${ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
#${ApplicantType:["indiv","nonindiv"]}
   #FeatureID-ACAUTOCAS-11906
  @NotImplemeted
  Scenario Outline:Edit the added <Address> for nominee address is checked for Funding For as <FundingFor> under collateral details for multi Asset at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user navigates to asset requested page
    And user select Funding For as "<FundingFor>"
    And user select Finance Mode as "<FinanceMode>"
    And user save the asset requested with asset type as Used Asset
    And user edit the added asset requested details
    And user opens Collateral Details section
    And user edit the collateral details
    And user opens Insurance Details section under collateral details page
    And user adds the insurance details
    And user click on Add Address Details in Nominee Details
    When user add "<Address>" in nominee address
    And user edits "<Address>" details in nominee address
    Then "<Address>" should be edited successfully

    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | FundingFor | FinanceMode | Address                    |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Refinance   | Alternate Business Address |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Purchase    | Alternate Business Address |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Refinance   | Alternate Business Address |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Purchase    | Alternate Business Address |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Refinance   | Office/ Business Address   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Purchase    | Office/ Business Address   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Refinance   | Office/ Business Address   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Purchase    | Office/ Business Address   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Refinance   | Permanent Address          |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Purchase    | Permanent Address          |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Refinance   | Permanent Address          |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Purchase    | Permanent Address          |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Refinance   | Residential Address        |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Purchase    | Residential Address        |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Refinance   | Residential Address        |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Purchase    | Residential Address        |

    #Prerequisite:Application already punch with application type as Multi Asset
 # ${ ProductType : ["CV"]}
# ${ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
#${ApplicantType:["indiv","nonindiv"]}
   #FeatureID-ACAUTOCAS-11906
  @NotImplemeted
  Scenario Outline:Edit the added <Address> for nominee address is checked for Funding For as <FundingFor> in collateral details for multi Asset at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user navigates to asset requested page
    And user select Funding For as "<FundingFor>"
    And user select Finance Mode as "<FinanceMode>"
    And user save the asset requested with asset type as Used Asset
    And user edit the added asset requested details
    And user opens Collateral Details section
    And user edit the collateral details
    And user opens Insurance Details section under collateral details page
    And user adds the insurance details
    And user click on Add Address Details in Nominee Details
    When user add "<Address>" in nominee address
    And user edits "<Address>" details in nominee address
    Then "<Address>" should be edited successfully

    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | FundingFor | FinanceMode | Address                    |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Refinance   | Alternate Business Address |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Purchase    | Alternate Business Address |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Refinance   | Alternate Business Address |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Purchase    | Alternate Business Address |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Refinance   | Office/ Business Address   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Purchase    | Office/ Business Address   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Refinance   | Office/ Business Address   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Purchase    | Office/ Business Address   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Refinance   | Permanent Address          |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Purchase    | Permanent Address          |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Refinance   | Permanent Address          |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Purchase    | Permanent Address          |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Refinance   | Residential Address        |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Purchase    | Residential Address        |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Refinance   | Residential Address        |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Purchase    | Residential Address        |

  #Prerequisite:Application already punch with application type as Multi Asset
 # ${ ProductType : ["CEQ","CV"]}
# ${ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
#${ApplicantType:["indiv","nonindiv"]}
   #FeatureID-ACAUTOCAS-11906
  @NotImplemeted
  Scenario Outline:Validation of <Field_Name> for Nominee Details with <InputType> for Funding For as <FundingFor> in collateral details at "<ApplicationStage>" in "<ProductType>"
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user navigates to asset requested page
    And user select Funding For as "<FundingFor>"
    And user select Finance Mode as "<FinanceMode>"
    And user save the asset requested with asset type as Used Asset
    And user edit the added asset requested details
    And user opens Collateral Details section
    And user edit the collateral details
    And user opens Nominee Details section under collateral details page
    And user adds the insurance details
    When user fills "<Field_Name>" field with "<InputType>"
    Then "<Field_Name>" field "<Throws_notThrows>" with proper message


    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | FundingFor | FinanceMode | Field_Name                | InputType                  | Throws_notThrows                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Refinance   | Nominee Name              | valid value                | does not throw any error           |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Purchase    | Nominee Name              | valid value                | does not throw any error           |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Refinance   | Nominee Name              | valid value                | does not throw any error           |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Purchase    | Nominee Name              | valid value                | does not throw any error           |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Refinance   | Nominee Name              | both digits and characters | does not throw any error           |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Purchase    | Nominee Name              | both digits and characters | does not throw any error           |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Refinance   | Nominee Name              | both digits and characters | does not throw any error           |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Purchase    | Nominee Name              | both digits and characters | does not throw any error           |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Refinance   | Nominee Name              | space                      | does not throw any error           |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Purchase    | Nominee Name              | space                      | does not throw any error           |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Refinance   | Nominee Name              | space                      | does not throw any error           |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Purchase    | Nominee Name              | space                      | does not throw any error           |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Refinance   | Nominee Name              | negative value             | throws an error with error message |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Purchase    | Nominee Name              | negative value             | throws an error with error message |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Refinance   | Nominee Name              | negative value             | throws an error with error message |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Purchase    | Nominee Name              | negative value             | throws an error with error message |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Refinance   | Nominee Name              | special character with dot | throws an error with error message |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Purchase    | Nominee Name              | special character with dot | throws an error with error message |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Refinance   | Nominee Name              | special character with dot | throws an error with error message |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Purchase    | Nominee Name              | special character with dot | throws an error with error message |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Refinance   | Nominee Name              | special characters         | throws an error with error message |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Purchase    | Nominee Name              | special characters         | throws an error with error message |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Refinance   | Nominee Name              | special characters         | throws an error with error message |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Purchase    | Nominee Name              | special characters         | throws an error with error message |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Refinance   | Percentage of Entitlement | valid value                | does not throw any error           |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Purchase    | Percentage of Entitlement | valid value                | does not throw any error           |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Refinance   | Percentage of Entitlement | valid value                | does not throw any error           |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Purchase    | Percentage of Entitlement | valid value                | does not throw any error           |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Refinance   | Percentage of Entitlement | both digits and characters | throws an error with error message |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Purchase    | Percentage of Entitlement | both digits and characters | throws an error with error message |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Refinance   | Percentage of Entitlement | both digits and characters | throws an error with error message |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Purchase    | Percentage of Entitlement | both digits and characters | throws an error with error message |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Refinance   | Percentage of Entitlement | more than 2 decimal places | throws an error with error message |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Purchase    | Percentage of Entitlement | more than 2 decimal places | throws an error with error message |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Refinance   | Percentage of Entitlement | more than 2 decimal places | throws an error with error message |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Purchase    | Percentage of Entitlement | more than 2 decimal places | throws an error with error message |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Refinance   | Percentage of Entitlement | space                      | throws an error with error message |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Purchase    | Percentage of Entitlement | space                      | throws an error with error message |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Refinance   | Percentage of Entitlement | space                      | throws an error with error message |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Purchase    | Percentage of Entitlement | space                      | throws an error with error message |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Refinance   | Percentage of Entitlement | negative value             | throws an error with error message |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Purchase    | Percentage of Entitlement | negative value             | throws an error with error message |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Refinance   | Percentage of Entitlement | negative value             | throws an error with error message |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Purchase    | Percentage of Entitlement | negative value             | throws an error with error message |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Refinance   | Percentage of Entitlement | special characters         | throws an error with error message |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Purchase    | Percentage of Entitlement | special characters         | throws an error with error message |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Refinance   | Percentage of Entitlement | special characters         | throws an error with error message |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Purchase    | Percentage of Entitlement | special characters         | throws an error with error message |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Refinance   | Percentage of Entitlement | more than 100 digits       | throws an error with error message |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Purchase    | Percentage of Entitlement | more than 100 digits       | throws an error with error message |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Refinance   | Percentage of Entitlement | more than 100 digits       | throws an error with error message |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Purchase    | Percentage of Entitlement | more than 100 digits       | throws an error with error message |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Refinance   | Appointee Name            | valid value                | does not throw any error           |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Purchase    | Appointee Name            | valid value                | does not throw any error           |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Refinance   | Appointee Name            | valid value                | does not throw any error           |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Purchase    | Appointee Name            | valid value                | does not throw any error           |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Refinance   | Appointee Name            | both digits and characters | throws an error with error message |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Purchase    | Appointee Name            | both digits and characters | throws an error with error message |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Refinance   | Appointee Name            | both digits and characters | throws an error with error message |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Purchase    | Appointee Name            | both digits and characters | throws an error with error message |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Refinance   | Appointee Name            | space                      | does not throw any error           |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Purchase    | Appointee Name            | space                      | does not throw any error           |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Refinance   | Appointee Name            | space                      | does not throw any error           |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Purchase    | Appointee Name            | space                      | does not throw any error           |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Refinance   | Appointee Name            | negative value             | throws an error with error message |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Purchase    | Appointee Name            | negative value             | throws an error with error message |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Refinance   | Appointee Name            | negative value             | throws an error with error message |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Purchase    | Appointee Name            | negative value             | throws an error with error message |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Refinance   | Appointee Name            | special characters         | throws an error with error message |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Purchase    | Appointee Name            | special characters         | throws an error with error message |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Refinance   | Appointee Name            | special characters         | throws an error with error message |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Purchase    | Appointee Name            | special characters         | throws an error with error message |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Refinance   | Appointee DOB             | valid date                 | does not throw any error           |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Purchase    | Appointee DOB             | valid date                 | does not throw any error           |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Refinance   | Appointee DOB             | valid date                 | does not throw any error           |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Purchase    | Appointee DOB             | valid date                 | does not throw any error           |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Refinance   | Appointee DOB             | more than current date     | throws an error with error message |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Purchase    | Appointee DOB             | more than current date     | throws an error with error message |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Refinance   | Appointee DOB             | more than current date     | throws an error with error message |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Purchase    | Appointee DOB             | more than current date     | throws an error with error message |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Refinance   | Appointee DOB             | before 1942                | throws an error with error message |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Purchase    | Appointee DOB             | before 1942                | throws an error with error message |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Refinance   | Appointee DOB             | before 1942                | throws an error with error message |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Purchase    | Appointee DOB             | before 1942                | throws an error with error message |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Refinance   | Date of Birth             | valid date                 | does not throw any error           |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Purchase    | Date of Birth             | valid date                 | does not throw any error           |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Refinance   | Date of Birth             | valid date                 | does not throw any error           |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Purchase    | Date of Birth             | valid date                 | does not throw any error           |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Refinance   | Date of Birth             | more than current date     | throws an error with error message |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Purchase    | Date of Birth             | more than current date     | throws an error with error message |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Refinance   | Date of Birth             | more than current date     | throws an error with error message |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Purchase    | Date of Birth             | more than current date     | throws an error with error message |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Refinance   | Date of Birth             | before 1942                | throws an error with error message |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Purchase    | Date of Birth             | before 1942                | throws an error with error message |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Refinance   | Date of Birth             | before 1942                | throws an error with error message |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Purchase    | Date of Birth             | before 1942                | throws an error with error message |

    #Prerequisite:Application already punch with application type as Multi Asset
 # ${ ProductType : ["CV"]}
# ${ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
#${ApplicantType:["indiv","nonindiv"]}
   #FeatureID-ACAUTOCAS-11906
  @NotImplemeted
  Scenario Outline:Validation of <Field_Name> for Nominee Details with <InputType> for Funding For as <FundingFor> under collateral details at "<ApplicationStage>" in "<ProductType>"
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user navigates to asset requested page
    And user select Funding For as "<FundingFor>"
    And user select Finance Mode as "<FinanceMode>"
    And user save the asset requested with asset type as Used Asset
    And user edit the added asset requested details
    And user opens Collateral Details section
    And user edit the collateral details
    And user opens Nominee Details section under collateral details page
    And user adds the insurance details
    When user fills "<Field_Name>" field with "<InputType>"
    Then "<Field_Name>" field "<Throws_notThrows>" with proper message


    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | FundingFor | FinanceMode | Field_Name                | InputType                  | Throws_notThrows                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Refinance   | Nominee Name              | valid value                | does not throw any error           |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Purchase    | Nominee Name              | valid value                | does not throw any error           |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Refinance   | Nominee Name              | valid value                | does not throw any error           |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Purchase    | Nominee Name              | valid value                | does not throw any error           |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Refinance   | Nominee Name              | both digits and characters | does not throw any error           |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Purchase    | Nominee Name              | both digits and characters | does not throw any error           |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Refinance   | Nominee Name              | both digits and characters | does not throw any error           |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Purchase    | Nominee Name              | both digits and characters | does not throw any error           |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Refinance   | Nominee Name              | space                      | does not throw any error           |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Purchase    | Nominee Name              | space                      | does not throw any error           |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Refinance   | Nominee Name              | space                      | does not throw any error           |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Purchase    | Nominee Name              | space                      | does not throw any error           |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Refinance   | Nominee Name              | negative value             | throws an error with error message |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Purchase    | Nominee Name              | negative value             | throws an error with error message |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Refinance   | Nominee Name              | negative value             | throws an error with error message |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Purchase    | Nominee Name              | negative value             | throws an error with error message |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Refinance   | Nominee Name              | special character with dot | throws an error with error message |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Purchase    | Nominee Name              | special character with dot | throws an error with error message |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Refinance   | Nominee Name              | special character with dot | throws an error with error message |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Purchase    | Nominee Name              | special character with dot | throws an error with error message |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Refinance   | Nominee Name              | special characters         | throws an error with error message |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Purchase    | Nominee Name              | special characters         | throws an error with error message |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Refinance   | Nominee Name              | special characters         | throws an error with error message |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Purchase    | Nominee Name              | special characters         | throws an error with error message |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Refinance   | Percentage of Entitlement | valid value                | does not throw any error           |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Purchase    | Percentage of Entitlement | valid value                | does not throw any error           |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Refinance   | Percentage of Entitlement | valid value                | does not throw any error           |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Purchase    | Percentage of Entitlement | valid value                | does not throw any error           |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Refinance   | Percentage of Entitlement | both digits and characters | throws an error with error message |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Purchase    | Percentage of Entitlement | both digits and characters | throws an error with error message |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Refinance   | Percentage of Entitlement | both digits and characters | throws an error with error message |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Purchase    | Percentage of Entitlement | both digits and characters | throws an error with error message |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Refinance   | Percentage of Entitlement | more than 2 decimal places | throws an error with error message |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Purchase    | Percentage of Entitlement | more than 2 decimal places | throws an error with error message |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Refinance   | Percentage of Entitlement | more than 2 decimal places | throws an error with error message |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Purchase    | Percentage of Entitlement | more than 2 decimal places | throws an error with error message |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Refinance   | Percentage of Entitlement | space                      | throws an error with error message |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Purchase    | Percentage of Entitlement | space                      | throws an error with error message |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Refinance   | Percentage of Entitlement | space                      | throws an error with error message |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Purchase    | Percentage of Entitlement | space                      | throws an error with error message |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Refinance   | Percentage of Entitlement | negative value             | throws an error with error message |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Purchase    | Percentage of Entitlement | negative value             | throws an error with error message |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Refinance   | Percentage of Entitlement | negative value             | throws an error with error message |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Purchase    | Percentage of Entitlement | negative value             | throws an error with error message |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Refinance   | Percentage of Entitlement | special characters         | throws an error with error message |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Purchase    | Percentage of Entitlement | special characters         | throws an error with error message |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Refinance   | Percentage of Entitlement | special characters         | throws an error with error message |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Purchase    | Percentage of Entitlement | special characters         | throws an error with error message |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Refinance   | Percentage of Entitlement | more than 100 digits       | throws an error with error message |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Purchase    | Percentage of Entitlement | more than 100 digits       | throws an error with error message |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Refinance   | Percentage of Entitlement | more than 100 digits       | throws an error with error message |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Purchase    | Percentage of Entitlement | more than 100 digits       | throws an error with error message |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Refinance   | Appointee Name            | valid value                | does not throw any error           |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Purchase    | Appointee Name            | valid value                | does not throw any error           |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Refinance   | Appointee Name            | valid value                | does not throw any error           |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Purchase    | Appointee Name            | valid value                | does not throw any error           |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Refinance   | Appointee Name            | both digits and characters | throws an error with error message |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Purchase    | Appointee Name            | both digits and characters | throws an error with error message |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Refinance   | Appointee Name            | both digits and characters | throws an error with error message |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Purchase    | Appointee Name            | both digits and characters | throws an error with error message |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Refinance   | Appointee Name            | space                      | does not throw any error           |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Purchase    | Appointee Name            | space                      | does not throw any error           |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Refinance   | Appointee Name            | space                      | does not throw any error           |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Purchase    | Appointee Name            | space                      | does not throw any error           |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Refinance   | Appointee Name            | negative value             | throws an error with error message |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Purchase    | Appointee Name            | negative value             | throws an error with error message |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Refinance   | Appointee Name            | negative value             | throws an error with error message |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Purchase    | Appointee Name            | negative value             | throws an error with error message |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Refinance   | Appointee Name            | special characters         | throws an error with error message |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Purchase    | Appointee Name            | special characters         | throws an error with error message |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Refinance   | Appointee Name            | special characters         | throws an error with error message |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Purchase    | Appointee Name            | special characters         | throws an error with error message |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Refinance   | Appointee DOB             | valid date                 | does not throw any error           |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Purchase    | Appointee DOB             | valid date                 | does not throw any error           |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Refinance   | Appointee DOB             | valid date                 | does not throw any error           |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Purchase    | Appointee DOB             | valid date                 | does not throw any error           |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Refinance   | Appointee DOB             | more than current date     | throws an error with error message |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Purchase    | Appointee DOB             | more than current date     | throws an error with error message |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Refinance   | Appointee DOB             | more than current date     | throws an error with error message |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Purchase    | Appointee DOB             | more than current date     | throws an error with error message |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Refinance   | Appointee DOB             | before 1942                | throws an error with error message |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Purchase    | Appointee DOB             | before 1942                | throws an error with error message |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Refinance   | Appointee DOB             | before 1942                | throws an error with error message |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Purchase    | Appointee DOB             | before 1942                | throws an error with error message |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Refinance   | Date of Birth             | valid date                 | does not throw any error           |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Purchase    | Date of Birth             | valid date                 | does not throw any error           |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Refinance   | Date of Birth             | valid date                 | does not throw any error           |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Purchase    | Date of Birth             | valid date                 | does not throw any error           |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Refinance   | Date of Birth             | more than current date     | throws an error with error message |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Purchase    | Date of Birth             | more than current date     | throws an error with error message |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Refinance   | Date of Birth             | more than current date     | throws an error with error message |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Purchase    | Date of Birth             | more than current date     | throws an error with error message |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Refinance   | Date of Birth             | before 1942                | throws an error with error message |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Purchase    | Date of Birth             | before 1942                | throws an error with error message |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Refinance   | Date of Birth             | before 1942                | throws an error with error message |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Purchase    | Date of Birth             | before 1942                | throws an error with error message |


  #Prerequisite:Application already punch with application type as Multi Asset
 # ${ ProductType : ["CEQ","CV"]}
# ${ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
#${ApplicantType:["indiv","nonindiv"]}
   #FeatureID-ACAUTOCAS-11906
  @NotImplemeted
  Scenario Outline:Saving Nominee Details in Insurance details for Funding For as <FundingFor> in collateral details for multi Asset at "<ApplicationStage>" in "<ProductType>"
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user navigates to asset requested page
    And user select Funding For as "<FundingFor>"
    And user select Finance Mode as "<FinanceMode>"
    And user save the asset requested with asset type as Used Asset
    And user edit the added asset requested details
    And user opens Collateral Details section
    And user edit the collateral details
    And user opens Collateral Details section
    And user edit the collateral details
    And user opens Insurance Details section under collateral details page
    And user fill Nominee details
    When user fills Nominee details in insurance details with "<Mandatory_All>"
    Then Nominee details save successfully

    Examples:
      | Mandatory_All | ApplicantType   | ApplicationStage   | ProductType   | FundingFor | FinanceMode |
      | Mandatory     | <ApplicantType> | <ApplicationStage> | <ProductType> | Chassis    | Refinance   |
      | Mandatory     | <ApplicantType> | <ApplicationStage> | <ProductType> | Chassis    | Purchase    |
      | Mandatory     | <ApplicantType> | <ApplicationStage> | <ProductType> | FBV        | Refinance   |
      | Mandatory     | <ApplicantType> | <ApplicationStage> | <ProductType> | FBV        | Purchase    |
      | All           | <ApplicantType> | <ApplicationStage> | <ProductType> | Chassis    | Refinance   |
      | All           | <ApplicantType> | <ApplicationStage> | <ProductType> | Chassis    | Purchase    |
      | All           | <ApplicantType> | <ApplicationStage> | <ProductType> | FBV        | Refinance   |
      | All           | <ApplicantType> | <ApplicationStage> | <ProductType> | FBV        | Purchase    |

     #Prerequisite:Application already punch with application type as Multi Asset
 # ${ ProductType : ["CV"]}
# ${ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
#${ApplicantType:["indiv","nonindiv"]}
   #FeatureID-ACAUTOCAS-11906
  @NotImplemeted
  Scenario Outline:Saving Nominee Details in Insurance details for Funding For as <FundingFor> under collateral details for multi Asset at "<ApplicationStage>" in "<ProductType>"
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user navigates to asset requested page
    And user select Funding For as "<FundingFor>"
    And user select Finance Mode as "<FinanceMode>"
    And user save the asset requested with asset type as Used Asset
    And user edit the added asset requested details
    And user opens Collateral Details section
    And user edit the collateral details
    And user opens Collateral Details section
    And user edit the collateral details
    And user opens Insurance Details section under collateral details page
    And user fill Nominee details
    When user fills Nominee details in insurance details with "<Mandatory_All>"
    Then Nominee details save successfully

    Examples:
      | Mandatory_All | ApplicantType   | ApplicationStage   | ProductType   | FundingFor | FinanceMode |
      | Mandatory     | <ApplicantType> | <ApplicationStage> | <ProductType> | Both       | Refinance   |
      | Mandatory     | <ApplicantType> | <ApplicationStage> | <ProductType> | Both       | Purchase    |
      | Mandatory     | <ApplicantType> | <ApplicationStage> | <ProductType> | Body       | Refinance   |
      | Mandatory     | <ApplicantType> | <ApplicationStage> | <ProductType> | Body       | Purchase    |
      | All           | <ApplicantType> | <ApplicationStage> | <ProductType> | Both       | Refinance   |
      | All           | <ApplicantType> | <ApplicationStage> | <ProductType> | Both       | Purchase    |
      | All           | <ApplicantType> | <ApplicationStage> | <ProductType> | Body       | Refinance   |
      | All           | <ApplicantType> | <ApplicationStage> | <ProductType> | Body       | Purchase    |

  #Prerequisite:Application already punch with application type as Multi Asset
 # ${ ProductType : ["CEQ","CV"]}
# ${ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
#${ApplicantType:["indiv","nonindiv"]}
   #FeatureID-ACAUTOCAS-11906
  @NotImplemeted
  Scenario Outline:<Edit_Delete> existing Nominee details in Insurance details for Funding For as <FundingFor> under collateral details for multi Asset at "<ApplicationStage>" in "<ProductType>"
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user navigates to asset requested page
    And user select Funding For as "<FundingFor>"
    And user select Finance Mode as "<FinanceMode>"
    And user save the asset requested with asset type as Used Asset
    And user edit the added asset requested details
    And user opens Collateral Details section
    And user edit the collateral details
    And user opens Collateral Details section
    And user edit the collateral details
    And user opens Insurance Details section under collateral details page
    And user fill Nominee details
    When user "<Edit_Delete>" Nominee details
    Then Nominee details "<Edit_Delete>" should be added

    Examples:
      | Edit_Delete | ApplicantType   | ApplicationStage   | ProductType   | FundingFor | FinanceMode |
      | Edit        | <ApplicantType> | <ApplicationStage> | <ProductType> | Chassis    | Refinance   |
      | Edit        | <ApplicantType> | <ApplicationStage> | <ProductType> | Chassis    | Purchase    |
      | Edit        | <ApplicantType> | <ApplicationStage> | <ProductType> | FBV        | Refinance   |
      | Edit        | <ApplicantType> | <ApplicationStage> | <ProductType> | FBV        | Purchase    |
      | Delete      | <ApplicantType> | <ApplicationStage> | <ProductType> | Chassis    | Refinance   |
      | Delete      | <ApplicantType> | <ApplicationStage> | <ProductType> | Chassis    | Purchase    |
      | Delete      | <ApplicantType> | <ApplicationStage> | <ProductType> | FBV        | Refinance   |
      | Delete      | <ApplicantType> | <ApplicationStage> | <ProductType> | FBV        | Purchase    |

    #Prerequisite:Application already punch with application type as Multi Asset
 # ${ ProductType : ["CV"]}
# ${ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
#${ApplicantType:["indiv","nonindiv"]}
   #FeatureID-ACAUTOCAS-11906
  @NotImplemeted
  Scenario Outline:<Edit_Delete> existing Nominee details in Insurance details for Funding For as <FundingFor> in collateral details for multi Asset at "<ApplicationStage>" in "<ProductType>"
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user navigates to asset requested page
    And user select Funding For as "<FundingFor>"
    And user select Finance Mode as "<FinanceMode>"
    And user save the asset requested with asset type as Used Asset
    And user edit the added asset requested details
    And user opens Collateral Details section
    And user edit the collateral details
    And user opens Collateral Details section
    And user edit the collateral details
    And user opens Insurance Details section under collateral details page
    And user fill Nominee details
    When user "<Edit_Delete>" Nominee details
    Then Nominee details "<Edit_Delete>" should be added

    Examples:
      | Edit_Delete | ApplicantType   | ApplicationStage   | ProductType   | FundingFor | FinanceMode |
      | Edit        | <ApplicantType> | <ApplicationStage> | <ProductType> | Both       | Refinance   |
      | Edit        | <ApplicantType> | <ApplicationStage> | <ProductType> | Both       | Purchase    |
      | Edit        | <ApplicantType> | <ApplicationStage> | <ProductType> | Body       | Refinance   |
      | Edit        | <ApplicantType> | <ApplicationStage> | <ProductType> | Body       | Purchase    |
      | Delete      | <ApplicantType> | <ApplicationStage> | <ProductType> | Both       | Refinance   |
      | Delete      | <ApplicantType> | <ApplicationStage> | <ProductType> | Both       | Purchase    |
      | Delete      | <ApplicantType> | <ApplicationStage> | <ProductType> | Body       | Refinance   |
      | Delete      | <ApplicantType> | <ApplicationStage> | <ProductType> | Body       | Purchase    |

  #Prerequisite:Application already punch with application type as Multi Asset
 # ${ ProductType : ["CEQ","CV"]}
# ${ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
#${ApplicantType:["indiv","nonindiv"]}
   #FeatureID-ACAUTOCAS-11906
  @NotImplemeted
  Scenario Outline:Add multiple Nominee Detail in Insurance details for Funding For as <FundingFor> under collateral details for multi Asset at "<ApplicationStage>" in "<ProductType>"
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user navigates to asset requested page
    And user select Funding For as "<FundingFor>"
    And user select Finance Mode as "<FinanceMode>"
    And user save the asset requested with asset type as Used Asset
    And user edit the added asset requested details
    And user opens Collateral Details section
    And user edit the collateral details
    And user opens Collateral Details section
    And user edit the collateral details
    And user opens Insurance Details section under collateral details page
    When user add "<nominee>" Nominee details
    Then Nominee details should be added successfully

    Examples:
      | nominee     | ApplicantType   | ApplicationStage   | ProductType   | FundingFor | FinanceMode |
      | one another | <ApplicantType> | <ApplicationStage> | <ProductType> | Chassis    | Refinance   |
      | one another | <ApplicantType> | <ApplicationStage> | <ProductType> | Chassis    | Purchase    |
      | one another | <ApplicantType> | <ApplicationStage> | <ProductType> | FBV        | Refinance   |
      | one another | <ApplicantType> | <ApplicationStage> | <ProductType> | FBV        | Purchase    |
      | multiple    | <ApplicantType> | <ApplicationStage> | <ProductType> | Chassis    | Refinance   |
      | multiple    | <ApplicantType> | <ApplicationStage> | <ProductType> | Chassis    | Purchase    |
      | multiple    | <ApplicantType> | <ApplicationStage> | <ProductType> | FBV        | Refinance   |
      | multiple    | <ApplicantType> | <ApplicationStage> | <ProductType> | FBV        | Purchase    |

#  Prerequisite:Application already punch with application type as Multi Asset
# ${ ProductType : ["CV"]}
# ${ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
#${ApplicantType:["indiv","nonindiv"]}
   #FeatureID-ACAUTOCAS-11906
  @NotImplemeted
  Scenario Outline:Add multiple Nominee Detail in Insurance details for Funding For as <FundingFor> in collateral details for multi Asset at "<ApplicationStage>" in "<ProductType>"
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user navigates to asset requested page
    And user select Funding For as "<FundingFor>"
    And user select Finance Mode as "<FinanceMode>"
    And user save the asset requested with asset type as Used Asset
    And user edit the added asset requested details
    And user opens Collateral Details section
    And user edit the collateral details
    And user opens Collateral Details section
    And user edit the collateral details
    And user opens Insurance Details section under collateral details page
    When user add "<nominee>" Nominee details
    Then Nominee details should be added successfully

    Examples:
      | nominee     | ApplicantType   | ApplicationStage   | ProductType   | FundingFor | FinanceMode |
      | one another | <ApplicantType> | <ApplicationStage> | <ProductType> | Both       | Refinance   |
      | one another | <ApplicantType> | <ApplicationStage> | <ProductType> | Both       | Purchase    |
      | one another | <ApplicantType> | <ApplicationStage> | <ProductType> | Body       | Refinance   |
      | one another | <ApplicantType> | <ApplicationStage> | <ProductType> | Body       | Purchase    |
      | multiple    | <ApplicantType> | <ApplicationStage> | <ProductType> | Both       | Refinance   |
      | multiple    | <ApplicantType> | <ApplicationStage> | <ProductType> | Both       | Purchase    |
      | multiple    | <ApplicantType> | <ApplicationStage> | <ProductType> | Body       | Refinance   |
      | multiple    | <ApplicantType> | <ApplicationStage> | <ProductType> | Body       | Purchase    |

  #Prerequisite:Application already punch with application type as Multi Asset
 # ${ ProductType : ["CEQ","CV"]}
# ${ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
#${ApplicantType:["indiv","nonindiv"]}
   #FeatureID-ACAUTOCAS-11906
  @NotImplemeted
  Scenario Outline:Capture another Insurance details after saving insurance details with create another after this one for Funding For as <FundingFor> under collateral details at <ApplicationStage> for <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user navigates to asset requested page
    And user select Funding For as "<FundingFor>"
    And user select Finance Mode as "<FinanceMode>"
    And user save the asset requested with asset type as Used Asset
    And user edit the added asset requested details
    And user opens Collateral Details section
    And user edit the collateral details
    And user opens Insurance Details section under collateral details page
    And user adds the insurance details with nominee details
    When user saves the insurance details page with checkbox create another one
    Then insurance details page should be available to create another insurance details


    Examples:
      | ApplicantType   | ApplicationStage   | ProductType   | FundingFor | FinanceMode |
      | <ApplicantType> | <ApplicationStage> | <ProductType> | Chassis    | Refinance   |
      | <ApplicantType> | <ApplicationStage> | <ProductType> | Chassis    | Purchase    |
      | <ApplicantType> | <ApplicationStage> | <ProductType> | FBV        | Refinance   |
      | <ApplicantType> | <ApplicationStage> | <ProductType> | FBV        | Purchase    |


  #Prerequisite:Application already punch with application type as Multi Asset
# ${ ProductType : ["CV"]}
# ${ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
#${ApplicantType:["indiv","nonindiv"]}
   #FeatureID-ACAUTOCAS-11906
  @NotImplemeted
  Scenario Outline:Capture another Insurance details after saving insurance details with create another after this one for Funding For as <FundingFor> in collateral details at <ApplicationStage> for <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user navigates to asset requested page
    And user select Funding For as "<FundingFor>"
    And user select Finance Mode as "<FinanceMode>"
    And user save the asset requested with asset type as Used Asset
    And user edit the added asset requested details
    And user opens Collateral Details section
    And user edit the collateral details
    And user opens Insurance Details section under collateral details page
    And user adds the insurance details with nominee details
    When user saves the insurance details page with checkbox create another one
    Then insurance details page should be available to create another insurance details


    Examples:
      | ApplicantType   | ApplicationStage   | ProductType   | FundingFor | FinanceMode |
      | <ApplicantType> | <ApplicationStage> | <ProductType> | Both       | Refinance   |
      | <ApplicantType> | <ApplicationStage> | <ProductType> | Both       | Purchase    |
      | <ApplicantType> | <ApplicationStage> | <ProductType> | Body       | Refinance   |
      | <ApplicantType> | <ApplicationStage> | <ProductType> | Body       | Purchase    |
