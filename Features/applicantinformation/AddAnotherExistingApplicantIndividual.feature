@Epic-Applicant_Information
#@AuthoredBy-vinod.pandey
@AuthoredBy-vipin.kishor
@ReviewedBy-none
@Reconciled
@ReviewedByDEV
@AppInfoAdoption
#${ApplicantType:["indiv","nonindiv"]}

#FeatureID-ACAUTOCAS-142,ACAUTOCAS-143
Feature:Add Another Existing Applicant Individual

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 7
    @Perishable
    @FixedTest28
  Scenario Outline:  ACAUTOCAS-2607: Add another existing individual applicant in new application with applicant type as <Applicant_Type> in <ProductType>
    And user opens an application of "<ProductType>" product type as "indiv" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user opens applicant information page of "<ApplicationStage>"
    When user adds another new existing individual applicant with applicant type as "<Applicant_Type>" and application id at "<ApplicationStage>"
    Then additional existing individual applicant with applicant type as "<Applicant_Type>" should be displayed in applicant information page
    @Conventional
    @Release @Part-2
    @ImplementedBy-tushar.chauhan
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | Applicant_Type | ProductType   | ApplicationStage   | Category | key |
      | Co-applicant   | <ProductType> | <ApplicationStage> |          |     |
      | Guarantor      | <ProductType> | <ApplicationStage> |          |     |
    @Islamic
    @Release
    @Part-2
    @ImplementedBy-akash.bansal
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | Applicant_Type | ProductType   | ApplicationStage   | Category | key |
      | Co-applicant   | <ProductType> | <ApplicationStage> |          |     |
      | Guarantor      | <ProductType> | <ApplicationStage> |          |     |
    @Islamic
    @Release
    @Part-2
    @ImplementedBy-akash.bansal
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category:["bonds"]}
    Examples:
      | Applicant_Type | ProductType   | ApplicationStage   | Category   | key |
      | Co-applicant   | <ProductType> | <ApplicationStage> | <Category> |     |
      | Guarantor      | <ProductType> | <ApplicationStage> | <Category> |     |
    @NotImplemented
      # ${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
    Examples:
      | Applicant_Type | ProductType   | ApplicationStage   | Category | key |
      | Co-applicant   | <ProductType> | <ApplicationStage> |          |     |
      | Guarantor      | <ProductType> | <ApplicationStage> |          |     |

  @AppInfoFixed5
  Scenario Outline: ACAUTOCAS-869: Add another existing individual applicant in existing application which is at <ApplicationStage> stage with applicant type as <Applicant_Type> in <AnotherProductType> at <AnotherApplicationStage>
    And user creates an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from web service
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user opens applicant info page of "<ApplicationStage>"
    When user adds another new existing individual applicant with applicant type as "<Applicant_Type>" and application id at "<ApplicationStage>"
    Then additional existing individual applicant with applicant type as "<Applicant_Type>" should be displayed in applicant information page
    # ${ ProductType:["OMNI","SHG","FAS","PF","LAP","CV","MHL","FE","EDU","AGRL","JLG","CEQ","MULF","BD","CashCred","BL","LC","BG","HL","MAL"]}
    # ${ ApplicationStage:["Lead Details","Login Acceptance","DDE"]}
    @Release @Part-2 @Conventional
    @ImplementedBy-tushar.chauhan
    Examples:
      | ApplicantType   | Category | key | ApplicationStage   | AnotherApplicationStage | Applicant_Type | ProductType   | AnotherProductType | AnotherCategory |
      | <ApplicantType> |          |     | <ApplicationStage> | lead details            | Co-applicant   | <ProductType> | pf                 |                 |
      | <ApplicantType> |          |     | <ApplicationStage> | lead details            | Guarantor      | <ProductType> | pf                 |                 |

    # ${ ProductType:["OMNI","SHG","FAS","PF","LAP","CV","MHL","FE","EDU","AGRL","JLG","CEQ","MULF","BD","CashCred","BL","LC","BG","HL","MAL"]}
    # ${ ApplicationStage:["Credit Approval","Recommendation"]}
    @Release @Part-2 @Conventional
    @ImplementedBy-tushar.chauhan
    Examples:
      | ApplicantType   | Category | key | ApplicationStage   | Applicant_Type | ProductType   |
      | <ApplicantType> |          |     | <ApplicationStage> | Co-applicant   | <ProductType> |
      | <ApplicantType> |          |     | <ApplicationStage> | Guarantor      | <ProductType> |

    @Islamic
    @Release
    @Part-2
    @ImplementedBy-akash.bansal
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ApplicantType   | Category | key | ApplicationStage   | Applicant_Type | ProductType   |
      | <ApplicantType> |          |     | <ApplicationStage> | Co-applicant   | <ProductType> |
      | <ApplicantType> |          |     | <ApplicationStage> | Guarantor      | <ProductType> |
    @Islamic
    @Release
    @Part-2
    @ImplementedBy-akash.bansal
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category:["bonds"]}
    Examples:
      | ApplicantType   | Category   | key | ApplicationStage   | Applicant_Type | ProductType   |
      | <ApplicantType> | <Category> |     | <ApplicationStage> | Co-applicant   | <ProductType> |
      | <ApplicantType> | <Category> |     | <ApplicationStage> | Guarantor      | <ProductType> |
    @NotImplemented
      # ${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
    Examples:
      | ApplicantType   | Category | key | ApplicationStage   | Applicant_Type | ProductType   |
      | <ApplicantType> |          |     | <ApplicationStage> | Co-applicant   | <ProductType> |
      | <ApplicantType> |          |     | <ApplicationStage> | Guarantor      | <ProductType> |

#------------------------------------
  @FixedTest28
    @Perishable
  Scenario Outline:  ACAUTOCAS-870: In <ApplicationStage> stage user cannot add another applicant in <ProductType> application
    When user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user opens applicant info page of "<ApplicationStage>"
    Then add another applicant button is not displayed
    @Conventional
    @Release @Part-2
    @ImplementedBy-tushar.chauhan
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Post Approval","KYC"]}
    Examples:
      | ApplicantType   | Category | key | ApplicationStage   | ProductType   |
      | <ApplicantType> |          |     | <ApplicationStage> | <ProductType> |
    @Islamic
    @Release
    @Part-2
    @ImplementedBy-akash.bansal
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Post Approval","KYC"]}
    Examples:
      | ApplicantType   | Category | key | ApplicationStage   | ProductType   |
      | <ApplicantType> |          |     | <ApplicationStage> | <ProductType> |
    @Islamic
    @Release
    @Part-2
    @ImplementedBy-akash.bansal
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Post Approval","KYC"]}
    #${Category:["bonds"]}
    Examples:
      | ApplicantType   | Category   | key | ApplicationStage   | ProductType   |
      | <ApplicantType> | <Category> |     | <ApplicationStage> | <ProductType> |
    @NotImplemented
      # ${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
    Examples:
      | ApplicantType   | Category | key | ApplicationStage   | ProductType   |
      | <ApplicantType> |          |     | <ApplicationStage> | <ProductType> |


  Scenario Outline: ACAUTOCAS-13648:  Add another existing individual applicant in existing application which is at credit approval stage with applicant type as <Applicant_Type> in <ProductType>
    When user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
#    And user opens applicant information page
    And user adds another existing individual applicant with applicant type as "<Applicant_Type>" and application id at "<ApplicationStage>"
    Then additional existing individual applicant with applicant type as "<Applicant_Type>" should be displayed in applicant information page
    @Conventional
    @Release @Part-2
    @ImplementedBy-tushar.chauhan
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    Examples:
      | Applicant_Type | ApplicantType   | Category | key | ApplicationStage | AnotherApplicationStage | ProductType   | AnotherProductType | AnotherCategory |
      | Co-applicant   | <ApplicantType> |          |     | credit approval  | lead details            | <ProductType> | pf                 |                 |
      | Guarantor      | <ApplicantType> |          |     | credit approval  | lead details            | <ProductType> | pf                 |                 |
    @Islamic
    @Release
    @Part-2
    @ImplementedBy-akash.bansal
    #${ProductType:["IHF","IAF"]}
    Examples:
      | Applicant_Type | ApplicantType   | Category | key | ApplicationStage | AnotherApplicationStage | ProductType   | AnotherProductType | AnotherCategory |
      | Co-applicant   | <ApplicantType> |          |     | credit approval  | sourcing                | <ProductType> | <ProductType>      |                 |
      | Guarantor      | <ApplicantType> |          |     | credit approval  | sourcing                | <ProductType> | <ProductType>      |                 |
    @Islamic
    @Release
    @Part-2
    @ImplementedBy-akash.bansal
    @FixedJsClick2
    #${ProductType:["IPF"]}
    #${Category:["bonds"]}
    Examples:
      | Applicant_Type | ApplicantType   | Category   | key | ApplicationStage | AnotherApplicationStage | ProductType   | AnotherProductType | AnotherCategory |
      | Co-applicant   | <ApplicantType> | <Category> |     | credit approval  | sourcing                | <ProductType> | <ProductType>      | <Category>      |
      | Guarantor      | <ApplicantType> | <Category> |     | credit approval  | sourcing                | <ProductType> | <ProductType>      | <Category>      |
    @NotImplemented
      # ${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
    Examples:
      | Applicant_Type | ApplicantType   | Category | key | ApplicationStage | AnotherApplicationStage | ProductType   | AnotherProductType | AnotherCategory |
      | Co-applicant   | <ApplicantType> |          |     | credit approval  | lead details            | <ProductType> | pf                 |                 |
      | Guarantor      | <ApplicantType> |          |     | credit approval  | lead details            | <ProductType> | pf                 |                 |

    @Sanity
  @Perishable
    @AppInfoFixed5
   # ${ CustomerType:["Co-applicant","Guarantor"]}
   # ${RelationshipType:["Friend","Business Associate","Partner","Relative","Spouse","Self","Daughter","Employee","Son","Relative - Others","Daughter-in-law","Grand Father","Grand Mother","Grand Child","Nephew","Uncle","Aunt","Brother's wife","Father","Mother","Brother","Sister"]}
  Scenario Outline: ACAUTOCAS-11534: Add existing individual <CustomerType> with relationship type as <RelationshipType> in <ProductType> application at <ApplicationStage>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user saves first application number in context
    And user creates an application of "<AnotherProductType>" product type as "<ApplicantType>" applicant at "<AnotherApplicationStage>" for "" with "<key>" from web service
    And user opens an application of "<AnotherProductType>" product type as "<ApplicantType>" applicant at "<AnotherApplicationStage>" for "" with "<key>" from application grid
    And user modifies dob for relationship type as "<RelationshipType>" of "<ApplicationStage>"
    And user saves second application number in context
    And user sets first application number in unique context
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user opens applicant information page of "<ApplicationStage>"
    And user sets second application number in unique context
    When user adds existing "<ApplicantType>" "<CustomerType>" with relationship type as "<RelationshipType>"
    Then "<ApplicantType>" "<CustomerType>" with relationship type as "<RelationshipType>" added successfully
    @Conventional
    @Release @Part-2
    @ImplementedBy-tushar.chauhan
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    # ${ ApplicationStage:["Lead Details","Login Acceptance","DDE","Credit Approval","Recommendation"]}
      Examples:
        | CustomerType   | ApplicantType   | ProductType   | AnotherProductType | RelationshipType   | ApplicationStage   | AnotherApplicationStage | Category | key |
        | <CustomerType> | <ApplicantType> | <ProductType> | PF                 | <RelationshipType> | <ApplicationStage> | lead details            |          |     |
    @Islamic
    @Release
    @Part-2
    @ImplementedBy-akash.bansal
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | CustomerType   | ApplicantType   | ProductType   | AnotherProductType | RelationshipType   | ApplicationStage   | AnotherApplicationStage | Category | key |
      | <CustomerType> | <ApplicantType> | <ProductType> | ihf                | <RelationshipType> | <ApplicationStage> | sourcing                |          |     |
    @Islamic
    @Release
    @Part-2
    @ImplementedBy-akash.bansal
    @FixedJsClick2
    #${ProductType:["IPF"]}
    #${Category:["bonds"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | CustomerType   | ApplicantType   | ProductType   | AnotherProductType | RelationshipType   | ApplicationStage   | AnotherApplicationStage | Category   | key |
      | <CustomerType> | <ApplicantType> | <ProductType> | ihf                | <RelationshipType> | <ApplicationStage> | sourcing                | <Category> |     |
    @NotImplemented
        # ${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
    Examples:
      | CustomerType   | ApplicantType   | ProductType   | AnotherProductType | RelationshipType   | ApplicationStage   | AnotherApplicationStage | Category | key |
      | <CustomerType> | <ApplicantType> | <ProductType> | pf                 | <RelationshipType> | <ApplicationStage> | lead details            |          |     |

  @Perishable
    @FixedTest28
#    Pre-Requisite: application has individual "Guarantor" or "Coapplicant"
  Scenario Outline: ACAUTOCAS-11535: Edit another existing individual applicant in existing application which is at <ApplicationStage> stage with applicant type as <key> in <ProductType>
    When user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_home>" and row <PersonalInfo_home_rowNum>
    And user opens applicant information page of "<ApplicationStage>"
    And user views and edit applicant details for "<ApplicantType>" "<key>" applicant type
    When user edits another existing individual applicant
    Then additional existing individual applicant edited successfully
    @Conventional
    @Release @Part-2
    @ImplementedBy-tushar.chauhan
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    # ${ ApplicationStage:["Lead Details","Login Acceptance","DDE","Credit Approval","Recommendation"]}
    Examples:
      | ApplicationStage   | ApplicantType   | Category | key         | ProductType   | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum |
      | <ApplicationStage> | <ApplicantType> |          | coapplicant | <ProductType> | personal_information.xlsx | home              | 35                       |
      | <ApplicationStage> | <ApplicantType> |          | guarantor   | <ProductType> | personal_information.xlsx | home              | 35                       |
    @Islamic
    @Release
    @Part-2
    @ImplementedBy-akash.bansal
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ApplicationStage   | ApplicantType   | Category | key         | ProductType   | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum |
      | <ApplicationStage> | <ApplicantType> |          | coapplicant | <ProductType> | personal_information.xlsx | home              | 35                       |
      | <ApplicationStage> | <ApplicantType> |          | guarantor   | <ProductType> | personal_information.xlsx | home              | 35                       |
    @Islamic
    @Release
    @Part-2
    @ImplementedBy-akash.bansal
    @FixedJsClick
    #${ProductType:["IPF"]}
    #${Category:["bonds"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ApplicationStage   | ApplicantType   | Category   | key         | ProductType   | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum |
      | <ApplicationStage> | <ApplicantType> | <Category> | coapplicant | <ProductType> | personal_information.xlsx | home              | 35                       |
      | <ApplicationStage> | <ApplicantType> | <Category> | guarantor   | <ProductType> | personal_information.xlsx | home              | 35                       |
    @NotImplemented
        # ${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
    Examples:
      | ApplicationStage   | ApplicantType   | Category | key         | ProductType   | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum |
      | <ApplicationStage> | <ApplicantType> |          | coapplicant | <ProductType> | personal_information.xlsx | home              | 35                       |
      | <ApplicationStage> | <ApplicantType> |          | guarantor   | <ProductType> | personal_information.xlsx | home              | 35                       |


