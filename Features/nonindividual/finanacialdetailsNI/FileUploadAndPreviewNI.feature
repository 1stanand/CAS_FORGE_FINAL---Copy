@Epic-Applicant_Information
@Part-3


Feature:File Upload and Preview in financial details for Non Individual

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0

   #FeatureID-ACAUTOCAS-11453
  Scenario Outline: ACAUTOCAS-13532: File Upload and Preview screen's field validation in non individual applicant at <ApplicationStage> for <ProductType>
    And user opens an application of "<ProductType>" product type as "nonindiv" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user navigates to personal information page of "<ApplicationStage>"
    And user reads data from the excel file "<CustomerDetailsWB>" under sheet "<CustomerDetails_home>" and row <CustomerDetails_home_rowNum>
    And user fills and save customer details for non individual applicant
    And user open financial details for non individual
    When user open file upload accordion for file upload for non individual customer
    Then "<Field>" field should be present

    @Conventional
    @ImplementedBy-kanika.mahal
    @Release
    @Release3
    @AuthoredBy-vipin.kishor
    #${ ProductType : ["PF","HL","AL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | Field                   | ApplicationStage   | ProductType   | CustomerDetailsWB     | CustomerDetails_home | CustomerDetails_home_rowNum | Category | Key |
      | Document Type           | <ApplicationStage> | <ProductType> | customer_details.xlsx | home                 | 0                           |          |     |
      | Document Name           | <ApplicationStage> | <ProductType> | customer_details.xlsx | home                 | 0                           |          |     |
      | No. of Years(Audited)   | <ApplicationStage> | <ProductType> | customer_details.xlsx | home                 | 0                           |          |     |
      | No. of Years(Projected) | <ApplicationStage> | <ProductType> | customer_details.xlsx | home                 | 0                           |          |     |
      | No. of Years(Unaudited) | <ApplicationStage> | <ProductType> | customer_details.xlsx | home                 | 0                           |          |     |
      | Remarks                 | <ApplicationStage> | <ProductType> | customer_details.xlsx | home                 | 0                           |          |     |

    @Islamic
    @NotImplemented
    @AuthoredBy-anshika.gupta
     # ${ ProductType : ["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Credit Approval","Reconsideration"]}
    Examples:
      | Field                   | ApplicationStage   | ProductType   | CustomerDetailsWB     | CustomerDetails_home | CustomerDetails_home_rowNum | Category | Key |
      | Document Type           | <ApplicationStage> | <ProductType> | customer_details.xlsx | home                 | 0                           |          |     |
      | Document Name           | <ApplicationStage> | <ProductType> | customer_details.xlsx | home                 | 0                           |          |     |
      | No. of Years(Audited)   | <ApplicationStage> | <ProductType> | customer_details.xlsx | home                 | 0                           |          |     |
      | No. of Years(Projected) | <ApplicationStage> | <ProductType> | customer_details.xlsx | home                 | 0                           |          |     |
      | No. of Years(Unaudited) | <ApplicationStage> | <ProductType> | customer_details.xlsx | home                 | 0                           |          |     |
      | Remarks                 | <ApplicationStage> | <ProductType> | customer_details.xlsx | home                 | 0                           |          |     |


    @Islamic
    @NotImplemented
    @AuthoredBy-anshika.gupta
     # ${ ProductType : ["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category:["bonds","shares","metals"]}
    Examples:
      | Field                   | ApplicationStage   | ProductType   | CustomerDetailsWB     | CustomerDetails_home | CustomerDetails_home_rowNum | Category   | Key |
      | Document Type           | <ApplicationStage> | <ProductType> | customer_details.xlsx | home                 | 0                           | <Category> |     |
      | Document Name           | <ApplicationStage> | <ProductType> | customer_details.xlsx | home                 | 0                           | <Category> |     |
      | No. of Years(Audited)   | <ApplicationStage> | <ProductType> | customer_details.xlsx | home                 | 0                           | <Category> |     |
      | No. of Years(Projected) | <ApplicationStage> | <ProductType> | customer_details.xlsx | home                 | 0                           | <Category> |     |
      | No. of Years(Unaudited) | <ApplicationStage> | <ProductType> | customer_details.xlsx | home                 | 0                           | <Category> |     |
      | Remarks                 | <ApplicationStage> | <ProductType> | customer_details.xlsx | home                 | 0                           | <Category> |     |


  #FeatureID-ACAUTOCAS-11453
  Scenario Outline: ACAUTOCAS-13533: Required field validation in File Upload and Preview for non individual applicant at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "nonindiv" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user navigates to personal information page of "<ApplicationStage>"
    And user reads data from the excel file "<CustomerDetailsWB>" under sheet "<CustomerDetails_home>" and row <CustomerDetails_home_rowNum>
    And user fills and save customer details for non individual applicant
    And user open financial details for non individual
    When user open file upload accordion for file upload for non individual customer
    Then user should be able to view field "<FieldName>" marked as "<Mandatory>"

    @Conventional
    @ImplementedBy-kanika.mahal
    @Release
    @Release3
    @AuthoredBy-vipin.kishor
    #${ ProductType : ["PF","HL","AL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | FieldName             | Mandatory | ApplicationStage   | ProductType   | CustomerDetailsWB     | CustomerDetails_home | CustomerDetails_home_rowNum | Category | Key |
      | Document Type         | required  | <ApplicationStage> | <ProductType> | customer_details.xlsx | home                 | 0                           |          |     |
      | Document Name         | required  | <ApplicationStage> | <ProductType> | customer_details.xlsx | home                 | 0                           |          |     |
      | No. of Years(Audited) | required  | <ApplicationStage> | <ProductType> | customer_details.xlsx | home                 | 0                           |          |     |


    @Islamic
    @NotImplemented
    @AuthoredBy-anshika.gupta
     # ${ ProductType : ["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Credit Approval","Reconsideration"]}
    Examples:
      | FieldName             | Mandatory | ApplicationStage   | ProductType   | CustomerDetailsWB     | CustomerDetails_home | CustomerDetails_home_rowNum | Category | Key |
      | Document Type         | required  | <ApplicationStage> | <ProductType> | customer_details.xlsx | home                 | 0                           |          |     |
      | Document Name         | required  | <ApplicationStage> | <ProductType> | customer_details.xlsx | home                 | 0                           |          |     |
      | No. of Years(Audited) | required  | <ApplicationStage> | <ProductType> | customer_details.xlsx | home                 | 0                           |          |     |

    @Islamic
    @NotImplemented
    @AuthoredBy-anshika.gupta
    # ${ ProductType : ["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category:["bonds","shares","metals"]}
    Examples:
      | FieldName             | Mandatory | ApplicationStage   | ProductType   | CustomerDetailsWB     | CustomerDetails_home | CustomerDetails_home_rowNum | Category   | Key |
      | Document Type         | required  | <ApplicationStage> | <ProductType> | customer_details.xlsx | home                 | 0                           | <Category> |     |
      | Document Name         | required  | <ApplicationStage> | <ProductType> | customer_details.xlsx | home                 | 0                           | <Category> |     |
      | No. of Years(Audited) | required  | <ApplicationStage> | <ProductType> | customer_details.xlsx | home                 | 0                           | <Category> |     |



#FeatureID-ACAUTOCAS-11453
  Scenario Outline: ACAUTOCAS-13534: Field validation in all fields validation of File Upload and Preview in non individual applicant at <ApplicationStage> of <ProductType>
    And user opens an application of "<ProductType>" product type as "nonindiv" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user navigates to personal information page of "<ApplicationStage>"
    And user reads data from the excel file "<CustomerDetailsWB>" under sheet "<CustomerDetails_home>" and row <CustomerDetails_home_rowNum>
    And user fills and save customer details for non individual applicant
    And user open financial details for non individual
    When user open file upload accordion for file upload for non individual customer
    Then "<Field>" field should be present

    @Conventional
    @ImplementedBy-kanika.mahal
    @Release
    @Release3
    @AuthoredBy-vipin.kishor
    #${ ProductType : ["PF","HL","AL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | Field                   | ApplicationStage   | ProductType   | CustomerDetailsWB     | CustomerDetails_home | CustomerDetails_home_rowNum | Category | Key |
      | Document Type           | <ApplicationStage> | <ProductType> | customer_details.xlsx | home                 | 0                           |          |     |
      | Document Name           | <ApplicationStage> | <ProductType> | customer_details.xlsx | home                 | 0                           |          |     |
      | No. of Years(Audited)   | <ApplicationStage> | <ProductType> | customer_details.xlsx | home                 | 0                           |          |     |
      | No. of Years(Projected) | <ApplicationStage> | <ProductType> | customer_details.xlsx | home                 | 0                           |          |     |
      | No. of Years(Unaudited) | <ApplicationStage> | <ProductType> | customer_details.xlsx | home                 | 0                           |          |     |
      | Remarks                 | <ApplicationStage> | <ProductType> | customer_details.xlsx | home                 | 0                           |          |     |

    @Islamic
    @NotImplemented
    @AuthoredBy-anshika.gupta
     # ${ ProductType : ["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Credit Approval","Reconsideration"]}
    Examples:
      | Field                   | ApplicationStage   | ProductType   | CustomerDetailsWB     | CustomerDetails_home | CustomerDetails_home_rowNum | Category | Key |
      | Document Type           | <ApplicationStage> | <ProductType> | customer_details.xlsx | home                 | 0                           |          |     |
      | Document Name           | <ApplicationStage> | <ProductType> | customer_details.xlsx | home                 | 0                           |          |     |
      | No. of Years(Audited)   | <ApplicationStage> | <ProductType> | customer_details.xlsx | home                 | 0                           |          |     |
      | No. of Years(Projected) | <ApplicationStage> | <ProductType> | customer_details.xlsx | home                 | 0                           |          |     |
      | No. of Years(Unaudited) | <ApplicationStage> | <ProductType> | customer_details.xlsx | home                 | 0                           |          |     |
      | Remarks                 | <ApplicationStage> | <ProductType> | customer_details.xlsx | home                 | 0                           |          |     |

    @Islamic
    @NotImplemented
    @AuthoredBy-anshika.gupta
    # ${ ProductType : ["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category:["bonds","shares","metals"]}
    Examples:
      | Field                   | ApplicationStage   | ProductType   | CustomerDetailsWB     | CustomerDetails_home | CustomerDetails_home_rowNum | Category   | Key |
      | Document Type           | <ApplicationStage> | <ProductType> | customer_details.xlsx | home                 | 0                           | <Category> |     |
      | Document Name           | <ApplicationStage> | <ProductType> | customer_details.xlsx | home                 | 0                           | <Category> |     |
      | No. of Years(Audited)   | <ApplicationStage> | <ProductType> | customer_details.xlsx | home                 | 0                           | <Category> |     |
      | No. of Years(Projected) | <ApplicationStage> | <ProductType> | customer_details.xlsx | home                 | 0                           | <Category> |     |
      | No. of Years(Unaudited) | <ApplicationStage> | <ProductType> | customer_details.xlsx | home                 | 0                           | <Category> |     |
      | Remarks                 | <ApplicationStage> | <ProductType> | customer_details.xlsx | home                 | 0                           | <Category> |     |


     #FeatureID-ACAUTOCAS-11453
  Scenario Outline: ACAUTOCAS-13535: File Upload and Preview screen's accordion validation in non individual applicant at <ApplicationStage> of <ProductType>
    And user opens an application of "<ProductType>" product type as "nonindiv" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user navigates to personal information page of "<ApplicationStage>"
    And user reads data from the excel file "<CustomerDetailsWB>" under sheet "<CustomerDetails_home>" and row <CustomerDetails_home_rowNum>
    And user fills and save customer details for non individual applicant
    And user open financial details for non individual
    When user open file upload accordion for file upload for non individual customer
    Then "<Accordion>" should be present

    @Conventional
    @ImplementedBy-kanika.mahal
    @Release
    @Release3
    @AuthoredBy-vipin.kishor
    #${ ProductType : ["PF","HL","AL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | Accordion              | ApplicationStage   | ProductType   | CustomerDetailsWB     | CustomerDetails_home | CustomerDetails_home_rowNum | Category | Key |
      | Income Statement       | <ApplicationStage> | <ProductType> | customer_details.xlsx | home                 | 0                           |          |     |
      | Balance Sheet          | <ApplicationStage> | <ProductType> | customer_details.xlsx | home                 | 0                           |          |     |
      | Funds Flow             | <ApplicationStage> | <ProductType> | customer_details.xlsx | home                 | 0                           |          |     |
      | Statement of Cashflows | <ApplicationStage> | <ProductType> | customer_details.xlsx | home                 | 0                           |          |     |
      | Ratio Analysis         | <ApplicationStage> | <ProductType> | customer_details.xlsx | home                 | 0                           |          |     |
      | Previous Files         | <ApplicationStage> | <ProductType> | customer_details.xlsx | home                 | 0                           |          |     |
      | Other Income Details   | <ApplicationStage> | <ProductType> | customer_details.xlsx | home                 | 0                           |          |     |
      | Liability Details      | <ApplicationStage> | <ProductType> | customer_details.xlsx | home                 | 0                           |          |     |

    @Islamic
    @NotImplemented
    @AuthoredBy-anshika.gupta
     # ${ ProductType : ["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Credit Approval","Reconsideration"]}
    Examples:
      | Accordion              | ApplicationStage   | ProductType   | CustomerDetailsWB     | CustomerDetails_home | CustomerDetails_home_rowNum | Category | Key |
      | Income Statement       | <ApplicationStage> | <ProductType> | customer_details.xlsx | home                 | 0                           |          |     |
      | Balance Sheet          | <ApplicationStage> | <ProductType> | customer_details.xlsx | home                 | 0                           |          |     |
      | Funds Flow             | <ApplicationStage> | <ProductType> | customer_details.xlsx | home                 | 0                           |          |     |
      | Statement of Cashflows | <ApplicationStage> | <ProductType> | customer_details.xlsx | home                 | 0                           |          |     |
      | Ratio Analysis         | <ApplicationStage> | <ProductType> | customer_details.xlsx | home                 | 0                           |          |     |
      | Previous Files         | <ApplicationStage> | <ProductType> | customer_details.xlsx | home                 | 0                           |          |     |
      | Other Income Details   | <ApplicationStage> | <ProductType> | customer_details.xlsx | home                 | 0                           |          |     |
      | Liability Details      | <ApplicationStage> | <ProductType> | customer_details.xlsx | home                 | 0                           |          |     |

    @Islamic
    @NotImplemented
    @AuthoredBy-anshika.gupta
    # ${ ProductType : ["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category:["bonds","shares","metals"]}
    Examples:
      | Accordion              | ApplicationStage   | ProductType   | CustomerDetailsWB     | CustomerDetails_home | CustomerDetails_home_rowNum | Category   | Key |
      | Income Statement       | <ApplicationStage> | <ProductType> | customer_details.xlsx | home                 | 0                           | <Category> |     |
      | Balance Sheet          | <ApplicationStage> | <ProductType> | customer_details.xlsx | home                 | 0                           | <Category> |     |
      | Funds Flow             | <ApplicationStage> | <ProductType> | customer_details.xlsx | home                 | 0                           | <Category> |     |
      | Statement of Cashflows | <ApplicationStage> | <ProductType> | customer_details.xlsx | home                 | 0                           | <Category> |     |
      | Ratio Analysis         | <ApplicationStage> | <ProductType> | customer_details.xlsx | home                 | 0                           | <Category> |     |
      | Previous Files         | <ApplicationStage> | <ProductType> | customer_details.xlsx | home                 | 0                           | <Category> |     |
      | Other Income Details   | <ApplicationStage> | <ProductType> | customer_details.xlsx | home                 | 0                           | <Category> |     |
      | Liability Details      | <ApplicationStage> | <ProductType> | customer_details.xlsx | home                 | 0                           | <Category> |     |




     #FeatureID-ACAUTOCAS-11453
  Scenario Outline: ACAUTOCAS-13536: <Field_Name> field validation of File Upload and Preview with <Validity> <InputType> in non individual applicant at <ApplicationStage> of <ProductType>
    And user opens an application of "<ProductType>" product type as "nonindiv" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user navigates to personal information page of "<ApplicationStage>"
    And user reads data from the excel file "<CustomerDetailsWB>" under sheet "<CustomerDetails_home>" and row <CustomerDetails_home_rowNum>
    And user fills and save customer details for non individual applicant
    And user open financial details for non individual
    When user open file upload accordion for file upload for non individual customer
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_fileUploadAndPreview>" and row <FinancialDetails_fileUploadAndPreview_rowNum>
    And user fills "<Validity>" "<Field_Name>" with "<InputType>" in File Upload
    Then "<Field_Name>" of file upload and preview should "<Filled>"

    @Conventional
    @ImplementedBy-kanika.mahal
    @Release
    @Release3
    @AuthoredBy-vipin.kishor
    #${ ProductType : ["PF","HL","AL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ApplicationStage   | ProductType   | Field_Name              | Validity | InputType                 | Filled        | FinancialDetailsWB     | FinancialDetails_fileUploadAndPreview | FinancialDetails_fileUploadAndPreview_rowNum | CustomerDetailsWB     | CustomerDetails_home | CustomerDetails_home_rowNum | Category | Key |
      | <ApplicationStage> | <ProductType> | No. of Years(Audited)   | valid    | max length 1 digit        | be filled     | financial_details.xlsx | file_upload_and_preview               | 0                                            | customer_details.xlsx | home                 | 0                           |          |     |
      | <ApplicationStage> | <ProductType> | No. of Years(Projected) | valid    | max length 1 digit        | be filled     | financial_details.xlsx | file_upload_and_preview               | 0                                            | customer_details.xlsx | home                 | 0                           |          |     |
      | <ApplicationStage> | <ProductType> | No. of Years(Unaudited) | valid    | max length 1 digit        | be filled     | financial_details.xlsx | file_upload_and_preview               | 0                                            | customer_details.xlsx | home                 | 0                           |          |     |
      | <ApplicationStage> | <ProductType> | Remarks                 | valid    | max length 200 characters | be filled     | financial_details.xlsx | file_upload_and_preview               | 0                                            | customer_details.xlsx | home                 | 0                           |          |     |
      | <ApplicationStage> | <ProductType> | No. of Years(Audited)   | invalid  | more than max length      | not be filled | financial_details.xlsx | file_upload_and_preview               | 1                                            | customer_details.xlsx | home                 | 0                           |          |     |
      | <ApplicationStage> | <ProductType> | No. of Years(Projected) | invalid  | more than max length      | not be filled | financial_details.xlsx | file_upload_and_preview               | 1                                            | customer_details.xlsx | home                 | 0                           |          |     |
      | <ApplicationStage> | <ProductType> | No. of Years(Unaudited) | invalid  | more than max length      | not be filled | financial_details.xlsx | file_upload_and_preview               | 1                                            | customer_details.xlsx | home                 | 0                           |          |     |
      | <ApplicationStage> | <ProductType> | Remarks                 | invalid  | more than max length      | not be filled | financial_details.xlsx | file_upload_and_preview               | 1                                            | customer_details.xlsx | home                 | 0                           |          |     |


    @Islamic
    @NotImplemented
    @AuthoredBy-anshika.gupta
     # ${ ProductType : ["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Credit Approval","Reconsideration"]}
    Examples:
      | ApplicationStage   | ProductType   | Field_Name              | Validity | InputType                 | Filled        | FinancialDetailsWB     | FinancialDetails_fileUploadAndPreview | FinancialDetails_fileUploadAndPreview_rowNum | CustomerDetailsWB     | CustomerDetails_home | CustomerDetails_home_rowNum | Category | Key |
      | <ApplicationStage> | <ProductType> | No. of Years(Audited)   | valid    | max length 1 digit        | be filled     | financial_details.xlsx | file_upload_and_preview               | 0                                            | customer_details.xlsx | home                 | 0                           |          |     |
      | <ApplicationStage> | <ProductType> | No. of Years(Projected) | valid    | max length 1 digit        | be filled     | financial_details.xlsx | file_upload_and_preview               | 0                                            | customer_details.xlsx | home                 | 0                           |          |     |
      | <ApplicationStage> | <ProductType> | No. of Years(Unaudited) | valid    | max length 1 digit        | be filled     | financial_details.xlsx | file_upload_and_preview               | 0                                            | customer_details.xlsx | home                 | 0                           |          |     |
      | <ApplicationStage> | <ProductType> | Remarks                 | valid    | max length 200 characters | be filled     | financial_details.xlsx | file_upload_and_preview               | 0                                            | customer_details.xlsx | home                 | 0                           |          |     |
      | <ApplicationStage> | <ProductType> | No. of Years(Audited)   | invalid  | more than max length      | not be filled | financial_details.xlsx | file_upload_and_preview               | 1                                            | customer_details.xlsx | home                 | 0                           |          |     |
      | <ApplicationStage> | <ProductType> | No. of Years(Projected) | invalid  | more than max length      | not be filled | financial_details.xlsx | file_upload_and_preview               | 1                                            | customer_details.xlsx | home                 | 0                           |          |     |
      | <ApplicationStage> | <ProductType> | No. of Years(Unaudited) | invalid  | more than max length      | not be filled | financial_details.xlsx | file_upload_and_preview               | 1                                            | customer_details.xlsx | home                 | 0                           |          |     |
      | <ApplicationStage> | <ProductType> | Remarks                 | invalid  | more than max length      | not be filled | financial_details.xlsx | file_upload_and_preview               | 1                                            | customer_details.xlsx | home                 | 0                           |          |     |


    @Islamic
    @NotImplemented
    @AuthoredBy-anshika.gupta
    # ${ ProductType : ["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category:["bonds","shares","metals"]}
    Examples:
      | ApplicationStage   | ProductType   | Field_Name              | Validity | InputType                 | Filled        | FinancialDetailsWB     | FinancialDetails_fileUploadAndPreview | FinancialDetails_fileUploadAndPreview_rowNum | CustomerDetailsWB     | CustomerDetails_home | CustomerDetails_home_rowNum | Category   | Key |
      | <ApplicationStage> | <ProductType> | No. of Years(Audited)   | valid    | max length 1 digit        | be filled     | financial_details.xlsx | file_upload_and_preview               | 0                                            | customer_details.xlsx | home                 | 0                           | <Category> |     |
      | <ApplicationStage> | <ProductType> | No. of Years(Projected) | valid    | max length 1 digit        | be filled     | financial_details.xlsx | file_upload_and_preview               | 0                                            | customer_details.xlsx | home                 | 0                           | <Category> |     |
      | <ApplicationStage> | <ProductType> | No. of Years(Unaudited) | valid    | max length 1 digit        | be filled     | financial_details.xlsx | file_upload_and_preview               | 0                                            | customer_details.xlsx | home                 | 0                           | <Category> |     |
      | <ApplicationStage> | <ProductType> | Remarks                 | valid    | max length 200 characters | be filled     | financial_details.xlsx | file_upload_and_preview               | 0                                            | customer_details.xlsx | home                 | 0                           | <Category> |     |
      | <ApplicationStage> | <ProductType> | No. of Years(Audited)   | invalid  | more than max length      | not be filled | financial_details.xlsx | file_upload_and_preview               | 1                                            | customer_details.xlsx | home                 | 0                           | <Category> |     |
      | <ApplicationStage> | <ProductType> | No. of Years(Projected) | invalid  | more than max length      | not be filled | financial_details.xlsx | file_upload_and_preview               | 1                                            | customer_details.xlsx | home                 | 0                           | <Category> |     |
      | <ApplicationStage> | <ProductType> | No. of Years(Unaudited) | invalid  | more than max length      | not be filled | financial_details.xlsx | file_upload_and_preview               | 1                                            | customer_details.xlsx | home                 | 0                           | <Category> |     |
      | <ApplicationStage> | <ProductType> | Remarks                 | invalid  | more than max length      | not be filled | financial_details.xlsx | file_upload_and_preview               | 1                                            | customer_details.xlsx | home                 | 0                           | <Category> |     |


#FeatureID-ACAUTOCAS-11453
  Scenario Outline: ACAUTOCAS-13537: <Download_Edit> without filling Document Name in financial details of non individual applicant at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "nonindiv" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user navigates to personal information page of "<ApplicationStage>"
    And user reads data from the excel file "<CustomerDetailsWB>" under sheet "<CustomerDetails_home>" and row <CustomerDetails_home_rowNum>
    And user fills and save customer details for non individual applicant
    And user open financial details for non individual
    When user open file upload accordion for file upload for non individual customer
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_fileUploadAndPreview>" and row <FinancialDetails_fileUploadAndPreview_rowNum>
    And user fills all fields except Document Name field
    And user selects "<Download_Edit>" option
    Then user unable to "<Download_Edit>" with an error message

    @Conventional
    @ImplementedBy-kanika.mahal
    @Release
    @Release3
    @AuthoredBy-vipin.kishor
    #${ ProductType : ["PF","HL","AL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | Download_Edit     | ProductType   | ApplicationStage   | FinancialDetailsWB     | FinancialDetails_fileUploadAndPreview | FinancialDetails_fileUploadAndPreview_rowNum | CustomerDetailsWB     | CustomerDetails_home | CustomerDetails_home_rowNum | Category | Key |
      | Download Template | <ProductType> | <ApplicationStage> | financial_details.xlsx | file_upload_and_preview               | 3                                            | customer_details.xlsx | home                 | 0                           |          |     |
      | Edit Online       | <ProductType> | <ApplicationStage> | financial_details.xlsx | file_upload_and_preview               | 3                                            | customer_details.xlsx | home                 | 0                           |          |     |

    @Islamic
    @NotImplemented
    @AuthoredBy-anshika.gupta
     # ${ ProductType : ["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Credit Approval","Reconsideration"]}
    Examples:
      | Download_Edit     | ProductType   | ApplicationStage   | FinancialDetailsWB     | FinancialDetails_fileUploadAndPreview | FinancialDetails_fileUploadAndPreview_rowNum | CustomerDetailsWB     | CustomerDetails_home | CustomerDetails_home_rowNum | Category | Key |
      | Download Template | <ProductType> | <ApplicationStage> | financial_details.xlsx | file_upload_and_preview               | 3                                            | customer_details.xlsx | home                 | 0                           |          |     |
      | Edit Online       | <ProductType> | <ApplicationStage> | financial_details.xlsx | file_upload_and_preview               | 3                                            | customer_details.xlsx | home                 | 0                           |          |     |

    @Islamic
    @NotImplemented
    @AuthoredBy-anshika.gupta
    # ${ ProductType : ["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category:["bonds","shares","metals"]}
    Examples:
      | Download_Edit     | ProductType   | ApplicationStage   | FinancialDetailsWB     | FinancialDetails_fileUploadAndPreview | FinancialDetails_fileUploadAndPreview_rowNum | CustomerDetailsWB     | CustomerDetails_home | CustomerDetails_home_rowNum | Category   | Key |
      | Download Template | <ProductType> | <ApplicationStage> | financial_details.xlsx | file_upload_and_preview               | 3                                            | customer_details.xlsx | home                 | 0                           | <Category> |     |
      | Edit Online       | <ProductType> | <ApplicationStage> | financial_details.xlsx | file_upload_and_preview               | 3                                            | customer_details.xlsx | home                 | 0                           | <Category> |     |



    #FeatureID-ACAUTOCAS-11453
  Scenario Outline: ACAUTOCAS-13538: <Download_Edit> with <NoOfAuditedYears> No of Audited Years in financial details of non individual applicant at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "nonindiv" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user navigates to personal information page of "<ApplicationStage>"
    And user reads data from the excel file "<CustomerDetailsWB>" under sheet "<CustomerDetails_home>" and row <CustomerDetails_home_rowNum>
    And user fills and save customer details for non individual applicant
    And user open financial details for non individual
    When user open file upload accordion for file upload for non individual customer
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_fileUploadAndPreview>" and row <FinancialDetails_fileUploadAndPreview_rowNum>
    And user fills all fields of file upload preview
    And user selects "<Download_Edit>" option
    Then user unable to "<Download_Edit>" with an error message

    @Conventional
    @ImplementedBy-kanika.mahal
    @Release
    @Release3
    @AuthoredBy-vipin.kishor
    #${ ProductType : ["PF","HL","AL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | Download_Edit     | NoOfAuditedYears | ProductType   | ApplicationStage   | FinancialDetailsWB     | FinancialDetails_fileUploadAndPreview | FinancialDetails_fileUploadAndPreview_rowNum | CustomerDetailsWB     | CustomerDetails_home | CustomerDetails_home_rowNum | Category | Key |
      | Download Template | 0                | <ProductType> | <ApplicationStage> | financial_details.xlsx | file_upload_and_preview               | 2                                            | customer_details.xlsx | home                 | 0                           |          |     |
      | Edit Online       | 0                | <ProductType> | <ApplicationStage> | financial_details.xlsx | file_upload_and_preview               | 2                                            | customer_details.xlsx | home                 | 0                           |          |     |

    @Islamic
    @NotImplemented
    @AuthoredBy-anshika.gupta
     # ${ ProductType : ["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Credit Approval","Reconsideration"]}
    Examples:
      | Download_Edit     | NoOfAuditedYears | ProductType   | ApplicationStage   | FinancialDetailsWB     | FinancialDetails_fileUploadAndPreview | FinancialDetails_fileUploadAndPreview_rowNum | CustomerDetailsWB     | CustomerDetails_home | CustomerDetails_home_rowNum | Category | Key |
      | Download Template | 0                | <ProductType> | <ApplicationStage> | financial_details.xlsx | file_upload_and_preview               | 2                                            | customer_details.xlsx | home                 | 0                           |          |     |
      | Edit Online       | 0                | <ProductType> | <ApplicationStage> | financial_details.xlsx | file_upload_and_preview               | 2                                            | customer_details.xlsx | home                 | 0                           |          |     |

    @Islamic
    @NotImplemented
    @AuthoredBy-anshika.gupta
    # ${ ProductType : ["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category:["bonds","shares","metals"]}
    Examples:
      | Download_Edit     | NoOfAuditedYears | ProductType   | ApplicationStage   | FinancialDetailsWB     | FinancialDetails_fileUploadAndPreview | FinancialDetails_fileUploadAndPreview_rowNum | CustomerDetailsWB     | CustomerDetails_home | CustomerDetails_home_rowNum | Category   | Key |
      | Download Template | 0                | <ProductType> | <ApplicationStage> | financial_details.xlsx | file_upload_and_preview               | 2                                            | customer_details.xlsx | home                 | 0                           | <Category> |     |
      | Edit Online       | 0                | <ProductType> | <ApplicationStage> | financial_details.xlsx | file_upload_and_preview               | 2                                            | customer_details.xlsx | home                 | 0                           | <Category> |     |


#FeatureID-ACAUTOCAS-11453
  Scenario Outline: ACAUTOCAS-13539: Upload File without <Field> in financial details of non individual applicant at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "nonindiv" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user navigates to personal information page of "<ApplicationStage>"
    And user reads data from the excel file "<CustomerDetailsWB>" under sheet "<CustomerDetails_home>" and row <CustomerDetails_home_rowNum>
    And user fills and save customer details for non individual applicant
    And user open financial details for non individual
    When user open file upload accordion for file upload for non individual customer
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_fileUploadAndPreview>" and row <FinancialDetails_fileUploadAndPreview_rowNum>
    And user fills all fields except "<Field>" field
    And user browse the "<Files_Type>" file
    And user upload the file
    Then file should not be upload with an error message

    @Conventional
    @ImplementedBy-kanika.mahal
    @Release
    @Release3
    @AuthoredBy-vipin.kishor
    #${ ProductType : ["PF","HL","AL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ApplicationStage   | ProductType   | Field                 | FinancialDetailsWB     | FinancialDetails_fileUploadAndPreview | FinancialDetails_fileUploadAndPreview_rowNum | Files_Type  | CustomerDetailsWB     | CustomerDetails_home | CustomerDetails_home_rowNum | Category | Key |
      | <ApplicationStage> | <ProductType> | No. of Years(Audited) | financial_details.xlsx | file_upload_and_preview               | 25                                           | appropriate | customer_details.xlsx | home                 | 0                           |          |     |
      | <ApplicationStage> | <ProductType> | Remarks               | financial_details.xlsx | file_upload_and_preview               | 38                                           | appropriate | customer_details.xlsx | home                 | 0                           |          |     |

    @Islamic
    @NotImplemented
    @AuthoredBy-anshika.gupta
     # ${ ProductType : ["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Credit Approval","Reconsideration"]}
    Examples:
      | ApplicationStage   | ProductType   | Field                 | FinancialDetailsWB     | FinancialDetails_fileUploadAndPreview | FinancialDetails_fileUploadAndPreview_rowNum | Files_Type  | CustomerDetailsWB     | CustomerDetails_home | CustomerDetails_home_rowNum | Category | Key |
      | <ApplicationStage> | <ProductType> | No. of Years(Audited) | financial_details.xlsx | file_upload_and_preview               | 25                                           | appropriate | customer_details.xlsx | home                 | 0                           |          |     |
      | <ApplicationStage> | <ProductType> | Remarks               | financial_details.xlsx | file_upload_and_preview               | 38                                           | appropriate | customer_details.xlsx | home                 | 0                           |          |     |


    @Islamic
    @NotImplemented
    @AuthoredBy-anshika.gupta
    # ${ ProductType : ["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category:["bonds","shares","metals"]}
    Examples:
      | ApplicationStage   | ProductType   | Field                 | FinancialDetailsWB     | FinancialDetails_fileUploadAndPreview | FinancialDetails_fileUploadAndPreview_rowNum | Files_Type  | CustomerDetailsWB     | CustomerDetails_home | CustomerDetails_home_rowNum | Category   | Key |
      | <ApplicationStage> | <ProductType> | No. of Years(Audited) | financial_details.xlsx | file_upload_and_preview               | 25                                           | appropriate | customer_details.xlsx | home                 | 0                           | <Category> |     |
      | <ApplicationStage> | <ProductType> | Remarks               | financial_details.xlsx | file_upload_and_preview               | 38                                           | appropriate | customer_details.xlsx | home                 | 0                           | <Category> |     |


#FeatureID-ACAUTOCAS-11453
  Scenario Outline: ACAUTOCAS-13540: Download Template of <Document_Type> document in financial details of non individual applicant at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "nonindiv" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user navigates to personal information page of "<ApplicationStage>"
    And user reads data from the excel file "<CustomerDetailsWB>" under sheet "<CustomerDetails_home>" and row <CustomerDetails_home_rowNum>
    And user fills and save customer details for non individual applicant
    And user open financial details for non individual
    And user open file upload accordion for file upload for non individual customer
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_file_upload_preview>" and row <FinancialDetails_file_upload_preview_rowNum>
    And user selects Document Type as "<Document_Type>" document
    And user fills rest all fields to Download Template
    When user Download Template of "<Document_Type>" document
    Then Download Template of "<Document_Type>" should be downloaded successfully

    @Conventional
    @ImplementedBy-kanika.mahal
    @Release
    @Release3
    @AuthoredBy-vipin.kishor
    #${ ProductType : ["PF","HL","AL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | Document_Type      | ProductType   | ApplicationStage   | FinancialDetailsWB     | FinancialDetails_file_upload_preview | FinancialDetails_file_upload_preview_rowNum | CustomerDetailsWB     | CustomerDetails_home | CustomerDetails_home_rowNum | Category | Key |
      | Balance Sheet      | <ProductType> | <ApplicationStage> | financial_details.xlsx | file_upload_and_preview              | 4                                           | customer_details.xlsx | home                 | 0                           |          |     |
      | Cash Flow          | <ProductType> | <ApplicationStage> | financial_details.xlsx | file_upload_and_preview              | 5                                           | customer_details.xlsx | home                 | 0                           |          |     |
      | Funds Flow         | <ProductType> | <ApplicationStage> | financial_details.xlsx | file_upload_and_preview              | 6                                           | customer_details.xlsx | home                 | 0                           |          |     |
      | Income_PLStatement | <ProductType> | <ApplicationStage> | financial_details.xlsx | file_upload_and_preview              | 7                                           | customer_details.xlsx | home                 | 0                           |          |     |

    @Islamic
    @NotImplemented
    @AuthoredBy-anshika.gupta
     # ${ ProductType : ["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Credit Approval","Reconsideration"]}
    Examples:
      | Document_Type      | ProductType   | ApplicationStage   | FinancialDetailsWB     | FinancialDetails_file_upload_preview | FinancialDetails_file_upload_preview_rowNum | CustomerDetailsWB     | CustomerDetails_home | CustomerDetails_home_rowNum | Category | Key |
      | Balance Sheet      | <ProductType> | <ApplicationStage> | financial_details.xlsx | file_upload_and_preview              | 4                                           | customer_details.xlsx | home                 | 0                           |          |     |
      | Cash Flow          | <ProductType> | <ApplicationStage> | financial_details.xlsx | file_upload_and_preview              | 5                                           | customer_details.xlsx | home                 | 0                           |          |     |
      | Funds Flow         | <ProductType> | <ApplicationStage> | financial_details.xlsx | file_upload_and_preview              | 6                                           | customer_details.xlsx | home                 | 0                           |          |     |
      | Income_PLStatement | <ProductType> | <ApplicationStage> | financial_details.xlsx | file_upload_and_preview              | 7                                           | customer_details.xlsx | home                 | 0                           |          |     |


    @Islamic
    @NotImplemented
    @AuthoredBy-anshika.gupta
    # ${ ProductType : ["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category:["bonds","shares","metals"]}
    Examples:
      | Document_Type      | ProductType   | ApplicationStage   | FinancialDetailsWB     | FinancialDetails_file_upload_preview | FinancialDetails_file_upload_preview_rowNum | CustomerDetailsWB     | CustomerDetails_home | CustomerDetails_home_rowNum | Category   | Key |
      | Balance Sheet      | <ProductType> | <ApplicationStage> | financial_details.xlsx | file_upload_and_preview              | 4                                           | customer_details.xlsx | home                 | 0                           | <Category> |     |
      | Cash Flow          | <ProductType> | <ApplicationStage> | financial_details.xlsx | file_upload_and_preview              | 5                                           | customer_details.xlsx | home                 | 0                           | <Category> |     |
      | Funds Flow         | <ProductType> | <ApplicationStage> | financial_details.xlsx | file_upload_and_preview              | 6                                           | customer_details.xlsx | home                 | 0                           | <Category> |     |
      | Income_PLStatement | <ProductType> | <ApplicationStage> | financial_details.xlsx | file_upload_and_preview              | 7                                           | customer_details.xlsx | home                 | 0                           | <Category> |     |


     #FeatureID-ACAUTOCAS-11453
  Scenario Outline: ACAUTOCAS-13541: No of Audited Years column validation for <Years> in download template for <Document_Type> document in financial details of non individual applicant at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "nonindiv" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user navigates to personal information page of "<ApplicationStage>"
    And user reads data from the excel file "<CustomerDetailsWB>" under sheet "<CustomerDetails_home>" and row <CustomerDetails_home_rowNum>
    And user fills and save customer details for non individual applicant
    And user open financial details for non individual
    And user open file upload accordion for file upload for non individual customer
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_fileUploadAndPreview>" and row <FinancialDetails_fileUploadAndPreview_rowNum>
    And user selects Document Type as "<Document_Type>" document
    And user fills document name
    And user fills "<Years>" in No of Audited Years field
    When user Download Template of "<Document_Type>" document
    Then "<Years>" column of No of "<Column_Name>" Years of "<Document_Type>" should be display in downloaded template


    @Conventional
    @ImplementedBy-kanika.mahal
    @Release
    @Release3
    @AuthoredBy-vipin.kishor
    #${ ProductType : ["PF","HL","AL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ApplicationStage   | ProductType   | Document_Type      | Years | FinancialDetailsWB     | FinancialDetails_fileUploadAndPreview | FinancialDetails_fileUploadAndPreview_rowNum | Column_Name | CustomerDetailsWB     | CustomerDetails_home | CustomerDetails_home_rowNum | Category | Key |
      | <ApplicationStage> | <ProductType> | Balance Sheet      | 1     | financial_details.xlsx | file_upload_and_preview               | 20                                           | Audited     | customer_details.xlsx | home                 | 0                           |          |     |
      | <ApplicationStage> | <ProductType> | Cash Flow          | 1     | financial_details.xlsx | file_upload_and_preview               | 21                                           | Audited     | customer_details.xlsx | home                 | 0                           |          |     |
      | <ApplicationStage> | <ProductType> | Funds Flow         | 1     | financial_details.xlsx | file_upload_and_preview               | 22                                           | Audited     | customer_details.xlsx | home                 | 0                           |          |     |
      | <ApplicationStage> | <ProductType> | Income_PLStatement | 1     | financial_details.xlsx | file_upload_and_preview               | 23                                           | Audited     | customer_details.xlsx | home                 | 0                           |          |     |
      | <ApplicationStage> | <ProductType> | Balance Sheet      | 3     | financial_details.xlsx | file_upload_and_preview               | 20                                           | Audited     | customer_details.xlsx | home                 | 0                           |          |     |
      | <ApplicationStage> | <ProductType> | Cash Flow          | 3     | financial_details.xlsx | file_upload_and_preview               | 21                                           | Audited     | customer_details.xlsx | home                 | 0                           |          |     |
      | <ApplicationStage> | <ProductType> | Funds Flow         | 3     | financial_details.xlsx | file_upload_and_preview               | 22                                           | Audited     | customer_details.xlsx | home                 | 0                           |          |     |
      | <ApplicationStage> | <ProductType> | Income_PLStatement | 3     | financial_details.xlsx | file_upload_and_preview               | 23                                           | Audited     | customer_details.xlsx | home                 | 0                           |          |     |
      | <ApplicationStage> | <ProductType> | Balance Sheet      | 5     | financial_details.xlsx | file_upload_and_preview               | 20                                           | Audited     | customer_details.xlsx | home                 | 0                           |          |     |
      | <ApplicationStage> | <ProductType> | Cash Flow          | 5     | financial_details.xlsx | file_upload_and_preview               | 21                                           | Audited     | customer_details.xlsx | home                 | 0                           |          |     |
      | <ApplicationStage> | <ProductType> | Funds Flow         | 5     | financial_details.xlsx | file_upload_and_preview               | 22                                           | Audited     | customer_details.xlsx | home                 | 0                           |          |     |
      | <ApplicationStage> | <ProductType> | Income_PLStatement | 5     | financial_details.xlsx | file_upload_and_preview               | 23                                           | Audited     | customer_details.xlsx | home                 | 0                           |          |     |

    @Islamic
    @NotImplemented
    @AuthoredBy-anshika.gupta
     # ${ ProductType : ["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Credit Approval","Reconsideration"]}
    Examples:
      | ApplicationStage   | ProductType   | Document_Type      | Years | FinancialDetailsWB     | FinancialDetails_fileUploadAndPreview | FinancialDetails_fileUploadAndPreview_rowNum | Column_Name | CustomerDetailsWB     | CustomerDetails_home | CustomerDetails_home_rowNum | Category | Key |
      | <ApplicationStage> | <ProductType> | Balance Sheet      | 1     | financial_details.xlsx | file_upload_and_preview               | 20                                           | Audited     | customer_details.xlsx | home                 | 0                           |          |     |
      | <ApplicationStage> | <ProductType> | Cash Flow          | 1     | financial_details.xlsx | file_upload_and_preview               | 21                                           | Audited     | customer_details.xlsx | home                 | 0                           |          |     |
      | <ApplicationStage> | <ProductType> | Funds Flow         | 1     | financial_details.xlsx | file_upload_and_preview               | 22                                           | Audited     | customer_details.xlsx | home                 | 0                           |          |     |
      | <ApplicationStage> | <ProductType> | Income_PLStatement | 1     | financial_details.xlsx | file_upload_and_preview               | 23                                           | Audited     | customer_details.xlsx | home                 | 0                           |          |     |
      | <ApplicationStage> | <ProductType> | Balance Sheet      | 3     | financial_details.xlsx | file_upload_and_preview               | 20                                           | Audited     | customer_details.xlsx | home                 | 0                           |          |     |
      | <ApplicationStage> | <ProductType> | Cash Flow          | 3     | financial_details.xlsx | file_upload_and_preview               | 21                                           | Audited     | customer_details.xlsx | home                 | 0                           |          |     |
      | <ApplicationStage> | <ProductType> | Funds Flow         | 3     | financial_details.xlsx | file_upload_and_preview               | 22                                           | Audited     | customer_details.xlsx | home                 | 0                           |          |     |
      | <ApplicationStage> | <ProductType> | Income_PLStatement | 3     | financial_details.xlsx | file_upload_and_preview               | 23                                           | Audited     | customer_details.xlsx | home                 | 0                           |          |     |
      | <ApplicationStage> | <ProductType> | Balance Sheet      | 5     | financial_details.xlsx | file_upload_and_preview               | 20                                           | Audited     | customer_details.xlsx | home                 | 0                           |          |     |
      | <ApplicationStage> | <ProductType> | Cash Flow          | 5     | financial_details.xlsx | file_upload_and_preview               | 21                                           | Audited     | customer_details.xlsx | home                 | 0                           |          |     |
      | <ApplicationStage> | <ProductType> | Funds Flow         | 5     | financial_details.xlsx | file_upload_and_preview               | 22                                           | Audited     | customer_details.xlsx | home                 | 0                           |          |     |
      | <ApplicationStage> | <ProductType> | Income_PLStatement | 5     | financial_details.xlsx | file_upload_and_preview               | 23                                           | Audited     | customer_details.xlsx | home                 | 0                           |          |     |



    @Islamic
    @NotImplemented
    @AuthoredBy-anshika.gupta
    # ${ ProductType : ["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category:["bonds","shares","metals"]}
    Examples:
      | ApplicationStage   | ProductType   | Document_Type      | Years | FinancialDetailsWB     | FinancialDetails_fileUploadAndPreview | FinancialDetails_fileUploadAndPreview_rowNum | Column_Name | CustomerDetailsWB     | CustomerDetails_home | CustomerDetails_home_rowNum | Category   | Key |
      | <ApplicationStage> | <ProductType> | Balance Sheet      | 1     | financial_details.xlsx | file_upload_and_preview               | 20                                           | Audited     | customer_details.xlsx | home                 | 0                           | <Category> |     |
      | <ApplicationStage> | <ProductType> | Cash Flow          | 1     | financial_details.xlsx | file_upload_and_preview               | 21                                           | Audited     | customer_details.xlsx | home                 | 0                           | <Category> |     |
      | <ApplicationStage> | <ProductType> | Funds Flow         | 1     | financial_details.xlsx | file_upload_and_preview               | 22                                           | Audited     | customer_details.xlsx | home                 | 0                           | <Category> |     |
      | <ApplicationStage> | <ProductType> | Income_PLStatement | 1     | financial_details.xlsx | file_upload_and_preview               | 23                                           | Audited     | customer_details.xlsx | home                 | 0                           | <Category> |     |
      | <ApplicationStage> | <ProductType> | Balance Sheet      | 3     | financial_details.xlsx | file_upload_and_preview               | 20                                           | Audited     | customer_details.xlsx | home                 | 0                           | <Category> |     |
      | <ApplicationStage> | <ProductType> | Cash Flow          | 3     | financial_details.xlsx | file_upload_and_preview               | 21                                           | Audited     | customer_details.xlsx | home                 | 0                           | <Category> |     |
      | <ApplicationStage> | <ProductType> | Funds Flow         | 3     | financial_details.xlsx | file_upload_and_preview               | 22                                           | Audited     | customer_details.xlsx | home                 | 0                           | <Category> |     |
      | <ApplicationStage> | <ProductType> | Income_PLStatement | 3     | financial_details.xlsx | file_upload_and_preview               | 23                                           | Audited     | customer_details.xlsx | home                 | 0                           | <Category> |     |
      | <ApplicationStage> | <ProductType> | Balance Sheet      | 5     | financial_details.xlsx | file_upload_and_preview               | 20                                           | Audited     | customer_details.xlsx | home                 | 0                           | <Category> |     |
      | <ApplicationStage> | <ProductType> | Cash Flow          | 5     | financial_details.xlsx | file_upload_and_preview               | 21                                           | Audited     | customer_details.xlsx | home                 | 0                           | <Category> |     |
      | <ApplicationStage> | <ProductType> | Funds Flow         | 5     | financial_details.xlsx | file_upload_and_preview               | 22                                           | Audited     | customer_details.xlsx | home                 | 0                           | <Category> |     |
      | <ApplicationStage> | <ProductType> | Income_PLStatement | 5     | financial_details.xlsx | file_upload_and_preview               | 23                                           | Audited     | customer_details.xlsx | home                 | 0                           | <Category> |     |


#FeatureID-ACAUTOCAS-11453
  Scenario Outline: ACAUTOCAS-13542: No of Projected Years column validation for <Years> in download template for <Document_Type> document in financial details of non individual applicant at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "nonindiv" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user navigates to personal information page of "<ApplicationStage>"
    And user reads data from the excel file "<CustomerDetailsWB>" under sheet "<CustomerDetails_home>" and row <CustomerDetails_home_rowNum>
    And user fills and save customer details for non individual applicant
    And user open financial details for non individual
    And user open file upload accordion for file upload for non individual customer
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_fileUploadAndPreview>" and row <FinancialDetails_fileUploadAndPreview_rowNum>
    And user fills all fields of file upload preview
    And user fills no of projected years
    When user Download Template of "<Document_Type>" document
    Then "<Years>" column of No of "<Column_Name>" Years of "<Document_Type>" should be display in downloaded template

    @Conventional
    @ImplementedBy-kanika.mahal
    @Release
    @Release3
    @AuthoredBy-vipin.kishor
    #${ ProductType : ["PF","HL","AL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ApplicationStage   | ProductType   | Document_Type      | Years | FinancialDetailsWB     | FinancialDetails_fileUploadAndPreview | FinancialDetails_fileUploadAndPreview_rowNum | Column_Name | CustomerDetailsWB     | CustomerDetails_home | CustomerDetails_home_rowNum | Category | Key |
      | <ApplicationStage> | <ProductType> | Balance Sheet      | 1     | financial_details.xlsx | file_upload_and_preview               | 12                                           | Projected   | customer_details.xlsx | home                 | 0                           |          |     |
      | <ApplicationStage> | <ProductType> | Cash Flow          | 1     | financial_details.xlsx | file_upload_and_preview               | 13                                           | Projected   | customer_details.xlsx | home                 | 0                           |          |     |
      | <ApplicationStage> | <ProductType> | Funds Flow         | 1     | financial_details.xlsx | file_upload_and_preview               | 14                                           | Projected   | customer_details.xlsx | home                 | 0                           |          |     |
      | <ApplicationStage> | <ProductType> | Income_PLStatement | 1     | financial_details.xlsx | file_upload_and_preview               | 15                                           | Projected   | customer_details.xlsx | home                 | 0                           |          |     |
      | <ApplicationStage> | <ProductType> | Balance Sheet      | 3     | financial_details.xlsx | file_upload_and_preview               | 16                                           | Projected   | customer_details.xlsx | home                 | 0                           |          |     |
      | <ApplicationStage> | <ProductType> | Cash Flow          | 3     | financial_details.xlsx | file_upload_and_preview               | 17                                           | Projected   | customer_details.xlsx | home                 | 0                           |          |     |
      | <ApplicationStage> | <ProductType> | Funds Flow         | 3     | financial_details.xlsx | file_upload_and_preview               | 18                                           | Projected   | customer_details.xlsx | home                 | 0                           |          |     |
      | <ApplicationStage> | <ProductType> | Income_PLStatement | 3     | financial_details.xlsx | file_upload_and_preview               | 19                                           | Projected   | customer_details.xlsx | home                 | 0                           |          |     |
      | <ApplicationStage> | <ProductType> | Balance Sheet      | 5     | financial_details.xlsx | file_upload_and_preview               | 20                                           | Projected   | customer_details.xlsx | home                 | 0                           |          |     |
      | <ApplicationStage> | <ProductType> | Cash Flow          | 5     | financial_details.xlsx | file_upload_and_preview               | 21                                           | Projected   | customer_details.xlsx | home                 | 0                           |          |     |
      | <ApplicationStage> | <ProductType> | Funds Flow         | 5     | financial_details.xlsx | file_upload_and_preview               | 22                                           | Projected   | customer_details.xlsx | home                 | 0                           |          |     |
      | <ApplicationStage> | <ProductType> | Income_PLStatement | 5     | financial_details.xlsx | file_upload_and_preview               | 23                                           | Projected   | customer_details.xlsx | home                 | 0                           |          |     |


    @Islamic
    @NotImplemented
    @AuthoredBy-anshika.gupta
     # ${ ProductType : ["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Credit Approval","Reconsideration"]}
    Examples:
      | ApplicationStage   | ProductType   | Document_Type      | Years | FinancialDetailsWB     | FinancialDetails_fileUploadAndPreview | FinancialDetails_fileUploadAndPreview_rowNum | Column_Name | CustomerDetailsWB     | CustomerDetails_home | CustomerDetails_home_rowNum | Category | Key |
      | <ApplicationStage> | <ProductType> | Balance Sheet      | 1     | financial_details.xlsx | file_upload_and_preview               | 12                                           | Projected   | customer_details.xlsx | home                 | 0                           |          |     |
      | <ApplicationStage> | <ProductType> | Cash Flow          | 1     | financial_details.xlsx | file_upload_and_preview               | 13                                           | Projected   | customer_details.xlsx | home                 | 0                           |          |     |
      | <ApplicationStage> | <ProductType> | Funds Flow         | 1     | financial_details.xlsx | file_upload_and_preview               | 14                                           | Projected   | customer_details.xlsx | home                 | 0                           |          |     |
      | <ApplicationStage> | <ProductType> | Income_PLStatement | 1     | financial_details.xlsx | file_upload_and_preview               | 15                                           | Projected   | customer_details.xlsx | home                 | 0                           |          |     |
      | <ApplicationStage> | <ProductType> | Balance Sheet      | 3     | financial_details.xlsx | file_upload_and_preview               | 16                                           | Projected   | customer_details.xlsx | home                 | 0                           |          |     |
      | <ApplicationStage> | <ProductType> | Cash Flow          | 3     | financial_details.xlsx | file_upload_and_preview               | 17                                           | Projected   | customer_details.xlsx | home                 | 0                           |          |     |
      | <ApplicationStage> | <ProductType> | Funds Flow         | 3     | financial_details.xlsx | file_upload_and_preview               | 18                                           | Projected   | customer_details.xlsx | home                 | 0                           |          |     |
      | <ApplicationStage> | <ProductType> | Income_PLStatement | 3     | financial_details.xlsx | file_upload_and_preview               | 19                                           | Projected   | customer_details.xlsx | home                 | 0                           |          |     |
      | <ApplicationStage> | <ProductType> | Balance Sheet      | 5     | financial_details.xlsx | file_upload_and_preview               | 20                                           | Projected   | customer_details.xlsx | home                 | 0                           |          |     |
      | <ApplicationStage> | <ProductType> | Cash Flow          | 5     | financial_details.xlsx | file_upload_and_preview               | 21                                           | Projected   | customer_details.xlsx | home                 | 0                           |          |     |
      | <ApplicationStage> | <ProductType> | Funds Flow         | 5     | financial_details.xlsx | file_upload_and_preview               | 22                                           | Projected   | customer_details.xlsx | home                 | 0                           |          |     |
      | <ApplicationStage> | <ProductType> | Income_PLStatement | 5     | financial_details.xlsx | file_upload_and_preview               | 23                                           | Projected   | customer_details.xlsx | home                 | 0                           |          |     |


    @Islamic
    @NotImplemented
    @AuthoredBy-anshika.gupta
    # ${ ProductType : ["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category:["bonds","shares","metals"]}
    Examples:
      | ApplicationStage   | ProductType   | Document_Type      | Years | FinancialDetailsWB     | FinancialDetails_fileUploadAndPreview | FinancialDetails_fileUploadAndPreview_rowNum | Column_Name | CustomerDetailsWB     | CustomerDetails_home | CustomerDetails_home_rowNum | Category   | Key |
      | <ApplicationStage> | <ProductType> | Balance Sheet      | 1     | financial_details.xlsx | file_upload_and_preview               | 12                                           | Projected   | customer_details.xlsx | home                 | 0                           | <Category> |     |
      | <ApplicationStage> | <ProductType> | Cash Flow          | 1     | financial_details.xlsx | file_upload_and_preview               | 13                                           | Projected   | customer_details.xlsx | home                 | 0                           | <Category> |     |
      | <ApplicationStage> | <ProductType> | Funds Flow         | 1     | financial_details.xlsx | file_upload_and_preview               | 14                                           | Projected   | customer_details.xlsx | home                 | 0                           | <Category> |     |
      | <ApplicationStage> | <ProductType> | Income_PLStatement | 1     | financial_details.xlsx | file_upload_and_preview               | 15                                           | Projected   | customer_details.xlsx | home                 | 0                           | <Category> |     |
      | <ApplicationStage> | <ProductType> | Balance Sheet      | 3     | financial_details.xlsx | file_upload_and_preview               | 16                                           | Projected   | customer_details.xlsx | home                 | 0                           | <Category> |     |
      | <ApplicationStage> | <ProductType> | Cash Flow          | 3     | financial_details.xlsx | file_upload_and_preview               | 17                                           | Projected   | customer_details.xlsx | home                 | 0                           | <Category> |     |
      | <ApplicationStage> | <ProductType> | Funds Flow         | 3     | financial_details.xlsx | file_upload_and_preview               | 18                                           | Projected   | customer_details.xlsx | home                 | 0                           | <Category> |     |
      | <ApplicationStage> | <ProductType> | Income_PLStatement | 3     | financial_details.xlsx | file_upload_and_preview               | 19                                           | Projected   | customer_details.xlsx | home                 | 0                           | <Category> |     |
      | <ApplicationStage> | <ProductType> | Balance Sheet      | 5     | financial_details.xlsx | file_upload_and_preview               | 20                                           | Projected   | customer_details.xlsx | home                 | 0                           | <Category> |     |
      | <ApplicationStage> | <ProductType> | Cash Flow          | 5     | financial_details.xlsx | file_upload_and_preview               | 21                                           | Projected   | customer_details.xlsx | home                 | 0                           | <Category> |     |
      | <ApplicationStage> | <ProductType> | Funds Flow         | 5     | financial_details.xlsx | file_upload_and_preview               | 22                                           | Projected   | customer_details.xlsx | home                 | 0                           | <Category> |     |
      | <ApplicationStage> | <ProductType> | Income_PLStatement | 5     | financial_details.xlsx | file_upload_and_preview               | 23                                           | Projected   | customer_details.xlsx | home                 | 0                           | <Category> |     |


    #FeatureID-ACAUTOCAS-11453
  Scenario Outline: ACAUTOCAS-13543: No of Unaudited Years column validation for <Years> in download template for <Document_Type> document in financial details of non individual applicant at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "nonindiv" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user navigates to personal information page of "<ApplicationStage>"
    And user reads data from the excel file "<CustomerDetailsWB>" under sheet "<CustomerDetails_home>" and row <CustomerDetails_home_rowNum>
    And user fills and save customer details for non individual applicant
    And user open financial details for non individual
    And user open file upload accordion for file upload for non individual customer
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_fileUploadAndPreview>" and row <FinancialDetails_fileUploadAndPreview_rowNum>
    And user selects Document Type as "<Document_Type>" document
    And user fills document name
    And user fills no of audited years
    And user fills "<Years>" in No of Unaudited Years field
    When user Download Template of "<Document_Type>" document
    Then "<Years>" column of No of "<Column_Name>" Years of "<Document_Type>" should be display in downloaded template

    @Conventional
    @ImplementedBy-kanika.mahal
    @Release
    @Release3
    @AuthoredBy-vipin.kishor
    #${ ProductType : ["PF","HL","AL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ApplicationStage   | ProductType   | Document_Type      | Years | FinancialDetailsWB     | FinancialDetails_fileUploadAndPreview | FinancialDetails_fileUploadAndPreview_rowNum | Column_Name | CustomerDetailsWB     | CustomerDetails_home | CustomerDetails_home_rowNum | Category | Key |
      | <ApplicationStage> | <ProductType> | Balance Sheet      | 1     | financial_details.xlsx | file_upload_and_preview               | 20                                           | UnAudited   | customer_details.xlsx | home                 | 0                           |          |     |
      | <ApplicationStage> | <ProductType> | Cash Flow          | 1     | financial_details.xlsx | file_upload_and_preview               | 21                                           | UnAudited   | customer_details.xlsx | home                 | 0                           |          |     |
      | <ApplicationStage> | <ProductType> | Funds Flow         | 1     | financial_details.xlsx | file_upload_and_preview               | 22                                           | UnAudited   | customer_details.xlsx | home                 | 0                           |          |     |
      | <ApplicationStage> | <ProductType> | Income_PLStatement | 1     | financial_details.xlsx | file_upload_and_preview               | 23                                           | UnAudited   | customer_details.xlsx | home                 | 0                           |          |     |
      | <ApplicationStage> | <ProductType> | Balance Sheet      | 0     | financial_details.xlsx | file_upload_and_preview               | 20                                           | UnAudited   | customer_details.xlsx | home                 | 0                           |          |     |
      | <ApplicationStage> | <ProductType> | Cash Flow          | 0     | financial_details.xlsx | file_upload_and_preview               | 21                                           | UnAudited   | customer_details.xlsx | home                 | 0                           |          |     |
      | <ApplicationStage> | <ProductType> | Funds Flow         | 0     | financial_details.xlsx | file_upload_and_preview               | 22                                           | UnAudited   | customer_details.xlsx | home                 | 0                           |          |     |
      | <ApplicationStage> | <ProductType> | Income_PLStatement | 0     | financial_details.xlsx | file_upload_and_preview               | 23                                           | UnAudited   | customer_details.xlsx | home                 | 0                           |          |     |


    @Islamic
    @NotImplemented
    @AuthoredBy-anshika.gupta
     # ${ ProductType : ["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Credit Approval","Reconsideration"]}
    Examples:
      | ApplicationStage   | ProductType   | Document_Type      | Years | FinancialDetailsWB     | FinancialDetails_fileUploadAndPreview | FinancialDetails_fileUploadAndPreview_rowNum | Column_Name | CustomerDetailsWB     | CustomerDetails_home | CustomerDetails_home_rowNum | Category | Key |
      | <ApplicationStage> | <ProductType> | Balance Sheet      | 1     | financial_details.xlsx | file_upload_and_preview               | 20                                           | UnAudited   | customer_details.xlsx | home                 | 0                           |          |     |
      | <ApplicationStage> | <ProductType> | Cash Flow          | 1     | financial_details.xlsx | file_upload_and_preview               | 21                                           | UnAudited   | customer_details.xlsx | home                 | 0                           |          |     |
      | <ApplicationStage> | <ProductType> | Funds Flow         | 1     | financial_details.xlsx | file_upload_and_preview               | 22                                           | UnAudited   | customer_details.xlsx | home                 | 0                           |          |     |
      | <ApplicationStage> | <ProductType> | Income_PLStatement | 1     | financial_details.xlsx | file_upload_and_preview               | 23                                           | UnAudited   | customer_details.xlsx | home                 | 0                           |          |     |
      | <ApplicationStage> | <ProductType> | Balance Sheet      | 0     | financial_details.xlsx | file_upload_and_preview               | 20                                           | UnAudited   | customer_details.xlsx | home                 | 0                           |          |     |
      | <ApplicationStage> | <ProductType> | Cash Flow          | 0     | financial_details.xlsx | file_upload_and_preview               | 21                                           | UnAudited   | customer_details.xlsx | home                 | 0                           |          |     |
      | <ApplicationStage> | <ProductType> | Funds Flow         | 0     | financial_details.xlsx | file_upload_and_preview               | 22                                           | UnAudited   | customer_details.xlsx | home                 | 0                           |          |     |
      | <ApplicationStage> | <ProductType> | Income_PLStatement | 0     | financial_details.xlsx | file_upload_and_preview               | 23                                           | UnAudited   | customer_details.xlsx | home                 | 0                           |          |     |


    @Islamic
    @NotImplemented
    @AuthoredBy-anshika.gupta
    # ${ ProductType : ["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category:["bonds","shares","metals"]}
    Examples:
      | ApplicationStage   | ProductType   | Document_Type      | Years | FinancialDetailsWB     | FinancialDetails_fileUploadAndPreview | FinancialDetails_fileUploadAndPreview_rowNum | Column_Name | CustomerDetailsWB     | CustomerDetails_home | CustomerDetails_home_rowNum | Category   | Key |
      | <ApplicationStage> | <ProductType> | Balance Sheet      | 1     | financial_details.xlsx | file_upload_and_preview               | 20                                           | UnAudited   | customer_details.xlsx | home                 | 0                           | <Category> |     |
      | <ApplicationStage> | <ProductType> | Cash Flow          | 1     | financial_details.xlsx | file_upload_and_preview               | 21                                           | UnAudited   | customer_details.xlsx | home                 | 0                           | <Category> |     |
      | <ApplicationStage> | <ProductType> | Funds Flow         | 1     | financial_details.xlsx | file_upload_and_preview               | 22                                           | UnAudited   | customer_details.xlsx | home                 | 0                           | <Category> |     |
      | <ApplicationStage> | <ProductType> | Income_PLStatement | 1     | financial_details.xlsx | file_upload_and_preview               | 23                                           | UnAudited   | customer_details.xlsx | home                 | 0                           | <Category> |     |
      | <ApplicationStage> | <ProductType> | Balance Sheet      | 0     | financial_details.xlsx | file_upload_and_preview               | 20                                           | UnAudited   | customer_details.xlsx | home                 | 0                           | <Category> |     |
      | <ApplicationStage> | <ProductType> | Cash Flow          | 0     | financial_details.xlsx | file_upload_and_preview               | 21                                           | UnAudited   | customer_details.xlsx | home                 | 0                           | <Category> |     |
      | <ApplicationStage> | <ProductType> | Funds Flow         | 0     | financial_details.xlsx | file_upload_and_preview               | 22                                           | UnAudited   | customer_details.xlsx | home                 | 0                           | <Category> |     |
      | <ApplicationStage> | <ProductType> | Income_PLStatement | 0     | financial_details.xlsx | file_upload_and_preview               | 23                                           | UnAudited   | customer_details.xlsx | home                 | 0                           | <Category> |     |



      #FeatureID-ACAUTOCAS-11453
  Scenario Outline: ACAUTOCAS-13544: Edit Online <Document_Type> document in financial details of non individual applicant at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "nonindiv" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user navigates to personal information page of "<ApplicationStage>"
    And user reads data from the excel file "<CustomerDetailsWB>" under sheet "<CustomerDetails_home>" and row <CustomerDetails_home_rowNum>
    And user fills and save customer details for non individual applicant
    And user open financial details for non individual
    When user open file upload accordion for file upload for non individual customer
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_fileUploadAndPreview>" and row <FinancialDetails_fileUploadAndPreview_rowNum>
    And user fills all fields of file upload preview
    And user selects "Edit Online" option
    And user Edit Online "<Document_Type>" document
    Then "<Document_Type>" document should be Edit Online successfully

    @Conventional
    @ImplementedBy-kanika.mahal
    @Release
    @Release3
    @AuthoredBy-vipin.kishor
    #${ ProductType : ["PF","HL","AL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ApplicationStage   | ProductType   | Document_Type        | FinancialDetailsWB     | FinancialDetails_fileUploadAndPreview | FinancialDetails_fileUploadAndPreview_rowNum | CustomerDetailsWB     | CustomerDetails_home | CustomerDetails_home_rowNum | Category | Key |
      | <ApplicationStage> | <ProductType> | Balance Sheet        | financial_details.xlsx | file_upload_and_preview               | 4                                            | customer_details.xlsx | home                 | 0                           |          |     |
      | <ApplicationStage> | <ProductType> | Cash Flow            | financial_details.xlsx | file_upload_and_preview               | 5                                            | customer_details.xlsx | home                 | 0                           |          |     |
      | <ApplicationStage> | <ProductType> | Funds Flow           | financial_details.xlsx | file_upload_and_preview               | 6                                            | customer_details.xlsx | home                 | 0                           |          |     |
      | <ApplicationStage> | <ProductType> | Income/P&L Statement | financial_details.xlsx | file_upload_and_preview               | 7                                            | customer_details.xlsx | home                 | 0                           |          |     |

    @Islamic
    @NotImplemented
    @AuthoredBy-anshika.gupta
     # ${ ProductType : ["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Credit Approval","Reconsideration"]}
    Examples:
      | ApplicationStage   | ProductType   | Document_Type        | FinancialDetailsWB     | FinancialDetails_fileUploadAndPreview | FinancialDetails_fileUploadAndPreview_rowNum | CustomerDetailsWB     | CustomerDetails_home | CustomerDetails_home_rowNum | Category | Key |
      | <ApplicationStage> | <ProductType> | Balance Sheet        | financial_details.xlsx | file_upload_and_preview               | 4                                            | customer_details.xlsx | home                 | 0                           |          |     |
      | <ApplicationStage> | <ProductType> | Cash Flow            | financial_details.xlsx | file_upload_and_preview               | 5                                            | customer_details.xlsx | home                 | 0                           |          |     |
      | <ApplicationStage> | <ProductType> | Funds Flow           | financial_details.xlsx | file_upload_and_preview               | 6                                            | customer_details.xlsx | home                 | 0                           |          |     |
      | <ApplicationStage> | <ProductType> | Income/P&L Statement | financial_details.xlsx | file_upload_and_preview               | 7                                            | customer_details.xlsx | home                 | 0                           |          |     |


    @Islamic
    @NotImplemented
    @AuthoredBy-anshika.gupta
    # ${ ProductType : ["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category:["bonds","shares","metals"]}
    Examples:
      | ApplicationStage   | ProductType   | Document_Type        | FinancialDetailsWB     | FinancialDetails_fileUploadAndPreview | FinancialDetails_fileUploadAndPreview_rowNum | CustomerDetailsWB     | CustomerDetails_home | CustomerDetails_home_rowNum | Category   | Key |
      | <ApplicationStage> | <ProductType> | Balance Sheet        | financial_details.xlsx | file_upload_and_preview               | 4                                            | customer_details.xlsx | home                 | 0                           | <Category> |     |
      | <ApplicationStage> | <ProductType> | Cash Flow            | financial_details.xlsx | file_upload_and_preview               | 5                                            | customer_details.xlsx | home                 | 0                           | <Category> |     |
      | <ApplicationStage> | <ProductType> | Funds Flow           | financial_details.xlsx | file_upload_and_preview               | 6                                            | customer_details.xlsx | home                 | 0                           | <Category> |     |
      | <ApplicationStage> | <ProductType> | Income/P&L Statement | financial_details.xlsx | file_upload_and_preview               | 7                                            | customer_details.xlsx | home                 | 0                           | <Category> |     |


  #FeatureID-ACAUTOCAS-11453
  Scenario Outline: ACAUTOCAS-13545: <Document_Type> validation after Editing Online in financial details of non individual applicant at "<ApplicationStage>" in "<ProductType>"
    And user opens an application of "<ProductType>" product type as "nonindiv" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user navigates to personal information page of "<ApplicationStage>"
    And user reads data from the excel file "<CustomerDetailsWB>" under sheet "<CustomerDetails_home>" and row <CustomerDetails_home_rowNum>
    And user fills and save customer details for non individual applicant
    And user open financial details for non individual
    When user open file upload accordion for file upload for non individual customer
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_fileUploadAndPreview>" and row <FinancialDetails_fileUploadAndPreview_rowNum>
    And user fills all fields of file upload preview
    And user selects "Edit Online" option
    And user Edit Online "<Document_Type>" document
    And  user opens file upload accordion
    Then "<Document_Type>" document should be display with edited values

    @Conventional
    @ImplementedBy-kanika.mahal
    @Release
    @Release3
    @AuthoredBy-vipin.kishor
    #${ ProductType : ["PF","HL","AL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ApplicationStage   | ProductType   | Document_Type        | FinancialDetailsWB     | FinancialDetails_fileUploadAndPreview | FinancialDetails_fileUploadAndPreview_rowNum | CustomerDetailsWB     | CustomerDetails_home | CustomerDetails_home_rowNum | Category | Key |
      | <ApplicationStage> | <ProductType> | Balance Sheet        | financial_details.xlsx | file_upload_and_preview               | 4                                            | customer_details.xlsx | home                 | 0                           |          |     |
      | <ApplicationStage> | <ProductType> | Cash Flow            | financial_details.xlsx | file_upload_and_preview               | 5                                            | customer_details.xlsx | home                 | 0                           |          |     |
      | <ApplicationStage> | <ProductType> | Funds Flow           | financial_details.xlsx | file_upload_and_preview               | 6                                            | customer_details.xlsx | home                 | 0                           |          |     |
      | <ApplicationStage> | <ProductType> | Income/P&L Statement | financial_details.xlsx | file_upload_and_preview               | 7                                            | customer_details.xlsx | home                 | 0                           |          |     |

    @Islamic
    @NotImplemented
    @AuthoredBy-anshika.gupta
     # ${ ProductType : ["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Credit Approval","Reconsideration"]}
    Examples:
      | ApplicationStage   | ProductType   | Document_Type        | FinancialDetailsWB     | FinancialDetails_fileUploadAndPreview | FinancialDetails_fileUploadAndPreview_rowNum | CustomerDetailsWB     | CustomerDetails_home | CustomerDetails_home_rowNum | Category | Key |
      | <ApplicationStage> | <ProductType> | Balance Sheet        | financial_details.xlsx | file_upload_and_preview               | 4                                            | customer_details.xlsx | home                 | 0                           |          |     |
      | <ApplicationStage> | <ProductType> | Cash Flow            | financial_details.xlsx | file_upload_and_preview               | 5                                            | customer_details.xlsx | home                 | 0                           |          |     |
      | <ApplicationStage> | <ProductType> | Funds Flow           | financial_details.xlsx | file_upload_and_preview               | 6                                            | customer_details.xlsx | home                 | 0                           |          |     |
      | <ApplicationStage> | <ProductType> | Income/P&L Statement | financial_details.xlsx | file_upload_and_preview               | 7                                            | customer_details.xlsx | home                 | 0                           |          |     |


    @Islamic
    @NotImplemented
    @AuthoredBy-anshika.gupta
    # ${ ProductType : ["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category:["bonds","shares","metals"]}
    Examples:
      | ApplicationStage   | ProductType   | Document_Type        | FinancialDetailsWB     | FinancialDetails_fileUploadAndPreview | FinancialDetails_fileUploadAndPreview_rowNum | CustomerDetailsWB     | CustomerDetails_home | CustomerDetails_home_rowNum | Category   | Key |
      | <ApplicationStage> | <ProductType> | Balance Sheet        | financial_details.xlsx | file_upload_and_preview               | 4                                            | customer_details.xlsx | home                 | 0                           | <Category> |     |
      | <ApplicationStage> | <ProductType> | Cash Flow            | financial_details.xlsx | file_upload_and_preview               | 5                                            | customer_details.xlsx | home                 | 0                           | <Category> |     |
      | <ApplicationStage> | <ProductType> | Funds Flow           | financial_details.xlsx | file_upload_and_preview               | 6                                            | customer_details.xlsx | home                 | 0                           | <Category> |     |
      | <ApplicationStage> | <ProductType> | Income/P&L Statement | financial_details.xlsx | file_upload_and_preview               | 7                                            | customer_details.xlsx | home                 | 0                           | <Category> |     |


#This feature can only be accessible to users having appropriate access rights.

    #FeatureID-ACAUTOCAS-11453
  Scenario Outline: ACAUTOCAS-13546: No of Audited Years column validation in Edit Online popup screen for <Document_Type> document in financial details of non individual applicant at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "nonindiv" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user navigates to personal information page of "<ApplicationStage>"
    And user reads data from the excel file "<CustomerDetailsWB>" under sheet "<CustomerDetails_home>" and row <CustomerDetails_home_rowNum>
    And user fills and save customer details for non individual applicant
    And user open financial details for non individual
    When user open file upload accordion for file upload for non individual customer
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_fileUploadAndPreview>" and row <FinancialDetails_fileUploadAndPreview_rowNum>
    And user fills all fields of file upload preview
    And user selects "Edit Online" option
    Then "<Years>" column of "No. of Years(Audited)" should be display in Edit Online popup screen

    @Conventional
    @ImplementedBy-kanika.mahal
    @Release
    @Release3
    @AuthoredBy-vipin.kishor
    #${ ProductType : ["PF","HL","AL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ApplicationStage   | ProductType   | Document_Type        | Years | FinancialDetailsWB     | FinancialDetails_fileUploadAndPreview | FinancialDetails_fileUploadAndPreview_rowNum | CustomerDetailsWB     | CustomerDetails_home | CustomerDetails_home_rowNum | Category | Key |
      | <ApplicationStage> | <ProductType> | Balance Sheet        | 1     | financial_details.xlsx | file_upload_and_preview               | 12                                           | customer_details.xlsx | home                 | 0                           |          |     |
      | <ApplicationStage> | <ProductType> | Cash Flow            | 1     | financial_details.xlsx | file_upload_and_preview               | 13                                           | customer_details.xlsx | home                 | 0                           |          |     |
      | <ApplicationStage> | <ProductType> | Funds Flow           | 1     | financial_details.xlsx | file_upload_and_preview               | 14                                           | customer_details.xlsx | home                 | 0                           |          |     |
      | <ApplicationStage> | <ProductType> | Income/P&L Statement | 1     | financial_details.xlsx | file_upload_and_preview               | 15                                           | customer_details.xlsx | home                 | 0                           |          |     |
      | <ApplicationStage> | <ProductType> | Balance Sheet        | 3     | financial_details.xlsx | file_upload_and_preview               | 16                                           | customer_details.xlsx | home                 | 0                           |          |     |
      | <ApplicationStage> | <ProductType> | Cash Flow            | 3     | financial_details.xlsx | file_upload_and_preview               | 17                                           | customer_details.xlsx | home                 | 0                           |          |     |
      | <ApplicationStage> | <ProductType> | Funds Flow           | 3     | financial_details.xlsx | file_upload_and_preview               | 18                                           | customer_details.xlsx | home                 | 0                           |          |     |
      | <ApplicationStage> | <ProductType> | Income/P&L Statement | 3     | financial_details.xlsx | file_upload_and_preview               | 19                                           | customer_details.xlsx | home                 | 0                           |          |     |
      | <ApplicationStage> | <ProductType> | Balance Sheet        | 5     | financial_details.xlsx | file_upload_and_preview               | 20                                           | customer_details.xlsx | home                 | 0                           |          |     |
      | <ApplicationStage> | <ProductType> | Cash Flow            | 5     | financial_details.xlsx | file_upload_and_preview               | 21                                           | customer_details.xlsx | home                 | 0                           |          |     |
      | <ApplicationStage> | <ProductType> | Funds Flow           | 5     | financial_details.xlsx | file_upload_and_preview               | 22                                           | customer_details.xlsx | home                 | 0                           |          |     |
      | <ApplicationStage> | <ProductType> | Income/P&L Statement | 5     | financial_details.xlsx | file_upload_and_preview               | 23                                           | customer_details.xlsx | home                 | 0                           |          |     |

    @Islamic
    @NotImplemented
    @AuthoredBy-anshika.gupta
     # ${ ProductType : ["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Credit Approval","Reconsideration"]}
    Examples:
      | ApplicationStage   | ProductType   | Document_Type        | Years | FinancialDetailsWB     | FinancialDetails_fileUploadAndPreview | FinancialDetails_fileUploadAndPreview_rowNum | CustomerDetailsWB     | CustomerDetails_home | CustomerDetails_home_rowNum | Category | Key |
      | <ApplicationStage> | <ProductType> | Balance Sheet        | 1     | financial_details.xlsx | file_upload_and_preview               | 12                                           | customer_details.xlsx | home                 | 0                           |          |     |
      | <ApplicationStage> | <ProductType> | Cash Flow            | 1     | financial_details.xlsx | file_upload_and_preview               | 13                                           | customer_details.xlsx | home                 | 0                           |          |     |
      | <ApplicationStage> | <ProductType> | Funds Flow           | 1     | financial_details.xlsx | file_upload_and_preview               | 14                                           | customer_details.xlsx | home                 | 0                           |          |     |
      | <ApplicationStage> | <ProductType> | Income/P&L Statement | 1     | financial_details.xlsx | file_upload_and_preview               | 15                                           | customer_details.xlsx | home                 | 0                           |          |     |
      | <ApplicationStage> | <ProductType> | Balance Sheet        | 3     | financial_details.xlsx | file_upload_and_preview               | 16                                           | customer_details.xlsx | home                 | 0                           |          |     |
      | <ApplicationStage> | <ProductType> | Cash Flow            | 3     | financial_details.xlsx | file_upload_and_preview               | 17                                           | customer_details.xlsx | home                 | 0                           |          |     |
      | <ApplicationStage> | <ProductType> | Funds Flow           | 3     | financial_details.xlsx | file_upload_and_preview               | 18                                           | customer_details.xlsx | home                 | 0                           |          |     |
      | <ApplicationStage> | <ProductType> | Income/P&L Statement | 3     | financial_details.xlsx | file_upload_and_preview               | 19                                           | customer_details.xlsx | home                 | 0                           |          |     |
      | <ApplicationStage> | <ProductType> | Balance Sheet        | 5     | financial_details.xlsx | file_upload_and_preview               | 20                                           | customer_details.xlsx | home                 | 0                           |          |     |
      | <ApplicationStage> | <ProductType> | Cash Flow            | 5     | financial_details.xlsx | file_upload_and_preview               | 21                                           | customer_details.xlsx | home                 | 0                           |          |     |
      | <ApplicationStage> | <ProductType> | Funds Flow           | 5     | financial_details.xlsx | file_upload_and_preview               | 22                                           | customer_details.xlsx | home                 | 0                           |          |     |
      | <ApplicationStage> | <ProductType> | Income/P&L Statement | 5     | financial_details.xlsx | file_upload_and_preview               | 23                                           | customer_details.xlsx | home                 | 0                           |          |     |

    @Islamic
    @NotImplemented
    @AuthoredBy-anshika.gupta
    # ${ ProductType : ["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category:["bonds","shares","metals"]}
    Examples:
      | ApplicationStage   | ProductType   | Document_Type        | Years | FinancialDetailsWB     | FinancialDetails_fileUploadAndPreview | FinancialDetails_fileUploadAndPreview_rowNum | CustomerDetailsWB     | CustomerDetails_home | CustomerDetails_home_rowNum | Category   | Key |
      | <ApplicationStage> | <ProductType> | Balance Sheet        | 1     | financial_details.xlsx | file_upload_and_preview               | 12                                           | customer_details.xlsx | home                 | 0                           | <Category> |     |
      | <ApplicationStage> | <ProductType> | Cash Flow            | 1     | financial_details.xlsx | file_upload_and_preview               | 13                                           | customer_details.xlsx | home                 | 0                           | <Category> |     |
      | <ApplicationStage> | <ProductType> | Funds Flow           | 1     | financial_details.xlsx | file_upload_and_preview               | 14                                           | customer_details.xlsx | home                 | 0                           | <Category> |     |
      | <ApplicationStage> | <ProductType> | Income/P&L Statement | 1     | financial_details.xlsx | file_upload_and_preview               | 15                                           | customer_details.xlsx | home                 | 0                           | <Category> |     |
      | <ApplicationStage> | <ProductType> | Balance Sheet        | 3     | financial_details.xlsx | file_upload_and_preview               | 16                                           | customer_details.xlsx | home                 | 0                           | <Category> |     |
      | <ApplicationStage> | <ProductType> | Cash Flow            | 3     | financial_details.xlsx | file_upload_and_preview               | 17                                           | customer_details.xlsx | home                 | 0                           | <Category> |     |
      | <ApplicationStage> | <ProductType> | Funds Flow           | 3     | financial_details.xlsx | file_upload_and_preview               | 18                                           | customer_details.xlsx | home                 | 0                           | <Category> |     |
      | <ApplicationStage> | <ProductType> | Income/P&L Statement | 3     | financial_details.xlsx | file_upload_and_preview               | 19                                           | customer_details.xlsx | home                 | 0                           | <Category> |     |
      | <ApplicationStage> | <ProductType> | Balance Sheet        | 5     | financial_details.xlsx | file_upload_and_preview               | 20                                           | customer_details.xlsx | home                 | 0                           | <Category> |     |
      | <ApplicationStage> | <ProductType> | Cash Flow            | 5     | financial_details.xlsx | file_upload_and_preview               | 21                                           | customer_details.xlsx | home                 | 0                           | <Category> |     |
      | <ApplicationStage> | <ProductType> | Funds Flow           | 5     | financial_details.xlsx | file_upload_and_preview               | 22                                           | customer_details.xlsx | home                 | 0                           | <Category> |     |
      | <ApplicationStage> | <ProductType> | Income/P&L Statement | 5     | financial_details.xlsx | file_upload_and_preview               | 23                                           | customer_details.xlsx | home                 | 0                           | <Category> |     |


  #FeatureID-ACAUTOCAS-11453
  Scenario Outline: ACAUTOCAS-13547: No of Projected Years column validation in Edit Online popup screen for <Document_Type> document in financial details of non individual applicant at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "nonindiv" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user navigates to personal information page of "<ApplicationStage>"
    And user reads data from the excel file "<CustomerDetailsWB>" under sheet "<CustomerDetails_home>" and row <CustomerDetails_home_rowNum>
    And user fills and save customer details for non individual applicant
    And user open financial details for non individual
    When user open file upload accordion for file upload for non individual customer
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_fileUploadAndPreview>" and row <FinancialDetails_fileUploadAndPreview_rowNum>
    And user fills all fields of file upload preview
    And user fills no of projected years
    And user selects "Edit Online" option
    Then "<Years>" column of "No. of Years(Projected)" should be display in Edit Online popup screen

    @Conventional
    @ImplementedBy-kanika.mahal
    @Release
    @Release3
    @AuthoredBy-vipin.kishor
    #${ ProductType : ["PF","HL","AL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ApplicationStage   | ProductType   | Document_Type        | Years | FinancialDetailsWB     | FinancialDetails_fileUploadAndPreview | FinancialDetails_fileUploadAndPreview_rowNum | CustomerDetailsWB     | CustomerDetails_home | CustomerDetails_home_rowNum | Category | Key |
      | <ApplicationStage> | <ProductType> | Balance Sheet        | 1     | financial_details.xlsx | file_upload_and_preview               | 12                                           | customer_details.xlsx | home                 | 0                           |          |     |
      | <ApplicationStage> | <ProductType> | Cash Flow            | 1     | financial_details.xlsx | file_upload_and_preview               | 13                                           | customer_details.xlsx | home                 | 0                           |          |     |
      | <ApplicationStage> | <ProductType> | Funds Flow           | 1     | financial_details.xlsx | file_upload_and_preview               | 14                                           | customer_details.xlsx | home                 | 0                           |          |     |
      | <ApplicationStage> | <ProductType> | Income/P&L Statement | 1     | financial_details.xlsx | file_upload_and_preview               | 15                                           | customer_details.xlsx | home                 | 0                           |          |     |
      | <ApplicationStage> | <ProductType> | Balance Sheet        | 3     | financial_details.xlsx | file_upload_and_preview               | 16                                           | customer_details.xlsx | home                 | 0                           |          |     |
      | <ApplicationStage> | <ProductType> | Cash Flow            | 3     | financial_details.xlsx | file_upload_and_preview               | 17                                           | customer_details.xlsx | home                 | 0                           |          |     |
      | <ApplicationStage> | <ProductType> | Funds Flow           | 3     | financial_details.xlsx | file_upload_and_preview               | 18                                           | customer_details.xlsx | home                 | 0                           |          |     |
      | <ApplicationStage> | <ProductType> | Income/P&L Statement | 3     | financial_details.xlsx | file_upload_and_preview               | 19                                           | customer_details.xlsx | home                 | 0                           |          |     |
      | <ApplicationStage> | <ProductType> | Balance Sheet        | 5     | financial_details.xlsx | file_upload_and_preview               | 20                                           | customer_details.xlsx | home                 | 0                           |          |     |
      | <ApplicationStage> | <ProductType> | Cash Flow            | 5     | financial_details.xlsx | file_upload_and_preview               | 21                                           | customer_details.xlsx | home                 | 0                           |          |     |
      | <ApplicationStage> | <ProductType> | Funds Flow           | 5     | financial_details.xlsx | file_upload_and_preview               | 22                                           | customer_details.xlsx | home                 | 0                           |          |     |
      | <ApplicationStage> | <ProductType> | Income/P&L Statement | 5     | financial_details.xlsx | file_upload_and_preview               | 23                                           | customer_details.xlsx | home                 | 0                           |          |     |

    @Islamic
    @NotImplemented
    @AuthoredBy-anshika.gupta
     # ${ ProductType : ["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Credit Approval","Reconsideration"]}
    Examples:
      | ApplicationStage   | ProductType   | Document_Type        | Years | FinancialDetailsWB     | FinancialDetails_fileUploadAndPreview | FinancialDetails_fileUploadAndPreview_rowNum | CustomerDetailsWB     | CustomerDetails_home | CustomerDetails_home_rowNum | Category | Key |
      | <ApplicationStage> | <ProductType> | Balance Sheet        | 1     | financial_details.xlsx | file_upload_and_preview               | 12                                           | customer_details.xlsx | home                 | 0                           |          |     |
      | <ApplicationStage> | <ProductType> | Cash Flow            | 1     | financial_details.xlsx | file_upload_and_preview               | 13                                           | customer_details.xlsx | home                 | 0                           |          |     |
      | <ApplicationStage> | <ProductType> | Funds Flow           | 1     | financial_details.xlsx | file_upload_and_preview               | 14                                           | customer_details.xlsx | home                 | 0                           |          |     |
      | <ApplicationStage> | <ProductType> | Income/P&L Statement | 1     | financial_details.xlsx | file_upload_and_preview               | 15                                           | customer_details.xlsx | home                 | 0                           |          |     |
      | <ApplicationStage> | <ProductType> | Balance Sheet        | 3     | financial_details.xlsx | file_upload_and_preview               | 16                                           | customer_details.xlsx | home                 | 0                           |          |     |
      | <ApplicationStage> | <ProductType> | Cash Flow            | 3     | financial_details.xlsx | file_upload_and_preview               | 17                                           | customer_details.xlsx | home                 | 0                           |          |     |
      | <ApplicationStage> | <ProductType> | Funds Flow           | 3     | financial_details.xlsx | file_upload_and_preview               | 18                                           | customer_details.xlsx | home                 | 0                           |          |     |
      | <ApplicationStage> | <ProductType> | Income/P&L Statement | 3     | financial_details.xlsx | file_upload_and_preview               | 19                                           | customer_details.xlsx | home                 | 0                           |          |     |
      | <ApplicationStage> | <ProductType> | Balance Sheet        | 5     | financial_details.xlsx | file_upload_and_preview               | 20                                           | customer_details.xlsx | home                 | 0                           |          |     |
      | <ApplicationStage> | <ProductType> | Cash Flow            | 5     | financial_details.xlsx | file_upload_and_preview               | 21                                           | customer_details.xlsx | home                 | 0                           |          |     |
      | <ApplicationStage> | <ProductType> | Funds Flow           | 5     | financial_details.xlsx | file_upload_and_preview               | 22                                           | customer_details.xlsx | home                 | 0                           |          |     |
      | <ApplicationStage> | <ProductType> | Income/P&L Statement | 5     | financial_details.xlsx | file_upload_and_preview               | 23                                           | customer_details.xlsx | home                 | 0                           |          |     |

    @Islamic
    @NotImplemented
    @AuthoredBy-anshika.gupta
    # ${ ProductType : ["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category:["bonds","shares","metals"]}
    Examples:
      | ApplicationStage   | ProductType   | Document_Type        | Years | FinancialDetailsWB     | FinancialDetails_fileUploadAndPreview | FinancialDetails_fileUploadAndPreview_rowNum | CustomerDetailsWB     | CustomerDetails_home | CustomerDetails_home_rowNum | Category   | Key |
      | <ApplicationStage> | <ProductType> | Balance Sheet        | 1     | financial_details.xlsx | file_upload_and_preview               | 12                                           | customer_details.xlsx | home                 | 0                           | <Category> |     |
      | <ApplicationStage> | <ProductType> | Cash Flow            | 1     | financial_details.xlsx | file_upload_and_preview               | 13                                           | customer_details.xlsx | home                 | 0                           | <Category> |     |
      | <ApplicationStage> | <ProductType> | Funds Flow           | 1     | financial_details.xlsx | file_upload_and_preview               | 14                                           | customer_details.xlsx | home                 | 0                           | <Category> |     |
      | <ApplicationStage> | <ProductType> | Income/P&L Statement | 1     | financial_details.xlsx | file_upload_and_preview               | 15                                           | customer_details.xlsx | home                 | 0                           | <Category> |     |
      | <ApplicationStage> | <ProductType> | Balance Sheet        | 3     | financial_details.xlsx | file_upload_and_preview               | 16                                           | customer_details.xlsx | home                 | 0                           | <Category> |     |
      | <ApplicationStage> | <ProductType> | Cash Flow            | 3     | financial_details.xlsx | file_upload_and_preview               | 17                                           | customer_details.xlsx | home                 | 0                           | <Category> |     |
      | <ApplicationStage> | <ProductType> | Funds Flow           | 3     | financial_details.xlsx | file_upload_and_preview               | 18                                           | customer_details.xlsx | home                 | 0                           | <Category> |     |
      | <ApplicationStage> | <ProductType> | Income/P&L Statement | 3     | financial_details.xlsx | file_upload_and_preview               | 19                                           | customer_details.xlsx | home                 | 0                           | <Category> |     |
      | <ApplicationStage> | <ProductType> | Balance Sheet        | 5     | financial_details.xlsx | file_upload_and_preview               | 20                                           | customer_details.xlsx | home                 | 0                           | <Category> |     |
      | <ApplicationStage> | <ProductType> | Cash Flow            | 5     | financial_details.xlsx | file_upload_and_preview               | 21                                           | customer_details.xlsx | home                 | 0                           | <Category> |     |
      | <ApplicationStage> | <ProductType> | Funds Flow           | 5     | financial_details.xlsx | file_upload_and_preview               | 22                                           | customer_details.xlsx | home                 | 0                           | <Category> |     |
      | <ApplicationStage> | <ProductType> | Income/P&L Statement | 5     | financial_details.xlsx | file_upload_and_preview               | 23                                           | customer_details.xlsx | home                 | 0                           | <Category> |     |


  #FeatureID-ACAUTOCAS-11453
  Scenario Outline: ACAUTOCAS-13548: No of Unaudited Years column validation in Edit Online popup screen for <Document_Type> document in financial details of non individual applicant at "<ApplicationStage>" in "<ProductType>"
    And user opens an application of "<ProductType>" product type as "nonindiv" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user navigates to personal information page of "<ApplicationStage>"
    And user reads data from the excel file "<CustomerDetailsWB>" under sheet "<CustomerDetails_home>" and row <CustomerDetails_home_rowNum>
    And user fills and save customer details for non individual applicant
    And user open financial details for non individual
    When user open file upload accordion for file upload for non individual customer
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_fileUploadAndPreview>" and row <FinancialDetails_fileUploadAndPreview_rowNum>
    And user fills all fields of file upload preview
    And user fills no of unaudited year
    And user selects "Edit Online" option
    Then "<Years>" column of "No. of Years(Unaudited)" should be display in Edit Online popup screen

    @Conventional
    @ImplementedBy-kanika.mahal
    @Release
    @Release3
    @AuthoredBy-vipin.kishor
    #${ ProductType : ["PF","HL","AL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ApplicationStage   | ProductType   | Document_Type        | Years | FinancialDetailsWB     | FinancialDetails_fileUploadAndPreview | FinancialDetails_fileUploadAndPreview_rowNum | CustomerDetailsWB     | CustomerDetails_home | CustomerDetails_home_rowNum | Category | Key |
      | <ApplicationStage> | <ProductType> | Balance Sheet        | 1     | financial_details.xlsx | file_upload_and_preview               | 12                                           | customer_details.xlsx | home                 | 0                           |          |     |
      | <ApplicationStage> | <ProductType> | Cash Flow            | 1     | financial_details.xlsx | file_upload_and_preview               | 13                                           | customer_details.xlsx | home                 | 0                           |          |     |
      | <ApplicationStage> | <ProductType> | Funds Flow           | 1     | financial_details.xlsx | file_upload_and_preview               | 14                                           | customer_details.xlsx | home                 | 0                           |          |     |
      | <ApplicationStage> | <ProductType> | Income/P&L Statement | 1     | financial_details.xlsx | file_upload_and_preview               | 15                                           | customer_details.xlsx | home                 | 0                           |          |     |
      | <ApplicationStage> | <ProductType> | Balance Sheet        | 0     | financial_details.xlsx | file_upload_and_preview               | 16                                           | customer_details.xlsx | home                 | 0                           |          |     |
      | <ApplicationStage> | <ProductType> | Cash Flow            | 0     | financial_details.xlsx | file_upload_and_preview               | 17                                           | customer_details.xlsx | home                 | 0                           |          |     |
      | <ApplicationStage> | <ProductType> | Funds Flow           | 0     | financial_details.xlsx | file_upload_and_preview               | 18                                           | customer_details.xlsx | home                 | 0                           |          |     |
      | <ApplicationStage> | <ProductType> | Income/P&L Statement | 0     | financial_details.xlsx | file_upload_and_preview               | 19                                           | customer_details.xlsx | home                 | 0                           |          |     |

    @Islamic
    @NotImplemented
    @AuthoredBy-anshika.gupta
     # ${ ProductType : ["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Credit Approval","Reconsideration"]}
    Examples:
      | ApplicationStage   | ProductType   | Document_Type        | Years | FinancialDetailsWB     | FinancialDetails_fileUploadAndPreview | FinancialDetails_fileUploadAndPreview_rowNum | CustomerDetailsWB     | CustomerDetails_home | CustomerDetails_home_rowNum | Category | Key |
      | <ApplicationStage> | <ProductType> | Balance Sheet        | 1     | financial_details.xlsx | file_upload_and_preview               | 12                                           | customer_details.xlsx | home                 | 0                           |          |     |
      | <ApplicationStage> | <ProductType> | Cash Flow            | 1     | financial_details.xlsx | file_upload_and_preview               | 13                                           | customer_details.xlsx | home                 | 0                           |          |     |
      | <ApplicationStage> | <ProductType> | Funds Flow           | 1     | financial_details.xlsx | file_upload_and_preview               | 14                                           | customer_details.xlsx | home                 | 0                           |          |     |
      | <ApplicationStage> | <ProductType> | Income/P&L Statement | 1     | financial_details.xlsx | file_upload_and_preview               | 15                                           | customer_details.xlsx | home                 | 0                           |          |     |
      | <ApplicationStage> | <ProductType> | Balance Sheet        | 0     | financial_details.xlsx | file_upload_and_preview               | 16                                           | customer_details.xlsx | home                 | 0                           |          |     |
      | <ApplicationStage> | <ProductType> | Cash Flow            | 0     | financial_details.xlsx | file_upload_and_preview               | 17                                           | customer_details.xlsx | home                 | 0                           |          |     |
      | <ApplicationStage> | <ProductType> | Funds Flow           | 0     | financial_details.xlsx | file_upload_and_preview               | 18                                           | customer_details.xlsx | home                 | 0                           |          |     |
      | <ApplicationStage> | <ProductType> | Income/P&L Statement | 0     | financial_details.xlsx | file_upload_and_preview               | 19                                           | customer_details.xlsx | home                 | 0                           |          |     |


    @Islamic
    @NotImplemented
    @AuthoredBy-anshika.gupta
    # ${ ProductType : ["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category:["bonds","shares","metals"]}
    Examples:
      | ApplicationStage   | ProductType   | Document_Type        | Years | FinancialDetailsWB     | FinancialDetails_fileUploadAndPreview | FinancialDetails_fileUploadAndPreview_rowNum | CustomerDetailsWB     | CustomerDetails_home | CustomerDetails_home_rowNum | Category   | Key |
      | <ApplicationStage> | <ProductType> | Balance Sheet        | 1     | financial_details.xlsx | file_upload_and_preview               | 12                                           | customer_details.xlsx | home                 | 0                           | <Category> |     |
      | <ApplicationStage> | <ProductType> | Cash Flow            | 1     | financial_details.xlsx | file_upload_and_preview               | 13                                           | customer_details.xlsx | home                 | 0                           | <Category> |     |
      | <ApplicationStage> | <ProductType> | Funds Flow           | 1     | financial_details.xlsx | file_upload_and_preview               | 14                                           | customer_details.xlsx | home                 | 0                           | <Category> |     |
      | <ApplicationStage> | <ProductType> | Income/P&L Statement | 1     | financial_details.xlsx | file_upload_and_preview               | 15                                           | customer_details.xlsx | home                 | 0                           | <Category> |     |
      | <ApplicationStage> | <ProductType> | Balance Sheet        | 0     | financial_details.xlsx | file_upload_and_preview               | 16                                           | customer_details.xlsx | home                 | 0                           | <Category> |     |
      | <ApplicationStage> | <ProductType> | Cash Flow            | 0     | financial_details.xlsx | file_upload_and_preview               | 17                                           | customer_details.xlsx | home                 | 0                           | <Category> |     |
      | <ApplicationStage> | <ProductType> | Funds Flow           | 0     | financial_details.xlsx | file_upload_and_preview               | 18                                           | customer_details.xlsx | home                 | 0                           | <Category> |     |
      | <ApplicationStage> | <ProductType> | Income/P&L Statement | 0     | financial_details.xlsx | file_upload_and_preview               | 19                                           | customer_details.xlsx | home                 | 0                           | <Category> |     |


#FeatureID-ACAUTOCAS-11453
  @LoggedBug
  Scenario Outline: ACAUTOCAS-13549: Modify the <Audit> while Editing Online <Document_Type> document in financial details of non individual applicant at "<ApplicationStage>" in "<ProductType>"
    And user opens an application of "<ProductType>" product type as "nonindiv" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user navigates to personal information page of "<ApplicationStage>"
    And user reads data from the excel file "<CustomerDetailsWB>" under sheet "<CustomerDetails_home>" and row <CustomerDetails_home_rowNum>
    And user fills and save customer details for non individual applicant
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_fileUploadAndPreview>" and row <FinancialDetails_fileUploadAndPreview_rowNum>
    And user open financial details for non individual
    And user open file upload accordion for file upload for non individual customer
    And user selects Document Type as "<Document_Type>" document
    And user fills rest all fields to Edit Online
    When user open Edit Online popup screen
    And user modify the <Audit> of <Document_Type> document
    Then <Document_Type> document should not be modify with an error message

    @Conventional
    @ImplementedBy-kanika.mahal
    @Release
    @Release3
    @AuthoredBy-vipin.kishor
    #${ ProductType : ["PF","HL","AL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ApplicationStage   | ProductType   | Document_Type        | Audit                   | FinancialDetailsWB     | FinancialDetails_fileUploadAndPreview | FinancialDetails_fileUploadAndPreview_rowNum | CustomerDetailsWB     | CustomerDetails_home | CustomerDetails_home_rowNum | Category | Key |
      | <ApplicationStage> | <ProductType> | Balance Sheet        | No. of Years(Audited)   | financial_details.xlsx | file_upload_and_preview               | 12                                           | customer_details.xlsx | home                 | 0                           |          |     |
      | <ApplicationStage> | <ProductType> | Balance Sheet        | No. of Years(Projected) | financial_details.xlsx | file_upload_and_preview               | 12                                           | customer_details.xlsx | home                 | 0                           |          |     |
      | <ApplicationStage> | <ProductType> | Balance Sheet        | No. of Years(Unaudited) | financial_details.xlsx | file_upload_and_preview               | 12                                           | customer_details.xlsx | home                 | 0                           |          |     |
      | <ApplicationStage> | <ProductType> | Cash Flow            | No. of Years(Audited)   | financial_details.xlsx | file_upload_and_preview               | 13                                           | customer_details.xlsx | home                 | 0                           |          |     |
      | <ApplicationStage> | <ProductType> | Cash Flow            | No. of Years(Projected) | financial_details.xlsx | file_upload_and_preview               | 13                                           | customer_details.xlsx | home                 | 0                           |          |     |
      | <ApplicationStage> | <ProductType> | Cash Flow            | No. of Years(Unaudited) | financial_details.xlsx | file_upload_and_preview               | 13                                           | customer_details.xlsx | home                 | 0                           |          |     |
      | <ApplicationStage> | <ProductType> | Funds Flow           | No. of Years(Audited)   | financial_details.xlsx | file_upload_and_preview               | 14                                           | customer_details.xlsx | home                 | 0                           |          |     |
      | <ApplicationStage> | <ProductType> | Funds Flow           | No. of Years(Projected) | financial_details.xlsx | file_upload_and_preview               | 14                                           | customer_details.xlsx | home                 | 0                           |          |     |
      | <ApplicationStage> | <ProductType> | Funds Flow           | No. of Years(Unaudited) | financial_details.xlsx | file_upload_and_preview               | 14                                           | customer_details.xlsx | home                 | 0                           |          |     |
      | <ApplicationStage> | <ProductType> | Income/P&L Statement | No. of Years(Audited)   | financial_details.xlsx | file_upload_and_preview               | 15                                           | customer_details.xlsx | home                 | 0                           |          |     |
      | <ApplicationStage> | <ProductType> | Income/P&L Statement | No. of Years(Projected) | financial_details.xlsx | file_upload_and_preview               | 15                                           | customer_details.xlsx | home                 | 0                           |          |     |
      | <ApplicationStage> | <ProductType> | Income/P&L Statement | No. of Years(Unaudited) | financial_details.xlsx | file_upload_and_preview               | 15                                           | customer_details.xlsx | home                 | 0                           |          |     |

    @Islamic
    @NotImplemented
    @AuthoredBy-anshika.gupta
     # ${ ProductType : ["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Credit Approval","Reconsideration"]}
    Examples:
      | ApplicationStage   | ProductType   | Document_Type        | Audit                   | FinancialDetailsWB     | FinancialDetails_fileUploadAndPreview | FinancialDetails_fileUploadAndPreview_rowNum | CustomerDetailsWB     | CustomerDetails_home | CustomerDetails_home_rowNum | Category | Key |
      | <ApplicationStage> | <ProductType> | Balance Sheet        | No. of Years(Audited)   | financial_details.xlsx | file_upload_and_preview               | 12                                           | customer_details.xlsx | home                 | 0                           |          |     |
      | <ApplicationStage> | <ProductType> | Balance Sheet        | No. of Years(Projected) | financial_details.xlsx | file_upload_and_preview               | 12                                           | customer_details.xlsx | home                 | 0                           |          |     |
      | <ApplicationStage> | <ProductType> | Balance Sheet        | No. of Years(Unaudited) | financial_details.xlsx | file_upload_and_preview               | 12                                           | customer_details.xlsx | home                 | 0                           |          |     |
      | <ApplicationStage> | <ProductType> | Cash Flow            | No. of Years(Audited)   | financial_details.xlsx | file_upload_and_preview               | 13                                           | customer_details.xlsx | home                 | 0                           |          |     |
      | <ApplicationStage> | <ProductType> | Cash Flow            | No. of Years(Projected) | financial_details.xlsx | file_upload_and_preview               | 13                                           | customer_details.xlsx | home                 | 0                           |          |     |
      | <ApplicationStage> | <ProductType> | Cash Flow            | No. of Years(Unaudited) | financial_details.xlsx | file_upload_and_preview               | 13                                           | customer_details.xlsx | home                 | 0                           |          |     |
      | <ApplicationStage> | <ProductType> | Funds Flow           | No. of Years(Audited)   | financial_details.xlsx | file_upload_and_preview               | 14                                           | customer_details.xlsx | home                 | 0                           |          |     |
      | <ApplicationStage> | <ProductType> | Funds Flow           | No. of Years(Projected) | financial_details.xlsx | file_upload_and_preview               | 14                                           | customer_details.xlsx | home                 | 0                           |          |     |
      | <ApplicationStage> | <ProductType> | Funds Flow           | No. of Years(Unaudited) | financial_details.xlsx | file_upload_and_preview               | 14                                           | customer_details.xlsx | home                 | 0                           |          |     |
      | <ApplicationStage> | <ProductType> | Income/P&L Statement | No. of Years(Audited)   | financial_details.xlsx | file_upload_and_preview               | 15                                           | customer_details.xlsx | home                 | 0                           |          |     |
      | <ApplicationStage> | <ProductType> | Income/P&L Statement | No. of Years(Projected) | financial_details.xlsx | file_upload_and_preview               | 15                                           | customer_details.xlsx | home                 | 0                           |          |     |
      | <ApplicationStage> | <ProductType> | Income/P&L Statement | No. of Years(Unaudited) | financial_details.xlsx | file_upload_and_preview               | 15                                           | customer_details.xlsx | home                 | 0                           |          |     |

    @Islamic
    @NotImplemented
    @AuthoredBy-anshika.gupta
    # ${ ProductType : ["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category:["bonds","shares","metals"]}
    Examples:
      | ApplicationStage   | ProductType   | Document_Type        | Audit                   | FinancialDetailsWB     | FinancialDetails_fileUploadAndPreview | FinancialDetails_fileUploadAndPreview_rowNum | CustomerDetailsWB     | CustomerDetails_home | CustomerDetails_home_rowNum | Category   | Key |
      | <ApplicationStage> | <ProductType> | Balance Sheet        | No. of Years(Audited)   | financial_details.xlsx | file_upload_and_preview               | 12                                           | customer_details.xlsx | home                 | 0                           | <Category> |     |
      | <ApplicationStage> | <ProductType> | Balance Sheet        | No. of Years(Projected) | financial_details.xlsx | file_upload_and_preview               | 12                                           | customer_details.xlsx | home                 | 0                           | <Category> |     |
      | <ApplicationStage> | <ProductType> | Balance Sheet        | No. of Years(Unaudited) | financial_details.xlsx | file_upload_and_preview               | 12                                           | customer_details.xlsx | home                 | 0                           | <Category> |     |
      | <ApplicationStage> | <ProductType> | Cash Flow            | No. of Years(Audited)   | financial_details.xlsx | file_upload_and_preview               | 13                                           | customer_details.xlsx | home                 | 0                           | <Category> |     |
      | <ApplicationStage> | <ProductType> | Cash Flow            | No. of Years(Projected) | financial_details.xlsx | file_upload_and_preview               | 13                                           | customer_details.xlsx | home                 | 0                           | <Category> |     |
      | <ApplicationStage> | <ProductType> | Cash Flow            | No. of Years(Unaudited) | financial_details.xlsx | file_upload_and_preview               | 13                                           | customer_details.xlsx | home                 | 0                           | <Category> |     |
      | <ApplicationStage> | <ProductType> | Funds Flow           | No. of Years(Audited)   | financial_details.xlsx | file_upload_and_preview               | 14                                           | customer_details.xlsx | home                 | 0                           | <Category> |     |
      | <ApplicationStage> | <ProductType> | Funds Flow           | No. of Years(Projected) | financial_details.xlsx | file_upload_and_preview               | 14                                           | customer_details.xlsx | home                 | 0                           | <Category> |     |
      | <ApplicationStage> | <ProductType> | Funds Flow           | No. of Years(Unaudited) | financial_details.xlsx | file_upload_and_preview               | 14                                           | customer_details.xlsx | home                 | 0                           | <Category> |     |
      | <ApplicationStage> | <ProductType> | Income/P&L Statement | No. of Years(Audited)   | financial_details.xlsx | file_upload_and_preview               | 15                                           | customer_details.xlsx | home                 | 0                           | <Category> |     |
      | <ApplicationStage> | <ProductType> | Income/P&L Statement | No. of Years(Projected) | financial_details.xlsx | file_upload_and_preview               | 15                                           | customer_details.xlsx | home                 | 0                           | <Category> |     |
      | <ApplicationStage> | <ProductType> | Income/P&L Statement | No. of Years(Unaudited) | financial_details.xlsx | file_upload_and_preview               | 15                                           | customer_details.xlsx | home                 | 0                           | <Category> |     |


#maximize_minimzed
  #FeatureID-ACAUTOCAS-11453
  Scenario Outline: ACAUTOCAS-13550: Close the Edit Online pop up screen of <Document_Type> document in financial details of non individual applicant at "<ApplicationStage>" in "<ProductType>"
    And user opens an application of "<ProductType>" product type as "nonindiv" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user navigates to personal information page of "<ApplicationStage>"
    And user reads data from the excel file "<CustomerDetailsWB>" under sheet "<CustomerDetails_home>" and row <CustomerDetails_home_rowNum>
    And user fills and save customer details for non individual applicant
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_fileUploadAndPreview>" and row <FinancialDetails_fileUploadAndPreview_rowNum>
    And user open financial details for non individual
    When user open file upload accordion for file upload for non individual customer
    And user fills all fields of file upload preview
    And user selects "Edit Online" option
    And user close the Edit Online pop up screen of <Document_Type> document
    Then Edit Online pop up screen should be closed

    @Conventional
    @ImplementedBy-kanika.mahal
    @Release
    @Release3
    @AuthoredBy-vipin.kishor
    #${ ProductType : ["PF","HL","AL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ApplicationStage   | ProductType   | Document_Type        | FinancialDetailsWB     | FinancialDetails_fileUploadAndPreview | FinancialDetails_fileUploadAndPreview_rowNum | CustomerDetailsWB     | CustomerDetails_home | CustomerDetails_home_rowNum | Category | Key |
      | <ApplicationStage> | <ProductType> | Balance Sheet        | financial_details.xlsx | file_upload_and_preview               | 9                                            | customer_details.xlsx | home                 | 0                           |          |     |
      | <ApplicationStage> | <ProductType> | Cash Flow            | financial_details.xlsx | file_upload_and_preview               | 11                                           | customer_details.xlsx | home                 | 0                           |          |     |
      | <ApplicationStage> | <ProductType> | Income/P&L Statement | financial_details.xlsx | file_upload_and_preview               | 10                                           | customer_details.xlsx | home                 | 0                           |          |     |
      | <ApplicationStage> | <ProductType> | Funds Flow           | financial_details.xlsx | file_upload_and_preview               | 8                                            | customer_details.xlsx | home                 | 0                           |          |     |


    @Islamic
    @NotImplemented
    @AuthoredBy-anshika.gupta
     # ${ ProductType : ["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Credit Approval","Reconsideration"]}
    Examples:
      | ApplicationStage   | ProductType   | Document_Type        | FinancialDetailsWB     | FinancialDetails_fileUploadAndPreview | FinancialDetails_fileUploadAndPreview_rowNum | CustomerDetailsWB     | CustomerDetails_home | CustomerDetails_home_rowNum | Category | Key |
      | <ApplicationStage> | <ProductType> | Balance Sheet        | financial_details.xlsx | file_upload_and_preview               | 9                                            | customer_details.xlsx | home                 | 0                           |          |     |
      | <ApplicationStage> | <ProductType> | Cash Flow            | financial_details.xlsx | file_upload_and_preview               | 11                                           | customer_details.xlsx | home                 | 0                           |          |     |
      | <ApplicationStage> | <ProductType> | Income/P&L Statement | financial_details.xlsx | file_upload_and_preview               | 10                                           | customer_details.xlsx | home                 | 0                           |          |     |
      | <ApplicationStage> | <ProductType> | Funds Flow           | financial_details.xlsx | file_upload_and_preview               | 8                                            | customer_details.xlsx | home                 | 0                           |          |     |

    @Islamic
    @NotImplemented
    @AuthoredBy-anshika.gupta
    # ${ ProductType : ["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category:["bonds","shares","metals"]}
    Examples:
      | ApplicationStage   | ProductType   | Document_Type        | FinancialDetailsWB     | FinancialDetails_fileUploadAndPreview | FinancialDetails_fileUploadAndPreview_rowNum | CustomerDetailsWB     | CustomerDetails_home | CustomerDetails_home_rowNum | Category   | Key |
      | <ApplicationStage> | <ProductType> | Balance Sheet        | financial_details.xlsx | file_upload_and_preview               | 9                                            | customer_details.xlsx | home                 | 0                           | <Category> |     |
      | <ApplicationStage> | <ProductType> | Cash Flow            | financial_details.xlsx | file_upload_and_preview               | 11                                           | customer_details.xlsx | home                 | 0                           | <Category> |     |
      | <ApplicationStage> | <ProductType> | Income/P&L Statement | financial_details.xlsx | file_upload_and_preview               | 10                                           | customer_details.xlsx | home                 | 0                           | <Category> |     |
      | <ApplicationStage> | <ProductType> | Funds Flow           | financial_details.xlsx | file_upload_and_preview               | 8                                            | customer_details.xlsx | home                 | 0                           | <Category> |     |


#FeatureID-ACAUTOCAS-11453
  Scenario Outline: ACAUTOCAS-13551: Minimize the Edit Online pop up screen of <Document_Type> document in financial details of non individual applicant at "<ApplicationStage>" in "<ProductType>"
    And user opens an application of "<ProductType>" product type as "nonindiv" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user navigates to personal information page of "<ApplicationStage>"
    And user reads data from the excel file "<CustomerDetailsWB>" under sheet "<CustomerDetails_home>" and row <CustomerDetails_home_rowNum>
    And user fills and save customer details for non individual applicant
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_fileUploadAndPreview>" and row <FinancialDetails_fileUploadAndPreview_rowNum>
    And user open financial details for non individual
    When user open file upload accordion for file upload for non individual customer
    And user fills all fields of file upload preview
    And user selects "Edit Online" option
    And user minimize the Edit Online pop up screen of "<Document_Type>" document
    Then Edit Online pop up screen should be minimized

    @Conventional
    @ImplementedBy-kanika.mahal
    @Release
    @Release3
    @AuthoredBy-vipin.kishor
    #${ ProductType : ["PF","HL","AL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ApplicationStage   | ProductType   | Document_Type        | FinancialDetailsWB     | FinancialDetails_fileUploadAndPreview | FinancialDetails_fileUploadAndPreview_rowNum | CustomerDetailsWB     | CustomerDetails_home | CustomerDetails_home_rowNum | Category | Key |
      | <ApplicationStage> | <ProductType> | Balance Sheet        | financial_details.xlsx | file_upload_and_preview               | 9                                            | customer_details.xlsx | home                 | 0                           |          |     |
      | <ApplicationStage> | <ProductType> | Cash Flow            | financial_details.xlsx | file_upload_and_preview               | 11                                           | customer_details.xlsx | home                 | 0                           |          |     |
      | <ApplicationStage> | <ProductType> | Income/P&L Statement | financial_details.xlsx | file_upload_and_preview               | 10                                           | customer_details.xlsx | home                 | 0                           |          |     |
      | <ApplicationStage> | <ProductType> | Funds Flow           | financial_details.xlsx | file_upload_and_preview               | 8                                            | customer_details.xlsx | home                 | 0                           |          |     |

    @Islamic
    @NotImplemented
    @AuthoredBy-anshika.gupta
     # ${ ProductType : ["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Credit Approval","Reconsideration"]}
    Examples:
      | ApplicationStage   | ProductType   | Document_Type        | FinancialDetailsWB     | FinancialDetails_fileUploadAndPreview | FinancialDetails_fileUploadAndPreview_rowNum | CustomerDetailsWB     | CustomerDetails_home | CustomerDetails_home_rowNum | Category | Key |
      | <ApplicationStage> | <ProductType> | Balance Sheet        | financial_details.xlsx | file_upload_and_preview               | 9                                            | customer_details.xlsx | home                 | 0                           |          |     |
      | <ApplicationStage> | <ProductType> | Cash Flow            | financial_details.xlsx | file_upload_and_preview               | 11                                           | customer_details.xlsx | home                 | 0                           |          |     |
      | <ApplicationStage> | <ProductType> | Income/P&L Statement | financial_details.xlsx | file_upload_and_preview               | 10                                           | customer_details.xlsx | home                 | 0                           |          |     |
      | <ApplicationStage> | <ProductType> | Funds Flow           | financial_details.xlsx | file_upload_and_preview               | 8                                            | customer_details.xlsx | home                 | 0                           |          |     |

    @Islamic
    @NotImplemented
    @AuthoredBy-anshika.gupta
    # ${ ProductType : ["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category:["bonds","shares","metals"]}
    Examples:
      | ApplicationStage   | ProductType   | Document_Type        | FinancialDetailsWB     | FinancialDetails_fileUploadAndPreview | FinancialDetails_fileUploadAndPreview_rowNum | CustomerDetailsWB     | CustomerDetails_home | CustomerDetails_home_rowNum | Category   | Key |
      | <ApplicationStage> | <ProductType> | Balance Sheet        | financial_details.xlsx | file_upload_and_preview               | 9                                            | customer_details.xlsx | home                 | 0                           | <Category> |     |
      | <ApplicationStage> | <ProductType> | Cash Flow            | financial_details.xlsx | file_upload_and_preview               | 11                                           | customer_details.xlsx | home                 | 0                           | <Category> |     |
      | <ApplicationStage> | <ProductType> | Income/P&L Statement | financial_details.xlsx | file_upload_and_preview               | 10                                           | customer_details.xlsx | home                 | 0                           | <Category> |     |
      | <ApplicationStage> | <ProductType> | Funds Flow           | financial_details.xlsx | file_upload_and_preview               | 8                                            | customer_details.xlsx | home                 | 0                           | <Category> |     |


#FeatureID-ACAUTOCAS-11453
  Scenario Outline: ACAUTOCAS-13552: Maximize the minimized Edit Online pop up screen of <Document_Type> document in financial details of non individual applicant at "<ApplicationStage>" in "<ProductType>"
    And user opens an application of "<ProductType>" product type as "nonindiv" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user navigates to personal information page of "<ApplicationStage>"
    And user reads data from the excel file "<CustomerDetailsWB>" under sheet "<CustomerDetails_home>" and row <CustomerDetails_home_rowNum>
    And user fills and save customer details for non individual applicant
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_fileUploadAndPreview>" and row <FinancialDetails_fileUploadAndPreview_rowNum>
    And user open financial details for non individual
    When user open file upload accordion for file upload for non individual customer
    And user fills all fields of file upload preview
    And user selects "Edit Online" option
    And user maximize the minimized Edit Online pop up screen of "<Document_Type>" document
    Then Edit Online pop up screen should be maximized

    @Conventional
    @ImplementedBy-kanika.mahal
    @Release
    @Release3
    @AuthoredBy-vipin.kishor
    #${ ProductType : ["PF","HL","AL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ApplicationStage   | ProductType   | Document_Type        | FinancialDetailsWB     | FinancialDetails_fileUploadAndPreview | FinancialDetails_fileUploadAndPreview_rowNum | CustomerDetailsWB     | CustomerDetails_home | CustomerDetails_home_rowNum | Category | Key |
      | <ApplicationStage> | <ProductType> | Balance Sheet        | financial_details.xlsx | file_upload_and_preview               | 9                                            | customer_details.xlsx | home                 | 0                           |          |     |
      | <ApplicationStage> | <ProductType> | Cash Flow            | financial_details.xlsx | file_upload_and_preview               | 11                                           | customer_details.xlsx | home                 | 0                           |          |     |
      | <ApplicationStage> | <ProductType> | Income/P&L Statement | financial_details.xlsx | file_upload_and_preview               | 10                                           | customer_details.xlsx | home                 | 0                           |          |     |
      | <ApplicationStage> | <ProductType> | Funds Flow           | financial_details.xlsx | file_upload_and_preview               | 8                                            | customer_details.xlsx | home                 | 0                           |          |     |

    @Islamic
    @NotImplemented
    @AuthoredBy-anshika.gupta
     # ${ ProductType : ["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Credit Approval","Reconsideration"]}
    Examples:
      | ApplicationStage   | ProductType   | Document_Type        | FinancialDetailsWB     | FinancialDetails_fileUploadAndPreview | FinancialDetails_fileUploadAndPreview_rowNum | CustomerDetailsWB     | CustomerDetails_home | CustomerDetails_home_rowNum | Category | Key |
      | <ApplicationStage> | <ProductType> | Balance Sheet        | financial_details.xlsx | file_upload_and_preview               | 9                                            | customer_details.xlsx | home                 | 0                           |          |     |
      | <ApplicationStage> | <ProductType> | Cash Flow            | financial_details.xlsx | file_upload_and_preview               | 11                                           | customer_details.xlsx | home                 | 0                           |          |     |
      | <ApplicationStage> | <ProductType> | Income/P&L Statement | financial_details.xlsx | file_upload_and_preview               | 10                                           | customer_details.xlsx | home                 | 0                           |          |     |
      | <ApplicationStage> | <ProductType> | Funds Flow           | financial_details.xlsx | file_upload_and_preview               | 8                                            | customer_details.xlsx | home                 | 0                           |          |     |

    @Islamic
    @NotImplemented
    @AuthoredBy-anshika.gupta
    # ${ ProductType : ["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category:["bonds","shares","metals"]}
    Examples:
      | ApplicationStage   | ProductType   | Document_Type        | FinancialDetailsWB     | FinancialDetails_fileUploadAndPreview | FinancialDetails_fileUploadAndPreview_rowNum | CustomerDetailsWB     | CustomerDetails_home | CustomerDetails_home_rowNum | Category   | Key |
      | <ApplicationStage> | <ProductType> | Balance Sheet        | financial_details.xlsx | file_upload_and_preview               | 9                                            | customer_details.xlsx | home                 | 0                           | <Category> |     |
      | <ApplicationStage> | <ProductType> | Cash Flow            | financial_details.xlsx | file_upload_and_preview               | 11                                           | customer_details.xlsx | home                 | 0                           | <Category> |     |
      | <ApplicationStage> | <ProductType> | Income/P&L Statement | financial_details.xlsx | file_upload_and_preview               | 10                                           | customer_details.xlsx | home                 | 0                           | <Category> |     |
      | <ApplicationStage> | <ProductType> | Funds Flow           | financial_details.xlsx | file_upload_and_preview               | 8                                            | customer_details.xlsx | home                 | 0                           | <Category> |     |


#FeatureID-ACAUTOCAS-11453
  Scenario Outline: ACAUTOCAS-13553: Upload <Files_Type> file of <Document_Type> document in financial details of non individual applicant at "<ApplicationStage>" in "<ProductType>"
    And user opens an application of "<ProductType>" product type as "nonindiv" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user navigates to personal information page of "<ApplicationStage>"
    And user reads data from the excel file "<CustomerDetailsWB>" under sheet "<CustomerDetails_home>" and row <CustomerDetails_home_rowNum>
    And user fills and save customer details for non individual applicant
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_fileUploadAndPreview>" and row <FinancialDetails_fileUploadAndPreview_rowNum>
    And user open financial details for non individual
    When user open file upload accordion for file upload for non individual customer
    And user selects Document Type as "<Document_Type>" document
    And user fills rest all fields to Download Template
    And user browse the "<Files_Type>" file
    And user upload the browsed file
    Then "<Files_Type>" file should "<Expected_Behaviour>" successfully

    @Conventional
    @ImplementedBy-kanika.mahal
    @Release
    @Release3
    @AuthoredBy-vipin.kishor
    #${ ProductType : ["PF","HL","AL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ApplicationStage   | ProductType   | Document_Type        | Files_Type    | Expected_Behaviour | FinancialDetailsWB     | FinancialDetails_fileUploadAndPreview | FinancialDetails_fileUploadAndPreview_rowNum | CustomerDetailsWB     | CustomerDetails_home | CustomerDetails_home_rowNum | Category | Key |
      | <ApplicationStage> | <ProductType> | Balance Sheet        | appropriate   | be upload          | financial_details.xlsx | file_upload_and_preview               | 26                                           | customer_details.xlsx | home                 | 0                           |          |     |
      | <ApplicationStage> | <ProductType> | Balance Sheet        | inappropriate | not be upload      | financial_details.xlsx | file_upload_and_preview               | 20                                           | customer_details.xlsx | home                 | 0                           |          |     |
      | <ApplicationStage> | <ProductType> | Cash Flow            | appropriate   | be upload          | financial_details.xlsx | file_upload_and_preview               | 27                                           | customer_details.xlsx | home                 | 0                           |          |     |
      | <ApplicationStage> | <ProductType> | Cash Flow            | inappropriate | not be upload      | financial_details.xlsx | file_upload_and_preview               | 21                                           | customer_details.xlsx | home                 | 0                           |          |     |
      | <ApplicationStage> | <ProductType> | Funds Flow           | appropriate   | be upload          | financial_details.xlsx | file_upload_and_preview               | 28                                           | customer_details.xlsx | home                 | 0                           |          |     |
      | <ApplicationStage> | <ProductType> | Funds Flow           | inappropriate | not be upload      | financial_details.xlsx | file_upload_and_preview               | 22                                           | customer_details.xlsx | home                 | 0                           |          |     |
      | <ApplicationStage> | <ProductType> | Income/P&L Statement | appropriate   | be upload          | financial_details.xlsx | file_upload_and_preview               | 29                                           | customer_details.xlsx | home                 | 0                           |          |     |
      | <ApplicationStage> | <ProductType> | Income/P&L Statement | inappropriate | not be upload      | financial_details.xlsx | file_upload_and_preview               | 23                                           | customer_details.xlsx | home                 | 0                           |          |     |

    @Islamic
    @NotImplemented
    @AuthoredBy-anshika.gupta
     # ${ ProductType : ["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Credit Approval","Reconsideration"]}
    Examples:
      | ApplicationStage   | ProductType   | Document_Type        | Files_Type    | Expected_Behaviour | FinancialDetailsWB     | FinancialDetails_fileUploadAndPreview | FinancialDetails_fileUploadAndPreview_rowNum | CustomerDetailsWB     | CustomerDetails_home | CustomerDetails_home_rowNum | Category | Key |
      | <ApplicationStage> | <ProductType> | Balance Sheet        | appropriate   | be upload          | financial_details.xlsx | file_upload_and_preview               | 26                                           | customer_details.xlsx | home                 | 0                           |          |     |
      | <ApplicationStage> | <ProductType> | Balance Sheet        | inappropriate | not be upload      | financial_details.xlsx | file_upload_and_preview               | 20                                           | customer_details.xlsx | home                 | 0                           |          |     |
      | <ApplicationStage> | <ProductType> | Cash Flow            | appropriate   | be upload          | financial_details.xlsx | file_upload_and_preview               | 27                                           | customer_details.xlsx | home                 | 0                           |          |     |
      | <ApplicationStage> | <ProductType> | Cash Flow            | inappropriate | not be upload      | financial_details.xlsx | file_upload_and_preview               | 21                                           | customer_details.xlsx | home                 | 0                           |          |     |
      | <ApplicationStage> | <ProductType> | Funds Flow           | appropriate   | be upload          | financial_details.xlsx | file_upload_and_preview               | 28                                           | customer_details.xlsx | home                 | 0                           |          |     |
      | <ApplicationStage> | <ProductType> | Funds Flow           | inappropriate | not be upload      | financial_details.xlsx | file_upload_and_preview               | 22                                           | customer_details.xlsx | home                 | 0                           |          |     |
      | <ApplicationStage> | <ProductType> | Income/P&L Statement | appropriate   | be upload          | financial_details.xlsx | file_upload_and_preview               | 29                                           | customer_details.xlsx | home                 | 0                           |          |     |
      | <ApplicationStage> | <ProductType> | Income/P&L Statement | inappropriate | not be upload      | financial_details.xlsx | file_upload_and_preview               | 23                                           | customer_details.xlsx | home                 | 0                           |          |     |

    @Islamic
    @NotImplemented
    @AuthoredBy-anshika.gupta
    # ${ ProductType : ["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category:["bonds","shares","metals"]}
    Examples:
      | ApplicationStage   | ProductType   | Document_Type        | Files_Type    | Expected_Behaviour | FinancialDetailsWB     | FinancialDetails_fileUploadAndPreview | FinancialDetails_fileUploadAndPreview_rowNum | CustomerDetailsWB     | CustomerDetails_home | CustomerDetails_home_rowNum | Category   | Key |
      | <ApplicationStage> | <ProductType> | Balance Sheet        | appropriate   | be upload          | financial_details.xlsx | file_upload_and_preview               | 26                                           | customer_details.xlsx | home                 | 0                           | <Category> |     |
      | <ApplicationStage> | <ProductType> | Balance Sheet        | inappropriate | not be upload      | financial_details.xlsx | file_upload_and_preview               | 20                                           | customer_details.xlsx | home                 | 0                           | <Category> |     |
      | <ApplicationStage> | <ProductType> | Cash Flow            | appropriate   | be upload          | financial_details.xlsx | file_upload_and_preview               | 27                                           | customer_details.xlsx | home                 | 0                           | <Category> |     |
      | <ApplicationStage> | <ProductType> | Cash Flow            | inappropriate | not be upload      | financial_details.xlsx | file_upload_and_preview               | 21                                           | customer_details.xlsx | home                 | 0                           | <Category> |     |
      | <ApplicationStage> | <ProductType> | Funds Flow           | appropriate   | be upload          | financial_details.xlsx | file_upload_and_preview               | 28                                           | customer_details.xlsx | home                 | 0                           | <Category> |     |
      | <ApplicationStage> | <ProductType> | Funds Flow           | inappropriate | not be upload      | financial_details.xlsx | file_upload_and_preview               | 22                                           | customer_details.xlsx | home                 | 0                           | <Category> |     |
      | <ApplicationStage> | <ProductType> | Income/P&L Statement | appropriate   | be upload          | financial_details.xlsx | file_upload_and_preview               | 29                                           | customer_details.xlsx | home                 | 0                           | <Category> |     |
      | <ApplicationStage> | <ProductType> | Income/P&L Statement | inappropriate | not be upload      | financial_details.xlsx | file_upload_and_preview               | 23                                           | customer_details.xlsx | home                 | 0                           | <Category> |     |


  #FeatureID-ACAUTOCAS-11453
  Scenario Outline: ACAUTOCAS-13554: Upload <Document_Type> document file in which different "<Audited>" in financial details of non individual applicant at "<ApplicationStage>" in "<ProductType>"
    And user opens an application of "<ProductType>" product type as "nonindiv" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user navigates to personal information page of "<ApplicationStage>"
    And user reads data from the excel file "<CustomerDetailsWB>" under sheet "<CustomerDetails_home>" and row <CustomerDetails_home_rowNum>
    And user fills and save customer details for non individual applicant
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_fileUploadAndPreview>" and row <FinancialDetails_fileUploadAndPreview_rowNum>
    And user open financial details for non individual
    And user open file upload accordion for file upload for non individual customer
    And user fills all fields of file upload preview
    And user fills no of unaudited year
    And user fills no of projected years
    When user browse the "<Document_Type>" file in which different "<Audited>"
    And user upload the browsed file
    Then file should not be upload with an error message

    @Conventional
    @ImplementedBy-kanika.mahal
    @Release
    @Release3
    @AuthoredBy-vipin.kishor
    #${ ProductType : ["PF","HL","AL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ApplicationStage   | ProductType   | Document_Type        | Audited                 | FinancialDetailsWB     | FinancialDetails_fileUploadAndPreview | FinancialDetails_fileUploadAndPreview_rowNum | CustomerDetailsWB     | CustomerDetails_home | CustomerDetails_home_rowNum | Category | Key |
      | <ApplicationStage> | <ProductType> | Balance Sheet        | No. of Years(Audited)   | financial_details.xlsx | file_upload_and_preview               | 30                                           | customer_details.xlsx | home                 | 0                           |          |     |
      | <ApplicationStage> | <ProductType> | Balance Sheet        | No. of Years(Projected) | financial_details.xlsx | file_upload_and_preview               | 30                                           | customer_details.xlsx | home                 | 0                           |          |     |
      | <ApplicationStage> | <ProductType> | Balance Sheet        | No. of Years(Unaudited) | financial_details.xlsx | file_upload_and_preview               | 30                                           | customer_details.xlsx | home                 | 0                           |          |     |
      | <ApplicationStage> | <ProductType> | Cash Flow            | No. of Years(Audited)   | financial_details.xlsx | file_upload_and_preview               | 31                                           | customer_details.xlsx | home                 | 0                           |          |     |
      | <ApplicationStage> | <ProductType> | Cash Flow            | No. of Years(Projected) | financial_details.xlsx | file_upload_and_preview               | 31                                           | customer_details.xlsx | home                 | 0                           |          |     |
      | <ApplicationStage> | <ProductType> | Cash Flow            | No. of Years(Unaudited) | financial_details.xlsx | file_upload_and_preview               | 31                                           | customer_details.xlsx | home                 | 0                           |          |     |
      | <ApplicationStage> | <ProductType> | Funds Flow           | No. of Years(Audited)   | financial_details.xlsx | file_upload_and_preview               | 32                                           | customer_details.xlsx | home                 | 0                           |          |     |
      | <ApplicationStage> | <ProductType> | Funds Flow           | No. of Years(Projected) | financial_details.xlsx | file_upload_and_preview               | 32                                           | customer_details.xlsx | home                 | 0                           |          |     |
      | <ApplicationStage> | <ProductType> | Funds Flow           | No. of Years(Unaudited) | financial_details.xlsx | file_upload_and_preview               | 32                                           | customer_details.xlsx | home                 | 0                           |          |     |
      | <ApplicationStage> | <ProductType> | Income/P&L Statement | No. of Years(Audited)   | financial_details.xlsx | file_upload_and_preview               | 33                                           | customer_details.xlsx | home                 | 0                           |          |     |
      | <ApplicationStage> | <ProductType> | Income/P&L Statement | No. of Years(Projected) | financial_details.xlsx | file_upload_and_preview               | 33                                           | customer_details.xlsx | home                 | 0                           |          |     |
      | <ApplicationStage> | <ProductType> | Income/P&L Statement | No. of Years(Unaudited) | financial_details.xlsx | file_upload_and_preview               | 33                                           | customer_details.xlsx | home                 | 0                           |          |     |


    @Islamic
    @NotImplemented
    @AuthoredBy-anshika.gupta
     # ${ ProductType : ["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Credit Approval","Reconsideration"]}
    Examples:
      | ApplicationStage   | ProductType   | Document_Type        | Audited                 | FinancialDetailsWB     | FinancialDetails_fileUploadAndPreview | FinancialDetails_fileUploadAndPreview_rowNum | CustomerDetailsWB     | CustomerDetails_home | CustomerDetails_home_rowNum | Category | Key |
      | <ApplicationStage> | <ProductType> | Balance Sheet        | No. of Years(Audited)   | financial_details.xlsx | file_upload_and_preview               | 30                                           | customer_details.xlsx | home                 | 0                           |          |     |
      | <ApplicationStage> | <ProductType> | Balance Sheet        | No. of Years(Projected) | financial_details.xlsx | file_upload_and_preview               | 30                                           | customer_details.xlsx | home                 | 0                           |          |     |
      | <ApplicationStage> | <ProductType> | Balance Sheet        | No. of Years(Unaudited) | financial_details.xlsx | file_upload_and_preview               | 30                                           | customer_details.xlsx | home                 | 0                           |          |     |
      | <ApplicationStage> | <ProductType> | Cash Flow            | No. of Years(Audited)   | financial_details.xlsx | file_upload_and_preview               | 31                                           | customer_details.xlsx | home                 | 0                           |          |     |
      | <ApplicationStage> | <ProductType> | Cash Flow            | No. of Years(Projected) | financial_details.xlsx | file_upload_and_preview               | 31                                           | customer_details.xlsx | home                 | 0                           |          |     |
      | <ApplicationStage> | <ProductType> | Cash Flow            | No. of Years(Unaudited) | financial_details.xlsx | file_upload_and_preview               | 31                                           | customer_details.xlsx | home                 | 0                           |          |     |
      | <ApplicationStage> | <ProductType> | Funds Flow           | No. of Years(Audited)   | financial_details.xlsx | file_upload_and_preview               | 32                                           | customer_details.xlsx | home                 | 0                           |          |     |
      | <ApplicationStage> | <ProductType> | Funds Flow           | No. of Years(Projected) | financial_details.xlsx | file_upload_and_preview               | 32                                           | customer_details.xlsx | home                 | 0                           |          |     |
      | <ApplicationStage> | <ProductType> | Funds Flow           | No. of Years(Unaudited) | financial_details.xlsx | file_upload_and_preview               | 32                                           | customer_details.xlsx | home                 | 0                           |          |     |
      | <ApplicationStage> | <ProductType> | Income/P&L Statement | No. of Years(Audited)   | financial_details.xlsx | file_upload_and_preview               | 33                                           | customer_details.xlsx | home                 | 0                           |          |     |
      | <ApplicationStage> | <ProductType> | Income/P&L Statement | No. of Years(Projected) | financial_details.xlsx | file_upload_and_preview               | 33                                           | customer_details.xlsx | home                 | 0                           |          |     |
      | <ApplicationStage> | <ProductType> | Income/P&L Statement | No. of Years(Unaudited) | financial_details.xlsx | file_upload_and_preview               | 33                                           | customer_details.xlsx | home                 | 0                           |          |     |


    @Islamic
    @NotImplemented
    @AuthoredBy-anshika.gupta
    # ${ ProductType : ["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category:["bonds","shares","metals"]}
    Examples:
      | ApplicationStage   | ProductType   | Document_Type        | Audited                 | FinancialDetailsWB     | FinancialDetails_fileUploadAndPreview | FinancialDetails_fileUploadAndPreview_rowNum | CustomerDetailsWB     | CustomerDetails_home | CustomerDetails_home_rowNum | Category   | Key |
      | <ApplicationStage> | <ProductType> | Balance Sheet        | No. of Years(Audited)   | financial_details.xlsx | file_upload_and_preview               | 30                                           | customer_details.xlsx | home                 | 0                           | <Category> |     |
      | <ApplicationStage> | <ProductType> | Balance Sheet        | No. of Years(Projected) | financial_details.xlsx | file_upload_and_preview               | 30                                           | customer_details.xlsx | home                 | 0                           | <Category> |     |
      | <ApplicationStage> | <ProductType> | Balance Sheet        | No. of Years(Unaudited) | financial_details.xlsx | file_upload_and_preview               | 30                                           | customer_details.xlsx | home                 | 0                           | <Category> |     |
      | <ApplicationStage> | <ProductType> | Cash Flow            | No. of Years(Audited)   | financial_details.xlsx | file_upload_and_preview               | 31                                           | customer_details.xlsx | home                 | 0                           | <Category> |     |
      | <ApplicationStage> | <ProductType> | Cash Flow            | No. of Years(Projected) | financial_details.xlsx | file_upload_and_preview               | 31                                           | customer_details.xlsx | home                 | 0                           | <Category> |     |
      | <ApplicationStage> | <ProductType> | Cash Flow            | No. of Years(Unaudited) | financial_details.xlsx | file_upload_and_preview               | 31                                           | customer_details.xlsx | home                 | 0                           | <Category> |     |
      | <ApplicationStage> | <ProductType> | Funds Flow           | No. of Years(Audited)   | financial_details.xlsx | file_upload_and_preview               | 32                                           | customer_details.xlsx | home                 | 0                           | <Category> |     |
      | <ApplicationStage> | <ProductType> | Funds Flow           | No. of Years(Projected) | financial_details.xlsx | file_upload_and_preview               | 32                                           | customer_details.xlsx | home                 | 0                           | <Category> |     |
      | <ApplicationStage> | <ProductType> | Funds Flow           | No. of Years(Unaudited) | financial_details.xlsx | file_upload_and_preview               | 32                                           | customer_details.xlsx | home                 | 0                           | <Category> |     |
      | <ApplicationStage> | <ProductType> | Income/P&L Statement | No. of Years(Audited)   | financial_details.xlsx | file_upload_and_preview               | 33                                           | customer_details.xlsx | home                 | 0                           | <Category> |     |
      | <ApplicationStage> | <ProductType> | Income/P&L Statement | No. of Years(Projected) | financial_details.xlsx | file_upload_and_preview               | 33                                           | customer_details.xlsx | home                 | 0                           | <Category> |     |
      | <ApplicationStage> | <ProductType> | Income/P&L Statement | No. of Years(Unaudited) | financial_details.xlsx | file_upload_and_preview               | 33                                           | customer_details.xlsx | home                 | 0                           | <Category> |     |


  #FeatureID-ACAUTOCAS-11453
  Scenario Outline: ACAUTOCAS-13555: Preview the uploaded file of <Document_Type> document in financial details of non individual applicant at "<ApplicationStage>" in "<ProductType>"
    And user opens an application of "<ProductType>" product type as "nonindiv" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user navigates to personal information page of "<ApplicationStage>"
    And user reads data from the excel file "<CustomerDetailsWB>" under sheet "<CustomerDetails_home>" and row <CustomerDetails_home_rowNum>
    And user fills and save customer details for non individual applicant
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_fileUploadAndPreview>" and row <FinancialDetails_fileUploadAndPreview_rowNum>
    And user open financial details for non individual
    And user open file upload accordion for file upload for non individual customer
    And user selects Document Type as "<Document_Type>" document
    And user fills all fields of file upload preview
    When user browse the file "<Document_Type>" to upload
    And user upload the browsed file
    And  user opens file upload accordion
    And user preview the uploaded file in "<Document_Type>" accordion
    Then all data should be matched with uploaded file data of "<Document_Type>"

    @Conventional
    @ImplementedBy-kanika.mahal
    @Release
    @Release3
    @AuthoredBy-vipin.kishor
    #${ ProductType : ["PF","HL","AL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ApplicationStage   | Document_Type        | ProductType   | FinancialDetailsWB     | FinancialDetails_fileUploadAndPreview | FinancialDetails_fileUploadAndPreview_rowNum | CustomerDetailsWB     | CustomerDetails_home | CustomerDetails_home_rowNum | Category | Key |
      | <ApplicationStage> | Balance Sheet        | <ProductType> | financial_details.xlsx | file_upload_and_preview               | 34                                           | customer_details.xlsx | home                 | 0                           |          |     |
      | <ApplicationStage> | Cash Flow            | <ProductType> | financial_details.xlsx | file_upload_and_preview               | 35                                           | customer_details.xlsx | home                 | 0                           |          |     |
      | <ApplicationStage> | Funds Flow           | <ProductType> | financial_details.xlsx | file_upload_and_preview               | 36                                           | customer_details.xlsx | home                 | 0                           |          |     |
      | <ApplicationStage> | Income/P&L Statement | <ProductType> | financial_details.xlsx | file_upload_and_preview               | 37                                           | customer_details.xlsx | home                 | 0                           |          |     |

    @Islamic
    @NotImplemented
    @AuthoredBy-anshika.gupta
     # ${ ProductType : ["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Credit Approval","Reconsideration"]}
    Examples:
      | ApplicationStage   | Document_Type        | ProductType   | FinancialDetailsWB     | FinancialDetails_fileUploadAndPreview | FinancialDetails_fileUploadAndPreview_rowNum | CustomerDetailsWB     | CustomerDetails_home | CustomerDetails_home_rowNum | Category | Key |
      | <ApplicationStage> | Balance Sheet        | <ProductType> | financial_details.xlsx | file_upload_and_preview               | 34                                           | customer_details.xlsx | home                 | 0                           |          |     |
      | <ApplicationStage> | Cash Flow            | <ProductType> | financial_details.xlsx | file_upload_and_preview               | 35                                           | customer_details.xlsx | home                 | 0                           |          |     |
      | <ApplicationStage> | Funds Flow           | <ProductType> | financial_details.xlsx | file_upload_and_preview               | 36                                           | customer_details.xlsx | home                 | 0                           |          |     |
      | <ApplicationStage> | Income/P&L Statement | <ProductType> | financial_details.xlsx | file_upload_and_preview               | 37                                           | customer_details.xlsx | home                 | 0                           |          |     |


    @Islamic
    @NotImplemented
    @AuthoredBy-anshika.gupta
    # ${ ProductType : ["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category:["bonds","shares","metals"]}
    Examples:
      | ApplicationStage   | Document_Type        | ProductType   | FinancialDetailsWB     | FinancialDetails_fileUploadAndPreview | FinancialDetails_fileUploadAndPreview_rowNum | CustomerDetailsWB     | CustomerDetails_home | CustomerDetails_home_rowNum | Category   | Key |
      | <ApplicationStage> | Balance Sheet        | <ProductType> | financial_details.xlsx | file_upload_and_preview               | 34                                           | customer_details.xlsx | home                 | 0                           | <Category> |     |
      | <ApplicationStage> | Cash Flow            | <ProductType> | financial_details.xlsx | file_upload_and_preview               | 35                                           | customer_details.xlsx | home                 | 0                           | <Category> |     |
      | <ApplicationStage> | Funds Flow           | <ProductType> | financial_details.xlsx | file_upload_and_preview               | 36                                           | customer_details.xlsx | home                 | 0                           | <Category> |     |
      | <ApplicationStage> | Income/P&L Statement | <ProductType> | financial_details.xlsx | file_upload_and_preview               | 37                                           | customer_details.xlsx | home                 | 0                           | <Category> |     |


#MOVE To Next:
  #FeatureID-ACAUTOCAS-11453
  # StoryID:CAS-114104
  @Perishable
  @LoggedBug
  Scenario Outline: ACAUTOCAS-13556: Upload "<Document_Type>" File in financial details of non individual applicant at "<ApplicationStage>" in "<ProductType>"
    And user opens an application of "<ProductType>" product type as "nonindiv" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user navigates to personal information page of "<ApplicationStage>"
    And user reads data from the excel file "<CustomerDetailsWB>" under sheet "<CustomerDetails_home>" and row <CustomerDetails_home_rowNum>
    And user fills and save customer details for non individual applicant
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_fileUploadAndPreview>" and row <FinancialDetails_fileUploadAndPreview_rowNum>
    And user open financial details for non individual
    And user open file upload accordion for file upload for non individual customer
    And user selects Document Type as "<Document_Type>" document
    And user fills all fields of file upload preview
    And user browse the file "<Document_Type>" to upload
    And user upload the browsed file
    When user moves to next stage
    Then user should be able to move to "<Subseq_stage>" stage without any validation

    @Conventional
    @ImplementedBy-kanika.mahal
    @Release
    @Release3
    @AuthoredBy-vipin.kishor
    #${ ProductType : ["PF","HL","AL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    Examples:
      | Document_Type        | ProductType   | FinancialDetailsWB     | FinancialDetails_fileUploadAndPreview | FinancialDetails_fileUploadAndPreview_rowNum | CustomerDetailsWB     | CustomerDetails_home | CustomerDetails_home_rowNum | ApplicationStage | Subseq_stage     | Category | Key |
      | Balance Sheet        | <ProductType> | financial_details.xlsx | file_upload_and_preview               | 34                                           | customer_details.xlsx | home                 | 0                           | Lead Details     | Login Acceptance |          |     |
      | Cash Flow            | <ProductType> | financial_details.xlsx | file_upload_and_preview               | 35                                           | customer_details.xlsx | home                 | 0                           | Lead Details     | Login Acceptance |          |     |
      | Funds Flow           | <ProductType> | financial_details.xlsx | file_upload_and_preview               | 36                                           | customer_details.xlsx | home                 | 0                           | Lead Details     | Login Acceptance |          |     |
      | Income/P&L Statement | <ProductType> | financial_details.xlsx | file_upload_and_preview               | 37                                           | customer_details.xlsx | home                 | 0                           | Lead Details     | Login Acceptance |          |     |
      | Balance Sheet        | <ProductType> | financial_details.xlsx | file_upload_and_preview               | 34                                           | customer_details.xlsx | home                 | 0                           | dde              | recommendation   |          |     |
      | Cash Flow            | <ProductType> | financial_details.xlsx | file_upload_and_preview               | 35                                           | customer_details.xlsx | home                 | 0                           | dde              | recommendation   |          |     |
      | Funds Flow           | <ProductType> | financial_details.xlsx | file_upload_and_preview               | 36                                           | customer_details.xlsx | home                 | 0                           | dde              | recommendation   |          |     |
      | Income/P&L Statement | <ProductType> | financial_details.xlsx | file_upload_and_preview               | 37                                           | customer_details.xlsx | home                 | 0                           | dde              | recommendation   |          |     |

    @Islamic
    @NotImplemented
    @AuthoredBy-anshika.gupta
     # ${ ProductType : ["IHF","IAF"]}
    Examples:
      | Document_Type        | ProductType   | FinancialDetailsWB     | FinancialDetails_fileUploadAndPreview | FinancialDetails_fileUploadAndPreview_rowNum | CustomerDetailsWB     | CustomerDetails_home | CustomerDetails_home_rowNum | ApplicationStage | Subseq_stage     | Category | Key |
      | Balance Sheet        | <ProductType> | financial_details.xlsx | file_upload_and_preview               | 34                                           | customer_details.xlsx | home                 | 0                           | Sourcing         | Login Acceptance |          |     |
      | Cash Flow            | <ProductType> | financial_details.xlsx | file_upload_and_preview               | 35                                           | customer_details.xlsx | home                 | 0                           | Sourcing         | Login Acceptance |          |     |
      | Funds Flow           | <ProductType> | financial_details.xlsx | file_upload_and_preview               | 36                                           | customer_details.xlsx | home                 | 0                           | Sourcing         | Login Acceptance |          |     |
      | Income/P&L Statement | <ProductType> | financial_details.xlsx | file_upload_and_preview               | 37                                           | customer_details.xlsx | home                 | 0                           | Sourcing         | Login Acceptance |          |     |
      | Balance Sheet        | <ProductType> | financial_details.xlsx | file_upload_and_preview               | 34                                           | customer_details.xlsx | home                 | 0                           | dde              | recommendation   |          |     |
      | Cash Flow            | <ProductType> | financial_details.xlsx | file_upload_and_preview               | 35                                           | customer_details.xlsx | home                 | 0                           | dde              | recommendation   |          |     |
      | Funds Flow           | <ProductType> | financial_details.xlsx | file_upload_and_preview               | 36                                           | customer_details.xlsx | home                 | 0                           | dde              | recommendation   |          |     |
      | Income/P&L Statement | <ProductType> | financial_details.xlsx | file_upload_and_preview               | 37                                           | customer_details.xlsx | home                 | 0                           | dde              | recommendation   |          |     |

    @Islamic
    @NotImplemented
    @AuthoredBy-anshika.gupta
    # ${ ProductType : ["IPF"]}
    #${Category:["bonds","shares","metals"]}
    Examples:
      | Document_Type        | ProductType   | FinancialDetailsWB     | FinancialDetails_fileUploadAndPreview | FinancialDetails_fileUploadAndPreview_rowNum | CustomerDetailsWB     | CustomerDetails_home | CustomerDetails_home_rowNum | ApplicationStage | Subseq_stage     | Category   | Key |
      | Balance Sheet        | <ProductType> | financial_details.xlsx | file_upload_and_preview               | 34                                           | customer_details.xlsx | home                 | 0                           | Sourcing         | Login Acceptance | <Category> |     |
      | Cash Flow            | <ProductType> | financial_details.xlsx | file_upload_and_preview               | 35                                           | customer_details.xlsx | home                 | 0                           | Sourcing         | Login Acceptance | <Category> |     |
      | Funds Flow           | <ProductType> | financial_details.xlsx | file_upload_and_preview               | 36                                           | customer_details.xlsx | home                 | 0                           | Sourcing         | Login Acceptance | <Category> |     |
      | Income/P&L Statement | <ProductType> | financial_details.xlsx | file_upload_and_preview               | 37                                           | customer_details.xlsx | home                 | 0                           | Sourcing         | Login Acceptance | <Category> |     |
      | Balance Sheet        | <ProductType> | financial_details.xlsx | file_upload_and_preview               | 34                                           | customer_details.xlsx | home                 | 0                           | dde              | recommendation   | <Category> |     |
      | Cash Flow            | <ProductType> | financial_details.xlsx | file_upload_and_preview               | 35                                           | customer_details.xlsx | home                 | 0                           | dde              | recommendation   | <Category> |     |
      | Funds Flow           | <ProductType> | financial_details.xlsx | file_upload_and_preview               | 36                                           | customer_details.xlsx | home                 | 0                           | dde              | recommendation   | <Category> |     |
      | Income/P&L Statement | <ProductType> | financial_details.xlsx | file_upload_and_preview               | 37                                           | customer_details.xlsx | home                 | 0                           | dde              | recommendation   | <Category> |     |

   #FeatureID-ACAUTOCAS-11453
  @Sanity
  Scenario Outline: ACAUTOCAS-13557: Save and compute the details after uploading "<Document_Type>" file in financial details of non individual applicant at "<ApplicationStage>" in "<ProductType>"
    And user opens an application of "<ProductType>" product type as "nonindiv" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user navigates to personal information page of "<ApplicationStage>"
    And user reads data from the excel file "<CustomerDetailsWB>" under sheet "<CustomerDetails_home>" and row <CustomerDetails_home_rowNum>
    And user fills and save customer details for non individual applicant
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_fileUploadAndPreview>" and row <FinancialDetails_fileUploadAndPreview_rowNum>
    And user open financial details for non individual
    And user open file upload accordion for file upload for non individual customer
    And user selects Document Type as "<Document_Type>" document
    And user fills all fields of file upload preview
    And user browse the file "<Document_Type>" to upload
    And user upload the browsed file
    When user Save&Compute the financial details for non individual
    Then financial details should be successfully Save&Compute

    @Conventional
    @ImplementedBy-kanika.mahal
    @Release
    @Release3
    @AuthoredBy-vipin.kishor
    #${ ProductType : ["PF","HL","AL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ApplicationStage   | Document_Type        | ProductType   | FinancialDetailsWB     | FinancialDetails_fileUploadAndPreview | FinancialDetails_fileUploadAndPreview_rowNum | CustomerDetailsWB     | CustomerDetails_home | CustomerDetails_home_rowNum | Category | Key |
      | <ApplicationStage> | Balance Sheet        | <ProductType> | financial_details.xlsx | file_upload_and_preview               | 34                                           | customer_details.xlsx | home                 | 0                           |          |     |
      | <ApplicationStage> | Cash Flow            | <ProductType> | financial_details.xlsx | file_upload_and_preview               | 35                                           | customer_details.xlsx | home                 | 0                           |          |     |
      | <ApplicationStage> | Funds Flow           | <ProductType> | financial_details.xlsx | file_upload_and_preview               | 36                                           | customer_details.xlsx | home                 | 0                           |          |     |
      | <ApplicationStage> | Income/P&L Statement | <ProductType> | financial_details.xlsx | file_upload_and_preview               | 37                                           | customer_details.xlsx | home                 | 0                           |          |     |

    @Islamic
    @NotImplemented
    @AuthoredBy-anshika.gupta
     # ${ ProductType : ["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Credit Approval","Reconsideration"]}
    Examples:
      | ApplicationStage   | Document_Type        | ProductType   | FinancialDetailsWB     | FinancialDetails_fileUploadAndPreview | FinancialDetails_fileUploadAndPreview_rowNum | CustomerDetailsWB     | CustomerDetails_home | CustomerDetails_home_rowNum | Category | Key |
      | <ApplicationStage> | Balance Sheet        | <ProductType> | financial_details.xlsx | file_upload_and_preview               | 34                                           | customer_details.xlsx | home                 | 0                           |          |     |
      | <ApplicationStage> | Cash Flow            | <ProductType> | financial_details.xlsx | file_upload_and_preview               | 35                                           | customer_details.xlsx | home                 | 0                           |          |     |
      | <ApplicationStage> | Funds Flow           | <ProductType> | financial_details.xlsx | file_upload_and_preview               | 36                                           | customer_details.xlsx | home                 | 0                           |          |     |
      | <ApplicationStage> | Income/P&L Statement | <ProductType> | financial_details.xlsx | file_upload_and_preview               | 37                                           | customer_details.xlsx | home                 | 0                           |          |     |

    @Islamic
    @NotImplemented
    @AuthoredBy-anshika.gupta
    # ${ ProductType : ["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category:["bonds","shares","metals"]}
    Examples:
      | ApplicationStage   | Document_Type        | ProductType   | FinancialDetailsWB     | FinancialDetails_fileUploadAndPreview | FinancialDetails_fileUploadAndPreview_rowNum | CustomerDetailsWB     | CustomerDetails_home | CustomerDetails_home_rowNum | Category   | Key |
      | <ApplicationStage> | Balance Sheet        | <ProductType> | financial_details.xlsx | file_upload_and_preview               | 34                                           | customer_details.xlsx | home                 | 0                           | <Category> |     |
      | <ApplicationStage> | Cash Flow            | <ProductType> | financial_details.xlsx | file_upload_and_preview               | 35                                           | customer_details.xlsx | home                 | 0                           | <Category> |     |
      | <ApplicationStage> | Funds Flow           | <ProductType> | financial_details.xlsx | file_upload_and_preview               | 36                                           | customer_details.xlsx | home                 | 0                           | <Category> |     |
      | <ApplicationStage> | Income/P&L Statement | <ProductType> | financial_details.xlsx | file_upload_and_preview               | 37                                           | customer_details.xlsx | home                 | 0                           | <Category> |     |



