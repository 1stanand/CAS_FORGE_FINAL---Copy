@Epic-Quick_Lead
@AuthoredBy-vipin.kishor
@ReviewedBy-ayush.garg
@TechReviewedBy-
@ImplementedBy-manish.yadav2
@Release3
@ReviewedByDEV
@Reconciled

Feature:Deduction details validation in lead

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0

  #FeatureID-ACAUTOCAS-66
  Scenario Outline: ACAUTOCAS-4664: "<Field_Name>" field validation in other deduction details with "<Validity>" "<InputType>" of Lead for individual applicant
    And user open lead grid
    And user opens quick lead entries to create new quick lead
    And user reads data from the excel file "<QuickLeadWB>" under sheet "<QuickLead_product>" and row <QuickLead_product_rowNum>
    And user selects the product type
    When user selects applicant is "<ApplicantType>" applicant
    And user reads data from the excel file "<QuickLeadWB>" under sheet "<QuickLead_home>" and row <QuickLead_home_rowNum>
    And user fills "<MandatoryOrNot>" fields to create "<ApplicantType>" applicant lead
    And user save the individual applicant lead
    And user open created lead from lead grid
    And user selects Occupation Type as "<OccupationType>"
    And user reads data from the excel file "<QuickLeadWB>" under sheet "<QuickLead_financial_details>" and row <QuickLead_financial_details_rowNum>
    And user fill "<Validity>" "<Field_Name>" with "<InputType>" in "<OccupationType>" deduction details
    Then "<Field_Name>" field "<Throws_notThrows>" error in deduction details
    Examples:
      | Field_Name | Validity | InputType                                         | Throws_notThrows | QuickLeadWB     | ProductType          | ApplicantType | MandatoryOrNot | OccupationType | QuickLead_home | QuickLead_home_rowNum | QuickLead_financial_details | QuickLead_financial_details_rowNum | QuickLead_product | QuickLead_product_rowNum |
      | Amount     | valid    | less than 18 digits                               | not throw any    | quick_lead.xlsx | Commercial Equipment | individual    | mandatory      | Others         | home           | 0                     | financial_details           | 65                                 | product           | 2                        |
      | Amount     | invalid  | character                                         | throw an         | quick_lead.xlsx | Commercial Equipment | individual    | mandatory      | Others         | home           | 0                     | financial_details           | 67                                 | product           | 2                        |
      | Amount     | invalid  | special character                                 | throw an         | quick_lead.xlsx | Commercial Equipment | individual    | mandatory      | Others         | home           | 0                     | financial_details           | 68                                 | product           | 2                        |
      | Amount     | valid    | positive values and Upto 18 digits                | not throw any    | quick_lead.xlsx | Commercial Equipment | individual    | mandatory      | Others         | home           | 0                     | financial_details           | 70                                 | product           | 2                        |
      | Percentage | valid    | value between 0 to 100                            | not throw any    | quick_lead.xlsx | Commercial Equipment | individual    | mandatory      | Others         | home           | 0                     | financial_details           | 71                                 | product           | 2                        |
      | Percentage | valid    | value between 0 to 100 upto 2 decimal places      | not throw any    | quick_lead.xlsx | Commercial Equipment | individual    | mandatory      | Others         | home           | 0                     | financial_details           | 72                                 | product           | 2                        |

    @LoggedBug
    Examples:
      | Field_Name | Validity | InputType                                         | Throws_notThrows | QuickLeadWB     | ProductType          | ApplicantType | MandatoryOrNot | OccupationType | QuickLead_home | QuickLead_home_rowNum | QuickLead_financial_details | QuickLead_financial_details_rowNum | QuickLead_product | QuickLead_product_rowNum |
      | Amount     | invalid  | more than 18 digits                               | throw an         | quick_lead.xlsx | Commercial Equipment | individual    | mandatory      | Others         | home           | 0                     | financial_details           | 65                                 | product           | 2                        |
      | Amount     | invalid  | negative values                                   | throw an         | quick_lead.xlsx | Commercial Equipment | individual    | mandatory      | Others         | home           | 0                     | financial_details           | 69                                 | product           | 2                        |
      | Percentage | invalid  | negative values                                   | throw            | quick_lead.xlsx | Commercial Equipment | individual    | mandatory      | Others         | home           | 0                     | financial_details           | 73                                 | product           | 2                        |
      | Percentage | invalid  | value more  than 100                              | throw            | quick_lead.xlsx | Commercial Equipment | individual    | mandatory      | Others         | home           | 0                     | financial_details           | 74                                 | product           | 2                        |
      | Percentage | invalid  | value between 0 to 100 more than 2 decimal places | throw            | quick_lead.xlsx | Commercial Equipment | individual    | mandatory      | Others         | home           | 0                     | financial_details           | 75                                 | product           | 2                        |


#FeatureID-ACAUTOCAS-66
  Scenario Outline: ACAUTOCAS-4665: "<Add_Delete>" other deduction details of Lead for individual applicant
    And user open lead grid
    And user opens quick lead entries to create new quick lead
    And user reads data from the excel file "<QuickLeadWB>" under sheet "<QuickLead_product>" and row <QuickLead_product_rowNum>
    And user selects the product type
    When user selects applicant is "<ApplicantType>" applicant
    And user reads data from the excel file "<QuickLeadWB>" under sheet "<QuickLead_home>" and row <QuickLead_home_rowNum>
    And user fills "<MandatoryOrNot>" fields to create "<ApplicantType>" applicant lead
    And user save the individual applicant lead
    And user open created lead from lead grid
    And user selects Occupation Type as "<OccupationType>"
    And user reads data from the excel file "<QuickLeadWB>" under sheet "<QuickLead_financial_details>" and row <QuickLead_financial_details_rowNum>
    And user "<Add_Delete>" "<OccupationType>" Deduction Details
    Then other deduction details "<Add_Delete>" successfully
    Examples:
      | Add_Delete   | ProductType          | ApplicantType | MandatoryOrNot | OccupationType | QuickLeadWB     | QuickLead_home | QuickLead_home_rowNum | QuickLead_financial_details | QuickLead_financial_details_rowNum | QuickLead_product | QuickLead_product_rowNum |
      | Add          | Commercial Equipment | individual    | mandatory      | Others         | quick_lead.xlsx | home           | 0                     | financial_details           | 67                                 | product           | 2                        |
      | delete       | Commercial Equipment | individual    | mandatory      | Others         | quick_lead.xlsx | home           | 0                     | financial_details           | 67                                 | product           | 2                        |
      | Add Multiple | Commercial Equipment | individual    | mandatory      | Others         | quick_lead.xlsx | home           | 0                     | financial_details           | 67                                 | product           | 2                        |


#Salaried employee deduction details

  #FeatureID-ACAUTOCAS-66
  Scenario Outline: ACAUTOCAS-4666: "<Field_Name>" field validation in Salaried employee deduction details with "<Validity>" "<InputType>" of Lead for individual applicant
    And user open lead grid
    And user opens quick lead entries to create new quick lead
    And user reads data from the excel file "<QuickLeadWB>" under sheet "<QuickLead_product>" and row <QuickLead_product_rowNum>
    And user selects the product type
    When user selects applicant is "<ApplicantType>" applicant
    And user reads data from the excel file "<QuickLeadWB>" under sheet "<QuickLead_home>" and row <QuickLead_home_rowNum>
    And user fills "<MandatoryOrNot>" fields to create "<ApplicantType>" applicant lead
    And user save the individual applicant lead
    And user open created lead from lead grid
    And user selects Occupation Type as "<OccupationType>"
    And user reads data from the excel file "<QuickLeadWB>" under sheet "<QuickLead_financial_details>" and row <QuickLead_financial_details_rowNum>
    And user fill "<Validity>" "<Field_Name>" with "<InputType>" in "<OccupationType>" deduction details
    Then "<Field_Name>" field "<Throws_notThrows>" error in deduction details
    Examples:
      | Field_Name | Validity | InputType                                         | Throws_notThrows | QuickLeadWB     | ProductType          | ApplicantType | MandatoryOrNot | OccupationType | QuickLead_home | QuickLead_home_rowNum | QuickLead_financial_details | QuickLead_financial_details_rowNum | QuickLead_product | QuickLead_product_rowNum |
      | Amount     | valid    | less than 18 digits                               | not throw any    | quick_lead.xlsx | Commercial Equipment | individual    | mandatory      | Salaried       | home           | 0                     | financial_details           | 67                                 | product           | 2                        |
      | Amount     | invalid  | character                                         | throw an         | quick_lead.xlsx | Commercial Equipment | individual    | mandatory      | Salaried       | home           | 0                     | financial_details           | 68                                 | product           | 2                        |
      | Amount     | invalid  | special character                                 | throw an         | quick_lead.xlsx | Commercial Equipment | individual    | mandatory      | Salaried       | home           | 0                     | financial_details           | 69                                 | product           | 2                        |
      | Amount     | valid    | positive values and Upto 18 digits                | not throw any    | quick_lead.xlsx | Commercial Equipment | individual    | mandatory      | Salaried       | home           | 0                     | financial_details           | 70                                 | product           | 2                        |
      | Percentage | valid    | value between 0 to 100                            | not throw any    | quick_lead.xlsx | Commercial Equipment | individual    | mandatory      | Salaried       | home           | 0                     | financial_details           | 72                                 | product           | 2                        |
      | Percentage | valid    | value between 0 to 100 upto 2 decimal places      | not throw any    | quick_lead.xlsx | Commercial Equipment | individual    | mandatory      | Salaried       | home           | 0                     | financial_details           | 73                                 | product           | 2                        |

    @LoggedBug
    Examples:
      | Field_Name | Validity | InputType                                         | Throws_notThrows | QuickLeadWB     | ProductType          | ApplicantType | MandatoryOrNot | OccupationType | QuickLead_home | QuickLead_home_rowNum | QuickLead_financial_details | QuickLead_financial_details_rowNum | QuickLead_product | QuickLead_product_rowNum |
      | Amount     | invalid  | more than 18 digits                               | throw an         | quick_lead.xlsx | Commercial Equipment | individual    | mandatory      | Salaried       | home           | 0                     | financial_details           | 66                                 | product           | 2                        |
      | Amount     | invalid  | negative values                                   | throw an         | quick_lead.xlsx | Commercial Equipment | individual    | mandatory      | Salaried       | home           | 0                     | financial_details           | 70                                 | product           | 2                        |
      | Percentage | invalid  | negative values                                   | throw            | quick_lead.xlsx | Commercial Equipment | individual    | mandatory      | Salaried       | home           | 0                     | financial_details           | 74                                 | product           | 2                        |
      | Percentage | invalid  | value more  than 100                              | throw            | quick_lead.xlsx | Commercial Equipment | individual    | mandatory      | Salaried       | home           | 0                     | financial_details           | 75                                 | product           | 2                        |
      | Percentage | invalid  | value between 0 to 100 more than 2 decimal places | throw            | quick_lead.xlsx | Commercial Equipment | individual    | mandatory      | Salaried       | home           | 0                     | financial_details           | 76                                 | product           | 2                        |

#FeatureID-ACAUTOCAS-66
  Scenario Outline: ACAUTOCAS-4667: "<Add_Delete>"Salaried employee deduction of Lead for individual applicant
    And user open lead grid
    And user opens quick lead entries to create new quick lead
    And user reads data from the excel file "<QuickLeadWB>" under sheet "<QuickLead_product>" and row <QuickLead_product_rowNum>
    And user selects the product type
    When user selects applicant is "<ApplicantType>" applicant
    And user reads data from the excel file "<QuickLeadWB>" under sheet "<QuickLead_home>" and row <QuickLead_home_rowNum>
    And user fills "<MandatoryOrNot>" fields to create "<ApplicantType>" applicant lead
    And user save the individual applicant lead
    And user open created lead from lead grid
    And user selects Occupation Type as "<OccupationType>"
    And user reads data from the excel file "<QuickLeadWB>" under sheet "<QuickLead_financial_details>" and row <QuickLead_financial_details_rowNum>
    And user "<Add_Delete>" "<OccupationType>" Deduction Details
    Then salaried employee deduction details "<Add_Delete>" successfully
    Examples:
      | Add_Delete   | ProductType          | ApplicantType | MandatoryOrNot | OccupationType | QuickLead_home | QuickLead_home_rowNum | QuickLead_financial_details | QuickLead_financial_details_rowNum | QuickLeadWB     | QuickLead_product | QuickLead_product_rowNum |
      | Add          | Commercial Equipment | individual    | mandatory      | Salaried       | home           | 0                     | financial_details           | 67                                 | quick_lead.xlsx | product           | 2                        |
      | delete       | Commercial Equipment | individual    | mandatory      | Salaried       | home           | 0                     | financial_details           | 67                                 | quick_lead.xlsx | product           | 2                        |
      | Add Multiple | Commercial Equipment | individual    | mandatory      | Salaried       | home           | 0                     | financial_details           | 67                                 | quick_lead.xlsx | product           | 2                        |
