@Epic-Applicant_Information
@AuthoredBy-Anshu.bhaduri
@ReviewedBy-
@TechReviewedBy-
#@Release2
#${Key:["Primary","Coapplicant","Guarantor"]}
# ${ProductType:[ "PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","FE","MHL","CV","CC","LAP","CL"]}
Feature: Applicant Creditor Debtor Details

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
  # ${ApplicationStage:["Lead Details","DDE","Recommendation", "Credit Approval"]}
 #01_CAS-120530,04_CAS-120530,05_CAS-120530,
 # FeatureID-CAS-120530,ACAUTOCAS-4,ACAUTOCAS-8673
  @ImplementedBy-rishabh.garg
    @Conventional @Release @Part-3
    @Release3
  Scenario Outline: ACAUTOCAS-12533: User should be able to verify <CreditorDebtor> under applicant details tab for <ProductType> application at <ApplicationStage> for applicant type as <Key>
    And user opens an application of "<ProductType>" product type as "<applicantType>" applicant at "<ApplicationStage>" for "" with "<Key>" from application grid
    And user opens applicant information page of "<ApplicationStage>"
    And user views and edit applicant details for "<applicantType>" "<Key>" applicant type
    When user navigate to "CreditorDebtor" tab in applicant information
    Then user should see Creditor Debtor Screen with "<CreditorDebtor>" buttons to capture creditor debtor details
    Examples:
      | ProductType   | ApplicationStage   | CreditorDebtor   | Key   | applicantType |
      | <ProductType> | <ApplicationStage> | Add New Creditor | <Key> | nonindiv      |
      | <ProductType> | <ApplicationStage> | Add New Debtor   | <Key> | nonindiv      |

    #Dublicate

#      | <ProductType> | <ApplicationStage> | Add New Creditor   | <Key> |
#      | <ProductType> | <ApplicationStage> | Add New Debtor     | <Key> |
#      | <ProductType> | <ApplicationStage> | Add New Creditor   | <Key> |
#      | <ProductType> | <ApplicationStage> | Add New Debtor     | <Key> |


  # ${ApplicationStage:["Lead Details","DDE","Recommendation", "Credit Approval"]}
 #01_CAS-120530,02_CAS-120530,03_CAS-120530,04_CAS-120530,05_CAS-120530,06_CAS-120530,07_CAS-120530,26_CAS-120530,29_CAS-120530,22_CAS-120530,30_CAS-120530
 # FeatureID-CAS-120530,ACAUTOCAS-4,ACAUTOCAS-8673
  @Sanity
  @ImplementedBy-rishabh.garg
    @Conventional @Release @Part-3
    @Release3
  Scenario Outline: ACAUTOCAS-12534:  Adding a new <CreditorDebtor> Details of <RowNum> dataset on Creditor Debtor Details screen for application of <ProductType> at <ApplicationStage> stage for applicant type as <Key>
    And user opens an application of "<ProductType>" product type as "<applicantType>" applicant at "<ApplicationStage>" for "" with "<Key>" from application grid
    And user opens applicant information page of "<ApplicationStage>"
    And user views and edit applicant details for "<applicantType>" "<Key>" applicant type
    And user navigate to "CreditorDebtor" tab in applicant information
    And user reads data from the excel file "creditor_debtor_details.xlsx" under sheet "<creditor_debtor_fields>" and row <RowNum>
    When user adds a new "<CreditorDebtor>" on creditor debtor screen under applicant details
    Then user should get status for "<CreditorDebtor>" field
    Examples:
      | ProductType   | ApplicationStage   | creditor_debtor_fields | RowNum | CreditorDebtor | Key   | applicantType |
      | <ProductType> | <ApplicationStage> | creditor_fields        | 0      | Creditor       | <Key> | nonindiv      |
      | <ProductType> | <ApplicationStage> | creditor_fields        | 1      | Creditor       | <Key> | nonindiv      |
      | <ProductType> | <ApplicationStage> | creditor_fields        | 2      | Creditor       | <Key> | nonindiv      |
      | <ProductType> | <ApplicationStage> | creditor_fields        | 3      | Creditor       | <Key> | nonindiv      |
      | <ProductType> | <ApplicationStage> | creditor_fields        | 4      | Creditor       | <Key> | nonindiv      |
      | <ProductType> | <ApplicationStage> | creditor_fields        | 5      | Creditor       | <Key> | nonindiv      |
      | <ProductType> | <ApplicationStage> | creditor_fields        | 6      | Creditor       | <Key> | nonindiv      |
      | <ProductType> | <ApplicationStage> | creditor_fields        | 7      | Creditor       | <Key> | nonindiv      |
      | <ProductType> | <ApplicationStage> | creditor_fields        | 8      | Creditor       | <Key> | nonindiv      |
      | <ProductType> | <ApplicationStage> | creditor_fields        | 9      | Creditor       | <Key> | nonindiv      |
      | <ProductType> | <ApplicationStage> | creditor_fields        | 10     | Creditor       | <Key> | nonindiv      |
      | <ProductType> | <ApplicationStage> | creditor_fields        | 11     | Creditor       | <Key> | nonindiv      |
      | <ProductType> | <ApplicationStage> | creditor_fields        | 12     | Creditor       | <Key> | nonindiv      |
      | <ProductType> | <ApplicationStage> | creditor_fields        | 13     | Creditor       | <Key> | nonindiv      |
      | <ProductType> | <ApplicationStage> | creditor_fields        | 14     | Creditor       | <Key> | nonindiv      |
      | <ProductType> | <ApplicationStage> | creditor_fields        | 15     | Creditor       | <Key> | nonindiv      |
      | <ProductType> | <ApplicationStage> | creditor_fields        | 16     | Creditor       | <Key> | nonindiv      |
      | <ProductType> | <ApplicationStage> | creditor_fields        | 17     | Creditor       | <Key> | nonindiv      |
      | <ProductType> | <ApplicationStage> | creditor_fields        | 18     | Creditor       | <Key> | nonindiv      |
      | <ProductType> | <ApplicationStage> | creditor_fields        | 19     | Creditor       | <Key> | nonindiv      |
      | <ProductType> | <ApplicationStage> | creditor_fields        | 20     | Creditor       | <Key> | nonindiv      |
      | <ProductType> | <ApplicationStage> | creditor_fields        | 21     | Creditor       | <Key> | nonindiv      |
      | <ProductType> | <ApplicationStage> | creditor_fields        | 22     | Creditor       | <Key> | nonindiv      |
      | <ProductType> | <ApplicationStage> | creditor_fields        | 23     | Creditor       | <Key> | nonindiv      |
      | <ProductType> | <ApplicationStage> | creditor_fields        | 24     | Creditor       | <Key> | nonindiv      |
      | <ProductType> | <ApplicationStage> | creditor_fields        | 25     | Creditor       | <Key> | nonindiv      |
      | <ProductType> | <ApplicationStage> | creditor_fields        | 26     | Creditor       | <Key> | nonindiv      |
      | <ProductType> | <ApplicationStage> | creditor_fields        | 27     | Creditor       | <Key> | nonindiv      |
      | <ProductType> | <ApplicationStage> | creditor_fields        | 28     | Creditor       | <Key> | nonindiv      |
      | <ProductType> | <ApplicationStage> | creditor_fields        | 29     | Creditor       | <Key> | nonindiv      |
      | <ProductType> | <ApplicationStage> | creditor_fields        | 30     | Creditor       | <Key> | nonindiv      |
      | <ProductType> | <ApplicationStage> | creditor_fields        | 31     | Creditor       | <Key> | nonindiv      |
      | <ProductType> | <ApplicationStage> | creditor_fields        | 32     | Creditor       | <Key> | nonindiv      |
      | <ProductType> | <ApplicationStage> | creditor_fields        | 33     | Creditor       | <Key> | nonindiv      |
      | <ProductType> | <ApplicationStage> | creditor_fields        | 34     | Creditor       | <Key> | nonindiv      |
      | <ProductType> | <ApplicationStage> | creditor_fields        | 35     | Creditor       | <Key> | nonindiv      |
      | <ProductType> | <ApplicationStage> | creditor_fields        | 36     | Creditor       | <Key> | nonindiv      |
      | <ProductType> | <ApplicationStage> | creditor_fields        | 37     | Creditor       | <Key> | nonindiv      |
      | <ProductType> | <ApplicationStage> | creditor_fields        | 38     | Creditor       | <Key> | nonindiv      |
      | <ProductType> | <ApplicationStage> | creditor_fields        | 39     | Creditor       | <Key> | nonindiv      |
      | <ProductType> | <ApplicationStage> | creditor_fields        | 40     | Creditor       | <Key> | nonindiv      |
      | <ProductType> | <ApplicationStage> | creditor_fields        | 41     | Creditor       | <Key> | nonindiv      |
      | <ProductType> | <ApplicationStage> | creditor_fields        | 42     | Creditor       | <Key> | nonindiv      |
      | <ProductType> | <ApplicationStage> | creditor_fields        | 43     | Creditor       | <Key> | nonindiv      |
      | <ProductType> | <ApplicationStage> | creditor_fields        | 44     | Creditor       | <Key> | nonindiv      |
      | <ProductType> | <ApplicationStage> | creditor_fields        | 45     | Creditor       | <Key> | nonindiv      |
      | <ProductType> | <ApplicationStage> | creditor_fields        | 46     | Creditor       | <Key> | nonindiv      |
      | <ProductType> | <ApplicationStage> | creditor_fields        | 47     | Creditor       | <Key> | nonindiv      |
      | <ProductType> | <ApplicationStage> | creditor_fields        | 48     | Creditor       | <Key> | nonindiv      |
      | <ProductType> | <ApplicationStage> | creditor_fields        | 49     | Creditor       | <Key> | nonindiv      |
      | <ProductType> | <ApplicationStage> | debtor_fields          | 0      | Debtor         | <Key> | nonindiv      |
      | <ProductType> | <ApplicationStage> | debtor_fields          | 1      | Debtor         | <Key> | nonindiv      |
      | <ProductType> | <ApplicationStage> | debtor_fields          | 2      | Debtor         | <Key> | nonindiv      |
      | <ProductType> | <ApplicationStage> | debtor_fields          | 3      | Debtor         | <Key> | nonindiv      |
      | <ProductType> | <ApplicationStage> | debtor_fields          | 4      | Debtor         | <Key> | nonindiv      |
      | <ProductType> | <ApplicationStage> | debtor_fields          | 5      | Debtor         | <Key> | nonindiv      |
      | <ProductType> | <ApplicationStage> | debtor_fields          | 6      | Debtor         | <Key> | nonindiv      |
      | <ProductType> | <ApplicationStage> | debtor_fields          | 7      | Debtor         | <Key> | nonindiv      |
      | <ProductType> | <ApplicationStage> | debtor_fields          | 8      | Debtor         | <Key> | nonindiv      |
      | <ProductType> | <ApplicationStage> | debtor_fields          | 9      | Debtor         | <Key> | nonindiv      |
      | <ProductType> | <ApplicationStage> | debtor_fields          | 10     | Debtor         | <Key> | nonindiv      |
      | <ProductType> | <ApplicationStage> | debtor_fields          | 11     | Debtor         | <Key> | nonindiv      |
      | <ProductType> | <ApplicationStage> | debtor_fields          | 12     | Debtor         | <Key> | nonindiv      |
      | <ProductType> | <ApplicationStage> | debtor_fields          | 13     | Debtor         | <Key> | nonindiv      |
      | <ProductType> | <ApplicationStage> | debtor_fields          | 14     | Debtor         | <Key> | nonindiv      |
      | <ProductType> | <ApplicationStage> | debtor_fields          | 15     | Debtor         | <Key> | nonindiv      |
      | <ProductType> | <ApplicationStage> | debtor_fields          | 16     | Debtor         | <Key> | nonindiv      |
      | <ProductType> | <ApplicationStage> | debtor_fields          | 17     | Debtor         | <Key> | nonindiv      |
      | <ProductType> | <ApplicationStage> | debtor_fields          | 18     | Debtor         | <Key> | nonindiv      |
      | <ProductType> | <ApplicationStage> | debtor_fields          | 19     | Debtor         | <Key> | nonindiv      |
      | <ProductType> | <ApplicationStage> | debtor_fields          | 20     | Debtor         | <Key> | nonindiv      |
      | <ProductType> | <ApplicationStage> | debtor_fields          | 21     | Debtor         | <Key> | nonindiv      |
      | <ProductType> | <ApplicationStage> | debtor_fields          | 22     | Debtor         | <Key> | nonindiv      |
      | <ProductType> | <ApplicationStage> | debtor_fields          | 23     | Debtor         | <Key> | nonindiv      |
      | <ProductType> | <ApplicationStage> | debtor_fields          | 24     | Debtor         | <Key> | nonindiv      |
      | <ProductType> | <ApplicationStage> | debtor_fields          | 25     | Debtor         | <Key> | nonindiv      |
      | <ProductType> | <ApplicationStage> | debtor_fields          | 26     | Debtor         | <Key> | nonindiv      |
      | <ProductType> | <ApplicationStage> | debtor_fields          | 27     | Debtor         | <Key> | nonindiv      |
      | <ProductType> | <ApplicationStage> | debtor_fields          | 28     | Debtor         | <Key> | nonindiv      |
      | <ProductType> | <ApplicationStage> | debtor_fields          | 29     | Debtor         | <Key> | nonindiv      |
      | <ProductType> | <ApplicationStage> | debtor_fields          | 30     | Debtor         | <Key> | nonindiv      |
      | <ProductType> | <ApplicationStage> | debtor_fields          | 31     | Debtor         | <Key> | nonindiv      |
      | <ProductType> | <ApplicationStage> | debtor_fields          | 32     | Debtor         | <Key> | nonindiv      |
      | <ProductType> | <ApplicationStage> | debtor_fields          | 33     | Debtor         | <Key> | nonindiv      |
      | <ProductType> | <ApplicationStage> | debtor_fields          | 34     | Debtor         | <Key> | nonindiv      |
      | <ProductType> | <ApplicationStage> | debtor_fields          | 35     | Debtor         | <Key> | nonindiv      |
      | <ProductType> | <ApplicationStage> | debtor_fields          | 36     | Debtor         | <Key> | nonindiv      |
      | <ProductType> | <ApplicationStage> | debtor_fields          | 37     | Debtor         | <Key> | nonindiv      |
      | <ProductType> | <ApplicationStage> | debtor_fields          | 38     | Debtor         | <Key> | nonindiv      |
      | <ProductType> | <ApplicationStage> | debtor_fields          | 39     | Debtor         | <Key> | nonindiv      |
      | <ProductType> | <ApplicationStage> | debtor_fields          | 40     | Debtor         | <Key> | nonindiv      |
      | <ProductType> | <ApplicationStage> | debtor_fields          | 41     | Debtor         | <Key> | nonindiv      |
      | <ProductType> | <ApplicationStage> | debtor_fields          | 42     | Debtor         | <Key> | nonindiv      |
      | <ProductType> | <ApplicationStage> | debtor_fields          | 43     | Debtor         | <Key> | nonindiv      |
      | <ProductType> | <ApplicationStage> | debtor_fields          | 44     | Debtor         | <Key> | nonindiv      |
      | <ProductType> | <ApplicationStage> | debtor_fields          | 45     | Debtor         | <Key> | nonindiv      |
      | <ProductType> | <ApplicationStage> | debtor_fields          | 46     | Debtor         | <Key> | nonindiv      |
      | <ProductType> | <ApplicationStage> | debtor_fields          | 47     | Debtor         | <Key> | nonindiv      |
      | <ProductType> | <ApplicationStage> | debtor_fields          | 48     | Debtor         | <Key> | nonindiv      |
      | <ProductType> | <ApplicationStage> | debtor_fields          | 49     | Debtor         | <Key> | nonindiv      |

    # ${ApplicationStage:["Lead Details","DDE","Recommendation", "Credit Approval"]}
  #13_CAS-120530,14_CAS-120530
 # FeatureID-CAS-120530,ACAUTOCAS-4,ACAUTOCAS-8673
  @ImplementedBy-rishabh.garg
    @Conventional @Release @Part-3
    @Release3
  Scenario Outline: ACAUTOCAS-12535:  <CreditorDebtor> Details created of <SingleMultiple> type should be visible in grid outside the modal window for an application of <ProductType> at <ApplicationStage> stage with applicant type as <Key>
    And user opens an application of "<ProductType>" product type as "<applicantType>" applicant at "<ApplicationStage>" for "" with "<Key>" from application grid
    And user opens applicant information page of "<ApplicationStage>"
    And user views and edit applicant details for "<applicantType>" "<Key>" applicant type
    And user navigate to "CreditorDebtor" tab in applicant information
    And user deletes all existing "<CreditorDebtor>" list in applicant information
    And user reads data from the excel file "creditor_debtor_details.xlsx" under sheet "<creditor_debtor_fields>" and row <RowNum>
    When user adds "<SingleMultiple>" "<CreditorDebtor>" details
    Then user should be able to view captured details in different "<CreditorDebtor>" sections in "<SingleMultiple>" grid
    Examples:
      | ProductType   | ApplicationStage   | CreditorDebtor | SingleMultiple | Key   | applicantType | creditor_debtor_fields | RowNum |
      | <ProductType> | <ApplicationStage> | Creditor       | Single         | <Key> | nonindiv      | creditor_fields        | 0      |
      | <ProductType> | <ApplicationStage> | Debtor         | Single         | <Key> | nonindiv      | debtor_fields          | 0      |
      | <ProductType> | <ApplicationStage> | Creditor       | Multiple       | <Key> | nonindiv      | creditor_fields        | 0      |
      | <ProductType> | <ApplicationStage> | Debtor         | Multiple       | <Key> | nonindiv      | debtor_fields          | 0      |


    # ${ApplicationStage:["Lead Details","DDE","Recommendation", "Credit Approval"]}
 #01_CAS-120530,02_CAS-120530,03_CAS-120530,04_CAS-120530,05_CAS-120530,06_CAS-120530,07_CAS-120530,26_CAS-120530,29_CAS-120530,22_CAS-120530,30_CAS-120530
 # FeatureID-CAS-120530,ACAUTOCAS-4,ACAUTOCAS-8673
  @ImplementedBy-rishabh.garg
    @Conventional @Release @Part-3
    @Release3
  Scenario Outline: ACAUTOCAS-12536:  User should be able to edit the <CreditorDebtor> Details of <RowNum> dataset on Creditor Debtor Details screen for application of <ProductType> at <ApplicationStage> stage for applicant type as <Key>
    And user opens an application of "<ProductType>" product type as "<applicantType>" applicant at "<ApplicationStage>" for "" with "<Key>" from application grid
    And user opens applicant information page of "<ApplicationStage>"
    And user views and edit applicant details for "<applicantType>" "<Key>" applicant type
    And user navigate to "CreditorDebtor" tab in applicant information
    And user reads data from the excel file "creditor_debtor_details.xlsx" under sheet "<creditor_debtor_fields>" and row 25
    When user adds a new "<CreditorDebtor>" on creditor debtor screen under applicant details
    And user reads data from the excel file "creditor_debtor_details.xlsx" under sheet "<creditor_debtor_fields>" and row <RowNum>
    And user edits the "<CreditorDebtor>" added on creditor debtor screen under applicant details
    Then user should get status for "<CreditorDebtor>" field
    Examples:
      | ProductType   | ApplicationStage   | creditor_debtor_fields | RowNum | CreditorDebtor | Key   | applicantType |
      | <ProductType> | <ApplicationStage> | creditor_fields        | 0      | Creditor       | <Key> | nonindiv      |
      | <ProductType> | <ApplicationStage> | creditor_fields        | 1      | Creditor       | <Key> | nonindiv      |
      | <ProductType> | <ApplicationStage> | creditor_fields        | 2      | Creditor       | <Key> | nonindiv      |
      | <ProductType> | <ApplicationStage> | creditor_fields        | 3      | Creditor       | <Key> | nonindiv      |
      | <ProductType> | <ApplicationStage> | creditor_fields        | 4      | Creditor       | <Key> | nonindiv      |
      | <ProductType> | <ApplicationStage> | creditor_fields        | 5      | Creditor       | <Key> | nonindiv      |
      | <ProductType> | <ApplicationStage> | creditor_fields        | 6      | Creditor       | <Key> | nonindiv      |
      | <ProductType> | <ApplicationStage> | creditor_fields        | 7      | Creditor       | <Key> | nonindiv      |
      | <ProductType> | <ApplicationStage> | creditor_fields        | 8      | Creditor       | <Key> | nonindiv      |
      | <ProductType> | <ApplicationStage> | creditor_fields        | 9      | Creditor       | <Key> | nonindiv      |
      | <ProductType> | <ApplicationStage> | creditor_fields        | 10     | Creditor       | <Key> | nonindiv      |
      | <ProductType> | <ApplicationStage> | creditor_fields        | 11     | Creditor       | <Key> | nonindiv      |
      | <ProductType> | <ApplicationStage> | creditor_fields        | 12     | Creditor       | <Key> | nonindiv      |
      | <ProductType> | <ApplicationStage> | creditor_fields        | 13     | Creditor       | <Key> | nonindiv      |
      | <ProductType> | <ApplicationStage> | creditor_fields        | 14     | Creditor       | <Key> | nonindiv      |
      | <ProductType> | <ApplicationStage> | creditor_fields        | 15     | Creditor       | <Key> | nonindiv      |
      | <ProductType> | <ApplicationStage> | creditor_fields        | 16     | Creditor       | <Key> | nonindiv      |
      | <ProductType> | <ApplicationStage> | creditor_fields        | 17     | Creditor       | <Key> | nonindiv      |
      | <ProductType> | <ApplicationStage> | creditor_fields        | 18     | Creditor       | <Key> | nonindiv      |
      | <ProductType> | <ApplicationStage> | creditor_fields        | 19     | Creditor       | <Key> | nonindiv      |
      | <ProductType> | <ApplicationStage> | creditor_fields        | 20     | Creditor       | <Key> | nonindiv      |
      | <ProductType> | <ApplicationStage> | creditor_fields        | 21     | Creditor       | <Key> | nonindiv      |
      | <ProductType> | <ApplicationStage> | creditor_fields        | 22     | Creditor       | <Key> | nonindiv      |
      | <ProductType> | <ApplicationStage> | creditor_fields        | 23     | Creditor       | <Key> | nonindiv      |
      | <ProductType> | <ApplicationStage> | creditor_fields        | 24     | Creditor       | <Key> | nonindiv      |
      | <ProductType> | <ApplicationStage> | creditor_fields        | 25     | Creditor       | <Key> | nonindiv      |
      | <ProductType> | <ApplicationStage> | creditor_fields        | 26     | Creditor       | <Key> | nonindiv      |
      | <ProductType> | <ApplicationStage> | creditor_fields        | 27     | Creditor       | <Key> | nonindiv      |
      | <ProductType> | <ApplicationStage> | creditor_fields        | 28     | Creditor       | <Key> | nonindiv      |
      | <ProductType> | <ApplicationStage> | creditor_fields        | 29     | Creditor       | <Key> | nonindiv      |
      | <ProductType> | <ApplicationStage> | creditor_fields        | 30     | Creditor       | <Key> | nonindiv      |
      | <ProductType> | <ApplicationStage> | creditor_fields        | 31     | Creditor       | <Key> | nonindiv      |
      | <ProductType> | <ApplicationStage> | creditor_fields        | 32     | Creditor       | <Key> | nonindiv      |
      | <ProductType> | <ApplicationStage> | creditor_fields        | 33     | Creditor       | <Key> | nonindiv      |
      | <ProductType> | <ApplicationStage> | creditor_fields        | 34     | Creditor       | <Key> | nonindiv      |
      | <ProductType> | <ApplicationStage> | creditor_fields        | 35     | Creditor       | <Key> | nonindiv      |
      | <ProductType> | <ApplicationStage> | creditor_fields        | 36     | Creditor       | <Key> | nonindiv      |
      | <ProductType> | <ApplicationStage> | creditor_fields        | 37     | Creditor       | <Key> | nonindiv      |
      | <ProductType> | <ApplicationStage> | creditor_fields        | 38     | Creditor       | <Key> | nonindiv      |
      | <ProductType> | <ApplicationStage> | creditor_fields        | 39     | Creditor       | <Key> | nonindiv      |
      | <ProductType> | <ApplicationStage> | creditor_fields        | 40     | Creditor       | <Key> | nonindiv      |
      | <ProductType> | <ApplicationStage> | creditor_fields        | 41     | Creditor       | <Key> | nonindiv      |
      | <ProductType> | <ApplicationStage> | creditor_fields        | 42     | Creditor       | <Key> | nonindiv      |
      | <ProductType> | <ApplicationStage> | creditor_fields        | 43     | Creditor       | <Key> | nonindiv      |
      | <ProductType> | <ApplicationStage> | creditor_fields        | 44     | Creditor       | <Key> | nonindiv      |
      | <ProductType> | <ApplicationStage> | creditor_fields        | 45     | Creditor       | <Key> | nonindiv      |
      | <ProductType> | <ApplicationStage> | creditor_fields        | 46     | Creditor       | <Key> | nonindiv      |
      | <ProductType> | <ApplicationStage> | creditor_fields        | 47     | Creditor       | <Key> | nonindiv      |
      | <ProductType> | <ApplicationStage> | creditor_fields        | 48     | Creditor       | <Key> | nonindiv      |
      | <ProductType> | <ApplicationStage> | creditor_fields        | 49     | Creditor       | <Key> | nonindiv      |
      | <ProductType> | <ApplicationStage> | debtor_fields          | 0      | Debtor         | <Key> | nonindiv      |
      | <ProductType> | <ApplicationStage> | debtor_fields          | 1      | Debtor         | <Key> | nonindiv      |
      | <ProductType> | <ApplicationStage> | debtor_fields          | 2      | Debtor         | <Key> | nonindiv      |
      | <ProductType> | <ApplicationStage> | debtor_fields          | 3      | Debtor         | <Key> | nonindiv      |
      | <ProductType> | <ApplicationStage> | debtor_fields          | 4      | Debtor         | <Key> | nonindiv      |
      | <ProductType> | <ApplicationStage> | debtor_fields          | 5      | Debtor         | <Key> | nonindiv      |
      | <ProductType> | <ApplicationStage> | debtor_fields          | 6      | Debtor         | <Key> | nonindiv      |
      | <ProductType> | <ApplicationStage> | debtor_fields          | 7      | Debtor         | <Key> | nonindiv      |
      | <ProductType> | <ApplicationStage> | debtor_fields          | 8      | Debtor         | <Key> | nonindiv      |
      | <ProductType> | <ApplicationStage> | debtor_fields          | 9      | Debtor         | <Key> | nonindiv      |
      | <ProductType> | <ApplicationStage> | debtor_fields          | 10     | Debtor         | <Key> | nonindiv      |
      | <ProductType> | <ApplicationStage> | debtor_fields          | 11     | Debtor         | <Key> | nonindiv      |
      | <ProductType> | <ApplicationStage> | debtor_fields          | 12     | Debtor         | <Key> | nonindiv      |
      | <ProductType> | <ApplicationStage> | debtor_fields          | 13     | Debtor         | <Key> | nonindiv      |
      | <ProductType> | <ApplicationStage> | debtor_fields          | 14     | Debtor         | <Key> | nonindiv      |
      | <ProductType> | <ApplicationStage> | debtor_fields          | 15     | Debtor         | <Key> | nonindiv      |
      | <ProductType> | <ApplicationStage> | debtor_fields          | 16     | Debtor         | <Key> | nonindiv      |
      | <ProductType> | <ApplicationStage> | debtor_fields          | 17     | Debtor         | <Key> | nonindiv      |
      | <ProductType> | <ApplicationStage> | debtor_fields          | 18     | Debtor         | <Key> | nonindiv      |
      | <ProductType> | <ApplicationStage> | debtor_fields          | 19     | Debtor         | <Key> | nonindiv      |
      | <ProductType> | <ApplicationStage> | debtor_fields          | 20     | Debtor         | <Key> | nonindiv      |
      | <ProductType> | <ApplicationStage> | debtor_fields          | 21     | Debtor         | <Key> | nonindiv      |
      | <ProductType> | <ApplicationStage> | debtor_fields          | 22     | Debtor         | <Key> | nonindiv      |
      | <ProductType> | <ApplicationStage> | debtor_fields          | 23     | Debtor         | <Key> | nonindiv      |
      | <ProductType> | <ApplicationStage> | debtor_fields          | 24     | Debtor         | <Key> | nonindiv      |
      | <ProductType> | <ApplicationStage> | debtor_fields          | 25     | Debtor         | <Key> | nonindiv      |
      | <ProductType> | <ApplicationStage> | debtor_fields          | 26     | Debtor         | <Key> | nonindiv      |
      | <ProductType> | <ApplicationStage> | debtor_fields          | 27     | Debtor         | <Key> | nonindiv      |
      | <ProductType> | <ApplicationStage> | debtor_fields          | 28     | Debtor         | <Key> | nonindiv      |
      | <ProductType> | <ApplicationStage> | debtor_fields          | 29     | Debtor         | <Key> | nonindiv      |
      | <ProductType> | <ApplicationStage> | debtor_fields          | 30     | Debtor         | <Key> | nonindiv      |
      | <ProductType> | <ApplicationStage> | debtor_fields          | 31     | Debtor         | <Key> | nonindiv      |
      | <ProductType> | <ApplicationStage> | debtor_fields          | 32     | Debtor         | <Key> | nonindiv      |
      | <ProductType> | <ApplicationStage> | debtor_fields          | 33     | Debtor         | <Key> | nonindiv      |
      | <ProductType> | <ApplicationStage> | debtor_fields          | 34     | Debtor         | <Key> | nonindiv      |
      | <ProductType> | <ApplicationStage> | debtor_fields          | 35     | Debtor         | <Key> | nonindiv      |
      | <ProductType> | <ApplicationStage> | debtor_fields          | 36     | Debtor         | <Key> | nonindiv      |
      | <ProductType> | <ApplicationStage> | debtor_fields          | 37     | Debtor         | <Key> | nonindiv      |
      | <ProductType> | <ApplicationStage> | debtor_fields          | 38     | Debtor         | <Key> | nonindiv      |
      | <ProductType> | <ApplicationStage> | debtor_fields          | 39     | Debtor         | <Key> | nonindiv      |
      | <ProductType> | <ApplicationStage> | debtor_fields          | 40     | Debtor         | <Key> | nonindiv      |
      | <ProductType> | <ApplicationStage> | debtor_fields          | 41     | Debtor         | <Key> | nonindiv      |
      | <ProductType> | <ApplicationStage> | debtor_fields          | 42     | Debtor         | <Key> | nonindiv      |
      | <ProductType> | <ApplicationStage> | debtor_fields          | 43     | Debtor         | <Key> | nonindiv      |
      | <ProductType> | <ApplicationStage> | debtor_fields          | 44     | Debtor         | <Key> | nonindiv      |
      | <ProductType> | <ApplicationStage> | debtor_fields          | 45     | Debtor         | <Key> | nonindiv      |
      | <ProductType> | <ApplicationStage> | debtor_fields          | 46     | Debtor         | <Key> | nonindiv      |
      | <ProductType> | <ApplicationStage> | debtor_fields          | 47     | Debtor         | <Key> | nonindiv      |
      | <ProductType> | <ApplicationStage> | debtor_fields          | 48     | Debtor         | <Key> | nonindiv      |
      | <ProductType> | <ApplicationStage> | debtor_fields          | 49     | Debtor         | <Key> | nonindiv      |


  # ${ApplicationStage:["Lead Details","DDE","Recommendation", "Credit Approval"]}
  #01_CAS-120530,02_CAS-120530,03_CAS-120530,04_CAS-120530,05_CAS-120530,06_CAS-120530,07_CAS-120530,26_CAS-120530,29_CAS-120530,22_CAS-120530,30_CAS-120530
  # FeatureID-CAS-120530,ACAUTOCAS-4,ACAUTOCAS-8673
  @ImplementedBy-rishabh.garg
    @Sanity
    @Conventional @Release @Part-3
    @Release3
  Scenario Outline: ACAUTOCAS-12537:  User should be able to <save_savenext> <Total_Yearly_Purchase_Sale> Details of <RowNum> dataset on <CreditorDebtor> Details screen for application of <ProductType> at <ApplicationStage> stage for applicant type as <Key>
    And user opens an application of "<ProductType>" product type as "<applicantType>" applicant at "<ApplicationStage>" for "" with "<Key>" from application grid
    And user opens applicant information page of "<ApplicationStage>"
    And user views and edit applicant details for "<applicantType>" "<Key>" applicant type
    And user navigate to "CreditorDebtor" tab in applicant information
    And user deletes all existing "<CreditorDebtor>" list in applicant information
    And user reads data from the excel file "creditor_debtor_details.xlsx" under sheet "<creditor_debtor_fields>" and row <RowNum>
    And user adds a new "<CreditorDebtor>" on creditor debtor screen under applicant details
    When user fills "<Total_Yearly_Purchase_Sale>" on creditor debtor screen under applicant details
    And user clicks on "<save_savenext>" button to save the record on creditor debtor screen
    Then user should get status for "<Total_Yearly_Purchase_Sale>" field
    Examples:
      | ProductType   | ApplicationStage   | Total_Yearly_Purchase_Sale | CreditorDebtor | creditor_debtor_fields | save_savenext | RowNum | Key   | applicantType |
      | <ProductType> | <ApplicationStage> | Add Total Yearly Purchase  | Creditor       | creditor_fields        | Save          | 50     | <Key> | nonindiv      |
      | <ProductType> | <ApplicationStage> | Add Total Yearly Purchase  | Creditor       | creditor_fields        | Save          | 51     | <Key> | nonindiv      |
      | <ProductType> | <ApplicationStage> | Add Total Yearly Purchase  | Creditor       | creditor_fields        | Save          | 52     | <Key> | nonindiv      |
      | <ProductType> | <ApplicationStage> | Add Total Yearly Purchase  | Creditor       | creditor_fields        | Save          | 53     | <Key> | nonindiv      |
      | <ProductType> | <ApplicationStage> | Add Total Yearly Purchase  | Creditor       | creditor_fields        | Save          | 54     | <Key> | nonindiv      |
      | <ProductType> | <ApplicationStage> | Add Total Yearly Purchase  | Creditor       | creditor_fields        | Save          | 55     | <Key> | nonindiv      |
      | <ProductType> | <ApplicationStage> | Add Total Yearly Purchase  | Creditor       | creditor_fields        | Save          | 56     | <Key> | nonindiv      |
      | <ProductType> | <ApplicationStage> | Add Total Yearly Purchase  | Creditor       | creditor_fields        | Save          | 57     | <Key> | nonindiv      |
      | <ProductType> | <ApplicationStage> | Add Total Yearly Purchase  | Creditor       | creditor_fields        | Save          | 58     | <Key> | nonindiv      |
      | <ProductType> | <ApplicationStage> | Add Total Yearly Purchase  | Creditor       | creditor_fields        | Save          | 59     | <Key> | nonindiv      |
      | <ProductType> | <ApplicationStage> | Add Total Yearly Purchase  | Creditor       | creditor_fields        | Save          | 60     | <Key> | nonindiv      |
      | <ProductType> | <ApplicationStage> | Add Total Yearly Purchase  | Creditor       | creditor_fields        | Save          | 61     | <Key> | nonindiv      |
      | <ProductType> | <ApplicationStage> | Add Total Yearly Purchase  | Creditor       | creditor_fields        | Save          | 62     | <Key> | nonindiv      |
      | <ProductType> | <ApplicationStage> | Add Total Yearly Purchase  | Creditor       | creditor_fields        | Save & Next   | 50     | <Key> | nonindiv      |
      | <ProductType> | <ApplicationStage> | Add Total Yearly Purchase  | Creditor       | creditor_fields        | Save & Next   | 51     | <Key> | nonindiv      |
      | <ProductType> | <ApplicationStage> | Add Total Yearly Purchase  | Creditor       | creditor_fields        | Save & Next   | 52     | <Key> | nonindiv      |
      | <ProductType> | <ApplicationStage> | Add Total Yearly Purchase  | Creditor       | creditor_fields        | Save & Next   | 53     | <Key> | nonindiv      |
      | <ProductType> | <ApplicationStage> | Add Total Yearly Purchase  | Creditor       | creditor_fields        | Save & Next   | 54     | <Key> | nonindiv      |
      | <ProductType> | <ApplicationStage> | Add Total Yearly Purchase  | Creditor       | creditor_fields        | Save & Next   | 55     | <Key> | nonindiv      |
      | <ProductType> | <ApplicationStage> | Add Total Yearly Purchase  | Creditor       | creditor_fields        | Save & Next   | 56     | <Key> | nonindiv      |
      | <ProductType> | <ApplicationStage> | Add Total Yearly Purchase  | Creditor       | creditor_fields        | Save & Next   | 57     | <Key> | nonindiv      |
      | <ProductType> | <ApplicationStage> | Add Total Yearly Purchase  | Creditor       | creditor_fields        | Save & Next   | 58     | <Key> | nonindiv      |
      | <ProductType> | <ApplicationStage> | Add Total Yearly Purchase  | Creditor       | creditor_fields        | Save & Next   | 59     | <Key> | nonindiv      |
      | <ProductType> | <ApplicationStage> | Add Total Yearly Purchase  | Creditor       | creditor_fields        | Save & Next   | 60     | <Key> | nonindiv      |
      | <ProductType> | <ApplicationStage> | Add Total Yearly Purchase  | Creditor       | creditor_fields        | Save & Next   | 61     | <Key> | nonindiv      |
      | <ProductType> | <ApplicationStage> | Edit Total Yearly Purchase | Creditor       | creditor_fields        | Save          | 50     | <Key> | nonindiv      |
      | <ProductType> | <ApplicationStage> | Edit Total Yearly Purchase | Creditor       | creditor_fields        | Save          | 51     | <Key> | nonindiv      |
      | <ProductType> | <ApplicationStage> | Edit Total Yearly Purchase | Creditor       | creditor_fields        | Save          | 52     | <Key> | nonindiv      |
      | <ProductType> | <ApplicationStage> | Edit Total Yearly Purchase | Creditor       | creditor_fields        | Save          | 53     | <Key> | nonindiv      |
      | <ProductType> | <ApplicationStage> | Edit Total Yearly Purchase | Creditor       | creditor_fields        | Save          | 54     | <Key> | nonindiv      |
      | <ProductType> | <ApplicationStage> | Edit Total Yearly Purchase | Creditor       | creditor_fields        | Save          | 55     | <Key> | nonindiv      |
      | <ProductType> | <ApplicationStage> | Edit Total Yearly Purchase | Creditor       | creditor_fields        | Save          | 56     | <Key> | nonindiv      |
      | <ProductType> | <ApplicationStage> | Edit Total Yearly Purchase | Creditor       | creditor_fields        | Save          | 57     | <Key> | nonindiv      |
      | <ProductType> | <ApplicationStage> | Edit Total Yearly Purchase | Creditor       | creditor_fields        | Save          | 58     | <Key> | nonindiv      |
      | <ProductType> | <ApplicationStage> | Edit Total Yearly Purchase | Creditor       | creditor_fields        | Save          | 59     | <Key> | nonindiv      |
      | <ProductType> | <ApplicationStage> | Edit Total Yearly Purchase | Creditor       | creditor_fields        | Save          | 60     | <Key> | nonindiv      |
      | <ProductType> | <ApplicationStage> | Edit Total Yearly Purchase | Creditor       | creditor_fields        | Save          | 61     | <Key> | nonindiv      |
      | <ProductType> | <ApplicationStage> | Edit Total Yearly Purchase | Creditor       | creditor_fields        | Save          | 62     | <Key> | nonindiv      |
      | <ProductType> | <ApplicationStage> | Edit Total Yearly Purchase | Creditor       | creditor_fields        | Save & Next   | 50     | <Key> | nonindiv      |
      | <ProductType> | <ApplicationStage> | Edit Total Yearly Purchase | Creditor       | creditor_fields        | Save & Next   | 51     | <Key> | nonindiv      |
      | <ProductType> | <ApplicationStage> | Edit Total Yearly Purchase | Creditor       | creditor_fields        | Save & Next   | 52     | <Key> | nonindiv      |
      | <ProductType> | <ApplicationStage> | Edit Total Yearly Purchase | Creditor       | creditor_fields        | Save & Next   | 53     | <Key> | nonindiv      |
      | <ProductType> | <ApplicationStage> | Edit Total Yearly Purchase | Creditor       | creditor_fields        | Save & Next   | 54     | <Key> | nonindiv      |
      | <ProductType> | <ApplicationStage> | Edit Total Yearly Purchase | Creditor       | creditor_fields        | Save & Next   | 55     | <Key> | nonindiv      |
      | <ProductType> | <ApplicationStage> | Edit Total Yearly Purchase | Creditor       | creditor_fields        | Save & Next   | 56     | <Key> | nonindiv      |
      | <ProductType> | <ApplicationStage> | Edit Total Yearly Purchase | Creditor       | creditor_fields        | Save & Next   | 57     | <Key> | nonindiv      |
      | <ProductType> | <ApplicationStage> | Edit Total Yearly Purchase | Creditor       | creditor_fields        | Save & Next   | 58     | <Key> | nonindiv      |
      | <ProductType> | <ApplicationStage> | Edit Total Yearly Purchase | Creditor       | creditor_fields        | Save & Next   | 59     | <Key> | nonindiv      |
      | <ProductType> | <ApplicationStage> | Edit Total Yearly Purchase | Creditor       | creditor_fields        | Save & Next   | 60     | <Key> | nonindiv      |
      | <ProductType> | <ApplicationStage> | Edit Total Yearly Purchase | Creditor       | creditor_fields        | Save & Next   | 61     | <Key> | nonindiv      |
      | <ProductType> | <ApplicationStage> | Edit Total Yearly Purchase | Creditor       | creditor_fields        | Save & Next   | 62     | <Key> | nonindiv      |
      | <ProductType> | <ApplicationStage> | Add Total Yearly Sales     | Debtor         | debtor_fields          | Save          | 50     | <Key> | nonindiv      |
      | <ProductType> | <ApplicationStage> | Add Total Yearly Sales     | Debtor         | debtor_fields          | Save          | 51     | <Key> | nonindiv      |
      | <ProductType> | <ApplicationStage> | Add Total Yearly Sales     | Debtor         | debtor_fields          | Save          | 52     | <Key> | nonindiv      |
      | <ProductType> | <ApplicationStage> | Add Total Yearly Sales     | Debtor         | debtor_fields          | Save          | 53     | <Key> | nonindiv      |
      | <ProductType> | <ApplicationStage> | Add Total Yearly Sales     | Debtor         | debtor_fields          | Save          | 54     | <Key> | nonindiv      |
      | <ProductType> | <ApplicationStage> | Add Total Yearly Sales     | Debtor         | debtor_fields          | Save          | 55     | <Key> | nonindiv      |
      | <ProductType> | <ApplicationStage> | Add Total Yearly Sales     | Debtor         | debtor_fields          | Save          | 56     | <Key> | nonindiv      |
      | <ProductType> | <ApplicationStage> | Add Total Yearly Sales     | Debtor         | debtor_fields          | Save          | 57     | <Key> | nonindiv      |
      | <ProductType> | <ApplicationStage> | Add Total Yearly Sales     | Debtor         | debtor_fields          | Save          | 58     | <Key> | nonindiv      |
      | <ProductType> | <ApplicationStage> | Add Total Yearly Sales     | Debtor         | debtor_fields          | Save          | 59     | <Key> | nonindiv      |
      | <ProductType> | <ApplicationStage> | Add Total Yearly Sales     | Debtor         | debtor_fields          | Save          | 60     | <Key> | nonindiv      |
      | <ProductType> | <ApplicationStage> | Add Total Yearly Sales     | Debtor         | debtor_fields          | Save          | 61     | <Key> | nonindiv      |
      | <ProductType> | <ApplicationStage> | Add Total Yearly Sales     | Debtor         | debtor_fields          | Save          | 62     | <Key> | nonindiv      |
      | <ProductType> | <ApplicationStage> | Add Total Yearly Sales     | Debtor         | debtor_fields          | Save & Next   | 50     | <Key> | nonindiv      |
      | <ProductType> | <ApplicationStage> | Add Total Yearly Sales     | Debtor         | debtor_fields          | Save & Next   | 51     | <Key> | nonindiv      |
      | <ProductType> | <ApplicationStage> | Add Total Yearly Sales     | Debtor         | debtor_fields          | Save & Next   | 52     | <Key> | nonindiv      |
      | <ProductType> | <ApplicationStage> | Add Total Yearly Sales     | Debtor         | debtor_fields          | Save & Next   | 53     | <Key> | nonindiv      |
      | <ProductType> | <ApplicationStage> | Add Total Yearly Sales     | Debtor         | debtor_fields          | Save & Next   | 54     | <Key> | nonindiv      |
      | <ProductType> | <ApplicationStage> | Add Total Yearly Sales     | Debtor         | debtor_fields          | Save & Next   | 55     | <Key> | nonindiv      |
      | <ProductType> | <ApplicationStage> | Add Total Yearly Sales     | Debtor         | debtor_fields          | Save & Next   | 56     | <Key> | nonindiv      |
      | <ProductType> | <ApplicationStage> | Add Total Yearly Sales     | Debtor         | debtor_fields          | Save & Next   | 57     | <Key> | nonindiv      |
      | <ProductType> | <ApplicationStage> | Add Total Yearly Sales     | Debtor         | debtor_fields          | Save & Next   | 58     | <Key> | nonindiv      |
      | <ProductType> | <ApplicationStage> | Add Total Yearly Sales     | Debtor         | debtor_fields          | Save & Next   | 59     | <Key> | nonindiv      |
      | <ProductType> | <ApplicationStage> | Add Total Yearly Sales     | Debtor         | debtor_fields          | Save & Next   | 60     | <Key> | nonindiv      |
      | <ProductType> | <ApplicationStage> | Add Total Yearly Sales     | Debtor         | debtor_fields          | Save & Next   | 61     | <Key> | nonindiv      |
      | <ProductType> | <ApplicationStage> | Add Total Yearly Sales     | Debtor         | debtor_fields          | Save & Next   | 62     | <Key> | nonindiv      |
      | <ProductType> | <ApplicationStage> | Edit Total Yearly Sales    | Debtor         | debtor_fields          | Save          | 50     | <Key> | nonindiv      |
      | <ProductType> | <ApplicationStage> | Edit Total Yearly Sales    | Debtor         | debtor_fields          | Save          | 51     | <Key> | nonindiv      |
      | <ProductType> | <ApplicationStage> | Edit Total Yearly Sales    | Debtor         | debtor_fields          | Save          | 52     | <Key> | nonindiv      |
      | <ProductType> | <ApplicationStage> | Edit Total Yearly Sales    | Debtor         | debtor_fields          | Save          | 53     | <Key> | nonindiv      |
      | <ProductType> | <ApplicationStage> | Edit Total Yearly Sales    | Debtor         | debtor_fields          | Save          | 54     | <Key> | nonindiv      |
      | <ProductType> | <ApplicationStage> | Edit Total Yearly Sales    | Debtor         | debtor_fields          | Save          | 55     | <Key> | nonindiv      |
      | <ProductType> | <ApplicationStage> | Edit Total Yearly Sales    | Debtor         | debtor_fields          | Save          | 56     | <Key> | nonindiv      |
      | <ProductType> | <ApplicationStage> | Edit Total Yearly Sales    | Debtor         | debtor_fields          | Save          | 57     | <Key> | nonindiv      |
      | <ProductType> | <ApplicationStage> | Edit Total Yearly Sales    | Debtor         | debtor_fields          | Save          | 58     | <Key> | nonindiv      |
      | <ProductType> | <ApplicationStage> | Edit Total Yearly Sales    | Debtor         | debtor_fields          | Save          | 59     | <Key> | nonindiv      |
      | <ProductType> | <ApplicationStage> | Edit Total Yearly Sales    | Debtor         | debtor_fields          | Save          | 60     | <Key> | nonindiv      |
      | <ProductType> | <ApplicationStage> | Edit Total Yearly Sales    | Debtor         | debtor_fields          | Save          | 61     | <Key> | nonindiv      |
      | <ProductType> | <ApplicationStage> | Edit Total Yearly Sales    | Debtor         | debtor_fields          | Save          | 62     | <Key> | nonindiv      |
      | <ProductType> | <ApplicationStage> | Edit Total Yearly Sales    | Debtor         | debtor_fields          | Save & Next   | 50     | <Key> | nonindiv      |
      | <ProductType> | <ApplicationStage> | Edit Total Yearly Sales    | Debtor         | debtor_fields          | Save & Next   | 51     | <Key> | nonindiv      |
      | <ProductType> | <ApplicationStage> | Edit Total Yearly Sales    | Debtor         | debtor_fields          | Save & Next   | 52     | <Key> | nonindiv      |
      | <ProductType> | <ApplicationStage> | Edit Total Yearly Sales    | Debtor         | debtor_fields          | Save & Next   | 53     | <Key> | nonindiv      |
      | <ProductType> | <ApplicationStage> | Edit Total Yearly Sales    | Debtor         | debtor_fields          | Save & Next   | 54     | <Key> | nonindiv      |
      | <ProductType> | <ApplicationStage> | Edit Total Yearly Sales    | Debtor         | debtor_fields          | Save & Next   | 55     | <Key> | nonindiv      |
      | <ProductType> | <ApplicationStage> | Edit Total Yearly Sales    | Debtor         | debtor_fields          | Save & Next   | 56     | <Key> | nonindiv      |
      | <ProductType> | <ApplicationStage> | Edit Total Yearly Sales    | Debtor         | debtor_fields          | Save & Next   | 57     | <Key> | nonindiv      |
      | <ProductType> | <ApplicationStage> | Edit Total Yearly Sales    | Debtor         | debtor_fields          | Save & Next   | 58     | <Key> | nonindiv      |
      | <ProductType> | <ApplicationStage> | Edit Total Yearly Sales    | Debtor         | debtor_fields          | Save & Next   | 59     | <Key> | nonindiv      |
      | <ProductType> | <ApplicationStage> | Edit Total Yearly Sales    | Debtor         | debtor_fields          | Save & Next   | 60     | <Key> | nonindiv      |
      | <ProductType> | <ApplicationStage> | Edit Total Yearly Sales    | Debtor         | debtor_fields          | Save & Next   | 61     | <Key> | nonindiv      |
      | <ProductType> | <ApplicationStage> | Edit Total Yearly Sales    | Debtor         | debtor_fields          | Save & Next   | 62     | <Key> | nonindiv      |

        # ${ApplicationStage:["Lead Details","DDE","Recommendation", "Credit Approval"]}
  #08_CAS-120530,09_CAS-120530
 # FeatureID-CAS-120530,ACAUTOCAS-4,ACAUTOCAS-8673
  @ImplementedBy-rishabh.garg
    @Sanity
    @Conventional @Release @Part-3
    @Release3
  Scenario Outline: ACAUTOCAS-12538:  Address Accordian on <CreditorDebtor> Details screen should be <mand_monMand> once <expand_unexpand> for an application of <ProductType> at <ApplicationStage> stage with applicant type as <Key>
    And user opens an application of "<ProductType>" product type as "<applicantType>" applicant at "<ApplicationStage>" for "" with "<Key>" from application grid
    And user opens applicant information page of "<ApplicationStage>"
    And user views and edit applicant details for "<applicantType>" "<Key>" applicant type
    And user navigate to "CreditorDebtor" tab in applicant information
    And user reads data from the excel file "creditor_debtor_details.xlsx" under sheet "<creditor_debtor_fields>" and row <RowNum>
    When user opens the "<CreditorDebtor>" modal with "<expand_unexpand>" address accordian
    And user clicks on "<save_savenext>" button to save the record on "<CreditorDebtor>" screen
    Then Address Accordion on Creditor Debtor Details screen should be "<mand_monMand>" once "<expand_unexpand>"
    Examples:
      | ProductType   | ApplicationStage   | CreditorDebtor | mand_monMand  | expand_unexpand | Key   | applicantType | creditor_debtor_fields | RowNum | save_savenext |
      | <ProductType> | <ApplicationStage> | Creditor       | mandatory     | expanded        | <Key> | nonindiv      | creditor_fields        | 0      | done          |
      | <ProductType> | <ApplicationStage> | Creditor       | non mandatory | not expanded    | <Key> | nonindiv      | creditor_fields        | 0      | save          |
      | <ProductType> | <ApplicationStage> | Debtor         | mandatory     | expanded        | <Key> | nonindiv      | debtor_fields          | 0      | done          |
      | <ProductType> | <ApplicationStage> | Debtor         | non mandatory | not expanded    | <Key> | nonindiv      | debtor_fields          | 0      | save          |
      | <ProductType> | <ApplicationStage> | Creditor       | non mandatory | not expanded    | <Key> | nonindiv      | creditor_fields        | 0      | Save & Next   |
      | <ProductType> | <ApplicationStage> | Debtor         | non mandatory | not expanded    | <Key> | nonindiv      | debtor_fields          | 0      | Save & Next   |


          # ${ApplicationStage:["Lead Details","DDE","Recommendation", "Credit Approval"]}
  #11_CAS-120530,12_CAS-120530
 # FeatureID-CAS-120530,ACAUTOCAS-4,ACAUTOCAS-8673
  @ImplementedBy-rishabh.garg
    @Conventional @Release @Part-3
    @Release3
  Scenario Outline: ACAUTOCAS-12539:  User should be able to create multiple <CreditorDebtor> on Creditor Debtor Details screen for an application of <ProductType> at <ApplicationStage> stage with applicant type as <Key>
    And user opens an application of "<ProductType>" product type as "<applicantType>" applicant at "<ApplicationStage>" for "" with "<Key>" from application grid
    And user opens applicant information page of "<ApplicationStage>"
    And user views and edit applicant details for "<applicantType>" "<Key>" applicant type
    And user navigate to "CreditorDebtor" tab in applicant information
    And user deletes all existing "<CreditorDebtor>" list in applicant information
    And user reads data from the excel file "creditor_debtor_details.xlsx" under sheet "<creditor_debtor_fields>" and row <RowNum>
    When user adds "multiple" "<CreditorDebtor>" details
    Then user should be able to view multiple "<CreditorDebtor>" details
    Examples:
      | ProductType   | ApplicationStage   | CreditorDebtor | Key   | applicantType | creditor_debtor_fields | RowNum |
      | <ProductType> | <ApplicationStage> | Creditor       | <Key> | nonindiv      | creditor_fields        | 0      |
      | <ProductType> | <ApplicationStage> | Debtor         | <Key> | nonindiv      | debtor_fields          | 0      |


  # ${ApplicationStage:["Lead Details","DDE","Recommendation", "Credit Approval"]}
  # 11_CAS-120530,12_CAS-120530
  # FeatureID-CAS-120530,ACAUTOCAS-4,ACAUTOCAS-8673
  @ImplementedBy-rishabh.garg
    @Conventional @Release @Part-3
    @Release3
  Scenario Outline: ACAUTOCAS-12540:  User should be able to mark multiple <CreditorDebtor> as <Major_Minor> on Creditor Debtor Details screen for an application of <ProductType> at <ApplicationStage> stage with applicant type as <Key>
    And user opens an application of "<ProductType>" product type as "<applicantType>" applicant at "<ApplicationStage>" for "" with "<Key>" from application grid
    And user opens applicant information page of "<ApplicationStage>"
    And user views and edit applicant details for "<applicantType>" "<Key>" applicant type
    And user navigate to "CreditorDebtor" tab in applicant information
    And user deletes all existing "<CreditorDebtor>" list in applicant information
    And user reads data from the excel file "creditor_debtor_details.xlsx" under sheet "<creditor_debtor_fields>" and row <RowNum>
    When user adds "multiple" "<CreditorDebtor>" details
    Then user should be able to view multiple "<CreditorDebtor>" details
    Examples:
      | ProductType   | ApplicationStage   | CreditorDebtor | Major_Minor | Key   | applicantType | creditor_debtor_fields | RowNum |
      | <ProductType> | <ApplicationStage> | Creditor       | Major       | <Key> | nonindiv      | creditor_fields        | 0      |
      | <ProductType> | <ApplicationStage> | Creditor       | Minor       | <Key> | nonindiv      | creditor_fields        | 25     |
      | <ProductType> | <ApplicationStage> | Debtor         | Major       | <Key> | nonindiv      | debtor_fields          | 0      |
      | <ProductType> | <ApplicationStage> | Debtor         | Minor       | <Key> | nonindiv      | debtor_fields          | 25     |


      # ${ApplicationStage:["Lead Details","DDE","Recommendation", "Credit Approval"]}
  # 16_CAS-120530
  # FeatureID-CAS-120530,ACAUTOCAS-4,ACAUTOCAS-8673
  @ImplementedBy-rishabh.garg
    @Conventional @Release @Part-3
    @Release3
  Scenario Outline: ACAUTOCAS-12541:  User should be able to sort multiple <CreditorDebtor> records in grid outside the modal window on Creditor Debtor Details screen for an application of <ProductType> at <ApplicationStage> stage with applicant type as <Key>
    And user opens an application of "<ProductType>" product type as "<applicantType>" applicant at "<ApplicationStage>" for "" with "<Key>" from application grid
    And user opens applicant information page of "<ApplicationStage>"
    And user views and edit applicant details for "<applicantType>" "<Key>" applicant type
    And user navigate to "CreditorDebtor" tab in applicant information
    And user reads data from the excel file "creditor_debtor_details.xlsx" under sheet "<creditor_debtor_fields>" and row <RowNum>
    When user adds "multiple" "<CreditorDebtor>" details
    And user clicks on "<columns>" header in grid for "<CreditorDebtor>"
    Then User should be able to sort multiple "<CreditorDebtor>" records on basis of "<columns>" header in grid on Creditor Debtor Details screen
    Examples:
      | ProductType   | ApplicationStage   | CreditorDebtor | columns                         | Key   | applicantType | creditor_debtor_fields | RowNum |
      | <ProductType> | <ApplicationStage> | Creditor       | Creditor Name                   | <Key> | nonindiv      | creditor_fields        | 0      |
      | <ProductType> | <ApplicationStage> | Creditor       | Creditor Days                   | <Key> | nonindiv      | creditor_fields        | 0      |
      | <ProductType> | <ApplicationStage> | Creditor       | Yearly Purchase                 | <Key> | nonindiv      | creditor_fields        | 0      |
      | <ProductType> | <ApplicationStage> | Creditor       | Amount O/S as per Creditor Days | <Key> | nonindiv      | creditor_fields        | 0      |
      | <ProductType> | <ApplicationStage> | Debtor         | Debtor Name                     | <Key> | nonindiv      | debtor_fields          | 0      |
      | <ProductType> | <ApplicationStage> | Debtor         | Debtor Days                     | <Key> | nonindiv      | debtor_fields          | 0      |
      | <ProductType> | <ApplicationStage> | Debtor         | Yearly Sales                    | <Key> | nonindiv      | debtor_fields          | 0      |
      | <ProductType> | <ApplicationStage> | Debtor         | Amount O/S as per Debtor Days   | <Key> | nonindiv      | debtor_fields          | 0      |


##scenario outline and then changed by anshu on 25-Jul-24 as per story where latest record is coming in ascending order
      # ${ApplicationStage:["Lead Details","DDE","Recommendation", "Credit Approval"]}
  # 19_CAS-120530,CAS-127887
  # FeatureID-CAS-120530,ACAUTOCAS-4,ACAUTOCAS-8673,CAS-127887
  @ImplementedBy-rishabh.garg
    @Conventional @Release @Part-3
    @Release3
  Scenario Outline: ACAUTOCAS-13893: User should be able to verify that Latest created record for <CreditorDebtor> should appear in grid in ascending order for an application of <ProductType> at <ApplicationStage> stage with applicant type as <Key>
    And user opens an application of "<ProductType>" product type as "<applicantType>" applicant at "<ApplicationStage>" for "" with "<Key>" from application grid
    And user opens applicant information page of "<ApplicationStage>"
    And user views and edit applicant details for "<applicantType>" "<Key>" applicant type
    And user navigate to "CreditorDebtor" tab in applicant information
    And user reads data from the excel file "creditor_debtor_details.xlsx" under sheet "<creditor_debtor_fields>" and row 0
    And user adds a new "<CreditorDebtor>" on creditor debtor screen under applicant details
    And user reads data from the excel file "creditor_debtor_details.xlsx" under sheet "<creditor_debtor_fields>" and row 63
    When user adds a new "<CreditorDebtor>" on creditor debtor screen under applicant details
    Then User should be able to verify that Latest created record for "<CreditorDebtor>" should appear in grid in ascending order on Creditor Debtor Details screen
    Examples:
      | ProductType   | ApplicationStage   | CreditorDebtor | Key   | applicantType | creditor_debtor_fields |
      | <ProductType> | <ApplicationStage> | Creditor       | <Key> | nonindiv      | creditor_fields        |
      | <ProductType> | <ApplicationStage> | Debtor         | <Key> | nonindiv      | debtor_fields          |


    # ${ApplicationStage:["Lead Details","DDE","Recommendation", "Credit Approval"]}
  # Additional
  # FeatureID-CAS-120530,ACAUTOCAS-4,ACAUTOCAS-8673
  @ImplementedBy-rishabh.garg
    @Conventional @Release @Part-3
    @Release3
  Scenario Outline: ACAUTOCAS-12542:  User should be able to validate <Total_Purchase_Sales> for <CreditorDebtor> on Creditor Debtor Details screen on <save_savenext> for an application of <ProductType> at <ApplicationStage> stage with applicant type as <Key>
    And user opens an application of "<ProductType>" product type as "<applicantType>" applicant at "<ApplicationStage>" for "" with "<Key>" from application grid
    And user opens applicant information page of "<ApplicationStage>"
    And user views and edit applicant details for "<applicantType>" "<Key>" applicant type
    And user navigate to "CreditorDebtor" tab in applicant information
    And user deletes all existing "<CreditorDebtor>" list in applicant information
    And user reads data from the excel file "creditor_debtor_details.xlsx" under sheet "<creditor_debtor_fields>" and row <RowNum>
    And user adds "multiple" "<CreditorDebtor>" details
    When user enters total value in "<Total_Purchase_Sales>" as less than sum of "<Yearly_purchase>" for all "<CreditorDebtor>" available in grid
    And user clicks on "<save_savenext>" button to save the record on creditor debtor screen
    Then User should get proper error message on "<CreditorDebtor>" Details screen
#    #Erorr -Total Yearly Purchase should not be less than sum of Creditors Yearly Purchase
    Examples:
      | ProductType   | ApplicationStage   | CreditorDebtor | Total_Purchase_Sales  | Yearly_purchase | Key   | applicantType | save_savenext | creditor_debtor_fields | RowNum |
      | <ProductType> | <ApplicationStage> | Creditor       | Total Yearly Purchase | Yearly Purchase | <Key> | nonindiv      | Save          | creditor_fields        | 25     |
      | <ProductType> | <ApplicationStage> | Debtor         | Total Yearly Sales    | Yearly Sales    | <Key> | nonindiv      | Save          | debtor_fields          | 25     |
      | <ProductType> | <ApplicationStage> | Creditor       | Total Yearly Purchase | Yearly Purchase | <Key> | nonindiv      | Save & Next   | creditor_fields        | 25     |
      | <ProductType> | <ApplicationStage> | Debtor         | Total Yearly Sales    | Yearly Sales    | <Key> | nonindiv      | Save & Next   | debtor_fields          | 25     |


  # ${ApplicationStage:["Lead Details","DDE","Recommendation", "Credit Approval"]}
  # Additional
  # FeatureID-CAS-120530,CAS-127637,ACAUTOCAS-4,ACAUTOCAS-8673
  @ImplementedBy-rishabh.garg
    @Conventional @Release @Part-3
    @Release3
  Scenario Outline: ACAUTOCAS-12543:  User should not be able to save the record while viewing <CreditorDebtor> details on Creditor Debtor Details screen for an application of <ProductType> at <ApplicationStage> stage with applicant type as <Key>
    And user opens an application of "<ProductType>" product type as "<applicantType>" applicant at "<ApplicationStage>" for "" with "<Key>" from application grid
    And user opens applicant information page of "<ApplicationStage>"
    And user views and edit applicant details for "<applicantType>" "<Key>" applicant type
    And user navigate to "CreditorDebtor" tab in applicant information
    And user reads data from the excel file "creditor_debtor_details.xlsx" under sheet "<creditor_debtor_fields>" and row 0
    And user adds a new "<CreditorDebtor>" on creditor debtor screen under applicant details
    When user view "<CreditorDebtor>" record available in grid
    Then User should not be able to save the record while viewing "<CreditorDebtor>" details
    Examples:
      | ProductType   | ApplicationStage   | CreditorDebtor | Key   | creditor_debtor_fields | applicantType |
      | <ProductType> | <ApplicationStage> | Creditor       | <Key> | creditor_fields        | nonindiv      |
      | <ProductType> | <ApplicationStage> | Debtor         | <Key> | debtor_fields          | nonindiv      |


  # ${ApplicationStage:["Lead Details","DDE","Recommendation", "Credit Approval"]}
  # Additional
  # FeatureID-CAS-120530,ACAUTOCAS-4,ACAUTOCAS-8673
  @ImplementedBy-rishabh.garg
    @Conventional @Release @Part-3
    @Release3
  Scenario Outline: ACAUTOCAS-12544:  User should be able to view all required fields on UI while adding <CreditorDebtor> details for an application of <ProductType> at <ApplicationStage> stage with applicant type as <Key>
    And user opens an application of "<ProductType>" product type as "<applicantType>" applicant at "<ApplicationStage>" for "" with "<Key>" from application grid
    And user opens applicant information page of "<ApplicationStage>"
    And user views and edit applicant details for "<applicantType>" "<Key>" applicant type
    And user navigate to "CreditorDebtor" tab in applicant information
    When user navigates to add "<CreditorDebtor>" record on modal window
    And user selects required option on modal window while creating "<CreditorDebtor>"
    Then User should be able to view all required fields on UI while adding "<CreditorDebtor>" with Address details on Creditor Debtor Details screen
    Examples:
      | ProductType   | ApplicationStage   | CreditorDebtor | Key   | applicantType |
      | <ProductType> | <ApplicationStage> | Creditor       | <Key> | nonindiv      |
      | <ProductType> | <ApplicationStage> | Debtor         | <Key> | nonindiv      |


  # ${ApplicationStage:["Lead Details","DDE","Recommendation", "Credit Approval"]}
  # 31_CAS-120530
  # FeatureID-CAS-120530,ACAUTOCAS-4,ACAUTOCAS-8673
  @ImplementedBy-rishabh.garg
    @Conventional @Release @Part-3
    @Release3
  Scenario Outline: ACAUTOCAS-12545:  User should get Confirmation message before finally deleting the <CreditorDebtor> record from grid on Creditor Debtor Details screen for an application of <ProductType> at <ApplicationStage> stage with applicant type as <Key>
    And user opens an application of "<ProductType>" product type as "<applicantType>" applicant at "<ApplicationStage>" for "" with "<Key>" from application grid
    And user opens applicant information page of "<ApplicationStage>"
    And user views and edit applicant details for "<applicantType>" "<Key>" applicant type
    And user navigate to "CreditorDebtor" tab in applicant information
    And user reads data from the excel file "creditor_debtor_details.xlsx" under sheet "<creditor_debtor_fields>" and row 0
    And user adds a new "<CreditorDebtor>" on creditor debtor screen under applicant details
    When user deletes last "<CreditorDebtor>" record available in grid
    Then Confirmation message should come before finally deleting the creditor debtor record from grid
    Examples:
      | ProductType   | ApplicationStage   | CreditorDebtor | Key   | creditor_debtor_fields | applicantType |
      | <ProductType> | <ApplicationStage> | Creditor       | <Key> | creditor_fields        | nonindiv      |
      | <ProductType> | <ApplicationStage> | Debtor         | <Key> | debtor_fields          | nonindiv      |


    # ${ApplicationStage:["Lead Details","DDE","Recommendation", "Credit Approval"]}
  # 32_CAS-120530
  # FeatureID-CAS-120530,CAS-127637,ACAUTOCAS-4,ACAUTOCAS-8673
  @ImplementedBy-rishabh.garg
    @Conventional @Release @Part-3
    @Release3
  Scenario Outline: ACAUTOCAS-12546:  User should be able to view Address details in disabled mode for <CreditorDebtor> details on Creditor Debtor Details screen for an application of <ProductType> at <ApplicationStage> stage with applicant type as <Key>
    And user opens an application of "<ProductType>" product type as "<applicantType>" applicant at "<ApplicationStage>" for "" with "<Key>" from application grid
    And user opens applicant information page of "<ApplicationStage>"
    And user views and edit applicant details for "<applicantType>" "<Key>" applicant type
    And user navigate to "CreditorDebtor" tab in applicant information
    And user reads data from the excel file "creditor_debtor_details.xlsx" under sheet "<creditor_debtor_fields>" and row 0
    And user adds a new "<CreditorDebtor>" on creditor debtor screen under applicant details
    When user view "<CreditorDebtor>" record available in grid
    And user expands the Address section for "<CreditorDebtor>"
    Then User should be able to view already entered address data in disabled mode
    Examples:
      | ProductType   | ApplicationStage   | CreditorDebtor | Key   | creditor_debtor_fields | applicantType |
      | <ProductType> | <ApplicationStage> | Creditor       | <Key> | creditor_fields        | nonindiv      |
      | <ProductType> | <ApplicationStage> | Debtor         | <Key> | debtor_fields          | nonindiv      |


  # ${ApplicationStage:["Post Approval","Tranche Initiation","Tranche Approval","App Update Recommendation","App Update Approval","Sent to Ops"]}
  # 23_CAS-120530,27_CAS-120530
  # FeatureID-CAS-120530,CAS-127637,ACAUTOCAS-4,ACAUTOCAS-8673
  @OnHold
  Scenario Outline: ACAUTOCAS-12547:  User should be able to view <CreditorDebtor> details on Creditor Debtor Details screen for an application of <ProductType> at <ApplicationStage> stage with applicant type as <Key>
    And Loan application is at "<ApplicationStage>" stage for application of "<ProductType>" with applicant type as "<Key>"
    And user already captured multiple "<CreditorDebtor>" with all details
    When user verifies "<CreditorDebtor>" records available in grid at "<ApplicationStage>" stage
    Then User should be able to only view already entered "<CreditorDebtor>" records
    Examples:
      | ProductType   | ApplicationStage   | CreditorDebtor |
      | <ProductType> | <ApplicationStage> | Creditor       |
      | <ProductType> | <ApplicationStage> | Debtor         |


  # ${ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval","Reconsideration","Post Approval","Tranche Initiation","App Update Recommendation","Sent to Ops"]}
  # 21_CAS-120530
  # FeatureID-CAS-120530,ACAUTOCAS-4,ACAUTOCAS-8673
  @OnHold
  Scenario Outline: ACAUTOCAS-12548:  User should be able to view "<CreditorDebtor>" details on Creditor Debtor Details of Enquiry Screen for an application of "<ProductType>" at "<Subseq_stage>" stage with applicant type as "<Key>"
    And Loan application is at "<ApplicationStage>" stage for application of "<ProductType>" with applicant type as "<Key>"
    And user already captured multiple "<CreditorDebtor>" with all details at "<ApplicationStage>" stage
    #And user selects Loan application at "<Var_Stage>" Stage
    #And user selects document status as "<doc_status>"
    When user moves to next stage "<Subseq_stage>"
    And user navigates to Enquiry Screen to verify "<CreditorDebtor>" details present
    Then user should be able to verify that "<CreditorDebtor>" details should be present in view mode only
    Examples:
      | ProductType   | ApplicationStage   | CreditorDebtor | Subseq_stage        |
      #| <ProductType> | <ApplicationStage> | Creditor      | Lead Details        |
      | <ProductType> | <ApplicationStage> | Creditor       | Login Acceptance    |
      | <ProductType> | <ApplicationStage> | Creditor       | DDE                 |
      | <ProductType> | <ApplicationStage> | Creditor       | Recommendation      |
      | <ProductType> | <ApplicationStage> | Creditor       | Credit Approval     |
      | <ProductType> | <ApplicationStage> | Creditor       | Reconsideration     |
      | <ProductType> | <ApplicationStage> | Creditor       | Post Approval       |
      | <ProductType> | <ApplicationStage> | Creditor       | Tranche Approval    |
      | <ProductType> | <ApplicationStage> | Creditor       | App Update Approval |
      #| <ProductType> | <ApplicationStage> | Debtor        | Lead Details        |
      | <ProductType> | <ApplicationStage> | Debtor         | Login Acceptance    |
      | <ProductType> | <ApplicationStage> | Debtor         | DDE                 |
      | <ProductType> | <ApplicationStage> | Debtor         | Recommendation      |
      | <ProductType> | <ApplicationStage> | Debtor         | Credit Approval     |
      | <ProductType> | <ApplicationStage> | Debtor         | Reconsideration     |
      | <ProductType> | <ApplicationStage> | Debtor         | Post Approval       |
      | <ProductType> | <ApplicationStage> | Debtor         | Tranche Approval    |
      | <ProductType> | <ApplicationStage> | Debtor         | App Update Approval |

  # ${ApplicationStage:["Lead Details","DDE","Recommendation", "Credit Approval"]}
  # 20_CAS-120530
  # FeatureID-CAS-120530,ACAUTOCAS-4,ACAUTOCAS-8673
  @ImplementedBy-rishabh.garg
    @Conventional @Release @Part-3
    @Release3
    @LoggedBug
  Scenario Outline: ACAUTOCAS-12549:  User should be able to view screens traversed by user in user activity section for <CreditorDebtor> details for an application of <ProductType> at <ApplicationStage> stage with applicant type as <Key>
    And user opens an application of "<ProductType>" product type as "<applicantType>" applicant at "<ApplicationStage>" for "" with "<Key>" from application grid
    And user opens applicant information page of "<ApplicationStage>"
    And user views and edit applicant details for "<applicantType>" "<Key>" applicant type
    And user navigate to "CreditorDebtor" tab in applicant information
    And user reads data from the excel file "<creditor_debtorWB>" under sheet "<creditor_debtor_fields>" and row <RowNum>
    And user adds a new "<CreditorDebtor>" on creditor debtor screen under applicant details
    When user navigates to userid drop down in right corner to select User Activity option
    And user selects screen traversed value from drop down to verify creditor debtor screen is traversed
    Then User should be able to view screens traversed so far by user which should have "<CreditorDebtor>" screen refernce also
    Examples:
      | ProductType   | ApplicationStage   | CreditorDebtor | Key   | creditor_debtor_fields | RowNum | creditor_debtorWB            | applicantType |
      | <ProductType> | <ApplicationStage> | Creditor       | <Key> | creditor_fields        | 0      | creditor_debtor_details.xlsx | nonindiv      |
      | <ProductType> | <ApplicationStage> | Debtor         | <Key> | debtor_fields          | 0      | creditor_debtor_details.xlsx | nonindiv      |


#  Config disabled - checkbox on - non financials fields editable
#                  - checkbox off - no fields editable
#  Config enabled - checkbox on - all fields editable
#                  -checkbox off - no fields editable
    # ${ApplicationStage:["Reconsideration"]}
  # 23_CAS-120530
  # FeatureID-CAS-120530,ACAUTOCAS-4,ACAUTOCAS-8673,ACAUTOCAS-8673
  Scenario Outline: ACAUTOCAS-12550:  User should be able to view <CreditorDebtor> details for an application at <ApplicationStage> stage of <ProductType> with applicant type as <Key>
    And user opens an application of "<ProductType>" product type as "<applicantType>" applicant at "<ApplicationStage>" for "" with "<Key>" from application grid
    And user opens applicant information page of "<ApplicationStage>"
    And user views and edit applicant details for "<applicantType>" "<Key>" applicant type
    And user navigate to "CreditorDebtor" tab in applicant information
    And user reads data from the excel file "creditor_debtor_details.xlsx" under sheet "<creditor_debtor_fields>" and row 25
    And user adds "multiple" "<CreditorDebtor>" details
    When user navigates to reconsideration Screen
    And user "<check_uncheck>" update details
    And user opens applicant information page of "<ApplicationStage>"
    And user views and edit applicant details for "<applicantType>" "<Key>" applicant type
    And user navigate to "CreditorDebtor" tab in applicant information
    Then User should be able to "<view_edit>" "<CreditorDebtor>" details
    @ImplementedBy-rishabh.garg
    @Conventional @Release @Part-3
    @Release3
    Examples:
      | ProductType   | ApplicationStage   | CreditorDebtor | Key   | check_uncheck | view_edit | config | applicantType | creditor_debtor_fields |
      | <ProductType> | <ApplicationStage> | Creditor       | <Key> | check         | edit      | On     | nonindiv      | creditor_fields        |
      | <ProductType> | <ApplicationStage> | Debtor         | <Key> | check         | edit      | On     | nonindiv      | debtor_fields          |
      | <ProductType> | <ApplicationStage> | Creditor       | <Key> | unchecks      | view      | On     | nonindiv      | creditor_fields        |
      | <ProductType> | <ApplicationStage> | Debtor         | <Key> | unchecks      | view      | On     | nonindiv      | debtor_fields          |
    @NotImplementable
    Examples:
      | ProductType   | ApplicationStage   | CreditorDebtor | Key   | check_uncheck | view_edit | config | applicantType | creditor_debtor_fields |
      | <ProductType> | <ApplicationStage> | Creditor       | <Key> | check         | edit      | Off    | nonindiv      | creditor_fields        |
      | <ProductType> | <ApplicationStage> | Debtor         | <Key> | check         | edit      | Off    | nonindiv      | debtor_fields          |
      | <ProductType> | <ApplicationStage> | Creditor       | <Key> | unchecks      | view      | Off    | nonindiv      | creditor_fields        |
      | <ProductType> | <ApplicationStage> | Debtor         | <Key> | unchecks      | view      | Off    | nonindiv      | debtor_fields          |


  ## ${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration","Post Approval","Tranche Initiation","App Update Recommendation","Sent to Ops"]}
  # Additional
  # FeatureID-CAS-120530,ACAUTOCAS-4,ACAUTOCAS-8673
  @ImplementedBy-rishabh.garg
  @Conventional @Release @Part-3
  @Release3
  Scenario Outline: ACAUTOCAS-12551:  User should be able to verify <CreditorDebtor> details on Creditor Debtor Screen for an application of <ProductType> at <SendBack_stage> stage with applicant type as <Key>
    And user opens an application of "<ProductType>" product type as "nonindiv" applicant at "<ApplicationStage>" from application grid
    And user opens applicant information page of "<ApplicationStage>"
    And user views and edit applicant details for "nonindiv" "" applicant type
    And user navigate to "CreditorDebtor" tab in applicant information
    And user deletes all existing "<CreditorDebtor>" list in applicant information
    And user reads data from the excel file "creditor_debtor_details.xlsx" under sheet "<creditor_debtor_fields>" and row <RowNum>
    And user adds "Single" "<CreditorDebtor>" details
    And user reads data from the excel file "more_actions.xlsx" under sheet "send_back" and row <send_back_RowNum>
    And user send back above application to "<SendBack_stage>" stage
    And user opens an application of "<ProductType>" product type as "nonindiv" applicant at "<SendBack_stage>" from application grid
    And user opens applicant information page of "<SendBack_stage>"
    And user views and edit applicant details for "nonindiv" "" applicant type
    When user navigate to "CreditorDebtor" tab in applicant information
    And user reads data from the excel file "creditor_debtor_details.xlsx" under sheet "<creditor_debtor_fields>" and row <RowNum>
    Then user should be able to verify that "<CreditorDebtor>" details should be present at sent back stage
    Examples:
      | ProductType   | ApplicationStage | CreditorDebtor | SendBack_stage | creditor_debtor_fields | RowNum | send_back_RowNum |
      | <ProductType> | DDE              | Creditor       | Lead Details   | creditor_fields        | 0      | 3                |
      | <ProductType> | Recommendation   | Creditor       | Lead Details   | creditor_fields        | 0      | 3                |
      | <ProductType> | Credit Approval  | Creditor       | Lead Details   | creditor_fields        | 0      | 3                |
      | <ProductType> | DDE              | Debtor         | Lead Details   | debtor_fields          | 0      | 3                |
      | <ProductType> | Recommendation   | Debtor         | DDE            | debtor_fields          | 0      | 7                |
      | <ProductType> | Credit Approval  | Debtor         | Lead Details   | debtor_fields          | 0      | 3                |


#  Calculations logic:
#  Yearly Purchase/Sell-10000
#  Amount o/s as on date-5000
#  Creditor/Debtor days-30
#  Amount o/s as per ideal o/s days-(10000/360)*30=833
#  Perday due-833/30= 28
#  Actual o/s days=30+(5000-833)/28 =30+149=179
#  % share =Yearly /Total Yearly * 100
    # ${ApplicationStage:["Lead Details","DDE","Recommendation", "Credit Approval"]}
  # 15_CAS-120530
  # FeatureID-CAS-120530,ACAUTOCAS-4,ACAUTOCAS-8673
  @ImplementedBy-rishabh.garg
    @Conventional @Release @Part-3
    @Release3
  Scenario Outline: ACAUTOCAS-12552:  User should be able to verify the calculation of fields for dataset <RowNum> on <CreditorDebtor> modal window for an application of <ProductType> at <ApplicationStage> stage with applicant type as <Key>
    And user opens an application of "<ProductType>" product type as "<applicantType>" applicant at "<ApplicationStage>" for "" with "<Key>" from application grid
    And user opens applicant information page of "<ApplicationStage>"
    And user views and edit applicant details for "<applicantType>" "<Key>" applicant type
    And user navigate to "CreditorDebtor" tab in applicant information
    And user reads data from the excel file "<CreditorDebtorDetails>" under sheet "<creditor_debtor_fields>" and row <RowNum>
    And user adds a new "<CreditorDebtor>" on creditor debtor screen under applicant details
    And user fills "<Total_Yearly_Purchase_Sale>" on creditor debtor screen under applicant details
    And user clicks on "<save>" button to save the record on creditor debtor screen
    When user open the added "<CreditorDebtor>" detail on creditor debtor screen
    Then User should be able to verify calculations in "<CreditorDebtor>" details as per CreditorDebtor days Actual Outstanding Days Percent Share of PurchaseSales fields

    Examples:
      | ProductType   | ApplicationStage   | CreditorDebtorDetails        | creditor_debtor_fields | save | RowNum | Key   | CreditorDebtor | applicantType | Total_Yearly_Purchase_Sale |
      | <ProductType> | <ApplicationStage> | creditor_debtor_details.xlsx | creditor_fields        | Save | 81     | <Key> | Creditor       | nonindiv      | Add Total Yearly Purchase  |
      | <ProductType> | <ApplicationStage> | creditor_debtor_details.xlsx | creditor_fields        | Save | 82     | <Key> | Creditor       | nonindiv      | Add Total Yearly Purchase  |
      | <ProductType> | <ApplicationStage> | creditor_debtor_details.xlsx | creditor_fields        | Save | 83     | <Key> | Creditor       | nonindiv      | Add Total Yearly Purchase  |
      | <ProductType> | <ApplicationStage> | creditor_debtor_details.xlsx | creditor_fields        | Save | 84     | <Key> | Creditor       | nonindiv      | Add Total Yearly Purchase  |
      | <ProductType> | <ApplicationStage> | creditor_debtor_details.xlsx | creditor_fields        | Save | 85     | <Key> | Creditor       | nonindiv      | Add Total Yearly Purchase  |
      | <ProductType> | <ApplicationStage> | creditor_debtor_details.xlsx | creditor_fields        | Save | 86     | <Key> | Creditor       | nonindiv      | Add Total Yearly Purchase  |
      | <ProductType> | <ApplicationStage> | creditor_debtor_details.xlsx | creditor_fields        | Save | 87     | <Key> | Creditor       | nonindiv      | Add Total Yearly Purchase  |
      | <ProductType> | <ApplicationStage> | creditor_debtor_details.xlsx | creditor_fields        | Save | 88     | <Key> | Creditor       | nonindiv      | Add Total Yearly Purchase  |
      | <ProductType> | <ApplicationStage> | creditor_debtor_details.xlsx | creditor_fields        | Save | 89     | <Key> | Creditor       | nonindiv      | Add Total Yearly Purchase  |
      | <ProductType> | <ApplicationStage> | creditor_debtor_details.xlsx | creditor_fields        | Save | 90     | <Key> | Creditor       | nonindiv      | Add Total Yearly Purchase  |
      | <ProductType> | <ApplicationStage> | creditor_debtor_details.xlsx | creditor_fields        | Save | 91     | <Key> | Creditor       | nonindiv      | Add Total Yearly Purchase  |
      | <ProductType> | <ApplicationStage> | creditor_debtor_details.xlsx | creditor_fields        | Save | 92     | <Key> | Creditor       | nonindiv      | Add Total Yearly Purchase  |
      | <ProductType> | <ApplicationStage> | creditor_debtor_details.xlsx | debtor_fields          | Save | 81     | <Key> | Debtor         | nonindiv      | Add Total Yearly Sales     |
      | <ProductType> | <ApplicationStage> | creditor_debtor_details.xlsx | debtor_fields          | Save | 82     | <Key> | Debtor         | nonindiv      | Add Total Yearly Sales     |
      | <ProductType> | <ApplicationStage> | creditor_debtor_details.xlsx | debtor_fields          | Save | 83     | <Key> | Debtor         | nonindiv      | Add Total Yearly Sales     |
      | <ProductType> | <ApplicationStage> | creditor_debtor_details.xlsx | debtor_fields          | Save | 84     | <Key> | Debtor         | nonindiv      | Add Total Yearly Sales     |
      | <ProductType> | <ApplicationStage> | creditor_debtor_details.xlsx | debtor_fields          | Save | 85     | <Key> | Debtor         | nonindiv      | Add Total Yearly Sales     |
      | <ProductType> | <ApplicationStage> | creditor_debtor_details.xlsx | debtor_fields          | Save | 86     | <Key> | Debtor         | nonindiv      | Add Total Yearly Sales     |
      | <ProductType> | <ApplicationStage> | creditor_debtor_details.xlsx | debtor_fields          | Save | 87     | <Key> | Debtor         | nonindiv      | Add Total Yearly Sales     |
      | <ProductType> | <ApplicationStage> | creditor_debtor_details.xlsx | debtor_fields          | Save | 88     | <Key> | Debtor         | nonindiv      | Add Total Yearly Sales     |
      | <ProductType> | <ApplicationStage> | creditor_debtor_details.xlsx | debtor_fields          | Save | 89     | <Key> | Debtor         | nonindiv      | Add Total Yearly Sales     |
      | <ProductType> | <ApplicationStage> | creditor_debtor_details.xlsx | debtor_fields          | Save | 90     | <Key> | Debtor         | nonindiv      | Add Total Yearly Sales     |
      | <ProductType> | <ApplicationStage> | creditor_debtor_details.xlsx | debtor_fields          | Save | 91     | <Key> | Debtor         | nonindiv      | Add Total Yearly Sales     |
      | <ProductType> | <ApplicationStage> | creditor_debtor_details.xlsx | debtor_fields          | Save | 92     | <Key> | Debtor         | nonindiv      | Add Total Yearly Sales     |

  # ${ApplicationStage:["Lead Details","DDE","Recommendation", "Credit Approval"]}
  # Additional
  # FeatureID-CAS-120530,ACAUTOCAS-4,ACAUTOCAS-8673
  @ImplementedBy-rishabh.garg
    @Sanity
    @Conventional @Release @Part-3
    @Release3
  Scenario Outline: ACAUTOCAS-12553:  User should be able to <Add_Edit> address details of <RowNum> dataset on <CreditorDebtor> modal window for an application of <ProductType> at <ApplicationStage> stage with applicant type as <Key>
    And user opens an application of "<ProductType>" product type as "<applicantType>" applicant at "<ApplicationStage>" for "" with "<Key>" from application grid
    And user opens applicant information page of "<ApplicationStage>"
    And user views and edit applicant details for "<applicantType>" "<Key>" applicant type
    And user navigate to "CreditorDebtor" tab in applicant information
    And user reads data from the excel file "creditor_debtor_details.xlsx" under sheet "<creditor_debtor_fields>" and row 0
    When user expands address accordion on "<CreditorDebtor>" modal window to "<Add_Edit>" address details
    And user fills "<CreditorDebtor>" details without save on creditor debitor screen
    And user reads data from the excel file "creditor_debtor_details.xlsx" under sheet "<address>" and row <RowNum>
    And user fills the address details of creditor debtor details
    And user clicks on done button of "<CreditorDebtor>"
    Then user should get status successfully
    Examples:
      | ProductType   | ApplicationStage   | CreditorDebtor | Add_Edit | address | RowNum | Key   | creditor_debtor_fields | applicantType |
      | <ProductType> | <ApplicationStage> | Creditor       | Add      | address | 0      | <Key> | creditor_fields        | nonindiv      |
      | <ProductType> | <ApplicationStage> | Creditor       | Add      | address | 1      | <Key> | creditor_fields        | nonindiv      |
      | <ProductType> | <ApplicationStage> | Creditor       | Add      | address | 2      | <Key> | creditor_fields        | nonindiv      |
      | <ProductType> | <ApplicationStage> | Creditor       | Add      | address | 3      | <Key> | creditor_fields        | nonindiv      |
      | <ProductType> | <ApplicationStage> | Creditor       | Add      | address | 4      | <Key> | creditor_fields        | nonindiv      |
      | <ProductType> | <ApplicationStage> | Creditor       | Add      | address | 5      | <Key> | creditor_fields        | nonindiv      |
      | <ProductType> | <ApplicationStage> | Creditor       | Add      | address | 6      | <Key> | creditor_fields        | nonindiv      |
      | <ProductType> | <ApplicationStage> | Creditor       | Add      | address | 7      | <Key> | creditor_fields        | nonindiv      |
      | <ProductType> | <ApplicationStage> | Creditor       | Add      | address | 8      | <Key> | creditor_fields        | nonindiv      |
      | <ProductType> | <ApplicationStage> | Creditor       | Add      | address | 9      | <Key> | creditor_fields        | nonindiv      |
      | <ProductType> | <ApplicationStage> | Creditor       | Add      | address | 10     | <Key> | creditor_fields        | nonindiv      |
      | <ProductType> | <ApplicationStage> | Creditor       | Add      | address | 11     | <Key> | creditor_fields        | nonindiv      |
      | <ProductType> | <ApplicationStage> | Creditor       | Add      | address | 12     | <Key> | creditor_fields        | nonindiv      |
      | <ProductType> | <ApplicationStage> | Creditor       | Add      | address | 13     | <Key> | creditor_fields        | nonindiv      |
      | <ProductType> | <ApplicationStage> | Creditor       | Add      | address | 14     | <Key> | creditor_fields        | nonindiv      |
      | <ProductType> | <ApplicationStage> | Creditor       | Add      | address | 15     | <Key> | creditor_fields        | nonindiv      |
      | <ProductType> | <ApplicationStage> | Creditor       | Add      | address | 16     | <Key> | creditor_fields        | nonindiv      |
      | <ProductType> | <ApplicationStage> | Creditor       | Add      | address | 17     | <Key> | creditor_fields        | nonindiv      |
      | <ProductType> | <ApplicationStage> | Creditor       | Add      | address | 18     | <Key> | creditor_fields        | nonindiv      |
      | <ProductType> | <ApplicationStage> | Creditor       | Add      | address | 19     | <Key> | creditor_fields        | nonindiv      |
      | <ProductType> | <ApplicationStage> | Creditor       | Add      | address | 20     | <Key> | creditor_fields        | nonindiv      |
      | <ProductType> | <ApplicationStage> | Creditor       | Add      | address | 21     | <Key> | creditor_fields        | nonindiv      |
      | <ProductType> | <ApplicationStage> | Creditor       | Add      | address | 22     | <Key> | creditor_fields        | nonindiv      |
      | <ProductType> | <ApplicationStage> | Creditor       | Add      | address | 23     | <Key> | creditor_fields        | nonindiv      |
      | <ProductType> | <ApplicationStage> | Creditor       | Add      | address | 24     | <Key> | creditor_fields        | nonindiv      |
      | <ProductType> | <ApplicationStage> | Creditor       | Add      | address | 25     | <Key> | creditor_fields        | nonindiv      |
      | <ProductType> | <ApplicationStage> | Creditor       | Add      | address | 26     | <Key> | creditor_fields        | nonindiv      |
      | <ProductType> | <ApplicationStage> | Creditor       | Add      | address | 27     | <Key> | creditor_fields        | nonindiv      |
      | <ProductType> | <ApplicationStage> | Creditor       | Add      | address | 28     | <Key> | creditor_fields        | nonindiv      |
      | <ProductType> | <ApplicationStage> | Creditor       | Add      | address | 29     | <Key> | creditor_fields        | nonindiv      |
      | <ProductType> | <ApplicationStage> | Creditor       | Add      | address | 30     | <Key> | creditor_fields        | nonindiv      |
      | <ProductType> | <ApplicationStage> | Creditor       | Add      | address | 31     | <Key> | creditor_fields        | nonindiv      |
      | <ProductType> | <ApplicationStage> | Creditor       | Add      | address | 32     | <Key> | creditor_fields        | nonindiv      |
      | <ProductType> | <ApplicationStage> | Creditor       | Add      | address | 33     | <Key> | creditor_fields        | nonindiv      |
      | <ProductType> | <ApplicationStage> | Creditor       | Add      | address | 34     | <Key> | creditor_fields        | nonindiv      |
      | <ProductType> | <ApplicationStage> | Creditor       | Add      | address | 35     | <Key> | creditor_fields        | nonindiv      |
      | <ProductType> | <ApplicationStage> | Creditor       | Add      | address | 36     | <Key> | creditor_fields        | nonindiv      |
      | <ProductType> | <ApplicationStage> | Creditor       | Add      | address | 37     | <Key> | creditor_fields        | nonindiv      |
      | <ProductType> | <ApplicationStage> | Creditor       | Add      | address | 38     | <Key> | creditor_fields        | nonindiv      |
      | <ProductType> | <ApplicationStage> | Creditor       | Add      | address | 39     | <Key> | creditor_fields        | nonindiv      |
      | <ProductType> | <ApplicationStage> | Creditor       | Add      | address | 40     | <Key> | creditor_fields        | nonindiv      |
      | <ProductType> | <ApplicationStage> | Creditor       | Add      | address | 41     | <Key> | creditor_fields        | nonindiv      |
      | <ProductType> | <ApplicationStage> | Creditor       | Add      | address | 42     | <Key> | creditor_fields        | nonindiv      |
      | <ProductType> | <ApplicationStage> | Creditor       | Add      | address | 43     | <Key> | creditor_fields        | nonindiv      |
      | <ProductType> | <ApplicationStage> | Creditor       | Add      | address | 44     | <Key> | creditor_fields        | nonindiv      |
      | <ProductType> | <ApplicationStage> | Creditor       | Add      | address | 45     | <Key> | creditor_fields        | nonindiv      |
      | <ProductType> | <ApplicationStage> | Creditor       | Add      | address | 46     | <Key> | creditor_fields        | nonindiv      |
      | <ProductType> | <ApplicationStage> | Creditor       | Add      | address | 47     | <Key> | creditor_fields        | nonindiv      |
      | <ProductType> | <ApplicationStage> | Creditor       | Add      | address | 48     | <Key> | creditor_fields        | nonindiv      |
      | <ProductType> | <ApplicationStage> | Creditor       | Add      | address | 49     | <Key> | creditor_fields        | nonindiv      |
      | <ProductType> | <ApplicationStage> | Creditor       | Add      | address | 50     | <Key> | creditor_fields        | nonindiv      |
      | <ProductType> | <ApplicationStage> | Creditor       | Add      | address | 51     | <Key> | creditor_fields        | nonindiv      |
      | <ProductType> | <ApplicationStage> | Creditor       | Add      | address | 52     | <Key> | creditor_fields        | nonindiv      |
      | <ProductType> | <ApplicationStage> | Creditor       | Add      | address | 53     | <Key> | creditor_fields        | nonindiv      |
      | <ProductType> | <ApplicationStage> | Creditor       | Add      | address | 54     | <Key> | creditor_fields        | nonindiv      |
      | <ProductType> | <ApplicationStage> | Creditor       | Add      | address | 55     | <Key> | creditor_fields        | nonindiv      |
      | <ProductType> | <ApplicationStage> | Creditor       | Add      | address | 56     | <Key> | creditor_fields        | nonindiv      |
      | <ProductType> | <ApplicationStage> | Creditor       | Add      | address | 57     | <Key> | creditor_fields        | nonindiv      |
      | <ProductType> | <ApplicationStage> | Creditor       | Add      | address | 58     | <Key> | creditor_fields        | nonindiv      |
      | <ProductType> | <ApplicationStage> | Creditor       | Add      | address | 59     | <Key> | creditor_fields        | nonindiv      |
      | <ProductType> | <ApplicationStage> | Creditor       | Add      | address | 60     | <Key> | creditor_fields        | nonindiv      |
      | <ProductType> | <ApplicationStage> | Creditor       | Add      | address | 61     | <Key> | creditor_fields        | nonindiv      |
      | <ProductType> | <ApplicationStage> | Creditor       | Add      | address | 62     | <Key> | creditor_fields        | nonindiv      |
      | <ProductType> | <ApplicationStage> | Creditor       | Add      | address | 63     | <Key> | creditor_fields        | nonindiv      |
      | <ProductType> | <ApplicationStage> | Creditor       | Add      | address | 64     | <Key> | creditor_fields        | nonindiv      |
      | <ProductType> | <ApplicationStage> | Creditor       | Add      | address | 65     | <Key> | creditor_fields        | nonindiv      |
      | <ProductType> | <ApplicationStage> | Creditor       | Edit     | address | 0      | <Key> | creditor_fields        | nonindiv      |
      | <ProductType> | <ApplicationStage> | Creditor       | Edit     | address | 1      | <Key> | creditor_fields        | nonindiv      |
      | <ProductType> | <ApplicationStage> | Creditor       | Edit     | address | 2      | <Key> | creditor_fields        | nonindiv      |
      | <ProductType> | <ApplicationStage> | Creditor       | Edit     | address | 3      | <Key> | creditor_fields        | nonindiv      |
      | <ProductType> | <ApplicationStage> | Creditor       | Edit     | address | 4      | <Key> | creditor_fields        | nonindiv      |
      | <ProductType> | <ApplicationStage> | Creditor       | Edit     | address | 5      | <Key> | creditor_fields        | nonindiv      |
      | <ProductType> | <ApplicationStage> | Creditor       | Edit     | address | 6      | <Key> | creditor_fields        | nonindiv      |
      | <ProductType> | <ApplicationStage> | Creditor       | Edit     | address | 7      | <Key> | creditor_fields        | nonindiv      |
      | <ProductType> | <ApplicationStage> | Creditor       | Edit     | address | 8      | <Key> | creditor_fields        | nonindiv      |
      | <ProductType> | <ApplicationStage> | Creditor       | Edit     | address | 9      | <Key> | creditor_fields        | nonindiv      |
      | <ProductType> | <ApplicationStage> | Creditor       | Edit     | address | 10     | <Key> | creditor_fields        | nonindiv      |
      | <ProductType> | <ApplicationStage> | Creditor       | Edit     | address | 11     | <Key> | creditor_fields        | nonindiv      |
      | <ProductType> | <ApplicationStage> | Creditor       | Edit     | address | 12     | <Key> | creditor_fields        | nonindiv      |
      | <ProductType> | <ApplicationStage> | Creditor       | Edit     | address | 13     | <Key> | creditor_fields        | nonindiv      |
      | <ProductType> | <ApplicationStage> | Creditor       | Edit     | address | 14     | <Key> | creditor_fields        | nonindiv      |
      | <ProductType> | <ApplicationStage> | Creditor       | Edit     | address | 15     | <Key> | creditor_fields        | nonindiv      |
      | <ProductType> | <ApplicationStage> | Creditor       | Edit     | address | 16     | <Key> | creditor_fields        | nonindiv      |
      | <ProductType> | <ApplicationStage> | Creditor       | Edit     | address | 17     | <Key> | creditor_fields        | nonindiv      |
      | <ProductType> | <ApplicationStage> | Creditor       | Edit     | address | 18     | <Key> | creditor_fields        | nonindiv      |
      | <ProductType> | <ApplicationStage> | Creditor       | Edit     | address | 19     | <Key> | creditor_fields        | nonindiv      |
      | <ProductType> | <ApplicationStage> | Creditor       | Edit     | address | 20     | <Key> | creditor_fields        | nonindiv      |
      | <ProductType> | <ApplicationStage> | Creditor       | Edit     | address | 21     | <Key> | creditor_fields        | nonindiv      |
      | <ProductType> | <ApplicationStage> | Creditor       | Edit     | address | 22     | <Key> | creditor_fields        | nonindiv      |
      | <ProductType> | <ApplicationStage> | Creditor       | Edit     | address | 23     | <Key> | creditor_fields        | nonindiv      |
      | <ProductType> | <ApplicationStage> | Creditor       | Edit     | address | 24     | <Key> | creditor_fields        | nonindiv      |
      | <ProductType> | <ApplicationStage> | Creditor       | Edit     | address | 25     | <Key> | creditor_fields        | nonindiv      |
      | <ProductType> | <ApplicationStage> | Creditor       | Edit     | address | 26     | <Key> | creditor_fields        | nonindiv      |
      | <ProductType> | <ApplicationStage> | Creditor       | Edit     | address | 27     | <Key> | creditor_fields        | nonindiv      |
      | <ProductType> | <ApplicationStage> | Creditor       | Edit     | address | 28     | <Key> | creditor_fields        | nonindiv      |
      | <ProductType> | <ApplicationStage> | Creditor       | Edit     | address | 29     | <Key> | creditor_fields        | nonindiv      |
      | <ProductType> | <ApplicationStage> | Creditor       | Edit     | address | 30     | <Key> | creditor_fields        | nonindiv      |
      | <ProductType> | <ApplicationStage> | Creditor       | Edit     | address | 31     | <Key> | creditor_fields        | nonindiv      |
      | <ProductType> | <ApplicationStage> | Creditor       | Edit     | address | 32     | <Key> | creditor_fields        | nonindiv      |
      | <ProductType> | <ApplicationStage> | Creditor       | Edit     | address | 33     | <Key> | creditor_fields        | nonindiv      |
      | <ProductType> | <ApplicationStage> | Creditor       | Edit     | address | 34     | <Key> | creditor_fields        | nonindiv      |
      | <ProductType> | <ApplicationStage> | Creditor       | Edit     | address | 35     | <Key> | creditor_fields        | nonindiv      |
      | <ProductType> | <ApplicationStage> | Creditor       | Edit     | address | 36     | <Key> | creditor_fields        | nonindiv      |
      | <ProductType> | <ApplicationStage> | Creditor       | Edit     | address | 37     | <Key> | creditor_fields        | nonindiv      |
      | <ProductType> | <ApplicationStage> | Creditor       | Edit     | address | 38     | <Key> | creditor_fields        | nonindiv      |
      | <ProductType> | <ApplicationStage> | Creditor       | Edit     | address | 39     | <Key> | creditor_fields        | nonindiv      |
      | <ProductType> | <ApplicationStage> | Creditor       | Edit     | address | 40     | <Key> | creditor_fields        | nonindiv      |
      | <ProductType> | <ApplicationStage> | Creditor       | Edit     | address | 41     | <Key> | creditor_fields        | nonindiv      |
      | <ProductType> | <ApplicationStage> | Creditor       | Edit     | address | 42     | <Key> | creditor_fields        | nonindiv      |
      | <ProductType> | <ApplicationStage> | Creditor       | Edit     | address | 43     | <Key> | creditor_fields        | nonindiv      |
      | <ProductType> | <ApplicationStage> | Creditor       | Edit     | address | 44     | <Key> | creditor_fields        | nonindiv      |
      | <ProductType> | <ApplicationStage> | Creditor       | Edit     | address | 45     | <Key> | creditor_fields        | nonindiv      |
      | <ProductType> | <ApplicationStage> | Creditor       | Edit     | address | 46     | <Key> | creditor_fields        | nonindiv      |
      | <ProductType> | <ApplicationStage> | Creditor       | Edit     | address | 47     | <Key> | creditor_fields        | nonindiv      |
      | <ProductType> | <ApplicationStage> | Creditor       | Edit     | address | 48     | <Key> | creditor_fields        | nonindiv      |
      | <ProductType> | <ApplicationStage> | Creditor       | Edit     | address | 49     | <Key> | creditor_fields        | nonindiv      |
      | <ProductType> | <ApplicationStage> | Creditor       | Edit     | address | 50     | <Key> | creditor_fields        | nonindiv      |
      | <ProductType> | <ApplicationStage> | Creditor       | Edit     | address | 51     | <Key> | creditor_fields        | nonindiv      |
      | <ProductType> | <ApplicationStage> | Creditor       | Edit     | address | 52     | <Key> | creditor_fields        | nonindiv      |
      | <ProductType> | <ApplicationStage> | Creditor       | Edit     | address | 53     | <Key> | creditor_fields        | nonindiv      |
      | <ProductType> | <ApplicationStage> | Creditor       | Edit     | address | 54     | <Key> | creditor_fields        | nonindiv      |
      | <ProductType> | <ApplicationStage> | Creditor       | Edit     | address | 55     | <Key> | creditor_fields        | nonindiv      |
      | <ProductType> | <ApplicationStage> | Creditor       | Edit     | address | 56     | <Key> | creditor_fields        | nonindiv      |
      | <ProductType> | <ApplicationStage> | Creditor       | Edit     | address | 57     | <Key> | creditor_fields        | nonindiv      |
      | <ProductType> | <ApplicationStage> | Creditor       | Edit     | address | 58     | <Key> | creditor_fields        | nonindiv      |
      | <ProductType> | <ApplicationStage> | Creditor       | Edit     | address | 59     | <Key> | creditor_fields        | nonindiv      |
      | <ProductType> | <ApplicationStage> | Creditor       | Edit     | address | 60     | <Key> | creditor_fields        | nonindiv      |
      | <ProductType> | <ApplicationStage> | Creditor       | Edit     | address | 61     | <Key> | creditor_fields        | nonindiv      |
      | <ProductType> | <ApplicationStage> | Creditor       | Edit     | address | 62     | <Key> | creditor_fields        | nonindiv      |
      | <ProductType> | <ApplicationStage> | Creditor       | Edit     | address | 63     | <Key> | creditor_fields        | nonindiv      |
      | <ProductType> | <ApplicationStage> | Creditor       | Edit     | address | 64     | <Key> | creditor_fields        | nonindiv      |
      | <ProductType> | <ApplicationStage> | Creditor       | Edit     | address | 65     | <Key> | creditor_fields        | nonindiv      |
      | <ProductType> | <ApplicationStage> | Debtor         | Add      | address | 0      | <Key> | debtor_fields          | nonindiv      |
      | <ProductType> | <ApplicationStage> | Debtor         | Add      | address | 1      | <Key> | debtor_fields          | nonindiv      |
      | <ProductType> | <ApplicationStage> | Debtor         | Add      | address | 2      | <Key> | debtor_fields          | nonindiv      |
      | <ProductType> | <ApplicationStage> | Debtor         | Add      | address | 3      | <Key> | debtor_fields          | nonindiv      |
      | <ProductType> | <ApplicationStage> | Debtor         | Add      | address | 4      | <Key> | debtor_fields          | nonindiv      |
      | <ProductType> | <ApplicationStage> | Debtor         | Add      | address | 5      | <Key> | debtor_fields          | nonindiv      |
      | <ProductType> | <ApplicationStage> | Debtor         | Add      | address | 6      | <Key> | debtor_fields          | nonindiv      |
      | <ProductType> | <ApplicationStage> | Debtor         | Add      | address | 7      | <Key> | debtor_fields          | nonindiv      |
      | <ProductType> | <ApplicationStage> | Debtor         | Add      | address | 8      | <Key> | debtor_fields          | nonindiv      |
      | <ProductType> | <ApplicationStage> | Debtor         | Add      | address | 9      | <Key> | debtor_fields          | nonindiv      |
      | <ProductType> | <ApplicationStage> | Debtor         | Add      | address | 10     | <Key> | debtor_fields          | nonindiv      |
      | <ProductType> | <ApplicationStage> | Debtor         | Add      | address | 11     | <Key> | debtor_fields          | nonindiv      |
      | <ProductType> | <ApplicationStage> | Debtor         | Add      | address | 12     | <Key> | debtor_fields          | nonindiv      |
      | <ProductType> | <ApplicationStage> | Debtor         | Add      | address | 13     | <Key> | debtor_fields          | nonindiv      |
      | <ProductType> | <ApplicationStage> | Debtor         | Add      | address | 14     | <Key> | debtor_fields          | nonindiv      |
      | <ProductType> | <ApplicationStage> | Debtor         | Add      | address | 15     | <Key> | debtor_fields          | nonindiv      |
      | <ProductType> | <ApplicationStage> | Debtor         | Add      | address | 16     | <Key> | debtor_fields          | nonindiv      |
      | <ProductType> | <ApplicationStage> | Debtor         | Add      | address | 17     | <Key> | debtor_fields          | nonindiv      |
      | <ProductType> | <ApplicationStage> | Debtor         | Add      | address | 18     | <Key> | debtor_fields          | nonindiv      |
      | <ProductType> | <ApplicationStage> | Debtor         | Add      | address | 19     | <Key> | debtor_fields          | nonindiv      |
      | <ProductType> | <ApplicationStage> | Debtor         | Add      | address | 20     | <Key> | debtor_fields          | nonindiv      |
      | <ProductType> | <ApplicationStage> | Debtor         | Add      | address | 21     | <Key> | debtor_fields          | nonindiv      |
      | <ProductType> | <ApplicationStage> | Debtor         | Add      | address | 22     | <Key> | debtor_fields          | nonindiv      |
      | <ProductType> | <ApplicationStage> | Debtor         | Add      | address | 23     | <Key> | debtor_fields          | nonindiv      |
      | <ProductType> | <ApplicationStage> | Debtor         | Add      | address | 24     | <Key> | debtor_fields          | nonindiv      |
      | <ProductType> | <ApplicationStage> | Debtor         | Add      | address | 25     | <Key> | debtor_fields          | nonindiv      |
      | <ProductType> | <ApplicationStage> | Debtor         | Add      | address | 26     | <Key> | debtor_fields          | nonindiv      |
      | <ProductType> | <ApplicationStage> | Debtor         | Add      | address | 27     | <Key> | debtor_fields          | nonindiv      |
      | <ProductType> | <ApplicationStage> | Debtor         | Add      | address | 28     | <Key> | debtor_fields          | nonindiv      |
      | <ProductType> | <ApplicationStage> | Debtor         | Add      | address | 29     | <Key> | debtor_fields          | nonindiv      |
      | <ProductType> | <ApplicationStage> | Debtor         | Add      | address | 30     | <Key> | debtor_fields          | nonindiv      |
      | <ProductType> | <ApplicationStage> | Debtor         | Add      | address | 31     | <Key> | debtor_fields          | nonindiv      |
      | <ProductType> | <ApplicationStage> | Debtor         | Add      | address | 32     | <Key> | debtor_fields          | nonindiv      |
      | <ProductType> | <ApplicationStage> | Debtor         | Add      | address | 33     | <Key> | debtor_fields          | nonindiv      |
      | <ProductType> | <ApplicationStage> | Debtor         | Add      | address | 34     | <Key> | debtor_fields          | nonindiv      |
      | <ProductType> | <ApplicationStage> | Debtor         | Add      | address | 35     | <Key> | debtor_fields          | nonindiv      |
      | <ProductType> | <ApplicationStage> | Debtor         | Add      | address | 36     | <Key> | debtor_fields          | nonindiv      |
      | <ProductType> | <ApplicationStage> | Debtor         | Add      | address | 37     | <Key> | debtor_fields          | nonindiv      |
      | <ProductType> | <ApplicationStage> | Debtor         | Add      | address | 38     | <Key> | debtor_fields          | nonindiv      |
      | <ProductType> | <ApplicationStage> | Debtor         | Add      | address | 39     | <Key> | debtor_fields          | nonindiv      |
      | <ProductType> | <ApplicationStage> | Debtor         | Add      | address | 40     | <Key> | debtor_fields          | nonindiv      |
      | <ProductType> | <ApplicationStage> | Debtor         | Add      | address | 41     | <Key> | debtor_fields          | nonindiv      |
      | <ProductType> | <ApplicationStage> | Debtor         | Add      | address | 42     | <Key> | debtor_fields          | nonindiv      |
      | <ProductType> | <ApplicationStage> | Debtor         | Add      | address | 43     | <Key> | debtor_fields          | nonindiv      |
      | <ProductType> | <ApplicationStage> | Debtor         | Add      | address | 44     | <Key> | debtor_fields          | nonindiv      |
      | <ProductType> | <ApplicationStage> | Debtor         | Add      | address | 45     | <Key> | debtor_fields          | nonindiv      |
      | <ProductType> | <ApplicationStage> | Debtor         | Add      | address | 46     | <Key> | debtor_fields          | nonindiv      |
      | <ProductType> | <ApplicationStage> | Debtor         | Add      | address | 47     | <Key> | debtor_fields          | nonindiv      |
      | <ProductType> | <ApplicationStage> | Debtor         | Add      | address | 48     | <Key> | debtor_fields          | nonindiv      |
      | <ProductType> | <ApplicationStage> | Debtor         | Add      | address | 49     | <Key> | debtor_fields          | nonindiv      |
      | <ProductType> | <ApplicationStage> | Debtor         | Add      | address | 50     | <Key> | debtor_fields          | nonindiv      |
      | <ProductType> | <ApplicationStage> | Debtor         | Add      | address | 51     | <Key> | debtor_fields          | nonindiv      |
      | <ProductType> | <ApplicationStage> | Debtor         | Add      | address | 52     | <Key> | debtor_fields          | nonindiv      |
      | <ProductType> | <ApplicationStage> | Debtor         | Add      | address | 53     | <Key> | debtor_fields          | nonindiv      |
      | <ProductType> | <ApplicationStage> | Debtor         | Add      | address | 54     | <Key> | debtor_fields          | nonindiv      |
      | <ProductType> | <ApplicationStage> | Debtor         | Add      | address | 55     | <Key> | debtor_fields          | nonindiv      |
      | <ProductType> | <ApplicationStage> | Debtor         | Add      | address | 56     | <Key> | debtor_fields          | nonindiv      |
      | <ProductType> | <ApplicationStage> | Debtor         | Add      | address | 57     | <Key> | debtor_fields          | nonindiv      |
      | <ProductType> | <ApplicationStage> | Debtor         | Add      | address | 58     | <Key> | debtor_fields          | nonindiv      |
      | <ProductType> | <ApplicationStage> | Debtor         | Add      | address | 59     | <Key> | debtor_fields          | nonindiv      |
      | <ProductType> | <ApplicationStage> | Debtor         | Add      | address | 60     | <Key> | debtor_fields          | nonindiv      |
      | <ProductType> | <ApplicationStage> | Debtor         | Add      | address | 61     | <Key> | debtor_fields          | nonindiv      |
      | <ProductType> | <ApplicationStage> | Debtor         | Add      | address | 62     | <Key> | debtor_fields          | nonindiv      |
      | <ProductType> | <ApplicationStage> | Debtor         | Add      | address | 63     | <Key> | debtor_fields          | nonindiv      |
      | <ProductType> | <ApplicationStage> | Debtor         | Add      | address | 64     | <Key> | debtor_fields          | nonindiv      |
      | <ProductType> | <ApplicationStage> | Debtor         | Add      | address | 65     | <Key> | debtor_fields          | nonindiv      |
      | <ProductType> | <ApplicationStage> | Debtor         | Edit     | address | 0      | <Key> | debtor_fields          | nonindiv      |
      | <ProductType> | <ApplicationStage> | Debtor         | Edit     | address | 1      | <Key> | debtor_fields          | nonindiv      |
      | <ProductType> | <ApplicationStage> | Debtor         | Edit     | address | 2      | <Key> | debtor_fields          | nonindiv      |
      | <ProductType> | <ApplicationStage> | Debtor         | Edit     | address | 3      | <Key> | debtor_fields          | nonindiv      |
      | <ProductType> | <ApplicationStage> | Debtor         | Edit     | address | 4      | <Key> | debtor_fields          | nonindiv      |
      | <ProductType> | <ApplicationStage> | Debtor         | Edit     | address | 5      | <Key> | debtor_fields          | nonindiv      |
      | <ProductType> | <ApplicationStage> | Debtor         | Edit     | address | 6      | <Key> | debtor_fields          | nonindiv      |
      | <ProductType> | <ApplicationStage> | Debtor         | Edit     | address | 7      | <Key> | debtor_fields          | nonindiv      |
      | <ProductType> | <ApplicationStage> | Debtor         | Edit     | address | 8      | <Key> | debtor_fields          | nonindiv      |
      | <ProductType> | <ApplicationStage> | Debtor         | Edit     | address | 9      | <Key> | debtor_fields          | nonindiv      |
      | <ProductType> | <ApplicationStage> | Debtor         | Edit     | address | 10     | <Key> | debtor_fields          | nonindiv      |
      | <ProductType> | <ApplicationStage> | Debtor         | Edit     | address | 11     | <Key> | debtor_fields          | nonindiv      |
      | <ProductType> | <ApplicationStage> | Debtor         | Edit     | address | 12     | <Key> | debtor_fields          | nonindiv      |
      | <ProductType> | <ApplicationStage> | Debtor         | Edit     | address | 13     | <Key> | debtor_fields          | nonindiv      |
      | <ProductType> | <ApplicationStage> | Debtor         | Edit     | address | 14     | <Key> | debtor_fields          | nonindiv      |
      | <ProductType> | <ApplicationStage> | Debtor         | Edit     | address | 15     | <Key> | debtor_fields          | nonindiv      |
      | <ProductType> | <ApplicationStage> | Debtor         | Edit     | address | 16     | <Key> | debtor_fields          | nonindiv      |
      | <ProductType> | <ApplicationStage> | Debtor         | Edit     | address | 17     | <Key> | debtor_fields          | nonindiv      |
      | <ProductType> | <ApplicationStage> | Debtor         | Edit     | address | 18     | <Key> | debtor_fields          | nonindiv      |
      | <ProductType> | <ApplicationStage> | Debtor         | Edit     | address | 19     | <Key> | debtor_fields          | nonindiv      |
      | <ProductType> | <ApplicationStage> | Debtor         | Edit     | address | 20     | <Key> | debtor_fields          | nonindiv      |
      | <ProductType> | <ApplicationStage> | Debtor         | Edit     | address | 21     | <Key> | debtor_fields          | nonindiv      |
      | <ProductType> | <ApplicationStage> | Debtor         | Edit     | address | 22     | <Key> | debtor_fields          | nonindiv      |
      | <ProductType> | <ApplicationStage> | Debtor         | Edit     | address | 23     | <Key> | debtor_fields          | nonindiv      |
      | <ProductType> | <ApplicationStage> | Debtor         | Edit     | address | 24     | <Key> | debtor_fields          | nonindiv      |
      | <ProductType> | <ApplicationStage> | Debtor         | Edit     | address | 25     | <Key> | debtor_fields          | nonindiv      |
      | <ProductType> | <ApplicationStage> | Debtor         | Edit     | address | 26     | <Key> | debtor_fields          | nonindiv      |
      | <ProductType> | <ApplicationStage> | Debtor         | Edit     | address | 27     | <Key> | debtor_fields          | nonindiv      |
      | <ProductType> | <ApplicationStage> | Debtor         | Edit     | address | 28     | <Key> | debtor_fields          | nonindiv      |
      | <ProductType> | <ApplicationStage> | Debtor         | Edit     | address | 29     | <Key> | debtor_fields          | nonindiv      |
      | <ProductType> | <ApplicationStage> | Debtor         | Edit     | address | 30     | <Key> | debtor_fields          | nonindiv      |
      | <ProductType> | <ApplicationStage> | Debtor         | Edit     | address | 31     | <Key> | debtor_fields          | nonindiv      |
      | <ProductType> | <ApplicationStage> | Debtor         | Edit     | address | 32     | <Key> | debtor_fields          | nonindiv      |
      | <ProductType> | <ApplicationStage> | Debtor         | Edit     | address | 33     | <Key> | debtor_fields          | nonindiv      |
      | <ProductType> | <ApplicationStage> | Debtor         | Edit     | address | 34     | <Key> | debtor_fields          | nonindiv      |
      | <ProductType> | <ApplicationStage> | Debtor         | Edit     | address | 35     | <Key> | debtor_fields          | nonindiv      |
      | <ProductType> | <ApplicationStage> | Debtor         | Edit     | address | 36     | <Key> | debtor_fields          | nonindiv      |
      | <ProductType> | <ApplicationStage> | Debtor         | Edit     | address | 37     | <Key> | debtor_fields          | nonindiv      |
      | <ProductType> | <ApplicationStage> | Debtor         | Edit     | address | 38     | <Key> | debtor_fields          | nonindiv      |
      | <ProductType> | <ApplicationStage> | Debtor         | Edit     | address | 39     | <Key> | debtor_fields          | nonindiv      |
      | <ProductType> | <ApplicationStage> | Debtor         | Edit     | address | 40     | <Key> | debtor_fields          | nonindiv      |
      | <ProductType> | <ApplicationStage> | Debtor         | Edit     | address | 41     | <Key> | debtor_fields          | nonindiv      |
      | <ProductType> | <ApplicationStage> | Debtor         | Edit     | address | 42     | <Key> | debtor_fields          | nonindiv      |
      | <ProductType> | <ApplicationStage> | Debtor         | Edit     | address | 43     | <Key> | debtor_fields          | nonindiv      |
      | <ProductType> | <ApplicationStage> | Debtor         | Edit     | address | 44     | <Key> | debtor_fields          | nonindiv      |
      | <ProductType> | <ApplicationStage> | Debtor         | Edit     | address | 45     | <Key> | debtor_fields          | nonindiv      |
      | <ProductType> | <ApplicationStage> | Debtor         | Edit     | address | 46     | <Key> | debtor_fields          | nonindiv      |
      | <ProductType> | <ApplicationStage> | Debtor         | Edit     | address | 47     | <Key> | debtor_fields          | nonindiv      |
      | <ProductType> | <ApplicationStage> | Debtor         | Edit     | address | 48     | <Key> | debtor_fields          | nonindiv      |
      | <ProductType> | <ApplicationStage> | Debtor         | Edit     | address | 49     | <Key> | debtor_fields          | nonindiv      |
      | <ProductType> | <ApplicationStage> | Debtor         | Edit     | address | 50     | <Key> | debtor_fields          | nonindiv      |
      | <ProductType> | <ApplicationStage> | Debtor         | Edit     | address | 51     | <Key> | debtor_fields          | nonindiv      |
      | <ProductType> | <ApplicationStage> | Debtor         | Edit     | address | 52     | <Key> | debtor_fields          | nonindiv      |
      | <ProductType> | <ApplicationStage> | Debtor         | Edit     | address | 53     | <Key> | debtor_fields          | nonindiv      |
      | <ProductType> | <ApplicationStage> | Debtor         | Edit     | address | 54     | <Key> | debtor_fields          | nonindiv      |
      | <ProductType> | <ApplicationStage> | Debtor         | Edit     | address | 55     | <Key> | debtor_fields          | nonindiv      |
      | <ProductType> | <ApplicationStage> | Debtor         | Edit     | address | 56     | <Key> | debtor_fields          | nonindiv      |
      | <ProductType> | <ApplicationStage> | Debtor         | Edit     | address | 57     | <Key> | debtor_fields          | nonindiv      |
      | <ProductType> | <ApplicationStage> | Debtor         | Edit     | address | 58     | <Key> | debtor_fields          | nonindiv      |
      | <ProductType> | <ApplicationStage> | Debtor         | Edit     | address | 59     | <Key> | debtor_fields          | nonindiv      |
      | <ProductType> | <ApplicationStage> | Debtor         | Edit     | address | 60     | <Key> | debtor_fields          | nonindiv      |
      | <ProductType> | <ApplicationStage> | Debtor         | Edit     | address | 61     | <Key> | debtor_fields          | nonindiv      |
      | <ProductType> | <ApplicationStage> | Debtor         | Edit     | address | 62     | <Key> | debtor_fields          | nonindiv      |
      | <ProductType> | <ApplicationStage> | Debtor         | Edit     | address | 63     | <Key> | debtor_fields          | nonindiv      |
      | <ProductType> | <ApplicationStage> | Debtor         | Edit     | address | 64     | <Key> | debtor_fields          | nonindiv      |
      | <ProductType> | <ApplicationStage> | Debtor         | Edit     | address | 65     | <Key> | debtor_fields          | nonindiv      |


#On hold as discussed with sajja sir
  # ${ApplicationStage:["Lead Details","DDE","Recommendation", "Credit Approval"]}
  # Additional
  # FeatureID-CAS-120530,ACAUTOCAS-4,ACAUTOCAS-8673
  @Deferred
  Scenario Outline: ACAUTOCAS-12554:  User should be able to verify Audit Trail in Dyna Meta Configurator for the data fields changed in "<CreditorDebtor>" section for an application of "<ProductType>" at "<ApplicationStage>" stage with applicant type as "<Key>"
    And Loan application is at "<ApplicationStage>" stage for application of "<ProductType>" with applicant type as "<Key>"
    And user already captured Creditor Debtor Details
    When user navigates to "<CreditorDebtor>" modal window
    And user edit the records in fields in "<CreditorDebtor>" section
    #And user submits the record
    And user clicks on "<save_savenext>" button to save the record
    Then User should be able to verify audit trail in Dyna Meta Configurator for the data fields changed
    Examples:
      | ProductType   | ApplicationStage   | CreditorDebtor | ApplicantType | save_savenext |
      | <ProductType> | <ApplicationStage> | Creditor       | <Key>         | Save          |
      | <ProductType> | <ApplicationStage> | Debtor         | <Key>         | Save          |
      | <ProductType> | <ApplicationStage> | Creditor       | <Key>         | Save & Next   |
      | <ProductType> | <ApplicationStage> | Debtor         | <Key>         | Save & Next   |
