@Epic-Applicant_Information
@AppInfoAdoption
@AuthoredBy-vipin.kishor
@Reconciled
@ReviewedByDEV
@FixedTest28
#${ApplicantType:["indiv"]}
@Perishable
Feature:Previous uploaded file in financial details

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0

  #FeatureID-ACAUTOCAS-169
  Scenario Outline: ACAUTOCAS-9836: Check <Fields> in Previous file accordion in case of <Occupation> occupation type in file upload financial details at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user open Employment Details page on the basis of "<ApplicationStage>"
    And user reads data from the excel file "<EmploymentDetailsWB>" under sheet "<EmploymentDetails_home>" and row <EmploymentDetails_home_rowNum>
    And user fills employment details for "<Occupation>"
    And user open financial details
    When user open file upload accordion for file upload
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_fileUploadAndPreview>" and row <FinancialDetails_fileUploadAndPreview_rowNum>
    And user fills all fields of file upload preview
    And user browse the "Balance Sheet" file in which different "No. of Years(Audited)"
    And user upload the browsed file
    And user opens file upload accordion
    And user opens previous files accordion
    Then "<Fields>" of the file should be present

    # ${ProductType:["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL","FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    # ${Occupation:["Self Employed Professional","Self Employed Non Professional","Others"]}
    @Conventional
    @Release3
    @Release @Part-2
    @ImplementedBy-pallavi.singh
    Examples:
      | Occupation   | Fields        | ApplicationStage   | ProductType   | ApplicantType   | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_fileUploadAndPreview | FinancialDetails_fileUploadAndPreview_rowNum | Category | Key |
      | <Occupation> | Version       | <ApplicationStage> | <ProductType> | <ApplicantType> | employment_details.xlsx | home                   | 33                            | financial_details.xlsx | file_upload_and_preview               | 34                                           |          |     |
      | <Occupation> | File Name     | <ApplicationStage> | <ProductType> | <ApplicantType> | employment_details.xlsx | home                   | 33                            | financial_details.xlsx | file_upload_and_preview               | 34                                           |          |     |
      | <Occupation> | Document Type | <ApplicationStage> | <ProductType> | <ApplicantType> | employment_details.xlsx | home                   | 33                            | financial_details.xlsx | file_upload_and_preview               | 34                                           |          |     |
      | <Occupation> | Document Name | <ApplicationStage> | <ProductType> | <ApplicantType> | employment_details.xlsx | home                   | 33                            | financial_details.xlsx | file_upload_and_preview               | 34                                           |          |     |
      | <Occupation> | Remark        | <ApplicationStage> | <ProductType> | <ApplicantType> | employment_details.xlsx | home                   | 33                            | financial_details.xlsx | file_upload_and_preview               | 34                                           |          |     |
      | <Occupation> | Date Time     | <ApplicationStage> | <ProductType> | <ApplicantType> | employment_details.xlsx | home                   | 33                            | financial_details.xlsx | file_upload_and_preview               | 34                                           |          |     |
      | <Occupation> | Uploaded By   | <ApplicationStage> | <ProductType> | <ApplicantType> | employment_details.xlsx | home                   | 33                            | financial_details.xlsx | file_upload_and_preview               | 34                                           |          |     |

    # ${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    # ${Occupation:["Self Employed Professional","Self Employed Non Professional","Others"]}
    @Islamic
    @Release
    @Part-2
    @ImplementedBy-tanya
    Examples:
      | Occupation   | Fields        | ApplicationStage   | ProductType   | ApplicantType   | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_fileUploadAndPreview | FinancialDetails_fileUploadAndPreview_rowNum | Category | Key |
      | <Occupation> | Version       | <ApplicationStage> | <ProductType> | <ApplicantType> | employment_details.xlsx | home                   | 138                           | financial_details.xlsx | file_upload_and_preview               | 34                                           |          |     |
      | <Occupation> | File Name     | <ApplicationStage> | <ProductType> | <ApplicantType> | employment_details.xlsx | home                   | 138                           | financial_details.xlsx | file_upload_and_preview               | 34                                           |          |     |
      | <Occupation> | Document Type | <ApplicationStage> | <ProductType> | <ApplicantType> | employment_details.xlsx | home                   | 138                           | financial_details.xlsx | file_upload_and_preview               | 34                                           |          |     |
      | <Occupation> | Document Name | <ApplicationStage> | <ProductType> | <ApplicantType> | employment_details.xlsx | home                   | 138                           | financial_details.xlsx | file_upload_and_preview               | 34                                           |          |     |
      | <Occupation> | Remark        | <ApplicationStage> | <ProductType> | <ApplicantType> | employment_details.xlsx | home                   | 138                           | financial_details.xlsx | file_upload_and_preview               | 34                                           |          |     |
      | <Occupation> | Date Time     | <ApplicationStage> | <ProductType> | <ApplicantType> | employment_details.xlsx | home                   | 138                           | financial_details.xlsx | file_upload_and_preview               | 34                                           |          |     |
      | <Occupation> | Uploaded By   | <ApplicationStage> | <ProductType> | <ApplicantType> | employment_details.xlsx | home                   | 138                           | financial_details.xlsx | file_upload_and_preview               | 34                                           |          |     |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    # ${Occupation:["Self Employed Professional","Self Employed Non Professional","Others"]}
    # ${Category:["bonds"]}
    @FixedJsClick2
    @Islamic
    @Release
    @Part-2
    @ImplementedBy-tanya
    Examples:
      | Occupation   | Fields        | ApplicationStage   | ProductType   | ApplicantType   | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_fileUploadAndPreview | FinancialDetails_fileUploadAndPreview_rowNum | Category   | Key |
      | <Occupation> | Version       | <ApplicationStage> | <ProductType> | <ApplicantType> | employment_details.xlsx | home                   | 138                           | financial_details.xlsx | file_upload_and_preview               | 34                                           | <Category> |     |
      | <Occupation> | File Name     | <ApplicationStage> | <ProductType> | <ApplicantType> | employment_details.xlsx | home                   | 138                           | financial_details.xlsx | file_upload_and_preview               | 34                                           | <Category> |     |
      | <Occupation> | Document Type | <ApplicationStage> | <ProductType> | <ApplicantType> | employment_details.xlsx | home                   | 138                           | financial_details.xlsx | file_upload_and_preview               | 34                                           | <Category> |     |
      | <Occupation> | Document Name | <ApplicationStage> | <ProductType> | <ApplicantType> | employment_details.xlsx | home                   | 138                           | financial_details.xlsx | file_upload_and_preview               | 34                                           | <Category> |     |
      | <Occupation> | Remark        | <ApplicationStage> | <ProductType> | <ApplicantType> | employment_details.xlsx | home                   | 138                           | financial_details.xlsx | file_upload_and_preview               | 34                                           | <Category> |     |
      | <Occupation> | Date Time     | <ApplicationStage> | <ProductType> | <ApplicantType> | employment_details.xlsx | home                   | 138                           | financial_details.xlsx | file_upload_and_preview               | 34                                           | <Category> |     |
      | <Occupation> | Uploaded By   | <ApplicationStage> | <ProductType> | <ApplicantType> | employment_details.xlsx | home                   | 138                           | financial_details.xlsx | file_upload_and_preview               | 34                                           | <Category> |     |

     # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
    # ${Occupation:["Self Employed Professional","Self Employed Non Professional","Others"]}
    @NotImplemented
    Examples:
      | Occupation   | Fields        | ApplicationStage   | ProductType   | ApplicantType   | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_fileUploadAndPreview | FinancialDetails_fileUploadAndPreview_rowNum | Category | Key |
      | <Occupation> | Version       | <ApplicationStage> | <ProductType> | <ApplicantType> | employment_details.xlsx | home                   | 4                             | financial_details.xlsx | file_upload_and_preview               | 34                                           |          |     |
      | <Occupation> | File Name     | <ApplicationStage> | <ProductType> | <ApplicantType> | employment_details.xlsx | home                   | 4                             | financial_details.xlsx | file_upload_and_preview               | 34                                           |          |     |
      | <Occupation> | Document Type | <ApplicationStage> | <ProductType> | <ApplicantType> | employment_details.xlsx | home                   | 4                             | financial_details.xlsx | file_upload_and_preview               | 34                                           |          |     |
      | <Occupation> | Document Name | <ApplicationStage> | <ProductType> | <ApplicantType> | employment_details.xlsx | home                   | 4                             | financial_details.xlsx | file_upload_and_preview               | 34                                           |          |     |
      | <Occupation> | Remark        | <ApplicationStage> | <ProductType> | <ApplicantType> | employment_details.xlsx | home                   | 4                             | financial_details.xlsx | file_upload_and_preview               | 34                                           |          |     |
      | <Occupation> | Date Time     | <ApplicationStage> | <ProductType> | <ApplicantType> | employment_details.xlsx | home                   | 4                             | financial_details.xlsx | file_upload_and_preview               | 34                                           |          |     |
      | <Occupation> | Uploaded By   | <ApplicationStage> | <ProductType> | <ApplicantType> | employment_details.xlsx | home                   | 4                             | financial_details.xlsx | file_upload_and_preview               | 34                                           |          |     |

  #FeatureID-ACAUTOCAS-169
  Scenario Outline: ACAUTOCAS-9837: Edit previous <DocumentType> file in case of <Occupation_Type> occupation type in file upload financial details
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user open Employment Details page on the basis of "<ApplicationStage>"
    And user reads data from the excel file "<EmploymentDetailsWB>" under sheet "<EmploymentDetails_home>" and row <EmploymentDetails_home_rowNum>
    And user fills employment details for "<Occupation_Type>"
    And user open financial details
    When user open file upload accordion for file upload
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_fileUploadAndPreview>" and row <FinancialDetails_fileUploadAndPreview_rowNum>
    And user fills all fields of file upload preview
    And user browse the "<DocumentType>" file in which different "No. of Years(Audited)"
    And user upload the browsed file
    And user opens file upload accordion
    And user opens previous files accordion
    And user clicks edit option in previous files
    And user Edit Online "<DocumentType>" document
    Then previous file should be edited successfully

    # ${ProductType:["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL","FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @Conventional
    @Release @Part-2
    @ImplementedBy-pallavi.singh
    Examples:
      | Occupation_Type                | DocumentType         | ApplicationStage   | ApplicantType   | ProductType   | Category | Key | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_fileUploadAndPreview | FinancialDetails_fileUploadAndPreview_rowNum |
      | Self Employed Non Professional | Balance Sheet        | <ApplicationStage> | <ApplicantType> | <ProductType> |          |     | employment_details.xlsx | home                   | 4                             | financial_details.xlsx | file_upload_and_preview               | 34                                           |
      | Self Employed Non Professional | Cash Flow            | <ApplicationStage> | <ApplicantType> | <ProductType> |          |     | employment_details.xlsx | home                   | 4                             | financial_details.xlsx | file_upload_and_preview               | 35                                           |
      | Self Employed Non Professional | Funds Flow           | <ApplicationStage> | <ApplicantType> | <ProductType> |          |     | employment_details.xlsx | home                   | 4                             | financial_details.xlsx | file_upload_and_preview               | 36                                           |
      | Self Employed Non Professional | Income/P&L Statement | <ApplicationStage> | <ApplicantType> | <ProductType> |          |     | employment_details.xlsx | home                   | 4                             | financial_details.xlsx | file_upload_and_preview               | 37                                           |
      | Others                         | Balance Sheet        | <ApplicationStage> | <ApplicantType> | <ProductType> |          |     | employment_details.xlsx | home                   | 2                             | financial_details.xlsx | file_upload_and_preview               | 34                                           |
      | Others                         | Cash Flow            | <ApplicationStage> | <ApplicantType> | <ProductType> |          |     | employment_details.xlsx | home                   | 2                             | financial_details.xlsx | file_upload_and_preview               | 35                                           |
      | Others                         | Funds Flow           | <ApplicationStage> | <ApplicantType> | <ProductType> |          |     | employment_details.xlsx | home                   | 2                             | financial_details.xlsx | file_upload_and_preview               | 36                                           |
      | Others                         | Income/P&L Statement | <ApplicationStage> | <ApplicantType> | <ProductType> |          |     | employment_details.xlsx | home                   | 2                             | financial_details.xlsx | file_upload_and_preview               | 37                                           |
      | Self Employed Professional     | Balance Sheet        | <ApplicationStage> | <ApplicantType> | <ProductType> |          |     | employment_details.xlsx | home                   | 0                             | financial_details.xlsx | file_upload_and_preview               | 34                                           |
      | Self Employed Professional     | Cash Flow            | <ApplicationStage> | <ApplicantType> | <ProductType> |          |     | employment_details.xlsx | home                   | 0                             | financial_details.xlsx | file_upload_and_preview               | 35                                           |
      | Self Employed Professional     | Funds Flow           | <ApplicationStage> | <ApplicantType> | <ProductType> |          |     | employment_details.xlsx | home                   | 0                             | financial_details.xlsx | file_upload_and_preview               | 36                                           |
      | Self Employed Professional     | Income/P&L Statement | <ApplicationStage> | <ApplicantType> | <ProductType> |          |     | employment_details.xlsx | home                   | 0                             | financial_details.xlsx | file_upload_and_preview               | 37                                           |

    # ${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @Islamic
    @Release
    @Part-2
    @ImplementedBy-tanya
    Examples:
      | Occupation_Type                | DocumentType         | ApplicationStage   | ApplicantType   | ProductType   | Category | Key | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_fileUploadAndPreview | FinancialDetails_fileUploadAndPreview_rowNum |
      | Self Employed Non Professional | Balance Sheet        | <ApplicationStage> | <ApplicantType> | <ProductType> |          |     | employment_details.xlsx | home                   | 138                           | financial_details.xlsx | file_upload_and_preview               | 34                                           |
      | Self Employed Non Professional | Cash Flow            | <ApplicationStage> | <ApplicantType> | <ProductType> |          |     | employment_details.xlsx | home                   | 138                           | financial_details.xlsx | file_upload_and_preview               | 35                                           |
      | Self Employed Non Professional | Funds Flow           | <ApplicationStage> | <ApplicantType> | <ProductType> |          |     | employment_details.xlsx | home                   | 138                           | financial_details.xlsx | file_upload_and_preview               | 36                                           |
      | Self Employed Non Professional | Income/P&L Statement | <ApplicationStage> | <ApplicantType> | <ProductType> |          |     | employment_details.xlsx | home                   | 138                           | financial_details.xlsx | file_upload_and_preview               | 37                                           |
      | Others                         | Balance Sheet        | <ApplicationStage> | <ApplicantType> | <ProductType> |          |     | employment_details.xlsx | home                   | 138                           | financial_details.xlsx | file_upload_and_preview               | 34                                           |
      | Others                         | Cash Flow            | <ApplicationStage> | <ApplicantType> | <ProductType> |          |     | employment_details.xlsx | home                   | 138                           | financial_details.xlsx | file_upload_and_preview               | 35                                           |
      | Others                         | Funds Flow           | <ApplicationStage> | <ApplicantType> | <ProductType> |          |     | employment_details.xlsx | home                   | 138                           | financial_details.xlsx | file_upload_and_preview               | 36                                           |
      | Others                         | Income/P&L Statement | <ApplicationStage> | <ApplicantType> | <ProductType> |          |     | employment_details.xlsx | home                   | 138                           | financial_details.xlsx | file_upload_and_preview               | 37                                           |
      | Self Employed Professional     | Balance Sheet        | <ApplicationStage> | <ApplicantType> | <ProductType> |          |     | employment_details.xlsx | home                   | 138                           | financial_details.xlsx | file_upload_and_preview               | 34                                           |
      | Self Employed Professional     | Cash Flow            | <ApplicationStage> | <ApplicantType> | <ProductType> |          |     | employment_details.xlsx | home                   | 138                           | financial_details.xlsx | file_upload_and_preview               | 35                                           |
      | Self Employed Professional     | Funds Flow           | <ApplicationStage> | <ApplicantType> | <ProductType> |          |     | employment_details.xlsx | home                   | 138                           | financial_details.xlsx | file_upload_and_preview               | 36                                           |
      | Self Employed Professional     | Income/P&L Statement | <ApplicationStage> | <ApplicantType> | <ProductType> |          |     | employment_details.xlsx | home                   | 138                           | financial_details.xlsx | file_upload_and_preview               | 37                                           |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    # ${Category:["bonds"]}
    @FixedJsClick2
    @Islamic
    @Release
    @Part-2
    @ImplementedBy-tanya
    Examples:
      | Occupation_Type                | DocumentType         | ApplicationStage   | ApplicantType   | ProductType   | Category   | Key | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_fileUploadAndPreview | FinancialDetails_fileUploadAndPreview_rowNum |
      | Self Employed Non Professional | Balance Sheet        | <ApplicationStage> | <ApplicantType> | <ProductType> | <Category> |     | employment_details.xlsx | home                   | 138                           | financial_details.xlsx | file_upload_and_preview               | 34                                           |
      | Self Employed Non Professional | Cash Flow            | <ApplicationStage> | <ApplicantType> | <ProductType> | <Category> |     | employment_details.xlsx | home                   | 138                           | financial_details.xlsx | file_upload_and_preview               | 35                                           |
      | Self Employed Non Professional | Funds Flow           | <ApplicationStage> | <ApplicantType> | <ProductType> | <Category> |     | employment_details.xlsx | home                   | 138                           | financial_details.xlsx | file_upload_and_preview               | 36                                           |
      | Self Employed Non Professional | Income/P&L Statement | <ApplicationStage> | <ApplicantType> | <ProductType> | <Category> |     | employment_details.xlsx | home                   | 138                           | financial_details.xlsx | file_upload_and_preview               | 37                                           |
      | Others                         | Balance Sheet        | <ApplicationStage> | <ApplicantType> | <ProductType> | <Category> |     | employment_details.xlsx | home                   | 138                           | financial_details.xlsx | file_upload_and_preview               | 34                                           |
      | Others                         | Cash Flow            | <ApplicationStage> | <ApplicantType> | <ProductType> | <Category> |     | employment_details.xlsx | home                   | 138                           | financial_details.xlsx | file_upload_and_preview               | 35                                           |
      | Others                         | Funds Flow           | <ApplicationStage> | <ApplicantType> | <ProductType> | <Category> |     | employment_details.xlsx | home                   | 138                           | financial_details.xlsx | file_upload_and_preview               | 36                                           |
      | Others                         | Income/P&L Statement | <ApplicationStage> | <ApplicantType> | <ProductType> | <Category> |     | employment_details.xlsx | home                   | 138                           | financial_details.xlsx | file_upload_and_preview               | 37                                           |
      | Self Employed Professional     | Balance Sheet        | <ApplicationStage> | <ApplicantType> | <ProductType> | <Category> |     | employment_details.xlsx | home                   | 138                           | financial_details.xlsx | file_upload_and_preview               | 34                                           |
      | Self Employed Professional     | Cash Flow            | <ApplicationStage> | <ApplicantType> | <ProductType> | <Category> |     | employment_details.xlsx | home                   | 138                           | financial_details.xlsx | file_upload_and_preview               | 35                                           |
      | Self Employed Professional     | Funds Flow           | <ApplicationStage> | <ApplicantType> | <ProductType> | <Category> |     | employment_details.xlsx | home                   | 138                           | financial_details.xlsx | file_upload_and_preview               | 36                                           |
      | Self Employed Professional     | Income/P&L Statement | <ApplicationStage> | <ApplicantType> | <ProductType> | <Category> |     | employment_details.xlsx | home                   | 138                           | financial_details.xlsx | file_upload_and_preview               | 37                                           |

     # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
    @NotImplemented
    Examples:
      | Occupation_Type                | DocumentType         | ApplicationStage   | ApplicantType   | ProductType   | Category | Key | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_fileUploadAndPreview | FinancialDetails_fileUploadAndPreview_rowNum |
      | Self Employed Non Professional | Balance Sheet        | <ApplicationStage> | <ApplicantType> | <ProductType> |          |     | employment_details.xlsx | home                   | 4                             | financial_details.xlsx | file_upload_and_preview               | 34                                           |
      | Self Employed Non Professional | Cash Flow            | <ApplicationStage> | <ApplicantType> | <ProductType> |          |     | employment_details.xlsx | home                   | 4                             | financial_details.xlsx | file_upload_and_preview               | 35                                           |
      | Self Employed Non Professional | Funds Flow           | <ApplicationStage> | <ApplicantType> | <ProductType> |          |     | employment_details.xlsx | home                   | 4                             | financial_details.xlsx | file_upload_and_preview               | 36                                           |
      | Self Employed Non Professional | Income/P&L Statement | <ApplicationStage> | <ApplicantType> | <ProductType> |          |     | employment_details.xlsx | home                   | 4                             | financial_details.xlsx | file_upload_and_preview               | 37                                           |
      | Others                         | Balance Sheet        | <ApplicationStage> | <ApplicantType> | <ProductType> |          |     | employment_details.xlsx | home                   | 2                             | financial_details.xlsx | file_upload_and_preview               | 34                                           |
      | Others                         | Cash Flow            | <ApplicationStage> | <ApplicantType> | <ProductType> |          |     | employment_details.xlsx | home                   | 2                             | financial_details.xlsx | file_upload_and_preview               | 35                                           |
      | Others                         | Funds Flow           | <ApplicationStage> | <ApplicantType> | <ProductType> |          |     | employment_details.xlsx | home                   | 2                             | financial_details.xlsx | file_upload_and_preview               | 36                                           |
      | Others                         | Income/P&L Statement | <ApplicationStage> | <ApplicantType> | <ProductType> |          |     | employment_details.xlsx | home                   | 2                             | financial_details.xlsx | file_upload_and_preview               | 37                                           |
      | Self Employed Professional     | Balance Sheet        | <ApplicationStage> | <ApplicantType> | <ProductType> |          |     | employment_details.xlsx | home                   | 0                             | financial_details.xlsx | file_upload_and_preview               | 34                                           |
      | Self Employed Professional     | Cash Flow            | <ApplicationStage> | <ApplicantType> | <ProductType> |          |     | employment_details.xlsx | home                   | 0                             | financial_details.xlsx | file_upload_and_preview               | 35                                           |
      | Self Employed Professional     | Funds Flow           | <ApplicationStage> | <ApplicantType> | <ProductType> |          |     | employment_details.xlsx | home                   | 0                             | financial_details.xlsx | file_upload_and_preview               | 36                                           |
      | Self Employed Professional     | Income/P&L Statement | <ApplicationStage> | <ApplicantType> | <ProductType> |          |     | employment_details.xlsx | home                   | 0                             | financial_details.xlsx | file_upload_and_preview               | 37                                           |


  #FeatureID-ACAUTOCAS-169
  @AppInfoFixed5
  Scenario Outline: ACAUTOCAS-9838: Only latest version of previous <DocumentType> file can be edit in case of <Occupation_Type> occupation type in file upload financial details
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user open Employment Details page on the basis of "<ApplicationStage>"
    And user reads data from the excel file "<EmploymentDetailsWB>" under sheet "<EmploymentDetails_home>" and row <EmploymentDetails_home_rowNum>
    And user fills employment details for "<Occupation_Type>"
    And user open financial details
    When user open file upload accordion for file upload
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_fileUploadAndPreview>" and row <FinancialDetails_fileUploadAndPreview_rowNum>
    And user fills all fields of file upload preview
    And user browse the "<DocumentType>" file in which different "No. of Years(Audited)"
    And user upload the browsed file
    And user opens file upload accordion
    And user opens previous files accordion
    And user edit latest version of previous file
    And user Edit Online "<DocumentType>" document
    Then latest version of previous file should be edited successfully

    # ${ProductType:["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL","FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @Conventional
    @Release @Part-2
    @ImplementedBy-pallavi.singh
    Examples:
      | Occupation_Type                | DocumentType         | ApplicationStage   | ApplicantType   | ProductType   | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_fileUploadAndPreview | FinancialDetails_fileUploadAndPreview_rowNum | Category | Key |
      | Self Employed Non Professional | Balance Sheet        | <ApplicationStage> | <ApplicantType> | <ProductType> | employment_details.xlsx | home                   | 4                             | financial_details.xlsx | file_upload_and_preview               | 34                                           |          |     |
      | Self Employed Non Professional | Cash Flow            | <ApplicationStage> | <ApplicantType> | <ProductType> | employment_details.xlsx | home                   | 4                             | financial_details.xlsx | file_upload_and_preview               | 35                                           |          |     |
      | Self Employed Non Professional | Funds Flow           | <ApplicationStage> | <ApplicantType> | <ProductType> | employment_details.xlsx | home                   | 4                             | financial_details.xlsx | file_upload_and_preview               | 36                                           |          |     |
      | Self Employed Non Professional | Income/P&L Statement | <ApplicationStage> | <ApplicantType> | <ProductType> | employment_details.xlsx | home                   | 4                             | financial_details.xlsx | file_upload_and_preview               | 37                                           |          |     |
      | Others                         | Balance Sheet        | <ApplicationStage> | <ApplicantType> | <ProductType> | employment_details.xlsx | home                   | 2                             | financial_details.xlsx | file_upload_and_preview               | 34                                           |          |     |
      | Others                         | Cash Flow            | <ApplicationStage> | <ApplicantType> | <ProductType> | employment_details.xlsx | home                   | 2                             | financial_details.xlsx | file_upload_and_preview               | 35                                           |          |     |
      | Others                         | Funds Flow           | <ApplicationStage> | <ApplicantType> | <ProductType> | employment_details.xlsx | home                   | 2                             | financial_details.xlsx | file_upload_and_preview               | 36                                           |          |     |
      | Others                         | Income/P&L Statement | <ApplicationStage> | <ApplicantType> | <ProductType> | employment_details.xlsx | home                   | 2                             | financial_details.xlsx | file_upload_and_preview               | 37                                           |          |     |
      | Self Employed Professional     | Balance Sheet        | <ApplicationStage> | <ApplicantType> | <ProductType> | employment_details.xlsx | home                   | 0                             | financial_details.xlsx | file_upload_and_preview               | 34                                           |          |     |
      | Self Employed Professional     | Cash Flow            | <ApplicationStage> | <ApplicantType> | <ProductType> | employment_details.xlsx | home                   | 0                             | financial_details.xlsx | file_upload_and_preview               | 35                                           |          |     |
      | Self Employed Professional     | Funds Flow           | <ApplicationStage> | <ApplicantType> | <ProductType> | employment_details.xlsx | home                   | 0                             | financial_details.xlsx | file_upload_and_preview               | 36                                           |          |     |
      | Self Employed Professional     | Income/P&L Statement | <ApplicationStage> | <ApplicantType> | <ProductType> | employment_details.xlsx | home                   | 0                             | financial_details.xlsx | file_upload_and_preview               | 37                                           |          |     |

    # ${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @Islamic
    @Release
    @Part-2
    @ImplementedBy-tanya
    Examples:
      | Occupation_Type                | DocumentType         | ApplicationStage   | ApplicantType   | ProductType   | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_fileUploadAndPreview | FinancialDetails_fileUploadAndPreview_rowNum | Category | Key |
      | Self Employed Non Professional | Balance Sheet        | <ApplicationStage> | <ApplicantType> | <ProductType> | employment_details.xlsx | home                   | 138                           | financial_details.xlsx | file_upload_and_preview               | 34                                           |          |     |
      | Self Employed Non Professional | Cash Flow            | <ApplicationStage> | <ApplicantType> | <ProductType> | employment_details.xlsx | home                   | 138                           | financial_details.xlsx | file_upload_and_preview               | 35                                           |          |     |
      | Self Employed Non Professional | Funds Flow           | <ApplicationStage> | <ApplicantType> | <ProductType> | employment_details.xlsx | home                   | 138                           | financial_details.xlsx | file_upload_and_preview               | 36                                           |          |     |
      | Self Employed Non Professional | Income/P&L Statement | <ApplicationStage> | <ApplicantType> | <ProductType> | employment_details.xlsx | home                   | 138                           | financial_details.xlsx | file_upload_and_preview               | 37                                           |          |     |
      | Others                         | Balance Sheet        | <ApplicationStage> | <ApplicantType> | <ProductType> | employment_details.xlsx | home                   | 138                           | financial_details.xlsx | file_upload_and_preview               | 34                                           |          |     |
      | Others                         | Cash Flow            | <ApplicationStage> | <ApplicantType> | <ProductType> | employment_details.xlsx | home                   | 138                           | financial_details.xlsx | file_upload_and_preview               | 35                                           |          |     |
      | Others                         | Funds Flow           | <ApplicationStage> | <ApplicantType> | <ProductType> | employment_details.xlsx | home                   | 138                           | financial_details.xlsx | file_upload_and_preview               | 36                                           |          |     |
      | Others                         | Income/P&L Statement | <ApplicationStage> | <ApplicantType> | <ProductType> | employment_details.xlsx | home                   | 138                           | financial_details.xlsx | file_upload_and_preview               | 37                                           |          |     |
      | Self Employed Professional     | Balance Sheet        | <ApplicationStage> | <ApplicantType> | <ProductType> | employment_details.xlsx | home                   | 138                           | financial_details.xlsx | file_upload_and_preview               | 34                                           |          |     |
      | Self Employed Professional     | Cash Flow            | <ApplicationStage> | <ApplicantType> | <ProductType> | employment_details.xlsx | home                   | 138                           | financial_details.xlsx | file_upload_and_preview               | 35                                           |          |     |
      | Self Employed Professional     | Funds Flow           | <ApplicationStage> | <ApplicantType> | <ProductType> | employment_details.xlsx | home                   | 138                           | financial_details.xlsx | file_upload_and_preview               | 36                                           |          |     |
      | Self Employed Professional     | Income/P&L Statement | <ApplicationStage> | <ApplicantType> | <ProductType> | employment_details.xlsx | home                   | 138                           | financial_details.xlsx | file_upload_and_preview               | 37                                           |          |     |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    # ${Category:["bonds"]}
    @FixedJsClick2
    @Islamic
    @Release
    @Part-2
    @ImplementedBy-tanya
    Examples:
      | Occupation_Type                | DocumentType         | ApplicationStage   | ApplicantType   | ProductType   | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_fileUploadAndPreview | FinancialDetails_fileUploadAndPreview_rowNum | Category   | Key |
      | Self Employed Non Professional | Balance Sheet        | <ApplicationStage> | <ApplicantType> | <ProductType> | employment_details.xlsx | home                   | 138                           | financial_details.xlsx | file_upload_and_preview               | 34                                           | <Category> |     |
      | Self Employed Non Professional | Cash Flow            | <ApplicationStage> | <ApplicantType> | <ProductType> | employment_details.xlsx | home                   | 138                           | financial_details.xlsx | file_upload_and_preview               | 35                                           | <Category> |     |
      | Self Employed Non Professional | Funds Flow           | <ApplicationStage> | <ApplicantType> | <ProductType> | employment_details.xlsx | home                   | 138                           | financial_details.xlsx | file_upload_and_preview               | 36                                           | <Category> |     |
      | Self Employed Non Professional | Income/P&L Statement | <ApplicationStage> | <ApplicantType> | <ProductType> | employment_details.xlsx | home                   | 138                           | financial_details.xlsx | file_upload_and_preview               | 37                                           | <Category> |     |
      | Others                         | Balance Sheet        | <ApplicationStage> | <ApplicantType> | <ProductType> | employment_details.xlsx | home                   | 138                           | financial_details.xlsx | file_upload_and_preview               | 34                                           | <Category> |     |
      | Others                         | Cash Flow            | <ApplicationStage> | <ApplicantType> | <ProductType> | employment_details.xlsx | home                   | 138                           | financial_details.xlsx | file_upload_and_preview               | 35                                           | <Category> |     |
      | Others                         | Funds Flow           | <ApplicationStage> | <ApplicantType> | <ProductType> | employment_details.xlsx | home                   | 138                           | financial_details.xlsx | file_upload_and_preview               | 36                                           | <Category> |     |
      | Others                         | Income/P&L Statement | <ApplicationStage> | <ApplicantType> | <ProductType> | employment_details.xlsx | home                   | 138                           | financial_details.xlsx | file_upload_and_preview               | 37                                           | <Category> |     |
      | Self Employed Professional     | Balance Sheet        | <ApplicationStage> | <ApplicantType> | <ProductType> | employment_details.xlsx | home                   | 138                           | financial_details.xlsx | file_upload_and_preview               | 34                                           | <Category> |     |
      | Self Employed Professional     | Cash Flow            | <ApplicationStage> | <ApplicantType> | <ProductType> | employment_details.xlsx | home                   | 138                           | financial_details.xlsx | file_upload_and_preview               | 35                                           | <Category> |     |
      | Self Employed Professional     | Funds Flow           | <ApplicationStage> | <ApplicantType> | <ProductType> | employment_details.xlsx | home                   | 138                           | financial_details.xlsx | file_upload_and_preview               | 36                                           | <Category> |     |
      | Self Employed Professional     | Income/P&L Statement | <ApplicationStage> | <ApplicantType> | <ProductType> | employment_details.xlsx | home                   | 138                           | financial_details.xlsx | file_upload_and_preview               | 37                                           | <Category> |     |

     # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
    @NotImplemented
    Examples:
      | Occupation_Type                | DocumentType         | ApplicationStage   | ApplicantType   | ProductType   | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_fileUploadAndPreview | FinancialDetails_fileUploadAndPreview_rowNum | Category | Key |
      | Self Employed Non Professional | Balance Sheet        | <ApplicationStage> | <ApplicantType> | <ProductType> | employment_details.xlsx | home                   | 4                             | financial_details.xlsx | file_upload_and_preview               | 34                                           |          |     |
      | Self Employed Non Professional | Cash Flow            | <ApplicationStage> | <ApplicantType> | <ProductType> | employment_details.xlsx | home                   | 4                             | financial_details.xlsx | file_upload_and_preview               | 35                                           |          |     |
      | Self Employed Non Professional | Funds Flow           | <ApplicationStage> | <ApplicantType> | <ProductType> | employment_details.xlsx | home                   | 4                             | financial_details.xlsx | file_upload_and_preview               | 36                                           |          |     |
      | Self Employed Non Professional | Income/P&L Statement | <ApplicationStage> | <ApplicantType> | <ProductType> | employment_details.xlsx | home                   | 4                             | financial_details.xlsx | file_upload_and_preview               | 37                                           |          |     |
      | Others                         | Balance Sheet        | <ApplicationStage> | <ApplicantType> | <ProductType> | employment_details.xlsx | home                   | 2                             | financial_details.xlsx | file_upload_and_preview               | 34                                           |          |     |
      | Others                         | Cash Flow            | <ApplicationStage> | <ApplicantType> | <ProductType> | employment_details.xlsx | home                   | 2                             | financial_details.xlsx | file_upload_and_preview               | 35                                           |          |     |
      | Others                         | Funds Flow           | <ApplicationStage> | <ApplicantType> | <ProductType> | employment_details.xlsx | home                   | 2                             | financial_details.xlsx | file_upload_and_preview               | 36                                           |          |     |
      | Others                         | Income/P&L Statement | <ApplicationStage> | <ApplicantType> | <ProductType> | employment_details.xlsx | home                   | 2                             | financial_details.xlsx | file_upload_and_preview               | 37                                           |          |     |
      | Self Employed Professional     | Balance Sheet        | <ApplicationStage> | <ApplicantType> | <ProductType> | employment_details.xlsx | home                   | 0                             | financial_details.xlsx | file_upload_and_preview               | 34                                           |          |     |
      | Self Employed Professional     | Cash Flow            | <ApplicationStage> | <ApplicantType> | <ProductType> | employment_details.xlsx | home                   | 0                             | financial_details.xlsx | file_upload_and_preview               | 35                                           |          |     |
      | Self Employed Professional     | Funds Flow           | <ApplicationStage> | <ApplicantType> | <ProductType> | employment_details.xlsx | home                   | 0                             | financial_details.xlsx | file_upload_and_preview               | 36                                           |          |     |
      | Self Employed Professional     | Income/P&L Statement | <ApplicationStage> | <ApplicantType> | <ProductType> | employment_details.xlsx | home                   | 0                             | financial_details.xlsx | file_upload_and_preview               | 37                                           |          |     |

