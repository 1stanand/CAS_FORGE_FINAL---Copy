@Epic-Loan_Application_Details
@AuthoredBy-yash.sharma
@ImplementedBy-yash.sharma
@ReviewedBy-None
@TestPQMStories
@Part-2
Feature: E-Mandate Cancellation Handling

  Background:
    Given user is on CAS Login Page

  @CancelMandateConfig #false by default-true
    #PQM-21_CAS-193136
  #FeatureID-ACAUTOCAS-16525
  Scenario Outline: Verify Cancel Mandate Button Visibility after marking config.cancel.mandate.ack.number as false at <ApplicationStage> of <ProductType> for <Category>
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
    Then Cancel Mandate Button Should Not be there in Grid
    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["Disbursal","Post Approval"]}
    # ${ApplicantType:["indiv"]}
    @Islamic @DBConfig-1
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | FinalStage         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <ApplicationStage> |
     # ${ProductType:["IPF"]}
     # ${ApplicationStage:["Disbursal","Post Approval"]}
     # ${ApplicantType:["indiv"]}
    @Islamic @DBConfig-1
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key         | FinalStage         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Bonds    |             | <ApplicationStage> |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Metals   |             | <ApplicationStage> |
      | <ProductType> | <ApplicantType> | Reconsideration    | Shares   | isDisbursal | Disbursal          |

      #PQM-3_CAS-193154
  #FeatureID-ACAUTOCAS-16525
  Scenario Outline: Validate Cancel Mandate Button of Repayment Instrument at <FinalStage> of <ProductType> for <Category>
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
    Then Cancel Mandate Button Should Not be there in Grid
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


     #PQM-7_CAS-193154
  #FeatureID-ACAUTOCAS-16525
  Scenario Outline: Validate Cancel Mandate Button visible of Repayment Instrument at <FinalStage> of <ProductType> for <Category>
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
    And user navigates To Document Printing Tab
    And user open repayment instrument details
    Then Cancel Mandate Button Should be there in Grid
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

     #PQM-8_CAS-193154
  #FeatureID-ACAUTOCAS-16525
  Scenario Outline: Validate Cancel Mandate Modal of Repayment Instrument at <FinalStage> of <ProductType> for <Category>
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
    And user navigates To Document Printing Tab
    And user open repayment instrument details
    And user cancel Mandate for NACH
    Then Cancel Modal Should pop-up
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

    #PQM-10_CAS-193154
  #FeatureID-ACAUTOCAS-16525
  Scenario Outline: Validate Drop Down of Cancel Mandate Modal of Repayment Instrument at <FinalStage> of <ProductType> for <Category>
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
    And user navigates To Document Printing Tab
    And user open repayment instrument details
    And user cancel Mandate for NACH
    Then user should be able to see Reasons in the Drop Down
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


       #PQM-13_CAS-193154
  Scenario Outline: Validate Description Field for mandate cancellation at <FinalStage> of <ProductType> for <Category>
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
    And user navigates To Document Printing Tab
    And user open repayment instrument details
    And user cancel Mandate for NACH
    And user reads data from the excel file "disbursal.xlsx" under sheet "repayment_instrument" and row 458
    And user select reason in Cancel Mandate Modal
    Then Description field should be editable in Cancel Mandate Modal
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

     #PQM-15_CAS-193154
  Scenario Outline: Save same reasons for mandate cancellation at <FinalStage> of <ProductType> for <Category>
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
    And user cancel Mandate for NACH
    And user reads data from the excel file "disbursal.xlsx" under sheet "repayment_instrument" and row 458
    And user select multiple same reason and description for Cancel Mandate
    When user saves the Cancel Mandate Modal
    Then user should not be able to save the modal
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

      #PQM-35_CAS-193136
  #FeatureID-ACAUTOCAS-16525
  Scenario Outline: Cancel Mandate at <FinalStage> of <ProductType> for <Category>
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
    And user cancel Mandate for NACH
    And user reads data from the excel file "disbursal.xlsx" under sheet "repayment_instrument" and row 458
    And user select reason in Cancel Mandate Modal
    And user enter reason Description in Cancel Mandate Modal
    When user saves the Cancel Mandate Modal
    Then mandate should be cancelled
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

      #PQM-33_CAS-193154
  Scenario Outline: Verify Cancel Button from Hold Grid mandate cancellation at <FinalStage> of <ProductType> for <Category>
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
    And user exits the Applicant Details
    And user holds the application from exit option
    And user search for an application present of "<ProductType>" application at "<ApplicationStage>" stage in hold application grid
    When user open repayment instrument details
    Then Cancel Mandate Button Should be disabled
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

      #PQM-32_CAS-193154
  Scenario Outline: Verify Cancel Mandate Button from Enquiry Grid mandate cancellation at <FinalStage> of <ProductType> for <Category>
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
    And user search Application via Application Number from enquiry stage
    Then Cancel Mandate Button Should be disabled
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

      #PQM-31_CAS-193154
  Scenario Outline: Send back application and verify mandate cancellation at <FinalStage> of <ProductType> for <Category>
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
    And user reads data from the excel file "more_actions.xlsx" under sheet "send_back" and row 9
    When user send back above application to immediate preceding stage
    And user opens an application from "Credit Approval" from its respective grid
    Then Verify Mandate should be cancelled
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

        #PQM-41_CAS-193154
  Scenario Outline: Enter Different Description for Same Reason for mandate cancellation at <FinalStage> of <ProductType> for <Category>
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
    And user cancel Mandate for NACH
    And user reads data from the excel file "disbursal.xlsx" under sheet "repayment_instrument" and row 458
    And user select reason in Cancel Mandate Modal
    And user enter reason Description in Cancel Mandate Modal
    And user reads data from the excel file "disbursal.xlsx" under sheet "repayment_instrument" and row 459
    And user select reason in Cancel Mandate Modal
    And user enter reason Description in Cancel Mandate Modal
    When user saves the Cancel Mandate Modal
    Then mandate should be cancelled
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


    #PQM-18_CAS-193154,19_CAS-193154
  Scenario Outline:Reject application at <FinalStage> of <ProductType> for <Category>
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
    And user reads data from the excel file "more_actions.xlsx" under sheet "send_back" and row 12
    When user rejects application
    Then Application should be available on Rejected Application Grid
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


      #PQM-14_CAS-193154
  Scenario Outline: Validate Description Field AutoPopulate for Master Reason for mandate cancellation at <FinalStage> of <ProductType> for <Category>
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
    And user cancel Mandate for NACH
    And user reads data from the excel file "disbursal.xlsx" under sheet "repayment_instrument" and row 460
    When user select reason in Cancel Mandate Modal
    Then Description field should be Autopopulate with Correct Data
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


     #PQM-43_CAS-193154,40_CAS-193154
  Scenario Outline: Select 10 reasons for  mandate cancellation at <FinalStage> of <ProductType> for <Category>
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
    And user cancel Mandate for NACH
    And user selects "10" reasons for Mandate Cancellation
    When user saves the Cancel Mandate Modal
    Then mandate should be cancelled
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

     #PQM-17_CAS-193154,19_CAS-193136,20_CAS-193136
  Scenario Outline: Re-initiate Cancelled Mandate from Bulk Re-initiate Interface at <FinalStage> of <ProductType> for <Category>
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
    And user cancel Mandate for NACH
    When user navigate to bulk re-initiate
    And user re-initiate mandate from interface
    Then user should be able to re-initiate the mandate from interface
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


     #PQM-25_CAS-193136
  #FeatureID-ACAUTOCAS-16525
  Scenario Outline: Verify Cancel Mandate Button at <ApplicationStage> of <ProductType> for <Category>
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
    And user cancel Mandate for NACH
    And user reads data from the excel file "disbursal.xlsx" under sheet "repayment_instrument" and row 458
    And user select reason in Cancel Mandate Modal
    And user enter reason Description in Cancel Mandate Modal
    When user saves the Cancel Mandate Modal
    Then Validation should come for documents for Mandate Cancellation
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

     #PQM-31_CAS-193136
  #FeatureID-ACAUTOCAS-16525
  Scenario Outline: Verify Document Mandate Cancellation at <ApplicationStage> of <ProductType> for <Category>
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
    And user cancel Mandate for NACH
    And user reads data from the excel file "disbursal.xlsx" under sheet "repayment_instrument" and row 458
    And user select reason in Cancel Mandate Modal
    And user enter reason Description in Cancel Mandate Modal
    When user saves the Cancel Mandate Modal
    Then Validation should come for remaining document only for Mandate Cancellation
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