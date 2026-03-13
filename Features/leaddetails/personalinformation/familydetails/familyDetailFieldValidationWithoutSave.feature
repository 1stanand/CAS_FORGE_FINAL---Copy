@Epic-Applicant_Information
@AppInfoAdoption
@Release1
@AuthoredBy-akash.bansal
@ReviewedByDEV
@ImplementedBy-akash.bansal
#FeatureID-ACAUTOCAS-156
# ${ApplicantType:["indiv"]}
Feature: Family detail validation without save in personal information page

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0

  Scenario Outline: ACAUTOCAS-4015:  Insert the <validity> <field> <validity_reason>
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_home>" and row <PersonalInfo_home_rowNum>
    And user navigates to applicant details page of "<ApplicationStage>"
    And click on view edit detailed info
    And user fills home page of personal information
    And user open family accordion
    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_family>" and row <PersonalInfo_family_rowNum>
    When user enters "<validity>" "<field>" "<validity_reason>" in family details
    Then application "<throws_notThrows>" an error message on "<validity>" "<field>" field
    @Conventional
    @Release @Part-1
    # ${ ProductType : ["PL","HL","AL","EDU","OMNI","CEQ","KCC","AGRL","FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | throws_notThrows | validity | field                  | validity_reason            | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | PersonalInfo_family | PersonalInfo_family_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | does not throw   | valid    | no of dependents       |                            | personal_information.xlsx | home              | 24                       | family              | 2                          |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | throws           | invalid  | no of dependents       | with digits and character  | personal_information.xlsx | home              | 24                       | family              | 3                          |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | throws           | invalid  | no of dependents       | with negative number       | personal_information.xlsx | home              | 24                       | family              | 4                          |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | throws           | invalid  | no of dependents       | with special character     | personal_information.xlsx | home              | 24                       | family              | 5                          |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | does not throw   | valid    | no of child dependents |                            | personal_information.xlsx | home              | 24                       | family              | 6                          |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | throws           | invalid  | no of child dependents | with digits and character  | personal_information.xlsx | home              | 24                       | family              | 7                          |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | throws           | invalid  | no of child dependents | with negative number       | personal_information.xlsx | home              | 24                       | family              | 8                          |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | throws           | invalid  | no of child dependents | with special character     | personal_information.xlsx | home              | 24                       | family              | 9                          |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | does not throw   | valid    | no of adult dependents |                            | personal_information.xlsx | home              | 24                       | family              | 10                         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | throws           | invalid  | no of adult dependents | with digits and character  | personal_information.xlsx | home              | 24                       | family              | 11                         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | throws           | invalid  | no of adult dependents | with negative number       | personal_information.xlsx | home              | 24                       | family              | 12                         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | throws           | invalid  | no of adult dependents | with special character     | personal_information.xlsx | home              | 24                       | family              | 13                         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | does not throw   | valid    | no of children         |                            | personal_information.xlsx | home              | 24                       | family              | 14                         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | throws           | invalid  | no of children         | with digits and character  | personal_information.xlsx | home              | 24                       | family              | 15                         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | throws           | invalid  | no of children         | with negative number       | personal_information.xlsx | home              | 24                       | family              | 16                         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | throws           | invalid  | no of children         | with special character     | personal_information.xlsx | home              | 24                       | family              | 17                         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | does not throw   | valid    | Date Of Birth          |                            | personal_information.xlsx | home              | 24                       | family              | 19                         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | throws           | invalid  | Date Of Birth          | more than the current date | personal_information.xlsx | home              | 24                       | family              | 20                         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | does not throw   | valid    | phone number           |                            | personal_information.xlsx | home              | 24                       | family              | 21                         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | does not throw   | valid    | phone number           | with maximum length        | personal_information.xlsx | home              | 24                       | family              | 22                         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | throws           | invalid  | phone number           | with special character     | personal_information.xlsx | home              | 24                       | family              | 24                         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | throws           | invalid  | phone number           | with digits and character  | personal_information.xlsx | home              | 24                       | family              | 25                         |
    @Islamic
    @Release
    @Part-1
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | throws_notThrows | validity | field                  | validity_reason            | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | PersonalInfo_family | PersonalInfo_family_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | does not throw   | valid    | no of dependents       |                            | personal_information.xlsx | home              | 24                       | family              | 2                          |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | throws           | invalid  | no of dependents       | with digits and character  | personal_information.xlsx | home              | 24                       | family              | 3                          |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | throws           | invalid  | no of dependents       | with negative number       | personal_information.xlsx | home              | 24                       | family              | 4                          |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | throws           | invalid  | no of dependents       | with special character     | personal_information.xlsx | home              | 24                       | family              | 5                          |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | does not throw   | valid    | no of child dependents |                            | personal_information.xlsx | home              | 24                       | family              | 6                          |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | throws           | invalid  | no of child dependents | with digits and character  | personal_information.xlsx | home              | 24                       | family              | 7                          |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | throws           | invalid  | no of child dependents | with negative number       | personal_information.xlsx | home              | 24                       | family              | 8                          |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | throws           | invalid  | no of child dependents | with special character     | personal_information.xlsx | home              | 24                       | family              | 9                          |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | does not throw   | valid    | no of adult dependents |                            | personal_information.xlsx | home              | 24                       | family              | 10                         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | throws           | invalid  | no of adult dependents | with digits and character  | personal_information.xlsx | home              | 24                       | family              | 11                         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | throws           | invalid  | no of adult dependents | with negative number       | personal_information.xlsx | home              | 24                       | family              | 12                         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | throws           | invalid  | no of adult dependents | with special character     | personal_information.xlsx | home              | 24                       | family              | 13                         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | does not throw   | valid    | no of children         |                            | personal_information.xlsx | home              | 24                       | family              | 14                         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | throws           | invalid  | no of children         | with digits and character  | personal_information.xlsx | home              | 24                       | family              | 15                         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | throws           | invalid  | no of children         | with negative number       | personal_information.xlsx | home              | 24                       | family              | 16                         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | throws           | invalid  | no of children         | with special character     | personal_information.xlsx | home              | 24                       | family              | 17                         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | does not throw   | valid    | Date Of Birth          |                            | personal_information.xlsx | home              | 24                       | family              | 19                         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | throws           | invalid  | Date Of Birth          | more than the current date | personal_information.xlsx | home              | 24                       | family              | 20                         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | does not throw   | valid    | phone number           |                            | personal_information.xlsx | home              | 24                       | family              | 21                         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | does not throw   | valid    | phone number           | with maximum length        | personal_information.xlsx | home              | 24                       | family              | 22                         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | throws           | invalid  | phone number           | with special character     | personal_information.xlsx | home              | 24                       | family              | 24                         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | throws           | invalid  | phone number           | with digits and character  | personal_information.xlsx | home              | 24                       | family              | 25                         |
    @Islamic
    @Release
@Part-1
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    # ${Category:["bonds"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | key | throws_notThrows | validity | field                  | validity_reason            | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | PersonalInfo_family | PersonalInfo_family_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | does not throw   | valid    | no of dependents       |                            | personal_information.xlsx | home              | 24                       | family              | 2                          |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | throws           | invalid  | no of dependents       | with digits and character  | personal_information.xlsx | home              | 24                       | family              | 3                          |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | throws           | invalid  | no of dependents       | with negative number       | personal_information.xlsx | home              | 24                       | family              | 4                          |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | throws           | invalid  | no of dependents       | with special character     | personal_information.xlsx | home              | 24                       | family              | 5                          |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | does not throw   | valid    | no of child dependents |                            | personal_information.xlsx | home              | 24                       | family              | 6                          |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | throws           | invalid  | no of child dependents | with digits and character  | personal_information.xlsx | home              | 24                       | family              | 7                          |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | throws           | invalid  | no of child dependents | with negative number       | personal_information.xlsx | home              | 24                       | family              | 8                          |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | throws           | invalid  | no of child dependents | with special character     | personal_information.xlsx | home              | 24                       | family              | 9                          |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | does not throw   | valid    | no of adult dependents |                            | personal_information.xlsx | home              | 24                       | family              | 10                         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | throws           | invalid  | no of adult dependents | with digits and character  | personal_information.xlsx | home              | 24                       | family              | 11                         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | throws           | invalid  | no of adult dependents | with negative number       | personal_information.xlsx | home              | 24                       | family              | 12                         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | throws           | invalid  | no of adult dependents | with special character     | personal_information.xlsx | home              | 24                       | family              | 13                         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | does not throw   | valid    | no of children         |                            | personal_information.xlsx | home              | 24                       | family              | 14                         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | throws           | invalid  | no of children         | with digits and character  | personal_information.xlsx | home              | 24                       | family              | 15                         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | throws           | invalid  | no of children         | with negative number       | personal_information.xlsx | home              | 24                       | family              | 16                         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | throws           | invalid  | no of children         | with special character     | personal_information.xlsx | home              | 24                       | family              | 17                         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | does not throw   | valid    | Date Of Birth          |                            | personal_information.xlsx | home              | 24                       | family              | 19                         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | throws           | invalid  | Date Of Birth          | more than the current date | personal_information.xlsx | home              | 24                       | family              | 20                         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | does not throw   | valid    | phone number           |                            | personal_information.xlsx | home              | 24                       | family              | 21                         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | does not throw   | valid    | phone number           | with maximum length        | personal_information.xlsx | home              | 24                       | family              | 22                         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | throws           | invalid  | phone number           | with special character     | personal_information.xlsx | home              | 24                       | family              | 24                         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | throws           | invalid  | phone number           | with digits and character  | personal_information.xlsx | home              | 24                       | family              | 25                         |
     # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | throws_notThrows | validity | field                  | validity_reason            | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | PersonalInfo_family | PersonalInfo_family_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | does not throw   | valid    | no of dependents       |                            | personal_information.xlsx | home              | 24                       | family              | 2                          |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | throws           | invalid  | no of dependents       | with digits and character  | personal_information.xlsx | home              | 24                       | family              | 3                          |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | throws           | invalid  | no of dependents       | with negative number       | personal_information.xlsx | home              | 24                       | family              | 4                          |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | throws           | invalid  | no of dependents       | with special character     | personal_information.xlsx | home              | 24                       | family              | 5                          |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | does not throw   | valid    | no of child dependents |                            | personal_information.xlsx | home              | 24                       | family              | 6                          |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | throws           | invalid  | no of child dependents | with digits and character  | personal_information.xlsx | home              | 24                       | family              | 7                          |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | throws           | invalid  | no of child dependents | with negative number       | personal_information.xlsx | home              | 24                       | family              | 8                          |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | throws           | invalid  | no of child dependents | with special character     | personal_information.xlsx | home              | 24                       | family              | 9                          |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | does not throw   | valid    | no of adult dependents |                            | personal_information.xlsx | home              | 24                       | family              | 10                         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | throws           | invalid  | no of adult dependents | with digits and character  | personal_information.xlsx | home              | 24                       | family              | 11                         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | throws           | invalid  | no of adult dependents | with negative number       | personal_information.xlsx | home              | 24                       | family              | 12                         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | throws           | invalid  | no of adult dependents | with special character     | personal_information.xlsx | home              | 24                       | family              | 13                         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | does not throw   | valid    | no of children         |                            | personal_information.xlsx | home              | 24                       | family              | 14                         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | throws           | invalid  | no of children         | with digits and character  | personal_information.xlsx | home              | 24                       | family              | 15                         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | throws           | invalid  | no of children         | with negative number       | personal_information.xlsx | home              | 24                       | family              | 16                         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | throws           | invalid  | no of children         | with special character     | personal_information.xlsx | home              | 24                       | family              | 17                         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | does not throw   | valid    | Date Of Birth          |                            | personal_information.xlsx | home              | 24                       | family              | 19                         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | throws           | invalid  | Date Of Birth          | more than the current date | personal_information.xlsx | home              | 24                       | family              | 20                         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | does not throw   | valid    | phone number           |                            | personal_information.xlsx | home              | 24                       | family              | 21                         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | does not throw   | valid    | phone number           | with maximum length        | personal_information.xlsx | home              | 24                       | family              | 22                         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | throws           | invalid  | phone number           | with special character     | personal_information.xlsx | home              | 24                       | family              | 24                         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | throws           | invalid  | phone number           | with digits and character  | personal_information.xlsx | home              | 24                       | family              | 25                         |


  Scenario Outline: ACAUTOCAS-4016:  Number of dependents <reason> sum of child and adult dependents
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_home>" and row <PersonalInfo_home_rowNum>
    And user navigates to applicant details page of "<ApplicationStage>"
    And click on view edit detailed info
    And user fills home page of personal information
    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_family>" and row <PersonalInfo_family_rowNum>
    When user enters dependents, child dependents and adult dependents
    Then number of dependents "<reason>" sum of child and adult dependents
    @Conventional
    @Release @Part-1
    # ${ ProductType : ["PL","HL","AL","EDU","OMNI","CEQ","KCC","AGRL","FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | reason                       | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | PersonalInfo_family | PersonalInfo_family_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | should not be less than      | personal_information.xlsx | home              | 24                       | family              | 26                         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | should be equal to           | personal_information.xlsx | home              | 24                       | family              | 27                         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | should allow to be more than | personal_information.xlsx | home              | 24                       | family              | 28                         |
    @Islamic
    @Release
    @Part-1
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | reason                       | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | PersonalInfo_family | PersonalInfo_family_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | should not be less than      | personal_information.xlsx | home              | 24                       | family              | 26                         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | should be equal to           | personal_information.xlsx | home              | 24                       | family              | 27                         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | should allow to be more than | personal_information.xlsx | home              | 24                       | family              | 28                         |
    @Islamic
    @Release
    @Part-1
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    # ${Category:["bonds"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | key | reason                       | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | PersonalInfo_family | PersonalInfo_family_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | should not be less than      | personal_information.xlsx | home              | 24                       | family              | 26                         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | should be equal to           | personal_information.xlsx | home              | 24                       | family              | 27                         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | should allow to be more than | personal_information.xlsx | home              | 24                       | family              | 28                         |
     # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | reason                       | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | PersonalInfo_family | PersonalInfo_family_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | should not be less than      | personal_information.xlsx | home              | 24                       | family              | 26                         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | should be equal to           | personal_information.xlsx | home              | 24                       | family              | 27                         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | should allow to be more than | personal_information.xlsx | home              | 24                       | family              | 28                         |


  Scenario Outline: ACAUTOCAS-4017:  Family Members age should be calculated as per date of birth
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_home>" and row <PersonalInfo_home_rowNum>
    And user navigates to applicant details page of "<ApplicationStage>"
    And click on view edit detailed info
    And user fills home page of personal information
    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_family>" and row <PersonalInfo_family_rowNum>
    When user enters family members dob
    Then age should be calculated as per dob

    @Conventional
    @Release @Part-1
    # ${ ProductType : ["PL","HL","AL","EDU","OMNI","CEQ","KCC","AGRL","FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | PersonalInfo_family | PersonalInfo_family_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | personal_information.xlsx | home              | 24                       | family              | 1                          |
    @Islamic
    @Release
    @Part-1
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | PersonalInfo_family | PersonalInfo_family_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | personal_information.xlsx | home              | 24                       | family              | 1                          |
    @Islamic
    @Release
    @Part-1
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    # ${Category:["bonds"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | key | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | PersonalInfo_family | PersonalInfo_family_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | personal_information.xlsx | home              | 24                       | family              | 1                          |
     # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | PersonalInfo_family | PersonalInfo_family_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | personal_information.xlsx | home              | 24                       | family              | 1                          |


  Scenario Outline: ACAUTOCAS-4018:  Insert <validity> family member name with <reason>
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_home>" and row <PersonalInfo_home_rowNum>
    And user navigates to applicant details page of "<ApplicationStage>"
    And click on view edit detailed info
    And user fills home page of personal information
    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_family>" and row <PersonalInfo_family_rowNum>
    When user enters <validity> family member name with <reason>
    Then <validity> family member name should <var> with <reason>

    @Conventional
    @Release @Part-1
    # ${ ProductType : ["PL","HL","AL","EDU","OMNI","CEQ","KCC","AGRL","FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | var             | validity | reason       | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | PersonalInfo_family | PersonalInfo_family_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | be inserted     | valid    | space        | personal_information.xlsx | home              | 24                       | family              | 29                         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | not be inserted | invalid  | special char | personal_information.xlsx | home              | 24                       | family              | 30                         |
    @Islamic
    @Release
    @Part-1
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | var             | validity | reason       | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | PersonalInfo_family | PersonalInfo_family_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | be inserted     | valid    | space        | personal_information.xlsx | home              | 24                       | family              | 29                         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | not be inserted | invalid  | special char | personal_information.xlsx | home              | 24                       | family              | 30                         |
    @Islamic
    @Release
    @Part-1
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    # ${Category:["bonds"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | key | var             | validity | reason       | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | PersonalInfo_family | PersonalInfo_family_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | be inserted     | valid    | space        | personal_information.xlsx | home              | 24                       | family              | 29                         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | not be inserted | invalid  | special char | personal_information.xlsx | home              | 24                       | family              | 30                         |
     # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | var             | validity | reason       | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | PersonalInfo_family | PersonalInfo_family_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | be inserted     | valid    | space        | personal_information.xlsx | home              | 24                       | family              | 29                         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | not be inserted | invalid  | special char | personal_information.xlsx | home              | 24                       | family              | 30                         |


  Scenario Outline: ACAUTOCAS-4019:  Is Minor <var> for members age <var2>
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_home>" and row <PersonalInfo_home_rowNum>
    And user navigates to applicant details page of "<ApplicationStage>"
    And click on view edit detailed info
    And user fills home page of personal information
    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_family>" and row <PersonalInfo_family_rowNum>
    When user enters family members dob <var2>
    Then is minor <var> for members age "<var2>"
    @Conventional
    @Release @Part-1
    # ${ ProductType : ["PL","HL","AL","EDU","OMNI","CEQ","KCC","AGRL","FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | var                    | var2         | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | PersonalInfo_family | PersonalInfo_family_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | auto selected          | less than 18 | personal_information.xlsx | home              | 24                       | family              | 1                          |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | should not be selected | more than 18 | personal_information.xlsx | home              | 24                       | family              | 2                          |
    @Islamic
    @Release
    @Part-1
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | var                    | var2         | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | PersonalInfo_family | PersonalInfo_family_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | auto selected          | less than 18 | personal_information.xlsx | home              | 24                       | family              | 1                          |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | should not be selected | more than 18 | personal_information.xlsx | home              | 24                       | family              | 2                          |
    @Islamic
    @Release
    @Part-1
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    # ${Category:["bonds"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | key | var                    | var2         | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | PersonalInfo_family | PersonalInfo_family_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | auto selected          | less than 18 | personal_information.xlsx | home              | 24                       | family              | 1                          |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | should not be selected | more than 18 | personal_information.xlsx | home              | 24                       | family              | 2                          |
     # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | var                    | var2         | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | PersonalInfo_family | PersonalInfo_family_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | auto selected          | less than 18 | personal_information.xlsx | home              | 24                       | family              | 1                          |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | should not be selected | more than 18 | personal_information.xlsx | home              | 24                       | family              | 2                          |




