@Epic-Quick_Lead
@AuthoredBy-vipin.kishor
@ReviewedBy-aman.nagarkoti
@TechReviewedBy-
@Release3
@ReviewedByDEV


Feature:Customer communication details

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0

#FeatureID-ACAUTOCAS-89
  @ImplementedBy-deep.maurya
  Scenario Outline: ACAUTOCAS-4661: Add communication details with selecting mode of communication as "<ModeOfCommunication>"
    And user open lead grid
    And user opens quick lead entries to create new quick lead
    And user reads data from the excel file "<Quick_lead_WB>" under sheet "<QuickLead_product>" and row <QuickLead_product_rowNum>
    And user selects the product type
    When user selects applicant is "<ApplicantType>" applicant
#    Can be any applicant type
    And user reads data from the excel file "<Quick_lead_WB>" under sheet "<QuickLead_home>" and row <QuickLead__rowNumHome>
    And user fills "mandatory" fields to create "individual" applicant lead
    And user save the individual applicant lead
    And user open created lead from lead grid
    And user fill all fields to add communication details with "<ModeOfCommunication>"
    Then communication details added successfully
    Examples:
      | ModeOfCommunication | QuickLead_product | QuickLead_product_rowNum | Quick_lead_WB   | ApplicantType | QuickLead__rowNumHome | QuickLead_home |
      | Phone               | product           | 0                        | quick_lead.xlsx | individual    | 0                     | home           |
      | Email               | product           | 0                        | quick_lead.xlsx | individual    | 0                     | home           |

  #FeatureID-ACAUTOCAS-89
  @ImplementedBy-deep.maurya
  Scenario Outline: ACAUTOCAS-4662: Add communication details with selecting Lead Status as "<LeadStatus>"
    And user open lead grid
    And user opens quick lead entries to create new quick lead
    And user reads data from the excel file "<QuickLeadWB>" under sheet "<QuickLead_product>" and row <QuickLead_product_rowNum>
    And user selects the product type
    When user selects applicant is "individual" applicant
    And user reads data from the excel file "<QuickLeadWB>" under sheet "<QuickLead_home>" and row <QuickLead_home_rowNum>
    And user fills "<Mandatory_NonMandatory>" fields to create "individual" applicant lead
    And user save the individual applicant lead
    And user open created lead from lead grid
    And user fills all fields to add communication details with "<LeadStatus>"
    Then communication details added successfully
    Examples:
      | LeadStatus                      | QuickLeadWB     | QuickLead_product | QuickLead_product_rowNum | QuickLead_home | QuickLead_home_rowNum | Mandatory_NonMandatory |
      | Appointment taken               | quick_lead.xlsx | product           | 0                        | home           | 0                     | mandatory              |
      | Asset not yet decided           | quick_lead.xlsx | product           | 0                        | home           | 0                     | mandatory              |
      | Converted                       | quick_lead.xlsx | product           | 0                        | home           | 0                     | mandatory              |
      | Customer counting other options | quick_lead.xlsx | product           | 0                        | home           | 0                     | mandatory              |
      | Customer not contactable        | quick_lead.xlsx | product           | 0                        | home           | 0                     | mandatory              |
      | Documents being collected       | quick_lead.xlsx | product           | 0                        | home           | 0                     | mandatory              |
      | Internal verifications pending  | quick_lead.xlsx | product           | 0                        | home           | 0                     | mandatory              |

 #FeatureID-ACAUTOCAS-89
  @ImplementedBy-deep.maurya
  Scenario Outline: ACAUTOCAS-4663: Add <Comments> comment with <Attachments> attachment in communication detail of lead
    And user open lead grid
    And user opens quick lead entries to create new quick lead
    And user reads data from the excel file "<Quick_lead_WB>" under sheet "<QuickLead_product>" and row <QuickLead_product_rowNum>
    And user selects the product type
    When user selects applicant is "individual" applicant
    And user reads data from the excel file "quick_lead.xlsx" under sheet "home" and row 0
    And user fills "mandatory" fields to create "individual" applicant lead
    And user save the individual applicant lead
    And user open created lead from lead grid
    And user add "<Comments>" comment with "<Attachments>" attachment
    Then "<Comments>" comment with "<Attachments>" attachment added successfully in lead
    Examples:
      | Comments | Attachments |QuickLead_product | QuickLead_product_rowNum | Quick_lead_WB   |
      | single   | single      |product           | 0                        | quick_lead.xlsx |
      | single   | multiple    |product           | 0                        | quick_lead.xlsx |
      | multiple | single      |product           | 0                        | quick_lead.xlsx |
      | multiple | multiple    |product           | 0                        | quick_lead.xlsx |

  #FeatureID-ACAUTOCAS-93
  @ImplementedBy-kanika.mahal
  Scenario Outline: ACAUTOCAS-4767:  Notification details in communication detail of lead
    And user open lead grid
    And user opens quick lead entries to create new quick lead
    And user reads data from the excel file "<QuickLeadWB>" under sheet "<QuickLead_product>" and row <QuickLead_product_rowNum>
    And user selects the product type
    When user selects applicant is "individual" applicant
    And user reads data from the excel file "<QuickLeadWB>" under sheet "<QuickLead_home>" and row <QuickLead_home_rowNum>
    And user fills "<Mandatory_NonMandatory>" fields to create "individual" applicant lead
    And user save the individual applicant lead
    And user open created lead from lead grid
    And user select Notification Type
    Then Notification Description autofill based on selected Notification Type
    Examples:
      | QuickLeadWB     | QuickLead_product | QuickLead_product_rowNum | QuickLead_home | QuickLead_home_rowNum | Mandatory_NonMandatory |
      | quick_lead.xlsx | product           | 0                        | home           | 0                     | mandatory              |
    #FeatureID-ACAUTOCAS-90
  @ImplementedBy-kanika.mahal
  Scenario: ACAUTOCAS-4768: Schedule an appointment in communication detail of lead
    And user open lead grid
    And user opens quick lead entries to create new quick lead
    And user selects product as "Home Loan"
    When user selects applicant is "individual" applicant
    And user reads data from the excel file "quick_lead.xlsx" under sheet "home" and row 0
    And user fills "mandatory" fields to create "individual" applicant lead
    And user save the individual applicant lead
    And user open created lead from lead grid
    And user fills all fields to schedule an appointment
    Then appointment scheduled successfully

