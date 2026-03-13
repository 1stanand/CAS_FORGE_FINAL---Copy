@Epic-Quick_Lead
@AuthoredBy-vipin.kishor
@ImplementedBy-ankit.yadav
@ReviewedBy-None
@Release3
@ReviewedByDEV
@Reconciled


Feature:More actions in lead

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0

  #FeatureID-ACAUTOCAS-97
  Scenario Outline: ACAUTOCAS-4713: Show Workflow History Records of lead
    And user open lead grid
    And user opens quick lead entries to create new quick lead
    And user reads data from the excel file "<QuickLeadWB>" under sheet "<QuickLead_product>" and row <QuickLead_product_rowNum>
    And user selects the product type
    When user selects applicant is "<ApplicantType>" applicant
    And user reads data from the excel file "<QuickLeadWB>" under sheet "<QuickLead_home>" and row <QuickLead_home_rowNum>
    And user fills "<MandatoryOrNonMandatory>" fields to create "<ApplicantType>" applicant lead
    And user save the individual applicant lead
    And user open created lead from lead grid
    And open workflow history
    Then workflow history should be display with having column "<Column>"
    Examples:
      | Column        | MandatoryOrNonMandatory | ApplicantType | QuickLeadWB     | QuickLead_home | QuickLead_home_rowNum | QuickLead_product | QuickLead_product_rowNum |
      | Activity Name | mandatory               | individual    | quick_lead.xlsx | home           | 0                     | product           | 0                        |
      | Start Time    | mandatory               | individual    | quick_lead.xlsx | home           | 0                     | product           | 0                        |
      | End Time      | mandatory               | individual    | quick_lead.xlsx | home           | 0                     | product           | 0                        |
      | Duration      | mandatory               | individual    | quick_lead.xlsx | home           | 0                     | product           | 0                        |

  #FeatureID-ACAUTOCAS-96
  Scenario Outline: ACAUTOCAS-4775: Show Workflow of lead
    And user open lead grid
    And user opens quick lead entries to create new quick lead
    And user reads data from the excel file "<QuickLeadWB>" under sheet "<QuickLead_product>" and row <QuickLead_product_rowNum>
    And user selects the product type
    When user selects applicant is "<ApplicantType>" applicant
    And user reads data from the excel file "<QuickLeadWB>" under sheet "<QuickLead_home>" and row <QuickLead_home_rowNum>
    And user fills "<MandatoryOrNonMandatory>" fields to create "<ApplicantType>" applicant lead
    And user save the individual applicant lead
    And user open created lead from lead grid
    And user show workflow
    Then workflow should be display
    Examples:
      | MandatoryOrNonMandatory | ApplicantType | QuickLeadWB     | QuickLead_home | QuickLead_home_rowNum | QuickLead_product | QuickLead_product_rowNum |
      | mandatory               | individual    | quick_lead.xlsx | home           | 0                     | product           | 0                        |


#  #FeatureID-ACAUTOCAS-94
#  Scenario Outline: ACAUTOCAS-4714: Hold the lead "<With_Without>" current lead status
#    And user open lead grid
#    And user opens quick lead entries to create new quick lead
#    And user selects the product type
#    When user selects applicant is "<ApplicantType>" applicant
#    And user reads data from the excel file "<QuickLeadWB>" under sheet "<QuickLead_home>" and row <QuickLead_home_rowNum>
#    And user fills "<MandatoryOrNonMandatory>" fields to create "<ApplicantType>" applicant lead
#    And user save the individual applicant lead
#    And user open created lead from lead grid
#    And user Hold the lead "With_Without" current lead status
#    Then "<With_Without>" current lead status lead "<Impact>"
#    Examples:
#      | With_Without | Impact             |
#      | with         | should be holded   |
#      | without      | should not be hold |

  #FeatureID-ACAUTOCAS-100
  Scenario Outline: ACAUTOCAS-4776: Cancel the created Lead from lead grid
    And user open lead grid
    And user opens quick lead entries to create new quick lead
    And user reads data from the excel file "<QuickLeadWB>" under sheet "<QuickLead_product>" and row <QuickLead_product_rowNum>
    And user selects the product type
    When user selects applicant is "<ApplicantType>" applicant
    And user reads data from the excel file "<QuickLeadWB>" under sheet "<QuickLead_home>" and row <QuickLead_home_rowNum>
    And user fills "<MandatoryOrNonMandatory>" fields to create "<ApplicantType>" applicant lead
    And user save the individual applicant lead
    And user open created lead from lead grid
    And user cancel the lead
    Then lead should be cancelled successfully
    Examples:
     | MandatoryOrNonMandatory | ApplicantType | QuickLeadWB     | QuickLead_home | QuickLead_home_rowNum | QuickLead_product | QuickLead_product_rowNum |
     | mandatory               | individual    | quick_lead.xlsx | home           | 0                     | product           | 0                        |


  #FeatureID-ACAUTOCAS-101
  Scenario Outline: ACAUTOCAS-4777: Exit form the lead
    And user open lead grid
    And user opens quick lead entries to create new quick lead
    And user reads data from the excel file "<QuickLeadWB>" under sheet "<QuickLead_product>" and row <QuickLead_product_rowNum>
    And user selects the product type
    When user selects applicant is "<ApplicantType>" applicant
    And user reads data from the excel file "<QuickLeadWB>" under sheet "<QuickLead_home>" and row <QuickLead_home_rowNum>
    And user fills "<MandatoryOrNonMandatory>" fields to create "<ApplicantType>" applicant lead
    And user save the individual applicant lead
    And user open created lead from lead grid
    And user exit from the lead
    Then user exit from the lead successfully
    Examples:
      | MandatoryOrNonMandatory | ApplicantType | QuickLeadWB     | QuickLead_home | QuickLead_home_rowNum | QuickLead_product | QuickLead_product_rowNum |
      | mandatory               | individual    | quick_lead.xlsx | home           | 0                     | product           | 0                        |

