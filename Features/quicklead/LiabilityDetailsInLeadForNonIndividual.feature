@Epic-Quick_Lead
@AuthoredBy-vipin.kishor
@Reconciled
@ReviewedByDEV

Feature:Liability Details validation for non individual applicant of lead

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0

# Account Number/Card Number  ,EMI Start Date/Issue Date in these types of field  i am divided into two parts after clarification you can implement both part but
# my suggestion for present time you have to implement first part only please comment second part
  #FeatureID-ACAUTOCAS-68
  @ImplementedBy-kanika.mahal
    @Release3
  Scenario Outline:ACAUTOCAS-4708:<Field_Name> field validation in Liability Detail with <Validity> <InputType> of Lead for non individual applicant
    And user open lead grid
    And user opens quick lead entries to create new quick lead
    And user reads data from the excel file "<QuickLeadWB>" under sheet "<QuickLead_product>" and row <QuickLead_product_rowNum>
    And user selects the product type
    When user selects applicant is "non-individual" applicant
    And user reads data from the excel file "<QuickLeadWB>" under sheet "<QuickLead_home>" and row <QuickLead_home_rowNum>
    And user fills "<Mandatory_NonMandatory>" fields to create "non-individual" applicant lead
    And user save the non individual applicant lead
    And user open created lead from lead grid
    And user fill "<Validity>" "<Field_Name>" with "<InputType>" in liability details
    Then "<Field_Name>" field "<Throws_notThrows>" error
    Examples:
      | Field_Name                   | Validity | InputType                                         | Throws_notThrows | QuickLeadWB     | QuickLead_home | QuickLead_home_rowNum | Mandatory_NonMandatory | QuickLead_product | QuickLead_product_rowNum |
      | Loan Type (liability)        | valid    | mapped loan type                                  | not throw any    | quick_lead.xlsx | home           | 127                   | mandatory              | product           | 0                        |
      | Loan Type (liability)        | invalid  | unmapped loan type                                | throw an         | quick_lead.xlsx | home           | 128                   | mandatory              | product           | 0                        |
      | Institution Name (liability) | valid    | mapped institution name                           | not throw any    | quick_lead.xlsx | home           | 125                   | mandatory              | product           | 0                        |
      | Institution Name (liability) | invalid  | unmapped institution name                         | throw an         | quick_lead.xlsx | home           | 126                   | mandatory              | product           | 0                        |
      | Principal Outstanding        | invalid  | more than 18 digits                               | throw an         | quick_lead.xlsx | home           | 37                    | mandatory              | product           | 0                        |
      | Principal Outstanding        | valid    | less than 18 digits                               | not throw any    | quick_lead.xlsx | home           | 38                    | mandatory              | product           | 0                        |
      | Principal Outstanding        | invalid  | character                                         | throw an         | quick_lead.xlsx | home           | 39                    | mandatory              | product           | 0                        |
      | Principal Outstanding        | invalid  | special character                                 | throw an         | quick_lead.xlsx | home           | 40                    | mandatory              | product           | 0                        |
      | Principal Outstanding        | invalid  | negative values                                   | throw an         | quick_lead.xlsx | home           | 41                    | mandatory              | product           | 0                        |
      | Principal Outstanding        | invalid  | character with space                              | throw an         | quick_lead.xlsx | home           | 42                    | mandatory              | product           | 0                        |
      | Principal Outstanding        | invalid  | digits with space                                 | throw an         | quick_lead.xlsx | home           | 43                    | mandatory              | product           | 0                        |
      | Principal Outstanding        | valid    | positive values and Upto 18 digits                | not throw any    | quick_lead.xlsx | home           | 44                    | mandatory              | product           | 0                        |
      | Account Number               | valid    | numeric values                                    | not throw any    | quick_lead.xlsx | home           | 45                    | mandatory              | product           | 0                        |
      | Account Number               | valid    | underscore with numeric values                    | not throw any    | quick_lead.xlsx | home           | 46                    | mandatory              | product           | 0                        |
      | Account Number               | valid    | underscore with character                         | not throw any    | quick_lead.xlsx | home           | 47                    | mandatory              | product           | 0                        |
      | Account Number               | valid    | alphanumeric values                               | not throw any    | quick_lead.xlsx | home           | 48                    | mandatory              | product           | 0                        |
      | Account Number               | invalid  | negative values                                   | throw an         | quick_lead.xlsx | home           | 49                    | mandatory              | product           | 0                        |
      | Account Number               | invalid  | special character                                 | throw an         | quick_lead.xlsx | home           | 50                    | mandatory              | product           | 0                        |
      | Account Number               | invalid  | character with space                              | throw an         | quick_lead.xlsx | home           | 51                    | mandatory              | product           | 0                        |
      | Account Number               | invalid  | digits with space                                 | throw an         | quick_lead.xlsx | home           | 52                    | mandatory              | product           | 0                        |
      | Card Number                  | valid    | numeric values                                    | not throw any    | quick_lead.xlsx | home           | 53                    | mandatory              | product           | 0                        |
      | Card Number                  | valid    | underscore with numeric values                    | not throw any    | quick_lead.xlsx | home           | 54                    | mandatory              | product           | 0                        |
      | Card Number                  | valid    | underscore with character                         | not throw any    | quick_lead.xlsx | home           | 55                    | mandatory              | product           | 0                        |
      | Card Number                  | valid    | alphanumeric values                               | not throw any    | quick_lead.xlsx | home           | 56                    | mandatory              | product           | 0                        |
      | Card Number                  | invalid  | negative values                                   | throw an         | quick_lead.xlsx | home           | 57                    | mandatory              | product           | 0                        |
      | Card Number                  | invalid  | special character                                 | throw an         | quick_lead.xlsx | home           | 58                    | mandatory              | product           | 0                        |
      | Card Number                  | invalid  | character with space                              | throw an         | quick_lead.xlsx | home           | 59                    | mandatory              | product           | 0                        |
      | Card Number                  | invalid  | digits with space                                 | throw an         | quick_lead.xlsx | home           | 60                    | mandatory              | product           | 0                        |
      | Credit Limit                 | invalid  | more than 18 digits                               | throw an         | quick_lead.xlsx | home           | 69                    | mandatory              | product           | 0                        |
      | Credit Limit                 | valid    | less than 18 digits                               | not throw any    | quick_lead.xlsx | home           | 70                    | mandatory              | product           | 0                        |
      | Credit Limit                 | invalid  | character                                         | throw an         | quick_lead.xlsx | home           | 71                    | mandatory              | product           | 0                        |
      | Credit Limit                 | invalid  | special character                                 | throw an         | quick_lead.xlsx | home           | 72                    | mandatory              | product           | 0                        |
      | Credit Limit                 | invalid  | negative values                                   | throw an         | quick_lead.xlsx | home           | 73                    | mandatory              | product           | 0                        |
      | Credit Limit                 | valid    | positive values and Upto 18 digits                | not throw any    | quick_lead.xlsx | home           | 74                    | mandatory              | product           | 0                        |
      | Credit Limit                 | invalid  | character with space                              | throw an         | quick_lead.xlsx | home           | 75                    | mandatory              | product           | 0                        |
      | Credit Limit                 | invalid  | digits with space                                 | throw an         | quick_lead.xlsx | home           | 76                    | mandatory              | product           | 0                        |
      | Sanction Amount              | invalid  | more than 18 digits                               | throw an         | quick_lead.xlsx | home           | 61                    | mandatory              | product           | 0                        |
      | Sanction Amount              | valid    | less than 18 digits                               | not throw any    | quick_lead.xlsx | home           | 62                    | mandatory              | product           | 0                        |
      | Sanction Amount              | invalid  | character                                         | throw an         | quick_lead.xlsx | home           | 63                    | mandatory              | product           | 0                        |
      | Sanction Amount              | invalid  | special character                                 | throw an         | quick_lead.xlsx | home           | 64                    | mandatory              | product           | 0                        |
      | Sanction Amount              | invalid  | negative values                                   | throw an         | quick_lead.xlsx | home           | 65                    | mandatory              | product           | 0                        |
      | Sanction Amount              | valid    | positive values and Upto 18 digits                | not throw any    | quick_lead.xlsx | home           | 66                    | mandatory              | product           | 0                        |
      | Sanction Amount              | invalid  | character with space                              | throw an         | quick_lead.xlsx | home           | 67                    | mandatory              | product           | 0                        |
      | Sanction Amount              | invalid  | digits with space                                 | throw an         | quick_lead.xlsx | home           | 68                    | mandatory              | product           | 0                        |
      | EMI Start Date               | valid    | valid date                                        | not throw any    | quick_lead.xlsx | home           | 114                   | mandatory              | product           | 0                        |
      | EMI Start Date               | invalid  | invalid date                                      | throw an         | quick_lead.xlsx | home           | 115                   | mandatory              | product           | 0                        |
      | EMI Start Date               | invalid  | more than current date                            | throw an         | quick_lead.xlsx | home           | 147                   | mandatory              | product           | 0                        |
      | EMI Start Date               | invalid  | before 1942                                       | throw an         | quick_lead.xlsx | home           | 116                   | mandatory              | product           | 0                        |
      | Issue Date                   | valid    | valid date                                        | not throw any    | quick_lead.xlsx | home           | 117                   | mandatory              | product           | 0                        |
      | Issue Date                   | invalid  | invalid date                                      | throw an         | quick_lead.xlsx | home           | 118                   | mandatory              | product           | 0                        |
      | Issue Date                   | invalid  | more than current date                            | throw an         | quick_lead.xlsx | home           | 148                   | mandatory              | product           | 0                        |
      | Issue Date                   | invalid  | before 1942                                       | throw an         | quick_lead.xlsx | home           | 149                   | mandatory              | product           | 0                        |
      | Maturity Date                | valid    | valid date                                        | not throw any    | quick_lead.xlsx | home           | 119                   | mandatory              | product           | 0                        |
      | Maturity Date                | invalid  | invalid date                                      | throw an         | quick_lead.xlsx | home           | 120                   | mandatory              | product           | 0                        |
      | Maturity Date                | invalid  | more than current date                            | throw an         | quick_lead.xlsx | home           | 150                   | mandatory              | product           | 0                        |
      | Maturity Date                | invalid  | before 1942                                       | throw an         | quick_lead.xlsx | home           | 151                   | mandatory              | product           | 0                        |
      | Expiry Date                  | valid    | valid date                                        | not throw any    | quick_lead.xlsx | home           | 121                   | mandatory              | product           | 0                        |
      | Expiry Date                  | invalid  | invalid date                                      | throw an         | quick_lead.xlsx | home           | 122                   | mandatory              | product           | 0                        |
      | Expiry Date                  | invalid  | more than current date                            | throw an         | quick_lead.xlsx | home           | 152                   | mandatory              | product           | 0                        |
      | Expiry Date                  | invalid  | before 1942                                       | throw an         | quick_lead.xlsx | home           | 153                   | mandatory              | product           | 0                        |
      | Installment Amount           | invalid  | more than 18 digits                               | throw an         | quick_lead.xlsx | home           | 97                    | mandatory              | product           | 0                        |
      | Installment Amount           | valid    | less than 18 digits                               | not throw any    | quick_lead.xlsx | home           | 98                    | mandatory              | product           | 0                        |
      | Installment Amount           | invalid  | character                                         | throw an         | quick_lead.xlsx | home           | 99                    | mandatory              | product           | 0                        |
      | Installment Amount           | invalid  | special character                                 | throw an         | quick_lead.xlsx | home           | 100                   | mandatory              | product           | 0                        |
      | Installment Amount           | invalid  | negative values                                   | throw an         | quick_lead.xlsx | home           | 101                   | mandatory              | product           | 0                        |
      | Installment Amount           | valid    | positive values and Upto 18 digits                | not throw any    | quick_lead.xlsx | home           | 102                   | mandatory              | product           | 0                        |
      | Installment Amount           | invalid  | character with space                              | throw an         | quick_lead.xlsx | home           | 103                   | mandatory              | product           | 0                        |
      | Installment Amount           | invalid  | digits with space                                 | throw an         | quick_lead.xlsx | home           | 104                   | mandatory              | product           | 0                        |
      | ROI Percentage               | valid    | value between 0 to 100                            | not throw any    | quick_lead.xlsx | home           | 92                    | mandatory              | product           | 0                        |
      | ROI Percentage               | valid    | value between 0 to 100 upto 2 decimal places      | not throw any    | quick_lead.xlsx | home           | 93                    | mandatory              | product           | 0                        |
      | ROI Percentage               | invalid  | negative values                                   | throw an         | quick_lead.xlsx | home           | 94                    | mandatory              | product           | 0                        |
      | ROI Percentage               | invalid  | value more  than 100                              | throw an         | quick_lead.xlsx | home           | 95                    | mandatory              | product           | 0                        |
      | ROI Percentage               | invalid  | value between 0 to 100 more than 2 decimal places | throw an         | quick_lead.xlsx | home           | 96                    | mandatory              | product           | 0                        |
      | No.of Defaults               | valid    | numeric values                                    | not throw any    | quick_lead.xlsx | home           | 77                    | mandatory              | product           | 0                        |
      | No.of Defaults               | invalid  | alphanumeric values                               | throw an         | quick_lead.xlsx | home           | 78                    | mandatory              | product           | 0                        |
      | No.of Defaults               | invalid  | negative values                                   | throw an         | quick_lead.xlsx | home           | 79                    | mandatory              | product           | 0                        |
      | No.of Defaults               | invalid  | character                                         | throw an         | quick_lead.xlsx | home           | 80                    | mandatory              | product           | 0                        |
      | No.of Defaults               | invalid  | special character                                 | throw an         | quick_lead.xlsx | home           | 81                    | mandatory              | product           | 0                        |
      | No.of Defaults               | invalid  | character with space                              | throw an         | quick_lead.xlsx | home           | 82                    | mandatory              | product           | 0                        |
      | No.of Defaults               | invalid  | digits with space                                 | throw an         | quick_lead.xlsx | home           | 83                    | mandatory              | product           | 0                        |
      | Closure Amount               | invalid  | more than 18 digits                               | throw an         | quick_lead.xlsx | home           | 84                    | mandatory              | product           | 0                        |
      | Closure Amount               | valid    | less than 18 digits                               | not throw any    | quick_lead.xlsx | home           | 85                    | mandatory              | product           | 0                        |
      | Closure Amount               | invalid  | character                                         | throw an         | quick_lead.xlsx | home           | 86                    | mandatory              | product           | 0                        |
      | Closure Amount               | invalid  | special character                                 | throw an         | quick_lead.xlsx | home           | 87                    | mandatory              | product           | 0                        |
      | Closure Amount               | invalid  | negative values                                   | throw an         | quick_lead.xlsx | home           | 88                    | mandatory              | product           | 0                        |
      | Closure Amount               | valid    | positive values and Upto 18 digits                | not throw any    | quick_lead.xlsx | home           | 89                    | mandatory              | product           | 0                        |
      | Closure Amount               | invalid  | character with space                              | throw an         | quick_lead.xlsx | home           | 90                    | mandatory              | product           | 0                        |
      | Closure Amount               | invalid  | digits with space                                 | throw an         | quick_lead.xlsx | home           | 91                    | mandatory              | product           | 0                        |
      | End Use of Loan              | valid    | mapped End Use of Loan                            | not throw any    | quick_lead.xlsx | home           | 129                   | mandatory              | product           | 0                        |
      | End Use of Loan              | invalid  | unmapped End Use of Loan                          | throw an         | quick_lead.xlsx | home           | 8                     | mandatory              | product           | 0                        |
      | Security Given               | valid    | numeric values                                    | not throw any    | quick_lead.xlsx | home           | 105                   | mandatory              | product           | 0                        |
      | Security Given               | valid    | alphanumeric values                               | not throw any    | quick_lead.xlsx | home           | 106                   | mandatory              | product           | 0                        |
      | Security Given               | valid    | negative values                                   | not throw any    | quick_lead.xlsx | home           | 107                   | mandatory              | product           | 0                        |
      | Security Given               | valid    | character                                         | not throw any    | quick_lead.xlsx | home           | 108                   | mandatory              | product           | 0                        |
      | Security Given               | invalid  | special character                                 | throw an         | quick_lead.xlsx | home           | 109                   | mandatory              | product           | 0                        |
      | Security Given               | valid    | character with space                              | not throw any    | quick_lead.xlsx | home           | 110                   | mandatory              | product           | 0                        |
      | Security Given               | valid    | digits with space                                 | not throw any    | quick_lead.xlsx | home           | 111                   | mandatory              | product           | 0                        |
      | Security Given               | invalid  | character with underscore                         | throw an         | quick_lead.xlsx | home           | 112                   | mandatory              | product           | 0                        |
      | Security Given               | invalid  | digits with underscore                            | throw an         | quick_lead.xlsx | home           | 113                   | mandatory              | product           | 0                        |
      | Closure Date                 | valid    | valid date                                        | not throw any    | quick_lead.xlsx | home           | 123                   | mandatory              | product           | 0                        |
      | Closure Date                 | invalid  | invalid date                                      | throw an         | quick_lead.xlsx | home           | 124                   | mandatory              | product           | 0                        |
      | Closure Date                 | invalid  | more than current date                            | throw an         | quick_lead.xlsx | home           | 154                   | mandatory              | product           | 0                        |
      | Closure Date                 | invalid  | before 1942                                       | throw an         | quick_lead.xlsx | home           | 155                   | mandatory              | product           | 0                        |

  #FeatureID-ACAUTOCAS-68
  Scenario Outline:ACAUTOCAS-4709: <DependentField> field should be <DependentFieldsBehaviour> which depends on <Fields> field in liability details of lead for non individual applicant
    And user open lead grid
    And user opens quick lead entries to create new quick lead
    And user reads data from the excel file "<QuickLeadWB>" under sheet "<QuickLead_product>" and row <QuickLead_product_rowNum>
    And user selects the product type
    When user selects applicant is "<ApplicantType>" applicant
    And user reads data from the excel file "<QuickLeadWB>" under sheet "<QuickLead_home>" and row <QuickLead_home_rowNum>
    And user fills "<Mandatory>" fields to create "<ApplicantType>" applicant lead
    And user save the non individual applicant lead
    And user open created lead from lead grid
    And user selects "<Fields>" field in liability details for "<ApplicantType>"
    Then "<DependentField>" should be "<DependentFieldsBehaviour>" in liability details
    @ImplementedBy-deep.maurya
    @Release3
    Examples:
      | Fields                            | DependentField             | DependentFieldsBehaviour     | QuickLeadWB     | QuickLead_home | QuickLead_home_rowNum | Mandatory | ApplicantType  | QuickLead_product | QuickLead_product_rowNum |
      | Liability as Internal             | Source System              | display                      | quick_lead.xlsx | home           | 0                     | mandatory | non-individual | product           | 0                        |
      | Liability as External             | Source System              | hide                         | quick_lead.xlsx | home           | 0                     | mandatory | non-individual | product           | 0                        |
      | Liability Type as Loan            | Joint Liability Percentage | display in disabled mode     | quick_lead.xlsx | home           | 0                     | mandatory | non-individual | product           | 0                        |
      | Liability Type as Loan            | MOB(Months on Book)        | display in non editable mode | quick_lead.xlsx | home           | 0                     | mandatory | non-individual | product           | 0                        |
      | Joint Liability check box         | Joint Liability Percentage | display in editable mode     | quick_lead.xlsx | home           | 0                     | mandatory | non-individual | product           | 0                        |
      | Liability Type as Credit Card     | Joint Liability Percentage | hide                         | quick_lead.xlsx | home           | 168                   | mandatory | non-individual | product           | 0                        |
      | Consider for obligation check box | Reason                     | hide                         | quick_lead.xlsx | home           | 0                     | mandatory | non-individual | product           | 0                        |
      | Consider for obligation check box | Reason Description         | hide                         | quick_lead.xlsx | home           | 0                     | mandatory | non-individual | product           | 0                        |
      | Consider for obligation check box | Comments on Reason         | hide                         | quick_lead.xlsx | home           | 0                     | mandatory | non-individual | product           | 0                        |
      | Is Balance Transfer check box     | Reason                     | hide                         | quick_lead.xlsx | home           | 0                     | mandatory | non-individual | product           | 0                        |
      | Is Balance Transfer check box     | Reason Description         | hide                         | quick_lead.xlsx | home           | 0                     | mandatory | non-individual | product           | 0                        |
      | Is Balance Transfer check box     | Comments on Reason         | hide                         | quick_lead.xlsx | home           | 0                     | mandatory | non-individual | product           | 0                        |
      | or fills Card Expiry Date         | MOB(Months on Book)        | autofill                     | quick_lead.xlsx | home           | 0                     | mandatory | non-individual | product           | 0                        |
    @NotImplemented
    Examples:
      | Fields                            | DependentField             | DependentFieldsBehaviour     |
      | Liability as Internal             | Source System              | mandatory                    |
  @ImplementedBy-kanika.mahal
    @Release3
    @LoggedBug
  #FeatureID-ACAUTOCAS-68
  Scenario Outline: ACAUTOCAS-4711: <Actions> liability details in lead for non individual applicant
    And user open lead grid
    And user opens quick lead entries to create new quick lead
    And user reads data from the excel file "<QuickLeadWB>" under sheet "<QuickLead_product>" and row <QuickLead_product_rowNum>
    And user selects the product type
    When user selects applicant is "non-individual" applicant
    And user reads data from the excel file "<QuickLeadWB>" under sheet "<QuickLead_home>" and row <QuickLead_home_rowNum>
    And user fills "<Mandatory_NonMandatory>" fields to create "non-individual" applicant lead
    And user save the individual applicant lead
    And user open created lead from lead grid
    And user fills all mandatory filled to add liability
    And user saves the liability details
    And user "<Actions>" liability details in lead
    Then liability details in lead should be "<Actions>"
    Examples:
      | Actions | Mandatory_NonMandatory | QuickLeadWB     | QuickLead_home | QuickLead_home_rowNum | QuickLead_product | QuickLead_product_rowNum |
      | Edit    | mandatory              | quick_lead.xlsx | home           | 0                     | product           | 0                        |
#      | Delete  |

  @ImplementedBy-kanika.mahal
    @Release3
    @LoggedBug
 #FeatureID-ACAUTOCAS-68
  Scenario Outline: ACAUTOCAS-4774:  Liability details grid validation in lead for non individual applicant
    And user open lead grid
    And user opens quick lead entries to create new quick lead
    And user reads data from the excel file "<QuickLeadWB>" under sheet "<QuickLead_product>" and row <QuickLead_product_rowNum>
    And user selects the product type
    When user selects applicant is "non-individual" applicant
    And user reads data from the excel file "<QuickLeadWB>" under sheet "<QuickLead_home>" and row <QuickLead_home_rowNum>
    And user fills "<Mandatory_NonMandatory>" fields to create "non-individual" applicant lead
    And user save the individual applicant lead
    And user open created lead from lead grid
    And user fills all mandatory filled to add liability
    And user saves the liability details
    Then liability details should be added in liability details grid
    Examples:
      | Mandatory_NonMandatory | QuickLeadWB     | QuickLead_home | QuickLead_home_rowNum | QuickLead_product | QuickLead_product_rowNum |
      | mandatory              | quick_lead.xlsx | home           | 0                     | product           | 0                        |

  @ImplementedBy-yash.sharma
    @Release3
 #FeatureID-ACAUTOCAS-68
  Scenario Outline: ACAUTOCAS-4712:  Validation of sorting action by <Column> column of liability details grid in lead for non individual applicant
    And user reads data from the excel file "<QuickLeadWB>" under sheet "<QuickLead_product>" and row <QuickLead_product_rowNum>
    And user open lead grid
    And user opens quick lead entries to create new quick lead
    And user selects the product type
    When user selects applicant is "<ApplicantType>" applicant
    And user reads data from the excel file "<QuickLeadWB>" under sheet "<QuickLead_home>" and row <QuickLead_home_rowNum>
    And user fills "<MandatoryOrNot>" fields to create "<ApplicantType>" applicant lead
    And user save the non individual applicant lead
    And user open created lead from lead grid
    And user reads data from the excel file "<EmploymentDetailsWB>" under sheet "<EmploymentDetails_home>" and row <EmploymentDetails_home_rowNum>
    And user add multiple liabilities
    And user sorting the liability details by "<Column>" column
    Then liability details should be sorted based on "<Column>" column
    Examples:
      | Column                | ApplicantType  | MandatoryOrNot | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | QuickLeadWB     | QuickLead_product | QuickLead_product_rowNum | QuickLead_home | QuickLead_home_rowNum |
      | Liability Type        | non-individual | mandatory      | employment_details.xlsx | home                   | 89                            | quick_lead.xlsx | product           | 2                        | home           | 0                     |
      | Loan Type             | non-individual | mandatory      | employment_details.xlsx | home                   | 89                            | quick_lead.xlsx | product           | 2                        | home           | 0                     |
      | Institution Name      | non-individual | mandatory      | employment_details.xlsx | home                   | 89                            | quick_lead.xlsx | product           | 2                        | home           | 0                     |
      | Account Number        | non-individual | mandatory      | employment_details.xlsx | home                   | 89                            | quick_lead.xlsx | product           | 2                        | home           | 0                     |
      | Application ID        | non-individual | mandatory      | employment_details.xlsx | home                   | 89                            | quick_lead.xlsx | product           | 2                        | home           | 0                     |
      | Principle Outstanding | non-individual | mandatory      | employment_details.xlsx | home                   | 89                            | quick_lead.xlsx | product           | 2                        | home           | 0                     |
      | Actions               | non-individual | mandatory      | employment_details.xlsx | home                   | 89                            | quick_lead.xlsx | product           | 2                        | home           | 0                     |

  @ImplementedBy-yash.sharma
    @Release3
  #FeatureID-ACAUTOCAS-68
  Scenario Outline: ACAUTOCAS-4710: Add <NoOfLiability> liability in lead for non individual applicant
    And user reads data from the excel file "<QuickLeadWB>" under sheet "<QuickLead_product>" and row <QuickLead_product_rowNum>
    And user open lead grid
    And user opens quick lead entries to create new quick lead
    And user selects the product type
    When user selects applicant is "<ApplicantType>" applicant
    And user reads data from the excel file "<QuickLeadWB>" under sheet "<QuickLead_home>" and row <QuickLead_home_rowNum>
    And user fills "<MandatoryOrNot>" fields to create "<ApplicantType>" applicant lead
    And user save the individual applicant lead
    And user open created lead from lead grid
    And user reads data from the excel file "<EmploymentDetailsWB>" under sheet "<EmploymentDetails_home>" and row <EmploymentDetails_home_rowNum>
    And user add multiple liabilities
    Then "<NoOfLiability>" Liability in lead for non individual applicant should be added
    Examples:
      | NoOfLiability | MandatoryOrNot | ApplicantType  | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | QuickLeadWB     | QuickLead_product | QuickLead_product_rowNum | QuickLead_home | QuickLead_home_rowNum |
      | single        | mandatory      | non-individual | employment_details.xlsx | home                   | 89                            | quick_lead.xlsx | product           | 2                        | home           | 0                     |
      | multiple      | mandatory      | non-individual | employment_details.xlsx | home                   | 89                            | quick_lead.xlsx | product           | 2                        | home           | 0                     |

