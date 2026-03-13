@Epic-Quick_Lead
@AuthoredBy-vipin.kishor
@ReviewedBy-ayush.garg
@TechReviewedBy-
@ImplementedBy-yash.sharma
@Release3
@ReviewedByDEV

Feature:Calculate eligibility in lead

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0

#FeatureID-ACAUTOCAS-75,ACAUTOCAS-74
  Scenario Outline: ACAUTOCAS-4651: Calculate eligibility for individual applicant in lead
    And user open lead grid
    And user opens quick lead entries to create new quick lead
    And user reads data from the excel file "<QuickLeadWB>" under sheet "<QuickLead_product>" and row <QuickLead_product_rowNum>
    And user selects the product type
    When user selects applicant is "<ApplicantType>" applicant
    And user reads data from the excel file "<QuickLeadWB>" under sheet "<QuickLead_home>" and row <QuickLead_home_rowNum>
    And user fills "<MandatoryOrNonMandatory>" fields to create "<ApplicantType>" applicant lead
    And user save the "<ApplicantType>" applicant lead
    And user open created lead from lead grid
    And user calculate eligibility of "<ApplicantType>" applicant
    Then "<EligibilityData>" should be display
    Examples:
      | EligibilityData                  | QuickLeadWB     | QuickLead_product | QuickLead_product_rowNum | QuickLead_home | QuickLead_home_rowNum | ApplicantType | MandatoryOrNonMandatory |
      | Eligible Amount with calculation | quick_lead.xlsx | product           | 2                        | home           | 0                     | individual    | mandatory               |
      | Eligibility Set Name             | quick_lead.xlsx | product           | 2                        | home           | 0                     | individual    | mandatory               |
      | Criteria                         | quick_lead.xlsx | product           | 2                        | home           | 0                     | individual    | mandatory               |
      | Applicant type                   | quick_lead.xlsx | product           | 2                        | home           | 0                     | individual    | mandatory               |
      | Applicant  Name                  | quick_lead.xlsx | product           | 2                        | home           | 0                     | individual    | mandatory               |

#FeatureID-ACAUTOCAS-75,ACAUTOCAS-74
  Scenario Outline: ACAUTOCAS-4652: Calculate eligibility for non individual applicant in lead
    And user open lead grid
    And user opens quick lead entries to create new quick lead
    And user reads data from the excel file "<QuickLeadWB>" under sheet "<QuickLead_product>" and row <QuickLead_product_rowNum>
    And user selects the product type
    When user selects applicant is "<ApplicantType>" applicant
    And user reads data from the excel file "<QuickLeadWB>" under sheet "<QuickLead_home>" and row <QuickLead_home_rowNum>
    And user fills "<MandatoryOrNonMandatory>" fields to create "<ApplicantType>" applicant lead
    And user save the "<ApplicantType>" applicant lead
    And user open created lead from lead grid
    And user calculate eligibility of "<ApplicantType>" applicant
    Then "<EligibilityData>" should be display
    Examples:
      | EligibilityData                  |QuickLeadWB     | QuickLead_product | QuickLead_product_rowNum | QuickLead_home | QuickLead_home_rowNum | ApplicantType | MandatoryOrNonMandatory |
      | Eligible Amount with calculation |quick_lead.xlsx | product           | 2                        | home           | 0                     | non-individual    | mandatory               |
      | Eligibility Set Name             |quick_lead.xlsx | product           | 2                        | home           | 0                     | non-individual    | mandatory               |
      | Criteria                         |quick_lead.xlsx | product           | 2                        | home           | 0                     | non-individual    | mandatory               |
      | Applicant type                   |quick_lead.xlsx | product           | 2                        | home           | 0                     | non-individual    | mandatory               |
      | Applicant  Name                  |quick_lead.xlsx | product           | 2                        | home           | 0                     | non-individual    | mandatory               |
