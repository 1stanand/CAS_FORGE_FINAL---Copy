@Epic-Loan_Application_Details
@ReviewedBy-None
#@AuthoredBy-vinod.pandey
@AuthoredBy-vipin.kishor
@Perishable
@Release3
@ReleaseLoanAppM5
@ImplementedBy-tanya
@Conventional
@Islamic
#FeatureID-ACAUTOCAS-4169
Feature: Property Details Validation With Application Type As Non Identified Property

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 7

#  Create subtask
  # ${ProductType:["HL", "MHL", "IHF", "LAP"]}
  # ${ApplicationStage:["Lead Details"]}
  Scenario Outline: ACAUTOCAS-5942: Fill the non identified property details of individual customer of collateral subtype <CollateralSubtype> for <ProductType> application on <ApplicationStage> stage
    And user creates an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from web service
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user open loan details
    And user opens Property Details page
    And user reads data from the excel file "property_details.xlsx" under sheet "home" and row <PropertyDetails_home_rowNum>
    When user fills property details for "Property Non-Identified" collateral subtype as "<CollateralSubtype>"
    And user saves the property details
    Then property details should get saved successfully
    Examples:
      | ProductType   | ApplicantType | ApplicationStage   | CollateralSubtype                   | PropertyDetails_home_rowNum | category | key |
      | <ProductType> | indiv         | <ApplicationStage> | Builder Property Under Construction | 124                         |          |     |
      | <ProductType> | indiv         | <ApplicationStage> | Construction On Land                | 125                         |          |     |
      | <ProductType> | indiv         | <ApplicationStage> | Plot + Self Construction            | 126                         |          |     |
      | <ProductType> | indiv         | <ApplicationStage> | Ready Property                      | 127                         |          |     |
      | <ProductType> | indiv         | <ApplicationStage> | Purchase A Plot                     | 128                         |          |     |

#  Save & Next
#  Create subtask
  # ${ProductType:["HL", "MHL", "IHF", "LAP"]}
  # ${ApplicationStage:["Lead Details","Login Acceptance"]}
  Scenario Outline: ACAUTOCAS-11786: Validate save & next button in non identified property details of individual customer for collateral subtype as <CollateralSubtype> of <ProductType> application on <ApplicationStage> stage
    And user creates an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<InitialStage>" for "<category>" with "<key>" from web service
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<InitialStage>" for "<category>" with "<key>" from application grid
    And user reads data from the excel file "property_details.xlsx" under sheet "home" and row <PropertyDetails_home_rowNum>
    And user open loan details
    And user opens Property Details page
    And user fills property details for "Property Non-Identified" collateral subtype as "<CollateralSubtype>"
    And user saves the property details
    And user moves from "<InitialStage>" to application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" stage
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user open loan details
    And user opens Property Details page
    When user saves & next the property details
    Then application navigate to "<Tab>" page
    Examples:
      | ProductType   | ApplicantType | InitialStage | ApplicationStage | CollateralSubtype                   | PropertyDetails_home_rowNum | Tab                  | category | key |
      | <ProductType> | indiv         | Lead Details | <ApplicantType>  | Builder Property Under Construction | 124                         | Receipt Details      |          |     |
      | <ProductType> | indiv         | Lead Details | <ApplicantType>  | Construction On Land                | 125                         | Receipt Details      |          |     |
      | <ProductType> | indiv         | Lead Details | <ApplicantType>  | Plot + Self Construction            | 126                         | Receipt Details      |          |     |
      | <ProductType> | indiv         | Lead Details | <ApplicantType>  | Ready Property                      | 127                         | Receipt Details      |          |     |
      | <ProductType> | indiv         | Lead Details | <ApplicantType>  | Purchase A Plot                     | 128                         | Receipt Details      |          |     |
      | <ProductType> | indiv         | Lead Details | DDE              | Builder Property Under Construction | 124                         | Repayment Parameters |          |     |
      | <ProductType> | indiv         | Lead Details | DDE              | Construction On Land                | 125                         | Repayment Parameters |          |     |
      | <ProductType> | indiv         | Lead Details | DDE              | Plot + Self Construction            | 126                         | Repayment Parameters |          |     |
      | <ProductType> | indiv         | Lead Details | DDE              | Ready Property                      | 127                         | Repayment Parameters |          |     |
      | <ProductType> | indiv         | Lead Details | DDE              | Purchase A Plot                     | 128                         | Repayment Parameters |          |     |

    #Function
  #Source from exploration
  # ${ProductType:["HL", "MHL", "IHF", "LAP"]}
  # ${ApplicationStage:["Credit Approval"]}
  Scenario Outline: ACAUTOCAS-11787: Validate application is on ICD stage for application with non identified property as primary collateral
    And user creates an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<InitialStage>" for "<category>" with "<key>" from web service
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<InitialStage>" for "<category>" with "<key>" from application grid
    And user reads data from the excel file "property_details.xlsx" under sheet "home" and row <PropertyDetails_home_rowNum>
    And user open loan details
    And user navigates to property details page of "<InitialStage>"
    And user fills property details for "Property Non-Identified" collateral subtype as "<CollateralSubtype>"
    And user saves the property details
    And user moves from "<InitialStage>" to application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" stage
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user reads data from the excel file "credit_approval.xlsx" under sheet "kyc_details" and row 8
    And user completed the kyc of the "<ProductType>" application
    And user reruns the deviation policy on credit approval
    And user navigates to page of underwriter decision
    And user navigates to decision tab of underwriter decision page
    When user approve the application
    And user reads data from the excel file "credit_approval.xlsx" under sheet "underwriter_decision" and row 5
    And user fills the decision details with "In-Principle Approve"
    And user completes the approval checklist
    And user saves the underwriter decision
    And user navigates to decision tab to submit the underwriter decision
    And user exit from the underwriter decision
    And user moves to the next stage
    Then application is on "ICD" stage
    Examples:
      | ProductType   | ApplicantType | InitialStage | ApplicationStage   | CollateralSubtype                   | PropertyDetails_home_rowNum | category | key |
      | <ProductType> | indiv         | Lead Details | <ApplicationStage> | Builder Property Under Construction | 124                         |          |     |
      | <ProductType> | indiv         | Lead Details | <ApplicationStage> | Construction On Land                | 125                         |          |     |
      | <ProductType> | indiv         | Lead Details | <ApplicationStage> | Plot + Self Construction            | 126                         |          |     |
      | <ProductType> | indiv         | Lead Details | <ApplicationStage> | Ready Property                      | 127                         |          |     |
      | <ProductType> | indiv         | Lead Details | <ApplicationStage> | Purchase A Plot                     | 128                         |          |     |

   #Function
  #Source from squash 196693
  # ${ProductType:["HL", "MHL", "IHF", "LAP"]}
  # ${ApplicationStage:["ICD"]}
  Scenario Outline: ACAUTOCAS-11788: Validate application is on CII stage after changing non identified property to identified for <CollateralSubtype> at ICD stage
    And user creates an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<InitialStage>" for "<category>" with "<key>" from web service
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<InitialStage>" for "<category>" with "<key>" from application grid
    And user reads data from the excel file "property_details.xlsx" under sheet "home" and row <PropertyDetails_home_rowNum>
    And user open loan details
    And user navigates to property details page of "<InitialStage>"
    And user fills property details for "Property Non-Identified" collateral subtype as "<CollateralSubtype>"
    And user saves the property details
    And user moves from "<InitialStage>" to application of "<ProductType>" product type as "<ApplicantType>" applicant at "<SubsequentStage>" for "<category>" with "<key>" stage
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<SubsequentStage>" for "<category>" with "<key>" from application grid
    And user reads data from the excel file "credit_approval.xlsx" under sheet "kyc_details" and row 8
    And user completed the kyc of the "<ProductType>" application
    And user reads data from the excel file "credit_approval.xlsx" under sheet "underwriter_decision" and row 5
    And user navigates to decision tab of underwriter decision page to fill the decision details with "In-Principle Approve"
    And user completes the approval checklist to submit the underwriter decision page
    And user moves to the next stage
    When user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user reads data from the excel file "property_details.xlsx" under sheet "home" and row <PropertyDetails_home_rowNum>
    And user open loan details
    And user navigates to property details page of "<ApplicationStage>"
    And user fills property details for "Property Identified" collateral subtype as "<CollateralSubtype>"
    And user reads data from the excel file "property_details.xlsx" under sheet "other_details" and row 0
    And user fills other details
    And user reads data from the excel file "property_details.xlsx" under sheet "property_address.xlsx" and row 0
    And user fills the property address
    And user check for duplicates
    And user saves the property details
    And user moves to the next stage
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<SubsequentStage>" for "<category>" with "<key>" from application grid
    And user fills decision with submit
    And user moves to next stage
    Then application is present in "CII" grid
    Examples:
      | ProductType   | ApplicantType | InitialStage | ApplicationStage   | SubsequentStage | CollateralSubtype        | PropertyDetails_home_rowNum | category | key |
      | <ProductType> | indiv         | Lead Details | <ApplicationStage> | Credit Approval | Construction On Land     | 125                         |          |     |
      | <ProductType> | indiv         | Lead Details | <ApplicationStage> | Credit Approval | Plot + Self Construction | 126                         |          |     |
      | <ProductType> | indiv         | Lead Details | <ApplicationStage> | Credit Approval | Ready Property           | 127                         |          |     |
      | <ProductType> | indiv         | Lead Details | <ApplicationStage> | Credit Approval | Purchase A Plot          | 128                         |          |     |

 #Function
  #Source from squash 196693
  # ${ProductType:["HL", "MHL", "IHF", "LAP"]}
  # ${ApplicationStage:["ICD"]}
  Scenario Outline: ACAUTOCAS-11789: Validate application is on CII stage after changing non identified property to identified for builder property under construction at ICD stage
    And user creates an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<InitialStage>" for "<category>" with "<key>" from web service
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<InitialStage>" for "<category>" with "<key>" from application grid
    And user reads data from the excel file "property_details.xlsx" under sheet "home" and row <PropertyDetails_home_rowNum>
    And user open loan details
    And user navigates to property details page of "<InitialStage>"
    And user fills property details for "Property Non-Identified" collateral subtype as "<CollateralSubtype>"
    And user saves the property details
    And user moves from "<InitialStage>" to application of "<ProductType>" product type as "<ApplicantType>" applicant at "<SubsequentStage>" for "<category>" with "<key>" stage
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<SubsequentStage>" for "<category>" with "<key>" from application grid
    And user reads data from the excel file "credit_approval.xlsx" under sheet "kyc_details" and row 8
    And user completed the kyc of the "<ProductType>" application
    And user reads data from the excel file "credit_approval.xlsx" under sheet "underwriter_decision" and row 5
    And user navigates to decision tab of underwriter decision page to fill the decision details with "In-Principle Approve"
    And user completes the approval checklist to submit the underwriter decision page
    And user moves to the next stage
    When user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user reads data from the excel file "property_details.xlsx" under sheet "home" and row <PropertyDetails_home_rowNum>
    And user open loan details
    And user navigates to property details page of "<ApplicationStage>"
    And user fills property details for "Property Identified" collateral subtype as "<CollateralSubtype>"
    And user reads data from the excel file "property_details.xlsx" under sheet "builder_details" and row 3
    And user fills the builder details
    And user reads data from the excel file "property_details.xlsx" under sheet "other_details" and row 0
    And user fills other details
    And user reads data from the excel file "property_details.xlsx" under sheet "property_address.xlsx" and row 0
    And user fills the property address
    And user check for duplicates
    And user saves the property details
    And user moves to the next stage
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<SubsequentStage>" for "<category>" with "<key>" from application grid
    And user fills decision with submit
    And user moves to next stage
    Then application is present in "CII" grid
    Examples:
      | ProductType   | ApplicantType | InitialStage | ApplicationStage   | SubsequentStage | CollateralSubtype                   | PropertyDetails_home_rowNum | category | key |
      | <ProductType> | indiv         | Lead Details | <ApplicationStage> | Credit Approval | Builder Property Under Construction | 124                         |          |     |
