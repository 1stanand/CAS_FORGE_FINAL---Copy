@Epic-Applicant_Information
@AuthoredBy-vipin.kishor
@ReviewedBy-
@TechReviewedBy-
@AppInfoAdoption
#${ApplicantType:["indiv"]}

Feature:Education Details

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0


  #FeatureID-ACAUTOCAS-157
  @Sanity
  Scenario Outline: ACAUTOCAS-13447: Save personal information detail without adding any row in eduction details at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user open education accordion on the basis of "<ApplicationStage>"
    When user save personal information detail without adding any row in education details
    Then personal information should be saved successfully
    @Release @Part-2
    @Conventional
    @ImplementedBy-rishabh.sachan
    #${ ProductType : ["PF","HL","AL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Category | key |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |


   # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
   # ${ProductType:["IAF","IHF"]}
    @Islamic
    @Release
@Part-2
    @ImplementedBy-vipin.kishor
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Category | key |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |


       # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
      # ${ProductType:["IPF"]}
     #${Category:["bonds"]}
    @Islamic
    @Release
@Part-2
    @ImplementedBy-vipin.kishor
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Category   | key |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     |


     # ${ProductType:["FAS","GL","JLG","SHG"]}
   # ${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
   @NotImplemented
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Category | key |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |




  #SquashiID:02-CAS-59474
  #FeatureID-ACAUTOCAS-157
  @Sanity
  Scenario Outline: ACAUTOCAS-13448: Education details remains non mandatory if <Field> field entered at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user open education accordion on the basis of "<ApplicationStage>"
    And user reads data from the excel file "personal_information.xlsx" under sheet "education" and row 0
    And user fill "<Field>" in education details
    When user save personal information details
    Then personal information should be saved successfully
    @Release @Part-2
    @Conventional
    @ImplementedBy-rishabh.sachan
    #${ ProductType : ["PF","HL","AL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | Field              | ApplicationStage   | ProductType   | ApplicantType   | Category | key |
      | Qualification Type | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Classification     | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Specialization     | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Board/University   | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Year of Passing    | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Is Highest Degree  | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |



    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
   # ${ProductType:["IAF","IHF"]}
    @Islamic
    @Release
@Part-2
    @ImplementedBy-vipin.kishor
    Examples:
      | Field              | ApplicationStage   | ProductType   | ApplicantType   | Category | key |
      | Qualification Type | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Classification     | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Specialization     | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Board/University   | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Year of Passing    | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Is Highest Degree  | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |


       # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
      # ${ProductType:["IPF"]}
     #${Category:["bonds"]}
    @Islamic
    @Release
@Part-2
    @ImplementedBy-vipin.kishor
    Examples:
      | Field              | ApplicationStage | ProductType | ApplicantType | Category | key |
      | Qualification Type | DDE              | IPF         | indiv         | bonds    |     |
      | Classification     | DDE              | IPF         | indiv         | bonds    |     |
      | Specialization     | DDE              | IPF         | indiv         | bonds    |     |
      | Board/University   | DDE              | IPF         | indiv         | bonds    |     |
      | Year of Passing    | DDE              | IPF         | indiv         | bonds    |     |
      | Is Highest Degree  | DDE              | IPF         | indiv         | bonds    |     |


     # ${ProductType:["FAS","GL","JLG","SHG"]}
   # ${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
   @NotImplemented
    Examples:
      | Field              | ApplicationStage   | ProductType   | ApplicantType   | Category | key |
      | Qualification Type | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Classification     | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Specialization     | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Board/University   | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Year of Passing    | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Is Highest Degree  | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |




  #FeatureID-ACAUTOCAS-157
  @Perishable
    @Sanity
  Scenario Outline: ACAUTOCAS-13449: <Save_Next> education details at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user open education accordion on the basis of "<ApplicationStage>"
    And user reads data from the excel file "personal_information.xlsx" under sheet "education" and row 0
    And user enters "all" education details
    And user check for dedupe on personal information
    When user clicks on "<Save_Next>" button on personal information
    Then education details should be "<Save_Next>"
    @Release @Part-2
    @Conventional
    @ImplementedBy-rishabh.sachan
    #${ ProductType : ["PF","HL","AL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | Save_Next   | ProductType   | ApplicationStage   | ApplicantType   | Category | key |
      | Save        | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |
      | Save & Next | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |



    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
   # ${ProductType:["IAF","IHF"]}
    @Islamic
    @Release
@Part-2
    @ImplementedBy-vipin.kishor
    Examples:
      | Save_Next   | ProductType   | ApplicationStage   | ApplicantType   | Category | key |
      | Save        | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |
      | Save & Next | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |


       # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
      # ${ProductType:["IPF"]}
     #${Category:["bonds"]}
    @Islamic
    @Release
@Part-2
    @ImplementedBy-vipin.kishor
    Examples:
      | Save_Next   | ProductType   | ApplicationStage   | ApplicantType   | Category   | key |
      | Save        | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     |
      | Save & Next | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     |


     # ${ProductType:["FAS","GL","JLG","SHG"]}
   # ${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
   @NotImplemented
    Examples:
      | Save_Next   | ProductType   | ApplicationStage   | ApplicantType   | Category | key |
      | Save        | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |
      | Save & Next | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |

