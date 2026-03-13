@Epic-Quick_Lead
@AuthoredBy-vipin.kishor
@ReviewedBy-ayush.garg
@TechReviewedBy-
@ImplementedBy-yash.sharma
@Release3
@ReviewedByDEV
Feature:View Lead details

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0


#FeatureID-ACAUTOCAS-63
  Scenario Outline: ACAUTOCAS-4718: View Lead details
    And user open lead grid
    And user opens quick lead entries to create new quick lead
    And user reads data from the excel file "<QuickLeadWB>" under sheet "<QuickLead_product>" and row <QuickLead_product_rowNum>
    And user selects the product type
    When user selects applicant is "<ApplicantType>" applicant
    And user reads data from the excel file "<QuickLeadWB>" under sheet "<QuickLead_SheetName>" and row <RowNum>
    And user fills "<MandatoryOrNotMandatory>" fields to create "<ApplicantType>" applicant lead
    And user save the individual applicant lead
    And user open created lead from lead grid
    Then user can view "<LeadDetails>" of lead
    Examples:
      | LeadDetails                    | ApplicantType | MandatoryOrNotMandatory | QuickLeadWB     | QuickLead_SheetName | RowNum | QuickLead_product | QuickLead_product_rowNum |
      | Personal Information           | individual    | Non-Mandatory           | quick_lead.xlsx | home                | 0      | product           | 2                        |
      | Work details                   | individual    | Non-Mandatory           | quick_lead.xlsx | home                | 0      | product           | 2                        |
      | Financial details              | individual    | Non-Mandatory           | quick_lead.xlsx | home                | 0      | product           | 2                        |
      | Sourcing details               | individual    | Non-Mandatory           | quick_lead.xlsx | home                | 0      | product           | 2                        |
      | Loan Related Information       | individual    | Non-Mandatory           | quick_lead.xlsx | home                | 0      | product           | 2                        |
      | Eligibility Details            | individual    | Non-Mandatory           | quick_lead.xlsx | home                | 0      | product           | 2                        |
      | Customer Communication details | individual    | Non-Mandatory           | quick_lead.xlsx | home                | 0      | product           | 2                        |
      | Appointment details            | individual    | Non-Mandatory           | quick_lead.xlsx | home                | 0      | product           | 2                        |

#FeatureID-ACAUTOCAS-63
  Scenario Outline: ACAUTOCAS-4719: Provision to "<Edit>" "<LeadDetails>" while view the lead details
    And user open lead grid
    And user opens quick lead entries to create new quick lead
    And user reads data from the excel file "<QuickLeadWB>" under sheet "<QuickLead_product>" and row <QuickLead_product_rowNum>
    When user selects the product type
    And user selects applicant is "<ApplicantType>" applicant
    And user reads data from the excel file "<QuickLeadWB>" under sheet "<QuickLead_SheetName>" and row <RowNum>
    And user fills "<MandatoryOrNotMandatory>" fields to create "<ApplicantType>" applicant lead
    And user save the individual applicant lead
    And user open created lead from lead grid
    And user "<Edit>" "<LeadDetails>"
    Examples:
      | Edit      | LeadDetails                    | ApplicantType | MandatoryOrNotMandatory | QuickLeadWB     | QuickLead_SheetName | RowNum | QuickLead_product | QuickLead_product_rowNum |
      | edit      | Personal Information           | individual    | Non-Mandatory           | quick_lead.xlsx | home                | 0      | product           | 2                        |
      | edit      | Work details                   | individual    | Non-Mandatory           | quick_lead.xlsx | home                | 0      | product           | 2                        |
      | edit      | Financial details              | individual    | Non-Mandatory           | quick_lead.xlsx | home                | 0      | product           | 2                        |
      | view only | Sourcing details               | individual    | Non-Mandatory           | quick_lead.xlsx | home                | 0      | product           | 2                        |
      | edit      | Loan Related Information       | individual    | Non-Mandatory           | quick_lead.xlsx | home                | 0      | product           | 2                        |
      | calculate | Eligibility Details            | individual    | Non-Mandatory           | quick_lead.xlsx | home                | 0      | product           | 2                        |
      | edit      | Customer Communication details | individual    | Non-Mandatory           | quick_lead.xlsx | home                | 0      | product           | 2                        |
      | edit      | Appointment details            | individual    | Non-Mandatory           | quick_lead.xlsx | home                | 0      | product           | 2                        |
