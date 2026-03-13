@Epic-Applicant_Information
@AuthoredBy-akash.bansal
@ReviewedBy-None
@ImplementedBy-akash.bansal
@AppInfoAdoption

#${ApplicantType:["indiv","nonindiv"]}
Feature: Identification validation in personal information page with save

  Scenario Outline: ACAUTOCAS-4027:  Saving Identification Details without <Field_Name> in personal information page
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user navigates to applicant details page of "<ApplicationStage>"
    And click on view edit detailed info
    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_home>" and row <PersonalInfo_home_rowNum>
    And user fills home page of personal information
    When user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_identification>" and row <PersonalInfo_identification_rowNum>
    And user saves identification without "<Field_Name>"
    Then application is not saved with error message for field "<Field_Name>"
    @Islamic
    @Release
@Part-1
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category:["bonds"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | key | Field_Name            | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | PersonalInfo_identification | PersonalInfo_identification_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Identification Type   | personal_information.xlsx | home              | 1                        | identification              | 161                                |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Identification Number | personal_information.xlsx | home              | 1                        | identification              | 28                                 |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Country Of Issue      | personal_information.xlsx | home              | 1                        | identification              | 162                                |

    @Islamic
    @Release
@Part-1
    #${ProductType:["IHF","IAF]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | Field_Name            | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | PersonalInfo_identification | PersonalInfo_identification_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Identification Type   | personal_information.xlsx | home              | 1                        | identification              | 161                                |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Identification Number | personal_information.xlsx | home              | 1                        | identification              | 28                                 |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Country Of Issue      | personal_information.xlsx | home              | 1                        | identification              | 162                                |

    @Conventional
    @Release @Part-1
    # ${ ProductType : ["PL","HL","AL","EDU","OMNI","CEQ","KCC","AGRL","FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | Field_Name                         | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | PersonalInfo_identification | PersonalInfo_identification_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Identification Type                | personal_information.xlsx | home              | 0                        | identification              | 28                                 |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Identification Number              | personal_information.xlsx | home              | 0                        | identification              | 28                                 |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Country Of Issue                   | personal_information.xlsx | home              | 0                        | identification              | 29                                 |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Identification Number For Aadhaar  | personal_information.xlsx | home              | 0                        | identification              | 30                                 |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Identification Number For Passport | personal_information.xlsx | home              | 0                        | identification              | 31                                 |

    @Deferred
# ${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | Field_Name                         | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | PersonalInfo_identification | PersonalInfo_identification_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Identification Type                | personal_information.xlsx | home              | 0                        | identification              | 28                                 |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Identification Number              | personal_information.xlsx | home              | 0                        | identification              | 28                                 |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Country Of Issue                   | personal_information.xlsx | home              | 0                        | identification              | 29                                 |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Identification Number For Aadhaar  | personal_information.xlsx | home              | 0                        | identification              | 30                                 |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Identification Number For Passport | personal_information.xlsx | home              | 0                        | identification              | 31                                 |
