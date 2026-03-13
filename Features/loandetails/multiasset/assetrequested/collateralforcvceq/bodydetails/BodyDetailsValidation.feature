@Epic-Loan_Application_Details
@AuthoredBy-harshita.nayak
@NotImplemented
@Conventional
@Deferred
Feature:Body Details Validation under Collateral Details for Multi Asset
#  CAS-84207
  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0

# Prerequisite:Application already punch with application type as Multi Asset
 # ${ ProductType : ["CEQ","CV"]}
# ${ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
#${ApplicantType:["indiv","nonindiv"]}
#FeatureID-ACAUTOCAS-11906
  Scenario Outline:Add multiple body details for bought from as <BoughtFrom> in collateral details for <ProductType> at <ApplicationStage> stage
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user navigates to asset requested page
    And user select Funding For as "<FundingFor>"
    And user select Finance Mode as "<FinanceMode>"
    And user save the asset requested with asset type as Used Asset
    And user edit the added asset requested details
    And user opens Collateral Details section
    And user edit the collateral details
    And user opens body details section
    And user select bought from as "<BoughtFrom>" in body details
    When user add multiple body details
    Then multiple body details should be added successfully

    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | FundingFor | FinanceMode | BoughtFrom        |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Purchase    | Manufacture       |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Purchase    | Other Manufacture |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Purchase    | Dealer            |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Refinance   | Manufacture       |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Refinance   | Other Manufacture |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Refinance   | Dealer            |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Purchase    | Manufacture       |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Purchase    | Other Manufacture |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Purchase    | Dealer            |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Refinance   | Manufacture       |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Refinance   | Other Manufacture |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Refinance   | Dealer            |

    #Prerequisite:Application already punch with application type as Multi Asset
# ${ ProductType : ["CEQ","CV"]}
# ${ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
#${ApplicantType:["indiv","nonindiv"]}
#FeatureID-ACAUTOCAS-11906
  Scenario Outline:Delete multiple added body details for bought from as <BoughtFrom> in collateral details at <ApplicationStage> stage for <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user navigates to asset requested page
    And user select Funding For as "<FundingFor>"
    And user select Finance Mode as "<FinanceMode>"
    And user save the asset requested with asset type as Used Asset
    And user edit the added asset requested details
    And user opens Collateral Details section
    And user edit the collateral details
    And user opens body details section
    And user select bought from as "<BoughtFrom>" in body details
    When user add multiple body details
    And user delete multiple added body details
    Then multiple body details should be deleted successfully


    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | FundingFor | FinanceMode | BoughtFrom        |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Refinance   | Manufacture       |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Refinance   | Other Manufacture |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Refinance   | Dealer            |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Purchase    | Manufacture       |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Purchase    | Other Manufacture |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Purchase    | Dealer            |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Refinance   | Manufacture       |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Refinance   | Other Manufacture |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Refinance   | Dealer            |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Purchase    | Manufacture       |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Purchase    | Other Manufacture |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Purchase    | Dealer            |

    #Prerequisite:Application already punch with application type as Multi Asset
# ${ ProductType : ["CEQ","CV"]}
# ${ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
#${ApplicantType:["indiv","nonindiv"]}
#FeatureID-ACAUTOCAS-11906
  Scenario Outline:Delete the added body details for bought from as <BoughtFrom> in collateral details at <ApplicationStage> stage for <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user navigates to asset requested page
    And user select Funding For as "<FundingFor>"
    And user select Finance Mode as "<FinanceMode>"
    And user save the asset requested with asset type as Used Asset
    And user edit the added asset requested details
    And user opens Collateral Details section
    And user edit the collateral details
    And user opens body details section
    And user select bought from as "<BoughtFrom>" in body details
    And user fills the body details
    When user delete the added body details
    Then body details should be deleted successfully

    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | FundingFor | FinanceMode | BoughtFrom        |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Purchase    | Manufacture       |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Purchase    | Other Manufacture |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Purchase    | Dealer            |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Refinance   | Manufacture       |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Refinance   | Other Manufacture |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Refinance   | Dealer            |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Purchase    | Manufacture       |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Purchase    | Other Manufacture |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Purchase    | Dealer            |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Refinance   | Manufacture       |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Refinance   | Other Manufacture |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Refinance   | Dealer            |


#Prerequisite:Application already punch with application type as Multi Asset
# ${ ProductType : ["CEQ","CV"]}
# ${ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
#${ApplicantType:["indiv","nonindiv"]}
#FeatureID-ACAUTOCAS-11906
  Scenario Outline:Edit the added body details for bought from as <BoughtFrom> in collateral details at <ApplicationStage> stage for <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user navigates to asset requested page
    And user select Funding For as "<FundingFor>"
    And user select Finance Mode as "<FinanceMode>"
    And user save the asset requested with asset type as Used Asset
    And user edit the added asset requested details
    And user opens Collateral Details section
    And user edit the collateral details
    And user opens body details section
    And user select bought from as "<BoughtFrom>" in body details
    And user fills the body details
    When user edit the added body details
    Then body details should be edit successfully

    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | FundingFor | FinanceMode | BoughtFrom        |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Purchase    | Manufacture       |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Purchase    | Other Manufacture |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Purchase    | Dealer            |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Refinance   | Manufacture       |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Refinance   | Other Manufacture |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Refinance   | Dealer            |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Purchase    | Manufacture       |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Purchase    | Other Manufacture |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Purchase    | Dealer            |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Refinance   | Manufacture       |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Refinance   | Other Manufacture |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Refinance   | Dealer            |

    #Prerequisite:Application already punch with application type as Multi Asset
# ${ ProductType : ["CEQ","CV"]}
# ${ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
#${ApplicantType:["indiv","nonindiv"]}
#FeatureID-ACAUTOCAS-11906
  Scenario Outline:Verify new accordions should display after selecting Bought From as Other Manufacture in collateral details at <ApplicationStage> stage for <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user navigates to asset requested page
    And user select Funding For as "<FundingFor>"
    And user select Finance Mode as "<FinanceMode>"
    And user save the asset requested with asset type as Used Asset
    And user edit the added asset requested details
    And user opens Collateral Details section
    And user edit the collateral details
    And user opens body details section
    When user select Bought From as Other Manufacture in body details
    Then new accordions tab should be present
      | OtherManufacture Address Details |
      | OtherManufacture Bank Details    |

    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | FundingFor | FinanceMode |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Purchase    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Refinance   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Purchase    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Refinance   |


#    ---------Address details---------------


    #Prerequisite:Application already punch with application type as Multi Asset
# ${ ProductType : ["CEQ","CV"]}
# ${ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
#${ApplicantType:["indiv","nonindiv"]}
#FeatureID-ACAUTOCAS-11906
  Scenario Outline:<Field_Name> field validation with <Validity> <InputType> for bought from as <BoughtFrom> in collateral details at "<ApplicationStage>" in "<ProductType>"
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user navigates to asset requested page
    And user select Funding For as "<FundingFor>"
    And user select Finance Mode as "<FinanceMode>"
    And user save the asset requested with asset type as Used Asset
    And user edit the added asset requested details
    And user opens Collateral Details section
    And user edit the collateral details
    And user opens body details section
    And user select bought from as "<BoughtFrom>" in body details
    When user fills "<Validity>" "<Field_Name>" with "<InputType>" in body details
    Then "<Field_Name>" field "<Throws_notThrows>"
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | FundingFor | FinanceMode | BoughtFrom        | Field_Name         | Validity | InputType                          | Throws_notThrows    |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Purchase    | Manufacture       | Quantity           | valid    | positive digits                    | not throw any error |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Purchase    | Other Manufacture | Quantity           | valid    | positive digits                    | not throw any error |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Purchase    | Dealer            | Quantity           | valid    | positive digits                    | not throw any error |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Refinance   | Manufacture       | Quantity           | valid    | positive digits                    | not throw any error |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Refinance   | Other Manufacture | Quantity           | valid    | positive digits                    | not throw any error |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Refinance   | Dealer            | Quantity           | valid    | positive digits                    | not throw any error |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Purchase    | Manufacture       | Quantity           | valid    | positive digits                    | not throw any error |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Purchase    | Other Manufacture | Quantity           | valid    | positive digits                    | not throw any error |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Purchase    | Dealer            | Quantity           | valid    | positive digits                    | not throw any error |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Refinance   | Manufacture       | Quantity           | valid    | positive digits                    | not throw any error |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Refinance   | Other Manufacture | Quantity           | valid    | positive digits                    | not throw any error |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Refinance   | Dealer            | Quantity           | valid    | positive digits                    | not throw any error |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Purchase    | Manufacture       | Quantity           | invalid  | characters                         | throw an error      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Purchase    | Other Manufacture | Quantity           | invalid  | characters                         | throw an error      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Purchase    | Dealer            | Quantity           | invalid  | characters                         | throw an error      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Refinance   | Manufacture       | Quantity           | invalid  | characters                         | throw an error      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Refinance   | Other Manufacture | Quantity           | invalid  | characters                         | throw an error      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Refinance   | Dealer            | Quantity           | invalid  | characters                         | throw an error      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Purchase    | Manufacture       | Quantity           | invalid  | characters                         | throw an error      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Purchase    | Other Manufacture | Quantity           | invalid  | characters                         | throw an error      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Purchase    | Dealer            | Quantity           | invalid  | characters                         | throw an error      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Refinance   | Manufacture       | Quantity           | invalid  | characters                         | throw an error      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Refinance   | Other Manufacture | Quantity           | invalid  | characters                         | throw an error      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Refinance   | Dealer            | Quantity           | invalid  | characters                         | throw an error      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Purchase    | Manufacture       | Quantity           | invalid  | both digits and characters         | throw an error      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Purchase    | Other Manufacture | Quantity           | invalid  | both digits and characters         | throw an error      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Purchase    | Dealer            | Quantity           | invalid  | both digits and characters         | throw an error      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Refinance   | Manufacture       | Quantity           | invalid  | both digits and characters         | throw an error      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Refinance   | Other Manufacture | Quantity           | invalid  | both digits and characters         | throw an error      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Refinance   | Dealer            | Quantity           | invalid  | both digits and characters         | throw an error      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Purchase    | Manufacture       | Quantity           | invalid  | both digits and characters         | throw an error      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Purchase    | Other Manufacture | Quantity           | invalid  | both digits and characters         | throw an error      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Purchase    | Dealer            | Quantity           | invalid  | both digits and characters         | throw an error      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Refinance   | Manufacture       | Quantity           | invalid  | both digits and characters         | throw an error      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Refinance   | Other Manufacture | Quantity           | invalid  | both digits and characters         | throw an error      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Refinance   | Dealer            | Quantity           | invalid  | both digits and characters         | throw an error      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Purchase    | Manufacture       | Quantity           | invalid  | negative                           | throw an error      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Purchase    | Other Manufacture | Quantity           | invalid  | negative                           | throw an error      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Purchase    | Dealer            | Quantity           | invalid  | negative                           | throw an error      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Refinance   | Manufacture       | Quantity           | invalid  | negative                           | throw an error      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Refinance   | Other Manufacture | Quantity           | invalid  | negative                           | throw an error      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Refinance   | Dealer            | Quantity           | invalid  | negative                           | throw an error      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Purchase    | Manufacture       | Quantity           | invalid  | negative                           | throw an error      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Purchase    | Other Manufacture | Quantity           | invalid  | negative                           | throw an error      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Purchase    | Dealer            | Quantity           | invalid  | negative                           | throw an error      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Refinance   | Manufacture       | Quantity           | invalid  | negative                           | throw an error      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Refinance   | Other Manufacture | Quantity           | invalid  | negative                           | throw an error      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Refinance   | Dealer            | Quantity           | invalid  | negative                           | throw an error      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Purchase    | Manufacture       | Quantity           | invalid  | hyphen                             | throw an error      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Purchase    | Other Manufacture | Quantity           | invalid  | hyphen                             | throw an error      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Purchase    | Dealer            | Quantity           | invalid  | hyphen                             | throw an error      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Refinance   | Manufacture       | Quantity           | invalid  | hyphen                             | throw an error      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Refinance   | Other Manufacture | Quantity           | invalid  | hyphen                             | throw an error      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Refinance   | Dealer            | Quantity           | invalid  | hyphen                             | throw an error      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Purchase    | Manufacture       | Quantity           | invalid  | hyphen                             | throw an error      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Purchase    | Other Manufacture | Quantity           | invalid  | hyphen                             | throw an error      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Purchase    | Dealer            | Quantity           | invalid  | hyphen                             | throw an error      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Refinance   | Manufacture       | Quantity           | invalid  | hyphen                             | throw an error      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Refinance   | Other Manufacture | Quantity           | invalid  | hyphen                             | throw an error      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Refinance   | Dealer            | Quantity           | invalid  | hyphen                             | throw an error      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Purchase    | Manufacture       | Quantity           | invalid  | space                              | throw an error      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Purchase    | Other Manufacture | Quantity           | invalid  | space                              | throw an error      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Purchase    | Dealer            | Quantity           | invalid  | space                              | throw an error      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Refinance   | Manufacture       | Quantity           | invalid  | space                              | throw an error      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Refinance   | Other Manufacture | Quantity           | invalid  | space                              | throw an error      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Refinance   | Dealer            | Quantity           | invalid  | space                              | throw an error      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Purchase    | Manufacture       | Quantity           | invalid  | space                              | throw an error      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Purchase    | Other Manufacture | Quantity           | invalid  | space                              | throw an error      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Purchase    | Dealer            | Quantity           | invalid  | space                              | throw an error      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Refinance   | Manufacture       | Quantity           | invalid  | space                              | throw an error      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Refinance   | Other Manufacture | Quantity           | invalid  | space                              | throw an error      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Refinance   | Dealer            | Quantity           | invalid  | space                              | throw an error      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Purchase    | Manufacture       | Quantity           | invalid  | special characters except hyphen   | throw an error      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Purchase    | Other Manufacture | Quantity           | invalid  | special characters except hyphen   | throw an error      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Purchase    | Dealer            | Quantity           | invalid  | special characters except hyphen   | throw an error      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Refinance   | Manufacture       | Quantity           | invalid  | special characters except hyphen   | throw an error      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Refinance   | Other Manufacture | Quantity           | invalid  | special characters except hyphen   | throw an error      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Refinance   | Dealer            | Quantity           | invalid  | special characters except hyphen   | throw an error      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Purchase    | Manufacture       | Quantity           | invalid  | special characters except hyphen   | throw an error      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Purchase    | Other Manufacture | Quantity           | invalid  | special characters except hyphen   | throw an error      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Purchase    | Dealer            | Quantity           | invalid  | special characters except hyphen   | throw an error      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Refinance   | Manufacture       | Quantity           | invalid  | special characters except hyphen   | throw an error      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Refinance   | Other Manufacture | Quantity           | invalid  | special characters except hyphen   | throw an error      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Refinance   | Dealer            | Quantity           | invalid  | special characters except hyphen   | throw an error      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Purchase    | Manufacture       | Quantity           | invalid  | more than 2 decimal places         | throw an error      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Purchase    | Other Manufacture | Quantity           | invalid  | more than 2 decimal places         | throw an error      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Purchase    | Dealer            | Quantity           | invalid  | more than 2 decimal places         | throw an error      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Refinance   | Manufacture       | Quantity           | invalid  | more than 2 decimal places         | throw an error      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Refinance   | Other Manufacture | Quantity           | invalid  | more than 2 decimal places         | throw an error      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Refinance   | Dealer            | Quantity           | invalid  | more than 2 decimal places         | throw an error      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Purchase    | Manufacture       | Quantity           | invalid  | more than 2 decimal places         | throw an error      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Purchase    | Other Manufacture | Quantity           | invalid  | more than 2 decimal places         | throw an error      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Purchase    | Dealer            | Quantity           | invalid  | more than 2 decimal places         | throw an error      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Refinance   | Manufacture       | Quantity           | invalid  | more than 2 decimal places         | throw an error      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Refinance   | Other Manufacture | Quantity           | invalid  | more than 2 decimal places         | throw an error      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Refinance   | Dealer            | Quantity           | invalid  | more than 2 decimal places         | throw an error      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Purchase    | Manufacture       | Quantity           | invalid  | zero                               | throw an error      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Purchase    | Other Manufacture | Quantity           | invalid  | zero                               | throw an error      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Purchase    | Dealer            | Quantity           | invalid  | zero                               | throw an error      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Refinance   | Manufacture       | Quantity           | invalid  | zero                               | throw an error      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Refinance   | Other Manufacture | Quantity           | invalid  | zero                               | throw an error      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Refinance   | Dealer            | Quantity           | invalid  | zero                               | throw an error      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Purchase    | Manufacture       | Quantity           | invalid  | zero                               | throw an error      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Purchase    | Other Manufacture | Quantity           | invalid  | zero                               | throw an error      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Purchase    | Dealer            | Quantity           | invalid  | zero                               | throw an error      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Refinance   | Manufacture       | Quantity           | invalid  | zero                               | throw an error      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Refinance   | Other Manufacture | Quantity           | invalid  | zero                               | throw an error      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Refinance   | Dealer            | Quantity           | invalid  | zero                               | throw an error      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Purchase    | Manufacture       | Body Cost          | invalid  | more than 18 digits                | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Purchase    | Other Manufacture | Body Cost          | invalid  | more than 18 digits                | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Purchase    | Dealer            | Body Cost          | invalid  | more than 18 digits                | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Refinance   | Manufacture       | Body Cost          | invalid  | more than 18 digits                | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Refinance   | Other Manufacture | Body Cost          | invalid  | more than 18 digits                | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Refinance   | Dealer            | Body Cost          | invalid  | more than 18 digits                | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Purchase    | Manufacture       | Body Cost          | invalid  | more than 18 digits                | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Purchase    | Other Manufacture | Body Cost          | invalid  | more than 18 digits                | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Purchase    | Dealer            | Body Cost          | invalid  | more than 18 digits                | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Refinance   | Manufacture       | Body Cost          | invalid  | more than 18 digits                | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Refinance   | Other Manufacture | Body Cost          | invalid  | more than 18 digits                | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Refinance   | Dealer            | Body Cost          | invalid  | more than 18 digits                | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Purchase    | Manufacture       | Body Cost          | valid    | less than 18 digits                | not throw any       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Purchase    | Other Manufacture | Body Cost          | valid    | less than 18 digits                | not throw any       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Purchase    | Dealer            | Body Cost          | valid    | less than 18 digits                | not throw any       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Refinance   | Manufacture       | Body Cost          | valid    | less than 18 digits                | not throw any       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Refinance   | Other Manufacture | Body Cost          | valid    | less than 18 digits                | not throw any       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Refinance   | Dealer            | Body Cost          | valid    | less than 18 digits                | not throw any       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Purchase    | Manufacture       | Body Cost          | valid    | less than 18 digits                | not throw any       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Purchase    | Other Manufacture | Body Cost          | valid    | less than 18 digits                | not throw any       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Purchase    | Dealer            | Body Cost          | valid    | less than 18 digits                | not throw any       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Refinance   | Manufacture       | Body Cost          | valid    | less than 18 digits                | not throw any       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Refinance   | Other Manufacture | Body Cost          | valid    | less than 18 digits                | not throw any       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Refinance   | Dealer            | Body Cost          | valid    | less than 18 digits                | not throw any       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Purchase    | Manufacture       | Body Cost          | invalid  | character                          | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Purchase    | Other Manufacture | Body Cost          | invalid  | character                          | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Purchase    | Dealer            | Body Cost          | invalid  | character                          | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Refinance   | Manufacture       | Body Cost          | invalid  | character                          | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Refinance   | Other Manufacture | Body Cost          | invalid  | character                          | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Refinance   | Dealer            | Body Cost          | invalid  | character                          | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Purchase    | Manufacture       | Body Cost          | invalid  | character                          | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Purchase    | Other Manufacture | Body Cost          | invalid  | character                          | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Purchase    | Dealer            | Body Cost          | invalid  | character                          | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Refinance   | Manufacture       | Body Cost          | invalid  | character                          | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Refinance   | Other Manufacture | Body Cost          | invalid  | character                          | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Refinance   | Dealer            | Body Cost          | invalid  | character                          | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Purchase    | Manufacture       | Body Cost          | invalid  | special character                  | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Purchase    | Other Manufacture | Body Cost          | invalid  | special character                  | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Purchase    | Dealer            | Body Cost          | invalid  | special character                  | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Refinance   | Manufacture       | Body Cost          | invalid  | special character                  | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Refinance   | Other Manufacture | Body Cost          | invalid  | special character                  | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Refinance   | Dealer            | Body Cost          | invalid  | special character                  | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Purchase    | Manufacture       | Body Cost          | invalid  | special character                  | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Purchase    | Other Manufacture | Body Cost          | invalid  | special character                  | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Purchase    | Dealer            | Body Cost          | invalid  | special character                  | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Refinance   | Manufacture       | Body Cost          | invalid  | special character                  | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Refinance   | Other Manufacture | Body Cost          | invalid  | special character                  | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Refinance   | Dealer            | Body Cost          | invalid  | special character                  | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Purchase    | Manufacture       | Body Cost          | invalid  | negative values                    | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Purchase    | Other Manufacture | Body Cost          | invalid  | negative values                    | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Purchase    | Dealer            | Body Cost          | invalid  | negative values                    | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Refinance   | Manufacture       | Body Cost          | invalid  | negative values                    | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Refinance   | Other Manufacture | Body Cost          | invalid  | negative values                    | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Refinance   | Dealer            | Body Cost          | invalid  | negative values                    | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Purchase    | Manufacture       | Body Cost          | invalid  | negative values                    | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Purchase    | Other Manufacture | Body Cost          | invalid  | negative values                    | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Purchase    | Dealer            | Body Cost          | invalid  | negative values                    | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Refinance   | Manufacture       | Body Cost          | invalid  | negative values                    | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Refinance   | Other Manufacture | Body Cost          | invalid  | negative values                    | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Refinance   | Dealer            | Body Cost          | invalid  | negative values                    | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Purchase    | Manufacture       | Body Cost          | invalid  | character with space               | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Purchase    | Other Manufacture | Body Cost          | invalid  | character with space               | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Purchase    | Dealer            | Body Cost          | invalid  | character with space               | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Refinance   | Manufacture       | Body Cost          | invalid  | character with space               | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Refinance   | Other Manufacture | Body Cost          | invalid  | character with space               | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Refinance   | Dealer            | Body Cost          | invalid  | character with space               | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Purchase    | Manufacture       | Body Cost          | invalid  | character with space               | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Purchase    | Other Manufacture | Body Cost          | invalid  | character with space               | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Purchase    | Dealer            | Body Cost          | invalid  | character with space               | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Refinance   | Manufacture       | Body Cost          | invalid  | character with space               | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Refinance   | Other Manufacture | Body Cost          | invalid  | character with space               | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Refinance   | Dealer            | Body Cost          | invalid  | character with space               | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Purchase    | Manufacture       | Body Cost          | invalid  | digits with space                  | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Purchase    | Other Manufacture | Body Cost          | invalid  | digits with space                  | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Purchase    | Dealer            | Body Cost          | invalid  | digits with space                  | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Refinance   | Manufacture       | Body Cost          | invalid  | digits with space                  | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Refinance   | Other Manufacture | Body Cost          | invalid  | digits with space                  | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Refinance   | Dealer            | Body Cost          | invalid  | digits with space                  | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Purchase    | Manufacture       | Body Cost          | invalid  | digits with space                  | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Purchase    | Other Manufacture | Body Cost          | invalid  | digits with space                  | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Purchase    | Dealer            | Body Cost          | invalid  | digits with space                  | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Refinance   | Manufacture       | Body Cost          | invalid  | digits with space                  | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Refinance   | Other Manufacture | Body Cost          | invalid  | digits with space                  | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Refinance   | Dealer            | Body Cost          | invalid  | digits with space                  | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Purchase    | Manufacture       | Body Cost          | valid    | positive values and Upto 18 digits | not throw any       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Purchase    | Other Manufacture | Body Cost          | valid    | positive values and Upto 18 digits | not throw any       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Purchase    | Dealer            | Body Cost          | valid    | positive values and Upto 18 digits | not throw any       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Refinance   | Manufacture       | Body Cost          | valid    | positive values and Upto 18 digits | not throw any       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Refinance   | Other Manufacture | Body Cost          | valid    | positive values and Upto 18 digits | not throw any       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Refinance   | Dealer            | Body Cost          | valid    | positive values and Upto 18 digits | not throw any       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Purchase    | Manufacture       | Body Cost          | valid    | positive values and Upto 18 digits | not throw any       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Purchase    | Other Manufacture | Body Cost          | valid    | positive values and Upto 18 digits | not throw any       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Purchase    | Dealer            | Body Cost          | valid    | positive values and Upto 18 digits | not throw any       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Refinance   | Manufacture       | Body Cost          | valid    | positive values and Upto 18 digits | not throw any       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Refinance   | Other Manufacture | Body Cost          | valid    | positive values and Upto 18 digits | not throw any       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Refinance   | Dealer            | Body Cost          | valid    | positive values and Upto 18 digits | not throw any       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Purchase    | Manufacture       | Body Downpayment   | invalid  | more than 18 digits                | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Purchase    | Other Manufacture | Body Downpayment   | invalid  | more than 18 digits                | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Purchase    | Dealer            | Body Downpayment   | invalid  | more than 18 digits                | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Refinance   | Manufacture       | Body Downpayment   | invalid  | more than 18 digits                | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Refinance   | Other Manufacture | Body Downpayment   | invalid  | more than 18 digits                | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Refinance   | Dealer            | Body Downpayment   | invalid  | more than 18 digits                | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Purchase    | Manufacture       | Body Downpayment   | invalid  | more than 18 digits                | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Purchase    | Other Manufacture | Body Downpayment   | invalid  | more than 18 digits                | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Purchase    | Dealer            | Body Downpayment   | invalid  | more than 18 digits                | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Refinance   | Manufacture       | Body Downpayment   | invalid  | more than 18 digits                | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Refinance   | Other Manufacture | Body Downpayment   | invalid  | more than 18 digits                | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Refinance   | Dealer            | Body Downpayment   | invalid  | more than 18 digits                | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Purchase    | Manufacture       | Body Downpayment   | valid    | less than 18 digits                | not throw any       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Purchase    | Other Manufacture | Body Downpayment   | valid    | less than 18 digits                | not throw any       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Purchase    | Dealer            | Body Downpayment   | valid    | less than 18 digits                | not throw any       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Refinance   | Manufacture       | Body Downpayment   | valid    | less than 18 digits                | not throw any       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Refinance   | Other Manufacture | Body Downpayment   | valid    | less than 18 digits                | not throw any       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Refinance   | Dealer            | Body Downpayment   | valid    | less than 18 digits                | not throw any       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Purchase    | Manufacture       | Body Downpayment   | valid    | less than 18 digits                | not throw any       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Purchase    | Other Manufacture | Body Downpayment   | valid    | less than 18 digits                | not throw any       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Purchase    | Dealer            | Body Downpayment   | valid    | less than 18 digits                | not throw any       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Refinance   | Manufacture       | Body Downpayment   | valid    | less than 18 digits                | not throw any       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Refinance   | Other Manufacture | Body Downpayment   | valid    | less than 18 digits                | not throw any       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Refinance   | Dealer            | Body Downpayment   | valid    | less than 18 digits                | not throw any       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Purchase    | Manufacture       | Body Downpayment   | invalid  | character                          | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Purchase    | Other Manufacture | Body Downpayment   | invalid  | character                          | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Purchase    | Dealer            | Body Downpayment   | invalid  | character                          | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Refinance   | Manufacture       | Body Downpayment   | invalid  | character                          | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Refinance   | Other Manufacture | Body Downpayment   | invalid  | character                          | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Refinance   | Dealer            | Body Downpayment   | invalid  | character                          | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Purchase    | Manufacture       | Body Downpayment   | invalid  | character                          | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Purchase    | Other Manufacture | Body Downpayment   | invalid  | character                          | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Purchase    | Dealer            | Body Downpayment   | invalid  | character                          | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Refinance   | Manufacture       | Body Downpayment   | invalid  | character                          | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Refinance   | Other Manufacture | Body Downpayment   | invalid  | character                          | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Refinance   | Dealer            | Body Downpayment   | invalid  | character                          | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Purchase    | Manufacture       | Body Downpayment   | invalid  | special character                  | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Purchase    | Other Manufacture | Body Downpayment   | invalid  | special character                  | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Purchase    | Dealer            | Body Downpayment   | invalid  | special character                  | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Refinance   | Manufacture       | Body Downpayment   | invalid  | special character                  | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Refinance   | Other Manufacture | Body Downpayment   | invalid  | special character                  | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Refinance   | Dealer            | Body Downpayment   | invalid  | special character                  | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Purchase    | Manufacture       | Body Downpayment   | invalid  | special character                  | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Purchase    | Other Manufacture | Body Downpayment   | invalid  | special character                  | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Purchase    | Dealer            | Body Downpayment   | invalid  | special character                  | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Refinance   | Manufacture       | Body Downpayment   | invalid  | special character                  | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Refinance   | Other Manufacture | Body Downpayment   | invalid  | special character                  | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Refinance   | Dealer            | Body Downpayment   | invalid  | special character                  | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Purchase    | Manufacture       | Body Downpayment   | invalid  | negative values                    | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Purchase    | Other Manufacture | Body Downpayment   | invalid  | negative values                    | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Purchase    | Dealer            | Body Downpayment   | invalid  | negative values                    | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Refinance   | Manufacture       | Body Downpayment   | invalid  | negative values                    | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Refinance   | Other Manufacture | Body Downpayment   | invalid  | negative values                    | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Refinance   | Dealer            | Body Downpayment   | invalid  | negative values                    | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Purchase    | Manufacture       | Body Downpayment   | invalid  | negative values                    | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Purchase    | Other Manufacture | Body Downpayment   | invalid  | negative values                    | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Purchase    | Dealer            | Body Downpayment   | invalid  | negative values                    | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Refinance   | Manufacture       | Body Downpayment   | invalid  | negative values                    | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Refinance   | Other Manufacture | Body Downpayment   | invalid  | negative values                    | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Refinance   | Dealer            | Body Downpayment   | invalid  | negative values                    | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Purchase    | Manufacture       | Body Downpayment   | invalid  | character with space               | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Purchase    | Other Manufacture | Body Downpayment   | invalid  | character with space               | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Purchase    | Dealer            | Body Downpayment   | invalid  | character with space               | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Refinance   | Manufacture       | Body Downpayment   | invalid  | character with space               | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Refinance   | Other Manufacture | Body Downpayment   | invalid  | character with space               | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Refinance   | Dealer            | Body Downpayment   | invalid  | character with space               | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Purchase    | Manufacture       | Body Downpayment   | invalid  | character with space               | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Purchase    | Other Manufacture | Body Downpayment   | invalid  | character with space               | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Purchase    | Dealer            | Body Downpayment   | invalid  | character with space               | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Refinance   | Manufacture       | Body Downpayment   | invalid  | character with space               | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Refinance   | Other Manufacture | Body Downpayment   | invalid  | character with space               | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Refinance   | Dealer            | Body Downpayment   | invalid  | character with space               | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Purchase    | Manufacture       | Body Downpayment   | invalid  | digits with space                  | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Purchase    | Other Manufacture | Body Downpayment   | invalid  | digits with space                  | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Purchase    | Dealer            | Body Downpayment   | invalid  | digits with space                  | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Refinance   | Manufacture       | Body Downpayment   | invalid  | digits with space                  | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Refinance   | Other Manufacture | Body Downpayment   | invalid  | digits with space                  | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Refinance   | Dealer            | Body Downpayment   | invalid  | digits with space                  | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Purchase    | Manufacture       | Body Downpayment   | invalid  | digits with space                  | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Purchase    | Other Manufacture | Body Downpayment   | invalid  | digits with space                  | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Purchase    | Dealer            | Body Downpayment   | invalid  | digits with space                  | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Refinance   | Manufacture       | Body Downpayment   | invalid  | digits with space                  | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Refinance   | Other Manufacture | Body Downpayment   | invalid  | digits with space                  | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Refinance   | Dealer            | Body Downpayment   | invalid  | digits with space                  | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Purchase    | Manufacture       | Body Downpayment   | valid    | positive values and Upto 18 digits | not throw any       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Purchase    | Other Manufacture | Body Downpayment   | valid    | positive values and Upto 18 digits | not throw any       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Purchase    | Dealer            | Body Downpayment   | valid    | positive values and Upto 18 digits | not throw any       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Refinance   | Manufacture       | Body Downpayment   | valid    | positive values and Upto 18 digits | not throw any       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Refinance   | Other Manufacture | Body Downpayment   | valid    | positive values and Upto 18 digits | not throw any       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Refinance   | Dealer            | Body Downpayment   | valid    | positive values and Upto 18 digits | not throw any       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Purchase    | Manufacture       | Body Downpayment   | valid    | positive values and Upto 18 digits | not throw any       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Purchase    | Other Manufacture | Body Downpayment   | valid    | positive values and Upto 18 digits | not throw any       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Purchase    | Dealer            | Body Downpayment   | valid    | positive values and Upto 18 digits | not throw any       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Refinance   | Manufacture       | Body Downpayment   | valid    | positive values and Upto 18 digits | not throw any       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Refinance   | Other Manufacture | Body Downpayment   | valid    | positive values and Upto 18 digits | not throw any       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Refinance   | Dealer            | Body Downpayment   | valid    | positive values and Upto 18 digits | not throw any       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Purchase    | Manufacture       | Body Cost Proposed | invalid  | more than 18 digits                | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Purchase    | Other Manufacture | Body Cost Proposed | invalid  | more than 18 digits                | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Purchase    | Dealer            | Body Cost Proposed | invalid  | more than 18 digits                | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Refinance   | Manufacture       | Body Cost Proposed | invalid  | more than 18 digits                | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Refinance   | Other Manufacture | Body Cost Proposed | invalid  | more than 18 digits                | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Refinance   | Dealer            | Body Cost Proposed | invalid  | more than 18 digits                | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Purchase    | Manufacture       | Body Cost Proposed | invalid  | more than 18 digits                | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Purchase    | Other Manufacture | Body Cost Proposed | invalid  | more than 18 digits                | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Purchase    | Dealer            | Body Cost Proposed | invalid  | more than 18 digits                | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Refinance   | Manufacture       | Body Cost Proposed | invalid  | more than 18 digits                | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Refinance   | Other Manufacture | Body Cost Proposed | invalid  | more than 18 digits                | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Refinance   | Dealer            | Body Cost Proposed | invalid  | more than 18 digits                | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Purchase    | Manufacture       | Body Cost Proposed | valid    | less than 18 digits                | not throw any       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Purchase    | Other Manufacture | Body Cost Proposed | valid    | less than 18 digits                | not throw any       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Purchase    | Dealer            | Body Cost Proposed | valid    | less than 18 digits                | not throw any       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Refinance   | Manufacture       | Body Cost Proposed | valid    | less than 18 digits                | not throw any       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Refinance   | Other Manufacture | Body Cost Proposed | valid    | less than 18 digits                | not throw any       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Refinance   | Dealer            | Body Cost Proposed | valid    | less than 18 digits                | not throw any       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Purchase    | Manufacture       | Body Cost Proposed | valid    | less than 18 digits                | not throw any       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Purchase    | Other Manufacture | Body Cost Proposed | valid    | less than 18 digits                | not throw any       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Purchase    | Dealer            | Body Cost Proposed | valid    | less than 18 digits                | not throw any       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Refinance   | Manufacture       | Body Cost Proposed | valid    | less than 18 digits                | not throw any       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Refinance   | Other Manufacture | Body Cost Proposed | valid    | less than 18 digits                | not throw any       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Refinance   | Dealer            | Body Cost Proposed | valid    | less than 18 digits                | not throw any       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Purchase    | Manufacture       | Body Cost Proposed | invalid  | character                          | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Purchase    | Other Manufacture | Body Cost Proposed | invalid  | character                          | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Purchase    | Dealer            | Body Cost Proposed | invalid  | character                          | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Refinance   | Manufacture       | Body Cost Proposed | invalid  | character                          | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Refinance   | Other Manufacture | Body Cost Proposed | invalid  | character                          | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Refinance   | Dealer            | Body Cost Proposed | invalid  | character                          | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Purchase    | Manufacture       | Body Cost Proposed | invalid  | character                          | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Purchase    | Other Manufacture | Body Cost Proposed | invalid  | character                          | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Purchase    | Dealer            | Body Cost Proposed | invalid  | character                          | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Refinance   | Manufacture       | Body Cost Proposed | invalid  | character                          | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Refinance   | Other Manufacture | Body Cost Proposed | invalid  | character                          | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Refinance   | Dealer            | Body Cost Proposed | invalid  | character                          | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Purchase    | Manufacture       | Body Cost Proposed | invalid  | special character                  | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Purchase    | Other Manufacture | Body Cost Proposed | invalid  | special character                  | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Purchase    | Dealer            | Body Cost Proposed | invalid  | special character                  | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Refinance   | Manufacture       | Body Cost Proposed | invalid  | special character                  | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Refinance   | Other Manufacture | Body Cost Proposed | invalid  | special character                  | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Refinance   | Dealer            | Body Cost Proposed | invalid  | special character                  | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Purchase    | Manufacture       | Body Cost Proposed | invalid  | special character                  | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Purchase    | Other Manufacture | Body Cost Proposed | invalid  | special character                  | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Purchase    | Dealer            | Body Cost Proposed | invalid  | special character                  | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Refinance   | Manufacture       | Body Cost Proposed | invalid  | special character                  | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Refinance   | Other Manufacture | Body Cost Proposed | invalid  | special character                  | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Refinance   | Dealer            | Body Cost Proposed | invalid  | special character                  | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Purchase    | Manufacture       | Body Cost Proposed | invalid  | negative values                    | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Purchase    | Other Manufacture | Body Cost Proposed | invalid  | negative values                    | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Purchase    | Dealer            | Body Cost Proposed | invalid  | negative values                    | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Refinance   | Manufacture       | Body Cost Proposed | invalid  | negative values                    | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Refinance   | Other Manufacture | Body Cost Proposed | invalid  | negative values                    | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Refinance   | Dealer            | Body Cost Proposed | invalid  | negative values                    | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Purchase    | Manufacture       | Body Cost Proposed | invalid  | negative values                    | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Purchase    | Other Manufacture | Body Cost Proposed | invalid  | negative values                    | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Purchase    | Dealer            | Body Cost Proposed | invalid  | negative values                    | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Refinance   | Manufacture       | Body Cost Proposed | invalid  | negative values                    | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Refinance   | Other Manufacture | Body Cost Proposed | invalid  | negative values                    | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Refinance   | Dealer            | Body Cost Proposed | invalid  | negative values                    | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Purchase    | Manufacture       | Body Cost Proposed | invalid  | character with space               | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Purchase    | Other Manufacture | Body Cost Proposed | invalid  | character with space               | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Purchase    | Dealer            | Body Cost Proposed | invalid  | character with space               | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Refinance   | Manufacture       | Body Cost Proposed | invalid  | character with space               | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Refinance   | Other Manufacture | Body Cost Proposed | invalid  | character with space               | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Refinance   | Dealer            | Body Cost Proposed | invalid  | character with space               | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Purchase    | Manufacture       | Body Cost Proposed | invalid  | character with space               | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Purchase    | Other Manufacture | Body Cost Proposed | invalid  | character with space               | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Purchase    | Dealer            | Body Cost Proposed | invalid  | character with space               | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Refinance   | Manufacture       | Body Cost Proposed | invalid  | character with space               | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Refinance   | Other Manufacture | Body Cost Proposed | invalid  | character with space               | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Refinance   | Dealer            | Body Cost Proposed | invalid  | character with space               | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Purchase    | Manufacture       | Body Cost Proposed | invalid  | digits with space                  | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Purchase    | Other Manufacture | Body Cost Proposed | invalid  | digits with space                  | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Purchase    | Dealer            | Body Cost Proposed | invalid  | digits with space                  | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Refinance   | Manufacture       | Body Cost Proposed | invalid  | digits with space                  | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Refinance   | Other Manufacture | Body Cost Proposed | invalid  | digits with space                  | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Refinance   | Dealer            | Body Cost Proposed | invalid  | digits with space                  | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Purchase    | Manufacture       | Body Cost Proposed | invalid  | digits with space                  | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Purchase    | Other Manufacture | Body Cost Proposed | invalid  | digits with space                  | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Purchase    | Dealer            | Body Cost Proposed | invalid  | digits with space                  | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Refinance   | Manufacture       | Body Cost Proposed | invalid  | digits with space                  | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Refinance   | Other Manufacture | Body Cost Proposed | invalid  | digits with space                  | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Refinance   | Dealer            | Body Cost Proposed | invalid  | digits with space                  | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Purchase    | Manufacture       | Body Cost Proposed | valid    | positive values and Upto 18 digits | not throw any       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Purchase    | Other Manufacture | Body Cost Proposed | valid    | positive values and Upto 18 digits | not throw any       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Purchase    | Dealer            | Body Cost Proposed | valid    | positive values and Upto 18 digits | not throw any       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Refinance   | Manufacture       | Body Cost Proposed | valid    | positive values and Upto 18 digits | not throw any       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Refinance   | Other Manufacture | Body Cost Proposed | valid    | positive values and Upto 18 digits | not throw any       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Refinance   | Dealer            | Body Cost Proposed | valid    | positive values and Upto 18 digits | not throw any       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Purchase    | Manufacture       | Body Cost Proposed | valid    | positive values and Upto 18 digits | not throw any       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Purchase    | Other Manufacture | Body Cost Proposed | valid    | positive values and Upto 18 digits | not throw any       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Purchase    | Dealer            | Body Cost Proposed | valid    | positive values and Upto 18 digits | not throw any       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Refinance   | Manufacture       | Body Cost Proposed | valid    | positive values and Upto 18 digits | not throw any       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Refinance   | Other Manufacture | Body Cost Proposed | valid    | positive values and Upto 18 digits | not throw any       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Refinance   | Dealer            | Body Cost Proposed | valid    | positive values and Upto 18 digits | not throw any       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Purchase    | Manufacture       | Body Cost Per Grid | invalid  | more than 18 digits                | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Purchase    | Other Manufacture | Body Cost Per Grid | invalid  | more than 18 digits                | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Purchase    | Dealer            | Body Cost Per Grid | invalid  | more than 18 digits                | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Refinance   | Manufacture       | Body Cost Per Grid | invalid  | more than 18 digits                | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Refinance   | Other Manufacture | Body Cost Per Grid | invalid  | more than 18 digits                | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Refinance   | Dealer            | Body Cost Per Grid | invalid  | more than 18 digits                | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Purchase    | Manufacture       | Body Cost Per Grid | invalid  | more than 18 digits                | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Purchase    | Other Manufacture | Body Cost Per Grid | invalid  | more than 18 digits                | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Purchase    | Dealer            | Body Cost Per Grid | invalid  | more than 18 digits                | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Refinance   | Manufacture       | Body Cost Per Grid | invalid  | more than 18 digits                | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Refinance   | Other Manufacture | Body Cost Per Grid | invalid  | more than 18 digits                | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Refinance   | Dealer            | Body Cost Per Grid | invalid  | more than 18 digits                | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Purchase    | Manufacture       | Body Cost Per Grid | valid    | less than 18 digits                | not throw any       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Purchase    | Other Manufacture | Body Cost Per Grid | valid    | less than 18 digits                | not throw any       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Purchase    | Dealer            | Body Cost Per Grid | valid    | less than 18 digits                | not throw any       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Refinance   | Manufacture       | Body Cost Per Grid | valid    | less than 18 digits                | not throw any       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Refinance   | Other Manufacture | Body Cost Per Grid | valid    | less than 18 digits                | not throw any       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Refinance   | Dealer            | Body Cost Per Grid | valid    | less than 18 digits                | not throw any       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Purchase    | Manufacture       | Body Cost Per Grid | valid    | less than 18 digits                | not throw any       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Purchase    | Other Manufacture | Body Cost Per Grid | valid    | less than 18 digits                | not throw any       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Purchase    | Dealer            | Body Cost Per Grid | valid    | less than 18 digits                | not throw any       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Refinance   | Manufacture       | Body Cost Per Grid | valid    | less than 18 digits                | not throw any       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Refinance   | Other Manufacture | Body Cost Per Grid | valid    | less than 18 digits                | not throw any       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Refinance   | Dealer            | Body Cost Per Grid | valid    | less than 18 digits                | not throw any       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Purchase    | Manufacture       | Body Cost Per Grid | invalid  | character                          | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Purchase    | Other Manufacture | Body Cost Per Grid | invalid  | character                          | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Purchase    | Dealer            | Body Cost Per Grid | invalid  | character                          | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Refinance   | Manufacture       | Body Cost Per Grid | invalid  | character                          | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Refinance   | Other Manufacture | Body Cost Per Grid | invalid  | character                          | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Refinance   | Dealer            | Body Cost Per Grid | invalid  | character                          | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Purchase    | Manufacture       | Body Cost Per Grid | invalid  | character                          | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Purchase    | Other Manufacture | Body Cost Per Grid | invalid  | character                          | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Purchase    | Dealer            | Body Cost Per Grid | invalid  | character                          | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Refinance   | Manufacture       | Body Cost Per Grid | invalid  | character                          | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Refinance   | Other Manufacture | Body Cost Per Grid | invalid  | character                          | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Refinance   | Dealer            | Body Cost Per Grid | invalid  | character                          | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Purchase    | Manufacture       | Body Cost Per Grid | invalid  | special character                  | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Purchase    | Other Manufacture | Body Cost Per Grid | invalid  | special character                  | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Purchase    | Dealer            | Body Cost Per Grid | invalid  | special character                  | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Refinance   | Manufacture       | Body Cost Per Grid | invalid  | special character                  | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Refinance   | Other Manufacture | Body Cost Per Grid | invalid  | special character                  | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Refinance   | Dealer            | Body Cost Per Grid | invalid  | special character                  | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Purchase    | Manufacture       | Body Cost Per Grid | invalid  | special character                  | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Purchase    | Other Manufacture | Body Cost Per Grid | invalid  | special character                  | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Purchase    | Dealer            | Body Cost Per Grid | invalid  | special character                  | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Refinance   | Manufacture       | Body Cost Per Grid | invalid  | special character                  | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Refinance   | Other Manufacture | Body Cost Per Grid | invalid  | special character                  | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Refinance   | Dealer            | Body Cost Per Grid | invalid  | special character                  | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Purchase    | Manufacture       | Body Cost Per Grid | invalid  | negative values                    | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Purchase    | Other Manufacture | Body Cost Per Grid | invalid  | negative values                    | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Purchase    | Dealer            | Body Cost Per Grid | invalid  | negative values                    | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Refinance   | Manufacture       | Body Cost Per Grid | invalid  | negative values                    | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Refinance   | Other Manufacture | Body Cost Per Grid | invalid  | negative values                    | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Refinance   | Dealer            | Body Cost Per Grid | invalid  | negative values                    | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Purchase    | Manufacture       | Body Cost Per Grid | invalid  | negative values                    | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Purchase    | Other Manufacture | Body Cost Per Grid | invalid  | negative values                    | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Purchase    | Dealer            | Body Cost Per Grid | invalid  | negative values                    | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Refinance   | Manufacture       | Body Cost Per Grid | invalid  | negative values                    | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Refinance   | Other Manufacture | Body Cost Per Grid | invalid  | negative values                    | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Refinance   | Dealer            | Body Cost Per Grid | invalid  | negative values                    | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Purchase    | Manufacture       | Body Cost Per Grid | invalid  | character with space               | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Purchase    | Other Manufacture | Body Cost Per Grid | invalid  | character with space               | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Purchase    | Dealer            | Body Cost Per Grid | invalid  | character with space               | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Refinance   | Manufacture       | Body Cost Per Grid | invalid  | character with space               | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Refinance   | Other Manufacture | Body Cost Per Grid | invalid  | character with space               | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Refinance   | Dealer            | Body Cost Per Grid | invalid  | character with space               | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Purchase    | Manufacture       | Body Cost Per Grid | invalid  | character with space               | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Purchase    | Other Manufacture | Body Cost Per Grid | invalid  | character with space               | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Purchase    | Dealer            | Body Cost Per Grid | invalid  | character with space               | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Refinance   | Manufacture       | Body Cost Per Grid | invalid  | character with space               | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Refinance   | Other Manufacture | Body Cost Per Grid | invalid  | character with space               | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Refinance   | Dealer            | Body Cost Per Grid | invalid  | character with space               | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Purchase    | Manufacture       | Body Cost Per Grid | invalid  | digits with space                  | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Purchase    | Other Manufacture | Body Cost Per Grid | invalid  | digits with space                  | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Purchase    | Dealer            | Body Cost Per Grid | invalid  | digits with space                  | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Refinance   | Manufacture       | Body Cost Per Grid | invalid  | digits with space                  | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Refinance   | Other Manufacture | Body Cost Per Grid | invalid  | digits with space                  | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Refinance   | Dealer            | Body Cost Per Grid | invalid  | digits with space                  | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Purchase    | Manufacture       | Body Cost Per Grid | invalid  | digits with space                  | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Purchase    | Other Manufacture | Body Cost Per Grid | invalid  | digits with space                  | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Purchase    | Dealer            | Body Cost Per Grid | invalid  | digits with space                  | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Refinance   | Manufacture       | Body Cost Per Grid | invalid  | digits with space                  | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Refinance   | Other Manufacture | Body Cost Per Grid | invalid  | digits with space                  | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Refinance   | Dealer            | Body Cost Per Grid | invalid  | digits with space                  | throw an            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Purchase    | Manufacture       | Body Cost Per Grid | valid    | positive values and Upto 18 digits | not throw any       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Purchase    | Other Manufacture | Body Cost Per Grid | valid    | positive values and Upto 18 digits | not throw any       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Purchase    | Dealer            | Body Cost Per Grid | valid    | positive values and Upto 18 digits | not throw any       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Refinance   | Manufacture       | Body Cost Per Grid | valid    | positive values and Upto 18 digits | not throw any       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Refinance   | Other Manufacture | Body Cost Per Grid | valid    | positive values and Upto 18 digits | not throw any       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Refinance   | Dealer            | Body Cost Per Grid | valid    | positive values and Upto 18 digits | not throw any       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Purchase    | Manufacture       | Body Cost Per Grid | valid    | positive values and Upto 18 digits | not throw any       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Purchase    | Other Manufacture | Body Cost Per Grid | valid    | positive values and Upto 18 digits | not throw any       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Purchase    | Dealer            | Body Cost Per Grid | valid    | positive values and Upto 18 digits | not throw any       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Refinance   | Manufacture       | Body Cost Per Grid | valid    | positive values and Upto 18 digits | not throw any       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Refinance   | Other Manufacture | Body Cost Per Grid | valid    | positive values and Upto 18 digits | not throw any       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Refinance   | Dealer            | Body Cost Per Grid | valid    | positive values and Upto 18 digits | not throw any       |


  #Prerequisite:Application already punch with application type as Multi Asset
# ${ ProductType : ["CEQ","CV"]}
# ${ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
#${ApplicantType:["indiv","nonindiv"]}
#FeatureID-ACAUTOCAS-11906
  Scenario Outline:Validating list of field with different field type for other Manufacture Address in Body Details under collateral details at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user navigates to asset requested page
    And user select Funding For as "<FundingFor>"
    And user select Finance Mode as "<FinanceMode>"
    And user save the asset requested with asset type as Used Asset
    And user edit the added asset requested details
    And user opens Collateral Details section
    And user edit the collateral details
    And user opens body details section
    And user select bought from as Other Manufacture
    And user navigates to OtherManufacture Address Details
    When user click on plus icon in OtherManufacture Address Details
    Then list of field should present with different field type in body details
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
  Scenario Outline:<Field> field validation for <Address_City> should be display as Calendar field of other Manufacture Address in Body Details under collateral details at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user navigates to asset requested page
    And user select Funding For as "<FundingFor>"
    And user select Finance Mode as "<FinanceMode>"
    And user save the asset requested with asset type as Used Asset
    And user edit the added asset requested details
    And user opens Collateral Details section
    And user edit the collateral details
    And user opens body details section
    And user select bought from as Other Manufacture
    And user navigates to OtherManufacture Address Details
    When user click on plus icon in OtherManufacture Address Details
    And user reads data from the excel file "asset_details.xlsx" under sheet "seller_details" and row <AssetDetails_sellerDetails_rowNum>
    Then "<Field>" field for "<Address_City>" should be display as Calendar field in body details
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | FundingFor | FinanceMode | Field     | Address_City             | AssetDetails_sellerDetails_rowNum |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Purchase    | From Date | Duration at this Address | 0                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Refinance   | From Date | Duration at this Address | 0                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Purchase    | From Date | Duration at this Address | 0                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Refinance   | From Date | Duration at this Address | 0                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Purchase    | To Date   | Duration at this Address | 0                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Refinance   | To Date   | Duration at this Address | 0                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Purchase    | To Date   | Duration at this Address | 0                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Refinance   | To Date   | Duration at this Address | 0                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Purchase    | From Date | Duration at this City    | 0                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Refinance   | From Date | Duration at this City    | 0                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Purchase    | From Date | Duration at this City    | 0                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Refinance   | From Date | Duration at this City    | 0                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Purchase    | To Date   | Duration at this City    | 0                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Refinance   | To Date   | Duration at this City    | 0                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Purchase    | To Date   | Duration at this City    | 0                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Refinance   | To Date   | Duration at this City    | 0                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Purchase    | From Date | Duration at this Address | 1                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Refinance   | From Date | Duration at this Address | 1                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Purchase    | From Date | Duration at this Address | 1                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Refinance   | From Date | Duration at this Address | 1                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Purchase    | To Date   | Duration at this Address | 1                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Refinance   | To Date   | Duration at this Address | 1                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Purchase    | To Date   | Duration at this Address | 1                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Refinance   | To Date   | Duration at this Address | 1                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Purchase    | From Date | Duration at this City    | 1                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Refinance   | From Date | Duration at this City    | 1                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Purchase    | From Date | Duration at this City    | 1                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Refinance   | From Date | Duration at this City    | 1                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Purchase    | To Date   | Duration at this City    | 1                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Refinance   | To Date   | Duration at this City    | 1                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Purchase    | To Date   | Duration at this City    | 1                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Refinance   | To Date   | Duration at this City    | 1                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Purchase    | From Date | Duration at this Address | 2                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Refinance   | From Date | Duration at this Address | 2                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Purchase    | From Date | Duration at this Address | 2                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Refinance   | From Date | Duration at this Address | 2                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Purchase    | To Date   | Duration at this Address | 2                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Refinance   | To Date   | Duration at this Address | 2                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Purchase    | To Date   | Duration at this Address | 2                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Refinance   | To Date   | Duration at this Address | 2                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Purchase    | From Date | Duration at this City    | 2                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Refinance   | From Date | Duration at this City    | 2                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Purchase    | From Date | Duration at this City    | 2                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Refinance   | From Date | Duration at this City    | 2                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Purchase    | To Date   | Duration at this City    | 2                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Refinance   | To Date   | Duration at this City    | 2                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Purchase    | To Date   | Duration at this City    | 2                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Refinance   | To Date   | Duration at this City    | 2                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Purchase    | From Date | Duration at this Address | 3                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Refinance   | From Date | Duration at this Address | 3                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Purchase    | From Date | Duration at this Address | 3                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Refinance   | From Date | Duration at this Address | 3                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Purchase    | To Date   | Duration at this Address | 3                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Refinance   | To Date   | Duration at this Address | 3                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Purchase    | To Date   | Duration at this Address | 3                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Refinance   | To Date   | Duration at this Address | 3                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Purchase    | From Date | Duration at this City    | 3                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Refinance   | From Date | Duration at this City    | 3                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Purchase    | From Date | Duration at this City    | 3                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Refinance   | From Date | Duration at this City    | 3                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Purchase    | To Date   | Duration at this City    | 3                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Refinance   | To Date   | Duration at this City    | 3                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Purchase    | To Date   | Duration at this City    | 3                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Refinance   | To Date   | Duration at this City    | 3                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Purchase    | From Date | Duration at this Address | 4                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Refinance   | From Date | Duration at this Address | 4                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Purchase    | From Date | Duration at this Address | 4                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Refinance   | From Date | Duration at this Address | 4                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Purchase    | To Date   | Duration at this Address | 4                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Refinance   | To Date   | Duration at this Address | 4                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Purchase    | To Date   | Duration at this Address | 4                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Refinance   | To Date   | Duration at this Address | 4                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Purchase    | From Date | Duration at this City    | 4                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Refinance   | From Date | Duration at this City    | 4                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Purchase    | From Date | Duration at this City    | 4                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Refinance   | From Date | Duration at this City    | 4                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Purchase    | To Date   | Duration at this City    | 4                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Refinance   | To Date   | Duration at this City    | 4                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Purchase    | To Date   | Duration at this City    | 4                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Refinance   | To Date   | Duration at this City    | 4                                 |

  #Prerequisite:Application already punch with application type as Multi Asset
# ${ ProductType : ["CEQ","CV"]}
# ${ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
#${ApplicantType:["indiv","nonindiv"]}
#FeatureID-ACAUTOCAS-11906
  Scenario Outline:<Field> field should be display in two separate block for "<Address_City>" of other Manufacture Address in Body Details under collateral details at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user navigates to asset requested page
    And user select Funding For as "<FundingFor>"
    And user select Finance Mode as "<FinanceMode>"
    And user save the asset requested with asset type as Used Asset
    And user edit the added asset requested details
    And user opens Collateral Details section
    And user edit the collateral details
    And user opens body details section
    And user select bought from as Other Manufacture
    And user navigates to OtherManufacture Address Details
    And user click on plus icon in OtherManufacture Address Details
    And user reads data from the excel file "asset_details.xlsx" under sheet "seller_details" and row <AssetDetails_sellerDetails_rowNum>
    And user fills To Date field for "<Address_City>" in body details
    When user fills From Date field for "<Address_City>" in body details
    Then "<Field>" field should be display in two separate block for "<Address_City>" in body details
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | FundingFor | FinanceMode | Field           | Address_City             | AssetDetails_sellerDetails_rowNum |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Purchase    | Year and Months | Duration at this address | 0                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Refinance   | Year and Months | Duration at this address | 0                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Purchase    | Year and Months | Duration at this address | 0                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Refinance   | Year and Months | Duration at this address | 0                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Purchase    | Year and Months | Duration at this City    | 0                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Refinance   | Year and Months | Duration at this City    | 0                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Purchase    | Year and Months | Duration at this City    | 0                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Refinance   | Year and Months | Duration at this City    | 0                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Purchase    | Year and Months | Duration at this address | 1                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Refinance   | Year and Months | Duration at this address | 1                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Purchase    | Year and Months | Duration at this address | 1                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Refinance   | Year and Months | Duration at this address | 1                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Purchase    | Year and Months | Duration at this City    | 1                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Refinance   | Year and Months | Duration at this City    | 1                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Purchase    | Year and Months | Duration at this City    | 1                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Refinance   | Year and Months | Duration at this City    | 1                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Purchase    | Year and Months | Duration at this address | 2                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Refinance   | Year and Months | Duration at this address | 2                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Purchase    | Year and Months | Duration at this address | 2                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Refinance   | Year and Months | Duration at this address | 2                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Purchase    | Year and Months | Duration at this City    | 2                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Refinance   | Year and Months | Duration at this City    | 2                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Purchase    | Year and Months | Duration at this City    | 2                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Refinance   | Year and Months | Duration at this City    | 2                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Purchase    | Year and Months | Duration at this address | 3                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Refinance   | Year and Months | Duration at this address | 3                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Purchase    | Year and Months | Duration at this address | 3                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Refinance   | Year and Months | Duration at this address | 3                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Purchase    | Year and Months | Duration at this City    | 3                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Refinance   | Year and Months | Duration at this City    | 3                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Purchase    | Year and Months | Duration at this City    | 3                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Refinance   | Year and Months | Duration at this City    | 3                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Purchase    | Year and Months | Duration at this address | 4                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Refinance   | Year and Months | Duration at this address | 4                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Purchase    | Year and Months | Duration at this address | 4                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Refinance   | Year and Months | Duration at this address | 4                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Purchase    | Year and Months | Duration at this City    | 4                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Refinance   | Year and Months | Duration at this City    | 4                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Purchase    | Year and Months | Duration at this City    | 4                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Refinance   | Year and Months | Duration at this City    | 4                                 |


     #Prerequisite:Application already punch with application type as Multi Asset
# ${ ProductType : ["CEQ","CV"]}
# ${ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
#${ApplicantType:["indiv","nonindiv"]}
#FeatureID-ACAUTOCAS-11906
  Scenario Outline:<Field> calculation for <Address_City> of other Manufacture Address in Body Funding Details under collateral details at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user navigates to asset requested page
    And user select Funding For as "<FundingFor>"
    And user select Finance Mode as "<FinanceMode>"
    And user save the asset requested with asset type as Used Asset
    And user edit the added asset requested details
    And user opens Collateral Details section
    And user edit the collateral details
    And user opens body details section
    And user select bought from as Other Manufacture
    And user navigates to OtherManufacture Address Details
    And user click on plus icon in OtherManufacture Address Details
    And user reads data from the excel file "asset_details.xlsx" under sheet "seller_details" and row <AssetDetails_sellerDetails_rowNum>
    When user fills From Date field for "<Address_City>" in body details
    And user fills To Date field for "<Address_City>" in body details
    Then "<Field>" field should be calculated correctly for "<Address_City>" in body details
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | FundingFor | FinanceMode | Field           | Address_City             | AssetDetails_sellerDetails_rowNum |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Purchase    | Year and Months | Duration at this address | 0                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Refinance   | Year and Months | Duration at this address | 0                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Purchase    | Year and Months | Duration at this address | 0                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Refinance   | Year and Months | Duration at this address | 0                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Purchase    | Year and Months | Duration at this City    | 0                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Refinance   | Year and Months | Duration at this City    | 0                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Purchase    | Year and Months | Duration at this City    | 0                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Refinance   | Year and Months | Duration at this City    | 0                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Purchase    | Year and Months | Duration at this address | 1                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Refinance   | Year and Months | Duration at this address | 1                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Purchase    | Year and Months | Duration at this address | 1                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Refinance   | Year and Months | Duration at this address | 1                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Purchase    | Year and Months | Duration at this City    | 1                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Refinance   | Year and Months | Duration at this City    | 1                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Purchase    | Year and Months | Duration at this City    | 1                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Refinance   | Year and Months | Duration at this City    | 1                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Purchase    | Year and Months | Duration at this address | 2                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Refinance   | Year and Months | Duration at this address | 2                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Purchase    | Year and Months | Duration at this address | 2                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Refinance   | Year and Months | Duration at this address | 2                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Purchase    | Year and Months | Duration at this City    | 2                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Refinance   | Year and Months | Duration at this City    | 2                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Purchase    | Year and Months | Duration at this City    | 2                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Refinance   | Year and Months | Duration at this City    | 2                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Purchase    | Year and Months | Duration at this address | 3                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Refinance   | Year and Months | Duration at this address | 3                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Purchase    | Year and Months | Duration at this address | 3                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Refinance   | Year and Months | Duration at this address | 3                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Purchase    | Year and Months | Duration at this City    | 3                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Refinance   | Year and Months | Duration at this City    | 3                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Purchase    | Year and Months | Duration at this City    | 3                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Refinance   | Year and Months | Duration at this City    | 3                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Purchase    | Year and Months | Duration at this address | 4                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Refinance   | Year and Months | Duration at this address | 4                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Purchase    | Year and Months | Duration at this address | 4                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Refinance   | Year and Months | Duration at this address | 4                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Purchase    | Year and Months | Duration at this City    | 4                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Refinance   | Year and Months | Duration at this City    | 4                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Purchase    | Year and Months | Duration at this City    | 4                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Refinance   | Year and Months | Duration at this City    | 4                                 |


     #Prerequisite:Application already punch with application type as Multi Asset
# ${ ProductType : ["CEQ","CV"]}
# ${ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
#${ApplicantType:["indiv","nonindiv"]}
#FeatureID-ACAUTOCAS-11906
  Scenario Outline:<Field> calculation for <Address_City> if Current Address checkbox is checked of other Manufacture Address in Body Details under collateral details at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user navigates to asset requested page
    And user select Funding For as "<FundingFor>"
    And user select Finance Mode as "<FinanceMode>"
    And user save the asset requested with asset type as Used Asset
    And user edit the added asset requested details
    And user opens Collateral Details section
    And user edit the collateral details
    And user opens body details section
    And user select bought from as Other Manufacture
    And user navigates to OtherManufacture Address Details
    And user click on plus icon in OtherManufacture Address Details
    And user reads data from the excel file "asset_details.xlsx" under sheet "seller_details" and row <AssetDetails_sellerDetails_rowNum>
    And user checked Current Address checkbox in body funding details
    When user fills From Date field for "<Address_City>" in body funding details
    Then "<Field>" field should be calculated correctly as per current system date for "<Address_City>" in body funding details
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | FundingFor | FinanceMode | Field           | Address_City             | AssetDetails_sellerDetails_rowNum |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Purchase    | Year and Months | Duration at this address | 0                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Refinance   | Year and Months | Duration at this address | 0                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Purchase    | Year and Months | Duration at this address | 0                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Refinance   | Year and Months | Duration at this address | 0                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Purchase    | Year and Months | Duration at this City    | 0                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Refinance   | Year and Months | Duration at this City    | 0                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Purchase    | Year and Months | Duration at this City    | 0                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Refinance   | Year and Months | Duration at this City    | 0                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Purchase    | Year and Months | Duration at this address | 1                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Refinance   | Year and Months | Duration at this address | 1                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Purchase    | Year and Months | Duration at this address | 1                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Refinance   | Year and Months | Duration at this address | 1                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Purchase    | Year and Months | Duration at this City    | 1                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Refinance   | Year and Months | Duration at this City    | 1                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Purchase    | Year and Months | Duration at this City    | 1                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Refinance   | Year and Months | Duration at this City    | 1                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Purchase    | Year and Months | Duration at this address | 2                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Refinance   | Year and Months | Duration at this address | 2                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Purchase    | Year and Months | Duration at this address | 2                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Refinance   | Year and Months | Duration at this address | 2                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Purchase    | Year and Months | Duration at this City    | 2                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Refinance   | Year and Months | Duration at this City    | 2                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Purchase    | Year and Months | Duration at this City    | 2                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Refinance   | Year and Months | Duration at this City    | 2                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Purchase    | Year and Months | Duration at this address | 3                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Refinance   | Year and Months | Duration at this address | 3                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Purchase    | Year and Months | Duration at this address | 3                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Refinance   | Year and Months | Duration at this address | 3                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Purchase    | Year and Months | Duration at this City    | 3                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Refinance   | Year and Months | Duration at this City    | 3                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Purchase    | Year and Months | Duration at this City    | 3                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Refinance   | Year and Months | Duration at this City    | 3                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Purchase    | Year and Months | Duration at this address | 4                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Refinance   | Year and Months | Duration at this address | 4                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Purchase    | Year and Months | Duration at this address | 4                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Refinance   | Year and Months | Duration at this address | 4                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Purchase    | Year and Months | Duration at this City    | 4                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Refinance   | Year and Months | Duration at this City    | 4                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Purchase    | Year and Months | Duration at this City    | 4                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Refinance   | Year and Months | Duration at this City    | 4                                 |


     #Prerequisite:Application already punch with application type as Multi Asset
# ${ ProductType : ["CEQ","CV"]}
# ${ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
#${ApplicantType:["indiv","nonindiv"]}
#FeatureID-ACAUTOCAS-11906
  Scenario Outline:Edit the added Other Manufacture Address in Body Details under collateral details at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user navigates to asset requested page
    And user select Funding For as "<FundingFor>"
    And user select Finance Mode as "<FinanceMode>"
    And user save the asset requested with asset type as Used Asset
    And user edit the added asset requested details
    And user opens Collateral Details section
    And user edit the collateral details
    And user opens body details section
    And user select bought from as Other Manufacture
    And user navigates to OtherManufacture Address Details
    And user click on plus icon in OtherManufacture Address Details
    When user add Other Manufacture Address details
    And user edits added Other Manufacture Address details
    Then Other Manufacture Address details should be edited successfully
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | FundingFor | FinanceMode |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Purchase    |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Refinance   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Purchase    |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Refinance   |

       #Prerequisite:Application already punch with application type as Multi Asset
# ${ ProductType : ["CEQ","CV"]}
# ${ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
#${ApplicantType:["indiv","nonindiv"]}
#FeatureID-ACAUTOCAS-11906
  Scenario Outline:Delete the added Other Manufacture Address in Body Details under collateral details at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user navigates to asset requested page
    And user select Funding For as "<FundingFor>"
    And user select Finance Mode as "<FinanceMode>"
    And user save the asset requested with asset type as Used Asset
    And user edit the added asset requested details
    And user opens Collateral Details section
    And user edit the collateral details
    And user opens body details section
    And user select bought from as Other Manufacture
    And user navigates to OtherManufacture Address Details
    And user click on plus icon in OtherManufacture Address Details
    When user add Other Manufacture Address details
    And user deletes added Other Manufacture Address details
    Then Other Manufacture Address details should be deleted successfully
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | FundingFor | FinanceMode |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Purchase    |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Refinance   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Purchase    |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Refinance   |

       #Prerequisite:Application already punch with application type as Multi Asset
# ${ ProductType : ["CEQ","CV"]}
# ${ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
#${ApplicantType:["indiv","nonindiv"]}
#FeatureID-ACAUTOCAS-11906
  Scenario Outline:User should able to change default bank account after adding multiple bank details in Body Details under collateral details at <ApplicationStage> for <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user navigates to asset requested page
    And user select Funding For as "<FundingFor>"
    And user select Collateral Sub-Type/Asset details as "<ProductType>"
    And user select Finance Mode as "<FinanceMode>"
    And user save the asset requested with asset type as Used Asset
    And user edit the added asset requested details
    And user opens Collateral Details section
    And user edit the collateral details
    And user opens body details section
    And user select bought from as Other Manufacture
    And user navigates to OtherManufacture Address Details
    And user click on plus icon in OtherManufacture Address Details
    When user add "<NoOfIdentification>" identification details with save
    Then user should able to change default bank account in Body Funding Details

    Examples:
      | NoOfIdentification | ApplicantType   | ApplicationStage   | ProductType   | FundingFor | FinanceMode |
      | one another        | <ApplicantType> | <ApplicationStage> | <ProductType> | Chassis    | Purchase    |
      | one another        | <ApplicantType> | <ApplicationStage> | <ProductType> | Chassis    | Refinance   |
      | one another        | <ApplicantType> | <ApplicationStage> | <ProductType> | FBV        | Purchase    |
      | one another        | <ApplicantType> | <ApplicationStage> | <ProductType> | FBV        | Refinance   |
      | multiple           | <ApplicantType> | <ApplicationStage> | <ProductType> | Chassis    | Purchase    |
      | multiple           | <ApplicantType> | <ApplicationStage> | <ProductType> | Chassis    | Refinance   |
      | multiple           | <ApplicantType> | <ApplicationStage> | <ProductType> | FBV        | Purchase    |
      | multiple           | <ApplicantType> | <ApplicationStage> | <ProductType> | FBV        | Refinance   |

      #Prerequisite:Application already punch with application type as Multi Asset
# ${ ProductType : ["CEQ","CV"]}
# ${ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
#${ApplicantType:["indiv","nonindiv"]}
#FeatureID-ACAUTOCAS-11906
  Scenario Outline:Capture OtherManufacture Address Details after saving address details with create another after this one under collateral details at <ApplicationStage> for <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user navigates to asset requested page
    And user select Funding For as "<FundingFor>"
    And user select Finance Mode as "<FinanceMode>"
    And user save the asset requested with asset type as Used Asset
    And user edit the added asset requested details
    And user opens Collateral Details section
    And user edit the collateral details
    And user opens body details section
    And user select bought from as Other Manufacture
    And user navigates to OtherManufacture Address Details
    And user click on plus icon in OtherManufacture Address Details
    When user saves the OtherManufacture Address Details with checkbox create another one
    Then OtherManufacture Address Details should be available to create another address details

    Examples:
      | ApplicantType   | ApplicationStage   | ProductType   | FundingFor | FinanceMode |
      | <ApplicantType> | <ApplicationStage> | <ProductType> | Chassis    | Purchase    |
      | <ApplicantType> | <ApplicationStage> | <ProductType> | Chassis    | Refinance   |
      | <ApplicantType> | <ApplicationStage> | <ProductType> | FBV        | Purchase    |
      | <ApplicantType> | <ApplicationStage> | <ProductType> | FBV        | Refinance   |


    #----------------------Bank details-------------------

    #Prerequisite:Application already punch with application type as Multi Asset
    # ${ ProductType : ["CEQ","CV"]}
    ## ${ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
    ##${ApplicantType:["indiv","nonindiv"]}
#FeatureID-ACAUTOCAS-11906
  Scenario Outline:Save the Other Manufacture Bank Details with all field under collateral details at <ApplicationStage> stage for <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user navigates to asset requested page
    And user select Funding For as "<FundingFor>"
    And user select Finance Mode as "<FinanceMode>"
    And user save the asset requested with asset type as Used Asset
    And user edit the added asset requested details
    And user opens Collateral Details section
    And user edit the collateral details
    And user opens body details section
    And user select bought from as Other Manufacture
    And user navigates to OtherManufacture Bank Details
    And user click on plus icon in OtherManufacture Bank Details
    When user fill the OtherManufacture Bank Details with all field
    Then OtherManufacture Bank Details should be save successfully


    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | FundingFor | FinanceMode |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Refinance   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Purchase    |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Refinance   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Purchase    |


  #Prerequisite:Application already punch with application type as Multi Asset
# ${ ProductType : ["CEQ","CV"]}
# ${ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
#${ApplicantType:["indiv","nonindiv"]}
#FeatureID-ACAUTOCAS-11906
  Scenario Outline:Save the Other Manufacture Bank Details without <Field_Name> under collateral details at <ApplicationStage> stage for <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user navigates to asset requested page
    And user select Funding For as "<FundingFor>"
    And user select Finance Mode as "<FinanceMode>"
    And user save the asset requested with asset type as Used Asset
    And user edit the added asset requested details
    And user opens Collateral Details section
    And user edit the collateral details
    And user opens body details section
    And user select bought from as Other Manufacture
    And user navigates to OtherManufacture Bank Details
    And user click on plus icon in OtherManufacture Bank Details
    When user fill the OtherManufacture Bank Details without "<Field_Name>"
    Then "<Field_Name>" field "<Throws_notThrows>" in OtherManufacture bank details
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | FundingFor | FinanceMode | Field_Name      | Throws_notThrows                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Purchase    | Account Number  | throws an error with error message |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Refinance   | Account Number  | throws an error with error message |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Purchase    | Account Number  | throws an error with error message |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Refinance   | Account Number  | throws an error with error message |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Purchase    | Mode Of Payment | throws an error with error message |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Refinance   | Mode Of Payment | throws an error with error message |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Purchase    | Mode Of Payment | throws an error with error message |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Refinance   | Mode Of Payment | throws an error with error message |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Purchase    | Bank Name       | throws an error with error message |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Refinance   | Bank Name       | throws an error with error message |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Purchase    | Bank Name       | throws an error with error message |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Refinance   | Bank Name       | throws an error with error message |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Purchase    | Branch          | not throw any error message        |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Refinance   | Branch          | not throw any error message        |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Purchase    | Branch          | not throw any error message        |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Refinance   | Branch          | not throw any error message        |

    #Prerequisite:Application already punch with application type as Multi Asset
# ${ ProductType : ["CEQ","CV"]}
# ${ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
#${ApplicantType:["indiv","nonindiv"]}
#FeatureID-ACAUTOCAS-11906
  Scenario Outline:Edit the added OtherManufacture bank details under collateral details at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user navigates to asset requested page
    And user select Funding For as "<FundingFor>"
    And user select Finance Mode as "<FinanceMode>"
    And user save the asset requested with asset type as Used Asset
    And user edit the added asset requested details
    And user opens Collateral Details section
    And user edit the collateral details
    And user opens body details section
    And user select bought from as Other Manufacture
    And user navigates to OtherManufacture Bank Details
    And user click on plus icon in OtherManufacture Bank Details
    When user fill the OtherManufacture Bank Details with all field
    And user edits the added OtherManufacture bank details
    Then OtherManufacture bank details should be edited successfully
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | FundingFor | FinanceMode |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Purchase    |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Refinance   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Purchase    |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Refinance   |

        #Prerequisite:Application already punch with application type as Multi Asset
# ${ ProductType : ["CEQ","CV"]}
# ${ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
#${ApplicantType:["indiv","nonindiv"]}
#FeatureID-ACAUTOCAS-11906
  Scenario Outline:Delete the added OtherManufacture bank details under collateral details at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user navigates to asset requested page
    And user select Funding For as "<FundingFor>"
    And user select Finance Mode as "<FinanceMode>"
    And user save the asset requested with asset type as Used Asset
    And user edit the added asset requested details
    And user opens Collateral Details section
    And user edit the collateral details
    And user opens body details section
    And user select bought from as Other Manufacture
    And user navigates to OtherManufacture Bank Details
    And user click on plus icon in OtherManufacture Bank Details
    When user fill the OtherManufacture Bank Details with all field
    And user delete the added OtherManufacture bank details
    Then OtherManufacture bank details should be deleted successfully
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | FundingFor | FinanceMode |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Purchase    |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Refinance   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Purchase    |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Refinance   |

#Prerequisite:Application already punch with application type as Multi Asset
# ${ ProductType : ["CEQ","CV"]}
# ${ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
  #${FundingFor:["FBV","Chassis"]}
#FeatureID-ACAUTOCAS-11906
  Scenario Outline:Validating the Account Number in OtherManufacture bank details with <Var> under collateral details at "<ApplicationStage>" stage for "<ProductType>"
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user navigates to asset requested page
    And user select Funding For as "<FundingFor>"
    And user select Finance Mode as "<FinanceMode>"
    And user save the asset requested with asset type as Used Asset
    And user edit the added asset requested details
    And user opens Collateral Details section
    And user edit the collateral details
    And user opens body details section
    And user select bought from as Other Manufacture
    And user navigates to OtherManufacture Bank Details
    And user click on plus icon in OtherManufacture Bank Details
    When user fills Account Number with "<Var>" in OtherManufacture Bank Details
    Then Account Number field with "<Var>" "<Throws_notThrows>" in OtherManufacture Bank Details
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | FundingFor | FinanceMode | Var                        | Throws_notThrows                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Purchase    | valid value                | does not throw any error           |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Refinance   | valid value                | does not throw any error           |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Purchase    | valid value                | does not throw any error           |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Refinance   | valid value                | does not throw any error           |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Purchase    | both digits and characters | does not throw any error           |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Refinance   | both digits and characters | does not throw any error           |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Purchase    | both digits and characters | does not throw any error           |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Refinance   | both digits and characters | does not throw any error           |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Purchase    | special character hyphen   | throws an error with error message |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Refinance   | special character hyphen   | throws an error with error message |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Purchase    | special character hyphen   | throws an error with error message |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Refinance   | special character hyphen   | throws an error with error message |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Purchase    | space                      | does not throw any error           |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Refinance   | space                      | does not throw any error           |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Purchase    | space                      | does not throw any error           |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Refinance   | space                      | does not throw any error           |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Purchase    | negative value             | does not throw any error           |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Refinance   | negative value             | does not throw any error           |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Purchase    | negative value             | does not throw any error           |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Refinance   | negative value             | does not throw any error           |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Purchase    | special characters         | throws an error with error message |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Refinance   | special characters         | throws an error with error message |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Purchase    | special characters         | throws an error with error message |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Refinance   | special characters         | throws an error with error message |

       #Prerequisite:Application already punch with application type as Multi Asset
# ${ ProductType : ["CEQ","CV"]}
# ${ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
#${ApplicantType:["indiv","nonindiv"]}
#FeatureID-ACAUTOCAS-11906
  Scenario Outline:User should able to change default bank account after adding multiple bank details in OtherManufacture bank details under collateral details at <ApplicationStage> for <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user navigates to asset requested page
    And user select Funding For as "<FundingFor>"
    And user select Finance Mode as "<FinanceMode>"
    And user save the asset requested with asset type as Used Asset
    And user edit the added asset requested details
    And user opens Collateral Details section
    And user edit the collateral details
    And user opens body details section
    And user select bought from as Other Manufacture
    And user navigates to OtherManufacture Bank Details
    And user click on plus icon in OtherManufacture Bank Details
    When user add "<NoOfIdentification>" identification details with save
    Then user should able to change default bank account in OtherManufacture bank details
    Examples:
      | NoOfIdentification | ApplicantType   | ApplicationStage   | ProductType   | FundingFor | FinanceMode |
      | one another        | <ApplicantType> | <ApplicationStage> | <ProductType> | Chassis    | Purchase    |
      | one another        | <ApplicantType> | <ApplicationStage> | <ProductType> | Chassis    | Refinance   |
      | one another        | <ApplicantType> | <ApplicationStage> | <ProductType> | FBV        | Purchase    |
      | one another        | <ApplicantType> | <ApplicationStage> | <ProductType> | FBV        | Refinance   |
      | multiple           | <ApplicantType> | <ApplicationStage> | <ProductType> | Chassis    | Purchase    |
      | multiple           | <ApplicantType> | <ApplicationStage> | <ProductType> | Chassis    | Refinance   |
      | multiple           | <ApplicantType> | <ApplicationStage> | <ProductType> | FBV        | Purchase    |
      | multiple           | <ApplicantType> | <ApplicationStage> | <ProductType> | FBV        | Refinance   |

  #Prerequisite:Application already punch with application type as Multi Asset
# ${ ProductType : ["CEQ","CV"]}
# ${ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
#${ApplicantType:["indiv","nonindiv"]}
#FeatureID-ACAUTOCAS-11906
  Scenario Outline:Capture OtherManufacture Bank Details after saving address details with create another after this one under collateral details at <ApplicationStage> for <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user navigates to asset requested page
    And user select Funding For as "<FundingFor>"
    And user select Finance Mode as "<FinanceMode>"
    And user save the asset requested with asset type as Used Asset
    And user edit the added asset requested details
    And user opens Collateral Details section
    And user edit the collateral details
    And user opens body details section
    And user select bought from as Other Manufacture
    And user navigates to OtherManufacture Bank Details
    And user click on plus icon in OtherManufacture Bank Details
    When user saves the OtherManufacture Bank Details with checkbox create another one
    Then OtherManufacture Bank Details should be available to create another bank details

    Examples:
      | ApplicantType   | ApplicationStage   | ProductType   | FundingFor | FinanceMode |
      | <ApplicantType> | <ApplicationStage> | <ProductType> | Chassis    | Purchase    |
      | <ApplicantType> | <ApplicationStage> | <ProductType> | Chassis    | Refinance   |
      | <ApplicantType> | <ApplicationStage> | <ProductType> | FBV        | Purchase    |
      | <ApplicantType> | <ApplicationStage> | <ProductType> | FBV        | Refinance   |
