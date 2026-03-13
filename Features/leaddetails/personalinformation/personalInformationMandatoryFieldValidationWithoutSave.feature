@Epic-Applicant_Information
@ReviewedBy-None
@Reconciled
@AppInfoAdoption

# ${ApplicantType:["indiv"]}
  #FeatureID-ACAUTOCAS-149
Feature:Personal Information Mandatory Field Validation without save

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0

  @AuthoredBy-tushar.chauhan
  Scenario Outline: ACAUTOCAS-4037:  Insert the valid first names "<var>"
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_home>" and row <PersonalInfo_home_rowNum>
    And user navigates to applicant details page of "<ApplicationStage>"
    When click on view edit detailed info
    And user inserts valid first name "<var>"
    Then "<fieldName>" should be inserted
    @Conventional
    @Release @Part-1
    @ImplementedBy-tushar.chauhan
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | var                        | fieldName | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |                            | firstname | personal_information.xlsx | home              | 1                        |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | with space                 | firstname | personal_information.xlsx | home              | 28                       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | with maximum characters    | firstname | personal_information.xlsx | home              | 14                       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | characters and digits both | firstname | personal_information.xlsx | home              | 13                       |
    @Islamic
    @Release
@Part-1
    @ImplementedBy-akash.bansal
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | var                        | fieldName | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |                            | firstname | personal_information.xlsx | home              | 1                        |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | with space                 | firstname | personal_information.xlsx | home              | 28                       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | with maximum characters    | firstname | personal_information.xlsx | home              | 14                       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | characters and digits both | firstname | personal_information.xlsx | home              | 13                       |

    @Islamic
    @Release
@Part-1
    @ImplementedBy-akash.bansal
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category:["bonds"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | key | var                        | fieldName | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     |                            | firstname | personal_information.xlsx | home              | 1                        |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | with space                 | firstname | personal_information.xlsx | home              | 28                       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | with maximum characters    | firstname | personal_information.xlsx | home              | 14                       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | characters and digits both | firstname | personal_information.xlsx | home              | 13                       |

     # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
   @NotImplemented
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | var                        | fieldName | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |                            | firstname | personal_information.xlsx | home              | 1                        |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | with space                 | firstname | personal_information.xlsx | home              | 28                       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | with maximum characters    | firstname | personal_information.xlsx | home              | 14                       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | characters and digits both | firstname | personal_information.xlsx | home              | 13                       |

  @AuthoredBy-tushar.chauhan
  Scenario Outline: ACAUTOCAS-4038:  Insert the first name with "<var>"
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_home>" and row <PersonalInfo_home_rowNum>
    And user navigates to applicant details page of "<ApplicationStage>"
    When click on view edit detailed info
    And user inserts first name with "<var>"
    Then first name should not be inserted
    @Conventional
    @Release @Part-1
    @ImplementedBy-tushar.chauhan
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | var                | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | special characters | personal_information.xlsx | home              | 12                       |
    @Islamic
    @Release
@Part-1
    @ImplementedBy-akash.bansal
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | var                | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | special characters | personal_information.xlsx | home              | 12                       |
    @Islamic
    @Release
@Part-1
    @ImplementedBy-akash.bansal
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category:["bonds"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | key | var                | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | special characters | personal_information.xlsx | home              | 12                       |
     # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
   @NotImplemented
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | var                | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | special characters | personal_information.xlsx | home              | 12                       |

  @AuthoredBy-tushar.chauhan
  Scenario Outline: ACAUTOCAS-4039:  Insert the valid last name "<var>"
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_home>" and row <PersonalInfo_home_rowNum>
    And user navigates to applicant details page of "<ApplicationStage>"
    When click on view edit detailed info
    And user inserts valid last name "<var>"
    Then "<fieldName>" should be inserted
    @Conventional
    @Release @Part-1
    @ImplementedBy-tushar.chauhan
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | var                        | fieldName | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |                            | lastname  | personal_information.xlsx | home              | 15                       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | with space                 | lastname  | personal_information.xlsx | home              | 28                       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | with maximum characters    | lastname  | personal_information.xlsx | home              | 18                       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | characters and digits both | lastname  | personal_information.xlsx | home              | 17                       |
    @Islamic
    @Release
@Part-1
    @ImplementedBy-akash.bansal
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | var                        | fieldName | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |                            | lastname  | personal_information.xlsx | home              | 15                       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | with space                 | lastname  | personal_information.xlsx | home              | 28                       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | with maximum characters    | lastname  | personal_information.xlsx | home              | 18                       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | characters and digits both | lastname  | personal_information.xlsx | home              | 17                       |
    @Islamic
    @Release
@Part-1
    @ImplementedBy-akash.bansal
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category:["bonds"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | key | var                        | fieldName | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     |                            | lastname  | personal_information.xlsx | home              | 15                       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | with space                 | lastname  | personal_information.xlsx | home              | 28                       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | with maximum characters    | lastname  | personal_information.xlsx | home              | 18                       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | characters and digits both | lastname  | personal_information.xlsx | home              | 17                       |
     # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
   @NotImplemented
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | var                        | fieldName | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |                            | lastname  | personal_information.xlsx | home              | 15                       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | with space                 | lastname  | personal_information.xlsx | home              | 28                       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | with maximum characters    | lastname  | personal_information.xlsx | home              | 18                       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | characters and digits both | lastname  | personal_information.xlsx | home              | 17                       |

  @AuthoredBy-utkarsh.tiwari
  Scenario Outline: ACAUTOCAS-4040:  Insert the last name with "<var>"
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_home>" and row <PersonalInfo_home_rowNum>
    And user navigates to applicant details page of "<ApplicationStage>"
    When click on view edit detailed info
    And user inserts last name with "<var>"
    Then last name should not be inserted
    @Conventional
    @Release @Part-1
    @ImplementedBy-utkarsh.tiwari
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | var                | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | special char       | personal_information.xlsx | home              | 16                       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | special characters | personal_information.xlsx | home              | 16                       |
    @Islamic
    @Release
@Part-1
    @ImplementedBy-akash.bansal
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | var                | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | special char       | personal_information.xlsx | home              | 16                       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | special characters | personal_information.xlsx | home              | 16                       |
    @Islamic
    @Release
@Part-1
    @ImplementedBy-akash.bansal
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category:["bonds"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | key | var                | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | special char       | personal_information.xlsx | home              | 16                       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | special characters | personal_information.xlsx | home              | 16                       |
     # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
   @NotImplemented
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | var                | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | special char       | personal_information.xlsx | home              | 16                       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | special characters | personal_information.xlsx | home              | 16                       |

  @AuthoredBy-utkarsh.tiwari
  Scenario Outline: ACAUTOCAS-4041:  Insert the valid guardian name "<var>"
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_home>" and row <PersonalInfo_home_rowNum>
    And user navigates to applicant details page of "<ApplicationStage>"
    When click on view edit detailed info
    And user inserts valid guardian name "<var>"
    Then "<fieldName>" should be inserted
    @Conventional
    @Release @Part-1
    @ImplementedBy-utkarsh.tiwari
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | var                        | fieldName    | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |                            | guardianname | personal_information.xlsx | home              | 19                       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | with space                 | guardianname | personal_information.xlsx | home              | 28                       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | with maximum characters    | guardianname | personal_information.xlsx | home              | 22                       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | characters and digits both | guardianname | personal_information.xlsx | home              | 21                       |
    @Islamic
    @Release
@Part-1
    @ImplementedBy-akash.bansal
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | var                        | fieldName    | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |                            | guardianname | personal_information.xlsx | home              | 19                       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | with space                 | guardianname | personal_information.xlsx | home              | 28                       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | with maximum characters    | guardianname | personal_information.xlsx | home              | 22                       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | characters and digits both | guardianname | personal_information.xlsx | home              | 21                       |
    @Islamic
    @Release
@Part-1
    @ImplementedBy-akash.bansal
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category:["bonds"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | key | var                        | fieldName    | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     |                            | guardianname | personal_information.xlsx | home              | 19                       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | with space                 | guardianname | personal_information.xlsx | home              | 28                       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | with maximum characters    | guardianname | personal_information.xlsx | home              | 22                       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | characters and digits both | guardianname | personal_information.xlsx | home              | 21                       |
     # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
   @NotImplemented
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | var                        | fieldName    | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |                            | guardianname | personal_information.xlsx | home              | 19                       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | with space                 | guardianname | personal_information.xlsx | home              | 28                       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | with maximum characters    | guardianname | personal_information.xlsx | home              | 22                       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | characters and digits both | guardianname | personal_information.xlsx | home              | 21                       |

  @AuthoredBy-utkarsh.tiwari
  Scenario Outline: ACAUTOCAS-4042:  Insert the guardian name with "<var>"
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_home>" and row <PersonalInfo_home_rowNum>
    And user navigates to applicant details page of "<ApplicationStage>"
    When click on view edit detailed info
    And user inserts guardian name with "<var>"
    Then guardian name should not be inserted
    @Conventional
    @Release @Part-1
    @ImplementedBy-utkarsh.tiwari
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | var                | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | special characters | personal_information.xlsx | home              | 20                       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | special char       | personal_information.xlsx | home              | 184                      |
    @Islamic
    @Release
@Part-1
    @ImplementedBy-akash.bansal
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | var                | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | special characters | personal_information.xlsx | home              | 20                       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | special char       | personal_information.xlsx | home              | 172                      |
    @Islamic
    @Release
@Part-1
    @ImplementedBy-akash.bansal
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category:["bonds"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | key | var                | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | special characters | personal_information.xlsx | home              | 20                       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | special char       | personal_information.xlsx | home              | 172                      |
     # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
   @NotImplemented
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | var                | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | special characters | personal_information.xlsx | home              | 20                       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | special char       | personal_information.xlsx | home              | 28                       |

  @AuthoredBy-tushar.chauhan
  Scenario Outline: ACAUTOCAS-4043:  Insert the valid date of birth
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_home>" and row <PersonalInfo_home_rowNum>
    And user navigates to applicant details page of "<ApplicationStage>"
    When click on view edit detailed info
    And user inserts valid date of birth
    Then "<fieldName>" should be inserted
    @Conventional
    @Release @Part-1
    @ImplementedBy-tushar.chauhan
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | fieldName | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | dob       | personal_information.xlsx | home              | 10                       |
    @Islamic
    @Release
@Part-1
    @ImplementedBy-akash.bansal
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | fieldName | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | dob       | personal_information.xlsx | home              | 10                       |
    @Islamic
    @Release
@Part-1
    @ImplementedBy-akash.bansal
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category:["bonds"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | key | fieldName | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | dob       | personal_information.xlsx | home              | 10                       |
     # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
   @NotImplemented
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | fieldName | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | dob       | personal_information.xlsx | home              | 10                       |

  @AuthoredBy-tushar.chauhan
  Scenario Outline: ACAUTOCAS-4044:  Insert dob more than current date
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_home>" and row <PersonalInfo_home_rowNum>
    And user navigates to applicant details page of "<ApplicationStage>"
    When click on view edit detailed info
    And user insert future date in dob
    Then future date of birth should not be inserted
    @Conventional
    @Release @Part-1
    @ImplementedBy-tushar.chauhan
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | personal_information.xlsx | home              | 15                       |
    @Islamic
    @Release
@Part-1
    @ImplementedBy-akash.bansal
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | personal_information.xlsx | home              | 15                       |
    @Islamic
    @Release
@Part-1
    @ImplementedBy-akash.bansal
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category:["bonds"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | key | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | personal_information.xlsx | home              | 15                       |
     # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
   @NotImplemented
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | personal_information.xlsx | home              | 15                       |

  @AuthoredBy-utkarsh.tiwari
  Scenario Outline: ACAUTOCAS-4045:  Insert invalid data in constitution
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_home>" and row <PersonalInfo_home_rowNum>
    And user navigates to applicant details page of "<ApplicationStage>"
    When click on view edit detailed info
    And user inserts invalid data in constitution
    Then "<fieldName>" should not be allowed to insert
    @Conventional
    @Release @Part-1
    @ImplementedBy-utkarsh.tiwari
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | fieldName    | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | constitution | personal_information.xlsx | home              | 15                       |
    @Islamic
    @Release
@Part-1
    @ImplementedBy-akash.bansal
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | fieldName    | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | constitution | personal_information.xlsx | home              | 15                       |
    @Islamic
    @Release
@Part-1
    @ImplementedBy-akash.bansal
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category:["bonds"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | key | fieldName    | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | constitution | personal_information.xlsx | home              | 15                       |
     # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
   @NotImplemented
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | fieldName    | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | constitution | personal_information.xlsx | home              | 15                       |

  @AuthoredBy-utkarsh.tiwari
  Scenario Outline: ACAUTOCAS-4046:  Insert invalid applicants category
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_home>" and row <PersonalInfo_home_rowNum>
    And user navigates to applicant details page of "<ApplicationStage>"
    When click on view edit detailed info
    And user inserts invalid applicant category
    Then "<fieldName>" should not be inserted
    @Conventional
    @Release @Part-1
    @ImplementedBy-utkarsh.tiwari
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | fieldName | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | category  | personal_information.xlsx | home              | 15                       |
    @Islamic
    @Release
@Part-1
    @ImplementedBy-akash.bansal
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | fieldName | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | category  | personal_information.xlsx | home              | 15                       |
    @Islamic
    @Release
@Part-1
    @ImplementedBy-akash.bansal
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category:["bonds"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | key | fieldName | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | category  | personal_information.xlsx | home              | 15                       |
     # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
   @NotImplemented
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | fieldName | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | category  | personal_information.xlsx | home              | 15                       |


