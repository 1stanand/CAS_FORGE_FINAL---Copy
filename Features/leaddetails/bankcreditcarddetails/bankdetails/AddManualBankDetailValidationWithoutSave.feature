#@Epic-Applicant_Information
#@AuthoredBy-utkarsh.tiwari
#@ReviewedBy-None
#@ImplementedBy-utkarsh.tiwari
#@Release1
#@Reconciled
#@ReviewedByDEV
#@AppInfoAdoption
#Feature: Add Manual Bank Detail Mandatory Field Validation Without Save
#
#  @ReleaseAppInfoM3
#  Scenario Outline: ACAUTOCAS-3797:  Add Manual Bank Details <var> Banking Evaluation Period
#    Given user is on CAS Login Page
#    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
#    When user is on personal information page
#    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_home>" and row <PersonalInfo_home_rowNum>
#    And user fills home page of personal information
#    And user reads data from the excel file "<BankCreditCardWB>" under sheet "<BankCreditCard_bankDetails>" and row <BankCreditCard_bankDetails_rowNum>
#    And user clicks on Bank and Credit Details
#    And user fills bank details "<var>" Banking Evaluation Period and saves it
#    Then Add manual bank details "<var>" Banking Evaluation Period should <var2>
#    Examples:
#      | var     | var2                           | SourceDataFile       |  |  | SheetName | RowNumber | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum |
#      | with    | work properly                  | LoginDetailsCAS.xlsx |  |  | LoginData | 0         | personal_information.xlsx | home              | 24                       | bank_credit_card_details.xlsx | bank_details               | 0                                 |
#      | without | display a proper error message | LoginDetailsCAS.xlsx |  |  | LoginData | 0         | personal_information.xlsx | home              | 24                       | bank_credit_card_details.xlsx | bank_details               | 0                                 |
#
#  @ReleaseAppInfoM3
#  Scenario Outline: ACAUTOCAS-3798:  Add Manual Bank details <var> should be disable
#    Given user is on CAS Login Page
#    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
#    When user is on personal information page
#    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_home>" and row <PersonalInfo_home_rowNum>
#    And user fills home page of personal information
#    And user reads data from the excel file "<BankCreditCardWB>" under sheet "<BankCreditCard_bankDetails>" and row <BankCreditCard_bankDetails_rowNum>
#    And user clicks on Bank and Credit Details
#    And user fills bank details and opens Add Manual Page
#    Then "<var>" of Add Manual Bank Details page should be disabled
#    Examples:
#      | var                       | SourceDataFile       | SheetName | RowNumber | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum |
#      | NRE NRO Account           | LoginDetailsCAS.xlsx | LoginData | 0         | personal_information.xlsx | home              | 24                       | bank_credit_card_details.xlsx | bank_details               | 6                                 |
#      | Account type              | LoginDetailsCAS.xlsx | LoginData | 0         | personal_information.xlsx | home              | 24                       | bank_credit_card_details.xlsx | bank_details               | 0                                 |
#      | Account Number            | LoginDetailsCAS.xlsx | LoginData | 0         | personal_information.xlsx | home              | 24                       | bank_credit_card_details.xlsx | bank_details               | 0                                 |
#      | Account Opening Date      | LoginDetailsCAS.xlsx | LoginData | 0         | personal_information.xlsx | home              | 24                       | bank_credit_card_details.xlsx | bank_details               | 0                                 |
#      | No of Months Account Held | LoginDetailsCAS.xlsx | LoginData | 0         | personal_information.xlsx | home              | 24                       | bank_credit_card_details.xlsx | bank_details               | 0                                 |
#
#  @ReleaseAppInfoM3
#  Scenario Outline: ACAUTOCAS-3799:  Validating Number of Credit Transaction
#    Given user is on CAS Login Page
#    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
#    When user is on personal information page
#    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_home>" and row <PersonalInfo_home_rowNum>
#    And user fills home page of personal information
#    And user reads data from the excel file "<BankCreditCardWB>" under sheet "<BankCreditCard_bankDetails>" and row <BankCreditCard_bankDetails_rowNum>
#    And user clicks on Bank and Credit Details
#    And user fills bank details and opens Add Manual Page
#    And user inputs no of credit transactions with <var>
#    Then It should "<var2>" for credit transaction
#    Examples:
#      | var                | var2                           | SourceDataFile       |  | SheetName | RowNumber | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum |
#      | more than 5 digits | take 5 digits only             | LoginDetailsCAS.xlsx |  | LoginData | 0         | personal_information.xlsx | home              | 24                       | bank_credit_card_details.xlsx | bank_details               | 6                                 |
#      | characters         | display a proper error message | LoginDetailsCAS.xlsx |  | LoginData | 0         | personal_information.xlsx | home              | 24                       | bank_credit_card_details.xlsx | bank_details               | 6                                 |
#      | special characters | display a proper error message | LoginDetailsCAS.xlsx |  | LoginData | 0         | personal_information.xlsx | home              | 24                       | bank_credit_card_details.xlsx | bank_details               | 6                                 |
#
#
#  @ReleaseAppInfoM3
#  Scenario Outline: ACAUTOCAS-3800:  Validating Number of Debit Transaction
#    Given user is on CAS Login Page
#    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
#    When user is on personal information page
#    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_home>" and row <PersonalInfo_home_rowNum>
#    And user fills home page of personal information
#    And user reads data from the excel file "<BankCreditCardWB>" under sheet "<BankCreditCard_bankDetails>" and row <BankCreditCard_bankDetails_rowNum>
#    And user clicks on Bank and Credit Details
#    And user fills bank details and opens Add Manual Page
#    And user inputs no of debit transactions with "<var>"
#    Then It should "<var2>" for debit transaction
#    Examples:
#      | var                   | var2                           | SourceDataFile       |  | SheetName | RowNumber | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum |
#      | digits and characters | display a proper error message | LoginDetailsCAS.xlsx |  | LoginData | 0         | personal_information.xlsx | home              | 24                       | bank_credit_card_details.xlsx | bank_details               | 6                                 |
#      | maximum digit         | work properly                  | LoginDetailsCAS.xlsx |  | LoginData | 0         | personal_information.xlsx | home              | 24                       | bank_credit_card_details.xlsx | bank_details               | 6                                 |
#      | special characters    | display a proper error message | LoginDetailsCAS.xlsx |  | LoginData | 0         | personal_information.xlsx | home              | 24                       | bank_credit_card_details.xlsx | bank_details               | 6                                 |
#
#  @ReleaseAppInfoM3
#  Scenario Outline: ACAUTOCAS-3801:  Validating <checkvar> Balance <var> and working <var2>
#    Given user is on CAS Login Page
#    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
#    When user is on personal information page
#    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_home>" and row <PersonalInfo_home_rowNum>
#    And user fills home page of personal information
#    And user reads data from the excel file "<BankCreditCardWB>" under sheet "<BankCreditCard_bankDetails>" and row <BankCreditCard_bankDetails_rowNum>
#    And user clicks on Bank and Credit Details
#    And user fills bank details and opens Add Manual Page
#    And user insert the <checkvar> balance in a specific format <var>
#    Then <checkvar> Balance should be inserted <var2>
#    Examples:
#      | checkvar         | var                            | var2                      | SourceDataFile       | SheetName | RowNumber | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum |
#      | Minimum          |                                | with no error             | LoginDetailsCAS.xlsx | LoginData | 0         | personal_information.xlsx | home              | 24                       | bank_credit_card_details.xlsx | bank_details               | 7                                 |
#      | Minimum          | with maximum length            | successfully              | LoginDetailsCAS.xlsx | LoginData | 0         | personal_information.xlsx | home              | 24                       | bank_credit_card_details.xlsx | bank_details               | 8                                 |
#      | Minimum          | with both digits and character | with proper error message | LoginDetailsCAS.xlsx | LoginData | 0         | personal_information.xlsx | home              | 24                       | bank_credit_card_details.xlsx | bank_details               | 9                                 |
#      | Minimum          | with negative value            | with proper error message | LoginDetailsCAS.xlsx | LoginData | 0         | personal_information.xlsx | home              | 24                       | bank_credit_card_details.xlsx | bank_details               | 10                                |
#      | Minimum          | with special character         | with proper error message | LoginDetailsCAS.xlsx | LoginData | 0         | personal_information.xlsx | home              | 24                       | bank_credit_card_details.xlsx | bank_details               | 11                                |
#      | Minimum          | with space                     | with proper error message | LoginDetailsCAS.xlsx | LoginData | 0         | personal_information.xlsx | home              | 24                       | bank_credit_card_details.xlsx | bank_details               | 11                                |
#      | Maximum          |                                | with no error             | LoginDetailsCAS.xlsx | LoginData | 0         | personal_information.xlsx | home              | 24                       | bank_credit_card_details.xlsx | bank_details               | 7                                 |
#      | Maximum          | with maximum length            | successfully              | LoginDetailsCAS.xlsx | LoginData | 0         | personal_information.xlsx | home              | 24                       | bank_credit_card_details.xlsx | bank_details               | 8                                 |
#      | Maximum          | with both digits and character | with proper error message | LoginDetailsCAS.xlsx | LoginData | 0         | personal_information.xlsx | home              | 24                       | bank_credit_card_details.xlsx | bank_details               | 9                                 |
#      | Maximum          | with negative value            | with proper error message | LoginDetailsCAS.xlsx | LoginData | 0         | personal_information.xlsx | home              | 24                       | bank_credit_card_details.xlsx | bank_details               | 10                                |
#      | Maximum          | with special character         | with proper error message | LoginDetailsCAS.xlsx | LoginData | 0         | personal_information.xlsx | home              | 24                       | bank_credit_card_details.xlsx | bank_details               | 11                                |
#      | Maximum          | with space                     | with proper error message | LoginDetailsCAS.xlsx | LoginData | 0         | personal_information.xlsx | home              | 24                       | bank_credit_card_details.xlsx | bank_details               | 11                                |
#      | Average          |                                | with no error             | LoginDetailsCAS.xlsx | LoginData | 0         | personal_information.xlsx | home              | 24                       | bank_credit_card_details.xlsx | bank_details               | 7                                 |
#      | Average          | with maximum length            | successfully              | LoginDetailsCAS.xlsx | LoginData | 0         | personal_information.xlsx | home              | 24                       | bank_credit_card_details.xlsx | bank_details               | 8                                 |
#      | Average          | with both digits and character | with proper error message | LoginDetailsCAS.xlsx | LoginData | 0         | personal_information.xlsx | home              | 24                       | bank_credit_card_details.xlsx | bank_details               | 9                                 |
#      | Average          | with negative value            | with proper error message | LoginDetailsCAS.xlsx | LoginData | 0         | personal_information.xlsx | home              | 24                       | bank_credit_card_details.xlsx | bank_details               | 10                                |
#      | Average          | with special character         | with proper error message | LoginDetailsCAS.xlsx | LoginData | 0         | personal_information.xlsx | home              | 24                       | bank_credit_card_details.xlsx | bank_details               | 11                                |
#      | Average          | with space                     | with proper error message | LoginDetailsCAS.xlsx | LoginData | 0         | personal_information.xlsx | home              | 24                       | bank_credit_card_details.xlsx | bank_details               | 11                                |
#      | Withdrawl Amount |                                | with no error             | LoginDetailsCAS.xlsx | LoginData | 0         | personal_information.xlsx | home              | 24                       | bank_credit_card_details.xlsx | bank_details               | 7                                 |
#      | Withdrawl Amount | with maximum length            | successfully              | LoginDetailsCAS.xlsx | LoginData | 0         | personal_information.xlsx | home              | 24                       | bank_credit_card_details.xlsx | bank_details               | 8                                 |
#      | Withdrawl Amount | with both digits and character | with proper error message | LoginDetailsCAS.xlsx | LoginData | 0         | personal_information.xlsx | home              | 24                       | bank_credit_card_details.xlsx | bank_details               | 9                                 |
#      | Withdrawl Amount | with negative value            | with proper error message | LoginDetailsCAS.xlsx | LoginData | 0         | personal_information.xlsx | home              | 24                       | bank_credit_card_details.xlsx | bank_details               | 10                                |
#      | Withdrawl Amount | with special character         | with proper error message | LoginDetailsCAS.xlsx | LoginData | 0         | personal_information.xlsx | home              | 24                       | bank_credit_card_details.xlsx | bank_details               | 11                                |
#      | Withdrawl Amount | with space                     | with proper error message | LoginDetailsCAS.xlsx | LoginData | 0         | personal_information.xlsx | home              | 24                       | bank_credit_card_details.xlsx | bank_details               | 11                                |
#
#  @ReleaseAppInfoM3
#  Scenario Outline: ACAUTOCAS-3802:  Currency dropdown option should be visible
#    Given user is on CAS Login Page
#    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
#    When user is on personal information page
#    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_home>" and row <PersonalInfo_home_rowNum>
#    And user fills home page of personal information
#    And user reads data from the excel file "<BankCreditCardWB>" under sheet "<BankCreditCard_bankDetails>" and row <BankCreditCard_bankDetails_rowNum>
#    And user clicks on Bank and Credit Details
#    And user fills bank details and opens Add Manual Page
#    And user clicks on currency dropdown of <var> Balance
#    Then dropdown option should be visible of <var> Balance
#    Examples:
#      | var       | SourceDataFile       |  | SheetName | RowNumber | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum |
#      | Minimum   | LoginDetailsCAS.xlsx |  | LoginData | 0         | personal_information.xlsx | home              | 24                       | bank_credit_card_details.xlsx | bank_details               | 7                                 |
#      | Maximum   | LoginDetailsCAS.xlsx |  | LoginData | 0         | personal_information.xlsx | home              | 24                       | bank_credit_card_details.xlsx | bank_details               | 7                                 |
#      | Average   | LoginDetailsCAS.xlsx |  | LoginData | 0         | personal_information.xlsx | home              | 24                       | bank_credit_card_details.xlsx | bank_details               | 7                                 |
#      | WithDrawl | LoginDetailsCAS.xlsx |  | LoginData | 0         | personal_information.xlsx | home              | 24                       | bank_credit_card_details.xlsx | bank_details               | 7                                 |
#
#  @ReleaseAppInfoM3
#  Scenario Outline: ACAUTOCAS-3803:  Minimum Balance entered should be in paise format
#    Given user is on CAS Login Page
#    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
#    When user is on personal information page
#    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_home>" and row <PersonalInfo_home_rowNum>
#    And user fills home page of personal information
#    And user reads data from the excel file "<BankCreditCardWB>" under sheet "<BankCreditCard_bankDetails>" and row <BankCreditCard_bankDetails_rowNum>
#    And user clicks on Bank and Credit Details
#    And user fills bank details and opens Add Manual Page
#    And user insert the <var2> balance in a specific format <var>
#    Then inserted <var2> balance should be in paise format
#    Examples:
#      | var | var2      | SourceDataFile       |  | SheetName | RowNumber | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum |
#      |     | Minimum   | LoginDetailsCAS.xlsx |  | LoginData | 0         | personal_information.xlsx | home              | 24                       | bank_credit_card_details.xlsx | bank_details               | 7                                 |
#      |     | Maximum   | LoginDetailsCAS.xlsx |  | LoginData | 0         | personal_information.xlsx | home              | 24                       | bank_credit_card_details.xlsx | bank_details               | 7                                 |
#      |     | Average   | LoginDetailsCAS.xlsx |  | LoginData | 0         | personal_information.xlsx | home              | 24                       | bank_credit_card_details.xlsx | bank_details               | 7                                 |
#      |     | WithDrawl | LoginDetailsCAS.xlsx |  | LoginData | 0         | personal_information.xlsx | home              | 24                       | bank_credit_card_details.xlsx | bank_details               | 7                                 |
#
#  @ReleaseAppInfoM3
#  Scenario Outline: ACAUTOCAS-3804:  Validating Outward Cheque Returns with <var>
#    Given user is on CAS Login Page
#    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
#    When user is on personal information page
#    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_home>" and row <PersonalInfo_home_rowNum>
#    And user fills home page of personal information
#    And user reads data from the excel file "<BankCreditCardWB>" under sheet "<BankCreditCard_bankDetails>" and row <BankCreditCard_bankDetails_rowNum>
#    And user clicks on Bank and Credit Details
#    And user fills bank details and opens Add Manual Page
#    And user inserts Outward Cheque Returns with <var>
#    Then It should display a proper error message in Outward Cheque Returns
#    Examples:
#      | var                | SourceDataFile       | SheetName | RowNumber | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum |
#      | characters         | LoginDetailsCAS.xlsx | LoginData | 0         | personal_information.xlsx | home              | 24                       | bank_credit_card_details.xlsx | bank_details               | 8                                 |
#      | special characters | LoginDetailsCAS.xlsx | LoginData | 0         | personal_information.xlsx | home              | 24                       | bank_credit_card_details.xlsx | bank_details               | 9                                 |
#
#  @ReleaseAppInfoM3
#  Scenario Outline: ACAUTOCAS-3805:  Validating Outward Cheque Returns with four digits
#    Given user is on CAS Login Page
#    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
#    When user is on personal information page
#    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_home>" and row <PersonalInfo_home_rowNum>
#    And user fills home page of personal information
#    And user reads data from the excel file "<BankCreditCardWB>" under sheet "<BankCreditCard_bankDetails>" and row <BankCreditCard_bankDetails_rowNum>
#    And user clicks on Bank and Credit Details
#    And user fills bank details and opens Add Manual Page
#    And user inserts Outward Cheque Returns with <var>
#    Then validate outward cheque returns
#    Examples:
#      | var      | SourceDataFile       | SheetName | RowNumber | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum |
#      | 4 digits | LoginDetailsCAS.xlsx | LoginData | 0         | personal_information.xlsx | home              | 24                       | bank_credit_card_details.xlsx | bank_details               | 7                                 |
#
#
#
#
#
#
