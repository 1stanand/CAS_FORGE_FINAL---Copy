@Epic-Islamic_IBAN_IFSC
@PQMStory
@AuthoredBy-deep.maurya
@ImplementedBy-deep.maurya
@Islamic
@Release


#CAS-203794
#Configuration:
#IFSC Code:
     #Visibility: FALSE
     #IS MANDATORY: FALSE
Feature: MICR removal from Repayment Instruments


  Background:
    Given user is on CAS Login Page

  #FeatureID-ACAUTOCAS-11374
  #PQM_16_CAS-209816,24_CAS-209816
  Scenario Outline: ACAUTOCAS-16215:MICR removal from NACH Repayment Instruments in Repayment Instrument Details at <ApplicationStage> stage for a <ProductType> application
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user open repayment instrument details
    And user reads data from the excel file "<DisbursalWB>" under sheet "<Disbursal_RepaymentInstrumentSheet>" and row <Disbursal_RepaymentInstrumentSheet_rowNum>
    And user selects repayment instrument type as "<Repayment_Instrument>"
    And user selects applicant as "<Applicant_Type>"
    When user open repayment instrument fields to add details
    Then IFSC code should be hidden in repayment instrument details
    Examples:
      | ProductType | ApplicationStage | ApplicantType | Repayment_Instrument              | Applicant_Type    | DisbursalWB    | Disbursal_RepaymentInstrumentSheet | Disbursal_RepaymentInstrumentSheet_rowNum | Category | Key |
      | IPF         | DISBURSAL        | indiv         | Electronic Clearence System       | Primary Applicant | disbursal.xlsx | repayment_instrument               | 2                                         | bonds    |     |
      | IPF         | DISBURSAL        | indiv         | National Automated Cleaning House | Primary Applicant | disbursal.xlsx | repayment_instrument               | 3                                         | bonds    |     |
      | IPF         | POST APPROVAL    | indiv         | Electronic Clearence System       | Primary Applicant | disbursal.xlsx | repayment_instrument               | 6                                         | bonds    |     |
      | IPF         | POST APPROVAL    | indiv         | National Automated Cleaning House | Primary Applicant | disbursal.xlsx | repayment_instrument               | 7                                         | bonds    |     |
      | IAF         | DISBURSAL        | indiv         | Electronic Clearence System       | Primary Applicant | disbursal.xlsx | repayment_instrument               | 10                                        |          |     |
      | IAF         | DISBURSAL        | indiv         | National Automated Cleaning House | Primary Applicant | disbursal.xlsx | repayment_instrument               | 11                                        |          |     |
      | IAF         | POST APPROVAL    | indiv         | Electronic Clearence System       | Primary Applicant | disbursal.xlsx | repayment_instrument               | 14                                        |          |     |
      | IAF         | POST APPROVAL    | indiv         | National Automated Cleaning House | Primary Applicant | disbursal.xlsx | repayment_instrument               | 15                                        |          |     |
      | IAF         | DISBURSAL        | indiv         | Electronic Clearence System       | Manufacturer      | disbursal.xlsx | repayment_instrument               | 437                                       |          |     |
      | IAF         | DISBURSAL        | indiv         | National Automated Cleaning House | Manufacturer      | disbursal.xlsx | repayment_instrument               | 443                                       |          |     |
      | IAF         | POST APPROVAL    | indiv         | Electronic Clearence System       | Manufacturer      | disbursal.xlsx | repayment_instrument               | 437                                       |          |     |
      | IAF         | POST APPROVAL    | indiv         | National Automated Cleaning House | Manufacturer      | disbursal.xlsx | repayment_instrument               | 443                                       |          |     |
      | IHF         | DISBURSAL        | indiv         | Electronic Clearence System       | Primary Applicant | disbursal.xlsx | repayment_instrument               | 437                                       |          |     |
      | IHF         | DISBURSAL        | indiv         | National Automated Cleaning House | Primary Applicant | disbursal.xlsx | repayment_instrument               | 443                                       |          |     |
      | IHF         | POST APPROVAL    | indiv         | Electronic Clearence System       | Primary Applicant | disbursal.xlsx | repayment_instrument               | 437                                       |          |     |
      | IHF         | POST APPROVAL    | indiv         | National Automated Cleaning House | Primary Applicant | disbursal.xlsx | repayment_instrument               | 443                                       |          |     |


 #FeatureID-ACAUTOCAS-11374
  Scenario Outline: ACAUTOCAS-16215:MICR removal from NACH Repayment Instruments in Repayment Instrument Details at <ApplicationStage> stage for a <ProductType> application
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user open repayment instrument details
    And user reads data from the excel file "<DisbursalWB>" under sheet "<Disbursal_RepaymentInstrumentSheet>" and row <Disbursal_RepaymentInstrumentSheet_rowNum>
    And user selects repayment instrument type as "<Repayment_Instrument>"
    And user selects applicant as "<Applicant_Type>"
    When user open repayment instrument fields to add details
    Then Bank name should be enable for search in repayment instrument details
    Examples:
      | ProductType | ApplicationStage | ApplicantType | Repayment_Instrument              | Applicant_Type    | DisbursalWB    | Disbursal_RepaymentInstrumentSheet | Disbursal_RepaymentInstrumentSheet_rowNum | Category | Key |
      | IPF         | DISBURSAL        | indiv         | Electronic Clearence System       | Primary Applicant | disbursal.xlsx | repayment_instrument               | 2                                         | bonds    |     |
      | IPF         | DISBURSAL        | indiv         | National Automated Cleaning House | Primary Applicant | disbursal.xlsx | repayment_instrument               | 3                                         | bonds    |     |
      | IPF         | POST APPROVAL    | indiv         | Electronic Clearence System       | Primary Applicant | disbursal.xlsx | repayment_instrument               | 6                                         | bonds    |     |
      | IPF         | POST APPROVAL    | indiv         | National Automated Cleaning House | Primary Applicant | disbursal.xlsx | repayment_instrument               | 7                                         | bonds    |     |
      | IAF         | DISBURSAL        | indiv         | Electronic Clearence System       | Primary Applicant | disbursal.xlsx | repayment_instrument               | 10                                        |          |     |
      | IAF         | DISBURSAL        | indiv         | National Automated Cleaning House | Primary Applicant | disbursal.xlsx | repayment_instrument               | 11                                        |          |     |
      | IAF         | POST APPROVAL    | indiv         | Electronic Clearence System       | Primary Applicant | disbursal.xlsx | repayment_instrument               | 14                                        |          |     |
      | IAF         | POST APPROVAL    | indiv         | National Automated Cleaning House | Primary Applicant | disbursal.xlsx | repayment_instrument               | 15                                        |          |     |
      | IAF         | DISBURSAL        | indiv         | Electronic Clearence System       | Manufacturer      | disbursal.xlsx | repayment_instrument               | 437                                       |          |     |
      | IAF         | DISBURSAL        | indiv         | National Automated Cleaning House | Manufacturer      | disbursal.xlsx | repayment_instrument               | 443                                       |          |     |
      | IAF         | POST APPROVAL    | indiv         | Electronic Clearence System       | Manufacturer      | disbursal.xlsx | repayment_instrument               | 437                                       |          |     |
      | IAF         | POST APPROVAL    | indiv         | National Automated Cleaning House | Manufacturer      | disbursal.xlsx | repayment_instrument               | 443                                       |          |     |
      | IHF         | DISBURSAL        | indiv         | Electronic Clearence System       | Primary Applicant | disbursal.xlsx | repayment_instrument               | 437                                       |          |     |
      | IHF         | DISBURSAL        | indiv         | National Automated Cleaning House | Primary Applicant | disbursal.xlsx | repayment_instrument               | 443                                       |          |     |
      | IHF         | POST APPROVAL    | indiv         | Electronic Clearence System       | Primary Applicant | disbursal.xlsx | repayment_instrument               | 437                                       |          |     |
      | IHF         | POST APPROVAL    | indiv         | National Automated Cleaning House | Primary Applicant | disbursal.xlsx | repayment_instrument               | 443                                       |          |     |



  #FeatureID-ACAUTOCAS-11374
   #${ProductType:["IPF"]}
#${ApplicationStage:["Disbursal","POST APPROVAL"]}
  #${ApplicantType:["indiv"]}
  #PQM-11_CAS-209816,PQM-17_CAS-209816
Scenario Outline: ACAUTOCAS-17361:Verify <Repayment_Instrument> Repayment Instruments at <ApplicationStage> stage for a <ProductType> application
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user open repayment instrument details
    And user reads data from the excel file "<DisbursalWB>" under sheet "<Disbursal_RepaymentInstrumentSheet>" and row <Disbursal_RepaymentInstrumentSheet_rowNum>
    When user selects repayment instrument type as "<Repayment_Instrument>"
    Then "<Repayment_Instrument>" should be available at <ApplicationStage>
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | DisbursalWB    | Disbursal_RepaymentInstrumentSheet | Disbursal_RepaymentInstrumentSheet_rowNum | Repayment_Instrument | Category     | Key   | Category |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | disbursal.xlsx | repayment_instrument               | 424                                       | Auto Debit           | Manufacturer | saved | bonds    |

      #FeatureID-ACAUTOCAS-11374
  #PQM-11_CAS-209816,PQM-17_CAS-209816, #PQM-5_CAS-209816
Scenario Outline: ACAUTOCAS-17361:Verify <Repayment_Instrument> Repayment Instruments at <ApplicationStage> stage for a <ProductType> application
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user open repayment instrument details
    And user reads data from the excel file "<DisbursalWB>" under sheet "<Disbursal_RepaymentInstrumentSheet>" and row <Disbursal_RepaymentInstrumentSheet_rowNum>
    And user selects repayment instrument type as "<Repayment_Instrument>"
    And user selects applicant as "<Applicant_Type>"
    When user open repayment instrument fields to add details
    Then Repayment Instrument Page should open for "<Repayment_Instrument>" as Repayment Instruments
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | DisbursalWB    | Disbursal_RepaymentInstrumentSheet | Disbursal_RepaymentInstrumentSheet_rowNum | Repayment_Instrument | Category     | Key   | Category | Applicant_Type |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | disbursal.xlsx | repayment_instrument               | 424                                       | Auto Debit           | Manufacturer | saved | bonds    |                |


     #FeatureID-ACAUTOCAS-11374
   #${ProductType:["IPF"]}
#${ApplicationStage:["Disbursal","POST APPROVAL"]}
  #${ApplicantType:["indiv"]}
  #PQM-6_CAS-209816
Scenario Outline: ACAUTOCAS-17362:Verify <Fields> in <Repayment_Instrument> Repayment Instruments page at <ApplicationStage> stage for a <ProductType> application
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user open repayment instrument details
    And user reads data from the excel file "<DisbursalWB>" under sheet "<Disbursal_RepaymentInstrumentSheet>" and row <Disbursal_RepaymentInstrumentSheet_rowNum>
    And user selects repayment instrument type as "<Repayment_Instrument>"
    And user selects applicant as "<Applicant_Type>"
    When user open repayment instrument fields to add details
    Then "<Fields>" should be hidden for "<Repayment_Instrument>" Repayment Instruments
    Examples:
      | Fields                       | ProductType   | ApplicationStage   | ApplicantType   | DisbursalWB    | Disbursal_RepaymentInstrumentSheet | Disbursal_RepaymentInstrumentSheet_rowNum | Repayment_Instrument | Category     | Key   | Category | Applicant_Type |
      | BAR CODE                     | <ProductType> | <ApplicationStage> | <ApplicantType> | disbursal.xlsx | repayment_instrument               | 424                                       | Auto Debit           | Manufacturer | saved | bonds    |                |
      | Banking Location             | <ProductType> | <ApplicationStage> | <ApplicantType> | disbursal.xlsx | repayment_instrument               | 424                                       | Auto Debit           | Manufacturer | saved | bonds    |                |
      | IFSC CODE                    | <ProductType> | <ApplicationStage> | <ApplicantType> | disbursal.xlsx | repayment_instrument               | 424                                       | Auto Debit           | Manufacturer | saved | bonds    |                |
      | Bank Branch Identifier(MICR) | <ProductType> | <ApplicationStage> | <ApplicantType> | disbursal.xlsx | repayment_instrument               | 424                                       | Auto Debit           | Manufacturer | saved | bonds    |                |


     #PQM-38_CAS-209816
  #${ProductType:["IPF"]}
#${ApplicationStage:["Disbursal","POST APPROVAL"]}
  #${ApplicantType:["indiv"]}
Scenario Outline: ACAUTOCAS-17363: <Repayment_Instrument> Repayment Instruments should be saved at <ApplicationStage> stage for <ProductType> Application
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<category>" with "" from application grid
    And user updates the bank details as per "<Repayment_Instrument>" for "<ApplicationStage>"
    And user open repayment instrument details
    And user reads data from the excel file "<DisbursalWB>" under sheet "<Disbursal_RepaymentInstrumentSheet>" and row <Disbursal_RepaymentInstrumentSheet_rowNum>
    And user selects repayment instrument type as "<Repayment_Instrument>"
    And user selects applicant as "<Applicant_Type>"
    And user open repayment instrument fields to add details
    When user "<Action>" repayment instrument detail with repayment instrument type as "<Repayment_Instrument>"
    Then Details page should be open with Repayment Instruments type as "<Repayment_Instrument>"
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | DisbursalWB    | Disbursal_RepaymentInstrumentSheet | Disbursal_RepaymentInstrumentSheet_rowNum | Repayment_Instrument              | Action | Applicant_Type    | category |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | disbursal.xlsx | repayment_instrument               | 457                                       | Post Dated Cheque                 | Add    | Primary Applicant | bonds    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | disbursal.xlsx | repayment_instrument               | 424                                       | Auto Debit                        | Add    | Primary Applicant | bonds    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | disbursal.xlsx | repayment_instrument               | 437                                       | Electronic Clearence System       | Add    | Primary Applicant | bonds    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | disbursal.xlsx | repayment_instrument               | 443                                       | National Automated Cleaning House | Add    | Primary Applicant | bonds    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | disbursal.xlsx | repayment_instrument               | 431                                       | Post Dated Cheque                 | Add    | Primary Applicant | bonds    |


  #PQM-15_CAS-209816,#PQM-39_CAS-209816, #PQM-40_CAS-209816,#PQM-7_CAS-209816,#PQM-8_CAS-209816,
  #${ProductType:["IPF"]}
#${ApplicationStage:["Disbursal","POST APPROVAL"]}
  #${ApplicantType:["indiv"]}
Scenario Outline: ACAUTOCAS-17363: <Repayment_Instrument> Repayment Instruments should be saved at <ApplicationStage> stage for <ProductType> Application
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<category>" with "" from application grid
    And user updates the bank details as per "<Repayment_Instrument>" for "<ApplicationStage>"
    And user open repayment instrument details
    And user reads data from the excel file "<DisbursalWB>" under sheet "<Disbursal_RepaymentInstrumentSheet>" and row <Disbursal_RepaymentInstrumentSheet_rowNum>
    And user selects repayment instrument type as "<Repayment_Instrument>"
    And user selects applicant as "<Applicant_Type>"
    And user open repayment instrument fields to add details
    When user "<Action>" repayment instrument detail with repayment instrument type as "<Repayment_Instrument>"
    Then "<Repayment_Instrument>" Repayment Instruments should be saved successfully
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | DisbursalWB    | Disbursal_RepaymentInstrumentSheet | Disbursal_RepaymentInstrumentSheet_rowNum | Repayment_Instrument              | Action | Applicant_Type    | category |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | disbursal.xlsx | repayment_instrument               | 457                                       | Post Dated Cheque                 | Add    | Primary Applicant | bonds    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | disbursal.xlsx | repayment_instrument               | 424                                       | Auto Debit                        | Add    | Primary Applicant | bonds    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | disbursal.xlsx | repayment_instrument               | 437                                       | Electronic Clearence System       | Add    | Primary Applicant | bonds    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | disbursal.xlsx | repayment_instrument               | 443                                       | National Automated Cleaning House | Add    | Primary Applicant | bonds    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | disbursal.xlsx | repayment_instrument               | 431                                       | Post Dated Cheque                 | Add    | Primary Applicant | bonds    |





     #PQM-18_CAS-209816, #PQM-23_CAS-209816
  #${ProductType:["IPF"]}
#${ApplicationStage:["Disbursal","POST APPROVAL"]}
  #${ApplicantType:["indiv"]}
Scenario Outline: ACAUTOCAS-17364:<Fields> will get populate for <Repayment_Instrument> Repayment Instruments at <ApplicationStage> stage for <ProductType> Application
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<category>" with "" from application grid
    And user updates the bank details as per "<Repayment_Instrument>" for "<ApplicationStage>"
    And user open repayment instrument details
    And user reads data from the excel file "<DisbursalWB>" under sheet "<Disbursal_RepaymentInstrumentSheet>" and row <Disbursal_RepaymentInstrumentSheet_rowNum>
    And user selects repayment instrument type as "<Repayment_Instrument>"
    And user selects applicant as "<Applicant_Type>"
    And user open repayment instrument fields to add details
    When user "<Action>" repayment instrument detail with repayment instrument type as "<Repayment_Instrument>"
    Then "<Fields>" code should auto populate in Repayment Instruments as "<Repayment_Instrument>"
    Examples:
      | Fields | ProductType   | ApplicationStage   | ApplicantType   | DisbursalWB    | Disbursal_RepaymentInstrumentSheet | Disbursal_RepaymentInstrumentSheet_rowNum | Repayment_Instrument | Action | Applicant_Type    | category |
      | Bank   | <ProductType> | <ApplicationStage> | <ApplicantType> | disbursal.xlsx | repayment_instrument               | 457                                       | Post Dated Cheque    | Add    | Primary Applicant | bonds    |
      | Branch | <ProductType> | <ApplicationStage> | <ApplicantType> | disbursal.xlsx | repayment_instrument               | 457                                       | Post Dated Cheque    | Add    | Primary Applicant | bonds    |



       #PQM-19_CAS-209816,#PQM-9_CAS-209816
  #${ProductType:["IPF"]}
#${ApplicationStage:["Disbursal","POST APPROVAL"]}
  #${ApplicantType:["indiv"]}
Scenario Outline: ACAUTOCAS-17365:All the details of <Repayment_Instrument> repayment instrument should be in view mode while searching application in Enquiry screen
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<category>" with "" from application grid
    And user updates the bank details as per "<Repayment_Instrument>" for "<ApplicationStage>"
    And user open repayment instrument details
    And user reads data from the excel file "<DisbursalWB>" under sheet "<Disbursal_RepaymentInstrumentSheet>" and row <Disbursal_RepaymentInstrumentSheet_rowNum>
    And user selects repayment instrument type as "<Repayment_Instrument>"
    And user selects applicant as "<Applicant_Type>"
    And user open repayment instrument fields to add details
    And user "<Action>" repayment instrument detail with repayment instrument type as "<Repayment_Instrument>"
    And user navigates to Enquiry screen menu option
    And user searches for an application on enquiry screen
    When user clicks on stage hyperlink on enquiry screen
    Then All the details of <Repayment_Instrument> repayment instrument should be in view mode
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | DisbursalWB    | Disbursal_RepaymentInstrumentSheet | Disbursal_RepaymentInstrumentSheet_rowNum | Repayment_Instrument | Action | Applicant_Type    | category |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | disbursal.xlsx | repayment_instrument               | 457                                       | Post Dated Cheque    | Add    | Primary Applicant | bonds    |




       #PQM-44_CAS-209816, #PQM-42_CAS-209816,
Scenario Outline: ACAUTOCAS-17366: External bank record get created sucessfully
    And user logged in "Common Masters" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<category>" with "" from application grid
    And user updates the bank details as per "<Repayment_Instrument>" for "<ApplicationStage>"
    And user open repayment instrument details
    And user reads data from the excel file "<DisbursalWB>" under sheet "<Disbursal_RepaymentInstrumentSheet>" and row <Disbursal_RepaymentInstrumentSheet_rowNum>
    And user selects repayment instrument type as "<Repayment_Instrument>"
    And user selects applicant as "<Applicant_Type>"
    And user open repayment instrument fields to add details
    And user "<Action>" repayment instrument detail with repayment instrument type as "<Repayment_Instrument>"
    And user navigates to Enquiry screen menu option
    And user searches for an application on enquiry screen
    When user clicks on stage hyperlink on enquiry screen
    Then All the details of <Repayment_Instrument> repayment instrument should be in view mode
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | DisbursalWB    | Disbursal_RepaymentInstrumentSheet | Disbursal_RepaymentInstrumentSheet_rowNum | Repayment_Instrument | Action | Applicant_Type    | category |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | disbursal.xlsx | repayment_instrument               | 457                                       | Post Dated Cheque    | Add    | Primary Applicant | bonds    |










