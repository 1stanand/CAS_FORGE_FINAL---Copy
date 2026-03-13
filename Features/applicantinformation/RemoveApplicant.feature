@Epic-Applicant_Information
#@AuthoredBy-vinod.pandey
@AuthoredBy-vipin.kishor
@ReviewedBy-None
@Perishable
@ReviewedByDEV
@Reconciled
@AppInfoAdoption
#${ApplicantType:["indiv","nonindiv"]}
  
#FeatureID- ACAUTOCAS-130
Feature:Remove Another Applicant

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
  @Sanity
  @FixedTest28
  Scenario Outline: ACAUTOCAS-892: Remove "<Another_Applicant>" from existing application which is at <ApplicationStage> stage of <ProductType>
    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_home>" and row <PersonalInfo_home_rowNum>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user removes all another applicant present in the application
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user opens applicant information page of "<ApplicationStage>"
    When user adds another new existing individual applicant with applicant type as "<Another_Applicant>" and application id at "<ApplicationStage>"
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user opens applicant info page of "<ApplicationStage>"
    And user removes the "<Another_Applicant>" without navigation
    Then "<Another_Applicant>" should not be displayed in applicant information page
    @Conventional
    @Release @Part-2
    @ImplementedBy-utkarsh.tiwari
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ApplicantType   | Category | key | Another_Applicant | ApplicationStage   | ProductType   | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum |
      | <ApplicantType> |          |     | Co-applicant      | <ApplicationStage> | <ProductType> | personal_information.xlsx | home              | 0                        |
      | <ApplicantType> |          |     | Guarantor         | <ApplicationStage> | <ProductType> | personal_information.xlsx | home              | 0                        |
    @Islamic
    @Release
    @Part-2
    @ImplementedBy-akash.bansal
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ApplicantType   | Category | key | Another_Applicant | ApplicationStage   | ProductType   | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum |
      | <ApplicantType> |          |     | Co-applicant      | <ApplicationStage> | <ProductType> | personal_information.xlsx | home              | 1                        |
      | <ApplicantType> |          |     | Guarantor         | <ApplicationStage> | <ProductType> | personal_information.xlsx | home              | 1                        |
    @Islamic
    @Release
    @Part-2
    @ImplementedBy-akash.bansal
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category:["bonds"]}
    Examples:
      | ApplicantType   | Category   | key | Another_Applicant | ApplicationStage   | ProductType   | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum |
      | <ApplicantType> | <Category> |     | Co-applicant      | <ApplicationStage> | <ProductType> | personal_information.xlsx | home              | 1                        |
      | <ApplicantType> | <Category> |     | Guarantor         | <ApplicationStage> | <ProductType> | personal_information.xlsx | home              | 1                        |
    @NotImplemented
      # ${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
    Examples:
      | ApplicantType   | Category | key | Another_Applicant | ApplicationStage   | ProductType   | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum |
      | <ApplicantType> |          |     | Co-applicant      | <ApplicationStage> | <ProductType> | personal_information.xlsx | home              | 1                        |
      | <ApplicantType> |          |     | Guarantor         | <ApplicationStage> | <ProductType> | personal_information.xlsx | home              | 1                        |


  Scenario Outline: ACAUTOCAS-891:  Remove <Another_Applicant> from new application of <ProductType>
    And user creates new application for "<ProductType>"
    And user sets Lead Details in context
    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_home>" and row <PersonalInfo_home_rowNum>
    And user fills home page of personal information
    And user saves application number
    And user opens an application of "Lead Details" stage present in context from application grid
    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_home>" and row <PersonalInfo_home_rowNum2>
    When user adds another individual applicant with applicant type as "<Another_Applicant>"
    And user removes the another applicant
    Then "<Another_Applicant>" should not be displayed in applicant information page
    @Conventional
    @Release @Part-2
    @ImplementedBy-utkarsh.tiwari
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | Another_Applicant | ProductType   | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | PersonalInfo_home_rowNum2 |
      | Co-applicant      | <ProductType> | personal_information.xlsx | home              | 0                        | 24                        |
      | Guarantor         | <ProductType> | personal_information.xlsx | home              | 0                        | 24                        |
    @Islamic
    @Release
    @Part-2
    @ImplementedBy-akash.bansal
    @FixedJsClick
    #${ProductType:["IPF","IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | Another_Applicant | ProductType   | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | PersonalInfo_home_rowNum2 |
      | Co-applicant      | <ProductType> | personal_information.xlsx | home              | 168                      | 168                       |
      | Guarantor         | <ProductType> | personal_information.xlsx | home              | 168                      | 168                       |
    @NotImplemented
      # ${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
    Examples:
      | Another_Applicant | ProductType   | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | PersonalInfo_home_rowNum2 |
      | Co-applicant      | <ProductType> | personal_information.xlsx | home              | 1                        | 24                        |
      | Guarantor         | <ProductType> | personal_information.xlsx | home              | 1                        | 24                        |

  @Perishable
    @FixedTest28
  Scenario Outline: ACAUTOCAS-893: Remove primary applicant from existing application which is at <ApplicationStage> stage of <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user reads data from the excel file "personal_information.xlsx" under sheet "home" and row 24
    And user opens applicant info page of "<ApplicationStage>"
    And user removes all another applicant present in the application
    When user adds another new existing individual applicant with applicant type as "<Another_Applicant>" and application id at "<ApplicationStage>"
    And user saves application number
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user opens applicant info page of "<ApplicationStage>"
    And user removes the primary applicant without navigation
    Then primary applicant should not be displayed in applicant information page
    @Conventional
    @Release @Part-2
    @ImplementedBy-bhanu.singh1
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Another_Applicant:["Co-applicant" , "Guarantor"]}
    Examples:
      | ApplicationStage   | ApplicantType   | ProductType   | Category | key |Another_Applicant|
      | <ApplicationStage> | <ApplicantType> | <ProductType> |          |     |<Another_Applicant>|
    @Islamic
    @Release
    @Part-2
    @ImplementedBy-akash.bansal
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Another_Applicant:["Co-applicant" , "Guarantor"]}
    Examples:
      | ApplicationStage   | ApplicantType   | ProductType   | Category | key |Another_Applicant|
      | <ApplicationStage> | <ApplicantType> | <ProductType> |          |     |<Another_Applicant>|
    @Islamic
    @Release
    @Part-2
    @ImplementedBy-akash.bansal
    @FixedJsClick
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category:["bonds"]}
    #${Another_Applicant:["Co-applicant" , "Guarantor"]}
    Examples:
      | ApplicationStage   | ApplicantType   | ProductType   | Category   | key | Another_Applicant|
      | <ApplicationStage> | <ApplicantType> | <ProductType> | <Category> |     | <Another_Applicant> |
    @NotImplemented
      # ${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
    #${Another_Applicant:["Co-applicant" , "Guarantor"]}
    Examples:
      | ApplicationStage   | ApplicantType   | ProductType   | Category | key | Another_Applicant|
      | <ApplicationStage> | <ApplicantType> | <ProductType> |          |     | <Another_Applicant> |


  Scenario Outline: ACAUTOCAS-894: Remove primary applicant from new application of <ProductType> at <ApplicationStage>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user reads data from the excel file "personal_information.xlsx" under sheet "home" and row <personalInfo_rowNum>
    And user opens applicant information page of "<ApplicationStage>"
    And user removes all another applicant present in the application
    When user adds another individual applicant with applicant type as "Co-applicant" for "<ApplicationStage>" stage
    And user saves application number
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user opens applicant information page of "<ApplicationStage>"
    And user removes the primary applicant without navigation
    Then primary applicant should not be displayed in applicant information page
    @Conventional
    @Release @Part-2
    @ImplementedBy-utkarsh.tiwari
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ApplicationStage   | ApplicantType   | ProductType   | Category | key | personalInfo_rowNum |
      | <ApplicationStage> | <ApplicantType> | <ProductType> |          |     | 24                  |
    @Islamic
    @Release
    @Part-2
    @ImplementedBy-akash.bansal
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ApplicationStage   | ApplicantType   | ProductType   | Category | key | personalInfo_rowNum |
      | <ApplicationStage> | <ApplicantType> | <ProductType> |          |     | 171                 |
    @Islamic
    @Release
    @Part-2
    @ImplementedBy-akash.bansal
    @FixedJsClick
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category:["bonds"]}
    Examples:
      | ApplicationStage   | ApplicantType   | ProductType   | Category   | key | personalInfo_rowNum |
      | <ApplicationStage> | <ApplicantType> | <ProductType> | <Category> |     | 171                 |
    @NotImplemented
      # ${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
    Examples:
      | ApplicationStage   | ApplicantType   | ProductType   | Category | key | personalInfo_rowNum |
      | <ApplicationStage> | <ApplicantType> | <ProductType> |          |     | 24                  |

  @Perishable
    @FixedTest28
  Scenario Outline: ACAUTOCAS-13656:  On Removing primary applicant with applicant type as <Another_Applicant> from new application which is at <ApplicationStage> stage of <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user reads data from the excel file "personal_information.xlsx" under sheet "home" and row <row>
    And user opens applicant info page of "<ApplicationStage>"
    And user removes all another applicant present in the application
    And user adds another new existing individual applicant with applicant type as "<Another_Applicant>" and application id at "<ApplicationStage>"
    And user saves application number
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user opens applicant info page of "<ApplicationStage>"
    When user removes the primary applicant without navigation
    Then relationship of "<Another_Applicant>" should be changed
    @Conventional
    @Release @Part-2
    @ImplementedBy-utkarsh.tiwari
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ApplicationStage   | ApplicantType   | ProductType   | Category | key | Another_Applicant | row |
      | <ApplicationStage> | <ApplicantType> | <ProductType> |          |     | Co-applicant      | 24  |
      | <ApplicationStage> | <ApplicantType> | <ProductType> |          |     | Guarantor         | 24  |
    @Islamic
    @Release
    @Part-2
    @ImplementedBy-akash.bansal
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ApplicationStage   | ApplicantType   | ProductType   | Category | key | Another_Applicant | row |
      | <ApplicationStage> | <ApplicantType> | <ProductType> |          |     | Co-applicant      | 168 |
      | <ApplicationStage> | <ApplicantType> | <ProductType> |          |     | Guarantor         | 168 |
    @Islamic
    @Release
    @Part-2
    @ImplementedBy-akash.bansal
    @FixedJsClick
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category:["bonds"]}
    Examples:
      | ApplicationStage   | ApplicantType   | ProductType   | Category   | key | Another_Applicant | row |
      | <ApplicationStage> | <ApplicantType> | <ProductType> | <Category> |     | Co-applicant      | 168 |
      | <ApplicationStage> | <ApplicantType> | <ProductType> | <Category> |     | Guarantor         | 168 |
    @NotImplemented
      # ${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
    Examples:
      | ApplicationStage   | ApplicantType   | ProductType   | Category | key | Another_Applicant | row |
      | <ApplicationStage> | <ApplicantType> | <ProductType> |          |     | Co-applicant      | 24  |
      | <ApplicationStage> | <ApplicantType> | <ProductType> |          |     | Guarantor         | 24  |


  @Perishable
  Scenario Outline: ACAUTOCAS-13657:  On Removing primary applicant with applicant type as <Another_Applicant>  from existing application which is at <ApplicationStage> stage of <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user reads data from the excel file "personal_information.xlsx" under sheet "home" and row 24
    And user opens applicant info page of "<ApplicationStage>"
    And user removes all another applicant present in the application
    And user adds another new existing individual applicant with applicant type as "<Another_Applicant>" and application id at "<ApplicationStage>"
    When user removes the primary applicant without navigation
    Then relationship of "<Another_Applicant>" should be changed
    @Conventional
    @Release @Part-2
    @ImplementedBy-bhanu.singh1
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ApplicationStage   | ApplicantType   | ProductType   | Category | key | Another_Applicant |
      | <ApplicationStage> | <ApplicantType> | <ProductType> |          |     | Co-applicant      |
      | <ApplicationStage> | <ApplicantType> | <ProductType> |          |     | Guarantor         |
    @Islamic
    @Release
    @Part-2
    @ImplementedBy-akash.bansal
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ApplicationStage   | ApplicantType   | ProductType   | Category | key | Another_Applicant |
      | <ApplicationStage> | <ApplicantType> | <ProductType> |          |     | Co-applicant      |
      | <ApplicationStage> | <ApplicantType> | <ProductType> |          |     | Guarantor         |
    @Islamic
    @Release
    @Part-2
    @ImplementedBy-akash.bansal
    @FixedJsClick
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category:["bonds"]}
    Examples:
      | ApplicationStage   | ApplicantType   | ProductType   | Category   | key | Another_Applicant |
      | <ApplicationStage> | <ApplicantType> | <ProductType> | <Category> |     | Co-applicant      |
      | <ApplicationStage> | <ApplicantType> | <ProductType> | <Category> |     | Guarantor         |
    @NotImplemented
      # ${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
    Examples:
      | ApplicationStage   | ApplicantType   | ProductType   | Category | key | Another_Applicant |
      | <ApplicationStage> | <ApplicantType> | <ProductType> |          |     | Co-applicant      |
      | <ApplicationStage> | <ApplicantType> | <ProductType> |          |     | Guarantor         |


  Scenario Outline: ACAUTOCAS-895:  On Removing primary applicant from new application of <Loan_Type> relationship of "<Another_Applicant>" is changed
    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_home>" and row <PersonalInfo_home_rowNum>
    And user creates new application for "<Loan_Type>"
    And user sets Lead Details in context
    And user fills home page of personal information
    And user saves application number
    And user opens an application of "Lead Details" stage present in context from application grid
    And user adds another existing individual applicant with applicant type as "<Applicant_Type>" and application id
    When user removes the primary applicant
    Then relationship of "<Another_Applicant>" should be changed
    @Conventional
    @Release @Part-2
    @ImplementedBy-utkarsh.tiwari
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | Another_Applicant | Assigned_Pool | Loan_Type     | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum |
      | Co-applicant      | Assigned      | <ProductType> | personal_information.xlsx | home              | 1                        |
      | Guarantor         | Assigned      | <ProductType> | personal_information.xlsx | home              | 1                        |
    @Islamic
    @Release
    @Part-2
    @ImplementedBy-akash.bansal
    #${ProductType:["IPF","IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | Another_Applicant | Assigned_Pool | Loan_Type   | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum |
      | Co-applicant      | Assigned      | <Loan_Type> | personal_information.xlsx | home              | 171                      |
      | Guarantor         | Assigned      | <Loan_Type> | personal_information.xlsx | home              | 171                      |
    @NotImplemented
      # ${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
    Examples:
      | Another_Applicant | Assigned_Pool | Loan_Type     | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum |
      | Co-applicant      | Assigned      | <ProductType> | personal_information.xlsx | home              | 1                        |
      | Guarantor         | Assigned      | <ProductType> | personal_information.xlsx | home              | 1                        |

  @Sanity
  @Perishable
    @FixedTest28
  Scenario Outline: ACAUTOCAS-896:  On Removing primary applicant from existing application which is at <ApplicationStage> stage of <ProductType> relationship of <Another_Applicant> is changed
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user reads data from the excel file "personal_information.xlsx" under sheet "home" and row 24
    And user opens applicant info page of "<ApplicationStage>"
    And user removes all another applicant present in the application
    And user adds another new existing individual applicant with applicant type as "<Another_Applicant>" and application id at "<ApplicationStage>"
    And user saves application number
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user opens applicant info page of "<ApplicationStage>"
    When user removes the primary applicant without navigation
    Then relationship of "<Another_Applicant>" should be changed
    @Conventional
    @Release @Part-2
    @ImplementedBy-utkarsh.tiwari
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ApplicationStage   | Another_Applicant | ProductType   | ApplicantType   | Category | key |
      | <ApplicationStage> | Co-applicant      | <ProductType> | <ApplicantType> |          |     |
      | <ApplicationStage> | Guarantor         | <ProductType> | <ApplicantType> |          |     |
    @Islamic
    @Release
    @Part-2
    @ImplementedBy-akash.bansal
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ApplicationStage   | Another_Applicant | ProductType   | ApplicantType   | Category | key |
      | <ApplicationStage> | Co-applicant      | <ProductType> | <ApplicantType> |          |     |
      | <ApplicationStage> | Guarantor         | <ProductType> | <ApplicantType> |          |     |
    @Islamic
    @FixedJsClick
    @Release
    @Part-2
    @ImplementedBy-akash.bansal
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category:["bonds"]}
    Examples:
      | ApplicationStage   | Another_Applicant | ProductType   | ApplicantType   | Category   | key |
      | <ApplicationStage> | Co-applicant      | <ProductType> | <ApplicantType> | <Category> |     |
      | <ApplicationStage> | Guarantor         | <ProductType> | <ApplicantType> | <Category> |     |
    @NotImplemented
      # ${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
    Examples:
      | ApplicationStage   | Another_Applicant | ProductType   | ApplicantType   | Category | key |
      | <ApplicationStage> | Co-applicant      | <ProductType> | <ApplicantType> |          |     |
      | <ApplicationStage> | Guarantor         | <ProductType> | <ApplicantType> |          |     |


  Scenario Outline: ACAUTOCAS-897: On removing <Primary_Another> from <ProductType> application which is at Lead Details stage
    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_home>" and row <PersonalInfo_home_rowNum>
    And user creates new application for "<ProductType>"
    And user sets Lead Details in context
    And user fills home page of personal information
    And user selects created application of "<ProductType>" in "Assigned" grid
    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_home>" and row <PersonalInfo_home_rowNum2>
    When user adds another individual applicant with applicant type as "Co-applicant" in "<ProductType>"
    And user removes the "<Primary_Another>" as per dictated
    Then conformation pop up should be displayed
    @Conventional
    @Release @Part-2
    @ImplementedBy-utkarsh.tiwari
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    Examples:
      | Primary_Another   | ProductType   | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | PersonalInfo_home_rowNum2 |
      | Primary applicant | <ProductType> | personal_information.xlsx | home              | 0                        | 24                        |
      | Co-applicant      | <ProductType> | personal_information.xlsx | home              | 0                        | 24                        |
      | Guarantor         | <ProductType> | personal_information.xlsx | home              | 0                        | 24                        |
    @Islamic
    @Release
    @Part-2
    @ImplementedBy-akash.bansal
    @FixedJsClick
    #${ProductType:["IPF","IHF","IAF"]}
    Examples:
      | Primary_Another   | ProductType   | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | PersonalInfo_home_rowNum2 |
      | Primary applicant | <ProductType> | personal_information.xlsx | home              | 171                      | 24                        |
      | Co-applicant      | <ProductType> | personal_information.xlsx | home              | 171                      | 24                        |
      | Guarantor         | <ProductType> | personal_information.xlsx | home              | 171                      | 24                        |
    @NotImplemented
      # ${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
    Examples:
      | Primary_Another   | ProductType   | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | PersonalInfo_home_rowNum2 |
      | Primary applicant | <ProductType> | personal_information.xlsx | home              | 1                        | 24                        |
      | Co-applicant      | <ProductType> | personal_information.xlsx | home              | 1                        | 24                        |
      | Guarantor         | <ProductType> | personal_information.xlsx | home              | 1                        | 24                        |


  @Perishable
    @FixedTest28
  Scenario Outline: ACAUTOCAS-898: <Guarantor_CoApplicant> is removed at <ApplicationStage> from <ProductType> application
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user reads data from the excel file "personal_information.xlsx" under sheet "home" and row 171
    And user opens applicant information page of "<ApplicationStage>"
    When user adds another individual applicant with applicant type as "<Guarantor_CoApplicant>" for "<ApplicationStage>" stage
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user selects document tab
    And user reads data from the excel file "document.xlsx" under sheet "home" and row <Document_home_rowNum>
    And user select the document
    And user selects document status as "Received"
    And user uploads the document
    And user submit the documents with wait
    And user switch and close next tab
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user opens applicant information page of "<ApplicationStage>"
    And user removes another applicant without navigation
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user selects document tab
    Then all related document to "<Guarantor_CoApplicant>" should also be deleted in CAS
    @Conventional
    @Release @Part-2
    @ImplementedBy-utkarsh.tiwari
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ApplicationStage   | Guarantor_CoApplicant | ProductType   | ApplicantType   | Category | key | Document_home_rowNum |
      | <ApplicationStage> | Co-applicant          | <ProductType> | <ApplicantType> |          |     | 360                  |
      | <ApplicationStage> | Guarantor             | <ProductType> | <ApplicantType> |          |     | 360                  |
    @Islamic
    @Release
    @Part-2
    @ImplementedBy-akash.bansal
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ApplicationStage   | Guarantor_CoApplicant | ProductType   | ApplicantType   | Category | key | Document_home_rowNum |
      | <ApplicationStage> | Co-applicant          | <ProductType> | <ApplicantType> |          |     | 469                  |
      | <ApplicationStage> | Guarantor             | <ProductType> | <ApplicantType> |          |     | 406                  |
    @Islamic
    @Release
    @Part-2
    @ImplementedBy-akash.bansal
    @FixedJsClick2
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category:["bonds"]}
    Examples:
      | ApplicationStage   | Guarantor_CoApplicant | ProductType   | ApplicantType   | Category   | key | Document_home_rowNum |
      | <ApplicationStage> | Co-applicant          | <ProductType> | <ApplicantType> | <Category> |     | 469                  |
      | <ApplicationStage> | Guarantor             | <ProductType> | <ApplicantType> | <Category> |     | 406                  |
    @NotImplemented
    # ${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
    Examples:
      | ApplicationStage   | Guarantor_CoApplicant | ProductType   | ApplicantType   | Category | key | Document_home_rowNum |
      | <ApplicationStage> | Co-applicant          | <ProductType> | <ApplicantType> |          |     | 469                  |
      | <ApplicationStage> | Guarantor             | <ProductType> | <ApplicantType> |          |     | 406                  |

  @Perishable
    @FixedTest28
  Scenario Outline: ACAUTOCAS-899: Primary applicant is removed and added again in <ProductType> application at <ApplicationStage>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user reads data from the excel file "personal_information.xlsx" under sheet "home" and row 171
    And user opens applicant information page of "<ApplicationStage>"
    When user adds another individual applicant with applicant type as "Co-applicant" for "<ApplicationStage>" stage
    And user reads data from the excel file "document.xlsx" under sheet "home" and row 469
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user selects document tab
    And user selects the document
    And user switch and close next tab
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user opens applicant information page of "<ApplicationStage>"
    And user removes primary applicant without navigation
    And user reads data from the excel file "personal_information.xlsx" under sheet "home" and row 171
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user opens applicant information page of "<ApplicationStage>"
    And user adds primary applicant again
    And user reads data from the excel file "personal_information.xlsx" under sheet "identification" and row 160
    And user fills identification section of personal information
    And user reads data from the excel file "personal_information.xlsx" under sheet "address" and row 50
    And user fills address with residence status
    And user reads data from the excel file "personal_information.xlsx" under sheet "communication_details" and row 0
    And user enters communication details on personal information
    And user save personal information details
    And user reads data from the excel file "document.xlsx" under sheet "home" and row 469
    And user selects document tab
    And user selects the document
    Then should not have any impact on documents of another applicant
    @Conventional
    @Release @Part-2
    @ImplementedBy-utkarsh.tiwari
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category | key |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
    @Islamic
    @Release
    @Part-2
    @ImplementedBy-akash.bansal
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE"]}
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category | key |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
    @Islamic
    @Release
    @Part-2
    @ImplementedBy-akash.bansal
    @FixedJsClick2
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE"]}
    #${Category:["bonds"]}
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category   | key |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     |
    @NotImplemented
        # ${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category | key |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |

  @Perishable
    @FixedTest28
  Scenario Outline: ACAUTOCAS-900:  Document checklist reruns when new primary applicant is added in <ProductType> application at <ApplicationStage> stage
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_home>" and row <PersonalInfo_home_rowNum>
    And user selects document tab
    And user reads data from the excel file "<DocumentWB>" under sheet "<Document_home>" and row <Document_home_rowNum>
    And user select the document
    And user select document status as "Received"
    And user uploads the document
    And user submit the documents with wait
    And user waits for the document to get saved
    And user switch and close next tab
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user opens applicant info page of "<ApplicationStage>"
    When user removes primary applicant without navigation
    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_home>" and row <PersonalInfo_home_rowNum>
    And user adds primary applicant again
    And user reads data from the excel file "personal_information.xlsx" under sheet "identification" and row 160
    And user fills identification section of personal information
    And user reads data from the excel file "personal_information.xlsx" under sheet "address" and row 50
    And user fills address with residence status
    And user reads data from the excel file "personal_information.xlsx" under sheet "communication_details" and row 0
    And user enters communication details on personal information
    And user save personal information details
    And user reads data from the excel file "<DocumentWB>" under sheet "<Document_home>" and row <Document_home_rowNum>
    And user selects document tab
    And user selects the document
    Then document checklist is loaded based on new primary applicant
    @Conventional
    @Release @Part-2
    @ImplementedBy-utkarsh.tiwari
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | Category | key | DocumentWB    | Document_home | Document_home_rowNum |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | personal_information.xlsx | home              | 0                        |          |     | document.xlsx | home          | 332                  |
    @Islamic
    @Release
    @Part-2
    @ImplementedBy-akash.bansal
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE"]}
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | Category | key | DocumentWB    | Document_home | Document_home_rowNum |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | personal_information.xlsx | home              | 171                      |          |     | document.xlsx | home          | 332                  |
    @Islamic
    @Release
    @Part-2
    @ImplementedBy-akash.bansal
    @FixedJsClick2
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE"]}
    #${Category:["bonds"]}
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | Category   | key | DocumentWB    | Document_home | Document_home_rowNum |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | personal_information.xlsx | home              | 171                      | <Category> |     | document.xlsx | home          | 332                  |
    @NotImplemented
      # ${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | Category | key | DocumentWB    | Document_home | Document_home_rowNum |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | personal_information.xlsx | home              | 1                        |          |     | document.xlsx | home          | 332                  |


  @Perishable
    @FixedTest28
  Scenario Outline: ACAUTOCAS-903: After removing primary applicant from <ProductType> application at "<ApplicationStage>"
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user reads data from the excel file "personal_information.xlsx" under sheet "home" and row <row>
    And user opens applicant information page of "<ApplicationStage>"
    And user removes all another applicant present in the application
    And user adds another new existing individual applicant with applicant type as "Co-applicant" and application id at "<ApplicationStage>"
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user opens applicant information page of "<ApplicationStage>"
    When user removes primary applicant without navigation
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user opens applicant information page of "<ApplicationStage>"
    Then removing details should display on swap remove history
    @Conventional
    @Release @Part-2
    @ImplementedBy-utkarsh.tiwari
    @LoggedBug
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category | key | row |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | 24  |
    @Islamic
    @Release
    @Part-2
    @ImplementedBy-akash.bansal
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category | key | row |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | 168 |
    @Islamic
    @Release
    @Part-2
    @ImplementedBy-akash.bansal
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category:["bonds"]}
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category   | key | row |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | 168 |
    @NotImplemented
      # ${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category | key | row |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | 168 |

  @Perishable
    @FixedTest28
  Scenario Outline: ACAUTOCAS-901: On removing "<Primary_Another>" from <ProductType> application all related document to "<Primary_Another>" also get delete from ecm
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user reads data from the excel file "personal_information.xlsx" under sheet "home" and row 171
    And user opens applicant information page of "<ApplicationStage>"
    And user adds another individual applicant with applicant type as "<Primary_Another>" for "<ApplicationStage>" stage
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user selects document tab
    And user reads data from the excel file "<DocumentWB>" under sheet "<Document_home>" and row <Document_home_rowNum>
    And user select the document
    And user select document status as "Received"
    And user uploads the document
    And user submit the documents with wait
    And user waits for the document to get saved
    And user switch and close next tab
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user opens applicant information page of "<ApplicationStage>"
    When user removes the "<Primary_Another>" without navigation
#    screen navigation ECM Master >menu>Ecm>Case search
    And user logout from CAS
    And user logged in "ECM" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user navigates to Case Search of ECM
    And user search for an application in Case Search from context in ECM
    And user opens first task assigned in Case Search to application in ECM
    Then documents related to "<Primary_Another>" also get deleted from ecm
    @Conventional
    @Release @Part-2
    @ImplementedBy-richa.singh
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE"]}
    Examples:
      | Primary_Another | ProductType   | DocumentWB    | Document_home | Document_home_rowNum | ApplicationStage   | ApplicantType   | key   | Category |
      | Primary         | <ProductType> | document.xlsx | home          | 332                  | <ApplicationStage> | <ApplicantType> | <key> |          |
      | Guarantor       | <ProductType> | document.xlsx | home          | 330                  | <ApplicationStage> | <ApplicantType> | <key> |          |
      | Coapplicant     | <ProductType> | document.xlsx | home          | 535                  | <ApplicationStage> | <ApplicantType> | <key> |          |
    @Islamic
    @Release
    @Part-2
    @ImplementedBy-akash.bansal
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | Primary_Another | ProductType   | DocumentWB    | Document_home | Document_home_rowNum | ApplicationStage   | ApplicantType   | key | Category |
      | Primary         | <ProductType> | document.xlsx | home          | 332                  | <ApplicationStage> | <ApplicantType> |     |          |
      | Guarantor       | <ProductType> | document.xlsx | home          | 330                  | <ApplicationStage> | <ApplicantType> |     |          |
      | Co-applicant    | <ProductType> | document.xlsx | home          | 535                  | <ApplicationStage> | <ApplicantType> |     |          |
    @Islamic
    @Release
    @Part-2
    @ImplementedBy-akash.bansal
    @FixedJsClick
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category:["bonds"]}
    Examples:
      | Primary_Another | ProductType   | DocumentWB    | Document_home | Document_home_rowNum | ApplicationStage   | ApplicantType   | key | Category   |
      | Guarantor       | <ProductType> | document.xlsx | home          | 330                  | <ApplicationStage> | <ApplicantType> |     | <Category> |
      | Co-applicant    | <ProductType> | document.xlsx | home          | 535                  | <ApplicationStage> | <ApplicantType> |     | <Category> |
    @Islamic
    @Release
    @Part-2
    @ImplementedBy-akash.bansal
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE"]}
    #${Category:["bonds"]}
    Examples:
      | Primary_Another | ProductType   | DocumentWB    | Document_home | Document_home_rowNum | ApplicationStage   | ApplicantType   | key | Category   |
      | Primary         | <ProductType> | document.xlsx | home          | 332                  | <ApplicationStage> | <ApplicantType> |     | <Category> |
    @NotImplemented
      # ${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
    Examples:
      | Primary_Another | ProductType   | DocumentWB    | Document_home | Document_home_rowNum | ApplicationStage   | ApplicantType   | key | Category |
      | Primary         | <ProductType> | document.xlsx | home          | 332                  | <ApplicationStage> | <ApplicantType> |     |          |
      | Guarantor       | <ProductType> | document.xlsx | home          | 330                  | <ApplicationStage> | <ApplicantType> |     |          |
      | Co-applicant    | <ProductType> | document.xlsx | home          | 535                  | <ApplicationStage> | <ApplicantType> |     |          |


  @Perishable
  Scenario Outline: ACAUTOCAS-902: On removing primary applicant from <ProductType> application all related documents to <key> not delete from ecm
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user selects document tab
    And user reads data from the excel file "document.xlsx" under sheet "home" and row <Document_home_rowNum>
    And user select the document
    And user selects document status as "Received"
    And user uploads the document
    And user submit the documents with wait
    And user switch and close next tab
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user opens applicant information page of "<ApplicationStage>"
    And user removes the primary applicant without navigation
    And user logout from CAS
    And user logged in "ECM" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user navigates to Case Search of ECM
    And user search for an application in Case Search from context in ECM
    When user opens first task assigned in Case Search to application in ECM
    Then documents related to "<key>" should not delete from ecm
    @Conventional
    @Release @Part-2
    @ImplementedBy-pallavi.singh
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE"]}
    Examples:
      | ApplicantType   | Category | key         | ApplicationStage   | ProductType   | Document_home_rowNum |
      | <ApplicantType> |          | Guarantor   | <ApplicationStage> | <ProductType> | 330                  |
      | <ApplicantType> |          | Coapplicant | <ApplicationStage> | <ProductType> | 535                  |
    @Islamic
    @Release
    @Part-2
    @ImplementedBy-akash.bansal
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ApplicantType   | Category | key         | ApplicationStage   | ProductType   | Document_home_rowNum |
      | <ApplicantType> |          | Guarantor   | <ApplicationStage> | <ProductType> | 330                  |
      | <ApplicantType> |          | Coapplicant | <ApplicationStage> | <ProductType> | 535                  |
    @Islamic
    @Release
    @Part-2
    @ImplementedBy-akash.bansal
    @FixedJsClick
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category:["bonds"]}
    Examples:
      | ApplicantType   | Category   | key         | ApplicationStage   | ProductType   | Document_home_rowNum |
      | <ApplicantType> | <Category> | Guarantor   | <ApplicationStage> | <ProductType> | 330                  |
      | <ApplicantType> | <Category> | Coapplicant | <ApplicationStage> | <ProductType> | 535                  |
    @NotImplemented
      # ${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
    Examples:
      | ApplicantType   | Category | Another     | ApplicationStage   | ProductType   | Document_home_rowNum |
      | <ApplicantType> |          | Guarantor   | <ApplicationStage> | <ProductType> | 330                  |
      | <ApplicantType> |          | Coapplicant | <ApplicationStage> | <ProductType> | 535                  |
