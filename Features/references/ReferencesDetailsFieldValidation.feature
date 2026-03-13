@Epic-Loan_Application_Details
@AuthoredBy-harshita.nayak
@ReviewedBy-pushp.bhandari
@Release2
@ReviewedByDEV

Feature:References Details Field Validation in References tab

  @ImplementedBy-atul.mishra
  Scenario Outline: ACAUTOCAS-3581: Add References Details with <Var> fields for individual
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and 0
    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_home>" and row <PersonalInfo_home_rowNum>
    And user creates new application for individual with "<Loan_Type>"
    And user reads data from the excel file "<PersonalLoanPunchWB>" under sheet "<PersonalLoanPunch_loanDetails>" and row <PersonalLoanPunch_loanDetails_rowNum>
    And user fills the loan details with save
    And user open References tab
    And user reads data from the excel file "<RefrencesWB>" under sheet "<References_home>" and row <References_home_Row>
    When user add References Details with "<Var>" fields
    Then References Details should save successfully
    Examples:
      | Loan_Type     | Var       | SourceDataFile       | SheetName | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | RefrencesWB     | References_home | References_home_Row | PersonalLoanPunchWB      | PersonalLoanPunch_loanDetails | PersonalLoanPunch_loanDetails_rowNum |
      | Home Loan     | all       | LoginDetailsCAS.xlsx | LoginData | personal_information.xlsx | home              | 0                        | references.xlsx | home            | 0                   | personal_loan_punch.xlsx | loan_details                  | 0                                    |
      | Home Loan     | mandatory | LoginDetailsCAS.xlsx | LoginData | personal_information.xlsx | home              | 0                        | references.xlsx | home            | 0                   | personal_loan_punch.xlsx | loan_details                  | 0                                    |
      | Personal Loan | all       | LoginDetailsCAS.xlsx | LoginData | personal_information.xlsx | home              | 0                        | references.xlsx | home            | 0                   | personal_loan_punch.xlsx | loan_details                  | 1                                    |
      | Personal Loan | mandatory | LoginDetailsCAS.xlsx | LoginData | personal_information.xlsx | home              | 0                        | references.xlsx | home            | 0                   | personal_loan_punch.xlsx | loan_details                  | 1                                    |
      | Auto Loan     | all       | LoginDetailsCAS.xlsx | LoginData | personal_information.xlsx | home              | 0                        | references.xlsx | home            | 0                   | personal_loan_punch.xlsx | loan_details                  | 2                                    |
      | Auto Loan     | mandatory | LoginDetailsCAS.xlsx | LoginData | personal_information.xlsx | home              | 0                        | references.xlsx | home            | 0                   | personal_loan_punch.xlsx | loan_details                  | 2                                    |

  @ImplementedBy-tushar.chauhan
  Scenario Outline: ACAUTOCAS-5665: Add References Details with <Var> fields for non individual
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and 0
    And user reads data from the excel file "<CustomerDetailsWB>" under sheet "<CustomerDetails_home>" and row <CustomerDetails_home_rowNum>
    And user creates new application for non individual with "<Loan_Type>"
    And user reads data from the excel file "<LoanDetailsWB>" under sheet "<LoanDetails_home>" and row <LoanDetails_rowNum>
    And user fills loan details of non individual customer
    And user open References tab
    And user reads data from the excel file "<RefrencesWB>" under sheet "<References_home>" and row <References_home_Row>
    When user add References Details with "<Var>" fields
    Then References Details should save successfully
    Examples:
      | Loan_Type     | Var       | SourceDataFile       | SheetName | CustomerDetailsWB     | CustomerDetails_home | CustomerDetails_home_rowNum | RefrencesWB     | References_home | References_home_Row | LoanDetailsWB            | LoanDetails_home | LoanDetails_rowNum |
      | Home Loan     | all       | LoginDetailsCAS.xlsx | LoginData | customer_details.xlsx | home                 | 0                           | references.xlsx | home            | 0                   | personal_loan_punch.xlsx | loan_details     | 0                  |
      | Home Loan     | mandatory | LoginDetailsCAS.xlsx | LoginData | customer_details.xlsx | home                 | 0                           | references.xlsx | home            | 0                   | personal_loan_punch.xlsx | loan_details     | 0                  |
      | Personal Loan | all       | LoginDetailsCAS.xlsx | LoginData | customer_details.xlsx | home                 | 0                           | references.xlsx | home            | 0                   | personal_loan_punch.xlsx | loan_details     | 1                  |
      | Personal Loan | mandatory | LoginDetailsCAS.xlsx | LoginData | customer_details.xlsx | home                 | 0                           | references.xlsx | home            | 0                   | personal_loan_punch.xlsx | loan_details     | 1                  |
      | Auto Loan     | all       | LoginDetailsCAS.xlsx | LoginData | customer_details.xlsx | home                 | 0                           | references.xlsx | home            | 0                   | personal_loan_punch.xlsx | loan_details     | 2                  |
      | Auto Loan     | mandatory | LoginDetailsCAS.xlsx | LoginData | customer_details.xlsx | home                 | 0                           | references.xlsx | home            | 0                   | personal_loan_punch.xlsx | loan_details     | 2                  |

  @ImplementedBy-atul.mishra
  Scenario Outline: ACAUTOCAS-3582: Add multiple "<Var>"References Details for individual
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and 0
    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_home>" and row <PersonalInfo_home_rowNum>
    And user creates new application for individual with "<Loan_Type>"
    And user reads data from the excel file "<PersonalLoanPunchWB>" under sheet "<PersonalLoanPunch_loanDetails>" and row <PersonalLoanPunch_loanDetails_rowNum>
    And user fills the loan details with save
    And user open References tab
    And user reads data from the excel file "<RefrencesWB>" under sheet "<References_home>" and row <References_home_Row>
    When user add multiple References Details with "<Var>" fields
    Then References Details should save successfully

    Examples:
      | Loan_Type     | Var | SourceDataFile       | SheetName | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | RefrencesWB     | References_home | References_home_Row | PersonalLoanPunchWB      | PersonalLoanPunch_loanDetails | PersonalLoanPunch_loanDetails_rowNum |
      | Home Loan     | 2   | LoginDetailsCAS.xlsx | LoginData | personal_information.xlsx | home              | 0                        | references.xlsx | home            | 0                   | personal_loan_punch.xlsx | loan_details                  | 0                                    |
      | Personal Loan | 2   | LoginDetailsCAS.xlsx | LoginData | personal_information.xlsx | home              | 0                        | references.xlsx | home            | 0                   | personal_loan_punch.xlsx | loan_details                  | 1                                    |
      | Auto Loan     | 2   | LoginDetailsCAS.xlsx | LoginData | personal_information.xlsx | home              | 0                        | references.xlsx | home            | 0                   | personal_loan_punch.xlsx | loan_details                  | 2                                    |

  @ImplementedBy-tushar.chauhan
  Scenario Outline: ACAUTOCAS-5666: Add multiple "<Var>"References Details for non individual
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and 0
    And user reads data from the excel file "<CustomerDetailsWB>" under sheet "<CustomerDetails_home>" and row <CustomerDetails_home_rowNum>
    And user creates new application for non individual with "<Loan_Type>"
    And user reads data from the excel file "<LoanDetailsWB>" under sheet "<LoanDetails_home>" and row <LoanDetails_rowNum>
    And user fills loan details of non individual customer
    And user open References tab
    And user reads data from the excel file "<RefrencesWB>" under sheet "<References_home>" and row <References_home_Row>
    When user add multiple References Details with "<Var>" fields
    Then References Details should save successfully

    Examples:
      | Loan_Type     | Var | SourceDataFile       | SheetName | CustomerDetailsWB     | CustomerDetails_home | CustomerDetails_home_rowNum | RefrencesWB     | References_home | References_home_Row | LoanDetailsWB            | LoanDetails_home | LoanDetails_rowNum |
      | Home Loan     | 2   | LoginDetailsCAS.xlsx | LoginData | customer_details.xlsx | home                 | 0                           | references.xlsx | home            | 0                   | personal_loan_punch.xlsx | loan_details     | 0                  |
      | Personal Loan | 2   | LoginDetailsCAS.xlsx | LoginData | customer_details.xlsx | home                 | 0                           | references.xlsx | home            | 0                   | personal_loan_punch.xlsx | loan_details     | 1                  |
      | Auto Loan     | 2   | LoginDetailsCAS.xlsx | LoginData | customer_details.xlsx | home                 | 0                           | references.xlsx | home            | 0                   | personal_loan_punch.xlsx | loan_details     | 2                  |

  @ImplementedBy-atul.mishra
  Scenario Outline: ACAUTOCAS-3583: Delete "<Var>" References Details for individual
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and 0
    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_home>" and row <PersonalInfo_home_rowNum>
    And user creates new application for individual with "<Loan_Type>"
    And user reads data from the excel file "<PersonalLoanPunchWB>" under sheet "<PersonalLoanPunch_loanDetails>" and row <PersonalLoanPunch_loanDetails_rowNum>
    And user fills the loan details with save
    And user open References tab
    And user reads data from the excel file "<RefrencesWB>" under sheet "<References_home>" and row <References_home_Row>
    When user add multiple References Details with "<Var>" fields
    Then delete References Details successfully
    Examples:
      | Loan_Type     | Var | SourceDataFile       | SheetName | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | RefrencesWB     | References_home | References_home_Row | PersonalLoanPunchWB      | PersonalLoanPunch_loanDetails | PersonalLoanPunch_loanDetails_rowNum |
      | Home Loan     | 2   | LoginDetailsCAS.xlsx | LoginData | personal_information.xlsx | home              | 0                        | references.xlsx | home            | 0                   | personal_loan_punch.xlsx | loan_details                  | 0                                    |
      | Personal Loan | 2   | LoginDetailsCAS.xlsx | LoginData | personal_information.xlsx | home              | 0                        | references.xlsx | home            | 0                   | personal_loan_punch.xlsx | loan_details                  | 1                                    |
      | Auto Loan     | 2   | LoginDetailsCAS.xlsx | LoginData | personal_information.xlsx | home              | 0                        | references.xlsx | home            | 0                   | personal_loan_punch.xlsx | loan_details                  | 2                                    |

  @ImplementedBy-tushar.chauhan
  Scenario Outline: ACAUTOCAS-3583: Delete "<Var>" References Details for non individual
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and 0
    And user reads data from the excel file "<CustomerDetailsWB>" under sheet "<CustomerDetails_home>" and row <CustomerDetails_home_rowNum>
    And user creates new application for non individual with "<Loan_Type>"
    And user reads data from the excel file "<LoanDetailsWB>" under sheet "<LoanDetails_home>" and row <LoanDetails_rowNum>
    And user fills loan details of non individual customer
    And user open References tab
    And user reads data from the excel file "<RefrencesWB>" under sheet "<References_home>" and row <References_home_Row>
    When user add multiple References Details with "<Var>" fields
    Then delete References Details successfully
    Examples:
      | Loan_Type     | Var | SourceDataFile       | SheetName | CustomerDetailsWB     | CustomerDetails_home | CustomerDetails_home_rowNum | RefrencesWB     | References_home | References_home_Row | LoanDetailsWB            | LoanDetails_home | LoanDetails_rowNum |
      | Home Loan     | 2   | LoginDetailsCAS.xlsx | LoginData | customer_details.xlsx | home                 | 0                           | references.xlsx | home            | 0                   | personal_loan_punch.xlsx | loan_details     | 0                  |
      | Personal Loan | 2   | LoginDetailsCAS.xlsx | LoginData | customer_details.xlsx | home                 | 0                           | references.xlsx | home            | 0                   | personal_loan_punch.xlsx | loan_details     | 1                  |
      | Auto Loan     | 2   | LoginDetailsCAS.xlsx | LoginData | customer_details.xlsx | home                 | 0                           | references.xlsx | home            | 0                   | personal_loan_punch.xlsx | loan_details     | 2                  |

  @ImplementedBy-aryan.jain
  Scenario Outline: ACAUTOCAS-3585: Validating <Field_Name> in References Details with <var> mandatory field for individual
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and 0
    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_home>" and row <PersonalInfo_home_rowNum>
    And user creates new application for individual with "<Loan_Type>"
    And user reads data from the excel file "<PersonalLoanPunchWB>" under sheet "<PersonalLoanPunch_loanDetails>" and row <PersonalLoanPunch_loanDetails_rowNum>
    And user fills the loan details with save
    And user open References tab
    And user reads data from the excel file "<ReferencesWB>" under sheet "<References_home>" and row <References_home_Row>
    When user fills "<Field_Name>" field with "<var>" in References Address Details
    Then "<Field_Name>" field "<Throws_notThrows>" "<ErrorMessage>" in References Address Details
    Examples:
      | Field_Name | var                         | Loan_Type     | SourceDataFile       | SheetName | Throws_notThrows                   | ErrorMessage                                      | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | ReferencesWB    | References_home | References_home_Row | PersonalLoanPunchWB      | PersonalLoanPunch_loanDetails | PersonalLoanPunch_loanDetails_rowNum |
      | Name       | valid value                 | Home Loan     | LoginDetailsCAS.xlsx | LoginData | does not throw any error           |                                                   | personal_information.xlsx | home              | 0                        | references.xlsx | home            | 3                   | personal_loan_punch.xlsx | loan_details                  | 0                                    |
      | Name       | special characters with dot | Home Loan     | LoginDetailsCAS.xlsx | LoginData | does not throw any error           |                                                   | personal_information.xlsx | home              | 0                        | references.xlsx | home            | 4                   | personal_loan_punch.xlsx | loan_details                  | 0                                    |
      | Name       | both digits and characters  | Home Loan     | LoginDetailsCAS.xlsx | LoginData | does not throw any error           |                                                   | personal_information.xlsx | home              | 0                        | references.xlsx | home            | 5                   | personal_loan_punch.xlsx | loan_details                  | 0                                    |
      | Name       | special characters          | Home Loan     | LoginDetailsCAS.xlsx | LoginData | throws an error with error message | Only Alphabets,Numbers and ' . spaces are allowed | personal_information.xlsx | home              | 0                        | references.xlsx | home            | 6                   | personal_loan_punch.xlsx | loan_details                  | 0                                    |
      | Name       | space                       | Home Loan     | LoginDetailsCAS.xlsx | LoginData | does not throw any error           |                                                   | personal_information.xlsx | home              | 0                        | references.xlsx | home            | 7                   | personal_loan_punch.xlsx | loan_details                  | 0                                    |
      | Name       | valid value                 | Personal Loan | LoginDetailsCAS.xlsx | LoginData | does not throw any error           |                                                   | personal_information.xlsx | home              | 0                        | references.xlsx | home            | 3                   | personal_loan_punch.xlsx | loan_details                  | 1                                    |
      | Name       | special characters with dot | Personal Loan | LoginDetailsCAS.xlsx | LoginData | does not throw any error           |                                                   | personal_information.xlsx | home              | 0                        | references.xlsx | home            | 4                   | personal_loan_punch.xlsx | loan_details                  | 1                                    |
      | Name       | both digits and characters  | Personal Loan | LoginDetailsCAS.xlsx | LoginData | does not throw any error           |                                                   | personal_information.xlsx | home              | 0                        | references.xlsx | home            | 5                   | personal_loan_punch.xlsx | loan_details                  | 1                                    |
      | Name       | special characters          | Personal Loan | LoginDetailsCAS.xlsx | LoginData | throws an error with error message | Only Alphabets,Numbers and ' . spaces are allowed | personal_information.xlsx | home              | 0                        | references.xlsx | home            | 6                   | personal_loan_punch.xlsx | loan_details                  | 1                                    |
      | Name       | space                       | Personal Loan | LoginDetailsCAS.xlsx | LoginData | does not throw any error           |                                                   | personal_information.xlsx | home              | 0                        | references.xlsx | home            | 7                   | personal_loan_punch.xlsx | loan_details                  | 1                                    |
      | Name       | valid value                 | Auto Loan     | LoginDetailsCAS.xlsx | LoginData | does not throw any error           |                                                   | personal_information.xlsx | home              | 0                        | references.xlsx | home            | 3                   | personal_loan_punch.xlsx | loan_details                  | 2                                    |
      | Name       | special characters with dot | Auto Loan     | LoginDetailsCAS.xlsx | LoginData | does not throw any error           |                                                   | personal_information.xlsx | home              | 0                        | references.xlsx | home            | 4                   | personal_loan_punch.xlsx | loan_details                  | 2                                    |
      | Name       | both digits and characters  | Auto Loan     | LoginDetailsCAS.xlsx | LoginData | does not throw any error           |                                                   | personal_information.xlsx | home              | 0                        | references.xlsx | home            | 5                   | personal_loan_punch.xlsx | loan_details                  | 2                                    |
      | Name       | special characters          | Auto Loan     | LoginDetailsCAS.xlsx | LoginData | throws an error with error message | Only Alphabets,Numbers and ' . spaces are allowed | personal_information.xlsx | home              | 0                        | references.xlsx | home            | 6                   | personal_loan_punch.xlsx | loan_details                  | 2                                    |
      | Name       | space                       | Auto Loan     | LoginDetailsCAS.xlsx | LoginData | does not throw any error           |                                                   | personal_information.xlsx | home              | 0                        | references.xlsx | home            | 7                   | personal_loan_punch.xlsx | loan_details                  | 2                                    |

  @ImplementedBy-aryan.jain
  Scenario Outline:ACAUTOCAS-5667: Validating <Field_Name> in References Details with <var> mandatory field for non individual
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and 0
    And user reads data from the excel file "<CustomerDetailsWB>" under sheet "<CustomerDetails_home>" and row <CustomerDetails_home_rowNum>
    And user creates new application for non individual with "<Loan_Type>"
    And user reads data from the excel file "<LoanDetailsWB>" under sheet "<LoanDetails_home>" and row <LoanDetails_rowNum>
    And user fills loan details of non individual customer
    And user open References tab
    And user reads data from the excel file "<ReferencesWB>" under sheet "<References_home>" and row <References_home_Row>
    When user fills "<Field_Name>" field with "<var>" in References Address Details
    Then "<Field_Name>" field "<Throws_notThrows>" "<ErrorMessage>" in References Address Details
    Examples:
      | Field_Name | var                         | Loan_Type     | SourceDataFile       | SheetName | Throws_notThrows                   | ErrorMessage                                      | CustomerDetailsWB     | CustomerDetails_home | CustomerDetails_home_rowNum | ReferencesWB    | References_home | References_home_Row | LoanDetailsWB            | LoanDetails_home | LoanDetails_rowNum |
      | Name       | valid value                 | Home Loan     | LoginDetailsCAS.xlsx | LoginData | does not throw any error           |                                                   | customer_details.xlsx | home                 | 0                           | references.xlsx | home            | 3                   | personal_loan_punch.xlsx | loan_details     | 0                  |
      | Name       | special characters with dot | Home Loan     | LoginDetailsCAS.xlsx | LoginData | does not throw any error           |                                                   | customer_details.xlsx | home                 | 0                           | references.xlsx | home            | 4                   | personal_loan_punch.xlsx | loan_details     | 0                  |
      | Name       | both digits and characters  | Home Loan     | LoginDetailsCAS.xlsx | LoginData | does not throw any error           |                                                   | customer_details.xlsx | home                 | 0                           | references.xlsx | home            | 5                   | personal_loan_punch.xlsx | loan_details     | 0                  |
      | Name       | special characters          | Home Loan     | LoginDetailsCAS.xlsx | LoginData | throws an error with error message | Only Alphabets,Numbers and ' . spaces are allowed | customer_details.xlsx | home                 | 0                           | references.xlsx | home            | 6                   | personal_loan_punch.xlsx | loan_details     | 0                  |
      | Name       | space                       | Home Loan     | LoginDetailsCAS.xlsx | LoginData | does not throw any error           |                                                   | customer_details.xlsx | home                 | 0                           | references.xlsx | home            | 7                   | personal_loan_punch.xlsx | loan_details     | 0                  |
      | Name       | valid value                 | Personal Loan | LoginDetailsCAS.xlsx | LoginData | does not throw any error           |                                                   | customer_details.xlsx | home                 | 0                           | references.xlsx | home            | 3                   | personal_loan_punch.xlsx | loan_details     | 1                  |
      | Name       | special characters with dot | Personal Loan | LoginDetailsCAS.xlsx | LoginData | does not throw any error           |                                                   | customer_details.xlsx | home                 | 0                           | references.xlsx | home            | 4                   | personal_loan_punch.xlsx | loan_details     | 1                  |
      | Name       | both digits and characters  | Personal Loan | LoginDetailsCAS.xlsx | LoginData | does not throw any error           |                                                   | customer_details.xlsx | home                 | 0                           | references.xlsx | home            | 5                   | personal_loan_punch.xlsx | loan_details     | 1                  |
      | Name       | special characters          | Personal Loan | LoginDetailsCAS.xlsx | LoginData | throws an error with error message | Only Alphabets,Numbers and ' . spaces are allowed | customer_details.xlsx | home                 | 0                           | references.xlsx | home            | 6                   | personal_loan_punch.xlsx | loan_details     | 1                  |
      | Name       | space                       | Personal Loan | LoginDetailsCAS.xlsx | LoginData | does not throw any error           |                                                   | customer_details.xlsx | home                 | 0                           | references.xlsx | home            | 7                   | personal_loan_punch.xlsx | loan_details     | 1                  |
      | Name       | valid value                 | Auto Loan     | LoginDetailsCAS.xlsx | LoginData | does not throw any error           |                                                   | customer_details.xlsx | home                 | 0                           | references.xlsx | home            | 3                   | personal_loan_punch.xlsx | loan_details     | 2                  |
      | Name       | special characters with dot | Auto Loan     | LoginDetailsCAS.xlsx | LoginData | does not throw any error           |                                                   | customer_details.xlsx | home                 | 0                           | references.xlsx | home            | 4                   | personal_loan_punch.xlsx | loan_details     | 2                  |
      | Name       | both digits and characters  | Auto Loan     | LoginDetailsCAS.xlsx | LoginData | does not throw any error           |                                                   | customer_details.xlsx | home                 | 0                           | references.xlsx | home            | 5                   | personal_loan_punch.xlsx | loan_details     | 2                  |
      | Name       | special characters          | Auto Loan     | LoginDetailsCAS.xlsx | LoginData | throws an error with error message | Only Alphabets,Numbers and ' . spaces are allowed | customer_details.xlsx | home                 | 0                           | references.xlsx | home            | 6                   | personal_loan_punch.xlsx | loan_details     | 2                  |
      | Name       | space                       | Auto Loan     | LoginDetailsCAS.xlsx | LoginData | does not throw any error           |                                                   | customer_details.xlsx | home                 | 0                           | references.xlsx | home            | 7                   | personal_loan_punch.xlsx | loan_details     | 2                  |

  @ImplementedBy-aryan.jain
  Scenario Outline: ACAUTOCAS-3586: Validating <Field_Name> in References Details with <var> non mandatory field for individual
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and 0
    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_home>" and row <PersonalInfo_home_rowNum>
    And user creates new application for individual with "<Loan_Type>"
    And user reads data from the excel file "<PersonalLoanPunchWB>" under sheet "<PersonalLoanPunch_loanDetails>" and row <PersonalLoanPunch_loanDetails_rowNum>
    And user fills the loan details with save
    And user open References tab
    And user reads data from the excel file "<ReferencesWB>" under sheet "<References_home>" and row <References_home_Row>
    When user fills "<Field_Name>" field with "<var>" in References Address Details
    Then "<Field_Name>" field "<Throws_notThrows>" "<ErrorMessage>" in References Address Details
    Examples:
      | Field_Name | var                        | Loan_Type     | SourceDataFile       | SheetName | Throws_notThrows                   | ErrorMessage                        | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | ReferencesWB    | References_home | References_home_Row | PersonalLoanPunchWB      | PersonalLoanPunch_loanDetails | PersonalLoanPunch_loanDetails_rowNum |
      | Email      | valid value                | Home Loan     | LoginDetailsCAS.xlsx | LoginData | does not throw any error           |                                     | personal_information.xlsx | home              | 0                        | references.xlsx | home            | 3                   | personal_loan_punch.xlsx | loan_details                  | 0                                    |
      | Email      | both digits and characters | Home Loan     | LoginDetailsCAS.xlsx | LoginData | does not throw any error           |                                     | personal_information.xlsx | home              | 0                        | references.xlsx | home            | 4                   | personal_loan_punch.xlsx | loan_details                  | 0                                    |
      | Email      | special characters         | Home Loan     | LoginDetailsCAS.xlsx | LoginData | does not throw any error           |                                     | personal_information.xlsx | home              | 0                        | references.xlsx | home            | 5                   | personal_loan_punch.xlsx | loan_details                  | 0                                    |
      | Email      | space                      | Home Loan     | LoginDetailsCAS.xlsx | LoginData | throws an error with error message | Please enter a valid E-mail address | personal_information.xlsx | home              | 0                        | references.xlsx | home            | 6                   | personal_loan_punch.xlsx | loan_details                  | 0                                    |
      | Email      | valid value                | Personal Loan | LoginDetailsCAS.xlsx | LoginData | does not throw any error           |                                     | personal_information.xlsx | home              | 0                        | references.xlsx | home            | 3                   | personal_loan_punch.xlsx | loan_details                  | 1                                    |
      | Email      | both digits and characters | Personal Loan | LoginDetailsCAS.xlsx | LoginData | does not throw any error           |                                     | personal_information.xlsx | home              | 0                        | references.xlsx | home            | 4                   | personal_loan_punch.xlsx | loan_details                  | 1                                    |
      | Email      | special characters         | Personal Loan | LoginDetailsCAS.xlsx | LoginData | does not throw any error           |                                     | personal_information.xlsx | home              | 0                        | references.xlsx | home            | 5                   | personal_loan_punch.xlsx | loan_details                  | 1                                    |
      | Email      | space                      | Personal Loan | LoginDetailsCAS.xlsx | LoginData | throws an error with error message | Please enter a valid E-mail address | personal_information.xlsx | home              | 0                        | references.xlsx | home            | 6                   | personal_loan_punch.xlsx | loan_details                  | 1                                    |
      | Email      | valid value                | Auto Loan     | LoginDetailsCAS.xlsx | LoginData | does not throw any error           |                                     | personal_information.xlsx | home              | 0                        | references.xlsx | home            | 3                   | personal_loan_punch.xlsx | loan_details                  | 2                                    |
      | Email      | both digits and characters | Auto Loan     | LoginDetailsCAS.xlsx | LoginData | does not throw any error           |                                     | personal_information.xlsx | home              | 0                        | references.xlsx | home            | 4                   | personal_loan_punch.xlsx | loan_details                  | 2                                    |
      | Email      | special characters         | Auto Loan     | LoginDetailsCAS.xlsx | LoginData | does not throw any error           |                                     | personal_information.xlsx | home              | 0                        | references.xlsx | home            | 5                   | personal_loan_punch.xlsx | loan_details                  | 2                                    |
      | Email      | space                      | Auto Loan     | LoginDetailsCAS.xlsx | LoginData | throws an error with error message | Please enter a valid E-mail address | personal_information.xlsx | home              | 0                        | references.xlsx | home            | 6                   | personal_loan_punch.xlsx | loan_details                  | 2                                    |

  @ImplementedBy-aryan.jain
  Scenario Outline:ACAUTOCAS-5668: Validating <Field_Name> in References Details with <var> non mandatory field for non individual
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and 0
    And user reads data from the excel file "<CustomerDetailsWB>" under sheet "<CustomerDetails_home>" and row <CustomerDetails_home_rowNum>
    And user creates new application for non individual with "<Loan_Type>"
    And user reads data from the excel file "<LoanDetailsWB>" under sheet "<LoanDetails_home>" and row <LoanDetails_rowNum>
    And user fills loan details of non individual customer
    And user open References tab
    And user reads data from the excel file "<ReferencesWB>" under sheet "<References_home>" and row <References_home_Row>
    When user fills "<Field_Name>" field with "<var>" in References Address Details
    Then "<Field_Name>" field "<Throws_notThrows>" "<ErrorMessage>" in References Address Details
    Examples:
      | Field_Name | var                        | Loan_Type     | SourceDataFile       | SheetName | Throws_notThrows                   | ErrorMessage                        | CustomerDetailsWB     | CustomerDetails_home | CustomerDetails_home_rowNum | ReferencesWB    | References_home | References_home_Row | LoanDetailsWB            | LoanDetails_home | LoanDetails_rowNum |
      | Email      | valid value                | Home Loan     | LoginDetailsCAS.xlsx | LoginData | does not throw any error           |                                     | customer_details.xlsx | home                 | 0                           | references.xlsx | home            | 3                   | personal_loan_punch.xlsx | loan_details     | 0                  |
      | Email      | both digits and characters | Home Loan     | LoginDetailsCAS.xlsx | LoginData | does not throw any error           |                                     | customer_details.xlsx | home                 | 0                           | references.xlsx | home            | 4                   | personal_loan_punch.xlsx | loan_details     | 0                  |
      | Email      | special characters         | Home Loan     | LoginDetailsCAS.xlsx | LoginData | does not throw any error           |                                     | customer_details.xlsx | home                 | 0                           | references.xlsx | home            | 5                   | personal_loan_punch.xlsx | loan_details     | 0                  |
      | Email      | space                      | Home Loan     | LoginDetailsCAS.xlsx | LoginData | throws an error with error message | Please enter a valid E-mail address | customer_details.xlsx | home                 | 0                           | references.xlsx | home            | 6                   | personal_loan_punch.xlsx | loan_details     | 0                  |
      | Email      | valid value                | Personal Loan | LoginDetailsCAS.xlsx | LoginData | does not throw any error           |                                     | customer_details.xlsx | home                 | 0                           | references.xlsx | home            | 3                   | personal_loan_punch.xlsx | loan_details     | 1                  |
      | Email      | both digits and characters | Personal Loan | LoginDetailsCAS.xlsx | LoginData | does not throw any error           |                                     | customer_details.xlsx | home                 | 0                           | references.xlsx | home            | 4                   | personal_loan_punch.xlsx | loan_details     | 1                  |
      | Email      | special characters         | Personal Loan | LoginDetailsCAS.xlsx | LoginData | does not throw any error           |                                     | customer_details.xlsx | home                 | 0                           | references.xlsx | home            | 5                   | personal_loan_punch.xlsx | loan_details     | 1                  |
      | Email      | space                      | Personal Loan | LoginDetailsCAS.xlsx | LoginData | throws an error with error message | Please enter a valid E-mail address | customer_details.xlsx | home                 | 0                           | references.xlsx | home            | 6                   | personal_loan_punch.xlsx | loan_details     | 1                  |
      | Email      | valid value                | Auto Loan     | LoginDetailsCAS.xlsx | LoginData | does not throw any error           |                                     | customer_details.xlsx | home                 | 0                           | references.xlsx | home            | 3                   | personal_loan_punch.xlsx | loan_details     | 2                  |
      | Email      | both digits and characters | Auto Loan     | LoginDetailsCAS.xlsx | LoginData | does not throw any error           |                                     | customer_details.xlsx | home                 | 0                           | references.xlsx | home            | 4                   | personal_loan_punch.xlsx | loan_details     | 2                  |
      | Email      | special characters         | Auto Loan     | LoginDetailsCAS.xlsx | LoginData | does not throw any error           |                                     | customer_details.xlsx | home                 | 0                           | references.xlsx | home            | 5                   | personal_loan_punch.xlsx | loan_details     | 2                  |
      | Email      | space                      | Auto Loan     | LoginDetailsCAS.xlsx | LoginData | throws an error with error message | Please enter a valid E-mail address | customer_details.xlsx | home                 | 0                           | references.xlsx | home            | 6                   | personal_loan_punch.xlsx | loan_details     | 2                  |

  @ImplementedBy-aryan.jain
  Scenario Outline: ACAUTOCAS-3587:  Saving References Address Details without <Field_Name> in References tab for individual
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and 0
    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_home>" and row <PersonalInfo_home_rowNum>
    And user creates new application for individual with "<Loan_Type>"
    And user reads data from the excel file "<PersonalLoanPunchWB>" under sheet "<PersonalLoanPunch_loanDetails>" and row <PersonalLoanPunch_loanDetails_rowNum>
    And user fills the loan details with save
    And user open References tab
    And user reads data from the excel file "<ReferencesWB>" under sheet "<References_home>" and row <References_home_Row>
    When user fills References Address Details without "<Field_Name>" in References Address Details <rowNum>
    Then References Address Details "<Field_Name>" not saved with "<Throws_notThrows>" "<ErrorMessage>" in References Address Details
    Examples:
      | Field_Name   | Loan_Type     | SourceDataFile       | SheetName | Throws_notThrows                   | ErrorMessage            | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | ReferencesWB    | References_home | References_home_Row | PersonalLoanPunchWB      | PersonalLoanPunch_loanDetails | PersonalLoanPunch_loanDetails_rowNum | rowNum |
      | Plot Number  | Home Loan     | LoginDetailsCAS.xlsx | LoginData | throws an error with error message | This field is required. | personal_information.xlsx | home              | 0                        | references.xlsx | home            | 3                   | personal_loan_punch.xlsx | loan_details                  | 0                                    | 0      |
      | PinCode      | Home Loan     | LoginDetailsCAS.xlsx | LoginData | throws an error with error message | This field is required. | personal_information.xlsx | home              | 0                        | references.xlsx | home            | 4                   | personal_loan_punch.xlsx | loan_details                  | 0                                    | 0      |
      | State        | Home Loan     | LoginDetailsCAS.xlsx | LoginData | throws an error with error message | This field is required. | personal_information.xlsx | home              | 0                        | references.xlsx | home            | 5                   | personal_loan_punch.xlsx | loan_details                  | 0                                    | 0      |
      | Address Type | Home Loan     | LoginDetailsCAS.xlsx | LoginData | throws an error with error message | This field is required. | personal_information.xlsx | home              | 0                        | references.xlsx | home            | 6                   | personal_loan_punch.xlsx | loan_details                  | 0                                    | 0      |
      | Plot Number  | Personal Loan | LoginDetailsCAS.xlsx | LoginData | throws an error with error message | This field is required. | personal_information.xlsx | home              | 0                        | references.xlsx | home            | 3                   | personal_loan_punch.xlsx | loan_details                  | 1                                    | 0      |
      | PinCode      | Personal Loan | LoginDetailsCAS.xlsx | LoginData | throws an error with error message | This field is required. | personal_information.xlsx | home              | 0                        | references.xlsx | home            | 4                   | personal_loan_punch.xlsx | loan_details                  | 1                                    | 0      |
      | State        | Personal Loan | LoginDetailsCAS.xlsx | LoginData | throws an error with error message | This field is required. | personal_information.xlsx | home              | 0                        | references.xlsx | home            | 5                   | personal_loan_punch.xlsx | loan_details                  | 1                                    | 0      |
      | Address Type | Personal Loan | LoginDetailsCAS.xlsx | LoginData | throws an error with error message | This field is required. | personal_information.xlsx | home              | 0                        | references.xlsx | home            | 6                   | personal_loan_punch.xlsx | loan_details                  | 1                                    | 0      |
      | Plot Number  | Auto Loan     | LoginDetailsCAS.xlsx | LoginData | throws an error with error message | This field is required. | personal_information.xlsx | home              | 0                        | references.xlsx | home            | 3                   | personal_loan_punch.xlsx | loan_details                  | 2                                    | 0      |
      | PinCode      | Auto Loan     | LoginDetailsCAS.xlsx | LoginData | throws an error with error message | This field is required. | personal_information.xlsx | home              | 0                        | references.xlsx | home            | 4                   | personal_loan_punch.xlsx | loan_details                  | 2                                    | 0      |
      | State        | Auto Loan     | LoginDetailsCAS.xlsx | LoginData | throws an error with error message | This field is required. | personal_information.xlsx | home              | 0                        | references.xlsx | home            | 5                   | personal_loan_punch.xlsx | loan_details                  | 2                                    | 0      |
      | Address Type | Auto Loan     | LoginDetailsCAS.xlsx | LoginData | throws an error with error message | This field is required. | personal_information.xlsx | home              | 0                        | references.xlsx | home            | 6                   | personal_loan_punch.xlsx | loan_details                  | 2                                    | 0      |

  @ImplementedBy-aryan.jain
  Scenario Outline: ACAUTOCAS-5669: Saving References Address Details without <Field_Name> in References tab for non individual
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and 0
    And user reads data from the excel file "<CustomerDetailsWB>" under sheet "<CustomerDetails_home>" and row <CustomerDetails_home_rowNum>
    And user creates new application for non individual with "<Loan_Type>"
    And user reads data from the excel file "<LoanDetailsWB>" under sheet "<LoanDetails_home>" and row <LoanDetails_rowNum>
    And user fills loan details of non individual customer
    And user open References tab
    And user reads data from the excel file "<ReferencesWB>" under sheet "<References_home>" and row <References_home_Row>
    When user fills References Address Details without "<Field_Name>" in References Address Details <rowNum>
    Then References Address Details "<Field_Name>" not saved with "<Throws_notThrows>" "<ErrorMessage>" in References Address Details
    Examples:
      | Field_Name   | Loan_Type     | SourceDataFile       | SheetName | Throws_notThrows                   | ErrorMessage            | CustomerDetailsWB     | CustomerDetails_home | CustomerDetails_home_rowNum | ReferencesWB    | References_home | References_home_Row | LoanDetailsWB            | LoanDetails_home | LoanDetails_rowNum | rowNum |
      | Plot Number  | Home Loan     | LoginDetailsCAS.xlsx | LoginData | throws an error with error message | This field is required. | customer_details.xlsx | home                 | 0                           | references.xlsx | home            | 3                   | personal_loan_punch.xlsx | loan_details     | 0                  | 0      |
      | PinCode      | Home Loan     | LoginDetailsCAS.xlsx | LoginData | throws an error with error message | This field is required. | customer_details.xlsx | home                 | 0                           | references.xlsx | home            | 4                   | personal_loan_punch.xlsx | loan_details     | 0                  | 0      |
      | State        | Home Loan     | LoginDetailsCAS.xlsx | LoginData | throws an error with error message | This field is required. | customer_details.xlsx | home                 | 0                           | references.xlsx | home            | 5                   | personal_loan_punch.xlsx | loan_details     | 0                  | 0      |
      | Address Type | Home Loan     | LoginDetailsCAS.xlsx | LoginData | throws an error with error message | This field is required. | customer_details.xlsx | home                 | 0                           | references.xlsx | home            | 6                   | personal_loan_punch.xlsx | loan_details     | 0                  | 0      |
      | Plot Number  | Personal Loan | LoginDetailsCAS.xlsx | LoginData | throws an error with error message | This field is required. | customer_details.xlsx | home                 | 0                           | references.xlsx | home            | 3                   | personal_loan_punch.xlsx | loan_details     | 1                  | 0      |
      | PinCode      | Personal Loan | LoginDetailsCAS.xlsx | LoginData | throws an error with error message | This field is required. | customer_details.xlsx | home                 | 0                           | references.xlsx | home            | 4                   | personal_loan_punch.xlsx | loan_details     | 1                  | 0      |
      | State        | Personal Loan | LoginDetailsCAS.xlsx | LoginData | throws an error with error message | This field is required. | customer_details.xlsx | home                 | 0                           | references.xlsx | home            | 5                   | personal_loan_punch.xlsx | loan_details     | 1                  | 0      |
      | Address Type | Personal Loan | LoginDetailsCAS.xlsx | LoginData | throws an error with error message | This field is required. | customer_details.xlsx | home                 | 0                           | references.xlsx | home            | 6                   | personal_loan_punch.xlsx | loan_details     | 1                  | 0      |
      | Plot Number  | Auto Loan     | LoginDetailsCAS.xlsx | LoginData | throws an error with error message | This field is required. | customer_details.xlsx | home                 | 0                           | references.xlsx | home            | 3                   | personal_loan_punch.xlsx | loan_details     | 2                  | 0      |
      | PinCode      | Auto Loan     | LoginDetailsCAS.xlsx | LoginData | throws an error with error message | This field is required. | customer_details.xlsx | home                 | 0                           | references.xlsx | home            | 4                   | personal_loan_punch.xlsx | loan_details     | 2                  | 0      |
      | State        | Auto Loan     | LoginDetailsCAS.xlsx | LoginData | throws an error with error message | This field is required. | customer_details.xlsx | home                 | 0                           | references.xlsx | home            | 5                   | personal_loan_punch.xlsx | loan_details     | 2                  | 0      |
      | Address Type | Auto Loan     | LoginDetailsCAS.xlsx | LoginData | throws an error with error message | This field is required. | customer_details.xlsx | home                 | 0                           | references.xlsx | home            | 6                   | personal_loan_punch.xlsx | loan_details     | 2                  | 0      |

  @ImplementedBy-aryan.jain
  Scenario Outline:  ACAUTOCAS-3588: Saving References Address Details with <Mandatory_All> field in References for individual
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and 0
    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_home>" and row <PersonalInfo_home_rowNum>
    And user creates new application for individual with "<Loan_Type>"
    And user reads data from the excel file "<PersonalLoanPunchWB>" under sheet "<PersonalLoanPunch_loanDetails>" and row <PersonalLoanPunch_loanDetails_rowNum>
    And user fills the loan details with save
    And user open References tab
    And user reads data from the excel file "<ReferencesWB>" under sheet "<References_home>" and row <References_home_Row>
    When user fills References Address Details with "<Mandatory_All>" field in References Address Details <rowNum>
    Then References Address Details is saved successfully in References Address Details
    Examples:
      | Mandatory_All | Loan_Type     | SourceDataFile       | SheetName | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | ReferencesWB    | References_home | References_home_Row | PersonalLoanPunchWB      | PersonalLoanPunch_loanDetails | PersonalLoanPunch_loanDetails_rowNum | rowNum |
      | Mandatory     | Home Loan     | LoginDetailsCAS.xlsx | LoginData | personal_information.xlsx | home              | 0                        | references.xlsx | home            | 1                   | personal_loan_punch.xlsx | loan_details                  | 0                                    | 0      |
      | All           | Home Loan     | LoginDetailsCAS.xlsx | LoginData | personal_information.xlsx | home              | 0                        | references.xlsx | home            | 1                   | personal_loan_punch.xlsx | loan_details                  | 0                                    | 0      |
      | Mandatory     | Personal Loan | LoginDetailsCAS.xlsx | LoginData | personal_information.xlsx | home              | 0                        | references.xlsx | home            | 1                   | personal_loan_punch.xlsx | loan_details                  | 1                                    | 0      |
      | All           | Personal Loan | LoginDetailsCAS.xlsx | LoginData | personal_information.xlsx | home              | 0                        | references.xlsx | home            | 1                   | personal_loan_punch.xlsx | loan_details                  | 1                                    | 0      |
      | Mandatory     | Auto Loan     | LoginDetailsCAS.xlsx | LoginData | personal_information.xlsx | home              | 0                        | references.xlsx | home            | 1                   | personal_loan_punch.xlsx | loan_details                  | 2                                    | 0      |
      | All           | Auto Loan     | LoginDetailsCAS.xlsx | LoginData | personal_information.xlsx | home              | 0                        | references.xlsx | home            | 1                   | personal_loan_punch.xlsx | loan_details                  | 2                                    | 0      |

  @ImplementedBy-aryan.jain
  Scenario Outline: ACAUTOCAS-5670: Saving References Address Details with <Mandatory_All> field in References for non individual
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and 0
    And user reads data from the excel file "<CustomerDetailsWB>" under sheet "<CustomerDetails_home>" and row <CustomerDetails_home_rowNum>
    And user creates new application for non individual with "<Loan_Type>"
    And user reads data from the excel file "<LoanDetailsWB>" under sheet "<LoanDetails_home>" and row <LoanDetails_rowNum>
    And user fills loan details of non individual customer
    And user open References tab
    And user reads data from the excel file "<ReferencesWB>" under sheet "<References_home>" and row <References_home_Row>
    When user fills References Address Details with "<Mandatory_All>" field in References Address Details <rowNum>
    Then References Address Details is saved successfully in References Address Details
    Examples:
      | Mandatory_All | Loan_Type     | SourceDataFile       | SheetName | CustomerDetailsWB     | CustomerDetails_home | CustomerDetails_home_rowNum | ReferencesWB    | References_home | References_home_Row | LoanDetailsWB            | LoanDetails_home | LoanDetails_rowNum | rowNum |
      | Mandatory     | Home Loan     | LoginDetailsCAS.xlsx | LoginData | customer_details.xlsx | home                 | 0                           | references.xlsx | home            | 1                   | personal_loan_punch.xlsx | loan_details     | 0                  | 0      |
      | All           | Home Loan     | LoginDetailsCAS.xlsx | LoginData | customer_details.xlsx | home                 | 0                           | references.xlsx | home            | 1                   | personal_loan_punch.xlsx | loan_details     | 0                  | 0      |
      | Mandatory     | Personal Loan | LoginDetailsCAS.xlsx | LoginData | customer_details.xlsx | home                 | 0                           | references.xlsx | home            | 1                   | personal_loan_punch.xlsx | loan_details     | 1                  | 0      |
      | All           | Personal Loan | LoginDetailsCAS.xlsx | LoginData | customer_details.xlsx | home                 | 0                           | references.xlsx | home            | 1                   | personal_loan_punch.xlsx | loan_details     | 1                  | 0      |
      | Mandatory     | Auto Loan     | LoginDetailsCAS.xlsx | LoginData | customer_details.xlsx | home                 | 0                           | references.xlsx | home            | 1                   | personal_loan_punch.xlsx | loan_details     | 2                  | 0      |
      | All           | Auto Loan     | LoginDetailsCAS.xlsx | LoginData | customer_details.xlsx | home                 | 0                           | references.xlsx | home            | 1                   | personal_loan_punch.xlsx | loan_details     | 2                  | 0      |


  @ImplementedBy-piyush.agnihotri
  Scenario Outline: ACAUTOCAS-3592: Validating Phone Number Extn in References Address Details <var> for Individual Applicant
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and 0
    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_home>" and row <PersonalInfo_home_rowNum>
    And user creates new application for individual with "<Loan_Type>"
    And user reads data from the excel file "<PersonalLoanPunchWB>" under sheet "<PersonalLoanPunch_loanDetails>" and row <PersonalLoanPunch_loanDetails_rowNum>
    And user fills the loan details with save
    And user open References tab
    And user reads data from the excel file "<ReferencesWB>" under sheet "<References_home>" and row <References_home_Row>
    When user enters Phone Number Extn in References Address Details
    Then Phone Number Extn field with "<var>" "<Throws_notThrows>" in References Address Details
    Examples:
      | var                       | Loan_Type     | SourceDataFile       | SheetName | Throws_notThrows                   | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | ReferencesWB    | References_home | References_home_Row | PersonalLoanPunchWB      | PersonalLoanPunch_loanDetails | PersonalLoanPunch_loanDetails_rowNum |
      | valid value               | Home Loan     | LoginDetailsCAS.xlsx | LoginData | does not throw any error           | personal_information.xlsx | home              | 0                        | references.xlsx | home            | 0                   | personal_loan_punch.xlsx | loan_details                  | 0                                    |
      | with characters           | Home Loan     | LoginDetailsCAS.xlsx | LoginData | throws an error with error message | personal_information.xlsx | home              | 0                        | references.xlsx | home            | 1                   | personal_loan_punch.xlsx | loan_details                  | 0                                    |
      | with special character    | Home Loan     | LoginDetailsCAS.xlsx | LoginData | throws an error with error message | personal_information.xlsx | home              | 0                        | references.xlsx | home            | 2                   | personal_loan_punch.xlsx | loan_details                  | 0                                    |
      | with characters and digit | Home Loan     | LoginDetailsCAS.xlsx | LoginData | throws an error with error message | personal_information.xlsx | home              | 0                        | references.xlsx | home            | 3                   | personal_loan_punch.xlsx | loan_details                  | 0                                    |
      | with spaces               | Home Loan     | LoginDetailsCAS.xlsx | LoginData | throws an error with error message | personal_information.xlsx | home              | 0                        | references.xlsx | home            | 4                   | personal_loan_punch.xlsx | loan_details                  | 0                                    |
      | valid value               | Personal Loan | LoginDetailsCAS.xlsx | LoginData | does not throw any error           | personal_information.xlsx | home              | 0                        | references.xlsx | home            | 0                   | personal_loan_punch.xlsx | loan_details                  | 1                                    |
      | with characters           | Personal Loan | LoginDetailsCAS.xlsx | LoginData | throws an error with error message | personal_information.xlsx | home              | 0                        | references.xlsx | home            | 1                   | personal_loan_punch.xlsx | loan_details                  | 1                                    |
      | with special character    | Personal Loan | LoginDetailsCAS.xlsx | LoginData | throws an error with error message | personal_information.xlsx | home              | 0                        | references.xlsx | home            | 2                   | personal_loan_punch.xlsx | loan_details                  | 1                                    |
      | with characters and digit | Personal Loan | LoginDetailsCAS.xlsx | LoginData | throws an error with error message | personal_information.xlsx | home              | 0                        | references.xlsx | home            | 3                   | personal_loan_punch.xlsx | loan_details                  | 1                                    |
      | with spaces               | Personal Loan | LoginDetailsCAS.xlsx | LoginData | throws an error with error message | personal_information.xlsx | home              | 0                        | references.xlsx | home            | 4                   | personal_loan_punch.xlsx | loan_details                  | 1                                    |
      | valid value               | Auto Loan     | LoginDetailsCAS.xlsx | LoginData | does not throw any error           | personal_information.xlsx | home              | 0                        | references.xlsx | home            | 0                   | personal_loan_punch.xlsx | loan_details                  | 2                                    |
      | with characters           | Auto Loan     | LoginDetailsCAS.xlsx | LoginData | throws an error with error message | personal_information.xlsx | home              | 0                        | references.xlsx | home            | 1                   | personal_loan_punch.xlsx | loan_details                  | 2                                    |
      | with special character    | Auto Loan     | LoginDetailsCAS.xlsx | LoginData | throws an error with error message | personal_information.xlsx | home              | 0                        | references.xlsx | home            | 2                   | personal_loan_punch.xlsx | loan_details                  | 2                                    |
      | with characters and digit | Auto Loan     | LoginDetailsCAS.xlsx | LoginData | throws an error with error message | personal_information.xlsx | home              | 0                        | references.xlsx | home            | 3                   | personal_loan_punch.xlsx | loan_details                  | 2                                    |
      | with spaces               | Auto Loan     | LoginDetailsCAS.xlsx | LoginData | throws an error with error message | personal_information.xlsx | home              | 0                        | references.xlsx | home            | 4                   | personal_loan_punch.xlsx | loan_details                  | 2                                    |

  @ImplementedBy-piyush.agnihotri
  Scenario Outline: ACAUTOCAS-5674:Validating Phone Number Extn in References Address Details <var> for Non-Individual Applicant
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and 0
    And user reads data from the excel file "<CustomerDetailsWB>" under sheet "<CustomerDetails_home>" and row <CustomerDetails_home_rowNum>
    And user creates new application for non individual with "<Loan_Type>"
    And user reads data from the excel file "<LoanDetailsWB>" under sheet "<LoanDetails_home>" and row <LoanDetails_rowNum>
    And user fills loan details of non individual customer
    And user open References tab
    And user reads data from the excel file "<ReferencesWB>" under sheet "<References_home>" and row <References_home_Row>
    When user enters Phone Number Extn in References Address Details
    Then Phone Number Extn field with "<var>" "<Throws_notThrows>" in References Address Details

    Examples:
      | var                       | Loan_Type     | SourceDataFile       | SheetName | Throws_notThrows                   | CustomerDetailsWB     | CustomerDetails_home | CustomerDetails_home_rowNum | ReferencesWB    | References_home | References_home_Row | LoanDetailsWB            | LoanDetails_home | LoanDetails_rowNum |
      | valid value               | Home Loan     | LoginDetailsCAS.xlsx | LoginData | does not throw any error           | customer_details.xlsx | home                 | 0                           | references.xlsx | home            | 0                   | personal_loan_punch.xlsx | loan_details     | 0                  |
      | with characters           | Home Loan     | LoginDetailsCAS.xlsx | LoginData | throws an error with error message | customer_details.xlsx | home                 | 0                           | references.xlsx | home            | 1                   | personal_loan_punch.xlsx | loan_details     | 0                  |
      | with special character    | Home Loan     | LoginDetailsCAS.xlsx | LoginData | throws an error with error message | customer_details.xlsx | home                 | 0                           | references.xlsx | home            | 2                   | personal_loan_punch.xlsx | loan_details     | 0                  |
      | with characters and digit | Home Loan     | LoginDetailsCAS.xlsx | LoginData | throws an error with error message | customer_details.xlsx | home                 | 0                           | references.xlsx | home            | 0                   | personal_loan_punch.xlsx | loan_details     | 0                  |
      | with spaces               | Home Loan     | LoginDetailsCAS.xlsx | LoginData | throws an error with error message | customer_details.xlsx | home                 | 0                           | references.xlsx | home            | 0                   | personal_loan_punch.xlsx | loan_details     | 0                  |
      | valid value               | Personal Loan | LoginDetailsCAS.xlsx | LoginData | does not throw any error           | customer_details.xlsx | home                 | 0                           | references.xlsx | home            | 0                   | personal_loan_punch.xlsx | loan_details     | 1                  |
      | with characters           | Personal Loan | LoginDetailsCAS.xlsx | LoginData | throws an error with error message | customer_details.xlsx | home                 | 0                           | references.xlsx | home            | 1                   | personal_loan_punch.xlsx | loan_details     | 1                  |
      | with special character    | Personal Loan | LoginDetailsCAS.xlsx | LoginData | throws an error with error message | customer_details.xlsx | home                 | 0                           | references.xlsx | home            | 2                   | personal_loan_punch.xlsx | loan_details     | 1                  |
      | with characters and digit | Personal Loan | LoginDetailsCAS.xlsx | LoginData | throws an error with error message | customer_details.xlsx | home                 | 0                           | references.xlsx | home            | 0                   | personal_loan_punch.xlsx | loan_details     | 1                  |
      | with spaces               | Personal Loan | LoginDetailsCAS.xlsx | LoginData | throws an error with error message | customer_details.xlsx | home                 | 0                           | references.xlsx | home            | 0                   | personal_loan_punch.xlsx | loan_details     | 1                  |
      | valid value               | Auto Loan     | LoginDetailsCAS.xlsx | LoginData | does not throw any error           | customer_details.xlsx | home                 | 0                           | references.xlsx | home            | 0                   | personal_loan_punch.xlsx | loan_details     | 2                  |
      | with characters           | Auto Loan     | LoginDetailsCAS.xlsx | LoginData | throws an error with error message | customer_details.xlsx | home                 | 0                           | references.xlsx | home            | 1                   | personal_loan_punch.xlsx | loan_details     | 2                  |
      | with special character    | Auto Loan     | LoginDetailsCAS.xlsx | LoginData | throws an error with error message | customer_details.xlsx | home                 | 0                           | references.xlsx | home            | 2                   | personal_loan_punch.xlsx | loan_details     | 2                  |
      | with characters and digit | Auto Loan     | LoginDetailsCAS.xlsx | LoginData | throws an error with error message | customer_details.xlsx | home                 | 0                           | references.xlsx | home            | 0                   | personal_loan_punch.xlsx | loan_details     | 2                  |
      | with spaces               | Auto Loan     | LoginDetailsCAS.xlsx | LoginData | throws an error with error message | customer_details.xlsx | home                 | 0                           | references.xlsx | home            | 0                   | personal_loan_punch.xlsx | loan_details     | 2                  |


  @ImplementedBy-piyush.agnihotri
  Scenario Outline: ACAUTOCAS-3596: In Selection of <Field_Name> is enabled in References Address for Individual Applicant
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and 0
    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_home>" and row <PersonalInfo_home_rowNum>
    And user creates new application for individual with "<Loan_Type>"
    And user reads data from the excel file "<PersonalLoanPunchWB>" under sheet "<PersonalLoanPunch_loanDetails>" and row <PersonalLoanPunch_loanDetails_rowNum>
    And user fills the loan details with save
    And user open References tab
    And user reads data from the excel file "<ReferencesWB>" under sheet "<References_home>" and row <References_home_Row>
    When user selects "<Field_Name>" field
    Then "<Field_Name>" should be enabled

    Examples:
      | Field_Name          | Loan_Type     | SourceDataFile       | SheetName | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | ReferencesWB    | References_home | References_home_Row | PersonalLoanPunchWB      | PersonalLoanPunch_loanDetails | PersonalLoanPunch_loanDetails_rowNum |
      | Is address verified | Home Loan     | LoginDetailsCAS.xlsx | LoginData | personal_information.xlsx | home              | 0                        | references.xlsx | home            | 0                   | personal_loan_punch.xlsx | loan_details                  | 0                                    |
      | Is address verified | Personal Loan | LoginDetailsCAS.xlsx | LoginData | personal_information.xlsx | home              | 0                        | references.xlsx | home            | 0                   | personal_loan_punch.xlsx | loan_details                  | 1                                    |
      | Is address verified | Auto Loan     | LoginDetailsCAS.xlsx | LoginData | personal_information.xlsx | home              | 0                        | references.xlsx | home            | 0                   | personal_loan_punch.xlsx | loan_details                  | 2                                    |


  @ImplementedBy-piyush.agnihotri
  Scenario Outline: ACAUTOCAS-5677:In Selection of <Field_Name> is enabled in References Address for Non-Individual Applicant
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and 0
    And user reads data from the excel file "<CustomerDetailsWB>" under sheet "<CustomerDetails_home>" and row <CustomerDetails_home_rowNum>
    And user creates new application for non individual with "<Loan_Type>"
    And user reads data from the excel file "<LoanDetailsWB>" under sheet "<LoanDetails_home>" and row <LoanDetails_rowNum>
    And user fills loan details of non individual customer
    And user open References tab
    And user reads data from the excel file "<ReferencesWB>" under sheet "<References_home>" and row <References_home_Row>
    When user selects "<Field_Name>" field
    Then "<Field_Name>" should be enabled

    Examples:
      | Field_Name          | Loan_Type     | SourceDataFile       | SheetName | CustomerDetailsWB     | CustomerDetails_home | CustomerDetails_home_rowNum | ReferencesWB    | References_home | References_home_Row | LoanDetailsWB            | LoanDetails_home | LoanDetails_rowNum |
      | Is address verified | Home Loan     | LoginDetailsCAS.xlsx | LoginData | customer_details.xlsx | home                 | 0                           | references.xlsx | home            | 0                   | personal_loan_punch.xlsx | loan_details     | 0                  |
      | Is address verified | Personal Loan | LoginDetailsCAS.xlsx | LoginData | customer_details.xlsx | home                 | 0                           | references.xlsx | home            | 0                   | personal_loan_punch.xlsx | loan_details     | 1                  |
      | Is address verified | Auto Loan     | LoginDetailsCAS.xlsx | LoginData | customer_details.xlsx | home                 | 0                           | references.xlsx | home            | 0                   | personal_loan_punch.xlsx | loan_details     | 2                  |


  @ImplementedBy-aniket.tripathi
  Scenario Outline: ACAUTOCAS-3593: In Selection of <Field_Name> with "<From>" and "<To>" in References Address for individual applicant
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and 0
    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_home>" and row <PersonalInfo_home_rowNum>
    And user creates new application for individual with "<Loan_Type>"
    And user reads data from the excel file "<PersonalLoanPunchWB>" under sheet "<PersonalLoanPunch_loanDetails>" and row <PersonalLoanPunch_loanDetails_rowNum>
    And user fills the loan details with save
    And user open References tab
    And user reads data from the excel file "<ReferencesWB>" under sheet "<References_home>" and row <References_home_Row>
    When user selects "<Field_Name>" details with "<From>" and "<To>" in References address details
    Then "<Field_Name>" field "<Throws_notThrows>" in References address details

    Examples:
      | Field_Name               | From                 | To                     | Loan_Type     | SourceDataFile       | SheetName | Throws_notThrows                   | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | PersonalLoanPunchWB      | PersonalLoanPunch_loanDetails | PersonalLoanPunch_loanDetails_rowNum | ReferencesWB    | References_home | References_home_Row |
      | Duration at this Address | less than To date    | greater than From Date | Home Loan     | LoginDetailsCAS.xlsx | LoginData | does not throw any error           | personal_information.xlsx | home              | 0                        | personal_loan_punch.xlsx | loan_details                  | 0                                    | references.xlsx | home            | 8                   |
      | Duration at this Address | greater than To Date | less than From Date    | Home Loan     | LoginDetailsCAS.xlsx | LoginData | throws an error with error message | personal_information.xlsx | home              | 0                        | personal_loan_punch.xlsx | loan_details                  | 0                                    | references.xlsx | home            | 9                   |
      | Duration at this Address | valid To date        | valid From date        | Home Loan     | LoginDetailsCAS.xlsx | LoginData | does not throw any error           | personal_information.xlsx | home              | 0                        | personal_loan_punch.xlsx | loan_details                  | 0                                    | references.xlsx | home            | 10                  |
      | Duration at this City    | less than To date    | greater than From Date | Home Loan     | LoginDetailsCAS.xlsx | LoginData | does not throw any error           | personal_information.xlsx | home              | 0                        | personal_loan_punch.xlsx | loan_details                  | 0                                    | references.xlsx | home            | 8                   |
      | Duration at this City    | greater than To Date | less than From Date    | Home Loan     | LoginDetailsCAS.xlsx | LoginData | throws an error with error message | personal_information.xlsx | home              | 0                        | personal_loan_punch.xlsx | loan_details                  | 0                                    | references.xlsx | home            | 9                   |
      | Duration at this City    | valid To date        | valid From date        | Home Loan     | LoginDetailsCAS.xlsx | LoginData | does not throw any error           | personal_information.xlsx | home              | 0                        | personal_loan_punch.xlsx | loan_details                  | 0                                    | references.xlsx | home            | 10                  |
      | Duration at this Address | less than To date    | greater than From Date | Personal Loan | LoginDetailsCAS.xlsx | LoginData | does not throw any error           | personal_information.xlsx | home              | 0                        | personal_loan_punch.xlsx | loan_details                  | 1                                    | references.xlsx | home            | 8                   |
      | Duration at this Address | greater than To Date | less than From Date    | Personal Loan | LoginDetailsCAS.xlsx | LoginData | throws an error with error message | personal_information.xlsx | home              | 0                        | personal_loan_punch.xlsx | loan_details                  | 1                                    | references.xlsx | home            | 9                   |
      | Duration at this Address | valid To date        | valid From date        | Personal Loan | LoginDetailsCAS.xlsx | LoginData | does not throw any error           | personal_information.xlsx | home              | 0                        | personal_loan_punch.xlsx | loan_details                  | 1                                    | references.xlsx | home            | 10                  |
      | Duration at this City    | less than To date    | greater than From Date | Personal Loan | LoginDetailsCAS.xlsx | LoginData | does not throw any error           | personal_information.xlsx | home              | 0                        | personal_loan_punch.xlsx | loan_details                  | 1                                    | references.xlsx | home            | 8                   |
      | Duration at this City    | greater than To Date | less than From Date    | Personal Loan | LoginDetailsCAS.xlsx | LoginData | throws an error with error message | personal_information.xlsx | home              | 0                        | personal_loan_punch.xlsx | loan_details                  | 1                                    | references.xlsx | home            | 9                   |
      | Duration at this City    | valid To date        | valid From date        | Personal Loan | LoginDetailsCAS.xlsx | LoginData | does not throw any error           | personal_information.xlsx | home              | 0                        | personal_loan_punch.xlsx | loan_details                  | 1                                    | references.xlsx | home            | 10                  |
      | Duration at this Address | less than To date    | greater than From Date | Auto Loan     | LoginDetailsCAS.xlsx | LoginData | does not throw any error           | personal_information.xlsx | home              | 0                        | personal_loan_punch.xlsx | loan_details                  | 2                                    | references.xlsx | home            | 8                   |
      | Duration at this Address | greater than To Date | less than From Date    | Auto Loan     | LoginDetailsCAS.xlsx | LoginData | throws an error with error message | personal_information.xlsx | home              | 0                        | personal_loan_punch.xlsx | loan_details                  | 2                                    | references.xlsx | home            | 9                   |
      | Duration at this Address | valid To date        | valid From date        | Auto Loan     | LoginDetailsCAS.xlsx | LoginData | does not throw any error           | personal_information.xlsx | home              | 0                        | personal_loan_punch.xlsx | loan_details                  | 2                                    | references.xlsx | home            | 10                  |
      | Duration at this City    | less than To date    | greater than From Date | Auto Loan     | LoginDetailsCAS.xlsx | LoginData | does not throw any error           | personal_information.xlsx | home              | 0                        | personal_loan_punch.xlsx | loan_details                  | 2                                    | references.xlsx | home            | 8                   |
      | Duration at this City    | greater than To Date | less than From Date    | Auto Loan     | LoginDetailsCAS.xlsx | LoginData | throws an error with error message | personal_information.xlsx | home              | 0                        | personal_loan_punch.xlsx | loan_details                  | 2                                    | references.xlsx | home            | 9                   |
      | Duration at this City    | valid To date        | valid From date        | Auto Loan     | LoginDetailsCAS.xlsx | LoginData | does not throw any error           | personal_information.xlsx | home              | 0                        | personal_loan_punch.xlsx | loan_details                  | 2                                    | references.xlsx | home            | 10                  |

  @ImplementedBy-aniket.tripathi
  Scenario Outline: ACAUTOCAS-5675: In Selection of <Field_Name> with "<From>" and "<To>" in References Address for non individual applicant
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and 0
    And user reads data from the excel file "<CustomerDetailsWB>" under sheet "<CustomerDetails_home>" and row <CustomerDetails_home_rowNum>
    And user creates new application for non individual with "<Loan_Type>"
    And user reads data from the excel file "<LoanDetailsWB>" under sheet "<LoanDetails_home>" and row <LoanDetails_rowNum>
    And user fills loan details of non individual customer
    And user open References tab
    And user reads data from the excel file "<ReferencesWB>" under sheet "<References_home>" and row <References_home_Row>
    When user selects "<Field_Name>" details with "<From>" and "<To>" in References address details
    Then "<Field_Name>" field "<Throws_notThrows>" in References address details

    Examples:
      | Field_Name               | From                 | To                     | Loan_Type     | SourceDataFile       | SheetName | Throws_notThrows                   | CustomerDetailsWB     | CustomerDetails_home | CustomerDetails_home_rowNum | LoanDetailsWB            | LoanDetails_home | LoanDetails_rowNum | ReferencesWB    | References_home | References_home_Row |
      | Duration at this Address | less than To date    | greater than From Date | Personal Loan | LoginDetailsCAS.xlsx | LoginData | does not throw any error           | customer_details.xlsx | home                 | 0                           | personal_loan_punch.xlsx | loan_details     | 1                  | references.xlsx | home            | 8                   |
      | Duration at this Address | greater than To Date | less than From Date    | Personal Loan | LoginDetailsCAS.xlsx | LoginData | throws an error with error message | customer_details.xlsx | home                 | 0                           | personal_loan_punch.xlsx | loan_details     | 1                  | references.xlsx | home            | 9                   |
      | Duration at this Address | valid To date        | valid From date        | Personal Loan | LoginDetailsCAS.xlsx | LoginData | does not throw any error           | customer_details.xlsx | home                 | 0                           | personal_loan_punch.xlsx | loan_details     | 1                  | references.xlsx | home            | 10                  |
      | Duration at this City    | less than To date    | greater than From Date | Personal Loan | LoginDetailsCAS.xlsx | LoginData | does not throw any error           | customer_details.xlsx | home                 | 0                           | personal_loan_punch.xlsx | loan_details     | 1                  | references.xlsx | home            | 8                   |
      | Duration at this City    | greater than To Date | less than From Date    | Personal Loan | LoginDetailsCAS.xlsx | LoginData | throws an error with error message | customer_details.xlsx | home                 | 0                           | personal_loan_punch.xlsx | loan_details     | 1                  | references.xlsx | home            | 9                   |
      | Duration at this City    | valid To date        | valid From date        | Personal Loan | LoginDetailsCAS.xlsx | LoginData | does not throw any error           | customer_details.xlsx | home                 | 0                           | personal_loan_punch.xlsx | loan_details     | 1                  | references.xlsx | home            | 10                  |
      | Duration at this Address | less than To date    | greater than From Date | Auto Loan     | LoginDetailsCAS.xlsx | LoginData | does not throw any error           | customer_details.xlsx | home                 | 0                           | personal_loan_punch.xlsx | loan_details     | 2                  | references.xlsx | home            | 8                   |
      | Duration at this Address | greater than To Date | less than From Date    | Auto Loan     | LoginDetailsCAS.xlsx | LoginData | throws an error with error message | customer_details.xlsx | home                 | 0                           | personal_loan_punch.xlsx | loan_details     | 2                  | references.xlsx | home            | 9                   |
      | Duration at this Address | valid To date        | valid From date        | Auto Loan     | LoginDetailsCAS.xlsx | LoginData | does not throw any error           | customer_details.xlsx | home                 | 0                           | personal_loan_punch.xlsx | loan_details     | 2                  | references.xlsx | home            | 10                  |
      | Duration at this City    | less than To date    | greater than From Date | Auto Loan     | LoginDetailsCAS.xlsx | LoginData | does not throw any error           | customer_details.xlsx | home                 | 0                           | personal_loan_punch.xlsx | loan_details     | 2                  | references.xlsx | home            | 8                   |
      | Duration at this City    | greater than To Date | less than From Date    | Auto Loan     | LoginDetailsCAS.xlsx | LoginData | throws an error with error message | customer_details.xlsx | home                 | 0                           | personal_loan_punch.xlsx | loan_details     | 2                  | references.xlsx | home            | 9                   |
      | Duration at this City    | valid To date        | valid From date        | Auto Loan     | LoginDetailsCAS.xlsx | LoginData | does not throw any error           | customer_details.xlsx | home                 | 0                           | personal_loan_punch.xlsx | loan_details     | 2                  | references.xlsx | home            | 10                  |

    @LoggedBug
    Examples:
      | Field_Name               | From                 | To                     | Loan_Type | SourceDataFile       | SheetName | Throws_notThrows                   | CustomerDetailsWB     | CustomerDetails_home | CustomerDetails_home_rowNum | LoanDetailsWB            | LoanDetails_home | LoanDetails_rowNum | ReferencesWB    | References_home | References_home_Row |
      | Duration at this Address | less than To date    | greater than From Date | Home Loan | LoginDetailsCAS.xlsx | LoginData | does not throw any error           | customer_details.xlsx | home                 | 0                           | personal_loan_punch.xlsx | loan_details     | 0                  | references.xlsx | home            | 8                   |
      | Duration at this Address | valid To date        | valid From date        | Home Loan | LoginDetailsCAS.xlsx | LoginData | does not throw any error           | customer_details.xlsx | home                 | 0                           | personal_loan_punch.xlsx | loan_details     | 0                  | references.xlsx | home            | 9                   |
      | Duration at this Address | greater than To Date | less than From Date    | Home Loan | LoginDetailsCAS.xlsx | LoginData | throws an error with error message | customer_details.xlsx | home                 | 0                           | personal_loan_punch.xlsx | loan_details     | 0                  | references.xlsx | home            | 10                  |
      | Duration at this City    | less than To date    | greater than From Date | Home Loan | LoginDetailsCAS.xlsx | LoginData | does not throw any error           | customer_details.xlsx | home                 | 0                           | personal_loan_punch.xlsx | loan_details     | 0                  | references.xlsx | home            | 8                   |
      | Duration at this City    | greater than To Date | less than From Date    | Home Loan | LoginDetailsCAS.xlsx | LoginData | throws an error with error message | customer_details.xlsx | home                 | 0                           | personal_loan_punch.xlsx | loan_details     | 0                  | references.xlsx | home            | 9                   |
      | Duration at this City    | valid To date        | valid From date        | Home Loan | LoginDetailsCAS.xlsx | LoginData | does not throw any error           | customer_details.xlsx | home                 | 0                           | personal_loan_punch.xlsx | loan_details     | 0                  | references.xlsx | home            | 10                  |


  @ImplementedBy-aniket.tripathi
  Scenario Outline: ACAUTOCAS-5676: In Selection of <Field_Name> <Dependent_Field> disabled in References address for individual applicant
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and 0
    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_home>" and row <PersonalInfo_home_rowNum>
    And user creates new application for individual with "<Loan_Type>"
    And user reads data from the excel file "<PersonalLoanPunchWB>" under sheet "<PersonalLoanPunch_loanDetails>" and row <PersonalLoanPunch_loanDetails_rowNum>
    And user fills the loan details with save
    And user open References tab
    And user reads data from the excel file "<ReferencesWB>" under sheet "<References_home>" and row <References_home_Row>
    When user selects "<Field_Name>" field in References address details
    Then "<Dependent_Field>" should be disabled in References address details

    Examples:
      | Field_Name      | Dependent_Field             | Loan_Type     | SourceDataFile       | SheetName | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | PersonalLoanPunchWB      | PersonalLoanPunch_loanDetails | PersonalLoanPunch_loanDetails_rowNum | ReferencesWB    | References_home | References_home_Row |
      | Current Address | Duration at this Address To | Home Loan     | LoginDetailsCAS.xlsx | LoginData | personal_information.xlsx | home              | 0                        | personal_loan_punch.xlsx | loan_details                  | 0                                    | references.xlsx | home            | 8                   |
      | Current Address | Duration at this City To    | Home Loan     | LoginDetailsCAS.xlsx | LoginData | personal_information.xlsx | home              | 0                        | personal_loan_punch.xlsx | loan_details                  | 0                                    | references.xlsx | home            | 8                   |
      | Current Address | Duration at this Address To | Personal Loan | LoginDetailsCAS.xlsx | LoginData | personal_information.xlsx | home              | 0                        | personal_loan_punch.xlsx | loan_details                  | 1                                    | references.xlsx | home            | 8                   |
      | Current Address | Duration at this City To    | Personal Loan | LoginDetailsCAS.xlsx | LoginData | personal_information.xlsx | home              | 0                        | personal_loan_punch.xlsx | loan_details                  | 1                                    | references.xlsx | home            | 8                   |
      | Current Address | Duration at this Address To | Auto Loan     | LoginDetailsCAS.xlsx | LoginData | personal_information.xlsx | home              | 0                        | personal_loan_punch.xlsx | loan_details                  | 2                                    | references.xlsx | home            | 8                   |
      | Current Address | Duration at this City To    | Auto Loan     | LoginDetailsCAS.xlsx | LoginData | personal_information.xlsx | home              | 0                        | personal_loan_punch.xlsx | loan_details                  | 2                                    | references.xlsx | home            | 8                   |


  @ImplementedBy-aniket.tripathi
  Scenario Outline: ACAUTOCAS-5676:  In Selection of <Field_Name> <Dependent_Field> disabled in References address for non individual applicant
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and 0
    And user reads data from the excel file "<CustomerDetailsWB>" under sheet "<CustomerDetails_home>" and row <CustomerDetails_home_rowNum>
    And user creates new application for non individual with "<Loan_Type>"
    And user reads data from the excel file "<LoanDetailsWB>" under sheet "<LoanDetails_home>" and row <LoanDetails_rowNum>
    And user fills loan details of non individual customer
    And user open References tab
    And user reads data from the excel file "<ReferencesWB>" under sheet "<References_home>" and row <References_home_Row>
    When user selects "<Field_Name>" field in References address details
    Then "<Dependent_Field>" should be disabled in References address details

    Examples:
      | Field_Name      | Dependent_Field             | Loan_Type     | SourceDataFile       | SheetName | CustomerDetailsWB     | CustomerDetails_home | CustomerDetails_home_rowNum | LoanDetailsWB            | LoanDetails_home | LoanDetails_rowNum | ReferencesWB    | References_home | References_home_Row |
      | Current Address | Duration at this Address To | Home Loan     | LoginDetailsCAS.xlsx | LoginData | customer_details.xlsx | home                 | 0                           | personal_loan_punch.xlsx | loan_details     | 0                  | references.xlsx | home            | 8                   |
      | Current Address | Duration at this City To    | Home Loan     | LoginDetailsCAS.xlsx | LoginData | customer_details.xlsx | home                 | 0                           | personal_loan_punch.xlsx | loan_details     | 0                  | references.xlsx | home            | 8                   |
      | Current Address | Duration at this Address To | Personal Loan | LoginDetailsCAS.xlsx | LoginData | customer_details.xlsx | home                 | 0                           | personal_loan_punch.xlsx | loan_details     | 1                  | references.xlsx | home            | 8                   |
      | Current Address | Duration at this City To    | Personal Loan | LoginDetailsCAS.xlsx | LoginData | customer_details.xlsx | home                 | 0                           | personal_loan_punch.xlsx | loan_details     | 1                  | references.xlsx | home            | 8                   |
      | Current Address | Duration at this Address To | Auto Loan     | LoginDetailsCAS.xlsx | LoginData | customer_details.xlsx | home                 | 0                           | personal_loan_punch.xlsx | loan_details     | 2                  | references.xlsx | home            | 8                   |
      | Current Address | Duration at this City To    | Auto Loan     | LoginDetailsCAS.xlsx | LoginData | customer_details.xlsx | home                 | 0                           | personal_loan_punch.xlsx | loan_details     | 2                  | references.xlsx | home            | 8                   |


  @ImplementedBy-aniket.tripathi
  Scenario Outline: ACAUTOCAS-3595: In Selection of <Field_Name> field <Dependent_Field> is autofilled for individual applicant
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and 0
    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_home>" and row <PersonalInfo_home_rowNum>
    And user creates new application for individual with "<Loan_Type>"
    And user reads data from the excel file "<PersonalLoanPunchWB>" under sheet "<PersonalLoanPunch_loanDetails>" and row <PersonalLoanPunch_loanDetails_rowNum>
    And user fills the loan details with save
    And user open References tab
    And user reads data from the excel file "<ReferencesWB>" under sheet "<References_home>" and row <References_home_Row>
    When user enters "<Field_Name>" in References Address Details
    Then "<Dependent_Field>" should auto selected in References Address Details

    Examples:
      | Field_Name | Dependent_Field | Loan_Type     | SourceDataFile       | SheetName | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | PersonalLoanPunchWB      | PersonalLoanPunch_loanDetails | PersonalLoanPunch_loanDetails_rowNum | ReferencesWB    | References_home | References_home_Row |
      | PinCode    | State           | Home Loan     | LoginDetailsCAS.xlsx | LoginData | personal_information.xlsx | home              | 0                        | personal_loan_punch.xlsx | loan_details                  | 0                                    | references.xlsx | home            | 18                  |
      | PinCode    | Region          | Home Loan     | LoginDetailsCAS.xlsx | LoginData | personal_information.xlsx | home              | 0                        | personal_loan_punch.xlsx | loan_details                  | 0                                    | references.xlsx | home            | 18                  |
      | PinCode    | City            | Home Loan     | LoginDetailsCAS.xlsx | LoginData | personal_information.xlsx | home              | 0                        | personal_loan_punch.xlsx | loan_details                  | 0                                    | references.xlsx | home            | 18                  |
      | PinCode    | District        | Home Loan     | LoginDetailsCAS.xlsx | LoginData | personal_information.xlsx | home              | 0                        | personal_loan_punch.xlsx | loan_details                  | 0                                    | references.xlsx | home            | 18                  |
      | PinCode    | Taluka          | Home Loan     | LoginDetailsCAS.xlsx | LoginData | personal_information.xlsx | home              | 0                        | personal_loan_punch.xlsx | loan_details                  | 0                                    | references.xlsx | home            | 18                  |
      | PinCode    | Village         | Home Loan     | LoginDetailsCAS.xlsx | LoginData | personal_information.xlsx | home              | 0                        | personal_loan_punch.xlsx | loan_details                  | 0                                    | references.xlsx | home            | 18                  |
      | State      | Region          | Home Loan     | LoginDetailsCAS.xlsx | LoginData | personal_information.xlsx | home              | 0                        | personal_loan_punch.xlsx | loan_details                  | 0                                    | references.xlsx | home            | 18                  |
      | PinCode    | State           | Personal Loan | LoginDetailsCAS.xlsx | LoginData | personal_information.xlsx | home              | 0                        | personal_loan_punch.xlsx | loan_details                  | 1                                    | references.xlsx | home            | 18                  |
      | PinCode    | Region          | Personal Loan | LoginDetailsCAS.xlsx | LoginData | personal_information.xlsx | home              | 0                        | personal_loan_punch.xlsx | loan_details                  | 1                                    | references.xlsx | home            | 18                  |
      | PinCode    | City            | Personal Loan | LoginDetailsCAS.xlsx | LoginData | personal_information.xlsx | home              | 0                        | personal_loan_punch.xlsx | loan_details                  | 1                                    | references.xlsx | home            | 18                  |
      | PinCode    | District        | Personal Loan | LoginDetailsCAS.xlsx | LoginData | personal_information.xlsx | home              | 0                        | personal_loan_punch.xlsx | loan_details                  | 1                                    | references.xlsx | home            | 18                  |
      | PinCode    | Taluka          | Personal Loan | LoginDetailsCAS.xlsx | LoginData | personal_information.xlsx | home              | 0                        | personal_loan_punch.xlsx | loan_details                  | 1                                    | references.xlsx | home            | 18                  |
      | PinCode    | Village         | Personal Loan | LoginDetailsCAS.xlsx | LoginData | personal_information.xlsx | home              | 0                        | personal_loan_punch.xlsx | loan_details                  | 1                                    | references.xlsx | home            | 18                  |
      | State      | Region          | Personal Loan | LoginDetailsCAS.xlsx | LoginData | personal_information.xlsx | home              | 0                        | personal_loan_punch.xlsx | loan_details                  | 1                                    | references.xlsx | home            | 18                  |
      | PinCode    | State           | Auto Loan     | LoginDetailsCAS.xlsx | LoginData | personal_information.xlsx | home              | 0                        | personal_loan_punch.xlsx | loan_details                  | 2                                    | references.xlsx | home            | 18                  |
      | PinCode    | Region          | Auto Loan     | LoginDetailsCAS.xlsx | LoginData | personal_information.xlsx | home              | 0                        | personal_loan_punch.xlsx | loan_details                  | 2                                    | references.xlsx | home            | 18                  |
      | PinCode    | City            | Auto Loan     | LoginDetailsCAS.xlsx | LoginData | personal_information.xlsx | home              | 0                        | personal_loan_punch.xlsx | loan_details                  | 2                                    | references.xlsx | home            | 18                  |
      | PinCode    | District        | Auto Loan     | LoginDetailsCAS.xlsx | LoginData | personal_information.xlsx | home              | 0                        | personal_loan_punch.xlsx | loan_details                  | 2                                    | references.xlsx | home            | 18                  |
      | PinCode    | Taluka          | Auto Loan     | LoginDetailsCAS.xlsx | LoginData | personal_information.xlsx | home              | 0                        | personal_loan_punch.xlsx | loan_details                  | 2                                    | references.xlsx | home            | 18                  |
      | PinCode    | Village         | Auto Loan     | LoginDetailsCAS.xlsx | LoginData | personal_information.xlsx | home              | 0                        | personal_loan_punch.xlsx | loan_details                  | 2                                    | references.xlsx | home            | 18                  |
      | State      | Region          | Auto Loan     | LoginDetailsCAS.xlsx | LoginData | personal_information.xlsx | home              | 0                        | personal_loan_punch.xlsx | loan_details                  | 2                                    | references.xlsx | home            | 18                  |


  @ImplementedBy-aniket.tripathi
  Scenario Outline: ACAUTOCAS-7426:  In Selection of <Field_Name> field <Dependent_Field> is autofilled for non individual applicant
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and 0
    And user reads data from the excel file "<CustomerDetailsWB>" under sheet "<CustomerDetails_home>" and row <CustomerDetails_home_rowNum>
    And user creates new application for non individual with "<Loan_Type>"
    And user reads data from the excel file "<LoanDetailsWB>" under sheet "<LoanDetails_home>" and row <LoanDetails_rowNum>
    And user fills loan details of non individual customer
    And user open References tab
    And user reads data from the excel file "<ReferencesWB>" under sheet "<References_home>" and row <References_home_Row>
    When user enters "<Field_Name>" in References Address Details
    Then "<Dependent_Field>" should auto selected in References Address Details

    Examples:
      | Field_Name | Dependent_Field | Loan_Type     | SourceDataFile       | SheetName | CustomerDetailsWB     | CustomerDetails_home | CustomerDetails_home_rowNum | LoanDetailsWB            | LoanDetails_home | LoanDetails_rowNum | ReferencesWB    | References_home | References_home_Row |
      | PinCode    | Region          | Home Loan     | LoginDetailsCAS.xlsx | LoginData | customer_details.xlsx | home                 | 0                           | personal_loan_punch.xlsx | loan_details     | 0                  | references.xlsx | home            | 18                  |
      | PinCode    | State           | Home Loan     | LoginDetailsCAS.xlsx | LoginData | customer_details.xlsx | home                 | 0                           | personal_loan_punch.xlsx | loan_details     | 0                  | references.xlsx | home            | 18                  |
      | PinCode    | District        | Home Loan     | LoginDetailsCAS.xlsx | LoginData | customer_details.xlsx | home                 | 0                           | personal_loan_punch.xlsx | loan_details     | 0                  | references.xlsx | home            | 18                  |
      | PinCode    | City            | Home Loan     | LoginDetailsCAS.xlsx | LoginData | customer_details.xlsx | home                 | 0                           | personal_loan_punch.xlsx | loan_details     | 0                  | references.xlsx | home            | 18                  |
      | PinCode    | Taluka          | Home Loan     | LoginDetailsCAS.xlsx | LoginData | customer_details.xlsx | home                 | 0                           | personal_loan_punch.xlsx | loan_details     | 0                  | references.xlsx | home            | 18                  |
      | PinCode    | Village         | Home Loan     | LoginDetailsCAS.xlsx | LoginData | customer_details.xlsx | home                 | 0                           | personal_loan_punch.xlsx | loan_details     | 0                  | references.xlsx | home            | 18                  |
      | State      | Region          | Home Loan     | LoginDetailsCAS.xlsx | LoginData | customer_details.xlsx | home                 | 0                           | personal_loan_punch.xlsx | loan_details     | 0                  | references.xlsx | home            | 18                  |
      | PinCode    | State           | Personal Loan | LoginDetailsCAS.xlsx | LoginData | customer_details.xlsx | home                 | 0                           | personal_loan_punch.xlsx | loan_details     | 1                  | references.xlsx | home            | 18                  |
      | PinCode    | Region          | Personal Loan | LoginDetailsCAS.xlsx | LoginData | customer_details.xlsx | home                 | 0                           | personal_loan_punch.xlsx | loan_details     | 1                  | references.xlsx | home            | 18                  |
      | PinCode    | City            | Personal Loan | LoginDetailsCAS.xlsx | LoginData | customer_details.xlsx | home                 | 0                           | personal_loan_punch.xlsx | loan_details     | 1                  | references.xlsx | home            | 18                  |
      | PinCode    | District        | Personal Loan | LoginDetailsCAS.xlsx | LoginData | customer_details.xlsx | home                 | 0                           | personal_loan_punch.xlsx | loan_details     | 1                  | references.xlsx | home            | 18                  |
      | PinCode    | Taluka          | Personal Loan | LoginDetailsCAS.xlsx | LoginData | customer_details.xlsx | home                 | 0                           | personal_loan_punch.xlsx | loan_details     | 1                  | references.xlsx | home            | 18                  |
      | PinCode    | Village         | Personal Loan | LoginDetailsCAS.xlsx | LoginData | customer_details.xlsx | home                 | 0                           | personal_loan_punch.xlsx | loan_details     | 1                  | references.xlsx | home            | 18                  |
      | State      | Region          | Personal Loan | LoginDetailsCAS.xlsx | LoginData | customer_details.xlsx | home                 | 0                           | personal_loan_punch.xlsx | loan_details     | 1                  | references.xlsx | home            | 18                  |
      | PinCode    | State           | Auto Loan     | LoginDetailsCAS.xlsx | LoginData | customer_details.xlsx | home                 | 0                           | personal_loan_punch.xlsx | loan_details     | 2                  | references.xlsx | home            | 18                  |
      | PinCode    | Region          | Auto Loan     | LoginDetailsCAS.xlsx | LoginData | customer_details.xlsx | home                 | 0                           | personal_loan_punch.xlsx | loan_details     | 2                  | references.xlsx | home            | 18                  |
      | PinCode    | City            | Auto Loan     | LoginDetailsCAS.xlsx | LoginData | customer_details.xlsx | home                 | 0                           | personal_loan_punch.xlsx | loan_details     | 2                  | references.xlsx | home            | 18                  |
      | PinCode    | District        | Auto Loan     | LoginDetailsCAS.xlsx | LoginData | customer_details.xlsx | home                 | 0                           | personal_loan_punch.xlsx | loan_details     | 2                  | references.xlsx | home            | 18                  |
      | PinCode    | Taluka          | Auto Loan     | LoginDetailsCAS.xlsx | LoginData | customer_details.xlsx | home                 | 0                           | personal_loan_punch.xlsx | loan_details     | 2                  | references.xlsx | home            | 18                  |
      | PinCode    | Village         | Auto Loan     | LoginDetailsCAS.xlsx | LoginData | customer_details.xlsx | home                 | 0                           | personal_loan_punch.xlsx | loan_details     | 2                  | references.xlsx | home            | 18                  |
      | State      | Region          | Auto Loan     | LoginDetailsCAS.xlsx | LoginData | customer_details.xlsx | home                 | 0                           | personal_loan_punch.xlsx | loan_details     | 2                  | references.xlsx | home            | 18                  |


  @ImplementedBy-aniket.tripathi
  Scenario Outline: ACAUTOCAS-5679:  In Selection of country code in <Field_Name> field ISD code changes with <var> in References for individual applicant
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and 0
    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_home>" and row <PersonalInfo_home_rowNum>
    And user creates new application for individual with "<Loan_Type>"
    And user reads data from the excel file "<PersonalLoanPunchWB>" under sheet "<PersonalLoanPunch_loanDetails>" and row <PersonalLoanPunch_loanDetails_rowNum>
    And user fills the loan details with save
    And user open References tab
    And user reads data from the excel file "<ReferencesWB>" under sheet "<References_home>" and row <References_home_Row>
    When user selects country code with "<var>" in "<Field_Name>" field under references tab
    Then ISD code of "<Field_Name>" changes display successfully under references tab

    Examples:

      | var | Field_Name   | Loan_Type     | SourceDataFile       | SheetName | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | PersonalLoanPunchWB      | PersonalLoanPunch_loanDetails | PersonalLoanPunch_loanDetails_rowNum | ReferencesWB    | References_home | References_home_Row |
      | AE  | Phone Number | Home Loan     | LoginDetailsCAS.xlsx | LoginData | personal_information.xlsx | home              | 0                        | personal_loan_punch.xlsx | loan_details                  | 0                                    | references.xlsx | home            | 8                   |
      | AF  | Phone Number | Home Loan     | LoginDetailsCAS.xlsx | LoginData | personal_information.xlsx | home              | 0                        | personal_loan_punch.xlsx | loan_details                  | 0                                    | references.xlsx | home            | 9                   |
      | AL  | Phone Number | Home Loan     | LoginDetailsCAS.xlsx | LoginData | personal_information.xlsx | home              | 0                        | personal_loan_punch.xlsx | loan_details                  | 0                                    | references.xlsx | home            | 10                  |
      | AO  | Phone Number | Home Loan     | LoginDetailsCAS.xlsx | LoginData | personal_information.xlsx | home              | 0                        | personal_loan_punch.xlsx | loan_details                  | 0                                    | references.xlsx | home            | 11                  |
      | AE  | Phone Number | Personal Loan | LoginDetailsCAS.xlsx | LoginData | personal_information.xlsx | home              | 0                        | personal_loan_punch.xlsx | loan_details                  | 1                                    | references.xlsx | home            | 8                   |
      | AF  | Phone Number | Personal Loan | LoginDetailsCAS.xlsx | LoginData | personal_information.xlsx | home              | 0                        | personal_loan_punch.xlsx | loan_details                  | 1                                    | references.xlsx | home            | 9                   |
      | AL  | Phone Number | Personal Loan | LoginDetailsCAS.xlsx | LoginData | personal_information.xlsx | home              | 0                        | personal_loan_punch.xlsx | loan_details                  | 1                                    | references.xlsx | home            | 10                  |
      | AO  | Phone Number | Personal Loan | LoginDetailsCAS.xlsx | LoginData | personal_information.xlsx | home              | 0                        | personal_loan_punch.xlsx | loan_details                  | 1                                    | references.xlsx | home            | 11                  |
      | AE  | Phone Number | Auto Loan     | LoginDetailsCAS.xlsx | LoginData | personal_information.xlsx | home              | 0                        | personal_loan_punch.xlsx | loan_details                  | 2                                    | references.xlsx | home            | 8                   |
      | AF  | Phone Number | Auto Loan     | LoginDetailsCAS.xlsx | LoginData | personal_information.xlsx | home              | 0                        | personal_loan_punch.xlsx | loan_details                  | 2                                    | references.xlsx | home            | 9                   |
      | AL  | Phone Number | Auto Loan     | LoginDetailsCAS.xlsx | LoginData | personal_information.xlsx | home              | 0                        | personal_loan_punch.xlsx | loan_details                  | 2                                    | references.xlsx | home            | 10                  |
      | AO  | Phone Number | Auto Loan     | LoginDetailsCAS.xlsx | LoginData | personal_information.xlsx | home              | 0                        | personal_loan_punch.xlsx | loan_details                  | 2                                    | references.xlsx | home            | 11                  |


  @ImplementedBy-aniket.tripathi
  Scenario Outline: ACAUTOCAS-5678:  In Selection of country code in <Field_Name> field ISD code changes with <var> in References for non individual applicant
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and 0
    And user reads data from the excel file "<CustomerDetailsWB>" under sheet "<CustomerDetails_home>" and row <CustomerDetails_home_rowNum>
    And user creates new application for non individual with "<Loan_Type>"
    And user reads data from the excel file "<LoanDetailsWB>" under sheet "<LoanDetails_home>" and row <LoanDetails_rowNum>
    And user fills loan details of non individual customer
    And user open References tab
    And user reads data from the excel file "<ReferencesWB>" under sheet "<References_home>" and row <References_home_Row>
    When user selects country code with "<var>" in "<Field_Name>" field under references tab
    Then ISD code of "<Field_Name>" changes display successfully under references tab

    Examples:
      | var | Field_Name   | Loan_Type     | SourceDataFile       | SheetName | CustomerDetailsWB     | CustomerDetails_home | CustomerDetails_home_rowNum | LoanDetailsWB            | LoanDetails_home | LoanDetails_rowNum | ReferencesWB    | References_home | References_home_Row |
      | AE  | Phone Number | Home Loan     | LoginDetailsCAS.xlsx | LoginData | customer_details.xlsx | home                 | 0                           | personal_loan_punch.xlsx | loan_details     | 0                  | references.xlsx | home            | 8                   |
      | AF  | Phone Number | Home Loan     | LoginDetailsCAS.xlsx | LoginData | customer_details.xlsx | home                 | 0                           | personal_loan_punch.xlsx | loan_details     | 0                  | references.xlsx | home            | 9                   |
      | AL  | Phone Number | Home Loan     | LoginDetailsCAS.xlsx | LoginData | customer_details.xlsx | home                 | 0                           | personal_loan_punch.xlsx | loan_details     | 0                  | references.xlsx | home            | 10                  |
      | AO  | Phone Number | Home Loan     | LoginDetailsCAS.xlsx | LoginData | customer_details.xlsx | home                 | 0                           | personal_loan_punch.xlsx | loan_details     | 0                  | references.xlsx | home            | 11                  |
      | AE  | Phone Number | Personal Loan | LoginDetailsCAS.xlsx | LoginData | customer_details.xlsx | home                 | 0                           | personal_loan_punch.xlsx | loan_details     | 1                  | references.xlsx | home            | 8                   |
      | AF  | Phone Number | Personal Loan | LoginDetailsCAS.xlsx | LoginData | customer_details.xlsx | home                 | 0                           | personal_loan_punch.xlsx | loan_details     | 1                  | references.xlsx | home            | 9                   |
      | AL  | Phone Number | Personal Loan | LoginDetailsCAS.xlsx | LoginData | customer_details.xlsx | home                 | 0                           | personal_loan_punch.xlsx | loan_details     | 1                  | references.xlsx | home            | 10                  |
      | AO  | Phone Number | Personal Loan | LoginDetailsCAS.xlsx | LoginData | customer_details.xlsx | home                 | 0                           | personal_loan_punch.xlsx | loan_details     | 1                  | references.xlsx | home            | 11                  |
      | AE  | Phone Number | Auto Loan     | LoginDetailsCAS.xlsx | LoginData | customer_details.xlsx | home                 | 0                           | personal_loan_punch.xlsx | loan_details     | 2                  | references.xlsx | home            | 8                   |
      | AF  | Phone Number | Auto Loan     | LoginDetailsCAS.xlsx | LoginData | customer_details.xlsx | home                 | 0                           | personal_loan_punch.xlsx | loan_details     | 2                  | references.xlsx | home            | 9                   |
      | AL  | Phone Number | Auto Loan     | LoginDetailsCAS.xlsx | LoginData | customer_details.xlsx | home                 | 0                           | personal_loan_punch.xlsx | loan_details     | 2                  | references.xlsx | home            | 10                  |
      | AO  | Phone Number | Auto Loan     | LoginDetailsCAS.xlsx | LoginData | customer_details.xlsx | home                 | 0                           | personal_loan_punch.xlsx | loan_details     | 2                  | references.xlsx | home            | 11                  |

  @ImplementedBy-tushar.chauhan
  Scenario Outline: ACAUTOCAS-3597: In Selection of country code in Phone Number field ISD code changes with <var> in Reference Address for individual applicant
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and 0
    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_home>" and row <PersonalInfo_home_rowNum>
    And user creates new application for individual with "<Loan_Type>"
    And user reads data from the excel file "<PersonalLoanPunchWB>" under sheet "<PersonalLoanPunch_loanDetails>" and row <PersonalLoanPunch_loanDetails_rowNum>
    And user fills the loan details with save
    And user open References tab
    And user reads data from the excel file "<ReferencesWB>" under sheet "<References_home>" and row <References_home_Row>
    When user selects country code with "<var>" in "<Field_Name>" field under reference address
    Then ISD code of "<Field_Name>" changes display successfully under reference address

    Examples:
      | var | Field_Name   | Loan_Type     | SourceDataFile       | SheetName | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | PersonalLoanPunchWB      | PersonalLoanPunch_loanDetails | PersonalLoanPunch_loanDetails_rowNum | ReferencesWB    | References_home | References_home_Row |
      | AE  | Phone Number | Home Loan     | LoginDetailsCAS.xlsx | LoginData | personal_information.xlsx | home              | 0                        | personal_loan_punch.xlsx | loan_details                  | 0                                    | references.xlsx | home            | 8                   |
      | AF  | Phone Number | Home Loan     | LoginDetailsCAS.xlsx | LoginData | personal_information.xlsx | home              | 0                        | personal_loan_punch.xlsx | loan_details                  | 0                                    | references.xlsx | home            | 9                   |
      | AL  | Phone Number | Home Loan     | LoginDetailsCAS.xlsx | LoginData | personal_information.xlsx | home              | 0                        | personal_loan_punch.xlsx | loan_details                  | 0                                    | references.xlsx | home            | 10                  |
      | AO  | Phone Number | Home Loan     | LoginDetailsCAS.xlsx | LoginData | personal_information.xlsx | home              | 0                        | personal_loan_punch.xlsx | loan_details                  | 0                                    | references.xlsx | home            | 11                  |
      | AE  | Phone Number | Personal Loan | LoginDetailsCAS.xlsx | LoginData | personal_information.xlsx | home              | 0                        | personal_loan_punch.xlsx | loan_details                  | 1                                    | references.xlsx | home            | 8                   |
      | AF  | Phone Number | Personal Loan | LoginDetailsCAS.xlsx | LoginData | personal_information.xlsx | home              | 0                        | personal_loan_punch.xlsx | loan_details                  | 1                                    | references.xlsx | home            | 9                   |
      | AL  | Phone Number | Personal Loan | LoginDetailsCAS.xlsx | LoginData | personal_information.xlsx | home              | 0                        | personal_loan_punch.xlsx | loan_details                  | 1                                    | references.xlsx | home            | 10                  |
      | AO  | Phone Number | Personal Loan | LoginDetailsCAS.xlsx | LoginData | personal_information.xlsx | home              | 0                        | personal_loan_punch.xlsx | loan_details                  | 1                                    | references.xlsx | home            | 11                  |
      | AE  | Phone Number | Auto Loan     | LoginDetailsCAS.xlsx | LoginData | personal_information.xlsx | home              | 0                        | personal_loan_punch.xlsx | loan_details                  | 2                                    | references.xlsx | home            | 8                   |
      | AF  | Phone Number | Auto Loan     | LoginDetailsCAS.xlsx | LoginData | personal_information.xlsx | home              | 0                        | personal_loan_punch.xlsx | loan_details                  | 2                                    | references.xlsx | home            | 9                   |
      | AL  | Phone Number | Auto Loan     | LoginDetailsCAS.xlsx | LoginData | personal_information.xlsx | home              | 0                        | personal_loan_punch.xlsx | loan_details                  | 2                                    | references.xlsx | home            | 10                  |
      | AO  | Phone Number | Auto Loan     | LoginDetailsCAS.xlsx | LoginData | personal_information.xlsx | home              | 0                        | personal_loan_punch.xlsx | loan_details                  | 2                                    | references.xlsx | home            | 11                  |


  @ImplementedBy-tushar.chauhan
  Scenario Outline:ACAUTOCAS-5678: In Selection of country code in Phone Number field ISD code changes with <var> in References for non individual applicant
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and 0
    And user reads data from the excel file "<CustomerDetailsWB>" under sheet "<CustomerDetails_home>" and row <CustomerDetails_home_rowNum>
    And user creates new application for non individual with "<Loan_Type>"
    And user reads data from the excel file "<LoanDetailsWB>" under sheet "<LoanDetails_home>" and row <LoanDetails_rowNum>
    And user fills loan details of non individual customer
    And user open References tab
    And user reads data from the excel file "<ReferencesWB>" under sheet "<References_home>" and row <References_home_Row>
    When user selects country code with "<var>" in "<Field_Name>" field under reference address
    Then ISD code of "<Field_Name>" changes display successfully under reference address

    Examples:
      | var | Field_Name   | Loan_Type     | SourceDataFile       | SheetName | CustomerDetailsWB     | CustomerDetails_home | CustomerDetails_home_rowNum | LoanDetailsWB            | LoanDetails_home | LoanDetails_rowNum | ReferencesWB    | References_home | References_home_Row |
      | AE  | Phone Number | Home Loan     | LoginDetailsCAS.xlsx | LoginData | customer_details.xlsx | home                 | 0                           | personal_loan_punch.xlsx | loan_details     | 0                  | references.xlsx | home            | 8                   |
      | AF  | Phone Number | Home Loan     | LoginDetailsCAS.xlsx | LoginData | customer_details.xlsx | home                 | 0                           | personal_loan_punch.xlsx | loan_details     | 0                  | references.xlsx | home            | 9                   |
      | AL  | Phone Number | Home Loan     | LoginDetailsCAS.xlsx | LoginData | customer_details.xlsx | home                 | 0                           | personal_loan_punch.xlsx | loan_details     | 0                  | references.xlsx | home            | 10                  |
      | AO  | Phone Number | Home Loan     | LoginDetailsCAS.xlsx | LoginData | customer_details.xlsx | home                 | 0                           | personal_loan_punch.xlsx | loan_details     | 0                  | references.xlsx | home            | 11                  |
      | AE  | Phone Number | Personal Loan | LoginDetailsCAS.xlsx | LoginData | customer_details.xlsx | home                 | 0                           | personal_loan_punch.xlsx | loan_details     | 1                  | references.xlsx | home            | 8                   |
      | AF  | Phone Number | Personal Loan | LoginDetailsCAS.xlsx | LoginData | customer_details.xlsx | home                 | 0                           | personal_loan_punch.xlsx | loan_details     | 1                  | references.xlsx | home            | 9                   |
      | AL  | Phone Number | Personal Loan | LoginDetailsCAS.xlsx | LoginData | customer_details.xlsx | home                 | 0                           | personal_loan_punch.xlsx | loan_details     | 1                  | references.xlsx | home            | 10                  |
      | AO  | Phone Number | Personal Loan | LoginDetailsCAS.xlsx | LoginData | customer_details.xlsx | home                 | 0                           | personal_loan_punch.xlsx | loan_details     | 1                  | references.xlsx | home            | 11                  |
      | AE  | Phone Number | Auto Loan     | LoginDetailsCAS.xlsx | LoginData | customer_details.xlsx | home                 | 0                           | personal_loan_punch.xlsx | loan_details     | 2                  | references.xlsx | home            | 8                   |
      | AF  | Phone Number | Auto Loan     | LoginDetailsCAS.xlsx | LoginData | customer_details.xlsx | home                 | 0                           | personal_loan_punch.xlsx | loan_details     | 2                  | references.xlsx | home            | 9                   |
      | AL  | Phone Number | Auto Loan     | LoginDetailsCAS.xlsx | LoginData | customer_details.xlsx | home                 | 0                           | personal_loan_punch.xlsx | loan_details     | 2                  | references.xlsx | home            | 10                  |
      | AO  | Phone Number | Auto Loan     | LoginDetailsCAS.xlsx | LoginData | customer_details.xlsx | home                 | 0                           | personal_loan_punch.xlsx | loan_details     | 2                  | references.xlsx | home            | 11                  |

  @ImplementedBy-atul.mishra
  Scenario Outline: ACAUTOCAS-3597: In Selection of country code in Mobile Phone field ISD code changes with <var> in References Address for individual applicant
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and 0
    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_home>" and row <PersonalInfo_home_rowNum>
    And user creates new application for individual with "<Loan_Type>"
    And user reads data from the excel file "<PersonalLoanPunchWB>" under sheet "<PersonalLoanPunch_loanDetails>" and row <PersonalLoanPunch_loanDetails_rowNum>
    And user fills the loan details with save
    And user open References tab
    And user reads data from the excel file "<ReferencesWB>" under sheet "<References_home>" and row <References_home_Row>
    When user selects country code with "<var>" in "<Field_Name>" field under reference address
    Then ISD code of "<Field_Name>" changes display successfully under reference address

    Examples:

      | var | Field_Name   | Loan_Type     | SourceDataFile       | SheetName | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | PersonalLoanPunchWB      | PersonalLoanPunch_loanDetails | PersonalLoanPunch_loanDetails_rowNum | ReferencesWB    | References_home | References_home_Row |
      | AE  | Mobile Phone | Home Loan     | LoginDetailsCAS.xlsx | LoginData | personal_information.xlsx | home              | 0                        | personal_loan_punch.xlsx | loan_details                  | 0                                    | references.xlsx | home            | 8                   |
      | AF  | Mobile Phone | Home Loan     | LoginDetailsCAS.xlsx | LoginData | personal_information.xlsx | home              | 0                        | personal_loan_punch.xlsx | loan_details                  | 0                                    | references.xlsx | home            | 9                   |
      | AL  | Mobile Phone | Home Loan     | LoginDetailsCAS.xlsx | LoginData | personal_information.xlsx | home              | 0                        | personal_loan_punch.xlsx | loan_details                  | 0                                    | references.xlsx | home            | 10                  |
      | AO  | Mobile Phone | Home Loan     | LoginDetailsCAS.xlsx | LoginData | personal_information.xlsx | home              | 0                        | personal_loan_punch.xlsx | loan_details                  | 0                                    | references.xlsx | home            | 11                  |
      | AE  | Mobile Phone | Personal Loan | LoginDetailsCAS.xlsx | LoginData | personal_information.xlsx | home              | 0                        | personal_loan_punch.xlsx | loan_details                  | 1                                    | references.xlsx | home            | 8                   |
      | AF  | Mobile Phone | Personal Loan | LoginDetailsCAS.xlsx | LoginData | personal_information.xlsx | home              | 0                        | personal_loan_punch.xlsx | loan_details                  | 1                                    | references.xlsx | home            | 9                   |
      | AL  | Mobile Phone | Personal Loan | LoginDetailsCAS.xlsx | LoginData | personal_information.xlsx | home              | 0                        | personal_loan_punch.xlsx | loan_details                  | 1                                    | references.xlsx | home            | 10                  |
      | AO  | Mobile Phone | Personal Loan | LoginDetailsCAS.xlsx | LoginData | personal_information.xlsx | home              | 0                        | personal_loan_punch.xlsx | loan_details                  | 1                                    | references.xlsx | home            | 11                  |
      | AE  | Mobile Phone | Auto Loan     | LoginDetailsCAS.xlsx | LoginData | personal_information.xlsx | home              | 0                        | personal_loan_punch.xlsx | loan_details                  | 2                                    | references.xlsx | home            | 8                   |
      | AF  | Mobile Phone | Auto Loan     | LoginDetailsCAS.xlsx | LoginData | personal_information.xlsx | home              | 0                        | personal_loan_punch.xlsx | loan_details                  | 2                                    | references.xlsx | home            | 9                   |
      | AL  | Mobile Phone | Auto Loan     | LoginDetailsCAS.xlsx | LoginData | personal_information.xlsx | home              | 0                        | personal_loan_punch.xlsx | loan_details                  | 2                                    | references.xlsx | home            | 10                  |
      | AO  | Mobile Phone | Auto Loan     | LoginDetailsCAS.xlsx | LoginData | personal_information.xlsx | home              | 0                        | personal_loan_punch.xlsx | loan_details                  | 2                                    | references.xlsx | home            | 11                  |


  @ImplementedBy-atul.mishra
  Scenario Outline: ACAUTOCAS-5678: In Selection of country code in Mobile Phone field ISD code changes with <var> in References for non individual applicant
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and 0
    And user reads data from the excel file "<CustomerDetailsWB>" under sheet "<CustomerDetails_home>" and row <CustomerDetails_home_rowNum>
    And user creates new application for non individual with "<Loan_Type>"
    And user reads data from the excel file "<LoanDetailsWB>" under sheet "<LoanDetails_home>" and row <LoanDetails_rowNum>
    And user fills loan details of non individual customer
    And user open References tab
    And user reads data from the excel file "<ReferencesWB>" under sheet "<References_home>" and row <References_home_Row>
    When user selects country code with "<var>" in "<Field_Name>" field under reference address
    Then ISD code of "<Field_Name>" changes display successfully under reference address

    Examples:
      | var | Field_Name   | Loan_Type     | SourceDataFile       | SheetName | CustomerDetailsWB     | CustomerDetails_home | CustomerDetails_home_rowNum | LoanDetailsWB            | LoanDetails_home | LoanDetails_rowNum | ReferencesWB    | References_home | References_home_Row |
      | AE  | Mobile Phone | Home Loan     | LoginDetailsCAS.xlsx | LoginData | customer_details.xlsx | home                 | 0                           | personal_loan_punch.xlsx | loan_details     | 0                  | references.xlsx | home            | 8                   |
      | AF  | Mobile Phone | Home Loan     | LoginDetailsCAS.xlsx | LoginData | customer_details.xlsx | home                 | 0                           | personal_loan_punch.xlsx | loan_details     | 0                  | references.xlsx | home            | 9                   |
      | AL  | Mobile Phone | Home Loan     | LoginDetailsCAS.xlsx | LoginData | customer_details.xlsx | home                 | 0                           | personal_loan_punch.xlsx | loan_details     | 0                  | references.xlsx | home            | 10                  |
      | AO  | Mobile Phone | Home Loan     | LoginDetailsCAS.xlsx | LoginData | customer_details.xlsx | home                 | 0                           | personal_loan_punch.xlsx | loan_details     | 0                  | references.xlsx | home            | 11                  |
      | AE  | Mobile Phone | Personal Loan | LoginDetailsCAS.xlsx | LoginData | customer_details.xlsx | home                 | 0                           | personal_loan_punch.xlsx | loan_details     | 1                  | references.xlsx | home            | 8                   |
      | AF  | Mobile Phone | Personal Loan | LoginDetailsCAS.xlsx | LoginData | customer_details.xlsx | home                 | 0                           | personal_loan_punch.xlsx | loan_details     | 1                  | references.xlsx | home            | 9                   |
      | AL  | Mobile Phone | Personal Loan | LoginDetailsCAS.xlsx | LoginData | customer_details.xlsx | home                 | 0                           | personal_loan_punch.xlsx | loan_details     | 1                  | references.xlsx | home            | 10                  |
      | AO  | Mobile Phone | Personal Loan | LoginDetailsCAS.xlsx | LoginData | customer_details.xlsx | home                 | 0                           | personal_loan_punch.xlsx | loan_details     | 1                  | references.xlsx | home            | 11                  |
      | AE  | Mobile Phone | Auto Loan     | LoginDetailsCAS.xlsx | LoginData | customer_details.xlsx | home                 | 0                           | personal_loan_punch.xlsx | loan_details     | 2                  | references.xlsx | home            | 8                   |
      | AF  | Mobile Phone | Auto Loan     | LoginDetailsCAS.xlsx | LoginData | customer_details.xlsx | home                 | 0                           | personal_loan_punch.xlsx | loan_details     | 2                  | references.xlsx | home            | 9                   |
      | AL  | Mobile Phone | Auto Loan     | LoginDetailsCAS.xlsx | LoginData | customer_details.xlsx | home                 | 0                           | personal_loan_punch.xlsx | loan_details     | 2                  | references.xlsx | home            | 10                  |
      | AO  | Mobile Phone | Auto Loan     | LoginDetailsCAS.xlsx | LoginData | customer_details.xlsx | home                 | 0                           | personal_loan_punch.xlsx | loan_details     | 2                  | references.xlsx | home            | 11                  |

  @ImplementedBy-piyush.agnihotri
  Scenario Outline: ACAUTOCAS-5679: In Selection of country code in <Field_Name> field ISD code of Mobile Phone changes with <var> in References for individual applicant
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and 0
    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_home>" and row <PersonalInfo_home_rowNum>
    And user creates new application for individual with "<Loan_Type>"
    And user reads data from the excel file "<PersonalLoanPunchWB>" under sheet "<PersonalLoanPunch_loanDetails>" and row <PersonalLoanPunch_loanDetails_rowNum>
    And user fills the loan details with save
    And user open References tab
    And user reads data from the excel file "<ReferencesWB>" under sheet "<References_home>" and row <References_home_Row>
    When user selects country code with "<var>" in "<Field_Name>" field under references tab for Mobile Phone
    Then ISD code of "<Field_Name>" changes display successfully under references tab

    Examples:

      | var | Field_Name   | Loan_Type     | SourceDataFile       | SheetName | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | PersonalLoanPunchWB      | PersonalLoanPunch_loanDetails | PersonalLoanPunch_loanDetails_rowNum | ReferencesWB    | References_home | References_home_Row |
      | AE  | Mobile Phone | Home Loan     | LoginDetailsCAS.xlsx | LoginData | personal_information.xlsx | home              | 0                        | personal_loan_punch.xlsx | loan_details                  | 0                                    | references.xlsx | home            | 8                   |
      | AF  | Mobile Phone | Home Loan     | LoginDetailsCAS.xlsx | LoginData | personal_information.xlsx | home              | 0                        | personal_loan_punch.xlsx | loan_details                  | 0                                    | references.xlsx | home            | 9                   |
      | AL  | Mobile Phone | Home Loan     | LoginDetailsCAS.xlsx | LoginData | personal_information.xlsx | home              | 0                        | personal_loan_punch.xlsx | loan_details                  | 0                                    | references.xlsx | home            | 10                  |
      | AO  | Mobile Phone | Home Loan     | LoginDetailsCAS.xlsx | LoginData | personal_information.xlsx | home              | 0                        | personal_loan_punch.xlsx | loan_details                  | 0                                    | references.xlsx | home            | 11                  |
      | AE  | Mobile Phone | Personal Loan | LoginDetailsCAS.xlsx | LoginData | personal_information.xlsx | home              | 0                        | personal_loan_punch.xlsx | loan_details                  | 1                                    | references.xlsx | home            | 8                   |
      | AF  | Mobile Phone | Personal Loan | LoginDetailsCAS.xlsx | LoginData | personal_information.xlsx | home              | 0                        | personal_loan_punch.xlsx | loan_details                  | 1                                    | references.xlsx | home            | 9                   |
      | AL  | Mobile Phone | Personal Loan | LoginDetailsCAS.xlsx | LoginData | personal_information.xlsx | home              | 0                        | personal_loan_punch.xlsx | loan_details                  | 1                                    | references.xlsx | home            | 10                  |
      | AO  | Mobile Phone | Personal Loan | LoginDetailsCAS.xlsx | LoginData | personal_information.xlsx | home              | 0                        | personal_loan_punch.xlsx | loan_details                  | 1                                    | references.xlsx | home            | 11                  |
      | AE  | Mobile Phone | Auto Loan     | LoginDetailsCAS.xlsx | LoginData | personal_information.xlsx | home              | 0                        | personal_loan_punch.xlsx | loan_details                  | 2                                    | references.xlsx | home            | 8                   |
      | AF  | Mobile Phone | Auto Loan     | LoginDetailsCAS.xlsx | LoginData | personal_information.xlsx | home              | 0                        | personal_loan_punch.xlsx | loan_details                  | 2                                    | references.xlsx | home            | 9                   |
      | AL  | Mobile Phone | Auto Loan     | LoginDetailsCAS.xlsx | LoginData | personal_information.xlsx | home              | 0                        | personal_loan_punch.xlsx | loan_details                  | 2                                    | references.xlsx | home            | 10                  |
      | AO  | Mobile Phone | Auto Loan     | LoginDetailsCAS.xlsx | LoginData | personal_information.xlsx | home              | 0                        | personal_loan_punch.xlsx | loan_details                  | 2                                    | references.xlsx | home            | 11                  |

  @ImplementedBy-piyush.agnihotri
  Scenario Outline: ACAUTOCAS-5680:  In Selection of country code in <Field_Name> field ISD code of Mobile Phone changes with <var> in References for Non-individual applicant
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and 0
    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_home>" and row <PersonalInfo_home_rowNum>
    And user creates new application for individual with "<Loan_Type>"
    And user reads data from the excel file "<PersonalLoanPunchWB>" under sheet "<PersonalLoanPunch_loanDetails>" and row <PersonalLoanPunch_loanDetails_rowNum>
    And user fills the loan details with save
    And user open References tab
    And user reads data from the excel file "<ReferencesWB>" under sheet "<References_home>" and row <References_home_Row>
    When user selects country code with "<var>" in "<Field_Name>" field under references tab for Mobile Phone
    Then ISD code of "<Field_Name>" changes display successfully under references tab

    Examples:

      | var | Field_Name   | Loan_Type     | SourceDataFile       | SheetName | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | PersonalLoanPunchWB      | PersonalLoanPunch_loanDetails | PersonalLoanPunch_loanDetails_rowNum | ReferencesWB    | References_home | References_home_Row |
      | AE  | Mobile Phone | Home Loan     | LoginDetailsCAS.xlsx | LoginData | personal_information.xlsx | home              | 0                        | personal_loan_punch.xlsx | loan_details                  | 0                                    | references.xlsx | home            | 8                   |
      | AF  | Mobile Phone | Home Loan     | LoginDetailsCAS.xlsx | LoginData | personal_information.xlsx | home              | 0                        | personal_loan_punch.xlsx | loan_details                  | 0                                    | references.xlsx | home            | 9                   |
      | AL  | Mobile Phone | Home Loan     | LoginDetailsCAS.xlsx | LoginData | personal_information.xlsx | home              | 0                        | personal_loan_punch.xlsx | loan_details                  | 0                                    | references.xlsx | home            | 10                  |
      | AO  | Mobile Phone | Home Loan     | LoginDetailsCAS.xlsx | LoginData | personal_information.xlsx | home              | 0                        | personal_loan_punch.xlsx | loan_details                  | 0                                    | references.xlsx | home            | 11                  |
      | AE  | Mobile Phone | Personal Loan | LoginDetailsCAS.xlsx | LoginData | personal_information.xlsx | home              | 0                        | personal_loan_punch.xlsx | loan_details                  | 1                                    | references.xlsx | home            | 8                   |
      | AF  | Mobile Phone | Personal Loan | LoginDetailsCAS.xlsx | LoginData | personal_information.xlsx | home              | 0                        | personal_loan_punch.xlsx | loan_details                  | 1                                    | references.xlsx | home            | 9                   |
      | AL  | Mobile Phone | Personal Loan | LoginDetailsCAS.xlsx | LoginData | personal_information.xlsx | home              | 0                        | personal_loan_punch.xlsx | loan_details                  | 1                                    | references.xlsx | home            | 10                  |
      | AO  | Mobile Phone | Personal Loan | LoginDetailsCAS.xlsx | LoginData | personal_information.xlsx | home              | 0                        | personal_loan_punch.xlsx | loan_details                  | 1                                    | references.xlsx | home            | 11                  |
      | AE  | Mobile Phone | Auto Loan     | LoginDetailsCAS.xlsx | LoginData | personal_information.xlsx | home              | 0                        | personal_loan_punch.xlsx | loan_details                  | 2                                    | references.xlsx | home            | 8                   |
      | AF  | Mobile Phone | Auto Loan     | LoginDetailsCAS.xlsx | LoginData | personal_information.xlsx | home              | 0                        | personal_loan_punch.xlsx | loan_details                  | 2                                    | references.xlsx | home            | 9                   |
      | AL  | Mobile Phone | Auto Loan     | LoginDetailsCAS.xlsx | LoginData | personal_information.xlsx | home              | 0                        | personal_loan_punch.xlsx | loan_details                  | 2                                    | references.xlsx | home            | 10                  |
      | AO  | Mobile Phone | Auto Loan     | LoginDetailsCAS.xlsx | LoginData | personal_information.xlsx | home              | 0                        | personal_loan_punch.xlsx | loan_details                  | 2                                    | references.xlsx | home            | 11                  |

  @ImplementedBy-anuj.singh
  Scenario Outline: ACAUTOCAS-3589: Validating <Field_Name> in References Address Details with <validity> for individual applicant
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and 0
    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_home>" and row <PersonalInfo_home_rowNum>
    And user creates new application for individual with "<Loan_Type>"
    And user reads data from the excel file "<PersonalLoanPunchWB>" under sheet "<PersonalLoanPunch_loanDetails>" and row <PersonalLoanPunch_loanDetails_rowNum>
    And user fills the loan details with save
    And user open References tab
    And user reads data from the excel file "<ReferencesWB>" under sheet "<References_home>" and row <References_home_Row>
    When user enters "<Field_Name>" in References Address Details
    Then "<Field_Name>" field with "<validity>" "<Throws_notThrows>" in References Address Details

    Examples:
      | Field_Name   | validity | Loan_Type     | SourceDataFile       | SheetName | Throws_notThrows                   | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | ReferencesWB    | References_home | References_home_Row | PersonalLoanPunchWB      | PersonalLoanPunch_loanDetails | PersonalLoanPunch_loanDetails_rowNum |
      | Mobile Phone | valid    | Home Loan     | LoginDetailsCAS.xlsx | LoginData | does not throw any error           | personal_information.xlsx | home              | 0                        | references.xlsx | home            | 0                   | personal_loan_punch.xlsx | loan_details                  | 0                                    |
      | Mobile Phone | invalid  | Home Loan     | LoginDetailsCAS.xlsx | LoginData | throws an error with error message | personal_information.xlsx | home              | 0                        | references.xlsx | home            | 13                  | personal_loan_punch.xlsx | loan_details                  | 0                                    |
      | Full Address | valid    | Home Loan     | LoginDetailsCAS.xlsx | LoginData | does not throw any error           | personal_information.xlsx | home              | 0                        | references.xlsx | home            | 0                   | personal_loan_punch.xlsx | loan_details                  | 0                                    |
      | Mobile Phone | valid    | Auto Loan     | LoginDetailsCAS.xlsx | LoginData | does not throw any error           | personal_information.xlsx | home              | 0                        | references.xlsx | home            | 0                   | personal_loan_punch.xlsx | loan_details                  | 2                                    |
      | Mobile Phone | invalid  | Auto Loan     | LoginDetailsCAS.xlsx | LoginData | throws an error with error message | personal_information.xlsx | home              | 0                        | references.xlsx | home            | 13                  | personal_loan_punch.xlsx | loan_details                  | 2                                    |
      | Full Address | valid    | Auto Loan     | LoginDetailsCAS.xlsx | LoginData | does not throw any error           | personal_information.xlsx | home              | 0                        | references.xlsx | home            | 0                   | personal_loan_punch.xlsx | loan_details                  | 2                                    |
      | Mobile Phone | valid    | Personal Loan | LoginDetailsCAS.xlsx | LoginData | does not throw any error           | personal_information.xlsx | home              | 0                        | references.xlsx | home            | 0                   | personal_loan_punch.xlsx | loan_details                  | 1                                    |
      | Mobile Phone | invalid  | Personal Loan | LoginDetailsCAS.xlsx | LoginData | throws an error with error message | personal_information.xlsx | home              | 0                        | references.xlsx | home            | 13                  | personal_loan_punch.xlsx | loan_details                  | 1                                    |
      | Full Address | valid    | Personal Loan | LoginDetailsCAS.xlsx | LoginData | does not throw any error           | personal_information.xlsx | home              | 0                        | references.xlsx | home            | 0                   | personal_loan_punch.xlsx | loan_details                  | 1                                    |

  @ImplementedBy-anuj.singh
  Scenario Outline: ACAUTOCAS-5671: Validating <Field_Name> in References Address Details with <validity> for non individual applicant
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and 0
    And user reads data from the excel file "<CustomerDetailsWB>" under sheet "<CustomerDetails_home>" and row <CustomerDetails_home_rowNum>
    And user creates new application for non individual with "<Loan_Type>"
    And user reads data from the excel file "<LoanDetailsWB>" under sheet "<LoanDetails_home>" and row <LoanDetails_rowNum>
    And user fills loan details of non individual customer
    And user open References tab
    And user reads data from the excel file "<ReferencesWB>" under sheet "<References_home>" and row <References_home_Row>
    When user enters "<Field_Name>" in References Address Details
    Then "<Field_Name>" field with "<validity>" "<Throws_notThrows>" in References Address Details

    Examples:
      | Field_Name   | validity | Loan_Type     | SourceDataFile       | SheetName | Throws_notThrows                   | CustomerDetailsWB     | CustomerDetails_home | CustomerDetails_home_rowNum | ReferencesWB    | References_home | References_home_Row | LoanDetailsWB            | LoanDetails_home | LoanDetails_rowNum |
      | Mobile Phone | valid    | Home Loan     | LoginDetailsCAS.xlsx | LoginData | does not throw any error           | customer_details.xlsx | home                 | 0                           | references.xlsx | home            | 0                   | personal_loan_punch.xlsx | loan_details     | 0                  |
      | Mobile Phone | invalid  | Home Loan     | LoginDetailsCAS.xlsx | LoginData | throws an error with error message | customer_details.xlsx | home                 | 0                           | references.xlsx | home            | 13                  | personal_loan_punch.xlsx | loan_details     | 0                  |
      | Full Address | valid    | Home Loan     | LoginDetailsCAS.xlsx | LoginData | does not throw any error           | customer_details.xlsx | home                 | 0                           | references.xlsx | home            | 0                   | personal_loan_punch.xlsx | loan_details     | 0                  |
      | Mobile Phone | valid    | Auto Loan     | LoginDetailsCAS.xlsx | LoginData | does not throw any error           | customer_details.xlsx | home                 | 0                           | references.xlsx | home            | 0                   | personal_loan_punch.xlsx | loan_details     | 2                  |
      | Mobile Phone | invalid  | Auto Loan     | LoginDetailsCAS.xlsx | LoginData | throws an error with error message | customer_details.xlsx | home                 | 0                           | references.xlsx | home            | 13                  | personal_loan_punch.xlsx | loan_details     | 2                  |
      | Full Address | valid    | Auto Loan     | LoginDetailsCAS.xlsx | LoginData | does not throw any error           | customer_details.xlsx | home                 | 0                           | references.xlsx | home            | 0                   | personal_loan_punch.xlsx | loan_details     | 2                  |
      | Mobile Phone | valid    | Personal Loan | LoginDetailsCAS.xlsx | LoginData | does not throw any error           | customer_details.xlsx | home                 | 0                           | references.xlsx | home            | 0                   | personal_loan_punch.xlsx | loan_details     | 0                  |
      | Mobile Phone | invalid  | Personal Loan | LoginDetailsCAS.xlsx | LoginData | throws an error with error message | customer_details.xlsx | home                 | 0                           | references.xlsx | home            | 13                  | personal_loan_punch.xlsx | loan_details     | 1                  |
      | Full Address | valid    | Personal Loan | LoginDetailsCAS.xlsx | LoginData | does not throw any error           | customer_details.xlsx | home                 | 0                           | references.xlsx | home            | 0                   | personal_loan_punch.xlsx | loan_details     | 1                  |

  @ImplementedBy-anuj.singh
  Scenario Outline: ACAUTOCAS-3590: Validating Phone Number STD in References Address Details <var> for individual applicant
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and 0
    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_home>" and row <PersonalInfo_home_rowNum>
    And user creates new application for individual with "<Loan_Type>"
    And user reads data from the excel file "<PersonalLoanPunchWB>" under sheet "<PersonalLoanPunch_loanDetails>" and row <PersonalLoanPunch_loanDetails_rowNum>
    And user fills the loan details with save
    And user open References tab
    And user reads data from the excel file "<ReferencesWB>" under sheet "<References_home>" and row <References_home_Row>
    When user enters Phone Number STD in References Address Details
    Then Phone Number STD field with "<var>" "<Throws_notThrows>" in References Address Details

    Examples:
      | var                       | Loan_Type     | SourceDataFile       | SheetName | Throws_notThrows                   | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | ReferencesWB    | References_home | References_home_Row | PersonalLoanPunchWB      | PersonalLoanPunch_loanDetails | PersonalLoanPunch_loanDetails_rowNum |
      | valid value               | Home Loan     | LoginDetailsCAS.xlsx | LoginData | does not throw any error           | personal_information.xlsx | home              | 0                        | references.xlsx | home            | 13                  | personal_loan_punch.xlsx | loan_details                  | 0                                    |
      | with characters           | Home Loan     | LoginDetailsCAS.xlsx | LoginData | throws an error with error message | personal_information.xlsx | home              | 0                        | references.xlsx | home            | 14                  | personal_loan_punch.xlsx | loan_details                  | 0                                    |
      | with special character    | Home Loan     | LoginDetailsCAS.xlsx | LoginData | throws an error with error message | personal_information.xlsx | home              | 0                        | references.xlsx | home            | 15                  | personal_loan_punch.xlsx | loan_details                  | 0                                    |
      | with characters and digit | Home Loan     | LoginDetailsCAS.xlsx | LoginData | throws an error with error message | personal_information.xlsx | home              | 0                        | references.xlsx | home            | 16                  | personal_loan_punch.xlsx | loan_details                  | 0                                    |
      | with spaces               | Home Loan     | LoginDetailsCAS.xlsx | LoginData | throws an error with error message | personal_information.xlsx | home              | 0                        | references.xlsx | home            | 17                  | personal_loan_punch.xlsx | loan_details                  | 0                                    |
      | valid value               | Personal Loan | LoginDetailsCAS.xlsx | LoginData | does not throw any error           | personal_information.xlsx | home              | 0                        | references.xlsx | home            | 13                  | personal_loan_punch.xlsx | loan_details                  | 1                                    |
      | with characters           | Personal Loan | LoginDetailsCAS.xlsx | LoginData | throws an error with error message | personal_information.xlsx | home              | 0                        | references.xlsx | home            | 14                  | personal_loan_punch.xlsx | loan_details                  | 1                                    |
      | with special character    | Personal Loan | LoginDetailsCAS.xlsx | LoginData | throws an error with error message | personal_information.xlsx | home              | 0                        | references.xlsx | home            | 15                  | personal_loan_punch.xlsx | loan_details                  | 1                                    |
      | with characters and digit | Personal Loan | LoginDetailsCAS.xlsx | LoginData | throws an error with error message | personal_information.xlsx | home              | 0                        | references.xlsx | home            | 16                  | personal_loan_punch.xlsx | loan_details                  | 1                                    |
      | with spaces               | Personal Loan | LoginDetailsCAS.xlsx | LoginData | throws an error with error message | personal_information.xlsx | home              | 0                        | references.xlsx | home            | 17                  | personal_loan_punch.xlsx | loan_details                  | 1                                    |
      | valid value               | Auto Loan     | LoginDetailsCAS.xlsx | LoginData | does not throw any error           | personal_information.xlsx | home              | 0                        | references.xlsx | home            | 13                  | personal_loan_punch.xlsx | loan_details                  | 2                                    |
      | with characters           | Auto Loan     | LoginDetailsCAS.xlsx | LoginData | throws an error with error message | personal_information.xlsx | home              | 0                        | references.xlsx | home            | 14                  | personal_loan_punch.xlsx | loan_details                  | 2                                    |
      | with special character    | Auto Loan     | LoginDetailsCAS.xlsx | LoginData | throws an error with error message | personal_information.xlsx | home              | 0                        | references.xlsx | home            | 15                  | personal_loan_punch.xlsx | loan_details                  | 2                                    |
      | with characters and digit | Auto Loan     | LoginDetailsCAS.xlsx | LoginData | throws an error with error message | personal_information.xlsx | home              | 0                        | references.xlsx | home            | 16                  | personal_loan_punch.xlsx | loan_details                  | 2                                    |
      | with spaces               | Auto Loan     | LoginDetailsCAS.xlsx | LoginData | throws an error with error message | personal_information.xlsx | home              | 0                        | references.xlsx | home            | 17                  | personal_loan_punch.xlsx | loan_details                  | 2                                    |

  @ImplementedBy-anuj.singh
  Scenario Outline: ACAUTOCAS-5672: Validating Phone Number STD in References Address Details <var> for non individual applicant
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and 0
    And user reads data from the excel file "<CustomerDetailsWB>" under sheet "<CustomerDetails_home>" and row <CustomerDetails_home_rowNum>
    And user creates new application for non individual with "<Loan_Type>"
    And user reads data from the excel file "<LoanDetailsWB>" under sheet "<LoanDetails_home>" and row <LoanDetails_rowNum>
    And user fills loan details of non individual customer
    And user open References tab
    And user reads data from the excel file "<ReferencesWB>" under sheet "<References_home>" and row <References_home_Row>
    When user enters Phone Number STD in References Address Details
    Then Phone Number STD field with "<var>" "<Throws_notThrows>" in References Address Details


    Examples:
      | var                       | Loan_Type     | SourceDataFile       | SheetName | Throws_notThrows                   | CustomerDetailsWB     | CustomerDetails_home | CustomerDetails_home_rowNum | ReferencesWB    | References_home | References_home_Row | LoanDetailsWB            | LoanDetails_home | LoanDetails_rowNum |
      | valid value               | Home Loan     | LoginDetailsCAS.xlsx | LoginData | does not throw any error           | customer_details.xlsx | home                 | 0                           | references.xlsx | home            | 13                  | personal_loan_punch.xlsx | loan_details     | 0                  |
      | with characters           | Home Loan     | LoginDetailsCAS.xlsx | LoginData | throws an error with error message | customer_details.xlsx | home                 | 0                           | references.xlsx | home            | 14                  | personal_loan_punch.xlsx | loan_details     | 0                  |
      | with special character    | Home Loan     | LoginDetailsCAS.xlsx | LoginData | throws an error with error message | customer_details.xlsx | home                 | 0                           | references.xlsx | home            | 15                  | personal_loan_punch.xlsx | loan_details     | 0                  |
      | with characters and digit | Home Loan     | LoginDetailsCAS.xlsx | LoginData | throws an error with error message | customer_details.xlsx | home                 | 0                           | references.xlsx | home            | 16                  | personal_loan_punch.xlsx | loan_details     | 0                  |
      | with spaces               | Home Loan     | LoginDetailsCAS.xlsx | LoginData | throws an error with error message | customer_details.xlsx | home                 | 0                           | references.xlsx | home            | 17                  | personal_loan_punch.xlsx | loan_details     | 0                  |
      | valid value               | Personal Loan | LoginDetailsCAS.xlsx | LoginData | does not throw any error           | customer_details.xlsx | home                 | 0                           | references.xlsx | home            | 13                  | personal_loan_punch.xlsx | loan_details     | 1                  |
      | with characters           | Personal Loan | LoginDetailsCAS.xlsx | LoginData | throws an error with error message | customer_details.xlsx | home                 | 0                           | references.xlsx | home            | 14                  | personal_loan_punch.xlsx | loan_details     | 1                  |
      | with special character    | Personal Loan | LoginDetailsCAS.xlsx | LoginData | throws an error with error message | customer_details.xlsx | home                 | 0                           | references.xlsx | home            | 15                  | personal_loan_punch.xlsx | loan_details     | 1                  |
      | with characters and digit | Personal Loan | LoginDetailsCAS.xlsx | LoginData | throws an error with error message | customer_details.xlsx | home                 | 0                           | references.xlsx | home            | 16                  | personal_loan_punch.xlsx | loan_details     | 1                  |
      | with spaces               | Personal Loan | LoginDetailsCAS.xlsx | LoginData | throws an error with error message | customer_details.xlsx | home                 | 0                           | references.xlsx | home            | 17                  | personal_loan_punch.xlsx | loan_details     | 1                  |
      | valid value               | Auto Loan     | LoginDetailsCAS.xlsx | LoginData | does not throw any error           | customer_details.xlsx | home                 | 0                           | references.xlsx | home            | 13                  | personal_loan_punch.xlsx | loan_details     | 2                  |
      | with characters           | Auto Loan     | LoginDetailsCAS.xlsx | LoginData | throws an error with error message | customer_details.xlsx | home                 | 0                           | references.xlsx | home            | 14                  | personal_loan_punch.xlsx | loan_details     | 2                  |
      | with special character    | Auto Loan     | LoginDetailsCAS.xlsx | LoginData | throws an error with error message | customer_details.xlsx | home                 | 0                           | references.xlsx | home            | 15                  | personal_loan_punch.xlsx | loan_details     | 2                  |
      | with characters and digit | Auto Loan     | LoginDetailsCAS.xlsx | LoginData | throws an error with error message | customer_details.xlsx | home                 | 0                           | references.xlsx | home            | 16                  | personal_loan_punch.xlsx | loan_details     | 2                  |
      | with spaces               | Auto Loan     | LoginDetailsCAS.xlsx | LoginData | throws an error with error message | customer_details.xlsx | home                 | 0                           | references.xlsx | home            | 17                  | personal_loan_punch.xlsx | loan_details     | 2                  |


  @ImplementedBy-anuj.singh
  Scenario Outline: ACAUTOCAS-3591: Validating Phone Number number in References Address Details <var> for individual applicant
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and 0
    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_home>" and row <PersonalInfo_home_rowNum>
    And user creates new application for individual with "<Loan_Type>"
    And user reads data from the excel file "<PersonalLoanPunchWB>" under sheet "<PersonalLoanPunch_loanDetails>" and row <PersonalLoanPunch_loanDetails_rowNum>
    And user fills the loan details with save
    And user open References tab
    And user reads data from the excel file "<ReferencesWB>" under sheet "<References_home>" and row <References_home_Row>
    When user enters Phone Number number in References Address Details
    Then Phone Number number field with "<var>" "<Throws_notThrows>" in References Address Details

    Examples:
      | var                       | Loan_Type     | SourceDataFile       | SheetName | Throws_notThrows                   | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | ReferencesWB    | References_home | References_home_Row | PersonalLoanPunchWB      | PersonalLoanPunch_loanDetails | PersonalLoanPunch_loanDetails_rowNum |
      | valid  value              | Home Loan     | LoginDetailsCAS.xlsx | LoginData | does not throw any error           | personal_information.xlsx | home              | 0                        | references.xlsx | home            | 13                  | personal_loan_punch.xlsx | loan_details                  | 0                                    |
      | with characters           | Home Loan     | LoginDetailsCAS.xlsx | LoginData | throws an error with error message | personal_information.xlsx | home              | 0                        | references.xlsx | home            | 14                  | personal_loan_punch.xlsx | loan_details                  | 0                                    |
      | with special_character    | Home Loan     | LoginDetailsCAS.xlsx | LoginData | throws an error with error message | personal_information.xlsx | home              | 0                        | references.xlsx | home            | 15                  | personal_loan_punch.xlsx | loan_details                  | 0                                    |
      | with characters and digit | Home Loan     | LoginDetailsCAS.xlsx | LoginData | throws an error with error message | personal_information.xlsx | home              | 0                        | references.xlsx | home            | 16                  | personal_loan_punch.xlsx | loan_details                  | 0                                    |
      | with spaces               | Home Loan     | LoginDetailsCAS.xlsx | LoginData | throws an error with error message | personal_information.xlsx | home              | 0                        | references.xlsx | home            | 17                  | personal_loan_punch.xlsx | loan_details                  | 0                                    |
      | valid  value              | Personal Loan | LoginDetailsCAS.xlsx | LoginData | does not throw any error           | personal_information.xlsx | home              | 0                        | references.xlsx | home            | 13                  | personal_loan_punch.xlsx | loan_details                  | 1                                    |
      | with characters           | Personal Loan | LoginDetailsCAS.xlsx | LoginData | throws an error with error message | personal_information.xlsx | home              | 0                        | references.xlsx | home            | 14                  | personal_loan_punch.xlsx | loan_details                  | 1                                    |
      | with special_character    | Personal Loan | LoginDetailsCAS.xlsx | LoginData | throws an error with error message | personal_information.xlsx | home              | 0                        | references.xlsx | home            | 15                  | personal_loan_punch.xlsx | loan_details                  | 1                                    |
      | with characters and digit | Personal Loan | LoginDetailsCAS.xlsx | LoginData | throws an error with error message | personal_information.xlsx | home              | 0                        | references.xlsx | home            | 16                  | personal_loan_punch.xlsx | loan_details                  | 1                                    |
      | with spaces               | Personal Loan | LoginDetailsCAS.xlsx | LoginData | throws an error with error message | personal_information.xlsx | home              | 0                        | references.xlsx | home            | 17                  | personal_loan_punch.xlsx | loan_details                  | 1                                    |
      | valid  value              | Auto Loan     | LoginDetailsCAS.xlsx | LoginData | does not throw any error           | personal_information.xlsx | home              | 0                        | references.xlsx | home            | 13                  | personal_loan_punch.xlsx | loan_details                  | 2                                    |
      | with characters           | Auto Loan     | LoginDetailsCAS.xlsx | LoginData | throws an error with error message | personal_information.xlsx | home              | 0                        | references.xlsx | home            | 14                  | personal_loan_punch.xlsx | loan_details                  | 2                                    |
      | with special_character    | Auto Loan     | LoginDetailsCAS.xlsx | LoginData | throws an error with error message | personal_information.xlsx | home              | 0                        | references.xlsx | home            | 15                  | personal_loan_punch.xlsx | loan_details                  | 2                                    |
      | with characters and digit | Auto Loan     | LoginDetailsCAS.xlsx | LoginData | throws an error with error message | personal_information.xlsx | home              | 0                        | references.xlsx | home            | 16                  | personal_loan_punch.xlsx | loan_details                  | 2                                    |
      | with spaces               | Auto Loan     | LoginDetailsCAS.xlsx | LoginData | throws an error with error message | personal_information.xlsx | home              | 0                        | references.xlsx | home            | 17                  | personal_loan_punch.xlsx | loan_details                  | 2                                    |

  @ImplementedBy-anuj.singh
  Scenario Outline: ACAUTOCAS-5673: Validating Phone Number number in References Address Details <var> for non individual applicant
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and 0
    And user reads data from the excel file "<CustomerDetailsWB>" under sheet "<CustomerDetails_home>" and row <CustomerDetails_home_rowNum>
    And user creates new application for non individual with "<Loan_Type>"
    And user reads data from the excel file "<LoanDetailsWB>" under sheet "<LoanDetails_home>" and row <LoanDetails_rowNum>
    And user fills loan details of non individual customer
    And user open References tab
    And user reads data from the excel file "<ReferencesWB>" under sheet "<References_home>" and row <References_home_Row>
    When user enters Phone Number number in References Address Details
    Then Phone Number number field with "<var>" "<Throws_notThrows>" in References Address Details

    Examples:
      | var                       | Loan_Type     | SourceDataFile       | SheetName | Throws_notThrows                   | CustomerDetailsWB     | CustomerDetails_home | CustomerDetails_home_rowNum | ReferencesWB    | References_home | References_home_Row | LoanDetailsWB            | LoanDetails_home | LoanDetails_rowNum |
      | valid  value              | Home Loan     | LoginDetailsCAS.xlsx | LoginData | does not throw any error           | customer_details.xlsx | home                 | 0                           | references.xlsx | home            | 13                  | personal_loan_punch.xlsx | loan_details     | 0                  |
      | with characters           | Home Loan     | LoginDetailsCAS.xlsx | LoginData | throws an error with error message | customer_details.xlsx | home                 | 0                           | references.xlsx | home            | 14                  | personal_loan_punch.xlsx | loan_details     | 0                  |
      | with special_character    | Home Loan     | LoginDetailsCAS.xlsx | LoginData | throws an error with error message | customer_details.xlsx | home                 | 0                           | references.xlsx | home            | 15                  | personal_loan_punch.xlsx | loan_details     | 0                  |
      | with characters and digit | Home Loan     | LoginDetailsCAS.xlsx | LoginData | throws an error with error message | customer_details.xlsx | home                 | 0                           | references.xlsx | home            | 16                  | personal_loan_punch.xlsx | loan_details     | 0                  |
      | with spaces               | Home Loan     | LoginDetailsCAS.xlsx | LoginData | throws an error with error message | customer_details.xlsx | home                 | 0                           | references.xlsx | home            | 17                  | personal_loan_punch.xlsx | loan_details     | 0                  |
      | valid  value              | Personal Loan | LoginDetailsCAS.xlsx | LoginData | does not throw any error           | customer_details.xlsx | home                 | 0                           | references.xlsx | home            | 13                  | personal_loan_punch.xlsx | loan_details     | 1                  |
      | with characters           | Personal Loan | LoginDetailsCAS.xlsx | LoginData | throws an error with error message | customer_details.xlsx | home                 | 0                           | references.xlsx | home            | 14                  | personal_loan_punch.xlsx | loan_details     | 1                  |
      | with special_character    | Personal Loan | LoginDetailsCAS.xlsx | LoginData | throws an error with error message | customer_details.xlsx | home                 | 0                           | references.xlsx | home            | 15                  | personal_loan_punch.xlsx | loan_details     | 1                  |
      | with characters and digit | Personal Loan | LoginDetailsCAS.xlsx | LoginData | throws an error with error message | customer_details.xlsx | home                 | 0                           | references.xlsx | home            | 16                  | personal_loan_punch.xlsx | loan_details     | 1                  |
      | with spaces               | Personal Loan | LoginDetailsCAS.xlsx | LoginData | throws an error with error message | customer_details.xlsx | home                 | 0                           | references.xlsx | home            | 17                  | personal_loan_punch.xlsx | loan_details     | 1                  |
      | valid  value              | Auto Loan     | LoginDetailsCAS.xlsx | LoginData | does not throw any error           | customer_details.xlsx | home                 | 0                           | references.xlsx | home            | 13                  | personal_loan_punch.xlsx | loan_details     | 2                  |
      | with characters           | Auto Loan     | LoginDetailsCAS.xlsx | LoginData | throws an error with error message | customer_details.xlsx | home                 | 0                           | references.xlsx | home            | 14                  | personal_loan_punch.xlsx | loan_details     | 2                  |
      | with special_character    | Auto Loan     | LoginDetailsCAS.xlsx | LoginData | throws an error with error message | customer_details.xlsx | home                 | 0                           | references.xlsx | home            | 15                  | personal_loan_punch.xlsx | loan_details     | 2                  |
      | with characters and digit | Auto Loan     | LoginDetailsCAS.xlsx | LoginData | throws an error with error message | customer_details.xlsx | home                 | 0                           | references.xlsx | home            | 16                  | personal_loan_punch.xlsx | loan_details     | 2                  |
      | with spaces               | Auto Loan     | LoginDetailsCAS.xlsx | LoginData | throws an error with error message | customer_details.xlsx | home                 | 0                           | references.xlsx | home            | 17                  | personal_loan_punch.xlsx | loan_details     | 2                  |

  @ImplementedBy-atul.mishra
  Scenario Outline: ACAUTOCAS-3584: Saving References Details detail without <Field_Name> for individual
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and 0
    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_home>" and row <PersonalInfo_home_rowNum>
    And user creates new application for individual with "<Loan_Type>"
    And user reads data from the excel file "<PersonalLoanPunchWB>" under sheet "<PersonalLoanPunch_loanDetails>" and row <PersonalLoanPunch_loanDetails_rowNum>
    And user fills the loan details with save
    And user open References tab
    And user reads data from the excel file "<RefrencesWB>" under sheet "<References_home>" and row <References_home_Row>
    When user fills the References Details without "<Field_Name>"
    Then References Details not saved with "<Throws_notThrows>"

    Examples:
      | Field_Name    | Loan_Type     | SourceDataFile       | SheetName | Throws_notThrows                   | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | RefrencesWB     | References_home | References_home_Row | PersonalLoanPunchWB      | PersonalLoanPunch_loanDetails | PersonalLoanPunch_loanDetails_rowNum |
      | Name          | Home Loan     | LoginDetailsCAS.xlsx | LoginData | throws an error with error message | personal_information.xlsx | home              | 0                        | references.xlsx | home            | 0                   | personal_loan_punch.xlsx | loan_details                  | 0                                    |
      | Address       | Home Loan     | LoginDetailsCAS.xlsx | LoginData | throws an error with error message | personal_information.xlsx | home              | 0                        | references.xlsx | home            | 0                   | personal_loan_punch.xlsx | loan_details                  | 0                                    |
      | Relationship  | Home Loan     | LoginDetailsCAS.xlsx | LoginData | throws an error with error message | personal_information.xlsx | home              | 0                        | references.xlsx | home            | 0                   | personal_loan_punch.xlsx | loan_details                  | 0                                    |
      | Mobile Number | Home Loan     | LoginDetailsCAS.xlsx | LoginData | throws an error with error message | personal_information.xlsx | home              | 0                        | references.xlsx | home            | 0                   | personal_loan_punch.xlsx | loan_details                  | 0                                    |
      | Phone Number  | Home Loan     | LoginDetailsCAS.xlsx | LoginData | throws an error with error message | personal_information.xlsx | home              | 0                        | references.xlsx | home            | 0                   | personal_loan_punch.xlsx | loan_details                  | 0                                    |
      | Name          | Personal Loan | LoginDetailsCAS.xlsx | LoginData | throws an error with error message | personal_information.xlsx | home              | 0                        | references.xlsx | home            | 0                   | personal_loan_punch.xlsx | loan_details                  | 1                                    |
      | Address       | Personal Loan | LoginDetailsCAS.xlsx | LoginData | throws an error with error message | personal_information.xlsx | home              | 0                        | references.xlsx | home            | 0                   | personal_loan_punch.xlsx | loan_details                  | 1                                    |
      | Relationship  | Personal Loan | LoginDetailsCAS.xlsx | LoginData | throws an error with error message | personal_information.xlsx | home              | 0                        | references.xlsx | home            | 0                   | personal_loan_punch.xlsx | loan_details                  | 1                                    |
      | Mobile Number | Personal Loan | LoginDetailsCAS.xlsx | LoginData | throws an error with error message | personal_information.xlsx | home              | 0                        | references.xlsx | home            | 0                   | personal_loan_punch.xlsx | loan_details                  | 1                                    |
      | Phone Number  | Personal Loan | LoginDetailsCAS.xlsx | LoginData | throws an error with error message | personal_information.xlsx | home              | 0                        | references.xlsx | home            | 0                   | personal_loan_punch.xlsx | loan_details                  | 1                                    |
      | Name          | Auto Loan     | LoginDetailsCAS.xlsx | LoginData | throws an error with error message | personal_information.xlsx | home              | 0                        | references.xlsx | home            | 0                   | personal_loan_punch.xlsx | loan_details                  | 2                                    |
      | Address       | Auto Loan     | LoginDetailsCAS.xlsx | LoginData | throws an error with error message | personal_information.xlsx | home              | 0                        | references.xlsx | home            | 0                   | personal_loan_punch.xlsx | loan_details                  | 2                                    |
      | Relationship  | Auto Loan     | LoginDetailsCAS.xlsx | LoginData | throws an error with error message | personal_information.xlsx | home              | 0                        | references.xlsx | home            | 0                   | personal_loan_punch.xlsx | loan_details                  | 2                                    |
      | Mobile Number | Auto Loan     | LoginDetailsCAS.xlsx | LoginData | throws an error with error message | personal_information.xlsx | home              | 0                        | references.xlsx | home            | 0                   | personal_loan_punch.xlsx | loan_details                  | 2                                    |
      | Phone Number  | Auto Loan     | LoginDetailsCAS.xlsx | LoginData | throws an error with error message | personal_information.xlsx | home              | 0                        | references.xlsx | home            | 0                   | personal_loan_punch.xlsx | loan_details                  | 2                                    |

  @ImplementedBy-atul.mishra
  Scenario Outline: ACAUTOCAS-14120:  Saving References Details detail without <Field_Name> for non individual
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and 0
    And user reads data from the excel file "<CustomerDetailsWB>" under sheet "<CustomerDetails_home>" and row <CustomerDetails_home_rowNum>
    And user creates new application for non individual with "<Loan_Type>"
    And user reads data from the excel file "<LoanDetailsWB>" under sheet "<LoanDetails_home>" and row <LoanDetails_rowNum>
    And user fills loan details of non individual customer
    And user open References tab
    And user reads data from the excel file "<RefrencesWB>" under sheet "<References_home>" and row <References_home_Row>
    When user fills the References Details without "<Field_Name>"
    Then References Details not saved with "<Throws_notThrows>"
    Examples:
      | Field_Name    | Loan_Type     | SourceDataFile       | SheetName | Throws_notThrows                   | CustomerDetailsWB     | CustomerDetails_home | CustomerDetails_home_rowNum | RefrencesWB     | References_home | References_home_Row | LoanDetailsWB            | LoanDetails_home | LoanDetails_rowNum |
      | Name          | Home Loan     | LoginDetailsCAS.xlsx | LoginData | throws an error with error message | customer_details.xlsx | home                 | 0                           | references.xlsx | home            | 0                   | personal_loan_punch.xlsx | loan_details     | 0                  |
      | Address       | Home Loan     | LoginDetailsCAS.xlsx | LoginData | throws an error with error message | customer_details.xlsx | home                 | 0                           | references.xlsx | home            | 0                   | personal_loan_punch.xlsx | loan_details     | 0                  |
      | Relationship  | Home Loan     | LoginDetailsCAS.xlsx | LoginData | throws an error with error message | customer_details.xlsx | home                 | 0                           | references.xlsx | home            | 0                   | personal_loan_punch.xlsx | loan_details     | 0                  |
      | Mobile Number | Home Loan     | LoginDetailsCAS.xlsx | LoginData | throws an error with error message | customer_details.xlsx | home                 | 0                           | references.xlsx | home            | 0                   | personal_loan_punch.xlsx | loan_details     | 0                  |
      | Phone Number  | Home Loan     | LoginDetailsCAS.xlsx | LoginData | throws an error with error message | customer_details.xlsx | home                 | 0                           | references.xlsx | home            | 0                   | personal_loan_punch.xlsx | loan_details     | 0                  |
      | Name          | Personal Loan | LoginDetailsCAS.xlsx | LoginData | throws an error with error message | customer_details.xlsx | home                 | 0                           | references.xlsx | home            | 0                   | personal_loan_punch.xlsx | loan_details     | 1                  |
      | Address       | Personal Loan | LoginDetailsCAS.xlsx | LoginData | throws an error with error message | customer_details.xlsx | home                 | 0                           | references.xlsx | home            | 0                   | personal_loan_punch.xlsx | loan_details     | 1                  |
      | Relationship  | Personal Loan | LoginDetailsCAS.xlsx | LoginData | throws an error with error message | customer_details.xlsx | home                 | 0                           | references.xlsx | home            | 0                   | personal_loan_punch.xlsx | loan_details     | 1                  |
      | Mobile Number | Personal Loan | LoginDetailsCAS.xlsx | LoginData | throws an error with error message | customer_details.xlsx | home                 | 0                           | references.xlsx | home            | 0                   | personal_loan_punch.xlsx | loan_details     | 1                  |
      | Phone Number  | Personal Loan | LoginDetailsCAS.xlsx | LoginData | throws an error with error message | customer_details.xlsx | home                 | 0                           | references.xlsx | home            | 0                   | personal_loan_punch.xlsx | loan_details     | 1                  |
      | Name          | Auto Loan     | LoginDetailsCAS.xlsx | LoginData | throws an error with error message | customer_details.xlsx | home                 | 0                           | references.xlsx | home            | 0                   | personal_loan_punch.xlsx | loan_details     | 2                  |
      | Address       | Auto Loan     | LoginDetailsCAS.xlsx | LoginData | throws an error with error message | customer_details.xlsx | home                 | 0                           | references.xlsx | home            | 0                   | personal_loan_punch.xlsx | loan_details     | 2                  |
      | Relationship  | Auto Loan     | LoginDetailsCAS.xlsx | LoginData | throws an error with error message | customer_details.xlsx | home                 | 0                           | references.xlsx | home            | 0                   | personal_loan_punch.xlsx | loan_details     | 2                  |
      | Mobile Number | Auto Loan     | LoginDetailsCAS.xlsx | LoginData | throws an error with error message | customer_details.xlsx | home                 | 0                           | references.xlsx | home            | 0                   | personal_loan_punch.xlsx | loan_details     | 2                  |
      | Phone Number  | Auto Loan     | LoginDetailsCAS.xlsx | LoginData | throws an error with error message | customer_details.xlsx | home                 | 0                           | references.xlsx | home            | 0                   | personal_loan_punch.xlsx | loan_details     | 2                  |

  @ImplementedBy-atul.mishra
  Scenario Outline: ACAUTOCAS-3594:  In Selection of <Field_Name> <Dependent_Field> disabled in References address for individual customer
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and 0
    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_home>" and row <PersonalInfo_home_rowNum>
    And user creates new application for individual with "<Loan_Type>"
    And user reads data from the excel file "<PersonalLoanPunchWB>" under sheet "<PersonalLoanPunch_loanDetails>" and row <PersonalLoanPunch_loanDetails_rowNum>
    And user fills the loan details with save
    And user open References tab
    When user selects "<Field_Name>" field in References address details
    Then "<Dependent_Field>" should be disabled in References address details

    Examples:
      | Applicant  | Field_Name      | Dependent_Field             | Loan_Type     | SourceDataFile       | SheetName | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | RefrencesWB     | References_home | References_home_Row | PersonalLoanPunchWB      | PersonalLoanPunch_loanDetails | PersonalLoanPunch_loanDetails_rowNum |
      | Individual | Current Address | Duration at this Address To | Home Loan     | LoginDetailsCAS.xlsx | LoginData | personal_information.xlsx | home              | 0                        | references.xlsx | home            | 0                   | personal_loan_punch.xlsx | loan_details                  | 0                                    |
      | Individual | Current Address | Duration at this City To    | Home Loan     | LoginDetailsCAS.xlsx | LoginData | personal_information.xlsx | home              | 0                        | references.xlsx | home            | 0                   | personal_loan_punch.xlsx | loan_details                  | 0                                    |
      | Individual | Current Address | Duration at this Address To | Personal Loan | LoginDetailsCAS.xlsx | LoginData | personal_information.xlsx | home              | 0                        | references.xlsx | home            | 0                   | personal_loan_punch.xlsx | loan_details                  | 1                                    |
      | Individual | Current Address | Duration at this City To    | Personal Loan | LoginDetailsCAS.xlsx | LoginData | personal_information.xlsx | home              | 0                        | references.xlsx | home            | 0                   | personal_loan_punch.xlsx | loan_details                  | 1                                    |
      | Individual | Current Address | Duration at this Address To | Auto Loan     | LoginDetailsCAS.xlsx | LoginData | personal_information.xlsx | home              | 0                        | references.xlsx | home            | 0                   | personal_loan_punch.xlsx | loan_details                  | 2                                    |
      | Individual | Current Address | Duration at this City To    | Auto Loan     | LoginDetailsCAS.xlsx | LoginData | personal_information.xlsx | home              | 0                        | references.xlsx | home            | 0                   | personal_loan_punch.xlsx | loan_details                  | 2                                    |

  @ImplementedBy-atul.mishra
  Scenario Outline: ACAUTOCAS-14121:  In Selection of <Field_Name> <Dependent_Field> disabled in References address for non individual customer
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and 0
    And user reads data from the excel file "<CustomerDetailsWB>" under sheet "<CustomerDetails_home>" and row <CustomerDetails_home_rowNum>
    And user creates new application for non individual with "<Loan_Type>"
    And user reads data from the excel file "<LoanDetailsWB>" under sheet "<LoanDetails_home>" and row <LoanDetails_rowNum>
    And user fills loan details of non individual customer
    And user open References tab
    When user selects "<Field_Name>" field in References address details
    Then "<Dependent_Field>" should be disabled in References address details
    Examples:
      | Applicant      | Field_Name      | Dependent_Field             | Loan_Type     | SourceDataFile       | SheetName | CustomerDetailsWB     | CustomerDetails_home | CustomerDetails_home_rowNum | RefrencesWB     | References_home | References_home_Row | LoanDetailsWB            | LoanDetails_home | LoanDetails_rowNum |
      | Non-Individual | Current Address | Duration at this Address To | Home Loan     | LoginDetailsCAS.xlsx | LoginData | customer_details.xlsx | home                 | 0                           | references.xlsx | home            | 0                   | personal_loan_punch.xlsx | loan_details     | 0                  |
      | Non-Individual | Current Address | Duration at this City To    | Home Loan     | LoginDetailsCAS.xlsx | LoginData | customer_details.xlsx | home                 | 0                           | references.xlsx | home            | 0                   | personal_loan_punch.xlsx | loan_details     | 0                  |
      | Non-Individual | Current Address | Duration at this Address To | Personal Loan | LoginDetailsCAS.xlsx | LoginData | customer_details.xlsx | home                 | 0                           | references.xlsx | home            | 0                   | personal_loan_punch.xlsx | loan_details     | 1                  |
      | Non-Individual | Current Address | Duration at this City To    | Personal Loan | LoginDetailsCAS.xlsx | LoginData | customer_details.xlsx | home                 | 0                           | references.xlsx | home            | 0                   | personal_loan_punch.xlsx | loan_details     | 1                  |
      | Non-Individual | Current Address | Duration at this Address To | Auto Loan     | LoginDetailsCAS.xlsx | LoginData | customer_details.xlsx | home                 | 0                           | references.xlsx | home            | 0                   | personal_loan_punch.xlsx | loan_details     | 2                  |
      | Non-Individual | Current Address | Duration at this City To    | Auto Loan     | LoginDetailsCAS.xlsx | LoginData | customer_details.xlsx | home                 | 0                           | references.xlsx | home            | 0                   | personal_loan_punch.xlsx | loan_details     | 2                  |
