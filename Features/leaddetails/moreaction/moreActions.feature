@Epic-Loan_Application_Details
@AuthoredBy-shailja.mishra
@ReviewedBy-None
@ReviewedByDEV
@ApplicantRun@Conventional
@Islamic

Feature: Perform more actions on selected Application

  @ImplementedBy-akash.bansal
    @Release2
  Scenario Outline: ACAUTOCAS-1793: Provision to Cancel Application from <StageVar>
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user creates new application for "<Loan_Type>"
    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_home>" and row <PersonalInfo_home_rowNum>
    And user fills home page of personal information
    And user reads data from the excel file "<EmploymentDetailsWB>" under sheet "<EmploymentDetails_home>" and row <EmploymentDetails_home_rowNum>
    And user fills and saves employment details for occupation as salaried
    And user reads data from the excel file "<CancelApplicationWB>" under sheet "<CancelApplication>" and row <CancelApplication_rowNum>
#    When user opens application at "<StageVar>" stage from application grids
    When user saves data in context for cancel application
    And user opens an application of "<StageVar>" stage present in context from application grid
    And user initiates cancellation for selected application at "<StageVar>"
    Then user should be able to initiate Cancellation for selected application successfully

    Examples:
      | StageVar     | SourceDataFile       | SheetName | RowNumber | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | Loan_Type     | CancelApplicationWB     | CancelApplication  | CancelApplication_rowNum |
      | Lead Details | LoginDetailsCAS.xlsx | LoginData | 0         | personal_information.xlsx | home              | 24                       | employment_details.xlsx | home                   | 130                           | Personal Loan | cancel_application.xlsx | cancel_application | 23                       |

  @ImplementedBy-akash.bansal
    @Release2
  Scenario Outline: ACAUTOCAS-1794: Cancel Application from <StageVar>
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user creates new application for "<Loan_Type>"
    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_home>" and row <PersonalInfo_home_rowNum>
    And user fills home page of personal information
    And user reads data from the excel file "<EmploymentDetailsWB>" under sheet "<EmploymentDetails_home>" and row <EmploymentDetails_home_rowNum>
    And user fills and saves employment details for occupation as salaried
    And user reads data from the excel file "<CancelApplicationWB>" under sheet "<CancelApplication>" and row <CancelApplication_rowNum>
#    When user opens application at "<StageVar>" stage from application grids
    When user saves data in context for cancel application
    And user opens an application of "<StageVar>" stage present in context from application grid
    And user initiates cancellation for selected application at "<StageVar>"
    Then Application should be available for Cancellation Approval

    Examples:
      | StageVar     | SourceDataFile       | SheetName | RowNumber | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | Loan_Type     | CancelApplicationWB     | CancelApplication  | CancelApplication_rowNum |
      | Lead Details | LoginDetailsCAS.xlsx | LoginData | 0         | personal_information.xlsx | home              | 24                       | employment_details.xlsx | home                   | 130                           | Personal Loan | cancel_application.xlsx | cancel_application | 23                       |

    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE", "KYC" , "POST APPROVAL" , "Disbursal"]}
   # ${ ProductType : ["IHF","IPF","PF","MAL","HL","LAP","CV","MHL","FE","EDU","AGRL","JLG","CEQ","MULF","BD","CashCred","BL","LC","BG"]}
  Scenario Outline: ACAUTOCAS-13913:  Provision to Hold Application from <ApplicationStage>
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user opens an application of "<ProductType>" product type as "<applicantType>" applicant at "<ApplicationStage>" from application grid
    Then user should be able to hold selected application successfully
    @ImplementedBy-utkarsh.tiwari
    @ReleaseAppInfoM4
    Examples:
      | SourceDataFile       | SheetName | RowNumber | ApplicationStage   | ProductType   | applicantType |
      | LoginDetailsCAS.xlsx | LoginData | 0         | <ApplicationStage> | <ProductType> | indiv         |

     # ${ApplicationStage:["Lead Details","Login Acceptance","DDE", "KYC", "Post Approval", "Disbursal"]}
   # ${ ProductType : ["IHF","IPF","PF","MAL","HL","LAP","CV","MHL","FE","EDU","AGRL","JLG","CEQ","MULF","BD","CashCred","BL","LC","BG"]}
  Scenario Outline: ACAUTOCAS-13914:  Hold Application from <ApplicationStage>
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user saves application stage as "<ApplicationStage>" in context
    And user opens an application of "<ProductType>" product type as "<applicantType>" applicant at "<ApplicationStage>" from application grid
    When user selects "Hold Application" from more actions option
    And user fills reason to hold the application
    Then application should not be visible for action in assigned and pool application
    @ImplementedBy-utkarsh.tiwari
    @Perishable
    @ReleaseAppInfoM4
    Examples:
      | SourceDataFile       | SheetName | RowNumber | ApplicationStage   | ProductType   | applicantType |
      | LoginDetailsCAS.xlsx | LoginData | 0         | <ApplicationStage> | <ProductType> | indiv         |

     # ${ApplicationStage:["Lead Details","Login Acceptance","DDE", "KYC", "Post Approval", "DISBURSAL" , RECOMMENDATION", "Reconsideration", "Credit Approval"]}
   # ${ ProductType : ["IHF","IPF","PF","MAL","HL","LAP","CV","MHL","FE","EDU","AGRL","JLG","CEQ","MULF","BD","CashCred","BL","LC","BG"]}
  Scenario Outline: ACAUTOCAS-13915:  Provision to raise Query for application from <ApplicationStage>
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user opens an application of "<ProductType>" product type as "<applicantType>" applicant at "<ApplicationStage>" from application grid
    When user selects "Raise Query" from more actions option
    Then user should be able to raise Query for selected application
    @ImplementedBy-utkarsh.tiwari
    @ReleaseAppInfoM4
    Examples:
      | SourceDataFile       | SheetName | RowNumber | ApplicationStage   | ProductType   | applicantType |
      | LoginDetailsCAS.xlsx | LoginData | 0         | <ApplicationStage> | <ProductType> | indiv         |

     # ${ApplicationStage:["Lead Details","Login Acceptance","DDE", "KYC", "Post Approval", "DISBURSAL" , RECOMMENDATION", "Reconsideration", "Credit Approval"]}
   # ${ ProductType : ["IHF","IPF","PF","MAL","HL","LAP","CV","MHL","FE","EDU","AGRL","JLG","CEQ","MULF","BD","CashCred","BL","LC","BG"]}
  Scenario Outline: ACAUTOCAS-13916:  Provision to view workflow history of application from <ApplicationStage>
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user opens an application of "<ProductType>" product type as "<applicantType>" applicant at "<ApplicationStage>" from application grid
    When user selects "WorkFlow History" from more actions option
    Then user should be able to view workflow history for selected application
    @ImplementedBy-utkarsh.tiwari
    @ReleaseAppInfoM4
    Examples:
      | SourceDataFile       | SheetName | RowNumber | ApplicationStage   | ProductType   | applicantType |
      | LoginDetailsCAS.xlsx | LoginData | 0         | <ApplicationStage> | <ProductType> | indiv         |

    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE", "KYC", "Post Approval", "DISBURSAL" , RECOMMENDATION", "Reconsideration", "Credit Approval"]}
   # ${ ProductType : ["IHF","IPF","PF","MAL","HL","LAP","CV","MHL","FE","EDU","AGRL","JLG","CEQ","MULF","BD","CashCred","BL","LC","BG"]}
  Scenario Outline: ACAUTOCAS-13917:  View Workflow History of Application at <ApplicationStage>
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user opens an application of "<ProductType>" product type as "<applicantType>" applicant at "<ApplicationStage>" from application grid
    When user selects "WorkFlow History" from more actions option
    Then user should be able to see movement of Application in workflow
    @ImplementedBy-utkarsh.tiwari
    @ReleaseAppInfoM4
    Examples:
      | SourceDataFile       | SheetName | RowNumber | ApplicationStage   | ProductType   | applicantType |
      | LoginDetailsCAS.xlsx | LoginData | 0         | <ApplicationStage> | <ProductType> | indiv         |

  @ImplementedBy-akash.bansal
    @Release2
  Scenario Outline: ACAUTOCAS-1800: Cancel application initiation with <Mandatory_All> fields at <StageVar>
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user reads data from the excel file "<CancelApplicationWB>" under sheet "<CancelApplication>" and row <CancelApplication_rowNum>
#    And user opens application at "<StageVar>" stage from application grids
    And user saves data in context for cancel application
    And user opens an application of "<StageVar>" stage present in context from application grid
    When user fills cancellation data with "<Mandatory_All>" fields
    Then Application should be successfully initiated for cancellation

    Examples:
      | StageVar     | Mandatory_All | SourceDataFile       | SheetName | RowNumber | CancelApplicationWB     | CancelApplication  | CancelApplication_rowNum |
      | Lead Details | Mandatory     | LoginDetailsCAS.xlsx | LoginData | 0         | cancel_application.xlsx | cancel_application | 25                       |
      | Lead Details | All           | LoginDetailsCAS.xlsx | LoginData | 0         | cancel_application.xlsx | cancel_application | 26                       |
      | DDE          | Mandatory     | LoginDetailsCAS.xlsx | LoginData | 0         | cancel_application.xlsx | cancel_application | 27                       |
      | DDE          | All           | LoginDetailsCAS.xlsx | LoginData | 0         | cancel_application.xlsx | cancel_application | 28                       |

  @ImplementedBy-akash.bansal
    @Release2
  Scenario Outline: ACAUTOCAS-1801: For Cancel application reason description field as <Mandatory_reason> validation at <StageVar>
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user reads data from the excel file "<CancelApplicationWB>" under sheet "<CancelApplication>" and row <CancelApplication_rowNum>
#    And user opens application at "<StageVar>" stage from application grids
    And user saves data in context for cancel application
    And user opens an application of "<StageVar>" stage present in context from application grid
    When user selects reason code as "<Mandatory_reason>"
    Then reason description should be "<editable>"

    Examples:
      | StageVar     | Mandatory_reason      | editable     | SourceDataFile       | SheetName | RowNumber | CancelApplicationWB     | CancelApplication  | CancelApplication_rowNum |
      | Lead Details | any_other_than_Others | non-editable | LoginDetailsCAS.xlsx | LoginData | 0         | cancel_application.xlsx | cancel_application | 30                       |
      | Lead Details | Others                | editable     | LoginDetailsCAS.xlsx | LoginData | 0         | cancel_application.xlsx | cancel_application | 31                       |
      | DDE          | any_other_than_Others | non-editable | LoginDetailsCAS.xlsx | LoginData | 0         | cancel_application.xlsx | cancel_application | 32                       |
      | DDE          | Others                | editable     | LoginDetailsCAS.xlsx | LoginData | 0         | cancel_application.xlsx | cancel_application | 33                       |

#    Examples:
#      | StageVar    | Mandatory_reason      | editable     | SourceDataFile       | SheetName | RowNumber | OtherActionApplicationWB    | OtherActionApplication_reason | OtherActionApplication_reason_rownum |
#      | LeadDetails | any_other_than_Others | non-editable | LoginDetailsCAS.xlsx | LoginData | 7         | OtherActionApplication.xlsx | OtherActionApplication_reason | 0                                    |
#      | LeadDetails | Others                | editable     | LoginDetailsCAS.xlsx | LoginData | 7         | OtherActionApplication.xlsx | OtherActionApplication_reason | 0                                    |
#      | DDE         | any_other_than_Others | non-editable | LoginDetailsCAS.xlsx | LoginData | 7         | OtherActionApplication.xlsx | OtherActionApplication_reason | 0                                    |
#      | DDE         | Others                | editable     | LoginDetailsCAS.xlsx | LoginData | 7         | OtherActionApplication.xlsx | OtherActionApplication_reason | 0                                    |

  @ImplementedBy-akash.bansal
    @Release2
  Scenario Outline: ACAUTOCAS-1802: For Cancel application multiple reasons can be added with <Mandatory> fields in <StageVar>
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user reads data from the excel file "<CancelApplicationWB>" under sheet "<CancelApplication>" and row <CancelApplication_rowNum>
#    And user opens application at "<StageVar>" stage from application grids
    And user saves data in context for cancel application
    And user opens an application of "<StageVar>" stage present in context from application grid
    When user fills multiple data with "<Mandatory>" fields
    Then Application should be successfully initiated for cancellation

    Examples:
      | StageVar     | Mandatory | SourceDataFile       | SheetName | RowNumber | CancelApplicationWB     | CancelApplication  | CancelApplication_rowNum |
      | Lead Details | Mandatory | LoginDetailsCAS.xlsx | LoginData | 0         | cancel_application.xlsx | cancel_application | 27                       |
      | Lead Details | All       | LoginDetailsCAS.xlsx | LoginData | 0         | cancel_application.xlsx | cancel_application | 28                       |
      | DDE          | Mandatory | LoginDetailsCAS.xlsx | LoginData | 0         | cancel_application.xlsx | cancel_application | 29                       |
      | DDE          | All       | LoginDetailsCAS.xlsx | LoginData | 0         | cancel_application.xlsx | cancel_application | 30                       |

#    Examples:
#      | StageVar    | Mandatory | SourceDataFile       | SheetName | RowNumber | OtherActionApplicationWB    | OtherActionApplication_reason | OtherActionApplication_reason_rownum |
#      | LeadDetails | Mandatory | LoginDetailsCAS.xlsx | LoginData | 7         | OtherActionApplication.xlsx | OtherActionApplication_reason | 0                                    |
#      | DDE         | Mandatory | LoginDetailsCAS.xlsx | LoginData | 7         | OtherActionApplication.xlsx | OtherActionApplication_reason | 0                                    |

  @ImplementedBy-akash.bansal
    @Release2
  Scenario Outline: ACAUTOCAS-1803: For Cancel application duplicate reasons cannot be added in <ApplicationStage>
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user reads data from the excel file "<CancelApplicationWB>" under sheet "<CancelApplication>" and row <CancelApplication_rowNum>
#    And user opens application at "<StageVar>" stage from application grids
    And user saves data in context for cancel application
    And user opens an application of "<StageVar>" stage present in context from application grid
    When user fills multiple data with "<Mandatory>" duplicate fields
    Then duplicate reasons should not be saved

    Examples:
      | StageVar     | Mandatory | SourceDataFile       | SheetName | RowNumber | CancelApplicationWB     | CancelApplication  | CancelApplication_rowNum |
      | Lead Details | Mandatory | LoginDetailsCAS.xlsx | LoginData | 0         | cancel_application.xlsx | cancel_application | 32                       |
      | DDE          | Mandatory | LoginDetailsCAS.xlsx | LoginData | 0         | cancel_application.xlsx | cancel_application | 33                       |

    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE", "KYC", "Post Approval", "DISBURSAL" , RECOMMENDATION", "Reconsideration", "Credit Approval"]}
   # ${ ProductType : ["IHF","IPF","PF","MAL","HL","LAP","CV","MHL","FE","EDU","AGRL","JLG","CEQ","MULF","BD","CashCred","BL","LC","BG"]}
  Scenario Outline: ACAUTOCAS-13918:  For <Action>  reason code validation at <ApplicationStage>
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user opens an application of "<ProductType>" product type as "<applicantType>" applicant at "<ApplicationStage>" from application grid
    And user reads data from the excel file "cancel_application.xlsx" under sheet "cancel_application" and row <CancelApplication_rowNum>
    When user selects "<Action>" from more actions option
    And user selects reason code of "<Action>"
    Then reason description should be auto populated against reason code for "<Action>"
    @ImplementedBy-utkarsh.tiwari
    @ReleaseAppInfoM4
    Examples:
      | Action             | SourceDataFile       | SheetName | RowNumber | ApplicationStage   | ProductType   | applicantType | CancelApplication_rowNum |
      | Cancel Application | LoginDetailsCAS.xlsx | LoginData | 0         | <ApplicationStage> | <ProductType> | indiv         | 36                       |
      | Cancel Application | LoginDetailsCAS.xlsx | LoginData | 0         | <ApplicationStage> | <ProductType> | indiv         | 37                       |
      | Cancel Application | LoginDetailsCAS.xlsx | LoginData | 0         | <ApplicationStage> | <ProductType> | indiv         | 38                       |
      | Reject Application | LoginDetailsCAS.xlsx | LoginData | 0         | <ApplicationStage> | <ProductType> | indiv         | 39                       |
      | Reject Application | LoginDetailsCAS.xlsx | LoginData | 0         | <ApplicationStage> | <ProductType> | indiv         | 40                       |
      | Reject Application | LoginDetailsCAS.xlsx | LoginData | 0         | <ApplicationStage> | <ProductType> | indiv         | 41                       |

     # ${ApplicationStage:["Lead Details","Login Acceptance","DDE", "KYC", "Post Approval", "Disbursal"]}
   # ${ ProductType : ["IHF","IPF","PF","MAL","HL","LAP","CV","MHL","FE","EDU","AGRL","JLG","CEQ","MULF","BD","CashCred","BL","LC","BG"]}
  Scenario Outline: CAS-24545:For Hold Application  reason code validation at <ApplicationStage>
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user opens an application of "<ProductType>" product type as "<applicantType>" applicant at "<ApplicationStage>" from application grid
    When user selects "Hold Application" from more actions option
    And user clicks on plus icon to add more reason
    Then user should be allowed to add multiple reasons
    @ImplementedBy-utkarsh.tiwari
    @ReleaseAppInfoM4
    Examples:
      | SourceDataFile       | SheetName | RowNumber | ApplicationStage   | ProductType   | applicantType |
      | LoginDetailsCAS.xlsx | LoginData | 0         | <ApplicationStage> | <ProductType> | indiv         |

    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE", "KYC", "Post Approval", "DISBURSAL" , RECOMMENDATION", "Reconsideration", "Credit Approval"]}
   # ${ ProductType : ["IHF","IPF","PF","MAL","HL","LAP","CV","MHL","FE","EDU","AGRL","JLG","CEQ","MULF","BD","CashCred","BL","LC","BG"]}
  Scenario Outline: ACAUTOCAS-13919:  For Reject application initiation with <Mandatory_All> fields at <ApplicationStage>
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user reads data from the excel file "cancel_application.xlsx" under sheet "cancel_application" and row 40
    And user opens an application of "<ProductType>" product type as "<applicantType>" applicant at "<ApplicationStage>" from application grid
    When user selects "Reject Application" from more actions option
    And user fills all mandatory fields for reject application
    Then Application should be successfully rejected
    @ImplementedBy-utkarsh.tiwari
    @Perishable
    @ReleaseAppInfoM4
    Examples:
      | SourceDataFile       | SheetName | RowNumber | ApplicationStage   | ProductType   | applicantType |
      | LoginDetailsCAS.xlsx | LoginData | 0         | <ApplicationStage> | <ProductType> | indiv         |

     # ${ApplicationStage:["Lead Details","Login Acceptance","DDE", "KYC", "Post Approval", "DISBURSAL" , RECOMMENDATION", "Reconsideration", "Credit Approval"]}
   # ${ ProductType : ["IHF","IPF","PF","MAL","HL","LAP","CV","MHL","FE","EDU","AGRL","JLG","CEQ","MULF","BD","CashCred","BL","LC","BG"]}
  Scenario Outline: ACAUTOCAS-13920:  For Reject application reason description field validation at <ApplicationStage>
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user saves application stage as "<ApplicationStage>" in context
    And user reads data from the excel file "cancel_application.xlsx" under sheet "cancel_application" and row 40
    And user opens an application of "<ProductType>" product type as "<applicantType>" applicant at "<ApplicationStage>" from application grid
    When user selects "Reject Application" from more actions option
    And user selects reason code of "Reject Application"
    Then reason description should be "<editable>"
    @ImplementedBy-utkarsh.tiwari
    @ReleaseAppInfoM4
    Examples:
      | SourceDataFile       | SheetName | RowNumber | ApplicationStage   | ProductType   | applicantType |
      | LoginDetailsCAS.xlsx | LoginData | 0         | <ApplicationStage> | <ProductType> | indiv         |

    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE", "KYC", "Post Approval", "DISBURSAL" , RECOMMENDATION", "Reconsideration", "Credit Approval"]}
   # ${ ProductType : ["IHF","IPF","PF","MAL","HL","LAP","CV","MHL","FE","EDU","AGRL","JLG","CEQ","MULF","BD","CashCred","BL","LC","BG"]}
  Scenario Outline: ACAUTOCAS-13921:  For Reject application multiple reasons can be added at <ApplicationStage>
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user opens an application of "<ProductType>" product type as "<applicantType>" applicant at "<ApplicationStage>" from application grid
    When user selects "Reject Application" from more actions option
    And user clicks on plus icon to add more reason
    Then new reason can be added in Reject Application
    @ImplementedBy-utkarsh.tiwari
    @ReleaseAppInfoM4
    Examples:
      | SourceDataFile       | SheetName | RowNumber | ApplicationStage   | ProductType   | applicantType |
      | LoginDetailsCAS.xlsx | LoginData | 0         | <ApplicationStage> | <ProductType> | indiv         |

    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE", "KYC", "Post Approval", "DISBURSAL" , RECOMMENDATION", "Reconsideration", "Credit Approval"]}
   # ${ ProductType : ["IHF","IPF","PF","MAL","HL","LAP","CV","MHL","FE","EDU","AGRL","JLG","CEQ","MULF","BD","CashCred","BL","LC","BG"]}
  Scenario Outline: ACAUTOCAS-13922:  For Reject application duplicate reasons cannot be added at <ApplicationStage>
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user opens an application of "<ProductType>" product type as "<applicantType>" applicant at "<ApplicationStage>" from application grid
    When user selects "Reject Application" from more actions option
    And user clicks on plus icon to add more reason
    Then duplicate reason code should not be saved for reject application
    @ImplementedBy-utkarsh.tiwari
    @ReleaseAppInfoM4
    Examples:
      | SourceDataFile       | SheetName | RowNumber | ApplicationStage   | ProductType   | applicantType |
      | LoginDetailsCAS.xlsx | LoginData | 0         | <ApplicationStage> | <ProductType> | indiv         |

      # ${ApplicationStage:["Lead Details","Login Acceptance","DDE", "KYC", "Post Approval", "Disbursal"]}
   # ${ ProductType : ["IHF","IPF","PF","MAL","HL","LAP","CV","MHL","FE","EDU","AGRL","JLG","CEQ","MULF","BD","CashCred","BL","LC","BG"]}
  Scenario Outline: CAS-24545:For Hold application with <Mandatory_All> fields at <ApplicationStage>
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user saves application stage as "<ApplicationStage>" in context
    And user opens an application of "<ProductType>" product type as "<applicantType>" applicant at "<ApplicationStage>" from application grid
    When user selects "Hold Application" from more actions option
    And user fills reason to hold the application
    Then Application should be successfully go on hold
    @ImplementedBy-utkarsh.tiwari
    @ReleaseAppInfoM4
    Examples:
      | SourceDataFile       | SheetName | RowNumber | ApplicationStage   | ProductType   | applicantType | Mandatory_All |
      | LoginDetailsCAS.xlsx | LoginData | 0         | <ApplicationStage> | <ProductType> | indiv         | mandatory     |

      # ${ApplicationStage:["Lead Details","Login Acceptance","DDE", "KYC", "Post Approval", "Disbursal"]}
   # ${ ProductType : ["IHF","IPF","PF","MAL","HL","LAP","CV","MHL","FE","EDU","AGRL","JLG","CEQ","MULF","BD","CashCred","BL","LC","BG"]}
  Scenario Outline: CAS-24545: For Hold application multiple reasons can be added at <StageVar>
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user saves application stage as "<ApplicationStage>" in context
    And user opens an application of "<ProductType>" product type as "<applicantType>" applicant at "<ApplicationStage>" from application grid
    When user selects "Hold Application" from more actions option
    And user clicks on plus icon to add more reason
    Then new reason can be added for Hold Application
    @ImplementedBy-utkarsh.tiwari
    @ReleaseAppInfoM4
    Examples:
      | SourceDataFile       | SheetName | RowNumber | ApplicationStage   | ProductType   | applicantType |
      | LoginDetailsCAS.xlsx | LoginData | 0         | <ApplicationStage> | <ProductType> | indiv         |

      # ${ApplicationStage:["Lead Details","Login Acceptance","DDE", "KYC", "Post Approval", "Disbursal"]}
   # ${ ProductType : ["IHF","IPF","PF","MAL","HL","LAP","CV","MHL","FE","EDU","AGRL","JLG","CEQ","MULF","BD","CashCred","BL","LC","BG"]}
  Scenario Outline: CAS-24545: For Hold application reason code cannot be blank when added at <StageVar>
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user saves application stage as "<ApplicationStage>" in context
    And user opens an application of "<ProductType>" product type as "<applicantType>" applicant at "<ApplicationStage>" from application grid
    When user selects "Hold Application" from more actions option
    And user fills data with blank Reason code
    Then user should get proper error message for blank reason code in Hold Application
    @ImplementedBy-utkarsh.tiwari
    @ReleaseAppInfoM4
    Examples:
      | SourceDataFile       | SheetName | RowNumber | ApplicationStage   | ProductType   | applicantType |
      | LoginDetailsCAS.xlsx | LoginData | 0         | <ApplicationStage> | <ProductType> | indiv         |

    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE", "KYC", "Post Approval", "Disbursal"]}
   # ${ ProductType : ["IHF","IPF","PF","MAL","HL","LAP","CV","MHL","FE","EDU","AGRL","JLG","CEQ","MULF","BD","CashCred","BL","LC","BG"]}
  Scenario Outline: CAS-24545: For Hold application duplicate reasons cannot be added at <StageVar>
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user saves application stage as "<ApplicationStage>" in context
    And user opens an application of "<ProductType>" product type as "<applicantType>" applicant at "<ApplicationStage>" from application grid
    When user selects "Hold Application" from more actions option
    And user fills multiple same reason to hold the application
    Then duplicate reason code should not be saved in Hold Application
    @ImplementedBy-utkarsh.tiwari
    @ReleaseAppInfoM4
    Examples:
      | SourceDataFile       | SheetName | RowNumber | ApplicationStage   | ProductType   | applicantType |
      | LoginDetailsCAS.xlsx | LoginData | 0         | <ApplicationStage> | <ProductType> | indiv         |

    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE", "KYC", "Post Approval", "Disbursal"]}
   # ${ ProductType : ["IHF","IPF","PF","MAL","HL","LAP","CV","MHL","FE","EDU","AGRL","JLG","CEQ","MULF","BD","CashCred","BL","LC","BG"]}
  Scenario Outline: CAS-24545: For Hold application Reassignment date cannot be greater than current system date at <StageVar>
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user saves application stage as "<ApplicationStage>" in context
    And user opens an application of "<ProductType>" product type as "<applicantType>" applicant at "<ApplicationStage>" from application grid
    When user selects "Hold Application" from more actions option
    And user reads data from the excel file "HoldApplication.xlsx" under sheet "HoldApplication" and row 0
    And user fills data with all fields of Hold Application
    Then reassignment date should not be less than current system date
    @ImplementedBy-utkarsh.tiwari
    @ReleaseAppInfoM4
    Examples:
      | SourceDataFile       | SheetName | RowNumber | ApplicationStage   | ProductType   | applicantType |
      | LoginDetailsCAS.xlsx | LoginData | 0         | <ApplicationStage> | <ProductType> | indiv         |

      # ${ApplicationStage:["Lead Details","Login Acceptance","DDE", "KYC", "Post Approval", "Disbursal"]}
   # ${ ProductType : ["IHF","IPF","PF","MAL","HL","LAP","CV","MHL","FE","EDU","AGRL","JLG","CEQ","MULF","BD","CashCred","BL","LC","BG"]}
  Scenario Outline: CAS-8123: Hold application on exit of an application at <ApplicationStage>
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user saves application stage as "<ApplicationStage>" in context
    And user opens an application of "<ProductType>" product type as "<applicantType>" applicant at "<ApplicationStage>" from application grid
    When user exits the Applicant Details
    And user holds the application from exit option
    Then user should be able to Hold the application
    @ImplementedBy-utkarsh.tiwari
    @Perishable
    @ReleaseAppInfoM4
    Examples:
      | SourceDataFile       | SheetName | RowNumber | ApplicationStage   | ProductType   | applicantType |
      | LoginDetailsCAS.xlsx | LoginData | 0         | <ApplicationStage> | <ProductType> | indiv         |
