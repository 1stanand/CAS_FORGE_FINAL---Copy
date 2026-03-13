##commented by Anshu on 06-AUg-25 as these files already merged in Build Branch
#
#@Epic-
#@AuthoredBy-gunjan.tomar
#@ReviewedBy-
#@TechReviewedBy-
#@ImplementedBy-
##EpicID-
##StoryID-CAS-236003, CAS-230471
#
#@NotImplemented
#
#Feature: ESign and Estamping Process
#
#  Background:   Given user is on the CAS Login Page
#    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
#
## ${ProductType:["Agriculture Loan", "AL", "CEQ", "CV", "EL", "FEQ", "HL", "LAP", "MHF", "Multi Facility", "PL", "GL", "FAS", "KCC", "CC", "Omni", "SHG", "JLG"]}
## ${ApplicationStage:["Lead Details", "DDE", "Credit Approval", "Recommendation", "Reconsideration", "Tranche Approval", "CLM", "FDE", "FI", "TI", "Renewal"]}
## ${ApplicantType:["Indiv","Non-Indiv"]}
## Prerequisite: A workflow configuration for <ProductType> at <ApplicationStage> with mode "Edit"
#
#  Scenario Outline: Display E-Sign tab for <ApplicationStage> for <ProductType> for <ApplicantType>
#    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
#    When the user opens the E Sign tab
#    Then the tab should be visible with editable initiate E Sign button
#    Examples:
#      |ProductType  |ApplicantType   |ApplicationStage    |Category	|Key	|
#      |<ProductType>|<ApplicantType> |<ApplicationStage>  |		    |	    |
#
## ${ProductType:["Agriculture Loan", "AL", "CEQ", "CV", "EL", "FEQ", "HL", "LAP", "MHF", "Multi Facility", "PL", "GL", "FAS", "KCC", "CC", "Omni", "SHG", "JLG"]}
## ${ApplicationStage:["Lead Details", "DDE", "Credit Approval", "Recommendation", "Reconsideration", "Tranche Approval", "CLM", "FDE", "FI", "TI", "Renewal"]}
## ${ApplicantType:["Indiv","Non-Indiv"]}
## Prerequisite: OGNL named "ESTAMP_AMOUNT_CALC_ProductType" is configured in Assignment Matrix
#
#  Scenario Outline: OGNL configured for <ApplicationStage> for <ProductType> for <ApplicantType>
#    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
#    When user opens the E Sign tab
#    Then the denomination amount should be auto-populated
#    Examples:
#      |ProductType  |ApplicantType   |ApplicationStage    |Category	|Key	|
#      |<ProductType>|<ApplicantType> |<ApplicationStage>  |		    |	    |
#
## ${ProductType:["Agriculture Loan", "AL", "CEQ", "CV", "EL", "FEQ", "HL", "LAP", "MHF", "Multi Facility", "PL", "GL", "FAS", "KCC", "CC", "Omni", "SHG", "JLG"]}
## ${ApplicationStage:["Lead Details", "DDE", "Credit Approval", "Recommendation", "Reconsideration", "Tranche Approval", "CLM", "FDE", "FI", "TI", "Renewal"]}
## ${ApplicantType:["Indiv","Non-Indiv"]}
## Prerequisite: OGNL named "ESTAMP_AMOUNT_CALC_ProductType" is not configured in Assignment Matrix
#
#  Scenario Outline: OGNL not configured for <ApplicationStage> for <ProductType> for <ApplicantType>
#    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
#    When user opens the E Sign tab
#    Then the denomination amount should not be auto populated
#    Examples:
#      |ProductType  |ApplicantType   |ApplicationStage    |Category	|Key	|
#      |<ProductType>|<ApplicantType> |<ApplicationStage>  |		    |	    |
#
## ${ProductType:["Agriculture Loan", "AL", "CEQ", "CV", "EL", "FEQ", "HL", "LAP", "MHF", "Multi Facility", "PL", "GL", "FAS", "KCC", "CC", "Omni", "SHG", "JLG"]}
## ${ApplicationStage:["Lead Details", "DDE", "Credit Approval", "Recommendation", "Reconsideration", "Tranche Approval", "CLM", "FDE", "FI", "TI", "Renewal"]}
## ${ApplicantType:["Indiv","Non-Indiv"]}
## Prerequisite: No neo document mapping is maintained in master
#
#  Scenario Outline: Neo document mapping maintained for <ApplicationStage> for <ProductType> for <ApplicantType>
#    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
#    When the user initiates E Stamp in E sign tab
#    Then validation should appear
#    Examples:
#      |ProductType  |ApplicantType   |ApplicationStage    |Category	|Key	|
#      |<ProductType>|<ApplicantType> |<ApplicationStage>  |		    |	    |
#
## ${ProductType:["Agriculture Loan", "AL", "CEQ", "CV", "EL", "FEQ", "HL", "LAP", "MHF", "Multi Facility", "PL", "GL", "FAS", "KCC", "CC", "Omni", "SHG", "JLG"]}
## ${ApplicationStage:["Lead Details", "DDE", "Credit Approval", "Recommendation", "Reconsideration", "Tranche Approval", "CLM", "FDE", "FI", "TI", "Renewal"]}
## ${ApplicantType:["Indiv","Non-Indiv"]}
## Prerequisite: incorrect neo document mapping name "WRONG_DOC" is maintained in master
#
#  Scenario Outline: Wrong neo document mapping maintained for <ApplicationStage> for <ProductType> for <ApplicantType>
#    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
#    When the user initiates E Stamp in E sign tab
#    Then validation should appear
#    Examples:
#      |ProductType  |ApplicantType   |ApplicationStage    |Category	|Key	|
#      |<ProductType>|<ApplicantType> |<ApplicationStage>  |		    |	    |
#
## ${ProductType:["Agriculture Loan", "AL", "CEQ", "CV", "EL", "FEQ", "HL", "LAP", "MHF", "Multi Facility", "PL", "GL", "FAS", "KCC", "CC", "Omni", "SHG", "JLG"]}
## ${ApplicationStage:["Lead Details", "DDE", "Credit Approval", "Recommendation", "Reconsideration", "Tranche Approval", "CLM", "FDE", "FI", "TI", "Renewal"]}
## ${ApplicantType:["Indiv","Non-Indiv"]}
## Prerequisite: esign configuration is maintained with rule set to "true" at DDE stage for Home Loan and signing authority is "Primary"
#
#  Scenario Outline: Esign configuration with rule true for <ApplicationStage> for <ProductType> for <ApplicantType>
#    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
#    When user initiates E Stamp in E sign tab
#    Then the system should allow initiation from E-Sign tab
#    Examples:
#      |ProductType  |ApplicantType   |ApplicationStage    |Category	|Key	|
#      |<ProductType>|<ApplicantType> |<ApplicationStage>  |		    |	    |
#
## ${ProductType:["Agriculture Loan", "AL", "CEQ", "CV", "EL", "FEQ", "HL", "LAP", "MHF", "Multi Facility", "PL", "GL", "FAS", "KCC", "CC", "Omni", "SHG", "JLG"]}
## ${ApplicationStage:["Lead Details", "DDE", "Credit Approval", "Recommendation", "Reconsideration", "Tranche Approval", "CLM", "FDE", "FI", "TI", "Renewal"]}
## ${ApplicantType:["Indiv","Non-Indiv"]}
## Prerequisite: esign configuration is maintained with rule set to "false"
#
#  Scenario Outline: Esign configuration with rule true for <ApplicationStage> for <ProductType> for <ApplicantType>
#    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
#    When user initiates E Stamp
#    Then the system should prevent initiation
#    Examples:
#      |ProductType  |ApplicantType   |ApplicationStage    |Category	|Key	|
#      |<ProductType>|<ApplicantType> |<ApplicationStage>  |		    |	    |
#
#
## ${ProductType:["Agriculture Loan", "AL", "CEQ", "CV", "EL", "FEQ", "HL", "LAP", "MHF", "Multi Facility", "PL", "GL", "FAS", "KCC", "CC", "Omni", "SHG", "JLG"]}
## ${ApplicationStage:["Lead Details", "DDE", "Credit Approval", "Recommendation", "Reconsideration", "Tranche Approval", "CLM", "FDE", "FI", "TI", "Renewal"]}
## ${ApplicantType:["Indiv","Non-Indiv"]}
## Prerequisite: the document "CAM_REPORT" is configured with matrix data
#
#  Scenario Outline: Select document with valid matrix data for <ApplicationStage> for <ProductType> for <ApplicantType>
#    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
#    When the user selects the document in E Sign tab
#    Then "<Fields>" should auto populate
#    |Fields      |
#    |Denomination|
#    |State       |
#    Examples:
#      |ProductType  |ApplicantType   |ApplicationStage    |Category	|Key	|
#      |<ProductType>|<ApplicantType> |<ApplicationStage>  |		    |	    |
#
#
## ${ProductType:["Agriculture Loan", "AL", "CEQ", "CV", "EL", "FEQ", "HL", "LAP", "MHF", "Multi Facility", "PL", "GL", "FAS", "KCC", "CC", "Omni", "SHG", "JLG"]}
## ${ApplicationStage:["Lead Details", "DDE", "Credit Approval", "Recommendation", "Reconsideration", "Tranche Approval", "CLM", "FDE", "FI", "TI", "Renewal"]}
## ${ApplicantType:["Indiv","Non-Indiv"]}
## Prerequisite: the document "LOAN_AGREEMENT" is not configured with matrix data
#
#  Scenario Outline: Select document without valid matrix data for <ApplicationStage> for <ProductType> for <ApplicantType>
#    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
#    And user open E Sign tab
#    When the user selects the document
#    Then a validation message should appear
#    Examples:
#      |ProductType  |ApplicantType   |ApplicationStage    |Category	|Key	|
#      |<ProductType>|<ApplicantType> |<ApplicationStage>  |		    |	    |
#
## ${ProductType:["Agriculture Loan", "AL", "CEQ", "CV", "EL", "FEQ", "HL", "LAP", "MHF", "Multi Facility", "PL", "GL", "FAS", "KCC", "CC", "Omni", "SHG", "JLG"]}
## ${ApplicationStage:["Lead Details", "DDE", "Credit Approval", "Recommendation", "Reconsideration", "Tranche Approval", "CLM", "FDE", "FI", "TI", "Renewal"]}
## ${ApplicantType:["Indiv","Non-Indiv"]}
## Prerequisite: the document fields are pre-filled
#
#  Scenario Outline: Check editable fields upon checkbox selection for <ApplicationStage> for <ProductType> for <ApplicantType>
#    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
#    And user open E Sign tab
#    When the user checks the checkbox change
#    Then the "Fields" should be in editable mode
#    |Fields      |
#    |State       |
#    |Denomination|
#    Examples:
#      |ProductType  |ApplicantType   |ApplicationStage    |Category	|Key	|
#      |<ProductType>|<ApplicantType> |<ApplicationStage>  |		    |	    |
#
#
## ${ProductType:["Agriculture Loan", "AL", "CEQ", "CV", "EL", "FEQ", "HL", "LAP", "MHF", "Multi Facility", "PL", "GL", "FAS", "KCC", "CC", "Omni", "SHG", "JLG"]}
## ${ApplicationStage:["Lead Details", "DDE", "Credit Approval", "Recommendation", "Reconsideration", "Tranche Approval", "CLM", "FDE", "FI", "TI", "Renewal"]}
## ${ApplicantType:["Indiv","Non-Indiv"]}
## Prerequisite: the document fields are pre-filled
#
#  Scenario Outline: Check non editable fields upon checkbox un selection for <ApplicationStage> for <ProductType> for <ApplicantType>
#    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
#    And user open E Sign tab
#    When the user unchecks the checkbox change
#    Then the "Fields" original configured data should reappear in view mode
#      |Fields      |
#      |State       |
#      |Denomination|
#    Examples:
#      |ProductType  |ApplicantType   |ApplicationStage    |Category	|Key	|
#      |<ProductType>|<ApplicantType> |<ApplicationStage>  |		    |	    |
#
## ${ProductType:["Agriculture Loan", "AL", "CEQ", "CV", "EL", "FEQ", "HL", "LAP", "MHF", "Multi Facility", "PL", "GL", "FAS", "KCC", "CC", "Omni", "SHG", "JLG"]}
## ${ApplicationStage:["Lead Details", "DDE", "Credit Approval", "Recommendation", "Reconsideration", "Tranche Approval", "CLM", "FDE", "FI", "TI", "Renewal"]}
## ${ApplicantType:["Indiv","Non-Indiv"]}
## Prerequisite: valid state "Maharashtra" and denomination "1000" are selected
#
#  Scenario Outline: Initiate E-Stamping with valid data for <ApplicationStage> for <ProductType> for <ApplicantType>
#    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
#    And user open E Sign tab
#    When the user clicks on initiate E Stamping
#    Then the document should be initiated successfully
#    Examples:
#      |ProductType  |ApplicantType   |ApplicationStage    |Category	|Key	|
#      |<ProductType>|<ApplicantType> |<ApplicationStage>  |		    |	    |
#
## ${ProductType:["Agriculture Loan", "AL", "CEQ", "CV", "EL", "FEQ", "HL", "LAP", "MHF", "Multi Facility", "PL", "GL", "FAS", "KCC", "CC", "Omni", "SHG", "JLG"]}
## ${ApplicationStage:["Lead Details", "DDE", "Credit Approval", "Recommendation", "Reconsideration", "Tranche Approval", "CLM", "FDE", "FI", "TI", "Renewal"]}
## ${ApplicantType:["Indiv","Non-Indiv"]}
## Prerequisite: no state or denomination is selected
#
#  Scenario Outline: Initiate E-Stamping without selecting state or denomination for <ApplicationStage> for <ProductType> for <ApplicantType>
#    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
#    And user open E Sign tab
#    When the user clicks on initiate E Stamping
#    Then a validation should appear
#    Examples:
#      |ProductType  |ApplicantType   |ApplicationStage    |Category	|Key	|
#      |<ProductType>|<ApplicantType> |<ApplicationStage>  |		    |	    |
#
## ${ProductType:["Agriculture Loan", "AL", "CEQ", "CV", "EL", "FEQ", "HL", "LAP", "MHF", "Multi Facility", "PL", "GL", "FAS", "KCC", "CC", "Omni", "SHG", "JLG"]}
## ${ApplicationStage:["Lead Details", "DDE", "Credit Approval", "Recommendation", "Reconsideration", "Tranche Approval", "CLM", "FDE", "FI", "TI", "Renewal"]}
## ${ApplicantType:["Indiv","Non-Indiv"]}
## Prerequisite: the E-Stamping was successfully initiated for document
#
#  Scenario Outline: View status of E-Stamping doc after successful initiation for <ApplicationStage> for <ProductType> for <ApplicantType>
#    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
#    And user open E Sign tab
#    When user views document status
#    Then "<Field>" should be shown
#    |Field|
#    |State|
#    |Requested Amount|
#    |Accepted Amount |
#    Examples:
#      |ProductType  |ApplicantType   |ApplicationStage    |Category	|Key	|
#      |<ProductType>|<ApplicantType> |<ApplicationStage>  |		    |	    |
#
#
## ${ProductType:["Agriculture Loan", "AL", "CEQ", "CV", "EL", "FEQ", "HL", "LAP", "MHF", "Multi Facility", "PL", "GL", "FAS", "KCC", "CC", "Omni", "SHG", "JLG"]}
## ${ApplicationStage:["Lead Details", "DDE", "Credit Approval", "Recommendation", "Reconsideration", "Tranche Approval", "CLM", "FDE", "FI", "TI", "Renewal"]}
## ${ApplicantType:["Indiv","Non-Indiv"]}
## Prerequisite: the E-Stamping was successfully initiated for document
#
#  Scenario Outline: View status of E-Signing doc after successful initiation for <ApplicationStage> for <ProductType> for <ApplicantType>
#    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
#    And user open E Sign tab
#    When user views document status
#    Then "<Field>" should not be shown
#      |Field|
#      |State|
#      |Requested Amount|
#      |Accepted Amount |
#    Examples:
#      |ProductType  |ApplicantType   |ApplicationStage    |Category	|Key	|
#      |<ProductType>|<ApplicantType> |<ApplicationStage>  |		    |	    |
#
## ${ProductType:["Agriculture Loan", "AL", "CEQ", "CV", "EL", "FEQ", "HL", "LAP", "MHF", "Multi Facility", "PL", "GL", "FAS", "KCC", "CC", "Omni", "SHG", "JLG"]}
## ${ApplicationStage:["Lead Details", "DDE", "Credit Approval", "Recommendation", "Reconsideration", "Tranche Approval", "CLM", "FDE", "FI", "TI", "Renewal"]}
## ${ApplicantType:["Indiv","Non-Indiv"]}
## Prerequisite: a document exists with initiated status
#
#  Scenario Outline: Fetch latest status of document for <ApplicationStage> for <ProductType> for <ApplicantType>
#    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
#    And user open E Sign tab
#    When user fetches latest status
#    Then the system should display the latest status as COMPLETED
#    Examples:
#      |ProductType  |ApplicantType   |ApplicationStage    |Category	|Key	|
#      |<ProductType>|<ApplicantType> |<ApplicationStage>  |		    |	    |
#
#
## ${ProductType:["Agriculture Loan", "AL", "CEQ", "CV", "EL", "FEQ", "HL", "LAP", "MHF", "Multi Facility", "PL", "GL", "FAS", "KCC", "CC", "Omni", "SHG", "JLG"]}
## ${ApplicationStage:["Lead Details", "DDE", "Credit Approval", "Recommendation", "Reconsideration", "Tranche Approval", "CLM", "FDE", "FI", "TI", "Renewal"]}
## ${ApplicantType:["Indiv","Non-Indiv"]}
## Prerequisite: a document exists with initiated status
#
#  Scenario Outline: Fetch latest status of document for <ApplicationStage> for <ProductType> for <ApplicantType>
#    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
#    And user open E Sign tab
#    When user fetches latest status
#    Then the system should display the latest status as COMPLETED
#    Examples:
#      |ProductType  |ApplicantType   |ApplicationStage    |Category	|Key	|
#      |<ProductType>|<ApplicantType> |<ApplicationStage>  |		    |	    |
#
## ${ProductType:["Agriculture Loan", "AL", "CEQ", "CV", "EL", "FEQ", "HL", "LAP", "MHF", "Multi Facility", "PL", "GL", "FAS", "KCC", "CC", "Omni", "SHG", "JLG"]}
## ${ApplicationStage:["Lead Details", "DDE", "Credit Approval", "Recommendation", "Reconsideration", "Tranche Approval", "CLM", "FDE", "FI", "TI", "Renewal"]}
## ${ApplicantType:["Indiv","Non-Indiv"]}
## Prerequisite: the user does not have permission to access E-Sign
#
#  Scenario Outline: User without permission tries to access E-Sign tab for <ApplicationStage> for <ProductType> for <ApplicantType>
#    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
#    When the user search application
#    Then the E Sign tab should not be visible
#    Examples:
#      |ProductType  |ApplicantType   |ApplicationStage    |Category	|Key	|
#      |<ProductType>|<ApplicantType> |<ApplicationStage>  |		    |	    |
#
## ${ProductType:["Agriculture Loan", "AL", "CEQ", "CV", "EL", "FEQ", "HL", "LAP", "MHF", "Multi Facility", "PL", "GL", "FAS", "KCC", "CC", "Omni", "SHG", "JLG"]}
## ${ApplicationStage:["Lead Details", "DDE", "Credit Approval", "Recommendation", "Reconsideration", "Tranche Approval", "CLM", "FDE", "FI", "TI", "Renewal"]}
## ${ApplicantType:["Indiv","Non-Indiv"]}
## Prerequisite: the previous E-Stamp request timed out
#
#  Scenario Outline: Retry E-Stamp initiation after timeout for <ApplicationStage> for <ProductType> for <ApplicantType>
#    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
#    And user open E Sign tab
#    When the user retries initiation
#    Then the system should resend the request along with confirmation upon success
#    Examples:
#      |ProductType  |ApplicantType   |ApplicationStage    |Category	|Key	|
#      |<ProductType>|<ApplicantType> |<ApplicationStage>  |		    |	    |
#
#
## ${ProductType:["Agriculture Loan", "AL", "CEQ", "CV", "EL", "FEQ", "HL", "LAP", "MHF", "Multi Facility", "PL", "GL", "FAS", "KCC", "CC", "Omni", "SHG", "JLG"]}
## ${ApplicationStage:["Lead Details", "DDE", "Credit Approval", "Recommendation", "Reconsideration", "Tranche Approval", "CLM", "FDE", "FI", "TI", "Renewal"]}
## ${ApplicantType:["Indiv","Non-Indiv"]}
## Prerequisite: the uploaded file is of format ".exe"
#
#  Scenario Outline: Upload unsupported file format for <ApplicationStage> for <ProductType> for <ApplicantType>
#    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
#    And user open E Sign tab
#    When the user tries to initiate E Sign
#    Then validation should appear
#    Examples:
#      |ProductType  |ApplicantType   |ApplicationStage    |Category	|Key	|
#      |<ProductType>|<ApplicantType> |<ApplicationStage>  |		    |	    |
#
## ${ProductType:["Agriculture Loan", "AL", "CEQ", "CV", "EL", "FEQ", "HL", "LAP", "MHF", "Multi Facility", "PL", "GL", "FAS", "KCC", "CC", "Omni", "SHG", "JLG"]}
## ${ApplicationStage:["Lead Details", "DDE", "Credit Approval", "Recommendation", "Reconsideration", "Tranche Approval", "CLM", "FDE", "FI", "TI", "Renewal"]}
## ${ApplicantType:["Indiv","Non-Indiv"]}
## Prerequisite: signer name is present but phone number and email are missing
#
#  Scenario Outline: E-Sign with missing signer data for <ApplicationStage> for <ProductType> for <ApplicantType>
#    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
#    And user open E Sign tab
#    When the user initiates E Sign
#    Then error should be shown
#    Examples:
#      |ProductType  |ApplicantType   |ApplicationStage    |Category	|Key	|
#      |<ProductType>|<ApplicantType> |<ApplicationStage>  |		    |	    |
#
## ${ProductType:["Agriculture Loan", "AL", "CEQ", "CV", "EL", "FEQ", "HL", "LAP", "MHF", "Multi Facility", "PL", "GL", "FAS", "KCC", "CC", "Omni", "SHG", "JLG"]}
## ${ApplicationStage:["Lead Details", "DDE", "Credit Approval", "Recommendation", "Reconsideration", "Tranche Approval", "CLM", "FDE", "FI", "TI", "Renewal"]}
## ${ApplicantType:["Indiv","Non-Indiv"]}
## Prerequisite: the document is already stamped
#
#  Scenario Outline: Multiple E-Stamp requests for same document for <ApplicationStage> for <ProductType> for <ApplicantType>
#    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
#    And user open E Sign tab
#    When user tries to initiate E Stamp again
#    Then error should be shown
#    Examples:
#      |ProductType  |ApplicantType   |ApplicationStage    |Category	|Key	|
#      |<ProductType>|<ApplicantType> |<ApplicationStage>  |		    |	    |
#
#
## ${ProductType:["Agriculture Loan", "AL", "CEQ", "CV", "EL", "FEQ", "HL", "LAP", "MHF", "Multi Facility", "PL", "GL", "FAS", "KCC", "CC", "Omni", "SHG", "JLG"]}
## ${ApplicationStage:["Lead Details", "DDE", "Credit Approval", "Recommendation", "Reconsideration", "Tranche Approval", "CLM", "FDE", "FI", "TI", "Renewal"]}
## ${ApplicantType:["Indiv","Non-Indiv"]}
## Prerequisite: ECM is down
#
#  Scenario Outline: E-Sign fails due to ECM downtime for <ApplicationStage> for <ProductType> for <ApplicantType>
#    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
#    And user open E Sign tab
#    When document is signed
#    Then system should retry storing in ECM along with logging error if retry fails
#    Examples:
#      |ProductType  |ApplicantType   |ApplicationStage    |Category	|Key	|
#      |<ProductType>|<ApplicantType> |<ApplicationStage>  |		    |	    |
#
#
## ${ProductType:["Agriculture Loan", "AL", "CEQ", "CV", "EL", "FEQ", "HL", "LAP", "MHF", "Multi Facility", "PL", "GL", "FAS", "KCC", "CC", "Omni", "SHG", "JLG"]}
## ${ApplicationStage:["Lead Details", "DDE", "Credit Approval", "Recommendation", "Reconsideration", "Tranche Approval", "CLM", "FDE", "FI", "TI", "Renewal"]}
## ${ApplicantType:["Indiv","Non-Indiv"]}
## Prerequisite: Assignment Matrix contains invalid OGNL expression
#
#  Scenario Outline: Invalid configuration in Assignment Matrix for <ApplicationStage> for <ProductType> for <ApplicantType>
#    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
#    And user open E Sign tab
#    When user initiates E Stamp
#    Then error should be shown
#    Examples:
#      |ProductType  |ApplicantType   |ApplicationStage    |Category	|Key	|
#      |<ProductType>|<ApplicantType> |<ApplicationStage>  |		    |	    |
#
#
## ${ProductType:["Agriculture Loan", "AL", "CEQ", "CV", "EL", "FEQ", "HL", "LAP", "MHF", "Multi Facility", "PL", "GL", "FAS", "KCC", "CC", "Omni", "SHG", "JLG"]}
## ${ApplicationStage:["Lead Details", "DDE", "Credit Approval", "Recommendation", "Reconsideration", "Tranche Approval", "CLM", "FDE", "FI", "TI", "Renewal"]}
## ${ApplicantType:["Indiv","Non-Indiv"]}
## Prerequisite: document is signed
#
#  Scenario Outline: View audit trail for initiated document for <ApplicationStage> for <ProductType> for <ApplicantType>
#    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
#    And user open E Sign tab
#    When user opens audit trail
#    Then all actions including "<Fields>" should be visible
#    |Fields|
#    |Signer Name|
#    |IP Address |
#    |TimeStamp  |
#    Examples:
#      |ProductType  |ApplicantType   |ApplicationStage    |Category	|Key	|
#      |<ProductType>|<ApplicantType> |<ApplicationStage>  |		    |	    |
#
## ${ProductType:["Agriculture Loan", "AL", "CEQ", "CV", "EL", "FEQ", "HL", "LAP", "MHF", "Multi Facility", "PL", "GL", "FAS", "KCC", "CC", "Omni", "SHG", "JLG"]}
## ${ApplicationStage:["Lead Details", "DDE", "Credit Approval", "Recommendation", "Reconsideration", "Tranche Approval", "CLM", "FDE", "FI", "TI", "Renewal"]}
## ${ApplicantType:["Indiv","Non-Indiv"]}
## Prerequisite: E-Sign is already initiated for signer
#
#  Scenario Outline:  Update signer name for ongoing E-Sign for <ApplicationStage> for <ProductType> for <ApplicantType>
#    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
#    And user open E Sign tab
#    When user updates name
#    And user clicks on initiate
#    Then validation should appear
#    Examples:
#      |ProductType  |ApplicantType   |ApplicationStage    |Category	|Key	|
#      |<ProductType>|<ApplicantType> |<ApplicationStage>  |		    |	    |
#
## ${ProductType:["Agriculture Loan", "AL", "CEQ", "CV", "EL", "FEQ", "HL", "LAP", "MHF", "Multi Facility", "PL", "GL", "FAS", "KCC", "CC", "Omni", "SHG", "JLG"]}
## ${ApplicationStage:["Lead Details", "DDE", "Credit Approval", "Recommendation", "Reconsideration", "Tranche Approval", "CLM", "FDE", "FI", "TI", "Renewal"]}
## ${ApplicantType:["Indiv","Non-Indiv"]}
## Prerequisite: user does not have edit authority on E-Sign document
#
#  Scenario Outline:  Unauthorized user tries to edit state and amount for <ApplicationStage> for <ProductType> for <ApplicantType>
#    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
#    And user open E Sign tab
#    When the user attempts to update state or amount
#    Then the system should show error message
#    Examples:
#      |ProductType  |ApplicantType   |ApplicationStage    |Category	|Key	|
#      |<ProductType>|<ApplicantType> |<ApplicationStage>  |		    |	    |
#
#
## ${ProductType:["Agriculture Loan", "AL", "CEQ", "CV", "EL", "FEQ", "HL", "LAP", "MHF", "Multi Facility", "PL", "GL", "FAS", "KCC", "CC", "Omni", "SHG", "JLG"]}
## ${ApplicationStage:["Lead Details", "DDE", "Credit Approval", "Recommendation", "Reconsideration", "Tranche Approval", "CLM", "FDE", "FI", "TI", "Renewal"]}
## ${ApplicantType:["Indiv","Non-Indiv"]}
## Prerequisite: loan amount is "50000" and user inputs E-Stamp amount as "60000"
#
#  Scenario Outline:  Validation on amount greater than loan amount for <ApplicationStage> for <ProductType> for <ApplicantType>
#    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
#    And user open E Sign tab
#    When user inputs E-Stamp amount as "60000"
#    Then validation error should be shown
#    Examples:
#      |ProductType  |ApplicantType   |ApplicationStage    |Category	|Key	|
#      |<ProductType>|<ApplicantType> |<ApplicationStage>  |		    |	    |
#
## ${ProductType:["Agriculture Loan", "AL", "CEQ", "CV", "EL", "FEQ", "HL", "LAP", "MHF", "Multi Facility", "PL", "GL", "FAS", "KCC", "CC", "Omni", "SHG", "JLG"]}
## ${ApplicationStage:["Lead Details", "DDE", "Credit Approval", "Recommendation", "Reconsideration", "Tranche Approval", "CLM", "FDE", "FI", "TI", "Renewal"]}
## ${ApplicantType:["Indiv","Non-Indiv"]}
## Prerequisite: document has history of state changes
#
#  Scenario Outline: View history of document state changes for <ApplicationStage> for <ProductType> for <ApplicantType>
#    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
#    And user open E Sign tab
#    When user views document history
#    Then all state changes with timestamps should be displayed
#    Examples:
#      |ProductType  |ApplicantType   |ApplicationStage    |Category	|Key	|
#      |<ProductType>|<ApplicantType> |<ApplicationStage>  |		    |	    |
#
## ${ProductType:["Agriculture Loan", "AL", "CEQ", "CV", "EL", "FEQ", "HL", "LAP", "MHF", "Multi Facility", "PL", "GL", "FAS", "KCC", "CC", "Omni", "SHG", "JLG"]}
## ${ApplicationStage:["Lead Details", "DDE", "Credit Approval", "Recommendation", "Reconsideration", "Tranche Approval", "CLM", "FDE", "FI", "TI", "Renewal"]}
## ${ApplicantType:["Indiv","Non-Indiv"]}
## Prerequisite: document has history of state changes
#
#  Scenario Outline: View history of document state changes for <ApplicationStage> for <ProductType> for <ApplicantType>
#    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
#    And user open E Sign tab
#    When user views document history
#    Then all state changes with timestamps should be displayed
#    Examples:
#      |ProductType  |ApplicantType   |ApplicationStage    |Category	|Key	|
#      |<ProductType>|<ApplicantType> |<ApplicationStage>  |		    |	    |
#
## ${ProductType:["Agriculture Loan", "AL", "CEQ", "CV", "EL", "FEQ", "HL", "LAP", "MHF", "Multi Facility", "PL", "GL", "FAS", "KCC", "CC", "Omni", "SHG", "JLG"]}
## ${ApplicationStage:["Lead Details", "DDE", "Credit Approval", "Recommendation", "Reconsideration", "Tranche Approval", "CLM", "FDE", "FI", "TI", "Renewal"]}
## ${ApplicantType:["Indiv","Non-Indiv"]}
## Prerequisite: E-Stamp initiation failed due to system error
#
#  Scenario Outline: Technical failure during E-Stamp initiation for <ApplicationStage> for <ProductType> for <ApplicantType>
#    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
#    And user open E Sign tab
#    When user retries initiation
#    Then system should re initiate the request successfully
#    Examples:
#      |ProductType  |ApplicantType   |ApplicationStage    |Category	|Key	|
#      |<ProductType>|<ApplicantType> |<ApplicationStage>  |		    |	    |
#
## ${ProductType:["Agriculture Loan", "AL", "CEQ", "CV", "EL", "FEQ", "HL", "LAP", "MHF", "Multi Facility", "PL", "GL", "FAS", "KCC", "CC", "Omni", "SHG", "JLG"]}
## ${ApplicationStage:["Lead Details", "DDE", "Credit Approval", "Recommendation", "Reconsideration", "Tranche Approval", "CLM", "FDE", "FI", "TI", "Renewal"]}
## ${ApplicantType:["Indiv","Non-Indiv"]}
## Prerequisite: document is in retry status
#
#  Scenario Outline: Check status of document in retry scenarios for <ApplicationStage> for <ProductType> for <ApplicantType>
#    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
#    And user open E Sign tab
#    When user fetches document status
#    Then system should display current status with retry count
#    Examples:
#      |ProductType  |ApplicantType   |ApplicationStage    |Category	|Key	|
#      |<ProductType>|<ApplicantType> |<ApplicationStage>  |		    |	    |
