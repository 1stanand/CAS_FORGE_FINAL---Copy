@Epic-Loan_Application_Details
@AuthoredBy-harshita.nayak
@NotImplemented
@Conventional
@Deferred
Feature:Body Funding Details Validation For Commercial Vehicle under Multi Asset

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0

 #Prerequisite:Application already punch with application type as Multi Asset
# ${ ProductType : ["CV"]}
# ${ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
#${ApplicantType:["indiv","nonindiv"]}
#FeatureID-ACAUTOCAS-11906
  Scenario Outline: ACAUTOCAS-14328: Add multiple body funding details for multi Asset at <ApplicationStage> stage for <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user navigates to asset requested page
    And user select Funding For as "<FundingFor>"
    And user select Finance Mode as "<FinanceMode>"
    And user select asset type as "<AssetType>"
    And user select bought from as "<BoughtFrom>" in body funding details
    When user add multiple body funding details
    Then multiple body funding details should be added successfully

    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | FundingFor | AssetType  | FinanceMode | BoughtFrom  |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Used Asset | Purchase    | Manufacture |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | New Asset  | Purchase    | Manufacture |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Used Asset | Purchase    | Dealer      |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | New Asset  | Purchase    | Dealer      |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Used Asset | Refinance   | Manufacture |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | New Asset  | Refinance   | Manufacture |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Used Asset | Refinance   | Dealer      |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | New Asset  | Refinance   | Dealer      |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Used Asset | Purchase    | Manufacture |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | New Asset  | Purchase    | Manufacture |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Used Asset | Purchase    | Dealer      |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | New Asset  | Purchase    | Dealer      |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Used Asset | Refinance   | Manufacture |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | New Asset  | Refinance   | Manufacture |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Used Asset | Refinance   | Dealer      |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | New Asset  | Refinance   | Dealer      |

 #Prerequisite:Application already punch with application type as Multi Asset
# ${ ProductType : ["CV"]}
# ${ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
#${ApplicantType:["indiv","nonindiv"]}
#FeatureID-ACAUTOCAS-11906
  Scenario Outline: ACAUTOCAS-14329: Delete multiple added body funding details for multi Asset at <ApplicationStage> stage for <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user navigates to asset requested page
    And user select Funding For as "<FundingFor>"
    And user select Finance Mode as "<FinanceMode>"
    And user select asset type as "<AssetType>"
    And user select bought from as "<BoughtFrom>" in body funding details
    When user add multiple body funding details
    And user delete multiple added body funding details
    Then multiple body funding details should be deleted successfully

    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | FundingFor | AssetType  | FinanceMode | BoughtFrom        |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Used Asset | Purchase    | Manufacture       |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | New Asset  | Purchase    | Manufacture       |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Used Asset | Purchase    | Other Manufacture |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | New Asset  | Purchase    | Other Manufacture |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Used Asset | Purchase    | Dealer            |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | New Asset  | Purchase    | Dealer            |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Used Asset | Refinance   | Manufacture       |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | New Asset  | Refinance   | Manufacture       |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Used Asset | Refinance   | Other Manufacture |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | New Asset  | Refinance   | Other Manufacture |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Used Asset | Refinance   | Dealer            |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | New Asset  | Refinance   | Dealer            |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Used Asset | Purchase    | Manufacture       |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | New Asset  | Purchase    | Manufacture       |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Used Asset | Purchase    | Other Manufacture |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | New Asset  | Purchase    | Other Manufacture |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Used Asset | Purchase    | Dealer            |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | New Asset  | Purchase    | Dealer            |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Used Asset | Refinance   | Manufacture       |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | New Asset  | Refinance   | Manufacture       |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Used Asset | Refinance   | Other Manufacture |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | New Asset  | Refinance   | Other Manufacture |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Used Asset | Refinance   | Dealer            |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | New Asset  | Refinance   | Dealer            |


 #Prerequisite:Application already punch with application type as Multi Asset
# ${ ProductType : ["CV"]}
# ${ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
#${ApplicantType:["indiv","nonindiv"]}
#FeatureID-ACAUTOCAS-11906
  Scenario Outline: ACAUTOCAS-14330: Delete the added Body funding details for multi Asset at <ApplicationStage> stage for <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user navigates to asset requested page
    And user select Funding For as "<FundingFor>"
    And user select Finance Mode as "<FinanceMode>"
    And user select asset type as "<AssetType>"
    And user select bought from as "<BoughtFrom>" in body funding details
    And user fills the body funding details
    When user delete the added body funding details
    Then body funding details should be deleted successfully

    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | FundingFor | AssetType  | FinanceMode | BoughtFrom        |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Used Asset | Purchase    | Manufacture       |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | New Asset  | Purchase    | Manufacture       |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Used Asset | Purchase    | Other Manufacture |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | New Asset  | Purchase    | Other Manufacture |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Used Asset | Purchase    | Dealer            |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | New Asset  | Purchase    | Dealer            |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Used Asset | Refinance   | Manufacture       |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | New Asset  | Refinance   | Manufacture       |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Used Asset | Refinance   | Other Manufacture |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | New Asset  | Refinance   | Other Manufacture |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Used Asset | Refinance   | Dealer            |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | New Asset  | Refinance   | Dealer            |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Used Asset | Purchase    | Manufacture       |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | New Asset  | Purchase    | Manufacture       |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Used Asset | Purchase    | Other Manufacture |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | New Asset  | Purchase    | Other Manufacture |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Used Asset | Purchase    | Dealer            |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | New Asset  | Purchase    | Dealer            |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Used Asset | Refinance   | Manufacture       |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | New Asset  | Refinance   | Manufacture       |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Used Asset | Refinance   | Other Manufacture |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | New Asset  | Refinance   | Other Manufacture |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Used Asset | Refinance   | Dealer            |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | New Asset  | Refinance   | Dealer            |


#Prerequisite:Application already punch with application type as Multi Asset
# ${ ProductType : ["CV"]}
# ${ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
#${ApplicantType:["indiv","nonindiv"]}
#FeatureID-ACAUTOCAS-11906
  Scenario Outline: ACAUTOCAS-14331: Edit the added Body funding details for multi Asset at <ApplicationStage> stage for <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user select Funding For as "<FundingFor>"
    And user select Finance Mode as "<FinanceMode>"
    And user select asset type as "<AssetType>"
    And user select bought from as "<BoughtFrom>" in body funding details
    And user fills the body funding details
    When user edit the added body funding details
    Then body funding details should be edit successfully

    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | FundingFor | AssetType  | FinanceMode | BoughtFrom        |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Used Asset | Purchase    | Manufacture       |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | New Asset  | Purchase    | Manufacture       |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Used Asset | Purchase    | Other Manufacture |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | New Asset  | Purchase    | Other Manufacture |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Used Asset | Purchase    | Dealer            |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | New Asset  | Purchase    | Dealer            |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Used Asset | Refinance   | Manufacture       |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | New Asset  | Refinance   | Manufacture       |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Used Asset | Refinance   | Other Manufacture |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | New Asset  | Refinance   | Other Manufacture |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Used Asset | Refinance   | Dealer            |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | New Asset  | Refinance   | Dealer            |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Used Asset | Purchase    | Manufacture       |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | New Asset  | Purchase    | Manufacture       |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Used Asset | Purchase    | Other Manufacture |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | New Asset  | Purchase    | Other Manufacture |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Used Asset | Purchase    | Dealer            |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | New Asset  | Purchase    | Dealer            |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Used Asset | Refinance   | Manufacture       |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | New Asset  | Refinance   | Manufacture       |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Used Asset | Refinance   | Other Manufacture |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | New Asset  | Refinance   | Other Manufacture |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Used Asset | Refinance   | Dealer            |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | New Asset  | Refinance   | Dealer            |


#Prerequisite:Application already punch with application type as Multi Asset
# ${ ProductType : ["CV"]}
# ${ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
#${ApplicantType:["indiv","nonindiv"]}
#FeatureID-ACAUTOCAS-11906
  Scenario Outline: ACAUTOCAS-14332: Validate the field name marked as Mandatory NonMandatory in body funding details for multi Asset at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user navigates to asset requested page
    And user select Funding For as "<FundingFor>"
    And user select Finance Mode as "<FinanceMode>"
    And user select asset type as "<AssetType>"
    When opens body funding details section
    And user select bought from as "<BoughtFrom>" in body funding details
    Then user should be able to see marked Field Name as Mandatory NonMandatory
      | FieldName          | Mandatory_NonMandatory |
      | Bought From        | mandatory              |
      | Body Manufacturer  | mandatory              |
      | Dealer For Body    | non mandatory          |
      | Body Type          | mandatory              |
      | Body Sub Type      | mandatory              |
      | Body Cost          | mandatory              |
      | Body Cost Per Grid | mandatory              |
      | Body Cost Proposed | mandatory              |
      | Body Downpayment   | mandatory              |
      | Body Quantity      | mandatory              |
      | Body Number        | non mandatory          |

    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | FundingFor | AssetType  | FinanceMode | BoughtFrom        |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Used Asset | Purchase    | Manufacture       |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | New Asset  | Purchase    | Manufacture       |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Used Asset | Purchase    | Other Manufacture |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | New Asset  | Purchase    | Other Manufacture |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Used Asset | Purchase    | Dealer            |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | New Asset  | Purchase    | Dealer            |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Used Asset | Refinance   | Manufacture       |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | New Asset  | Refinance   | Manufacture       |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Used Asset | Refinance   | Other Manufacture |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | New Asset  | Refinance   | Other Manufacture |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Used Asset | Refinance   | Dealer            |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | New Asset  | Refinance   | Dealer            |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Used Asset | Purchase    | Manufacture       |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | New Asset  | Purchase    | Manufacture       |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Used Asset | Purchase    | Other Manufacture |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | New Asset  | Purchase    | Other Manufacture |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Used Asset | Purchase    | Dealer            |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | New Asset  | Purchase    | Dealer            |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Used Asset | Refinance   | Manufacture       |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | New Asset  | Refinance   | Manufacture       |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Used Asset | Refinance   | Other Manufacture |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | New Asset  | Refinance   | Other Manufacture |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Used Asset | Refinance   | Dealer            |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | New Asset  | Refinance   | Dealer            |


#Prerequisite:Application already punch with application type as Multi Asset
# ${ ProductType : ["CV"]}
# ${ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
#${ApplicantType:["indiv","nonindiv"]}
#FeatureID-ACAUTOCAS-11906
  Scenario Outline: ACAUTOCAS-14333: <Field_Name> field validation with <Validity> <InputType> in body funding details for multi Asset at "<ApplicationStage>" in "<ProductType>"
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user navigates to asset requested page
    And user select Funding For as "<FundingFor>"
    And user select Finance Mode as "<FinanceMode>"
    And user select asset type as "<AssetType>"
    When user opens body funding details section
    And user select bought from as "<BoughtFrom>" in body funding details
    And user fills "<Validity>" "<Field_Name>" with "<InputType>" in body funding details
    Then "<Field_Name>" field "<Throws_notThrows>"
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | AssetType  | FundingFor | FinanceMode | BoughtFrom        | Field_Name         | Validity | InputType                          | Throws_notThrows    |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Both       | Purchase    | Manufacture       | Quantity           | valid    | positive digits                    | not throw any error |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Both       | Purchase    | Manufacture       | Quantity           | valid    | positive digits                    | not throw any error |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Both       | Purchase    | Other Manufacture | Quantity           | valid    | positive digits                    | not throw any error |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Both       | Purchase    | Other Manufacture | Quantity           | valid    | positive digits                    | not throw any error |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Both       | Purchase    | Dealer            | Quantity           | valid    | positive digits                    | not throw any error |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Both       | Purchase    | Dealer            | Quantity           | valid    | positive digits                    | not throw any error |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Both       | Refinance   | Manufacture       | Quantity           | valid    | positive digits                    | not throw any error |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Both       | Refinance   | Manufacture       | Quantity           | valid    | positive digits                    | not throw any error |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Both       | Refinance   | Other Manufacture | Quantity           | valid    | positive digits                    | not throw any error |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Both       | Refinance   | Other Manufacture | Quantity           | valid    | positive digits                    | not throw any error |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Both       | Refinance   | Dealer            | Quantity           | valid    | positive digits                    | not throw any error |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Both       | Refinance   | Dealer            | Quantity           | valid    | positive digits                    | not throw any error |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Body       | Purchase    | Manufacture       | Quantity           | valid    | positive digits                    | not throw any error |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Body       | Purchase    | Manufacture       | Quantity           | valid    | positive digits                    | not throw any error |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Body       | Purchase    | Other Manufacture | Quantity           | valid    | positive digits                    | not throw any error |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Body       | Purchase    | Other Manufacture | Quantity           | valid    | positive digits                    | not throw any error |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Body       | Purchase    | Dealer            | Quantity           | valid    | positive digits                    | not throw any error |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Body       | Purchase    | Dealer            | Quantity           | valid    | positive digits                    | not throw any error |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Body       | Refinance   | Manufacture       | Quantity           | valid    | positive digits                    | not throw any error |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Body       | Refinance   | Manufacture       | Quantity           | valid    | positive digits                    | not throw any error |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Body       | Refinance   | Other Manufacture | Quantity           | valid    | positive digits                    | not throw any error |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Body       | Refinance   | Other Manufacture | Quantity           | valid    | positive digits                    | not throw any error |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Body       | Refinance   | Dealer            | Quantity           | valid    | positive digits                    | not throw any error |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Body       | Refinance   | Dealer            | Quantity           | valid    | positive digits                    | not throw any error |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Both       | Purchase    | Manufacture       | Quantity           | invalid  | characters                         | throw an error      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Both       | Purchase    | Manufacture       | Quantity           | invalid  | characters                         | throw an error      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Both       | Purchase    | Other Manufacture | Quantity           | invalid  | characters                         | throw an error      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Both       | Purchase    | Other Manufacture | Quantity           | invalid  | characters                         | throw an error      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Both       | Purchase    | Dealer            | Quantity           | invalid  | characters                         | throw an error      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Both       | Purchase    | Dealer            | Quantity           | invalid  | characters                         | throw an error      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Both       | Refinance   | Manufacture       | Quantity           | invalid  | characters                         | throw an error      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Both       | Refinance   | Manufacture       | Quantity           | invalid  | characters                         | throw an error      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Both       | Refinance   | Other Manufacture | Quantity           | invalid  | characters                         | throw an error      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Both       | Refinance   | Other Manufacture | Quantity           | invalid  | characters                         | throw an error      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Both       | Refinance   | Dealer            | Quantity           | invalid  | characters                         | throw an error      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Both       | Refinance   | Dealer            | Quantity           | invalid  | characters                         | throw an error      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Body       | Purchase    | Manufacture       | Quantity           | invalid  | characters                         | throw an error      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Body       | Purchase    | Manufacture       | Quantity           | invalid  | characters                         | throw an error      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Body       | Purchase    | Other Manufacture | Quantity           | invalid  | characters                         | throw an error      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Body       | Purchase    | Other Manufacture | Quantity           | invalid  | characters                         | throw an error      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Body       | Purchase    | Dealer            | Quantity           | invalid  | characters                         | throw an error      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Body       | Purchase    | Dealer            | Quantity           | invalid  | characters                         | throw an error      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Body       | Refinance   | Manufacture       | Quantity           | invalid  | characters                         | throw an error      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Body       | Refinance   | Manufacture       | Quantity           | invalid  | characters                         | throw an error      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Body       | Refinance   | Other Manufacture | Quantity           | invalid  | characters                         | throw an error      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Body       | Refinance   | Other Manufacture | Quantity           | invalid  | characters                         | throw an error      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Body       | Refinance   | Dealer            | Quantity           | invalid  | characters                         | throw an error      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Body       | Refinance   | Dealer            | Quantity           | invalid  | characters                         | throw an error      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Both       | Purchase    | Manufacture       | Quantity           | invalid  | both digits and characters         | throw an error      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Both       | Purchase    | Manufacture       | Quantity           | invalid  | both digits and characters         | throw an error      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Both       | Purchase    | Other Manufacture | Quantity           | invalid  | both digits and characters         | throw an error      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Both       | Purchase    | Other Manufacture | Quantity           | invalid  | both digits and characters         | throw an error      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Both       | Purchase    | Dealer            | Quantity           | invalid  | both digits and characters         | throw an error      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Both       | Purchase    | Dealer            | Quantity           | invalid  | both digits and characters         | throw an error      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Both       | Refinance   | Manufacture       | Quantity           | invalid  | both digits and characters         | throw an error      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Both       | Refinance   | Manufacture       | Quantity           | invalid  | both digits and characters         | throw an error      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Both       | Refinance   | Other Manufacture | Quantity           | invalid  | both digits and characters         | throw an error      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Both       | Refinance   | Other Manufacture | Quantity           | invalid  | both digits and characters         | throw an error      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Both       | Refinance   | Dealer            | Quantity           | invalid  | both digits and characters         | throw an error      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Both       | Refinance   | Dealer            | Quantity           | invalid  | both digits and characters         | throw an error      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Body       | Purchase    | Manufacture       | Quantity           | invalid  | both digits and characters         | throw an error      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Body       | Purchase    | Manufacture       | Quantity           | invalid  | both digits and characters         | throw an error      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Body       | Purchase    | Other Manufacture | Quantity           | invalid  | both digits and characters         | throw an error      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Body       | Purchase    | Other Manufacture | Quantity           | invalid  | both digits and characters         | throw an error      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Body       | Purchase    | Dealer            | Quantity           | invalid  | both digits and characters         | throw an error      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Body       | Purchase    | Dealer            | Quantity           | invalid  | both digits and characters         | throw an error      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Body       | Refinance   | Manufacture       | Quantity           | invalid  | both digits and characters         | throw an error      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Body       | Refinance   | Manufacture       | Quantity           | invalid  | both digits and characters         | throw an error      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Body       | Refinance   | Other Manufacture | Quantity           | invalid  | both digits and characters         | throw an error      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Body       | Refinance   | Other Manufacture | Quantity           | invalid  | both digits and characters         | throw an error      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Body       | Refinance   | Dealer            | Quantity           | invalid  | both digits and characters         | throw an error      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Body       | Refinance   | Dealer            | Quantity           | invalid  | both digits and characters         | throw an error      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Both       | Purchase    | Manufacture       | Quantity           | invalid  | negative                           | throw an error      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Both       | Purchase    | Manufacture       | Quantity           | invalid  | negative                           | throw an error      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Both       | Purchase    | Other Manufacture | Quantity           | invalid  | negative                           | throw an error      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Both       | Purchase    | Other Manufacture | Quantity           | invalid  | negative                           | throw an error      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Both       | Purchase    | Dealer            | Quantity           | invalid  | negative                           | throw an error      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Both       | Purchase    | Dealer            | Quantity           | invalid  | negative                           | throw an error      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Both       | Refinance   | Manufacture       | Quantity           | invalid  | negative                           | throw an error      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Both       | Refinance   | Manufacture       | Quantity           | invalid  | negative                           | throw an error      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Both       | Refinance   | Other Manufacture | Quantity           | invalid  | negative                           | throw an error      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Both       | Refinance   | Other Manufacture | Quantity           | invalid  | negative                           | throw an error      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Both       | Refinance   | Dealer            | Quantity           | invalid  | negative                           | throw an error      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Both       | Refinance   | Dealer            | Quantity           | invalid  | negative                           | throw an error      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Body       | Purchase    | Manufacture       | Quantity           | invalid  | negative                           | throw an error      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Body       | Purchase    | Manufacture       | Quantity           | invalid  | negative                           | throw an error      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Body       | Purchase    | Other Manufacture | Quantity           | invalid  | negative                           | throw an error      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Body       | Purchase    | Other Manufacture | Quantity           | invalid  | negative                           | throw an error      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Body       | Purchase    | Dealer            | Quantity           | invalid  | negative                           | throw an error      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Body       | Purchase    | Dealer            | Quantity           | invalid  | negative                           | throw an error      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Body       | Refinance   | Manufacture       | Quantity           | invalid  | negative                           | throw an error      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Body       | Refinance   | Manufacture       | Quantity           | invalid  | negative                           | throw an error      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Body       | Refinance   | Other Manufacture | Quantity           | invalid  | negative                           | throw an error      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Body       | Refinance   | Other Manufacture | Quantity           | invalid  | negative                           | throw an error      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Body       | Refinance   | Dealer            | Quantity           | invalid  | negative                           | throw an error      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Body       | Refinance   | Dealer            | Quantity           | invalid  | negative                           | throw an error      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Both       | Purchase    | Manufacture       | Quantity           | invalid  | hyphen                             | throw an error      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Both       | Purchase    | Manufacture       | Quantity           | invalid  | hyphen                             | throw an error      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Both       | Purchase    | Other Manufacture | Quantity           | invalid  | hyphen                             | throw an error      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Both       | Purchase    | Other Manufacture | Quantity           | invalid  | hyphen                             | throw an error      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Both       | Purchase    | Dealer            | Quantity           | invalid  | hyphen                             | throw an error      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Both       | Purchase    | Dealer            | Quantity           | invalid  | hyphen                             | throw an error      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Both       | Refinance   | Manufacture       | Quantity           | invalid  | hyphen                             | throw an error      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Both       | Refinance   | Manufacture       | Quantity           | invalid  | hyphen                             | throw an error      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Both       | Refinance   | Other Manufacture | Quantity           | invalid  | hyphen                             | throw an error      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Both       | Refinance   | Other Manufacture | Quantity           | invalid  | hyphen                             | throw an error      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Both       | Refinance   | Dealer            | Quantity           | invalid  | hyphen                             | throw an error      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Both       | Refinance   | Dealer            | Quantity           | invalid  | hyphen                             | throw an error      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Body       | Purchase    | Manufacture       | Quantity           | invalid  | hyphen                             | throw an error      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Body       | Purchase    | Manufacture       | Quantity           | invalid  | hyphen                             | throw an error      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Body       | Purchase    | Other Manufacture | Quantity           | invalid  | hyphen                             | throw an error      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Body       | Purchase    | Other Manufacture | Quantity           | invalid  | hyphen                             | throw an error      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Body       | Purchase    | Dealer            | Quantity           | invalid  | hyphen                             | throw an error      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Body       | Purchase    | Dealer            | Quantity           | invalid  | hyphen                             | throw an error      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Body       | Refinance   | Manufacture       | Quantity           | invalid  | hyphen                             | throw an error      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Body       | Refinance   | Manufacture       | Quantity           | invalid  | hyphen                             | throw an error      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Body       | Refinance   | Other Manufacture | Quantity           | invalid  | hyphen                             | throw an error      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Body       | Refinance   | Other Manufacture | Quantity           | invalid  | hyphen                             | throw an error      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Body       | Refinance   | Dealer            | Quantity           | invalid  | hyphen                             | throw an error      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Body       | Refinance   | Dealer            | Quantity           | invalid  | hyphen                             | throw an error      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Both       | Purchase    | Manufacture       | Quantity           | invalid  | space                              | throw an error      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Both       | Purchase    | Manufacture       | Quantity           | invalid  | space                              | throw an error      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Both       | Purchase    | Other Manufacture | Quantity           | invalid  | space                              | throw an error      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Both       | Purchase    | Other Manufacture | Quantity           | invalid  | space                              | throw an error      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Both       | Purchase    | Dealer            | Quantity           | invalid  | space                              | throw an error      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Both       | Purchase    | Dealer            | Quantity           | invalid  | space                              | throw an error      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Both       | Refinance   | Manufacture       | Quantity           | invalid  | space                              | throw an error      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Both       | Refinance   | Manufacture       | Quantity           | invalid  | space                              | throw an error      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Both       | Refinance   | Other Manufacture | Quantity           | invalid  | space                              | throw an error      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Both       | Refinance   | Other Manufacture | Quantity           | invalid  | space                              | throw an error      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Both       | Refinance   | Dealer            | Quantity           | invalid  | space                              | throw an error      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Both       | Refinance   | Dealer            | Quantity           | invalid  | space                              | throw an error      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Body       | Purchase    | Manufacture       | Quantity           | invalid  | space                              | throw an error      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Body       | Purchase    | Manufacture       | Quantity           | invalid  | space                              | throw an error      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Body       | Purchase    | Other Manufacture | Quantity           | invalid  | space                              | throw an error      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Body       | Purchase    | Other Manufacture | Quantity           | invalid  | space                              | throw an error      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Body       | Purchase    | Dealer            | Quantity           | invalid  | space                              | throw an error      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Body       | Purchase    | Dealer            | Quantity           | invalid  | space                              | throw an error      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Body       | Refinance   | Manufacture       | Quantity           | invalid  | space                              | throw an error      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Body       | Refinance   | Manufacture       | Quantity           | invalid  | space                              | throw an error      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Body       | Refinance   | Other Manufacture | Quantity           | invalid  | space                              | throw an error      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Body       | Refinance   | Other Manufacture | Quantity           | invalid  | space                              | throw an error      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Body       | Refinance   | Dealer            | Quantity           | invalid  | space                              | throw an error      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Body       | Refinance   | Dealer            | Quantity           | invalid  | space                              | throw an error      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Both       | Purchase    | Manufacture       | Quantity           | invalid  | special characters except hyphen   | throw an error      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Both       | Purchase    | Manufacture       | Quantity           | invalid  | special characters except hyphen   | throw an error      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Both       | Purchase    | Other Manufacture | Quantity           | invalid  | special characters except hyphen   | throw an error      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Both       | Purchase    | Other Manufacture | Quantity           | invalid  | special characters except hyphen   | throw an error      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Both       | Purchase    | Dealer            | Quantity           | invalid  | special characters except hyphen   | throw an error      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Both       | Purchase    | Dealer            | Quantity           | invalid  | special characters except hyphen   | throw an error      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Both       | Refinance   | Manufacture       | Quantity           | invalid  | special characters except hyphen   | throw an error      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Both       | Refinance   | Manufacture       | Quantity           | invalid  | special characters except hyphen   | throw an error      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Both       | Refinance   | Other Manufacture | Quantity           | invalid  | special characters except hyphen   | throw an error      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Both       | Refinance   | Other Manufacture | Quantity           | invalid  | special characters except hyphen   | throw an error      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Both       | Refinance   | Dealer            | Quantity           | invalid  | special characters except hyphen   | throw an error      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Both       | Refinance   | Dealer            | Quantity           | invalid  | special characters except hyphen   | throw an error      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Body       | Purchase    | Manufacture       | Quantity           | invalid  | special characters except hyphen   | throw an error      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Body       | Purchase    | Manufacture       | Quantity           | invalid  | special characters except hyphen   | throw an error      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Body       | Purchase    | Other Manufacture | Quantity           | invalid  | special characters except hyphen   | throw an error      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Body       | Purchase    | Other Manufacture | Quantity           | invalid  | special characters except hyphen   | throw an error      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Body       | Purchase    | Dealer            | Quantity           | invalid  | special characters except hyphen   | throw an error      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Body       | Purchase    | Dealer            | Quantity           | invalid  | special characters except hyphen   | throw an error      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Body       | Refinance   | Manufacture       | Quantity           | invalid  | special characters except hyphen   | throw an error      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Body       | Refinance   | Manufacture       | Quantity           | invalid  | special characters except hyphen   | throw an error      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Body       | Refinance   | Other Manufacture | Quantity           | invalid  | special characters except hyphen   | throw an error      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Body       | Refinance   | Other Manufacture | Quantity           | invalid  | special characters except hyphen   | throw an error      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Body       | Refinance   | Dealer            | Quantity           | invalid  | special characters except hyphen   | throw an error      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Body       | Refinance   | Dealer            | Quantity           | invalid  | special characters except hyphen   | throw an error      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Both       | Purchase    | Manufacture       | Quantity           | invalid  | more than 2 decimal places         | throw an error      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Both       | Purchase    | Manufacture       | Quantity           | invalid  | more than 2 decimal places         | throw an error      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Both       | Purchase    | Other Manufacture | Quantity           | invalid  | more than 2 decimal places         | throw an error      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Both       | Purchase    | Other Manufacture | Quantity           | invalid  | more than 2 decimal places         | throw an error      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Both       | Purchase    | Dealer            | Quantity           | invalid  | more than 2 decimal places         | throw an error      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Both       | Purchase    | Dealer            | Quantity           | invalid  | more than 2 decimal places         | throw an error      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Both       | Refinance   | Manufacture       | Quantity           | invalid  | more than 2 decimal places         | throw an error      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Both       | Refinance   | Manufacture       | Quantity           | invalid  | more than 2 decimal places         | throw an error      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Both       | Refinance   | Other Manufacture | Quantity           | invalid  | more than 2 decimal places         | throw an error      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Both       | Refinance   | Other Manufacture | Quantity           | invalid  | more than 2 decimal places         | throw an error      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Both       | Refinance   | Dealer            | Quantity           | invalid  | more than 2 decimal places         | throw an error      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Both       | Refinance   | Dealer            | Quantity           | invalid  | more than 2 decimal places         | throw an error      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Body       | Purchase    | Manufacture       | Quantity           | invalid  | more than 2 decimal places         | throw an error      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Body       | Purchase    | Manufacture       | Quantity           | invalid  | more than 2 decimal places         | throw an error      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Body       | Purchase    | Other Manufacture | Quantity           | invalid  | more than 2 decimal places         | throw an error      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Body       | Purchase    | Other Manufacture | Quantity           | invalid  | more than 2 decimal places         | throw an error      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Body       | Purchase    | Dealer            | Quantity           | invalid  | more than 2 decimal places         | throw an error      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Body       | Purchase    | Dealer            | Quantity           | invalid  | more than 2 decimal places         | throw an error      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Body       | Refinance   | Manufacture       | Quantity           | invalid  | more than 2 decimal places         | throw an error      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Body       | Refinance   | Manufacture       | Quantity           | invalid  | more than 2 decimal places         | throw an error      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Body       | Refinance   | Other Manufacture | Quantity           | invalid  | more than 2 decimal places         | throw an error      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Body       | Refinance   | Other Manufacture | Quantity           | invalid  | more than 2 decimal places         | throw an error      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Body       | Refinance   | Dealer            | Quantity           | invalid  | more than 2 decimal places         | throw an error      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Body       | Refinance   | Dealer            | Quantity           | invalid  | more than 2 decimal places         | throw an error      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Both       | Purchase    | Manufacture       | Quantity           | invalid  | zero                               | throw an error      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Both       | Purchase    | Manufacture       | Quantity           | invalid  | zero                               | throw an error      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Both       | Purchase    | Other Manufacture | Quantity           | invalid  | zero                               | throw an error      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Both       | Purchase    | Other Manufacture | Quantity           | invalid  | zero                               | throw an error      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Both       | Purchase    | Dealer            | Quantity           | invalid  | zero                               | throw an error      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Both       | Purchase    | Dealer            | Quantity           | invalid  | zero                               | throw an error      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Both       | Refinance   | Manufacture       | Quantity           | invalid  | zero                               | throw an error      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Both       | Refinance   | Manufacture       | Quantity           | invalid  | zero                               | throw an error      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Both       | Refinance   | Other Manufacture | Quantity           | invalid  | zero                               | throw an error      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Both       | Refinance   | Other Manufacture | Quantity           | invalid  | zero                               | throw an error      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Both       | Refinance   | Dealer            | Quantity           | invalid  | zero                               | throw an error      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Both       | Refinance   | Dealer            | Quantity           | invalid  | zero                               | throw an error      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Body       | Purchase    | Manufacture       | Quantity           | invalid  | zero                               | throw an error      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Body       | Purchase    | Manufacture       | Quantity           | invalid  | zero                               | throw an error      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Body       | Purchase    | Other Manufacture | Quantity           | invalid  | zero                               | throw an error      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Body       | Purchase    | Other Manufacture | Quantity           | invalid  | zero                               | throw an error      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Body       | Purchase    | Dealer            | Quantity           | invalid  | zero                               | throw an error      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Body       | Purchase    | Dealer            | Quantity           | invalid  | zero                               | throw an error      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Body       | Refinance   | Manufacture       | Quantity           | invalid  | zero                               | throw an error      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Body       | Refinance   | Manufacture       | Quantity           | invalid  | zero                               | throw an error      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Body       | Refinance   | Other Manufacture | Quantity           | invalid  | zero                               | throw an error      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Body       | Refinance   | Other Manufacture | Quantity           | invalid  | zero                               | throw an error      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Body       | Refinance   | Dealer            | Quantity           | invalid  | zero                               | throw an error      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Body       | Refinance   | Dealer            | Quantity           | invalid  | zero                               | throw an error      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Both       | Purchase    | Manufacture       | Body Cost          | invalid  | more than 18 digits                | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Both       | Purchase    | Manufacture       | Body Cost          | invalid  | more than 18 digits                | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Both       | Purchase    | Other Manufacture | Body Cost          | invalid  | more than 18 digits                | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Both       | Purchase    | Other Manufacture | Body Cost          | invalid  | more than 18 digits                | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Both       | Purchase    | Dealer            | Body Cost          | invalid  | more than 18 digits                | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Both       | Purchase    | Dealer            | Body Cost          | invalid  | more than 18 digits                | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Both       | Refinance   | Manufacture       | Body Cost          | invalid  | more than 18 digits                | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Both       | Refinance   | Manufacture       | Body Cost          | invalid  | more than 18 digits                | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Both       | Refinance   | Other Manufacture | Body Cost          | invalid  | more than 18 digits                | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Both       | Refinance   | Other Manufacture | Body Cost          | invalid  | more than 18 digits                | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Both       | Refinance   | Dealer            | Body Cost          | invalid  | more than 18 digits                | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Both       | Refinance   | Dealer            | Body Cost          | invalid  | more than 18 digits                | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Body       | Purchase    | Manufacture       | Body Cost          | invalid  | more than 18 digits                | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Body       | Purchase    | Manufacture       | Body Cost          | invalid  | more than 18 digits                | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Body       | Purchase    | Other Manufacture | Body Cost          | invalid  | more than 18 digits                | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Body       | Purchase    | Other Manufacture | Body Cost          | invalid  | more than 18 digits                | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Body       | Purchase    | Dealer            | Body Cost          | invalid  | more than 18 digits                | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Body       | Purchase    | Dealer            | Body Cost          | invalid  | more than 18 digits                | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Body       | Refinance   | Manufacture       | Body Cost          | invalid  | more than 18 digits                | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Body       | Refinance   | Manufacture       | Body Cost          | invalid  | more than 18 digits                | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Body       | Refinance   | Other Manufacture | Body Cost          | invalid  | more than 18 digits                | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Body       | Refinance   | Other Manufacture | Body Cost          | invalid  | more than 18 digits                | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Body       | Refinance   | Dealer            | Body Cost          | invalid  | more than 18 digits                | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Body       | Refinance   | Dealer            | Body Cost          | invalid  | more than 18 digits                | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Both       | Purchase    | Manufacture       | Body Cost          | valid    | less than 18 digits                | not throw any       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Both       | Purchase    | Manufacture       | Body Cost          | valid    | less than 18 digits                | not throw any       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Both       | Purchase    | Other Manufacture | Body Cost          | valid    | less than 18 digits                | not throw any       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Both       | Purchase    | Other Manufacture | Body Cost          | valid    | less than 18 digits                | not throw any       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Both       | Purchase    | Dealer            | Body Cost          | valid    | less than 18 digits                | not throw any       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Both       | Purchase    | Dealer            | Body Cost          | valid    | less than 18 digits                | not throw any       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Both       | Refinance   | Manufacture       | Body Cost          | valid    | less than 18 digits                | not throw any       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Both       | Refinance   | Manufacture       | Body Cost          | valid    | less than 18 digits                | not throw any       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Both       | Refinance   | Other Manufacture | Body Cost          | valid    | less than 18 digits                | not throw any       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Both       | Refinance   | Other Manufacture | Body Cost          | valid    | less than 18 digits                | not throw any       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Both       | Refinance   | Dealer            | Body Cost          | valid    | less than 18 digits                | not throw any       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Both       | Refinance   | Dealer            | Body Cost          | valid    | less than 18 digits                | not throw any       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Body       | Purchase    | Manufacture       | Body Cost          | valid    | less than 18 digits                | not throw any       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Body       | Purchase    | Manufacture       | Body Cost          | valid    | less than 18 digits                | not throw any       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Body       | Purchase    | Other Manufacture | Body Cost          | valid    | less than 18 digits                | not throw any       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Body       | Purchase    | Other Manufacture | Body Cost          | valid    | less than 18 digits                | not throw any       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Body       | Purchase    | Dealer            | Body Cost          | valid    | less than 18 digits                | not throw any       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Body       | Purchase    | Dealer            | Body Cost          | valid    | less than 18 digits                | not throw any       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Body       | Refinance   | Manufacture       | Body Cost          | valid    | less than 18 digits                | not throw any       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Body       | Refinance   | Manufacture       | Body Cost          | valid    | less than 18 digits                | not throw any       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Body       | Refinance   | Other Manufacture | Body Cost          | valid    | less than 18 digits                | not throw any       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Body       | Refinance   | Other Manufacture | Body Cost          | valid    | less than 18 digits                | not throw any       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Body       | Refinance   | Dealer            | Body Cost          | valid    | less than 18 digits                | not throw any       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Body       | Refinance   | Dealer            | Body Cost          | valid    | less than 18 digits                | not throw any       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Both       | Purchase    | Manufacture       | Body Cost          | invalid  | character                          | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Both       | Purchase    | Manufacture       | Body Cost          | invalid  | character                          | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Both       | Purchase    | Other Manufacture | Body Cost          | invalid  | character                          | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Both       | Purchase    | Other Manufacture | Body Cost          | invalid  | character                          | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Both       | Purchase    | Dealer            | Body Cost          | invalid  | character                          | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Both       | Purchase    | Dealer            | Body Cost          | invalid  | character                          | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Both       | Refinance   | Manufacture       | Body Cost          | invalid  | character                          | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Both       | Refinance   | Manufacture       | Body Cost          | invalid  | character                          | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Both       | Refinance   | Other Manufacture | Body Cost          | invalid  | character                          | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Both       | Refinance   | Other Manufacture | Body Cost          | invalid  | character                          | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Both       | Refinance   | Dealer            | Body Cost          | invalid  | character                          | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Both       | Refinance   | Dealer            | Body Cost          | invalid  | character                          | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Body       | Purchase    | Manufacture       | Body Cost          | invalid  | character                          | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Body       | Purchase    | Manufacture       | Body Cost          | invalid  | character                          | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Body       | Purchase    | Other Manufacture | Body Cost          | invalid  | character                          | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Body       | Purchase    | Other Manufacture | Body Cost          | invalid  | character                          | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Body       | Purchase    | Dealer            | Body Cost          | invalid  | character                          | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Body       | Purchase    | Dealer            | Body Cost          | invalid  | character                          | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Body       | Refinance   | Manufacture       | Body Cost          | invalid  | character                          | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Body       | Refinance   | Manufacture       | Body Cost          | invalid  | character                          | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Body       | Refinance   | Other Manufacture | Body Cost          | invalid  | character                          | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Body       | Refinance   | Other Manufacture | Body Cost          | invalid  | character                          | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Body       | Refinance   | Dealer            | Body Cost          | invalid  | character                          | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Body       | Refinance   | Dealer            | Body Cost          | invalid  | character                          | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Both       | Purchase    | Manufacture       | Body Cost          | invalid  | special character                  | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Both       | Purchase    | Manufacture       | Body Cost          | invalid  | special character                  | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Both       | Purchase    | Other Manufacture | Body Cost          | invalid  | special character                  | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Both       | Purchase    | Other Manufacture | Body Cost          | invalid  | special character                  | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Both       | Purchase    | Dealer            | Body Cost          | invalid  | special character                  | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Both       | Purchase    | Dealer            | Body Cost          | invalid  | special character                  | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Both       | Refinance   | Manufacture       | Body Cost          | invalid  | special character                  | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Both       | Refinance   | Manufacture       | Body Cost          | invalid  | special character                  | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Both       | Refinance   | Other Manufacture | Body Cost          | invalid  | special character                  | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Both       | Refinance   | Other Manufacture | Body Cost          | invalid  | special character                  | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Both       | Refinance   | Dealer            | Body Cost          | invalid  | special character                  | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Both       | Refinance   | Dealer            | Body Cost          | invalid  | special character                  | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Body       | Purchase    | Manufacture       | Body Cost          | invalid  | special character                  | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Body       | Purchase    | Manufacture       | Body Cost          | invalid  | special character                  | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Body       | Purchase    | Other Manufacture | Body Cost          | invalid  | special character                  | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Body       | Purchase    | Other Manufacture | Body Cost          | invalid  | special character                  | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Body       | Purchase    | Dealer            | Body Cost          | invalid  | special character                  | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Body       | Purchase    | Dealer            | Body Cost          | invalid  | special character                  | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Body       | Refinance   | Manufacture       | Body Cost          | invalid  | special character                  | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Body       | Refinance   | Manufacture       | Body Cost          | invalid  | special character                  | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Body       | Refinance   | Other Manufacture | Body Cost          | invalid  | special character                  | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Body       | Refinance   | Other Manufacture | Body Cost          | invalid  | special character                  | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Body       | Refinance   | Dealer            | Body Cost          | invalid  | special character                  | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Body       | Refinance   | Dealer            | Body Cost          | invalid  | special character                  | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Both       | Purchase    | Manufacture       | Body Cost          | invalid  | negative values                    | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Both       | Purchase    | Manufacture       | Body Cost          | invalid  | negative values                    | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Both       | Purchase    | Other Manufacture | Body Cost          | invalid  | negative values                    | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Both       | Purchase    | Other Manufacture | Body Cost          | invalid  | negative values                    | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Both       | Purchase    | Dealer            | Body Cost          | invalid  | negative values                    | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Both       | Purchase    | Dealer            | Body Cost          | invalid  | negative values                    | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Both       | Refinance   | Manufacture       | Body Cost          | invalid  | negative values                    | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Both       | Refinance   | Manufacture       | Body Cost          | invalid  | negative values                    | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Both       | Refinance   | Other Manufacture | Body Cost          | invalid  | negative values                    | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Both       | Refinance   | Other Manufacture | Body Cost          | invalid  | negative values                    | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Both       | Refinance   | Dealer            | Body Cost          | invalid  | negative values                    | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Both       | Refinance   | Dealer            | Body Cost          | invalid  | negative values                    | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Body       | Purchase    | Manufacture       | Body Cost          | invalid  | negative values                    | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Body       | Purchase    | Manufacture       | Body Cost          | invalid  | negative values                    | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Body       | Purchase    | Other Manufacture | Body Cost          | invalid  | negative values                    | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Body       | Purchase    | Other Manufacture | Body Cost          | invalid  | negative values                    | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Body       | Purchase    | Dealer            | Body Cost          | invalid  | negative values                    | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Body       | Purchase    | Dealer            | Body Cost          | invalid  | negative values                    | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Body       | Refinance   | Manufacture       | Body Cost          | invalid  | negative values                    | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Body       | Refinance   | Manufacture       | Body Cost          | invalid  | negative values                    | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Body       | Refinance   | Other Manufacture | Body Cost          | invalid  | negative values                    | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Body       | Refinance   | Other Manufacture | Body Cost          | invalid  | negative values                    | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Body       | Refinance   | Dealer            | Body Cost          | invalid  | negative values                    | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Body       | Refinance   | Dealer            | Body Cost          | invalid  | negative values                    | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Both       | Purchase    | Manufacture       | Body Cost          | invalid  | character with space               | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Both       | Purchase    | Manufacture       | Body Cost          | invalid  | character with space               | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Both       | Purchase    | Other Manufacture | Body Cost          | invalid  | character with space               | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Both       | Purchase    | Other Manufacture | Body Cost          | invalid  | character with space               | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Both       | Purchase    | Dealer            | Body Cost          | invalid  | character with space               | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Both       | Purchase    | Dealer            | Body Cost          | invalid  | character with space               | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Both       | Refinance   | Manufacture       | Body Cost          | invalid  | character with space               | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Both       | Refinance   | Manufacture       | Body Cost          | invalid  | character with space               | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Both       | Refinance   | Other Manufacture | Body Cost          | invalid  | character with space               | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Both       | Refinance   | Other Manufacture | Body Cost          | invalid  | character with space               | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Both       | Refinance   | Dealer            | Body Cost          | invalid  | character with space               | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Both       | Refinance   | Dealer            | Body Cost          | invalid  | character with space               | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Body       | Purchase    | Manufacture       | Body Cost          | invalid  | character with space               | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Body       | Purchase    | Manufacture       | Body Cost          | invalid  | character with space               | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Body       | Purchase    | Other Manufacture | Body Cost          | invalid  | character with space               | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Body       | Purchase    | Other Manufacture | Body Cost          | invalid  | character with space               | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Body       | Purchase    | Dealer            | Body Cost          | invalid  | character with space               | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Body       | Purchase    | Dealer            | Body Cost          | invalid  | character with space               | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Body       | Refinance   | Manufacture       | Body Cost          | invalid  | character with space               | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Body       | Refinance   | Manufacture       | Body Cost          | invalid  | character with space               | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Body       | Refinance   | Other Manufacture | Body Cost          | invalid  | character with space               | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Body       | Refinance   | Other Manufacture | Body Cost          | invalid  | character with space               | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Body       | Refinance   | Dealer            | Body Cost          | invalid  | character with space               | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Body       | Refinance   | Dealer            | Body Cost          | invalid  | character with space               | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Both       | Purchase    | Manufacture       | Body Cost          | invalid  | digits with space                  | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Both       | Purchase    | Manufacture       | Body Cost          | invalid  | digits with space                  | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Both       | Purchase    | Other Manufacture | Body Cost          | invalid  | digits with space                  | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Both       | Purchase    | Other Manufacture | Body Cost          | invalid  | digits with space                  | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Both       | Purchase    | Dealer            | Body Cost          | invalid  | digits with space                  | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Both       | Purchase    | Dealer            | Body Cost          | invalid  | digits with space                  | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Both       | Refinance   | Manufacture       | Body Cost          | invalid  | digits with space                  | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Both       | Refinance   | Manufacture       | Body Cost          | invalid  | digits with space                  | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Both       | Refinance   | Other Manufacture | Body Cost          | invalid  | digits with space                  | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Both       | Refinance   | Other Manufacture | Body Cost          | invalid  | digits with space                  | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Both       | Refinance   | Dealer            | Body Cost          | invalid  | digits with space                  | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Both       | Refinance   | Dealer            | Body Cost          | invalid  | digits with space                  | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Body       | Purchase    | Manufacture       | Body Cost          | invalid  | digits with space                  | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Body       | Purchase    | Manufacture       | Body Cost          | invalid  | digits with space                  | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Body       | Purchase    | Other Manufacture | Body Cost          | invalid  | digits with space                  | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Body       | Purchase    | Other Manufacture | Body Cost          | invalid  | digits with space                  | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Body       | Purchase    | Dealer            | Body Cost          | invalid  | digits with space                  | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Body       | Purchase    | Dealer            | Body Cost          | invalid  | digits with space                  | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Body       | Refinance   | Manufacture       | Body Cost          | invalid  | digits with space                  | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Body       | Refinance   | Manufacture       | Body Cost          | invalid  | digits with space                  | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Body       | Refinance   | Other Manufacture | Body Cost          | invalid  | digits with space                  | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Body       | Refinance   | Other Manufacture | Body Cost          | invalid  | digits with space                  | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Body       | Refinance   | Dealer            | Body Cost          | invalid  | digits with space                  | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Body       | Refinance   | Dealer            | Body Cost          | invalid  | digits with space                  | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Both       | Purchase    | Manufacture       | Body Cost          | valid    | positive values and Upto 18 digits | not throw any       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Both       | Purchase    | Manufacture       | Body Cost          | valid    | positive values and Upto 18 digits | not throw any       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Both       | Purchase    | Other Manufacture | Body Cost          | valid    | positive values and Upto 18 digits | not throw any       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Both       | Purchase    | Other Manufacture | Body Cost          | valid    | positive values and Upto 18 digits | not throw any       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Both       | Purchase    | Dealer            | Body Cost          | valid    | positive values and Upto 18 digits | not throw any       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Both       | Purchase    | Dealer            | Body Cost          | valid    | positive values and Upto 18 digits | not throw any       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Both       | Refinance   | Manufacture       | Body Cost          | valid    | positive values and Upto 18 digits | not throw any       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Both       | Refinance   | Manufacture       | Body Cost          | valid    | positive values and Upto 18 digits | not throw any       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Both       | Refinance   | Other Manufacture | Body Cost          | valid    | positive values and Upto 18 digits | not throw any       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Both       | Refinance   | Other Manufacture | Body Cost          | valid    | positive values and Upto 18 digits | not throw any       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Both       | Refinance   | Dealer            | Body Cost          | valid    | positive values and Upto 18 digits | not throw any       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Both       | Refinance   | Dealer            | Body Cost          | valid    | positive values and Upto 18 digits | not throw any       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Body       | Purchase    | Manufacture       | Body Cost          | valid    | positive values and Upto 18 digits | not throw any       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Body       | Purchase    | Manufacture       | Body Cost          | valid    | positive values and Upto 18 digits | not throw any       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Body       | Purchase    | Other Manufacture | Body Cost          | valid    | positive values and Upto 18 digits | not throw any       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Body       | Purchase    | Other Manufacture | Body Cost          | valid    | positive values and Upto 18 digits | not throw any       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Body       | Purchase    | Dealer            | Body Cost          | valid    | positive values and Upto 18 digits | not throw any       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Body       | Purchase    | Dealer            | Body Cost          | valid    | positive values and Upto 18 digits | not throw any       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Body       | Refinance   | Manufacture       | Body Cost          | valid    | positive values and Upto 18 digits | not throw any       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Body       | Refinance   | Manufacture       | Body Cost          | valid    | positive values and Upto 18 digits | not throw any       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Body       | Refinance   | Other Manufacture | Body Cost          | valid    | positive values and Upto 18 digits | not throw any       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Body       | Refinance   | Other Manufacture | Body Cost          | valid    | positive values and Upto 18 digits | not throw any       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Body       | Refinance   | Dealer            | Body Cost          | valid    | positive values and Upto 18 digits | not throw any       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Body       | Refinance   | Dealer            | Body Cost          | valid    | positive values and Upto 18 digits | not throw any       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Both       | Purchase    | Manufacture       | Body Downpayment   | invalid  | more than 18 digits                | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Both       | Purchase    | Manufacture       | Body Downpayment   | invalid  | more than 18 digits                | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Both       | Purchase    | Other Manufacture | Body Downpayment   | invalid  | more than 18 digits                | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Both       | Purchase    | Other Manufacture | Body Downpayment   | invalid  | more than 18 digits                | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Both       | Purchase    | Dealer            | Body Downpayment   | invalid  | more than 18 digits                | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Both       | Purchase    | Dealer            | Body Downpayment   | invalid  | more than 18 digits                | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Both       | Refinance   | Manufacture       | Body Downpayment   | invalid  | more than 18 digits                | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Both       | Refinance   | Manufacture       | Body Downpayment   | invalid  | more than 18 digits                | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Both       | Refinance   | Other Manufacture | Body Downpayment   | invalid  | more than 18 digits                | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Both       | Refinance   | Other Manufacture | Body Downpayment   | invalid  | more than 18 digits                | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Both       | Refinance   | Dealer            | Body Downpayment   | invalid  | more than 18 digits                | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Both       | Refinance   | Dealer            | Body Downpayment   | invalid  | more than 18 digits                | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Body       | Purchase    | Manufacture       | Body Downpayment   | invalid  | more than 18 digits                | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Body       | Purchase    | Manufacture       | Body Downpayment   | invalid  | more than 18 digits                | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Body       | Purchase    | Other Manufacture | Body Downpayment   | invalid  | more than 18 digits                | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Body       | Purchase    | Other Manufacture | Body Downpayment   | invalid  | more than 18 digits                | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Body       | Purchase    | Dealer            | Body Downpayment   | invalid  | more than 18 digits                | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Body       | Purchase    | Dealer            | Body Downpayment   | invalid  | more than 18 digits                | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Body       | Refinance   | Manufacture       | Body Downpayment   | invalid  | more than 18 digits                | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Body       | Refinance   | Manufacture       | Body Downpayment   | invalid  | more than 18 digits                | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Body       | Refinance   | Other Manufacture | Body Downpayment   | invalid  | more than 18 digits                | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Body       | Refinance   | Other Manufacture | Body Downpayment   | invalid  | more than 18 digits                | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Body       | Refinance   | Dealer            | Body Downpayment   | invalid  | more than 18 digits                | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Body       | Refinance   | Dealer            | Body Downpayment   | invalid  | more than 18 digits                | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Both       | Purchase    | Manufacture       | Body Downpayment   | valid    | less than 18 digits                | not throw any       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Both       | Purchase    | Manufacture       | Body Downpayment   | valid    | less than 18 digits                | not throw any       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Both       | Purchase    | Other Manufacture | Body Downpayment   | valid    | less than 18 digits                | not throw any       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Both       | Purchase    | Other Manufacture | Body Downpayment   | valid    | less than 18 digits                | not throw any       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Both       | Purchase    | Dealer            | Body Downpayment   | valid    | less than 18 digits                | not throw any       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Both       | Purchase    | Dealer            | Body Downpayment   | valid    | less than 18 digits                | not throw any       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Both       | Refinance   | Manufacture       | Body Downpayment   | valid    | less than 18 digits                | not throw any       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Both       | Refinance   | Manufacture       | Body Downpayment   | valid    | less than 18 digits                | not throw any       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Both       | Refinance   | Other Manufacture | Body Downpayment   | valid    | less than 18 digits                | not throw any       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Both       | Refinance   | Other Manufacture | Body Downpayment   | valid    | less than 18 digits                | not throw any       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Both       | Refinance   | Dealer            | Body Downpayment   | valid    | less than 18 digits                | not throw any       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Both       | Refinance   | Dealer            | Body Downpayment   | valid    | less than 18 digits                | not throw any       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Body       | Purchase    | Manufacture       | Body Downpayment   | valid    | less than 18 digits                | not throw any       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Body       | Purchase    | Manufacture       | Body Downpayment   | valid    | less than 18 digits                | not throw any       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Body       | Purchase    | Other Manufacture | Body Downpayment   | valid    | less than 18 digits                | not throw any       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Body       | Purchase    | Other Manufacture | Body Downpayment   | valid    | less than 18 digits                | not throw any       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Body       | Purchase    | Dealer            | Body Downpayment   | valid    | less than 18 digits                | not throw any       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Body       | Purchase    | Dealer            | Body Downpayment   | valid    | less than 18 digits                | not throw any       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Body       | Refinance   | Manufacture       | Body Downpayment   | valid    | less than 18 digits                | not throw any       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Body       | Refinance   | Manufacture       | Body Downpayment   | valid    | less than 18 digits                | not throw any       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Body       | Refinance   | Other Manufacture | Body Downpayment   | valid    | less than 18 digits                | not throw any       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Body       | Refinance   | Other Manufacture | Body Downpayment   | valid    | less than 18 digits                | not throw any       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Body       | Refinance   | Dealer            | Body Downpayment   | valid    | less than 18 digits                | not throw any       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Body       | Refinance   | Dealer            | Body Downpayment   | valid    | less than 18 digits                | not throw any       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Both       | Purchase    | Manufacture       | Body Downpayment   | invalid  | character                          | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Both       | Purchase    | Manufacture       | Body Downpayment   | invalid  | character                          | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Both       | Purchase    | Other Manufacture | Body Downpayment   | invalid  | character                          | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Both       | Purchase    | Other Manufacture | Body Downpayment   | invalid  | character                          | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Both       | Purchase    | Dealer            | Body Downpayment   | invalid  | character                          | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Both       | Purchase    | Dealer            | Body Downpayment   | invalid  | character                          | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Both       | Refinance   | Manufacture       | Body Downpayment   | invalid  | character                          | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Both       | Refinance   | Manufacture       | Body Downpayment   | invalid  | character                          | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Both       | Refinance   | Other Manufacture | Body Downpayment   | invalid  | character                          | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Both       | Refinance   | Other Manufacture | Body Downpayment   | invalid  | character                          | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Both       | Refinance   | Dealer            | Body Downpayment   | invalid  | character                          | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Both       | Refinance   | Dealer            | Body Downpayment   | invalid  | character                          | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Body       | Purchase    | Manufacture       | Body Downpayment   | invalid  | character                          | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Body       | Purchase    | Manufacture       | Body Downpayment   | invalid  | character                          | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Body       | Purchase    | Other Manufacture | Body Downpayment   | invalid  | character                          | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Body       | Purchase    | Other Manufacture | Body Downpayment   | invalid  | character                          | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Body       | Purchase    | Dealer            | Body Downpayment   | invalid  | character                          | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Body       | Purchase    | Dealer            | Body Downpayment   | invalid  | character                          | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Body       | Refinance   | Manufacture       | Body Downpayment   | invalid  | character                          | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Body       | Refinance   | Manufacture       | Body Downpayment   | invalid  | character                          | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Body       | Refinance   | Other Manufacture | Body Downpayment   | invalid  | character                          | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Body       | Refinance   | Other Manufacture | Body Downpayment   | invalid  | character                          | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Body       | Refinance   | Dealer            | Body Downpayment   | invalid  | character                          | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Body       | Refinance   | Dealer            | Body Downpayment   | invalid  | character                          | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Both       | Purchase    | Manufacture       | Body Downpayment   | invalid  | special character                  | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Both       | Purchase    | Manufacture       | Body Downpayment   | invalid  | special character                  | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Both       | Purchase    | Other Manufacture | Body Downpayment   | invalid  | special character                  | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Both       | Purchase    | Other Manufacture | Body Downpayment   | invalid  | special character                  | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Both       | Purchase    | Dealer            | Body Downpayment   | invalid  | special character                  | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Both       | Purchase    | Dealer            | Body Downpayment   | invalid  | special character                  | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Both       | Refinance   | Manufacture       | Body Downpayment   | invalid  | special character                  | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Both       | Refinance   | Manufacture       | Body Downpayment   | invalid  | special character                  | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Both       | Refinance   | Other Manufacture | Body Downpayment   | invalid  | special character                  | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Both       | Refinance   | Other Manufacture | Body Downpayment   | invalid  | special character                  | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Both       | Refinance   | Dealer            | Body Downpayment   | invalid  | special character                  | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Both       | Refinance   | Dealer            | Body Downpayment   | invalid  | special character                  | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Body       | Purchase    | Manufacture       | Body Downpayment   | invalid  | special character                  | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Body       | Purchase    | Manufacture       | Body Downpayment   | invalid  | special character                  | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Body       | Purchase    | Other Manufacture | Body Downpayment   | invalid  | special character                  | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Body       | Purchase    | Other Manufacture | Body Downpayment   | invalid  | special character                  | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Body       | Purchase    | Dealer            | Body Downpayment   | invalid  | special character                  | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Body       | Purchase    | Dealer            | Body Downpayment   | invalid  | special character                  | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Body       | Refinance   | Manufacture       | Body Downpayment   | invalid  | special character                  | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Body       | Refinance   | Manufacture       | Body Downpayment   | invalid  | special character                  | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Body       | Refinance   | Other Manufacture | Body Downpayment   | invalid  | special character                  | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Body       | Refinance   | Other Manufacture | Body Downpayment   | invalid  | special character                  | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Body       | Refinance   | Dealer            | Body Downpayment   | invalid  | special character                  | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Body       | Refinance   | Dealer            | Body Downpayment   | invalid  | special character                  | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Both       | Purchase    | Manufacture       | Body Downpayment   | invalid  | negative values                    | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Both       | Purchase    | Manufacture       | Body Downpayment   | invalid  | negative values                    | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Both       | Purchase    | Other Manufacture | Body Downpayment   | invalid  | negative values                    | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Both       | Purchase    | Other Manufacture | Body Downpayment   | invalid  | negative values                    | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Both       | Purchase    | Dealer            | Body Downpayment   | invalid  | negative values                    | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Both       | Purchase    | Dealer            | Body Downpayment   | invalid  | negative values                    | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Both       | Refinance   | Manufacture       | Body Downpayment   | invalid  | negative values                    | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Both       | Refinance   | Manufacture       | Body Downpayment   | invalid  | negative values                    | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Both       | Refinance   | Other Manufacture | Body Downpayment   | invalid  | negative values                    | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Both       | Refinance   | Other Manufacture | Body Downpayment   | invalid  | negative values                    | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Both       | Refinance   | Dealer            | Body Downpayment   | invalid  | negative values                    | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Both       | Refinance   | Dealer            | Body Downpayment   | invalid  | negative values                    | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Body       | Purchase    | Manufacture       | Body Downpayment   | invalid  | negative values                    | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Body       | Purchase    | Manufacture       | Body Downpayment   | invalid  | negative values                    | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Body       | Purchase    | Other Manufacture | Body Downpayment   | invalid  | negative values                    | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Body       | Purchase    | Other Manufacture | Body Downpayment   | invalid  | negative values                    | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Body       | Purchase    | Dealer            | Body Downpayment   | invalid  | negative values                    | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Body       | Purchase    | Dealer            | Body Downpayment   | invalid  | negative values                    | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Body       | Refinance   | Manufacture       | Body Downpayment   | invalid  | negative values                    | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Body       | Refinance   | Manufacture       | Body Downpayment   | invalid  | negative values                    | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Body       | Refinance   | Other Manufacture | Body Downpayment   | invalid  | negative values                    | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Body       | Refinance   | Other Manufacture | Body Downpayment   | invalid  | negative values                    | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Body       | Refinance   | Dealer            | Body Downpayment   | invalid  | negative values                    | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Body       | Refinance   | Dealer            | Body Downpayment   | invalid  | negative values                    | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Both       | Purchase    | Manufacture       | Body Downpayment   | invalid  | character with space               | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Both       | Purchase    | Manufacture       | Body Downpayment   | invalid  | character with space               | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Both       | Purchase    | Other Manufacture | Body Downpayment   | invalid  | character with space               | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Both       | Purchase    | Other Manufacture | Body Downpayment   | invalid  | character with space               | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Both       | Purchase    | Dealer            | Body Downpayment   | invalid  | character with space               | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Both       | Purchase    | Dealer            | Body Downpayment   | invalid  | character with space               | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Both       | Refinance   | Manufacture       | Body Downpayment   | invalid  | character with space               | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Both       | Refinance   | Manufacture       | Body Downpayment   | invalid  | character with space               | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Both       | Refinance   | Other Manufacture | Body Downpayment   | invalid  | character with space               | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Both       | Refinance   | Other Manufacture | Body Downpayment   | invalid  | character with space               | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Both       | Refinance   | Dealer            | Body Downpayment   | invalid  | character with space               | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Both       | Refinance   | Dealer            | Body Downpayment   | invalid  | character with space               | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Body       | Purchase    | Manufacture       | Body Downpayment   | invalid  | character with space               | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Body       | Purchase    | Manufacture       | Body Downpayment   | invalid  | character with space               | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Body       | Purchase    | Other Manufacture | Body Downpayment   | invalid  | character with space               | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Body       | Purchase    | Other Manufacture | Body Downpayment   | invalid  | character with space               | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Body       | Purchase    | Dealer            | Body Downpayment   | invalid  | character with space               | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Body       | Purchase    | Dealer            | Body Downpayment   | invalid  | character with space               | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Body       | Refinance   | Manufacture       | Body Downpayment   | invalid  | character with space               | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Body       | Refinance   | Manufacture       | Body Downpayment   | invalid  | character with space               | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Body       | Refinance   | Other Manufacture | Body Downpayment   | invalid  | character with space               | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Body       | Refinance   | Other Manufacture | Body Downpayment   | invalid  | character with space               | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Body       | Refinance   | Dealer            | Body Downpayment   | invalid  | character with space               | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Body       | Refinance   | Dealer            | Body Downpayment   | invalid  | character with space               | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Both       | Purchase    | Manufacture       | Body Downpayment   | invalid  | digits with space                  | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Both       | Purchase    | Manufacture       | Body Downpayment   | invalid  | digits with space                  | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Both       | Purchase    | Other Manufacture | Body Downpayment   | invalid  | digits with space                  | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Both       | Purchase    | Other Manufacture | Body Downpayment   | invalid  | digits with space                  | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Both       | Purchase    | Dealer            | Body Downpayment   | invalid  | digits with space                  | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Both       | Purchase    | Dealer            | Body Downpayment   | invalid  | digits with space                  | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Both       | Refinance   | Manufacture       | Body Downpayment   | invalid  | digits with space                  | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Both       | Refinance   | Manufacture       | Body Downpayment   | invalid  | digits with space                  | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Both       | Refinance   | Other Manufacture | Body Downpayment   | invalid  | digits with space                  | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Both       | Refinance   | Other Manufacture | Body Downpayment   | invalid  | digits with space                  | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Both       | Refinance   | Dealer            | Body Downpayment   | invalid  | digits with space                  | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Both       | Refinance   | Dealer            | Body Downpayment   | invalid  | digits with space                  | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Body       | Purchase    | Manufacture       | Body Downpayment   | invalid  | digits with space                  | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Body       | Purchase    | Manufacture       | Body Downpayment   | invalid  | digits with space                  | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Body       | Purchase    | Other Manufacture | Body Downpayment   | invalid  | digits with space                  | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Body       | Purchase    | Other Manufacture | Body Downpayment   | invalid  | digits with space                  | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Body       | Purchase    | Dealer            | Body Downpayment   | invalid  | digits with space                  | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Body       | Purchase    | Dealer            | Body Downpayment   | invalid  | digits with space                  | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Body       | Refinance   | Manufacture       | Body Downpayment   | invalid  | digits with space                  | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Body       | Refinance   | Manufacture       | Body Downpayment   | invalid  | digits with space                  | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Body       | Refinance   | Other Manufacture | Body Downpayment   | invalid  | digits with space                  | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Body       | Refinance   | Other Manufacture | Body Downpayment   | invalid  | digits with space                  | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Body       | Refinance   | Dealer            | Body Downpayment   | invalid  | digits with space                  | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Body       | Refinance   | Dealer            | Body Downpayment   | invalid  | digits with space                  | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Both       | Purchase    | Manufacture       | Body Downpayment   | valid    | positive values and Upto 18 digits | not throw any       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Both       | Purchase    | Manufacture       | Body Downpayment   | valid    | positive values and Upto 18 digits | not throw any       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Both       | Purchase    | Other Manufacture | Body Downpayment   | valid    | positive values and Upto 18 digits | not throw any       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Both       | Purchase    | Other Manufacture | Body Downpayment   | valid    | positive values and Upto 18 digits | not throw any       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Both       | Purchase    | Dealer            | Body Downpayment   | valid    | positive values and Upto 18 digits | not throw any       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Both       | Purchase    | Dealer            | Body Downpayment   | valid    | positive values and Upto 18 digits | not throw any       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Both       | Refinance   | Manufacture       | Body Downpayment   | valid    | positive values and Upto 18 digits | not throw any       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Both       | Refinance   | Manufacture       | Body Downpayment   | valid    | positive values and Upto 18 digits | not throw any       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Both       | Refinance   | Other Manufacture | Body Downpayment   | valid    | positive values and Upto 18 digits | not throw any       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Both       | Refinance   | Other Manufacture | Body Downpayment   | valid    | positive values and Upto 18 digits | not throw any       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Both       | Refinance   | Dealer            | Body Downpayment   | valid    | positive values and Upto 18 digits | not throw any       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Both       | Refinance   | Dealer            | Body Downpayment   | valid    | positive values and Upto 18 digits | not throw any       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Body       | Purchase    | Manufacture       | Body Downpayment   | valid    | positive values and Upto 18 digits | not throw any       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Body       | Purchase    | Manufacture       | Body Downpayment   | valid    | positive values and Upto 18 digits | not throw any       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Body       | Purchase    | Other Manufacture | Body Downpayment   | valid    | positive values and Upto 18 digits | not throw any       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Body       | Purchase    | Other Manufacture | Body Downpayment   | valid    | positive values and Upto 18 digits | not throw any       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Body       | Purchase    | Dealer            | Body Downpayment   | valid    | positive values and Upto 18 digits | not throw any       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Body       | Purchase    | Dealer            | Body Downpayment   | valid    | positive values and Upto 18 digits | not throw any       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Body       | Refinance   | Manufacture       | Body Downpayment   | valid    | positive values and Upto 18 digits | not throw any       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Body       | Refinance   | Manufacture       | Body Downpayment   | valid    | positive values and Upto 18 digits | not throw any       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Body       | Refinance   | Other Manufacture | Body Downpayment   | valid    | positive values and Upto 18 digits | not throw any       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Body       | Refinance   | Other Manufacture | Body Downpayment   | valid    | positive values and Upto 18 digits | not throw any       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Body       | Refinance   | Dealer            | Body Downpayment   | valid    | positive values and Upto 18 digits | not throw any       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Body       | Refinance   | Dealer            | Body Downpayment   | valid    | positive values and Upto 18 digits | not throw any       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Both       | Purchase    | Manufacture       | Body Cost Proposed | invalid  | more than 18 digits                | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Both       | Purchase    | Manufacture       | Body Cost Proposed | invalid  | more than 18 digits                | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Both       | Purchase    | Other Manufacture | Body Cost Proposed | invalid  | more than 18 digits                | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Both       | Purchase    | Other Manufacture | Body Cost Proposed | invalid  | more than 18 digits                | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Both       | Purchase    | Dealer            | Body Cost Proposed | invalid  | more than 18 digits                | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Both       | Purchase    | Dealer            | Body Cost Proposed | invalid  | more than 18 digits                | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Both       | Refinance   | Manufacture       | Body Cost Proposed | invalid  | more than 18 digits                | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Both       | Refinance   | Manufacture       | Body Cost Proposed | invalid  | more than 18 digits                | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Both       | Refinance   | Other Manufacture | Body Cost Proposed | invalid  | more than 18 digits                | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Both       | Refinance   | Other Manufacture | Body Cost Proposed | invalid  | more than 18 digits                | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Both       | Refinance   | Dealer            | Body Cost Proposed | invalid  | more than 18 digits                | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Both       | Refinance   | Dealer            | Body Cost Proposed | invalid  | more than 18 digits                | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Body       | Purchase    | Manufacture       | Body Cost Proposed | invalid  | more than 18 digits                | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Body       | Purchase    | Manufacture       | Body Cost Proposed | invalid  | more than 18 digits                | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Body       | Purchase    | Other Manufacture | Body Cost Proposed | invalid  | more than 18 digits                | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Body       | Purchase    | Other Manufacture | Body Cost Proposed | invalid  | more than 18 digits                | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Body       | Purchase    | Dealer            | Body Cost Proposed | invalid  | more than 18 digits                | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Body       | Purchase    | Dealer            | Body Cost Proposed | invalid  | more than 18 digits                | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Body       | Refinance   | Manufacture       | Body Cost Proposed | invalid  | more than 18 digits                | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Body       | Refinance   | Manufacture       | Body Cost Proposed | invalid  | more than 18 digits                | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Body       | Refinance   | Other Manufacture | Body Cost Proposed | invalid  | more than 18 digits                | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Body       | Refinance   | Other Manufacture | Body Cost Proposed | invalid  | more than 18 digits                | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Body       | Refinance   | Dealer            | Body Cost Proposed | invalid  | more than 18 digits                | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Body       | Refinance   | Dealer            | Body Cost Proposed | invalid  | more than 18 digits                | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Both       | Purchase    | Manufacture       | Body Cost Proposed | valid    | less than 18 digits                | not throw any       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Both       | Purchase    | Manufacture       | Body Cost Proposed | valid    | less than 18 digits                | not throw any       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Both       | Purchase    | Other Manufacture | Body Cost Proposed | valid    | less than 18 digits                | not throw any       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Both       | Purchase    | Other Manufacture | Body Cost Proposed | valid    | less than 18 digits                | not throw any       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Both       | Purchase    | Dealer            | Body Cost Proposed | valid    | less than 18 digits                | not throw any       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Both       | Purchase    | Dealer            | Body Cost Proposed | valid    | less than 18 digits                | not throw any       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Both       | Refinance   | Manufacture       | Body Cost Proposed | valid    | less than 18 digits                | not throw any       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Both       | Refinance   | Manufacture       | Body Cost Proposed | valid    | less than 18 digits                | not throw any       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Both       | Refinance   | Other Manufacture | Body Cost Proposed | valid    | less than 18 digits                | not throw any       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Both       | Refinance   | Other Manufacture | Body Cost Proposed | valid    | less than 18 digits                | not throw any       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Both       | Refinance   | Dealer            | Body Cost Proposed | valid    | less than 18 digits                | not throw any       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Both       | Refinance   | Dealer            | Body Cost Proposed | valid    | less than 18 digits                | not throw any       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Body       | Purchase    | Manufacture       | Body Cost Proposed | valid    | less than 18 digits                | not throw any       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Body       | Purchase    | Manufacture       | Body Cost Proposed | valid    | less than 18 digits                | not throw any       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Body       | Purchase    | Other Manufacture | Body Cost Proposed | valid    | less than 18 digits                | not throw any       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Body       | Purchase    | Other Manufacture | Body Cost Proposed | valid    | less than 18 digits                | not throw any       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Body       | Purchase    | Dealer            | Body Cost Proposed | valid    | less than 18 digits                | not throw any       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Body       | Purchase    | Dealer            | Body Cost Proposed | valid    | less than 18 digits                | not throw any       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Body       | Refinance   | Manufacture       | Body Cost Proposed | valid    | less than 18 digits                | not throw any       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Body       | Refinance   | Manufacture       | Body Cost Proposed | valid    | less than 18 digits                | not throw any       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Body       | Refinance   | Other Manufacture | Body Cost Proposed | valid    | less than 18 digits                | not throw any       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Body       | Refinance   | Other Manufacture | Body Cost Proposed | valid    | less than 18 digits                | not throw any       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Body       | Refinance   | Dealer            | Body Cost Proposed | valid    | less than 18 digits                | not throw any       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Body       | Refinance   | Dealer            | Body Cost Proposed | valid    | less than 18 digits                | not throw any       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Both       | Purchase    | Manufacture       | Body Cost Proposed | invalid  | character                          | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Both       | Purchase    | Manufacture       | Body Cost Proposed | invalid  | character                          | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Both       | Purchase    | Other Manufacture | Body Cost Proposed | invalid  | character                          | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Both       | Purchase    | Other Manufacture | Body Cost Proposed | invalid  | character                          | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Both       | Purchase    | Dealer            | Body Cost Proposed | invalid  | character                          | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Both       | Purchase    | Dealer            | Body Cost Proposed | invalid  | character                          | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Both       | Refinance   | Manufacture       | Body Cost Proposed | invalid  | character                          | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Both       | Refinance   | Manufacture       | Body Cost Proposed | invalid  | character                          | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Both       | Refinance   | Other Manufacture | Body Cost Proposed | invalid  | character                          | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Both       | Refinance   | Other Manufacture | Body Cost Proposed | invalid  | character                          | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Both       | Refinance   | Dealer            | Body Cost Proposed | invalid  | character                          | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Both       | Refinance   | Dealer            | Body Cost Proposed | invalid  | character                          | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Body       | Purchase    | Manufacture       | Body Cost Proposed | invalid  | character                          | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Body       | Purchase    | Manufacture       | Body Cost Proposed | invalid  | character                          | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Body       | Purchase    | Other Manufacture | Body Cost Proposed | invalid  | character                          | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Body       | Purchase    | Other Manufacture | Body Cost Proposed | invalid  | character                          | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Body       | Purchase    | Dealer            | Body Cost Proposed | invalid  | character                          | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Body       | Purchase    | Dealer            | Body Cost Proposed | invalid  | character                          | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Body       | Refinance   | Manufacture       | Body Cost Proposed | invalid  | character                          | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Body       | Refinance   | Manufacture       | Body Cost Proposed | invalid  | character                          | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Body       | Refinance   | Other Manufacture | Body Cost Proposed | invalid  | character                          | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Body       | Refinance   | Other Manufacture | Body Cost Proposed | invalid  | character                          | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Body       | Refinance   | Dealer            | Body Cost Proposed | invalid  | character                          | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Body       | Refinance   | Dealer            | Body Cost Proposed | invalid  | character                          | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Both       | Purchase    | Manufacture       | Body Cost Proposed | invalid  | special character                  | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Both       | Purchase    | Manufacture       | Body Cost Proposed | invalid  | special character                  | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Both       | Purchase    | Other Manufacture | Body Cost Proposed | invalid  | special character                  | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Both       | Purchase    | Other Manufacture | Body Cost Proposed | invalid  | special character                  | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Both       | Purchase    | Dealer            | Body Cost Proposed | invalid  | special character                  | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Both       | Purchase    | Dealer            | Body Cost Proposed | invalid  | special character                  | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Both       | Refinance   | Manufacture       | Body Cost Proposed | invalid  | special character                  | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Both       | Refinance   | Manufacture       | Body Cost Proposed | invalid  | special character                  | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Both       | Refinance   | Other Manufacture | Body Cost Proposed | invalid  | special character                  | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Both       | Refinance   | Other Manufacture | Body Cost Proposed | invalid  | special character                  | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Both       | Refinance   | Dealer            | Body Cost Proposed | invalid  | special character                  | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Both       | Refinance   | Dealer            | Body Cost Proposed | invalid  | special character                  | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Body       | Purchase    | Manufacture       | Body Cost Proposed | invalid  | special character                  | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Body       | Purchase    | Manufacture       | Body Cost Proposed | invalid  | special character                  | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Body       | Purchase    | Other Manufacture | Body Cost Proposed | invalid  | special character                  | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Body       | Purchase    | Other Manufacture | Body Cost Proposed | invalid  | special character                  | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Body       | Purchase    | Dealer            | Body Cost Proposed | invalid  | special character                  | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Body       | Purchase    | Dealer            | Body Cost Proposed | invalid  | special character                  | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Body       | Refinance   | Manufacture       | Body Cost Proposed | invalid  | special character                  | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Body       | Refinance   | Manufacture       | Body Cost Proposed | invalid  | special character                  | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Body       | Refinance   | Other Manufacture | Body Cost Proposed | invalid  | special character                  | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Body       | Refinance   | Other Manufacture | Body Cost Proposed | invalid  | special character                  | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Body       | Refinance   | Dealer            | Body Cost Proposed | invalid  | special character                  | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Body       | Refinance   | Dealer            | Body Cost Proposed | invalid  | special character                  | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Both       | Purchase    | Manufacture       | Body Cost Proposed | invalid  | negative values                    | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Both       | Purchase    | Manufacture       | Body Cost Proposed | invalid  | negative values                    | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Both       | Purchase    | Other Manufacture | Body Cost Proposed | invalid  | negative values                    | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Both       | Purchase    | Other Manufacture | Body Cost Proposed | invalid  | negative values                    | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Both       | Purchase    | Dealer            | Body Cost Proposed | invalid  | negative values                    | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Both       | Purchase    | Dealer            | Body Cost Proposed | invalid  | negative values                    | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Both       | Refinance   | Manufacture       | Body Cost Proposed | invalid  | negative values                    | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Both       | Refinance   | Manufacture       | Body Cost Proposed | invalid  | negative values                    | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Both       | Refinance   | Other Manufacture | Body Cost Proposed | invalid  | negative values                    | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Both       | Refinance   | Other Manufacture | Body Cost Proposed | invalid  | negative values                    | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Both       | Refinance   | Dealer            | Body Cost Proposed | invalid  | negative values                    | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Both       | Refinance   | Dealer            | Body Cost Proposed | invalid  | negative values                    | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Body       | Purchase    | Manufacture       | Body Cost Proposed | invalid  | negative values                    | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Body       | Purchase    | Manufacture       | Body Cost Proposed | invalid  | negative values                    | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Body       | Purchase    | Other Manufacture | Body Cost Proposed | invalid  | negative values                    | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Body       | Purchase    | Other Manufacture | Body Cost Proposed | invalid  | negative values                    | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Body       | Purchase    | Dealer            | Body Cost Proposed | invalid  | negative values                    | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Body       | Purchase    | Dealer            | Body Cost Proposed | invalid  | negative values                    | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Body       | Refinance   | Manufacture       | Body Cost Proposed | invalid  | negative values                    | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Body       | Refinance   | Manufacture       | Body Cost Proposed | invalid  | negative values                    | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Body       | Refinance   | Other Manufacture | Body Cost Proposed | invalid  | negative values                    | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Body       | Refinance   | Other Manufacture | Body Cost Proposed | invalid  | negative values                    | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Body       | Refinance   | Dealer            | Body Cost Proposed | invalid  | negative values                    | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Body       | Refinance   | Dealer            | Body Cost Proposed | invalid  | negative values                    | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Both       | Purchase    | Manufacture       | Body Cost Proposed | invalid  | character with space               | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Both       | Purchase    | Manufacture       | Body Cost Proposed | invalid  | character with space               | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Both       | Purchase    | Other Manufacture | Body Cost Proposed | invalid  | character with space               | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Both       | Purchase    | Other Manufacture | Body Cost Proposed | invalid  | character with space               | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Both       | Purchase    | Dealer            | Body Cost Proposed | invalid  | character with space               | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Both       | Purchase    | Dealer            | Body Cost Proposed | invalid  | character with space               | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Both       | Refinance   | Manufacture       | Body Cost Proposed | invalid  | character with space               | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Both       | Refinance   | Manufacture       | Body Cost Proposed | invalid  | character with space               | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Both       | Refinance   | Other Manufacture | Body Cost Proposed | invalid  | character with space               | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Both       | Refinance   | Other Manufacture | Body Cost Proposed | invalid  | character with space               | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Both       | Refinance   | Dealer            | Body Cost Proposed | invalid  | character with space               | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Both       | Refinance   | Dealer            | Body Cost Proposed | invalid  | character with space               | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Body       | Purchase    | Manufacture       | Body Cost Proposed | invalid  | character with space               | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Body       | Purchase    | Manufacture       | Body Cost Proposed | invalid  | character with space               | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Body       | Purchase    | Other Manufacture | Body Cost Proposed | invalid  | character with space               | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Body       | Purchase    | Other Manufacture | Body Cost Proposed | invalid  | character with space               | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Body       | Purchase    | Dealer            | Body Cost Proposed | invalid  | character with space               | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Body       | Purchase    | Dealer            | Body Cost Proposed | invalid  | character with space               | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Body       | Refinance   | Manufacture       | Body Cost Proposed | invalid  | character with space               | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Body       | Refinance   | Manufacture       | Body Cost Proposed | invalid  | character with space               | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Body       | Refinance   | Other Manufacture | Body Cost Proposed | invalid  | character with space               | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Body       | Refinance   | Other Manufacture | Body Cost Proposed | invalid  | character with space               | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Body       | Refinance   | Dealer            | Body Cost Proposed | invalid  | character with space               | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Body       | Refinance   | Dealer            | Body Cost Proposed | invalid  | character with space               | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Both       | Purchase    | Manufacture       | Body Cost Proposed | invalid  | digits with space                  | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Both       | Purchase    | Manufacture       | Body Cost Proposed | invalid  | digits with space                  | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Both       | Purchase    | Other Manufacture | Body Cost Proposed | invalid  | digits with space                  | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Both       | Purchase    | Other Manufacture | Body Cost Proposed | invalid  | digits with space                  | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Both       | Purchase    | Dealer            | Body Cost Proposed | invalid  | digits with space                  | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Both       | Purchase    | Dealer            | Body Cost Proposed | invalid  | digits with space                  | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Both       | Refinance   | Manufacture       | Body Cost Proposed | invalid  | digits with space                  | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Both       | Refinance   | Manufacture       | Body Cost Proposed | invalid  | digits with space                  | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Both       | Refinance   | Other Manufacture | Body Cost Proposed | invalid  | digits with space                  | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Both       | Refinance   | Other Manufacture | Body Cost Proposed | invalid  | digits with space                  | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Both       | Refinance   | Dealer            | Body Cost Proposed | invalid  | digits with space                  | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Both       | Refinance   | Dealer            | Body Cost Proposed | invalid  | digits with space                  | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Body       | Purchase    | Manufacture       | Body Cost Proposed | invalid  | digits with space                  | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Body       | Purchase    | Manufacture       | Body Cost Proposed | invalid  | digits with space                  | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Body       | Purchase    | Other Manufacture | Body Cost Proposed | invalid  | digits with space                  | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Body       | Purchase    | Other Manufacture | Body Cost Proposed | invalid  | digits with space                  | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Body       | Purchase    | Dealer            | Body Cost Proposed | invalid  | digits with space                  | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Body       | Purchase    | Dealer            | Body Cost Proposed | invalid  | digits with space                  | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Body       | Refinance   | Manufacture       | Body Cost Proposed | invalid  | digits with space                  | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Body       | Refinance   | Manufacture       | Body Cost Proposed | invalid  | digits with space                  | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Body       | Refinance   | Other Manufacture | Body Cost Proposed | invalid  | digits with space                  | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Body       | Refinance   | Other Manufacture | Body Cost Proposed | invalid  | digits with space                  | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Body       | Refinance   | Dealer            | Body Cost Proposed | invalid  | digits with space                  | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Body       | Refinance   | Dealer            | Body Cost Proposed | invalid  | digits with space                  | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Both       | Purchase    | Manufacture       | Body Cost Proposed | valid    | positive values and Upto 18 digits | not throw any       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Both       | Purchase    | Manufacture       | Body Cost Proposed | valid    | positive values and Upto 18 digits | not throw any       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Both       | Purchase    | Other Manufacture | Body Cost Proposed | valid    | positive values and Upto 18 digits | not throw any       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Both       | Purchase    | Other Manufacture | Body Cost Proposed | valid    | positive values and Upto 18 digits | not throw any       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Both       | Purchase    | Dealer            | Body Cost Proposed | valid    | positive values and Upto 18 digits | not throw any       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Both       | Purchase    | Dealer            | Body Cost Proposed | valid    | positive values and Upto 18 digits | not throw any       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Both       | Refinance   | Manufacture       | Body Cost Proposed | valid    | positive values and Upto 18 digits | not throw any       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Both       | Refinance   | Manufacture       | Body Cost Proposed | valid    | positive values and Upto 18 digits | not throw any       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Both       | Refinance   | Other Manufacture | Body Cost Proposed | valid    | positive values and Upto 18 digits | not throw any       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Both       | Refinance   | Other Manufacture | Body Cost Proposed | valid    | positive values and Upto 18 digits | not throw any       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Both       | Refinance   | Dealer            | Body Cost Proposed | valid    | positive values and Upto 18 digits | not throw any       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Both       | Refinance   | Dealer            | Body Cost Proposed | valid    | positive values and Upto 18 digits | not throw any       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Body       | Purchase    | Manufacture       | Body Cost Proposed | valid    | positive values and Upto 18 digits | not throw any       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Body       | Purchase    | Manufacture       | Body Cost Proposed | valid    | positive values and Upto 18 digits | not throw any       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Body       | Purchase    | Other Manufacture | Body Cost Proposed | valid    | positive values and Upto 18 digits | not throw any       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Body       | Purchase    | Other Manufacture | Body Cost Proposed | valid    | positive values and Upto 18 digits | not throw any       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Body       | Purchase    | Dealer            | Body Cost Proposed | valid    | positive values and Upto 18 digits | not throw any       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Body       | Purchase    | Dealer            | Body Cost Proposed | valid    | positive values and Upto 18 digits | not throw any       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Body       | Refinance   | Manufacture       | Body Cost Proposed | valid    | positive values and Upto 18 digits | not throw any       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Body       | Refinance   | Manufacture       | Body Cost Proposed | valid    | positive values and Upto 18 digits | not throw any       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Body       | Refinance   | Other Manufacture | Body Cost Proposed | valid    | positive values and Upto 18 digits | not throw any       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Body       | Refinance   | Other Manufacture | Body Cost Proposed | valid    | positive values and Upto 18 digits | not throw any       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Body       | Refinance   | Dealer            | Body Cost Proposed | valid    | positive values and Upto 18 digits | not throw any       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Body       | Refinance   | Dealer            | Body Cost Proposed | valid    | positive values and Upto 18 digits | not throw any       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Both       | Purchase    | Manufacture       | Body Cost Per Grid | invalid  | more than 18 digits                | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Both       | Purchase    | Manufacture       | Body Cost Per Grid | invalid  | more than 18 digits                | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Both       | Purchase    | Other Manufacture | Body Cost Per Grid | invalid  | more than 18 digits                | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Both       | Purchase    | Other Manufacture | Body Cost Per Grid | invalid  | more than 18 digits                | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Both       | Purchase    | Dealer            | Body Cost Per Grid | invalid  | more than 18 digits                | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Both       | Purchase    | Dealer            | Body Cost Per Grid | invalid  | more than 18 digits                | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Both       | Refinance   | Manufacture       | Body Cost Per Grid | invalid  | more than 18 digits                | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Both       | Refinance   | Manufacture       | Body Cost Per Grid | invalid  | more than 18 digits                | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Both       | Refinance   | Other Manufacture | Body Cost Per Grid | invalid  | more than 18 digits                | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Both       | Refinance   | Other Manufacture | Body Cost Per Grid | invalid  | more than 18 digits                | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Both       | Refinance   | Dealer            | Body Cost Per Grid | invalid  | more than 18 digits                | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Both       | Refinance   | Dealer            | Body Cost Per Grid | invalid  | more than 18 digits                | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Body       | Purchase    | Manufacture       | Body Cost Per Grid | invalid  | more than 18 digits                | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Body       | Purchase    | Manufacture       | Body Cost Per Grid | invalid  | more than 18 digits                | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Body       | Purchase    | Other Manufacture | Body Cost Per Grid | invalid  | more than 18 digits                | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Body       | Purchase    | Other Manufacture | Body Cost Per Grid | invalid  | more than 18 digits                | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Body       | Purchase    | Dealer            | Body Cost Per Grid | invalid  | more than 18 digits                | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Body       | Purchase    | Dealer            | Body Cost Per Grid | invalid  | more than 18 digits                | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Body       | Refinance   | Manufacture       | Body Cost Per Grid | invalid  | more than 18 digits                | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Body       | Refinance   | Manufacture       | Body Cost Per Grid | invalid  | more than 18 digits                | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Body       | Refinance   | Other Manufacture | Body Cost Per Grid | invalid  | more than 18 digits                | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Body       | Refinance   | Other Manufacture | Body Cost Per Grid | invalid  | more than 18 digits                | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Body       | Refinance   | Dealer            | Body Cost Per Grid | invalid  | more than 18 digits                | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Body       | Refinance   | Dealer            | Body Cost Per Grid | invalid  | more than 18 digits                | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Both       | Purchase    | Manufacture       | Body Cost Per Grid | valid    | less than 18 digits                | not throw any       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Both       | Purchase    | Manufacture       | Body Cost Per Grid | valid    | less than 18 digits                | not throw any       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Both       | Purchase    | Other Manufacture | Body Cost Per Grid | valid    | less than 18 digits                | not throw any       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Both       | Purchase    | Other Manufacture | Body Cost Per Grid | valid    | less than 18 digits                | not throw any       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Both       | Purchase    | Dealer            | Body Cost Per Grid | valid    | less than 18 digits                | not throw any       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Both       | Purchase    | Dealer            | Body Cost Per Grid | valid    | less than 18 digits                | not throw any       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Both       | Refinance   | Manufacture       | Body Cost Per Grid | valid    | less than 18 digits                | not throw any       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Both       | Refinance   | Manufacture       | Body Cost Per Grid | valid    | less than 18 digits                | not throw any       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Both       | Refinance   | Other Manufacture | Body Cost Per Grid | valid    | less than 18 digits                | not throw any       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Both       | Refinance   | Other Manufacture | Body Cost Per Grid | valid    | less than 18 digits                | not throw any       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Both       | Refinance   | Dealer            | Body Cost Per Grid | valid    | less than 18 digits                | not throw any       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Both       | Refinance   | Dealer            | Body Cost Per Grid | valid    | less than 18 digits                | not throw any       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Body       | Purchase    | Manufacture       | Body Cost Per Grid | valid    | less than 18 digits                | not throw any       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Body       | Purchase    | Manufacture       | Body Cost Per Grid | valid    | less than 18 digits                | not throw any       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Body       | Purchase    | Other Manufacture | Body Cost Per Grid | valid    | less than 18 digits                | not throw any       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Body       | Purchase    | Other Manufacture | Body Cost Per Grid | valid    | less than 18 digits                | not throw any       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Body       | Purchase    | Dealer            | Body Cost Per Grid | valid    | less than 18 digits                | not throw any       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Body       | Purchase    | Dealer            | Body Cost Per Grid | valid    | less than 18 digits                | not throw any       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Body       | Refinance   | Manufacture       | Body Cost Per Grid | valid    | less than 18 digits                | not throw any       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Body       | Refinance   | Manufacture       | Body Cost Per Grid | valid    | less than 18 digits                | not throw any       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Body       | Refinance   | Other Manufacture | Body Cost Per Grid | valid    | less than 18 digits                | not throw any       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Body       | Refinance   | Other Manufacture | Body Cost Per Grid | valid    | less than 18 digits                | not throw any       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Body       | Refinance   | Dealer            | Body Cost Per Grid | valid    | less than 18 digits                | not throw any       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Body       | Refinance   | Dealer            | Body Cost Per Grid | valid    | less than 18 digits                | not throw any       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Both       | Purchase    | Manufacture       | Body Cost Per Grid | invalid  | character                          | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Both       | Purchase    | Manufacture       | Body Cost Per Grid | invalid  | character                          | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Both       | Purchase    | Other Manufacture | Body Cost Per Grid | invalid  | character                          | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Both       | Purchase    | Other Manufacture | Body Cost Per Grid | invalid  | character                          | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Both       | Purchase    | Dealer            | Body Cost Per Grid | invalid  | character                          | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Both       | Purchase    | Dealer            | Body Cost Per Grid | invalid  | character                          | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Both       | Refinance   | Manufacture       | Body Cost Per Grid | invalid  | character                          | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Both       | Refinance   | Manufacture       | Body Cost Per Grid | invalid  | character                          | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Both       | Refinance   | Other Manufacture | Body Cost Per Grid | invalid  | character                          | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Both       | Refinance   | Other Manufacture | Body Cost Per Grid | invalid  | character                          | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Both       | Refinance   | Dealer            | Body Cost Per Grid | invalid  | character                          | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Both       | Refinance   | Dealer            | Body Cost Per Grid | invalid  | character                          | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Body       | Purchase    | Manufacture       | Body Cost Per Grid | invalid  | character                          | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Body       | Purchase    | Manufacture       | Body Cost Per Grid | invalid  | character                          | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Body       | Purchase    | Other Manufacture | Body Cost Per Grid | invalid  | character                          | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Body       | Purchase    | Other Manufacture | Body Cost Per Grid | invalid  | character                          | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Body       | Purchase    | Dealer            | Body Cost Per Grid | invalid  | character                          | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Body       | Purchase    | Dealer            | Body Cost Per Grid | invalid  | character                          | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Body       | Refinance   | Manufacture       | Body Cost Per Grid | invalid  | character                          | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Body       | Refinance   | Manufacture       | Body Cost Per Grid | invalid  | character                          | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Body       | Refinance   | Other Manufacture | Body Cost Per Grid | invalid  | character                          | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Body       | Refinance   | Other Manufacture | Body Cost Per Grid | invalid  | character                          | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Body       | Refinance   | Dealer            | Body Cost Per Grid | invalid  | character                          | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Body       | Refinance   | Dealer            | Body Cost Per Grid | invalid  | character                          | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Both       | Purchase    | Manufacture       | Body Cost Per Grid | invalid  | special character                  | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Both       | Purchase    | Manufacture       | Body Cost Per Grid | invalid  | special character                  | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Both       | Purchase    | Other Manufacture | Body Cost Per Grid | invalid  | special character                  | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Both       | Purchase    | Other Manufacture | Body Cost Per Grid | invalid  | special character                  | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Both       | Purchase    | Dealer            | Body Cost Per Grid | invalid  | special character                  | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Both       | Purchase    | Dealer            | Body Cost Per Grid | invalid  | special character                  | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Both       | Refinance   | Manufacture       | Body Cost Per Grid | invalid  | special character                  | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Both       | Refinance   | Manufacture       | Body Cost Per Grid | invalid  | special character                  | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Both       | Refinance   | Other Manufacture | Body Cost Per Grid | invalid  | special character                  | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Both       | Refinance   | Other Manufacture | Body Cost Per Grid | invalid  | special character                  | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Both       | Refinance   | Dealer            | Body Cost Per Grid | invalid  | special character                  | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Both       | Refinance   | Dealer            | Body Cost Per Grid | invalid  | special character                  | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Body       | Purchase    | Manufacture       | Body Cost Per Grid | invalid  | special character                  | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Body       | Purchase    | Manufacture       | Body Cost Per Grid | invalid  | special character                  | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Body       | Purchase    | Other Manufacture | Body Cost Per Grid | invalid  | special character                  | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Body       | Purchase    | Other Manufacture | Body Cost Per Grid | invalid  | special character                  | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Body       | Purchase    | Dealer            | Body Cost Per Grid | invalid  | special character                  | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Body       | Purchase    | Dealer            | Body Cost Per Grid | invalid  | special character                  | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Body       | Refinance   | Manufacture       | Body Cost Per Grid | invalid  | special character                  | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Body       | Refinance   | Manufacture       | Body Cost Per Grid | invalid  | special character                  | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Body       | Refinance   | Other Manufacture | Body Cost Per Grid | invalid  | special character                  | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Body       | Refinance   | Other Manufacture | Body Cost Per Grid | invalid  | special character                  | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Body       | Refinance   | Dealer            | Body Cost Per Grid | invalid  | special character                  | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Body       | Refinance   | Dealer            | Body Cost Per Grid | invalid  | special character                  | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Both       | Purchase    | Manufacture       | Body Cost Per Grid | invalid  | negative values                    | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Both       | Purchase    | Manufacture       | Body Cost Per Grid | invalid  | negative values                    | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Both       | Purchase    | Other Manufacture | Body Cost Per Grid | invalid  | negative values                    | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Both       | Purchase    | Other Manufacture | Body Cost Per Grid | invalid  | negative values                    | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Both       | Purchase    | Dealer            | Body Cost Per Grid | invalid  | negative values                    | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Both       | Purchase    | Dealer            | Body Cost Per Grid | invalid  | negative values                    | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Both       | Refinance   | Manufacture       | Body Cost Per Grid | invalid  | negative values                    | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Both       | Refinance   | Manufacture       | Body Cost Per Grid | invalid  | negative values                    | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Both       | Refinance   | Other Manufacture | Body Cost Per Grid | invalid  | negative values                    | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Both       | Refinance   | Other Manufacture | Body Cost Per Grid | invalid  | negative values                    | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Both       | Refinance   | Dealer            | Body Cost Per Grid | invalid  | negative values                    | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Both       | Refinance   | Dealer            | Body Cost Per Grid | invalid  | negative values                    | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Body       | Purchase    | Manufacture       | Body Cost Per Grid | invalid  | negative values                    | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Body       | Purchase    | Manufacture       | Body Cost Per Grid | invalid  | negative values                    | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Body       | Purchase    | Other Manufacture | Body Cost Per Grid | invalid  | negative values                    | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Body       | Purchase    | Other Manufacture | Body Cost Per Grid | invalid  | negative values                    | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Body       | Purchase    | Dealer            | Body Cost Per Grid | invalid  | negative values                    | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Body       | Purchase    | Dealer            | Body Cost Per Grid | invalid  | negative values                    | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Body       | Refinance   | Manufacture       | Body Cost Per Grid | invalid  | negative values                    | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Body       | Refinance   | Manufacture       | Body Cost Per Grid | invalid  | negative values                    | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Body       | Refinance   | Other Manufacture | Body Cost Per Grid | invalid  | negative values                    | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Body       | Refinance   | Other Manufacture | Body Cost Per Grid | invalid  | negative values                    | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Body       | Refinance   | Dealer            | Body Cost Per Grid | invalid  | negative values                    | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Body       | Refinance   | Dealer            | Body Cost Per Grid | invalid  | negative values                    | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Both       | Purchase    | Manufacture       | Body Cost Per Grid | invalid  | character with space               | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Both       | Purchase    | Manufacture       | Body Cost Per Grid | invalid  | character with space               | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Both       | Purchase    | Other Manufacture | Body Cost Per Grid | invalid  | character with space               | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Both       | Purchase    | Other Manufacture | Body Cost Per Grid | invalid  | character with space               | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Both       | Purchase    | Dealer            | Body Cost Per Grid | invalid  | character with space               | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Both       | Purchase    | Dealer            | Body Cost Per Grid | invalid  | character with space               | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Both       | Refinance   | Manufacture       | Body Cost Per Grid | invalid  | character with space               | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Both       | Refinance   | Manufacture       | Body Cost Per Grid | invalid  | character with space               | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Both       | Refinance   | Other Manufacture | Body Cost Per Grid | invalid  | character with space               | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Both       | Refinance   | Other Manufacture | Body Cost Per Grid | invalid  | character with space               | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Both       | Refinance   | Dealer            | Body Cost Per Grid | invalid  | character with space               | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Both       | Refinance   | Dealer            | Body Cost Per Grid | invalid  | character with space               | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Body       | Purchase    | Manufacture       | Body Cost Per Grid | invalid  | character with space               | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Body       | Purchase    | Manufacture       | Body Cost Per Grid | invalid  | character with space               | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Body       | Purchase    | Other Manufacture | Body Cost Per Grid | invalid  | character with space               | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Body       | Purchase    | Other Manufacture | Body Cost Per Grid | invalid  | character with space               | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Body       | Purchase    | Dealer            | Body Cost Per Grid | invalid  | character with space               | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Body       | Purchase    | Dealer            | Body Cost Per Grid | invalid  | character with space               | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Body       | Refinance   | Manufacture       | Body Cost Per Grid | invalid  | character with space               | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Body       | Refinance   | Manufacture       | Body Cost Per Grid | invalid  | character with space               | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Body       | Refinance   | Other Manufacture | Body Cost Per Grid | invalid  | character with space               | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Body       | Refinance   | Other Manufacture | Body Cost Per Grid | invalid  | character with space               | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Body       | Refinance   | Dealer            | Body Cost Per Grid | invalid  | character with space               | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Body       | Refinance   | Dealer            | Body Cost Per Grid | invalid  | character with space               | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Both       | Purchase    | Manufacture       | Body Cost Per Grid | invalid  | digits with space                  | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Both       | Purchase    | Manufacture       | Body Cost Per Grid | invalid  | digits with space                  | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Both       | Purchase    | Other Manufacture | Body Cost Per Grid | invalid  | digits with space                  | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Both       | Purchase    | Other Manufacture | Body Cost Per Grid | invalid  | digits with space                  | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Both       | Purchase    | Dealer            | Body Cost Per Grid | invalid  | digits with space                  | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Both       | Purchase    | Dealer            | Body Cost Per Grid | invalid  | digits with space                  | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Both       | Refinance   | Manufacture       | Body Cost Per Grid | invalid  | digits with space                  | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Both       | Refinance   | Manufacture       | Body Cost Per Grid | invalid  | digits with space                  | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Both       | Refinance   | Other Manufacture | Body Cost Per Grid | invalid  | digits with space                  | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Both       | Refinance   | Other Manufacture | Body Cost Per Grid | invalid  | digits with space                  | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Both       | Refinance   | Dealer            | Body Cost Per Grid | invalid  | digits with space                  | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Both       | Refinance   | Dealer            | Body Cost Per Grid | invalid  | digits with space                  | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Body       | Purchase    | Manufacture       | Body Cost Per Grid | invalid  | digits with space                  | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Body       | Purchase    | Manufacture       | Body Cost Per Grid | invalid  | digits with space                  | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Body       | Purchase    | Other Manufacture | Body Cost Per Grid | invalid  | digits with space                  | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Body       | Purchase    | Other Manufacture | Body Cost Per Grid | invalid  | digits with space                  | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Body       | Purchase    | Dealer            | Body Cost Per Grid | invalid  | digits with space                  | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Body       | Purchase    | Dealer            | Body Cost Per Grid | invalid  | digits with space                  | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Body       | Refinance   | Manufacture       | Body Cost Per Grid | invalid  | digits with space                  | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Body       | Refinance   | Manufacture       | Body Cost Per Grid | invalid  | digits with space                  | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Body       | Refinance   | Other Manufacture | Body Cost Per Grid | invalid  | digits with space                  | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Body       | Refinance   | Other Manufacture | Body Cost Per Grid | invalid  | digits with space                  | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Body       | Refinance   | Dealer            | Body Cost Per Grid | invalid  | digits with space                  | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Body       | Refinance   | Dealer            | Body Cost Per Grid | invalid  | digits with space                  | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Both       | Purchase    | Manufacture       | Body Cost Per Grid | valid    | positive values and Upto 18 digits | not throw any       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Both       | Purchase    | Manufacture       | Body Cost Per Grid | valid    | positive values and Upto 18 digits | not throw any       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Both       | Purchase    | Other Manufacture | Body Cost Per Grid | valid    | positive values and Upto 18 digits | not throw any       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Both       | Purchase    | Other Manufacture | Body Cost Per Grid | valid    | positive values and Upto 18 digits | not throw any       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Both       | Purchase    | Dealer            | Body Cost Per Grid | valid    | positive values and Upto 18 digits | not throw any       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Both       | Purchase    | Dealer            | Body Cost Per Grid | valid    | positive values and Upto 18 digits | not throw any       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Both       | Refinance   | Manufacture       | Body Cost Per Grid | valid    | positive values and Upto 18 digits | not throw any       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Both       | Refinance   | Manufacture       | Body Cost Per Grid | valid    | positive values and Upto 18 digits | not throw any       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Both       | Refinance   | Other Manufacture | Body Cost Per Grid | valid    | positive values and Upto 18 digits | not throw any       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Both       | Refinance   | Other Manufacture | Body Cost Per Grid | valid    | positive values and Upto 18 digits | not throw any       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Both       | Refinance   | Dealer            | Body Cost Per Grid | valid    | positive values and Upto 18 digits | not throw any       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Both       | Refinance   | Dealer            | Body Cost Per Grid | valid    | positive values and Upto 18 digits | not throw any       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Body       | Purchase    | Manufacture       | Body Cost Per Grid | valid    | positive values and Upto 18 digits | not throw any       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Body       | Purchase    | Manufacture       | Body Cost Per Grid | valid    | positive values and Upto 18 digits | not throw any       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Body       | Purchase    | Other Manufacture | Body Cost Per Grid | valid    | positive values and Upto 18 digits | not throw any       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Body       | Purchase    | Other Manufacture | Body Cost Per Grid | valid    | positive values and Upto 18 digits | not throw any       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Body       | Purchase    | Dealer            | Body Cost Per Grid | valid    | positive values and Upto 18 digits | not throw any       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Body       | Purchase    | Dealer            | Body Cost Per Grid | valid    | positive values and Upto 18 digits | not throw any       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Body       | Refinance   | Manufacture       | Body Cost Per Grid | valid    | positive values and Upto 18 digits | not throw any       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Body       | Refinance   | Manufacture       | Body Cost Per Grid | valid    | positive values and Upto 18 digits | not throw any       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Body       | Refinance   | Other Manufacture | Body Cost Per Grid | valid    | positive values and Upto 18 digits | not throw any       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Body       | Refinance   | Other Manufacture | Body Cost Per Grid | valid    | positive values and Upto 18 digits | not throw any       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Used Asset | Body       | Refinance   | Dealer            | Body Cost Per Grid | valid    | positive values and Upto 18 digits | not throw any       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | New Asset  | Body       | Refinance   | Dealer            | Body Cost Per Grid | valid    | positive values and Upto 18 digits | not throw any       |

#Prerequisite:Application already punch with application type as Multi Asset
# ${ ProductType : ["CV"]}
# ${ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
#${ApplicantType:["indiv","nonindiv"]}
#FeatureID-ACAUTOCAS-11906
  Scenario Outline:Validating list of field with different field type for other Manufacture Address in Body Funding Details at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user navigates to asset requested page for "<ApplicationStage>"
    And user select Funding For as "<FundingFor>"
    And user select Finance Mode as "<FinanceMode>"
    And user select asset type as "<AssetType>"
    And user select bought from as Other Manufacture
    And user click on details hyperlink under body funding details
    And user navigates to OtherManufacture Address Details
    When user click on plus icon in OtherManufacture Address Details
    Then list of field should present with different field type in body funding details
      | Field                         | Field_Type     |
      | Address Type                  | dropdown       |
      | Purpose                       | dropdown       |
      | Full Address                  | input          |
      | Country                       | dropdown       |
      | Flat/Plot Number              | input          |
      | Address Line 2                | input          |
      | Address Line 3                | input          |
      | PinCode                       | list of values |
      | Region                        | dropdown       |
      | State                         | dropdown       |
      | City                          | dropdown       |
      | District                      | dropdown       |
      | Taluka                        | list of values |
      | Village                       | list of values |
      | Residence Status              | dropdown       |
      | Residence Type                | dropdown       |
      | Duration at this Address from | input          |
      | Duration at this Address to   | input          |
      | Duration at this City from    | input          |
      | Duration at this City to      | input          |
      | Primary Phone                 | input          |
      | Mobile Phone                  | input          |
      | Current Address checkbox      | checkbox       |
      | Is address verified checkbox  | checkbox       |
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | FundingFor | AssetType  | FinanceMode |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Used Asset | Purchase    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | New Asset  | Purchase    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Used Asset | Refinance   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | New Asset  | Refinance   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Used Asset | Purchase    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | New Asset  | Purchase    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Used Asset | Refinance   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | New Asset  | Refinance   |


#Prerequisite:Application already punch with application type as Multi Asset
# ${ ProductType : ["CV"]}
# ${ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
#${ApplicantType:["indiv","nonindiv"]}
#FeatureID-ACAUTOCAS-11906
  Scenario Outline:<Field> field validation for <Address_City> should be display as Calendar field of other Manufacture Address in Body Funding Details at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user navigates to asset requested page for "<ApplicationStage>"
    And user select Funding For as "<FundingFor>"
    And user select Finance Mode as "<FinanceMode>"
    And user select asset type as "<AssetType>"
    And user select bought from as Other Manufacture
    And user click on details hyperlink under body funding details
    And user navigates to OtherManufacture Address Details
    And user click on plus icon in OtherManufacture Address Details
    When user click on plus icon in OtherManufacture Address Details
    Then "<Field>" field for "<Address_City>" should be display as Calendar field in body funding details
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | FundingFor | FinanceMode | AssetType  | Field     | Address_City             |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Purchase    | Used Asset | From Date | Duration at this Address |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Purchase    | New Asset  | From Date | Duration at this Address |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Refinance   | Used Asset | From Date | Duration at this Address |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Refinance   | New Asset  | From Date | Duration at this Address |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Purchase    | Used Asset | From Date | Duration at this Address |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Purchase    | New Asset  | From Date | Duration at this Address |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Refinance   | Used Asset | From Date | Duration at this Address |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Refinance   | New Asset  | From Date | Duration at this Address |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Purchase    | Used Asset | To Date   | Duration at this Address |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Purchase    | New Asset  | To Date   | Duration at this Address |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Refinance   | Used Asset | To Date   | Duration at this Address |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Refinance   | New Asset  | To Date   | Duration at this Address |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Purchase    | Used Asset | To Date   | Duration at this Address |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Purchase    | New Asset  | To Date   | Duration at this Address |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Refinance   | Used Asset | To Date   | Duration at this Address |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Refinance   | New Asset  | To Date   | Duration at this Address |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Purchase    | Used Asset | From Date | Duration at this City    |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Purchase    | New Asset  | From Date | Duration at this City    |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Refinance   | Used Asset | From Date | Duration at this City    |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Refinance   | New Asset  | From Date | Duration at this City    |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Purchase    | Used Asset | From Date | Duration at this City    |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Purchase    | New Asset  | From Date | Duration at this City    |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Refinance   | Used Asset | From Date | Duration at this City    |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Refinance   | New Asset  | From Date | Duration at this City    |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Purchase    | Used Asset | To Date   | Duration at this City    |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Purchase    | New Asset  | To Date   | Duration at this City    |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Refinance   | Used Asset | To Date   | Duration at this City    |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Refinance   | New Asset  | To Date   | Duration at this City    |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Purchase    | Used Asset | To Date   | Duration at this City    |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Purchase    | New Asset  | To Date   | Duration at this City    |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Refinance   | Used Asset | To Date   | Duration at this City    |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Refinance   | New Asset  | To Date   | Duration at this City    |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Purchase    | Used Asset | From Date | Duration at this Address |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Purchase    | New Asset  | From Date | Duration at this Address |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Refinance   | Used Asset | From Date | Duration at this Address |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Refinance   | New Asset  | From Date | Duration at this Address |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Purchase    | Used Asset | From Date | Duration at this Address |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Purchase    | New Asset  | From Date | Duration at this Address |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Refinance   | Used Asset | From Date | Duration at this Address |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Refinance   | New Asset  | From Date | Duration at this Address |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Purchase    | Used Asset | To Date   | Duration at this Address |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Purchase    | New Asset  | To Date   | Duration at this Address |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Refinance   | Used Asset | To Date   | Duration at this Address |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Refinance   | New Asset  | To Date   | Duration at this Address |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Purchase    | Used Asset | To Date   | Duration at this Address |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Purchase    | New Asset  | To Date   | Duration at this Address |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Refinance   | Used Asset | To Date   | Duration at this Address |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Refinance   | New Asset  | To Date   | Duration at this Address |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Purchase    | Used Asset | From Date | Duration at this City    |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Purchase    | New Asset  | From Date | Duration at this City    |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Refinance   | Used Asset | From Date | Duration at this City    |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Refinance   | New Asset  | From Date | Duration at this City    |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Purchase    | Used Asset | From Date | Duration at this City    |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Purchase    | New Asset  | From Date | Duration at this City    |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Refinance   | Used Asset | From Date | Duration at this City    |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Refinance   | New Asset  | From Date | Duration at this City    |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Purchase    | Used Asset | To Date   | Duration at this City    |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Purchase    | New Asset  | To Date   | Duration at this City    |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Refinance   | Used Asset | To Date   | Duration at this City    |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Refinance   | New Asset  | To Date   | Duration at this City    |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Purchase    | Used Asset | To Date   | Duration at this City    |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Purchase    | New Asset  | To Date   | Duration at this City    |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Refinance   | Used Asset | To Date   | Duration at this City    |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Refinance   | New Asset  | To Date   | Duration at this City    |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Purchase    | Used Asset | From Date | Duration at this Address |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Purchase    | New Asset  | From Date | Duration at this Address |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Refinance   | Used Asset | From Date | Duration at this Address |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Refinance   | New Asset  | From Date | Duration at this Address |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Purchase    | Used Asset | From Date | Duration at this Address |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Purchase    | New Asset  | From Date | Duration at this Address |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Refinance   | Used Asset | From Date | Duration at this Address |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Refinance   | New Asset  | From Date | Duration at this Address |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Purchase    | Used Asset | To Date   | Duration at this Address |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Purchase    | New Asset  | To Date   | Duration at this Address |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Refinance   | Used Asset | To Date   | Duration at this Address |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Refinance   | New Asset  | To Date   | Duration at this Address |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Purchase    | Used Asset | To Date   | Duration at this Address |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Purchase    | New Asset  | To Date   | Duration at this Address |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Refinance   | Used Asset | To Date   | Duration at this Address |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Refinance   | New Asset  | To Date   | Duration at this Address |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Purchase    | Used Asset | From Date | Duration at this City    |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Purchase    | New Asset  | From Date | Duration at this City    |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Refinance   | Used Asset | From Date | Duration at this City    |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Refinance   | New Asset  | From Date | Duration at this City    |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Purchase    | Used Asset | From Date | Duration at this City    |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Purchase    | New Asset  | From Date | Duration at this City    |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Refinance   | Used Asset | From Date | Duration at this City    |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Refinance   | New Asset  | From Date | Duration at this City    |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Purchase    | Used Asset | To Date   | Duration at this City    |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Purchase    | New Asset  | To Date   | Duration at this City    |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Refinance   | Used Asset | To Date   | Duration at this City    |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Refinance   | New Asset  | To Date   | Duration at this City    |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Purchase    | Used Asset | To Date   | Duration at this City    |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Purchase    | New Asset  | To Date   | Duration at this City    |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Refinance   | Used Asset | To Date   | Duration at this City    |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Refinance   | New Asset  | To Date   | Duration at this City    |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Purchase    | Used Asset | From Date | Duration at this Address |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Purchase    | New Asset  | From Date | Duration at this Address |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Refinance   | Used Asset | From Date | Duration at this Address |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Refinance   | New Asset  | From Date | Duration at this Address |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Purchase    | Used Asset | From Date | Duration at this Address |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Purchase    | New Asset  | From Date | Duration at this Address |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Refinance   | Used Asset | From Date | Duration at this Address |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Refinance   | New Asset  | From Date | Duration at this Address |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Purchase    | Used Asset | To Date   | Duration at this Address |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Purchase    | New Asset  | To Date   | Duration at this Address |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Refinance   | Used Asset | To Date   | Duration at this Address |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Refinance   | New Asset  | To Date   | Duration at this Address |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Purchase    | Used Asset | To Date   | Duration at this Address |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Purchase    | New Asset  | To Date   | Duration at this Address |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Refinance   | Used Asset | To Date   | Duration at this Address |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Refinance   | New Asset  | To Date   | Duration at this Address |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Purchase    | Used Asset | From Date | Duration at this City    |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Purchase    | New Asset  | From Date | Duration at this City    |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Refinance   | Used Asset | From Date | Duration at this City    |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Refinance   | New Asset  | From Date | Duration at this City    |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Purchase    | Used Asset | From Date | Duration at this City    |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Purchase    | New Asset  | From Date | Duration at this City    |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Refinance   | Used Asset | From Date | Duration at this City    |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Refinance   | New Asset  | From Date | Duration at this City    |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Purchase    | Used Asset | To Date   | Duration at this City    |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Purchase    | New Asset  | To Date   | Duration at this City    |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Refinance   | Used Asset | To Date   | Duration at this City    |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Refinance   | New Asset  | To Date   | Duration at this City    |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Purchase    | Used Asset | To Date   | Duration at this City    |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Purchase    | New Asset  | To Date   | Duration at this City    |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Refinance   | Used Asset | To Date   | Duration at this City    |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Refinance   | New Asset  | To Date   | Duration at this City    |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Purchase    | Used Asset | From Date | Duration at this Address |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Purchase    | New Asset  | From Date | Duration at this Address |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Refinance   | Used Asset | From Date | Duration at this Address |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Refinance   | New Asset  | From Date | Duration at this Address |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Purchase    | Used Asset | From Date | Duration at this Address |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Purchase    | New Asset  | From Date | Duration at this Address |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Refinance   | Used Asset | From Date | Duration at this Address |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Refinance   | New Asset  | From Date | Duration at this Address |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Purchase    | Used Asset | To Date   | Duration at this Address |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Purchase    | New Asset  | To Date   | Duration at this Address |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Refinance   | Used Asset | To Date   | Duration at this Address |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Refinance   | New Asset  | To Date   | Duration at this Address |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Purchase    | Used Asset | To Date   | Duration at this Address |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Purchase    | New Asset  | To Date   | Duration at this Address |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Refinance   | Used Asset | To Date   | Duration at this Address |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Refinance   | New Asset  | To Date   | Duration at this Address |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Purchase    | Used Asset | From Date | Duration at this City    |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Purchase    | New Asset  | From Date | Duration at this City    |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Refinance   | Used Asset | From Date | Duration at this City    |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Refinance   | New Asset  | From Date | Duration at this City    |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Purchase    | Used Asset | From Date | Duration at this City    |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Purchase    | New Asset  | From Date | Duration at this City    |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Refinance   | Used Asset | From Date | Duration at this City    |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Refinance   | New Asset  | From Date | Duration at this City    |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Purchase    | Used Asset | To Date   | Duration at this City    |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Purchase    | New Asset  | To Date   | Duration at this City    |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Refinance   | Used Asset | To Date   | Duration at this City    |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Refinance   | New Asset  | To Date   | Duration at this City    |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Purchase    | Used Asset | To Date   | Duration at this City    |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Purchase    | New Asset  | To Date   | Duration at this City    |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Refinance   | Used Asset | To Date   | Duration at this City    |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Refinance   | New Asset  | To Date   | Duration at this City    |


#Prerequisite:Application already punch with application type as Multi Asset
# ${ ProductType : ["CV"]}
# ${ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
#${ApplicantType:["indiv","nonindiv"]}
#FeatureID-ACAUTOCAS-11906
  Scenario Outline:<Field> field should be display in two separate block for "<Address_City>" of other Manufacture Address in Body Funding Details at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user navigates to asset requested page for "<ApplicationStage>"
    And user select Funding For as "<FundingFor>"
    And user select Finance Mode as "<FinanceMode>"
    And user select asset type as "<AssetType>"
    And user select bought from as Other Manufacture
    And user click on details hyperlink under body funding details
    And user navigates to OtherManufacture Address Details
    And user click on plus icon in OtherManufacture Address Details
    And user fills To Date field for "<Address_City>" in body funding details
    When user fills From Date field for "<Address_City>" in body funding details
    Then "<Field>" field should be display in two separate block for "<Address_City>" in body funding details
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | FundingFor | FinanceMode | AssetType  | Field           | Address_City             |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Purchase    | Used Asset | Year and Months | Duration at this address |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Purchase    | New Asset  | Year and Months | Duration at this address |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Refinance   | Used Asset | Year and Months | Duration at this address |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Refinance   | New Asset  | Year and Months | Duration at this address |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Purchase    | Used Asset | Year and Months | Duration at this address |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Purchase    | New Asset  | Year and Months | Duration at this address |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Refinance   | Used Asset | Year and Months | Duration at this address |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Refinance   | New Asset  | Year and Months | Duration at this address |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Purchase    | Used Asset | Year and Months | Duration at this City    |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Purchase    | New Asset  | Year and Months | Duration at this City    |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Refinance   | Used Asset | Year and Months | Duration at this City    |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Refinance   | New Asset  | Year and Months | Duration at this City    |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Purchase    | Used Asset | Year and Months | Duration at this City    |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Purchase    | New Asset  | Year and Months | Duration at this City    |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Refinance   | Used Asset | Year and Months | Duration at this City    |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Refinance   | New Asset  | Year and Months | Duration at this City    |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Purchase    | Used Asset | Year and Months | Duration at this address |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Purchase    | New Asset  | Year and Months | Duration at this address |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Refinance   | Used Asset | Year and Months | Duration at this address |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Refinance   | New Asset  | Year and Months | Duration at this address |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Purchase    | Used Asset | Year and Months | Duration at this address |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Purchase    | New Asset  | Year and Months | Duration at this address |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Refinance   | Used Asset | Year and Months | Duration at this address |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Refinance   | New Asset  | Year and Months | Duration at this address |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Purchase    | Used Asset | Year and Months | Duration at this City    |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Purchase    | New Asset  | Year and Months | Duration at this City    |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Refinance   | Used Asset | Year and Months | Duration at this City    |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Refinance   | New Asset  | Year and Months | Duration at this City    |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Purchase    | Used Asset | Year and Months | Duration at this City    |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Purchase    | New Asset  | Year and Months | Duration at this City    |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Refinance   | Used Asset | Year and Months | Duration at this City    |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Refinance   | New Asset  | Year and Months | Duration at this City    |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Purchase    | Used Asset | Year and Months | Duration at this address |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Purchase    | New Asset  | Year and Months | Duration at this address |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Refinance   | Used Asset | Year and Months | Duration at this address |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Refinance   | New Asset  | Year and Months | Duration at this address |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Purchase    | Used Asset | Year and Months | Duration at this address |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Purchase    | New Asset  | Year and Months | Duration at this address |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Refinance   | Used Asset | Year and Months | Duration at this address |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Refinance   | New Asset  | Year and Months | Duration at this address |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Purchase    | Used Asset | Year and Months | Duration at this City    |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Purchase    | New Asset  | Year and Months | Duration at this City    |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Refinance   | Used Asset | Year and Months | Duration at this City    |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Refinance   | New Asset  | Year and Months | Duration at this City    |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Purchase    | Used Asset | Year and Months | Duration at this City    |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Purchase    | New Asset  | Year and Months | Duration at this City    |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Refinance   | Used Asset | Year and Months | Duration at this City    |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Refinance   | New Asset  | Year and Months | Duration at this City    |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Purchase    | Used Asset | Year and Months | Duration at this address |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Purchase    | New Asset  | Year and Months | Duration at this address |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Refinance   | Used Asset | Year and Months | Duration at this address |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Refinance   | New Asset  | Year and Months | Duration at this address |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Purchase    | Used Asset | Year and Months | Duration at this address |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Purchase    | New Asset  | Year and Months | Duration at this address |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Refinance   | Used Asset | Year and Months | Duration at this address |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Refinance   | New Asset  | Year and Months | Duration at this address |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Purchase    | Used Asset | Year and Months | Duration at this City    |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Purchase    | New Asset  | Year and Months | Duration at this City    |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Refinance   | Used Asset | Year and Months | Duration at this City    |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Refinance   | New Asset  | Year and Months | Duration at this City    |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Purchase    | Used Asset | Year and Months | Duration at this City    |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Purchase    | New Asset  | Year and Months | Duration at this City    |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Refinance   | Used Asset | Year and Months | Duration at this City    |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Refinance   | New Asset  | Year and Months | Duration at this City    |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Purchase    | Used Asset | Year and Months | Duration at this address |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Purchase    | New Asset  | Year and Months | Duration at this address |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Refinance   | Used Asset | Year and Months | Duration at this address |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Refinance   | New Asset  | Year and Months | Duration at this address |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Purchase    | Used Asset | Year and Months | Duration at this address |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Purchase    | New Asset  | Year and Months | Duration at this address |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Refinance   | Used Asset | Year and Months | Duration at this address |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Refinance   | New Asset  | Year and Months | Duration at this address |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Purchase    | Used Asset | Year and Months | Duration at this City    |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Purchase    | New Asset  | Year and Months | Duration at this City    |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Refinance   | Used Asset | Year and Months | Duration at this City    |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Refinance   | New Asset  | Year and Months | Duration at this City    |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Purchase    | Used Asset | Year and Months | Duration at this City    |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Purchase    | New Asset  | Year and Months | Duration at this City    |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Refinance   | Used Asset | Year and Months | Duration at this City    |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Refinance   | New Asset  | Year and Months | Duration at this City    |

#Prerequisite:Application already punch with application type as Multi Asset
# ${ ProductType : ["CV"]}
# ${ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
#${ApplicantType:["indiv","nonindiv"]}
#FeatureID-ACAUTOCAS-11906
  Scenario Outline:<Field> calculation for <Address_City> of other Manufacture Address in Body Funding Details at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user navigates to asset requested page for "<ApplicationStage>"
    And user select Funding For as "<FundingFor>"
    And user select Finance Mode as "<FinanceMode>"
    And user select asset type as "<AssetType>"
    And user select bought from as Other Manufacture
    And user click on details hyperlink under body funding details
    And user navigates to OtherManufacture Address Details
    And user click on plus icon in OtherManufacture Address Details
    When user fills From Date field for "<Address_City>" in body funding details
    And user fills To Date field for "<Address_City>" in body funding details
    Then "<Field>" field should be calculated correctly for "<Address_City>" in body funding details
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | FundingFor | FinanceMode | AssetType  | Field           | Address_City             |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Purchase    | Used Asset | Year and Months | Duration at this address |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Purchase    | New Asset  | Year and Months | Duration at this address |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Refinance   | Used Asset | Year and Months | Duration at this address |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Refinance   | New Asset  | Year and Months | Duration at this address |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Purchase    | Used Asset | Year and Months | Duration at this address |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Purchase    | New Asset  | Year and Months | Duration at this address |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Refinance   | Used Asset | Year and Months | Duration at this address |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Refinance   | New Asset  | Year and Months | Duration at this address |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Purchase    | Used Asset | Year and Months | Duration at this City    |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Purchase    | New Asset  | Year and Months | Duration at this City    |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Refinance   | Used Asset | Year and Months | Duration at this City    |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Refinance   | New Asset  | Year and Months | Duration at this City    |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Purchase    | Used Asset | Year and Months | Duration at this City    |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Purchase    | New Asset  | Year and Months | Duration at this City    |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Refinance   | Used Asset | Year and Months | Duration at this City    |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Refinance   | New Asset  | Year and Months | Duration at this City    |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Purchase    | Used Asset | Year and Months | Duration at this address |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Purchase    | New Asset  | Year and Months | Duration at this address |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Refinance   | Used Asset | Year and Months | Duration at this address |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Refinance   | New Asset  | Year and Months | Duration at this address |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Purchase    | Used Asset | Year and Months | Duration at this address |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Purchase    | New Asset  | Year and Months | Duration at this address |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Refinance   | Used Asset | Year and Months | Duration at this address |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Refinance   | New Asset  | Year and Months | Duration at this address |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Purchase    | Used Asset | Year and Months | Duration at this City    |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Purchase    | New Asset  | Year and Months | Duration at this City    |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Refinance   | Used Asset | Year and Months | Duration at this City    |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Refinance   | New Asset  | Year and Months | Duration at this City    |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Purchase    | Used Asset | Year and Months | Duration at this City    |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Purchase    | New Asset  | Year and Months | Duration at this City    |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Refinance   | Used Asset | Year and Months | Duration at this City    |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Refinance   | New Asset  | Year and Months | Duration at this City    |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Purchase    | Used Asset | Year and Months | Duration at this address |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Purchase    | New Asset  | Year and Months | Duration at this address |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Refinance   | Used Asset | Year and Months | Duration at this address |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Refinance   | New Asset  | Year and Months | Duration at this address |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Purchase    | Used Asset | Year and Months | Duration at this address |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Purchase    | New Asset  | Year and Months | Duration at this address |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Refinance   | Used Asset | Year and Months | Duration at this address |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Refinance   | New Asset  | Year and Months | Duration at this address |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Purchase    | Used Asset | Year and Months | Duration at this City    |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Purchase    | New Asset  | Year and Months | Duration at this City    |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Refinance   | Used Asset | Year and Months | Duration at this City    |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Refinance   | New Asset  | Year and Months | Duration at this City    |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Purchase    | Used Asset | Year and Months | Duration at this City    |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Purchase    | New Asset  | Year and Months | Duration at this City    |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Refinance   | Used Asset | Year and Months | Duration at this City    |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Refinance   | New Asset  | Year and Months | Duration at this City    |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Purchase    | Used Asset | Year and Months | Duration at this address |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Purchase    | New Asset  | Year and Months | Duration at this address |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Refinance   | Used Asset | Year and Months | Duration at this address |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Refinance   | New Asset  | Year and Months | Duration at this address |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Purchase    | Used Asset | Year and Months | Duration at this address |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Purchase    | New Asset  | Year and Months | Duration at this address |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Refinance   | Used Asset | Year and Months | Duration at this address |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Refinance   | New Asset  | Year and Months | Duration at this address |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Purchase    | Used Asset | Year and Months | Duration at this City    |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Purchase    | New Asset  | Year and Months | Duration at this City    |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Refinance   | Used Asset | Year and Months | Duration at this City    |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Refinance   | New Asset  | Year and Months | Duration at this City    |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Purchase    | Used Asset | Year and Months | Duration at this City    |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Purchase    | New Asset  | Year and Months | Duration at this City    |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Refinance   | Used Asset | Year and Months | Duration at this City    |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Refinance   | New Asset  | Year and Months | Duration at this City    |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Purchase    | Used Asset | Year and Months | Duration at this address |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Purchase    | New Asset  | Year and Months | Duration at this address |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Refinance   | Used Asset | Year and Months | Duration at this address |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Refinance   | New Asset  | Year and Months | Duration at this address |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Purchase    | Used Asset | Year and Months | Duration at this address |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Purchase    | New Asset  | Year and Months | Duration at this address |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Refinance   | Used Asset | Year and Months | Duration at this address |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Refinance   | New Asset  | Year and Months | Duration at this address |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Purchase    | Used Asset | Year and Months | Duration at this City    |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Purchase    | New Asset  | Year and Months | Duration at this City    |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Refinance   | Used Asset | Year and Months | Duration at this City    |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Refinance   | New Asset  | Year and Months | Duration at this City    |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Purchase    | Used Asset | Year and Months | Duration at this City    |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Purchase    | New Asset  | Year and Months | Duration at this City    |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Refinance   | Used Asset | Year and Months | Duration at this City    |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Refinance   | New Asset  | Year and Months | Duration at this City    |

    #Prerequisite:Application already punch with application type as Multi Asset
# ${ ProductType : ["CV"]}
# ${ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
#${ApplicantType:["indiv","nonindiv"]}
#FeatureID-ACAUTOCAS-11906
  Scenario Outline:<Field> calculation for <Address_City> if Current Address checkbox of other Manufacture Address in Body Funding Details is checked at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user navigates to asset requested page for "<ApplicationStage>"
    And user select Funding For as "<FundingFor>"
    And user select Finance Mode as "<FinanceMode>"
    And user select asset type as "<AssetType>"
    And user select bought from as Other Manufacture
    And user click on details hyperlink under body funding details
    And user navigates to OtherManufacture Address Details
    And user click on plus icon in OtherManufacture Address Details
    And user checked Current Address checkbox in body funding details
    When user fills From Date field for "<Address_City>" in body funding details
    Then "<Field>" field should be calculated correctly as per current system date for "<Address_City>" in body funding details
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | FundingFor | FinanceMode | AssetType  | Field           | Address_City             |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Purchase    | Used Asset | Year and Months | Duration at this address |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Purchase    | New Asset  | Year and Months | Duration at this address |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Refinance   | Used Asset | Year and Months | Duration at this address |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Refinance   | New Asset  | Year and Months | Duration at this address |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Purchase    | Used Asset | Year and Months | Duration at this address |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Purchase    | New Asset  | Year and Months | Duration at this address |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Refinance   | Used Asset | Year and Months | Duration at this address |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Refinance   | New Asset  | Year and Months | Duration at this address |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Purchase    | Used Asset | Year and Months | Duration at this City    |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Purchase    | New Asset  | Year and Months | Duration at this City    |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Refinance   | Used Asset | Year and Months | Duration at this City    |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Refinance   | New Asset  | Year and Months | Duration at this City    |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Purchase    | Used Asset | Year and Months | Duration at this City    |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Purchase    | New Asset  | Year and Months | Duration at this City    |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Refinance   | Used Asset | Year and Months | Duration at this City    |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Refinance   | New Asset  | Year and Months | Duration at this City    |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Purchase    | Used Asset | Year and Months | Duration at this address |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Purchase    | New Asset  | Year and Months | Duration at this address |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Refinance   | Used Asset | Year and Months | Duration at this address |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Refinance   | New Asset  | Year and Months | Duration at this address |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Purchase    | Used Asset | Year and Months | Duration at this address |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Purchase    | New Asset  | Year and Months | Duration at this address |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Refinance   | Used Asset | Year and Months | Duration at this address |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Refinance   | New Asset  | Year and Months | Duration at this address |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Purchase    | Used Asset | Year and Months | Duration at this City    |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Purchase    | New Asset  | Year and Months | Duration at this City    |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Refinance   | Used Asset | Year and Months | Duration at this City    |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Refinance   | New Asset  | Year and Months | Duration at this City    |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Purchase    | Used Asset | Year and Months | Duration at this City    |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Purchase    | New Asset  | Year and Months | Duration at this City    |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Refinance   | Used Asset | Year and Months | Duration at this City    |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Refinance   | New Asset  | Year and Months | Duration at this City    |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Purchase    | Used Asset | Year and Months | Duration at this address |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Purchase    | New Asset  | Year and Months | Duration at this address |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Refinance   | Used Asset | Year and Months | Duration at this address |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Refinance   | New Asset  | Year and Months | Duration at this address |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Purchase    | Used Asset | Year and Months | Duration at this address |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Purchase    | New Asset  | Year and Months | Duration at this address |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Refinance   | Used Asset | Year and Months | Duration at this address |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Refinance   | New Asset  | Year and Months | Duration at this address |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Purchase    | Used Asset | Year and Months | Duration at this City    |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Purchase    | New Asset  | Year and Months | Duration at this City    |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Refinance   | Used Asset | Year and Months | Duration at this City    |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Refinance   | New Asset  | Year and Months | Duration at this City    |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Purchase    | Used Asset | Year and Months | Duration at this City    |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Purchase    | New Asset  | Year and Months | Duration at this City    |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Refinance   | Used Asset | Year and Months | Duration at this City    |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Refinance   | New Asset  | Year and Months | Duration at this City    |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Purchase    | Used Asset | Year and Months | Duration at this address |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Purchase    | New Asset  | Year and Months | Duration at this address |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Refinance   | Used Asset | Year and Months | Duration at this address |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Refinance   | New Asset  | Year and Months | Duration at this address |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Purchase    | Used Asset | Year and Months | Duration at this address |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Purchase    | New Asset  | Year and Months | Duration at this address |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Refinance   | Used Asset | Year and Months | Duration at this address |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Refinance   | New Asset  | Year and Months | Duration at this address |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Purchase    | Used Asset | Year and Months | Duration at this City    |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Purchase    | New Asset  | Year and Months | Duration at this City    |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Refinance   | Used Asset | Year and Months | Duration at this City    |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Refinance   | New Asset  | Year and Months | Duration at this City    |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Purchase    | Used Asset | Year and Months | Duration at this City    |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Purchase    | New Asset  | Year and Months | Duration at this City    |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Refinance   | Used Asset | Year and Months | Duration at this City    |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Refinance   | New Asset  | Year and Months | Duration at this City    |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Purchase    | Used Asset | Year and Months | Duration at this address |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Purchase    | New Asset  | Year and Months | Duration at this address |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Refinance   | Used Asset | Year and Months | Duration at this address |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Refinance   | New Asset  | Year and Months | Duration at this address |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Purchase    | Used Asset | Year and Months | Duration at this address |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Purchase    | New Asset  | Year and Months | Duration at this address |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Refinance   | Used Asset | Year and Months | Duration at this address |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Refinance   | New Asset  | Year and Months | Duration at this address |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Purchase    | Used Asset | Year and Months | Duration at this City    |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Purchase    | New Asset  | Year and Months | Duration at this City    |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Refinance   | Used Asset | Year and Months | Duration at this City    |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Refinance   | New Asset  | Year and Months | Duration at this City    |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Purchase    | Used Asset | Year and Months | Duration at this City    |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Purchase    | New Asset  | Year and Months | Duration at this City    |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Refinance   | Used Asset | Year and Months | Duration at this City    |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Refinance   | New Asset  | Year and Months | Duration at this City    |

    #Prerequisite:Application already punch with application type as Multi Asset
# ${ ProductType : ["CV"]}
# ${ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
#${ApplicantType:["indiv","nonindiv"]}
#FeatureID-ACAUTOCAS-11906
  Scenario Outline:Edit the added Other Manufacture Address in Body Funding Details at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user navigates to asset requested page for "<ApplicationStage>"
    And user select Funding For as "<FundingFor>"
    And user select Collateral Sub-Type/Asset  as "<ProductType>"
    And user select Finance Mode as "<FinanceMode>"
    And user select asset type as "<AssetType>"
    And user select bought from as Other Manufacture
    And user click on details hyperlink under body funding details
    And user navigates to OtherManufacture Address Details
    And user click on plus icon in OtherManufacture Address Details
    When user add Other Manufacture Address details
    And user edits added Other Manufacture Address details
    Then Other Manufacture Address details should be edited successfully
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | FundingFor | FinanceMode | AssetType  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Purchase    | Used Asset |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Purchase    | New Asset  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Refinance   | Used Asset |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Refinance   | New Asset  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Purchase    | Used Asset |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Purchase    | New Asset  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Refinance   | Used Asset |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Refinance   | New Asset  |

  #Prerequisite:Application already punch with application type as Multi Asset
# ${ ProductType : ["CV"]}
# ${ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
#${ApplicantType:["indiv","nonindiv"]}
#FeatureID-ACAUTOCAS-11906
  Scenario Outline:Delete the added Other Manufacture Address in Body Funding Details at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user navigates to asset requested page for "<ApplicationStage>"
    And user select Funding For as "<FundingFor>"
    And user select Finance Mode as "<FinanceMode>"
    And user select asset type as "<AssetType>"
    And user select bought from as Other Manufacture
    And user click on details hyperlink under body funding details
    And user navigates to OtherManufacture Address Details
    And user click on plus icon in OtherManufacture Address Details
    When user add Other Manufacture Address details
    And user deletes added Other Manufacture Address details
    Then Other Manufacture Address details should be deleted successfully
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | FundingFor | FinanceMode | AssetType  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Purchase    | Used Asset |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Purchase    | New Asset  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Refinance   | Used Asset |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Refinance   | New Asset  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Purchase    | Used Asset |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Purchase    | New Asset  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Refinance   | Used Asset |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Refinance   | New Asset  |

       #Prerequisite:Application already punch with application type as Multi Asset
# ${ ProductType : ["CV"]}
# ${ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
#${ApplicantType:["indiv","nonindiv"]}
    #FeatureID-ACAUTOCAS-11906
  Scenario Outline:User should able to change default bank account after adding multiple bank details in Body Funding Details at <ApplicationStage> for <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user navigates to asset requested page for "<ApplicationStage>"
    And user select Funding For as "<FundingFor>"
    And user select Finance Mode as "<FinanceMode>"
    And user select asset type as "<AssetType>"
    And user select bought from as Other Manufacture
    And user click on details hyperlink under body funding details
    And user navigates to OtherManufacture Address Details
    And user click on plus icon in OtherManufacture Address Details
    When user add "<NoOfIdentification>" identification details with save
    Then user should able to change default bank account in Body Funding Details
    Examples:
      | NoOfIdentification | ApplicantType   | ApplicationStage   | ProductType   | FundingFor | FinanceMode | AssetType  |
      | one another        | <ApplicantType> | <ApplicationStage> | <ProductType> | Both       | Purchase    | Used Asset |
      | one another        | <ApplicantType> | <ApplicationStage> | <ProductType> | Both       | Purchase    | New Asset  |
      | one another        | <ApplicantType> | <ApplicationStage> | <ProductType> | Both       | Refinance   | Used Asset |
      | one another        | <ApplicantType> | <ApplicationStage> | <ProductType> | Both       | Refinance   | New Asset  |
      | one another        | <ApplicantType> | <ApplicationStage> | <ProductType> | Body       | Purchase    | Used Asset |
      | one another        | <ApplicantType> | <ApplicationStage> | <ProductType> | Body       | Purchase    | New Asset  |
      | one another        | <ApplicantType> | <ApplicationStage> | <ProductType> | Body       | Refinance   | Used Asset |
      | one another        | <ApplicantType> | <ApplicationStage> | <ProductType> | Body       | Refinance   | New Asset  |
      | multiple           | <ApplicantType> | <ApplicationStage> | <ProductType> | Both       | Purchase    | Used Asset |
      | multiple           | <ApplicantType> | <ApplicationStage> | <ProductType> | Both       | Purchase    | New Asset  |
      | multiple           | <ApplicantType> | <ApplicationStage> | <ProductType> | Both       | Refinance   | Used Asset |
      | multiple           | <ApplicantType> | <ApplicationStage> | <ProductType> | Both       | Refinance   | New Asset  |
      | multiple           | <ApplicantType> | <ApplicationStage> | <ProductType> | Body       | Purchase    | Used Asset |
      | multiple           | <ApplicantType> | <ApplicationStage> | <ProductType> | Body       | Purchase    | New Asset  |
      | multiple           | <ApplicantType> | <ApplicationStage> | <ProductType> | Body       | Refinance   | Used Asset |
      | multiple           | <ApplicantType> | <ApplicationStage> | <ProductType> | Body       | Refinance   | New Asset  |
