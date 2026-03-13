@Epic-Islamic_IBAN_IFSC
@PQMStory
@AuthoredBy-deep.maurya
@ImplementedBy-deep.maurya
@Release
@Islamic
@Perishable

#CAS-186817
Feature:Capturing IBAN In Payee details at Disbursal Stage

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0

#PQM-140_CAS-186817,141_CAS-186817,142_CAS-186817,143_CAS-186817,144_CAS-186817,145_CAS-186817,146_CAS-186817,147_CAS-186817
#${ProductType:["IAF"]}
#${ApplicantType:["indiv"]}
#${ApplicationStage:["Disbursal"]}
#${BPType:["Primary Applicant","Manufacturer","Dealer/Supplier"]}
#${BeneficiaryAccountType:["Saving Account","Current Account","KCC Account","Over Draft Account","Cash Credit"]}
#FeatureID-ACAUTOCAS-15318
  Scenario Outline: ACAUTOCAS-15729: Verify <Validity> IBAN field with <Validity_Reason> in Bank Account Details as <BeneficiaryAccountType> in Payee Details through <DisbursalInfoWB_home_rowNum> Electronic Fund Transfer to <BPType> at <ApplicationStage> stage for a IAF application
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "disbursal.xlsx" under sheet "disbursal_entry" and row 0
    And user fills disbursal Checklist
    And user opens payee details on disbursal
    And user reads data from the excel file "<DisbursalInfoWB>" under sheet "<DisbursalInfoWB_home>" and row <DisbursalInfoWB_home_rowNum>
    And user selects Business Partner Type as "<BPType>"
    And user selects payment mode as "Electronic Fund Transfer" in Payee Details
    And user selects subtype payments mode as "<Sub_Type_Payments_Mode>"
    And user selects Beneficiary Account Type as "<BeneficiaryAccountType>"
    When user fills mandatory fields for payments details with "<Validity>" IBAN value
    Then Disbursal entry should be "<SavedOrNot>" with IBAN field "<errorType>"
    Examples:
      | Validity | Validity_Reason                      | errorType                          | ProductType   | ApplicationStage   | ApplicantType   | Sub_Type_Payments_Mode | SavedOrNot | BeneficiaryAccountType   | BPType   | DisbursalInfoWB | DisbursalInfoWB_home | DisbursalInfoWB_home_rowNum | Category | Key |
      | valid    | valid                                | does not throw any error           | <ProductType> | <ApplicationStage> | <ApplicantType> | NEFT                   | saved      | <BeneficiaryAccountType> | <BPType> | disbursal.xlsx  | disbursal_entry      | 23                          |          |     |
      | invalid  | special characters ',/-&()!.$        | throws an error with error message | <ProductType> | <ApplicationStage> | <ApplicantType> | NEFT                   | not saved  | <BeneficiaryAccountType> | <BPType> | disbursal.xlsx  | disbursal_entry      | 24                          |          |     |
      | invalid  | special characters except ',/-&()!.$ | throws an error with error message | <ProductType> | <ApplicationStage> | <ApplicantType> | NEFT                   | not saved  | <BeneficiaryAccountType> | <BPType> | disbursal.xlsx  | disbursal_entry      | 25                          |          |     |
      | valid    | max                                  | does not throw any error           | <ProductType> | <ApplicationStage> | <ApplicantType> | NEFT                   | saved      | <BeneficiaryAccountType> | <BPType> | disbursal.xlsx  | disbursal_entry      | 26                          |          |     |
      | valid    | up to 50 chars                       | does not throw any error           | <ProductType> | <ApplicationStage> | <ApplicantType> | NEFT                   | saved      | <BeneficiaryAccountType> | <BPType> | disbursal.xlsx  | disbursal_entry      | 27                          |          |     |
      | valid    | no iban                              | does not throw any error           | <ProductType> | <ApplicationStage> | <ApplicantType> | NEFT                   | saved      | <BeneficiaryAccountType> | <BPType> | disbursal.xlsx  | disbursal_entry      | 28                          |          |     |
      | valid    | valid                                | does not throw any error           | <ProductType> | <ApplicationStage> | <ApplicantType> | RTGS                   | saved      | <BeneficiaryAccountType> | <BPType> | disbursal.xlsx  | disbursal_entry      | 29                          |          |     |
      | invalid  | special characters ',/-&()!.$        | throws an error with error message | <ProductType> | <ApplicationStage> | <ApplicantType> | RTGS                   | not saved  | <BeneficiaryAccountType> | <BPType> | disbursal.xlsx  | disbursal_entry      | 30                          |          |     |
      | invalid  | special characters except ',/-&()!.$ | throws an error with error message | <ProductType> | <ApplicationStage> | <ApplicantType> | RTGS                   | not saved  | <BeneficiaryAccountType> | <BPType> | disbursal.xlsx  | disbursal_entry      | 31                          |          |     |
      | valid    | max                                  | does not throw any error           | <ProductType> | <ApplicationStage> | <ApplicantType> | RTGS                   | saved      | <BeneficiaryAccountType> | <BPType> | disbursal.xlsx  | disbursal_entry      | 32                          |          |     |
      | valid    | up to 50 50 chars                    | does not throw any error           | <ProductType> | <ApplicationStage> | <ApplicantType> | RTGS                   | saved      | <BeneficiaryAccountType> | <BPType> | disbursal.xlsx  | disbursal_entry      | 33                          |          |     |
      | valid    | no iban                              | does not throw any error           | <ProductType> | <ApplicationStage> | <ApplicantType> | RTGS                   | saved      | <BeneficiaryAccountType> | <BPType> | disbursal.xlsx  | disbursal_entry      | 34                          |          |     |

#PQM-140_CAS-186817,141_CAS-186817,142_CAS-186817,143_CAS-186817,144_CAS-186817,145_CAS-186817,146_CAS-186817,147_CAS-186817
#${ProductType:["IHF"]}
#${ApplicantType:["indiv"]}
#${ApplicationStage:["Disbursal"]}
#${BPType:["Primary Applicant","Builder Company"]}
#${BeneficiaryAccountType:["Saving Account","Current Account","KCC Account","Over Draft Account","Cash Credit"]}
#FeatureID-ACAUTOCAS-15318
  Scenario Outline: ACAUTOCAS-15730: Verify <Validity> IBAN field with <Validity_Reason> in Bank Account Details as <BeneficiaryAccountType> in Payee Details through <DisbursalInfoWB_home_rowNum> Electronic Fund Transfer to <BPType> at <ApplicationStage> stage for a IHF application
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "disbursal.xlsx" under sheet "disbursal_entry" and row 0
    And user fills disbursal Checklist
    And user opens payee details on disbursal
    And user reads data from the excel file "<DisbursalInfoWB>" under sheet "<DisbursalInfoWB_home>" and row <DisbursalInfoWB_home_rowNum>
    And user selects Business Partner Type as "<BPType>"
    And user selects payment mode as "Electronic Fund Transfer" in Payee Details
    And user selects subtype payments mode as "<Sub_Type_Payments_Mode>"
    And user selects Beneficiary Account Type as "<BeneficiaryAccountType>"
    When user fills mandatory fields for payments details with "<Validity>" IBAN value
    Then Disbursal entry should be "<SavedOrNot>" with IBAN field "<errorType>"
    Examples:
      | Validity | Validity_Reason                      | errorType                          | ProductType   | ApplicationStage   | ApplicantType   | Sub_Type_Payments_Mode | SavedOrNot | BeneficiaryAccountType   | BPType   | DisbursalInfoWB | DisbursalInfoWB_home | DisbursalInfoWB_home_rowNum | Category | Key |
      | valid    | valid                                | does not throw any error           | <ProductType> | <ApplicationStage> | <ApplicantType> | NEFT                   | saved      | <BeneficiaryAccountType> | <BPType> | disbursal.xlsx  | disbursal_entry      | 23                          |          |     |
      | invalid  | special characters ',/-&()!.$        | throws an error with error message | <ProductType> | <ApplicationStage> | <ApplicantType> | NEFT                   | not saved  | <BeneficiaryAccountType> | <BPType> | disbursal.xlsx  | disbursal_entry      | 24                          |          |     |
      | invalid  | special characters except ',/-&()!.$ | throws an error with error message | <ProductType> | <ApplicationStage> | <ApplicantType> | NEFT                   | not saved  | <BeneficiaryAccountType> | <BPType> | disbursal.xlsx  | disbursal_entry      | 25                          |          |     |
      | valid    | max                                  | does not throw any error           | <ProductType> | <ApplicationStage> | <ApplicantType> | NEFT                   | saved      | <BeneficiaryAccountType> | <BPType> | disbursal.xlsx  | disbursal_entry      | 26                          |          |     |
      | valid    | up to 50 chars                       | does not throw any error           | <ProductType> | <ApplicationStage> | <ApplicantType> | NEFT                   | saved      | <BeneficiaryAccountType> | <BPType> | disbursal.xlsx  | disbursal_entry      | 27                          |          |     |
      | valid    | no iban                              | does not throw any error           | <ProductType> | <ApplicationStage> | <ApplicantType> | NEFT                   | saved      | <BeneficiaryAccountType> | <BPType> | disbursal.xlsx  | disbursal_entry      | 28                          |          |     |
      | valid    | valid                                | does not throw any error           | <ProductType> | <ApplicationStage> | <ApplicantType> | RTGS                   | saved      | <BeneficiaryAccountType> | <BPType> | disbursal.xlsx  | disbursal_entry      | 29                          |          |     |
      | invalid  | special characters ',/-&()!.$        | throws an error with error message | <ProductType> | <ApplicationStage> | <ApplicantType> | RTGS                   | not saved  | <BeneficiaryAccountType> | <BPType> | disbursal.xlsx  | disbursal_entry      | 30                          |          |     |
      | invalid  | special characters except ',/-&()!.$ | throws an error with error message | <ProductType> | <ApplicationStage> | <ApplicantType> | RTGS                   | not saved  | <BeneficiaryAccountType> | <BPType> | disbursal.xlsx  | disbursal_entry      | 31                          |          |     |
      | valid    | max                                  | does not throw any error           | <ProductType> | <ApplicationStage> | <ApplicantType> | RTGS                   | saved      | <BeneficiaryAccountType> | <BPType> | disbursal.xlsx  | disbursal_entry      | 32                          |          |     |
      | valid    | up to 50 chars                       | does not throw any error           | <ProductType> | <ApplicationStage> | <ApplicantType> | RTGS                   | saved      | <BeneficiaryAccountType> | <BPType> | disbursal.xlsx  | disbursal_entry      | 33                          |          |     |
      | valid    | no iban                              | does not throw any error           | <ProductType> | <ApplicationStage> | <ApplicantType> | RTGS                   | saved      | <BeneficiaryAccountType> | <BPType> | disbursal.xlsx  | disbursal_entry      | 34                          |          |     |


#PQM-55_CAS-186817,56_CAS-186817
#FeatureID-ACAUTOCAS-15318
  Scenario Outline: ACAUTOCAS-15731: Verify the visibility of IBAN Field in <Modes> with <BPType> on disbursal in Payee Details <DisbursalInfoWB_home_rowNum> through <Modes> at <ApplicationStage> stage for a <ProductType> application
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens payee details on disbursal
    And user selects Business Partner Type as "<BPType>"
    And user reads data from the excel file "<DisbursalInfoWB>" under sheet "<DisbursalInfoWB_home>" and row <DisbursalInfoWB_home_rowNum>
    When user selects payment mode as "<Modes>" in Payee Details
    Then IBAN field should not visible
    Examples:
      | ProductType | ApplicationStage | ApplicantType | Modes  | BPType            | Category | Key | DisbursalInfoWB | DisbursalInfoWB_home | DisbursalInfoWB_home_rowNum |
      | IAF         | DISBURSAL        | indiv         | Cheque | Dealer/Supplier   |          |     | disbursal.xlsx  | disbursal_entry      | 46                          |
      | IAF         | DISBURSAL        | indiv         | Draft  | Dealer/Supplier   |          |     | disbursal.xlsx  | disbursal_entry      | 47                          |
      | IAF         | DISBURSAL        | indiv         | Cheque | Manufacturer      |          |     | disbursal.xlsx  | disbursal_entry      | 46                          |
      | IAF         | DISBURSAL        | indiv         | Draft  | Manufacturer      |          |     | disbursal.xlsx  | disbursal_entry      | 47                          |
      | IAF         | DISBURSAL        | indiv         | Cheque | Primary Applicant |          |     | disbursal.xlsx  | disbursal_entry      | 46                          |
      | IAF         | DISBURSAL        | indiv         | Draft  | Primary Applicant |          |     | disbursal.xlsx  | disbursal_entry      | 47                          |
      | IPF         | DISBURSAL        | indiv         | Cheque | Primary Applicant | bonds    |     | disbursal.xlsx  | disbursal_entry      | 46                          |
      | IPF         | DISBURSAL        | indiv         | Draft  | Primary Applicant | bonds    |     | disbursal.xlsx  | disbursal_entry      | 47                          |
      | IPF         | DISBURSAL        | indiv         | Cheque | Primary Applicant | metals   |     | disbursal.xlsx  | disbursal_entry      | 46                          |
      | IPF         | DISBURSAL        | indiv         | Draft  | Primary Applicant | metals   |     | disbursal.xlsx  | disbursal_entry      | 47                          |
      | IHF         | DISBURSAL        | indiv         | Cheque | Primary Applicant |          |     | disbursal.xlsx  | disbursal_entry      | 46                          |
      | IHF         | DISBURSAL        | indiv         | Draft  | Primary Applicant |          |     | disbursal.xlsx  | disbursal_entry      | 47                          |
      | IHF         | DISBURSAL        | indiv         | Cheque | Builder Company   |          |     | disbursal.xlsx  | disbursal_entry      | 46                          |
      | IHF         | DISBURSAL        | indiv         | Draft  | Builder Company   |          |     | disbursal.xlsx  | disbursal_entry      | 47                          |

#BUG-ACAUTOCAS-13908
#${ApplicantType:["indiv"]}
#FeatureID-ACAUTOCAS-15318
  Scenario Outline: ACAUTOCAS-15732: Verify data in IBAN field respective account is selected with pre filled IBAN for Dealer Supplier at <ApplicationStage> stage for a <ProductType> application with <DatasetID>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "disbursal.xlsx" under sheet "disbursal_entry" and row 23
    And user opens payee details on disbursal
    And user selects Business Partner Type as "Dealer/Supplier"
    And user selects payment mode as "Electronic Fund Transfer" in Payee Details
    When user selects subtype payments mode as "<Sub_Type_Payments_Mode>"
    Then IBAN field should be visible as text field

#${ProductType:["IPF"]}
#${ApplicationStage:["Disbursal"]}
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Sub_Type_Payments_Mode | Category | Key | DatasetID |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | NEFT                   | bonds    |     | 0         |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | NEFT                   | bonds    |     | 1         |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | NEFT                   | bonds    |     | 2         |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | NEFT                   | bonds    |     | 3         |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | NEFT                   | bonds    |     | 4         |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | RTGS                   | bonds    |     | 5         |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | RTGS                   | bonds    |     | 6         |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | RTGS                   | bonds    |     | 7         |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | RTGS                   | bonds    |     | 8         |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | RTGS                   | bonds    |     | 9         |

#${ProductType:["IAF","IHF"]}
#${ApplicationStage:["Disbursal"]}
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Sub_Type_Payments_Mode | Category | Key | DatasetID |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | NEFT                   |          |     | 0         |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | NEFT                   |          |     | 1         |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | NEFT                   |          |     | 2         |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | NEFT                   |          |     | 3         |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | NEFT                   |          |     | 4         |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | RTGS                   |          |     | 5         |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | RTGS                   |          |     | 6         |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | RTGS                   |          |     | 7         |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | RTGS                   |          |     | 8         |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | RTGS                   |          |     | 9         |

#BUG-ACAUTOCAS-13908
#${ApplicantType:["indiv"]}
#FeatureID-ACAUTOCAS-15318
  Scenario Outline: ACAUTOCAS-15733:Verify data in IBAN field respective account is selected with pre filled IBAN for Manufacturer at <ApplicationStage> stage for a <ProductType> application with <DatasetID>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "disbursal.xlsx" under sheet "disbursal_entry" and row 23
    And user opens payee details on disbursal
    And user selects Business Partner Type as "Manufacturer"
    And user selects payment mode as "Electronic Fund Transfer" in Payee Details
    When user selects subtype payments mode as "<Sub_Type_Payments_Mode>"
    Then IBAN field should be visible as text field

#${ProductType:["IPF"]}
#${ApplicationStage:["Disbursal"]}
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Sub_Type_Payments_Mode | Category | Key | DatasetID |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | NEFT                   | bonds    |     | 0         |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | NEFT                   | bonds    |     | 1         |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | NEFT                   | bonds    |     | 2         |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | NEFT                   | bonds    |     | 3         |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | NEFT                   | bonds    |     | 4         |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | RTGS                   | bonds    |     | 5         |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | RTGS                   | bonds    |     | 6         |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | RTGS                   | bonds    |     | 7         |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | RTGS                   | bonds    |     | 8         |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | RTGS                   | bonds    |     | 9         |

#${ProductType:["IAF","IHF"]}
#${ApplicationStage:["Disbursal"]}
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Sub_Type_Payments_Mode | Category | Key | DatasetID |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | NEFT                   |          |     | 0         |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | NEFT                   |          |     | 1         |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | NEFT                   |          |     | 2         |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | NEFT                   |          |     | 3         |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | NEFT                   |          |     | 4         |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | RTGS                   |          |     | 5         |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | RTGS                   |          |     | 6         |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | RTGS                   |          |     | 7         |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | RTGS                   |          |     | 8         |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | RTGS                   |          |     | 9         |

#BUG-ACAUTOCAS-13908
#${ApplicantType:["indiv"]}
#FeatureID-ACAUTOCAS-15318
  Scenario Outline: ACAUTOCAS-15734:Verify data in IBAN field respective account is selected with pre filled IBAN for Primary Applicant at <ApplicationStage> stage for a <ProductType> application with <DatasetID>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "disbursal.xlsx" under sheet "disbursal_entry" and row 23
    And user opens payee details on disbursal
    And user selects Business Partner Type as "Primary Applicant"
    And user selects payment mode as "Electronic Fund Transfer" in Payee Details
    When user selects subtype payments mode as "<Sub_Type_Payments_Mode>"
    Then IBAN field should be visible as text field

#${ProductType:["IPF"]}
#${ApplicationStage:["Disbursal"]}
#${Category:["bonds","metals"]}
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Sub_Type_Payments_Mode | Category   | Key | DatasetID |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | NEFT                   | <Category> |     | 0         |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | NEFT                   | <Category> |     | 1         |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | NEFT                   | <Category> |     | 2         |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | NEFT                   | <Category> |     | 3         |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | NEFT                   | <Category> |     | 4         |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | RTGS                   | <Category> |     | 5         |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | RTGS                   | <Category> |     | 6         |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | RTGS                   | <Category> |     | 7         |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | RTGS                   | <Category> |     | 8         |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | RTGS                   | <Category> |     | 9         |

#BUG-ACAUTOCAS-13908
#${ApplicantType:["indiv"]}
#FeatureID-ACAUTOCAS-15318
  Scenario Outline: ACAUTOCAS-15735:Verify data in IBAN field respective account is selected with pre filled IBAN for Builder Company at <ApplicationStage> stage for a <ProductType> application with <DatasetID>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "disbursal.xlsx" under sheet "disbursal_entry" and row 23
    And user opens payee details on disbursal
    And user selects Business Partner Type as "Builder Company"
    And user selects payment mode as "Electronic Fund Transfer" in Payee Details
    When user selects subtype payments mode as "<Sub_Type_Payments_Mode>"
    Then IBAN field should be visible as text field

#${ProductType:["IPF"]}
#${ApplicationStage:["Disbursal"]}
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Sub_Type_Payments_Mode | Category | Key | DatasetID |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | NEFT                   | bonds    |     | 0         |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | NEFT                   | bonds    |     | 1         |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | NEFT                   | bonds    |     | 2         |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | NEFT                   | bonds    |     | 3         |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | NEFT                   | bonds    |     | 4         |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | RTGS                   | bonds    |     | 5         |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | RTGS                   | bonds    |     | 6         |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | RTGS                   | bonds    |     | 7         |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | RTGS                   | bonds    |     | 8         |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | RTGS                   | bonds    |     | 9         |

#${ProductType:["IAF","IHF"]}
#${ApplicationStage:["Disbursal"]}
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Sub_Type_Payments_Mode | Category | Key | DatasetID |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | NEFT                   |          |     | 0         |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | NEFT                   |          |     | 1         |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | NEFT                   |          |     | 2         |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | NEFT                   |          |     | 3         |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | NEFT                   |          |     | 4         |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | RTGS                   |          |     | 5         |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | RTGS                   |          |     | 6         |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | RTGS                   |          |     | 7         |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | RTGS                   |          |     | 8         |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | RTGS                   |          |     | 9         |

#PQM-7_CAS-186817,8_CAS-186817
#FeatureID-ACAUTOCAS-15318
  @LoggedBug-CAS-222427

  Scenario Outline: ACAUTOCAS-15736: Verify successful disbursal of application with IBAN data for <BPType> type for <Sub_Type_Payments_Mode> as Sub payment type mode <DisbursalInfoWB_home_rowNum> at <ApplicationStage> stage for a <ProductType> application
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "disbursal.xlsx" under sheet "disbursal_entry" and row 0
    And user fills disbursal Checklist
    And user reads data from the excel file "<DisbursalInfoWB>" under sheet "<DisbursalInfoWB_home>" and row <DisbursalInfoWB_home_rowNum>
    And user opens payee details on disbursal
    And user selects Business Partner Type as "<BPType>"
    And user selects payment mode as "Electronic Fund Transfer" in Payee Details
    And user selects subtype payments mode as "<Sub_Type_Payments_Mode>"
    And user fills mandatory fields for payments details with "valid" IBAN value
    And user saves the disbursal
    And user initiate disbursal
    And user logout from CAS
    And user logged in "CAS" with username and password present in "LoginDetailsCAS.xlsx" under "ChildBrowserSheet" and 0
    And user navigate to disbursal author Screen
    And user opens an application present in context from disbursal author grid
    When Author accepts the disbursal application on disbursal author page
    Then Application should get Disbursed successfully
    Examples:
      | ProductType | ApplicationStage | ApplicantType | Sub_Type_Payments_Mode | BPType            | DisbursalInfoWB | DisbursalInfoWB_home | DisbursalInfoWB_home_rowNum | Category | Key |
      | IAF         | DISBURSAL        | indiv         | NEFT                   | Primary Applicant | disbursal.xlsx  | disbursal_entry      | 36                          |          |     |
      | IAF         | DISBURSAL        | indiv         | NEFT                   | Dealer/Supplier   | disbursal.xlsx  | disbursal_entry      | 36                          |          |     |
      | IHF         | DISBURSAL        | indiv         | NEFT                   | Primary Applicant | disbursal.xlsx  | disbursal_entry      | 36                          |          |     |
      | IAF         | DISBURSAL        | indiv         | RTGS                   | Primary Applicant | disbursal.xlsx  | disbursal_entry      | 41                          |          |     |
      | IAF         | DISBURSAL        | indiv         | RTGS                   | Dealer/Supplier   | disbursal.xlsx  | disbursal_entry      | 41                          |          |     |
      | IHF         | DISBURSAL        | indiv         | RTGS                   | Primary Applicant | disbursal.xlsx  | disbursal_entry      | 41                          |          |     |

#FeatureID-ACAUTOCAS-15318
  @LoggedBug-CAS-222427
  Scenario Outline: ACAUTOCAS-15737: Verify successful disbursal of application with IBAN data for <BPType> at <ApplicationStage> stage for a IPF application for <Category> with <Key>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "disbursal.xlsx" under sheet "disbursal_entry" and row 0
    And user fills disbursal Checklist
    And user reads data from the excel file "<DisbursalInfoWB>" under sheet "<DisbursalInfoWB_home>" and row <DisbursalInfoWB_home_rowNum>
    And user opens payee details on disbursal
    And user selects Business Partner Type as "<BPType>"
    And user selects payment mode as "Electronic Fund Transfer" in Payee Details
    And user selects subtype payments mode as "<Sub_Type_Payments_Mode>"
    And user clicks on add to list the payee details
    And user saves the disbursal
    And user initiate disbursal
    And user logout from CAS
    And user logged in "CAS" with username and password present in "LoginDetailsCAS.xlsx" under "ChildBrowserSheet" and 0
    And user navigate to disbursal author Screen
    And user opens an application present in context from disbursal author grid
    When Author accepts the disbursal application on disbursal author page
    Then Application should get Disbursed successfully

#${ProductType:["IPF"]}
#${ApplicationStage:["Disbursal"]}
#${ApplicantType:["indiv"]}
#${Category:["Bonds","Metals"]}
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Sub_Type_Payments_Mode | BPType            | DisbursalInfoWB | DisbursalInfoWB_home | DisbursalInfoWB_home_rowNum | Category   | Key |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Internal Transfer      | Primary Applicant | disbursal.xlsx  | disbursal_entry      | 35                          | <Category> |     |

#${ProductType:["IPF"]}
#${ApplicationStage:["Reconsideration"]}
#${ApplicantType:["indiv"]}
#${Category:["Shares"]}
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Sub_Type_Payments_Mode | BPType            | DisbursalInfoWB | DisbursalInfoWB_home | DisbursalInfoWB_home_rowNum | Category   | Key         |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Internal Transfer      | Primary Applicant | disbursal.xlsx  | disbursal_entry      | 35                          | <Category> | isDisbursal |

#PQM-55_CAS-186817,56_CAS-186817
#${ApplicantType:["indiv"]}
#FeatureID-ACAUTOCAS-15318
  Scenario Outline: ACAUTOCAS-15738:Verify the visibility of IBAN Field on disbursal in <DisbursalInfoWB_home_rowNum> Payee Details through <Modes> at <ApplicationStage> stage for a <ProductType> application
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "<DisbursalInfoWB>" under sheet "<DisbursalInfoWB_home>" and row <DisbursalInfoWB_home_rowNum>
    And user opens payee details on disbursal
    And user selects Business Partner Type as "<BPType>"
    When user selects payment mode as "<Modes>" in Payee Details
    Then IBAN field should not visible

#${ProductType:["IPF"]}
#${ApplicationStage:["Disbursal"]}
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Modes  | BPType            | Category | Key | DisbursalInfoWB | DisbursalInfoWB_home | DisbursalInfoWB_home_rowNum |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Cheque | Dealer/Supplier   | bonds    |     | disbursal.xlsx  | disbursal_entry      | 46                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Cheque | Dealer/Supplier   | bonds    |     | disbursal.xlsx  | disbursal_entry      | 46                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Draft  | Dealer/Supplier   | bonds    |     | disbursal.xlsx  | disbursal_entry      | 47                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Draft  | Dealer/Supplier   | bonds    |     | disbursal.xlsx  | disbursal_entry      | 47                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Cheque | Manufacturer      | bonds    |     | disbursal.xlsx  | disbursal_entry      | 46                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Cheque | Manufacturer      | bonds    |     | disbursal.xlsx  | disbursal_entry      | 46                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Draft  | Manufacturer      | bonds    |     | disbursal.xlsx  | disbursal_entry      | 47                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Draft  | Manufacturer      | bonds    |     | disbursal.xlsx  | disbursal_entry      | 47                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Cheque | Primary Applicant | bonds    |     | disbursal.xlsx  | disbursal_entry      | 46                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Cheque | Primary Applicant | bonds    |     | disbursal.xlsx  | disbursal_entry      | 46                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Draft  | Primary Applicant | bonds    |     | disbursal.xlsx  | disbursal_entry      | 47                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Draft  | Primary Applicant | bonds    |     | disbursal.xlsx  | disbursal_entry      | 47                          |

#${ProductType:["IAF","IHF"]}
#${ApplicationStage:["Disbursal"]}
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Modes  | BPType            | Category | Key | DisbursalInfoWB | DisbursalInfoWB_home | DisbursalInfoWB_home_rowNum |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Cheque | Dealer/Supplier   |          |     | disbursal.xlsx  | disbursal_entry      | 46                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Cheque | Dealer/Supplier   |          |     | disbursal.xlsx  | disbursal_entry      | 46                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Draft  | Dealer/Supplier   |          |     | disbursal.xlsx  | disbursal_entry      | 47                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Draft  | Dealer/Supplier   |          |     | disbursal.xlsx  | disbursal_entry      | 47                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Cheque | Manufacturer      |          |     | disbursal.xlsx  | disbursal_entry      | 46                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Cheque | Manufacturer      |          |     | disbursal.xlsx  | disbursal_entry      | 46                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Draft  | Manufacturer      |          |     | disbursal.xlsx  | disbursal_entry      | 47                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Draft  | Manufacturer      |          |     | disbursal.xlsx  | disbursal_entry      | 47                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Cheque | Primary Applicant |          |     | disbursal.xlsx  | disbursal_entry      | 46                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Cheque | Primary Applicant |          |     | disbursal.xlsx  | disbursal_entry      | 46                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Draft  | Primary Applicant |          |     | disbursal.xlsx  | disbursal_entry      | 47                          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Draft  | Primary Applicant |          |     | disbursal.xlsx  | disbursal_entry      | 47                          |

#PQM-4_CAS-186817,5_CAS-186817
#BUG-ACAUTOCAS-13908
#ACAUTOCAS-15191 Bug logged
#FeatureID-ACAUTOCAS-15318
#${ApplicantType:["indiv"]}
  @LoggedBug-CAS-222427

  Scenario Outline: ACAUTOCAS-15739:Verify successful disbursal of application with IBAN data with <DisbursalInfoWB_home_rowNum> for <Another_Applicant> at <ApplicationStage> stage for a <ProductType> application
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "disbursal.xlsx" under sheet "disbursal_entry" and row 0
    And user fills disbursal Checklist
    And user reads data from the excel file "<DisbursalInfoWB>" under sheet "<DisbursalInfoWB_home>" and row <DisbursalInfoWB_home_rowNum>
    And user opens payee details on disbursal
    And user selects Business Partner Type as "<Another_Applicant>"
    And user selects payment mode as "Electronic Fund Transfer" in Payee Details
    And user selects subtype payments mode as "<Sub_Type_Payments_Mode>"
    And user fills mandatory fields for payments details with "valid" IBAN value
    And user saves the disbursal
    And user initiate disbursal
    And user logout from CAS
    And user logged in "CAS" with username and password present in "LoginDetailsCAS.xlsx" under "ChildBrowserSheet" and 0
    And user navigate to disbursal author Screen
    And user opens an application present in context from disbursal author grid
    When Author accepts the disbursal application on disbursal author page
    Then Application should get Disbursed successfully

#${ProductType:["IPF"]}
#${ApplicationStage:["Disbursal"]}
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Sub_Type_Payments_Mode | Another_Applicant | DisbursalInfoWB | DisbursalInfoWB_home | DisbursalInfoWB_home_rowNum | BeneficiaryAccountType | Key       | Category |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | NEFT                   | Co-applicant      | disbursal.xlsx  | disbursal_entry      | 36                          | Saving Account         | coapp     | bonds    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | NEFT                   | Gaurantor         | disbursal.xlsx  | disbursal_entry      | 36                          | Saving Account         | guarantor | bonds    |

#${ProductType:["IAF","IHF"]}
#${ApplicationStage:["Disbursal"]}
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Sub_Type_Payments_Mode | Another_Applicant | DisbursalInfoWB | DisbursalInfoWB_home | DisbursalInfoWB_home_rowNum | BeneficiaryAccountType | Key       | Category |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | NEFT                   | Co-applicant      | disbursal.xlsx  | disbursal_entry      | 36                          | Saving Account         | coapp     |          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | NEFT                   | Gaurantor         | disbursal.xlsx  | disbursal_entry      | 36                          | Saving Account         | guarantor |          |

#FeatureID-ACAUTOCAS-15318
  @LoggedBug-CAS-222427

  Scenario Outline: ACAUTOCAS-15740: Verify IBAN field in Bank Details after modification with <BeneficiaryAccountType> on disbursal for <BPType> at <ApplicationStage> stage for a <ProductType> application
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens payee details on disbursal
    And user reads data from the excel file "<DisbursalInfoWB>" under sheet "<DisbursalInfoWB_home>" and row <DisbursalInfoWB_home_rowNum>
    And user selects Business Partner Type as "<BPType>"
    And user selects payment mode as "<Modes>" in Payee Details
    And user selects subtype payments mode as "<Sub_Type_Payments_Mode>"
    And user selects Beneficiary Account Type as "<BeneficiaryAccountType>"
    And user fills mandatory details along with modified IBAN
    And user saves the disbursal
    And user navigates to personal information page of "<ApplicationStage>"
    When user opens Bank Credit Card details Tab
    Then Modified Account and IBAN value should not be visible
    Examples:
      | ProductType | ApplicationStage | ApplicantType | Modes                    | BPType          | Sub_Type_Payments_Mode | Key | Category | DisbursalInfoWB | DisbursalInfoWB_home | DisbursalInfoWB_home_rowNum | BeneficiaryAccountType |
      | IHF         | DISBURSAL        | indiv         | Electronic Fund Transfer | Dealer/Supplier | NEFT                   |     |          | disbursal.xlsx  | disbursal_entry      | 23                          | Current Account        |
      | IAF         | DISBURSAL        | indiv         | Electronic Fund Transfer | Dealer/Supplier | NEFT                   |     |          | disbursal.xlsx  | disbursal_entry      | 23                          | Current Account        |

#${ApplicantType:["indiv"]}
#FeatureID-ACAUTOCAS-15318
  Scenario Outline: ACAUTOCAS-15741: Verify the visibility of IBAN Field on disbursal in <BPType> type Payee Details for <Sub_Type_Payments_Mode> as Sub payment type mode with <Sub_Type_Payments_Mode> at <ApplicationStage> stage for a <ProductType> application
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "<DisbursalInfoWB>" under sheet "<DisbursalInfoWB_home>" and row <DisbursalInfoWB_home_rowNum>
    And user opens payee details on disbursal
    And user selects Business Partner Type as "<BPType>"
    And user selects payment mode as "Electronic Fund Transfer" in Payee Details
    When user selects subtype payments mode as "<Sub_Type_Payments_Mode>"
    Then IBAN field should not visible

#${ProductType:["IPF"]}
#${ApplicationStage:["Disbursal"]}
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | BPType            | Sub_Type_Payments_Mode | DisbursalInfoWB | DisbursalInfoWB_home | DisbursalInfoWB_home_rowNum | Key | Category |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Primary Applicant | Internal Transfer      | disbursal.xlsx  | disbursal_entry      | 35                          |     | bonds    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Dealer/Supplier   | Internal Transfer      | disbursal.xlsx  | disbursal_entry      | 35                          |     | bonds    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Manufacturer      | Internal Transfer      | disbursal.xlsx  | disbursal_entry      | 35                          |     | bonds    |

#${ProductType:["IAF","IHF"]}
#${ApplicationStage:["Disbursal"]}
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | BPType            | Sub_Type_Payments_Mode | DisbursalInfoWB | DisbursalInfoWB_home | DisbursalInfoWB_home_rowNum | Key | Category |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Primary Applicant | Internal Transfer      | disbursal.xlsx  | disbursal_entry      | 35                          |     |          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Dealer/Supplier   | Internal Transfer      | disbursal.xlsx  | disbursal_entry      | 35                          |     |          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Manufacturer      | Internal Transfer      | disbursal.xlsx  | disbursal_entry      | 35                          |     |          |

#${ApplicantType:["indiv"]}
#${ApplicationStage:["DDE"]}
#FeatureID-ACAUTOCAS-15318
  @LoggedBug-CAS-222427
  Scenario Outline: ACAUTOCAS-15736: Verify successful disbursal of application with IBAN data for <BPType> for <Sub_Type_Payments_Mode> as Sub payment type mode <DisbursalInfoWB_home_rowNum> at <ApplicationStage> stage for a <ProductType> application
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user navigates to personal information page of "<ApplicationStage>"
    And user reads data from the excel file "property_details.xlsx" under sheet "home" and row 134
    And user clicks on loan details tab
    And user clicks on property tab
    And user delink the property details
    And user fills property details home page with "<Mandatory_NonMandatory>" fields for "<Application_Type>"
    And user reads data from the excel file "property_details.xlsx" under sheet "other_details" and row 0
    And user fills other details of property details with "<Mandatory_NonMandatory>" fields for "<Application_Type>"
    And user reads data from the excel file "property_details.xlsx" under sheet "property_address" and row 0
    And user fills property address with "<Mandatory_NonMandatory>" fields for "<Application_Type>"
    And user reads data from the excel file "property_details.xlsx" under sheet "builder_details" and row 23
    And user fills mandatory builder details
    And user saves property details
    And users clicks on repayment parameters tab
    And user saves repayment parameters
    And user selects document tab
    And user submit the documents with wait
    And user moves application from "<ApplicationStage>" stage to application of "<ProductType>" product type as "<ApplicantType>" applicant at "Disbursal" for "<Category>" with "<Key>" stage without opening it
    And user opens an application of "Disbursal" stage present in context from application grid
    And user reads data from the excel file "disbursal.xlsx" under sheet "disbursal_entry" and row 0
    And user fills disbursal Checklist
    And user reads data from the excel file "<DisbursalInfoWB>" under sheet "<DisbursalInfoWB_home>" and row <DisbursalInfoWB_home_rowNum>
    And user opens payee details on disbursal
    And user selects Business Partner Type as "<BPType>"
    And user selects payment mode as "Electronic Fund Transfer" in Payee Details
    And user selects subtype payments mode as "<Sub_Type_Payments_Mode>"
    And user selects Beneficiary Account Type as "Current Account"
    And user fills mandatory fields for payments details with "valid" IBAN value
    And user saves the disbursal
    And user initiate disbursal
    And user logout from CAS
    And user logged in "CAS" with username and password present in "LoginDetailsCAS.xlsx" under "ChildBrowserSheet" and 0
    And user navigate to disbursal author Screen
    And user opens an application present in context from disbursal author grid
    When Author accepts the disbursal application on disbursal author page
    Then Application should get Disbursed successfully
    
#${ProductType:["IHF"]}
#${BPType:["Builder Company"]}
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Sub_Type_Payments_Mode | BPType   | Mandatory_NonMandatory | Application_Type    | DisbursalInfoWB | DisbursalInfoWB_home | DisbursalInfoWB_home_rowNum | Category | Key |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | NEFT                   | <BPType> | mandatory              | Property Identified | disbursal.xlsx  | disbursal_entry      | 36                          |          |     |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | RTGS                   | <BPType> | mandatory              | Property Identified | disbursal.xlsx  | disbursal_entry      | 41                          |          |     |



#   #invalid_ACAUTOCAS-13819
#   #PQM_6,7,8
#  # ${ ProductType : ["IAF"]}
## ${ApplicationStage:["Sourcing"]}
## ${ApplicantType:["indiv"]}
#  @NotImplemented
#  Scenario Outline:Verify the visibility of IBAN Field in Asset at <ApplicationStage> stage for a <ProductType> application
#    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
#    And user navigates to personal information page of "<ApplicationStage>"
#    And user navigates to asset details and selects ownership status with owned
#    And user clicks on Bank and Credit Details
#    And user reads data from the excel file "bank_credit_card_details.xlsx" under sheet "bank_details" and row 16
#    And user fills the bank details with IBAN for account type as "<BeneficiaryAccountType>"
#    And user click on move to next stage
#    And user opens an application of "DISBURSAL" stage present in context from application grid
#    And user clicks on asset details tab
#    And user selects bought from as "<Bought_From>"
#    And user opens bank account details
#    When user "<Action>" bank account details
#    Then IBAN field should be visible as text field
#    Examples:
#      | Action | ProductType   | ApplicationStage   | ApplicantType   | Bought_From | BeneficiaryAccountType |Key | Category |
#      | View   | <ProductType> | <ApplicationStage> | <ApplicantType> | individual  | Saving Account         |    |          |

# NOT APPLICABLE as Discussed with Nimisha ma'am
#   #invalid_ACAUTOCAS-13819
#    #PQM_9,10,12,13,14,15
#  # ${ ProductType : ["IAF"]}
## ${ApplicationStage:["Disbursal"]}
#  # ${ApplicantType:["indiv"]}
#  @NotImplemented
#  Scenario Outline: Verify entering <Validity> data in IBAN field <Validity_Reason> in Bank Account Details under Asset at <ApplicationStage> stage for a <ProductType> application
#    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "bonds" with "" from application grid
#    And user open asset details at "<Var_Stage>"
#    And user selects bought from as "<Bought_From>"
#    And user fills bank account details with "<Validity>" IBAN number
#    When user save bank account details
#    Then bank account details should be "<SavedOrNot>" with "<Throws_notThrows>"
#    Examples:
#      | Validity | Validity_Reason                           | errorType                          | ProductType   | ApplicationStage   | ApplicantType   | Bought_From        | SavedOrNot |
#      | valid    | no iban                                   | does not throw any error           | <ProductType> | <ApplicationStage> | <ApplicantType> | Other Manufacturer | saved      |
#      | invalid  | with special characters ',/-&()!.$        | throws an error with error message | <ProductType> | <ApplicationStage> | <ApplicantType> | Other Manufacturer | not saved  |
#      | invalid  | with special characters except ',/-&()!.$ | throws an error with error message | <ProductType> | <ApplicationStage> | <ApplicantType> | Other Manufacturer | not saved  |
#      | invalid  | with characters                           | throws an error with error message | <ProductType> | <ApplicationStage> | <ApplicantType> | Other Manufacturer | not saved  |
#      | invalid  | with digits                               | throws an error with error message | <ProductType> | <ApplicationStage> | <ApplicantType> | Other Manufacturer | not saved  |
#      | valid    | max                                       | does not throw any error           | <ProductType> | <ApplicationStage> | <ApplicantType> | Other Manufacturer | saved      |
#      | valid    | more than 50 chars                        | does not throw any error           | <ProductType> | <ApplicationStage> | <ApplicantType> | Other Manufacturer | saved      |
#
#

#Not applicable(For IPF , IBAN field is disable as discussed with Nimisha ma'am)
#      #PQM_140_147
# # ${ ProductType : ["IPF"]}
# # ${ApplicantType:["indiv"]}
# # ${ApplicationStage:["Disbursal"]}
## ${BPType :["Primary Applicant"]}
## ${BeneficiaryAccountType :["Saving Account","Current Account","KCC Account","Over Draft Account","Cash Credit"]}
#  @ImplementedBy-deep.maurya
#    @ReleaseIslamicM4
#@Release
#  Scenario Outline: Verify <Validity> IBAN field with <Validity_Reason> in Bank Account Details as <BeneficiaryAccountType> in Payee Details through Electronic Fund Transfer to <BPType> at <ApplicationStage> stage for a IPF application
#    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "bonds" with "" from application grid
#    And user reads data from the excel file "<DisbursalInfoWB>" under sheet "<DisbursalInfoWB_home>" and row <DisbursalInfoWB_home_rowNum>
#    And user opens payee details on disbursal
#    And user selects Business Partner Type as "<BPType>"
#    And user selects payment mode as "Electronic Fund Transfer"
#    And user selects subtype payments mode as "<Sub_Type_Payments_Mode>"
#    And user selects Beneficiary Account Type as "<BeneficiaryAccountType>"
#    When user fills mandatory fields for payments details with "<Validity>" IBAN value
#    Then Disbursal entry should be "<SavedOrNot>" with IBAN field "<errorType>"
#    Examples:
#      | Validity | Validity_Reason                      | errorType                          | ProductType   | ApplicationStage   | ApplicantType   | Sub_Type_Payments_Mode | SavedOrNot | BeneficiaryAccountType   | BPType   | DisbursalInfoWB | DisbursalInfoWB_home | DisbursalInfoWB_home_rowNum |
#      | valid    | valid                                | does not throw any error           | <ProductType> | <ApplicationStage> | <ApplicantType> | NEFT                   | saved      | <BeneficiaryAccountType> | <BPType> | disbursal.xlsx  | disbursal_entry      | 23                          |
#      | invalid  | special characters ',/-&()!.$        | throws an error with error message | <ProductType> | <ApplicationStage> | <ApplicantType> | NEFT                   | not saved  | <BeneficiaryAccountType> | <BPType> | disbursal.xlsx  | disbursal_entry      | 24                          |
#      | invalid  | special characters except ',/-&()!.$ | throws an error with error message | <ProductType> | <ApplicationStage> | <ApplicantType> | NEFT                   | not saved  | <BeneficiaryAccountType> | <BPType> | disbursal.xlsx  | disbursal_entry      | 25                          |
#      | valid    | max                                  | does not throw any error           | <ProductType> | <ApplicationStage> | <ApplicantType> | NEFT                   | saved      | <BeneficiaryAccountType> | <BPType> | disbursal.xlsx  | disbursal_entry      | 26                          |
#      | valid    | more than 50 chars                   | does not throw any error           | <ProductType> | <ApplicationStage> | <ApplicantType> | NEFT                   | saved      | <BeneficiaryAccountType> | <BPType> | disbursal.xlsx  | disbursal_entry      | 27                          |
#      | valid    | no iban                              | does not throw any error           | <ProductType> | <ApplicationStage> | <ApplicantType> | NEFT                   | saved      | <BeneficiaryAccountType> | <BPType> | disbursal.xlsx  | disbursal_entry      | 28                          |
#      | valid    | valid                                | does not throw any error           | <ProductType> | <ApplicationStage> | <ApplicantType> | RTGS                   | saved      | <BeneficiaryAccountType> | <BPType> | disbursal.xlsx  | disbursal_entry      | 29                          |
#      | invalid  | special characters ',/-&()!.$        | throws an error with error message | <ProductType> | <ApplicationStage> | <ApplicantType> | RTGS                   | not saved  | <BeneficiaryAccountType> | <BPType> | disbursal.xlsx  | disbursal_entry      | 30                          |
#      | invalid  | special characters except ',/-&()!.$ | throws an error with error message | <ProductType> | <ApplicationStage> | <ApplicantType> | RTGS                   | not saved  | <BeneficiaryAccountType> | <BPType> | disbursal.xlsx  | disbursal_entry      | 31                          |
#      | valid    | max                                  | does not throw any error           | <ProductType> | <ApplicationStage> | <ApplicantType> | RTGS                   | saved      | <BeneficiaryAccountType> | <BPType> | disbursal.xlsx  | disbursal_entry      | 32                          |
#      | valid    | more than 50 chars                   | does not throw any error           | <ProductType> | <ApplicationStage> | <ApplicantType> | RTGS                   | saved      | <BeneficiaryAccountType> | <BPType> | disbursal.xlsx  | disbursal_entry      | 33                          |
#      | valid    | no iban                              | does not throw any error           | <ProductType> | <ApplicationStage> | <ApplicantType> | RTGS                   | saved      | <BeneficiaryAccountType> | <BPType> | disbursal.xlsx  | disbursal_entry      | 34                          |




