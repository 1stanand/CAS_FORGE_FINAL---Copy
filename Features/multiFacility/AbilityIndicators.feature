@AuthoredBy-saloni.gupta
@TechReviewedBy-utkarsh.tiwari
@ImplementedBy-priyanshu.verma
#EpicID- CAS-253108
#StoryID- CAS-257232

#${ApplicantType: ["indiv", "nonindiv"]}

Feature: Facility-wise Ability Indicators Display

  Background: Given user is on the CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0

# Pre-Requisites-

 #Lob configured - Yes
 #This is applicable for product type  - Multi Facility
 #Deal exists
 #4 Facilities exists - Cash Credit, Bill discounting, Bank Guarantee, Letter of Credit

  #${ProductType:["MULF"]}
  #${ApplicationStage:["Credit Approval"]}
  Scenario Outline: Display ratios in rows and columns format
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    When the Ability Indicators section loads
    Then deal and each facility rows are displayed in the ability indicator ratios table

    Examples:
      | ApplicationStage   | ApplicantType   | Category | Key | ProductType   |
      | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |

  #${ProductType:["MULF"]}
  #${ApplicationStage:["Credit Approval"]}
  Scenario Outline: Mandatory ratios should be visible on Credit approval
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    When the Ability Indicators section loads
    Then ratio names will be displayed in table header of Ability Indicators section
      | Net LTV | Gross LTV | DBR | IIR | Aggregate LTV |
    Examples:
      | ApplicationStage   | ApplicantType   | Category | Key | ProductType   |
      | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |

  #${ProductType:["MULF"]}
  #${ApplicationStage:["Credit Approval"]}
  Scenario Outline: Display label for deal in first row
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    When the Ability Indicators section loads
    Then the system displays Deal in first row first column
    Examples:
      | ApplicationStage   | ApplicantType   | Category | Key | ProductType   |
      | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |

  #${ProductType:["MULF"]}
  #${ApplicationStage:["Credit Approval"]}
  Scenario Outline: Display product types for each facility
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    When the Ability Indicators section loads
    Then the system displays product types for facilities in first columns
      | Cash Credit      |
      | Bill Discounting |
      | Bank Guarantee   |
      | Letter of Credit |
    Examples:
      | ApplicationStage   | ApplicantType   | Category | Key | ProductType   |
      | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |

  #${ProductType:["CashCred","BD","BG","LC"]}
  #${ApplicationStage:["Tranche Approval"]}
  Scenario Outline: Display ratios in normal format
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    When the Ability Indicators section loads
    Then the system displays ratios in a single row at tranche approval
    Examples:
      | ApplicationStage   | ApplicantType   | Category | Key | ProductType   |
      | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |

  #${ProductType:["CashCred","BD","BG","LC"]}
  #${ApplicationStage:["Tranche Approval"]}
  Scenario Outline: Display Deal and Facility ratios for tranche
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    When the Ability Indicators section loads
    Then the ratios are displayed at tranche approval
      | Gross LTV | DBR | IIR | Aggregate LTV | Net LTV |
    Examples:
      | ApplicationStage   | ApplicantType   | Category | Key | ProductType   |
      | <ApplicationStage> | <ApplicantType> |          |     | <ProductType> |
 
  #${ProductType:["MULF"]}
  #${ApplicationStage:["App Update Recommendation, App Update Approval, Committee Approval, Review Application"]}
  Scenario Outline: Ability Indicators UI with sub-sections
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And the Ability Indicators accordion is expanded
    Then the system displays sub-section of each "<Entity>"
    Examples:
      | ApplicationStage   | ApplicantType   | Category | Key | Entity           | ProductType   |
      | <ApplicationStage> | <ApplicantType> |          |     | Cash Credit      | <ProductType> |
      | <ApplicationStage> | <ApplicantType> |          |     | Bill Discounting | <ProductType> |
      | <ApplicationStage> | <ApplicantType> |          |     | Bank Guarantee   | <ProductType> |
      | <ApplicationStage> | <ApplicantType> |          |     | Letter of Credit | <ProductType> |

  #${ProductType:["MULF"]}
  #${ApplicationStage:["App Update Recommendation, App Update Approval, Committee Approval, Review Application"]}
  Scenario Outline: Sub-accordion labeling format
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    When the user expands the sub-accordion for "<Entity>"
    Then the accordion label appears as "<Entity>"Name("<Facility ID>") for facility
    Examples:
      | ApplicationStage   | ApplicantType   | Category | Key | Entity           | Facility ID   | ProductType   |
      | <ApplicationStage> | <ApplicantType> |          |     | Cash Credit      | <Facility ID> | <ProductType> |
      | <ApplicationStage> | <ApplicantType> |          |     | Bill discounting | <Facility ID> | <ProductType> |
      | <ApplicationStage> | <ApplicantType> |          |     | Bank Guarantee   | <Facility ID> | <ProductType> |
      | <ApplicationStage> | <ApplicantType> |          |     | Letter of Credit | <Facility ID> | <ProductType> |

  #${ProductType:["MULF"]}
  #${ApplicationStage:["App Update Recommendation, App Update Approval, Committee Approval, Review Application"]}
  Scenario Outline: Facility wise details display
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    When the user expands the sub-accordion for "<Entity>"
    Then the ratios should be displayed for "<Entity>" in sub-accordion
      | Gross LTV     |
      | DBR           |
      | IIR           |
      | Aggregate LTV |
      | Net LTV       |
    Examples:
      | ApplicationStage   | ApplicantType   | Category | Key | Entity           | ProductType   |
      | <ApplicationStage> | <ApplicantType> |          |     | Cash Credit      | <ProductType> |
      | <ApplicationStage> | <ApplicantType> |          |     | Bill discounting | <ProductType> |
      | <ApplicationStage> | <ApplicantType> |          |     | Bank Guarantee   | <ProductType> |
      | <ApplicationStage> | <ApplicantType> |          |     | Letter of Credit | <ProductType> |