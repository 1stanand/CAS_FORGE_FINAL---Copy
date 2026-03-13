@Epic-Quick_Lead
@AuthoredBy-vipin.kishor
@ReviewedBy-
@ImplementedBy-
@TechReviewedBy-
@ImplementedBy-yash.sharma
@Release3
@ReviewedByDEV
#Backgrounds are not allowed when there is just one scenario.
Feature:Move to Application-Application creation

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0

#FeatureID-ACAUTOCAS-98
  Scenario Outline: ACAUTOCAS-4715: Move to Application form lead to create application
    And user open lead grid
    And user opens quick lead entries to create new quick lead
    And user reads data from the excel file "<QuickLeadWB>" under sheet "<QuickLead_product>" and row <QuickLead_product_rowNum>
    And user selects the product type
    When user selects applicant is "<ApplicantType>" applicant
    And user reads data from the excel file "<QuickLeadWB>" under sheet "<QuickLead_SheetName>" and row <RowNum>
    And user fills "<MandtoryOrNotMandatory>" fields to create "<ApplicantType>" applicant lead
    And user save the "<ApplicantType>" applicant lead
    And user open created lead from lead grid
    And user move to application from the lead with lead status as "<LeadStatus>"
    Then Lead "<Impact>" to Application with generated application id
    Examples:
      | LeadStatus                      | Impact        |  ApplicantType | MandtoryOrNotMandatory | QuickLeadWB     | QuickLead_SheetName | RowNum | QuickLead_product | QuickLead_product_rowNum |
      | Appointment taken               | can not moved |  individual    | mandatory              | quick_lead.xlsx | home                | 0      | product           | 2                        |
      | Asset not yet decided           | can not moved |  individual    | mandatory              | quick_lead.xlsx | home                | 0      | product           | 2                        |
      | Converted                       | moved         |  individual    | mandatory              | quick_lead.xlsx | home                | 0      | product           | 2                        |
      | Customer counting other options | can not moved |  individual    | mandatory              | quick_lead.xlsx | home                | 0      | product           | 2                        |
      | Customer not contactable        | can not moved |  individual    | mandatory              | quick_lead.xlsx | home                | 0      | product           | 2                        |
      | Documents being collected       | can not moved |  individual    | mandatory              | quick_lead.xlsx | home                | 0      | product           | 2                        |
      | Internal verifications pending  | can not moved |  individual    | mandatory              | quick_lead.xlsx | home                | 0      | product           | 2                        |
