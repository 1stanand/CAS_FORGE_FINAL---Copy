@Epic-Applicant_Information
@AuthoredBy-akash.bansal
@Reconciled
    #${ApplicantType:["indiv"]}
Feature: Issue Date and Expiry Date mandatory check

  Scenario Outline: ACAUTOCAS-4028: Issue Date and Expiry Date should be mandatory for "<Identification_Type>"
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user navigates to applicant details page of "<ApplicationStage>"
    And click on view edit detailed info
    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_home>" and row <PersonalInfo_home_rowNum>
    And user fills home page of personal information
    When user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_identification>" and row <PersonalInfo_identification_rowNum>
    And user fills identification section of personal information with "<Identification_Type>"
    Then issue date and expiry date should be mandatory
    @Conventional
    @Release @Part-1
    @ImplementedBy-akash.bansal
    # ${ ProductType : ["PF","HL","AL","IHF","IAF","IPF","EDU","OMNI","CEQ", "KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval"]}
    Examples:
      | Identification_Type | ProductType   | ApplicantType   | ApplicationStage   | Category | key | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | PersonalInfo_identification | PersonalInfo_identification_rowNum |
      | passport            | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | personal_information.xlsx | home              | 1                        | identification              | 39                                 |

     # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
    @NotImplemented
    Examples:
      | Identification_Type | ProductType   | ApplicantType   | ApplicationStage   | Category | key | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | PersonalInfo_identification | PersonalInfo_identification_rowNum |
      | passport            | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | personal_information.xlsx | home              | 1                        | identification              | 39                                 |

