@Epic-Loan_Application_Details
@PunchPersonalLoan
@Delete
Feature: punching personal loan

  Scenario Outline: ACAUTOCAS-13923:  personal loan punch
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
    And user reads data from the excel file "<PersonalLoanPunchWB>" under sheet "<PersonalLoanPunch_dde>" and row <PersonalLoanPunch_leadDetails_rowNum>
    And user fills the dde stage
    And user reads data from the excel file "<PersonalLoanPunchWB>" under sheet "<PersonalLoanPunch_recommendation>" and row <PersonalLoanPunch_recommendation_rowNum>
    And user fills the recommendation stage
    And user reads data from the excel file "<PersonalLoanPunchWB>" under sheet "<PersonalLoanPunch_creditApproval>" and row <PersonalLoanPunch_creditApproval_rowNum>
    And user fills the credit approval
    And user fills the reconsideration stage
    And user fills the post approval documents details
    And user reads data from the excel file "<PersonalLoanPunchWB>" under sheet "<PersonalLoanPunch_fii>" and row <PersonalLoanPunch_fii_rowNum>
    And user fills fii stage
    And user assigns application from application manager at Business Deviation
    And user fills the business deviation details
    And user reads data from the excel file "<PersonalLoanPunchWB>" under sheet "<PersonalLoanPunch_rcu_initiation>" and row <PersonalLoanPunch_rcu_initiation_rowNum>
    And user fills rcu initiation stage
    And user reads data from the excel file "<PersonalLoanPunchWB>" under sheet "<PersonalLoanPunch_rcu_referral>" and row <PersonalLoanPunch_rcu_referral_rowNum>
    And user fills rcu referral stage
    And user fills the disbursal details
    Then Loan Application should be punch successfully

    Examples:
      | SourceDataFile       | SheetName | RowNumber | PersonalLoanPunchWB      | PersonalLoanPunch_leadDetails | PersonalLoanPunch_leadDetails_rowNum | PersonalLoanPunch_loanDetails | PersonalLoanPunch_loanDetails_rowNum | PersonalLoanPunch_kyc | PersonalLoanPunch_leadDetails_rowNum | PersonalLoanPunch_dde | PersonalLoanPunch_leadDetails_rowNum | PersonalLoanPunch_recommendation | PersonalLoanPunch_recommendation_rowNum |PersonalLoanPunch_fii|PersonalLoanPunch_fii_rowNum|PersonalLoanPunch_rcu_initiation|PersonalLoanPunch_rcu_initiation_rowNum|PersonalLoanPunch_rcu_referral|PersonalLoanPunch_rcu_referral_rowNum|PersonalLoanPunch_creditApproval|PersonalLoanPunch_creditApproval_rowNum|
      | LoginDetailsCAS.xlsx | LoginData | 0         | personal_loan_punch.xlsx | lead_details                  | 0                                    | loan_details                  | 0                                    | kyc                   | 0                                    | dde                   | 0                                    | recommendation                   | 0                                       |fii                  |0                           |rcu_initiation                  |0                                      |rcu_referral                  |0                                    |credit_approval                 |0                                      |
