@Epic-Loan_Application_Details
@AuthoredBy-harshita.nayak
@ReviewedByDEV

Feature: Rental Income Program Details Field Validation in Summary Analysis

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user opens an application at "login acceptance_hl" stage from application grid
    And user is on summary details tab

  @ImplementedBy-tushar.chauhan
    @Release2
  Scenario Outline: ACAUTOCAS-3618:  Add Rental Income program Details with <Var> fields
    And user reads data from the excel file "<SummaryAnalysisWB>" under sheet "<SummaryAnalysis_rental_income>" and row <SummaryAnalysis_rental_income_rowNum>
    When user add Rental Income program Details with "<Var>" fields
    Then Rental Income program Details should save successfully

    @LoggedBug
    Examples:
      | Var       | SummaryAnalysisWB     | SummaryAnalysis_rental_income | SummaryAnalysis_rental_income_rowNum |
      | all       | summary_analysis.xlsx | rental_income_program_details | 1                                    |
      | mandatory | summary_analysis.xlsx | rental_income_program_details | 1                                    |

  @ImplementedBy-tushar.chauhan
    @Release2
  Scenario Outline: ACAUTOCAS-3619:  Add multiple "<Var>" Rental Income program Details
    And user reads data from the excel file "<SummaryAnalysisWB>" under sheet "<SummaryAnalysis_rental_income>" and row <SummaryAnalysis_rental_income_rowNum>
    When user add multiple Rental Income program Details with "<Var>" fields
    Then Rental Income program Details should save successfully

    @LoggedBug
    Examples:
      | Var       | SummaryAnalysisWB     | SummaryAnalysis_rental_income | SummaryAnalysis_rental_income_rowNum |
      | all       | summary_analysis.xlsx | rental_income_program_details | 1                          |
      | mandatory | summary_analysis.xlsx | rental_income_program_details | 1                          |

  @NotImplemented
  Scenario Outline: ACAUTOCAS-3620:  Delete "<Var>"Rental Income program Details
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and "<RowNumber>"
    And user creates new application for "<Loan_Type>"
    And user fills the loan details with move to next stage
    And user is on Summary Analysis tab
    When user add multiple Rental Income program Details with "<Var>" fields
    Then delete Rental Income program Details successfully
    Examples:
      | Loan_Type | Var | SourceDataFile       | SheetName | RowNumber |
      | Home Loan | 2   | LoginDetailsCAS.xlsx | LoginData | 7         |

  @ImplementedBy-tushar.chauhan
    @Release2
  Scenario Outline: ACAUTOCAS-3621: Rental Income program Details detail without <Field_Name>
    And user reads data from the excel file "<SummaryAnalysisWB>" under sheet "<SummaryAnalysis_rental_income>" and row <SummaryAnalysis_rental_income_rowNum>
    When user fill Rental Income program Details without "<Field_Name>"
    Then Rental Income program Details not saved without "<Field_Name>" "<Throws_notThrows>"

    Examples:
      | Field_Name         | SummaryAnalysisWB     | SummaryAnalysis_rental_income | SummaryAnalysis_rental_income_rowNum | Throws_notThrows                   |
      | Months since Lease | summary_analysis.xlsx | rental_income_program_details | 47                                   | throws an error with error message |
      | Bank Gross Rentals | summary_analysis.xlsx | rental_income_program_details | 48                                   | throws an error with error message |
      | No. of Tenants     | summary_analysis.xlsx | rental_income_program_details | 49                                   | throws an error with error message |
      | Bank Net Rentals   | summary_analysis.xlsx | rental_income_program_details | 50                                   | throws an error with error message |
      | Cash Rental        | summary_analysis.xlsx | rental_income_program_details | 51                                   | throws an error with error message |
      | Deductions         | summary_analysis.xlsx | rental_income_program_details | 52                                   | throws an error with error message |

  @ImplementedBy-tushar.chauhan
    @Release2
  Scenario Outline: ACAUTOCAS-3622:Validating Months since Lease in Rental Income program Details with <var> mandatory field
    And user reads data from the excel file "<SummaryAnalysisWB>" under sheet "<SummaryAnalysis_rental_income>" and row <SummaryAnalysis_rental_income_rowNum>
    When user fills "<Field_Name>" field with "<var>" in Rental Income Program details
    Then "<Field_Name>" field "<Throws_notThrows>" in Rental Income Program details

    Examples:
      | Field_Name         | var                        | SummaryAnalysisWB     | SummaryAnalysis_rental_income | SummaryAnalysis_rental_income_rowNum | Throws_notThrows                   |
      | Months since Lease | valid value                | summary_analysis.xlsx | rental_income_program_details | 1                                    | does not throw any error           |
      | Months since Lease | up to 18 digits            | summary_analysis.xlsx | rental_income_program_details | 2                                    | does not throw any error           |
      | Months since Lease | both digits and characters | summary_analysis.xlsx | rental_income_program_details | 3                                    | throws an error with error message |
      | Months since Lease | special characters         | summary_analysis.xlsx | rental_income_program_details | 4                                    | throws an error with error message |
      | Months since Lease | space                      | summary_analysis.xlsx | rental_income_program_details | 5                                    | throws an error with error message |
      | Months since Lease | paise format               | summary_analysis.xlsx | rental_income_program_details | 6                                    | does not throw any error           |
      | Months since Lease | zero value                 | summary_analysis.xlsx | rental_income_program_details | 7                                    | does not throw any error           |

  @ImplementedBy-tushar.chauhan
    @Release2
  Scenario Outline: ACAUTOCAS-5696:Validating Bank Gross Rentals in Rental Income program Details with <var> mandatory field
    And user reads data from the excel file "<SummaryAnalysisWB>" under sheet "<SummaryAnalysis_rental_income>" and row <SummaryAnalysis_rental_income_rowNum>
    When user fills "<Field_Name>" field with "<var>" in Rental Income Program details
    Then "<Field_Name>" field "<Throws_notThrows>" in Rental Income Program details

    Examples:
      | Field_Name         | var                        | SummaryAnalysisWB     | SummaryAnalysis_rental_income | SummaryAnalysis_rental_income_rowNum | Throws_notThrows                   |
      | Bank Gross Rentals | valid value                | summary_analysis.xlsx | rental_income_program_details | 8                                    | does not throw any error           |
      | Bank Gross Rentals | up to 18 digits            | summary_analysis.xlsx | rental_income_program_details | 9                                    | does not throw any error           |
      | Bank Gross Rentals | more than 18 digits        | summary_analysis.xlsx | rental_income_program_details | 10                                   | throws an error with error message |
      | Bank Gross Rentals | both digits and characters | summary_analysis.xlsx | rental_income_program_details | 11                                   | throws an error with error message |
      | Bank Gross Rentals | special characters         | summary_analysis.xlsx | rental_income_program_details | 12                                   | throws an error with error message |
      | Bank Gross Rentals | space                      | summary_analysis.xlsx | rental_income_program_details | 13                                   | throws an error with error message |
      | Bank Gross Rentals | paise format               | summary_analysis.xlsx | rental_income_program_details | 14                                   | does not throw any error           |
      | Bank Gross Rentals | zero value                 | summary_analysis.xlsx | rental_income_program_details | 15                                   | does not throw any error           |

  @ImplementedBy-tushar.chauhan
    @Release2
  Scenario Outline: ACAUTOCAS-5697:Validating No of Tenants in Rental Income program Details with <var> mandatory field
    And user reads data from the excel file "<SummaryAnalysisWB>" under sheet "<SummaryAnalysis_rental_income>" and row <SummaryAnalysis_rental_income_rowNum>
    When user fills "<Field_Name>" field with "<var>" in Rental Income Program details
    Then "<Field_Name>" field "<Throws_notThrows>" in Rental Income Program details

    Examples:
      | Field_Name     | var                        | SummaryAnalysisWB     | SummaryAnalysis_rental_income | SummaryAnalysis_rental_income_rowNum | Throws_notThrows                   |
      | No. of Tenants | valid value                | summary_analysis.xlsx | rental_income_program_details | 16                                   | does not throw any error           |
      | No. of Tenants | up to 18 digits            | summary_analysis.xlsx | rental_income_program_details | 17                                   | does not throw any error           |
      | No. of Tenants | both digits and characters | summary_analysis.xlsx | rental_income_program_details | 18                                   | throws an error with error message |
      | No. of Tenants | special characters         | summary_analysis.xlsx | rental_income_program_details | 19                                   | throws an error with error message |
      | No. of Tenants | space                      | summary_analysis.xlsx | rental_income_program_details | 20                                   | throws an error with error message |
      | No. of Tenants | paise format               | summary_analysis.xlsx | rental_income_program_details | 21                                   | does not throw any error           |
      | No. of Tenants | zero value                 | summary_analysis.xlsx | rental_income_program_details | 22                                   | does not throw any error           |

  @ImplementedBy-tushar.chauhan
    @Release2
  Scenario Outline: ACAUTOCAS-5698:Validating Bank Net Rentals in Rental Income program Details with <var> mandatory field
    And user reads data from the excel file "<SummaryAnalysisWB>" under sheet "<SummaryAnalysis_rental_income>" and row <SummaryAnalysis_rental_income_rowNum>
    When user fills "<Field_Name>" field with "<var>" in Rental Income Program details
    Then "<Field_Name>" field "<Throws_notThrows>" in Rental Income Program details

    Examples:
      | Field_Name       | var                        | SummaryAnalysisWB     | SummaryAnalysis_rental_income | SummaryAnalysis_rental_income_rowNum | Throws_notThrows                   |
      | Bank Net Rentals | valid value                | summary_analysis.xlsx | rental_income_program_details | 23                                   | does not throw any error           |
      | Bank Net Rentals | up to 18 digits            | summary_analysis.xlsx | rental_income_program_details | 24                                   | does not throw any error           |
      | Bank Net Rentals | more than 18 digits        | summary_analysis.xlsx | rental_income_program_details | 25                                   | throws an error with error message |
      | Bank Net Rentals | both digits and characters | summary_analysis.xlsx | rental_income_program_details | 26                                   | throws an error with error message |
      | Bank Net Rentals | special characters         | summary_analysis.xlsx | rental_income_program_details | 27                                   | throws an error with error message |
      | Bank Net Rentals | space                      | summary_analysis.xlsx | rental_income_program_details | 28                                   | throws an error with error message |
      | Bank Net Rentals | paise format               | summary_analysis.xlsx | rental_income_program_details | 29                                   | does not throw any error           |
      | Bank Net Rentals | zero value                 | summary_analysis.xlsx | rental_income_program_details | 30                                   | does not throw any error           |

  @ImplementedBy-tushar.chauhan
    @Release2
  Scenario Outline: ACAUTOCAS-5699:Validating Cash Rental in Rental Income program Details with <var> mandatory field
    And user reads data from the excel file "<SummaryAnalysisWB>" under sheet "<SummaryAnalysis_rental_income>" and row <SummaryAnalysis_rental_income_rowNum>
    When user fills "<Field_Name>" field with "<var>" in Rental Income Program details
    Then "<Field_Name>" field "<Throws_notThrows>" in Rental Income Program details

    Examples:
      | Field_Name  | var                        | SummaryAnalysisWB     | SummaryAnalysis_rental_income | SummaryAnalysis_rental_income_rowNum | Throws_notThrows                   |
      | Cash Rental | valid value                | summary_analysis.xlsx | rental_income_program_details | 31                                   | does not throw any error           |
      | Cash Rental | up to 18 digits            | summary_analysis.xlsx | rental_income_program_details | 32                                   | does not throw any error           |
      | Cash Rental | more than 18 digits        | summary_analysis.xlsx | rental_income_program_details | 33                                   | throws an error with error message |
      | Cash Rental | both digits and characters | summary_analysis.xlsx | rental_income_program_details | 34                                   | throws an error with error message |
      | Cash Rental | special characters         | summary_analysis.xlsx | rental_income_program_details | 35                                   | throws an error with error message |
      | Cash Rental | space                      | summary_analysis.xlsx | rental_income_program_details | 36                                   | throws an error with error message |
      | Cash Rental | paise format               | summary_analysis.xlsx | rental_income_program_details | 37                                   | does not throw any error           |
      | Cash Rental | zero value                 | summary_analysis.xlsx | rental_income_program_details | 38                                   | does not throw any error           |

  @ImplementedBy-tushar.chauhan
    @Release2
  Scenario Outline: ACAUTOCAS-5700:Validating Deductions in Rental Income program Details with <var> mandatory field
    And user reads data from the excel file "<SummaryAnalysisWB>" under sheet "<SummaryAnalysis_rental_income>" and row <SummaryAnalysis_rental_income_rowNum>
    When user fills "<Field_Name>" field with "<var>" in Rental Income Program details
    Then "<Field_Name>" field "<Throws_notThrows>" in Rental Income Program details

    Examples:
      | Field_Name | var                        | SummaryAnalysisWB     | SummaryAnalysis_rental_income | SummaryAnalysis_rental_income_rowNum | Throws_notThrows                   |
      | Deductions | valid value                | summary_analysis.xlsx | rental_income_program_details | 39                                   | does not throw any error           |
      | Deductions | up to 18 digits            | summary_analysis.xlsx | rental_income_program_details | 40                                   | does not throw any error           |
      | Deductions | more than 18 digits        | summary_analysis.xlsx | rental_income_program_details | 41                                   | throws an error with error message |
      | Deductions | both digits and characters | summary_analysis.xlsx | rental_income_program_details | 42                                   | throws an error with error message |
      | Deductions | special characters         | summary_analysis.xlsx | rental_income_program_details | 43                                   | throws an error with error message |
      | Deductions | space                      | summary_analysis.xlsx | rental_income_program_details | 44                                   | throws an error with error message |
      | Deductions | paise format               | summary_analysis.xlsx | rental_income_program_details | 45                                   | does not throw any error           |
      | Deductions | zero value                 | summary_analysis.xlsx | rental_income_program_details | 46                                   | does not throw any error           |
