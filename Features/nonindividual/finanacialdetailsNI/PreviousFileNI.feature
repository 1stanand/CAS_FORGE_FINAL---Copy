@Epic-Applicant_Information
@AuthoredBy-vipin.kishor
@ImplementedBy-aryan.jain
@Release3

Feature:Previous uploaded file in financial details

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0

# ${ ProductType : ["IHF","IPF","IAF","PF","MAL","HL","LAP","CV","MHL","FE","EDU","AGRL","JLG","CEQ","MULF","BD","CashCred","BL","LC","BG"]}
  # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
  #FeatureID-ACAUTOCAS-11456
  @Conventional @Release @Part-3
  Scenario Outline: ACAUTOCAS-13634: Check <Fields> in Previous file accordion in financial details for non individual applicant
    And user opens an application of "<ProductType>" product type as "nonindiv" applicant at "<ApplicationStage>" from application grid
    And user navigate to customer details screen on "<ApplicationStage>"
    And user open financial details for non individual
    When user open file upload accordion for file upload for non individual customer
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_fileUploadAndPreview>" and row <FinancialDetails_fileUploadAndPreview_rowNum>
    And user fills all fields of file upload preview
    And user browse the "Balance Sheet" file in which different "No. of Years(Audited)"
    And user upload the browsed file
    And user opens file upload accordion
    And user opens previous files accordion
    Then "<Fields>" of the file should be present
    Examples:
      | Fields        | ApplicationStage   | ProductType   | FinancialDetailsWB     | FinancialDetails_fileUploadAndPreview | FinancialDetails_fileUploadAndPreview_rowNum | Files_Type  |
      | Version       | <ApplicationStage> | <ProductType> | financial_details.xlsx | file_upload_and_preview               | 34                                           | appropriate |
      | File Name     | <ApplicationStage> | <ProductType> | financial_details.xlsx | file_upload_and_preview               | 34                                           | appropriate |
      | Document Type | <ApplicationStage> | <ProductType> | financial_details.xlsx | file_upload_and_preview               | 34                                           | appropriate |
      | Document Name | <ApplicationStage> | <ProductType> | financial_details.xlsx | file_upload_and_preview               | 34                                           | appropriate |
      | Remark        | <ApplicationStage> | <ProductType> | financial_details.xlsx | file_upload_and_preview               | 34                                           | appropriate |
      | Date Time     | <ApplicationStage> | <ProductType> | financial_details.xlsx | file_upload_and_preview               | 34                                           | appropriate |
      | Uploaded By    | <ApplicationStage> | <ProductType> | financial_details.xlsx | file_upload_and_preview               | 34                                           | appropriate |

# ${ ProductType : ["IHF","IPF","IAF","PF","MAL","HL","LAP","CV","MHL","FE","EDU","AGRL","JLG","CEQ","MULF","BD","CashCred","BL","LC","BG"]}
  # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
  #FeatureID-ACAUTOCAS-11456
  @Conventional @Release @Part-3
  Scenario Outline: ACAUTOCAS-13635:  Edit previous <DocumentType> file in financial details for non individual applicant
    And user opens an application of "<ProductType>" product type as "nonindiv" applicant at "<ApplicationStage>" from application grid
    And user navigate to customer details screen on "<ApplicationStage>"
    And user open financial details for non individual
    When user open file upload accordion for file upload for non individual customer
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_fileUploadAndPreview>" and row <FinancialDetails_fileUploadAndPreview_rowNum>
    And user fills all fields of file upload preview
    And user browse the "<DocumentType>" file in which different "No. of Years(Audited)"
    And user upload the browsed file
    And user opens file upload accordion
    And user opens previous files accordion
    And user clicks edit option in previous files
    And user Edit Online "<DocumentType>" document
    Then previous file should be edited successfully
    Examples:
      | DocumentType         | ApplicationStage   | ProductType   | FinancialDetailsWB     | FinancialDetails_fileUploadAndPreview | FinancialDetails_fileUploadAndPreview_rowNum |
      | Balance Sheet        | <ApplicationStage> | <ProductType> | financial_details.xlsx | file_upload_and_preview               | 34                                           |
      | Cash Flow            | <ApplicationStage> | <ProductType> | financial_details.xlsx | file_upload_and_preview               | 35                                           |
      | Funds Flow           | <ApplicationStage> | <ProductType> | financial_details.xlsx | file_upload_and_preview               | 36                                           |
      | Income/P&L Statement | <ApplicationStage> | <ProductType> | financial_details.xlsx | file_upload_and_preview               | 37                                           |

 # ${ ProductType : ["IHF","IPF","IAF","PF","MAL","HL","LAP","CV","MHL","FE","EDU","AGRL","JLG","CEQ","MULF","BD","CashCred","BL","LC","BG"]}
  # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
  #FeatureID-ACAUTOCAS-11456
  @Conventional @Release @Part-3
  Scenario Outline: ACAUTOCAS-13636:  Only latest version of previous <DocumentType> file can be edit in financial details for non individual applicant
    And user opens an application of "<ProductType>" product type as "nonindiv" applicant at "<ApplicationStage>" from application grid
    And user navigate to customer details screen on "<ApplicationStage>"
    And user open financial details for non individual
    When user open file upload accordion for file upload for non individual customer
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_fileUploadAndPreview>" and row <FinancialDetails_fileUploadAndPreview_rowNum>
    And user fills all fields of file upload preview
    And user browse the "<DocumentType>" file in which different "No. of Years(Audited)"
    And user upload the browsed file
    And user opens file upload accordion
    And user opens previous files accordion
    And user edit latest version of previous file
    And user Edit Online "<DocumentType>" document
    Then latest version of previous file should be edited successfully
    Examples:
      | DocumentType         | ApplicationStage   | ProductType   | FinancialDetailsWB     | FinancialDetails_fileUploadAndPreview | FinancialDetails_fileUploadAndPreview_rowNum |
      | Balance Sheet        | <ApplicationStage> | <ProductType> | financial_details.xlsx | file_upload_and_preview               | 34                                           |
      | Cash Flow            | <ApplicationStage> | <ProductType> | financial_details.xlsx | file_upload_and_preview               | 35                                           |
      | Funds Flow           | <ApplicationStage> | <ProductType> | financial_details.xlsx | file_upload_and_preview               | 36                                           |
      | Income/P&L Statement | <ApplicationStage> | <ProductType> | financial_details.xlsx | file_upload_and_preview               | 37                                           |


