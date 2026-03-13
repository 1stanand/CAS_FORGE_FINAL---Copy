@Epic-Islamic_IBAN_IFSC
@PQMStory
@Islamic
@AuthoredBy-deep.maurya
@ImplementedBy-deep.maurya
@TechReviewedBy-
@Release
@31MarFix
@IBAN
Feature: Capturing IBAN In Bank details Tab

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0

#PQM-78_CAS-186817, 79_CAS-186817, 80_CAS-186817, 81_CAS-186817, 82_CAS-186817, 83_CAS-186817, 84_CAS-186817, 85_CAS-186817, 86_CAS-186817, 87_CAS-186817, 88_CAS-186817, 89_CAS-186817, 90_CAS-186817, 91_CAS-186817, 92_CAS-186817, 93_CAS-186817, 94_CAS-186817, 95_CAS-186817, 96_CAS-186817, 97_CAS-186817, 98_CAS-186817, 99_CAS-186817, 143_CAS-186817,163_CAS-186817, 164_CAS-186817, 167_CAS-186817, 168_CAS-186817
#PMG-11_CAS-186817, 12_CAS-186817, 13_CAS-186817, 14_CAS-186817
#${ApplicantType:["indiv"]}
#FeatureID-ACAUTOCAS-15317
  Scenario Outline: ACAUTOCAS-16112: Verify entering <DataType> data in IBAN field while adding <Repayment_Instrument> Details <SavedOrNot> at <ApplicationStage> stage for <ProductType> Application for <category> with <Disbursal_RepaymentInstrumentSheet_rowNum>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<category>" with "" from application grid
    And user updates the bank details as per "<Repayment_Instrument>" for "<ApplicationStage>"
    When user open repayment instrument details
    And user reads data from the excel file "<DisbursalWB>" under sheet "<Disbursal_RepaymentInstrumentSheet>" and row <Disbursal_RepaymentInstrumentSheet_rowNum>
    And user selects repayment instrument type as "<Repayment_Instrument>"
    And user selects applicant as "<Applicant_Type>"
    And user open repayment instrument fields to add details
    And user select the mode of instrument as "Installment" for "<Repayment_Instrument>"
    And user fills "<Repayment_Instrument>" repayment instrument details
    And user enters iban number and save
    Then iban details "<SavedOrNot>" successfully
#${ProductType:["IPF"]}
#${ApplicationStage:["Disbursal","POST APPROVAL"]}
    Examples:
      | DataType           | ProductType   | ApplicationStage   | ApplicantType   | DisbursalWB    | Disbursal_RepaymentInstrumentSheet | Disbursal_RepaymentInstrumentSheet_rowNum | Repayment_Instrument        | Applicant_Type | SavedOrNot | category |
      | valid              | <ProductType> | <ApplicationStage> | <ApplicantType> | disbursal.xlsx | repayment_instrument               | 424                                       | Auto Debit                  | Manufacturer   | saved      | bonds    |
      | invalid            | <ProductType> | <ApplicationStage> | <ApplicantType> | disbursal.xlsx | repayment_instrument               | 425                                       | Auto Debit                  | Manufacturer   | not saved  | bonds    |
      | special characters | <ProductType> | <ApplicationStage> | <ApplicantType> | disbursal.xlsx | repayment_instrument               | 426                                       | Auto Debit                  | Manufacturer   | not saved  | bonds    |
      | max                | <ProductType> | <ApplicationStage> | <ApplicantType> | disbursal.xlsx | repayment_instrument               | 427                                       | Auto Debit                  | Manufacturer   | saved      | bonds    |
      | more than 50 chars | <ProductType> | <ApplicationStage> | <ApplicantType> | disbursal.xlsx | repayment_instrument               | 428                                       | Auto Debit                  | Manufacturer   | not saved  | bonds    |
      | no iban            | <ProductType> | <ApplicationStage> | <ApplicantType> | disbursal.xlsx | repayment_instrument               | 429                                       | Auto Debit                  | Manufacturer   | saved      | bonds    |
      | valid              | <ProductType> | <ApplicationStage> | <ApplicantType> | disbursal.xlsx | repayment_instrument               | 437                                       | Electronic Clearence System | Manufacturer   | saved      | bonds    |
      | invalid            | <ProductType> | <ApplicationStage> | <ApplicantType> | disbursal.xlsx | repayment_instrument               | 438                                       | Electronic Clearence System | Manufacturer   | not saved  | bonds    |
      | special characters | <ProductType> | <ApplicationStage> | <ApplicantType> | disbursal.xlsx | repayment_instrument               | 439                                       | Electronic Clearence System | Manufacturer   | not saved  | bonds    |
      | max                | <ProductType> | <ApplicationStage> | <ApplicantType> | disbursal.xlsx | repayment_instrument               | 440                                       | Electronic Clearence System | Manufacturer   | saved      | bonds    |
      | more than 50 chars | <ProductType> | <ApplicationStage> | <ApplicantType> | disbursal.xlsx | repayment_instrument               | 441                                       | Electronic Clearence System | Manufacturer   | not saved  | bonds    |
      | no iban            | <ProductType> | <ApplicationStage> | <ApplicantType> | disbursal.xlsx | repayment_instrument               | 442                                       | Electronic Clearence System | Manufacturer   | saved      | bonds    |
      | correct            | <ProductType> | <ApplicationStage> | <ApplicantType> | disbursal.xlsx | repayment_instrument               | 496                                       | Direct Debit System         | Manufacturer   | saved      | bonds    |
      | invalid            | <ProductType> | <ApplicationStage> | <ApplicantType> | disbursal.xlsx | repayment_instrument               | 497                                       | Direct Debit System         | Manufacturer   | not saved  | bonds    |
      | special characters | <ProductType> | <ApplicationStage> | <ApplicantType> | disbursal.xlsx | repayment_instrument               | 497                                       | Direct Debit System         | Manufacturer   | not saved  | bonds    |
      | max                | <ProductType> | <ApplicationStage> | <ApplicantType> | disbursal.xlsx | repayment_instrument               | 496                                       | Direct Debit System         | Manufacturer   | saved      | bonds    |
      | more than 50 chars | <ProductType> | <ApplicationStage> | <ApplicantType> | disbursal.xlsx | repayment_instrument               | 498                                       | Direct Debit System         | Manufacturer   | not saved  | bonds    |
      | no iban            | <ProductType> | <ApplicationStage> | <ApplicantType> | disbursal.xlsx | repayment_instrument               | 499                                       | Direct Debit System         | Manufacturer   | saved      | bonds    |
    @LoggedBug-CAS-223739
    Examples:
      | DataType           | ProductType   | ApplicationStage   | ApplicantType   | DisbursalWB    | Disbursal_RepaymentInstrumentSheet | Disbursal_RepaymentInstrumentSheet_rowNum | Repayment_Instrument | Applicant_Type | SavedOrNot | category |
      | valid              | <ProductType> | <ApplicationStage> | <ApplicantType> | disbursal.xlsx | repayment_instrument               | 431                                       | Post Dated Cheque    | Manufacturer   | saved      | bonds    |
      | invalid            | <ProductType> | <ApplicationStage> | <ApplicantType> | disbursal.xlsx | repayment_instrument               | 432                                       | Post Dated Cheque    | Manufacturer   | not saved  | bonds    |
      | special characters | <ProductType> | <ApplicationStage> | <ApplicantType> | disbursal.xlsx | repayment_instrument               | 433                                       | Post Dated Cheque    | Manufacturer   | not saved  | bonds    |
      | max                | <ProductType> | <ApplicationStage> | <ApplicantType> | disbursal.xlsx | repayment_instrument               | 434                                       | Post Dated Cheque    | Manufacturer   | saved      | bonds    |
      | more than 50 chars | <ProductType> | <ApplicationStage> | <ApplicantType> | disbursal.xlsx | repayment_instrument               | 435                                       | Post Dated Cheque    | Manufacturer   | not saved  | bonds    |
      | no iban            | <ProductType> | <ApplicationStage> | <ApplicantType> | disbursal.xlsx | repayment_instrument               | 436                                       | Post Dated Cheque    | Manufacturer   | saved      | bonds    |

#${ProductType:["IHF","IAF"]}
#${ApplicationStage:["Disbursal","POST APPROVAL"]}
    Examples:
      | DataType           | ProductType   | ApplicationStage   | ApplicantType   | DisbursalWB    | Disbursal_RepaymentInstrumentSheet | Disbursal_RepaymentInstrumentSheet_rowNum | Repayment_Instrument        | Applicant_Type | SavedOrNot | category |
      | valid              | <ProductType> | <ApplicationStage> | <ApplicantType> | disbursal.xlsx | repayment_instrument               | 424                                       | Auto Debit                  | Manufacturer   | saved      |          |
      | invalid            | <ProductType> | <ApplicationStage> | <ApplicantType> | disbursal.xlsx | repayment_instrument               | 425                                       | Auto Debit                  | Manufacturer   | not saved  |          |
      | special characters | <ProductType> | <ApplicationStage> | <ApplicantType> | disbursal.xlsx | repayment_instrument               | 426                                       | Auto Debit                  | Manufacturer   | not saved  |          |
      | max                | <ProductType> | <ApplicationStage> | <ApplicantType> | disbursal.xlsx | repayment_instrument               | 427                                       | Auto Debit                  | Manufacturer   | saved      |          |
      | more than 50 chars | <ProductType> | <ApplicationStage> | <ApplicantType> | disbursal.xlsx | repayment_instrument               | 428                                       | Auto Debit                  | Manufacturer   | not saved  |          |
      | no iban            | <ProductType> | <ApplicationStage> | <ApplicantType> | disbursal.xlsx | repayment_instrument               | 429                                       | Auto Debit                  | Manufacturer   | saved      |          |
      | valid              | <ProductType> | <ApplicationStage> | <ApplicantType> | disbursal.xlsx | repayment_instrument               | 437                                       | Electronic Clearence System | Manufacturer   | saved      |          |
      | invalid            | <ProductType> | <ApplicationStage> | <ApplicantType> | disbursal.xlsx | repayment_instrument               | 438                                       | Electronic Clearence System | Manufacturer   | not saved  |          |
      | special characters | <ProductType> | <ApplicationStage> | <ApplicantType> | disbursal.xlsx | repayment_instrument               | 439                                       | Electronic Clearence System | Manufacturer   | not saved  |          |
      | max                | <ProductType> | <ApplicationStage> | <ApplicantType> | disbursal.xlsx | repayment_instrument               | 440                                       | Electronic Clearence System | Manufacturer   | saved      |          |
      | more than 50 chars | <ProductType> | <ApplicationStage> | <ApplicantType> | disbursal.xlsx | repayment_instrument               | 441                                       | Electronic Clearence System | Manufacturer   | not saved  |          |
      | no iban            | <ProductType> | <ApplicationStage> | <ApplicantType> | disbursal.xlsx | repayment_instrument               | 442                                       | Electronic Clearence System | Manufacturer   | saved      |          |
      | correct            | <ProductType> | <ApplicationStage> | <ApplicantType> | disbursal.xlsx | repayment_instrument               | 496                                       | Direct Debit System         | Manufacturer   | saved      |          |
      | invalid            | <ProductType> | <ApplicationStage> | <ApplicantType> | disbursal.xlsx | repayment_instrument               | 497                                       | Direct Debit System         | Manufacturer   | not saved  |          |
      | special characters | <ProductType> | <ApplicationStage> | <ApplicantType> | disbursal.xlsx | repayment_instrument               | 497                                       | Direct Debit System         | Manufacturer   | not saved  |          |
      | max                | <ProductType> | <ApplicationStage> | <ApplicantType> | disbursal.xlsx | repayment_instrument               | 496                                       | Direct Debit System         | Manufacturer   | saved      |          |
      | more than 50 chars | <ProductType> | <ApplicationStage> | <ApplicantType> | disbursal.xlsx | repayment_instrument               | 498                                       | Direct Debit System         | Manufacturer   | not saved  |          |
      | no iban            | <ProductType> | <ApplicationStage> | <ApplicantType> | disbursal.xlsx | repayment_instrument               | 499                                       | Direct Debit System         | Manufacturer   | saved      |          |
    @LoggedBug-CAS-223739
    Examples:
      | DataType           | ProductType   | ApplicationStage   | ApplicantType   | DisbursalWB    | Disbursal_RepaymentInstrumentSheet | Disbursal_RepaymentInstrumentSheet_rowNum | Repayment_Instrument | Applicant_Type | SavedOrNot | category |
      | valid              | <ProductType> | <ApplicationStage> | <ApplicantType> | disbursal.xlsx | repayment_instrument               | 431                                       | Post Dated Cheque    | Manufacturer   | saved      |          |
      | invalid            | <ProductType> | <ApplicationStage> | <ApplicantType> | disbursal.xlsx | repayment_instrument               | 432                                       | Post Dated Cheque    | Manufacturer   | not saved  |          |
      | special characters | <ProductType> | <ApplicationStage> | <ApplicantType> | disbursal.xlsx | repayment_instrument               | 433                                       | Post Dated Cheque    | Manufacturer   | not saved  |          |
      | max                | <ProductType> | <ApplicationStage> | <ApplicantType> | disbursal.xlsx | repayment_instrument               | 434                                       | Post Dated Cheque    | Manufacturer   | saved      |          |
      | more than 50 chars | <ProductType> | <ApplicationStage> | <ApplicantType> | disbursal.xlsx | repayment_instrument               | 435                                       | Post Dated Cheque    | Manufacturer   | not saved  |          |
      | no iban            | <ProductType> | <ApplicationStage> | <ApplicantType> | disbursal.xlsx | repayment_instrument               | 436                                       | Post Dated Cheque    | Manufacturer   | saved      |          |


#PQM-66_CAS-186817, 67_CAS-186817, 68_CAS-186817, 69_CAS-186817, 70_CAS-186817, 71_CAS-186817, 72_CAS-186817, 73_CAS-186817, 74_CAS-186817, 75_CAS-186817, 76_CAS-186817, 77_CAS-186817
#PMG-27_CAS-186817, 6_CAS-186817, 25_CAS-186817
#${ApplicantType:["indiv"]}
#FeatureID-ACAUTOCAS-15317
  Scenario Outline: ACAUTOCAS-16113: Verify the visibility of IBAN Field on Repayment Instruments for <Action> <Repayment_Instrument> at <ApplicationStage> stage for <ProductType> Application for <category> with <Disbursal_RepaymentInstrumentSheet_rowNum>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<category>" with "" from application grid
    And user updates the bank details as per "<Repayment_Instrument>" for "<ApplicationStage>"
    And user open repayment instrument details
    And user reads data from the excel file "<DisbursalWB>" under sheet "<Disbursal_RepaymentInstrumentSheet>" and row <Disbursal_RepaymentInstrumentSheet_rowNum>
    And user selects repayment instrument type as "<Repayment_Instrument>"
    And user selects applicant as "<Applicant_Type>"
    And user open repayment instrument fields to add details
    And user select the mode of instrument as "Installment" for "<Repayment_Instrument>"
    And user fills "<Repayment_Instrument>" repayment instrument details
    And user enters iban number and save
    When user perform "<Action>" repayment instrument detail with repayment instrument type as "<Repayment_Instrument>"
    Then Iban field should be visible with filled data for "<Action>"
#${ProductType:["IPF"]}
#${ApplicationStage:["Disbursal","POST APPROVAL"]}
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | DisbursalWB    | Disbursal_RepaymentInstrumentSheet | Disbursal_RepaymentInstrumentSheet_rowNum | Repayment_Instrument        | Action | Applicant_Type    | category |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | disbursal.xlsx | repayment_instrument               | 424                                       | Auto Debit                  | Add    | Primary Applicant | bonds    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | disbursal.xlsx | repayment_instrument               | 424                                       | Auto Debit                  | Edit   | Primary Applicant | bonds    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | disbursal.xlsx | repayment_instrument               | 437                                       | Electronic Clearence System | Add    | Primary Applicant | bonds    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | disbursal.xlsx | repayment_instrument               | 437                                       | Electronic Clearence System | Edit   | Primary Applicant | bonds    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | disbursal.xlsx | repayment_instrument               | 496                                       | Direct Debit System         | Add    | Primary Applicant | bonds    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | disbursal.xlsx | repayment_instrument               | 496                                       | Direct Debit System         | Edit   | Primary Applicant | bonds    |

#${ProductType:["IPF"]}
#${ApplicationStage:["Disbursal","POST APPROVAL"]}
    @LoggedBug-CAS-223739
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | DisbursalWB    | Disbursal_RepaymentInstrumentSheet | Disbursal_RepaymentInstrumentSheet_rowNum | Repayment_Instrument | Action | Applicant_Type    | category |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | disbursal.xlsx | repayment_instrument               | 457                                       | Post Dated Cheque    | Edit   | Primary Applicant | bonds    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | disbursal.xlsx | repayment_instrument               | 431                                       | Post Dated Cheque    | Add    | Primary Applicant | bonds    |


#${ProductType:["IHF","IAF"]}
#${ApplicationStage:["Disbursal","POST APPROVAL"]}
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | DisbursalWB    | Disbursal_RepaymentInstrumentSheet | Disbursal_RepaymentInstrumentSheet_rowNum | Repayment_Instrument        | Action | Applicant_Type    | category |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | disbursal.xlsx | repayment_instrument               | 424                                       | Auto Debit                  | Add    | Primary Applicant |          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | disbursal.xlsx | repayment_instrument               | 424                                       | Auto Debit                  | Edit   | Primary Applicant |          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | disbursal.xlsx | repayment_instrument               | 437                                       | Electronic Clearence System | Add    | Primary Applicant |          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | disbursal.xlsx | repayment_instrument               | 437                                       | Electronic Clearence System | Edit   | Primary Applicant |          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | disbursal.xlsx | repayment_instrument               | 496                                       | Direct Debit System         | Add    | Primary Applicant |          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | disbursal.xlsx | repayment_instrument               | 496                                       | Direct Debit System         | Edit   | Primary Applicant |          |

#${ProductType:["IHF","IAF"]}
#${ApplicationStage:["Disbursal","POST APPROVAL"]}
    @LoggedBug-CAS-223739
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | DisbursalWB    | Disbursal_RepaymentInstrumentSheet | Disbursal_RepaymentInstrumentSheet_rowNum | Repayment_Instrument | Action | Applicant_Type    | category |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | disbursal.xlsx | repayment_instrument               | 457                                       | Post Dated Cheque    | Edit   | Primary Applicant |          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | disbursal.xlsx | repayment_instrument               | 431                                       | Post Dated Cheque    | Add    | Primary Applicant |          |


#PQM-28_CAS-186817, 29_CAS-186817
#${ApplicantType:["indiv"]}
#FeatureID-ACAUTOCAS-15317
  Scenario Outline: ACAUTOCAS-16114: Verify the visibility of IBAN Field in Bank Details tab on <Action> Bank Account at <ApplicationStage> stage for <ProductType> Application for <Category>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<category>" with "" from application grid
    And user navigates to personal information page of "<ApplicationStage>"
    And user clicks on Bank and Credit Details
    And user deletes existing bank details
    And user reads data from the excel file "bank_credit_card_details.xlsx" under sheet "bank_details" and row 0
    When user "<Action>" bank details
    Then iban field should be visible in bank details

#${ProductType:["IPF"]}
#${ApplicationStage:["Sourcing","Login Acceptance","DDE","Credit Approval"]}
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Action | category |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Add    | bonds    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Edit   | bonds    |

#${ProductType:["IHF","IAF"]}
#${ApplicationStage:["Sourcing","Login Acceptance","DDE","Credit Approval"]}
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Action | category |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Add    |          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Edit   |          |


#PQM-30_CAS-186817,31_CAS-186817, 32_CAS-186817, 33_CAS-186817, 34_CAS-186817, 35_CAS-186817
#PMG-1_CAS-186817, 2_CAS-186817, 3_CAS-186817 4_CAS-186817
#${ApplicantType:["indiv"]}
#FeatureID-ACAUTOCAS-15317
  Scenario Outline: ACAUTOCAS-16115: Verify entering <DataType> data in <AccountType> IBAN field <ErrorThrowOrNot> while adding Bank account Details at <ApplicationStage> stage for <ProductType> Application for <Category> with <BankCreditCard_bankDetails_rowNum>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<category>" with "" from application grid
    And user reads data from the excel file "<BankCreditCardWB>" under sheet "<BankCreditCard_bankDetails>" and row <BankCreditCard_bankDetails_rowNum>
    And user navigates to personal information page of "<ApplicationStage>"
    And user clicks on Bank and Credit Details
    And user delete existing bank details
    And user click on plus sign of Bank Details
    And user selects "<AccountType>" as Type of account
    When user enters iban details
    Then iban field should "<ErrorThrowOrNot>" an error

#${ProductType:["IPF"]}
#${ApplicationStage:["Sourcing","Login Acceptance","DDE","Credit Approval","POST APPROVAL"]}
    Examples:
      | DataType           | ErrorThrowOrNot | AccountType        | ProductType   | ApplicationStage   | ApplicantType   | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum | category |
      | valid              | not throw       | Cash Credit        | <ProductType> | <ApplicationStage> | <ApplicantType> | bank_credit_card_details.xlsx | bank_details               | 37                                | bonds    |
      | invalid            | throw           | Cash Credit        | <ProductType> | <ApplicationStage> | <ApplicantType> | bank_credit_card_details.xlsx | bank_details               | 38                                | bonds    |
      | special characters | throw           | Cash Credit        | <ProductType> | <ApplicationStage> | <ApplicantType> | bank_credit_card_details.xlsx | bank_details               | 39                                | bonds    |
      | max                | not throw       | Cash Credit        | <ProductType> | <ApplicationStage> | <ApplicantType> | bank_credit_card_details.xlsx | bank_details               | 40                                | bonds    |
      | more than 50 chars | not throw       | Cash Credit        | <ProductType> | <ApplicationStage> | <ApplicantType> | bank_credit_card_details.xlsx | bank_details               | 41                                | bonds    |
      | no iban            | not throw       | Cash Credit        | <ProductType> | <ApplicationStage> | <ApplicantType> | bank_credit_card_details.xlsx | bank_details               | 42                                | bonds    |
      | valid              | not throw       | Current Account    | <ProductType> | <ApplicationStage> | <ApplicantType> | bank_credit_card_details.xlsx | bank_details               | 37                                | bonds    |
      | invalid            | throw           | Current Account    | <ProductType> | <ApplicationStage> | <ApplicantType> | bank_credit_card_details.xlsx | bank_details               | 38                                | bonds    |
      | special characters | throw           | Current Account    | <ProductType> | <ApplicationStage> | <ApplicantType> | bank_credit_card_details.xlsx | bank_details               | 39                                | bonds    |
      | max                | not throw       | Current Account    | <ProductType> | <ApplicationStage> | <ApplicantType> | bank_credit_card_details.xlsx | bank_details               | 40                                | bonds    |
      | more than 50 chars | not throw       | Current Account    | <ProductType> | <ApplicationStage> | <ApplicantType> | bank_credit_card_details.xlsx | bank_details               | 41                                | bonds    |
      | no iban            | not throw       | Current Account    | <ProductType> | <ApplicationStage> | <ApplicantType> | bank_credit_card_details.xlsx | bank_details               | 42                                | bonds    |
      | valid              | not throw       | KCC Account        | <ProductType> | <ApplicationStage> | <ApplicantType> | bank_credit_card_details.xlsx | bank_details               | 37                                | bonds    |
      | invalid            | throw           | KCC Account        | <ProductType> | <ApplicationStage> | <ApplicantType> | bank_credit_card_details.xlsx | bank_details               | 38                                | bonds    |
      | special characters | throw           | KCC Account        | <ProductType> | <ApplicationStage> | <ApplicantType> | bank_credit_card_details.xlsx | bank_details               | 39                                | bonds    |
      | max                | not throw       | KCC Account        | <ProductType> | <ApplicationStage> | <ApplicantType> | bank_credit_card_details.xlsx | bank_details               | 40                                | bonds    |
      | more than 50 chars | not throw       | KCC Account        | <ProductType> | <ApplicationStage> | <ApplicantType> | bank_credit_card_details.xlsx | bank_details               | 41                                | bonds    |
      | no iban            | not throw       | KCC Account        | <ProductType> | <ApplicationStage> | <ApplicantType> | bank_credit_card_details.xlsx | bank_details               | 42                                | bonds    |
      | valid              | not throw       | Over Draft Account | <ProductType> | <ApplicationStage> | <ApplicantType> | bank_credit_card_details.xlsx | bank_details               | 37                                | bonds    |
      | invalid            | throw           | Over Draft Account | <ProductType> | <ApplicationStage> | <ApplicantType> | bank_credit_card_details.xlsx | bank_details               | 38                                | bonds    |
      | special characters | throw           | Over Draft Account | <ProductType> | <ApplicationStage> | <ApplicantType> | bank_credit_card_details.xlsx | bank_details               | 39                                | bonds    |
      | max                | not throw       | Over Draft Account | <ProductType> | <ApplicationStage> | <ApplicantType> | bank_credit_card_details.xlsx | bank_details               | 40                                | bonds    |
      | more than 50 chars | not throw       | Over Draft Account | <ProductType> | <ApplicationStage> | <ApplicantType> | bank_credit_card_details.xlsx | bank_details               | 41                                | bonds    |
      | no iban            | not throw       | Over Draft Account | <ProductType> | <ApplicationStage> | <ApplicantType> | bank_credit_card_details.xlsx | bank_details               | 42                                | bonds    |
      | valid              | not throw       | Saving Account     | <ProductType> | <ApplicationStage> | <ApplicantType> | bank_credit_card_details.xlsx | bank_details               | 37                                | bonds    |
      | invalid            | throw           | Saving Account     | <ProductType> | <ApplicationStage> | <ApplicantType> | bank_credit_card_details.xlsx | bank_details               | 38                                | bonds    |
      | special characters | throw           | Saving Account     | <ProductType> | <ApplicationStage> | <ApplicantType> | bank_credit_card_details.xlsx | bank_details               | 39                                | bonds    |
      | max                | not throw       | Saving Account     | <ProductType> | <ApplicationStage> | <ApplicantType> | bank_credit_card_details.xlsx | bank_details               | 40                                | bonds    |
      | more than 50 chars | not throw       | Saving Account     | <ProductType> | <ApplicationStage> | <ApplicantType> | bank_credit_card_details.xlsx | bank_details               | 41                                | bonds    |
      | no iban            | not throw       | Saving Account     | <ProductType> | <ApplicationStage> | <ApplicantType> | bank_credit_card_details.xlsx | bank_details               | 42                                | bonds    |

#${ProductType:["IHF","IAF"]}
#${ApplicationStage:["Sourcing","Login Acceptance","DDE","Credit Approval"]}
    Examples:
      | DataType           | ErrorThrowOrNot | AccountType        | ProductType   | ApplicationStage   | ApplicantType   | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum | category |
      | valid              | not throw       | Cash Credit        | <ProductType> | <ApplicationStage> | <ApplicantType> | bank_credit_card_details.xlsx | bank_details               | 37                                |          |
      | invalid            | throw           | Cash Credit        | <ProductType> | <ApplicationStage> | <ApplicantType> | bank_credit_card_details.xlsx | bank_details               | 38                                |          |
      | special characters | throw           | Cash Credit        | <ProductType> | <ApplicationStage> | <ApplicantType> | bank_credit_card_details.xlsx | bank_details               | 39                                |          |
      | max                | not throw       | Cash Credit        | <ProductType> | <ApplicationStage> | <ApplicantType> | bank_credit_card_details.xlsx | bank_details               | 40                                |          |
      | more than 50 chars | not throw       | Cash Credit        | <ProductType> | <ApplicationStage> | <ApplicantType> | bank_credit_card_details.xlsx | bank_details               | 41                                |          |
      | no iban            | not throw       | Cash Credit        | <ProductType> | <ApplicationStage> | <ApplicantType> | bank_credit_card_details.xlsx | bank_details               | 42                                |          |
      | valid              | not throw       | Current Account    | <ProductType> | <ApplicationStage> | <ApplicantType> | bank_credit_card_details.xlsx | bank_details               | 37                                |          |
      | invalid            | throw           | Current Account    | <ProductType> | <ApplicationStage> | <ApplicantType> | bank_credit_card_details.xlsx | bank_details               | 38                                |          |
      | special characters | throw           | Current Account    | <ProductType> | <ApplicationStage> | <ApplicantType> | bank_credit_card_details.xlsx | bank_details               | 39                                |          |
      | max                | not throw       | Current Account    | <ProductType> | <ApplicationStage> | <ApplicantType> | bank_credit_card_details.xlsx | bank_details               | 40                                |          |
      | more than 50 chars | not throw       | Current Account    | <ProductType> | <ApplicationStage> | <ApplicantType> | bank_credit_card_details.xlsx | bank_details               | 41                                |          |
      | no iban            | not throw       | Current Account    | <ProductType> | <ApplicationStage> | <ApplicantType> | bank_credit_card_details.xlsx | bank_details               | 42                                |          |
      | valid              | not throw       | KCC Account        | <ProductType> | <ApplicationStage> | <ApplicantType> | bank_credit_card_details.xlsx | bank_details               | 37                                |          |
      | invalid            | throw           | KCC Account        | <ProductType> | <ApplicationStage> | <ApplicantType> | bank_credit_card_details.xlsx | bank_details               | 38                                |          |
      | special characters | throw           | KCC Account        | <ProductType> | <ApplicationStage> | <ApplicantType> | bank_credit_card_details.xlsx | bank_details               | 39                                |          |
      | max                | not throw       | KCC Account        | <ProductType> | <ApplicationStage> | <ApplicantType> | bank_credit_card_details.xlsx | bank_details               | 40                                |          |
      | more than 50 chars | not throw       | KCC Account        | <ProductType> | <ApplicationStage> | <ApplicantType> | bank_credit_card_details.xlsx | bank_details               | 41                                |          |
      | no iban            | not throw       | KCC Account        | <ProductType> | <ApplicationStage> | <ApplicantType> | bank_credit_card_details.xlsx | bank_details               | 42                                |          |
      | valid              | not throw       | Over Draft Account | <ProductType> | <ApplicationStage> | <ApplicantType> | bank_credit_card_details.xlsx | bank_details               | 37                                |          |
      | invalid            | throw           | Over Draft Account | <ProductType> | <ApplicationStage> | <ApplicantType> | bank_credit_card_details.xlsx | bank_details               | 38                                |          |
      | special characters | throw           | Over Draft Account | <ProductType> | <ApplicationStage> | <ApplicantType> | bank_credit_card_details.xlsx | bank_details               | 39                                |          |
      | max                | not throw       | Over Draft Account | <ProductType> | <ApplicationStage> | <ApplicantType> | bank_credit_card_details.xlsx | bank_details               | 40                                |          |
      | more than 50 chars | not throw       | Over Draft Account | <ProductType> | <ApplicationStage> | <ApplicantType> | bank_credit_card_details.xlsx | bank_details               | 41                                |          |
      | no iban            | not throw       | Over Draft Account | <ProductType> | <ApplicationStage> | <ApplicantType> | bank_credit_card_details.xlsx | bank_details               | 42                                |          |
      | valid              | not throw       | Saving Account     | <ProductType> | <ApplicationStage> | <ApplicantType> | bank_credit_card_details.xlsx | bank_details               | 37                                |          |
      | invalid            | throw           | Saving Account     | <ProductType> | <ApplicationStage> | <ApplicantType> | bank_credit_card_details.xlsx | bank_details               | 38                                |          |
      | special characters | throw           | Saving Account     | <ProductType> | <ApplicationStage> | <ApplicantType> | bank_credit_card_details.xlsx | bank_details               | 39                                |          |
      | max                | not throw       | Saving Account     | <ProductType> | <ApplicationStage> | <ApplicantType> | bank_credit_card_details.xlsx | bank_details               | 40                                |          |
      | more than 50 chars | not throw       | Saving Account     | <ProductType> | <ApplicationStage> | <ApplicantType> | bank_credit_card_details.xlsx | bank_details               | 41                                |          |
      | no iban            | not throw       | Saving Account     | <ProductType> | <ApplicationStage> | <ApplicantType> | bank_credit_card_details.xlsx | bank_details               | 42                                |          |



#PQM-39_CAS-186817, 40_CAS-186817, 41_CAS-186817, 42_CAS-186817, 43_CAS-186817, 44_CAS-186817
#${ApplicantType:["indiv"]}
#${ProductType:["IHF"]}
#${ApplicationStage:["Sourcing","Login Acceptance","DDE"]}
#FeatureID-ACAUTOCAS-15317
  @TestingForBugReproduce
    @LoggedBug-CAS-224631
  Scenario Outline: ACAUTOCAS-16116: Verify entering <DataType> data in IBAN field while adding Bank Account Details <SavedOrNot> under Seller Details at <ApplicationStage> stage for <ProductType> Application for <Category> with <PropertyDetails_SellerDetails_rowNum>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "" with "" from application grid
    And user navigates to personal information page of "<ApplicationStage>"
    And user clicks on loan details tab
    And user clicks on property tab
    And user de links the existing property details
    And user reads data from the excel file "<PropertyDetailsWB>" under sheet "<PropertyDetails_home>" and row <PropertyDetails_home_rowNum>
    And user fills required property details home page for seller details
    And user reads data from the excel file "<PropertyDetailsWB>" under sheet "<PropertyDetails_SellerDetails>" and row <PropertyDetails_SellerDetails_rowNum>
    And user is on Seller Account Details in Seller Details Page
    And user enters seller account details
    When user enters iban number in seller details with save
    Then iban details "<SavedOrNot>" successfully in seller details tab
    Examples:
      | DataType           | SavedOrNot | ProductType   | ApplicationStage   | ApplicantType   | PropertyDetailsWB     | PropertyDetails_home | PropertyDetails_home_rowNum | PropertyDetails_SellerDetails | PropertyDetails_SellerDetails_rowNum |
      | valid              | saved      | <ProductType> | <ApplicationStage> | <ApplicantType> | property_details.xlsx | home                 | 25                          | seller_details                | 200                                  |
      | invalid            | not saved  | <ProductType> | <ApplicationStage> | <ApplicantType> | property_details.xlsx | home                 | 25                          | seller_details                | 189                                  |
      | special characters | not saved  | <ProductType> | <ApplicationStage> | <ApplicantType> | property_details.xlsx | home                 | 25                          | seller_details                | 190                                  |
      | max                | saved      | <ProductType> | <ApplicationStage> | <ApplicantType> | property_details.xlsx | home                 | 25                          | seller_details                | 200                                  |
      | more than 50 chars | saved      | <ProductType> | <ApplicationStage> | <ApplicantType> | property_details.xlsx | home                 | 25                          | seller_details                | 200                                  |
      | no iban            | saved      | <ProductType> | <ApplicationStage> | <ApplicantType> | property_details.xlsx | home                 | 25                          | seller_details                | 200                                  |


#PQM-36_CAS-186817, 37_CAS-186817, 38_CAS-186817
#PMG-28_CAS-186817
#${ApplicantType:["indiv"]}
#${ProductType:["IHF"]}
#${ApplicationStage:["Sourcing","Login Acceptance","DDE"]}
#FeatureID-ACAUTOCAS-15317
  @TestingForBugReproduce
    @LoggedBug-CAS-224631
  Scenario Outline: ACAUTOCAS-16117: Verify the visibility of IBAN Field <Action> in Property Details tab in Seller Bank Account Details at <ApplicationStage> stage for <ProductType> Application for <Category> with <Disbursal_RepaymentInstrumentSheet_rowNum>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "" with "" from application grid
    And user navigates to personal information page of "<ApplicationStage>"
    And user reads data from the excel file "<PropertyDetailsWB>" under sheet "<PropertyDetails_home>" and row <PropertyDetails_home_rowNum>
    And user clicks on loan details tab
    And user clicks on property tab
    And user de links the existing property details
    And user fills property details home page for seller details
    And user reads data from the excel file "<PropertyDetailsWB>" under sheet "<PropertyDetails_SellerDetails>" and row <PropertyDetails_SellerDetails_rowNum>
    And user is on Seller Account Details in Seller Details Page
    And user fills seller account details
    When user "<Action>" seller account details
    Then iban details should be visible in bank details
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | PropertyDetailsWB     | PropertyDetails_home | PropertyDetails_home_rowNum | PropertyDetails_SellerDetails | PropertyDetails_SellerDetails_rowNum | Action |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | property_details.xlsx | home                 | 25                          | seller_details                | 200                                  | Add    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | property_details.xlsx | home                 | 25                          | seller_details                | 200                                  | Edit   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | property_details.xlsx | home                 | 25                          | seller_details                | 200                                  | View   |


#PQM-45_CAS-186817, 46_CAS-186817, 47_CAS-186817
#${ApplicantType:["indiv"]}
#${ProductType:["IAF"]}
#${ApplicationStage:["Sourcing","Login Acceptance","DDE"]}
#FeatureID-ACAUTOCAS-15317
  @TestingForBugReproduce
    @LoggedBug-CAS-224631
  Scenario Outline: ACAUTOCAS-16118: Verify the visibility of IBAN Field in Asset Details tab <Action> in Seller Bank Account Details at <ApplicationStage> stage for <ProductType> Application for <Category> with <PropertyDetails_home_rowNum>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "" with "" from application grid
    And user navigates to personal information page of "<ApplicationStage>"
    And user reads data from the excel file "<PropertyDetailsWB>" under sheet "<PropertyDetails_home>" and row <PropertyDetails_home_rowNum>
    And user clicks on loan details tab
    And user opens asset details tab
    And user de link collateral in asset details
    And user reads data from the excel file "<AssetDetailsWB>" under sheet "<AssetDetails_home>" and row <AssetDetails_home_rowNum>
    And user fills mandatory fields of asset details home page
    And user reads data from the excel file "bank_credit_card_details.xlsx" under sheet "bank_details" and row 0
    When user "<Action>" seller bank details
    Then iban details should be visible in seller bank details on Asset Details tab
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | PropertyDetailsWB     | PropertyDetails_home | PropertyDetails_home_rowNum | Action | AssetDetailsWB     | AssetDetails_home | AssetDetails_home_rowNum |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | property_details.xlsx | home                 | 25                          | Add    | asset_details.xlsx | home              | 70                       |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | property_details.xlsx | home                 | 25                          | Edit   | asset_details.xlsx | home              | 70                       |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | property_details.xlsx | home                 | 25                          | View   | asset_details.xlsx | home              | 70                       |


#PQM-78_CAS-186817, 79_CAS-186817, 80_CAS-186817, 81_CAS-186817, 82_CAS-186817, 83_CAS-186817, 84_CAS-186817, 85_CAS-186817, 86_CAS-186817, 87_CAS-186817, 88_CAS-186817, 89_CAS-186817, 90_CAS-186817, 91_CAS-186817, 92_CAS-186817, 93_CAS-186817, 94_CAS-186817, 95_CAS-186817, 96_CAS-186817, 97_CAS-186817, 98_CAS-186817, 99_CAS-186817, 143_CAS-186817,163_CAS-186817, 164_CAS-186817, 167_CAS-186817, 168_CAS-186817
#${ApplicantType:["indiv"]}
#FeatureID-ACAUTOCAS-15317
  Scenario Outline: ACAUTOCAS-16119: Verify the visibility of IBAN Field on Disbursal Payee Details for modes at <ApplicationStage> stage for <ProductType> Application for <Category> with <Disbursal_RepaymentInstrumentSheet_rowNum>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<category>" with "" from application grid
    When user open repayment instrument details
    And user reads data from the excel file "<DisbursalWB>" under sheet "<Disbursal_RepaymentInstrumentSheet>" and row <Disbursal_RepaymentInstrumentSheet_rowNum>
    And user selects repayment instrument type as "<Repayment_Instrument>"
    And user selects applicant as "<Applicant_Type>"
    And user open repayment instrument fields to add details
    And user select the mode of instrument as "Installment" for "Auto Debit"
    And user fills "<Repayment_Instrument>" repayment instrument details
    And user enters iban number and save
    Then iban details "<SavedOrNot>" saved successfully

#${ProductType:["IPF"]}
#${ApplicationStage:["Disbursal","POST APPROVAL"]}
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | DisbursalWB    | Disbursal_RepaymentInstrumentSheet | Disbursal_RepaymentInstrumentSheet_rowNum | Repayment_Instrument | Applicant_Type | SavedOrNot | category |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | disbursal.xlsx | repayment_instrument               | 424                                       | Auto Debit           | Manufacturer   | saved      | bonds    |

#${ProductType:["IHF","IAF"]}
#${ApplicationStage:["Disbursal","POST APPROVAL"]}
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | DisbursalWB    | Disbursal_RepaymentInstrumentSheet | Disbursal_RepaymentInstrumentSheet_rowNum | Repayment_Instrument | Applicant_Type | SavedOrNot | category |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | disbursal.xlsx | repayment_instrument               | 424                                       | Auto Debit           | Manufacturer   | saved      |          |


#${ApplicantType:["indiv"]}
#PQM-136_CAS-186817, 137_CAS-186817, 138_CAS-186817, 139_CAS-186817
#FeatureID-ACAUTOCAS-15317
  Scenario Outline: ACAUTOCAS-16120: Verify the visibility of IBAN Field from Enquiry at <ApplicationStage> stage for <ProductType> Application for <Category>
    And user navigates to Enquiry screen menu option
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<category>" with "" from application grid
    And user navigates to personal information page of "<ApplicationStage>"
    When user clicks on Bank and Credit Details
    Then iban column should be visible in bank details

#${ProductType:["IPF"]}
#${ApplicationStage:["Sourcing","Login Acceptance","DDE","Credit Approval","Post Approval"]}
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | category |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | bonds    |

#${ProductType:["IHF","IAF"]}
#${ApplicationStage:["Sourcing","Login Acceptance","DDE","Credit Approval","Post Approval"]}
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | category |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |

#${ApplicantType:["indiv"]}
#${ProductType:["IAF"]}
#${ApplicationStage:["Disbursal"]}
#PQM-140_CAS-186817
#FeatureID-ACAUTOCAS-15317
  Scenario Outline: ACAUTOCAS-16121: Verify the visibility of IBAN Field from Enquiry on Disbursal at <ApplicationStage> stage for <ProductType> Application for <ApplicantType>
    And user picks an application of "<ProductType>" product type as "<ApplicantType>" applicant at stage "<ApplicationStage>" for category "" with key ""
    When user opens an "<ProductType>" application at "<ApplicationStage>" stage from enquiry screen
    When user open the Payee Details
    Then field should be visible as read only
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |

#${ApplicantType:["indiv"]}
#${ProductType:["IHF"]}
#${ApplicationStage:["Disbursal"]}
#PQM-141_CAS-186817
#FeatureID-ACAUTOCAS-15317
  Scenario Outline: ACAUTOCAS-16122: Verify the visibility of IBAN Field from Enquiry on Disbursal at <ApplicationStage> stage for <ProductType> Application for <ApplicantType>
    And user picks an application of "<ProductType>" product type as "<ApplicantType>" applicant at stage "<ApplicationStage>" for category "" with key ""
    And user opens an "<ProductType>" application at "<ApplicationStage>" stage from enquiry screen
    When user open the Payee Details
    Then field should be visible as read only
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |

#${ApplicantType:["indiv"]}
#${ProductType:["IPF"]}
#${ApplicationStage:["Disbursal"]}
#PQM-142_CAS-186817
#FeatureID-ACAUTOCAS-15317
  Scenario Outline: ACAUTOCAS-16123: Verify the visibility of IBAN Field from Enquiry on Disbursal at <ApplicationStage> stage for <ProductType> Application for <ApplicantType>
    And user picks an application of "<ProductType>" product type as "<ApplicantType>" applicant at stage "<ApplicationStage>" for category "bonds" with key ""
    And user opens an "<ProductType>" application at "<ApplicationStage>" stage from enquiry screen
    When user open the Payee Details
    Then field should be visible as read only
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |

#${ProductType:["IPF"]}
#${ApplicantType:["indiv"]}
#${ApplicationStage:["DDE"]}
#PQM-134_CAS-186817
#FeatureID-ACAUTOCAS-15317
  Scenario Outline: ACAUTOCAS-16124: Verify IBAN field for Customer when application is copiedat <ApplicationStage> stage for <ProductType> Application for <Category> with <CopyApplication_personal_rowNum>
    And user picks an application of "<ProductType>" product type as "<ApplicantType>" applicant at stage "<ApplicationStage>" for category "<Category>" with key ""
    And user searches an individual application using application id in copy application screen
    And user copy the application
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "" from application grid
    And user selects document tab
    And user submit the documents with wait
    And user moves from "<ApplicationStage>" to application of "<ProductType>" product type as "<ApplicantType>" applicant at "Disbursal" for "<Category>" with "" stage
    And user opens an application of "Disbursal" stage present in context from application grid
    And user navigates to personal information page of "Disbursal"
    When user clicks on Bank and Credit Details
    Then iban column should be visible in bank details
    Examples:
      | ApplicationStage   | ProductType | ApplicantType | Category |
      | <ApplicationStage> | IPF         | indiv         | bonds    |

#${ApplicantType:["indiv"]}
#PQM-135_CAS-186817
#PMG-6_CAS-186817
#FeatureID-ACAUTOCAS-15317
  Scenario Outline: ACAUTOCAS-16125: Verify IBAN field for Customer when application is created using existing <AnotherApplicant> at <ApplicationStage> stage for <ProductType> Application for <Category>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<category>" with "" from application grid
    And user adds another existing individual applicant with applicant type as "<AnotherApplicant>" and application id
    And user navigates to personal information page of "<ApplicationStage>"
    When user clicks on Bank and Credit Details
    Then iban column should be visible in bank details

#${ProductType:["IPF"]}
#${ApplicationStage:["Sourcing"]}
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | AnotherApplicant | category |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Co-applicant     | bonds    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | guarantor        | bonds    |

#${ProductType:["IHF","IAF"]}
#${ApplicationStage:["Sourcing"]}
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | AnotherApplicant | category |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Co-applicant     |          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | guarantor        |          |

#PQM-182_CAS-186817
#FeatureID-ACAUTOCAS-15317
  Scenario Outline: ACAUTOCAS-16126: Verify seeded Rule for making IBAN as mandatory field
    And user navigate to rule master
    When User searches seeded rule "<Rule>"
    Then "<Rule>" should be visible in Grid
    Examples:
      | Rule           |
      | IBAN_SAVE_RULE |


  #FeatureID-ACAUTOCAS-15317
  #${ApplicantType:["indiv"]}
  @Perishable
Scenario Outline: ACAUTOCAS-17752:Saving bank details after moving the application from <ApplicationStage> to <FinalStage> for <ProductType> Application
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user navigates to personal information page of "<ApplicationStage>"
    And user clicks on Bank and Credit Details
    And user deletes existing bank details
    And user selects document tab
    And user submit the documents with wait
    And user switch and close next tab
    And user reads data from the excel file "<BankCreditCardWB>" under sheet "<BankCreditCard_bankDetails>" and row <BankCreditCard_bankDetails_rowNum>
    When user moves from "<ApplicationStage>" to application of "<ProductType>" product type as "<ApplicantType>" applicant at "<MovedStage>" for "<Category>" with "<Key>" stage
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<MovedStage>" for "<Category>" with "<Key>" from application grid
    And user navigates to personal information page of "<ApplicationStage>"
    And user clicks on Bank and Credit Details
    When user fills the bank details with IBAN for account type as "<AccountType>"
    Then Bank details should be saved successfully in bank details
   @Islamic
    # ${ProductType:["IPF"]}
   # ${Category:["bonds","metals"]}
    #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Credit Approval"]}
    Examples:
      | AccountType        | ProductType   | ApplicationStage   | ApplicantType   | Category   | Key | MovedStage    | FinalStage    | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum |
      | Cash Credit        | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Post Approval | Post Approval | bank_credit_card_details.xlsx | bank_details               | 15                                |
      | Current Account    | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Post Approval | Post Approval | bank_credit_card_details.xlsx | bank_details               | 17                                |
      | KCC Account        | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Post Approval | Post Approval | bank_credit_card_details.xlsx | bank_details               | 18                                |
      | Over Draft Account | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Post Approval | Post Approval | bank_credit_card_details.xlsx | bank_details               | 20                                |
      | Saving Account     | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Post Approval | Post Approval | bank_credit_card_details.xlsx | bank_details               | 16                                |
    @Islamic
      # ${ProductType:["IHF","IAF"]}
    #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Credit Approval"]}
    Examples:
      | AccountType        | ProductType   | ApplicationStage   | ApplicantType   | Category | Key | MovedStage    | FinalStage    | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum |
      | Cash Credit        | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Post Approval | Post Approval | bank_credit_card_details.xlsx | bank_details               | 15                                |
      | Current Account    | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Post Approval | Post Approval | bank_credit_card_details.xlsx | bank_details               | 17                                |
      | KCC Account        | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Post Approval | Post Approval | bank_credit_card_details.xlsx | bank_details               | 18                                |
      | Over Draft Account | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Post Approval | Post Approval | bank_credit_card_details.xlsx | bank_details               | 20                                |
      | Saving Account     | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Post Approval | Post Approval | bank_credit_card_details.xlsx | bank_details               | 16                                |
    
# ${ProductType : ["PF","MAL","HL","LAP","CV","MHL","FE","EDU","AGRL","JLG","CEQ","MULF","BD","CashCred","BL","LC","BG"]}
#${ApplicationStage:["Sourcing","Login Acceptance","DDE","Credit Approval"]}
    Examples:
      | AccountType        | ProductType   | ApplicationStage   | ApplicantType   | Category | Key | MovedStage    | FinalStage    | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum |
      | Cash Credit        | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Post Approval | Post Approval | bank_credit_card_details.xlsx | bank_details               | 15                                |
      | Current Account    | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Post Approval | Post Approval | bank_credit_card_details.xlsx | bank_details               | 17                                |
      | KCC Account        | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Post Approval | Post Approval | bank_credit_card_details.xlsx | bank_details               | 18                                |
      | Over Draft Account | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Post Approval | Post Approval | bank_credit_card_details.xlsx | bank_details               | 20                                |
      | Saving Account     | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Post Approval | Post Approval | bank_credit_card_details.xlsx | bank_details               | 16                                |


