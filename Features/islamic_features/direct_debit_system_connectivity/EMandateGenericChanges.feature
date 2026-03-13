@Epic-Loan_Application_Details
@AuthoredBy-yash.sharma
@ImplementedBy-yash.sharma
@ReviewedBy-jagriti.mungali
@Perishable
@Part-2
Feature: E-Mandate Generic Changes

  Background:
    Given user is on CAS Login Page

    #PQM-1_CAS-197588
   #FeatureID-ACAUTOCAS-16525
  Scenario Outline: ACAUTOCAS-17929: Search NACH Instrument Type in Seed Data
    And user logged in "Common Masters" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And navigates to seed Data
    When user search the "<Parameter>" in seed data master
    Then "<Parameter>" should be visible on seed data master
    @Islamic @Release
    Examples:
      | Parameter                         |
      | National Automated Clearing House |

    #PQM-3_CAS-197588
    #FeatureID-ACAUTOCAS-16525
  Scenario Outline: ACAUTOCAS-17930: Verify DDS Instrument Type in Seed Data
    And user logged in "Common Masters" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And navigates to seed Data
    When user search the "<Parameter>" in seed data master
    Then "<Parameter>" should be visible on seed data master
    @Islamic @Release
    Examples:
      | Parameter           |
      | Direct Debit System |

    #PQM-4_CAS-197588
    #FeatureID-ACAUTOCAS-16525
  Scenario Outline: ACAUTOCAS-17931: Verify Direct Debit System in Repayment Instrument Details at <FinalStage> of <ProductType> for <Category>
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user open repayment instrument details
    And user reads data from the excel file "disbursal.xlsx" under sheet "repayment_instrument" and row 458
    When user selects repayment instrument type as "<Repayment_Instrument>"
    Then user should be able to add "<Repayment_Instrument>"
    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["Disbursal","Post Approval"]}
    # ${ApplicantType:["indiv"]}
    @Islamic @Release
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | Repayment_Instrument | FinalStage         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Direct Debit System  | <ApplicationStage> |

      # ${ProductType:["IPF"]}
      # ${ApplicationStage:["Disbursal","Post Approval"]}
      # ${ApplicantType:["indiv"]}
    @Islamic @Release
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key         | Repayment_Instrument | FinalStage         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Bonds    |             | Direct Debit System  | <ApplicationStage> |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Metals   |             | Direct Debit System  | <ApplicationStage> |
      | <ProductType> | <ApplicantType> | Reconsideration    | Shares   | isDisbursal | Direct Debit System  | Disbursal          |

    #FeatureID-ACAUTOCAS-16525
  Scenario Outline: ACAUTOCAS-17932: Verify Behaviour of <fieldName> after adding Repayment Instrument Details at <FinalStage> of <ProductType> for <Category>
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user selects document tab
    And user reads data from the excel file "document.xlsx" under sheet "home" and row 505
    And user select the document
    And user selects document status as "Received"
    And user uploads the document
    And user submit the documents with wait
    And user selects document tab
    And user reads data from the excel file "document.xlsx" under sheet "home" and row 506
    And user select the document
    And user selects document status as "Received"
    And user uploads the document
    And user submit the documents with wait
    And user open repayment instrument details
    And user reads data from the excel file "disbursal.xlsx" under sheet "repayment_instrument" and row 458
    And user selects repayment instrument type as "Direct Debit System"
    And user selects applicant as "Primary Applicant"
    And user open repayment instrument fields to add details
    And user fills all details of repayment details for NACH
    When user save and create mandate
    And user open Modal to view Mandate Details
    Then The "<fieldName>" should be "non editable" in Repayment Instrument Details
    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["Disbursal","Post Approval"]}
    # ${ApplicantType:["indiv"]}
    @Islamic @Release
    Examples:
      | fieldName                        | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | FinalStage         |
      | Registration Type                | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <ApplicationStage> |
      | Repayment Instrument Type        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <ApplicationStage> |
      | No. of Installments              | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <ApplicationStage> |
      | Mandate Type                     | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <ApplicationStage> |
      | Mandate Nature                   | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <ApplicationStage> |
      | Custodian                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <ApplicationStage> |
      | Mandate ID                       | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <ApplicationStage> |
      | Acknowledgment Number            | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <ApplicationStage> |
      | IFSC Code                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <ApplicationStage> |
      | Bank Branch Identifier Code NACH | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <ApplicationStage> |
      | Banking Location                 | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <ApplicationStage> |
      | Bank Name                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <ApplicationStage> |
      | BAR Code                         | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <ApplicationStage> |
      | Account Type                     | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <ApplicationStage> |
      | Account Name                     | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <ApplicationStage> |
      | Account Number                   | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <ApplicationStage> |
      | IBAN                             | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <ApplicationStage> |
      | NRE/NRO Account                  | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <ApplicationStage> |
      | Repayment Towards                | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <ApplicationStage> |
      | Repayment Contribution (%)       | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <ApplicationStage> |
      | Effective Date                   | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <ApplicationStage> |
      | Expiry Date                      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <ApplicationStage> |
      | Mandate Cap Amount               | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <ApplicationStage> |
      | Max EMI Amount                   | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <ApplicationStage> |
      | Next Due Date                    | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <ApplicationStage> |
      | Next EMI Amount                  | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <ApplicationStage> |
      | Mandate Verification Status      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <ApplicationStage> |
      | Verified BY                      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <ApplicationStage> |
      | E-Mandate Banking Type           | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <ApplicationStage> |
      | Status                           | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <ApplicationStage> |
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["Disbursal","Post Approval"]}
    # ${ApplicantType:["indiv"]}
    # ${Category:["Bonds","Metals"]}
    @Islamic @Release
    Examples:
      | fieldName                        | ProductType   | ApplicantType   | ApplicationStage   | Category   | Key             | FinalStage         |
      | Registration Type                | <ProductType> | <ApplicantType> | Reconsideration    | Shares     | isDisbursal     | Disbursal          |
      | Repayment Instrument Type        | <ProductType> | <ApplicantType> | Reconsideration    | Shares     | isDisbursal     | Disbursal          |
      | No. of Installments              | <ProductType> | <ApplicantType> | Reconsideration    | Shares     | isDisbursal     | Disbursal          |
      | Mandate Type                     | <ProductType> | <ApplicantType> | Reconsideration    | Shares     | isDisbursal     | Disbursal          |
      | Mandate Nature                   | <ProductType> | <ApplicantType> | Reconsideration    | Shares     | isDisbursal     | Disbursal          |
      | Custodian                        | <ProductType> | <ApplicantType> | Reconsideration    | Shares     | isDisbursal     | Disbursal          |
      | Mandate ID                       | <ProductType> | <ApplicantType> | Reconsideration    | Shares     | isDisbursal     | Disbursal          |
      | Acknowledgment Number            | <ProductType> | <ApplicantType> | Reconsideration    | Shares     | isDisbursal     | Disbursal          |
      | IFSC Code                        | <ProductType> | <ApplicantType> | Reconsideration    | Shares     | isDisbursal     | Disbursal          |
      | Bank Branch Identifier Code NACH | <ProductType> | <ApplicantType> | Reconsideration    | Shares     | isDisbursal     | Disbursal          |
      | Banking Location                 | <ProductType> | <ApplicantType> | Reconsideration    | Shares     | isDisbursal     | Disbursal          |
      | Bank Name                        | <ProductType> | <ApplicantType> | Reconsideration    | Shares     | isDisbursal     | Disbursal          |
      | BAR Code                         | <ProductType> | <ApplicantType> | Reconsideration    | Shares     | isDisbursal     | Disbursal          |
      | Account Type                     | <ProductType> | <ApplicantType> | Reconsideration    | Shares     | isDisbursal     | Disbursal          |
      | Account Name                     | <ProductType> | <ApplicantType> | Reconsideration    | Shares     | isDisbursal     | Disbursal          |
      | Account Number                   | <ProductType> | <ApplicantType> | Reconsideration    | Shares     | isDisbursal     | Disbursal          |
      | IBAN                             | <ProductType> | <ApplicantType> | Reconsideration    | Shares     | isDisbursal     | Disbursal          |
      | NRE/NRO Account                  | <ProductType> | <ApplicantType> | Reconsideration    | Shares     | isDisbursal     | Disbursal          |
      | Repayment Towards                | <ProductType> | <ApplicantType> | Reconsideration    | Shares     | isDisbursal     | Disbursal          |
      | Repayment Contribution (%)       | <ProductType> | <ApplicantType> | Reconsideration    | Shares     | isDisbursal     | Disbursal          |
      | Effective Date                   | <ProductType> | <ApplicantType> | Reconsideration    | Shares     | isDisbursal     | Disbursal          |
      | Expiry Date                      | <ProductType> | <ApplicantType> | Reconsideration    | Shares     | isDisbursal     | Disbursal          |
      | Mandate Cap Amount               | <ProductType> | <ApplicantType> | Reconsideration    | Shares     | isDisbursal     | Disbursal          |
      | Max EMI Amount                   | <ProductType> | <ApplicantType> | Reconsideration    | Shares     | isDisbursal     | Disbursal          |
      | Next Due Date                    | <ProductType> | <ApplicantType> | Reconsideration    | Shares     | isDisbursal     | Disbursal          |
      | Next EMI Amount                  | <ProductType> | <ApplicantType> | Reconsideration    | Shares     | isDisbursal     | Disbursal          |
      | Mandate Verification Status      | <ProductType> | <ApplicantType> | Reconsideration    | Shares     | isDisbursal     | Disbursal          |
      | Verified BY                      | <ProductType> | <ApplicantType> | Reconsideration    | Shares     | isDisbursal     | Disbursal          |
      | E-Mandate Banking Type           | <ProductType> | <ApplicantType> | Reconsideration    | Shares     | isDisbursal     | Disbursal          |
      | Status                           | <ProductType> | <ApplicantType> | Reconsideration    | Shares     | isDisbursal     | Disbursal          |
      | Registration Type                | <ProductType> | <ApplicantType> | Reconsideration    | Shares     | isPost Approval | Post Approval      |
      | Repayment Instrument Type        | <ProductType> | <ApplicantType> | Reconsideration    | Shares     | isPost Approval | Post Approval      |
      | No. of Installments              | <ProductType> | <ApplicantType> | Reconsideration    | Shares     | isPost Approval | Post Approval      |
      | Mandate Type                     | <ProductType> | <ApplicantType> | Reconsideration    | Shares     | isPost Approval | Post Approval      |
      | Mandate Nature                   | <ProductType> | <ApplicantType> | Reconsideration    | Shares     | isPost Approval | Post Approval      |
      | Custodian                        | <ProductType> | <ApplicantType> | Reconsideration    | Shares     | isPost Approval | Post Approval      |
      | Mandate ID                       | <ProductType> | <ApplicantType> | Reconsideration    | Shares     | isPost Approval | Post Approval      |
      | Acknowledgment Number            | <ProductType> | <ApplicantType> | Reconsideration    | Shares     | isPost Approval | Post Approval      |
      | IFSC Code                        | <ProductType> | <ApplicantType> | Reconsideration    | Shares     | isPost Approval | Post Approval      |
      | Bank Branch Identifier Code NACH | <ProductType> | <ApplicantType> | Reconsideration    | Shares     | isPost Approval | Post Approval      |
      | Banking Location                 | <ProductType> | <ApplicantType> | Reconsideration    | Shares     | isPost Approval | Post Approval      |
      | Bank Name                        | <ProductType> | <ApplicantType> | Reconsideration    | Shares     | isPost Approval | Post Approval      |
      | BAR Code                         | <ProductType> | <ApplicantType> | Reconsideration    | Shares     | isPost Approval | Post Approval      |
      | Account Type                     | <ProductType> | <ApplicantType> | Reconsideration    | Shares     | isPost Approval | Post Approval      |
      | Account Name                     | <ProductType> | <ApplicantType> | Reconsideration    | Shares     | isPost Approval | Post Approval      |
      | Account Number                   | <ProductType> | <ApplicantType> | Reconsideration    | Shares     | isPost Approval | Post Approval      |
      | IBAN                             | <ProductType> | <ApplicantType> | Reconsideration    | Shares     | isPost Approval | Post Approval      |
      | NRE/NRO Account                  | <ProductType> | <ApplicantType> | Reconsideration    | Shares     | isPost Approval | Post Approval      |
      | Repayment Towards                | <ProductType> | <ApplicantType> | Reconsideration    | Shares     | isPost Approval | Post Approval      |
      | Repayment Contribution (%)       | <ProductType> | <ApplicantType> | Reconsideration    | Shares     | isPost Approval | Post Approval      |
      | Effective Date                   | <ProductType> | <ApplicantType> | Reconsideration    | Shares     | isPost Approval | Post Approval      |
      | Expiry Date                      | <ProductType> | <ApplicantType> | Reconsideration    | Shares     | isPost Approval | Post Approval      |
      | Mandate Cap Amount               | <ProductType> | <ApplicantType> | Reconsideration    | Shares     | isPost Approval | Post Approval      |
      | Max EMI Amount                   | <ProductType> | <ApplicantType> | Reconsideration    | Shares     | isPost Approval | Post Approval      |
      | Next Due Date                    | <ProductType> | <ApplicantType> | Reconsideration    | Shares     | isPost Approval | Post Approval      |
      | Next EMI Amount                  | <ProductType> | <ApplicantType> | Reconsideration    | Shares     | isPost Approval | Post Approval      |
      | Mandate Verification Status      | <ProductType> | <ApplicantType> | Reconsideration    | Shares     | isPost Approval | Post Approval      |
      | Verified BY                      | <ProductType> | <ApplicantType> | Reconsideration    | Shares     | isPost Approval | Post Approval      |
      | E-Mandate Banking Type           | <ProductType> | <ApplicantType> | Reconsideration    | Shares     | isPost Approval | Post Approval      |
      | Status                           | <ProductType> | <ApplicantType> | Reconsideration    | Shares     | isPost Approval | Post Approval      |
      | Registration Type                | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |                 | <ApplicationStage> |
      | Repayment Instrument Type        | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |                 | <ApplicationStage> |
      | No. of Installments              | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |                 | <ApplicationStage> |
      | Mandate Type                     | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |                 | <ApplicationStage> |
      | Mandate Nature                   | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |                 | <ApplicationStage> |
      | Custodian                        | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |                 | <ApplicationStage> |
      | Mandate ID                       | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |                 | <ApplicationStage> |
      | Acknowledgment Number            | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |                 | <ApplicationStage> |
      | IFSC Code                        | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |                 | <ApplicationStage> |
      | Bank Branch Identifier Code NACH | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |                 | <ApplicationStage> |
      | Banking Location                 | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |                 | <ApplicationStage> |
      | Bank Name                        | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |                 | <ApplicationStage> |
      | BAR Code                         | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |                 | <ApplicationStage> |
      | Account Type                     | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |                 | <ApplicationStage> |
      | Account Name                     | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |                 | <ApplicationStage> |
      | Account Number                   | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |                 | <ApplicationStage> |
      | IBAN                             | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |                 | <ApplicationStage> |
      | NRE/NRO Account                  | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |                 | <ApplicationStage> |
      | Repayment Towards                | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |                 | <ApplicationStage> |
      | Repayment Contribution (%)       | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |                 | <ApplicationStage> |
      | Effective Date                   | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |                 | <ApplicationStage> |
      | Expiry Date                      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |                 | <ApplicationStage> |
      | Mandate Cap Amount               | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |                 | <ApplicationStage> |
      | Max EMI Amount                   | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |                 | <ApplicationStage> |
      | Next Due Date                    | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |                 | <ApplicationStage> |
      | Next EMI Amount                  | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |                 | <ApplicationStage> |
      | Mandate Verification Status      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |                 | <ApplicationStage> |
      | Verified BY                      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |                 | <ApplicationStage> |
      | E-Mandate Banking Type           | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |                 | <ApplicationStage> |
      | Status                           | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |                 | <ApplicationStage> |

    #PQM-5_CAS-197588,6_CAS-197588
    #FeatureID-ACAUTOCAS-16525
  Scenario Outline: ACAUTOCAS-17933: Verify Label of <fieldName> in Add Repayment Instrument Details at <FinalStage> of <ProductType> for <Category>
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user open repayment instrument details
    And user reads data from the excel file "disbursal.xlsx" under sheet "repayment_instrument" and row 458
    And user selects repayment instrument type as "<Repayment_Instrument>"
    And user selects applicant as "<Applicant_Type>"
    And user open repayment instrument fields to add details
    When user select registration type as "<registrationType>"
    Then The Label of "<fieldName>" should be "<labelName>"
     # ${ProductType:["IAF","IHF"]}
     # ${ApplicationStage:["Disbursal","Post Approval"]}
     # ${ApplicantType:["indiv"]}
    @Islamic @Release
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | Repayment_Instrument | Applicant_Type    | fieldName              | labelName              | registrationType | FinalStage         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Direct Debit System  | Primary Applicant | Mandate ID Physical    | Mandate ID             | Physical         | <ApplicationStage> |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Direct Debit System  | Primary Applicant | Acknowledgment Number  | Acknowledgment Number  | Electronic       | <ApplicationStage> |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Direct Debit System  | Primary Applicant | Mandate ID Electronic  | Mandate ID             | Electronic       | <ApplicationStage> |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Direct Debit System  | Primary Applicant | E-Mandate Banking Type | E-Mandate Banking Type | Electronic       | <ApplicationStage> |
     # ${ProductType:["IPF"]}
     # ${ApplicantType:["indiv"]}
     # ${Category:["shares","bonds","metals"]}
    @Islamic @Release
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage | Category | Key         | Repayment_Instrument | Applicant_Type    | fieldName              | labelName              | registrationType | FinalStage |
      | <ProductType> | <ApplicantType> | Reconsideration  | Shares   | isDisbursal | Direct Debit System  | Primary Applicant | Mandate ID Physical    | Mandate ID             | Physical         | Disbursal  |
      | <ProductType> | <ApplicantType> | Disbursal        | Bonds    |             | Direct Debit System  | Primary Applicant | Mandate ID Physical    | Mandate ID             | Physical         | Disbursal  |
      | <ProductType> | <ApplicantType> | Disbursal        | Metals   |             | Direct Debit System  | Primary Applicant | Mandate ID Physical    | Mandate ID             | Physical         | Disbursal  |
      | <ProductType> | <ApplicantType> | Reconsideration  | Shares   | isDisbursal | Direct Debit System  | Primary Applicant | Acknowledgment Number  | Acknowledgment Number  | Electronic       | Disbursal  |
      | <ProductType> | <ApplicantType> | Disbursal        | Bonds    |             | Direct Debit System  | Primary Applicant | Acknowledgment Number  | Acknowledgment Number  | Electronic       | Disbursal  |
      | <ProductType> | <ApplicantType> | Disbursal        | Metals   |             | Direct Debit System  | Primary Applicant | Acknowledgment Number  | Acknowledgment Number  | Electronic       | Disbursal  |
      | <ProductType> | <ApplicantType> | Reconsideration  | Shares   | isDisbursal | Direct Debit System  | Primary Applicant | Mandate ID Electronic  | Mandate ID             | Electronic       | Disbursal  |
      | <ProductType> | <ApplicantType> | Disbursal        | Bonds    |             | Direct Debit System  | Primary Applicant | Mandate ID Electronic  | Mandate ID             | Electronic       | Disbursal  |
      | <ProductType> | <ApplicantType> | Disbursal        | Metals   |             | Direct Debit System  | Primary Applicant | Mandate ID Electronic  | Mandate ID             | Electronic       | Disbursal  |
      | <ProductType> | <ApplicantType> | Reconsideration  | Shares   | isDisbursal | Direct Debit System  | Primary Applicant | E-Mandate Banking Type | E-Mandate Banking Type | Electronic       | Disbursal  |
      | <ProductType> | <ApplicantType> | Disbursal        | Bonds    |             | Direct Debit System  | Primary Applicant | E-Mandate Banking Type | E-Mandate Banking Type | Electronic       | Disbursal  |
      | <ProductType> | <ApplicantType> | Disbursal        | Metals   |             | Direct Debit System  | Primary Applicant | E-Mandate Banking Type | E-Mandate Banking Type | Electronic       | Disbursal  |

    # PQM-11_CAS-197588
   #FeatureID-ACAUTOCAS-16525
  Scenario Outline: ACAUTOCAS-17934: Hit the <mandateRegistrationService_Name> via try now feature in API Center
    And user logged in "APIcenter" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user clicks on Documentation tab
    And user searches "<mandateRegistrationService>" in documentation and opens
    And user click on get access token
    And user fills details for access token
    And user generates access token
    And user copy the access token
    And user click on try now button on API center
    And user reads data from the excel file "disbursal.xlsx" under sheet "repayment_instrument" and row 458
    And user update the json of "<mandateRegistrationService>"
    And user enters access token
    When user click on send request button
    Then Api hit successfully with proper response details for "<mandateRegistrationService>"
    @Islamic @Release
    Examples:
      | mandateRegistrationService | mandateRegistrationService_Name |
      | CAS_Disb_15                | GetMandateID                    |

     #PQM-15_CAS-197588,3_CAS-193136,4_CAS-193136
    #FeatureID-ACAUTOCAS-16525
  Scenario Outline: ACAUTOCAS-17935: Validate Rule Master for <ruleName>
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user navigate to rule master
    When User searches seeded rule "<ruleName>"
    Then "<ruleName>" should be visible in Grid
    @Islamic @Release
    Examples:
      | ruleName                            |
      | EMANDATE_VALIDATE_BANK              |
      | isDocRecievedForMandateRegistration |
      | isDocRecievedForCancelMandate       |

     #PQM-16_CAS-197588,5_CAS-193136,23_CAS-193136
    #FeatureID-ACAUTOCAS-16525
  Scenario Outline: ACAUTOCAS-17936: Validate Event Master for <eventName>
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user navigate To Event Master
    When user searches event "<eventName>"
    Then "<eventName>" should be visible in Event Master Grid
    @Islamic @Release
    Examples:
      | eventName                            |
      | INSTRUMENT_POST_APPROVAL_DETAIL_SAVE |

     #PQM-22_CAS-197588
     #FeatureID-ACAUTOCAS-16525
  Scenario Outline: ACAUTOCAS-17937: Validate Disbursal initiation without adding mandate details at <FinalStage> of <ProductType> for <Category>
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user complete document printing tab
    And user complete other mandatory tasks at PDOC
    And user moves to main tab of "disbursal"
    And user reads data from the excel file "disbursal.xlsx" under sheet "disbursal_entry" and row 0
    And user fills disbursal Checklist
    When user initiate disbursal
    Then Application should be sent to "Disbursal Author"
    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["Disbursal"]}
    # ${ApplicantType:["indiv"]}
    @Islamic @Release
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | FinalStage         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <ApplicationStage> |
     # ${ProductType:["IPF"]}
     # ${ApplicationStage:["Disbursal"]}
     # ${ApplicantType:["indiv"]}
    @Islamic @Release
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | FinalStage         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Bonds    |     | <ApplicationStage> |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Metals   |     | <ApplicationStage> |

  #PQM-1_CAS-193136,2_CAS-193136
  #FeatureID-ACAUTOCAS-16525
  Scenario Outline: ACAUTOCAS-17938: Verify Condition <conditionName>
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user navigates to Conditions Master
    When Search condition "<conditionName>"
    Then "<conditionName>" should be present in the Conditions Master Grid
    @Islamic @Release
    Examples:
      | conditionName       |
      | docRecvdForCnclMand |
      | docRecvdForManReg   |

       #PQM-8_CAS-193136,26_CAS-193136
    #FeatureID-ACAUTOCAS-16525
  Scenario Outline: ACAUTOCAS-17939: Verify <documentName> in Document Master
    And user logged in "Common Masters" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user navigates to documents master
    And user reads data from the excel file "document_masters.xlsx" under sheet "document" and row <rowNum>
    When user searches document in documents master
    Then "<documentName>" should be present in Document Master
    Examples:
      | documentName        | rowNum |
      | RegisterMandateDoc  | 11     |
      | RegisterMandateForm | 12     |
      | CancelMandateDoc    | 13     |
      | CancelMandateForm   | 14     |

    #PQM-11_CAS-193136,29_CAS-193136
    #FeatureID-ACAUTOCAS-16525
  Scenario Outline: ACAUTOCAS-17940: Verify Update Checklist at <FinalStage> of <ProductType> for <Category>
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user selects document tab
    When user click update checklist in Document Tab
    Then User should be able to update document checklist
      # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["Disbursal","Post Approval"]}
    # ${ApplicantType:["indiv"]}
    @Islamic @Release
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | FinalStage         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <ApplicationStage> |
     # ${ProductType:["IPF"]}
     # ${ApplicationStage:["Disbursal","Post Approval"]}
     # ${ApplicantType:["indiv"]}
    @Islamic @Release
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key         | FinalStage         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Bonds    |             | <ApplicationStage> |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Metals   |             | <ApplicationStage> |
      | <ProductType> | <ApplicantType> | Reconsideration    | Shares   | isDisbursal | Disbursal          |


  #PQM-23_CAS-197588
  #FeatureID-ACAUTOCAS-16525
  Scenario Outline: ACAUTOCAS-17941: Create an Application with Acknowledgement Number and Mandate Id of <ProductType> at <FinalStage> for <Category>
    And user creates stage variant for an application of "<ProductType>" product type as "<ApplicantType>" applicant at stage "<ApplicationStage>" for category "<Category>" with key "<Key>"
    And user reads data from the excel file "disbursal.xlsx" under sheet "repayment_instrument" and row 461
    When user hits Application Creation Request with Required Instrument Details
    Then user should be able to create application with instrument details
     # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["Disbursal","Post Approval"]}
    # ${ApplicantType:["indiv"]}
    @Islamic @Release
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | FinalStage         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <ApplicationStage> |
     # ${ProductType:["IPF"]}
     # ${ApplicationStage:["Disbursal","Post Approval"]}
     # ${ApplicantType:["indiv"]}
    @Islamic @Release
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key         | FinalStage         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Bonds    |             | <ApplicationStage> |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Metals   |             | <ApplicationStage> |
      | <ProductType> | <ApplicantType> | Reconsideration    | Shares   | isDisbursal | Disbursal          |

  #PQM-33_CAS-197588
  #FeatureID-ACAUTOCAS-16525
  Scenario Outline: ACAUTOCAS-17942: Create an Application with effectiveDate less than Application Creation of <ProductType> at <FinalStage> for <Category>
    And user creates stage variant for an application of "<ProductType>" product type as "<ApplicantType>" applicant at stage "<ApplicationStage>" for category "<Category>" with key "<Key>"
    And user reads data from the excel file "disbursal.xlsx" under sheet "repayment_instrument" and row 462
    When user hits Application Creation Request with Required Instrument Details
    Then application creation.updation service should respond with "Effective Date should be greater than equal to Application Creation Date"
     # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["Disbursal","Post Approval"]}
    # ${ApplicantType:["indiv"]}
    @Islamic @Release
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | FinalStage         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <ApplicationStage> |
     # ${ProductType:["IPF"]}
     # ${ApplicationStage:["Disbursal","Post Approval"]}
     # ${ApplicantType:["indiv"]}
    @Islamic @Release
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key         | FinalStage         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Bonds    |             | <ApplicationStage> |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Metals   |             | <ApplicationStage> |
      | <ProductType> | <ApplicantType> | Reconsideration    | Shares   | isDisbursal | Disbursal          |


  #PQM-34_CAS-197588
  #FeatureID-ACAUTOCAS-16525
  Scenario Outline: ACAUTOCAS-17943: Create an Application with Acknowledgement Number and without Mandate ID of <ProductType> at <FinalStage> for <Category>
    And user creates stage variant for an application of "<ProductType>" product type as "<ApplicantType>" applicant at stage "<ApplicationStage>" for category "<Category>" with key "<Key>"
    And user reads data from the excel file "disbursal.xlsx" under sheet "repayment_instrument" and row 463
    When user hits Application Creation Request with Required Instrument Details
    Then application creation.updation service should respond with "Please provide Mandate ID"
    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["Disbursal","Post Approval"]}
    # ${ApplicantType:["indiv"]}
    @Islamic @Release
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | FinalStage         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <ApplicationStage> |
     # ${ProductType:["IPF"]}
     # ${ApplicationStage:["Disbursal","Post Approval"]}
     # ${ApplicantType:["indiv"]}
    @Islamic @Release
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key         | FinalStage         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Bonds    |             | <ApplicationStage> |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Metals   |             | <ApplicationStage> |
      | <ProductType> | <ApplicantType> | Reconsideration    | Shares   | isDisbursal | Disbursal          |

  #FeatureID-ACAUTOCAS-16525
  Scenario Outline: ACAUTOCAS-17944: Create an Application without Acknowledgement Number and with Mandate ID of <ProductType> at <FinalStage> for <Category>
    And user creates stage variant for an application of "<ProductType>" product type as "<ApplicantType>" applicant at stage "<ApplicationStage>" for category "<Category>" with key "<Key>"
    And user reads data from the excel file "disbursal.xlsx" under sheet "repayment_instrument" and row 464
    When user hits Application Creation Request with Required Instrument Details
    Then application creation.updation service should respond with "Provide both umrn and umrn response"
    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["Disbursal","Post Approval"]}
    # ${ApplicantType:["indiv"]}
    @Islamic @Release
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | FinalStage         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <ApplicationStage> |
     # ${ProductType:["IPF"]}
     # ${ApplicationStage:["Disbursal","Post Approval"]}
     # ${ApplicantType:["indiv"]}
    @Islamic @Release
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key         | FinalStage         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Bonds    |             | <ApplicationStage> |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Metals   |             | <ApplicationStage> |
      | <ProductType> | <ApplicantType> | Reconsideration    | Shares   | isDisbursal | Disbursal          |

   #PQM-34_CAS-193136
  #FeatureID-ACAUTOCAS-16525
  Scenario Outline: ACAUTOCAS-17945: Add Additional Document for Mandate Registration at <FinalStage> of <ProductType> for <Category>
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "document.xlsx" under sheet "home" and row 508
    And user selects document tab
    And user add additional type document
    And user selects document tab
    And user select the document
    And user selects document status as "Received"
    When user uploads the document
    And user submit the document
    Then Document Should saved successfully
      # ${ProductType:["IAF","IHF"]}
      # ${ApplicationStage:["Disbursal","Post Approval"]}
      # ${ApplicantType:["indiv"]}
    @Islamic @Release
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | FinalStage         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <ApplicationStage> |
      # ${ProductType:["IPF"]}
      # ${ApplicationStage:["Disbursal","Post Approval"]}
      # ${ApplicantType:["indiv"]}
    @Islamic @Release
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key         | FinalStage         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Bonds    |             | <ApplicationStage> |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Metals   |             | <ApplicationStage> |
      | <ProductType> | <ApplicantType> | Reconsideration    | Shares   | isDisbursal | Disbursal          |


  #PQM-12_CAS-193136
  #FeatureID-ACAUTOCAS-16525
  Scenario Outline: ACAUTOCAS-17946: Upload Maintained Documents for Repayment Instrument at <FinalStage> of <ProductType> for <Category>
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user selects document tab
    And user reads data from the excel file "document.xlsx" under sheet "home" and row 505
    And user select the document
    And user selects document status as "Received"
    And user uploads the document
    And user submit the documents with wait
    And user selects document tab
    And user reads data from the excel file "document.xlsx" under sheet "home" and row 506
    And user select the document
    And user selects document status as "Received"
    And user uploads the document
    When user submit the document
    Then Document Should saved successfully
    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["Disbursal","Post Approval"]}
    # ${ApplicantType:["indiv"]}
    @Islamic @Release
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | FinalStage         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <ApplicationStage> |
     # ${ProductType:["IPF"]}
     # ${ApplicationStage:["Disbursal","Post Approval"]}
     # ${ApplicantType:["indiv"]}
    @Islamic @Release
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key         | FinalStage         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Bonds    |             | <ApplicationStage> |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Metals   |             | <ApplicationStage> |
      | <ProductType> | <ApplicantType> | Reconsideration    | Shares   | isDisbursal | Disbursal          |


    #PQM-23_CAS-197588
  #FeatureID-ACAUTOCAS-16525
  Scenario Outline: ACAUTOCAS-17947: Update an Application with Acknowledgement Number and Mandate Id of <ProductType> at <FinalStage> for <Category>
    And user picks an application of "<ProductType>" product type as "<ApplicantType>" applicant at stage "<ApplicationStage>" for category "<Category>" with key "<Key>"
    And user reads data from the excel file "disbursal.xlsx" under sheet "repayment_instrument" and row 461
    When user hits Application Update Request with Required Instrument Details
    Then user should be able to update application with instrument details
     # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["Disbursal","Post Approval"]}
    # ${ApplicantType:["indiv"]}
    @Islamic @Release
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | FinalStage         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <ApplicationStage> |
     # ${ProductType:["IPF"]}
     # ${ApplicationStage:["Disbursal","Post Approval"]}
     # ${ApplicantType:["indiv"]}
    @Islamic @Release
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key         | FinalStage         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Bonds    |             | <ApplicationStage> |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Metals   |             | <ApplicationStage> |
      | <ProductType> | <ApplicantType> | Reconsideration    | Shares   | isDisbursal | Disbursal          |

  #PQM-33_CAS-197588
  #FeatureID-ACAUTOCAS-16525
  Scenario Outline: ACAUTOCAS-17948: Update an Application with effectiveDate less than Application Creation of <ProductType> at <FinalStage> for <Category>
    And user picks an application of "<ProductType>" product type as "<ApplicantType>" applicant at stage "<ApplicationStage>" for category "<Category>" with key "<Key>"
    And user reads data from the excel file "disbursal.xlsx" under sheet "repayment_instrument" and row 462
    When user hits Application Update Request with Required Instrument Details
    Then application creation.updation service should respond with "Effective Date should be greater than equal to Application Creation Date"
     # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["Disbursal","Post Approval"]}
    # ${ApplicantType:["indiv"]}
    @Islamic @Release
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | FinalStage         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <ApplicationStage> |
     # ${ProductType:["IPF"]}
     # ${ApplicationStage:["Disbursal","Post Approval"]}
     # ${ApplicantType:["indiv"]}
    @Islamic @Release
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key         | FinalStage         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Bonds    |             | <ApplicationStage> |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Metals   |             | <ApplicationStage> |
      | <ProductType> | <ApplicantType> | Reconsideration    | Shares   | isDisbursal | Disbursal          |

  #PQM-34_CAS-197588
  #FeatureID-ACAUTOCAS-16525
  Scenario Outline: ACAUTOCAS-17949: Update an Application with Acknowledgement Number and without Mandate ID of <ProductType> at <FinalStage> for <Category>
    And user picks an application of "<ProductType>" product type as "<ApplicantType>" applicant at stage "<ApplicationStage>" for category "<Category>" with key "<Key>"
    And user reads data from the excel file "disbursal.xlsx" under sheet "repayment_instrument" and row 463
    When user hits Application Update Request with Required Instrument Details
    Then application creation.updation service should respond with "Please provide Mandate ID"
    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["Disbursal","Post Approval"]}
    # ${ApplicantType:["indiv"]}
    @Islamic @Release
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | FinalStage         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <ApplicationStage> |
     # ${ProductType:["IPF"]}
     # ${ApplicationStage:["Disbursal","Post Approval"]}
     # ${ApplicantType:["indiv"]}
    @Islamic @Release
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key         | FinalStage         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Bonds    |             | <ApplicationStage> |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Metals   |             | <ApplicationStage> |
      | <ProductType> | <ApplicantType> | Reconsideration    | Shares   | isDisbursal | Disbursal          |

  # FeatureID-ACAUTOCAS-16525
  Scenario Outline: ACAUTOCAS-17950: Update an Application without Acknowledgement Number and with Mandate ID of <ProductType> at <FinalStage> for <Category>
    And user picks an application of "<ProductType>" product type as "<ApplicantType>" applicant at stage "<ApplicationStage>" for category "<Category>" with key "<Key>"
    And user reads data from the excel file "disbursal.xlsx" under sheet "repayment_instrument" and row 464
    When user hits Application Update Request with Required Instrument Details
    Then application creation.updation service should respond with "Provide both umrn and umrn response"
    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["Disbursal","Post Approval"]}
    # ${ApplicantType:["indiv"]}
    @Islamic @Release
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | FinalStage         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <ApplicationStage> |
     # ${ProductType:["IPF"]}
     # ${ApplicationStage:["Disbursal","Post Approval"]}
     # ${ApplicantType:["indiv"]}
    @Islamic @Release
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key         | FinalStage         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Bonds    |             | <ApplicationStage> |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Metals   |             | <ApplicationStage> |
      | <ProductType> | <ApplicantType> | Reconsideration    | Shares   | isDisbursal | Disbursal          |

    # PQM-7_CAS-197588,10_CAS-197588
    #FeatureID-ACAUTOCAS-16525
  Scenario Outline: ACAUTOCAS-17951: Validate Activity for Mandate Registration Service at <FinalStage> of <ProductType> for <Category>
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user creates an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from web service
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user selects document tab
    And user reads data from the excel file "document.xlsx" under sheet "home" and row 505
    And user select the document
    And user selects document status as "Received"
    And user uploads the document
    And user submit the documents with wait
    And user selects document tab
    And user reads data from the excel file "document.xlsx" under sheet "home" and row 506
    And user select the document
    And user selects document status as "Received"
    And user uploads the document
    And user submit the documents with wait
    And user open repayment instrument details
    And user reads data from the excel file "disbursal.xlsx" under sheet "repayment_instrument" and row 458
    And user selects repayment instrument type as "<Repayment_Instrument>"
    And user selects applicant as "<Applicant_Type>"
    And user open repayment instrument fields to add details
    And user fills all details of repayment details for NACH
    When user save and create mandate
    And user navigates To Document Printing Tab
    And user open repayment instrument details
    Then In Activity Log Success Message should be there for Mandate Registration Service
    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["Disbursal","Post Approval"]}
    # ${ApplicantType:["indiv"]}
    @Islamic @Release
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | Repayment_Instrument | Applicant_Type    | FinalStage         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Direct Debit System  | Primary Applicant | <ApplicationStage> |

      # ${ProductType:["IPF"]}
      # ${ApplicationStage:["Disbursal","Post Approval"]}
      # ${Category:["Bonds","Metals"]}
      # ${ApplicantType:["indiv"]}
    @Islamic @Release
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | Key         | Repayment_Instrument | Applicant_Type    | FinalStage         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |             | Direct Debit System  | Primary Applicant | <ApplicationStage> |
      | IPF           | indiv           | Reconsideration    | Shares     | isDisbursal | Direct Debit System  | Primary Applicant | Disbursal          |

    # PQM-12_CAS-197588
    # FeatureID-ACAUTOCAS-16525
  Scenario Outline: ACAUTOCAS-17952: Validate Status Repayment Instrument at <FinalStage> of <ProductType> for <Category> after <serviceName> execution
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user open repayment instrument details
    And user reads data from the excel file "disbursal.xlsx" under sheet "repayment_instrument" and row 458
    And user selects repayment instrument type as "Direct Debit System"
    And user selects applicant as "Primary Applicant"
    And user open repayment instrument fields to add details
    And user fills all details of repayment details for NACH
    And user save and create mandate
    And user navigates To Document Printing Tab
    And user open repayment instrument details
    And user capture Acknowledgement Number in Context
    When user hit the Mandate Registration Service
    And user open repayment instrument details
    And user open Modal to view Mandate Details
    Then Status of Repayment Instrument should change to "Authorization Success"
    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["Disbursal","Post Approval"]}
    # ${ApplicantType:["indiv"]}
    @Islamic @Release
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | FinalStage         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <ApplicationStage> |
     # ${ProductType:["IPF"]}
     # ${ApplicationStage:["Disbursal","Post Approval"]}
     # ${ApplicantType:["indiv"]}
    @Islamic @Release
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key         | FinalStage         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Bonds    |             | <ApplicationStage> |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Metals   |             | <ApplicationStage> |
      | <ProductType> | <ApplicantType> | Reconsideration    | Shares   | isDisbursal | Disbursal          |

    # PQM-13_CAS-197588
    #FeatureID-ACAUTOCAS-16525
  Scenario Outline: ACAUTOCAS-17953: Validate Mandate ID in  Repayment Instrument at <FinalStage> of <ProductType> for <Category> after <serviceName> execution
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user open repayment instrument details
    And user reads data from the excel file "disbursal.xlsx" under sheet "repayment_instrument" and row 458
    And user selects repayment instrument type as "Direct Debit System"
    And user selects applicant as "Primary Applicant"
    And user open repayment instrument fields to add details
    And user fills all details of repayment details for NACH
    And user save and create mandate
    And user navigates To Document Printing Tab
    And user open repayment instrument details
    And user capture Acknowledgement Number in Context
    When user hit the Mandate Registration Service
    And user open repayment instrument details
    And user open Modal to view Mandate Details
    Then "Mandate ID" Should be there in Repayment Instrument Details
    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["Disbursal","Post Approval"]}
    # ${ApplicantType:["indiv"]}
    @Islamic @Release
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | FinalStage         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <ApplicationStage> |
     # ${ProductType:["IPF"]}
     # ${ApplicationStage:["Disbursal","Post Approval"]}
     # ${ApplicantType:["indiv"]}
    @Islamic @Release
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key         | FinalStage         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Bonds    |             | <ApplicationStage> |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Metals   |             | <ApplicationStage> |
      | <ProductType> | <ApplicantType> | Reconsideration    | Shares   | isDisbursal | Disbursal          |


    # PQM-14_CAS-197588
    #FeatureID-ACAUTOCAS-16525
  Scenario Outline: ACAUTOCAS-17954: Validate Activity Log of Repayment Instrument at <FinalStage> of <ProductType> for <Category> after <serviceName> execution
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user open repayment instrument details
    And user reads data from the excel file "disbursal.xlsx" under sheet "repayment_instrument" and row 460
    And user selects repayment instrument type as "Direct Debit System"
    And user selects applicant as "Primary Applicant"
    And user open repayment instrument fields to add details
    And user fills all details of repayment details for NACH
    And user save and create mandate
    And user navigates To Document Printing Tab
    And user open repayment instrument details
    And user capture Acknowledgement Number in Context
    When user hit the Mandate Registration Service
    And user open repayment instrument details
    Then In Activity Log Success Message should be there for Get Mandate ID Service
   # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["Disbursal","Post Approval"]}
    # ${ApplicantType:["indiv"]}
    @Islamic @Release
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | FinalStage         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <ApplicationStage> |
     # ${ProductType:["IPF"]}
     # ${ApplicationStage:["Disbursal","Post Approval"]}
     # ${ApplicantType:["indiv"]}
    @Islamic @Release
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key         | FinalStage         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Bonds    |             | <ApplicationStage> |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Metals   |             | <ApplicationStage> |
      | <ProductType> | <ApplicantType> | Reconsideration    | Shares   | isDisbursal | Disbursal          |

      #PQM-20_CAS-197588,17_CAS-197588,19_CAS-197588
     #FeatureID-ACAUTOCAS-16525
  @RunConfig-1 #config.cashfree.payout-true/false default- false
  Scenario Outline: ACAUTOCAS-17955: Verify Validate Repayment Account Button after adding Repayment Instrument of <ProductType> for <Category>
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user open repayment instrument details
    And user reads data from the excel file "disbursal.xlsx" under sheet "repayment_instrument" and row 458
    And user selects repayment instrument type as "Direct Debit System"
    And user selects applicant as "Primary Applicant"
    And user open repayment instrument fields to add details
    And user fills all details of repayment details for NACH
    And user saves repayment instrument details
    When user clicks on Validate Repayment Instrument Button
    Then Repayment Account Should be validated
    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["Disbursal","Post Approval"]}
    # ${ApplicantType:["indiv"]}
    @Islamic
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | FinalStage         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <ApplicationStage> |
     # ${ProductType:["IPF"]}
     # ${ApplicationStage:["Disbursal","Post Approval"]}
     # ${ApplicantType:["indiv"]}
    @Islamic
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key         | FinalStage         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Bonds    |             | <ApplicationStage> |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Metals   |             | <ApplicationStage> |
      | <ProductType> | <ApplicantType> | Reconsideration    | Shares   | isDisbursal | Disbursal          |


    #PQM-45_CAS-197588
    #FeatureID-ACAUTOCAS-16525
  Scenario Outline: ACAUTOCAS-17956: Multiple ENACH with different BP Type created and mandate initiated at <FinalStage> of <ProductType> for <Category>
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user selects document tab
    And user reads data from the excel file "document.xlsx" under sheet "home" and row 505
    And user select the document
    And user selects document status as "Received"
    And user uploads the document
    And user submit the documents with wait
    And user selects document tab
    And user reads data from the excel file "document.xlsx" under sheet "home" and row 506
    And user select the document
    And user selects document status as "Received"
    And user uploads the document
    And user submit the documents with wait
    And user open repayment instrument details
    And user reads data from the excel file "disbursal.xlsx" under sheet "repayment_instrument" and row 458
    And user selects repayment instrument type as "<Repayment_Instrument>"
    And user selects applicant as "Primary Applicant"
    And user open repayment instrument fields to add details
    And user fills all details of repayment details for NACH
    And user reads data from the excel file "disbursal.xlsx" under sheet "repayment_instrument" and row 461
    And user selects repayment instrument type as "<Repayment_Instrument>"
    And user selects applicant as "Manufacturer"
    And user open repayment instrument fields to add details
    When user fills all details of repayment details for NACH
    And user save and create mandate
    Then Validation should come for Manufacture BP Type
    @Islamic @Release
    Examples:
      | ProductType | ApplicantType | ApplicationStage | Category | Key | Repayment_Instrument | FinalStage    |
      | IAF         | indiv         | Disbursal        |          |     | Direct Debit System  | Disbursal     |
      | IAF         | indiv         | Post Approval    |          |     | Direct Debit System  | Post Approval |

    #PQM-46_CAS-197588
    #FeatureID-ACAUTOCAS-16525
  Scenario Outline: ACAUTOCAS-17957: Multiple ENACH with Same BP Type created and mandate initiated at <FinalStage> of <ProductType> for <Category>
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user selects document tab
    And user reads data from the excel file "document.xlsx" under sheet "home" and row 505
    And user select the document
    And user selects document status as "Received"
    And user uploads the document
    And user submit the documents with wait
    And user selects document tab
    And user reads data from the excel file "document.xlsx" under sheet "home" and row 506
    And user select the document
    And user selects document status as "Received"
    And user uploads the document
    And user submit the documents with wait
    And user open repayment instrument details
    And user reads data from the excel file "disbursal.xlsx" under sheet "repayment_instrument" and row 458
    And user selects repayment instrument type as "<Repayment_Instrument>"
    And user selects applicant as "Primary Applicant"
    And user open repayment instrument fields to add details
    And user fills all details of repayment details for NACH
    And user selects repayment instrument type as "<Repayment_Instrument>"
    And user selects applicant as "Primary Applicant"
    And user open repayment instrument fields to add details
    And user fills all details of repayment details for NACH
    When user save and create mandate
    Then User should be able to create mandate
    @Islamic @Release
    Examples:
      | ProductType | ApplicantType | ApplicationStage | Category | Key | Repayment_Instrument | FinalStage    |
      | IAF         | indiv         | Disbursal        |          |     | Direct Debit System  | Disbursal     |
      | IAF         | indiv         | Post Approval    |          |     | Direct Debit System  | Post Approval |


    #PQM-47_CAS-197588
    #FeatureID-ACAUTOCAS-16525
  Scenario Outline: ACAUTOCAS-17958: Create Repayment Instrument with Mandate Amount zero at <FinalStage> of <ProductType> for <Category>
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user selects document tab
    And user reads data from the excel file "document.xlsx" under sheet "home" and row 505
    And user select the document
    And user selects document status as "Received"
    And user uploads the document
    And user submit the documents with wait
    And user selects document tab
    And user reads data from the excel file "document.xlsx" under sheet "home" and row 506
    And user select the document
    And user selects document status as "Received"
    And user uploads the document
    And user submit the documents with wait
    And user open repayment instrument details
    And user reads data from the excel file "disbursal.xlsx" under sheet "repayment_instrument" and row 459
    And user selects repayment instrument type as "Direct Debit System"
    And user selects applicant as "Primary Applicant"
    And user open repayment instrument fields to add details
    When user fills all details of repayment details for NACH for error validation
    Then user should not be able to create mandate
    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["Disbursal","Post Approval"]}
    # ${ApplicantType:["indiv"]}
    @Islamic @Release
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | FinalStage         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <ApplicationStage> |
     # ${ProductType:["IPF"]}
     # ${ApplicationStage:["Disbursal","Post Approval"]}
     # ${ApplicantType:["indiv"]}
    @Islamic @Release
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key         | FinalStage         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Bonds    |             | <ApplicationStage> |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Metals   |             | <ApplicationStage> |
      | <ProductType> | <ApplicantType> | Reconsideration    | Shares   | isDisbursal | Disbursal          |



  #PQM-6_CAS-193136,24_CAS-193136,1_CAS-193154
  #FeatureID-ACAUTOCAS-16525
  Scenario Outline: ACAUTOCAS-17959: Verify Mandate ID in Repayment Instrument Details at <FinalStage> of <ProductType> for <Category>
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user open repayment instrument details
    And user reads data from the excel file "disbursal.xlsx" under sheet "repayment_instrument" and row 458
    And user selects repayment instrument type as "Direct Debit System"
    And user selects applicant as "Primary Applicant"
    And user open repayment instrument fields to add details
    And user fills all details of repayment details for NACH
    And user save and create mandate
    And user navigates To Document Printing Tab
    And user open repayment instrument details
    And user capture Acknowledgement Number in Context
    When user hit the Mandate Registration Service
    And user open Modal to view Mandate Details
    Then "Mandate ID" Should be there in Repayment Instrument Details
    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["Disbursal","Post Approval"]}
    # ${ApplicantType:["indiv"]}
    @Islamic @Release
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | FinalStage         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <ApplicationStage> |
     # ${ProductType:["IPF"]}
     # ${ApplicationStage:["Disbursal","Post Approval"]}
     # ${ApplicantType:["indiv"]}
    @Islamic @Release
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key         | FinalStage         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Bonds    |             | <ApplicationStage> |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Metals   |             | <ApplicationStage> |
      | <ProductType> | <ApplicantType> | Reconsideration    | Shares   | isDisbursal | Disbursal          |

  #PQM-7_CAS-193136
  #FeatureID-ACAUTOCAS-16525
  Scenario Outline: ACAUTOCAS-17960: Verify Validation Rule of Document at <FinalStage> of <ProductType> for <Category>
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user open repayment instrument details
    And user reads data from the excel file "disbursal.xlsx" under sheet "repayment_instrument" and row 458
    And user selects repayment instrument type as "Direct Debit System"
    And user selects applicant as "Primary Applicant"
    And user open repayment instrument fields to add details
    And user fills all details of repayment details for NACH
    When user save and create mandate
    Then Validation should come for the Documents
    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["Disbursal","Post Approval"]}
    # ${ApplicantType:["indiv"]}
    @Islamic @Release
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | FinalStage         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <ApplicationStage> |
     # ${ProductType:["IPF"]}
     # ${ApplicationStage:["Disbursal","Post Approval"]}
     # ${ApplicantType:["indiv"]}
    @Islamic @Release
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key         | FinalStage         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Bonds    |             | <ApplicationStage> |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Metals   |             | <ApplicationStage> |
      | <ProductType> | <ApplicantType> | Reconsideration    | Shares   | isDisbursal | Disbursal          |


    #PQM-13_CAS-193136
  #FeatureID-ACAUTOCAS-16525
  Scenario Outline: ACAUTOCAS-17961: Verify Document Rule for Create Mandate at <FinalStage> of <ProductType> for <Category>
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user selects document tab
    And user reads data from the excel file "document.xlsx" under sheet "home" and row 505
    And user select the document
    And user selects document status as "Received"
    And user uploads the document
    And user submit the documents with wait
    And user open repayment instrument details
    And user reads data from the excel file "disbursal.xlsx" under sheet "repayment_instrument" and row 458
    And user selects repayment instrument type as "Direct Debit System"
    And user selects applicant as "Primary Applicant"
    And user open repayment instrument fields to add details
    And user fills all details of repayment details for NACH
    When user save and create mandate
    Then Validation should come for remaining document only
    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["Disbursal","Post Approval"]}
    # ${ApplicantType:["indiv"]}
    @Islamic @Release
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | FinalStage         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <ApplicationStage> |
     # ${ProductType:["IPF"]}
     # ${ApplicationStage:["Disbursal","Post Approval"]}
     # ${ApplicantType:["indiv"]}
    @Islamic @Release
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key         | FinalStage         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Bonds    |             | <ApplicationStage> |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Metals   |             | <ApplicationStage> |
      | <ProductType> | <ApplicantType> | Reconsideration    | Shares   | isDisbursal | Disbursal          |

    #PQM-16_CAS-193136
  #FeatureID-ACAUTOCAS-16525
  Scenario Outline: ACAUTOCAS-17962: Verify Send Back Application and Mandate Cancellation at <FinalStage> of <ProductType> for <Category>
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user selects document tab
    And user reads data from the excel file "document.xlsx" under sheet "home" and row 505
    And user select the document
    And user selects document status as "Received"
    And user uploads the document
    And user submit the documents with wait
    And user selects document tab
    And user reads data from the excel file "document.xlsx" under sheet "home" and row 506
    And user select the document
    And user selects document status as "Received"
    And user uploads the document
    And user submit the documents with wait
    And user open repayment instrument details
    And user reads data from the excel file "disbursal.xlsx" under sheet "repayment_instrument" and row 458
    And user selects repayment instrument type as "Direct Debit System"
    And user selects applicant as "Primary Applicant"
    And user open repayment instrument fields to add details
    And user fills all details of repayment details for NACH
    And user save and create mandate
    And user navigates To Document Printing Tab
    And user reads data from the excel file "more_actions.xlsx" under sheet "send_back" and row 9
    When User clicks on More Actions button
    And user click on send back button
    And user fills details in send back Modal
    And user clicks on send back Application button
    Then Dialogue box must come stating Registered Mandates will be cancelled on sendback
   # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["Disbursal","Post Approval"]}
    # ${ApplicantType:["indiv"]}
    @Islamic @Release
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | FinalStage         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <ApplicationStage> |
     # ${ProductType:["IPF"]}
     # ${ApplicationStage:["Disbursal","Post Approval"]}
     # ${ApplicantType:["indiv"]}
    @Islamic @Release
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key         | FinalStage         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Bonds    |             | <ApplicationStage> |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Metals   |             | <ApplicationStage> |
      | <ProductType> | <ApplicantType> | Reconsideration    | Shares   | isDisbursal | Disbursal          |


    #PQM-17_CAS-193136,36_CAS-193136
  #FeatureID-ACAUTOCAS-16525
  Scenario Outline: ACAUTOCAS-17962: Verify Send Back Application and Mandate Cancellation at <FinalStage> of <ProductType> for <Category>
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user selects document tab
    And user reads data from the excel file "document.xlsx" under sheet "home" and row 505
    And user select the document
    And user selects document status as "Received"
    And user uploads the document
    And user submit the documents with wait
    And user selects document tab
    And user reads data from the excel file "document.xlsx" under sheet "home" and row 506
    And user select the document
    And user selects document status as "Received"
    And user uploads the document
    And user submit the documents with wait
    And user open repayment instrument details
    And user reads data from the excel file "disbursal.xlsx" under sheet "repayment_instrument" and row 458
    And user selects repayment instrument type as "Direct Debit System"
    And user selects applicant as "Primary Applicant"
    And user open repayment instrument fields to add details
    And user fills all details of repayment details for NACH
    And user save and create mandate
    And user navigates To Document Printing Tab
    And user open repayment instrument details
    And user capture Acknowledgement Number in Context
    And user hit the Mandate Registration Service
    And user reads data from the excel file "more_actions.xlsx" under sheet "send_back" and row 9
    When user send back above application to immediate preceding stage
    Then Application should be sent to "Credit Approval"
    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["Disbursal","Post Approval"]}
    # ${ApplicantType:["indiv"]}
    @Islamic @Release
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | FinalStage         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <ApplicationStage> |
     # ${ProductType:["IPF"]}
     # ${ApplicationStage:["Disbursal","Post Approval"]}
     # ${ApplicantType:["indiv"]}
    @Islamic @Release
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key         | FinalStage         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Bonds    |             | <ApplicationStage> |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Metals   |             | <ApplicationStage> |
      | <ProductType> | <ApplicantType> | Reconsideration    | Shares   | isDisbursal | Disbursal          |

    #PQM-30_CAS-193136
  #FeatureID-ACAUTOCAS-16525
  Scenario Outline: ACAUTOCAS-17963: Upload Maintained Documents for Cancellation  at <FinalStage> of <ProductType> for <Category>
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user selects document tab
    And user reads data from the excel file "document.xlsx" under sheet "home" and row 508
    And user select the document
    And user selects document status as "Received"
    And user uploads the document
    And user submit the documents with wait
    And user selects document tab
    And user reads data from the excel file "document.xlsx" under sheet "home" and row 509
    And user select the document
    And user selects document status as "Received"
    And user uploads the document
    When user submit the document
    Then Document Should saved successfully
    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["Disbursal","Post Approval"]}
    # ${ApplicantType:["indiv"]}
    @Islamic @Release
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | FinalStage         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <ApplicationStage> |
     # ${ProductType:["IPF"]}
     # ${ApplicationStage:["Disbursal","Post Approval"]}
     # ${ApplicantType:["indiv"]}
    @Islamic @Release
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key         | FinalStage         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Bonds    |             | <ApplicationStage> |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Metals   |             | <ApplicationStage> |
      | <ProductType> | <ApplicantType> | Reconsideration    | Shares   | isDisbursal | Disbursal          |


     #PQM-14_CAS-193136,32_CAS-193136
  #FeatureID-ACAUTOCAS-16525
  Scenario Outline: ACAUTOCAS-17964: Add Additional Document for Mandate Cancellation at <FinalStage> of <ProductType> for <Category>
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "document.xlsx" under sheet "home" and row 510
    And user selects document tab
    And user add additional type document
    And user selects document tab
    And user select the document
    And user selects document status as "Received"
    When user uploads the document
    And user submit the document
    Then Document Should saved successfully
     # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["Disbursal","Post Approval"]}
    # ${ApplicantType:["indiv"]}
    @Islamic @Release
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | FinalStage         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <ApplicationStage> |
     # ${ProductType:["IPF"]}
     # ${ApplicationStage:["Disbursal","Post Approval"]}
     # ${ApplicantType:["indiv"]}
    @Islamic @Release
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key         | FinalStage         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Bonds    |             | <ApplicationStage> |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Metals   |             | <ApplicationStage> |
      | <ProductType> | <ApplicantType> | Reconsideration    | Shares   | isDisbursal | Disbursal          |

  #PQM-1_CAS-193154
  #FeatureID-ACAUTOCAS-16525
  Scenario Outline: ACAUTOCAS-17965: Save a Repayment Instrument at <FinalStage> of <ProductType> for <Category>
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user selects document tab
    And user reads data from the excel file "document.xlsx" under sheet "home" and row 505
    And user select the document
    And user selects document status as "Received"
    And user uploads the document
    And user submit the documents with wait
    And user selects document tab
    And user reads data from the excel file "document.xlsx" under sheet "home" and row 506
    And user select the document
    And user selects document status as "Received"
    And user uploads the document
    And user submit the documents with wait
    And user open repayment instrument details
    And user reads data from the excel file "disbursal.xlsx" under sheet "repayment_instrument" and row 458
    And user selects repayment instrument type as "Direct Debit System"
    And user selects applicant as "Primary Applicant"
    And user open repayment instrument fields to add details
    When user fills all details of repayment details for NACH
    Then user should be able to save Repayment Instrument
    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["Disbursal","Post Approval"]}
    # ${ApplicantType:["indiv"]}
    @Islamic @Release
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | FinalStage         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <ApplicationStage> |
     # ${ProductType:["IPF"]}
     # ${ApplicationStage:["Disbursal","Post Approval"]}
     # ${ApplicantType:["indiv"]}
    @Islamic @Release
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key         | FinalStage         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Bonds    |             | <ApplicationStage> |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Metals   |             | <ApplicationStage> |
      | <ProductType> | <ApplicantType> | Reconsideration    | Shares   | isDisbursal | Disbursal          |

  #PQM-21_CAS-197588,2_CAS-193154
  #FeatureID-ACAUTOCAS-16525
  Scenario Outline: ACAUTOCAS-17966: Validate status of Repayment Instrument at <FinalStage> of <ProductType> for <Category>
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user selects document tab
    And user reads data from the excel file "document.xlsx" under sheet "home" and row 505
    And user select the document
    And user selects document status as "Received"
    And user uploads the document
    And user submit the documents with wait
    And user selects document tab
    And user reads data from the excel file "document.xlsx" under sheet "home" and row 506
    And user select the document
    And user selects document status as "Received"
    And user uploads the document
    And user submit the documents with wait
    And user open repayment instrument details
    And user reads data from the excel file "disbursal.xlsx" under sheet "repayment_instrument" and row 458
    And user selects repayment instrument type as "Direct Debit System"
    And user selects applicant as "Primary Applicant"
    And user open repayment instrument fields to add details
    And user fills all details of repayment details for NACH
    When user save and create mandate
    Then Status of Repayment Instrument should change to "Initiated"
    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["Disbursal","Post Approval"]}
    # ${ApplicantType:["indiv"]}
    @Islamic @Release
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | FinalStage         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <ApplicationStage> |
     # ${ProductType:["IPF"]}
     # ${ApplicationStage:["Disbursal","Post Approval"]}
     # ${ApplicantType:["indiv"]}
    @Islamic @Release
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key         | FinalStage         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Bonds    |             | <ApplicationStage> |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Metals   |             | <ApplicationStage> |
      | <ProductType> | <ApplicantType> | Reconsideration    | Shares   | isDisbursal | Disbursal          |

    #PQM-38_CAS-197588,39_CAS-197588,40_CAS-197588,41_CAS-197588,42_CAS-197588,43_CAS-197588,
  #FeatureID-ACAUTOCAS-16525
  Scenario Outline: ACAUTOCAS-17967: Search mandate id and acknowledgement number in <ApiName>
    And user logged in "APIcenter" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user clicks on Documentation tab
    When user searches "<ApiCode>" in documentation and opens
    Then "<ApiName>" should have "<fieldName>"
    @Islamic @Release
    Examples:
      | ApiCode     | ApiName              | fieldName |
      | CAS_Appl_01 | Application Creation | mandateId |
      | CAS_Appl_02 | Application Update   | mandateId |
      | CAS_Disb_01 | disbursalService     | mandateId |
      | CAS_Disb_15 | getMandateIdService  | mandateId |
      | CAS_Appl_01 | Application Creation | umrnId    |
      | CAS_Appl_02 | Application Update   | umrnId    |
      | CAS_Disb_01 | disbursalService     | umrnId    |
      | CAS_Disb_15 | getMandateIdService  | umrnId    |

   #FeatureID-ACAUTOCAS-16525
  Scenario Outline: ACAUTOCAS-17968: Validate nature of <fieldName> as <fieldNature> of Repayment Instrument at <FinalStage> of <ProductType> for <Category>
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user open repayment instrument details
    And user reads data from the excel file "disbursal.xlsx" under sheet "repayment_instrument" and row 458
    And user selects repayment instrument type as "Direct Debit System"
    And user selects applicant as "Primary Applicant"
    When user open repayment instrument fields to add details
    Then "<fieldName>" should be "<fieldNature>" in Repayment Instrument Details
    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["Disbursal","Post Approval"]}
    # ${ApplicantType:["indiv"]}
    @Islamic @Release
    Examples:
      | fieldName                        | fieldNature   | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | FinalStage         |
      | Registration Type                | dropdown      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <ApplicationStage> |
      | Repayment Instrument Type        | input         | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <ApplicationStage> |
      | No. of Installments              | input         | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <ApplicationStage> |
      | Mandate Type                     | dropdown      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <ApplicationStage> |
      | Mandate Nature                   | dropdown      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <ApplicationStage> |
      | Custodian                        | dropdown      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <ApplicationStage> |
      | Mandate ID                       | input         | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <ApplicationStage> |
      | Acknowledgment Number            | textarea      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <ApplicationStage> |
      | IFSC Code                        | auto complete | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <ApplicationStage> |
      | Bank Branch Identifier Code NACH | auto complete | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <ApplicationStage> |
      | Banking Location                 | input         | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <ApplicationStage> |
      | Bank Name                        | input         | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <ApplicationStage> |
      | BAR Code                         | input         | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <ApplicationStage> |
      | Account Type                     | dropdown      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <ApplicationStage> |
      | Account name                     | input         | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <ApplicationStage> |
      | Account Number                   | auto complete | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <ApplicationStage> |
      | IBAN                             | input         | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <ApplicationStage> |
      | NRE/NRO Account                  | dropdown      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <ApplicationStage> |
      | Repayment Towards                | dropdown      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <ApplicationStage> |
      | Repayment Contribution (%)       | input         | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <ApplicationStage> |
      | Effective Date                   | input         | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <ApplicationStage> |
      | Expiry Date                      | input         | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <ApplicationStage> |
      | Mandate CAP Amount               | input         | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <ApplicationStage> |
      | Max EMI Amount                   | input         | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <ApplicationStage> |
      | Next Due Date                    | input         | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <ApplicationStage> |
      | Next EMI Amount                  | input         | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <ApplicationStage> |
      | Mandate Verification Status      | dropdown      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <ApplicationStage> |
      | Verified BY                      | dropdown      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <ApplicationStage> |
      | E-Mandate Banking Type           | dropdown      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <ApplicationStage> |
      | Status                           | dropdown      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <ApplicationStage> |
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["Disbursal","Post Approval"]}
    # ${ApplicantType:["indiv"]}
    # ${Category:["Bonds","Metals"]}
    @Islamic @Release
    Examples:
      | fieldName                        | fieldNature   | ProductType   | ApplicantType   | ApplicationStage   | Category   | Key             | FinalStage         |
      | Registration Type                | dropdown      | <ProductType> | <ApplicantType> | Reconsideration    | Shares     | isDisbursal     | Disbursal          |
      | Repayment Instrument Type        | input         | <ProductType> | <ApplicantType> | Reconsideration    | Shares     | isDisbursal     | Disbursal          |
      | No. of Installments              | input         | <ProductType> | <ApplicantType> | Reconsideration    | Shares     | isDisbursal     | Disbursal          |
      | Mandate Type                     | dropdown      | <ProductType> | <ApplicantType> | Reconsideration    | Shares     | isDisbursal     | Disbursal          |
      | Mandate Nature                   | dropdown      | <ProductType> | <ApplicantType> | Reconsideration    | Shares     | isDisbursal     | Disbursal          |
      | Custodian                        | dropdown      | <ProductType> | <ApplicantType> | Reconsideration    | Shares     | isDisbursal     | Disbursal          |
      | Mandate ID                       | input         | <ProductType> | <ApplicantType> | Reconsideration    | Shares     | isDisbursal     | Disbursal          |
      | Acknowledgment Number            | textarea      | <ProductType> | <ApplicantType> | Reconsideration    | Shares     | isDisbursal     | Disbursal          |
      | IFSC Code                        | auto complete | <ProductType> | <ApplicantType> | Reconsideration    | Shares     | isDisbursal     | Disbursal          |
      | Bank Branch Identifier Code NACH | auto complete | <ProductType> | <ApplicantType> | Reconsideration    | Shares     | isDisbursal     | Disbursal          |
      | Banking Location                 | input         | <ProductType> | <ApplicantType> | Reconsideration    | Shares     | isDisbursal     | Disbursal          |
      | Bank Name                        | input         | <ProductType> | <ApplicantType> | Reconsideration    | Shares     | isDisbursal     | Disbursal          |
      | BAR Code                         | input         | <ProductType> | <ApplicantType> | Reconsideration    | Shares     | isDisbursal     | Disbursal          |
      | Account Type                     | dropdown      | <ProductType> | <ApplicantType> | Reconsideration    | Shares     | isDisbursal     | Disbursal          |
      | Account name                     | input         | <ProductType> | <ApplicantType> | Reconsideration    | Shares     | isDisbursal     | Disbursal          |
      | Account Number                   | auto complete | <ProductType> | <ApplicantType> | Reconsideration    | Shares     | isDisbursal     | Disbursal          |
      | IBAN                             | input         | <ProductType> | <ApplicantType> | Reconsideration    | Shares     | isDisbursal     | Disbursal          |
      | NRE/NRO Account                  | dropdown      | <ProductType> | <ApplicantType> | Reconsideration    | Shares     | isDisbursal     | Disbursal          |
      | Repayment Towards                | dropdown      | <ProductType> | <ApplicantType> | Reconsideration    | Shares     | isDisbursal     | Disbursal          |
      | Repayment Contribution (%)       | input         | <ProductType> | <ApplicantType> | Reconsideration    | Shares     | isDisbursal     | Disbursal          |
      | Effective Date                   | input         | <ProductType> | <ApplicantType> | Reconsideration    | Shares     | isDisbursal     | Disbursal          |
      | Expiry Date                      | input         | <ProductType> | <ApplicantType> | Reconsideration    | Shares     | isDisbursal     | Disbursal          |
      | Mandate CAP Amount               | input         | <ProductType> | <ApplicantType> | Reconsideration    | Shares     | isDisbursal     | Disbursal          |
      | Max EMI Amount                   | input         | <ProductType> | <ApplicantType> | Reconsideration    | Shares     | isDisbursal     | Disbursal          |
      | Next Due Date                    | input         | <ProductType> | <ApplicantType> | Reconsideration    | Shares     | isDisbursal     | Disbursal          |
      | Next EMI Amount                  | input         | <ProductType> | <ApplicantType> | Reconsideration    | Shares     | isDisbursal     | Disbursal          |
      | Mandate Verification Status      | dropdown      | <ProductType> | <ApplicantType> | Reconsideration    | Shares     | isDisbursal     | Disbursal          |
      | Verified BY                      | dropdown      | <ProductType> | <ApplicantType> | Reconsideration    | Shares     | isDisbursal     | Disbursal          |
      | E-Mandate Banking Type           | dropdown      | <ProductType> | <ApplicantType> | Reconsideration    | Shares     | isDisbursal     | Disbursal          |
      | Status                           | dropdown      | <ProductType> | <ApplicantType> | Reconsideration    | Shares     | isDisbursal     | Disbursal          |
      | Registration Type                | dropdown      | <ProductType> | <ApplicantType> | Reconsideration    | Shares     | isPost Approval | Post Approval      |
      | Repayment Instrument Type        | input         | <ProductType> | <ApplicantType> | Reconsideration    | Shares     | isPost Approval | Post Approval      |
      | No. of Installments              | input         | <ProductType> | <ApplicantType> | Reconsideration    | Shares     | isPost Approval | Post Approval      |
      | Mandate Type                     | dropdown      | <ProductType> | <ApplicantType> | Reconsideration    | Shares     | isPost Approval | Post Approval      |
      | Mandate Nature                   | dropdown      | <ProductType> | <ApplicantType> | Reconsideration    | Shares     | isPost Approval | Post Approval      |
      | Custodian                        | dropdown      | <ProductType> | <ApplicantType> | Reconsideration    | Shares     | isPost Approval | Post Approval      |
      | Mandate ID                       | input         | <ProductType> | <ApplicantType> | Reconsideration    | Shares     | isPost Approval | Post Approval      |
      | Acknowledgment Number            | input         | <ProductType> | <ApplicantType> | Reconsideration    | Shares     | isPost Approval | Post Approval      |
      | IFSC Code                        | auto complete | <ProductType> | <ApplicantType> | Reconsideration    | Shares     | isPost Approval | Post Approval      |
      | Bank Branch Identifier Code NACH | auto complete | <ProductType> | <ApplicantType> | Reconsideration    | Shares     | isPost Approval | Post Approval      |
      | Banking Location                 | input         | <ProductType> | <ApplicantType> | Reconsideration    | Shares     | isPost Approval | Post Approval      |
      | Bank Name                        | input         | <ProductType> | <ApplicantType> | Reconsideration    | Shares     | isPost Approval | Post Approval      |
      | BAR Code                         | input         | <ProductType> | <ApplicantType> | Reconsideration    | Shares     | isPost Approval | Post Approval      |
      | Account Type                     | dropdown      | <ProductType> | <ApplicantType> | Reconsideration    | Shares     | isPost Approval | Post Approval      |
      | Account name                     | input         | <ProductType> | <ApplicantType> | Reconsideration    | Shares     | isPost Approval | Post Approval      |
      | Account Number                   | auto complete | <ProductType> | <ApplicantType> | Reconsideration    | Shares     | isPost Approval | Post Approval      |
      | IBAN                             | input         | <ProductType> | <ApplicantType> | Reconsideration    | Shares     | isPost Approval | Post Approval      |
      | NRE/NRO Account                  | dropdown      | <ProductType> | <ApplicantType> | Reconsideration    | Shares     | isPost Approval | Post Approval      |
      | Repayment Towards                | dropdown      | <ProductType> | <ApplicantType> | Reconsideration    | Shares     | isPost Approval | Post Approval      |
      | Repayment Contribution (%)       | input         | <ProductType> | <ApplicantType> | Reconsideration    | Shares     | isPost Approval | Post Approval      |
      | Effective Date                   | input         | <ProductType> | <ApplicantType> | Reconsideration    | Shares     | isPost Approval | Post Approval      |
      | Expiry Date                      | input         | <ProductType> | <ApplicantType> | Reconsideration    | Shares     | isPost Approval | Post Approval      |
      | Mandate CAP Amount               | input         | <ProductType> | <ApplicantType> | Reconsideration    | Shares     | isPost Approval | Post Approval      |
      | Max EMI Amount                   | input         | <ProductType> | <ApplicantType> | Reconsideration    | Shares     | isPost Approval | Post Approval      |
      | Next Due Date                    | input         | <ProductType> | <ApplicantType> | Reconsideration    | Shares     | isPost Approval | Post Approval      |
      | Next EMI Amount                  | input         | <ProductType> | <ApplicantType> | Reconsideration    | Shares     | isPost Approval | Post Approval      |
      | Mandate Verification Status      | dropdown      | <ProductType> | <ApplicantType> | Reconsideration    | Shares     | isPost Approval | Post Approval      |
      | Verified BY                      | dropdown      | <ProductType> | <ApplicantType> | Reconsideration    | Shares     | isPost Approval | Post Approval      |
      | E-Mandate Banking Type           | dropdown      | <ProductType> | <ApplicantType> | Reconsideration    | Shares     | isPost Approval | Post Approval      |
      | Status                           | dropdown      | <ProductType> | <ApplicantType> | Reconsideration    | Shares     | isPost Approval | Post Approval      |
      | Registration Type                | dropdown      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |                 | <ApplicationStage> |
      | Repayment Instrument Type        | input         | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |                 | <ApplicationStage> |
      | No. of Installments              | input         | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |                 | <ApplicationStage> |
      | Mandate Type                     | dropdown      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |                 | <ApplicationStage> |
      | Mandate Nature                   | dropdown      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |                 | <ApplicationStage> |
      | Custodian                        | dropdown      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |                 | <ApplicationStage> |
      | Mandate ID                       | input         | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |                 | <ApplicationStage> |
      | Acknowledgment Number            | textarea      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |                 | <ApplicationStage> |
      | IFSC Code                        | auto complete | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |                 | <ApplicationStage> |
      | Bank Branch Identifier Code NACH | auto complete | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |                 | <ApplicationStage> |
      | Banking Location                 | input         | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |                 | <ApplicationStage> |
      | Bank Name                        | input         | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |                 | <ApplicationStage> |
      | BAR Code                         | input         | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |                 | <ApplicationStage> |
      | Account Type                     | dropdown      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |                 | <ApplicationStage> |
      | Account Name                     | input         | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |                 | <ApplicationStage> |
      | Account Number                   | auto complete | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |                 | <ApplicationStage> |
      | IBAN                             | input         | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |                 | <ApplicationStage> |
      | NRE/NRO Account                  | dropdown      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |                 | <ApplicationStage> |
      | Repayment Towards                | dropdown      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |                 | <ApplicationStage> |
      | Repayment Contribution (%)       | input         | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |                 | <ApplicationStage> |
      | Effective Date                   | input         | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |                 | <ApplicationStage> |
      | Expiry Date                      | input         | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |                 | <ApplicationStage> |
      | Mandate CAP Amount               | input         | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |                 | <ApplicationStage> |
      | Max EMI Amount                   | input         | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |                 | <ApplicationStage> |
      | Next Due Date                    | input         | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |                 | <ApplicationStage> |
      | Next EMI Amount                  | input         | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |                 | <ApplicationStage> |
      | Mandate Verification Status      | dropdown      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |                 | <ApplicationStage> |
      | Verified BY                      | dropdown      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |                 | <ApplicationStage> |
      | E-Mandate Banking Type           | dropdown      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |                 | <ApplicationStage> |

   #FeatureID-ACAUTOCAS-16525
  Scenario Outline: ACAUTOCAS-17969: Validate ToolTip Functionality of <fieldName> of Repayment Instrument at <FinalStage> of <ProductType> for <Category>
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user open repayment instrument details
    And user reads data from the excel file "disbursal.xlsx" under sheet "repayment_instrument" and row 458
    And user selects repayment instrument type as "Direct Debit System"
    And user selects applicant as "Primary Applicant"
    And user open repayment instrument fields to add details
    And user select registration type as "Electronic"
    When user hover on "<fieldName>" in Repayment Instrument Details
    Then tooltip should be displayed for "<fieldName>" in Repayment Instrument Details
    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["Disbursal","Post Approval"]}
    # ${ApplicantType:["indiv"]}
    @Islamic @Release
    Examples:
      | fieldName                   | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | FinalStage         |
      | Registration Type           | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <ApplicationStage> |
      | Mandate Nature              | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <ApplicationStage> |
      | Custodian                   | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <ApplicationStage> |
      | Acknowledgment Number       | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <ApplicationStage> |
      | IFSC Code                   | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <ApplicationStage> |
      | Bank Branch Identifier Code | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <ApplicationStage> |
      | BAR Code                    | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <ApplicationStage> |
      | Account Type                | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <ApplicationStage> |
      | Account name                | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <ApplicationStage> |
      | Account Number              | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <ApplicationStage> |
      | IBAN                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <ApplicationStage> |
      | Repayment Towards           | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <ApplicationStage> |
      | Repayment Contribution      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <ApplicationStage> |
      | Mandate Cap Amount          | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <ApplicationStage> |
      | Max EMI Amount              | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <ApplicationStage> |
      | Next EMI Amount             | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <ApplicationStage> |
      | Mandate Verification Status | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <ApplicationStage> |
      | Verified By                 | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <ApplicationStage> |
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["Disbursal","Post Approval"]}
    # ${ApplicantType:["indiv"]}
    # ${Category:["Bonds","Metals"]}
    @Islamic @Release
    Examples:
      | fieldName                   | ProductType   | ApplicantType   | ApplicationStage   | Category   | Key             | FinalStage         |
      | Registration Type           | <ProductType> | <ApplicantType> | Reconsideration    | Shares     | isDisbursal     | Disbursal          |
      | Mandate Nature              | <ProductType> | <ApplicantType> | Reconsideration    | Shares     | isDisbursal     | Disbursal          |
      | Custodian                   | <ProductType> | <ApplicantType> | Reconsideration    | Shares     | isDisbursal     | Disbursal          |
      | Acknowledgment Number       | <ProductType> | <ApplicantType> | Reconsideration    | Shares     | isDisbursal     | Disbursal          |
      | IFSC Code                   | <ProductType> | <ApplicantType> | Reconsideration    | Shares     | isDisbursal     | Disbursal          |
      | Bank Branch Identifier Code | <ProductType> | <ApplicantType> | Reconsideration    | Shares     | isDisbursal     | Disbursal          |
      | BAR Code                    | <ProductType> | <ApplicantType> | Reconsideration    | Shares     | isDisbursal     | Disbursal          |
      | Account Type                | <ProductType> | <ApplicantType> | Reconsideration    | Shares     | isDisbursal     | Disbursal          |
      | Account name                | <ProductType> | <ApplicantType> | Reconsideration    | Shares     | isDisbursal     | Disbursal          |
      | Account Number              | <ProductType> | <ApplicantType> | Reconsideration    | Shares     | isDisbursal     | Disbursal          |
      | IBAN                        | <ProductType> | <ApplicantType> | Reconsideration    | Shares     | isDisbursal     | Disbursal          |
      | Repayment Towards           | <ProductType> | <ApplicantType> | Reconsideration    | Shares     | isDisbursal     | Disbursal          |
      | Repayment Contribution      | <ProductType> | <ApplicantType> | Reconsideration    | Shares     | isDisbursal     | Disbursal          |
      | Mandate Cap Amount          | <ProductType> | <ApplicantType> | Reconsideration    | Shares     | isDisbursal     | Disbursal          |
      | Max EMI Amount              | <ProductType> | <ApplicantType> | Reconsideration    | Shares     | isDisbursal     | Disbursal          |
      | Next EMI Amount             | <ProductType> | <ApplicantType> | Reconsideration    | Shares     | isDisbursal     | Disbursal          |
      | Mandate Verification Status | <ProductType> | <ApplicantType> | Reconsideration    | Shares     | isDisbursal     | Disbursal          |
      | Verified By                 | <ProductType> | <ApplicantType> | Reconsideration    | Shares     | isDisbursal     | Disbursal          |
      | Registration Type           | <ProductType> | <ApplicantType> | Reconsideration    | Shares     | isPost Approval | Post Approval      |
      | Mandate Nature              | <ProductType> | <ApplicantType> | Reconsideration    | Shares     | isPost Approval | Post Approval      |
      | Custodian                   | <ProductType> | <ApplicantType> | Reconsideration    | Shares     | isPost Approval | Post Approval      |
      | Acknowledgment Number       | <ProductType> | <ApplicantType> | Reconsideration    | Shares     | isPost Approval | Post Approval      |
      | IFSC Code                   | <ProductType> | <ApplicantType> | Reconsideration    | Shares     | isPost Approval | Post Approval      |
      | Bank Branch Identifier Code | <ProductType> | <ApplicantType> | Reconsideration    | Shares     | isPost Approval | Post Approval      |
      | BAR Code                    | <ProductType> | <ApplicantType> | Reconsideration    | Shares     | isPost Approval | Post Approval      |
      | Account Type                | <ProductType> | <ApplicantType> | Reconsideration    | Shares     | isPost Approval | Post Approval      |
      | Account name                | <ProductType> | <ApplicantType> | Reconsideration    | Shares     | isPost Approval | Post Approval      |
      | Account Number              | <ProductType> | <ApplicantType> | Reconsideration    | Shares     | isPost Approval | Post Approval      |
      | IBAN                        | <ProductType> | <ApplicantType> | Reconsideration    | Shares     | isPost Approval | Post Approval      |
      | Repayment Towards           | <ProductType> | <ApplicantType> | Reconsideration    | Shares     | isPost Approval | Post Approval      |
      | Repayment Contribution      | <ProductType> | <ApplicantType> | Reconsideration    | Shares     | isPost Approval | Post Approval      |
      | Mandate Cap Amount          | <ProductType> | <ApplicantType> | Reconsideration    | Shares     | isPost Approval | Post Approval      |
      | Max EMI Amount              | <ProductType> | <ApplicantType> | Reconsideration    | Shares     | isPost Approval | Post Approval      |
      | Next EMI Amount             | <ProductType> | <ApplicantType> | Reconsideration    | Shares     | isPost Approval | Post Approval      |
      | Mandate Verification Status | <ProductType> | <ApplicantType> | Reconsideration    | Shares     | isPost Approval | Post Approval      |
      | Verified By                 | <ProductType> | <ApplicantType> | Reconsideration    | Shares     | isPost Approval | Post Approval      |
      | Registration Type           | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |                 | <ApplicationStage> |
      | Mandate Nature              | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |                 | <ApplicationStage> |
      | Custodian                   | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |                 | <ApplicationStage> |
      | Acknowledgment Number       | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |                 | <ApplicationStage> |
      | IFSC Code                   | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |                 | <ApplicationStage> |
      | Bank Branch Identifier Code | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |                 | <ApplicationStage> |
      | BAR Code                    | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |                 | <ApplicationStage> |
      | Account Type                | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |                 | <ApplicationStage> |
      | Account Name                | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |                 | <ApplicationStage> |
      | Account Number              | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |                 | <ApplicationStage> |
      | IBAN                        | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |                 | <ApplicationStage> |
      | Repayment Towards           | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |                 | <ApplicationStage> |
      | Repayment Contribution      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |                 | <ApplicationStage> |
      | Mandate Cap Amount          | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |                 | <ApplicationStage> |
      | Max EMI Amount              | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |                 | <ApplicationStage> |
      | Next EMI Amount             | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |                 | <ApplicationStage> |
      | Mandate Verification Status | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |                 | <ApplicationStage> |
      | Verified By                 | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |                 | <ApplicationStage> |

