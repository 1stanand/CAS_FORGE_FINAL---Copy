@Epic-Applicant_Information
#@AuthoredBy-vinod.pandey
@AuthoredBy-vipin.kishor
@AppInfoAdoption
@Perishable
@tempTest


#FeatureID-ACAUTOCAS-146
    #${ApplicantType:["indiv","nonindiv"]}
Feature: Swap Primary Applicant

  @Release @Part-2
    @Conventional
    @ImplementedBy-ayush.garg
  # ${ ProductType : ["IHF","IPF","PF","MAL","HL","LAP","CV","MHL","FE","EDU","AGRL","JLG","CEQ","MULF","BD","CashCred","BL","LC","BG"]}
  Scenario Outline: ACAUTOCAS-923:  On adding another applicant with application type as <Applicant_Type> in new application of <ProductType>
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_home>" and row <PersonalInfo_home_rowNum>
    And user creates new application for "<ProductType>"
    And user fills home page of personal information
    And user saves application number
    And user opens an application of "<Stage>" stage present in context from application grid
    And user picks and set application of "<ProductType>" product type as "indiv" applicant at "lead details" for "" with "" in context from perishable pool
    And user adds another existing individual applicant with applicant type as "<Applicant_Type>" and application id
    Then swap button should displayed
    Examples:
      | Applicant_Type | ProductType   | Stage        | SourceDataFile       | SheetName | RowNumber | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum |
      | Co-applicant   | <ProductType> | LEAD DETAILS | LoginDetailsCAS.xlsx | LoginData | 7         | personal_information.xlsx | home              | 0                        |
      | Guarantor      | <ProductType> | LEAD DETAILS | LoginDetailsCAS.xlsx | LoginData | 7         | personal_information.xlsx | home              | 0                        |


  Scenario Outline: ACAUTOCAS-924:  On adding another applicant with application type as <Applicant_Type> in existing application which is at <ApplicationStage> stage of <ProductType>
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_home>" and row <PersonalInfo_home_rowNum>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user opens applicant information page of "<ApplicationStage>"
    And user adds another existing individual applicant with applicant type as "<Applicant_Type>" and application id at "<ApplicationStage>"
    Then swap button should displayed
    @Conventional
    @Release @Part-2
    @ImplementedBy-ayush.garg
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE"]}
    Examples:
      | ApplicantType   | ApplicationStage   | Category | key | Applicant_Type | ProductType   | SourceDataFile       | SheetName | RowNumber | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum |
      | <ApplicantType> | <ApplicationStage> |          |     | Co-applicant   | <ProductType> | LoginDetailsCAS.xlsx | LoginData | 7         | personal_information.xlsx | home              | 0                        |
      | <ApplicantType> | <ApplicationStage> |          |     | Guarantor      | <ProductType> | LoginDetailsCAS.xlsx | LoginData | 7         | personal_information.xlsx | home              | 0                        |

    @Islamic
    @Release
    @Part-2
    @ImplementedBy-utkarsh.tiwari
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval"]}
    Examples:
      | ApplicantType   | ApplicationStage   | Category | key | Applicant_Type | ProductType   | SourceDataFile       | SheetName | RowNumber | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum |
      | <ApplicantType> | <ApplicationStage> |          |     | Co-applicant   | <ProductType> | LoginDetailsCAS.xlsx | LoginData | 7         | personal_information.xlsx | home              | 1                        |
      | <ApplicantType> | <ApplicationStage> |          |     | Guarantor      | <ProductType> | LoginDetailsCAS.xlsx | LoginData | 7         | personal_information.xlsx | home              | 1                        |

    @Islamic
    @Release
    @Part-2
    @ImplementedBy-utkarsh.tiwari
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval"]}
    # ${Category:["bonds"]}
    Examples:
      | ApplicantType   | ApplicationStage   | Category   | key | Applicant_Type | ProductType   | SourceDataFile       | SheetName | RowNumber | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum |
      | <ApplicantType> | <ApplicationStage> | <Category> |     | Co-applicant   | <ProductType> | LoginDetailsCAS.xlsx | LoginData | 7         | personal_information.xlsx | home              | 1                        |
      | <ApplicantType> | <ApplicationStage> | <Category> |     | Guarantor      | <ProductType> | LoginDetailsCAS.xlsx | LoginData | 7         | personal_information.xlsx | home              | 1                        |

    @NotImplemented
    # ${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
    Examples:
      | ApplicantType   | ApplicationStage   | Category | key | Applicant_Type | ProductType   | SourceDataFile       | SheetName | RowNumber | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum |
      | <ApplicantType> | <ApplicationStage> |          |     | Co-applicant   | <ProductType> | LoginDetailsCAS.xlsx | LoginData | 7         | personal_information.xlsx | home              | 0                        |
      | <ApplicantType> | <ApplicationStage> |          |     | Guarantor      | <ProductType> | LoginDetailsCAS.xlsx | LoginData | 7         | personal_information.xlsx | home              | 0                        |


  Scenario Outline: ACAUTOCAS-925:  On removing all additional applicants which is at <ApplicationStage> stage
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_home>" and row <PersonalInfo_home_rowNum>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
#    And user opens applicant information page of "<ApplicationStage>"
#    And click on view edit detailed info
#    And user picks and set application of "<ProductType>" product type as "indiv" applicant at "lead details" for "" with "" in context from perishable pool
    And user opens applicant information page of "<ApplicationStage>"
    And user adds another existing individual applicant with applicant type as "<Applicant_Type>" and application id at "<ApplicationStage>"
    When user removes all additional applicant
    Then swap button is not displayed
    @Conventional
    @Release @Part-2
    @ImplementedBy-ayush.garg
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE"]}
    Examples:
      | ApplicantType   | ApplicationStage   | Category | key | ProductType   | Applicant_Type | SourceDataFile       | SheetName | RowNumber | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum |
      | <ApplicantType> | <ApplicationStage> |          |     | <ProductType> | Co-applicant   | LoginDetailsCAS.xlsx | LoginData | 7         | personal_information.xlsx | home              | 0                        |

    @Islamic
    @Release
    @Part-2
    @ImplementedBy-utkarsh.tiwari
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval"]}
    Examples:
      | ApplicantType   | ApplicationStage   | Category | key | ProductType   | Applicant_Type | SourceDataFile       | SheetName | RowNumber | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum |
      | <ApplicantType> | <ApplicationStage> |          |     | <ProductType> | Co-applicant   | LoginDetailsCAS.xlsx | LoginData | 7         | personal_information.xlsx | home              | 1                        |

    @Islamic
    @Release
    @Part-2
    @ImplementedBy-utkarsh.tiwari
    @FixedJsClick
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval"]}
    # ${Category:["bonds"]}
    Examples:
      | ApplicantType   | ApplicationStage   | Category   | key | ProductType   | Applicant_Type | SourceDataFile       | SheetName | RowNumber | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum |
      | <ApplicantType> | <ApplicationStage> | <Category> |     | <ProductType> | Co-applicant   | LoginDetailsCAS.xlsx | LoginData | 7         | personal_information.xlsx | home              | 1                        |

    @NotImplemented
    # ${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
    Examples:
      | ApplicantType   | ApplicationStage   | Category | key | ProductType   | Applicant_Type | SourceDataFile       | SheetName | RowNumber | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum |
      | <ApplicantType> | <ApplicationStage> |          |     | <ProductType> | Co-applicant   | LoginDetailsCAS.xlsx | LoginData | 7         | personal_information.xlsx | home              | 0                        |


  @Release @Part-2 @Conventional
    @Release2
    @ImplementedBy-utkarsh.tiwari
    @Sanity
  # ${ ProductType : ["IHF","IPF","PF","MAL","HL","LAP","CV","MHL","FE","EDU","AGRL","JLG","CEQ","MULF","BD","CashCred","BL","LC","BG"]}
  Scenario Outline: ACAUTOCAS-926:  Swap the primary applicant with <Applicant_Type> in new application of <ProductType>
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_home>" and row <PersonalInfo_home_rowNum>
    And user creates new application for "<ProductType>"
    And user fills home page of personal information
    And user saves application number
    And user opens an application of "<ApplicationStage>" stage present in context from application grid
#    And user picks and set application of "<ProductType>" product type as "indiv" applicant at "lead details" for "" with "" in context from perishable pool
    And user adds another existing individual applicant with applicant type as "<Applicant_Type>" and application id at "<ApplicationStage>"
    And user swap the primary applicant with "<Applicant_Type>"
    Then "<Applicant_Type>" should be primary applicant
    Examples:
      | Applicant_Type | ProductType   | ApplicationStage | SourceDataFile       | SheetName | RowNumber | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum |
      | Co-applicant   | <ProductType> | Lead Details     | LoginDetailsCAS.xlsx | LoginData | 7         | personal_information.xlsx | home              | 0                        |
      | Guarantor      | <ProductType> | Lead Details     | LoginDetailsCAS.xlsx | LoginData | 7         | personal_information.xlsx | home              | 0                        |


  Scenario Outline: ACAUTOCAS-927:  Swap the primary applicant with <Applicant_Type> in existing application which is at <ApplicationStage> stage of personal loan
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_home>" and row <PersonalInfo_home_rowNum>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user opens applicant information page of "<ApplicationStage>"
    And user adds another existing individual applicant with applicant type as "<Applicant_Type>" and application id at "<ApplicationStage>"
    When user swaps the primary applicant with "<Applicant_Type>"
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user opens applicant information page of "<ApplicationStage>"
    Then "<Applicant_Type>" should be primary applicant
    @Conventional
    @Release @Part-2
    @ImplementedBy-ayush.garg
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE"]}
    Examples:
      | ApplicantType   | ApplicationStage   | Category | key | Applicant_Type | ProductType   | SourceDataFile       | SheetName | RowNumber | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum |
      | <ApplicantType> | <ApplicationStage> |          |     | Co-applicant   | <ProductType> | LoginDetailsCAS.xlsx | LoginData | 7         | personal_information.xlsx | home              | 0                        |
      | <ApplicantType> | <ApplicationStage> |          |     | Guarantor      | <ProductType> | LoginDetailsCAS.xlsx | LoginData | 7         | personal_information.xlsx | home              | 0                        |

    @Islamic
    @Release
    @Part-2
    @ImplementedBy-utkarsh.tiwari
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval"]}
    Examples:
      | ApplicantType   | ApplicationStage   | Category | key | Applicant_Type | ProductType   | SourceDataFile       | SheetName | RowNumber | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum |
      | <ApplicantType> | <ApplicationStage> |          |     | Co-applicant   | <ProductType> | LoginDetailsCAS.xlsx | LoginData | 7         | personal_information.xlsx | home              | 1                        |
      | <ApplicantType> | <ApplicationStage> |          |     | Guarantor      | <ProductType> | LoginDetailsCAS.xlsx | LoginData | 7         | personal_information.xlsx | home              | 1                        |

    @Islamic
    @Release
    @Part-2
    @ImplementedBy-utkarsh.tiwari
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval"]}
    # ${Category:["bonds"]}
    Examples:
      | ApplicantType   | ApplicationStage   | Category   | key | Applicant_Type | ProductType   | SourceDataFile       | SheetName | RowNumber | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum |
      | <ApplicantType> | <ApplicationStage> | <Category> |     | Co-applicant   | <ProductType> | LoginDetailsCAS.xlsx | LoginData | 7         | personal_information.xlsx | home              | 1                        |
      | <ApplicantType> | <ApplicationStage> | <Category> |     | Guarantor      | <ProductType> | LoginDetailsCAS.xlsx | LoginData | 7         | personal_information.xlsx | home              | 1                        |
    @NotImplemented
    # ${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
    Examples:
      | ApplicantType   | ApplicationStage   | Category | key | Applicant_Type | ProductType   | SourceDataFile       | SheetName | RowNumber | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum |
      | <ApplicantType> | <ApplicationStage> |          |     | Co-applicant   | <ProductType> | LoginDetailsCAS.xlsx | LoginData | 7         | personal_information.xlsx | home              | 0                        |
      | <ApplicantType> | <ApplicationStage> |          |     | Guarantor      | <ProductType> | LoginDetailsCAS.xlsx | LoginData | 7         | personal_information.xlsx | home              | 0                        |


  Scenario Outline: ACAUTOCAS-928:  Swap the primary applicant of personal loan without <var>
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_home>" and row <PersonalInfo_home_rowNum>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
#    And user picks and set application of "<ProductType>" product type as "indiv" applicant at "lead details" for "" with "" in context from perishable pool
    And user opens applicant information page of "<ApplicationStage>"
    And user adds another existing individual applicant with applicant type as "<Applicant_Type>" and application id at "<ApplicationStage>"
    When user swap the primary applicant without "<var>"
    Then primary applicant is not swap with proper error message
    @Conventional
    @Release @Part-2
    @ImplementedBy-ayush.garg
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE"]}
    Examples:
      | var                        | ProductType   | Applicant_Type | ApplicantType   | ApplicationStage   | Category | key | SourceDataFile       | SheetName | RowNumber | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum |
      | reason                     | <ProductType> | Co-applicant   | <ApplicantType> | <ApplicationStage> |          |     | LoginDetailsCAS.xlsx | LoginData | 7         | personal_information.xlsx | home              | 0                        |
      | changing primary applicant | <ProductType> | Co-applicant   | <ApplicantType> | <ApplicationStage> |          |     | LoginDetailsCAS.xlsx | LoginData | 7         | personal_information.xlsx | home              | 0                        |
      | relationship               | <ProductType> | Co-applicant   | <ApplicantType> | <ApplicationStage> |          |     | LoginDetailsCAS.xlsx | LoginData | 7         | personal_information.xlsx | home              | 0                        |

    @Islamic
    @Release
    @Part-2
    @ImplementedBy-utkarsh.tiwari
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval"]}
    Examples:
      | var                        | ProductType   | Applicant_Type | ApplicantType   | ApplicationStage   | Category | key | SourceDataFile       | SheetName | RowNumber | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum |
      | reason                     | <ProductType> | Co-applicant   | <ApplicantType> | <ApplicationStage> |          |     | LoginDetailsCAS.xlsx | LoginData | 7         | personal_information.xlsx | home              | 1                        |
      | changing primary applicant | <ProductType> | Co-applicant   | <ApplicantType> | <ApplicationStage> |          |     | LoginDetailsCAS.xlsx | LoginData | 7         | personal_information.xlsx | home              | 1                        |
      | relationship               | <ProductType> | Co-applicant   | <ApplicantType> | <ApplicationStage> |          |     | LoginDetailsCAS.xlsx | LoginData | 7         | personal_information.xlsx | home              | 1                        |

    @Islamic
    @Release
    @Part-2
    @ImplementedBy-utkarsh.tiwari
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval"]}
    # ${Category:["bonds"]}
    Examples:
      | var                        | ProductType   | Applicant_Type | ApplicantType   | ApplicationStage   | Category   | key | SourceDataFile       | SheetName | RowNumber | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum |
      | reason                     | <ProductType> | Co-applicant   | <ApplicantType> | <ApplicationStage> | <Category> |     | LoginDetailsCAS.xlsx | LoginData | 7         | personal_information.xlsx | home              | 1                        |
      | changing primary applicant | <ProductType> | Co-applicant   | <ApplicantType> | <ApplicationStage> | <Category> |     | LoginDetailsCAS.xlsx | LoginData | 7         | personal_information.xlsx | home              | 1                        |
      | relationship               | <ProductType> | Co-applicant   | <ApplicantType> | <ApplicationStage> | <Category> |     | LoginDetailsCAS.xlsx | LoginData | 7         | personal_information.xlsx | home              | 1                        |
    @NotImplemented
    # ${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
    Examples:
      | var                        | ProductType   | Applicant_Type | ApplicantType   | ApplicationStage   | Category | key | SourceDataFile       | SheetName | RowNumber | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum |
      | reason                     | <ProductType> | Co-applicant   | <ApplicantType> | <ApplicationStage> |          |     | LoginDetailsCAS.xlsx | LoginData | 7         | personal_information.xlsx | home              | 0                        |
      | changing primary applicant | <ProductType> | Co-applicant   | <ApplicantType> | <ApplicationStage> |          |     | LoginDetailsCAS.xlsx | LoginData | 7         | personal_information.xlsx | home              | 0                        |
      | relationship               | <ProductType> | Co-applicant   | <ApplicantType> | <ApplicationStage> |          |     | LoginDetailsCAS.xlsx | LoginData | 7         | personal_information.xlsx | home              | 0                        |


  Scenario Outline: ACAUTOCAS-929:  Swap the primary applicant of <ProductType> with more than one primary applicant
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_home>" and row <PersonalInfo_home_rowNum>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
#    And user picks and set application of "<ProductType>" product type as "indiv" applicant at "lead details" for "" with "" in context from perishable pool
    And user opens applicant information page of "<ApplicationStage>"
    And user adds another existing individual applicant with applicant type as "<Applicant_Type>" and application id at "<ApplicationStage>"
    When user swap the primary applicant with more than one primary applicant
    Then primary applicant is not swap with proper error message
    @Conventional
    @Release @Part-2
    @ImplementedBy-ayush.garg
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE"]}
    Examples:
      | Applicant_Type | ApplicantType   | ApplicationStage   | Category | key | ProductType   | SourceDataFile       | SheetName | RowNumber | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum |
      | Co-applicant   | <ApplicantType> | <ApplicationStage> |          |     | <ProductType> | LoginDetailsCAS.xlsx | LoginData | 7         | personal_information.xlsx | home              | 0                        |

    @Islamic
    @Release
    @Part-2
    @ImplementedBy-utkarsh.tiwari
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval"]}
    Examples:
      | Applicant_Type | ApplicantType   | ApplicationStage   | Category | key | ProductType   | SourceDataFile       | SheetName | RowNumber | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum |
      | Co-applicant   | <ApplicantType> | <ApplicationStage> |          |     | <ProductType> | LoginDetailsCAS.xlsx | LoginData | 7         | personal_information.xlsx | home              | 1                        |

    @Islamic
    @Release
    @Part-2
    @ImplementedBy-utkarsh.tiwari
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval"]}
    # ${Category:["bonds"]}
    Examples:
      | Applicant_Type | ApplicantType   | ApplicationStage   | Category   | key | ProductType   | SourceDataFile       | SheetName | RowNumber | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum |
      | Co-applicant   | <ApplicantType> | <ApplicationStage> | <Category> |     | <ProductType> | LoginDetailsCAS.xlsx | LoginData | 7         | personal_information.xlsx | home              | 1                        |
    @NotImplemented
    # ${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
    Examples:
      | Applicant_Type | ApplicantType   | ApplicationStage   | Category | key | ProductType   | SourceDataFile       | SheetName | RowNumber | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum |
      | Co-applicant   | <ApplicantType> | <ApplicationStage> |          |     | <ProductType> | LoginDetailsCAS.xlsx | LoginData | 7         | personal_information.xlsx | home              | 0                        |


  Scenario Outline: ACAUTOCAS-930:  <var> more than one swapping reason of primary applicant of <ApplicationStage>
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_home>" and row <PersonalInfo_home_rowNum>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
#    And user picks and set application of "<ProductType>" product type as "indiv" applicant at "lead details" for "" with "" in context from perishable pool
    And user opens applicant information page of "<ApplicationStage>"
    And user adds another existing individual applicant with applicant type as "<Applicant_Type>" and application id at "<ApplicationStage>"
    When user "<var>" swapping reason
    Then swapping reason "<var>" successfully
    @Conventional
    @Release @Part-2
    @ImplementedBy-ayush.garg
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE"]}
    Examples:
      | var  | Applicant_Type | ApplicantType   | ApplicationStage   | Category | key | ProductType   | SourceDataFile       | SheetName | RowNumber | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum |
      | adds | Co-applicant   | <ApplicantType> | <ApplicationStage> |          |     | <ProductType> | LoginDetailsCAS.xlsx | LoginData | 7         | personal_information.xlsx | home              | 0                        |

    @Islamic
    @Release
    @Part-2
    @ImplementedBy-utkarsh.tiwari
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval"]}
    Examples:
      | var  | Applicant_Type | ApplicantType   | ApplicationStage   | Category | key | ProductType   | SourceDataFile       | SheetName | RowNumber | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum |
      | adds | Co-applicant   | <ApplicantType> | <ApplicationStage> |          |     | <ProductType> | LoginDetailsCAS.xlsx | LoginData | 7         | personal_information.xlsx | home              | 1                        |

    @Islamic
    @Release
    @Part-2
    @ImplementedBy-utkarsh.tiwari
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval"]}
    # ${Category:["bonds"]}
    Examples:
      | var  | Applicant_Type | ApplicantType   | ApplicationStage   | Category   | key | ProductType   | SourceDataFile       | SheetName | RowNumber | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum |
      | adds | Co-applicant   | <ApplicantType> | <ApplicationStage> | <Category> |     | <ProductType> | LoginDetailsCAS.xlsx | LoginData | 7         | personal_information.xlsx | home              | 1                        |
    @NotImplemented
    # ${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
    Examples:
      | var  | Applicant_Type | ApplicantType   | ApplicationStage   | Category | key | ProductType   | SourceDataFile       | SheetName | RowNumber | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum |
      | adds | Co-applicant   | <ApplicantType> | <ApplicationStage> |          |     | <ProductType> | LoginDetailsCAS.xlsx | LoginData | 7         | personal_information.xlsx | home              | 0                        |


  Scenario Outline: ACAUTOCAS-931:  In selecting applicant type as primary in swap primary applicant page of personal loan
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_home>" and row <PersonalInfo_home_rowNum>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
#    And user picks and set application of "<ProductType>" product type as "indiv" applicant at "lead details" for "" with "" in context from perishable pool
    And user opens applicant information page of "<ApplicationStage>"
    And user adds another existing individual applicant with applicant type as "<Applicant_Type>" and application id at "<ApplicationStage>"
    When user selects the applicant type as primary in swap primary applicant page
    Then relationship should not be displayed
    @Conventional
    @Release @Part-2
    @ImplementedBy-ayush.garg
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE"]}
    Examples:
      | Applicant_Type | ApplicantType   | ApplicationStage   | Category | key | ProductType   | SourceDataFile       | SheetName | RowNumber | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum |
      | Co-applicant   | <ApplicantType> | <ApplicationStage> |          |     | <ProductType> | LoginDetailsCAS.xlsx | LoginData | 7         | personal_information.xlsx | home              | 0                        |
      | Co-applicant   | <ApplicantType> | <ApplicationStage> |          |     | <ProductType> | LoginDetailsCAS.xlsx | LoginData | 7         | personal_information.xlsx | home              | 0                        |
      | Co-applicant   | <ApplicantType> | <ApplicationStage> |          |     | <ProductType> | LoginDetailsCAS.xlsx | LoginData | 7         | personal_information.xlsx | home              | 0                        |

    @Islamic
    @Release
    @Part-2
    @ImplementedBy-utkarsh.tiwari
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval"]}
    Examples:
      | Applicant_Type | ApplicantType   | ApplicationStage   | Category | key | ProductType   | SourceDataFile       | SheetName | RowNumber | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum |
      | Co-applicant   | <ApplicantType> | <ApplicationStage> |          |     | <ProductType> | LoginDetailsCAS.xlsx | LoginData | 7         | personal_information.xlsx | home              | 1                        |
      | Co-applicant   | <ApplicantType> | <ApplicationStage> |          |     | <ProductType> | LoginDetailsCAS.xlsx | LoginData | 7         | personal_information.xlsx | home              | 1                        |
      | Co-applicant   | <ApplicantType> | <ApplicationStage> |          |     | <ProductType> | LoginDetailsCAS.xlsx | LoginData | 7         | personal_information.xlsx | home              | 1                        |

    @Islamic
    @Release
    @Part-2
    @ImplementedBy-utkarsh.tiwari
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval"]}
    # ${Category:["bonds"]}
    Examples:
      | Applicant_Type | ApplicantType   | ApplicationStage   | Category   | key | ProductType   | SourceDataFile       | SheetName | RowNumber | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum |
      | Co-applicant   | <ApplicantType> | <ApplicationStage> | <Category> |     | <ProductType> | LoginDetailsCAS.xlsx | LoginData | 7         | personal_information.xlsx | home              | 1                        |
      | Co-applicant   | <ApplicantType> | <ApplicationStage> | <Category> |     | <ProductType> | LoginDetailsCAS.xlsx | LoginData | 7         | personal_information.xlsx | home              | 1                        |
      | Co-applicant   | <ApplicantType> | <ApplicationStage> | <Category> |     | <ProductType> | LoginDetailsCAS.xlsx | LoginData | 7         | personal_information.xlsx | home              | 1                        |
    @NotImplemented
    # ${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
    Examples:
      | Applicant_Type | ApplicantType   | ApplicationStage   | Category | key | ProductType   | SourceDataFile       | SheetName | RowNumber | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum |
      | Co-applicant   | <ApplicantType> | <ApplicationStage> |          |     | <ProductType> | LoginDetailsCAS.xlsx | LoginData | 7         | personal_information.xlsx | home              | 0                        |
      | Co-applicant   | <ApplicantType> | <ApplicationStage> |          |     | <ProductType> | LoginDetailsCAS.xlsx | LoginData | 7         | personal_information.xlsx | home              | 0                        |
      | Co-applicant   | <ApplicantType> | <ApplicationStage> |          |     | <ProductType> | LoginDetailsCAS.xlsx | LoginData | 7         | personal_information.xlsx | home              | 0                        |

# ..................................story

  Scenario Outline: ACAUTOCAS-932:Document checklist reruns when primary applicant is swapped with <Another_Applicant> in <ProductType> application at <ApplicationStage> stage
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_home>" and row <PersonalInfo_home_rowNum>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user reads data from the excel file "<LoanDetailsWB>" under sheet "<LoanDetails_sourcing>" and row <LoanDetails_sourcing_rowNum>
    And user selects document tab
    And user reads data from the excel file "document.xlsx" under sheet "home" and row 252
    And user select the document
    When user select document status as "Received"
    And user uploads the document
    And user submit the documents with wait
    And user switch and close next tab
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user opens applicant information page of "<ApplicationStage>"
    And user adds another existing individual applicant with applicant type as "<Applicant_Type>" and application id at "<ApplicationStage>"
    And user swaps the primary applicant with "<Another_Applicant>"
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user selects document tab
    Then document checklist is loaded based on new primary applicant
    @Conventional
    @Release @Part-2
    @ImplementedBy-ayush.garg
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE"]}
    Examples:
      | Another_Applicant | ApplicantType   | ApplicationStage   | Category | key | ProductType   | Applicant_Type | SourceDataFile       | SheetName | RowNumber | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | LoanDetailsWB         | LoanDetails_sourcing | LoanDetails_sourcing_rowNum |
      | Co-applicant      | <ApplicantType> | <ApplicationStage> |          |     | <ProductType> | Co-applicant   | LoginDetailsCAS.xlsx | LoginData | 7         | personal_information.xlsx | home              | 0                        | sourcing_details.xlsx | home                 | 15                          |
      | Guarantor         | <ApplicantType> | <ApplicationStage> |          |     | <ProductType> | Co-applicant   | LoginDetailsCAS.xlsx | LoginData | 7         | personal_information.xlsx | home              | 0                        | sourcing_details.xlsx | home                 | 15                          |

    @Islamic
    @Release
    @Part-2
    @ImplementedBy-utkarsh.tiwari
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval"]}
    Examples:
      | Another_Applicant | ApplicantType   | ApplicationStage   | Category | key | ProductType   | Applicant_Type | SourceDataFile       | SheetName | RowNumber | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | LoanDetailsWB         | LoanDetails_sourcing | LoanDetails_sourcing_rowNum |
      | Co-applicant      | <ApplicantType> | <ApplicationStage> |          |     | <ProductType> | Co-applicant   | LoginDetailsCAS.xlsx | LoginData | 7         | personal_information.xlsx | home              | 1                        | sourcing_details.xlsx | home                 | 15                          |
      | Guarantor         | <ApplicantType> | <ApplicationStage> |          |     | <ProductType> | Co-applicant   | LoginDetailsCAS.xlsx | LoginData | 7         | personal_information.xlsx | home              | 1                        | sourcing_details.xlsx | home                 | 15                          |

    @Islamic
    @Release
    @Part-2
    @ImplementedBy-utkarsh.tiwari
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval"]}
    # ${Category:["bonds"]}
    Examples:
      | Another_Applicant | ApplicantType   | ApplicationStage   | Category   | key | ProductType   | Applicant_Type | SourceDataFile       | SheetName | RowNumber | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | LoanDetailsWB         | LoanDetails_sourcing | LoanDetails_sourcing_rowNum |
      | Co-applicant      | <ApplicantType> | <ApplicationStage> | <Category> |     | <ProductType> | Co-applicant   | LoginDetailsCAS.xlsx | LoginData | 7         | personal_information.xlsx | home              | 1                        | sourcing_details.xlsx | home                 | 15                          |
      | Guarantor         | <ApplicantType> | <ApplicationStage> | <Category> |     | <ProductType> | Co-applicant   | LoginDetailsCAS.xlsx | LoginData | 7         | personal_information.xlsx | home              | 1                        | sourcing_details.xlsx | home                 | 15                          |
    @NotImplemented
    # ${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
    Examples:
      | Another_Applicant | ApplicantType   | ApplicationStage   | Category | key | ProductType   | Applicant_Type | SourceDataFile       | SheetName | RowNumber | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | LoanDetailsWB         | LoanDetails_sourcing | LoanDetails_sourcing_rowNum |
      | Co-applicant      | <ApplicantType> | <ApplicationStage> |          |     | <ProductType> | Co-applicant   | LoginDetailsCAS.xlsx | LoginData | 7         | personal_information.xlsx | home              | 0                        | sourcing_details.xlsx | home                 | 15                          |
      | Guarantor         | <ApplicantType> | <ApplicationStage> |          |     | <ProductType> | Co-applicant   | LoginDetailsCAS.xlsx | LoginData | 7         | personal_information.xlsx | home              | 0                        | sourcing_details.xlsx | home                 | 15                          |


  Scenario Outline: ACAUTOCAS-933:  On swapping primary applicant with <Another_Applicant> of personal loan application which is at <ApplicationStage> stage
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user selects document tab
    And user reads data from the excel file "document.xlsx" under sheet "home" and row 252
    And user select the document
    When user select document status as "Received"
    And user uploads the document
    And user submit the documents with wait
    And user switch and close next tab
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user opens applicant information page of "<ApplicationStage>"
    And user adds another existing individual applicant with applicant type as "<ApplicantType>" and application id at "<ApplicationStage>"
    And user swaps the primary applicant with "<Another_Applicant>"
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user selects document tab
    Then documents should display on the basis of new primary applicant in ecm
    @Conventional
    @Release @Part-2
    @ImplementedBy-ayush.garg
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE"]}
    Examples:
      | Another_Applicant | ApplicantType   | ApplicationStage   | Category | key | ProductType   | SourceDataFile       | SheetName | RowNumber | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | LoanDetailsWB         | LoanDetails_sourcing | LoanDetails_sourcing_rowNum |
      | Co-applicant      | <ApplicantType> | <ApplicationStage> |          |     | <ProductType> | LoginDetailsCAS.xlsx | LoginData | 7         | personal_information.xlsx | home              | 0                        | sourcing_details.xlsx | home                 | 15                          |
      | Guarantor         | <ApplicantType> | <ApplicationStage> |          |     | <ProductType> | LoginDetailsCAS.xlsx | LoginData | 7         | personal_information.xlsx | home              | 0                        | sourcing_details.xlsx | home                 | 15                          |

    @Islamic
    @Release
    @Part-2
    @ImplementedBy-utkarsh.tiwari
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval"]}
    Examples:
      | Another_Applicant | ApplicantType   | ApplicationStage   | Category | key | ProductType   | SourceDataFile       | SheetName | RowNumber | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | LoanDetailsWB         | LoanDetails_sourcing | LoanDetails_sourcing_rowNum |
      | Co-applicant      | <ApplicantType> | <ApplicationStage> |          |     | <ProductType> | LoginDetailsCAS.xlsx | LoginData | 7         | personal_information.xlsx | home              | 1                        | sourcing_details.xlsx | home                 | 15                          |
      | Guarantor         | <ApplicantType> | <ApplicationStage> |          |     | <ProductType> | LoginDetailsCAS.xlsx | LoginData | 7         | personal_information.xlsx | home              | 1                        | sourcing_details.xlsx | home                 | 15                          |

    @Islamic
    @Release
    @Part-2
    @ImplementedBy-utkarsh.tiwari
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval"]}
    # ${Category:["bonds"]}
    Examples:
      | Another_Applicant | ApplicantType   | ApplicationStage   | Category   | key | ProductType   | SourceDataFile       | SheetName | RowNumber | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | LoanDetailsWB         | LoanDetails_sourcing | LoanDetails_sourcing_rowNum |
      | Co-applicant      | <ApplicantType> | <ApplicationStage> | <Category> |     | <ProductType> | LoginDetailsCAS.xlsx | LoginData | 7         | personal_information.xlsx | home              | 1                        | sourcing_details.xlsx | home                 | 15                          |
      | Guarantor         | <ApplicantType> | <ApplicationStage> | <Category> |     | <ProductType> | LoginDetailsCAS.xlsx | LoginData | 7         | personal_information.xlsx | home              | 1                        | sourcing_details.xlsx | home                 | 15                          |
    @NotImplemented
    # ${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
    Examples:
      | Another_Applicant | ApplicantType   | ApplicationStage   | Category | key | ProductType   | SourceDataFile       | SheetName | RowNumber | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | LoanDetailsWB         | LoanDetails_sourcing | LoanDetails_sourcing_rowNum |
      | Co-applicant      | <ApplicantType> | <ApplicationStage> |          |     | <ProductType> | LoginDetailsCAS.xlsx | LoginData | 7         | personal_information.xlsx | home              | 0                        | sourcing_details.xlsx | home                 | 15                          |
      | Guarantor         | <ApplicantType> | <ApplicationStage> |          |     | <ProductType> | LoginDetailsCAS.xlsx | LoginData | 7         | personal_information.xlsx | home              | 0                        | sourcing_details.xlsx | home                 | 15                          |


  @AppInfoFixed5
  Scenario Outline: ACAUTOCAS-934:  After swapping primary applicant with <Another_Applicant> of <ProductType> application which is at <ApplicationStage> stage
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_home>" and row <PersonalInfo_home_rowNum>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user opens applicant information page of "<ApplicationStage>"
    And user adds another existing individual applicant with applicant type as "<Applicant_Type>" and application id at "<ApplicationStage>"
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user opens applicant information page of "<ApplicationStage>"
    And user swaps the primary applicant with "<Another_Applicant>"
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    When user adds the instrument details in receipt details page of "<ApplicationStage>"
    Then business partner name should come based on new primary applicant
    @Conventional
    @Release @Part-2
    @ImplementedBy-ayush.garg
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE"]}
    Examples:
      | Another_Applicant | ApplicantType   | ApplicationStage   | Category | key | ProductType   | Applicant_Type | SourceDataFile       | SheetName | RowNumber | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum |
      | Co-applicant      | <ApplicantType> | <ApplicationStage> |          |     | <ProductType> | Co-applicant   | LoginDetailsCAS.xlsx | LoginData | 7         | personal_information.xlsx | home              | 0                        |
      | Guarantor         | <ApplicantType> | <ApplicationStage> |          |     | <ProductType> | Co-applicant   | LoginDetailsCAS.xlsx | LoginData | 7         | personal_information.xlsx | home              | 0                        |

    @Islamic
    @Release
    @Part-2
    @ImplementedBy-utkarsh.tiwari
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval"]}
    Examples:
      | Another_Applicant | ApplicantType   | ApplicationStage   | Category | key | ProductType   | Applicant_Type | SourceDataFile       | SheetName | RowNumber | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum |
      | Co-applicant      | <ApplicantType> | <ApplicationStage> |          |     | <ProductType> | Co-applicant   | LoginDetailsCAS.xlsx | LoginData | 7         | personal_information.xlsx | home              | 1                        |
      | Guarantor         | <ApplicantType> | <ApplicationStage> |          |     | <ProductType> | Co-applicant   | LoginDetailsCAS.xlsx | LoginData | 7         | personal_information.xlsx | home              | 1                        |

    @Islamic
    @Release
    @Part-2
    @ImplementedBy-utkarsh.tiwari
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval"]}
    # ${Category:["bonds"]}
    Examples:
      | Another_Applicant | ApplicantType   | ApplicationStage   | Category   | key | ProductType   | Applicant_Type | SourceDataFile       | SheetName | RowNumber | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum |
      | Co-applicant      | <ApplicantType> | <ApplicationStage> | <Category> |     | <ProductType> | Co-applicant   | LoginDetailsCAS.xlsx | LoginData | 7         | personal_information.xlsx | home              | 1                        |
      | Guarantor         | <ApplicantType> | <ApplicationStage> | <Category> |     | <ProductType> | Co-applicant   | LoginDetailsCAS.xlsx | LoginData | 7         | personal_information.xlsx | home              | 1                        |
    @NotImplemented
    # ${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
    Examples:
      | Another_Applicant | ApplicantType   | ApplicationStage   | Category | key | ProductType   | Applicant_Type | SourceDataFile       | SheetName | RowNumber | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum |
      | Co-applicant      | <ApplicantType> | <ApplicationStage> |          |     | <ProductType> | Co-applicant   | LoginDetailsCAS.xlsx | LoginData | 7         | personal_information.xlsx | home              | 0                        |
      | Guarantor         | <ApplicantType> | <ApplicationStage> |          |     | <ProductType> | Co-applicant   | LoginDetailsCAS.xlsx | LoginData | 7         | personal_information.xlsx | home              | 0                        |

  @FixedTest28
  Scenario Outline: ACAUTOCAS-935: Swapping primary applicant with <Another_Applicant> which is at <ApplicationStage> stage
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_home>" and row <PersonalInfo_home_rowNum>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user opens applicant information page of "<ApplicationStage>"
    And user adds another existing individual applicant with applicant type as "<Applicant_Type>" and application id at "<ApplicationStage>"
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user opens applicant information page of "<ApplicationStage>"
    And user swaps the primary applicant with "<Another_Applicant>"
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user opens applicant information page of "<ApplicationStage>"
    Then swapping details should display on swap remove history
    @Conventional
    @Release @Part-2
    @ImplementedBy-ayush.garg
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE"]}
    Examples:
      | Another_Applicant | ApplicantType   | ApplicationStage   | Category | key | ProductType   | Applicant_Type | SourceDataFile       | SheetName | RowNumber | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum |
      | Co-applicant      | <ApplicantType> | <ApplicationStage> |          |     | <ProductType> | Co-applicant   | LoginDetailsCAS.xlsx | LoginData | 7         | personal_information.xlsx | home              | 1                        |
      | Guarantor         | <ApplicantType> | <ApplicationStage> |          |     | <ProductType> | Guarantor      | LoginDetailsCAS.xlsx | LoginData | 7         | personal_information.xlsx | home              | 1                        |

    @Islamic
    @Release
    @Part-2
    @ImplementedBy-utkarsh.tiwari
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval"]}
    Examples:
      | Another_Applicant | ApplicantType   | ApplicationStage   | Category | key | ProductType   | Applicant_Type | SourceDataFile       | SheetName | RowNumber | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum |
      | Co-applicant      | <ApplicantType> | <ApplicationStage> |          |     | <ProductType> | Co-applicant   | LoginDetailsCAS.xlsx | LoginData | 7         | personal_information.xlsx | home              | 1                        |
      | Guarantor         | <ApplicantType> | <ApplicationStage> |          |     | <ProductType> | Guarantor      | LoginDetailsCAS.xlsx | LoginData | 7         | personal_information.xlsx | home              | 1                        |

    @Islamic
    @Release
    @Part-2
    @ImplementedBy-utkarsh.tiwari
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval"]}
    # ${Category:["bonds"]}
    Examples:
      | Another_Applicant | ApplicantType   | ApplicationStage   | Category   | key | ProductType   | Applicant_Type | SourceDataFile       | SheetName | RowNumber | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum |
      | Co-applicant      | <ApplicantType> | <ApplicationStage> | <Category> |     | <ProductType> | Co-applicant   | LoginDetailsCAS.xlsx | LoginData | 7         | personal_information.xlsx | home              | 1                        |
      | Guarantor         | <ApplicantType> | <ApplicationStage> | <Category> |     | <ProductType> | Guarantor      | LoginDetailsCAS.xlsx | LoginData | 7         | personal_information.xlsx | home              | 1                        |
    @NotImplemented
    # ${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
    Examples:
      | Another_Applicant | ApplicantType   | ApplicationStage   | Category | key | ProductType   | Applicant_Type | SourceDataFile       | SheetName | RowNumber | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum |
      | Co-applicant      | <ApplicantType> | <ApplicationStage> |          |     | <ProductType> | Co-applicant   | LoginDetailsCAS.xlsx | LoginData | 7         | personal_information.xlsx | home              | 1                        |
      | Guarantor         | <ApplicantType> | <ApplicationStage> |          |     | <ProductType> | Guarantor      | LoginDetailsCAS.xlsx | LoginData | 7         | personal_information.xlsx | home              | 1                        |
