@Epic-Quick_Lead
@AuthoredBy-vipin.kishor
@ImplementedBy-kanika.mahal
@Release3
@ReviewedByDEV

Feature:Preferred mode of communication

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0



#    Preferred Mode of Communication
  #FeatureID-ACAUTOCAS-73

  Scenario Outline: ACAUTOCAS-4716: Set preferred mode of communication as "<ModeOfCommunication>" in lead for individual applicant
    And user open lead grid
    And user opens quick lead entries to create new quick lead
    And user reads data from the excel file "<QuickLeadWB>" under sheet "<QuickLead_product>" and row <QuickLead_product_rowNum>
    And user selects the product type
    When user selects applicant is "individual" applicant
    And user reads data from the excel file "<QuickLeadWB>" under sheet "<QuickLead_home>" and row <QuickLead_home_rowNum>
    And user fills "<Mandatory_NonMandatory>" fields to create "individual" applicant lead
    And user fill preferred mode of communication as "<ModeOfCommunication>"
    And user save the individual applicant lead
    Then  preferred mode of communication should be saved successfully
    Examples:
      | ModeOfCommunication | QuickLeadWB     | QuickLead_home | QuickLead_home_rowNum | Mandatory_NonMandatory | QuickLead_product | QuickLead_product_rowNum |
      | Phone Call          | quick_lead.xlsx | home           | 0                     | mandatory              | product           | 0                        |
      | Email               | quick_lead.xlsx | home           | 0                     | mandatory              | product           | 0                        |

  #FeatureID-ACAUTOCAS-73

  Scenario Outline: ACAUTOCAS-4717: Set preferred mode of communication as "<ModeOfCommunication>" in lead for non individual applicant
    And user open lead grid
    And user opens quick lead entries to create new quick lead
    And user reads data from the excel file "<QuickLeadWB>" under sheet "<QuickLead_product>" and row <QuickLead_product_rowNum>
    And user selects the product type
    When user selects applicant is "non-individual" applicant
    And user reads data from the excel file "<QuickLeadWB>" under sheet "<QuickLead_home>" and row <QuickLead_home_rowNum>
    And user fills "<Mandatory_NonMandatory>" fields to create "non-individual" applicant lead
    And user fill preferred mode of communication as "<ModeOfCommunication>"
    And user save the non individual applicant lead
    Then  preferred mode of communication should be saved successfully
    Examples:
      | ModeOfCommunication | QuickLeadWB     | QuickLead_home | QuickLead_home_rowNum | Mandatory_NonMandatory | QuickLead_product | QuickLead_product_rowNum |
      | Phone Call          | quick_lead.xlsx | home           | 0                     | mandatory              | product           | 1                        |
      | Email               | quick_lead.xlsx | home           | 0                     | mandatory              | product           | 1                        |
