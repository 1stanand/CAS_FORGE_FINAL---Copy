@AuthoredBy-yuvraj.raghuwanshi
@ReviewedBy-Tarun.gupta
@DevTrack
@Epic-KYCInterfaceSherlock
@TechReviewedBy-
@ImplementedBy-
#EpicID-
#StoryID-CAS-239310

@NotImplemented

Feature: Sherlock Interface - UI changes

  Background:   Given user is on the CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0

  @DevTrack
#${ApplicationStage:["KYC",]}
#${ApplicantType:["indiv"]}
#${ProductType:["PF","HL","CON_VEH","MULF","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","CC","LAP","CL"]}

  Scenario Outline: User clicks on the 'Plus' button under applicant information
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    When user clicks on the initiate button of Sherlock interface under KYC checklist
    Then Sherlock Interface should be initiated and response should be received

    Examples:
      |ProductType  |ApplicantType   |ApplicationStage    |Category	|Key	|
      |<ProductType>|<ApplicantType> |<ApplicationStage   |             |	|

  @DevTrack
#${ApplicationStage:["KYC",]}
#${ApplicantType:["indiv"]}
#${ProductType:["PF","HL","CON_VEH","MULF","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","CC","LAP","CL"]}

  Scenario Outline: User clicks on the 'Plus' button under applicant information
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    When user clicks on the initiate button of Sherlock interface under KYC checklist
    Then three buttons will appear "Re Initiate," "Report," and "History"
    Examples:
      |ProductType  |ApplicantType   |ApplicationStage    |Category	|Key	|
      |<ProductType>|<ApplicantType> |<ApplicationStage   |             |	|

  @DevTrack
#${ApplicationStage:["KYC",]}
#${ApplicantType:["indiv"]}
#${ProductType:["PF","HL","CON_VEH","MULF","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","CC","LAP","CL"]}

  Scenario Outline: User clicks on the 'Plus' button under applicant information
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    When user clicks on the initiate button of Sherlock interface under KYC checklist
    And clicks on the report button
    Then user should be able to see the sherlock report
    Examples:
      |ProductType  |ApplicantType   |ApplicationStage    |Category	|Key	|
      |<ProductType>|<ApplicantType> |<ApplicationStage   |             |	|

  @DevTrack
#${ApplicationStage:["KYC",]}
#${ApplicantType:["indiv"]}
#${ProductType:["PF","HL","CON_VEH","MULF","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","CC","LAP","CL"]}

  Scenario Outline: User clicks on the 'Plus' button under applicant information
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    When user clicks on the initiate button of Sherlock interface under KYC checklist
    And clicks on the history button
    Then user should be able to see the previous history data of sherlock interface
    Examples:
      |ProductType  |ApplicantType   |ApplicationStage    |Category	|Key	|
      |<ProductType>|<ApplicantType> |<ApplicationStage   |             |	|

  @DevTrack
#${ApplicationStage:["KYC",]}
#${ApplicantType:["indiv"]}
#${ProductType:["PF","HL","CON_VEH","MULF","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","CC","LAP","CL"]}

  Scenario Outline: User clicks on the 'Plus' button under applicant information
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    When user clicks on the initiate button of Sherlock interface under KYC checklist
    And user clicks on the Re initiate button
    Then user should be able to re initiate the sherlock interface and response should be received
    Examples:
      |ProductType  |ApplicantType   |ApplicationStage    |Category	|Key	|
      |<ProductType>|<ApplicantType> |<ApplicationStage   |             |	|


  @DevTrack
#${ApplicationStage:["KYC",]}
#${ApplicantType:["indiv"]}
#${ProductType:["PF","HL","CON_VEH","MULF","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","CC","LAP","CL"]}

  Scenario Outline: User clicks on the 'Plus' button under applicant information
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    When user clicks on the initiate button of Sherlock interface under KYC checklist
    And user clicks on the Re initiate button
    Then user should be able to re initiate the sherlock interface and response should be received
    Examples:
      |ProductType  |ApplicantType   |ApplicationStage    |Category	|Key	|
      |<ProductType>|<ApplicantType> |<ApplicationStage   |             |	|