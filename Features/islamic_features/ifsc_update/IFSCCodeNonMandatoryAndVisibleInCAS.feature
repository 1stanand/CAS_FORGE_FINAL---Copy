@Epic-Islamic_IBAN_IFSC
@PQMStory
@AuthoredBy-deep.maurya
@ImplementedBy-deep.maurya
@Release
@Islamic
@Perishable
@IFSC_VISIBLE_NON_MANDATORY


#CAS-199728,#CAS-195658
#Default Configuration:
#IFSC code: Visible and Non Mandatory
Feature:IFSC Code Should Be Visible and Non mandatory in CAS


  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0

#CAS-199728
# ${ApplicantType:["indiv"]}
# ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Credit Approval"]}
  #FeatureID-ACAUTOCAS-15320
Scenario Outline: ACAUTOCAS-15762:Check visibility of IFSC code along with non mandatory field in Bank Details at <ApplicationStage> stage for <ProductType> application
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user navigates to personal information page of "<ApplicationStage>"
    When user clicks on Bank and Credit Details
    Then IFSC code should be visible and non mandatory in bank credit details
    # ${ ProductType : ["IPF"]}
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Category | Key |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | bonds    |     |
     # ${ ProductType : ["IHF", "IAF"]}
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Category | Key |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |



  #CAS-199728
 # ${ApplicantType:["indiv"]}
# ${ ProductType : ["IHF"]}
# ${ApplicationStage:["Sourcing","Login Acceptance","DDE"]}
  #FeatureID-ACAUTOCAS-15320

Scenario Outline: ACAUTOCAS-15763:Check visibility of IFSC code along with non mandatory field in Seller Bank Account Details at <ApplicationStage> stage for <ProductType> application
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "" with "" from application grid
    And user navigates to personal information page of "<ApplicationStage>"
    And user reads data from the excel file "<PropertyDetailsWB>" under sheet "<PropertyDetails_home>" and row <PropertyDetails_home_rowNum>
    And user clicks on loan details tab
    And user clicks on property tab
    And user de links the existing property details
    And user fills required property details home page for seller details
    And user reads data from the excel file "<PropertyDetailsWB>" under sheet "<PropertyDetails_SellerDetails>" and row <PropertyDetails_SellerDetails_rowNum>
    When user is on Seller Account Details in Seller Details Page
    Then IFSC code should be visible and non mandatory in seller details
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | PropertyDetailsWB     | PropertyDetails_home | PropertyDetails_home_rowNum | PropertyDetails_SellerDetails | PropertyDetails_SellerDetails_rowNum |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | property_details.xlsx | home                 | 30                          | seller_details                | 200                                  |



  #FeatureID-ACAUTOCAS-15320
Scenario Outline: ACAUTOCAS-15764:Check visibility of IFSC code along with non mandatory field in Payee Details at <ApplicationStage> stage for a <ProductType> application
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "<DisbursalInfoWB>" under sheet "<DisbursalInfoWB_home>" and row <DisbursalInfoWB_home_rowNum>
    And user opens payee details on disbursal
    And user selects Business Partner Type as "<BP_Type>"
    And user selects payment mode as "<Modes>" in Payee Details
    When user selects subtype payments mode as "<Sub_Type_Payments_Mode>"
    Then IFSC code should be visible and non mandatory in Payee Details
    Examples:
      | ProductType | ApplicationStage | ApplicantType | Modes                    | BP_Type           | Sub_Type_Payments_Mode | DisbursalInfoWB | DisbursalInfoWB_home | DisbursalInfoWB_home_rowNum | Category | Key |
      | IAF         | DISBURSAL        | indiv         | Electronic Fund Transfer | Dealer/Supplier   | NEFT                   | disbursal.xlsx  | disbursal_entry      | 23                          |          |     |
      | IAF         | DISBURSAL        | indiv         | Electronic Fund Transfer | Dealer/Supplier   | NEFT                   | disbursal.xlsx  | disbursal_entry      | 23                          |          |     |
      | IAF         | DISBURSAL        | indiv         | Electronic Fund Transfer | Manufacturer      | NEFT                   | disbursal.xlsx  | disbursal_entry      | 23                          |          |     |
      | IAF         | DISBURSAL        | indiv         | Electronic Fund Transfer | Manufacturer      | NEFT                   | disbursal.xlsx  | disbursal_entry      | 23                          |          |     |
      | IAF         | DISBURSAL        | indiv         | Electronic Fund Transfer | Primary Applicant | NEFT                   | disbursal.xlsx  | disbursal_entry      | 23                          |          |     |
      | IAF         | DISBURSAL        | indiv         | Electronic Fund Transfer | Primary Applicant | NEFT                   | disbursal.xlsx  | disbursal_entry      | 23                          |          |     |
      | IHF         | DISBURSAL        | indiv         | Electronic Fund Transfer | Primary Applicant | NEFT                   | disbursal.xlsx  | disbursal_entry      | 23                          |          |     |
      | IHF         | DISBURSAL        | indiv         | Electronic Fund Transfer | Primary Applicant | NEFT                   | disbursal.xlsx  | disbursal_entry      | 23                          |          |     |
      | IHF         | DISBURSAL        | indiv         | Electronic Fund Transfer | Builder Company   | NEFT                   | disbursal.xlsx  | disbursal_entry      | 23                          |          |     |
      | IHF         | DISBURSAL        | indiv         | Electronic Fund Transfer | Builder Company   | NEFT                   | disbursal.xlsx  | disbursal_entry      | 23                          |          |     |



  #FeatureID-ACAUTOCAS-15320
Scenario Outline: ACAUTOCAS-15765:Check visibility of IFSC code along with non mandatory field in Repayment Instrument Details at <ApplicationStage> stage for a <ProductType> application
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user open repayment instrument details
    And user reads data from the excel file "<DisbursalWB>" under sheet "<Disbursal_RepaymentInstrumentSheet>" and row <Disbursal_RepaymentInstrumentSheet_rowNum>
    And user selects repayment instrument type as "<Repayment_Instrument>"
    And user selects applicant as "<Applicant_Type>"
    When user open repayment instrument fields to add details
  Then Then IFSC code should be visible and non mandatory in Repayment Instrument Details
  Examples:
    | ProductType | ApplicationStage | ApplicantType | Repayment_Instrument        | Applicant_Type    | DisbursalWB    | Disbursal_RepaymentInstrumentSheet | Disbursal_RepaymentInstrumentSheet_rowNum | Category | Key |
    | IPF         | DISBURSAL        | indiv         | Auto Debit                  | Primary Applicant | disbursal.xlsx | repayment_instrument               | 0                                         | bonds    |     |
    | IPF         | DISBURSAL        | indiv         | Electronic Clearence System | Primary Applicant | disbursal.xlsx | repayment_instrument               | 5                                         | bonds    |     |
    | IPF         | DISBURSAL        | indiv         | Direct Debit System         | Primary Applicant | disbursal.xlsx | repayment_instrument               | 458                                         | bonds    |     |
    | IPF         | DISBURSAL        | indiv         | Post Dated Cheque           | Primary Applicant | disbursal.xlsx | repayment_instrument               | 9                                         | bonds    |     |
    | IPF         | POST APPROVAL    | indiv         | Auto Debit                  | Primary Applicant | disbursal.xlsx | repayment_instrument               | 0                                         | bonds    |     |
    | IPF         | POST APPROVAL    | indiv         | Electronic Clearence System | Primary Applicant | disbursal.xlsx | repayment_instrument               | 5                                         | bonds    |     |
    | IPF         | POST APPROVAL    | indiv         | Direct Debit System         | Primary Applicant | disbursal.xlsx | repayment_instrument               | 458                                         | bonds    |     |
    | IPF         | POST APPROVAL    | indiv         | Post Dated Cheque           | Primary Applicant | disbursal.xlsx | repayment_instrument               | 9                                         | bonds    |     |
    | IAF         | DISBURSAL        | indiv         | Auto Debit                  | Primary Applicant | disbursal.xlsx | repayment_instrument               | 0                                         |          |     |
    | IAF         | DISBURSAL        | indiv         | Electronic Clearence System | Primary Applicant | disbursal.xlsx | repayment_instrument               | 5                                         |          |     |
    | IAF         | DISBURSAL        | indiv         | Direct Debit System         | Primary Applicant | disbursal.xlsx | repayment_instrument               | 458                                         |          |     |
    | IAF         | DISBURSAL        | indiv         | Post Dated Cheque           | Primary Applicant | disbursal.xlsx | repayment_instrument               | 9                                         |          |     |
    | IAF         | POST APPROVAL    | indiv         | Auto Debit                  | Primary Applicant | disbursal.xlsx | repayment_instrument               | 0                                         |          |     |
    | IAF         | POST APPROVAL    | indiv         | Electronic Clearence System | Primary Applicant | disbursal.xlsx | repayment_instrument               | 5                                         |          |     |
    | IAF         | POST APPROVAL    | indiv         | Direct Debit System         | Primary Applicant | disbursal.xlsx | repayment_instrument               | 458                                         |          |     |
    | IAF         | POST APPROVAL    | indiv         | Post Dated Cheque           | Primary Applicant | disbursal.xlsx | repayment_instrument               | 9                                         |          |     |
    | IAF         | DISBURSAL        | indiv         | Auto Debit                  | Manufacturer      | disbursal.xlsx | repayment_instrument               | 449                                       |          |     |
    | IAF         | DISBURSAL        | indiv         | Electronic Clearence System | Manufacturer      | disbursal.xlsx | repayment_instrument               | 451                                       |          |     |
    | IAF         | DISBURSAL        | indiv         | Direct Debit System         | Manufacturer      | disbursal.xlsx | repayment_instrument               | 458                                       |          |     |
    | IAF         | DISBURSAL        | indiv         | Post Dated Cheque           | Manufacturer      | disbursal.xlsx | repayment_instrument               | 453                                       |          |     |
    | IAF         | POST APPROVAL    | indiv         | Auto Debit                  | Manufacturer      | disbursal.xlsx | repayment_instrument               | 449                                       |          |     |
    | IAF         | POST APPROVAL    | indiv         | Electronic Clearence System | Manufacturer      | disbursal.xlsx | repayment_instrument               | 451                                       |          |     |
    | IAF         | POST APPROVAL    | indiv         | Direct Debit System         | Manufacturer      | disbursal.xlsx | repayment_instrument               | 458                                       |          |     |
    | IAF         | POST APPROVAL    | indiv         | Post Dated Cheque           | Manufacturer      | disbursal.xlsx | repayment_instrument               | 453                                       |          |     |
    | IHF         | DISBURSAL        | indiv         | Auto Debit                  | Primary Applicant | disbursal.xlsx | repayment_instrument               | 0                                         |          |     |
    | IHF         | DISBURSAL        | indiv         | Electronic Clearence System | Primary Applicant | disbursal.xlsx | repayment_instrument               | 5                                         |          |     |
    | IHF         | DISBURSAL        | indiv         | Direct Debit System         | Primary Applicant | disbursal.xlsx | repayment_instrument               | 458                                         |          |     |
    | IHF         | DISBURSAL        | indiv         | Post Dated Cheque           | Primary Applicant | disbursal.xlsx | repayment_instrument               | 9                                         |          |     |
    | IHF         | POST APPROVAL    | indiv         | Auto Debit                  | Primary Applicant | disbursal.xlsx | repayment_instrument               | 0                                         |          |     |
    | IHF         | POST APPROVAL    | indiv         | Electronic Clearence System | Primary Applicant | disbursal.xlsx | repayment_instrument               | 5                                         |          |     |
    | IHF         | POST APPROVAL    | indiv         | Direct Debit System         | Primary Applicant | disbursal.xlsx | repayment_instrument               | 458                                         |          |     |
    | IHF         | POST APPROVAL    | indiv         | Post Dated Cheque           | Primary Applicant | disbursal.xlsx | repayment_instrument               | 9                                         |          |     |
#      | IHF         | DISBURSAL        | indiv         | Auto Debit                        | Builder Company   | disbursal.xlsx | repayment_instrument               | 450                                       |          |     |
#      | IHF         | DISBURSAL        | indiv         | Electronic Clearence System       | Builder Company   | disbursal.xlsx | repayment_instrument               | 454                                       |          |     |
#      | IHF         | DISBURSAL        | indiv         | Direct Debit System | Builder Company   | disbursal.xlsx | repayment_instrument               | 455                                       |          |     |
#      | IHF         | DISBURSAL        | indiv         | Post Dated Cheque                 | Builder Company   | disbursal.xlsx | repayment_instrument               | 456                                       |          |     |
#      | IHF         | POST APPROVAL    | indiv         | Auto Debit                        | Builder Company   | disbursal.xlsx | repayment_instrument               | 450                                       |          |     |
#      | IHF         | POST APPROVAL    | indiv         | Electronic Clearence System       | Builder Company   | disbursal.xlsx | repayment_instrument               | 454                                       |          |     |
#      | IHF         | POST APPROVAL    | indiv         | Direct Debit System | Builder Company   | disbursal.xlsx | repayment_instrument               | 455                                       |          |     |
#      | IHF         | POST APPROVAL    | indiv         | Post Dated Cheque                 | Builder Company   | disbursal.xlsx | repayment_instrument               | 456                                       |          |     |


  #Prerequisite:Application already punch with application type as Multi Asset
  #FeatureID-ACAUTOCAS-15320
  Scenario Outline: ACAUTOCAS-15766:Check visibility of IFSC along with non mandatory field in Asset Details at <ApplicationStage> stage for a <ProductType> application
    And user reads data from the excel file "sourcing_details.xlsx" under sheet "home" and row 287
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "" with "" from application grid
    And user navigates to asset requested page for "<ApplicationStage>"
    And user reads data from the excel file "asset_details.xlsx" under sheet "home" and row 71
    And user select asset type as Used Asset
    And user select Bought From as Individual
    And user reads data from the excel file "asset_details.xlsx" under sheet "seller_details" and row 0
    When user click on add new seller bank details
    Then IFSC code should be visible and non mandatory in seller details
     #${ProductType:["IAF"]}
  #${ApplicationStage:["Sourcing","DDE","Reconsideration"]}
   #${ApplicantType:["indiv"]}
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |
  #${ApplicationStage:["Credit Approval"]}
     #${ProductType:["IAF"]}
     #${ApplicantType:["indiv"]}
    @LoggedBug-CAS-224631
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |


# ${ApplicantType:["indiv"]}
# ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Credit Approval"]}
# PMG-13_GWT,PMG-16_GWT
#FeatureID-ACAUTOCAS-15320
Scenario Outline: ACAUTOCAS-15767:Saving Bank Details without IFSC code at <ApplicationStage> stage for <ProductType> application
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "<BankCreditCardWB>" under sheet "<BankCreditCard_bankDetails>" and row <BankCreditCard_bankDetails_rowNum>
    And user navigates to personal information page of "<ApplicationStage>"
    And user clicks on Bank and Credit Details
    And user fills the bank details with IBAN for account type as "<AccountType>"
    Then Bank details should be saved successfully in bank details
    # ${ ProductType : ["IPF"]}
    # ${Category:["Bonds","Metals"]}
    Examples:
      | AccountType        | ProductType   | ApplicationStage   | ApplicantType   | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum | Category   | Key |
      | Cash Credit        | <ProductType> | <ApplicationStage> | <ApplicantType> | bank_credit_card_details.xlsx | bank_details               | 42                                | <Category> |     |
      | Current Account    | <ProductType> | <ApplicationStage> | <ApplicantType> | bank_credit_card_details.xlsx | bank_details               | 42                                | <Category> |     |
      | KCC Account        | <ProductType> | <ApplicationStage> | <ApplicantType> | bank_credit_card_details.xlsx | bank_details               | 42                                | <Category> |     |
      | Over Draft Account | <ProductType> | <ApplicationStage> | <ApplicantType> | bank_credit_card_details.xlsx | bank_details               | 42                                | <Category> |     |
      | Saving Account     | <ProductType> | <ApplicationStage> | <ApplicantType> | bank_credit_card_details.xlsx | bank_details               | 42                                | <Category> |     |
  # ${ ProductType : ["IHF","IAF"]}
    Examples:
      | AccountType        | ProductType   | ApplicationStage   | ApplicantType   | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum | Category | Key |
      | Cash Credit        | <ProductType> | <ApplicationStage> | <ApplicantType> | bank_credit_card_details.xlsx | bank_details               | 42                                |          |     |
      | Current Account    | <ProductType> | <ApplicationStage> | <ApplicantType> | bank_credit_card_details.xlsx | bank_details               | 42                                |          |     |
      | KCC Account        | <ProductType> | <ApplicationStage> | <ApplicantType> | bank_credit_card_details.xlsx | bank_details               | 42                                |          |     |
      | Over Draft Account | <ProductType> | <ApplicationStage> | <ApplicantType> | bank_credit_card_details.xlsx | bank_details               | 42                                |          |     |
      | Saving Account     | <ProductType> | <ApplicationStage> | <ApplicantType> | bank_credit_card_details.xlsx | bank_details               | 42                                |          |     |



  # PMG-15_GWT
#${ApplicantType:["indiv"]}
#${ApplicationStage:["Disbursal"]}
#${BeneficiaryAccountType:["Saving Account","Current Account","KCC Account","Over Draft Account","Cash Credit"]}
  #FeatureID-ACAUTOCAS-15320
  #CAS-222427 Bug Logged
  @LoggedBug-CAS-222427

Scenario Outline: ACAUTOCAS-15768:Saving Payee Details without IFSC at <ApplicationStage> stage for <ProductType> application
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "disbursal.xlsx" under sheet "disbursal_entry" and row 0
    And user fills disbursal Checklist
    And user reads data from the excel file "<DisbursalInfoWB>" under sheet "<DisbursalInfoWB_home>" and row <DisbursalInfoWB_home_rowNum>
    And user opens payee details on disbursal
    And user selects Business Partner Type as "<BPType>"
    And user selects payment mode as "Electronic Fund Transfer" in Payee Details
    When user selects subtype payments mode as "<Sub_Type_Payments_Mode>"
    And user selects Beneficiary Account Type as "<Beneficiary_Account_Type>"
    And user fills mandatory details without IFSC code
    Then Payee Details should be saved successfully
    #${ProductType:["IAF"]}
    #${BPType:["Primary Applicant","Manufacturer","Dealer/Supplier"]}
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Sub_Type_Payments_Mode | BPType   | Beneficiary_Account_Type   | DisbursalInfoWB | DisbursalInfoWB_home | DisbursalInfoWB_home_rowNum | Category | Key |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | NEFT                   | <BPType> | <BeneficiaryAccountType> | disbursal.xlsx  | disbursal_entry      | 36                          |          |     |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | RTGS                   | <BPType> | <BeneficiaryAccountType> | disbursal.xlsx  | disbursal_entry      | 41                          |          |     |
    #${ProductType:["IHF"]}
    #${BPType:["Primary Applicant","Builder Company"]}
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Sub_Type_Payments_Mode | BPType   | Beneficiary_Account_Type   | DisbursalInfoWB | DisbursalInfoWB_home | DisbursalInfoWB_home_rowNum | Category | Key |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | NEFT                   | <BPType> | <BeneficiaryAccountType> | disbursal.xlsx  | disbursal_entry      | 36                          |          |     |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | RTGS                   | <BPType> | <BeneficiaryAccountType> | disbursal.xlsx  | disbursal_entry      | 41                          |          |     |



