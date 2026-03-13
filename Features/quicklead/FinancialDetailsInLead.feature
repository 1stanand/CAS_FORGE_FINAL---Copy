@Epic-Quick_Lead
@ReviewedBy-
@AuthoredBy-vipin.kishor
@Reconciled
@ReviewedByDEV


Feature:Financial details validation of lead

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0

  @ImplementedBy-rishabh.sachan
  @Release3
  #FeatureID-ACAUTOCAS-69
  Scenario Outline: ACAUTOCAS-4668: <DependentField> field should be <DependentFieldsBehaviour> which depends on <OccupationType> Occupation type of individual applicant
    And user open lead grid
    And user opens quick lead entries to create new quick lead
    And user reads data from the excel file "<QuickLeadWB>" under sheet "<QuickLead_product>" and row <QuickLead_product_rowNum>
    And user selects the product type
    When user selects applicant is "<ApplicantType>" applicant
    And user reads data from the excel file "<QuickLeadWB>" under sheet "<QuickLead_home>" and row <QuickLead_home_rowNum>
    And user fills "<MandatoryOrNonMandatory>" fields to create "<ApplicantType>" applicant lead
    And user save the individual applicant lead
    And user open created lead from lead grid
    And user selects Occupation Type as "<OccupationType>"
    Then "<DependentField>" should be "<DependentFieldsBehaviour>" in financial detail section
    Examples:
      | OccupationType                 | DependentField                                     | DependentFieldsBehaviour | MandatoryOrNonMandatory | ApplicantType | QuickLeadWB     | QuickLead_home | QuickLead_home_rowNum | QuickLead_product | QuickLead_product_rowNum |
      | Agriculture                    | Agriculture Income Details tab                     | display                  | mandatory               | individual    | quick_lead.xlsx | home           | 0                     | product           | 2                        |
      | Agriculture                    | Agriculture Expense Details tab                    | display                  | mandatory               | individual    | quick_lead.xlsx | home           | 0                     | product           | 2                        |
      | Others                         | Nature of Occupation                               | display                  | mandatory               | individual    | quick_lead.xlsx | home           | 0                     | product           | 2                        |
      | Others                         | Nature of Occupation                               | mandatory                | mandatory               | individual    | quick_lead.xlsx | home           | 0                     | product           | 2                        |
      | Others                         | Latest year Gross Total Income                     | non mandatory            | mandatory               | individual    | quick_lead.xlsx | home           | 0                     | product           | 2                        |
      | Self Employed Non Professional | Organization Name                                  | non mandatory            | mandatory               | individual    | quick_lead.xlsx | home           | 0                     | product           | 2                        |
      | Self Employed Non Professional | Nature of Business                                 | mandatory                | mandatory               | individual    | quick_lead.xlsx | home           | 0                     | product           | 2                        |
      | Self Employed Non Professional | Years In Business                                  | display                  | mandatory               | individual    | quick_lead.xlsx | home           | 0                     | product           | 2                        |
      | Self Employed Non Professional | Net Profit                                         | display                  | mandatory               | individual    | quick_lead.xlsx | home           | 0                     | product           | 2                        |
      | Self Employed Non Professional | Years In Business                                  | non mandatory            | mandatory               | individual    | quick_lead.xlsx | home           | 0                     | product           | 2                        |
      | Self Employed Non Professional | Net Profit                                         | non mandatory            | mandatory               | individual    | quick_lead.xlsx | home           | 0                     | product           | 2                        |
      | Self Employed Non Professional | Self Employed Non Professional Income Details tab  | display                  | mandatory               | individual    | quick_lead.xlsx | home           | 0                     | product           | 2                        |
      | Self Employed Non Professional | Self Employed Non Professional Expense Details tab | display                  | mandatory               | individual    | quick_lead.xlsx | home           | 0                     | product           | 2                        |
      | Self Employed Professional     | Nature of Profession                               | display                  | mandatory               | individual    | quick_lead.xlsx | home           | 0                     | product           | 2                        |
      | Self Employed Professional     | Nature of Profession                               | mandatory                | mandatory               | individual    | quick_lead.xlsx | home           | 0                     | product           | 2                        |
      | Self Employed Professional     | Years In Profession                                | display                  | mandatory               | individual    | quick_lead.xlsx | home           | 0                     | product           | 2                        |
      | Self Employed Professional     | Years In Profession                                | non mandatory            | mandatory               | individual    | quick_lead.xlsx | home           | 0                     | product           | 2                        |
      | Self Employed Professional     | Latest year Gross Total Income(Professional)       | display                  | mandatory               | individual    | quick_lead.xlsx | home           | 0                     | product           | 2                        |
      | Self Employed Professional     | Latest year Gross Total Income(Professional)       | non mandatory            | mandatory               | individual    | quick_lead.xlsx | home           | 0                     | product           | 2                        |
      | Self Employed Professional     | Self Employed Income Details tab                   | display                  | mandatory               | individual    | quick_lead.xlsx | home           | 0                     | product           | 2                        |
      | Self Employed Professional     | Self Employed Expense Details tab                  | display                  | mandatory               | individual    | quick_lead.xlsx | home           | 0                     | product           | 2                        |
      | Salaried                       | Employer Name                                      | display                  | mandatory               | individual    | quick_lead.xlsx | home           | 0                     | product           | 2                        |
      | Salaried                       | Employer Name                                      | mandatory                | mandatory               | individual    | quick_lead.xlsx | home           | 0                     | product           | 2                        |
      | Salaried                       | Working here for past                              | display                  | mandatory               | individual    | quick_lead.xlsx | home           | 0                     | product           | 2                        |
      | Salaried                       | Working here for past                              | mandatory                | mandatory               | individual    | quick_lead.xlsx | home           | 0                     | product           | 2                        |
      | Salaried                       | Total Work Experience                              | display                  | mandatory               | individual    | quick_lead.xlsx | home           | 0                     | product           | 2                        |
      | Salaried                       | Total Work Experience                              | mandatory                | mandatory               | individual    | quick_lead.xlsx | home           | 0                     | product           | 2                        |
      | Salaried                       | Gross Monthly Salary                               | display                  | mandatory               | individual    | quick_lead.xlsx | home           | 0                     | product           | 2                        |
      | Salaried                       | Gross Monthly Salary                               | non mandatory            | mandatory               | individual    | quick_lead.xlsx | home           | 0                     | product           | 2                        |
      | Salaried                       | Monthly Take Home Salary                           | display                  | mandatory               | individual    | quick_lead.xlsx | home           | 0                     | product           | 2                        |
      | Salaried                       | Monthly Take Home Salary                           | non mandatory            | mandatory               | individual    | quick_lead.xlsx | home           | 0                     | product           | 2                        |

#Agriculture
  @ImplementedBy-manish.yadav2
  @Release3
  #FeatureID-ACAUTOCAS-65
  Scenario Outline: ACAUTOCAS-4669:  <Field_Name> field validation in Agriculture Income Details  with <Validity> <InputType> of Lead for individual applicant
    And user open lead grid
    And user opens quick lead entries to create new quick lead
    And user reads data from the excel file "<QuickLeadWB>" under sheet "<QuickLead_product>" and row <QuickLead_product_rowNum>
    And user selects the product type
    When user selects applicant is "<ApplicantType>" applicant
    And user reads data from the excel file "<QuickLeadWB>" under sheet "<QuickLead_home>" and row <QuickLead_home_rowNum>
    And user fills "<MandatoryOrNonMandatory>" fields to create "<ApplicantType>" applicant lead
    And user save the individual applicant lead
    And user open created lead from lead grid
    And user selects Occupation Type as "<OccupationType>"
    And user reads data from the excel file "<financial_detailsWB>" under sheet "<financial_details_sheetName>" and row <financial_details_rowNum>
    And user fill "<Validity>" "<Field_Name>" with "<InputType>" in "<OccupationType>" income details for "<ApplicantType>" applicant
    Then "<Field_Name>" field will "<Throws_notThrows>" error
    Examples:
      | Field_Name           | Validity | InputType                          | Throws_notThrows | financial_detailsWB | financial_details_sheetName | financial_details_rowNum | MandatoryOrNonMandatory | OccupationType | ApplicantType | QuickLeadWB     | QuickLead_home | QuickLead_home_rowNum | QuickLead_product | QuickLead_product_rowNum |
      | Income Source        | valid    | mapped income source               | not throw any    | quick_lead.xlsx     | financial_details           | 11                       | mandatory               | Agriculture    | individual    | quick_lead.xlsx | home           | 0                     | product           | 2                        |
      | Income Source        | invalid  | unmapped income source             | throw an         | quick_lead.xlsx     | financial_details           | 12                       | mandatory               | Agriculture    | individual    | quick_lead.xlsx | home           | 0                     | product           | 2                        |
      | Rate(Per hour)       | invalid  | more than 18 digits                | throw an         | quick_lead.xlsx     | financial_details           | 13                       | mandatory               | Agriculture    | individual    | quick_lead.xlsx | home           | 0                     | product           | 2                        |
      | Rate(Per hour)       | valid    | less than 18 digits                | not throw any    | quick_lead.xlsx     | financial_details           | 14                       | mandatory               | Agriculture    | individual    | quick_lead.xlsx | home           | 0                     | product           | 2                        |
      | Rate(Per hour)       | invalid  | negative values                    | throw an         | quick_lead.xlsx     | financial_details           | 17                       | mandatory               | Agriculture    | individual    | quick_lead.xlsx | home           | 0                     | product           | 2                        |
      | Rate(Per hour)       | valid    | positive values and Upto 18 digits | not throw any    | quick_lead.xlsx     | financial_details           | 18                       | mandatory               | Agriculture    | individual    | quick_lead.xlsx | home           | 0                     | product           | 2                        |
      | Usage Duration(Hour) | invalid  | more than 18 digits                | throw an         | quick_lead.xlsx     | financial_details           | 19                       | mandatory               | Agriculture    | individual    | quick_lead.xlsx | home           | 0                     | product           | 2                        |
      | Usage Duration(Hour) | valid    | less than 18 digits                | not throw any    | quick_lead.xlsx     | financial_details           | 20                       | mandatory               | Agriculture    | individual    | quick_lead.xlsx | home           | 0                     | product           | 2                        |
      | Usage Duration(Hour) | invalid  | negative values                    | throw an         | quick_lead.xlsx     | financial_details           | 23                       | mandatory               | Agriculture    | individual    | quick_lead.xlsx | home           | 0                     | product           | 2                        |
      | Usage Duration(Hour) | valid    | positive values and Upto 18 digits | not throw any    | quick_lead.xlsx     | financial_details           | 24                       | mandatory               | Agriculture    | individual    | quick_lead.xlsx | home           | 0                     | product           | 2                        |

    @LoggedBug
    Examples:
      | Field_Name           | Validity | InputType         | Throws_notThrows | financial_detailsWB | financial_details_sheetName | financial_details_rowNum | MandatoryOrNonMandatory | OccupationType | ApplicantType | QuickLeadWB     | QuickLead_home | QuickLead_home_rowNum | QuickLead_product | QuickLead_product_rowNum |
      | Rate(Per hour)       | invalid  | character         | throw an         | quick_lead.xlsx     | financial_details           | 15                       | mandatory               | Agriculture    | individual    | quick_lead.xlsx | home           | 0                     | product           | 2                        |
      | Rate(Per hour)       | invalid  | special character | throw an         | quick_lead.xlsx     | financial_details           | 16                       | mandatory               | Agriculture    | individual    | quick_lead.xlsx | home           | 0                     | product           | 2                        |
      | Usage Duration(Hour) | invalid  | character         | throw an         | quick_lead.xlsx     | financial_details           | 21                       | mandatory               | Agriculture    | individual    | quick_lead.xlsx | home           | 0                     | product           | 2                        |
      | Usage Duration(Hour) | invalid  | special character | throw an         | quick_lead.xlsx     | financial_details           | 22                       | mandatory               | Agriculture    | individual    | quick_lead.xlsx | home           | 0                     | product           | 2                        |

  @ImplementedBy-manish.yadav2
  @Release3
  #FeatureID-ACAUTOCAS-65
  Scenario Outline: ACAUTOCAS-4670: <Add_Delete> agriculture income details of Lead for individual applicant
    And user open lead grid
    And user opens quick lead entries to create new quick lead
    And user reads data from the excel file "<QuickLeadWB>" under sheet "<QuickLead_product>" and row <QuickLead_product_rowNum>
    And user selects the product type
    When user selects applicant is "<ApplicantType>" applicant
    And user reads data from the excel file "<QuickLeadWB>" under sheet "<QuickLead_home>" and row <QuickLead_home_rowNum>
    And user fills "<MandatoryOrNonMandatory>" fields to create "<ApplicantType>" applicant lead
    And user save the individual applicant lead
    And user open created lead from lead grid
    And user selects Occupation Type as "<OccupationType>"
    And user reads data from the excel file "<QuickLeadWB>" under sheet "<QuickLead_financialDetails>" and row <QuickLead_financialDetails_rowNum>
    And user "<Add_Delete>" Agriculture Income Details
    Then agriculture income details "<Add_Delete>" successfully
    Examples:
      | Add_Delete   | OccupationType | MandatoryOrNonMandatory | OccupationType | ApplicantType | QuickLeadWB     | QuickLead_home | QuickLead_home_rowNum | QuickLead_financialDetails | QuickLead_financialDetails_rowNum | QuickLead_product | QuickLead_product_rowNum |
      | Add          | Agriculture    | mandatory               | Agriculture    | individual    | quick_lead.xlsx | home           | 0                     | financial_details          | 11                                | product           | 2                        |
      | delete       | Agriculture    | mandatory               | Agriculture    | individual    | quick_lead.xlsx | home           | 0                     | financial_details          | 11                                | product           | 2                        |
      | Add Multiple | Agriculture    | mandatory               | Agriculture    | individual    | quick_lead.xlsx | home           | 0                     | financial_details          | 11                                | product           | 2                        |

  @ImplementedBy-manish.yadav2
  @Release3
  #FeatureID-ACAUTOCAS-67
  Scenario Outline: ACAUTOCAS-4671: <Field_Name> field validation in Agriculture Expense Details with <Validity> <InputType> of Lead for individual applicant
    And user open lead grid
    And user opens quick lead entries to create new quick lead
    And user reads data from the excel file "<QuickLeadWB>" under sheet "<QuickLead_product>" and row <QuickLead_product_rowNum>
    And user selects the product type
    When user selects applicant is "<ApplicantType>" applicant
    And user reads data from the excel file "<QuickLeadWB>" under sheet "<QuickLead_home>" and row <QuickLead_home_rowNum>
    And user fills "<MandatoryOrNonMandatory>" fields to create "<ApplicantType>" applicant lead
    And user save the individual applicant lead
    And user open created lead from lead grid
    And user selects Occupation Type as "<OccupationType>"
    And user reads data from the excel file "<financial_detailsWB>" under sheet "<financial_details_sheetName>" and row <financial_details_rowNum>
    And user fill "<Validity>" "<Field_Name>" with "<InputType>" in "<OccupationType>" expense details
    Then "<Field_Name>" field "<Throws_notThrows>" error message
    Examples:
      | Field_Name           | Validity | InputType                          | Throws_notThrows | financial_detailsWB | financial_details_sheetName | financial_details_rowNum | OccupationType | MandatoryOrNonMandatory | ApplicantType | QuickLeadWB     | QuickLead_home | QuickLead_home_rowNum | QuickLead_product | QuickLead_product_rowNum |
      | Expense Type         | valid    | mapped income source               | not throw any    | quick_lead.xlsx     | financial_details           | 25                       | Agriculture    | mandatory               | individual    | quick_lead.xlsx | home           | 0                     | product           | 2                        |
      | Expense Type         | invalid  | unmapped income source             | throw an         | quick_lead.xlsx     | financial_details           | 26                       | Agriculture    | mandatory               | individual    | quick_lead.xlsx | home           | 0                     | product           | 2                        |
      | Rate(Per hour)       | invalid  | more than 18 digits                | throw an         | quick_lead.xlsx     | financial_details           | 27                       | Agriculture    | mandatory               | individual    | quick_lead.xlsx | home           | 0                     | product           | 2                        |
      | Rate(Per hour)       | valid    | less than 18 digits                | not throw any    | quick_lead.xlsx     | financial_details           | 28                       | Agriculture    | mandatory               | individual    | quick_lead.xlsx | home           | 0                     | product           | 2                        |
      | Rate(Per hour)       | invalid  | negative values                    | throw an         | quick_lead.xlsx     | financial_details           | 31                       | Agriculture    | mandatory               | individual    | quick_lead.xlsx | home           | 0                     | product           | 2                        |
      | Rate(Per hour)       | valid    | positive values and Upto 18 digits | not throw any    | quick_lead.xlsx     | financial_details           | 32                       | Agriculture    | mandatory               | individual    | quick_lead.xlsx | home           | 0                     | product           | 2                        |
      | Usage Duration(Hour) | invalid  | more than 18 digits                | throw an         | quick_lead.xlsx     | financial_details           | 33                       | Agriculture    | mandatory               | individual    | quick_lead.xlsx | home           | 0                     | product           | 2                        |
      | Usage Duration(Hour) | valid    | less than 18 digits                | not throw any    | quick_lead.xlsx     | financial_details           | 34                       | Agriculture    | mandatory               | individual    | quick_lead.xlsx | home           | 0                     | product           | 2                        |
      | Usage Duration(Hour) | invalid  | negative values                    | throw an         | quick_lead.xlsx     | financial_details           | 37                       | Agriculture    | mandatory               | individual    | quick_lead.xlsx | home           | 0                     | product           | 2                        |
      | Usage Duration(Hour) | valid    | positive values and Upto 18 digits | not throw any    | quick_lead.xlsx     | financial_details           | 38                       | Agriculture    | mandatory               | individual    | quick_lead.xlsx | home           | 0                     | product           | 2                        |

    @LoggedBug
    Examples:
      | Field_Name           | Validity | InputType         | Throws_notThrows | financial_detailsWB | financial_details_sheetName | financial_details_rowNum | OccupationType | MandatoryOrNonMandatory | ApplicantType | QuickLeadWB     | QuickLead_home | QuickLead_home_rowNum | QuickLead_product | QuickLead_product_rowNum |
      | Rate(Per hour)       | invalid  | character         | throw an         | quick_lead.xlsx     | financial_details           | 29                       | Agriculture    | mandatory               | individual    | quick_lead.xlsx | home           | 0                     | product           | 2                        |
      | Rate(Per hour)       | invalid  | special character | throw an         | quick_lead.xlsx     | financial_details           | 30                       | Agriculture    | mandatory               | individual    | quick_lead.xlsx | home           | 0                     | product           | 2                        |
      | Usage Duration(Hour) | invalid  | character         | throw an         | quick_lead.xlsx     | financial_details           | 35                       | Agriculture    | mandatory               | individual    | quick_lead.xlsx | home           | 0                     | product           | 2                        |
      | Usage Duration(Hour) | invalid  | special character | throw an         | quick_lead.xlsx     | financial_details           | 36                       | Agriculture    | mandatory               | individual    | quick_lead.xlsx | home           | 0                     | product           | 2                        |

  @ImplementedBy-manish.yadav2
  @Release3
  #FeatureID-ACAUTOCAS-67
  Scenario Outline: ACAUTOCAS-4672: <Add_Delete> agriculture expense details of Lead for individual applicant
    And user open lead grid
    And user opens quick lead entries to create new quick lead
    And user reads data from the excel file "<QuickLeadWB>" under sheet "<QuickLead_product>" and row <QuickLead_product_rowNum>
    And user selects the product type
    When user selects applicant is "<ApplicantType>" applicant
    And user reads data from the excel file "<QuickLeadWB>" under sheet "<QuickLead_home>" and row <QuickLead_home_rowNum>
    And user fills "<MandatoryOrNonMandatory>" fields to create "<ApplicantType>" applicant lead
    And user save the individual applicant lead
    And user open created lead from lead grid
    And user selects Occupation Type as "<OccupationType>"
    And user reads data from the excel file "<QuickLeadWB>" under sheet "<QuickLead_financialDetails>" and row <QuickLead_financialDetails_rowNum>
    And user "<Add_Delete>" Agriculture Expense Details
    Then agriculture expense details "<Add_Delete>" successfully
    Examples:
      | Add_Delete   | QuickLead_financialDetails | QuickLead_financialDetails_rowNum | OccupationType | MandatoryOrNonMandatory | ApplicantType | QuickLeadWB     | QuickLead_home | QuickLead_home_rowNum | QuickLead_product | QuickLead_product_rowNum |
      | Add          | financial_details          | 25                                | Agriculture    | mandatory               | individual    | quick_lead.xlsx | home           | 0                     | product           | 2                        |
      | delete       | financial_details          | 25                                | Agriculture    | mandatory               | individual    | quick_lead.xlsx | home           | 0                     | product           | 2                        |
      | Add Multiple | financial_details          | 25                                | Agriculture    | mandatory               | individual    | quick_lead.xlsx | home           | 0                     | product           | 2                        |


#Self Employed Non Professional Income Details
  @ImplementedBy-ayush.garg
  @Release2
  #FeatureID-ACAUTOCAS-65
  Scenario Outline: ACAUTOCAS-4673: <Field_Name> field validation in Self employed non professional income details with <Validity> <InputType> of Lead for individual applicant
    And user open lead grid
    And user opens quick lead entries to create new quick lead
    And user reads data from the excel file "<QuickLeadWB>" under sheet "<QuickLead_product>" and row <QuickLead_product_rowNum>
    And user selects the product type
    When user selects applicant is "<ApplicantType>" applicant
    And user reads data from the excel file "<QuickLeadWB>" under sheet "<QuickLead_home>" and row <QuickLead_home_rowNum>
    And user fills "<MandatoryOrNonMandatory>" fields to create "<ApplicantType>" applicant lead
    And user save the individual applicant lead
    And user open created lead from lead grid
    And user reads data from the excel file "<QuickLeadWB>" under sheet "<QuickLeadWB_work_and_income>" and row <QuickLeadWB_work_and_income_rowNum>
    And user selects Occupation Type as "<OccupationType>"
    And user fill "<Validity>" "<Field_Name>" with "<InputType>" in self employed non professional income details
    Then "<Field_Name>" field will "<Throws_notThrows>" error
    Examples:
      | Field_Name    | Validity | InputType                          | Throws_notThrows | QuickLeadWB     | QuickLeadWB_work_and_income | QuickLeadWB_work_and_income_rowNum | OccupationType                 | MandatoryOrNonMandatory | ApplicantType | QuickLead_home | QuickLead_home_rowNum | QuickLead_product | QuickLead_product_rowNum |
      | Year 1 income | invalid  | more than 18 digits                | throw an         | quick_lead.xlsx | work_and_income             | 0                                  | Self Employed Non Professional | mandatory               | individual    | home           | 0                     | product           | 2                        |
      | Year 1 income | valid    | less than 18 digits                | not throw any    | quick_lead.xlsx | work_and_income             | 1                                  | Self Employed Non Professional | mandatory               | individual    | home           | 0                     | product           | 2                        |
      | Year 1 income | invalid  | character                          | throw an         | quick_lead.xlsx | work_and_income             | 2                                  | Self Employed Non Professional | mandatory               | individual    | home           | 0                     | product           | 2                        |
      | Year 1 income | invalid  | special character                  | throw an         | quick_lead.xlsx | work_and_income             | 3                                  | Self Employed Non Professional | mandatory               | individual    | home           | 0                     | product           | 2                        |
      | Year 1 income | invalid  | negative values                    | throw an         | quick_lead.xlsx | work_and_income             | 4                                  | Self Employed Non Professional | mandatory               | individual    | home           | 0                     | product           | 2                        |
      | Year 1 income | valid    | positive values and Upto 18 digits | not throw any    | quick_lead.xlsx | work_and_income             | 5                                  | Self Employed Non Professional | mandatory               | individual    | home           | 0                     | product           | 2                        |
      | Year 2 income | invalid  | more than 18 digits                | throw an         | quick_lead.xlsx | work_and_income             | 6                                  | Self Employed Non Professional | mandatory               | individual    | home           | 0                     | product           | 2                        |
      | Year 2 income | valid    | less than 18 digits                | not throw any    | quick_lead.xlsx | work_and_income             | 7                                  | Self Employed Non Professional | mandatory               | individual    | home           | 0                     | product           | 2                        |
      | Year 2 income | invalid  | character                          | throw an         | quick_lead.xlsx | work_and_income             | 8                                  | Self Employed Non Professional | mandatory               | individual    | home           | 0                     | product           | 2                        |
      | Year 2 income | invalid  | special character                  | throw an         | quick_lead.xlsx | work_and_income             | 9                                  | Self Employed Non Professional | mandatory               | individual    | home           | 0                     | product           | 2                        |
      | Year 2 income | invalid  | negative values                    | throw an         | quick_lead.xlsx | work_and_income             | 10                                 | Self Employed Non Professional | mandatory               | individual    | home           | 0                     | product           | 2                        |
      | Year 2 income | valid    | positive values and Upto 18 digits | not throw any    | quick_lead.xlsx | work_and_income             | 11                                 | Self Employed Non Professional | mandatory               | individual    | home           | 0                     | product           | 2                        |
      | Year 3 income | invalid  | more than 18 digits                | throw an         | quick_lead.xlsx | work_and_income             | 12                                 | Self Employed Non Professional | mandatory               | individual    | home           | 0                     | product           | 2                        |
      | Year 3 income | valid    | less than 18 digits                | not throw any    | quick_lead.xlsx | work_and_income             | 13                                 | Self Employed Non Professional | mandatory               | individual    | home           | 0                     | product           | 2                        |
      | Year 3 income | invalid  | character                          | throw an         | quick_lead.xlsx | work_and_income             | 14                                 | Self Employed Non Professional | mandatory               | individual    | home           | 0                     | product           | 2                        |
      | Year 3 income | invalid  | special character                  | throw an         | quick_lead.xlsx | work_and_income             | 15                                 | Self Employed Non Professional | mandatory               | individual    | home           | 0                     | product           | 2                        |
      | Year 3 income | invalid  | negative values                    | throw an         | quick_lead.xlsx | work_and_income             | 16                                 | Self Employed Non Professional | mandatory               | individual    | home           | 0                     | product           | 2                        |
      | Year 3 income | valid    | positive values and Upto 18 digits | not throw any    | quick_lead.xlsx | work_and_income             | 17                                 | Self Employed Non Professional | mandatory               | individual    | home           | 0                     | product           | 2                        |

  @ImplementedBy-ayush.garg
  @Release2
  #FeatureID-ACAUTOCAS-65
  Scenario Outline: ACAUTOCAS-4674: <Add_Delete> self employed non professional income details of Lead for individual applicant
    And user open lead grid
    And user opens quick lead entries to create new quick lead
    And user reads data from the excel file "<QuickLeadWB>" under sheet "<QuickLead_product>" and row <QuickLead_product_rowNum>
    And user selects the product type
    When user selects applicant is "<ApplicantType>" applicant
    And user reads data from the excel file "<QuickLeadWB>" under sheet "<QuickLead_home>" and row <QuickLead_home_rowNum>
    And user fills "<MandatoryOrNonMandatory>" fields to create "<ApplicantType>" applicant lead
    And user save the individual applicant lead
    And user open created lead from lead grid
    And user selects Occupation Type as "<OccupationType>"
    And user "<Add_Delete>" self employed non professional income details
    Then self employed non professional income details "<Add_Delete>" successfully
    Examples:
      | Add_Delete   | OccupationType                 | MandatoryOrNonMandatory | ApplicantType | QuickLeadWB     | QuickLead_home | QuickLead_home_rowNum | QuickLead_product | QuickLead_product_rowNum |
      | Add          | Self Employed Non Professional | mandatory               | individual    | quick_lead.xlsx | home           | 0                     | product           | 2                        |
      | delete       | Self Employed Non Professional | mandatory               | individual    | quick_lead.xlsx | home           | 0                     | product           | 2                        |
      | Add Multiple | Self Employed Non Professional | mandatory               | individual    | quick_lead.xlsx | home           | 0                     | product           | 2                        |

  @ImplementedBy-ayush.garg
  @Release2
  #FeatureID-ACAUTOCAS-67
  Scenario Outline: ACAUTOCAS-4675: <Field_Name> field validation in Self employed non professional expense details with <Validity> <InputType> of Lead for individual applicant
    And user open lead grid
    And user opens quick lead entries to create new quick lead
    And user reads data from the excel file "<QuickLeadWB>" under sheet "<QuickLead_product>" and row <QuickLead_product_rowNum>
    And user selects the product type
    When user selects applicant is "<ApplicantType>" applicant
    And user reads data from the excel file "<QuickLeadWB>" under sheet "<QuickLead_home>" and row <QuickLead_home_rowNum>
    And user fills "<MandatoryOrNonMandatory>" fields to create "<ApplicantType>" applicant lead
    And user save the individual applicant lead
    And user open created lead from lead grid
    And user reads data from the excel file "<QuickLeadWB>" under sheet "<QuickLeadWB_work_and_income>" and row <QuickLeadWB_work_and_income_rowNum>
    And user selects Occupation Type as "<OccupationType>"
    And user fill "<Validity>" "<Field_Name>" with "<InputType>" in self employed non professional expense details
    Then "<Field_Name>" field will "<Throws_notThrows>" error
    Examples:
      | Field_Name     | Validity | InputType                          | Throws_notThrows | QuickLeadWB     | QuickLeadWB_work_and_income | QuickLeadWB_work_and_income_rowNum | OccupationType                 | MandatoryOrNonMandatory | ApplicantType | QuickLead_home | QuickLead_home_rowNum | QuickLead_product | QuickLead_product_rowNum |
      | Year 1 expense | invalid  | more than 18 digits                | throw an         | quick_lead.xlsx | work_and_income             | 0                                  | Self Employed Non Professional | mandatory               | individual    | home           | 0                     | product           | 2                        |
      | Year 1 expense | valid    | less than 18 digits                | not throw any    | quick_lead.xlsx | work_and_income             | 1                                  | Self Employed Non Professional | mandatory               | individual    | home           | 0                     | product           | 2                        |
      | Year 1 expense | invalid  | character                          | throw an         | quick_lead.xlsx | work_and_income             | 2                                  | Self Employed Non Professional | mandatory               | individual    | home           | 0                     | product           | 2                        |
      | Year 1 expense | invalid  | special character                  | throw an         | quick_lead.xlsx | work_and_income             | 3                                  | Self Employed Non Professional | mandatory               | individual    | home           | 0                     | product           | 2                        |
      | Year 1 expense | invalid  | negative values                    | throw an         | quick_lead.xlsx | work_and_income             | 4                                  | Self Employed Non Professional | mandatory               | individual    | home           | 0                     | product           | 2                        |
      | Year 1 expense | valid    | positive values and Upto 18 digits | not throw any    | quick_lead.xlsx | work_and_income             | 5                                  | Self Employed Non Professional | mandatory               | individual    | home           | 0                     | product           | 2                        |
      | Year 2 expense | invalid  | more than 18 digits                | throw an         | quick_lead.xlsx | work_and_income             | 6                                  | Self Employed Non Professional | mandatory               | individual    | home           | 0                     | product           | 2                        |
      | Year 2 expense | valid    | less than 18 digits                | not throw any    | quick_lead.xlsx | work_and_income             | 7                                  | Self Employed Non Professional | mandatory               | individual    | home           | 0                     | product           | 2                        |
      | Year 2 expense | invalid  | character                          | throw an         | quick_lead.xlsx | work_and_income             | 8                                  | Self Employed Non Professional | mandatory               | individual    | home           | 0                     | product           | 2                        |
      | Year 2 expense | invalid  | special character                  | throw an         | quick_lead.xlsx | work_and_income             | 9                                  | Self Employed Non Professional | mandatory               | individual    | home           | 0                     | product           | 2                        |
      | Year 2 expense | invalid  | negative values                    | throw an         | quick_lead.xlsx | work_and_income             | 10                                 | Self Employed Non Professional | mandatory               | individual    | home           | 0                     | product           | 2                        |
      | Year 2 expense | valid    | positive values and Upto 18 digits | not throw any    | quick_lead.xlsx | work_and_income             | 11                                 | Self Employed Non Professional | mandatory               | individual    | home           | 0                     | product           | 2                        |
      | Year 3 expense | invalid  | more than 18 digits                | throw an         | quick_lead.xlsx | work_and_income             | 12                                 | Self Employed Non Professional | mandatory               | individual    | home           | 0                     | product           | 2                        |
      | Year 3 expense | valid    | less than 18 digits                | not throw any    | quick_lead.xlsx | work_and_income             | 13                                 | Self Employed Non Professional | mandatory               | individual    | home           | 0                     | product           | 2                        |
      | Year 3 expense | invalid  | character                          | throw an         | quick_lead.xlsx | work_and_income             | 14                                 | Self Employed Non Professional | mandatory               | individual    | home           | 0                     | product           | 2                        |
      | Year 3 expense | invalid  | special character                  | throw an         | quick_lead.xlsx | work_and_income             | 15                                 | Self Employed Non Professional | mandatory               | individual    | home           | 0                     | product           | 2                        |
      | Year 3 expense | invalid  | negative values                    | throw an         | quick_lead.xlsx | work_and_income             | 16                                 | Self Employed Non Professional | mandatory               | individual    | home           | 0                     | product           | 2                        |
      | Year 3 expense | valid    | positive values and Upto 18 digits | not throw any    | quick_lead.xlsx | work_and_income             | 17                                 | Self Employed Non Professional | mandatory               | individual    | home           | 0                     | product           | 2                        |

  @ImplementedBy-ayush.garg
  @Release2
  #FeatureID-ACAUTOCAS-67
  Scenario Outline: ACAUTOCAS-4676: <Add_Delete> self employed non professional expense details of Lead for individual applicant
    And user open lead grid
    And user opens quick lead entries to create new quick lead
    And user reads data from the excel file "<QuickLeadWB>" under sheet "<QuickLead_product>" and row <QuickLead_product_rowNum>
    And user selects the product type
    When user selects applicant is "<ApplicantType>" applicant
    And user reads data from the excel file "<QuickLeadWB>" under sheet "<QuickLead_home>" and row <QuickLead_home_rowNum>
    And user fills "<MandatoryOrNonMandatory>" fields to create "<ApplicantType>" applicant lead
    And user save the individual applicant lead
    And user open created lead from lead grid
    And user selects Occupation Type as "<OccupationType>"
    And user "<Add_Delete>" Self employed non professional expense details
    Then self employed non professional expense details "<Add_Delete>" successfully
    Examples:
      | Add_Delete   | ApplicantType | MandatoryOrNonMandatory | OccupationType                 | QuickLeadWB     | QuickLead_home | QuickLead_home_rowNum | QuickLead_product | QuickLead_product_rowNum |
      | Add          | individual    | mandatory               | Self Employed Non Professional | quick_lead.xlsx | home           | 0                     | product           | 2                        |
      | delete       | individual    | mandatory               | Self Employed Non Professional | quick_lead.xlsx | home           | 0                     | product           | 2                        |
      | Add Multiple | individual    | mandatory               | Self Employed Non Professional | quick_lead.xlsx | home           | 0                     | product           | 2                        |


    #Self Employed Professional Income Details

  @ImplementedBy-rishabh.sachan
  @Release3
  #FeatureID-ACAUTOCAS-65
  Scenario Outline: ACAUTOCAS-4677:  <Field_Name> field validation in Self employed professional income details with <Validity> <InputType> of Lead for individual applicant
    And user open lead grid
    And user opens quick lead entries to create new quick lead
    And user reads data from the excel file "<QuickLeadWB>" under sheet "<QuickLead_product>" and row <QuickLead_product_rowNum>
    And user selects the product type
    When user selects applicant is "<ApplicantType>" applicant
    And user reads data from the excel file "<QuickLeadWB>" under sheet "<QuickLead_home>" and row <QuickLead_home_rowNum>
    And user fills "<MandatoryOrNonMandatory>" fields to create "<ApplicantType>" applicant lead
    And user save the individual applicant lead
    And user open created lead from lead grid
    And user selects Occupation Type as "<OccupationType>"
    And user reads data from the excel file "<QuickLeadWB>" under sheet "<QuickLeadWB_work_and_income>" and row <QuickLead_workAndIncome_rowNum>
    And user fill "<Validity>" "<Field_Name>" with "<InputType>" in self employed professional income details
    Then "<Field_Name>" field will "<Throws_notThrows>" error
    Examples:
      | Field_Name    | Validity | InputType                          | Throws_notThrows | QuickLead_workAndIncome_rowNum | ApplicantType | OccupationType             | MandatoryOrNonMandatory | QuickLeadWB     | QuickLead_home | QuickLead_home_rowNum | QuickLeadWB_work_and_income | QuickLead_product | QuickLead_product_rowNum |
      | Year 1 income | invalid  | more than 18 digits                | throw an         | 18                             | individual    | Self Employed Professional | mandatory               | quick_lead.xlsx | home           | 0                     | work_and_income             | product           | 0                        |
      | Year 1 income | valid    | less than 18 digits                | not throw any    | 19                             | individual    | Self Employed Professional | mandatory               | quick_lead.xlsx | home           | 0                     | work_and_income             | product           | 0                        |
      | Year 1 income | invalid  | character                          | throw an         | 20                             | individual    | Self Employed Professional | mandatory               | quick_lead.xlsx | home           | 0                     | work_and_income             | product           | 0                        |
      | Year 1 income | invalid  | special character                  | throw an         | 21                             | individual    | Self Employed Professional | mandatory               | quick_lead.xlsx | home           | 0                     | work_and_income             | product           | 0                        |
      | Year 1 income | invalid  | negative values                    | throw an         | 22                             | individual    | Self Employed Professional | mandatory               | quick_lead.xlsx | home           | 0                     | work_and_income             | product           | 0                        |
      | Year 1 income | valid    | positive values and Upto 18 digits | not throw any    | 23                             | individual    | Self Employed Professional | mandatory               | quick_lead.xlsx | home           | 0                     | work_and_income             | product           | 0                        |
      | Year 2 income | invalid  | more than 18 digits                | throw an         | 24                             | individual    | Self Employed Professional | mandatory               | quick_lead.xlsx | home           | 0                     | work_and_income             | product           | 0                        |
      | Year 2 income | valid    | less than 18 digits                | not throw any    | 25                             | individual    | Self Employed Professional | mandatory               | quick_lead.xlsx | home           | 0                     | work_and_income             | product           | 0                        |
      | Year 2 income | invalid  | character                          | throw an         | 26                             | individual    | Self Employed Professional | mandatory               | quick_lead.xlsx | home           | 0                     | work_and_income             | product           | 0                        |
      | Year 2 income | invalid  | special character                  | throw an         | 27                             | individual    | Self Employed Professional | mandatory               | quick_lead.xlsx | home           | 0                     | work_and_income             | product           | 0                        |
      | Year 2 income | invalid  | negative values                    | throw an         | 28                             | individual    | Self Employed Professional | mandatory               | quick_lead.xlsx | home           | 0                     | work_and_income             | product           | 0                        |
      | Year 2 income | valid    | positive values and Upto 18 digits | not throw any    | 29                             | individual    | Self Employed Professional | mandatory               | quick_lead.xlsx | home           | 0                     | work_and_income             | product           | 0                        |
      | Year 3 income | valid    | less than 18 digits                | not throw any    | 30                             | individual    | Self Employed Professional | mandatory               | quick_lead.xlsx | home           | 0                     | work_and_income             | product           | 0                        |
      | Year 3 income | invalid  | character                          | throw an         | 31                             | individual    | Self Employed Professional | mandatory               | quick_lead.xlsx | home           | 0                     | work_and_income             | product           | 0                        |
      | Year 3 income | invalid  | special character                  | throw an         | 32                             | individual    | Self Employed Professional | mandatory               | quick_lead.xlsx | home           | 0                     | work_and_income             | product           | 0                        |
      | Year 3 income | invalid  | negative values                    | throw an         | 33                             | individual    | Self Employed Professional | mandatory               | quick_lead.xlsx | home           | 0                     | work_and_income             | product           | 0                        |
      | Year 3 income | valid    | positive values and Upto 18 digits | not throw any    | 34                             | individual    | Self Employed Professional | mandatory               | quick_lead.xlsx | home           | 0                     | work_and_income             | product           | 0                        |

  @ImplementedBy-rishabh.sachan
  @Release3
  #FeatureID-ACAUTOCAS-65
  Scenario Outline: ACAUTOCAS-4678: <Add_Delete> self employed professional income details of Lead for individual applicant
    And user open lead grid
    And user opens quick lead entries to create new quick lead
    And user reads data from the excel file "<QuickLeadWB>" under sheet "<QuickLead_product>" and row <QuickLead_product_rowNum>
    And user selects the product type
    When user selects applicant is "<ApplicantType>" applicant
    And user reads data from the excel file "<QuickLeadWB>" under sheet "<QuickLead_home>" and row <QuickLead_home_rowNum>
    And user fills "<MandatoryOrNonMandatory>" fields to create "<ApplicantType>" applicant lead
    And user save the individual applicant lead
    And user open created lead from lead grid
    And user selects Occupation Type as "<OccupationType>"
    And user "<Add_Delete>" self employed professional income details
    Then self employed professional income details "<Add_Delete>" successfully
    Examples:
      | Add_Delete   | ApplicantType | OccupationType             | MandatoryOrNonMandatory | QuickLeadWB     | QuickLead_home | QuickLead_home_rowNum | QuickLead_product | QuickLead_product_rowNum |
      | Add          | individual    | Self Employed Professional | mandatory               | quick_lead.xlsx | home           | 0                     | product           | 0                        |
      | delete       | individual    | Self Employed Professional | mandatory               | quick_lead.xlsx | home           | 0                     | product           | 0                        |
      | Add Multiple | individual    | Self Employed Professional | mandatory               | quick_lead.xlsx | home           | 0                     | product           | 0                        |

  @ImplementedBy-rishabh.sachan
  @Release3
  #FeatureID-ACAUTOCAS-67
  Scenario Outline: ACAUTOCAS-4679:  <Field_Name> field validation in Self employed professional expense details with <Validity> <InputType> of Lead for individual applicant
    And user open lead grid
    And user opens quick lead entries to create new quick lead
    And user reads data from the excel file "<QuickLeadWB>" under sheet "<QuickLead_product>" and row <QuickLead_product_rowNum>
    And user selects the product type
    When user selects applicant is "<ApplicantType>" applicant
    And user reads data from the excel file "<QuickLeadWB>" under sheet "<QuickLead_home>" and row <QuickLead_home_rowNum>
    And user fills "<MandatoryOrNonMandatory>" fields to create "<ApplicantType>" applicant lead
    And user save the individual applicant lead
    And user open created lead from lead grid
    And user selects Occupation Type as "<OccupationType>"
    And user reads data from the excel file "<QuickLeadWB>" under sheet "<QuickLeadWB_work_and_income>" and row <QuickLead_workAndIncome_rowNum>
    And user fill "<Validity>" "<Field_Name>" with "<InputType>" in self employed professional expense details
    Then "<Field_Name>" field will "<Throws_notThrows>" error
    Examples:
      | Field_Name     | Validity | InputType                          | Throws_notThrows | QuickLead_workAndIncome_rowNum | QuickLead_product | QuickLead_product_rowNum | ApplicantType | OccupationType             | MandatoryOrNonMandatory | QuickLeadWB     | QuickLead_home | QuickLead_home_rowNum | QuickLeadWB_work_and_income |
      | Year 1 expense | invalid  | more than 18 digits                | throw an         | 18                             | product           | 0                        | individual    | Self Employed Professional | mandatory               | quick_lead.xlsx | home           | 0                     | work_and_income             |
      | Year 1 expense | valid    | less than 18 digits                | not throw any    | 19                             | product           | 0                        | individual    | Self Employed Professional | mandatory               | quick_lead.xlsx | home           | 0                     | work_and_income             |
      | Year 1 expense | invalid  | character                          | throw an         | 20                             | product           | 0                        | individual    | Self Employed Professional | mandatory               | quick_lead.xlsx | home           | 0                     | work_and_income             |
      | Year 1 expense | invalid  | special character                  | throw an         | 21                             | product           | 0                        | individual    | Self Employed Professional | mandatory               | quick_lead.xlsx | home           | 0                     | work_and_income             |
      | Year 1 expense | invalid  | negative values                    | throw an         | 22                             | product           | 0                        | individual    | Self Employed Professional | mandatory               | quick_lead.xlsx | home           | 0                     | work_and_income             |
      | Year 1 expense | valid    | positive values and Upto 18 digits | not throw any    | 23                             | product           | 0                        | individual    | Self Employed Professional | mandatory               | quick_lead.xlsx | home           | 0                     | work_and_income             |
      | Year 2 expense | invalid  | more than 18 digits                | throw an         | 24                             | product           | 0                        | individual    | Self Employed Professional | mandatory               | quick_lead.xlsx | home           | 0                     | work_and_income             |
      | Year 2 expense | valid    | less than 18 digits                | not throw any    | 25                             | product           | 0                        | individual    | Self Employed Professional | mandatory               | quick_lead.xlsx | home           | 0                     | work_and_income             |
      | Year 2 expense | invalid  | character                          | throw an         | 26                             | product           | 0                        | individual    | Self Employed Professional | mandatory               | quick_lead.xlsx | home           | 0                     | work_and_income             |
      | Year 2 expense | invalid  | special character                  | throw an         | 27                             | product           | 0                        | individual    | Self Employed Professional | mandatory               | quick_lead.xlsx | home           | 0                     | work_and_income             |
      | Year 2 expense | invalid  | negative values                    | throw an         | 28                             | product           | 0                        | individual    | Self Employed Professional | mandatory               | quick_lead.xlsx | home           | 0                     | work_and_income             |
      | Year 2 expense | valid    | positive values and Upto 18 digits | not throw any    | 29                             | product           | 0                        | individual    | Self Employed Professional | mandatory               | quick_lead.xlsx | home           | 0                     | work_and_income             |
      | Year 3 expense | valid    | less than 18 digits                | not throw any    | 30                             | product           | 0                        | individual    | Self Employed Professional | mandatory               | quick_lead.xlsx | home           | 0                     | work_and_income             |
      | Year 3 expense | invalid  | character                          | throw an         | 31                             | product           | 0                        | individual    | Self Employed Professional | mandatory               | quick_lead.xlsx | home           | 0                     | work_and_income             |
      | Year 3 expense | invalid  | special character                  | throw an         | 32                             | product           | 0                        | individual    | Self Employed Professional | mandatory               | quick_lead.xlsx | home           | 0                     | work_and_income             |
      | Year 3 expense | invalid  | negative values                    | throw an         | 33                             | product           | 0                        | individual    | Self Employed Professional | mandatory               | quick_lead.xlsx | home           | 0                     | work_and_income             |
      | Year 3 expense | valid    | positive values and Upto 18 digits | not throw any    | 34                             | product           | 0                        | individual    | Self Employed Professional | mandatory               | quick_lead.xlsx | home           | 0                     | work_and_income             |

  @ImplementedBy-rishabh.sachan
  @Release3
  #FeatureID-ACAUTOCAS-67
  Scenario Outline: ACAUTOCAS-4680: <Add_Delete> self employed professional expense  details of Lead for individual applicant
    And user open lead grid
    And user opens quick lead entries to create new quick lead
    And user reads data from the excel file "<QuickLeadWB>" under sheet "<QuickLead_product>" and row <QuickLead_product_rowNum>
    And user selects the product type
    When user selects applicant is "<ApplicantType>" applicant
    And user reads data from the excel file "<QuickLeadWB>" under sheet "<QuickLead_home>" and row <QuickLead_home_rowNum>
    And user fills "<MandatoryOrNonMandatory>" fields to create "<ApplicantType>" applicant lead
    And user save the individual applicant lead
    And user open created lead from lead grid
    And user selects Occupation Type as "<OccupationType>"
    And user "<Add_Delete>" Self employed professional details
    Then self employed professional expense details "<Add_Delete>" successfully
    Examples:
      | Add_Delete   | ApplicantType | MandatoryOrNonMandatory | OccupationType             | QuickLeadWB     | QuickLead_home | QuickLead_home_rowNum | QuickLead_product | QuickLead_product_rowNum |
      | Add          | individual    | mandatory               | Self Employed Professional | quick_lead.xlsx | home           | 0                     | product           | 0                        |
      | delete       | individual    | mandatory               | Self Employed Professional | quick_lead.xlsx | home           | 0                     | product           | 0                        |
      | Add Multiple | individual    | mandatory               | Self Employed Professional | quick_lead.xlsx | home           | 0                     | product           | 0                        |


  @ImplementedBy-deep.maurya
  @Release3
  #FeatureID-ACAUTOCAS-65
  Scenario Outline: ACAUTOCAS-4682: <Add_Delete> salaried employee income details of Lead for individual applicant
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
    And user "<Add_Delete>" salaried employee expense details
    Then salaried employee expense details "<Add_Delete>" successfully
    Examples:
      | Add_Delete   | ApplicantType | MandatoryOrNot | OccupationType | QuickLeadWB     | QuickLead_home | QuickLead_home_rowNum | QuickLead_product | QuickLead_product_rowNum |
      | Add          | individual    | mandatory      | Salaried       | quick_lead.xlsx | home           | 0                     | product           | 2                        |
      | Delete       | individual    | mandatory      | Salaried       | quick_lead.xlsx | home           | 0                     | product           | 2                        |
      | Add Multiple | individual    | mandatory      | Salaried       | quick_lead.xlsx | home           | 0                     | product           | 2                        |

  @ImplementedBy-deep.maurya
  @Release3
  #FeatureID-ACAUTOCAS-67
  Scenario Outline: ACAUTOCAS-4683: <Field_Name> field validation in Salaried employee expense details with <Validity> <InputType> of Lead for individual applicant
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
    And user reads data from the excel file "<QuickLeadWB>" under sheet "<QuickLead_financial_details>" and row <financial_details_rowNum>
    And user fill "<Validity>" "<Field_Name>" with "<InputType>" in salaried employee expense details
    Then "<Field_Name>" field "<Throws_notThrows>" error in employee expense details for "<ApplicantType>" applicant
    Examples:
      | Field_Name | Validity | InputType                                    | Throws_notThrows | financial_details_rowNum | ApplicantType | MandatoryOrNot | OccupationType | QuickLeadWB     | QuickLead_home | QuickLead_home_rowNum | QuickLead_financial_details | QuickLead_product | QuickLead_product_rowNum |
      | Amount     | valid    | less than 18 digits                          | not throw any    | 1                        | individual    | mandatory      | Salaried       | quick_lead.xlsx | home           | 0                     | financial_details           | product           | 2                        |
      | Amount     | invalid  | character                                    | throw an         | 2                        | individual    | mandatory      | Salaried       | quick_lead.xlsx | home           | 0                     | financial_details           | product           | 2                        |
      | Amount     | invalid  | special character                            | throw an         | 3                        | individual    | mandatory      | Salaried       | quick_lead.xlsx | home           | 0                     | financial_details           | product           | 2                        |
      | Amount     | valid    | positive values and Upto 18 digits           | not throw any    | 5                        | individual    | mandatory      | Salaried       | quick_lead.xlsx | home           | 0                     | financial_details           | product           | 2                        |
      | Percentage | valid    | value between 0 to 100                       | not throw any    | 6                        | individual    | mandatory      | Salaried       | quick_lead.xlsx | home           | 0                     | financial_details           | product           | 2                        |
      | Percentage | valid    | value between 0 to 100 upto 2 decimal places | not throw any    | 7                        | individual    | mandatory      | Salaried       | quick_lead.xlsx | home           | 0                     | financial_details           | product           | 2                        |

    @LoggedBug
    Examples:
      | Field_Name         | Validity | InputType                                         | Throws_notThrows | financial_details_rowNum | ApplicantType | MandatoryOrNot | OccupationType | QuickLeadWB     | QuickLead_home | QuickLead_home_rowNum | QuickLead_financial_details | QuickLead_product | QuickLead_product_rowNum |
      | Amount             | invalid  | more than 18 digits                               | throw an         | 0                        | individual    | mandatory      | Salaried       | quick_lead.xlsx | home           | 0                     | financial_details           | product           | 2                        |
      | Amount             | invalid  | negative values                                   | throw an         | 4                        | individual    | mandatory      | Salaried       | quick_lead.xlsx | home           | 0                     | financial_details           | product           | 2                        |
      | Percentage         | invalid  | value more  than 100                              | throw            | 9                        | individual    | mandatory      | Salaried       | quick_lead.xlsx | home           | 0                     | financial_details           | product           | 2                        |
      | Percentage         | invalid  | negative values                                   | throw            | 8                        | individual    | mandatory      | Salaried       | quick_lead.xlsx | home           | 0                     | financial_details           | product           | 2                        |
      | Percentage         | invalid  | value between 0 to 100 more than 2 decimal places | throw            | 10                       | individual    | mandatory      | Salaried       | quick_lead.xlsx | home           | 0                     | financial_details           | product           | 2                        |
      | Sharing Percentage | valid    | value between 0 to 100                            | not throw any    | 6                        | individual    | mandatory      | Salaried       | quick_lead.xlsx | home           | 0                     | financial_details           | product           | 2                        |
      | Sharing Percentage | valid    | value between 0 to 100 upto 2 decimal places      | not throw any    | 7                        | individual    | mandatory      | Salaried       | quick_lead.xlsx | home           | 0                     | financial_details           | product           | 2                        |
      | Sharing Percentage | invalid  | negative values                                   | throw            | 8                        | individual    | mandatory      | Salaried       | quick_lead.xlsx | home           | 0                     | financial_details           | product           | 2                        |
      | Sharing Percentage | invalid  | value more  than 100                              | throw            | 9                        | individual    | mandatory      | Salaried       | quick_lead.xlsx | home           | 0                     | financial_details           | product           | 2                        |
      | Sharing Percentage | invalid  | value between 0 to 100 more than 2 decimal places | throw            | 10                       | individual    | mandatory      | Salaried       | quick_lead.xlsx | home           | 0                     | financial_details           | product           | 2                        |


  @ImplementedBy-deep.maurya
  @Release3
  #FeatureID-ACAUTOCAS-67
  Scenario Outline: ACAUTOCAS-4684: <Add_Delete> salaried employee expense details of Lead for individual applicant
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
    And user "<Add_Delete>" other income for "<ApplicantType>" applicant
    Then salaried employee income details "<Add_Delete>" successfully for "<ApplicantType>" applicant
    Examples:
      | Add_Delete   | ApplicantType | MandatoryOrNot | OccupationType | QuickLeadWB     | QuickLead_home | QuickLead_home_rowNum | QuickLead_product | QuickLead_product_rowNum |
      | Add          | individual    | mandatory      | Salaried       | quick_lead.xlsx | home           | 0                     | product           | 2                        |
      | Delete       | individual    | mandatory      | Salaried       | quick_lead.xlsx | home           | 0                     | product           | 2                        |
      | Add Multiple | individual    | mandatory      | Salaried       | quick_lead.xlsx | home           | 0                     | product           | 2                        |

# OTHER INCOME DETAILS
  @ImplementedBy-yash.sharma
  @Release3
  #FeatureID-ACAUTOCAS-65
  Scenario Outline: ACAUTOCAS-4685: <Field_Name> field validation in Other income details with <Validity> <InputType> of Lead for individual applicant
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
    And user fill "<Validity>" "<Field_Name>" with "<InputType>" in "<OccupationType>" income details for "<ApplicantType>" applicant
    Then The "<Field_Name>" field "<Throws_notThrows>" error in Others income details
    Examples:
      | Field_Name         | Validity | InputType                                         | Throws_notThrows | QuickLead_financial_details_rowNum | ApplicantType | MandatoryOrNot | OccupationType | QuickLeadWB     | QuickLead_home | QuickLead_home_rowNum | QuickLead_financial_details | QuickLead_product | QuickLead_product_rowNum |
      | Amount             | invalid  | more than 18 digits                               | throw an         | 0                                  | individual    | mandatory      | Others         | quick_lead.xlsx | home           | 0                     | financial_details           | product           | 2                        |
      | Amount             | valid    | less than 18 digits                               | not throw any    | 1                                  | individual    | mandatory      | Others         | quick_lead.xlsx | home           | 0                     | financial_details           | product           | 2                        |
      | Amount             | invalid  | character                                         | throw an         | 2                                  | individual    | mandatory      | Others         | quick_lead.xlsx | home           | 0                     | financial_details           | product           | 2                        |
      | Amount             | invalid  | special character                                 | throw an         | 3                                  | individual    | mandatory      | Others         | quick_lead.xlsx | home           | 0                     | financial_details           | product           | 2                        |
      | Amount             | invalid  | negative values                                   | throw an         | 4                                  | individual    | mandatory      | Others         | quick_lead.xlsx | home           | 0                     | financial_details           | product           | 2                        |
      | Amount             | valid    | positive values and Upto 18 digits                | not throw any    | 5                                  | individual    | mandatory      | Others         | quick_lead.xlsx | home           | 0                     | financial_details           | product           | 2                        |
      | Percentage         | valid    | value between 0 to 100                            | not throw any    | 6                                  | individual    | mandatory      | Others         | quick_lead.xlsx | home           | 0                     | financial_details           | product           | 2                        |
      | Percentage         | valid    | value between 0 to 100 upto 2 decimal places      | not throw any    | 7                                  | individual    | mandatory      | Others         | quick_lead.xlsx | home           | 0                     | financial_details           | product           | 2                        |
      | Percentage         | invalid  | negative values                                   | throw            | 8                                  | individual    | mandatory      | Others         | quick_lead.xlsx | home           | 0                     | financial_details           | product           | 2                        |
      | Percentage         | invalid  | value more  than 100                              | throw            | 9                                  | individual    | mandatory      | Others         | quick_lead.xlsx | home           | 0                     | financial_details           | product           | 2                        |
      | Percentage         | invalid  | value between 0 to 100 more than 2 decimal places | throw            | 10                                 | individual    | mandatory      | Others         | quick_lead.xlsx | home           | 0                     | financial_details           | product           | 2                        |
      | Sharing Percentage | valid    | value between 0 to 100                            | not throw any    | 44                                 | individual    | mandatory      | Others         | quick_lead.xlsx | home           | 0                     | financial_details           | product           | 2                        |
      | Sharing Percentage | valid    | value between 0 to 100 upto 2 decimal places      | not throw any    | 45                                 | individual    | mandatory      | Others         | quick_lead.xlsx | home           | 0                     | financial_details           | product           | 2                        |
      | Sharing Percentage | invalid  | negative values                                   | throw            | 46                                 | individual    | mandatory      | Others         | quick_lead.xlsx | home           | 0                     | financial_details           | product           | 2                        |
      | Sharing Percentage | invalid  | value more  than 100                              | throw            | 47                                 | individual    | mandatory      | Others         | quick_lead.xlsx | home           | 0                     | financial_details           | product           | 2                        |
      | Sharing Percentage | invalid  | value between 0 to 100 more than 2 decimal places | throw            | 48                                 | individual    | mandatory      | Others         | quick_lead.xlsx | home           | 0                     | financial_details           | product           | 2                        |

  @ImplementedBy-yash.sharma
  @Release3
  #FeatureID-ACAUTOCAS-65
  Scenario Outline: ACAUTOCAS-4686: <Add_Delete> other income details of Lead for individual applicant
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
    And user "<Add_Delete>" other income for "<ApplicantType>" applicant
    Then other income details "<Add_Delete>" successfully for "<ApplicantType>" applicant
    Examples:
      | Add_Delete   | ApplicantType | MandatoryOrNot | OccupationType | QuickLeadWB     | QuickLead_home | QuickLead_home_rowNum | QuickLead_product | QuickLead_product_rowNum |
      | Add          | individual    | mandatory      | Others         | quick_lead.xlsx | home           | 0                     | product           | 2                        |
      | Delete       | individual    | mandatory      | Others         | quick_lead.xlsx | home           | 0                     | product           | 2                        |
      | Add Multiple | individual    | mandatory      | Others         | quick_lead.xlsx | home           | 0                     | product           | 2                        |

  @ImplementedBy-yash.sharma
  @Release3
  #FeatureID-ACAUTOCAS-67
  Scenario Outline: ACAUTOCAS-4687: <Field_Name> field validation in other expense details with <Validity> <InputType> of Lead for individual applicant
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
    And user fill "<Validity>" "<Field_Name>" with "<InputType>" in "<OccupationType>" expense details
    Then The "<Field_Name>" field "<Throws_notThrows>" error in Others expense details for "<ApplicantType>" applicant
    Examples:
      | Field_Name | Validity | InputType                                    | Throws_notThrows | QuickLead_financial_details_rowNum | ApplicantType | MandatoryOrNot | OccupationType | QuickLeadWB     | QuickLead_home | QuickLead_home_rowNum | QuickLead_financial_details | QuickLead_product | QuickLead_product_rowNum |
      | Amount     | valid    | less than 18 digits                          | not throw any    | 1                                  | individual    | mandatory      | Others         | quick_lead.xlsx | home           | 0                     | financial_details           | product           | 2                        |
      | Amount     | invalid  | character                                    | throw an         | 2                                  | individual    | mandatory      | Others         | quick_lead.xlsx | home           | 0                     | financial_details           | product           | 2                        |
      | Amount     | invalid  | special character                            | throw an         | 3                                  | individual    | mandatory      | Others         | quick_lead.xlsx | home           | 0                     | financial_details           | product           | 2                        |
      | Amount     | valid    | positive values and Upto 18 digits           | not throw any    | 5                                  | individual    | mandatory      | Others         | quick_lead.xlsx | home           | 0                     | financial_details           | product           | 2                        |
      | Percentage | valid    | value between 0 to 100                       | not throw any    | 6                                  | individual    | mandatory      | Others         | quick_lead.xlsx | home           | 0                     | financial_details           | product           | 2                        |
      | Percentage | valid    | value between 0 to 100 upto 2 decimal places | not throw any    | 7                                  | individual    | mandatory      | Others         | quick_lead.xlsx | home           | 0                     | financial_details           | product           | 2                        |


    @LoggedBug
    Examples:
      | Field_Name         | Validity | InputType                                         | Throws_notThrows | QuickLead_financial_details_rowNum | ApplicantType | MandatoryOrNot | OccupationType | QuickLeadWB     | QuickLead_home | QuickLead_home_rowNum | QuickLead_financial_details | QuickLead_product | QuickLead_product_rowNum |
      | Amount             | invalid  | more than 18 digits                               | throw an         | 0                                  | individual    | mandatory      | Others         | quick_lead.xlsx | home           | 0                     | financial_details           | product           | 2                        |
      | Percentage         | invalid  | value more  than 100                              | throw an         | 9                                  | individual    | mandatory      | Others         | quick_lead.xlsx | home           | 0                     | financial_details           | product           | 2                        |
      | Amount             | invalid  | negative values                                   | throw an         | 4                                  | individual    | mandatory      | Others         | quick_lead.xlsx | home           | 0                     | financial_details           | product           | 2                        |
      | Percentage         | invalid  | negative values                                   | throw an         | 8                                  | individual    | mandatory      | Others         | quick_lead.xlsx | home           | 0                     | financial_details           | product           | 2                        |
      | Percentage         | invalid  | value between 0 to 100 more than 2 decimal places | throw an         | 10                                 | individual    | mandatory      | Others         | quick_lead.xlsx | home           | 0                     | financial_details           | product           | 2                        |
      | Sharing Percentage | valid    | value between 0 to 100                            | not throw any    | 0                                  | individual    | mandatory      | Others         | quick_lead.xlsx | home           | 0                     | financial_details           | product           | 2                        |
      | Sharing Percentage | valid    | value between 0 to 100 upto 2 decimal places      | not throw any    | 0                                  | individual    | mandatory      | Others         | quick_lead.xlsx | home           | 0                     | financial_details           | product           | 2                        |
      | Sharing Percentage | invalid  | negative values                                   | throw            | 0                                  | individual    | mandatory      | Others         | quick_lead.xlsx | home           | 0                     | financial_details           | product           | 2                        |
      | Sharing Percentage | invalid  | value more  than 100                              | throw            | 0                                  | individual    | mandatory      | Others         | quick_lead.xlsx | home           | 0                     | financial_details           | product           | 2                        |
      | Sharing Percentage | invalid  | value between 0 to 100 more than 2 decimal places | throw            | 0                                  | individual    | mandatory      | Others         | quick_lead.xlsx | home           | 0                     | financial_details           | product           | 2                        |

  @ImplementedBy-yash.sharma
  @Release3
  #FeatureID-ACAUTOCAS-67
  Scenario Outline: ACAUTOCAS-4688: <Add_Delete> other expense details of Lead for individual applicant
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
    And user "<Add_Delete>" other expense
    Then other expense details "<Add_Delete>" successfully
    Examples:
      | Add_Delete   | ApplicantType | MandatoryOrNot | OccupationType | QuickLeadWB     | QuickLead_home | QuickLead_home_rowNum | QuickLead_product | QuickLead_product_rowNum |
      | Add          | individual    | mandatory      | Others         | quick_lead.xlsx | home           | 0                     | product           | 2                        |
      | Delete       | individual    | mandatory      | Others         | quick_lead.xlsx | home           | 0                     | product           | 2                        |
      | Add Multiple | individual    | mandatory      | Others         | quick_lead.xlsx | home           | 0                     | product           | 2                        |

  @ImplementedBy-yash.sharma
  @Release3
 #FeatureID-ACAUTOCAS-65
  Scenario Outline: ACAUTOCAS-4689: <Field_Name> field validation in Other income details with <Validity> <InputType> of Lead for non individual applicant
    And user open lead grid
    And user opens quick lead entries to create new quick lead
    And user reads data from the excel file "<QuickLeadWB>" under sheet "<QuickLead_product>" and row <QuickLead_product_rowNum>
    And user selects the product type
    When user selects applicant is "<ApplicantType>" applicant
    And user reads data from the excel file "<QuickLeadWB>" under sheet "<QuickLead_home>" and row <QuickLead_home_rowNum>
    And user fills "<MandatoryOrNot>" fields to create "<ApplicantType>" applicant lead
    And user save the non individual applicant lead
    And user open created lead from lead grid
    And user reads data from the excel file "<QuickLeadWB>" under sheet "<QuickLead_financial_details>" and row <QuickLead_financial_details_rowNum>
    And user fill "<Validity>" "<Field_Name>" with "<InputType>" in "<OccupationType>" income details for "<ApplicantType>" applicant
    Then The "<Field_Name>" field "<Throws_notThrows>" error in Others income details for "<ApplicantType>" applicant
    Examples:
      | Field_Name         | Validity | InputType                                         | Throws_notThrows | QuickLead_financial_details | QuickLead_financial_details_rowNum | ApplicantType  | MandatoryOrNot | OccupationType | QuickLeadWB     | QuickLead_home | QuickLead_home_rowNum | QuickLead_product | QuickLead_product_rowNum |
      | Amount             | invalid  | more than 18 digits                               | throw an         | financial_details           | 0                                  | non-individual | mandatory      | Others         | quick_lead.xlsx | home           | 0                     | product           | 2                        |
      | Amount             | valid    | less than 18 digits                               | not throw any    | financial_details           | 1                                  | non-individual | mandatory      | Others         | quick_lead.xlsx | home           | 0                     | product           | 2                        |
      | Amount             | invalid  | character                                         | throw an         | financial_details           | 2                                  | non-individual | mandatory      | Others         | quick_lead.xlsx | home           | 0                     | product           | 2                        |
      | Amount             | invalid  | special character                                 | throw an         | financial_details           | 3                                  | non-individual | mandatory      | Others         | quick_lead.xlsx | home           | 0                     | product           | 2                        |
      | Amount             | invalid  | negative values                                   | throw an         | financial_details           | 4                                  | non-individual | mandatory      | Others         | quick_lead.xlsx | home           | 0                     | product           | 2                        |
      | Amount             | valid    | positive values and Upto 18 digits                | not throw any    | financial_details           | 5                                  | non-individual | mandatory      | Others         | quick_lead.xlsx | home           | 0                     | product           | 2                        |
      | Percentage         | valid    | value between 0 to 100                            | not throw any    | financial_details           | 6                                  | non-individual | mandatory      | Others         | quick_lead.xlsx | home           | 0                     | product           | 2                        |
      | Percentage         | valid    | value between 0 to 100 upto 2 decimal places      | not throw any    | financial_details           | 7                                  | non-individual | mandatory      | Others         | quick_lead.xlsx | home           | 0                     | product           | 2                        |
      | Percentage         | invalid  | negative values                                   | throw an         | financial_details           | 8                                  | non-individual | mandatory      | Others         | quick_lead.xlsx | home           | 0                     | product           | 2                        |
      | Percentage         | invalid  | value more  than 100                              | throw an         | financial_details           | 9                                  | non-individual | mandatory      | Others         | quick_lead.xlsx | home           | 0                     | product           | 2                        |
      | Percentage         | invalid  | value between 0 to 100 more than 2 decimal places | throw an         | financial_details           | 10                                 | non-individual | mandatory      | Others         | quick_lead.xlsx | home           | 0                     | product           | 2                        |
      | Sharing Percentage | valid    | value between 0 to 100                            | not throw any    | financial_details           | 44                                 | non-individual | mandatory      | Others         | quick_lead.xlsx | home           | 0                     | product           | 2                        |
      | Sharing Percentage | valid    | value between 0 to 100 upto 2 decimal places      | not throw any    | financial_details           | 45                                 | non-individual | mandatory      | Others         | quick_lead.xlsx | home           | 0                     | product           | 2                        |
      | Sharing Percentage | invalid  | negative values                                   | throw an         | financial_details           | 46                                 | non-individual | mandatory      | Others         | quick_lead.xlsx | home           | 0                     | product           | 2                        |
      | Sharing Percentage | invalid  | value more  than 100                              | throw an         | financial_details           | 47                                 | non-individual | mandatory      | Others         | quick_lead.xlsx | home           | 0                     | product           | 2                        |
      | Sharing Percentage | invalid  | value between 0 to 100 more than 2 decimal places | throw an         | financial_details           | 48                                 | non-individual | mandatory      | Others         | quick_lead.xlsx | home           | 0                     | product           | 2                        |


  @ImplementedBy-yash.sharma
  @Release3
  #FeatureID-ACAUTOCAS-65
  Scenario Outline: ACAUTOCAS-4690: <Add_Delete> other income details of Lead for non individual applicant
    And user open lead grid
    And user opens quick lead entries to create new quick lead
    And user reads data from the excel file "<QuickLeadWB>" under sheet "<QuickLead_product>" and row <QuickLead_product_rowNum>
    And user selects the product type
    When user selects applicant is "<ApplicantType>" applicant
    And user reads data from the excel file "<QuickLeadWB>" under sheet "<QuickLead_home>" and row <QuickLead_home_rowNum>
    And user fills "<MandatoryOrNot>" fields to create "<ApplicantType>" applicant lead
    And user save the non individual applicant lead
    And user open created lead from lead grid
    And user "<Add_Delete>" other income for "<ApplicantType>" applicant
    Then other income details "<Add_Delete>" successfully for "<ApplicantType>" applicant
    Examples:
      | Add_Delete   | ApplicantType  | MandatoryOrNot | QuickLeadWB     | QuickLead_home | QuickLead_home_rowNum | QuickLead_product | QuickLead_product_rowNum |
      | Add          | non-individual | mandatory      | quick_lead.xlsx | home           | 0                     | product           | 2                        |
      | Delete       | non-individual | mandatory      | quick_lead.xlsx | home           | 0                     | product           | 2                        |
      | Add Multiple | non-individual | mandatory      | quick_lead.xlsx | home           | 0                     | product           | 2                        |


  # more details in other income details
  # user have provision to select
  #  Income Details
  #FeatureID-ACAUTOCAS-65
  @ImplementedBy-rishabh.sachan
  @Release3
  Scenario Outline: ACAUTOCAS-4769:  Provision to add more details in other income details of Lead for individual applicant
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
    And user reads data from the excel file "<QuickLeadWB>" under sheet "<QuickLead_workAndIncome>" and row <QuickLead_workAndIncome_rowNum>
    And user fills other income with adding more details for "<ApplicantType>"
    Then more details in other income details should be added
    Examples:
      | QuickLeadWB     | QuickLead_home | QuickLead_home_rowNum | QuickLead_product | QuickLead_product_rowNum | QuickLead_workAndIncome | QuickLead_workAndIncome_rowNum | ApplicantType | MandatoryOrNot | OccupationType |
      | quick_lead.xlsx | home           | 0                     | product           | 1                        | work_and_income         | 35                             | individual    | mandatory      | Others         |


   #FeatureID-ACAUTOCAS-65
  @ImplementedBy-rishabh.sachan
  @Release3
  Scenario Outline: ACAUTOCAS-4770:  Provision to add more details in other income details of Lead for non individual applicant
    And user open lead grid
    And user opens quick lead entries to create new quick lead
    And user reads data from the excel file "<QuickLeadWB>" under sheet "<QuickLead_product>" and row <QuickLead_product_rowNum>
    And user selects the product type
    When user selects applicant is "<ApplicantType>" applicant
    And user reads data from the excel file "<QuickLeadWB>" under sheet "<QuickLead_home>" and row <QuickLead_home_rowNum>
    And user fills "<MandatoryOrNot>" fields to create "<ApplicantType>" applicant lead
    And user save the non individual applicant lead
    And user open created lead from lead grid
    And user reads data from the excel file "<QuickLeadWB>" under sheet "<QuickLead_workAndIncome>" and row <QuickLead_workAndIncome_rowNum>
    And user fills other income with adding more details for "<ApplicantType>"
    Then more details in other income details should be added
    Examples:
      | QuickLeadWB     | QuickLead_home | QuickLead_home_rowNum | QuickLead_product | QuickLead_product_rowNum | QuickLead_workAndIncome | QuickLead_workAndIncome_rowNum | ApplicantType  | MandatoryOrNot |
      | quick_lead.xlsx | home           | 0                     | product           | 1                        | work_and_income         | 36                             | non-individual | mandatory      |

    # Salaried
#Income Details
  #FeatureID-ACAUTOCAS-65
  @ImplementedBy-yash.sharma
  @Release3
  Scenario Outline: ACAUTOCAS-4681: <Field_Name> field validation in Salaried employee income details with <Validity> <InputType> of Lead for individual applicant
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
    And user reads data from the excel file "<financial_detailsWB>" under sheet "<financial_details_sheetName>" and row <financial_details_rowNum>
    And user fill "<Validity>" "<Field_Name>" with "<InputType>" in "<OccupationType>" income details for "<ApplicantType>" applicant
    Then The "<Field_Name>" field "<Throws_notThrows>" error in Salaried income details
    Examples:
      | Field_Name         | Validity | InputType                                         | Throws_notThrows | ApplicantType | QuickLeadWB     | QuickLead_product | QuickLead_product_rowNum | OccupationType | MandatoryOrNot | QuickLead_home | QuickLead_home_rowNum | financial_detailsWB | financial_details_sheetName | financial_details_rowNum |
      | Amount             | invalid  | more than 18 digits                               | throw an         | individual    | quick_lead.xlsx | product           | 1                        | Salaried       | mandatory      | home           | 0                     | quick_lead.xlsx     | financial_details           | 0                        |
      | Amount             | valid    | less than 18 digits                               | not throw any    | individual    | quick_lead.xlsx | product           | 1                        | Salaried       | mandatory      | home           | 0                     | quick_lead.xlsx     | financial_details           | 1                        |
      | Amount             | invalid  | character                                         | throw an         | individual    | quick_lead.xlsx | product           | 1                        | Salaried       | mandatory      | home           | 0                     | quick_lead.xlsx     | financial_details           | 2                        |
      | Amount             | invalid  | special character                                 | throw an         | individual    | quick_lead.xlsx | product           | 1                        | Salaried       | mandatory      | home           | 0                     | quick_lead.xlsx     | financial_details           | 3                        |
      | Amount             | invalid  | negative values                                   | throw an         | individual    | quick_lead.xlsx | product           | 1                        | Salaried       | mandatory      | home           | 0                     | quick_lead.xlsx     | financial_details           | 4                        |
      | Amount             | valid    | positive values and Upto 18 digits                | not throw any    | individual    | quick_lead.xlsx | product           | 1                        | Salaried       | mandatory      | home           | 0                     | quick_lead.xlsx     | financial_details           | 5                        |
      | Percentage         | valid    | value between 0 to 100                            | not throw any    | individual    | quick_lead.xlsx | product           | 1                        | Salaried       | mandatory      | home           | 0                     | quick_lead.xlsx     | financial_details           | 6                        |
      | Percentage         | valid    | value between 0 to 100 upto 2 decimal places      | not throw any    | individual    | quick_lead.xlsx | product           | 1                        | Salaried       | mandatory      | home           | 0                     | quick_lead.xlsx     | financial_details           | 7                        |
      | Percentage         | invalid  | negative values                                   | throw            | individual    | quick_lead.xlsx | product           | 1                        | Salaried       | mandatory      | home           | 0                     | quick_lead.xlsx     | financial_details           | 8                        |
      | Percentage         | invalid  | value more  than 100                              | throw            | individual    | quick_lead.xlsx | product           | 1                        | Salaried       | mandatory      | home           | 0                     | quick_lead.xlsx     | financial_details           | 9                        |
      | Percentage         | invalid  | value between 0 to 100 more than 2 decimal places | throw            | individual    | quick_lead.xlsx | product           | 1                        | Salaried       | mandatory      | home           | 0                     | quick_lead.xlsx     | financial_details           | 10                       |
      | Sharing Percentage | valid    | value between 0 to 100                            | not throw any    | individual    | quick_lead.xlsx | product           | 1                        | Salaried       | mandatory      | home           | 0                     | quick_lead.xlsx     | financial_details           | 44                       |
      | Sharing Percentage | valid    | value between 0 to 100 upto 2 decimal places      | not throw any    | individual    | quick_lead.xlsx | product           | 1                        | Salaried       | mandatory      | home           | 0                     | quick_lead.xlsx     | financial_details           | 45                       |
      | Sharing Percentage | invalid  | negative values                                   | throw            | individual    | quick_lead.xlsx | product           | 1                        | Salaried       | mandatory      | home           | 0                     | quick_lead.xlsx     | financial_details           | 46                       |
      | Sharing Percentage | invalid  | value more  than 100                              | throw            | individual    | quick_lead.xlsx | product           | 1                        | Salaried       | mandatory      | home           | 0                     | quick_lead.xlsx     | financial_details           | 47                       |
      | Sharing Percentage | invalid  | value between 0 to 100 more than 2 decimal places | throw            | individual    | quick_lead.xlsx | product           | 1                        | Salaried       | mandatory      | home           | 0                     | quick_lead.xlsx     | financial_details           | 48                       |
