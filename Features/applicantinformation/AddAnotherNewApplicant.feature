@Epic-Applicant_Information
#@AuthoredBy-vinod.pandey
@AuthoredBy-vipin.kishor
@ReviewedBy-None
@Reconciled
@ReviewedByDEV
@AppInfoAdoption
#${ApplicantType:["indiv","nonindiv"]}

#FeatureID-ACAUTOCAS-142,ACAUTOCAS-143,ACAUTOCAS-125
Feature:Add Another Applicant

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0

  @AppInfoFixed5
  Scenario Outline:ACAUTOCAS-873: Add another new individual applicant in new application with applicant type as <Applicant_Type> in <ProductType>
    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_home>" and row <PersonalInfo_home_rowNum>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user opens applicant information page of "<ApplicationStage>"
    When user adds another individual applicant with applicant type as "<Applicant_Type>" for "<ApplicationStage>" stage
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user opens applicant info page of "<ApplicationStage>"
    Then additional individual applicant with applicant type as "<Applicant_Type>" should be displayed in applicant information page
    @Conventional
    @Release @Part-2
    @ImplementedBy-tushar.chauhan
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | Applicant_Type | ProductType   | ApplicationStage   | Category | key | ApplicantType   | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum |
      | Co-applicant   | <ProductType> | <ApplicationStage> |          |     | <ApplicantType> | personal_information.xlsx | home              | 0                        |
      | Guarantor      | <ProductType> | <ApplicationStage> |          |     | <ApplicantType> | personal_information.xlsx | home              | 0                        |
    @Islamic
    @Release
    @Part-2
    @ImplementedBy-akash.bansal
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | Applicant_Type | ProductType   | ApplicationStage   | Category | key | ApplicantType   | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum |
      | Co-applicant   | <ProductType> | <ApplicationStage> |          |     | <ApplicantType> | personal_information.xlsx | home              | 168                      |
      | Guarantor      | <ProductType> | <ApplicationStage> |          |     | <ApplicantType> | personal_information.xlsx | home              | 168                      |
    @Islamic
    @Release
    @Part-2
    @ImplementedBy-akash.bansal
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category:["bonds"]}
    Examples:
      | Applicant_Type | ProductType   | ApplicationStage   | Category   | key | ApplicantType   | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum |
      | Co-applicant   | <ProductType> | <ApplicationStage> | <Category> |     | <ApplicantType> | personal_information.xlsx | home              | 168                      |
      | Guarantor      | <ProductType> | <ApplicationStage> | <Category> |     | <ApplicantType> | personal_information.xlsx | home              | 168                      |
    @NotImplemented
      # ${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
    Examples:
      | Applicant_Type | ProductType   | ApplicationStage   | Category | key | ApplicantType   | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum |
      | Co-applicant   | <ProductType> | <ApplicationStage> |          |     | <ApplicantType> | personal_information.xlsx | home              | 0                        |
      | Guarantor      | <ProductType> | <ApplicationStage> |          |     | <ApplicantType> | personal_information.xlsx | home              | 0                        |

  @AppInfoFixed5
  Scenario Outline: ACAUTOCAS-874:  Add another new individual applicant in existing application which is at <ApplicationStage> stage with applicant type as <Applicant_Type> in <ProductType>
    And user creates an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from web service
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_home>" and row <PersonalInfo_home_rowNum2>
    And user opens applicant information page of "<ApplicationStage>"
    When user adds another new existing individual applicant with applicant type as "<Applicant_Type>" and application id at "<ApplicationStage>"
    Then additional individual applicant with applicant type as "<Applicant_Type>" should be displayed in applicant information page
    @Conventional
    @Release @Part-2
    @ImplementedBy-tushar.chauhan
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ApplicationStage   | ApplicantType   | Category | key | Applicant_Type | ProductType   | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum2 |
      | <ApplicationStage> | <ApplicantType> |          |     | Co-applicant   | <ProductType> | personal_information.xlsx | home              | 1                         |
      | <ApplicationStage> | <ApplicantType> |          |     | Guarantor      | <ProductType> | personal_information.xlsx | home              | 1                         |
    @Islamic
    @Release
    @Part-2
    @ImplementedBy-akash.bansal
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ApplicationStage   | ApplicantType   | Category | key | Applicant_Type | ProductType   | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum2 |
      | <ApplicationStage> | <ApplicantType> |          |     | Co-applicant   | <ProductType> | personal_information.xlsx | home              | 171                       |
      | <ApplicationStage> | <ApplicantType> |          |     | Guarantor      | <ProductType> | personal_information.xlsx | home              | 171                       |
    @Islamic
    @Release
    @Part-2
    @ImplementedBy-akash.bansal
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category:["bonds"]}
    Examples:
      | ApplicationStage   | ApplicantType   | Category   | key | Applicant_Type | ProductType   | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum2 |
      | <ApplicationStage> | <ApplicantType> | <Category> |     | Co-applicant   | <ProductType> | personal_information.xlsx | home              | 171                       |
      | <ApplicationStage> | <ApplicantType> | <Category> |     | Guarantor      | <ProductType> | personal_information.xlsx | home              | 171                       |
    @NotImplemented
      # ${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
    Examples:
      | ApplicationStage   | ApplicantType   | Category | key | Applicant_Type | ProductType   | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum2 |
      | <ApplicationStage> | <ApplicantType> |          |     | Co-applicant   | <ProductType> | personal_information.xlsx | home              | 1                         |
      | <ApplicationStage> | <ApplicantType> |          |     | Guarantor      | <ProductType> | personal_information.xlsx | home              | 1                         |


  @ImplementedBy-tushar.chauhan
  Scenario Outline: ACAUTOCAS-875: Add another new non individual applicant in new application with applicant type as <Applicant_Type> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user opens applicant information page of "<ApplicationStage>"
    When user adds another existing individual applicant with applicant type as "<Applicant_Type>" and application at "<ApplicationStage>"
    Then Additional non individual applicant with applicant type as "<Applicant_Type>" should be displayed in applicant information page
    @Conventional
    @Release @Part-2
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | Applicant_Type | ProductType   | ApplicationStage   | Category | key | ApplicantType |
      | Co-applicant   | <ProductType> | <ApplicationStage> |          |     | <ProductType> |
      | Guarantor      | <ProductType> | <ApplicationStage> |          |     | <ProductType> |
    @Islamic
    @Release
    @Part-3
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | Applicant_Type | ProductType   | ApplicationStage   | Category | key | ApplicantType |
      | Co-applicant   | <ProductType> | <ApplicationStage> |          |     | <ProductType> |
      | Guarantor      | <ProductType> | <ApplicationStage> |          |     | <ProductType> |
    @Islamic
    @Release
    @Part-3
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category:["bonds"]}
    Examples:
      | Applicant_Type | ProductType   | ApplicationStage   | Category   | key | ApplicantType |
      | Co-applicant   | <ProductType> | <ApplicationStage> | <Category> |     | <ProductType> |
      | Guarantor      | <ProductType> | <ApplicationStage> | <Category> |     | <ProductType> |
    @NotImplemented
      # ${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
    Examples:
      | Applicant_Type | ProductType   | ApplicationStage   | Category | key | ApplicantType |
      | Co-applicant   | <ProductType> | <ApplicationStage> |          |     | <ProductType> |
      | Guarantor      | <ProductType> | <ApplicationStage> |          |     | <ProductType> |

  @ImplementedBy-tushar.chauhan
  Scenario Outline: ACAUTOCAS-876:  Add another new non individual applicant in existing application which is at <ApplicationStage> stage with applicant type as <Applicant_Type> in Home Loan
    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_home>" and row <PersonalInfo_home_rowNum>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_home>" and row <PersonalInfo_home_rowNum2>
    When user adds another non individual applicant with applicant type as "<Applicant_Type>" at "<ApplicationStage>"
    Then Additional non individual applicant with applicant type as "<Applicant_Type>" should be displayed in applicant information page
    @Conventional
    @Release @Part-2
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Category | key | Applicant_Type | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | PersonalInfo_home_rowNum2 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Co-applicant   | personal_information.xlsx | home              | 0                        | 1                         |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Guarantor      | personal_information.xlsx | home              | 0                        | 1                         |
    @Islamic
    @Release
    @Part-3
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Category | key | Applicant_Type | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | PersonalInfo_home_rowNum2 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Co-applicant   | personal_information.xlsx | home              | 168                      | 171                       |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Guarantor      | personal_information.xlsx | home              | 168                      | 171                       |
    @Islamic
    @Release
    @Part-3
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category:["bonds"]}
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Category   | key | Applicant_Type | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | PersonalInfo_home_rowNum2 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Co-applicant   | personal_information.xlsx | home              | 168                      | 171                       |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Guarantor      | personal_information.xlsx | home              | 168                      | 171                       |
    @NotImplemented
      # ${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Category | key | Applicant_Type | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | PersonalInfo_home_rowNum2 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Co-applicant   | personal_information.xlsx | home              | 0                        | 1                         |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Guarantor      | personal_information.xlsx | home              | 0                        | 1                         |

  Scenario Outline:ACAUTOCAS-2608: Add more than one same individual <Another> in <ProductType> application
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user opens applicant information page of "<ApplicationStage>"
    When user adds existing "<ApplicantType>" "<Another>" with relationship type as "<RelationshipType>"
    And user adds same another "<ApplicantType>" "<Another>" with relationship type as "<RelationshipType>" again
    Then "<Another>" is not added with proper error message
    @Conventional
    @Release @Part-2
    @ImplementedBy-ayush.garg
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | Another      | ProductType   | ApplicationStage   | ApplicantType   | Category | key | RelationshipType |
      | Co-Applicant | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Friend           |
      | Guarantor    | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Friend           |
    @Islamic
    @Release
    @Part-2
    @ImplementedBy-akash.bansal
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | Another      | ProductType   | ApplicationStage   | ApplicantType   | Category | key | RelationshipType |
      | Co-applicant | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Friend           |
      | Guarantor    | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Friend           |
    @Islamic
    @Release
    @Part-2
    @ImplementedBy-akash.bansal
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category:["bonds"]}
    Examples:
      | Another      | ProductType   | ApplicationStage   | ApplicantType   | Category   | key | RelationshipType |
      | Co-applicant | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Friend           |
      | Guarantor    | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Friend           |
    @NotImplemented
      # ${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
    Examples:
      | Another      | ProductType   | ApplicationStage   | ApplicantType | Category | key | RelationshipType |
      | Co-Applicant | <ProductType> | <ApplicationStage> |               |          |     | Friend           |
      | Guarantor    | <ProductType> | <ApplicationStage> |               |          |     | Friend           |


    #Cannot be adopted to Islamic because of ApplicantType - nonindiv
  @Conventional
    @Release @Part-2
    @ImplementedBy-ayush.garg
# ${ ProductType : ["IPF", "IHF", "IAF","PF", "CL", "MAL","HL","LAP","SHG","CV","MHL","FE","EDU","AGRL","JLG","CEQ","GL","FAS","MULF","BD","CashCred","BL","LC","BG"]}
  Scenario Outline: ACAUTOCAS-2609:  Add more than one same non individual <Another> in <Loan_Type> application
    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_home>" and row <PersonalInfo_home_rowNum>
    And user creates new application for "<ProductType>"
    And user fills home page of personal information
    And user saves application number
    And user opens an application of "<Stage>" stage present in context from application grid
    And user reads data from the excel file "<ApplicationInfoWB>" under sheet "<ApplicationDetails_Sheet>" and row <ApplicationInfo_RowNo>
    And user picks and set application of "<ProductType>" product type as "nonindiv" applicant at "lead details" for "" with "" in context from perishable pool
    When user adds another existing non individual applicant with applicant type as "<Another>" and application id
    And user again adds the same "<Another>" whose cif number is not generated with application Id
    Then "<Another>" is not added with proper error message
    Examples:
      | Another      | ProductType   | Stage        | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | ApplicationInfoWB           | ApplicationDetails_Sheet | ApplicationInfo_RowNo |
      | Co-Applicant | <ProductType> | lead details | personal_information.xlsx | home              | 0                        | ApplicationInformation.xlsx | ApplicationDetails       | 30                    |
      | Guarantor    | <ProductType> | lead details | personal_information.xlsx | home              | 0                        | ApplicationInformation.xlsx | ApplicationDetails       | 30                    |

  @Sanity
  Scenario Outline: ACAUTOCAS-11539: Add new individual primary applicant in <ProductType> application
    And user creates new application for "<ProductType>"
    And user reads data from the excel file "personal_information.xlsx" under sheet "home" and row <row>
    When user fills only home page of personal information
    And user selects proceed button
    Then individual primary applicant added successfully
    @Conventional
    @Release @Part-2
    @ImplementedBy-bhanu.singh1
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    Examples:
      | ProductType   | row |
      | <ProductType> | 0   |
    @Islamic
    @Release
    @Part-2
    @ImplementedBy-akash.bansal
    #${ProductType:["IPF","IHF","IAF"]}
    Examples:
      | ProductType   | row |
      | <ProductType> | 168 |
    @NotImplemented
      # ${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
    Examples:
      | ProductType   | row |
      | <ProductType> | 0   |
  @Sanity
  @ImplementedBy-bhanu.singh1
  Scenario Outline: ACAUTOCAS-11540: Add new non individual primary applicant in <ProductType> application
    And user create new "<ProductType>" application of non individual applicant
    And user reads data from the excel file "customer_details.xlsx" under sheet "home" and row 114
    When user fill customer details with "mandatory" fields
    And user proceed to next in customer details
    Then non individual primary applicant added successfully
    @Conventional
    @Release @Part-2
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    Examples:
      | ProductType   |
      | <ProductType> |
    @Islamic
    @Release
    @Part-3
    #${ProductType:["IPF","IHF","IAF"]}
    Examples:
      | ProductType   |
      | <ProductType> |
    @NotImplemented
      # ${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
    Examples:
      | ProductType   |
      | <ProductType> |

