@Epic-Applicant_Information
@AuthoredBy-harshita.nayak
@ReviewedBy-harshprit.kumar
@TechReviewedBy-harshprit.kumar

@AppInfoAdoption
# Prerequisite-Bank Evaluation Period=12
# ${ApplicantType:["indiv"]}
Feature: Bank Details TestCases From Sqaush

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0


    #01_CAS-99519
  #FeatureID-ACAUTOCAS-172
  Scenario Outline: ACAUTOCAS-12841: Enter all the required details of bank details and cancel it warning message pop up for confirmation at <ApplicationStage> stage for <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user reads data from the excel file "<BankCreditCardWB>" under sheet "<BankCreditCard_bankDetails>" and row <BankCreditCard_bankDetails_rowNum>
    And user navigates to personal information page of "<ApplicationStage>"
    And user clicks on Bank and Credit Details
    And user delete existing bank details
    And user click on plus sign of Bank Details
    When user fills all the required details of bank details
    And user clicks on cancel button of bank details
    Then user should be able to validate warning message pop up for confirmation
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @Release @Part-1
    @ImplementedBy-manish.yadav2
    @Conventional
    Examples:
      | ProductType   | ApplicationStage   | Category | key | ApplicantType   | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum |
      | <ProductType> | <ApplicationStage> |          |     | <ApplicantType> | bank_credit_card_details.xlsx | bank_details               | 16                                |
# ${ ProductType : ["IHF","IAF"]}
# ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-harshita.nayak
    Examples:
      | ProductType   | ApplicationStage   | Category | key | ApplicantType   | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum |
      | <ProductType> | <ApplicationStage> |          |     | <ApplicantType> | bank_credit_card_details.xlsx | bank_details               | 16                                |

    #${ ProductType : ["IPF"]}
    #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
      #${ Category:["bonds","shares","metals"]}
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-harshita.nayak
    Examples:
      | ProductType   | ApplicationStage   | Category   | key | ApplicantType   | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum |
      | <ProductType> | <ApplicationStage> | <Category> |     | <ApplicantType> | bank_credit_card_details.xlsx | bank_details               | 16                                |
#${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
    #${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
    @NotImplemented
    Examples:
      | ProductType   | ApplicationStage   | Category | key | ApplicantType   |  | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum |
      | <ProductType> | <ApplicationStage> |          |     | <ApplicantType> |  | bank_credit_card_details.xlsx | bank_details               | 16                                |

    #1_CAS-25723
  #FeatureID-ACAUTOCAS-172
  Scenario Outline: ACAUTOCAS-12842: On Bank Details Screen following <field_accordions> should be present at <ApplicationStage> stage for <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user reads data from the excel file "<BankCreditCardWB>" under sheet "<BankCreditCard_bankDetails>" and row <BankCreditCard_bankDetails_rowNum>
    And user navigates to personal information page of "<ApplicationStage>"
    When user clicks on Bank and Credit Details
    And user click on plus sign of Bank Details
    Then "<field_accordions>" should be present in bank details
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @Release @Part-1
    @ImplementedBy-manish.yadav2
    @Conventional
    Examples:
      | ProductType   | ApplicationStage   | Category | key | ApplicantType   | field_accordions               | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum |
      | <ProductType> | <ApplicationStage> |          |     | <ApplicantType> | Bank Name                      | bank_credit_card_details.xlsx | bank_details               | 16                                |
      | <ProductType> | <ApplicationStage> |          |     | <ApplicantType> | Branch Name                    | bank_credit_card_details.xlsx | bank_details               | 16                                |
      | <ProductType> | <ApplicationStage> |          |     | <ApplicantType> | IFSC                           | bank_credit_card_details.xlsx | bank_details               | 16                                |
      | <ProductType> | <ApplicationStage> |          |     | <ApplicantType> | Type of Account                | bank_credit_card_details.xlsx | bank_details               | 16                                |
      | <ProductType> | <ApplicationStage> |          |     | <ApplicantType> | Account Number                 | bank_credit_card_details.xlsx | bank_details               | 16                                |
      | <ProductType> | <ApplicationStage> |          |     | <ApplicantType> | Account Opening Date           | bank_credit_card_details.xlsx | bank_details               | 16                                |
      | <ProductType> | <ApplicationStage> |          |     | <ApplicantType> | Nature Of Bank Account         | bank_credit_card_details.xlsx | bank_details               | 16                                |
      | <ProductType> | <ApplicationStage> |          |     | <ApplicantType> | Average Bank Balance           | bank_credit_card_details.xlsx | bank_details               | 16                                |
      | <ProductType> | <ApplicationStage> |          |     | <ApplicantType> | Account Status                 | bank_credit_card_details.xlsx | bank_details               | 16                                |
      | <ProductType> | <ApplicationStage> |          |     | <ApplicantType> | Source System                  | bank_credit_card_details.xlsx | bank_details               | 16                                |
      | <ProductType> | <ApplicationStage> |          |     | <ApplicantType> | Actions                        | bank_credit_card_details.xlsx | bank_details               | 16                                |
      | <ProductType> | <ApplicationStage> |          |     | <ApplicantType> | No. of Months Account Held     | bank_credit_card_details.xlsx | bank_details               | 16                                |
      | <ProductType> | <ApplicationStage> |          |     | <ApplicantType> | Default Account                | bank_credit_card_details.xlsx | bank_details               | 16                                |
      | <ProductType> | <ApplicationStage> |          |     | <ApplicantType> | Salary Account                 | bank_credit_card_details.xlsx | bank_details               | 16                                |
      | <ProductType> | <ApplicationStage> |          |     | <ApplicantType> | Repayment Account              | bank_credit_card_details.xlsx | bank_details               | 16                                |
      | <ProductType> | <ApplicationStage> |          |     | <ApplicantType> | No. of Inward Cheques Returned | bank_credit_card_details.xlsx | bank_details               | 16                                |
      | <ProductType> | <ApplicationStage> |          |     | <ApplicantType> | Add/View Bank Details          | bank_credit_card_details.xlsx | bank_details               | 16                                |
      | <ProductType> | <ApplicationStage> |          |     | <ApplicantType> | Add Manual Bank Details        | bank_credit_card_details.xlsx | bank_details               | 16                                |
      | <ProductType> | <ApplicationStage> |          |     | <ApplicantType> | Add(+)                         | bank_credit_card_details.xlsx | bank_details               | 16                                |
      | <ProductType> | <ApplicationStage> |          |     | <ApplicantType> | Consolidated Average Balance   | bank_credit_card_details.xlsx | bank_details               | 16                                |
# ${ ProductType : ["IHF","IAF"]}
# ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-harshita.nayak
    Examples:
      | ProductType   | ApplicationStage   | Category | key | ApplicantType   | field_accordions               | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum |
      | <ProductType> | <ApplicationStage> |          |     | <ApplicantType> | Bank Name                      | bank_credit_card_details.xlsx | bank_details               | 16                                |
      | <ProductType> | <ApplicationStage> |          |     | <ApplicantType> | Branch Name                    | bank_credit_card_details.xlsx | bank_details               | 16                                |
      | <ProductType> | <ApplicationStage> |          |     | <ApplicantType> | IFSC                           | bank_credit_card_details.xlsx | bank_details               | 16                                |
      | <ProductType> | <ApplicationStage> |          |     | <ApplicantType> | Type of Account                | bank_credit_card_details.xlsx | bank_details               | 16                                |
      | <ProductType> | <ApplicationStage> |          |     | <ApplicantType> | Account Number                 | bank_credit_card_details.xlsx | bank_details               | 16                                |
      | <ProductType> | <ApplicationStage> |          |     | <ApplicantType> | Account Opening Date           | bank_credit_card_details.xlsx | bank_details               | 16                                |
      | <ProductType> | <ApplicationStage> |          |     | <ApplicantType> | Nature Of Bank Account         | bank_credit_card_details.xlsx | bank_details               | 16                                |
      | <ProductType> | <ApplicationStage> |          |     | <ApplicantType> | Average Bank Balance           | bank_credit_card_details.xlsx | bank_details               | 16                                |
      | <ProductType> | <ApplicationStage> |          |     | <ApplicantType> | Account Status                 | bank_credit_card_details.xlsx | bank_details               | 16                                |
      | <ProductType> | <ApplicationStage> |          |     | <ApplicantType> | Source System                  | bank_credit_card_details.xlsx | bank_details               | 16                                |
      | <ProductType> | <ApplicationStage> |          |     | <ApplicantType> | Actions                        | bank_credit_card_details.xlsx | bank_details               | 16                                |
      | <ProductType> | <ApplicationStage> |          |     | <ApplicantType> | No. of Months Account Held     | bank_credit_card_details.xlsx | bank_details               | 16                                |
      | <ProductType> | <ApplicationStage> |          |     | <ApplicantType> | Default Account                | bank_credit_card_details.xlsx | bank_details               | 16                                |
      | <ProductType> | <ApplicationStage> |          |     | <ApplicantType> | Salary Account                 | bank_credit_card_details.xlsx | bank_details               | 16                                |
      | <ProductType> | <ApplicationStage> |          |     | <ApplicantType> | Repayment Account              | bank_credit_card_details.xlsx | bank_details               | 16                                |
      | <ProductType> | <ApplicationStage> |          |     | <ApplicantType> | No. of Inward Cheques Returned | bank_credit_card_details.xlsx | bank_details               | 16                                |
      | <ProductType> | <ApplicationStage> |          |     | <ApplicantType> | IBAN                           | bank_credit_card_details.xlsx | bank_details               | 16                                |
      | <ProductType> | <ApplicationStage> |          |     | <ApplicantType> | Bank Statement                 | bank_credit_card_details.xlsx | bank_details               | 16                                |
      | <ProductType> | <ApplicationStage> |          |     | <ApplicantType> | Add(+)                         | bank_credit_card_details.xlsx | bank_details               | 16                                |
      | <ProductType> | <ApplicationStage> |          |     | <ApplicantType> | Consolidated Average Balance   | bank_credit_card_details.xlsx | bank_details               | 16                                |
      | <ProductType> | <ApplicationStage> |          |     | <ApplicantType> | Account Title                  | bank_credit_card_details.xlsx | bank_details               | 16                                |
 # ${ ProductType : ["IPF"]}
# ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
  #${ Category:["bonds","shares","metals"]}
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-harshita.nayak
    Examples:
      | ProductType   | ApplicationStage   | Category   | key | ApplicantType   | field_accordions               | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum |
      | <ProductType> | <ApplicationStage> | <Category> |     | <ApplicantType> | Bank Name                      | bank_credit_card_details.xlsx | bank_details               | 16                                |
      | <ProductType> | <ApplicationStage> | <Category> |     | <ApplicantType> | Branch Name                    | bank_credit_card_details.xlsx | bank_details               | 16                                |
      | <ProductType> | <ApplicationStage> | <Category> |     | <ApplicantType> | IFSC                           | bank_credit_card_details.xlsx | bank_details               | 16                                |
      | <ProductType> | <ApplicationStage> | <Category> |     | <ApplicantType> | Type of Account                | bank_credit_card_details.xlsx | bank_details               | 16                                |
      | <ProductType> | <ApplicationStage> | <Category> |     | <ApplicantType> | Account Number                 | bank_credit_card_details.xlsx | bank_details               | 16                                |
      | <ProductType> | <ApplicationStage> | <Category> |     | <ApplicantType> | Account Opening Date           | bank_credit_card_details.xlsx | bank_details               | 16                                |
      | <ProductType> | <ApplicationStage> | <Category> |     | <ApplicantType> | Nature Of Bank Account         | bank_credit_card_details.xlsx | bank_details               | 16                                |
      | <ProductType> | <ApplicationStage> | <Category> |     | <ApplicantType> | Average Bank Balance           | bank_credit_card_details.xlsx | bank_details               | 16                                |
      | <ProductType> | <ApplicationStage> | <Category> |     | <ApplicantType> | Account Status                 | bank_credit_card_details.xlsx | bank_details               | 16                                |
      | <ProductType> | <ApplicationStage> | <Category> |     | <ApplicantType> | Source System                  | bank_credit_card_details.xlsx | bank_details               | 16                                |
      | <ProductType> | <ApplicationStage> | <Category> |     | <ApplicantType> | Actions                        | bank_credit_card_details.xlsx | bank_details               | 16                                |
      | <ProductType> | <ApplicationStage> | <Category> |     | <ApplicantType> | No. of Months Account Held     | bank_credit_card_details.xlsx | bank_details               | 16                                |
      | <ProductType> | <ApplicationStage> | <Category> |     | <ApplicantType> | Default Account                | bank_credit_card_details.xlsx | bank_details               | 16                                |
      | <ProductType> | <ApplicationStage> | <Category> |     | <ApplicantType> | Salary Account                 | bank_credit_card_details.xlsx | bank_details               | 16                                |
      | <ProductType> | <ApplicationStage> | <Category> |     | <ApplicantType> | Repayment Account              | bank_credit_card_details.xlsx | bank_details               | 16                                |
      | <ProductType> | <ApplicationStage> | <Category> |     | <ApplicantType> | No. of Inward Cheques Returned | bank_credit_card_details.xlsx | bank_details               | 16                                |
      | <ProductType> | <ApplicationStage> | <Category> |     | <ApplicantType> | IBAN                           | bank_credit_card_details.xlsx | bank_details               | 16                                |
      | <ProductType> | <ApplicationStage> | <Category> |     | <ApplicantType> | Bank Statement                 | bank_credit_card_details.xlsx | bank_details               | 16                                |
      | <ProductType> | <ApplicationStage> | <Category> |     | <ApplicantType> | Add(+)                         | bank_credit_card_details.xlsx | bank_details               | 16                                |
      | <ProductType> | <ApplicationStage> | <Category> |     | <ApplicantType> | Consolidated Average Balance   | bank_credit_card_details.xlsx | bank_details               | 16                                |
      | <ProductType> | <ApplicationStage> | <Category> |     | <ApplicantType> | Account Title                  | bank_credit_card_details.xlsx | bank_details               | 16                                |
 #${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
    #${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
    @NotImplemented
    Examples:
      | ProductType   | ApplicationStage   | Category | key | ApplicantType   | field_accordions               | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum |
      | <ProductType> | <ApplicationStage> |          |     | <ApplicantType> | Bank Name                      | bank_credit_card_details.xlsx | bank_details               | 16                                |
      | <ProductType> | <ApplicationStage> |          |     | <ApplicantType> | Branch Name                    | bank_credit_card_details.xlsx | bank_details               | 16                                |
      | <ProductType> | <ApplicationStage> |          |     | <ApplicantType> | IFSC                           | bank_credit_card_details.xlsx | bank_details               | 16                                |
      | <ProductType> | <ApplicationStage> |          |     | <ApplicantType> | Type of Account                | bank_credit_card_details.xlsx | bank_details               | 16                                |
      | <ProductType> | <ApplicationStage> |          |     | <ApplicantType> | Account Number                 | bank_credit_card_details.xlsx | bank_details               | 16                                |
      | <ProductType> | <ApplicationStage> |          |     | <ApplicantType> | Account Opening Date           | bank_credit_card_details.xlsx | bank_details               | 16                                |
      | <ProductType> | <ApplicationStage> |          |     | <ApplicantType> | Nature Of Bank Account         | bank_credit_card_details.xlsx | bank_details               | 16                                |
      | <ProductType> | <ApplicationStage> |          |     | <ApplicantType> | Average Bank Balance           | bank_credit_card_details.xlsx | bank_details               | 16                                |
      | <ProductType> | <ApplicationStage> |          |     | <ApplicantType> | Account Status                 | bank_credit_card_details.xlsx | bank_details               | 16                                |
      | <ProductType> | <ApplicationStage> |          |     | <ApplicantType> | Source System                  | bank_credit_card_details.xlsx | bank_details               | 16                                |
      | <ProductType> | <ApplicationStage> |          |     | <ApplicantType> | Actions                        | bank_credit_card_details.xlsx | bank_details               | 16                                |
      | <ProductType> | <ApplicationStage> |          |     | <ApplicantType> | No. of Months Account Held     | bank_credit_card_details.xlsx | bank_details               | 16                                |
      | <ProductType> | <ApplicationStage> |          |     | <ApplicantType> | Default Account                | bank_credit_card_details.xlsx | bank_details               | 16                                |
      | <ProductType> | <ApplicationStage> |          |     | <ApplicantType> | Salary Account                 | bank_credit_card_details.xlsx | bank_details               | 16                                |
      | <ProductType> | <ApplicationStage> |          |     | <ApplicantType> | Repayment Account              | bank_credit_card_details.xlsx | bank_details               | 16                                |
      | <ProductType> | <ApplicationStage> |          |     | <ApplicantType> | No. of Inward Cheques Returned | bank_credit_card_details.xlsx | bank_details               | 16                                |
      | <ProductType> | <ApplicationStage> |          |     | <ApplicantType> | Add/View Bank Details          | bank_credit_card_details.xlsx | bank_details               | 16                                |
      | <ProductType> | <ApplicationStage> |          |     | <ApplicantType> | Add Manual Bank Details        | bank_credit_card_details.xlsx | bank_details               | 16                                |
      | <ProductType> | <ApplicationStage> |          |     | <ApplicantType> | Add(+)                         | bank_credit_card_details.xlsx | bank_details               | 16                                |
      | <ProductType> | <ApplicationStage> |          |     | <ApplicantType> | Consolidated Average Balance   | bank_credit_card_details.xlsx | bank_details               | 16                                |


  #1_CAS-25723,03_49952
  #FeatureID-ACAUTOCAS-172
  Scenario Outline: ACAUTOCAS-12843: On Add View Bank Details link for Saving Account following <field_accordions> should be present at <ApplicationStage> stage for <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user reads data from the excel file "<BankCreditCardWB>" under sheet "<BankCreditCard_bankDetails>" and row <BankCreditCard_bankDetails_rowNum>
    And user navigates to personal information page of "<ApplicationStage>"
    And user clicks on Bank and Credit Details
    And user delete existing bank details
    And user click on plus sign of Bank Details
    When user select Type of Account as "Saving Account"
    And user reads data from the excel file "<BankCreditCardWB>" under sheet "<BankCreditCard_bankDetails>" and row <BankCreditCard_bankDetails_rowNum1>
    And user fills Bank Statement Details for present as Physical
    And user clicks on Add view Bank Details hyperlink
    Then on add view bank details following "<field_accordions>" should be present in bank details
    @Release @Part-1
    @Conventional
    @ImplementedBy-manish.yadav2
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Category | key | field_accordions              | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum | BankCreditCard_bankDetails_rowNum1 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Banking Evaluation Period     | bank_credit_card_details.xlsx | bank_details               | 16                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Browse                        | bank_credit_card_details.xlsx | bank_details               | 16                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Consider for Consolidated ABB | bank_credit_card_details.xlsx | bank_details               | 16                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Remarks                       | bank_credit_card_details.xlsx | bank_details               | 16                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Upload                        | bank_credit_card_details.xlsx | bank_details               | 16                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | OK Button                     | bank_credit_card_details.xlsx | bank_details               | 16                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Cancel                        | bank_credit_card_details.xlsx | bank_details               | 16                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | NRE/NRO Account               | bank_credit_card_details.xlsx | bank_details               | 16                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Download Template             | bank_credit_card_details.xlsx | bank_details               | 16                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Edit Online                   | bank_credit_card_details.xlsx | bank_details               | 16                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Previous Files                | bank_credit_card_details.xlsx | bank_details               | 16                                | 49                                 |
# ${ ProductType : ["IHF","IAF"]}
# ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-harshita.nayak
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Category | key | field_accordions              | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum | BankCreditCard_bankDetails_rowNum1 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Banking Evaluation Period     | bank_credit_card_details.xlsx | bank_details               | 16                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Browse                        | bank_credit_card_details.xlsx | bank_details               | 16                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Consider for Consolidated ABB | bank_credit_card_details.xlsx | bank_details               | 16                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Remarks                       | bank_credit_card_details.xlsx | bank_details               | 16                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Upload                        | bank_credit_card_details.xlsx | bank_details               | 16                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | OK Button                     | bank_credit_card_details.xlsx | bank_details               | 16                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Cancel                        | bank_credit_card_details.xlsx | bank_details               | 16                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | NRE/NRO Account               | bank_credit_card_details.xlsx | bank_details               | 16                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Download Template             | bank_credit_card_details.xlsx | bank_details               | 16                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Edit Online                   | bank_credit_card_details.xlsx | bank_details               | 16                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Previous Files                | bank_credit_card_details.xlsx | bank_details               | 16                                | 49                                 |
# ${ ProductType : ["IPF"]}
# ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
  #${ Category:["bonds","shares","metals"]}
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-harshita.nayak
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Category   | key | field_accordions              | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum | BankCreditCard_bankDetails_rowNum1 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Banking Evaluation Period     | bank_credit_card_details.xlsx | bank_details               | 16                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Browse                        | bank_credit_card_details.xlsx | bank_details               | 16                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Consider for Consolidated ABB | bank_credit_card_details.xlsx | bank_details               | 16                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Remarks                       | bank_credit_card_details.xlsx | bank_details               | 16                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Upload                        | bank_credit_card_details.xlsx | bank_details               | 16                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | OK Button                     | bank_credit_card_details.xlsx | bank_details               | 16                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Cancel                        | bank_credit_card_details.xlsx | bank_details               | 16                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | NRE/NRO Account               | bank_credit_card_details.xlsx | bank_details               | 16                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Download Template             | bank_credit_card_details.xlsx | bank_details               | 16                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Edit Online                   | bank_credit_card_details.xlsx | bank_details               | 16                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Previous Files                | bank_credit_card_details.xlsx | bank_details               | 16                                | 49                                 |
    #${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
#${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
    @NotImplemented
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Category | key | field_accordions              | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum | BankCreditCard_bankDetails_rowNum1 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Banking Evaluation Period     | bank_credit_card_details.xlsx | bank_details               | 16                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Browse                        | bank_credit_card_details.xlsx | bank_details               | 16                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Consider for Consolidated ABB | bank_credit_card_details.xlsx | bank_details               | 16                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Remarks                       | bank_credit_card_details.xlsx | bank_details               | 16                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Upload                        | bank_credit_card_details.xlsx | bank_details               | 16                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | OK Button                     | bank_credit_card_details.xlsx | bank_details               | 16                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Cancel                        | bank_credit_card_details.xlsx | bank_details               | 16                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | NRE/NRO Account               | bank_credit_card_details.xlsx | bank_details               | 16                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Download Template             | bank_credit_card_details.xlsx | bank_details               | 16                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Edit Online                   | bank_credit_card_details.xlsx | bank_details               | 16                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Previous Files                | bank_credit_card_details.xlsx | bank_details               | 16                                | 49                                 |


    #1_CAS-25723,03_49952
  #FeatureID-ACAUTOCAS-172
  Scenario Outline: ACAUTOCAS-12844: On Add View Bank Details link for Current Account following <field_accordions> should be present at <ApplicationStage> stage for <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user reads data from the excel file "<BankCreditCardWB>" under sheet "<BankCreditCard_bankDetails>" and row <BankCreditCard_bankDetails_rowNum>
    And user navigates to personal information page of "<ApplicationStage>"
    And user clicks on Bank and Credit Details
    And user delete existing bank details
    And user click on plus sign of Bank Details
    When user select Type of Account as "Current Account"
    And user reads data from the excel file "<BankCreditCardWB>" under sheet "<BankCreditCard_bankDetails>" and row <BankCreditCard_bankDetails_rowNum1>
    And user fills Bank Statement Details for present as Physical
    And user clicks on Add view Bank Details hyperlink
    Then on add view bank details following "<field_accordions>" should be present in bank details
    @Release @Part-1
    @ImplementedBy-manish.yadav2
    @Conventional
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Category | key | field_accordions              | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum | BankCreditCard_bankDetails_rowNum1 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Banking Evaluation Period     | bank_credit_card_details.xlsx | bank_details               | 17                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Browse                        | bank_credit_card_details.xlsx | bank_details               | 17                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Consider for Consolidated ABB | bank_credit_card_details.xlsx | bank_details               | 17                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Remarks                       | bank_credit_card_details.xlsx | bank_details               | 17                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Upload                        | bank_credit_card_details.xlsx | bank_details               | 17                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | OK Button                     | bank_credit_card_details.xlsx | bank_details               | 17                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Cancel                        | bank_credit_card_details.xlsx | bank_details               | 17                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | NRE/NRO Account               | bank_credit_card_details.xlsx | bank_details               | 17                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Download Template             | bank_credit_card_details.xlsx | bank_details               | 17                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Edit Online                   | bank_credit_card_details.xlsx | bank_details               | 17                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Previous Files                | bank_credit_card_details.xlsx | bank_details               | 17                                | 49                                 |
# ${ ProductType : ["IHF","IAF"]}
# ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-harshita.nayak
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Category | key | field_accordions              | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum | BankCreditCard_bankDetails_rowNum1 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Banking Evaluation Period     | bank_credit_card_details.xlsx | bank_details               | 17                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Browse                        | bank_credit_card_details.xlsx | bank_details               | 17                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Consider for Consolidated ABB | bank_credit_card_details.xlsx | bank_details               | 17                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Remarks                       | bank_credit_card_details.xlsx | bank_details               | 17                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Upload                        | bank_credit_card_details.xlsx | bank_details               | 17                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | OK Button                     | bank_credit_card_details.xlsx | bank_details               | 17                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Cancel                        | bank_credit_card_details.xlsx | bank_details               | 17                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | NRE/NRO Account               | bank_credit_card_details.xlsx | bank_details               | 17                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Download Template             | bank_credit_card_details.xlsx | bank_details               | 17                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Edit Online                   | bank_credit_card_details.xlsx | bank_details               | 17                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Previous Files                | bank_credit_card_details.xlsx | bank_details               | 17                                | 49                                 |

    # ${ ProductType : ["IPF"]}
# ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${ Category:["bonds","shares","metals"]}
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-harshita.nayak
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Category   | key | field_accordions              | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum | BankCreditCard_bankDetails_rowNum1 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Banking Evaluation Period     | bank_credit_card_details.xlsx | bank_details               | 17                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Browse                        | bank_credit_card_details.xlsx | bank_details               | 17                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Consider for Consolidated ABB | bank_credit_card_details.xlsx | bank_details               | 17                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Remarks                       | bank_credit_card_details.xlsx | bank_details               | 17                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Upload                        | bank_credit_card_details.xlsx | bank_details               | 17                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | OK Button                     | bank_credit_card_details.xlsx | bank_details               | 17                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Cancel                        | bank_credit_card_details.xlsx | bank_details               | 17                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | NRE/NRO Account               | bank_credit_card_details.xlsx | bank_details               | 17                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Download Template             | bank_credit_card_details.xlsx | bank_details               | 17                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Edit Online                   | bank_credit_card_details.xlsx | bank_details               | 17                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Previous Files                | bank_credit_card_details.xlsx | bank_details               | 17                                | 49                                 |
#  ${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
#${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
    @NotImplemented
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Category | key | field_accordions              | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum | BankCreditCard_bankDetails_rowNum1 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Banking Evaluation Period     | bank_credit_card_details.xlsx | bank_details               | 17                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Browse                        | bank_credit_card_details.xlsx | bank_details               | 17                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Consider for Consolidated ABB | bank_credit_card_details.xlsx | bank_details               | 17                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Remarks                       | bank_credit_card_details.xlsx | bank_details               | 17                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Upload                        | bank_credit_card_details.xlsx | bank_details               | 17                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | OK Button                     | bank_credit_card_details.xlsx | bank_details               | 17                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Cancel                        | bank_credit_card_details.xlsx | bank_details               | 17                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | NRE/NRO Account               | bank_credit_card_details.xlsx | bank_details               | 17                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Download Template             | bank_credit_card_details.xlsx | bank_details               | 17                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Edit Online                   | bank_credit_card_details.xlsx | bank_details               | 17                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Previous Files                | bank_credit_card_details.xlsx | bank_details               | 17                                | 49                                 |


    #1_CAS-25723
  #FeatureID-ACAUTOCAS-172
  Scenario Outline: ACAUTOCAS-12845: On Add View Bank Details link for KCC Account following <field_accordions> should be present at <ApplicationStage> stage for <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user reads data from the excel file "<BankCreditCardWB>" under sheet "<BankCreditCard_bankDetails>" and row <BankCreditCard_bankDetails_rowNum>
    And user navigates to personal information page of "<ApplicationStage>"
    And user clicks on Bank and Credit Details
    And user delete existing bank details
    And user click on plus sign of Bank Details
    When user select Type of Account as "KCC Account"
    And user reads data from the excel file "<BankCreditCardWB>" under sheet "<BankCreditCard_bankDetails>" and row <BankCreditCard_bankDetails_rowNum1>
    And user fills Bank Statement Details for present as Physical
    And user clicks on Add view Bank Details hyperlink
    Then on add view bank details following "<field_accordions>" should be present in bank details
    @Release @Part-1
    @ImplementedBy-manish.yadav2
    @Conventional
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Category | key | field_accordions          | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum | BankCreditCard_bankDetails_rowNum1 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Banking Evaluation Period | bank_credit_card_details.xlsx | bank_details               | 18                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Browse                    | bank_credit_card_details.xlsx | bank_details               | 18                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Remarks                   | bank_credit_card_details.xlsx | bank_details               | 18                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Upload                    | bank_credit_card_details.xlsx | bank_details               | 18                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | OK Button                 | bank_credit_card_details.xlsx | bank_details               | 18                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Cancel                    | bank_credit_card_details.xlsx | bank_details               | 18                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | NRE/NRO Account           | bank_credit_card_details.xlsx | bank_details               | 18                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Download Template         | bank_credit_card_details.xlsx | bank_details               | 18                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Edit Online               | bank_credit_card_details.xlsx | bank_details               | 18                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Previous Files            | bank_credit_card_details.xlsx | bank_details               | 18                                | 49                                 |
# ${ ProductType : ["IHF","IAF"]}
# ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-harshita.nayak
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Category | key | field_accordions          | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum | BankCreditCard_bankDetails_rowNum1 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Banking Evaluation Period | bank_credit_card_details.xlsx | bank_details               | 18                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Browse                    | bank_credit_card_details.xlsx | bank_details               | 18                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Remarks                   | bank_credit_card_details.xlsx | bank_details               | 18                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Upload                    | bank_credit_card_details.xlsx | bank_details               | 18                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | OK Button                 | bank_credit_card_details.xlsx | bank_details               | 18                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Cancel                    | bank_credit_card_details.xlsx | bank_details               | 18                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | NRE/NRO Account           | bank_credit_card_details.xlsx | bank_details               | 18                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Download Template         | bank_credit_card_details.xlsx | bank_details               | 18                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Edit Online               | bank_credit_card_details.xlsx | bank_details               | 18                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Previous Files            | bank_credit_card_details.xlsx | bank_details               | 18                                | 49                                 |
 # ${ ProductType : ["IPF"]}
# ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${ Category:["bonds","shares","metals"]}
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-harshita.nayak
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Category   | key | field_accordions          | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum | BankCreditCard_bankDetails_rowNum1 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Banking Evaluation Period | bank_credit_card_details.xlsx | bank_details               | 18                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Browse                    | bank_credit_card_details.xlsx | bank_details               | 18                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Remarks                   | bank_credit_card_details.xlsx | bank_details               | 18                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Upload                    | bank_credit_card_details.xlsx | bank_details               | 18                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | OK Button                 | bank_credit_card_details.xlsx | bank_details               | 18                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Cancel                    | bank_credit_card_details.xlsx | bank_details               | 18                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | NRE/NRO Account           | bank_credit_card_details.xlsx | bank_details               | 18                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Download Template         | bank_credit_card_details.xlsx | bank_details               | 18                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Edit Online               | bank_credit_card_details.xlsx | bank_details               | 18                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Previous Files            | bank_credit_card_details.xlsx | bank_details               | 18                                | 49                                 |
 #${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
#${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
    @NotImplemented
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Category | key | field_accordions          | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum | BankCreditCard_bankDetails_rowNum1 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Banking Evaluation Period | bank_credit_card_details.xlsx | bank_details               | 18                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Browse                    | bank_credit_card_details.xlsx | bank_details               | 18                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Remarks                   | bank_credit_card_details.xlsx | bank_details               | 18                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Upload                    | bank_credit_card_details.xlsx | bank_details               | 18                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | OK Button                 | bank_credit_card_details.xlsx | bank_details               | 18                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Cancel                    | bank_credit_card_details.xlsx | bank_details               | 18                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | NRE/NRO Account           | bank_credit_card_details.xlsx | bank_details               | 18                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Download Template         | bank_credit_card_details.xlsx | bank_details               | 18                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Edit Online               | bank_credit_card_details.xlsx | bank_details               | 18                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Previous Files            | bank_credit_card_details.xlsx | bank_details               | 18                                | 49                                 |


   #1_CAS-25723
  #FeatureID-ACAUTOCAS-172
  Scenario Outline: ACAUTOCAS-12846: On Add View Bank Details link for Cash Credit following <field_accordions> should be present at <ApplicationStage> stage for <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user reads data from the excel file "<BankCreditCardWB>" under sheet "<BankCreditCard_bankDetails>" and row <BankCreditCard_bankDetails_rowNum>
    And user navigates to personal information page of "<ApplicationStage>"
    And user clicks on Bank and Credit Details
    And user delete existing bank details
    And user click on plus sign of Bank Details
    When user select Type of Account as "Cash Credit"
    And user reads data from the excel file "<BankCreditCardWB>" under sheet "<BankCreditCard_bankDetails>" and row <BankCreditCard_bankDetails_rowNum1>
    And user fills Bank Statement Details for present as Physical
    And user clicks on Add view Bank Details hyperlink
    Then on add view bank details following "<field_accordions>" should be present in bank details
    @Release @Part-1
    @ImplementedBy-manish.yadav2
    @Conventional
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Category | key | field_accordions              | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum | BankCreditCard_bankDetails_rowNum1 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Banking Evaluation Period     | bank_credit_card_details.xlsx | bank_details               | 19                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Browse                        | bank_credit_card_details.xlsx | bank_details               | 19                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Consider for Consolidated ABB | bank_credit_card_details.xlsx | bank_details               | 19                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Remarks                       | bank_credit_card_details.xlsx | bank_details               | 19                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Upload                        | bank_credit_card_details.xlsx | bank_details               | 19                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | OK Button                     | bank_credit_card_details.xlsx | bank_details               | 19                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Cancel                        | bank_credit_card_details.xlsx | bank_details               | 19                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | NRE/NRO Account               | bank_credit_card_details.xlsx | bank_details               | 19                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Download Template             | bank_credit_card_details.xlsx | bank_details               | 19                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Edit Online                   | bank_credit_card_details.xlsx | bank_details               | 19                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Previous Files                | bank_credit_card_details.xlsx | bank_details               | 19                                | 49                                 |
# ${ ProductType : ["IHF","IAF"]}
# ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-harshita.nayak
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Category | key | field_accordions              | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum | BankCreditCard_bankDetails_rowNum1 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Banking Evaluation Period     | bank_credit_card_details.xlsx | bank_details               | 19                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Browse                        | bank_credit_card_details.xlsx | bank_details               | 19                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Consider for Consolidated ABB | bank_credit_card_details.xlsx | bank_details               | 19                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Remarks                       | bank_credit_card_details.xlsx | bank_details               | 19                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Upload                        | bank_credit_card_details.xlsx | bank_details               | 19                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | OK Button                     | bank_credit_card_details.xlsx | bank_details               | 19                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Cancel                        | bank_credit_card_details.xlsx | bank_details               | 19                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | NRE/NRO Account               | bank_credit_card_details.xlsx | bank_details               | 19                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Download Template             | bank_credit_card_details.xlsx | bank_details               | 19                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Edit Online                   | bank_credit_card_details.xlsx | bank_details               | 19                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Previous Files                | bank_credit_card_details.xlsx | bank_details               | 19                                | 49                                 |
    # ${ ProductType : ["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${ Category:["bonds","shares","metals"]}
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-harshita.nayak
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Category   | key | field_accordions              | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum | BankCreditCard_bankDetails_rowNum1 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Banking Evaluation Period     | bank_credit_card_details.xlsx | bank_details               | 19                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Browse                        | bank_credit_card_details.xlsx | bank_details               | 19                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Consider for Consolidated ABB | bank_credit_card_details.xlsx | bank_details               | 19                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Remarks                       | bank_credit_card_details.xlsx | bank_details               | 19                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Upload                        | bank_credit_card_details.xlsx | bank_details               | 19                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | OK Button                     | bank_credit_card_details.xlsx | bank_details               | 19                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Cancel                        | bank_credit_card_details.xlsx | bank_details               | 19                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | NRE/NRO Account               | bank_credit_card_details.xlsx | bank_details               | 19                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Download Template             | bank_credit_card_details.xlsx | bank_details               | 19                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Edit Online                   | bank_credit_card_details.xlsx | bank_details               | 19                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Previous Files                | bank_credit_card_details.xlsx | bank_details               | 19                                | 49                                 |
    #${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
#${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
    @NotImplemented
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Category | key | field_accordions              | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum | BankCreditCard_bankDetails_rowNum1 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Banking Evaluation Period     | bank_credit_card_details.xlsx | bank_details               | 19                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Browse                        | bank_credit_card_details.xlsx | bank_details               | 19                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Consider for Consolidated ABB | bank_credit_card_details.xlsx | bank_details               | 19                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Remarks                       | bank_credit_card_details.xlsx | bank_details               | 19                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Upload                        | bank_credit_card_details.xlsx | bank_details               | 19                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | OK Button                     | bank_credit_card_details.xlsx | bank_details               | 19                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Cancel                        | bank_credit_card_details.xlsx | bank_details               | 19                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | NRE/NRO Account               | bank_credit_card_details.xlsx | bank_details               | 19                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Download Template             | bank_credit_card_details.xlsx | bank_details               | 19                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Edit Online                   | bank_credit_card_details.xlsx | bank_details               | 19                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Previous Files                | bank_credit_card_details.xlsx | bank_details               | 19                                | 49                                 |

   #1_CAS-25723
  #FeatureID-ACAUTOCAS-172
  Scenario Outline: ACAUTOCAS-12847: On Add View Bank Details link for Over Draft Account following <field_accordions> should be present at <ApplicationStage> stage for <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user reads data from the excel file "<BankCreditCardWB>" under sheet "<BankCreditCard_bankDetails>" and row <BankCreditCard_bankDetails_rowNum>
    And user navigates to personal information page of "<ApplicationStage>"
    And user clicks on Bank and Credit Details
    And user delete existing bank details
    And user click on plus sign of Bank Details
    When user select Type of Account as "Over Draft Account"
    And user reads data from the excel file "<BankCreditCardWB>" under sheet "<BankCreditCard_bankDetails>" and row <BankCreditCard_bankDetails_rowNum1>
    And user fills Bank Statement Details for present as Physical
    And user clicks on Add view Bank Details hyperlink
    Then on add view bank details following "<field_accordions>" should be present in bank details
    @Release @Part-1
    @Conventional
    @ImplementedBy-manish.yadav2
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Category | key | field_accordions          | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum | BankCreditCard_bankDetails_rowNum1 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Banking Evaluation Period | bank_credit_card_details.xlsx | bank_details               | 20                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Browse                    | bank_credit_card_details.xlsx | bank_details               | 20                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Remarks                   | bank_credit_card_details.xlsx | bank_details               | 20                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Upload                    | bank_credit_card_details.xlsx | bank_details               | 20                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | OK Button                 | bank_credit_card_details.xlsx | bank_details               | 20                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Cancel                    | bank_credit_card_details.xlsx | bank_details               | 20                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | NRE/NRO Account           | bank_credit_card_details.xlsx | bank_details               | 20                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Download Template         | bank_credit_card_details.xlsx | bank_details               | 20                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Edit Online               | bank_credit_card_details.xlsx | bank_details               | 20                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Previous Files            | bank_credit_card_details.xlsx | bank_details               | 20                                | 49                                 |
# ${ ProductType : ["IHF","IAF"]}
# ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-harshita.nayak
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Category | key | field_accordions          | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum | BankCreditCard_bankDetails_rowNum1 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Banking Evaluation Period | bank_credit_card_details.xlsx | bank_details               | 20                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Browse                    | bank_credit_card_details.xlsx | bank_details               | 20                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Remarks                   | bank_credit_card_details.xlsx | bank_details               | 20                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Upload                    | bank_credit_card_details.xlsx | bank_details               | 20                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | OK Button                 | bank_credit_card_details.xlsx | bank_details               | 20                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Cancel                    | bank_credit_card_details.xlsx | bank_details               | 20                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | NRE/NRO Account           | bank_credit_card_details.xlsx | bank_details               | 20                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Download Template         | bank_credit_card_details.xlsx | bank_details               | 20                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Edit Online               | bank_credit_card_details.xlsx | bank_details               | 20                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Previous Files            | bank_credit_card_details.xlsx | bank_details               | 20                                | 49                                 |
   # ${ ProductType : ["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${ Category:["bonds","shares","metals"]}
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-harshita.nayak
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Category   | key | field_accordions          | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum | BankCreditCard_bankDetails_rowNum1 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Banking Evaluation Period | bank_credit_card_details.xlsx | bank_details               | 20                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Browse                    | bank_credit_card_details.xlsx | bank_details               | 20                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Remarks                   | bank_credit_card_details.xlsx | bank_details               | 20                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Upload                    | bank_credit_card_details.xlsx | bank_details               | 20                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | OK Button                 | bank_credit_card_details.xlsx | bank_details               | 20                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Cancel                    | bank_credit_card_details.xlsx | bank_details               | 20                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | NRE/NRO Account           | bank_credit_card_details.xlsx | bank_details               | 20                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Download Template         | bank_credit_card_details.xlsx | bank_details               | 20                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Edit Online               | bank_credit_card_details.xlsx | bank_details               | 20                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Previous Files            | bank_credit_card_details.xlsx | bank_details               | 20                                | 49                                 |
      #${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
    #${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
    @NotImplemented
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Category | key | field_accordions          | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum | BankCreditCard_bankDetails_rowNum1 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Banking Evaluation Period | bank_credit_card_details.xlsx | bank_details               | 20                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Browse                    | bank_credit_card_details.xlsx | bank_details               | 20                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Remarks                   | bank_credit_card_details.xlsx | bank_details               | 20                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Upload                    | bank_credit_card_details.xlsx | bank_details               | 20                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | OK Button                 | bank_credit_card_details.xlsx | bank_details               | 20                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Cancel                    | bank_credit_card_details.xlsx | bank_details               | 20                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | NRE/NRO Account           | bank_credit_card_details.xlsx | bank_details               | 20                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Download Template         | bank_credit_card_details.xlsx | bank_details               | 20                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Edit Online               | bank_credit_card_details.xlsx | bank_details               | 20                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Previous Files            | bank_credit_card_details.xlsx | bank_details               | 20                                | 49                                 |

   #2_CAS-25723,4_CAS-25723,02_49952
  #FeatureID-ACAUTOCAS-172
  Scenario Outline: ACAUTOCAS-12848: On Add Manual Bank Details link for Saving Account following <field_accordions> should be present at <ApplicationStage> stage for <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user reads data from the excel file "<BankCreditCardWB>" under sheet "<BankCreditCard_bankDetails>" and row <BankCreditCard_bankDetails_rowNum>
    And user navigates to personal information page of "<ApplicationStage>"
    And user clicks on Bank and Credit Details
    And user delete existing bank details
    And user click on plus sign of Bank Details
    When user select Type of Account as "Saving Account"
    And user reads data from the excel file "<BankCreditCardWB>" under sheet "<BankCreditCard_bankDetails>" and row <BankCreditCard_bankDetails_rowNum1>
    And user fills Bank Statement Details for present as Physical
    And user clicks on Add Manual Bank Details hyperlink
    Then on add manual bank details following "<field_accordions>" should be present in bank details
    @Release @Part-1
    @Conventional
    @ImplementedBy-manish.yadav2
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Category | key | field_accordions              | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum | BankCreditCard_bankDetails_rowNum1 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Banking Evaluation Period     | bank_credit_card_details.xlsx | bank_details               | 16                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Account Type                  | bank_credit_card_details.xlsx | bank_details               | 16                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Consider for Consolidated ABB | bank_credit_card_details.xlsx | bank_details               | 16                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | NRE/NRO Account               | bank_credit_card_details.xlsx | bank_details               | 16                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Account Number                | bank_credit_card_details.xlsx | bank_details               | 16                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Account Opening Date          | bank_credit_card_details.xlsx | bank_details               | 16                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | No. of Months Account Held    | bank_credit_card_details.xlsx | bank_details               | 16                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | No. of Credit Transactions    | bank_credit_card_details.xlsx | bank_details               | 16                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | No. of Debit Transactions     | bank_credit_card_details.xlsx | bank_details               | 16                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Minimum Balance               | bank_credit_card_details.xlsx | bank_details               | 16                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Average Balance               | bank_credit_card_details.xlsx | bank_details               | 16                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Outward Cheque Returns        | bank_credit_card_details.xlsx | bank_details               | 16                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Withdrawal Amount             | bank_credit_card_details.xlsx | bank_details               | 16                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Bounce Cheques                | bank_credit_card_details.xlsx | bank_details               | 16                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Remarks                       | bank_credit_card_details.xlsx | bank_details               | 16                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Sanction Limit Fixed Amount   | bank_credit_card_details.xlsx | bank_details               | 16                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | OK Button                     | bank_credit_card_details.xlsx | bank_details               | 16                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Cancel                        | bank_credit_card_details.xlsx | bank_details               | 16                                | 49                                 |
# ${ ProductType : ["IHF","IAF"]}
# ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-harshita.nayak
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Category | key | field_accordions              | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum | BankCreditCard_bankDetails_rowNum1 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Banking Evaluation Period     | bank_credit_card_details.xlsx | bank_details               | 16                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Account Type                  | bank_credit_card_details.xlsx | bank_details               | 16                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Consider for Consolidated ABB | bank_credit_card_details.xlsx | bank_details               | 16                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | NRE/NRO Account               | bank_credit_card_details.xlsx | bank_details               | 16                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Account Number                | bank_credit_card_details.xlsx | bank_details               | 16                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Account Opening Date          | bank_credit_card_details.xlsx | bank_details               | 16                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | No. of Months Account Held    | bank_credit_card_details.xlsx | bank_details               | 16                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | No. of Credit Transactions    | bank_credit_card_details.xlsx | bank_details               | 16                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | No. of Debit Transactions     | bank_credit_card_details.xlsx | bank_details               | 16                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Minimum Balance               | bank_credit_card_details.xlsx | bank_details               | 16                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Average Balance               | bank_credit_card_details.xlsx | bank_details               | 16                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Outward Cheque Returns        | bank_credit_card_details.xlsx | bank_details               | 16                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Withdrawal Amount             | bank_credit_card_details.xlsx | bank_details               | 16                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Bounce Cheques                | bank_credit_card_details.xlsx | bank_details               | 16                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Remarks                       | bank_credit_card_details.xlsx | bank_details               | 16                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Sanction Limit Fixed Amount   | bank_credit_card_details.xlsx | bank_details               | 16                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | OK Button                     | bank_credit_card_details.xlsx | bank_details               | 16                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Cancel                        | bank_credit_card_details.xlsx | bank_details               | 16                                | 49                                 |
   # ${ ProductType : ["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${ Category:["bonds","shares","metals"]}
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-harshita.nayak
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Category   | key | field_accordions              | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum | BankCreditCard_bankDetails_rowNum1 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Banking Evaluation Period     | bank_credit_card_details.xlsx | bank_details               | 16                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Account Type                  | bank_credit_card_details.xlsx | bank_details               | 16                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Consider for Consolidated ABB | bank_credit_card_details.xlsx | bank_details               | 16                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | NRE/NRO Account               | bank_credit_card_details.xlsx | bank_details               | 16                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Account Number                | bank_credit_card_details.xlsx | bank_details               | 16                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Account Opening Date          | bank_credit_card_details.xlsx | bank_details               | 16                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | No. of Months Account Held    | bank_credit_card_details.xlsx | bank_details               | 16                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | No. of Credit Transactions    | bank_credit_card_details.xlsx | bank_details               | 16                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | No. of Debit Transactions     | bank_credit_card_details.xlsx | bank_details               | 16                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Minimum Balance               | bank_credit_card_details.xlsx | bank_details               | 16                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Average Balance               | bank_credit_card_details.xlsx | bank_details               | 16                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Outward Cheque Returns        | bank_credit_card_details.xlsx | bank_details               | 16                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Withdrawal Amount             | bank_credit_card_details.xlsx | bank_details               | 16                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Bounce Cheques                | bank_credit_card_details.xlsx | bank_details               | 16                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Remarks                       | bank_credit_card_details.xlsx | bank_details               | 16                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Sanction Limit Fixed Amount   | bank_credit_card_details.xlsx | bank_details               | 16                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | OK Button                     | bank_credit_card_details.xlsx | bank_details               | 16                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Cancel                        | bank_credit_card_details.xlsx | bank_details               | 16                                | 49                                 |

  #${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
#${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
    @NotImplemented
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Category | key | field_accordions              | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum | BankCreditCard_bankDetails_rowNum1 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Banking Evaluation Period     | bank_credit_card_details.xlsx | bank_details               | 16                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Account Type                  | bank_credit_card_details.xlsx | bank_details               | 16                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Consider for Consolidated ABB | bank_credit_card_details.xlsx | bank_details               | 16                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | NRE/NRO Account               | bank_credit_card_details.xlsx | bank_details               | 16                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Account Number                | bank_credit_card_details.xlsx | bank_details               | 16                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Account Opening Date          | bank_credit_card_details.xlsx | bank_details               | 16                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | No. of Months Account Held    | bank_credit_card_details.xlsx | bank_details               | 16                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | No. of Credit Transactions    | bank_credit_card_details.xlsx | bank_details               | 16                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | No. of Debit Transactions     | bank_credit_card_details.xlsx | bank_details               | 16                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Minimum Balance               | bank_credit_card_details.xlsx | bank_details               | 16                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Average Balance               | bank_credit_card_details.xlsx | bank_details               | 16                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Outward Cheque Returns        | bank_credit_card_details.xlsx | bank_details               | 16                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Withdrawal Amount             | bank_credit_card_details.xlsx | bank_details               | 16                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Bounce Cheques                | bank_credit_card_details.xlsx | bank_details               | 16                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Remarks                       | bank_credit_card_details.xlsx | bank_details               | 16                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Sanction Limit Fixed Amount   | bank_credit_card_details.xlsx | bank_details               | 16                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | OK Button                     | bank_credit_card_details.xlsx | bank_details               | 16                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Cancel                        | bank_credit_card_details.xlsx | bank_details               | 16                                | 49                                 |

   #2_CAS-25723,4_CAS-25723,02_49952
  #FeatureID-ACAUTOCAS-172
  Scenario Outline: ACAUTOCAS-12849: On Add Manual Bank Details link for Current Account following <field_accordions> should be present at <ApplicationStage> stage for <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user reads data from the excel file "<BankCreditCardWB>" under sheet "<BankCreditCard_bankDetails>" and row <BankCreditCard_bankDetails_rowNum>
    And user navigates to personal information page of "<ApplicationStage>"
    And user clicks on Bank and Credit Details
    And user delete existing bank details
    And user click on plus sign of Bank Details
    When user select Type of Account as "Current Account"
    And user reads data from the excel file "<BankCreditCardWB>" under sheet "<BankCreditCard_bankDetails>" and row <BankCreditCard_bankDetails_rowNum1>
    And user fills Bank Statement Details for present as Physical
    And user clicks on Add Manual Bank Details hyperlink
    Then on add manual bank details following "<field_accordions>" should be present in bank details
    @Release @Part-1
    @Conventional
    @ImplementedBy-manish.yadav2
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Category | key | field_accordions              | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum | BankCreditCard_bankDetails_rowNum1 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Banking Evaluation Period     | bank_credit_card_details.xlsx | bank_details               | 17                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Account Type                  | bank_credit_card_details.xlsx | bank_details               | 17                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Consider for Consolidated ABB | bank_credit_card_details.xlsx | bank_details               | 17                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | NRE/NRO Account               | bank_credit_card_details.xlsx | bank_details               | 17                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Account Number                | bank_credit_card_details.xlsx | bank_details               | 17                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Account Opening Date          | bank_credit_card_details.xlsx | bank_details               | 17                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | No. of Months Account Held    | bank_credit_card_details.xlsx | bank_details               | 17                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | No. of Credit Transactions    | bank_credit_card_details.xlsx | bank_details               | 17                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | No. of Debit Transactions     | bank_credit_card_details.xlsx | bank_details               | 17                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Minimum Balance               | bank_credit_card_details.xlsx | bank_details               | 17                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Average Balance               | bank_credit_card_details.xlsx | bank_details               | 17                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Outward Cheque Returns        | bank_credit_card_details.xlsx | bank_details               | 17                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Withdrawal Amount             | bank_credit_card_details.xlsx | bank_details               | 17                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Bounce Cheques                | bank_credit_card_details.xlsx | bank_details               | 17                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Remarks                       | bank_credit_card_details.xlsx | bank_details               | 17                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Sanction Limit Fixed Amount   | bank_credit_card_details.xlsx | bank_details               | 17                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | OK Button                     | bank_credit_card_details.xlsx | bank_details               | 17                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Cancel                        | bank_credit_card_details.xlsx | bank_details               | 17                                | 49                                 |
# ${ ProductType : ["IHF","IAF"]}
# ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-harshita.nayak
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Category | key | field_accordions              | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum | BankCreditCard_bankDetails_rowNum1 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Banking Evaluation Period     | bank_credit_card_details.xlsx | bank_details               | 17                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Account Type                  | bank_credit_card_details.xlsx | bank_details               | 17                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Consider for Consolidated ABB | bank_credit_card_details.xlsx | bank_details               | 17                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | NRE/NRO Account               | bank_credit_card_details.xlsx | bank_details               | 17                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Account Number                | bank_credit_card_details.xlsx | bank_details               | 17                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Account Opening Date          | bank_credit_card_details.xlsx | bank_details               | 17                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | No. of Months Account Held    | bank_credit_card_details.xlsx | bank_details               | 17                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | No. of Credit Transactions    | bank_credit_card_details.xlsx | bank_details               | 17                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | No. of Debit Transactions     | bank_credit_card_details.xlsx | bank_details               | 17                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Minimum Balance               | bank_credit_card_details.xlsx | bank_details               | 17                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Average Balance               | bank_credit_card_details.xlsx | bank_details               | 17                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Outward Cheque Returns        | bank_credit_card_details.xlsx | bank_details               | 17                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Withdrawal Amount             | bank_credit_card_details.xlsx | bank_details               | 17                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Bounce Cheques                | bank_credit_card_details.xlsx | bank_details               | 17                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Remarks                       | bank_credit_card_details.xlsx | bank_details               | 17                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Sanction Limit Fixed Amount   | bank_credit_card_details.xlsx | bank_details               | 17                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | OK Button                     | bank_credit_card_details.xlsx | bank_details               | 17                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Cancel                        | bank_credit_card_details.xlsx | bank_details               | 17                                | 49                                 |
   # ${ ProductType : ["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${ Category:["bonds","shares","metals"]}
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-harshita.nayak
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Category   | key | field_accordions              | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum | BankCreditCard_bankDetails_rowNum1 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Banking Evaluation Period     | bank_credit_card_details.xlsx | bank_details               | 17                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Account Type                  | bank_credit_card_details.xlsx | bank_details               | 17                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Consider for Consolidated ABB | bank_credit_card_details.xlsx | bank_details               | 17                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | NRE/NRO Account               | bank_credit_card_details.xlsx | bank_details               | 17                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Account Number                | bank_credit_card_details.xlsx | bank_details               | 17                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Account Opening Date          | bank_credit_card_details.xlsx | bank_details               | 17                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | No. of Months Account Held    | bank_credit_card_details.xlsx | bank_details               | 17                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | No. of Credit Transactions    | bank_credit_card_details.xlsx | bank_details               | 17                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | No. of Debit Transactions     | bank_credit_card_details.xlsx | bank_details               | 17                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Minimum Balance               | bank_credit_card_details.xlsx | bank_details               | 17                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Average Balance               | bank_credit_card_details.xlsx | bank_details               | 17                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Outward Cheque Returns        | bank_credit_card_details.xlsx | bank_details               | 17                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Withdrawal Amount             | bank_credit_card_details.xlsx | bank_details               | 17                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Bounce Cheques                | bank_credit_card_details.xlsx | bank_details               | 17                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Remarks                       | bank_credit_card_details.xlsx | bank_details               | 17                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Sanction Limit Fixed Amount   | bank_credit_card_details.xlsx | bank_details               | 17                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | OK Button                     | bank_credit_card_details.xlsx | bank_details               | 17                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Cancel                        | bank_credit_card_details.xlsx | bank_details               | 17                                | 49                                 |
   #${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
#${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
    @NotImplemented
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Category | key | field_accordions              | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum | BankCreditCard_bankDetails_rowNum1 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Banking Evaluation Period     | bank_credit_card_details.xlsx | bank_details               | 17                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Account Type                  | bank_credit_card_details.xlsx | bank_details               | 17                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Consider for Consolidated ABB | bank_credit_card_details.xlsx | bank_details               | 17                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | NRE/NRO Account               | bank_credit_card_details.xlsx | bank_details               | 17                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Account Number                | bank_credit_card_details.xlsx | bank_details               | 17                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Account Opening Date          | bank_credit_card_details.xlsx | bank_details               | 17                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | No. of Months Account Held    | bank_credit_card_details.xlsx | bank_details               | 17                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | No. of Credit Transactions    | bank_credit_card_details.xlsx | bank_details               | 17                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | No. of Debit Transactions     | bank_credit_card_details.xlsx | bank_details               | 17                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Minimum Balance               | bank_credit_card_details.xlsx | bank_details               | 17                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Average Balance               | bank_credit_card_details.xlsx | bank_details               | 17                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Outward Cheque Returns        | bank_credit_card_details.xlsx | bank_details               | 17                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Withdrawal Amount             | bank_credit_card_details.xlsx | bank_details               | 17                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Bounce Cheques                | bank_credit_card_details.xlsx | bank_details               | 17                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Remarks                       | bank_credit_card_details.xlsx | bank_details               | 17                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Sanction Limit Fixed Amount   | bank_credit_card_details.xlsx | bank_details               | 17                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | OK Button                     | bank_credit_card_details.xlsx | bank_details               | 17                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Cancel                        | bank_credit_card_details.xlsx | bank_details               | 17                                | 49                                 |

    #2_CAS-25723,4_CAS-25723
  #FeatureID-ACAUTOCAS-172
  Scenario Outline: ACAUTOCAS-12850: On Add Manual Bank Details link for Over Draft Account following <field_accordions> should be present at <ApplicationStage> stage for <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user reads data from the excel file "<BankCreditCardWB>" under sheet "<BankCreditCard_bankDetails>" and row <BankCreditCard_bankDetails_rowNum>
    And user navigates to personal information page of "<ApplicationStage>"
    And user clicks on Bank and Credit Details
    And user delete existing bank details
    And user click on plus sign of Bank Details
    When user select Type of Account as "Over Draft Account"
    And user reads data from the excel file "<BankCreditCardWB>" under sheet "<BankCreditCard_bankDetails>" and row <BankCreditCard_bankDetails_rowNum1>
    And user fills Bank Statement Details for present as Physical
    And user clicks on Add Manual Bank Details hyperlink
    Then on add manual bank details following "<field_accordions>" should be present in bank details
    @Release @Part-1
    @Conventional
    @ImplementedBy-manish.yadav2
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Category | key | field_accordions            | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum | BankCreditCard_bankDetails_rowNum1 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Banking Evaluation Period   | bank_credit_card_details.xlsx | bank_details               | 20                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Account Type                | bank_credit_card_details.xlsx | bank_details               | 20                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | NRE/NRO Account             | bank_credit_card_details.xlsx | bank_details               | 20                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Account Number              | bank_credit_card_details.xlsx | bank_details               | 20                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Account Opening Date        | bank_credit_card_details.xlsx | bank_details               | 20                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | No. of Months Account Held  | bank_credit_card_details.xlsx | bank_details               | 20                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | No. of Credit Transactions  | bank_credit_card_details.xlsx | bank_details               | 20                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | No. of Debit Transactions   | bank_credit_card_details.xlsx | bank_details               | 20                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Minimum Balance             | bank_credit_card_details.xlsx | bank_details               | 20                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Average Balance             | bank_credit_card_details.xlsx | bank_details               | 20                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Outward Cheque Returns      | bank_credit_card_details.xlsx | bank_details               | 20                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Withdrawal Amount           | bank_credit_card_details.xlsx | bank_details               | 20                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Bounce Cheques              | bank_credit_card_details.xlsx | bank_details               | 20                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Remarks                     | bank_credit_card_details.xlsx | bank_details               | 20                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Sanction Limit Fixed Amount | bank_credit_card_details.xlsx | bank_details               | 20                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | OK Button                   | bank_credit_card_details.xlsx | bank_details               | 20                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Cancel                      | bank_credit_card_details.xlsx | bank_details               | 20                                | 49                                 |
# ${ ProductType : ["IHF","IAF"]}
# ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-harshita.nayak
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Category | key | field_accordions            | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum | BankCreditCard_bankDetails_rowNum1 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Banking Evaluation Period   | bank_credit_card_details.xlsx | bank_details               | 20                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Account Type                | bank_credit_card_details.xlsx | bank_details               | 20                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | NRE/NRO Account             | bank_credit_card_details.xlsx | bank_details               | 20                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Account Number              | bank_credit_card_details.xlsx | bank_details               | 20                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Account Opening Date        | bank_credit_card_details.xlsx | bank_details               | 20                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | No. of Months Account Held  | bank_credit_card_details.xlsx | bank_details               | 20                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | No. of Credit Transactions  | bank_credit_card_details.xlsx | bank_details               | 20                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | No. of Debit Transactions   | bank_credit_card_details.xlsx | bank_details               | 20                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Minimum Balance             | bank_credit_card_details.xlsx | bank_details               | 20                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Average Balance             | bank_credit_card_details.xlsx | bank_details               | 20                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Outward Cheque Returns      | bank_credit_card_details.xlsx | bank_details               | 20                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Withdrawal Amount           | bank_credit_card_details.xlsx | bank_details               | 20                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Bounce Cheques              | bank_credit_card_details.xlsx | bank_details               | 20                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Remarks                     | bank_credit_card_details.xlsx | bank_details               | 20                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Sanction Limit Fixed Amount | bank_credit_card_details.xlsx | bank_details               | 20                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | OK Button                   | bank_credit_card_details.xlsx | bank_details               | 20                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Cancel                      | bank_credit_card_details.xlsx | bank_details               | 20                                | 49                                 |
    # ${ ProductType : ["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${ Category:["bonds","shares","metals"]}
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-harshita.nayak
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Category   | key | field_accordions            | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum | BankCreditCard_bankDetails_rowNum1 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Banking Evaluation Period   | bank_credit_card_details.xlsx | bank_details               | 20                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Account Type                | bank_credit_card_details.xlsx | bank_details               | 20                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | NRE/NRO Account             | bank_credit_card_details.xlsx | bank_details               | 20                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Account Number              | bank_credit_card_details.xlsx | bank_details               | 20                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Account Opening Date        | bank_credit_card_details.xlsx | bank_details               | 20                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | No. of Months Account Held  | bank_credit_card_details.xlsx | bank_details               | 20                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | No. of Credit Transactions  | bank_credit_card_details.xlsx | bank_details               | 20                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | No. of Debit Transactions   | bank_credit_card_details.xlsx | bank_details               | 20                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Minimum Balance             | bank_credit_card_details.xlsx | bank_details               | 20                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Average Balance             | bank_credit_card_details.xlsx | bank_details               | 20                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Outward Cheque Returns      | bank_credit_card_details.xlsx | bank_details               | 20                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Withdrawal Amount           | bank_credit_card_details.xlsx | bank_details               | 20                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Bounce Cheques              | bank_credit_card_details.xlsx | bank_details               | 20                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Remarks                     | bank_credit_card_details.xlsx | bank_details               | 20                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Sanction Limit Fixed Amount | bank_credit_card_details.xlsx | bank_details               | 20                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | OK Button                   | bank_credit_card_details.xlsx | bank_details               | 20                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Cancel                      | bank_credit_card_details.xlsx | bank_details               | 20                                | 49                                 |
#${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
#${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
    @NotImplemented
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Category | key | field_accordions            | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum | BankCreditCard_bankDetails_rowNum1 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Banking Evaluation Period   | bank_credit_card_details.xlsx | bank_details               | 20                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Account Type                | bank_credit_card_details.xlsx | bank_details               | 20                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | NRE/NRO Account             | bank_credit_card_details.xlsx | bank_details               | 20                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Account Number              | bank_credit_card_details.xlsx | bank_details               | 20                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Account Opening Date        | bank_credit_card_details.xlsx | bank_details               | 20                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | No. of Months Account Held  | bank_credit_card_details.xlsx | bank_details               | 20                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | No. of Credit Transactions  | bank_credit_card_details.xlsx | bank_details               | 20                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | No. of Debit Transactions   | bank_credit_card_details.xlsx | bank_details               | 20                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Minimum Balance             | bank_credit_card_details.xlsx | bank_details               | 20                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Average Balance             | bank_credit_card_details.xlsx | bank_details               | 20                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Outward Cheque Returns      | bank_credit_card_details.xlsx | bank_details               | 20                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Withdrawal Amount           | bank_credit_card_details.xlsx | bank_details               | 20                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Bounce Cheques              | bank_credit_card_details.xlsx | bank_details               | 20                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Remarks                     | bank_credit_card_details.xlsx | bank_details               | 20                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Sanction Limit Fixed Amount | bank_credit_card_details.xlsx | bank_details               | 20                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | OK Button                   | bank_credit_card_details.xlsx | bank_details               | 20                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Cancel                      | bank_credit_card_details.xlsx | bank_details               | 20                                | 49                                 |


   #2_CAS-25723,4_CAS-25723
  #FeatureID-ACAUTOCAS-172
  Scenario Outline: ACAUTOCAS-12851: On Add Manual Bank Details link for Cash Credit following <field_accordions> should be present at <ApplicationStage> stage for <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "" with "" from application grid
    And user reads data from the excel file "<BankCreditCardWB>" under sheet "<BankCreditCard_bankDetails>" and row <BankCreditCard_bankDetails_rowNum>
    And user navigates to personal information page of "<ApplicationStage>"
    And user clicks on Bank and Credit Details
    And user delete existing bank details
    And user click on plus sign of Bank Details
    When user select Type of Account as "Cash Credit"
    And user reads data from the excel file "<BankCreditCardWB>" under sheet "<BankCreditCard_bankDetails>" and row <BankCreditCard_bankDetails_rowNum1>
    And user fills Bank Statement Details for present as Physical
    And user clicks on Add Manual Bank Details hyperlink
    Then on add manual bank details following "<field_accordions>" should be present in bank details
    @Release @Part-1
    @Conventional
    @ImplementedBy-manish.yadav2
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Category | key | field_accordions              | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum | BankCreditCard_bankDetails_rowNum1 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Banking Evaluation Period     | bank_credit_card_details.xlsx | bank_details               | 19                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Account Type                  | bank_credit_card_details.xlsx | bank_details               | 19                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Consider for Consolidated ABB | bank_credit_card_details.xlsx | bank_details               | 19                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | NRE/NRO Account               | bank_credit_card_details.xlsx | bank_details               | 19                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Account Number                | bank_credit_card_details.xlsx | bank_details               | 19                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Account Opening Date          | bank_credit_card_details.xlsx | bank_details               | 19                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | No. of Months Account Held    | bank_credit_card_details.xlsx | bank_details               | 19                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | No. of Credit Transactions    | bank_credit_card_details.xlsx | bank_details               | 19                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | No. of Debit Transactions     | bank_credit_card_details.xlsx | bank_details               | 19                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Minimum Balance               | bank_credit_card_details.xlsx | bank_details               | 19                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Average Balance               | bank_credit_card_details.xlsx | bank_details               | 19                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Outward Cheque Returns        | bank_credit_card_details.xlsx | bank_details               | 19                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Withdrawal Amount             | bank_credit_card_details.xlsx | bank_details               | 19                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Bounce Cheques                | bank_credit_card_details.xlsx | bank_details               | 19                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Remarks                       | bank_credit_card_details.xlsx | bank_details               | 19                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Sanction Limit Fixed Amount   | bank_credit_card_details.xlsx | bank_details               | 19                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | OK Button                     | bank_credit_card_details.xlsx | bank_details               | 19                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Cancel                        | bank_credit_card_details.xlsx | bank_details               | 19                                | 49                                 |
# ${ ProductType : ["IHF","IAF"]}
# ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-harshita.nayak
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Category | key | field_accordions              | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum | BankCreditCard_bankDetails_rowNum1 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Banking Evaluation Period     | bank_credit_card_details.xlsx | bank_details               | 19                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Account Type                  | bank_credit_card_details.xlsx | bank_details               | 19                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Consider for Consolidated ABB | bank_credit_card_details.xlsx | bank_details               | 19                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | NRE/NRO Account               | bank_credit_card_details.xlsx | bank_details               | 19                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Account Number                | bank_credit_card_details.xlsx | bank_details               | 19                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Account Opening Date          | bank_credit_card_details.xlsx | bank_details               | 19                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | No. of Months Account Held    | bank_credit_card_details.xlsx | bank_details               | 19                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | No. of Credit Transactions    | bank_credit_card_details.xlsx | bank_details               | 19                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | No. of Debit Transactions     | bank_credit_card_details.xlsx | bank_details               | 19                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Minimum Balance               | bank_credit_card_details.xlsx | bank_details               | 19                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Average Balance               | bank_credit_card_details.xlsx | bank_details               | 19                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Outward Cheque Returns        | bank_credit_card_details.xlsx | bank_details               | 19                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Withdrawal Amount             | bank_credit_card_details.xlsx | bank_details               | 19                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Bounce Cheques                | bank_credit_card_details.xlsx | bank_details               | 19                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Remarks                       | bank_credit_card_details.xlsx | bank_details               | 19                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Sanction Limit Fixed Amount   | bank_credit_card_details.xlsx | bank_details               | 19                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | OK Button                     | bank_credit_card_details.xlsx | bank_details               | 19                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Cancel                        | bank_credit_card_details.xlsx | bank_details               | 19                                | 49                                 |
   # ${ ProductType : ["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${ Category:["bonds","shares","metals"]}
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-harshita.nayak
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Category   | key | field_accordions              | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum | BankCreditCard_bankDetails_rowNum1 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Banking Evaluation Period     | bank_credit_card_details.xlsx | bank_details               | 19                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Account Type                  | bank_credit_card_details.xlsx | bank_details               | 19                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Consider for Consolidated ABB | bank_credit_card_details.xlsx | bank_details               | 19                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | NRE/NRO Account               | bank_credit_card_details.xlsx | bank_details               | 19                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Account Number                | bank_credit_card_details.xlsx | bank_details               | 19                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Account Opening Date          | bank_credit_card_details.xlsx | bank_details               | 19                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | No. of Months Account Held    | bank_credit_card_details.xlsx | bank_details               | 19                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | No. of Credit Transactions    | bank_credit_card_details.xlsx | bank_details               | 19                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | No. of Debit Transactions     | bank_credit_card_details.xlsx | bank_details               | 19                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Minimum Balance               | bank_credit_card_details.xlsx | bank_details               | 19                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Average Balance               | bank_credit_card_details.xlsx | bank_details               | 19                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Outward Cheque Returns        | bank_credit_card_details.xlsx | bank_details               | 19                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Withdrawal Amount             | bank_credit_card_details.xlsx | bank_details               | 19                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Bounce Cheques                | bank_credit_card_details.xlsx | bank_details               | 19                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Remarks                       | bank_credit_card_details.xlsx | bank_details               | 19                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Sanction Limit Fixed Amount   | bank_credit_card_details.xlsx | bank_details               | 19                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | OK Button                     | bank_credit_card_details.xlsx | bank_details               | 19                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Cancel                        | bank_credit_card_details.xlsx | bank_details               | 19                                | 49                                 |
   #${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
#${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
    @NotImplemented
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Category | key | field_accordions              | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum | BankCreditCard_bankDetails_rowNum1 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Banking Evaluation Period     | bank_credit_card_details.xlsx | bank_details               | 19                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Account Type                  | bank_credit_card_details.xlsx | bank_details               | 19                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Consider for Consolidated ABB | bank_credit_card_details.xlsx | bank_details               | 19                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | NRE/NRO Account               | bank_credit_card_details.xlsx | bank_details               | 19                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Account Number                | bank_credit_card_details.xlsx | bank_details               | 19                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Account Opening Date          | bank_credit_card_details.xlsx | bank_details               | 19                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | No. of Months Account Held    | bank_credit_card_details.xlsx | bank_details               | 19                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | No. of Credit Transactions    | bank_credit_card_details.xlsx | bank_details               | 19                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | No. of Debit Transactions     | bank_credit_card_details.xlsx | bank_details               | 19                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Minimum Balance               | bank_credit_card_details.xlsx | bank_details               | 19                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Average Balance               | bank_credit_card_details.xlsx | bank_details               | 19                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Outward Cheque Returns        | bank_credit_card_details.xlsx | bank_details               | 19                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Withdrawal Amount             | bank_credit_card_details.xlsx | bank_details               | 19                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Bounce Cheques                | bank_credit_card_details.xlsx | bank_details               | 19                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Remarks                       | bank_credit_card_details.xlsx | bank_details               | 19                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Sanction Limit Fixed Amount   | bank_credit_card_details.xlsx | bank_details               | 19                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | OK Button                     | bank_credit_card_details.xlsx | bank_details               | 19                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Cancel                        | bank_credit_card_details.xlsx | bank_details               | 19                                | 49                                 |

   #2_CAS-25723,4_CAS-25723
  #FeatureID-ACAUTOCAS-172
  Scenario Outline: ACAUTOCAS-12852: On Add Manual Bank Details link for KCC Account following <field_accordions> should be present at <ApplicationStage> stage for <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user reads data from the excel file "<BankCreditCardWB>" under sheet "<BankCreditCard_bankDetails>" and row <BankCreditCard_bankDetails_rowNum>
    And user navigates to personal information page of "<ApplicationStage>"
    And user clicks on Bank and Credit Details
    And user delete existing bank details
    And user click on plus sign of Bank Details
    When user select Type of Account as "KCC Account"
    And user reads data from the excel file "<BankCreditCardWB>" under sheet "<BankCreditCard_bankDetails>" and row <BankCreditCard_bankDetails_rowNum1>
    And user fills Bank Statement Details for present as Physical
    And user clicks on Add Manual Bank Details hyperlink
    Then on add manual bank details following "<field_accordions>" should be present in bank details
    @Release @Part-1
    @Conventional
    @ImplementedBy-manish.yadav2
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Category | key | field_accordions            | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum | BankCreditCard_bankDetails_rowNum1 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Banking Evaluation Period   | bank_credit_card_details.xlsx | bank_details               | 18                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Account Type                | bank_credit_card_details.xlsx | bank_details               | 18                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | NRE/NRO Account             | bank_credit_card_details.xlsx | bank_details               | 18                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Account Number              | bank_credit_card_details.xlsx | bank_details               | 18                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Account Opening Date        | bank_credit_card_details.xlsx | bank_details               | 18                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | No. of Months Account Held  | bank_credit_card_details.xlsx | bank_details               | 18                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | No. of Credit Transactions  | bank_credit_card_details.xlsx | bank_details               | 18                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | No. of Debit Transactions   | bank_credit_card_details.xlsx | bank_details               | 18                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Minimum Balance             | bank_credit_card_details.xlsx | bank_details               | 18                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Average Balance             | bank_credit_card_details.xlsx | bank_details               | 18                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Bounce Cheques              | bank_credit_card_details.xlsx | bank_details               | 18                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Remarks                     | bank_credit_card_details.xlsx | bank_details               | 18                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Sanction Limit Fixed Amount | bank_credit_card_details.xlsx | bank_details               | 18                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | OK Button                   | bank_credit_card_details.xlsx | bank_details               | 18                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Cancel                      | bank_credit_card_details.xlsx | bank_details               | 18                                | 49                                 |
# ${ ProductType : ["IHF","IAF"]}
# ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-harshita.nayak
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Category | key | field_accordions            | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum | BankCreditCard_bankDetails_rowNum1 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Banking Evaluation Period   | bank_credit_card_details.xlsx | bank_details               | 18                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Account Type                | bank_credit_card_details.xlsx | bank_details               | 18                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | NRE/NRO Account             | bank_credit_card_details.xlsx | bank_details               | 18                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Account Number              | bank_credit_card_details.xlsx | bank_details               | 18                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Account Opening Date        | bank_credit_card_details.xlsx | bank_details               | 18                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | No. of Months Account Held  | bank_credit_card_details.xlsx | bank_details               | 18                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | No. of Credit Transactions  | bank_credit_card_details.xlsx | bank_details               | 18                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | No. of Debit Transactions   | bank_credit_card_details.xlsx | bank_details               | 18                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Minimum Balance             | bank_credit_card_details.xlsx | bank_details               | 18                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Average Balance             | bank_credit_card_details.xlsx | bank_details               | 18                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Bounce Cheques              | bank_credit_card_details.xlsx | bank_details               | 18                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Remarks                     | bank_credit_card_details.xlsx | bank_details               | 18                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Sanction Limit Fixed Amount | bank_credit_card_details.xlsx | bank_details               | 18                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | OK Button                   | bank_credit_card_details.xlsx | bank_details               | 18                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Cancel                      | bank_credit_card_details.xlsx | bank_details               | 18                                | 49                                 |
# ${ ProductType : ["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${ Category:["bonds","shares","metals"]}
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-harshita.nayak
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Category   | key | field_accordions            | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum | BankCreditCard_bankDetails_rowNum1 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Banking Evaluation Period   | bank_credit_card_details.xlsx | bank_details               | 18                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Account Type                | bank_credit_card_details.xlsx | bank_details               | 18                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | NRE/NRO Account             | bank_credit_card_details.xlsx | bank_details               | 18                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Account Number              | bank_credit_card_details.xlsx | bank_details               | 18                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Account Opening Date        | bank_credit_card_details.xlsx | bank_details               | 18                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | No. of Months Account Held  | bank_credit_card_details.xlsx | bank_details               | 18                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | No. of Credit Transactions  | bank_credit_card_details.xlsx | bank_details               | 18                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | No. of Debit Transactions   | bank_credit_card_details.xlsx | bank_details               | 18                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Minimum Balance             | bank_credit_card_details.xlsx | bank_details               | 18                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Average Balance             | bank_credit_card_details.xlsx | bank_details               | 18                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Bounce Cheques              | bank_credit_card_details.xlsx | bank_details               | 18                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Remarks                     | bank_credit_card_details.xlsx | bank_details               | 18                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Sanction Limit Fixed Amount | bank_credit_card_details.xlsx | bank_details               | 18                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | OK Button                   | bank_credit_card_details.xlsx | bank_details               | 18                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Cancel                      | bank_credit_card_details.xlsx | bank_details               | 18                                | 49                                 |
  #${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
#${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
    @NotImplemented
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Category | key | field_accordions            | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum | BankCreditCard_bankDetails_rowNum1 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Banking Evaluation Period   | bank_credit_card_details.xlsx | bank_details               | 18                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Account Type                | bank_credit_card_details.xlsx | bank_details               | 18                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | NRE/NRO Account             | bank_credit_card_details.xlsx | bank_details               | 18                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Account Number              | bank_credit_card_details.xlsx | bank_details               | 18                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Account Opening Date        | bank_credit_card_details.xlsx | bank_details               | 18                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | No. of Months Account Held  | bank_credit_card_details.xlsx | bank_details               | 18                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | No. of Credit Transactions  | bank_credit_card_details.xlsx | bank_details               | 18                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | No. of Debit Transactions   | bank_credit_card_details.xlsx | bank_details               | 18                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Minimum Balance             | bank_credit_card_details.xlsx | bank_details               | 18                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Average Balance             | bank_credit_card_details.xlsx | bank_details               | 18                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Bounce Cheques              | bank_credit_card_details.xlsx | bank_details               | 18                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Remarks                     | bank_credit_card_details.xlsx | bank_details               | 18                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Sanction Limit Fixed Amount | bank_credit_card_details.xlsx | bank_details               | 18                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | OK Button                   | bank_credit_card_details.xlsx | bank_details               | 18                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Cancel                      | bank_credit_card_details.xlsx | bank_details               | 18                                | 49                                 |

    #2_CAS-25723
  #FeatureID-ACAUTOCAS-172
  Scenario Outline: ACAUTOCAS-12853: Enter the bank details section with <Field_Name> same data should be auto populated in Add Manual bank details Screen at <ApplicationStage> stage for <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user reads data from the excel file "<BankCreditCardWB>" under sheet "<BankCreditCard_bankDetails>" and row <BankCreditCard_bankDetails_rowNum>
    And user navigates to personal information page of "<ApplicationStage>"
    And user clicks on Bank and Credit Details
    And user delete existing bank details
    And user click on plus sign of Bank Details
    When user fills all the required details of bank details
    And user reads data from the excel file "<BankCreditCardWB>" under sheet "<BankCreditCard_bankDetails>" and row <BankCreditCard_bankDetails_rowNum1>
    And user fills Bank Statement Details for present as Physical
    And user clicks on Add Manual Bank Details hyperlink
    Then user validate that for "<Field_Name>" same data should be auto populated in Add Manual bank details Screen
    @Release @Part-1
    @Conventional
    @ImplementedBy-manish.yadav2
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Category | key | Field_Name           | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum | BankCreditCard_bankDetails_rowNum1 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Account Type         | bank_credit_card_details.xlsx | bank_details               | 16                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Account Number       | bank_credit_card_details.xlsx | bank_details               | 16                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Account Opening Date | bank_credit_card_details.xlsx | bank_details               | 16                                | 49                                 |

    # ${ ProductType : ["IHF","IAF"]}
# ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-harshita.nayak
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Category | key | Field_Name           | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum | BankCreditCard_bankDetails_rowNum1 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Account Type         | bank_credit_card_details.xlsx | bank_details               | 16                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Account Number       | bank_credit_card_details.xlsx | bank_details               | 16                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Account Opening Date | bank_credit_card_details.xlsx | bank_details               | 16                                | 49                                 |

    # ${ProductType : ["IPF"]}
    #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${ Category:["bonds","shares","metals"]}
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-harshita.nayak
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Category   | key | Field_Name           | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum | BankCreditCard_bankDetails_rowNum1 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Account Type         | bank_credit_card_details.xlsx | bank_details               | 16                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Account Number       | bank_credit_card_details.xlsx | bank_details               | 16                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Account Opening Date | bank_credit_card_details.xlsx | bank_details               | 16                                | 49                                 |

  #${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
  #${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
    @NotImplemented
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Category | key | Field_Name           | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum | BankCreditCard_bankDetails_rowNum1 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Account Type         | bank_credit_card_details.xlsx | bank_details               | 16                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Account Number       | bank_credit_card_details.xlsx | bank_details               | 16                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Account Opening Date | bank_credit_card_details.xlsx | bank_details               | 16                                | 49                                 |
#
    #3_CAS-25723
  #FeatureID-ACAUTOCAS-172
  Scenario Outline: ACAUTOCAS-12854: Average Bank Balance data should be automatically populated in Bank Details section based on the value entered in the Average Balance field in Add manual Bank details at <ApplicationStage> stage for <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user reads data from the excel file "<BankCreditCardWB>" under sheet "<BankCreditCard_bankDetails>" and row <BankCreditCard_bankDetails_rowNum>
    And user navigates to personal information page of "<ApplicationStage>"
    And user clicks on Bank and Credit Details
    And user delete existing bank details
    And user click on plus sign of Bank Details
    And user select Type of Account as "<account_type>"
    And user reads data from the excel file "<BankCreditCardWB>" under sheet "<BankCreditCard_bankDetails>" and row <BankCreditCard_bankDetails_rowNum1>
    And user fills Bank Statement Details for present as Physical
    When user clicks on Add Manual Bank Details hyperlink
    And user select checkbox for Consider for Consolidated ABB option on Add Manual Bank Details
    And user fills field in Add manual Bank details with save
    Then in "Average Bank Balance" data should be automatically populated in Bank Details
    @Release @Part-1
    @Conventional
    @ImplementedBy-manish.yadav2
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Category | key | account_type       | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum | BankCreditCard_bankDetails_rowNum1 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Current Account    | bank_credit_card_details.xlsx | bank_details               | 17                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Saving Account     | bank_credit_card_details.xlsx | bank_details               | 16                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | KCC Account        | bank_credit_card_details.xlsx | bank_details               | 18                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Over Draft Account | bank_credit_card_details.xlsx | bank_details               | 20                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Cash Credit        | bank_credit_card_details.xlsx | bank_details               | 19                                | 49                                 |
    # ${ ProductType : ["IHF","IAF"]}
   # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-harshita.nayak
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Category | key | account_type       | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum | BankCreditCard_bankDetails_rowNum1 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Current Account    | bank_credit_card_details.xlsx | bank_details               | 17                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Saving Account     | bank_credit_card_details.xlsx | bank_details               | 16                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | KCC Account        | bank_credit_card_details.xlsx | bank_details               | 18                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Over Draft Account | bank_credit_card_details.xlsx | bank_details               | 20                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Cash Credit        | bank_credit_card_details.xlsx | bank_details               | 19                                | 49                                 |

    @Islamic
    @Release
    @Part-1
    @ImplementedBy-harshita.nayak
      # ${ ProductType : ["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${ Category:["bonds","shares","metals"]}
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Category   | key | account_type       | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum | BankCreditCard_bankDetails_rowNum1 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Current Account    | bank_credit_card_details.xlsx | bank_details               | 17                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Saving Account     | bank_credit_card_details.xlsx | bank_details               | 16                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | KCC Account        | bank_credit_card_details.xlsx | bank_details               | 18                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Over Draft Account | bank_credit_card_details.xlsx | bank_details               | 20                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Cash Credit        | bank_credit_card_details.xlsx | bank_details               | 19                                | 49                                 |
#${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
#${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
    @NotImplemented
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Category | key | account_type       | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum | BankCreditCard_bankDetails_rowNum1 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Current Account    | bank_credit_card_details.xlsx | bank_details               | 17                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Saving Account     | bank_credit_card_details.xlsx | bank_details               | 16                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | KCC Account        | bank_credit_card_details.xlsx | bank_details               | 18                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Over Draft Account | bank_credit_card_details.xlsx | bank_details               | 20                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Cash Credit        | bank_credit_card_details.xlsx | bank_details               | 19                                | 49                                 |

   #  CAS-146609
  #FeatureID-ACAUTOCAS-172
  Scenario Outline: ACAUTOCAS-12855: Upload the bank details file with filled Average Balance for Type of Account as <account_type> Average Balance data should be auto populated in bank details at <ApplicationStage> stage for <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user reads data from the excel file "<BankCreditCardWB>" under sheet "<BankCreditCard_bankDetails>" and row <BankCreditCard_bankDetails_rowNum>
    And user navigates to personal information page of "<ApplicationStage>"
    And user clicks on Bank and Credit Details
    And user delete existing bank details
    And user click on plus sign of Bank Details
    And user select Type of Account as "<account_type>"
    And user reads data from the excel file "<BankCreditCardWB>" under sheet "<BankCreditCard_bankDetails>" and row <BankCreditCard_bankDetails_rowNum1>
    And user fills Bank Statement Details for present as Physical
    And user reads data from the excel file "<BankCreditCardWB>" under sheet "<BankCreditCard_bankDetails>" and row <BankCreditCard_bankDetails_rowNum>
    And user clicks on Add view Bank Details hyperlink
    And user select checkbox for Consider for Consolidated ABB option on Add view Bank Details
    When user upload the bank details file in Add view Bank details
    And user clicks on OK button of Add view Bank details
    Then in "Average Bank Balance" data should be automatically populated in Bank Details
    @Release @Part-1
    @Conventional
    @ImplementedBy-manish.yadav2
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Category | key | account_type    | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum | BankCreditCard_bankDetails_rowNum1 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Current Account | bank_credit_card_details.xlsx | bank_details               | 17                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Saving Account  | bank_credit_card_details.xlsx | bank_details               | 16                                | 49                                 |
 # ${ ProductType : ["IHF","IAF"]}
# ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-harshita.nayak
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Category | key | account_type    | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum | BankCreditCard_bankDetails_rowNum1 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Current Account | bank_credit_card_details.xlsx | bank_details               | 17                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Saving Account  | bank_credit_card_details.xlsx | bank_details               | 16                                | 49                                 |
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-harshita.nayak
      # ${ ProductType : ["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${ Category:["bonds","shares","metals"]}
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Category   | key | account_type    | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum | BankCreditCard_bankDetails_rowNum1 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Current Account | bank_credit_card_details.xlsx | bank_details               | 17                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Saving Account  | bank_credit_card_details.xlsx | bank_details               | 16                                | 49                                 |
#${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
#${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
    @NotImplemented
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Category | key | account_type    | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum | BankCreditCard_bankDetails_rowNum1 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Current Account | bank_credit_card_details.xlsx | bank_details               | 17                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Saving Account  | bank_credit_card_details.xlsx | bank_details               | 16                                | 49                                 |

   #3_CAS-25723
  #FeatureID-ACAUTOCAS-172
  Scenario Outline: ACAUTOCAS-12856: Consolidated Average Balance data should be automatically populated in the Bank Details section based on the value entered in the Average Balance field in the Add Manual Bank Details at <ApplicationStage> stage for <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user reads data from the excel file "<BankCreditCardWB>" under sheet "<BankCreditCard_bankDetails>" and row <BankCreditCard_bankDetails_rowNum>
    And user navigates to personal information page of "<ApplicationStage>"
    And user clicks on Bank and Credit Details
    And user delete existing bank details
    And user click on plus sign of Bank Details
    And user fills all the required details of bank details for account type as "<AccountType>"
    And user reads data from the excel file "<BankCreditCardWB>" under sheet "<BankCreditCard_bankDetails>" and row <BankCreditCard_bankDetails_rowNum1>
    And user fills Bank Statement Details for present as Physical
    When user clicks on Add Manual Bank Details hyperlink
    And user select checkbox for Consider for Consolidated ABB option on Add Manual Bank Details
    And user fills field in Add manual Bank details with save
    And user clicks on save button in Bank details
    Then in "Consolidated Average Balance" data should be automatically populated in Bank Details
    @Release @Part-1
    @Conventional
    @ImplementedBy-manish.yadav2
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Category | key | AccountType        | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum | BankCreditCard_bankDetails_rowNum1 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Current Account    | bank_credit_card_details.xlsx | bank_details               | 17                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Saving Account     | bank_credit_card_details.xlsx | bank_details               | 16                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | KCC Account        | bank_credit_card_details.xlsx | bank_details               | 18                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Over Draft Account | bank_credit_card_details.xlsx | bank_details               | 20                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Cash Credit        | bank_credit_card_details.xlsx | bank_details               | 19                                | 49                                 |
 # ${ ProductType : ["IHF","IAF"]}
   # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-harshita.nayak
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Category | key | AccountType        | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum | BankCreditCard_bankDetails_rowNum1 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Current Account    | bank_credit_card_details.xlsx | bank_details               | 17                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Saving Account     | bank_credit_card_details.xlsx | bank_details               | 16                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | KCC Account        | bank_credit_card_details.xlsx | bank_details               | 18                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Over Draft Account | bank_credit_card_details.xlsx | bank_details               | 20                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Cash Credit        | bank_credit_card_details.xlsx | bank_details               | 19                                | 49                                 |
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-harshita.nayak
      # ${ ProductType : ["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${ Category:["bonds","shares","metals"]}
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Category   | key | AccountType        | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum | BankCreditCard_bankDetails_rowNum1 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Current Account    | bank_credit_card_details.xlsx | bank_details               | 17                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Saving Account     | bank_credit_card_details.xlsx | bank_details               | 16                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | KCC Account        | bank_credit_card_details.xlsx | bank_details               | 18                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Over Draft Account | bank_credit_card_details.xlsx | bank_details               | 20                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Cash Credit        | bank_credit_card_details.xlsx | bank_details               | 19                                | 49                                 |
#${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
#${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
    @NotImplemented
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Category | key | AccountType        | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum | BankCreditCard_bankDetails_rowNum1 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Current Account    | bank_credit_card_details.xlsx | bank_details               | 17                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Saving Account     | bank_credit_card_details.xlsx | bank_details               | 16                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | KCC Account        | bank_credit_card_details.xlsx | bank_details               | 18                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Over Draft Account | bank_credit_card_details.xlsx | bank_details               | 20                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Cash Credit        | bank_credit_card_details.xlsx | bank_details               | 19                                | 49                                 |

    #07_CAS-25723,CAS-192248
  #FeatureID-ACAUTOCAS-172
  Scenario Outline: ACAUTOCAS-12857: <Error_message> should be display while entering same account number in bank details at <ApplicationStage> stage for <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user navigates to personal information page of "<ApplicationStage>"
    And user clicks on Bank and Credit Details
    And user delete existing bank details
    And user click on plus sign of Bank Details
    When user add "Multiple" bank details by reading data from
      | bank_credit_card_details.xlsx | bank_details | 18 |
      | bank_credit_card_details.xlsx | bank_details | 19 |
    And user clicks on save button in Bank details to get error
    Then proper error message should be display successfully in bank details
    @Release @Part-1
    @Conventional
    @ImplementedBy-manish.yadav2
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Category | key | Error_message                     |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Duplicate Records are not Allowed |
# ${ ProductType : ["IHF","IAF"]}
# ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-harshita.nayak
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Category | key | Error_message                     |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Duplicate Records are not Allowed |
#${ ProductType : ["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${ Category:["bonds","shares","metals"]}
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-harshita.nayak
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Category   | key | Error_message                     |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Duplicate Records are not Allowed |
#${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
#${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
    @NotImplemented
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Category | key | Error_message                     |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Duplicate Records are not Allowed |

   #09_CAS-25723,CAS-188241
  #FeatureID-ACAUTOCAS-172
  Scenario Outline: ACAUTOCAS-12858:  Delete the bank details data of Existing Customer at <ApplicationStage> stage for <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user navigates to personal information page of "<ApplicationStage>"
    And user clicks on Bank and Credit Details
    When user delete existing bank details
    And user clicks on save button in Bank details
    Then existing customer bank details should be deleted successfully
    @Release @Part-1
    @Conventional
    @ImplementedBy-manish.yadav2
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Category | key |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |
# ${ ProductType : ["IHF","IAF"]}
# ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-harshita.nayak
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Category | key |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |
    #${ ProductType : ["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${ Category:["bonds","shares","metals"]}
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-harshita.nayak
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Category   | key |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     |
#${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
#${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
    @NotImplemented
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Category | key |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |

   #CAS-171511
  #FeatureID-ACAUTOCAS-172
  @Perishable
    @Dedupe
  Scenario Outline: ACAUTOCAS-12859: Bank records entered in previous application should be visible in new application at <ApplicationStage> stage for <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user fetch customer number from current application
    When user updates the application for dedupe
    And user navigates to personal information page of "<ApplicationStage>"
    And user clicks on Bank and Credit Details
    Then user verify that bank records entered in previous application should be visible in new application
    @Release @Part-1
    @Conventional
    @ImplementedBy-manish.yadav2
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Category | key |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |
# ${ ProductType : ["IHF","IAF"]}
# ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-harshita.nayak
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Category | key |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |
    #${ ProductType : ["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${ Category:["bonds","shares","metals"]}
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-harshita.nayak
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Category   | key |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     |
#${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
#${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
    @NotImplemented
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Category | key |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |


   #02-CAS-59491,01-CAS-59491
  #FeatureID-ACAUTOCAS-172
  Scenario Outline: ACAUTOCAS-12860: Bank Details should not get saved without filling <link_record> with <error_message> at <ApplicationStage> stage for <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user reads data from the excel file "<BankCreditCardWB>" under sheet "<BankCreditCard_bankDetails>" and row <BankCreditCard_bankDetails_rowNum>
    And user navigates to personal information page of "<ApplicationStage>"
    And user clicks on Bank and Credit Details
    And user delete existing bank details
    And user click on plus sign of Bank Details
    And user reads data from the excel file "<BankCreditCardWB>" under sheet "<BankCreditCard_bankDetails>" and row <BankCreditCard_bankDetails_rowNum1>
    And user fills Bank Statement Details for present as Physical
    When user entering bank details skip clicking on "<link_record>"
    And user clicks on save button in Bank details to get error
    Then Bank Details should not get saved with proper error message
    @Release @Part-1
    @Conventional
    @ImplementedBy-manish.yadav2
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Category | key | link_record           | error_message                                            | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum | BankCreditCard_bankDetails_rowNum1 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Add/View Bank Details | Please click on the links to update the mandatory fields | bank_credit_card_details.xlsx | bank_details               | 20                                | 49                                 |
# ${ ProductType : ["IHF","IAF"]}
# ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-harshita.nayak
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Category | key | link_record           | error_message                                            | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum | BankCreditCard_bankDetails_rowNum1 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Add/View Bank Details | Please click on the links to update the mandatory fields | bank_credit_card_details.xlsx | bank_details               | 20                                | 49                                 |
    #${ ProductType : ["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${ Category:["bonds","shares","metals"]}
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-harshita.nayak
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Category   | key | link_record           | error_message                                            | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum | BankCreditCard_bankDetails_rowNum1 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Add/View Bank Details | Please click on the links to update the mandatory fields | bank_credit_card_details.xlsx | bank_details               | 20                                | 49                                 |
#${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
#${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
    @NotImplemented
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Category | key | link_record           | error_message                                            | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum | BankCreditCard_bankDetails_rowNum1 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Add/View Bank Details | Please click on the links to update the mandatory fields | bank_credit_card_details.xlsx | bank_details               | 20                                | 49                                 |


   #03-CAS-59491
  #FeatureID-ACAUTOCAS-172
  Scenario Outline: ACAUTOCAS-12861:  Verify user click on <record1_link> with save data <record2_link> should be disappear at <ApplicationStage> stage for <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user reads data from the excel file "<BankCreditCardWB>" under sheet "<BankCreditCard_bankDetails>" and row <BankCreditCard_bankDetails_rowNum>
    And user navigates to personal information page of "<ApplicationStage>"
    And user clicks on Bank and Credit Details
    And user delete existing bank details
    And user click on plus sign of Bank Details
    And user select Type of Account as "<account_type>"
    And user reads data from the excel file "<BankCreditCardWB>" under sheet "<BankCreditCard_bankDetails>" and row <BankCreditCard_bankDetails_rowNum1>
    And user fills Bank Statement Details for present as Physical
    When user fills field in "<record1_link>" in Bank details with save
    Then link for "<record2_link>" should be disappear in Bank details
    @Release @Part-1
    @Conventional
    @ImplementedBy-manish.yadav2
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Category | key | account_type       | record1_link            | record2_link            | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum | BankCreditCard_bankDetails_rowNum1 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Current Account    | Add/View Bank Details   | Add Manual Bank Details | bank_credit_card_details.xlsx | bank_details               | 17                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Saving Account     | Add/View Bank Details   | Add Manual Bank Details | bank_credit_card_details.xlsx | bank_details               | 16                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | KCC Account        | Add/View Bank Details   | Add Manual Bank Details | bank_credit_card_details.xlsx | bank_details               | 18                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Over Draft Account | Add/View Bank Details   | Add Manual Bank Details | bank_credit_card_details.xlsx | bank_details               | 20                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Cash Credit        | Add/View Bank Details   | Add Manual Bank Details | bank_credit_card_details.xlsx | bank_details               | 19                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Current Account    | Add Manual Bank Details | Add/View Bank Details   | bank_credit_card_details.xlsx | bank_details               | 17                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Saving Account     | Add Manual Bank Details | Add/View Bank Details   | bank_credit_card_details.xlsx | bank_details               | 16                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | KCC Account        | Add Manual Bank Details | Add/View Bank Details   | bank_credit_card_details.xlsx | bank_details               | 18                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Over Draft Account | Add Manual Bank Details | Add/View Bank Details   | bank_credit_card_details.xlsx | bank_details               | 20                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Cash Credit        | Add Manual Bank Details | Add/View Bank Details   | bank_credit_card_details.xlsx | bank_details               | 19                                | 49                                 |
# ${ ProductType : ["IHF","IAF"]}
# ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-harshita.nayak
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Category | key | account_type       | record1_link            | record2_link            | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum | BankCreditCard_bankDetails_rowNum1 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Current Account    | Add/View Bank Details   | Add Manual Bank Details | bank_credit_card_details.xlsx | bank_details               | 17                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Saving Account     | Add/View Bank Details   | Add Manual Bank Details | bank_credit_card_details.xlsx | bank_details               | 16                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | KCC Account        | Add/View Bank Details   | Add Manual Bank Details | bank_credit_card_details.xlsx | bank_details               | 18                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Over Draft Account | Add/View Bank Details   | Add Manual Bank Details | bank_credit_card_details.xlsx | bank_details               | 20                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Cash Credit        | Add/View Bank Details   | Add Manual Bank Details | bank_credit_card_details.xlsx | bank_details               | 19                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Current Account    | Add Manual Bank Details | Add/View Bank Details   | bank_credit_card_details.xlsx | bank_details               | 17                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Saving Account     | Add Manual Bank Details | Add/View Bank Details   | bank_credit_card_details.xlsx | bank_details               | 16                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | KCC Account        | Add Manual Bank Details | Add/View Bank Details   | bank_credit_card_details.xlsx | bank_details               | 18                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Over Draft Account | Add Manual Bank Details | Add/View Bank Details   | bank_credit_card_details.xlsx | bank_details               | 20                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Cash Credit        | Add Manual Bank Details | Add/View Bank Details   | bank_credit_card_details.xlsx | bank_details               | 19                                | 49                                 |
    #${ ProductType : ["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${ Category:["bonds","shares","metals"]}
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-harshita.nayak
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Category   | key | account_type       | record1_link            | record2_link            | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum | BankCreditCard_bankDetails_rowNum1 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Current Account    | Add/View Bank Details   | Add Manual Bank Details | bank_credit_card_details.xlsx | bank_details               | 17                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Saving Account     | Add/View Bank Details   | Add Manual Bank Details | bank_credit_card_details.xlsx | bank_details               | 16                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | KCC Account        | Add/View Bank Details   | Add Manual Bank Details | bank_credit_card_details.xlsx | bank_details               | 18                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Over Draft Account | Add/View Bank Details   | Add Manual Bank Details | bank_credit_card_details.xlsx | bank_details               | 20                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Cash Credit        | Add/View Bank Details   | Add Manual Bank Details | bank_credit_card_details.xlsx | bank_details               | 19                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Current Account    | Add Manual Bank Details | Add/View Bank Details   | bank_credit_card_details.xlsx | bank_details               | 17                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Saving Account     | Add Manual Bank Details | Add/View Bank Details   | bank_credit_card_details.xlsx | bank_details               | 16                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | KCC Account        | Add Manual Bank Details | Add/View Bank Details   | bank_credit_card_details.xlsx | bank_details               | 18                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Over Draft Account | Add Manual Bank Details | Add/View Bank Details   | bank_credit_card_details.xlsx | bank_details               | 20                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Cash Credit        | Add Manual Bank Details | Add/View Bank Details   | bank_credit_card_details.xlsx | bank_details               | 19                                | 49                                 |
#${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
#${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
    @NotImplemented
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Category | key | account_type       | record1_link            | record2_link            | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum | BankCreditCard_bankDetails_rowNum1 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Current Account    | Add/View Bank Details   | Add Manual Bank Details | bank_credit_card_details.xlsx | bank_details               | 17                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Saving Account     | Add/View Bank Details   | Add Manual Bank Details | bank_credit_card_details.xlsx | bank_details               | 16                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | KCC Account        | Add/View Bank Details   | Add Manual Bank Details | bank_credit_card_details.xlsx | bank_details               | 18                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Over Draft Account | Add/View Bank Details   | Add Manual Bank Details | bank_credit_card_details.xlsx | bank_details               | 20                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Cash Credit        | Add/View Bank Details   | Add Manual Bank Details | bank_credit_card_details.xlsx | bank_details               | 19                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Current Account    | Add Manual Bank Details | Add/View Bank Details   | bank_credit_card_details.xlsx | bank_details               | 17                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Saving Account     | Add Manual Bank Details | Add/View Bank Details   | bank_credit_card_details.xlsx | bank_details               | 16                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | KCC Account        | Add Manual Bank Details | Add/View Bank Details   | bank_credit_card_details.xlsx | bank_details               | 18                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Over Draft Account | Add Manual Bank Details | Add/View Bank Details   | bank_credit_card_details.xlsx | bank_details               | 20                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Cash Credit        | Add Manual Bank Details | Add/View Bank Details   | bank_credit_card_details.xlsx | bank_details               | 19                                | 49                                 |

    #09-CAS-59491,CAS-182238,CAS-182861,CAS-197652
  #FeatureID-ACAUTOCAS-172
  @Sanity
  Scenario Outline: ACAUTOCAS-12862:  Bank Details should be saved successfully without filling <Field_Name> at <ApplicationStage> stage for <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user reads data from the excel file "<BankCreditCardWB>" under sheet "<BankCreditCard_bankDetails>" and row <BankCreditCard_bankDetails_rowNum>
    And user navigates to personal information page of "<ApplicationStage>"
    And user clicks on Bank and Credit Details
    And user delete existing bank details
    And user click on plus sign of Bank Details
    When user fills bank details without filling "<Field_Name>"
    And user reads data from the excel file "<BankCreditCardWB>" under sheet "<BankCreditCard_bankDetails>" and row <BankCreditCard_bankDetails_rowNum1>
    And user fills Bank Statement Details for present as Physical
    And user clicks on Add Manual Bank Details hyperlink
    And user reads data from the excel file "<BankCreditCardWB>" under sheet "<BankCreditCard_bankDetails>" and row <BankCreditCard_bankDetails_rowNum>
    And user fills field in Add manual Bank details with save
    And user clicks on save button in Bank details
    Then bank details should be able to saved successfully
    @Release @Part-1
    @Conventional
    @ImplementedBy-manish.yadav2
#${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Category | key | Field_Name | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum | BankCreditCard_bankDetails_rowNum1 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | IFSC       | bank_credit_card_details.xlsx | bank_details               | 17                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | IFSC       | bank_credit_card_details.xlsx | bank_details               | 17                                | 49                                 |
# ${ ProductType : ["IHF","IAF"]}
# ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-harshita.nayak
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Category   | key | Field_Name | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum | BankCreditCard_bankDetails_rowNum1 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | IFSC       | bank_credit_card_details.xlsx | bank_details               | 17                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |            |     | IFSC       | bank_credit_card_details.xlsx | bank_details               | 17                                | 49                                 |
    #${ ProductType : ["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${ Category:["bonds","shares","metals"]}
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-harshita.nayak
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Category   | key | Field_Name | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum | BankCreditCard_bankDetails_rowNum1 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | IFSC       | bank_credit_card_details.xlsx | bank_details               | 17                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | IFSC       | bank_credit_card_details.xlsx | bank_details               | 17                                | 49                                 |
#${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
#${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
    @NotImplemented
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Category | key | Field_Name | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum | BankCreditCard_bankDetails_rowNum1 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | IFSC       | bank_credit_card_details.xlsx | bank_details               | 17                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | IFSC       | bank_credit_card_details.xlsx | bank_details               | 17                                | 49                                 |


   #10-CAS-59491,CAS-197652,CAS-189642,CAS-143859
  #FeatureID-ACAUTOCAS-172
  Scenario Outline: ACAUTOCAS-12863:  Default bank details should be in enable mode for Bank Details for Type of Account as <account_type>  at <ApplicationStage> stage for <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user reads data from the excel file "<BankCreditCardWB>" under sheet "<BankCreditCard_bankDetails>" and row <BankCreditCard_bankDetails_rowNum>
    And user navigates to personal information page of "<ApplicationStage>"
    And user clicks on Bank and Credit Details
    And user delete existing bank details
    And user click on plus sign of Bank Details
    When user select Type of Account as "<account_type>"
    Then Default bank details should be in enable mode for Bank Details
    @Release @Part-1
    @Conventional
    @ImplementedBy-manish.yadav2
#${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Category | key | account_type       | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Current Account    | bank_credit_card_details.xlsx | bank_details               | 17                                |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Saving Account     | bank_credit_card_details.xlsx | bank_details               | 16                                |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | KCC Account        | bank_credit_card_details.xlsx | bank_details               | 18                                |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Over Draft Account | bank_credit_card_details.xlsx | bank_details               | 20                                |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Cash Credit        | bank_credit_card_details.xlsx | bank_details               | 19                                |
# ${ ProductType : ["IHF","IAF"]}
# ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-harshita.nayak
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Category | key | account_type       | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Current Account    | bank_credit_card_details.xlsx | bank_details               | 17                                |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Saving Account     | bank_credit_card_details.xlsx | bank_details               | 16                                |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | KCC Account        | bank_credit_card_details.xlsx | bank_details               | 18                                |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Over Draft Account | bank_credit_card_details.xlsx | bank_details               | 20                                |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Cash Credit        | bank_credit_card_details.xlsx | bank_details               | 19                                |
    #${ ProductType : ["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${ Category:["bonds","shares","metals"]}
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-harshita.nayak
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Category   | key | account_type       | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Current Account    | bank_credit_card_details.xlsx | bank_details               | 17                                |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Saving Account     | bank_credit_card_details.xlsx | bank_details               | 16                                |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | KCC Account        | bank_credit_card_details.xlsx | bank_details               | 18                                |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Over Draft Account | bank_credit_card_details.xlsx | bank_details               | 20                                |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Cash Credit        | bank_credit_card_details.xlsx | bank_details               | 19                                |
#${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
#${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
    @NotImplemented
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Category | key | account_type       | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Current Account    | bank_credit_card_details.xlsx | bank_details               | 17                                |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Saving Account     | bank_credit_card_details.xlsx | bank_details               | 16                                |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | KCC Account        | bank_credit_card_details.xlsx | bank_details               | 18                                |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Over Draft Account | bank_credit_card_details.xlsx | bank_details               | 20                                |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Cash Credit        | bank_credit_card_details.xlsx | bank_details               | 19                                |


    #CAS-172175
  #FeatureID-ACAUTOCAS-172
  Scenario Outline: ACAUTOCAS-12864: Account Opening Date should be in enable mode for Bank Details for Type of Account as <account_type>  at <ApplicationStage> stage for <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user reads data from the excel file "<BankCreditCardWB>" under sheet "<BankCreditCard_bankDetails>" and row <BankCreditCard_bankDetails_rowNum>
    And user navigates to personal information page of "<ApplicationStage>"
    And user clicks on Bank and Credit Details
    And user delete existing bank details
    And user click on plus sign of Bank Details
    When user select Type of Account as "<account_type>"
    Then Account Opening Date should be in enable mode for Bank Details
    @Release @Part-1
    @Conventional
    @ImplementedBy-manish.yadav2
#${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Category | key | account_type       | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Current Account    | bank_credit_card_details.xlsx | bank_details               | 17                                |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Saving Account     | bank_credit_card_details.xlsx | bank_details               | 16                                |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | KCC Account        | bank_credit_card_details.xlsx | bank_details               | 18                                |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Over Draft Account | bank_credit_card_details.xlsx | bank_details               | 20                                |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Cash Credit        | bank_credit_card_details.xlsx | bank_details               | 19                                |
# ${ ProductType : ["IHF","IAF"]}
# ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-harshita.nayak
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Category | key | account_type       | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Current Account    | bank_credit_card_details.xlsx | bank_details               | 17                                |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Saving Account     | bank_credit_card_details.xlsx | bank_details               | 16                                |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | KCC Account        | bank_credit_card_details.xlsx | bank_details               | 18                                |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Over Draft Account | bank_credit_card_details.xlsx | bank_details               | 20                                |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Cash Credit        | bank_credit_card_details.xlsx | bank_details               | 19                                |
 #${ ProductType : ["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${ Category:["bonds","shares","metals"]}
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-harshita.nayak
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Category   | key | account_type       | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Current Account    | bank_credit_card_details.xlsx | bank_details               | 17                                |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Saving Account     | bank_credit_card_details.xlsx | bank_details               | 16                                |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | KCC Account        | bank_credit_card_details.xlsx | bank_details               | 18                                |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Over Draft Account | bank_credit_card_details.xlsx | bank_details               | 20                                |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Cash Credit        | bank_credit_card_details.xlsx | bank_details               | 19                                |
#${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
#${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
    @NotImplemented
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Category | key | account_type       | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Current Account    | bank_credit_card_details.xlsx | bank_details               | 17                                |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Saving Account     | bank_credit_card_details.xlsx | bank_details               | 16                                |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | KCC Account        | bank_credit_card_details.xlsx | bank_details               | 18                                |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Over Draft Account | bank_credit_card_details.xlsx | bank_details               | 20                                |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Cash Credit        | bank_credit_card_details.xlsx | bank_details               | 19                                |


  #02_CAS-64913
  #FeatureID-ACAUTOCAS-172
  @Perishable
   @Sanity
  Scenario Outline: ACAUTOCAS-12865:  Move the application till <ApplicationStage> stage without enter bank details at Lead Details Stage for <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row <SourcingDetails_home_rowNum>
    And user navigates to personal information page of "<ApplicationStage>"
    And user clicks on Bank and Credit Details
    And user do not enter the bank details at "<ApplicationStage>"
    When user moves application from "<ApplicationStage>" stage to application of "<ProductType>" product type as "<ApplicantType>" applicant at "<MovedStage>" for "<Category>" with "<key>" stage without opening it
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<MovedStage>" for "<Category>" with "<key>" from application grid
    Then application should be move to "<MovedStage>" without enter bank details successfully
    @Release @Part-1
    @Conventional
    @ImplementedBy-manish.yadav2
#${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Lead Details"]}
   #${MovedStage:["POST APPROVAL"]}
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | MovedStage   | Category | key | SourcingDetailsWB     | SourcingDetails_home | SourcingDetails_home_rowNum |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <MovedStage> |          |     | sourcing_details.xlsx | home                 | 281                         |
# ${ ProductType : ["IHF","IAF"]}
#${ApplicationStage:["Sourcing"]}
   #${MovedStage:["POST APPROVAL"]}
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-harshita.nayak
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | MovedStage   | Category | key | SourcingDetailsWB     | SourcingDetails_home | SourcingDetails_home_rowNum |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <MovedStage> |          |     | sourcing_details.xlsx | home                 | 281                         |
    #${ ProductType : ["IPF"]}
    #${ApplicationStage:["Sourcing"]}
   #${MovedStage:["POST APPROVAL"]}
    #${ Category:["bonds","shares","metals"]}
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-harshita.nayak
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | MovedStage   | Category   | key | SourcingDetailsWB     | SourcingDetails_home | SourcingDetails_home_rowNum |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <MovedStage> | <Category> |     | sourcing_details.xlsx | home                 | 281                         |
#${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
 #${ApplicationStage:["Lead Details"]}
   #${MovedStage:["POST APPROVAL"]}
    @NotImplemented
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | MovedStage   | Category | key | SourcingDetailsWB     | SourcingDetails_home | SourcingDetails_home_rowNum |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <MovedStage> |          |     | sourcing_details.xlsx | home                 | 281                         |

  #03_CAS-64913
  #FeatureID-ACAUTOCAS-172
  @Perishable
  Scenario Outline: ACAUTOCAS-12866: Verify Repayment Instrument Details Should be null at <ApplicationStage> stage for <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row <SourcingDetails_home_rowNum>
    And user navigates to personal information page of "<ApplicationStage>"
    And user clicks on Bank and Credit Details
    And user do not enter the bank details at "<ApplicationStage>"
    And user moves application from "<ApplicationStage>" stage to application of "<ProductType>" product type as "<ApplicantType>" applicant at "<MovedStage>" for "<Category>" with "<key>" stage without opening it
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<MovedStage>" for "<Category>" with "<key>" from application grid
    When user open repayment instrument details
    Then user should be able to validate that the Repayment Instrument Details are null
    @Release @Part-1
    @Conventional
    @ImplementedBy-manish.yadav2
#${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
#${ApplicationStage:["Lead Details"]}
   #${MovedStage:["DISBURSAL"]}
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | MovedStage   | Category | key | SourcingDetailsWB     | SourcingDetails_home | SourcingDetails_home_rowNum |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <MovedStage> |          |     | sourcing_details.xlsx | home                 | 282                         |
# ${ ProductType : ["IHF","IAF"]}
#${ApplicationStage:["Sourcing"]}
   #${MovedStage:["DISBURSAL"]}
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-harshita.nayak
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | MovedStage   | Category | key | SourcingDetailsWB     | SourcingDetails_home | SourcingDetails_home_rowNum |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <MovedStage> |          |     | sourcing_details.xlsx | home                 | 282                         |
  #${ ProductType : ["IPF"]}
    #${ApplicationStage:["Sourcing"]}
   #${MovedStage:["DISBURSAL"]}
    #${ Category:["bonds","shares","metals"]}
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-harshita.nayak
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | MovedStage   | Category   | key | SourcingDetailsWB     | SourcingDetails_home | SourcingDetails_home_rowNum |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <MovedStage> | <Category> |     | sourcing_details.xlsx | home                 | 282                         |
#${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
#${ApplicationStage:["Lead Details"]}
   #${MovedStage:["DISBURSAL"]}
    @NotImplemented
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | MovedStage   | Category | key | SourcingDetailsWB     | SourcingDetails_home | SourcingDetails_home_rowNum |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <MovedStage> |          |     | sourcing_details.xlsx | home                 | 282                         |

    #04_CAS-64913
  #FeatureID-ACAUTOCAS-172
  @Perishable
  Scenario Outline: ACAUTOCAS-12867: Verify Send Bank application should be available at <ApplicationStage> stage for <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user reads data from the excel file "<MoreActionsWB>" under sheet "<MoreActions_sendBack>" and row <MoreActions_sendBack_rowNum>
    When user send back above application to "<MovedStage>" stage
    Then above application is on "<MovedStage>" stage
    @Release @Part-1
    @Conventional
    @ImplementedBy-manish.yadav2
#${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
   #${ApplicationStage:["Disbursal"]}
    #${MovedStage:["CREDIT APPROVAL"]}
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | MovedStage   | Category | key | MoreActionsWB     | MoreActions_sendBack | MoreActions_sendBack_rowNum |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <MovedStage> |          |     | more_actions.xlsx | send_back            | 9                           |
# ${ ProductType : ["IHF","IAF"]}
#${ApplicationStage:["Disbursal"]}
    #${MovedStage:["CREDIT APPROVAL"]}
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-harshita.nayak
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | MovedStage   | Category | key | MoreActionsWB     | MoreActions_sendBack | MoreActions_sendBack_rowNum |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <MovedStage> |          |     | more_actions.xlsx | send_back            | 9                           |
#${ ProductType : ["IPF"]}
#${ApplicationStage:["Disbursal"]}
    #${MovedStage:["CREDIT APPROVAL"]}
      #${ Category:["bonds","shares","metals"]}
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-harshita.nayak
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | MovedStage   | Category   | key | MoreActionsWB     | MoreActions_sendBack | MoreActions_sendBack_rowNum |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <MovedStage> | <Category> |     | more_actions.xlsx | send_back            | 9                           |
#${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
#${ApplicationStage:["Disbursal"]}
    #${MovedStage:["CREDIT APPROVAL"]}
    @NotImplemented
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | MovedStage   | Category | key | MoreActionsWB     | MoreActions_sendBack | MoreActions_sendBack_rowNum |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <MovedStage> |          |     | more_actions.xlsx | send_back            | 9                           |

   #03_49952
  #FeatureID-ACAUTOCAS-172
  Scenario Outline: ACAUTOCAS-12868: Add View Bank should be saved successfully with selection of <dropdown_field> at <ApplicationStage> stage for <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user reads data from the excel file "<BankCreditCardWB>" under sheet "<BankCreditCard_bankDetails>" and row <BankCreditCard_bankDetails_rowNum>
    And user navigates to personal information page of "<ApplicationStage>"
    And user clicks on Bank and Credit Details
    And user delete existing bank details
    And user click on plus sign of Bank Details
    And user fills all the required details of bank details for account type as "<AccountType>"
    And user reads data from the excel file "<BankCreditCardWB>" under sheet "<BankCreditCard_bankDetails>" and row <BankCreditCard_bankDetails_rowNum1>
    And user fills Bank Statement Details for present as Physical
    And user reads data from the excel file "<BankCreditCardWB>" under sheet "<BankCreditCard_bankDetails>" and row <BankCreditCard_bankDetails_rowNum>
    And user clicks on Add view Bank Details hyperlink
    When user fills field in Add view Bank details with save
    And user clicks on save button in Bank details
    Then add view bank details should be saved successfully
    @Release @Part-1
    @Conventional
    @ImplementedBy-manish.yadav2
#${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Category | key | AccountType     | dropdown_field | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum | BankCreditCard_bankDetails_rowNum1 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Saving Account  | NRE            | bank_credit_card_details.xlsx | bank_details               | 16                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Saving Account  | NRO            | bank_credit_card_details.xlsx | bank_details               | 21                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Current Account | NRE            | bank_credit_card_details.xlsx | bank_details               | 17                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Current Account | NRO            | bank_credit_card_details.xlsx | bank_details               | 22                                | 49                                 |
# ${ ProductType : ["IHF","IAF"]}
# ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-harshita.nayak
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Category | key | AccountType     | dropdown_field | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum | BankCreditCard_bankDetails_rowNum1 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Saving Account  | NRE            | bank_credit_card_details.xlsx | bank_details               | 16                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Saving Account  | NRO            | bank_credit_card_details.xlsx | bank_details               | 21                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Current Account | NRE            | bank_credit_card_details.xlsx | bank_details               | 17                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Current Account | NRO            | bank_credit_card_details.xlsx | bank_details               | 22                                | 49                                 |
    #${ ProductType : ["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${ Category:["bonds","shares","metals"]}
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-harshita.nayak
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Category   | key | AccountType     | dropdown_field | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum | BankCreditCard_bankDetails_rowNum1 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Saving Account  | NRE            | bank_credit_card_details.xlsx | bank_details               | 16                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Saving Account  | NRO            | bank_credit_card_details.xlsx | bank_details               | 21                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Current Account | NRE            | bank_credit_card_details.xlsx | bank_details               | 17                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Current Account | NRO            | bank_credit_card_details.xlsx | bank_details               | 22                                | 49                                 |
#${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
#${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
    @NotImplemented
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Category | key | AccountType     | dropdown_field | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum | BankCreditCard_bankDetails_rowNum1 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Saving Account  | NRE            | bank_credit_card_details.xlsx | bank_details               | 16                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Saving Account  | NRO            | bank_credit_card_details.xlsx | bank_details               | 21                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Current Account | NRE            | bank_credit_card_details.xlsx | bank_details               | 17                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Current Account | NRO            | bank_credit_card_details.xlsx | bank_details               | 22                                | 49                                 |

    #02_49952
  #FeatureID-ACAUTOCAS-172
  @Sanity
  Scenario Outline: ACAUTOCAS-12869: Add Manual Bank should be saved successfully with selection of <dropdown_field> at <ApplicationStage> stage for <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user reads data from the excel file "<BankCreditCardWB>" under sheet "<BankCreditCard_bankDetails>" and row <BankCreditCard_bankDetails_rowNum>
    And user navigates to personal information page of "<ApplicationStage>"
    And user clicks on Bank and Credit Details
    And user delete existing bank details
    And user click on plus sign of Bank Details
    And user fills all the required details of bank details for account type as "<AccountType>"
    And user reads data from the excel file "<BankCreditCardWB>" under sheet "<BankCreditCard_bankDetails>" and row <BankCreditCard_bankDetails_rowNum1>
    And user fills Bank Statement Details for present as Physical
    And user reads data from the excel file "<BankCreditCardWB>" under sheet "<BankCreditCard_bankDetails>" and row <BankCreditCard_bankDetails_rowNum>
    And user clicks on Add Manual Bank Details hyperlink
    When user fills field in Add manual Bank details with save
    And user clicks on save button in Bank details
    Then add manual bank details should be saved successfully
    @Release @Part-1
    @Conventional
    @ImplementedBy-manish.yadav2
#${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Category | key | AccountType     | dropdown_field | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum | BankCreditCard_bankDetails_rowNum1 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Saving Account  | NRE            | bank_credit_card_details.xlsx | bank_details               | 16                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Saving Account  | NRO            | bank_credit_card_details.xlsx | bank_details               | 21                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Current Account | NRE            | bank_credit_card_details.xlsx | bank_details               | 17                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Current Account | NRO            | bank_credit_card_details.xlsx | bank_details               | 22                                | 49                                 |
# ${ ProductType : ["IHF","IAF"]}
# ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-harshita.nayak
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Category | key | AccountType     | dropdown_field | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum | BankCreditCard_bankDetails_rowNum1 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Saving Account  | NRE            | bank_credit_card_details.xlsx | bank_details               | 16                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Saving Account  | NRO            | bank_credit_card_details.xlsx | bank_details               | 21                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Current Account | NRE            | bank_credit_card_details.xlsx | bank_details               | 17                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Current Account | NRO            | bank_credit_card_details.xlsx | bank_details               | 22                                | 49                                 |
    #${ ProductType : ["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${ Category:["bonds","shares","metals"]}
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-harshita.nayak
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Category   | key | AccountType     | dropdown_field | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum | BankCreditCard_bankDetails_rowNum1 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Saving Account  | NRE            | bank_credit_card_details.xlsx | bank_details               | 16                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Saving Account  | NRO            | bank_credit_card_details.xlsx | bank_details               | 21                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Current Account | NRE            | bank_credit_card_details.xlsx | bank_details               | 17                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Current Account | NRO            | bank_credit_card_details.xlsx | bank_details               | 22                                | 49                                 |
#${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
#${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
    @NotImplemented
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Category | key | AccountType     | dropdown_field | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum | BankCreditCard_bankDetails_rowNum1 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Saving Account  | NRE            | bank_credit_card_details.xlsx | bank_details               | 16                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Saving Account  | NRO            | bank_credit_card_details.xlsx | bank_details               | 21                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Current Account | NRE            | bank_credit_card_details.xlsx | bank_details               | 17                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Current Account | NRO            | bank_credit_card_details.xlsx | bank_details               | 22                                | 49                                 |


   #15_49952
  #FeatureID-ACAUTOCAS-172
  Scenario Outline: ACAUTOCAS-12870: On Add view Bank Details NRE NRO field should be disabled with selection of Type of Account as <account_type> at <ApplicationStage> stage for <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user reads data from the excel file "<BankCreditCardWB>" under sheet "<BankCreditCard_bankDetails>" and row <BankCreditCard_bankDetails_rowNum>
    And user navigates to personal information page of "<ApplicationStage>"
    And user clicks on Bank and Credit Details
    And user delete existing bank details
    And user click on plus sign of Bank Details
    When user select Type of Account as "<account_type>"
    And user reads data from the excel file "<BankCreditCardWB>" under sheet "<BankCreditCard_bankDetails>" and row <BankCreditCard_bankDetails_rowNum1>
    And user fills Bank Statement Details for present as Physical
    And user clicks on Add view Bank Details hyperlink
    Then NRE NRO field should be disabled in Add view Bank Details
    @Release @Part-1
    @Conventional
    @ImplementedBy-manish.yadav2
#${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Category | key | account_type       | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum | BankCreditCard_bankDetails_rowNum1 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | KCC Account        | bank_credit_card_details.xlsx | bank_details               | 18                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Over Draft Account | bank_credit_card_details.xlsx | bank_details               | 20                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Cash Credit        | bank_credit_card_details.xlsx | bank_details               | 19                                | 49                                 |
# ${ ProductType : ["IHF","IAF"]}
# ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-harshita.nayak
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Category | key | account_type       | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum | BankCreditCard_bankDetails_rowNum1 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | KCC Account        | bank_credit_card_details.xlsx | bank_details               | 18                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Over Draft Account | bank_credit_card_details.xlsx | bank_details               | 20                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Cash Credit        | bank_credit_card_details.xlsx | bank_details               | 19                                | 49                                 |
 #${ ProductType : ["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${ Category:["bonds","shares","metals"]}
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-harshita.nayak
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Category   | key | account_type       | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum | BankCreditCard_bankDetails_rowNum1 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | KCC Account        | bank_credit_card_details.xlsx | bank_details               | 18                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Over Draft Account | bank_credit_card_details.xlsx | bank_details               | 20                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Cash Credit        | bank_credit_card_details.xlsx | bank_details               | 19                                | 49                                 |
#${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
#${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
    @NotImplemented
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Category | key | account_type       | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum | BankCreditCard_bankDetails_rowNum1 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | KCC Account        | bank_credit_card_details.xlsx | bank_details               | 18                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Over Draft Account | bank_credit_card_details.xlsx | bank_details               | 20                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Cash Credit        | bank_credit_card_details.xlsx | bank_details               | 19                                | 49                                 |
#
    #15_49952
  #FeatureID-ACAUTOCAS-172
  Scenario Outline: ACAUTOCAS-12871: On Add Manual Bank Details NRE NRO field should be disabled with selection of Type of Account as <account_type> at <ApplicationStage> stage for <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user reads data from the excel file "<BankCreditCardWB>" under sheet "<BankCreditCard_bankDetails>" and row <BankCreditCard_bankDetails_rowNum>
    And user navigates to personal information page of "<ApplicationStage>"
    And user clicks on Bank and Credit Details
    And user delete existing bank details
    And user click on plus sign of Bank Details
    When user select Type of Account as "<account_type>"
    And user clicks on Add Manual Bank Details hyperlink
    Then NRE NRO field should be disabled in Add Manual Bank Details
    @Release @Part-1
    @Conventional
    @ImplementedBy-manish.yadav2
#${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Category | key | account_type       | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | KCC Account        | bank_credit_card_details.xlsx | bank_details               | 18                                |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Over Draft Account | bank_credit_card_details.xlsx | bank_details               | 20                                |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Cash Credit        | bank_credit_card_details.xlsx | bank_details               | 19                                |
# ${ ProductType : ["IHF","IAF"]}
# ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-harshita.nayak
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Category | key | account_type       | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | KCC Account        | bank_credit_card_details.xlsx | bank_details               | 18                                |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Over Draft Account | bank_credit_card_details.xlsx | bank_details               | 20                                |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Cash Credit        | bank_credit_card_details.xlsx | bank_details               | 19                                |
    #${ ProductType : ["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${ Category:["bonds","shares","metals"]}
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-harshita.nayak
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Category   | key | account_type       | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | KCC Account        | bank_credit_card_details.xlsx | bank_details               | 18                                |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Over Draft Account | bank_credit_card_details.xlsx | bank_details               | 20                                |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Cash Credit        | bank_credit_card_details.xlsx | bank_details               | 19                                |
#${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
#${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
    @NotImplemented
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Category | key | account_type       | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | KCC Account        | bank_credit_card_details.xlsx | bank_details               | 18                                |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Over Draft Account | bank_credit_card_details.xlsx | bank_details               | 20                                |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Cash Credit        | bank_credit_card_details.xlsx | bank_details               | 19                                |


   #CAS-123602,CAS-129757,CAS-128561,CAS-197430,CAS-184537
  #FeatureID-ACAUTOCAS-172
  @Sanity
  Scenario Outline: ACAUTOCAS-12872: Bank details file should be uploaded successfully for Type of Account as <AccountType> at <ApplicationStage> stage for <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user reads data from the excel file "<BankCreditCardWB>" under sheet "<BankCreditCard_bankDetails>" and row <BankCreditCard_bankDetails_rowNum>
    And user navigates to personal information page of "<ApplicationStage>"
    And user clicks on Bank and Credit Details
    And user delete existing bank details
    And user click on plus sign of Bank Details
    And user fills all the required details of bank details for account type as "<AccountType>"
    And user reads data from the excel file "<BankCreditCardWB>" under sheet "<BankCreditCard_bankDetails>" and row <BankCreditCard_bankDetails_rowNum1>
    And user fills Bank Statement Details for present as Physical
    And user reads data from the excel file "<BankCreditCardWB>" under sheet "<BankCreditCard_bankDetails>" and row <BankCreditCard_bankDetails_rowNum>
    And user clicks on Add view Bank Details hyperlink
    And user download template file in Add view Bank details
    When user upload the bank details file in Add view Bank details
    Then bank details file should be uploaded successfully
        #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
  #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @Release @Part-1
    @ImplementedBy-manish.yadav2
    @Conventional
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Category | key | AccountType        | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum | BankCreditCard_bankDetails_rowNum1 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Current Account    | bank_credit_card_details.xlsx | bank_details               | 17                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Saving Account     | bank_credit_card_details.xlsx | bank_details               | 16                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | KCC Account        | bank_credit_card_details.xlsx | bank_details               | 18                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Over Draft Account | bank_credit_card_details.xlsx | bank_details               | 20                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Cash Credit        | bank_credit_card_details.xlsx | bank_details               | 19                                | 49                                 |
#${ ProductType : ["IHF","IAF"]}
   #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-harshita.nayak
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Category | key | AccountType        | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum | BankCreditCard_bankDetails_rowNum1 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Current Account    | bank_credit_card_details.xlsx | bank_details               | 17                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Saving Account     | bank_credit_card_details.xlsx | bank_details               | 16                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | KCC Account        | bank_credit_card_details.xlsx | bank_details               | 18                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Over Draft Account | bank_credit_card_details.xlsx | bank_details               | 20                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Cash Credit        | bank_credit_card_details.xlsx | bank_details               | 19                                | 49                                 |

 #${ProductType : ["IPF"]}
    #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
   #${ Category:["bonds","shares","metals"]}
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-harshita.nayak
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Category   | key | AccountType        | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum | BankCreditCard_bankDetails_rowNum1 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Current Account    | bank_credit_card_details.xlsx | bank_details               | 17                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Saving Account     | bank_credit_card_details.xlsx | bank_details               | 16                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | KCC Account        | bank_credit_card_details.xlsx | bank_details               | 18                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Over Draft Account | bank_credit_card_details.xlsx | bank_details               | 20                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Cash Credit        | bank_credit_card_details.xlsx | bank_details               | 19                                | 49                                 |
 # ${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
    #${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
    @NotImplemented
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Category | key | AccountType        | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum | BankCreditCard_bankDetails_rowNum1 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Current Account    | bank_credit_card_details.xlsx | bank_details               | 17                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Saving Account     | bank_credit_card_details.xlsx | bank_details               | 16                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | KCC Account        | bank_credit_card_details.xlsx | bank_details               | 18                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Over Draft Account | bank_credit_card_details.xlsx | bank_details               | 20                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Cash Credit        | bank_credit_card_details.xlsx | bank_details               | 19                                | 49                                 |


    #CAS-132890,CAS-129215,CAS-128561
  #FeatureID-ACAUTOCAS-172
  @longRun
    @Perishable
    @FixedExp
    @Sanity
  Scenario Outline: ACAUTOCAS-12873: During copying application in the Bank detail section "<Field_Name>" should be copied successfully at "<ApplicationStage>" stage for "<ProductType>"
    And user picks an application of "<ProductType>" product type as "<ApplicantType>" applicant at stage "<ApplicationStage>" for category "<Category>" with key "<key>"
    And user reads data from the excel file "copy_application.xlsx" under sheet "<CopyApplication_SheetName>" and row <CopyApplication_rowNum>
    And user navigates to copy application screen
    And user searches the particular application in copy application screen
    And user copy the application
    And user record the generated application
    And user opens an application of "DDE" stage present in context from application grid
    And click on view edit detailed info
    When user clicks on Bank and Credit Details
    Then in the bank details section "<Field_Name>" should be copied successfully
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
  #${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
    @Release @Part-1
    @ImplementedBy-manish.yadav2
    @Conventional
    @CopySanity
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Category | key | Field_Name     | CopyApplication_SheetName | CopyApplication_rowNum |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Branch Name    | personal                  | 10                     |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Bank Name      | personal                  | 10                     |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | IFSC           | personal                  | 10                     |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Account Number | personal                  | 10                     |
#${ ProductType : ["IHF","IAF"]}
   #${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-harshita.nayak
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Category | key | Field_Name     | CopyApplication_SheetName | CopyApplication_rowNum |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Branch Name    | personal                  | 32                     |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Bank Name      | personal                  | 32                     |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | IFSC           | personal                  | 32                     |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Account Number | personal                  | 32                     |
  #${ProductType : ["IPF"]}
    #${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${ Category:["bonds","shares","metals"]}
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-harshita.nayak
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Category   | key | Field_Name     | CopyApplication_SheetName | CopyApplication_rowNum |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Branch Name    | home                      | 32                     |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Bank Name      | home                      | 32                     |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | IFSC           | home                      | 32                     |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Account Number | home                      | 32                     |

#  ${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
#    ${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
    @NotImplemented
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Category | key | Field_Name     | CopyApplication_SheetName | CopyApplication_rowNum |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Branch Name    | personal                  | 10                     |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Bank Name      | personal                  | 10                     |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | IFSC           | personal                  | 10                     |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Account Number | personal                  | 10                     |

   #CAS-172535,CAS-137742
  #FeatureID-ACAUTOCAS-172
  Scenario Outline: ACAUTOCAS-12874:  User should be able to download template in bank details for Type of Account as <AccountType> at <ApplicationStage> stage for <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user reads data from the excel file "<BankCreditCardWB>" under sheet "<BankCreditCard_bankDetails>" and row <BankCreditCard_bankDetails_rowNum>
    And user navigates to personal information page of "<ApplicationStage>"
    And user clicks on Bank and Credit Details
    And user delete existing bank details
    And user click on plus sign of Bank Details
    And user fills all the required details of bank details for account type as "<AccountType>"
    And user reads data from the excel file "<BankCreditCardWB>" under sheet "<BankCreditCard_bankDetails>" and row <BankCreditCard_bankDetails_rowNum1>
    And user fills Bank Statement Details for present as Physical
    And user reads data from the excel file "<BankCreditCardWB>" under sheet "<BankCreditCard_bankDetails>" and row <BankCreditCard_bankDetails_rowNum>
    And user clicks on Add view Bank Details hyperlink
    When user download template file in Add view Bank details
    Then template should be downloaded successfully in bank details
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
  #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @Release @Part-1
    @ImplementedBy-manish.yadav2
    @Conventional
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Category | key | AccountType        | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum | BankCreditCard_bankDetails_rowNum1 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Current Account    | bank_credit_card_details.xlsx | bank_details               | 17                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Saving Account     | bank_credit_card_details.xlsx | bank_details               | 16                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | KCC Account        | bank_credit_card_details.xlsx | bank_details               | 18                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Over Draft Account | bank_credit_card_details.xlsx | bank_details               | 20                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Cash Credit        | bank_credit_card_details.xlsx | bank_details               | 19                                | 49                                 |
#${ ProductType : ["IHF","IAF"]}
   #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-harshita.nayak
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Category | key | AccountType        | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum | BankCreditCard_bankDetails_rowNum1 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Current Account    | bank_credit_card_details.xlsx | bank_details               | 17                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Saving Account     | bank_credit_card_details.xlsx | bank_details               | 16                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | KCC Account        | bank_credit_card_details.xlsx | bank_details               | 18                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Over Draft Account | bank_credit_card_details.xlsx | bank_details               | 20                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Cash Credit        | bank_credit_card_details.xlsx | bank_details               | 19                                | 49                                 |

    #${ProductType : ["IPF"]}
    #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${ Category:["bonds","shares","metals"]}
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-harshita.nayak
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Category   | key | AccountType        | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum | BankCreditCard_bankDetails_rowNum1 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Current Account    | bank_credit_card_details.xlsx | bank_details               | 17                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Saving Account     | bank_credit_card_details.xlsx | bank_details               | 16                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | KCC Account        | bank_credit_card_details.xlsx | bank_details               | 18                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Over Draft Account | bank_credit_card_details.xlsx | bank_details               | 20                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Cash Credit        | bank_credit_card_details.xlsx | bank_details               | 19                                | 49                                 |
 # ${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
    #${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
    @NotImplemented
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Category | key | AccountType        | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum | BankCreditCard_bankDetails_rowNum1 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Current Account    | bank_credit_card_details.xlsx | bank_details               | 17                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Saving Account     | bank_credit_card_details.xlsx | bank_details               | 16                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | KCC Account        | bank_credit_card_details.xlsx | bank_details               | 18                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Over Draft Account | bank_credit_card_details.xlsx | bank_details               | 20                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Cash Credit        | bank_credit_card_details.xlsx | bank_details               | 19                                | 49                                 |

    #CAS-175406,CAS-125043,CAS-171292,CAS-182169,CAS-174756,CAS-164794,CAS-123421,CAS-118239,CAS-185510,01_CAS-51973,02_CAS-51973
  #FeatureID-ACAUTOCAS-172
  Scenario Outline: ACAUTOCAS-12875: Upload the bank details file with filled Average Balance for Type of Account as <AccountType> Consolidated Average Balance should be calculated at <ApplicationStage> stage for <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user reads data from the excel file "<BankCreditCardWB>" under sheet "<BankCreditCard_bankDetails>" and row <BankCreditCard_bankDetails_rowNum>
    And user navigates to personal information page of "<ApplicationStage>"
    And user clicks on Bank and Credit Details
    And user delete existing bank details
    And user click on plus sign of Bank Details
    And user fills all the required details of bank details for account type as "<AccountType>"
    And user reads data from the excel file "<BankCreditCardWB>" under sheet "<BankCreditCard_bankDetails>" and row <BankCreditCard_bankDetails_rowNum1>
    And user fills Bank Statement Details for present as Physical
    And user reads data from the excel file "<BankCreditCardWB>" under sheet "<BankCreditCard_bankDetails>" and row <BankCreditCard_bankDetails_rowNum>
    And user clicks on Add view Bank Details hyperlink
    And user select checkbox for Consider for Consolidated ABB option on Add view Bank Details
    When user upload the bank details file in Add view Bank details
    And user clicks on OK button of Add view Bank details
    And user clicks on save button in Bank details
    Then in "Consolidated Average Balance" data should be automatically populated in Bank Details

       #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
  #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @Release @Part-1
    @ImplementedBy-manish.yadav2
    @Conventional
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Category | key | AccountType     | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum | BankCreditCard_bankDetails_rowNum1 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Current Account | bank_credit_card_details.xlsx | bank_details               | 17                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Saving Account  | bank_credit_card_details.xlsx | bank_details               | 16                                | 49                                 |
  #${ ProductType : ["IHF","IAF"]}
   #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-harshita.nayak
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Category | key | AccountType     | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum | BankCreditCard_bankDetails_rowNum1 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Current Account | bank_credit_card_details.xlsx | bank_details               | 17                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Saving Account  | bank_credit_card_details.xlsx | bank_details               | 16                                | 49                                 |
    #${ProductType : ["IPF"]}
    #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
     #${ Category:["bonds","shares","metals"]}
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-harshita.nayak
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Category   | key | AccountType     | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum | BankCreditCard_bankDetails_rowNum1 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Current Account | bank_credit_card_details.xlsx | bank_details               | 17                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Saving Account  | bank_credit_card_details.xlsx | bank_details               | 16                                | 49                                 |
    # ${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
    #${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
    @NotImplemented
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Category | key | AccountType     | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum | BankCreditCard_bankDetails_rowNum1 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Current Account | bank_credit_card_details.xlsx | bank_details               | 17                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Saving Account  | bank_credit_card_details.xlsx | bank_details               | 16                                | 49                                 |


   #CAS-192590
  #FeatureID-ACAUTOCAS-172
  Scenario Outline: ACAUTOCAS-12876:  After upload banking file user should be able to check Consider for Consolidated ABB option at <ApplicationStage> stage for <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user reads data from the excel file "<BankCreditCardWB>" under sheet "<BankCreditCard_bankDetails>" and row <BankCreditCard_bankDetails_rowNum>
    And user navigates to personal information page of "<ApplicationStage>"
    And user clicks on Bank and Credit Details
    And user delete existing bank details
    And user click on plus sign of Bank Details
    And user fills all the required details of bank details for account type as "<AccountType>"
    And user reads data from the excel file "<BankCreditCardWB>" under sheet "<BankCreditCard_bankDetails>" and row <BankCreditCard_bankDetails_rowNum1>
    And user fills Bank Statement Details for present as Physical
    And user reads data from the excel file "<BankCreditCardWB>" under sheet "<BankCreditCard_bankDetails>" and row <BankCreditCard_bankDetails_rowNum>
    And user clicks on Add view Bank Details hyperlink
    And user select checkbox for Consider for Consolidated ABB option on Add view Bank Details
    When user upload the bank details file in Add view Bank details
    And user clicks on OK button of Add view Bank details
    And user clicks on save button in Bank details
    And user clicks on Add view Bank Details hyperlink
    Then should be able to check "Consider for Consolidated ABB" option in Add view Bank Details
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
   #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @Release @Part-1
    @ImplementedBy-manish.yadav2
    @Conventional
    @LoggedBug-CAS-224140
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Category | key | AccountType     | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum | BankCreditCard_bankDetails_rowNum1 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Current Account | bank_credit_card_details.xlsx | bank_details               | 17                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Saving Account  | bank_credit_card_details.xlsx | bank_details               | 16                                | 49                                 |
   #${ ProductType : ["IHF","IAF"]}
    #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-harshita.nayak
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Category | key | AccountType     | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum | BankCreditCard_bankDetails_rowNum1 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Current Account | bank_credit_card_details.xlsx | bank_details               | 17                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Saving Account  | bank_credit_card_details.xlsx | bank_details               | 16                                | 49                                 |
    #${ProductType : ["IPF"]}
    #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
     #${ Category:["bonds","shares","metals"]}
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-harshita.nayak
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Category   | key | AccountType     | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum | BankCreditCard_bankDetails_rowNum1 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Current Account | bank_credit_card_details.xlsx | bank_details               | 17                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Saving Account  | bank_credit_card_details.xlsx | bank_details               | 16                                | 49                                 |
    # ${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
    #${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
    @NotImplemented
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Category | key | AccountType     | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum | BankCreditCard_bankDetails_rowNum1 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Current Account | bank_credit_card_details.xlsx | bank_details               | 17                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Saving Account  | bank_credit_card_details.xlsx | bank_details               | 16                                | 49                                 |

   #    CAS-184380,CAS-144937,CAS-142254,CAS-184397
  #FeatureID-ACAUTOCAS-172
  @Sanity
  Scenario Outline: ACAUTOCAS-12877:  Save the bank details with success <message> for Type of Account as <AccountType> at <ApplicationStage> stage for <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user reads data from the excel file "<BankCreditCardWB>" under sheet "<BankCreditCard_bankDetails>" and row <BankCreditCard_bankDetails_rowNum>
    And user navigates to personal information page of "<ApplicationStage>"
    And user clicks on Bank and Credit Details
    And user delete existing bank details
    And user click on plus sign of Bank Details
    When user fills all the required details of bank details for account type as "<AccountType>"
    And user reads data from the excel file "<BankCreditCardWB>" under sheet "<BankCreditCard_bankDetails>" and row <BankCreditCard_bankDetails_rowNum1>
    And user fills Bank Statement Details for present as Physical
    And user reads data from the excel file "<BankCreditCardWB>" under sheet "<BankCreditCard_bankDetails>" and row <BankCreditCard_bankDetails_rowNum>
    And user clicks on Add view Bank Details hyperlink
    And user fills field in Add view Bank details with save
    And user clicks on save button in Bank details
    Then bank details should be able to saved successfully
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @Release @Part-1
    @ImplementedBy-manish.yadav2
    @Conventional
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Category | key | AccountType        | message                 | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum | BankCreditCard_bankDetails_rowNum1 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Current Account    | Data Saved Successfully | bank_credit_card_details.xlsx | bank_details               | 28                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Saving Account     | Data Saved Successfully | bank_credit_card_details.xlsx | bank_details               | 27                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | KCC Account        | Data Saved Successfully | bank_credit_card_details.xlsx | bank_details               | 29                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Over Draft Account | Data Saved Successfully | bank_credit_card_details.xlsx | bank_details               | 31                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Cash Credit        | Data Saved Successfully | bank_credit_card_details.xlsx | bank_details               | 30                                | 49                                 |
   #${ ProductType : ["IHF","IAF"]}
    #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-harshita.nayak
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Category | key | AccountType        | message                 | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum | BankCreditCard_bankDetails_rowNum1 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Current Account    | Data Saved Successfully | bank_credit_card_details.xlsx | bank_details               | 28                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Saving Account     | Data Saved Successfully | bank_credit_card_details.xlsx | bank_details               | 27                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | KCC Account        | Data Saved Successfully | bank_credit_card_details.xlsx | bank_details               | 29                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Over Draft Account | Data Saved Successfully | bank_credit_card_details.xlsx | bank_details               | 31                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Cash Credit        | Data Saved Successfully | bank_credit_card_details.xlsx | bank_details               | 30                                | 49                                 |
  #${ProductType : ["IPF"]}
    #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
     #${ Category:["bonds","shares","metals"]}
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-harshita.nayak
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Category   | key | AccountType        | message                 | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum | BankCreditCard_bankDetails_rowNum1 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Current Account    | Data Saved Successfully | bank_credit_card_details.xlsx | bank_details               | 28                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Saving Account     | Data Saved Successfully | bank_credit_card_details.xlsx | bank_details               | 27                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | KCC Account        | Data Saved Successfully | bank_credit_card_details.xlsx | bank_details               | 29                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Over Draft Account | Data Saved Successfully | bank_credit_card_details.xlsx | bank_details               | 31                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Cash Credit        | Data Saved Successfully | bank_credit_card_details.xlsx | bank_details               | 30                                | 49                                 |
    # ${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
    #${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
    @NotImplemented
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Category | key | AccountType        | message                 | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum | BankCreditCard_bankDetails_rowNum1 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Current Account    | Data Saved Successfully | bank_credit_card_details.xlsx | bank_details               | 28                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Saving Account     | Data Saved Successfully | bank_credit_card_details.xlsx | bank_details               | 27                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | KCC Account        | Data Saved Successfully | bank_credit_card_details.xlsx | bank_details               | 29                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Over Draft Account | Data Saved Successfully | bank_credit_card_details.xlsx | bank_details               | 31                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Cash Credit        | Data Saved Successfully | bank_credit_card_details.xlsx | bank_details               | 30                                | 49                                 |


   #  CAS-130067,CAS-164796
  #FeatureID-ACAUTOCAS-172
  #previous file must be uploaded with Average Bank Balance
  Scenario Outline: ACAUTOCAS-12878: Verify the Average Bank Balance value now reflecting with update uploaded file at "<ApplicationStage>" stage for "<ProductType>"
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user reads data from the excel file "<BankCreditCardWB>" under sheet "<BankCreditCard_bankDetails>" and row <BankCreditCard_bankDetails_rowNum>
    And user navigates to personal information page of "<ApplicationStage>"
    And user clicks on Bank and Credit Details
    And user delete existing bank details
    And user click on plus sign of Bank Details
    And user fills all the required details of bank details for account type as "<AccountType>"
    And user reads data from the excel file "<BankCreditCardWB>" under sheet "<BankCreditCard_bankDetails>" and row <BankCreditCard_bankDetails_rowNum1>
    And user fills Bank Statement Details for present as Physical
    And user reads data from the excel file "<BankCreditCardWB>" under sheet "<BankCreditCard_bankDetails>" and row <BankCreditCard_bankDetails_rowNum>
    And user clicks on Add view Bank Details hyperlink
    When user upload the bank details file in Add view Bank details
    And user clicks on OK button of Add view Bank details
    Then user should be able to validate the Average Bank Balance value now reflecting with update uploaded file
       #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @Release @Part-1
    @ImplementedBy-manish.yadav2
    @Conventional
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Category | key | AccountType     | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum | BankCreditCard_bankDetails_rowNum1 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Current Account | bank_credit_card_details.xlsx | bank_details               | 17                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Saving Account  | bank_credit_card_details.xlsx | bank_details               | 16                                | 49                                 |
   #${ ProductType : ["IHF","IAF"]}
    #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-harshita.nayak
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Category | key | AccountType     | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum | BankCreditCard_bankDetails_rowNum1 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Current Account | bank_credit_card_details.xlsx | bank_details               | 17                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Saving Account  | bank_credit_card_details.xlsx | bank_details               | 16                                | 49                                 |
    #${ProductType : ["IPF"]}
    #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
     #${ Category:["bonds","shares","metals"]}
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-harshita.nayak
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Category   | key | AccountType     | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum | BankCreditCard_bankDetails_rowNum1 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Current Account | bank_credit_card_details.xlsx | bank_details               | 17                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Saving Account  | bank_credit_card_details.xlsx | bank_details               | 16                                | 49                                 |
    # ${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
    #${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
    @NotImplemented
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Category | key | AccountType     | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum | BankCreditCard_bankDetails_rowNum1 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Current Account | bank_credit_card_details.xlsx | bank_details               | 17                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Saving Account  | bank_credit_card_details.xlsx | bank_details               | 16                                | 49                                 |

    #  CAS-137649
  #FeatureID-ACAUTOCAS-172
  @Sanity
  Scenario Outline: ACAUTOCAS-12879: Upload the bank details file at <ApplicationStage> stage for <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user reads data from the excel file "<BankCreditCardWB>" under sheet "<BankCreditCard_bankDetails>" and row <BankCreditCard_bankDetails_rowNum>
    And user navigates to personal information page of "<ApplicationStage>"
    And user clicks on Bank and Credit Details
    And user delete existing bank details
    And user click on plus sign of Bank Details
    And user fills all the required details of bank details for account type as "<AccountType>"
    And user reads data from the excel file "<BankCreditCardWB>" under sheet "<BankCreditCard_bankDetails>" and row <BankCreditCard_bankDetails_rowNum1>
    And user fills Bank Statement Details for present as Physical
    And user reads data from the excel file "<BankCreditCardWB>" under sheet "<BankCreditCard_bankDetails>" and row <BankCreditCard_bankDetails_rowNum>
    And user clicks on Add view Bank Details hyperlink
    When user upload the bank details file in Add view Bank details
    Then user should be able to Upload the bank details file successfully
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @Release @Part-1
    @ImplementedBy-manish.yadav2
    @Conventional
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Category | key | AccountType        | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum | BankCreditCard_bankDetails_rowNum1 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Current Account    | bank_credit_card_details.xlsx | bank_details               | 17                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Saving Account     | bank_credit_card_details.xlsx | bank_details               | 16                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Over Draft Account | bank_credit_card_details.xlsx | bank_details               | 20                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Cash Credit        | bank_credit_card_details.xlsx | bank_details               | 19                                | 49                                 |
   #${ ProductType : ["IHF","IAF"]}
    #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-harshita.nayak
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Category | key | AccountType        | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum | BankCreditCard_bankDetails_rowNum1 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Current Account    | bank_credit_card_details.xlsx | bank_details               | 17                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Saving Account     | bank_credit_card_details.xlsx | bank_details               | 16                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Over Draft Account | bank_credit_card_details.xlsx | bank_details               | 20                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Cash Credit        | bank_credit_card_details.xlsx | bank_details               | 19                                | 49                                 |
    #${ProductType : ["IPF"]}
    #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
     #${ Category:["bonds","shares","metals"]}
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-harshita.nayak
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Category   | key | AccountType        | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum | BankCreditCard_bankDetails_rowNum1 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Current Account    | bank_credit_card_details.xlsx | bank_details               | 17                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Saving Account     | bank_credit_card_details.xlsx | bank_details               | 16                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Over Draft Account | bank_credit_card_details.xlsx | bank_details               | 20                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Cash Credit        | bank_credit_card_details.xlsx | bank_details               | 19                                | 49                                 |
    # ${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
    #${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
    @NotImplemented
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Category | key | AccountType        | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum | BankCreditCard_bankDetails_rowNum1 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Current Account    | bank_credit_card_details.xlsx | bank_details               | 17                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Saving Account     | bank_credit_card_details.xlsx | bank_details               | 16                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Over Draft Account | bank_credit_card_details.xlsx | bank_details               | 20                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Cash Credit        | bank_credit_card_details.xlsx | bank_details               | 19                                | 49                                 |

    #  CAS-137649
  #FeatureID-ACAUTOCAS-172
  Scenario Outline: ACAUTOCAS-12880: Upload the bank details file with edit is made in template at <ApplicationStage> stage for <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user reads data from the excel file "<BankCreditCardWB>" under sheet "<BankCreditCard_bankDetails>" and row <BankCreditCard_bankDetails_rowNum>
    And user navigates to personal information page of "<ApplicationStage>"
    And user clicks on Bank and Credit Details
    And user delete existing bank details
    And user click on plus sign of Bank Details
    And user fills all the required details of bank details for account type as "<AccountType>"
    And user reads data from the excel file "<BankCreditCardWB>" under sheet "<BankCreditCard_bankDetails>" and row <BankCreditCard_bankDetails_rowNum1>
    And user fills Bank Statement Details for present as Physical
    And user reads data from the excel file "<BankCreditCardWB>" under sheet "<BankCreditCard_bankDetails>" and row <BankCreditCard_bankDetails_rowNum>
    And user clicks on Add view Bank Details hyperlink
    And user download template file in Add view Bank details
    When user upload the edited bank details file in Add view Bank details
    Then user should be able to Upload the bank details file with edit is made in template successfully
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @Release @Part-1
    @Conventional
    @ImplementedBy-manish.yadav2
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Category | key | AccountType        | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum | BankCreditCard_bankDetails_rowNum1 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Current Account    | bank_credit_card_details.xlsx | bank_details               | 17                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Saving Account     | bank_credit_card_details.xlsx | bank_details               | 16                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | KCC Account        | bank_credit_card_details.xlsx | bank_details               | 18                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Over Draft Account | bank_credit_card_details.xlsx | bank_details               | 20                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Cash Credit        | bank_credit_card_details.xlsx | bank_details               | 19                                | 49                                 |
    # ${ ProductType : ["IPF"]}
  # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${ Category:["bonds","shares","metals"]}
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-harshita.nayak
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Category   | key | AccountType        | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum | BankCreditCard_bankDetails_rowNum1 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Current Account    | bank_credit_card_details.xlsx | bank_details               | 17                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Saving Account     | bank_credit_card_details.xlsx | bank_details               | 16                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | KCC Account        | bank_credit_card_details.xlsx | bank_details               | 18                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Over Draft Account | bank_credit_card_details.xlsx | bank_details               | 20                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Cash Credit        | bank_credit_card_details.xlsx | bank_details               | 19                                | 49                                 |
      # ${ ProductType : ["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-harshita.nayak
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Category | key | AccountType        | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum | BankCreditCard_bankDetails_rowNum1 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Current Account    | bank_credit_card_details.xlsx | bank_details               | 17                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Saving Account     | bank_credit_card_details.xlsx | bank_details               | 16                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | KCC Account        | bank_credit_card_details.xlsx | bank_details               | 18                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Over Draft Account | bank_credit_card_details.xlsx | bank_details               | 20                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Cash Credit        | bank_credit_card_details.xlsx | bank_details               | 19                                | 49                                 |
    # ${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
    #${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
    @NotImplemented
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Category | key | AccountType        | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum | BankCreditCard_bankDetails_rowNum1 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Current Account    | bank_credit_card_details.xlsx | bank_details               | 17                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Saving Account     | bank_credit_card_details.xlsx | bank_details               | 16                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | KCC Account        | bank_credit_card_details.xlsx | bank_details               | 18                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Over Draft Account | bank_credit_card_details.xlsx | bank_details               | 20                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Cash Credit        | bank_credit_card_details.xlsx | bank_details               | 19                                | 49                                 |

    #  CAS-201000
  #FeatureID-ACAUTOCAS-172
  Scenario Outline: ACAUTOCAS-12881: Validating the Average Balance greater than Maximum Balance at <ApplicationStage> stage for <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user reads data from the excel file "<BankCreditCardWB>" under sheet "<BankCreditCard_bankDetails>" and row <BankCreditCard_bankDetails_rowNum>
    And user navigates to personal information page of "<ApplicationStage>"
    And user clicks on Bank and Credit Details
    And user delete existing bank details
    And user click on plus sign of Bank Details
    And user select Type of Account as "<account_type>"
    And user reads data from the excel file "<BankCreditCardWB>" under sheet "<BankCreditCard_bankDetails>" and row <BankCreditCard_bankDetails_rowNum1>
    And user fills Bank Statement Details for present as Physical
    And user reads data from the excel file "<BankCreditCardWB>" under sheet "<BankCreditCard_bankDetails>" and row <BankCreditCard_bankDetails_rowNum>
    And user clicks on Add Manual Bank Details hyperlink
    When user enter the Average Balance greater than Maximum Balance
    And user clicks on OK button of Add Manual Bank details
    Then no error message should be displayed on Average Balance
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @Release @Part-1
    @Conventional
    @ImplementedBy-manish.yadav2
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Category | key | account_type       | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum | BankCreditCard_bankDetails_rowNum1 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Current Account    | bank_credit_card_details.xlsx | bank_details               | 33                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Saving Account     | bank_credit_card_details.xlsx | bank_details               | 32                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | KCC Account        | bank_credit_card_details.xlsx | bank_details               | 34                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Over Draft Account | bank_credit_card_details.xlsx | bank_details               | 36                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Cash Credit        | bank_credit_card_details.xlsx | bank_details               | 35                                | 49                                 |
   # ${ ProductType : ["IHF","IAF"]}
  # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-harshita.nayak
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Category | key | account_type       | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum | BankCreditCard_bankDetails_rowNum1 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Current Account    | bank_credit_card_details.xlsx | bank_details               | 33                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Saving Account     | bank_credit_card_details.xlsx | bank_details               | 32                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | KCC Account        | bank_credit_card_details.xlsx | bank_details               | 34                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Over Draft Account | bank_credit_card_details.xlsx | bank_details               | 36                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Cash Credit        | bank_credit_card_details.xlsx | bank_details               | 35                                | 49                                 |
  # ${ ProductType : ["IPF"]}
  # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${ Category:["bonds","shares","metals"]}
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-harshita.nayak
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Category   | key | account_type       | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum | BankCreditCard_bankDetails_rowNum1 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Current Account    | bank_credit_card_details.xlsx | bank_details               | 33                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Saving Account     | bank_credit_card_details.xlsx | bank_details               | 32                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | KCC Account        | bank_credit_card_details.xlsx | bank_details               | 34                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Over Draft Account | bank_credit_card_details.xlsx | bank_details               | 36                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Cash Credit        | bank_credit_card_details.xlsx | bank_details               | 35                                | 49                                 |
  # ${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
    #${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
    @NotImplemented
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Category | key | account_type       | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum | BankCreditCard_bankDetails_rowNum1 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Current Account    | bank_credit_card_details.xlsx | bank_details               | 33                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Saving Account     | bank_credit_card_details.xlsx | bank_details               | 32                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | KCC Account        | bank_credit_card_details.xlsx | bank_details               | 34                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Over Draft Account | bank_credit_card_details.xlsx | bank_details               | 36                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Cash Credit        | bank_credit_card_details.xlsx | bank_details               | 35                                | 49                                 |

    #  CAS-201000
  #FeatureID-ACAUTOCAS-172
  Scenario Outline: ACAUTOCAS-12882: Validating the Average Balance less than Minimum Balance at <ApplicationStage> stage for <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user reads data from the excel file "<BankCreditCardWB>" under sheet "<BankCreditCard_bankDetails>" and row <BankCreditCard_bankDetails_rowNum>
    And user navigates to personal information page of "<ApplicationStage>"
    And user clicks on Bank and Credit Details
    And user delete existing bank details
    And user click on plus sign of Bank Details
    And user select Type of Account as "<account_type>"
    And user reads data from the excel file "<BankCreditCardWB>" under sheet "<BankCreditCard_bankDetails>" and row <BankCreditCard_bankDetails_rowNum1>
    And user fills Bank Statement Details for present as Physical
    And user reads data from the excel file "<BankCreditCardWB>" under sheet "<BankCreditCard_bankDetails>" and row <BankCreditCard_bankDetails_rowNum>
    And user clicks on Add Manual Bank Details hyperlink
    When user enter the Average Balance less than Minimum Balance
    And user clicks on OK button of Add Manual Bank details
    Then no error message should be displayed on Average Balance
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @Release @Part-1
    @Conventional
    @ImplementedBy-manish.yadav2
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Category | key | account_type       | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum | BankCreditCard_bankDetails_rowNum1 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Current Account    | bank_credit_card_details.xlsx | bank_details               | 33                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Saving Account     | bank_credit_card_details.xlsx | bank_details               | 32                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | KCC Account        | bank_credit_card_details.xlsx | bank_details               | 34                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Over Draft Account | bank_credit_card_details.xlsx | bank_details               | 36                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Cash Credit        | bank_credit_card_details.xlsx | bank_details               | 35                                | 49                                 |
 # ${ ProductType : ["IHF","IAF"]}
  # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-harshita.nayak
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Category | key | account_type       | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum | BankCreditCard_bankDetails_rowNum1 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Current Account    | bank_credit_card_details.xlsx | bank_details               | 33                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Saving Account     | bank_credit_card_details.xlsx | bank_details               | 32                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | KCC Account        | bank_credit_card_details.xlsx | bank_details               | 34                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Over Draft Account | bank_credit_card_details.xlsx | bank_details               | 36                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Cash Credit        | bank_credit_card_details.xlsx | bank_details               | 35                                | 49                                 |
# ${ ProductType : ["IPF"]}
  # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${ Category:["bonds","shares","metals"]}
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-harshita.nayak
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Category   | key | account_type       | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum | BankCreditCard_bankDetails_rowNum1 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Current Account    | bank_credit_card_details.xlsx | bank_details               | 33                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Saving Account     | bank_credit_card_details.xlsx | bank_details               | 32                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | KCC Account        | bank_credit_card_details.xlsx | bank_details               | 34                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Over Draft Account | bank_credit_card_details.xlsx | bank_details               | 36                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Cash Credit        | bank_credit_card_details.xlsx | bank_details               | 35                                | 49                                 |
  # ${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
    #${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
    @NotImplemented
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Category | key | account_type       | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum | BankCreditCard_bankDetails_rowNum1 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Current Account    | bank_credit_card_details.xlsx | bank_details               | 33                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Saving Account     | bank_credit_card_details.xlsx | bank_details               | 32                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | KCC Account        | bank_credit_card_details.xlsx | bank_details               | 34                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Over Draft Account | bank_credit_card_details.xlsx | bank_details               | 36                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Cash Credit        | bank_credit_card_details.xlsx | bank_details               | 35                                | 49                                 |


    #  CAS-132294
  #FeatureID-ACAUTOCAS-172
  Scenario Outline: ACAUTOCAS-12883: Save the bank details without filling the card details at <ApplicationStage> stage for <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user reads data from the excel file "<BankCreditCardWB>" under sheet "<BankCreditCard_bankDetails>" and row <BankCreditCard_bankDetails_rowNum>
    And user navigates to personal information page of "<ApplicationStage>"
    And user clicks on Bank and Credit Details
    And user delete existing bank details
    And user click on plus sign of Bank Details
    And user fills all the required details of bank details
    And user reads data from the excel file "<BankCreditCardWB>" under sheet "<BankCreditCard_bankDetails>" and row <BankCreditCard_bankDetails_rowNum1>
    And user fills Bank Statement Details for present as Physical
    And user reads data from the excel file "<BankCreditCardWB>" under sheet "<BankCreditCard_bankDetails>" and row <BankCreditCard_bankDetails_rowNum>
    And user clicks on Add view Bank Details hyperlink
    And user fills field in Add view Bank details with save
    When user clicks on card Details plus icon
    And user clicks on save button in Bank details to get error
    Then sticky note error message should be display in Bank details
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @Release @Part-1
    @ImplementedBy-manish.yadav2
    @Conventional
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Category | key | error_message          | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum | BankCreditCard_bankDetails_rowNum1 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | throw an error message | bank_credit_card_details.xlsx | bank_details               | 26                                | 49                                 |
    #${ProductType : ["IPF"]}
    #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
     #${ Category:["bonds","shares","metals"]}
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-harshita.nayak
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Category   | key | error_message          | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum | BankCreditCard_bankDetails_rowNum1 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | throw an error message | bank_credit_card_details.xlsx | bank_details               | 26                                | 49                                 |

    #${ ProductType : ["IHF","IAF"]}
    #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-harshita.nayak
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Category | key | error_message          | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum | BankCreditCard_bankDetails_rowNum1 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | throw an error message | bank_credit_card_details.xlsx | bank_details               | 26                                | 49                                 |

    # ${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
    #${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
    @NotImplemented
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Category | key | error_message          | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum | BankCreditCard_bankDetails_rowNum1 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | throw an error message | bank_credit_card_details.xlsx | bank_details               | 26                                | 49                                 |
#
#
  #  05_CAS-51973,03_CAS-51973,04_CAS-51973
  #FeatureID-ACAUTOCAS-172
  #previous file must be uploaded
  Scenario Outline: ACAUTOCAS-12884:  Uploaded File name should be same with different version names at "<ApplicationStage>" stage for "<ProductType>"
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user reads data from the excel file "<BankCreditCardWB>" under sheet "<BankCreditCard_bankDetails>" and row <BankCreditCard_bankDetails_rowNum>
    And user navigates to personal information page of "<ApplicationStage>"
    And user clicks on Bank and Credit Details
    And user delete existing bank details
    And user click on plus sign of Bank Details
    And user fills all the required details of bank details for account type as "<AccountType>"
    And user reads data from the excel file "<BankCreditCardWB>" under sheet "<BankCreditCard_bankDetails>" and row <BankCreditCard_bankDetails_rowNum1>
    And user fills Bank Statement Details for present as Physical
    And user reads data from the excel file "<BankCreditCardWB>" under sheet "<BankCreditCard_bankDetails>" and row <BankCreditCard_bankDetails_rowNum>
    And user clicks on Add view Bank Details hyperlink
    And user upload the bank details file in Add view Bank details
    And user clicks on OK button of Add view Bank details
    And user clicks on save button in Bank details
    And user clicks on Add view Bank Details hyperlink
    When user upload the file with same name uploaded in previous file
    And user clicks on OK button of Add view Bank details
    And user clicks on save and next button in Bank details
    And user clicks on Bank and Credit Details
    And user clicks on Add view Bank Details hyperlink
    Then user should be able to validate the version names of uploaded file is different
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @Release @Part-1
    @Conventional
    @ImplementedBy-manish.yadav2
    @LoggedBug-CAS-224140
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Category | key | AccountType        | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum | BankCreditCard_bankDetails_rowNum1 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Current Account    | bank_credit_card_details.xlsx | bank_details               | 17                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Saving Account     | bank_credit_card_details.xlsx | bank_details               | 16                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | KCC Account        | bank_credit_card_details.xlsx | bank_details               | 18                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Over Draft Account | bank_credit_card_details.xlsx | bank_details               | 20                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Cash Credit        | bank_credit_card_details.xlsx | bank_details               | 19                                | 49                                 |
  # ${ ProductType : ["IPF"]}
  # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${ Category:["bonds","shares","metals"]}
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-harshita.nayak
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Category   | key | AccountType        | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum | BankCreditCard_bankDetails_rowNum1 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Current Account    | bank_credit_card_details.xlsx | bank_details               | 17                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Saving Account     | bank_credit_card_details.xlsx | bank_details               | 16                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | KCC Account        | bank_credit_card_details.xlsx | bank_details               | 18                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Over Draft Account | bank_credit_card_details.xlsx | bank_details               | 20                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Cash Credit        | bank_credit_card_details.xlsx | bank_details               | 19                                | 49                                 |

    # ${ ProductType : ["IHF","IAF"]}
  # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-harshita.nayak
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Category | key | AccountType        | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum | BankCreditCard_bankDetails_rowNum1 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Current Account    | bank_credit_card_details.xlsx | bank_details               | 17                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Saving Account     | bank_credit_card_details.xlsx | bank_details               | 16                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | KCC Account        | bank_credit_card_details.xlsx | bank_details               | 18                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Over Draft Account | bank_credit_card_details.xlsx | bank_details               | 20                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Cash Credit        | bank_credit_card_details.xlsx | bank_details               | 19                                | 49                                 |
    # ${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
    #${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
    @NotImplemented
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Category | key | AccountType        | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum | BankCreditCard_bankDetails_rowNum1 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Current Account    | bank_credit_card_details.xlsx | bank_details               | 17                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Saving Account     | bank_credit_card_details.xlsx | bank_details               | 16                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | KCC Account        | bank_credit_card_details.xlsx | bank_details               | 18                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Over Draft Account | bank_credit_card_details.xlsx | bank_details               | 20                                | 49                                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Cash Credit        | bank_credit_card_details.xlsx | bank_details               | 19                                | 49                                 |
