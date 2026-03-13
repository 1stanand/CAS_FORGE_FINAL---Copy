@Epic-Loan_Application_Details
@ReviewedBy-None
#@AuthoredBy-vinod.pandey
@AuthoredBy-vipin.kishor
@Conventional
@Islamic

#FeatureID-ACAUTOCAS-5397
Feature:Screen Validation In Identified Property Detail Page

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 7

  # ${ProductType:["HL", "MHL", "IHF", "LAP"]}
  # ${ApplicationStage:["Sourcing","Lead Details", "Login Acceptance", "DDE", "Credit Approval", "Recommendation", "Reconsideration", "Disbursal Initiation"]}
  @Release3
    @ReleaseLoanAppM5
    @ImplementedBy-tanya
    @Perishable
  Scenario Outline: <Field> <Type> is visible in identified property details screen of <ProductType> at <ApplicationStage> stage
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<InitialStage>" for "<category>" with "<key>" from application grid
    And user reads data from the excel file "property_details.xlsx" under sheet "home" and row 0
    And user opens the property details for "<InitialStage>" stage
    And user fills property details home page with "mandatory" fields for "Property Identified"
    And user saves the property details
    And user moves from "<InitialStage>" to application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" stage
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    When user opens the property details for "<ApplicationStage>" stage
    Then "<Field>" "<Type>" is displayed in property details home page
    Examples:
      | ProductType   | ApplicantType | InitialStage | ApplicationStage   | Field                      | Type     | category | key |
      | <ProductType> | indiv         | Lead Details | <ApplicationStage> | Collateral Number          | input    |          |     |
      | <ProductType> | indiv         | Lead Details | <ApplicationStage> | Global Collateral Number   | input    |          |     |
      | <ProductType> | indiv         | Lead Details | <ApplicationStage> | External Collateral Number | input    |          |     |
      | <ProductType> | indiv         | Lead Details | <ApplicationStage> | Application Type           | dropdown |          |     |
      | <ProductType> | indiv         | Lead Details | <ApplicationStage> | Collateral Sub Type        | dropdown |          |     |
      | <ProductType> | indiv         | Lead Details | <ApplicationStage> | Type Of Purchase           | dropdown |          |     |
      | <ProductType> | indiv         | Lead Details | <ApplicationStage> | Property Reference Number  | input    |          |     |
      | <ProductType> | indiv         | Lead Details | <ApplicationStage> | Property Description       | input    |          |     |
      | <ProductType> | indiv         | Lead Details | <ApplicationStage> | Current Usage              | dropdown |          |     |
      | <ProductType> | indiv         | Lead Details | <ApplicationStage> | Property Type              | dropdown |          |     |
      | <ProductType> | indiv         | Lead Details | <ApplicationStage> | Nature of Property         | dropdown |          |     |
      | <ProductType> | indiv         | Lead Details | <ApplicationStage> | Approximate Property Cost  | input    |          |     |
      | <ProductType> | indiv         | Lead Details | <ApplicationStage> | DownPayment Type           | dropdown |          |     |
      | <ProductType> | indiv         | Lead Details | <ApplicationStage> | Property Cost              | input    |          |     |
      | <ProductType> | indiv         | Lead Details | <ApplicationStage> | Percent Of Down Payment    | input    |          |     |
      | <ProductType> | indiv         | Lead Details | <ApplicationStage> | Down Payment               | input    |          |     |
      | <ProductType> | indiv         | Lead Details | <ApplicationStage> | Application Amount         | text     |          |     |
      | <ProductType> | indiv         | Lead Details | <ApplicationStage> | LCR (%)                    | text     |          |     |
      | <ProductType> | indiv         | Lead Details | <ApplicationStage> | LTV (%)                    | text     |          |     |
      | <ProductType> | indiv         | Lead Details | <ApplicationStage> | Property Cost Break-up     | button   |          |     |
      | <ProductType> | indiv         | Lead Details | <ApplicationStage> | Source Of Fund             | button   |          |     |

  # ${ProductType:["HL", "MHL", "IHF", "LAP"]}
  # ${ApplicationStage:["ICD"]}
  @Deferred
  Scenario Outline:<Field> <Type> is visible in identified property details screen of <ProductType> at <ApplicationStage> stage
    And user creates an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<InitialStage>" for "<category>" with "<key>" from web service
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<InitialStage>" for "<category>" with "<key>" from application grid
    And user reads data from the excel file "property_details.xlsx" under sheet "home" and row 125
    And user opens the property details for "<InitialStage>" stage
    And user fills property details home page with "mandatory" fields for "Property Identified"
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
    And user opens the property details for "<ApplicationStage>" stage
    Then "<Field>" "<Type>" is displayed in property details home page
    Examples:
      | ProductType   | ApplicantType | InitialStage | SubsequentStage | ApplicationStage   | Field                      | Type     | category | key |
      | <ProductType> | indiv         | Lead Details | Credit Approval | <ApplicationStage> | Collateral Number          | input    |          |     |
      | <ProductType> | indiv         | Lead Details | Credit Approval | <ApplicationStage> | Global Collateral Number   | input    |          |     |
      | <ProductType> | indiv         | Lead Details | Credit Approval | <ApplicationStage> | External Collateral Number | input    |          |     |
      | <ProductType> | indiv         | Lead Details | Credit Approval | <ApplicationStage> | Application Type           | dropdown |          |     |
      | <ProductType> | indiv         | Lead Details | Credit Approval | <ApplicationStage> | Collateral Sub Type        | dropdown |          |     |
      | <ProductType> | indiv         | Lead Details | Credit Approval | <ApplicationStage> | Type Of Purchase           | dropdown |          |     |
      | <ProductType> | indiv         | Lead Details | Credit Approval | <ApplicationStage> | Property Reference Number  | input    |          |     |
      | <ProductType> | indiv         | Lead Details | Credit Approval | <ApplicationStage> | Property Description       | input    |          |     |
      | <ProductType> | indiv         | Lead Details | Credit Approval | <ApplicationStage> | Current Usage              | dropdown |          |     |
      | <ProductType> | indiv         | Lead Details | Credit Approval | <ApplicationStage> | Property Type              | dropdown |          |     |
      | <ProductType> | indiv         | Lead Details | Credit Approval | <ApplicationStage> | Nature of Property         | dropdown |          |     |
      | <ProductType> | indiv         | Lead Details | Credit Approval | <ApplicationStage> | Approximate Property Cost  | input    |          |     |
      | <ProductType> | indiv         | Lead Details | Credit Approval | <ApplicationStage> | DownPayment Type           | dropdown |          |     |
      | <ProductType> | indiv         | Lead Details | Credit Approval | <ApplicationStage> | Property Cost              | input    |          |     |
      | <ProductType> | indiv         | Lead Details | Credit Approval | <ApplicationStage> | Percent Of Down Payment    | input    |          |     |
      | <ProductType> | indiv         | Lead Details | Credit Approval | <ApplicationStage> | Down Payment               | input    |          |     |
      | <ProductType> | indiv         | Lead Details | Credit Approval | <ApplicationStage> | Application Amount         | text     |          |     |
      | <ProductType> | indiv         | Lead Details | Credit Approval | <ApplicationStage> | LCR (%)                    | text     |          |     |
      | <ProductType> | indiv         | Lead Details | Credit Approval | <ApplicationStage> | LTV (%)                    | text     |          |     |
      | <ProductType> | indiv         | Lead Details | Credit Approval | <ApplicationStage> | Property Cost Break-up     | button   |          |     |
      | <ProductType> | indiv         | Lead Details | Credit Approval | <ApplicationStage> | Source Of Fund             | button   |          |     |

  # ${ProductType:["HL", "MHL", "IHF", "LAP"]}
  # ${ApplicationStage:["Post Approval", "Disbursal Author"]}
  @Release3
    @ReleaseLoanAppM5
    @ImplementedBy-tanya
    @Perishable
  Scenario Outline: Non editable <Field> <Type> is visible in identified property details screen at <ApplicationStage>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<InitialStage>" for "<category>" with "<key>" from application grid
    And user reads data from the excel file "property_details.xlsx" under sheet "home" and row 0
    And user opens the property details for "<InitialStage>" stage
    And user fills property details home page with "mandatory" fields for "Property Identified"
    And user saves the property details
    And user moves from "<InitialStage>" to application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" stage
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    When user opens the property details for "<ApplicationStage>" stage
    Then non editable "<Field>" "<Type>" is displayed in property details home page
    Examples:
      | ProductType   | ApplicantType | InitialStage | ApplicationStage   | Field                      | Type     | category | key |
      | <ProductType> | indiv         | Lead Details | <ApplicationStage> | Collateral Number          | input    |          |     |
      | <ProductType> | indiv         | Lead Details | <ApplicationStage> | Global Collateral Number   | input    |          |     |
      | <ProductType> | indiv         | Lead Details | <ApplicationStage> | External Collateral Number | input    |          |     |
      | <ProductType> | indiv         | Lead Details | <ApplicationStage> | Application Type           | dropdown |          |     |
      | <ProductType> | indiv         | Lead Details | <ApplicationStage> | Collateral Sub Type        | dropdown |          |     |
      | <ProductType> | indiv         | Lead Details | <ApplicationStage> | Type Of Purchase           | dropdown |          |     |
      | <ProductType> | indiv         | Lead Details | <ApplicationStage> | Property Reference Number  | input    |          |     |
      | <ProductType> | indiv         | Lead Details | <ApplicationStage> | Property Description       | input    |          |     |
      | <ProductType> | indiv         | Lead Details | <ApplicationStage> | Current Usage              | dropdown |          |     |
      | <ProductType> | indiv         | Lead Details | <ApplicationStage> | Property Type              | dropdown |          |     |
      | <ProductType> | indiv         | Lead Details | <ApplicationStage> | Nature Of Property         | dropdown |          |     |
      | <ProductType> | indiv         | Lead Details | <ApplicationStage> | Approximate Property Cost  | input    |          |     |
      | <ProductType> | indiv         | Lead Details | <ApplicationStage> | DownPayment Type           | dropdown |          |     |
      | <ProductType> | indiv         | Lead Details | <ApplicationStage> | Property Cost              | input    |          |     |
      | <ProductType> | indiv         | Lead Details | <ApplicationStage> | Percent Of Down Payment    | input    |          |     |
      | <ProductType> | indiv         | Lead Details | <ApplicationStage> | Down Payment               | input    |          |     |
      | <ProductType> | indiv         | Lead Details | <ApplicationStage> | Application Amount         | text     |          |     |
      | <ProductType> | indiv         | Lead Details | <ApplicationStage> | LCR %                      | text     |          |     |
      | <ProductType> | indiv         | Lead Details | <ApplicationStage> | LTV %                      | text     |          |     |
      | <ProductType> | indiv         | Lead Details | <ApplicationStage> | Property Cost Break-up     | button   |          |     |
      | <ProductType> | indiv         | Lead Details | <ApplicationStage> | Source Of Fund             | button   |          |     |

  # ${ProductType:["HL", "MHL", "IHF", "LAP"]}
  # ${ApplicationStage:["ICD"]}
  @Deferred
  Scenario Outline: <Field> is non editable in property details screen at ICD stage
    And user creates an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<InitialStage>" for "<category>" with "<key>" from web service
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<InitialStage>" for "<category>" with "<key>" from application grid
    And user reads data from the excel file "property_details.xlsx" under sheet "home" and row 125
    And user opens the property details for "<InitialStage>" stage
    And user fills property details home page with "mandatory" fields for "Property Identified"
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
    And user opens the property details for "<ApplicationStage>" stage
    Then "<Field>" is non editable in property details home page
    Examples:
      | ProductType   | ApplicantType | InitialStage | SubsequentStage | ApplicationStage   | Field                      | category | key |
      | <ProductType> | indiv         | Lead Details | Credit Approval | <ApplicationStage> | Collateral Number          |          |     |
      | <ProductType> | indiv         | Lead Details | Credit Approval | <ApplicationStage> | Global Collateral Number   |          |     |
      | <ProductType> | indiv         | Lead Details | Credit Approval | <ApplicationStage> | Percent Of Down Payment    |          |     |
      | <ProductType> | indiv         | Lead Details | Credit Approval | <ApplicationStage> | Down Payment               |          |     |
      | <ProductType> | indiv         | Lead Details | Credit Approval | <ApplicationStage> | External Collateral Number |          |     |
      | <ProductType> | indiv         | Lead Details | Credit Approval | <ApplicationStage> | Approximate Property Cost  |          |     |

  # ${ProductType:["HL", "MHL", "IHF", "LAP"]}
  # ${ApplicationStage:["Lead Details", "Login Acceptance", "DDE", "Credit Approval", "Recommendation", "Reconsideration", "Disbursal Initiation"]}
  @Release3
    @ReleaseLoanAppM5
    @ImplementedBy-tanya
    @Perishable
  Scenario Outline: <Field> is non editable in property details screen at <ApplicationStage> stage
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<InitialStage>" for "<category>" with "<key>" from application grid
    And user reads data from the excel file "property_details.xlsx" under sheet "home" and row 0
    And user opens the property details for "<InitialStage>" stage
    And user fills property details home page with "mandatory" fields for "Property Identified"
    And user saves the property details
    And user moves from "<InitialStage>" to application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" stage
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    When user opens the property details for "<ApplicationStage>" stage
    Then "<Field>" is non editable in property details home page
    Examples:
      | ProductType   | ApplicantType | InitialStage | ApplicationStage   | Field                      | category | key |
      | <ProductType> | indiv         | Lead Details | <ApplicationStage> | Collateral Number          |          |     |
      | <ProductType> | indiv         | Lead Details | <ApplicationStage> | Global Collateral Number   |          |     |
      | <ProductType> | indiv         | Lead Details | <ApplicationStage> | Percent Of Down Payment    |          |     |
      | <ProductType> | indiv         | Lead Details | <ApplicationStage> | Down Payment               |          |     |
      | <ProductType> | indiv         | Lead Details | <ApplicationStage> | External Collateral Number |          |     |
      | <ProductType> | indiv         | Lead Details | <ApplicationStage> | Approximate Property Cost  |          |     |

  #save & next button is not displayed after dde
  # ${ProductType:["HL", "MHL", "IHF", "LAP"]}
  # ${ApplicationStage:["Credit Approval", "Recommendation", "Reconsideration", "Post Approval", "Disbursal", "Disbursal Author"]}
  @Release3
    @ReleaseLoanAppM5
    @ImplementedBy-tanya
  Scenario Outline: Save & next button is not displayed in property details screen at <ApplicationStage> stage
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    When user opens the property details for "<ApplicationStage>" stage
    Then save & next button is not displayed
    Examples:
      | ProductType   | ApplicantType | ApplicationStage   | category | key |
      | <ProductType> | indiv         | <ApplicationStage> |          |     |

  #Tooltip Validation
  # ${ProductType:["HL", "MHL", "IHF", "LAP"]}
  # ${ApplicationStage:["Lead Details"]}
  @Release3
    @ReleaseLoanAppM5
    @ImplementedBy-tanya
    @LoggedBug
  Scenario Outline: Validate tooltip for fields in property details home page at lead details of <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens the property details for "<ApplicationStage>" stage
    And user selects application type as identified property
    Then tooltip for fields are displayed in property details home page
      | Collateral Number         |
      | Global Collateral Number  |
      | Application Type          |
      | Collateral Sub Type       |
      | Type Of Purchase          |
      | Property Reference Number |
      | Property Description      |
      | Current Usage             |
      | Property Type             |
      | Nature of Property        |
      | Approximate Property Cost |
      | DownPayment Type          |
      | Property Cost             |
      | Percent Of Down Payment   |
      | Down Payment              |
    Examples:
      | ProductType   | ApplicantType | ApplicationStage   | category | key |
      | <ProductType> | indiv         | <ApplicationStage> |          |     |
