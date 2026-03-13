@Epic-CPR
@PQMStory
@AuthoredBy-aniket.tripathi
@ImplementedBy-aniket.tripathi

# ${ApplicantType:["indiv", "nonindiv"]}
Feature: Opt in_out & Consent Sharing Applicant Information

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0

   # PQM-1_CAS-211262
  #FeatureID-ACAUTOCAS-15335
  @Islamic
   
@Release
  Scenario Outline: ACAUTOCAS-16289: Applicant information should be save successfully in case of new applicant for consent sharing for <Loan_Type> finance type
    When user create new application for "<Loan_Type>"
    And user reads data from the excel file "personal_information_end_flow.xlsx" under sheet "home" and row 0
    And user enters personal information details
    And user clicks on proceed
    And user fills identification details on personal information
      | personal_information_end_flow.xlsx | identification_details | 2 |
    And user enters address details on personal information
      | personal_information_end_flow.xlsx | address_details | 0 |
    And user checks for duplicates
    Then Applicant information should be saved successfully
    Examples:
      | Loan_Type        |
      | Personal Finance |
      | Home Finance     |
      | Auto Finance     |

   # PQM-1_CAS-211262
  #FeatureID-ACAUTOCAS-15335
  Scenario Outline: ACAUTOCAS-16290: Applicant information should be save successfully in case of update applicant for consent sharing for <ProductType> product type with <ApplicationStage> stage
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    When user opens applicant information page of "<ApplicationStage>"
    And click on view edit detailed info
    And user checks for duplicates
    Then Applicant information should be saved successfully
    
#    @Release
## ${ProductType : ["PF","MAL","HL","LAP","CV","MHL","FE","EDU","AGRL","JLG","CEQ","MULF","BD","CashCred","BL","LC","BG"]}
## ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Credit Approval"]}
#    Examples:
#      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key |
#      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |

    @Islamic
@Release
# ${ProductType:["IPF"]}
# ${Category:["bonds","metals","shares"]}
# ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Credit Approval"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     |

    @Islamic
@Release
#${ProductType:["IAF","IHF"]}
# ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Credit Approval"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |

   # PQM-2_CAS-211262
   #FeatureID-ACAUTOCAS-15335
  Scenario Outline: ACAUTOCAS-16291: communication details tab should be open for <ProductType> product type with <ApplicationStage> stage
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens applicant information page of "<ApplicationStage>"
    And click on view edit detailed info
    When user open Communication Details accordion
    Then communication details tab should be open successfully
    
#    @Release
## ${ProductType : ["PF","MAL","HL","LAP","CV","MHL","FE","EDU","AGRL","JLG","CEQ","MULF","BD","CashCred","BL","LC","BG"]}
## ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Credit Approval"]}
#    Examples:
#      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key |
#      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |

    @Islamic
   
@Release
# ${ProductType:["IPF"]}
# ${Category:["bonds","metals","shares"]}
# ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Credit Approval"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     |

    @Islamic
   
@Release
#${ProductType:["IAF","IHF"]}
# ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Credit Approval"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |

   # PQM-3_CAS-211262
  #FeatureID-ACAUTOCAS-15335
  Scenario Outline: ACAUTOCAS-16292: Allow Promotional Activity should be visible for <ProductType> product type with <ApplicationStage> stage
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens applicant information page of "<ApplicationStage>"
    And click on view edit detailed info
    And user open Communication Details accordion
    When user checks Allow Promotional Activity checkbox
    And user reads data from the excel file "personal_information.xlsx" under sheet "communication_details" and row 24
    Then Allow Promotional Activity should be visible
    
#    @Release
## ${ProductType : ["PF","MAL","HL","LAP","CV","MHL","FE","EDU","AGRL","JLG","CEQ","MULF","BD","CashCred","BL","LC","BG"]}
## ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Credit Approval"]}
#    Examples:
#      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key |
#      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |

    @Islamic
   
@Release
# ${ProductType:["IPF"]}
# ${Category:["bonds","metals","shares"]}
# ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Credit Approval"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     |

    @Islamic
   
@Release
#${ProductType:["IAF","IHF"]}
# ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Credit Approval"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |

  # PQM-4_CAS-211262
  #FeatureID-ACAUTOCAS-15335
  Scenario Outline: ACAUTOCAS-16293: Allow Promotional Activity should not be visible for <ProductType> product type with <ApplicationStage> stage
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens applicant information page of "<ApplicationStage>"
    And click on view edit detailed info
    When user clicks on required button
    And user open Communication Details accordion
    And user reads data from the excel file "personal_information.xlsx" under sheet "communication_details" and row 0
    Then Allow Promotional Activity should not be visible
    
#    @Release
## ${ProductType : ["PF","MAL","HL","LAP","CV","MHL","FE","EDU","AGRL","JLG","CEQ","MULF","BD","CashCred","BL","LC","BG"]}
## ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Credit Approval"]}
#    Examples:
#      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key |
#      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |

    @Islamic
   
@Release
# ${ProductType:["IPF"]}
# ${Category:["bonds","metals","shares"]}
# ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Credit Approval"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     |

    @Islamic
   
@Release
#${ProductType:["IAF","IHF"]}
# ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Credit Approval"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |

   # PQM-5_CAS-211262
    #FeatureID-ACAUTOCAS-15335
Scenario Outline: ACAUTOCAS-17419: Allow Promotional Calls checkbox should be renamed to Allow Promotional Activity by default checkbox should be unticked for <ProductType> product type with <ApplicationStage> stage
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens applicant information page of "<ApplicationStage>"
    And click on view edit detailed info
    When user open Communication Details accordion
    And user reads data from the excel file "personal_information.xlsx" under sheet "communication_details" and row 24
    Then Allow Promotional Calls checkbox should be renamed to Allow Promotional Activity
    
#    @Release
## ${ProductType : ["PF","MAL","HL","LAP","CV","MHL","FE","EDU","AGRL","JLG","CEQ","MULF","BD","CashCred","BL","LC","BG"]}
## ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Credit Approval"]}
#    Examples:
#      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key |
#      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |

    @Islamic
   
@Release
# ${ProductType:["IPF"]}
# ${Category:["bonds","metals","shares"]}
# ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Credit Approval"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     |

    @Islamic
   
@Release
#${ProductType:["IAF","IHF"]}
# ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Credit Approval"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |

    #FeatureID-ACAUTOCAS-15335
Scenario Outline: ACAUTOCAS-17420: Allow Promotional Calls checkbox by default checkbox should be unticked for <ProductType> product type with <ApplicationStage> stage
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens applicant information page of "<ApplicationStage>"
    And click on view edit detailed info
    When user open Communication Details accordion
    And user reads data from the excel file "personal_information.xlsx" under sheet "communication_details" and row 27
    Then Allow Promotional Activity by default checkbox should be unticked
    
#    @Release
## ${ProductType : ["PF","MAL","HL","LAP","CV","MHL","FE","EDU","AGRL","JLG","CEQ","MULF","BD","CashCred","BL","LC","BG"]}
## ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Credit Approval"]}
#    Examples:
#      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key |
#      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |

    @Islamic
   
@Release
# ${ProductType:["IPF"]}
# ${Category:["bonds","metals","shares"]}
# ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Credit Approval"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     |

    @Islamic
   
@Release
#${ProductType:["IAF","IHF"]}
# ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Credit Approval"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |

   # PQM-6_CAS-211262
   #FeatureID-ACAUTOCAS-15335
Scenario Outline: ACAUTOCAS-17421: Mode of Promotion should appear after Allow Promotional Activity for <ProductType> product type with <ApplicationStage> stage
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens applicant information page of "<ApplicationStage>"
    And click on view edit detailed info
    And user open Communication Details accordion
    When user checks Allow Promotional Activity checkbox
    And user reads data from the excel file "personal_information.xlsx" under sheet "communication_details" and row 27
    Then mode of promotion should appear after Allow Promotional Activity
    
#    @Release
## ${ProductType : ["PF","MAL","HL","LAP","CV","MHL","FE","EDU","AGRL","JLG","CEQ","MULF","BD","CashCred","BL","LC","BG"]}
## ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Credit Approval"]}
#    Examples:
#      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key |
#      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |

    @Islamic
   
@Release
  @5FebM5Fix
# ${ProductType:["IPF"]}
# ${Category:["bonds","metals","shares"]}
# ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Credit Approval"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     |

    @Islamic
   
@Release
  @5FebM5Fix
#${ProductType:["IAF","IHF"]}
# ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Credit Approval"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |

# PQM-6_CAS-211262
#FeatureID-ACAUTOCAS-15335
Scenario Outline: ACAUTOCAS-17422: Consent for Sharing Information should appear after Allow Promotional Activity for <ProductType> product type with <ApplicationStage> stage
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens applicant information page of "<ApplicationStage>"
    And click on view edit detailed info
    And user open Communication Details accordion
    When user checks Allow Promotional Activity checkbox
    And user reads data from the excel file "personal_information.xlsx" under sheet "communication_details" and row 24
    Then consent for sharing information should appear after Allow Promotional Activity
    
#    @Release
## ${ProductType : ["PF","MAL","HL","LAP","CV","MHL","FE","EDU","AGRL","JLG","CEQ","MULF","BD","CashCred","BL","LC","BG"]}
## ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Credit Approval"]}
#    Examples:
#      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key |
#      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |

    @Islamic
   
@Release
  @5FebM5Fix
# ${ProductType:["IPF"]}
# ${Category:["bonds","metals","shares"]}
# ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Credit Approval"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     |

    @Islamic
   
@Release
  @5FebM5Fix
#${ProductType:["IAF","IHF"]}
# ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Credit Approval"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |

   # PQM-7_CAS-211262
  #FeatureID-ACAUTOCAS-15335
Scenario Outline: ACAUTOCAS-17423: Dropdown Should appear for the preferred days to call text box below Promotional Activity checkbox for <ProductType> product type with <ApplicationStage> stage
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens applicant information page of "<ApplicationStage>"
    And click on view edit detailed info
    And user open Communication Details accordion
    When user checks Allow Promotional Activity checkbox
    And user reads data from the excel file "personal_information.xlsx" under sheet "communication_details" and row 24
    And user selects the mode of promotion as phone call
    And user reads data from the excel file "personal_information.xlsx" under sheet "communication_details" and row 24
    Then Dropdown Should appears for the preferred days to call text box below Promotional Activity checkbox
    
#    @Release
## ${ProductType : ["PF","MAL","HL","LAP","CV","MHL","FE","EDU","AGRL","JLG","CEQ","MULF","BD","CashCred","BL","LC","BG"]}
## ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Credit Approval"]}
#    Examples:
#      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key |
#      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |

    @Islamic
   
@Release
  @5FebM5Fix
# ${ProductType:["IPF"]}
# ${Category:["bonds","metals","shares"]}
# ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Credit Approval"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     |

    @Islamic
   
@Release
  @5FebM5Fix
#${ProductType:["IAF","IHF"]}
# ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Credit Approval"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |

   # PQM-7_CAS-211262
  #FeatureID-ACAUTOCAS-15335
Scenario Outline: ACAUTOCAS-17424: Dropdown Should appears for the time to call text box below Promotional Activity checkbox for <ProductType> product type with <ApplicationStage> stage
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens applicant information page of "<ApplicationStage>"
    And click on view edit detailed info
    And user open Communication Details accordion
    When user checks Allow Promotional Activity checkbox
    And user reads data from the excel file "personal_information.xlsx" under sheet "communication_details" and row 24
    And user selects the mode of promotion as phone call
    And user reads data from the excel file "personal_information.xlsx" under sheet "communication_details" and row 25
    Then Dropdown Should appears for the time to call text box below Promotional Activity checkbox
    
#    @Release
## ${ProductType : ["PF","MAL","HL","LAP","CV","MHL","FE","EDU","AGRL","JLG","CEQ","MULF","BD","CashCred","BL","LC","BG"]}
## ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Credit Approval"]}
#    Examples:
#      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key |
#      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |

    @Islamic
   
@Release
# ${ProductType:["IPF"]}
# ${Category:["bonds","metals","shares"]}
# ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Credit Approval"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     |

    @Islamic
   
@Release
#${ProductType:["IAF","IHF"]}
# ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Credit Approval"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |

   # PQM-7_CAS-211262
  #FeatureID-ACAUTOCAS-15335
  Scenario Outline: ACAUTOCAS-17425: Dropdown Should appears for time not to call text box below Promotional Activity checkbox for <ProductType> product type with <ApplicationStage> stage
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens applicant information page of "<ApplicationStage>"
    And click on view edit detailed info
    And user open Communication Details accordion
    When user checks Allow Promotional Activity checkbox
    And user reads data from the excel file "personal_information.xlsx" under sheet "communication_details" and row 24
    And user selects the mode of promotion as phone call
    And user reads data from the excel file "personal_information.xlsx" under sheet "communication_details" and row 26
    Then Dropdown Should appears for time not to call text box below Promotional Activity checkbox
#
#    @Release
## ${ProductType : ["PF","MAL","HL","LAP","CV","MHL","FE","EDU","AGRL","JLG","CEQ","MULF","BD","CashCred","BL","LC","BG"]}
## ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Credit Approval"]}
#    Examples:
#      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key |
#      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |

    @Islamic
   
@Release
# ${ProductType:["IPF"]}
# ${Category:["bonds","metals","shares"]}
# ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Credit Approval"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     |

    @Islamic
   
@Release
#${ProductType:["IAF","IHF"]}
# ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Credit Approval"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |

   # PQM-8_CAS-211262
  #FeatureID-ACAUTOCAS-15335
  Scenario Outline: ACAUTOCAS-17426: Mode of promotion should be mandatory for <ProductType> product type with <ApplicationStage> stage
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens applicant information page of "<ApplicationStage>"
    And click on view edit detailed info
    And user open Communication Details accordion
    When user checks Allow Promotional Activity checkbox
    And user saves the applicant information details
    And user reads data from the excel file "personal_information.xlsx" under sheet "communication_details" and row 24
    Then Mode of promotion should be mandatory
    
#    @Release
## ${ProductType : ["PF","MAL","HL","LAP","CV","MHL","FE","EDU","AGRL","JLG","CEQ","MULF","BD","CashCred","BL","LC","BG"]}
## ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Credit Approval"]}
#    Examples:
#      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key |
#      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |

    @Islamic
   
@Release
# ${ProductType:["IPF"]}
# ${Category:["bonds","metals","shares"]}
# ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Credit Approval"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     |

    @Islamic
   
@Release
#${ProductType:["IAF","IHF"]}
# ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Credit Approval"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |

   # PQM-11_CAS-211262
    #FeatureID-ACAUTOCAS-15335
  Scenario Outline: ACAUTOCAS-17427: Email Address Phone Call and SMS should be present in drop down for <ProductType> product type with <ApplicationStage> stage
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens applicant information page of "<ApplicationStage>"
    And click on view edit detailed info
    And user open Communication Details accordion
    When user checks Allow Promotional Activity checkbox
    Then "<field>" should be present in mode of promotion drop down
    
#    @Release
## ${ProductType : ["PF","MAL","HL","LAP","CV","MHL","FE","EDU","AGRL","JLG","CEQ","MULF","BD","CashCred","BL","LC","BG"]}
## ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Credit Approval"]}
#    Examples:
#      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | field         |
#      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Phone Call    |
#      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | SMS           |
#      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Email Address |

    @Islamic
   
@Release
# ${ProductType:["IPF"]}
# ${Category:["bonds","metals","shares"]}
# ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Credit Approval"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | Key | field         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Phone Call    |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | SMS           |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Email Address |

    @Islamic
   
@Release
#${ProductType:["IAF","IHF"]}
# ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Credit Approval"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | field         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Phone Call    |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | SMS           |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Email Address |

       # PQM-12_CAS-211262
      #FeatureID-ACAUTOCAS-15335
  Scenario Outline: ACAUTOCAS-17428: user should be able to select multiple values for <ProductType> product type with <ApplicationStage> stage
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens applicant information page of "<ApplicationStage>"
    And click on view edit detailed info
    And user open Communication Details accordion
    When user checks Allow Promotional Activity checkbox
    And user reads data from the excel file "personal_information.xlsx" under sheet "communication_details" and row 25
    And user selects the mode of promotion with multiple values
    Then user should be able to select multiple values
    
#    @Release
## ${ProductType : ["PF","MAL","HL","LAP","CV","MHL","FE","EDU","AGRL","JLG","CEQ","MULF","BD","CashCred","BL","LC","BG"]}
## ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Credit Approval"]}
#    Examples:
#      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key |
#      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |

    @Islamic
   
@Release
# ${ProductType:["IPF"]}
# ${Category:["bonds","metals","shares"]}
# ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Credit Approval"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     |

    @Islamic
   
@Release
#${ProductType:["IAF","IHF"]}
# ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Credit Approval"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |

       # PQM-13_CAS-211262
        #FeatureID-ACAUTOCAS-15335
  Scenario Outline: ACAUTOCAS-17429: preferred time to call grid should be hidden for <ProductType> product type with <ApplicationStage> stage
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens applicant information page of "<ApplicationStage>"
    And click on view edit detailed info
    And user open Communication Details accordion
    And user checks Allow Promotional Activity checkbox
    And user reads data from the excel file "personal_information.xlsx" under sheet "communication_details" and row 24
    And user selects the mode of promotion as phone call
    When user clicks on required button on personal information
    Then preferred time to call grid should be hidden
    
#    @Release
## ${ProductType : ["PF","MAL","HL","LAP","CV","MHL","FE","EDU","AGRL","JLG","CEQ","MULF","BD","CashCred","BL","LC","BG"]}
## ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Credit Approval"]}
#    Examples:
#      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key |
#      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |

    @Islamic
   
@Release
# ${ProductType:["IPF"]}
# ${Category:["bonds","metals","shares"]}
# ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Credit Approval"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     |

    @Islamic
   
@Release
#${ProductType:["IAF","IHF"]}
# ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Credit Approval"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |

       # PQM-14_CAS-211262
          #FeatureID-ACAUTOCAS-15335
  Scenario Outline: ACAUTOCAS-17430: Primary mobile number field already present for <ProductType> product type with <ApplicationStage> stage
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens applicant information page of "<ApplicationStage>"
    And click on view edit detailed info
    And user open Communication Details accordion
    And user checks Allow Promotional Activity checkbox
    And user reads data from the excel file "personal_information.xlsx" under sheet "communication_details" and row 26
    When user selects the mode of promotion as SMS
    Then Primary mobile number field already present
    
#    @Release
## ${ProductType : ["PF","MAL","HL","LAP","CV","MHL","FE","EDU","AGRL","JLG","CEQ","MULF","BD","CashCred","BL","LC","BG"]}
## ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Credit Approval"]}
#    Examples:
#      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key |
#      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |

    @Islamic
   
@Release
# ${ProductType:["IPF"]}
# ${Category:["bonds","metals","shares"]}
# ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Credit Approval"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     |

    @Islamic
   
@Release
#${ProductType:["IAF","IHF"]}
# ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Credit Approval"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |

  # PQM-15_CAS-211262
  #FeatureID-ACAUTOCAS-15335
  Scenario Outline: ACAUTOCAS-17431: User should get proper error message for <ProductType> product type with <ApplicationStage> stage
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens applicant information page of "<ApplicationStage>"
    And click on view edit detailed info
    And user open Communication Details accordion
    When user try to save applicant details without filling primary phone number in communication details
    And user saves the applicant information details
    And user reads data from the excel file "personal_information.xlsx" under sheet "communication_details" and row 0
    Then User should get proper error message for primary mobile number
    
#    @Release
## ${ProductType : ["PF","MAL","HL","LAP","CV","MHL","FE","EDU","AGRL","JLG","CEQ","MULF","BD","CashCred","BL","LC","BG"]}
## ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Credit Approval"]}
#    Examples:
#      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key |
#      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |

    @Islamic
   
@Release
# ${ProductType:["IPF"]}
# ${Category:["bonds","metals","shares"]}
# ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Credit Approval"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     |

    @Islamic
   
@Release
#${ProductType:["IAF","IHF"]}
# ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Credit Approval"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |

       # PQM-16_CAS-211262
    #FeatureID-ACAUTOCAS-15335
  Scenario Outline: ACAUTOCAS-17432: email address should be mandatory for <ProductType> product type with <ApplicationStage> stage
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens applicant information page of "<ApplicationStage>"
    And click on view edit detailed info
    And user open Communication Details accordion
    And user checks Allow Promotional Activity checkbox
    And user reads data from the excel file "personal_information.xlsx" under sheet "communication_details" and row 24
    When user select email as Mode of Promotion
    And user reads data from the excel file "personal_information.xlsx" under sheet "communication_details" and row 1
    And user select consent for information sharing section
    And user click on save button without filling email address
    And user saves the applicant information details
    And user reads data from the excel file "personal_information.xlsx" under sheet "communication_details" and row 1
    Then email address should be mandatory for communication details
    
#    @Release
## ${ProductType : ["PF","MAL","HL","LAP","CV","MHL","FE","EDU","AGRL","JLG","CEQ","MULF","BD","CashCred","BL","LC","BG"]}
## ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Credit Approval"]}
#    Examples:
#      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key |
#      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |

    @Islamic
   
    @Release
# ${ProductType:["IPF"]}
# ${Category:["bonds","metals","shares"]}
# ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Credit Approval"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     |

    @Islamic
   
@Release
#${ProductType:["IAF","IHF"]}
# ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Credit Approval"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |

   # PQM-17_CAS-211262
   #FeatureID-ACAUTOCAS-15335
  Scenario Outline: ACAUTOCAS-17433: email address should be visible for <ProductType> product type with <ApplicationStage> stage
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens applicant information page of "<ApplicationStage>"
    And click on view edit detailed info
    And user open Communication Details accordion
    And user checks Allow Promotional Activity checkbox
    When user clicks on required button on personal information
    Then email address should be visible on communication details
    
#    @Release
## ${ProductType : ["PF","MAL","HL","LAP","CV","MHL","FE","EDU","AGRL","JLG","CEQ","MULF","BD","CashCred","BL","LC","BG"]}
## ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Credit Approval"]}
#    Examples:
#      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key |
#      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |

    @Islamic
   
@Release
# ${ProductType:["IPF"]}
# ${Category:["bonds","metals","shares"]}
# ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Credit Approval"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     |

    @Islamic
   
@Release
#${ProductType:["IAF","IHF"]}
# ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Credit Approval"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |

   # PQM-18_CAS-211262
   #FeatureID-ACAUTOCAS-15335
  Scenario Outline: ACAUTOCAS-17434: Proper validation should come that for mode of Promotion Email Primary Email Id is mandatory for <ProductType> product type with <ApplicationStage> stage
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens applicant information page of "<ApplicationStage>"
    And click on view edit detailed info
    And user open Communication Details accordion
    And user checks Allow Promotional Activity checkbox
    And user reads data from the excel file "personal_information.xlsx" under sheet "communication_details" and row 27
    When user select email as Mode of Promotion
    And user reads data from the excel file "personal_information.xlsx" under sheet "communication_details" and row 1
    And user select consent for information sharing section
    And user click on save button without filling email address
    And user saves the applicant information details
    And user reads data from the excel file "personal_information.xlsx" under sheet "communication_details" and row 1
    Then email address should be mandatory for communication details
    
#    @Release
## ${ProductType : ["PF","MAL","HL","LAP","CV","MHL","FE","EDU","AGRL","JLG","CEQ","MULF","BD","CashCred","BL","LC","BG"]}
## ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Credit Approval"]}
#    Examples:
#      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key |
#      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |

    @Islamic
   
@Release
# ${ProductType:["IPF"]}
# ${Category:["bonds","metals","shares"]}
# ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Credit Approval"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     |

    @Islamic
   
@Release
#${ProductType:["IAF","IHF"]}
# ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Credit Approval"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |

     # PQM-19_CAS-211262
     #FeatureID-ACAUTOCAS-15335
  Scenario Outline: ACAUTOCAS-17435: Proper validation should come that for mode of promotion Phone Call Primary Mobile Number is mandatory for <ProductType> product type with <ApplicationStage> stage
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens applicant information page of "<ApplicationStage>"
    And click on view edit detailed info
    And user open Communication Details accordion
    And user checks Allow Promotional Activity checkbox
    And user reads data from the excel file "personal_information.xlsx" under sheet "communication_details" and row 24
    And user selects the mode of promotion as phone call
    When user click on save button without filling phone number
    And user saves the applicant information details
    And user reads data from the excel file "personal_information.xlsx" under sheet "communication_details" and row 0
    Then User should get proper error message for primary mobile number
    
#    @Release
## ${ProductType : ["PF","MAL","HL","LAP","CV","MHL","FE","EDU","AGRL","JLG","CEQ","MULF","BD","CashCred","BL","LC","BG"]}
## ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Credit Approval"]}
#    Examples:
#      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key |
#      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |

    @Islamic
   
@Release
# ${ProductType:["IPF"]}
# ${Category:["bonds","metals","shares"]}
# ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Credit Approval"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     |

    @Islamic
   
@Release
#${ProductType:["IAF","IHF"]}
# ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Credit Approval"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |

         # PQM-19_CAS-211262
     #FeatureID-ACAUTOCAS-15335
  Scenario Outline: ACAUTOCAS-17436: Proper validation should come that for mode of promotion SMS Primary Mobile Number is mandatory for <ProductType> product type with <ApplicationStage> stage
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens applicant information page of "<ApplicationStage>"
    And click on view edit detailed info
    And user open Communication Details accordion
    And user checks Allow Promotional Activity checkbox
    And user reads data from the excel file "personal_information.xlsx" under sheet "communication_details" and row 26
    And user selects the mode of promotion as SMS
    When user click on save button without filling phone number
    And user saves the applicant information details
    And user reads data from the excel file "personal_information.xlsx" under sheet "communication_details" and row 0
    Then User should get proper error message for primary mobile number
    
#    @Release
## ${ProductType : ["PF","MAL","HL","LAP","CV","MHL","FE","EDU","AGRL","JLG","CEQ","MULF","BD","CashCred","BL","LC","BG"]}
## ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Credit Approval"]}
#    Examples:
#      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key |
#      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |

    @Islamic
   
@Release
# ${ProductType:["IPF"]}
# ${Category:["bonds","metals","shares"]}
# ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Credit Approval"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     |

    @Islamic
   
@Release
#${ProductType:["IAF","IHF"]}
# ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Credit Approval"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |

       # PQM-20_CAS-211262
       #FeatureID-ACAUTOCAS-15335
  Scenario Outline: ACAUTOCAS-17437: Consent for Sharing Information should be mandatory for <ProductType> product type with <ApplicationStage> stage
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens applicant information page of "<ApplicationStage>"
    And click on view edit detailed info
    And user open Communication Details accordion
    And user checks Allow Promotional Activity checkbox
    And user reads data from the excel file "personal_information.xlsx" under sheet "communication_details" and row 26
    When user selects the mode of promotion as SMS
    And user saves the applicant information details
    And user reads data from the excel file "personal_information.xlsx" under sheet "communication_details" and row 23
    Then Consent for Sharing Information should be mandatory
    
#    @Release
## ${ProductType : ["PF","MAL","HL","LAP","CV","MHL","FE","EDU","AGRL","JLG","CEQ","MULF","BD","CashCred","BL","LC","BG"]}
## ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Credit Approval"]}
#    Examples:
#      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key |
#      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |

    @Islamic
   
@Release
# ${ProductType:["IPF"]}
# ${Category:["bonds","metals","shares"]}
# ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Credit Approval"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     |

    @Islamic
   
@Release
#${ProductType:["IAF","IHF"]}
# ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Credit Approval"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |

    # PQM-21_CAS-211262
    #FeatureID-ACAUTOCAS-15335
  Scenario Outline: ACAUTOCAS-17438: Validation message should come and any other validation message should be come in next line for <ProductType> product type with <ApplicationStage> stage
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens applicant information page of "<ApplicationStage>"
    And click on view edit detailed info
    And user open Communication Details accordion
    When user checks Allow Promotional Activity checkbox
    And user saves the applicant information details
    And user reads data from the excel file "personal_information.xlsx" under sheet "communication_details" and row 24
    Then Validation message should come and any other validation message should be come in next line
    
#    @Release
## ${ProductType : ["PF","MAL","HL","LAP","CV","MHL","FE","EDU","AGRL","JLG","CEQ","MULF","BD","CashCred","BL","LC","BG"]}
## ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Credit Approval"]}
#    Examples:
#      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key |
#      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |

    @Islamic
   
@Release
# ${ProductType:["IPF"]}
# ${Category:["bonds","metals","shares"]}
# ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Credit Approval"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     |

    @Islamic
   
@Release
#${ProductType:["IAF","IHF"]}
# ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Credit Approval"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |

     # PQM-22_CAS-211262
     # PQM-23_CAS-211262
      #FeatureID-ACAUTOCAS-15335
  Scenario Outline: ACAUTOCAS-17439: In Dropdown values should be appear for Consent for Sharing Information for <ProductType> product type with <ApplicationStage> stage
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens applicant information page of "<ApplicationStage>"
    And click on view edit detailed info
    And user open Communication Details accordion
    When user checks Allow Promotional Activity checkbox
    And user reads data from the excel file "personal_information.xlsx" under sheet "communication_details" and row <rowNum>
    And user select consent for information sharing section
    Then In Dropdown values should be appear for Consent for Sharing Information
    
#    @Release
## ${ProductType : ["PF","MAL","HL","LAP","CV","MHL","FE","EDU","AGRL","JLG","CEQ","MULF","BD","CashCred","BL","LC","BG"]}
## ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Credit Approval"]}
#    Examples:
#      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | rowNum |
#      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | 24     |
#      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | 25     |
#      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | 26     |

    @Islamic
   
@Release
# ${ProductType:["IPF"]}
# ${Category:["bonds","metals","shares"]}
# ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Credit Approval"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | Key | rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | 24     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | 25     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | 26     |

    @Islamic
   
@Release
# ${ProductType:["IAF","IHF"]}
# ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Credit Approval"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | 24     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | 25     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | 26     |

       # PQM-32_CAS-211262
        #FeatureID-ACAUTOCAS-15335
  Scenario Outline: ACAUTOCAS-17440: Miscellaneous Information tab at Disbursal Stage should be present for <ProductType> product type with <ApplicationStage> stage
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    When user check Miscellaneous Information tab at Disbursal Stage
    And user reads data from the excel file "personal_information.xlsx" under sheet "communication_details" and row 1
    Then Miscellaneous Information tab at Disbursal Stage should be present
    
#    @Release
## ${ProductType : ["PF","MAL","HL","LAP","CV","MHL","FE","EDU","AGRL","JLG","CEQ","MULF","BD","CashCred","BL","LC","BG"]}
## ${ApplicationStage:["Disbursal"]}
#    Examples:
#      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key |
#      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |

    @Islamic
   
@Release
#${ProductType:["IPF"]}
#${Category:["bonds","metals"]}
#${ApplicationStage:["Disbursal"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | Key         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |             |
      | IPF           | indiv           | Reconsideration    | Shares     | isDisbursal |

    @Islamic
   
@Release
#${ProductType:["IAF","IHF"]}
# ${ApplicationStage:["Disbursal"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |

   # PQM-33_CAS-211262
   #FeatureID-ACAUTOCAS-15335
  Scenario Outline: ACAUTOCAS-17441: Communication section in Miscellaneous Information tab at Disbursal Stage should be present for <ProductType> product type
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    When user check Miscellaneous Information tab at Disbursal Stage
    And user reads data from the excel file "personal_information.xlsx" under sheet "communication_details" and row 24
    Then Communication section in Miscellaneous Information tab at Disbursal Stage should be present
    
#    @Release
## ${ProductType : ["PF","MAL","HL","LAP","CV","MHL","FE","EDU","AGRL","JLG","CEQ","MULF","BD","CashCred","BL","LC","BG"]}
## ${ApplicationStage:["Disbursal"]}
#    Examples:
#      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key |
#      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |

    @Islamic
   
@Release
# ${ProductType:["IPF"]}
# ${Category:["bonds","metals"]}
# ${ApplicationStage:["Disbursal"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | Key         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |             |
      | IPF           | indiv           | Reconsideration    | Shares     | isDisbursal |


    @Islamic
   
@Release
# ${ProductType:["IAF","IHF"]}
# ${ApplicationStage:["Disbursal"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |

     # PQM-37_CAS-211262
     #FeatureID-ACAUTOCAS-15335
  Scenario Outline: ACAUTOCAS-17442: In table following values should be present Select Allcheckbox Applicant Name Applicant Type Status Host CIF ID for <ProductType> product type with <ApplicationStage> stage
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    When user check Miscellaneous Information tab at Disbursal Stage
    Then applicant details "<fieldName>" field should be present
    
#    @Release
## ${ProductType : ["PF","MAL","HL","LAP","CV","MHL","FE","EDU","AGRL","JLG","CEQ","MULF","BD","CashCred","BL","LC","BG"]}
## ${ApplicationStage:["Disbursal"]}
#    Examples:
#      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | fieldName      |
#      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Applicant Name |
#      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Applicant type |
#      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Status         |
#      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Host CIF ID    |

    @Islamic
   
@Release
# ${ProductType:["IPF"]}
# ${Category:["bonds","metals"]}
# ${ApplicationStage:["Disbursal"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | Key         | fieldName      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |             | Applicant Name |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |             | Applicant type |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |             | Status         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |             | Host CIF ID    |
      | IPF           | indiv           | Reconsideration    | Shares     | isDisbursal | Applicant Name |
      | IPF           | indiv           | Reconsideration    | Shares     | isDisbursal | Applicant type |
      | IPF           | indiv           | Reconsideration    | Shares     | isDisbursal | Status         |
      | IPF           | indiv           | Reconsideration    | Shares     | isDisbursal | Host CIF ID    |


    @Islamic
   
@Release
# ${ProductType:["IAF","IHF"]}
# ${ApplicationStage:["Disbursal"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | fieldName      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Applicant Name |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Applicant type |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Status         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Host CIF ID    |

       # PQM-39_CAS-211262
       #FeatureID-ACAUTOCAS-15335
  Scenario Outline: ACAUTOCAS-17443: send customer information button should be present in disable mode for <ProductType> product type with <ApplicationStage> stage
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    When user check Miscellaneous Information tab at Disbursal Stage
    Then send customer information button should be present in disable mode
    
#    @Release
## ${ProductType : ["PF","MAL","HL","LAP","CV","MHL","FE","EDU","AGRL","JLG","CEQ","MULF","BD","CashCred","BL","LC","BG"]}
## ${ApplicationStage:["Disbursal"]}
#    Examples:
#      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key |
#      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |

    @Islamic
   
@Release
# ${ProductType:["IPF"]}
# ${Category:["bonds","metals"]}
# ${ApplicationStage:["Disbursal"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | Key         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |             |
      | IPF           | indiv           | Reconsideration    | Shares     | isDisbursal |


    @Islamic
   
@Release
# ${ProductType:["IAF","IHF"]}
# ${ApplicationStage:["Disbursal"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |

