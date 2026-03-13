@Epic-Islamic_IBAN_IFSC
@PQMStory
@AuthoredBy-deep.maurya
@ImplementedBy-ayush.garg
@Release
@TechReviewedBy-
@Islamic
@IBAN
@IbanConfiguration

 # ${ApplicantType:["indiv"]}
 #prerequisite:IBAN Rule Seeded
Feature: IBAN Configuration

  Background:
    Given user is on CAS Login Page


# PQM-183_CAS-186817
#FeatureID-ACAUTOCAS-11333
Scenario Outline: ACAUTOCAS-16207: Verify the validation message when IBAN rule is applied on Business Partner save and IBAN field is left blank
    And user logged in "Common Masters" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user navigates to Business Partners tab
    And user creates a Business Partner
    And user selects "<BPType>" as business partner type
    And user reads data from the excel file "<BusinessPartnerWB>" under sheet "<BusinessPartnerWB_SheetName>" and row <BusinessPartnerWB_SheetName_rowNum>
    And user enters the business partner name
    When user enters the bank account details
    And user clicks on done button of bank account tab
    Then record should get "<SavedOrNot>"
    Examples:
      | BPType          | SavedOrNot | BusinessPartnerWB     | BusinessPartnerWB_SheetName | BusinessPartnerWB_SheetName_rowNum |
      | Dealer/Supplier | saved      | business_partner.xlsx | home                        | 0                                  |

# PQM-184_CAS-186817
# PMG-7_CAS-186817
# ${ApplicantType:["indiv"]}
#FeatureID-ACAUTOCAS-11333
Scenario Outline: ACAUTOCAS-16208: Verify the validation message While IBAN rule is applied on Completion event and IBAN field is left blank
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<category>" with "" from application grid
    And user open repayment parameters page
    And user reads data from the excel file "<RepaymentParameters_WB>" under sheet "<RepaymentParameters_SheetName>" and row <RepaymentParameters_Row>
    And user fills repayment parameters with all fields
#    And user do not enters IBAN
    When user click on move to next stage
    Then move to next button should "<SuccessfulOrNot>"
    # ${ ProductType : ["IPF"]}
# ${ApplicationStage:["DDE"]}
    Examples:
      | SuccessfulOrNot   | RepaymentParameters_WB      | RepaymentParameters_SheetName | RepaymentParameters_Row | ProductType   | ApplicationStage   | ApplicantType   | category |
      | not be successful | RepaymentParameters_WB.xlsx | RepaymentParameters_SheetName | 0                       | <ProductType> | <ApplicationStage> | <ApplicantType> | bonds    |
 # ${ ProductType : ["IHF", "IAF"]}
# ${ApplicationStage:["DDE"]}
    Examples:
      | SuccessfulOrNot   | RepaymentParameters_WB      | RepaymentParameters_SheetName | RepaymentParameters_Row | ProductType   | ApplicationStage   | ApplicantType   | category |
      | not be successful | RepaymentParameters_WB.xlsx | RepaymentParameters_SheetName | 0                       | <ProductType> | <ApplicationStage> | <ApplicantType> |          |


# PQM-185_CAS-186817
#FeatureID-ACAUTOCAS-11333
  Scenario Outline: ACAUTOCAS-16209: Verify the validation message when IBAN rule is applied on Disbursal save event and IBAN field is left blank
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user clicks on add entry on disbursal page
    And user fills mandatory field in disbursal entry for "Personal Loan"
    And user fills disbursal Checklist
    And user opens payee details on disbursal
    And user selects payment mode as "Cheque"
    And user fills dealing bank in payee details
    And user saves the disbursal
    And user initiate disbursal
    When save disbursal
    Then disbursal should not be saved successfully
  # ${ ProductType : ["IPF"]}
  # ${Category:["bonds","metals"]}
# ${ApplicationStage:["Disbursal"]}
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Category   | Key |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     |
 # ${ ProductType : ["IHF", "IAF"]}
# ${ApplicationStage:["Disbursal"]}
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Category | Key |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |

# PQM-186_CAS-186817
#FeatureID-ACAUTOCAS-11333
  Scenario Outline: ACAUTOCAS-16210: Verify the validation message While IBAN rule is applied on Disbursal Initiate event at "<ProductType>" product type
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user clicks on add entry on disbursal page
    And user fills mandatory field in disbursal entry for "Personal Loan"
    And user fills disbursal Checklist
    And user opens payee details on disbursal
    And user selects payment mode as "Cheque"
    And user fills dealing bank in payee details
    And user saves the disbursal
    When user initiate disbursal
    Then disbursal should not be initiated successfully
 # ${ ProductType : ["IPF"]}
  # ${Category:["bonds","metals"]}
# ${ApplicationStage:["Disbursal"]}
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Category   | Key |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     |
 # ${ ProductType : ["IHF", "IAF"]}
# ${ApplicationStage:["Disbursal"]}
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Category | Key |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |

# PMG-5_CAS-186817
# PQM-187_CAS-186817
# ${ApplicantType:["indiv"]}
#FeatureID-ACAUTOCAS-11333
  Scenario Outline: ACAUTOCAS-16211: Verify the visibility of IBAN Field when configuration for IBAN is FALSE
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
#    And configuration for IBAN is false
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<category>" with "" from application grid
    When user open repayment instrument details
    And user reads data from the excel file "<DisbursalWB>" under sheet "<Disbursal_RepaymentInstrumentSheet>" and row <Disbursal_RepaymentInstrumentSheet_rowNum>
    And user selects repayment instrument type as "<Repayment_Instrument>"
    And user selects applicant as "<Applicant_Type>"
    And user open repayment instrument fields to add details
    And user select the mode of instrument as "Installment" for "Auto Debit"
    Then iban field should not be visible
    # ${ ProductType : ["IPF"]}
# ${ApplicationStage:["Disbursal"]}
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | DisbursalWB    | Disbursal_RepaymentInstrumentSheet | Disbursal_RepaymentInstrumentSheet_rowNum | Repayment_Instrument | Applicant_Type | category |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | disbursal.xlsx | repayment_instrument               | 424                                       | Auto Debit           | Manufacturer   | bonds    |

        # ${ ProductType : ["IHF", "IAF"]}
# ${ApplicationStage:["Disbursal"]}
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | DisbursalWB    | Disbursal_RepaymentInstrumentSheet | Disbursal_RepaymentInstrumentSheet_rowNum | Repayment_Instrument | Applicant_Type | category |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | disbursal.xlsx | repayment_instrument               | 424                                       | Auto Debit           | Manufacturer   |          |


    # ${ApplicantType:["indiv"]}
# PQM-124_CAS-186817
#FeatureID-ACAUTOCAS-11333
  Scenario Outline: ACAUTOCAS-16212: Verify IBAN field on LMS > Loan Viewer
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<category>" with "" from application grid
    And user opens an application present in context from sent to ops grid
    And user captures the LAN no of the application
    And user logout from CAS
    And user logged in "LMS" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    When user open the Loan in LMS loan viewer
    Then iban column should be visible in bank details
    # ${ProductType : ["IPF"]}
# ${ApplicationStage:["Disbursal Author"]}
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | category |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | bonds    |

        # ${ProductType : ["IHF", "IAF"]}
# ${ApplicationStage:["Disbursal Author"]}
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | category |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |


# PQM-125_CAS-186817,126_CAS-186817
# PMG-22_CAS-186817, 23_CAS-186817
#FeatureID-ACAUTOCAS-11333
  Scenario Outline: ACAUTOCAS-16213: Verify the visibility of IBAN field in <ReportName>
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<category>" with "" from application grid
    When user saves the "<Field_Name>" of CAM report for "<ProductType>"
    Then "<Field_Name>" is same as above saved record
    # ${ApplicantType:["indiv"]}
# ${ ProductType : ["IPF"]}
  #${ApplicationStage:["Disbursal","Credit Approval"]}
    Examples:
      | Field_Name | ReportName       | ProductType   | ApplicationStage   | ApplicantType   | category |
      | iban       | CAM Report       | <ProductType> | <ApplicationStage> | <ApplicantType> | bonds    |
      | iban       | Disbursal Report | <ProductType> | <ApplicationStage> | <ApplicantType> | bonds    |

        # ${ApplicantType:["indiv"]}
# ${ ProductType : ["IHF", "IAF"]}
    #${ApplicationStage:["Disbursal","Credit Approval"]}
    Examples:
      | Field_Name | ReportName       | ProductType   | ApplicationStage   | ApplicantType   | category |
      | iban       | CAM Report       | <ProductType> | <ApplicationStage> | <ApplicantType> |          |
      | iban       | Disbursal Report | <ProductType> | <ApplicationStage> | <ApplicantType> |          |
