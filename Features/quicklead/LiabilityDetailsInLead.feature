@Epic-Quick_Lead
@ReviewedBy-None
@AuthoredBy-vipin.kishor
@Release3
@ReviewedByDEV



Feature:Liability Details in Financial details validation of lead

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0

# Account Number/Card Number  ,EMI Start Date/Issue Date in these types of field  i am divided into two parts after clarification you can implement both part but
# my suggestion for present time you have to implement first part only please comment second part
  #FeatureID-ACAUTOCAS-68
  @ImplementedBy-deep.maurya
  Scenario Outline: ACAUTOCAS-4703: <Field_Name> field validation in Liability Detail with <Validity> <InputType> of Lead for individual applicant
    And user open lead grid
    And user opens quick lead entries to create new quick lead
    And user reads data from the excel file "<QuickLeadWB>" under sheet "<QuickLead_product>" and row <QuickLead_product_rowNum>
    And user selects the product type
    When user selects applicant is "<ApplicantType>" applicant
    And user reads data from the excel file "<QuickLeadWB>" under sheet "<QuickLead_home>" and row <QuickLead_home_rowNum>
    And user fills "<Mandatory>" fields to create "<ApplicantType>" applicant lead
    And user save the individual applicant lead
    And user open created lead from lead grid
    And user selects Occupation Type as "<OccupationType>"
    And user fill "<Validity>" "<Field_Name>" with "<InputType>" in liability details
    Then "<Field_Name>" field "<Throws_notThrows>" error
    Examples:
      | Field_Name            | Validity | InputType                                         | Throws_notThrows | QuickLeadWB     | QuickLead_home | QuickLead_home_rowNum | ApplicantType | Mandatory | OccupationType | QuickLead_product | QuickLead_product_rowNum |
      | Principal Outstanding | invalid  | more than 18 digits                               | throw an         | quick_lead.xlsx | home           | 37                    | individual    | mandatory | Agriculture    | product           | 0                        |
      | Principal Outstanding | valid    | less than 18 digits                               | not throw any    | quick_lead.xlsx | home           | 38                    | individual    | mandatory | Agriculture    | product           | 0                        |
      | Principal Outstanding | invalid  | character                                         | throw an         | quick_lead.xlsx | home           | 39                    | individual    | mandatory | Agriculture    | product           | 0                        |
      | Principal Outstanding | invalid  | special character                                 | throw an         | quick_lead.xlsx | home           | 40                    | individual    | mandatory | Agriculture    | product           | 0                        |
      | Principal Outstanding | invalid  | negative values                                   | throw an         | quick_lead.xlsx | home           | 41                    | individual    | mandatory | Agriculture    | product           | 0                        |
      | Principal Outstanding | invalid  | character with space                              | throw an         | quick_lead.xlsx | home           | 42                    | individual    | mandatory | Agriculture    | product           | 0                        |
      | Principal Outstanding | invalid  | digits with space                                 | throw an         | quick_lead.xlsx | home           | 43                    | individual    | mandatory | Agriculture    | product           | 0                        |
      | Principal Outstanding | valid    | positive values and Upto 18 digits                | not throw any    | quick_lead.xlsx | home           | 44                    | individual    | mandatory | Agriculture    | product           | 0                        |
      | Account Number        | valid    | numeric values                                    | not throw any    | quick_lead.xlsx | home           | 45                    | individual    | mandatory | Agriculture    | product           | 0                        |
      | Account Number        | valid    | underscore with numeric values                    | not throw any    | quick_lead.xlsx | home           | 46                    | individual    | mandatory | Agriculture    | product           | 0                        |
      | Account Number        | valid    | underscore with character                         | not throw any    | quick_lead.xlsx | home           | 47                    | individual    | mandatory | Agriculture    | product           | 0                        |
      | Account Number        | valid    | alphanumeric values                               | not throw any    | quick_lead.xlsx | home           | 48                    | individual    | mandatory | Agriculture    | product           | 0                        |
      | Account Number        | invalid  | negative values                                   | throw an         | quick_lead.xlsx | home           | 49                    | individual    | mandatory | Agriculture    | product           | 0                        |
      | Account Number        | invalid  | special character                                 | throw an         | quick_lead.xlsx | home           | 50                    | individual    | mandatory | Agriculture    | product           | 0                        |
      | Account Number        | invalid  | character with space                              | throw an         | quick_lead.xlsx | home           | 51                    | individual    | mandatory | Agriculture    | product           | 0                        |
      | Account Number        | invalid  | digits with space                                 | throw an         | quick_lead.xlsx | home           | 52                    | individual    | mandatory | Agriculture    | product           | 0                        |
      | Card Number           | valid    | numeric values                                    | not throw any    | quick_lead.xlsx | home           | 53                    | individual    | mandatory | Agriculture    | product           | 0                        |
      | Card Number           | valid    | underscore with numeric values                    | not throw any    | quick_lead.xlsx | home           | 54                    | individual    | mandatory | Agriculture    | product           | 0                        |
      | Card Number           | valid    | underscore with character                         | not throw any    | quick_lead.xlsx | home           | 55                    | individual    | mandatory | Agriculture    | product           | 0                        |
      | Card Number           | valid    | alphanumeric values                               | not throw any    | quick_lead.xlsx | home           | 56                    | individual    | mandatory | Agriculture    | product           | 0                        |
      | Card Number           | invalid  | negative values                                   | throw an         | quick_lead.xlsx | home           | 57                    | individual    | mandatory | Agriculture    | product           | 0                        |
      | Card Number           | invalid  | special character                                 | throw an         | quick_lead.xlsx | home           | 58                    | individual    | mandatory | Agriculture    | product           | 0                        |
      | Card Number           | invalid  | character with space                              | throw an         | quick_lead.xlsx | home           | 59                    | individual    | mandatory | Agriculture    | product           | 0                        |
      | Card Number           | invalid  | digits with space                                 | throw an         | quick_lead.xlsx | home           | 60                    | individual    | mandatory | Agriculture    | product           | 0                        |
      | Sanction Amount       | invalid  | more than 18 digits                               | throw an         | quick_lead.xlsx | home           | 61                    | individual    | mandatory | Agriculture    | product           | 0                        |
      | Sanction Amount       | valid    | less than 18 digits                               | not throw any    | quick_lead.xlsx | home           | 62                    | individual    | mandatory | Agriculture    | product           | 0                        |
      | Sanction Amount       | invalid  | character                                         | throw an         | quick_lead.xlsx | home           | 63                    | individual    | mandatory | Agriculture    | product           | 0                        |
      | Sanction Amount       | invalid  | special character                                 | throw an         | quick_lead.xlsx | home           | 64                    | individual    | mandatory | Agriculture    | product           | 0                        |
      | Sanction Amount       | invalid  | negative values                                   | throw an         | quick_lead.xlsx | home           | 65                    | individual    | mandatory | Agriculture    | product           | 0                        |
      | Sanction Amount       | valid    | positive values and Upto 18 digits                | not throw any    | quick_lead.xlsx | home           | 66                    | individual    | mandatory | Agriculture    | product           | 0                        |
      | Sanction Amount       | invalid  | character with space                              | throw an         | quick_lead.xlsx | home           | 67                    | individual    | mandatory | Agriculture    | product           | 0                        |
      | Sanction Amount       | invalid  | digits with space                                 | throw an         | quick_lead.xlsx | home           | 68                    | individual    | mandatory | Agriculture    | product           | 0                        |
      | Credit Limit          | invalid  | more than 18 digits                               | throw an         | quick_lead.xlsx | home           | 69                    | individual    | mandatory | Agriculture    | product           | 0                        |
      | Credit Limit          | valid    | less than 18 digits                               | not throw any    | quick_lead.xlsx | home           | 70                    | individual    | mandatory | Agriculture    | product           | 0                        |
      | Credit Limit          | invalid  | character                                         | throw an         | quick_lead.xlsx | home           | 71                    | individual    | mandatory | Agriculture    | product           | 0                        |
      | Credit Limit          | invalid  | special character                                 | throw an         | quick_lead.xlsx | home           | 72                    | individual    | mandatory | Agriculture    | product           | 0                        |
      | Credit Limit          | invalid  | negative values                                   | throw an         | quick_lead.xlsx | home           | 73                    | individual    | mandatory | Agriculture    | product           | 0                        |
      | Credit Limit          | valid    | positive values and Upto 18 digits                | not throw any    | quick_lead.xlsx | home           | 74                    | individual    | mandatory | Agriculture    | product           | 0                        |
      | Credit Limit          | invalid  | character with space                              | throw an         | quick_lead.xlsx | home           | 75                    | individual    | mandatory | Agriculture    | product           | 0                        |
      | Credit Limit          | invalid  | digits with space                                 | throw an         | quick_lead.xlsx | home           | 76                    | individual    | mandatory | Agriculture    | product           | 0                        |
      | No.of Defaults        | valid    | numeric values                                    | not throw any    | quick_lead.xlsx | home           | 77                    | individual    | mandatory | Agriculture    | product           | 0                        |
      | No.of Defaults        | invalid  | alphanumeric values                               | throw an         | quick_lead.xlsx | home           | 78                    | individual    | mandatory | Agriculture    | product           | 0                        |
      | No.of Defaults        | invalid  | negative values                                   | throw an         | quick_lead.xlsx | home           | 79                    | individual    | mandatory | Agriculture    | product           | 0                        |
      | No.of Defaults        | invalid  | character                                         | throw an         | quick_lead.xlsx | home           | 80                    | individual    | mandatory | Agriculture    | product           | 0                        |
      | No.of Defaults        | invalid  | special character                                 | throw an         | quick_lead.xlsx | home           | 81                    | individual    | mandatory | Agriculture    | product           | 0                        |
      | No.of Defaults        | invalid  | character with space                              | throw an         | quick_lead.xlsx | home           | 82                    | individual    | mandatory | Agriculture    | product           | 0                        |
      | No.of Defaults        | invalid  | digits with space                                 | throw an         | quick_lead.xlsx | home           | 83                    | individual    | mandatory | Agriculture    | product           | 0                        |
      | Closure Amount        | invalid  | more than 18 digits                               | throw an         | quick_lead.xlsx | home           | 84                    | individual    | mandatory | Agriculture    | product           | 0                        |
      | Closure Amount        | valid    | less than 18 digits                               | not throw any    | quick_lead.xlsx | home           | 85                    | individual    | mandatory | Agriculture    | product           | 0                        |
      | Closure Amount        | invalid  | character                                         | throw an         | quick_lead.xlsx | home           | 86                    | individual    | mandatory | Agriculture    | product           | 0                        |
      | Closure Amount        | invalid  | special character                                 | throw an         | quick_lead.xlsx | home           | 87                    | individual    | mandatory | Agriculture    | product           | 0                        |
      | Closure Amount        | invalid  | negative values                                   | throw an         | quick_lead.xlsx | home           | 88                    | individual    | mandatory | Agriculture    | product           | 0                        |
      | Closure Amount        | valid    | positive values and Upto 18 digits                | not throw any    | quick_lead.xlsx | home           | 89                    | individual    | mandatory | Agriculture    | product           | 0                        |
      | Closure Amount        | invalid  | character with space                              | throw an         | quick_lead.xlsx | home           | 90                    | individual    | mandatory | Agriculture    | product           | 0                        |
      | Closure Amount        | invalid  | digits with space                                 | throw an         | quick_lead.xlsx | home           | 91                    | individual    | mandatory | Agriculture    | product           | 0                        |
      | ROI Percentage        | valid    | value between 0 to 100                            | not throw any    | quick_lead.xlsx | home           | 92                    | individual    | mandatory | Agriculture    | product           | 0                        |
      | ROI Percentage        | valid    | value between 0 to 100 upto 2 decimal places      | not throw any    | quick_lead.xlsx | home           | 93                    | individual    | mandatory | Agriculture    | product           | 0                        |
      | ROI Percentage        | invalid  | negative values                                   | throw an         | quick_lead.xlsx | home           | 94                    | individual    | mandatory | Agriculture    | product           | 0                        |
      | ROI Percentage        | invalid  | value more  than 100                              | throw an         | quick_lead.xlsx | home           | 95                    | individual    | mandatory | Agriculture    | product           | 0                        |
      | ROI Percentage        | invalid  | value between 0 to 100 more than 2 decimal places | throw an         | quick_lead.xlsx | home           | 96                    | individual    | mandatory | Agriculture    | product           | 0                        |

  @ImplementedBy-kanika.mahal
  #FeatureID-ACAUTOCAS-68
  Scenario Outline: ACAUTOCAS-4703: <Field_Name> field validation in Liability Detail with <Validity> <InputType> of Lead for individual applicant
    And user open lead grid
    And user opens quick lead entries to create new quick lead
    And user reads data from the excel file "<QuickLeadWB>" under sheet "<QuickLead_product>" and row <QuickLead_product_rowNum>
    And user selects the product type
    When user selects applicant is "individual" applicant
    And user reads data from the excel file "<QuickLeadWB>" under sheet "<QuickLead_home>" and row <QuickLead_home_rowNum>
    And user fills "<Mandatory_NonMandatory>" fields to create "individual" applicant lead
    And user save the individual applicant lead
    And user open created lead from lead grid
    And user selects Occupation Type as "<Occupation_type>"
    And user fill "<Validity>" "<Field_Name>" with "<InputType>" in liability details
    Then "<Field_Name>" field "<Throws_notThrows>" error
    Examples:
      | Field_Name                   | Validity | InputType                          | Throws_notThrows | QuickLeadWB     | QuickLead_home | QuickLead_home_rowNum | Occupation_type | Mandatory_NonMandatory | QuickLead_product | QuickLead_product_rowNum |
      | Loan Type (liability)        | valid    | mapped loan type                   | not throw any    | quick_lead.xlsx | home           | 127                   | Agriculture     | mandatory              | product           | 0                        |
      | Loan Type (liability)        | invalid  | unmapped loan type                 | throw an         | quick_lead.xlsx | home           | 128                   | Agriculture     | mandatory              | product           | 0                        |
      | Institution Name (liability) | valid    | mapped institution name            | not throw any    | quick_lead.xlsx | home           | 125                   | Agriculture     | mandatory              | product           | 0                        |
      | Institution Name (liability) | invalid  | unmapped institution name          | throw an         | quick_lead.xlsx | home           | 126                   | Agriculture     | mandatory              | product           | 0                        |
      | EMI Start Date               | valid    | valid date                         | not throw any    | quick_lead.xlsx | home           | 114                   | Agriculture     | mandatory              | product           | 0                        |
      | EMI Start Date               | invalid  | invalid date                       | throw an         | quick_lead.xlsx | home           | 115                   | Agriculture     | mandatory              | product           | 0                        |
      | EMI Start Date               | valid    | more than current date             | not throw any    | quick_lead.xlsx | home           | 147                   | Agriculture     | mandatory              | product           | 0                        |
      | EMI Start Date               | invalid  | before 1942                        | throw an         | quick_lead.xlsx | home           | 116                   | Agriculture     | mandatory              | product           | 0                        |
      | Issue Date                   | valid    | valid date                         | not throw any    | quick_lead.xlsx | home           | 117                   | Agriculture     | mandatory              | product           | 0                        |
      | Issue Date                   | invalid  | invalid date                       | throw an         | quick_lead.xlsx | home           | 118                   | Agriculture     | mandatory              | product           | 0                        |
      | Issue Date                   | valid    | more than current date             | not throw any    | quick_lead.xlsx | home           | 148                   | Agriculture     | mandatory              | product           | 0                        |
      | Issue Date                   | invalid  | before 1942                        | throw an         | quick_lead.xlsx | home           | 149                   | Agriculture     | mandatory              | product           | 0                        |
      | Maturity Date                | valid    | valid date                         | not throw any    | quick_lead.xlsx | home           | 119                   | Agriculture     | mandatory              | product           | 0                        |
      | Maturity Date                | invalid  | invalid date                       | throw an         | quick_lead.xlsx | home           | 120                   | Agriculture     | mandatory              | product           | 0                        |
      | Maturity Date                | valid    | more than current date             | not throw any    | quick_lead.xlsx | home           | 150                   | Agriculture     | mandatory              | product           | 0                        |
      | Maturity Date                | invalid  | before 1942                        | throw an         | quick_lead.xlsx | home           | 151                   | Agriculture     | mandatory              | product           | 0                        |
      | Expiry Date                  | valid    | valid date                         | not throw any    | quick_lead.xlsx | home           | 121                   | Agriculture     | mandatory              | product           | 0                        |
      | Expiry Date                  | invalid  | invalid date                       | throw an         | quick_lead.xlsx | home           | 122                   | Agriculture     | mandatory              | product           | 0                        |
      | Expiry Date                  | invalid  | more than current date             | throw an         | quick_lead.xlsx | home           | 152                   | Agriculture     | mandatory              | product           | 0                        |
      | Expiry Date                  | invalid  | before 1942                        | throw an         | quick_lead.xlsx | home           | 153                   | Agriculture     | mandatory              | product           | 0                        |
      | Installment Amount           | invalid  | more than 18 digits                | throw an         | quick_lead.xlsx | home           | 97                    | Agriculture     | mandatory              | product           | 0                        |
      | Installment Amount           | valid    | less than 18 digits                | not throw any    | quick_lead.xlsx | home           | 98                    | Agriculture     | mandatory              | product           | 0                        |
      | Installment Amount           | invalid  | character                          | throw an         | quick_lead.xlsx | home           | 99                    | Agriculture     | mandatory              | product           | 0                        |
      | Installment Amount           | invalid  | special character                  | throw an         | quick_lead.xlsx | home           | 100                   | Agriculture     | mandatory              | product           | 0                        |
      | Installment Amount           | invalid  | negative values                    | throw an         | quick_lead.xlsx | home           | 101                   | Agriculture     | mandatory              | product           | 0                        |
      | Installment Amount           | valid    | positive values and Upto 18 digits | not throw any    | quick_lead.xlsx | home           | 102                   | Agriculture     | mandatory              | product           | 0                        |
      | Installment Amount           | invalid  | character with space               | throw an         | quick_lead.xlsx | home           | 103                   | Agriculture     | mandatory              | product           | 0                        |
      | Installment Amount           | invalid  | digits with space                  | throw an         | quick_lead.xlsx | home           | 104                   | Agriculture     | mandatory              | product           | 0                        |
      | End Use of Loan              | valid    | mapped End Use of Loan             | not throw any    | quick_lead.xlsx | home           | 129                   | Agriculture     | mandatory              | product           | 0                        |
      | End Use of Loan              | invalid  | unmapped End Use of Loan           | throw an         | quick_lead.xlsx | home           | 8                     | Agriculture     | mandatory              | product           | 0                        |
      | Security Given               | valid    | numeric values                     | not throw any    | quick_lead.xlsx | home           | 105                   | Agriculture     | mandatory              | product           | 0                        |
      | Security Given               | valid    | alphanumeric values                | not throw any    | quick_lead.xlsx | home           | 106                   | Agriculture     | mandatory              | product           | 0                        |
      | Security Given               | valid    | negative values                    | not throw any    | quick_lead.xlsx | home           | 107                   | Agriculture     | mandatory              | product           | 0                        |
      | Security Given               | valid    | character                          | not throw any    | quick_lead.xlsx | home           | 108                   | Agriculture     | mandatory              | product           | 0                        |
      | Security Given               | invalid  | special character                  | throw an         | quick_lead.xlsx | home           | 109                   | Agriculture     | mandatory              | product           | 0                        |
      | Security Given               | valid    | character with space               | not throw any    | quick_lead.xlsx | home           | 110                   | Agriculture     | mandatory              | product           | 0                        |
      | Security Given               | valid    | digits with space                  | not throw any    | quick_lead.xlsx | home           | 111                   | Agriculture     | mandatory              | product           | 0                        |
      | Security Given               | invalid  | character with underscore          | throw an         | quick_lead.xlsx | home           | 112                   | Agriculture     | mandatory              | product           | 0                        |
      | Security Given               | invalid  | digits with underscore             | throw an         | quick_lead.xlsx | home           | 113                   | Agriculture     | mandatory              | product           | 0                        |
      | Closure Date                 | valid    | valid date                         | not throw any    | quick_lead.xlsx | home           | 123                   | Agriculture     | mandatory              | product           | 0                        |
      | Closure Date                 | invalid  | invalid date                       | throw an         | quick_lead.xlsx | home           | 124                   | Agriculture     | mandatory              | product           | 0                        |
      | Closure Date                 | invalid  | more than current date             | throw an         | quick_lead.xlsx | home           | 154                   | Agriculture     | mandatory              | product           | 0                        |
      | Closure Date                 | invalid  | before 1942                        | throw an         | quick_lead.xlsx | home           | 155                   | Agriculture     | mandatory              | product           | 0                        |

  @ImplementedBy-deep.maurya
#FeatureID-ACAUTOCAS-68
  Scenario Outline: ACAUTOCAS-4704: <DependentField> field should be <DependentFieldsBehaviour> which depends on <Fields> field in liability details of lead for individual applicant
    And user open lead grid
    And user opens quick lead entries to create new quick lead
    And user reads data from the excel file "<QuickLeadWB>" under sheet "<QuickLead_product>" and row <QuickLead_product_rowNum>
    And user selects the product type
    When user selects applicant is "<ApplicantType>" applicant
    And user reads data from the excel file "<QuickLeadWB>" under sheet "<QuickLead_home>" and row <QuickLead_home_rowNum>
    And user fills "<Mandatory>" fields to create "<ApplicantType>" applicant lead
    And user save the individual applicant lead
    And user open created lead from lead grid
    And user selects Occupation Type as "<OccupationType>"
    And user selects "<Fields>" field in liability details for "<ApplicantType>"
    Then "<DependentField>" should be "<DependentFieldsBehaviour>" in liability details
    Examples:
      | Fields                            | DependentField             | DependentFieldsBehaviour     | QuickLeadWB     | QuickLead_home | QuickLead_home_rowNum | ApplicantType | Mandatory | OccupationType | QuickLead_product | QuickLead_product_rowNum |
      | Liability as Internal             | Source System              | display                      | quick_lead.xlsx | home           | 0                     | individual    | mandatory | Agriculture    | product           | 0                        |
      | Liability as External             | Source System              | hide                         | quick_lead.xlsx | home           | 0                     | individual    | mandatory | Agriculture    | product           | 0                        |
      | Liability Type as Loan            | Joint Liability Percentage | display in disabled mode     | quick_lead.xlsx | home           | 0                     | individual    | mandatory | Agriculture    | product           | 0                        |
      | Liability Type as Loan            | MOB(Months on Book)        | display in non editable mode | quick_lead.xlsx | home           | 0                     | individual    | mandatory | Agriculture    | product           | 0                        |
      | Joint Liability check box         | Joint Liability Percentage | display in editable mode     | quick_lead.xlsx | home           | 0                     | individual    | mandatory | Agriculture    | product           | 0                        |
      | Liability Type as Credit Card     | Joint Liability Percentage | hide                         | quick_lead.xlsx | home           | 0                     | individual    | mandatory | Agriculture    | product           | 0                        |
      | Consider for obligation check box | Reason                     | hide                         | quick_lead.xlsx | home           | 0                     | individual    | mandatory | Agriculture    | product           | 0                        |
      | Consider for obligation check box | Reason Description         | hide                         | quick_lead.xlsx | home           | 0                     | individual    | mandatory | Agriculture    | product           | 0                        |
      | Consider for obligation check box | Comments on Reason         | hide                         | quick_lead.xlsx | home           | 0                     | individual    | mandatory | Agriculture    | product           | 0                        |
      | Is Balance Transfer check box     | Reason                     | hide                         | quick_lead.xlsx | home           | 0                     | individual    | mandatory | Agriculture    | product           | 0                        |
      | Is Balance Transfer check box     | Reason Description         | hide                         | quick_lead.xlsx | home           | 0                     | individual    | mandatory | Agriculture    | product           | 0                        |
      | Is Balance Transfer check box     | Comments on Reason         | hide                         | quick_lead.xlsx | home           | 0                     | individual    | mandatory | Agriculture    | product           | 0                        |
      | or fills Card Expiry Date         | MOB(Months on Book)        | autofill                     | quick_lead.xlsx | home           | 0                     | individual    | mandatory | Agriculture    | product           | 0                        |

    @LoggedBug
    Examples:
      | Fields                | DependentField | DependentFieldsBehaviour | QuickLeadWB     | QuickLead_home | QuickLead_home_rowNum | ApplicantType | Mandatory | OccupationType |
      | Liability as Internal | Source System  | mandatory                | quick_lead.xlsx | home           | 0                     | individual    | mandatory | Agriculture    |

  @ImplementedBy-kanika.mahal
  #FeatureID-ACAUTOCAS-68
  Scenario Outline: ACAUTOCAS-4705: Add <NoOfLiability> liability in lead for individual applicant
    And user open lead grid
    And user opens quick lead entries to create new quick lead
    And user reads data from the excel file "<QuickLeadWB>" under sheet "<QuickLead_product>" and row <QuickLead_product_rowNum>
    And user selects the product type
    When user selects applicant is "individual" applicant
    And user reads data from the excel file "<QuickLeadWB>" under sheet "<QuickLead_home>" and row <QuickLead_home_rowNum>
    And user fills "<Mandatory_NonMandatory>" fields to create "individual" applicant lead
    And user save the individual applicant lead
    And user open created lead from lead grid
    And user selects Occupation Type as "<Occupation_type>"
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_liabilityDetails>" and row <FinancialDetails_liabilityDetails_rowNum>
    And user navigates to liability details
    And user fills "<NoOfLiability>" liability details
    Then "<NoOfLiability>" Liability in lead for individual applicant should be added
    Examples:
      | NoOfLiability | Mandatory_NonMandatory | QuickLeadWB     | QuickLead_home | QuickLead_home_rowNum | Occupation_type | QuickLead_product | QuickLead_product_rowNum |FinancialDetailsWB     | FinancialDetails_liabilityDetails | FinancialDetails_liabilityDetails_rowNum |
      | single        | mandatory              | quick_lead.xlsx | home           | 0                     | Agriculture     | product           | 0                        |financial_details.xlsx | liability_details                 | 186                                      |
      | multiple      | mandatory              | quick_lead.xlsx | home           | 0                     | Agriculture     | product           | 0                        |financial_details.xlsx | liability_details                 | 186                                      |

  @ImplementedBy-kanika.mahal
    @LoggedBug
    #FeatureID-ACAUTOCAS-68
  Scenario Outline:ACAUTOCAS-4706:<Actions> liability details in lead for individual applicant
    And user open lead grid
    And user opens quick lead entries to create new quick lead
    And user reads data from the excel file "<QuickLeadWB>" under sheet "<QuickLead_product>" and row <QuickLead_product_rowNum>
    And user selects the product type
    When user selects applicant is "individual" applicant
    And user reads data from the excel file "<QuickLeadWB>" under sheet "<QuickLead_home>" and row <QuickLead_home_rowNum>
    And user fills "<Mandatory_NonMandatory>" fields to create "individual" applicant lead
    And user save the individual applicant lead
    And user open created lead from lead grid
    And user selects Occupation Type as "<Occupation_type>"
    And user fills all mandatory filled to add liability
    And user saves the liability details
    And user "<Actions>" liability details in lead
    Then liability details in lead should be "<Actions>"
    Examples:
      | Actions | Mandatory_NonMandatory | QuickLeadWB     | QuickLead_home | QuickLead_home_rowNum | Occupation_type | QuickLead_product | QuickLead_product_rowNum |
      | Edit    | mandatory              | quick_lead.xlsx | home           | 0                     | Agriculture     | Home Loan         | 0                        |
      | Delete  | mandatory              | quick_lead.xlsx | home           | 0                     | Agriculture     | Home Loan         | 0                        |

  @ImplementedBy-kanika.mahal
    @LoggedBug
  #FeatureID-ACAUTOCAS-68
  Scenario Outline: ACAUTOCAS-4773:  Liability details grid validation in lead for individual applicant
    And user open lead grid
    And user opens quick lead entries to create new quick lead
    And user reads data from the excel file "<QuickLeadWB>" under sheet "<QuickLead_product>" and row <QuickLead_product_rowNum>
    And user selects the product type
    When user selects applicant is "individual" applicant
    And user reads data from the excel file "<QuickLeadWB>" under sheet "<QuickLead_home>" and row <QuickLead_home_rowNum>
    And user fills "<Mandatory_NonMandatory>" fields to create "individual" applicant lead
    And user save the individual applicant lead
    And user open created lead from lead grid
    And user selects Occupation Type as "<Occupation_type>"
    And user fills all mandatory filled to add liability
    And user saves the liability details
    Then liability details should be added in liability details grid
    Examples:
      | Mandatory_NonMandatory | QuickLeadWB     | QuickLead_home | QuickLead_home_rowNum | Occupation_type | QuickLead_product | QuickLead_product_rowNum |
      | mandatory              | quick_lead.xlsx | home           | 0                     | Agriculture     | product           | 0                        |

  @ImplementedBy-yash.sharma
#FeatureID-ACAUTOCAS-68
  Scenario Outline: ACAUTOCAS-4707: Validation of sorting action by <Column> column of liability details grid in lead for individual applicant
    And user reads data from the excel file "<QuickLeadWB>" under sheet "<QuickLead_product>" and row <QuickLead_product_rowNum>
    And user open lead grid
    And user opens quick lead entries to create new quick lead
    And user selects the product type
    When user selects applicant is "<ApplicantType>" applicant
    And user reads data from the excel file "<QuickLeadWB>" under sheet "<QuickLead_home>" and row <QuickLead_home_rowNum>
    And user fills "<MandatoryOrNot>" fields to create "<ApplicantType>" applicant lead
    And user save the individual applicant lead
    And user open created lead from lead grid
    And user selects Occupation Type as "<Occupation_type>"
    And user reads data from the excel file "<EmploymentDetailsWB>" under sheet "<EmploymentDetails_home>" and row <EmploymentDetails_home_rowNum>
    And user add multiple liabilities
    And user sorting the liability details by "<Column>" column
    Then liability details should be sorted based on "<Column>" column
    Examples:
      | Column                | ApplicantType | MandatoryOrNot | QuickLeadWB     | QuickLead_home | QuickLead_home_rowNum | QuickLead_product | QuickLead_product_rowNum | Occupation_type | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum |
      | Liability Type        | individual    | mandatory      | quick_lead.xlsx | home           | 0                     | product           | 2                        | Agriculture     | employment_details.xlsx | home                   | 89                            |
      | Loan Type             | individual    | mandatory      | quick_lead.xlsx | home           | 0                     | product           | 2                        | Agriculture     | employment_details.xlsx | home                   | 89                            |
      | Institution Name      | individual    | mandatory      | quick_lead.xlsx | home           | 0                     | product           | 2                        | Agriculture     | employment_details.xlsx | home                   | 89                            |
      | Account Number        | individual    | mandatory      | quick_lead.xlsx | home           | 0                     | product           | 2                        | Agriculture     | employment_details.xlsx | home                   | 89                            |
      | Application ID        | individual    | mandatory      | quick_lead.xlsx | home           | 0                     | product           | 2                        | Agriculture     | employment_details.xlsx | home                   | 89                            |
      | Principle Outstanding | individual    | mandatory      | quick_lead.xlsx | home           | 0                     | product           | 2                        | Agriculture     | employment_details.xlsx | home                   | 89                            |
      | Actions               | individual    | mandatory      | quick_lead.xlsx | home           | 0                     | product           | 2                        | Agriculture     | employment_details.xlsx | home                   | 89                            |
