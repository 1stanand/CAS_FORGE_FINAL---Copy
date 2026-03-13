@Epic-Loan_Application_Details
@PunchPersonalLoan
@UpToCreditBureau
@Deferred
#Already covered in End To End Scenarios
Feature: punching personal loan stages upto Credit Bureau

  Scenario Outline: ACAUTOCAS-13924:  personal loan punch at Credit Bureau
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    When user create new application of personal loan for individual
    And user reads data from the excel file "<PersonalLoanPunchWB>" under sheet "<PersonalLoanPunch_leadDetails>" and row <PersonalLoanPunch_leadDetails_rowNum>
    And user fills the lead details
    And user reads data from the excel file "<PersonalLoanPunchWB>" under sheet "<PersonalLoanPunch_loanDetails>" and row <PersonalLoanPunch_loanDetails_rowNum>
    And user fills the loan details
    And user fills the login acceptance
    And user reads data from the excel file "<PersonalLoanPunchWB>" under sheet "<PersonalLoanPunch_kyc>" and row <PersonalLoanPunch_leadDetails_rowNum>
    And user fills the kyc check
    And user fills the credit bureau stage


    Examples:
      | SourceDataFile       | SheetName | RowNumber | PersonalLoanPunchWB      | PersonalLoanPunch_leadDetails | PersonalLoanPunch_leadDetails_rowNum | PersonalLoanPunch_loanDetails | PersonalLoanPunch_loanDetails_rowNum | PersonalLoanPunch_kyc | PersonalLoanPunch_leadDetails_rowNum |
      | LoginDetailsCAS.xlsx | LoginData | 11        | personal_loan_punch.xlsx | lead_details                  | 0                                    | loan_details                  | 0                                    |kyc                   | 0                                    |
      | LoginDetailsCAS.xlsx | LoginData | 11        | personal_loan_punch.xlsx | lead_details                  | 0                                    | loan_details                  | 0                                    |kyc                   | 0                                    |
      | LoginDetailsCAS.xlsx | LoginData | 11        | personal_loan_punch.xlsx | lead_details                  | 0                                    | loan_details                  | 0                                    |kyc                   | 0                                    |
