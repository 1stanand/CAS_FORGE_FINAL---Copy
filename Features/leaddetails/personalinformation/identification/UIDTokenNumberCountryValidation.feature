@Epic-Applicant_Information
@AuthoredBy-utkarsh.tiwari
@ReviewedBy-None
@ImplementedBy-utkarsh.tiwari
@Reconciled
@AppInfoAdoption
Feature: UID Token Number Validation in Identification in personal information page without save

  Scenario Outline: ACAUTOCAS-4029:  Entering UID Token Number in Identification without save
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user navigates to applicant details page of "<ApplicationStage>"
    And click on view edit detailed info
    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_home>" and row <PersonalInfo_home_rowNum>
    And user fills home page of personal information
    When user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_identification>" and row <PersonalInfo_identification_rowNum>
    And user fills identification section of personal information with "<Identification_Type>"
    Then country of issue should "<Condition>"
    @Islamic
    @@Deferred
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category:["bonds"]}
    Examples:
      | Identification_Type | Condition                 | ProductType   | ApplicantType   | ApplicationStage   | Category   | key | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | PersonalInfo_identification | PersonalInfo_identification_rowNum |
      | UID Token No.       | not_be_editable           | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | personal_information.xlsx | home              | 1                        | identification              | 22                                 |
      | UID Token No.       | be_auto_selected_as_India | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | personal_information.xlsx | home              | 0                        | identification              | 22                                 |

    @Islamic
    @@Deferred
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | Identification_Type | Condition                 | ProductType   | ApplicantType   | ApplicationStage   | Category | key | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | PersonalInfo_identification | PersonalInfo_identification_rowNum |
      | UID Token No.       | not_be_editable           | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | personal_information.xlsx | home              | 0                        | identification              | 22                                 |
      | UID Token No.       | be_auto_selected_as_India | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | personal_information.xlsx | home              | 0                        | identification              | 22                                 |

    @Conventional
    @Release @Part-1
    # ${ ProductType : ["PF","HL","AL","IHF","IAF","IPF","EDU","OMNI","CEQ", "KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval"]}
    Examples:
      | Identification_Type | Condition                 | ProductType   | ApplicantType   | ApplicationStage   | Category | key | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | PersonalInfo_identification | PersonalInfo_identification_rowNum |
      | UID Token No.       | not_be_editable           | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | personal_information.xlsx | home              | 0                        | identification              | 22                                 |
      | UID Token No.       | be_auto_selected_as_India | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | personal_information.xlsx | home              | 0                        | identification              | 22                                 |

    # ${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
    Examples:
      | Identification_Type | Condition                 | ProductType   | ApplicantType   | ApplicationStage   | Category | key | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | PersonalInfo_identification | PersonalInfo_identification_rowNum |
      | UID Token No.       | not_be_editable           | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | personal_information.xlsx | home              | 0                        | identification              | 22                                 |
      | UID Token No.       | be_auto_selected_as_India | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | personal_information.xlsx | home              | 0                        | identification              | 22                                 |