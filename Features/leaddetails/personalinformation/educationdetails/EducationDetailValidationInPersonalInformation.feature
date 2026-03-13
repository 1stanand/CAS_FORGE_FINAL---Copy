@Epic-Applicant_Information
@AppInfoAdoption
@AuthoredBy-tushar.chauhan
#${ApplicantType:["indiv"]}
#FeatureID-ACAUTOCAS-157

Feature: Education Detail Validation In Personal Information Page

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0

    @Sanity
  Scenario Outline: ACAUTOCAS-4011: Fill the applicant's education detail with <var> fields at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user navigates to applicant details page of "<ApplicationStage>"
    And click on view edit detailed info
    And user checks for duplicates in personal info page
    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_education>" and row <PersonalInfo_education_rowNum>
    When user enters "<var>" education details
    Then "<var>" education details should be saved successfully

    # ${ProductType:["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL","FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @Conventional
    @Release @Part-2
    @ImplementedBy-tushar.chauhan
    Examples:
      | var       | ProductType   | ApplicantType   | ApplicationStage   | PersonalInfoWB            | PersonalInfo_education | PersonalInfo_education_rowNum | Category | Key |
      | mandatory | <ProductType> | <ApplicantType> | <ApplicationStage> | personal_information.xlsx | education              | 0                             |          |     |
      | all       | <ProductType> | <ApplicantType> | <ApplicationStage> | personal_information.xlsx | education              | 0                             |          |     |

    # ${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @Islamic
    @Release
@Part-2
    @ImplementedBy-tanya
    Examples:
      | var       | ProductType   | ApplicantType   | ApplicationStage   | PersonalInfoWB            | PersonalInfo_education | PersonalInfo_education_rowNum | Category | Key |
      | mandatory | <ProductType> | <ApplicantType> | <ApplicationStage> | personal_information.xlsx | education              | 0                             |          |     |
      | all       | <ProductType> | <ApplicantType> | <ApplicationStage> | personal_information.xlsx | education              | 0                             |          |     |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    # ${Category:["bonds"]}
    @Islamic
    @Release
@Part-2
    @ImplementedBy-tanya
    Examples:
      | var       | ProductType   | ApplicantType   | ApplicationStage   | PersonalInfoWB            | PersonalInfo_education | PersonalInfo_education_rowNum | Category   | Key |
      | mandatory | <ProductType> | <ApplicantType> | <ApplicationStage> | personal_information.xlsx | education              | 0                             | <Category> |     |
      | all       | <ProductType> | <ApplicantType> | <ApplicationStage> | personal_information.xlsx | education              | 0                             | <Category> |     |

 # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
   @NotImplemented
    Examples:
      | var       | ProductType   | ApplicantType   | ApplicationStage   | PersonalInfoWB            | PersonalInfo_education | PersonalInfo_education_rowNum | Category | Key |
      | mandatory | <ProductType> | <ApplicantType> | <ApplicationStage> | personal_information.xlsx | education              | 0                             |          |     |
      | all       | <ProductType> | <ApplicantType> | <ApplicationStage> | personal_information.xlsx | education              | 0                             |          |     |

## Duplicate Scenario
#  @Release @Part-2
#  Scenario Outline: ACAUTOCAS-4012:  Add education details in Personal Information Page
#    Given user is on CAS Login Page
#    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
#    And user is on personal information page
#    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_home>" and row <PersonalInfo_home_rowNum>
#    And user fills home page of personal information
#    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_identification>" and row <PersonalInfo_identification_rowNum>
#    And user fills identification section of personal information
#    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_address>" and row <PersonalInfo_address_rowNum>
#    And user fills address
#    And user checks for duplicates
#    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_education>" and row <PersonalInfo_education_rowNum>
#    When user add education details in personal Information Page from "<PersonalInfoWB>" under "<PersonalInfo_education>" and <PersonalInfo_education_rowNum>
#    Then education details should be saved successfully
#    Examples:
#      | SourceDataFile       | SheetName | RowNumber | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | PersonalInfo_identification | PersonalInfo_identification_rowNum | PersonalInfo_address | PersonalInfo_address_rowNum | PersonalInfo_education | PersonalInfo_education_rowNum |
#      | LoginDetailsCAS.xlsx | LoginData | 0         | personal_information.xlsx | home              | 24                       | identification              | 1                                  | address              | 51                          | education              | 13                            |

  @Sanity
  Scenario Outline: ACAUTOCAS-4013: Add multiple education details in Personal Information Page at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user navigates to applicant details page of "<ApplicationStage>"
    And click on view edit detailed info
    And user checks for duplicates in personal info page
    When user add multiple education details in personal Information Page from "<PersonalInfoWB>" under "<PersonalInfo_education>" and <PersonalInfo_education_rowNum>
    Then multiple education details should be saved successfully

    # ${ProductType:["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL","FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @Conventional
    @Release @Part-2
    @ImplementedBy-tushar.chauhan
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | PersonalInfoWB            | PersonalInfo_education | PersonalInfo_education_rowNum | Category | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | personal_information.xlsx | education              | 13                            |          |     |

    # ${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @Islamic
    @Release
@Part-2
    @ImplementedBy-tanya
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | PersonalInfoWB            | PersonalInfo_education | PersonalInfo_education_rowNum | Category | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | personal_information.xlsx | education              | 13                            |          |     |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    # ${Category:["bonds"]}
    @Islamic
    @Release
@Part-2
    @ImplementedBy-tanya
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | PersonalInfoWB            | PersonalInfo_education | PersonalInfo_education_rowNum | Category   | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | personal_information.xlsx | education              | 13                            | <Category> |     |

 # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
   @NotImplemented
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | PersonalInfoWB            | PersonalInfo_education | PersonalInfo_education_rowNum | Category | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | personal_information.xlsx | education              | 13                            |          |     |

  Scenario Outline: ACAUTOCAS-4014: Delete education details in Personal Information Page at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user navigates to applicant details page of "<ApplicationStage>"
    And click on view edit detailed info
    And user checks for duplicates in personal info page
    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_education>" and row <PersonalInfo_education_rowNum>
    And user add education details in personal Information Page
    When user deletes education details
    Then education details should be deleted

    # ${ProductType:["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL","FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @Conventional
    @Release @Part-2
    @ImplementedBy-tushar.chauhan
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | PersonalInfoWB            | PersonalInfo_education | PersonalInfo_education_rowNum | Category | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | personal_information.xlsx | education              | 0                             |          |     |

    # ${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @Islamic
    @Release
@Part-2
    @ImplementedBy-tanya
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | PersonalInfoWB            | PersonalInfo_education | PersonalInfo_education_rowNum | Category | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | personal_information.xlsx | education              | 0                             |          |     |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    # ${Category:["bonds"]}
    @Islamic
    @Release
@Part-2
    @ImplementedBy-tanya
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | PersonalInfoWB            | PersonalInfo_education | PersonalInfo_education_rowNum | Category   | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | personal_information.xlsx | education              | 0                             | <Category> |     |

 # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
   @NotImplemented
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | PersonalInfoWB            | PersonalInfo_education | PersonalInfo_education_rowNum | Category | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | personal_information.xlsx | education              | 0                             |          |     |
