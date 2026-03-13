@Epic-Applicant_Information
@AuthoredBy-vipin.kishor
@ReviewedBy-
@Perishable
@AppInfoAdoption
#${ApplicantType:["indiv","nonindiv"]}

Feature:Existing customer validation

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0

  #FeatureID-ACAUTOCAS-146
  Scenario Outline: ACAUTOCAS-12617: Searching existing customer from <IEB> which is cancelled application
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user reads data from the excel file "<CancelApplicationWB>" under sheet "<CancelApplication>" and row <CancelApplication_rowNum>
    And user cancels the application
    And user try to create an application of "<AnotherProductType>" by existing customer
    When user fetch the cancelled application from "<IEB>"
    Then application should be "<Fetched>" successfully in search result of existing customer
    @Conventional
    @Release @Part-2
    @ImplementedBy-pallavi.singh
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ApplicantType   | Category | key | ApplicationStage   | AnotherProductType | IEB      | Fetched     | ProductType   | CancelApplicationWB     | CancelApplication  | CancelApplication_rowNum |
      | <ApplicantType> |          |     | <ApplicationStage> | pl                 | Internal | not fetched | <ProductType> | cancel_application.xlsx | cancel_application | 23                       |
      | <ApplicantType> |          |     | <ApplicationStage> | pl                 | GCD      | fetched     | <ProductType> | cancel_application.xlsx | cancel_application | 23                       |
      | <ApplicantType> |          |     | <ApplicationStage> | pl                 | Both     | fetched     | <ProductType> | cancel_application.xlsx | cancel_application | 23                       |
    @Islamic
    @Release
    @Part-2
    @ImplementedBy-akash.bansal
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ApplicantType   | Category | key | ApplicationStage   | AnotherProductType | IEB      | Fetched     | ProductType   | CancelApplicationWB     | CancelApplication  | CancelApplication_rowNum |
      | <ApplicantType> |          |     | <ApplicationStage> | ihf                | Internal | not fetched | <ProductType> | cancel_application.xlsx | cancel_application | 23                       |
      | <ApplicantType> |          |     | <ApplicationStage> | ihf                | GCD      | fetched     | <ProductType> | cancel_application.xlsx | cancel_application | 23                       |
      | <ApplicantType> |          |     | <ApplicationStage> | ihf                | Both     | not fetched | <ProductType> | cancel_application.xlsx | cancel_application | 23                       |
    @Islamic
    @Release
    @Part-2
    @ImplementedBy-akash.bansal
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance"]}
    Examples:
      | ApplicantType   | Category | key | ApplicationStage   | AnotherProductType | IEB      | Fetched     | ProductType   | CancelApplicationWB     | CancelApplication  | CancelApplication_rowNum |
      | <ApplicantType> |          |     | <ApplicationStage> | ihf                | Internal | fetched     | <ProductType> | cancel_application.xlsx | cancel_application | 23                       |
      | <ApplicantType> |          |     | <ApplicationStage> | ihf                | GCD      | not fetched | <ProductType> | cancel_application.xlsx | cancel_application | 23                       |
      | <ApplicantType> |          |     | <ApplicationStage> | ihf                | Both     | fetched     | <ProductType> | cancel_application.xlsx | cancel_application | 23                       |
    @Islamic
    @Release
    @Part-2
    @ImplementedBy-akash.bansal
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category:["bonds"]}
    Examples:
      | ApplicantType   | Category   | key | ApplicationStage   | AnotherProductType | IEB      | Fetched     | ProductType   | CancelApplicationWB     | CancelApplication  | CancelApplication_rowNum |
      | <ApplicantType> | <Category> |     | <ApplicationStage> | ihf                | Internal | not fetched | <ProductType> | cancel_application.xlsx | cancel_application | 23                       |
      | <ApplicantType> | <Category> |     | <ApplicationStage> | ihf                | GCD      | fetched     | <ProductType> | cancel_application.xlsx | cancel_application | 23                       |
      | <ApplicantType> | <Category> |     | <ApplicationStage> | ihf                | Both     | fetched     | <ProductType> | cancel_application.xlsx | cancel_application | 23                       |
    @Islamic
    @Release
    @Part-2
    @ImplementedBy-akash.bansal
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance"]}
    #${Category:["bonds"]}
    Examples:
      | ApplicantType   | Category   | key | ApplicationStage   | AnotherProductType | IEB      | Fetched     | ProductType   | CancelApplicationWB     | CancelApplication  | CancelApplication_rowNum |
      | <ApplicantType> | <Category> |     | <ApplicationStage> | ihf                | Internal | fetched     | <ProductType> | cancel_application.xlsx | cancel_application | 23                       |
      | <ApplicantType> | <Category> |     | <ApplicationStage> | ihf                | GCD      | not fetched | <ProductType> | cancel_application.xlsx | cancel_application | 23                       |
      | <ApplicantType> | <Category> |     | <ApplicationStage> | ihf                | Both     | fetched     | <ProductType> | cancel_application.xlsx | cancel_application | 23                       |
    @NotImplemented
      # ${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
    Examples:
      | ApplicantType   | Category | key | ApplicationStage   | AnotherProductType | IEB      | Fetched     | ProductType   | CancelApplicationWB     | CancelApplication  | CancelApplication_rowNum |
      | <ApplicantType> |          |     | <ApplicationStage> | pl                 | Internal | fetched     | <ProductType> | cancel_application.xlsx | cancel_application | 23                       |
      | <ApplicantType> |          |     | <ApplicationStage> | pl                 | GCD      | not fetched | <ProductType> | cancel_application.xlsx | cancel_application | 23                       |
      | <ApplicantType> |          |     | <ApplicationStage> | pl                 | Both     | fetched     | <ProductType> | cancel_application.xlsx | cancel_application | 23                       |
  @Sanity
  #FeatureID-ACAUTOCAS-146
  Scenario Outline: ACAUTOCAS-12618: Searching existing customer from <IEB> which is rejected application
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user reads data from the excel file "<CancelApplicationWB>" under sheet "<CancelApplication>" and row <CancelApplication_rowNum>
    And user reject the application
    And user try to create an application by existing customer
    When user fetch the rejected application from "<IEB>"
    Then application should be "<Fetched>" successfully in search result of existing customer
    @Conventional
    @Release @Part-2
    @ImplementedBy-pallavi.singh
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    Examples:
      | ApplicantType   | Category | key | ApplicationStage | IEB      | Fetched     | ProductType   | CancelApplicationWB     | CancelApplication  | CancelApplication_rowNum |
      | <ApplicantType> |          |     | LEAD DETAILS     | Internal | fetched     | <ProductType> | cancel_application.xlsx | cancel_application | 23                       |
      | <ApplicantType> |          |     | LEAD DETAILS     | GCD      | not fetched | <ProductType> | cancel_application.xlsx | cancel_application | 23                       |
      | <ApplicantType> |          |     | LEAD DETAILS     | Both     | fetched     | <ProductType> | cancel_application.xlsx | cancel_application | 23                       |
    @Islamic
    @Release
    @Part-2
    @ImplementedBy-akash.bansal
    #${ProductType:["IHF","IAF"]}
    Examples:
      | ApplicantType   | Category | key | ApplicationStage | IEB      | Fetched     | ProductType   | CancelApplicationWB     | CancelApplication  | CancelApplication_rowNum |
      | <ApplicantType> |          |     | Sourcing         | Internal | fetched     | <ProductType> | cancel_application.xlsx | cancel_application | 23                       |
      | <ApplicantType> |          |     | Sourcing         | GCD      | not fetched | <ProductType> | cancel_application.xlsx | cancel_application | 23                       |
      | <ApplicantType> |          |     | Sourcing         | Both     | fetched     | <ProductType> | cancel_application.xlsx | cancel_application | 23                       |
    @Islamic
    @Release
    @Part-2
    @ImplementedBy-akash.bansal
    #${ProductType:["IPF"]}
    #${Category:["bonds"]}
    Examples:
      | ApplicantType   | Category   | key | ApplicationStage | IEB      | Fetched     | ProductType   | CancelApplicationWB     | CancelApplication  | CancelApplication_rowNum |
      | <ApplicantType> | <Category> |     | Sourcing         | Internal | fetched     | <ProductType> | cancel_application.xlsx | cancel_application | 23                       |
      | <ApplicantType> | <Category> |     | Sourcing         | GCD      | not fetched | <ProductType> | cancel_application.xlsx | cancel_application | 23                       |
      | <ApplicantType> | <Category> |     | Sourcing         | Both     | fetched     | <ProductType> | cancel_application.xlsx | cancel_application | 23                       |
    @NotImplemented
      # ${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
    Examples:
      | ApplicantType   | Category | key | ApplicationStage | IEB      | Fetched     | ProductType   | CancelApplicationWB     | CancelApplication  | CancelApplication_rowNum |
      | <ApplicantType> |          |     | LEAD DETAILS     | Internal | fetched     | <ProductType> | cancel_application.xlsx | cancel_application | 23                       |
      | <ApplicantType> |          |     | LEAD DETAILS     | GCD      | not fetched | <ProductType> | cancel_application.xlsx | cancel_application | 23                       |
      | <ApplicantType> |          |     | LEAD DETAILS     | Both     | fetched     | <ProductType> | cancel_application.xlsx | cancel_application | 23                       |

  #FeatureID-ACAUTOCAS-146
  #  01_CAS-64389
  #StoryID:CAS-64389
  Scenario Outline: ACAUTOCAS-12619: Source system validation in searching existing customer from <IEB> which is rejected application
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user reads data from the excel file "<CancelApplicationWB>" under sheet "<CancelApplication>" and row <CancelApplication_rowNum>
    And user reject the application
    And user try to create an application by existing customer
    When user fetch the rejected application from "<IEB>"
    Then source system should be "<SourceSystem>"
    @Conventional
    @Release @Part-2
    @ImplementedBy-pallavi.singh
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    Examples:
      | ApplicantType   | Category | key | ApplicationStage | IEB      | SourceSystem | ProductType   | CancelApplicationWB     | CancelApplication  | CancelApplication_rowNum |
      | <ApplicantType> |          |     | LEAD DETAILS     | Internal | CAS          | <ProductType> | cancel_application.xlsx | cancel_application | 23                       |
      | <ApplicantType> |          |     | LEAD DETAILS     | GCD      | None         | <ProductType> | cancel_application.xlsx | cancel_application | 23                       |
      | <ApplicantType> |          |     | LEAD DETAILS     | Both     | CAS          | <ProductType> | cancel_application.xlsx | cancel_application | 23                       |
    @Islamic
    @Release
    @Part-2
    @ImplementedBy-akash.bansal
    #${ProductType:["IHF","IAF"]}
    Examples:
      | ApplicantType   | Category | key | ApplicationStage | IEB      | SourceSystem | ProductType   | CancelApplicationWB     | CancelApplication  | CancelApplication_rowNum |
      | <ApplicantType> |          |     | Sourcing         | Internal | CAS          | <ProductType> | cancel_application.xlsx | cancel_application | 23                       |
      | <ApplicantType> |          |     | Sourcing         | GCD      | None         | <ProductType> | cancel_application.xlsx | cancel_application | 23                       |
      | <ApplicantType> |          |     | Sourcing         | Both     | CAS          | <ProductType> | cancel_application.xlsx | cancel_application | 23                       |
    @Islamic
    @Release
    @Part-2
    @ImplementedBy-akash.bansal
    #${ProductType:["IPF"]}
    #${Category:["bonds"]}
    Examples:
      | ApplicantType   | Category   | key | ApplicationStage | IEB      | SourceSystem | ProductType   | CancelApplicationWB     | CancelApplication  | CancelApplication_rowNum |
      | <ApplicantType> | <Category> |     | Sourcing         | Internal | CAS          | <ProductType> | cancel_application.xlsx | cancel_application | 23                       |
      | <ApplicantType> | <Category> |     | Sourcing         | GCD      | None         | <ProductType> | cancel_application.xlsx | cancel_application | 23                       |
      | <ApplicantType> | <Category> |     | Sourcing         | Both     | CAS          | <ProductType> | cancel_application.xlsx | cancel_application | 23                       |
    @NotImplemented
# ${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
    Examples:
      | ApplicantType   | Category | key | ApplicationStage | IEB      | SourceSystem | ProductType   | CancelApplicationWB     | CancelApplication  | CancelApplication_rowNum |
      | <ApplicantType> |          |     | LEAD DETAILS     | Internal | CAS          | <ProductType> | cancel_application.xlsx | cancel_application | 23                       |
      | <ApplicantType> |          |     | LEAD DETAILS     | GCD      | None         | <ProductType> | cancel_application.xlsx | cancel_application | 23                       |
      | <ApplicantType> |          |     | LEAD DETAILS     | Both     | CAS          | <ProductType> | cancel_application.xlsx | cancel_application | 23                       |

  #FeatureID-ACAUTOCAS-146
  #StoryID:CAS-64389
  Scenario Outline: ACAUTOCAS-12617: Searching existing customer from <IEB> which is cancelled application
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user reads data from the excel file "<CancelApplicationWB>" under sheet "<CancelApplication>" and row <CancelApplication_rowNum>
    And user cancels the application
    And user try to create an application by existing customer
    When user fetch the cancelled application from "<IEB>"
    Then source system should be "<SourceSystem>"
    @Conventional
    @Release @Part-2
    @ImplementedBy-pallavi.singh
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ApplicantType   | Category | key | ApplicationStage | IEB      | SourceSystem | ProductType   | CancelApplicationWB     | CancelApplication  | CancelApplication_rowNum |
      | <ApplicantType> |          |     | LEAD DETAILS     | Internal | CAS          | <ProductType> | cancel_application.xlsx | cancel_application | 23                       |
      | <ApplicantType> |          |     | LEAD DETAILS     | GCD      | None         | <ProductType> | cancel_application.xlsx | cancel_application | 23                       |
      | <ApplicantType> |          |     | LEAD DETAILS     | Both     | CAS          | <ProductType> | cancel_application.xlsx | cancel_application | 23                       |
    @Islamic
    @Release
    @Part-2
    @ImplementedBy-akash.bansal
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ApplicantType   | Category | key | ApplicationStage | IEB      | SourceSystem | ProductType   | CancelApplicationWB     | CancelApplication  | CancelApplication_rowNum |
      | <ApplicantType> |          |     | Sourcing         | Internal | CAS          | <ProductType> | cancel_application.xlsx | cancel_application | 23                       |
      | <ApplicantType> |          |     | Sourcing         | GCD      | None         | <ProductType> | cancel_application.xlsx | cancel_application | 23                       |
      | <ApplicantType> |          |     | Sourcing         | Both     | CAS          | <ProductType> | cancel_application.xlsx | cancel_application | 23                       |
    @Islamic
    @Release
    @Part-2
    @ImplementedBy-akash.bansal
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category:["bonds"]}
    Examples:
      | ApplicantType   | Category   | key | ApplicationStage | IEB      | SourceSystem | ProductType   | CancelApplicationWB     | CancelApplication  | CancelApplication_rowNum |
      | <ApplicantType> | <Category> |     | Sourcing         | Internal | CAS          | <ProductType> | cancel_application.xlsx | cancel_application | 23                       |
      | <ApplicantType> | <Category> |     | Sourcing         | GCD      | None         | <ProductType> | cancel_application.xlsx | cancel_application | 23                       |
      | <ApplicantType> | <Category> |     | Sourcing         | Both     | CAS          | <ProductType> | cancel_application.xlsx | cancel_application | 23                       |
    @NotImplemented
# ${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
    Examples:
      | ApplicantType   | Category | key | ApplicationStage | IEB      | SourceSystem | ProductType   | CancelApplicationWB     | CancelApplication  | CancelApplication_rowNum |
      | <ApplicantType> |          |     | LEAD DETAILS     | Internal | CAS          | <ProductType> | cancel_application.xlsx | cancel_application | 23                       |
      | <ApplicantType> |          |     | LEAD DETAILS     | GCD      | None         | <ProductType> | cancel_application.xlsx | cancel_application | 23                       |
      | <ApplicantType> |          |     | LEAD DETAILS     | Both     | CAS          | <ProductType> | cancel_application.xlsx | cancel_application | 23                       |

