@Epic-Applicant_Information
@AuthoredBy-akash.bansal
@Reconciled
@AppInfoAdoption
            #${ApplicantType:["indiv","nonindiv"]}
Feature: Date Validation in Identification in personal information page without save

  Scenario Outline: ACAUTOCAS-4025:  Entering Passport Details with <Issue_Date> and <Expiry_Date> in personal information page without save
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user navigates to applicant details page of "<ApplicationStage>"
    And click on view edit detailed info
    When user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_identification>" and row <PersonalInfo_identification_rowNum>
    And user enters passport details with "<Issue_Date>" and "<Expiry_Date>"
    Then No error message is displayed in identification
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-utkarsh.tiwari
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category:["bonds"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | key | Issue_Date                        | Expiry_Date                        | PersonalInfoWB            | PersonalInfo_identification | PersonalInfo_identification_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | issue_date_less_than_current_date | correct_expiry_date                | personal_information.xlsx | identification              | 163                                |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | issue_date_less_than_current_date | correct_expiry_date                | personal_information.xlsx | identification              | 163                                |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | correct_issue_date                | expiry_date_more_than_dob          | personal_information.xlsx | identification              | 164                                |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | correct_issue_date                | expiry_date_more_than_current_date | personal_information.xlsx | identification              | 165                                |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | correct_issue_date                | expiry_date_more_than_issue_date   | personal_information.xlsx | identification              | 166                                |

    @Islamic
    @Release
    @Part-1
    @ImplementedBy-utkarsh.tiwari
    #${ProductType:["IHF","IAF]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | Issue_Date                        | Expiry_Date                        | PersonalInfoWB            | PersonalInfo_identification | PersonalInfo_identification_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | issue_date_less_than_current_date | correct_expiry_date                | personal_information.xlsx | identification              | 163                                |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | issue_date_less_than_current_date | correct_expiry_date                | personal_information.xlsx | identification              | 163                                |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | correct_issue_date                | expiry_date_more_than_dob          | personal_information.xlsx | identification              | 164                                |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | correct_issue_date                | expiry_date_more_than_current_date | personal_information.xlsx | identification              | 165                                |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | correct_issue_date                | expiry_date_more_than_issue_date   | personal_information.xlsx | identification              | 166                                |

    @Conventional
    @Release @Part-1
    @ImplementedBy-akash.bansal
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ", "KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
 # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | Issue_Date                        | Expiry_Date                        | PersonalInfoWB            | PersonalInfo_identification | PersonalInfo_identification_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | issue_date_less_than_current_date | correct_expiry_date                | personal_information.xlsx | identification              | 33                                 |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | issue_date_less_than_current_date | correct_expiry_date                | personal_information.xlsx | identification              | 33                                 |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | correct_issue_date                | expiry_date_more_than_dob          | personal_information.xlsx | identification              | 34                                 |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | correct_issue_date                | expiry_date_more_than_current_date | personal_information.xlsx | identification              | 35                                 |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | correct_issue_date                | expiry_date_more_than_issue_date   | personal_information.xlsx | identification              | 36                                 |

    # ${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
    @NotImplemented
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | Issue_Date                        | Expiry_Date                        | PersonalInfoWB            | PersonalInfo_identification | PersonalInfo_identification_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | issue_date_less_than_current_date | correct_expiry_date                | personal_information.xlsx | identification              | 33                                 |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | issue_date_less_than_current_date | correct_expiry_date                | personal_information.xlsx | identification              | 33                                 |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | correct_issue_date                | expiry_date_more_than_dob          | personal_information.xlsx | identification              | 34                                 |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | correct_issue_date                | expiry_date_more_than_current_date | personal_information.xlsx | identification              | 35                                 |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | correct_issue_date                | expiry_date_more_than_issue_date   | personal_information.xlsx | identification              | 36                                 |
