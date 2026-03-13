@Epic-Applicant_Information
@AuthoredBy-vipin.kishor
@Reconciled
@ReviewedByDEV
@AppInfoAdoption
#FeatureID-ACAUTOCAS-158
  # ${ApplicantType:["indiv"]}
Feature: Years in Profession according to Years of Incorporation in Self Employed Professional in Employment Details page without save

  Scenario Outline: ACAUTOCAS-3849:  Years in Profession <Condition> in Self Employed Professional
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_home>" and row <PersonalInfo_home_rowNum>
    And user navigates to applicant details page of "<ApplicationStage>"
    When click on view edit detailed info
    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_home>" and row <PersonalInfo_home_rowNum>
    And user fills home page of personal information
    And user save personal information details
    And user reads data from the excel file "<EmploymentDetailsWB>" under sheet "<EmploymentDetails_home>" and row <EmploymentDetails_home_rowNum>
    When user fills employment details with "<Mandatory_All>" fields for self employed professional
    Then years in profession "<Condition>"
    @Conventional
    @Release @Part-1
    @ImplementedBy-aman.nagarkoti
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
   # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | Condition                                     | Mandatory_All | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | is auto filled                                | all           | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 33                            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | is equal to year of incorporation calculation | all           | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 33                            |

    @LoggedBug
    @Conventional
    @Release @Part-1
    @ImplementedBy-aman.nagarkoti
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
   # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | Condition    | Mandatory_All | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | is read only | all           | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 33                            |

    @Islamic
    @Release
@Part-1
    @ImplementedBy-utkarsh.tiwari
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category:["bonds"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | key | Condition                                     | Mandatory_All | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | is auto filled                                | all           | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 0                             |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | is equal to year of incorporation calculation | all           | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 0                             |

    @LoggedBug
    @Islamic
    @Release
@Part-1
    @ImplementedBy-utkarsh.tiwari
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category:["bonds"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | key | Condition    | Mandatory_All | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | is read only | all           | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 0                             |

    @Islamic
    @Release
@Part-1
    @ImplementedBy-utkarsh.tiwari
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | Condition                                     | Mandatory_All | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | is auto filled                                | all           | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 0                             |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | is equal to year of incorporation calculation | all           | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 0                             |

    @LoggedBug
    @Islamic
    @Release
@Part-1
    @ImplementedBy-utkarsh.tiwari
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | Condition    | Mandatory_All | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | is read only | all           | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 0                             |
    @NotImplemented
     # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | Condition                                     | Mandatory_All | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | is auto filled                                | all           | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 33                            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | is equal to year of incorporation calculation | all           | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 33                            |
    @NotImplemented
    @LoggedBug
     # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | Condition    | Mandatory_All | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | is read only | all           | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 33                            |