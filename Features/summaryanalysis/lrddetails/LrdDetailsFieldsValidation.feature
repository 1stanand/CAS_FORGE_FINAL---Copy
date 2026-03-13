@Epic-Loan_Application_Details
@AuthoredBy-harshita.nayak
@ReviewedByDEV

Feature: LRD Details Field Validation in Summary Analysis

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user opens an application at "login acceptance_hl" stage from application grid
    And user is on summary details tab

  @Release2
    @ImplementedBy-tushar.chauhan
  Scenario Outline: ACAUTOCAS-3613:  Add LRD Details with <Var> fields
    And user reads data from the excel file "<SummaryAnalysisWB>" under sheet "<SummaryAnalysis_lrd>" and row <SummaryAnalysis_lrd_rowNum>
    When user add LRD Details with "<Var>" fields
    Then LRD Details should save successfully

    @LoggedBug
    Examples:
      | Var       | SummaryAnalysisWB     | SummaryAnalysis_lrd | SummaryAnalysis_lrd_rowNum |
      | all       | summary_analysis.xlsx | lrd_details         | 1                          |
      | mandatory | summary_analysis.xlsx | lrd_details         | 1                          |

  @Release2
    @ImplementedBy-tushar.chauhan
  Scenario Outline: ACAUTOCAS-3614:  Add multiple "<Var>" LRD Details
    And user reads data from the excel file "<SummaryAnalysisWB>" under sheet "<SummaryAnalysis_lrd>" and row <SummaryAnalysis_lrd_rowNum>
    When user add multiple LRD Details with "<Var>" fields
    Then LRD Details should save successfully

    @LoggedBug
    Examples:
      | Var       | SummaryAnalysisWB     | SummaryAnalysis_lrd | SummaryAnalysis_lrd_rowNum |
      | all       | summary_analysis.xlsx | lrd_details         | 1                          |
      | mandatory | summary_analysis.xlsx | lrd_details         | 1                          |

    @NotImplemented
  Scenario Outline: ACAUTOCAS-3615:  Delete "<Var>"LRD Details
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and "<RowNumber>"
    And user creates new application for "<Loan_Type>"
    And user fills the loan details with move to next stage
    And user is on Summary Analysis tab
    When user add multiple LRD Details with "<Var>" fields
    Then delete LRD Details successfully
    Examples:
      | Loan_Type | Var | SourceDataFile       | SheetName | RowNumber |
      | Home Loan | 2   | LoginDetailsCAS.xlsx | LoginData | 7         |

  @Release2
    @ImplementedBy-tushar.chauhan
  Scenario Outline: ACAUTOCAS-3616: Saving LRD Details detail without <Field_Name>
    And user reads data from the excel file "<SummaryAnalysisWB>" under sheet "<SummaryAnalysis_lrd>" and row <SummaryAnalysis_lrd_rowNum>
    When user fills the LRD Details without "<Field_Name>"
    Then LRD Details not saved without "<Field_Name>" "<Throws_notThrows>"

    Examples:
      | Field_Name                     | SummaryAnalysisWB     | SummaryAnalysis_lrd | SummaryAnalysis_lrd_rowNum | Throws_notThrows                   |
      | Lessee Name                    | summary_analysis.xlsx | lrd_details         | 58                         | throws an error with error message |
      | Lessor Name                    | summary_analysis.xlsx | lrd_details         | 59                         | throws an error with error message |
      | Lease Start Date               | summary_analysis.xlsx | lrd_details         | 60                         | throws an error with error message |
      | Balance Tenor (Months)         | summary_analysis.xlsx | lrd_details         | 61                         | throws an error with error message |
      | Balance Lockin Period (Months) | summary_analysis.xlsx | lrd_details         | 62                         | throws an error with error message |
      | Remarks                        | summary_analysis.xlsx | lrd_details         | 63                         | throws an error with error message |
      | TDS                            | summary_analysis.xlsx | lrd_details         | 64                         | throws an error with error message |
      | Property Tax                   | summary_analysis.xlsx | lrd_details         | 65                         | throws an error with error message |
      | Net Rent                       | summary_analysis.xlsx | lrd_details         | 66                         | throws an error with error message |
      | Rental & Discounted %          | summary_analysis.xlsx | lrd_details         | 67                         | throws an error with error message |
      | Gross Rent                     | summary_analysis.xlsx | lrd_details         | 68                         | throws an error with error message |

  @Release2
    @ImplementedBy-tushar.chauhan
  Scenario Outline: ACAUTOCAS-3617:Validating Lessee Name in LRD Details with <var> mandatory field
    And user reads data from the excel file "<SummaryAnalysisWB>" under sheet "<SummaryAnalysis_lrd>" and row <SummaryAnalysis_lrd_rowNum>
    When user fills "<Field_Name>" field with "<var>" in lrd details page
    Then "<Field_Name>" field "<Throws_notThrows>" in lrd details page

    Examples:
      | Field_Name  | var         | SummaryAnalysisWB     | SummaryAnalysis_lrd | SummaryAnalysis_lrd_rowNum | Throws_notThrows         |
      | Lessee Name | valid value | summary_analysis.xlsx | lrd_details         | 1                          | does not throw any error |
      | Lessor Name | valid value | summary_analysis.xlsx | lrd_details         | 2                          | does not throw any error |

  @Release2
    @ImplementedBy-tushar.chauhan
  Scenario Outline: ACAUTOCAS-5688:Validating Lease Start Date in LRD Details with <var> mandatory field
    And user reads data from the excel file "<SummaryAnalysisWB>" under sheet "<SummaryAnalysis_lrd>" and row <SummaryAnalysis_lrd_rowNum>
    When user fills "<Field_Name>" field with "<var>" in lrd details page
    Then "<Field_Name>" field "<Throws_notThrows>" in lrd details page

    Examples:
      | Field_Name       | var         | SummaryAnalysisWB     | SummaryAnalysis_lrd | SummaryAnalysis_lrd_rowNum | Throws_notThrows                   |
      | Lease Start Date | valid date  | summary_analysis.xlsx | lrd_details         | 3                          | does not throw any error           |
      | Lease Start Date | before 1942 | summary_analysis.xlsx | lrd_details         | 4                          | throws an error with error message |

  @Release2
    @ImplementedBy-tushar.chauhan
  Scenario Outline: ACAUTOCAS-5689:Validating Balance Tenor in LRD Details with <var> mandatory field
    And user reads data from the excel file "<SummaryAnalysisWB>" under sheet "<SummaryAnalysis_lrd>" and row <SummaryAnalysis_lrd_rowNum>
    When user fills "<Field_Name>" field with "<var>" in lrd details page
    Then "<Field_Name>" field "<Throws_notThrows>" in lrd details page

    Examples:
      | Field_Name    | var                        | SummaryAnalysisWB     | SummaryAnalysis_lrd | SummaryAnalysis_lrd_rowNum | Throws_notThrows                   |
      | Balance Tenor | valid value                | summary_analysis.xlsx | lrd_details         | 5                          | does not throw any error           |
      | Balance Tenor | up to 18 digits            | summary_analysis.xlsx | lrd_details         | 6                          | does not throw any error           |
      | Balance Tenor | both digits and characters | summary_analysis.xlsx | lrd_details         | 7                          | throws an error with error message |
      | Balance Tenor | special characters         | summary_analysis.xlsx | lrd_details         | 8                          | throws an error with error message |
      | Balance Tenor | space                      | summary_analysis.xlsx | lrd_details         | 9                          | throws an error with error message |
      | Balance Tenor | paise format               | summary_analysis.xlsx | lrd_details         | 10                         | does not throw any error           |
      | Balance Tenor | zero value                 | summary_analysis.xlsx | lrd_details         | 11                         | does not throw any error           |

  @Release2
    @ImplementedBy-tushar.chauhan
  Scenario Outline: ACAUTOCAS-5690:Validating Balance Lockin Period in LRD Details with <var> mandatory field
    And user reads data from the excel file "<SummaryAnalysisWB>" under sheet "<SummaryAnalysis_lrd>" and row <SummaryAnalysis_lrd_rowNum>
    When user fills "<Field_Name>" field with "<var>" in lrd details page
    Then "<Field_Name>" field "<Throws_notThrows>" in lrd details page

    Examples:
      | Field_Name            | var                        | SummaryAnalysisWB     | SummaryAnalysis_lrd | SummaryAnalysis_lrd_rowNum | Throws_notThrows                   |
      | Balance Lockin Period | valid value                | summary_analysis.xlsx | lrd_details         | 12                         | does not throw any error           |
      | Balance Lockin Period | up to 18 digits            | summary_analysis.xlsx | lrd_details         | 13                         | does not throw any error           |
      | Balance Lockin Period | both digits and characters | summary_analysis.xlsx | lrd_details         | 14                         | throws an error with error message |
      | Balance Lockin Period | special characters         | summary_analysis.xlsx | lrd_details         | 15                         | throws an error with error message |
      | Balance Lockin Period | space                      | summary_analysis.xlsx | lrd_details         | 16                         | throws an error with error message |
      | Balance Lockin Period | paise format               | summary_analysis.xlsx | lrd_details         | 17                         | does not throw any error           |
      | Balance Lockin Period | zero value                 | summary_analysis.xlsx | lrd_details         | 18                         | does not throw any error           |

  @Release2
    @ImplementedBy-tushar.chauhan
  Scenario Outline: ACAUTOCAS-5691:Validating TDS in LRD Details with <var> mandatory field
    And user reads data from the excel file "<SummaryAnalysisWB>" under sheet "<SummaryAnalysis_lrd>" and row <SummaryAnalysis_lrd_rowNum>
    When user fills "<Field_Name>" field with "<var>" in lrd details page
    Then "<Field_Name>" field "<Throws_notThrows>" in lrd details page

    Examples:
      | Field_Name | var                        | SummaryAnalysisWB     | SummaryAnalysis_lrd | SummaryAnalysis_lrd_rowNum | Throws_notThrows                   |
      | TDS        | valid value                | summary_analysis.xlsx | lrd_details         | 19                         | does not throw any error           |
      | TDS        | up to 18 digits            | summary_analysis.xlsx | lrd_details         | 20                         | does not throw any error           |
      | TDS        | more than 18 digits        | summary_analysis.xlsx | lrd_details         | 21                         | throws an error with error message |
      | TDS        | both digits and characters | summary_analysis.xlsx | lrd_details         | 22                         | throws an error with error message |
      | TDS        | special characters         | summary_analysis.xlsx | lrd_details         | 23                         | throws an error with error message |
      | TDS        | space                      | summary_analysis.xlsx | lrd_details         | 24                         | throws an error with error message |
      | TDS        | paise format               | summary_analysis.xlsx | lrd_details         | 25                         | does not throw any error           |
      | TDS        | zero value                 | summary_analysis.xlsx | lrd_details         | 26                         | does not throw any error           |

  @Release2
    @ImplementedBy-tushar.chauhan
  Scenario Outline: ACAUTOCAS-5692:Validating Property Tax in LRD Details with <var> mandatory field
    And user reads data from the excel file "<SummaryAnalysisWB>" under sheet "<SummaryAnalysis_lrd>" and row <SummaryAnalysis_lrd_rowNum>
    When user fills "<Field_Name>" field with "<var>" in lrd details page
    Then "<Field_Name>" field "<Throws_notThrows>" in lrd details page

    Examples:
      | Field_Name   | var                        | SummaryAnalysisWB     | SummaryAnalysis_lrd | SummaryAnalysis_lrd_rowNum | Throws_notThrows                   |
      | Property Tax | valid value                | summary_analysis.xlsx | lrd_details         | 27                         | does not throw any error           |
      | Property Tax | up to 18 digits            | summary_analysis.xlsx | lrd_details         | 28                         | does not throw any error           |
      | Property Tax | more than 18 digits        | summary_analysis.xlsx | lrd_details         | 29                         | throws an error with error message |
      | Property Tax | both digits and characters | summary_analysis.xlsx | lrd_details         | 30                         | throws an error with error message |
      | Property Tax | special characters         | summary_analysis.xlsx | lrd_details         | 31                         | throws an error with error message |
      | Property Tax | space                      | summary_analysis.xlsx | lrd_details         | 32                         | throws an error with error message |
      | Property Tax | paise format               | summary_analysis.xlsx | lrd_details         | 33                         | does not throw any error           |
      | Property Tax | zero value                 | summary_analysis.xlsx | lrd_details         | 34                         | does not throw any error           |

  @Release2
    @ImplementedBy-tushar.chauhan
  Scenario Outline: ACAUTOCAS-5693:Validating Net Rent in LRD Details with <var> mandatory field
    And user reads data from the excel file "<SummaryAnalysisWB>" under sheet "<SummaryAnalysis_lrd>" and row <SummaryAnalysis_lrd_rowNum>
    When user fills "<Field_Name>" field with "<var>" in lrd details page
    Then "<Field_Name>" field "<Throws_notThrows>" in lrd details page

    Examples:
      | Field_Name | var                        | SummaryAnalysisWB     | SummaryAnalysis_lrd | SummaryAnalysis_lrd_rowNum | Throws_notThrows                   |
      | Net Rent   | valid value                | summary_analysis.xlsx | lrd_details         | 35                         | does not throw any error           |
      | Net Rent   | up to 18 digits            | summary_analysis.xlsx | lrd_details         | 36                         | does not throw any error           |
      | Net Rent   | more than 18 digits        | summary_analysis.xlsx | lrd_details         | 37                         | throws an error with error message |
      | Net Rent   | both digits and characters | summary_analysis.xlsx | lrd_details         | 38                         | throws an error with error message |
      | Net Rent   | special characters         | summary_analysis.xlsx | lrd_details         | 39                         | throws an error with error message |
      | Net Rent   | space                      | summary_analysis.xlsx | lrd_details         | 40                         | throws an error with error message |
      | Net Rent   | paise format               | summary_analysis.xlsx | lrd_details         | 41                         | does not throw any error           |
      | Net Rent   | zero value                 | summary_analysis.xlsx | lrd_details         | 42                         | does not throw any error           |

  @Release2
    @ImplementedBy-tushar.chauhan
  Scenario Outline: ACAUTOCAS-5694:Validating Rental & Discounted in LRD Details with <var> mandatory field
    And user reads data from the excel file "<SummaryAnalysisWB>" under sheet "<SummaryAnalysis_lrd>" and row <SummaryAnalysis_lrd_rowNum>
    When user fills "<Field_Name>" field with "<var>" in lrd details page
    Then "<Field_Name>" field "<Throws_notThrows>" in lrd details page

    Examples:
      | Field_Name          | var                        | SummaryAnalysisWB     | SummaryAnalysis_lrd | SummaryAnalysis_lrd_rowNum | Throws_notThrows                   |
      | Rental & Discounted | valid value                | summary_analysis.xlsx | lrd_details         | 43                         | does not throw any error           |
      | Rental & Discounted | up to 18 digits            | summary_analysis.xlsx | lrd_details         | 44                         | does not throw any error           |
      | Rental & Discounted | both digits and characters | summary_analysis.xlsx | lrd_details         | 45                         | throws an error with error message |
      | Rental & Discounted | special characters         | summary_analysis.xlsx | lrd_details         | 46                         | throws an error with error message |
      | Rental & Discounted | space                      | summary_analysis.xlsx | lrd_details         | 47                         | throws an error with error message |
      | Rental & Discounted | paise format               | summary_analysis.xlsx | lrd_details         | 48                         | does not throw any error           |
      | Rental & Discounted | zero value                 | summary_analysis.xlsx | lrd_details         | 49                         | does not throw any error           |

  @Release2
    @ImplementedBy-tushar.chauhan
  Scenario Outline: ACAUTOCAS-5695:Validating Gross Rent in LRD Details with <var> mandatory field
    And user reads data from the excel file "<SummaryAnalysisWB>" under sheet "<SummaryAnalysis_lrd>" and row <SummaryAnalysis_lrd_rowNum>
    When user fills "<Field_Name>" field with "<var>" in lrd details page
    Then "<Field_Name>" field "<Throws_notThrows>" in lrd details page

    Examples:
      | Field_Name | var                        | SummaryAnalysisWB     | SummaryAnalysis_lrd | SummaryAnalysis_lrd_rowNum | Throws_notThrows                   |
      | Gross Rent | valid value                | summary_analysis.xlsx | lrd_details         | 50                         | does not throw any error           |
      | Gross Rent | up to 18 digits            | summary_analysis.xlsx | lrd_details         | 51                         | does not throw any error           |
      | Gross Rent | more than 18 digits        | summary_analysis.xlsx | lrd_details         | 52                         | throws an error with error message |
      | Gross Rent | both digits and characters | summary_analysis.xlsx | lrd_details         | 53                         | throws an error with error message |
      | Gross Rent | special characters         | summary_analysis.xlsx | lrd_details         | 54                         | throws an error with error message |
      | Gross Rent | space                      | summary_analysis.xlsx | lrd_details         | 55                         | throws an error with error message |
      | Gross Rent | paise format               | summary_analysis.xlsx | lrd_details         | 56                         | does not throw any error           |
      | Gross Rent | zero value                 | summary_analysis.xlsx | lrd_details         | 57                         | does not throw any error           |
