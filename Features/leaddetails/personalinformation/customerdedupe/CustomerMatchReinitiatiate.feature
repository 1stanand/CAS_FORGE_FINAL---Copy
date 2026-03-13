@Epic-Applicant_Information
@AuthoredBy-vipin.kishor
@ReviewedBy-ayush.garg
@TechReviewedBy-
@Reconciled
@ReviewedByDEV
@AppInfoAdoption
@Perishable
@Dedupe
  #FeatureID-ACAUTOCAS-153, ACAUTOCAS-5974

  # ${ApplicantType:["indiv","nonindiv"]}
Feature:Customer match re-initiate

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0

  @MultiCheck
    @FixedExp
  Scenario Outline:ACAUTOCAS-4914:Validate Customer match re-initiate for <ProductType>
    #Creates an application with an existing application data for duplicates reason
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user fetch customer number from current application
    And user updates the application for dedupe
    And user create existing application for "<ProductType>"
    When user clicks on checks for duplicates
    And user re-initiate "<MatchType>"
    Then "<MatchType>" re-initiated
    @Conventional
    @Release @Part-1
    @ImplementedBy-manish.yadav2
      #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
      # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | MatchType      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Customer Match |
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-akash.bansal
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | MatchType      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Customer Match |
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-akash.bansal
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category:["bonds"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | key | MatchType      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Customer Match |
    # ${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
    @NotImplemented
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | MatchType      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Customer Match |


  Scenario Outline: ACAUTOCAS-4915:Customer Match after check for duplicate in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user fetch customer number from current application
    And user updates the application for dedupe
    And user create existing application for "<ProductType>"
    #In this dedupe is run on the External Database by the system. I.e. GCD
    When user clicks on checks for duplicates
    Then the result shall be displayed by the system as per the customer found in GCD Database
    @Conventional
    @Release @Part-1
    @ImplementedBy-manish.yadav2
      #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
      # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-akash.bansal
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-akash.bansal
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category:["bonds"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     |
    # ${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
    @NotImplemented
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |

  @MultiCheck
  Scenario Outline: ACAUTOCAS-4916:Validating <NumberOfApplications> applications that are found to be duplicates in customer match for <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user fetch customer number from current application
    And user updates the application for dedupe
    And user opens Applicant information page of "<ApplicationStage>" with view and edit mode
    When user clicks on checks for duplicates
    #And the result shall be displayed by the system as per the customer found in GCD Database
    And user re-initiate "<MatchType>"
    And user open the duplicates found to validate "<MatchType>"
    And user check strength of match on "<NumberOfApplications>" application
    Then new applicant data(matching parameters) should be matched with existing application for "<NumberOfApplications>" applicants
    @Conventional
    @Release @Part-1
    @ImplementedBy-manish.yadav2
      #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
      # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | NumberOfApplications | MatchType      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | single               | Customer Match |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | multiple             | Customer Match |
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-akash.bansal
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | NumberOfApplications | MatchType      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | single               | Customer Match |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | multiple             | Customer Match |
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-akash.bansal
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category:["bonds"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | key | NumberOfApplications | MatchType      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | single               | Customer Match |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | multiple             | Customer Match |
    # ${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
    @NotImplemented
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | NumberOfApplications | MatchType      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | single               | Customer Match |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | multiple             | Customer Match |

  @MultiCheck
  Scenario Outline:ACAUTOCAS-4917: Link the duplicates found <NumberOfApplications> application with current new applicant in customer match for <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user fetch customer number from current application
    And user updates the application for dedupe
    And user opens Applicant information page of "<ApplicationStage>" with view and edit mode
    When user clicks on checks for duplicates
    #And the result shall be displayed by the system as per the customer found in GCD Database
    And user re-initiate "<MatchType>"
    And user open the duplicates found to validate "<MatchType>"
    And user link the "<NumberOfApplications>" duplicates found application
    Then application should be successfully linked with new current applicant
    @Conventional
    @Release @Part-1
    @ImplementedBy-manish.yadav2
      #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
      # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | NumberOfApplications | MatchType      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | single               | Customer Match |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | multiple             | Customer Match |
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-akash.bansal
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | NumberOfApplications | MatchType      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | single               | Customer Match |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | multiple             | Customer Match |
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-akash.bansal
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category:["bonds"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | key | NumberOfApplications | MatchType      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | single               | Customer Match |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | multiple             | Customer Match |
    # ${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
    @NotImplemented
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | NumberOfApplications | MatchType      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | single               | Customer Match |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | multiple             | Customer Match |


  Scenario Outline: ACAUTOCAS-4918: Validate customer match's dedupe match screen <ApplicantFields> for <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user fetch customer number from current application
    And user updates the application for dedupe
    And user opens Applicant information page of "<ApplicationStage>" with view and edit mode
    When user clicks on checks for duplicates
    #And the result shall be displayed by the system as per the customer found in GCD Database
    And user re-initiate "<MatchType>"
    And user open the duplicates found to validate "<MatchType>"
    Then "<ApplicantFields>" should be present in Dedupe Match Screen
    @Conventional
    @Release @Part-1
    @ImplementedBy-manish.yadav2
      #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
      # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | ApplicantFields                        | MatchType      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Customer Name                          | Customer Match |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | DOB                                    | Customer Match |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Gender                                 | Customer Match |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Neo CIF Number                         | Customer Match |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Identification                         | Customer Match |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Last dedupe Run by(user name)          | Customer Match |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Last Dedupe Execution time (Date/Time) | Customer Match |
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-akash.bansal
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | ApplicantFields                        | MatchType      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Customer Name                          | Customer Match |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | DOB                                    | Customer Match |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Gender                                 | Customer Match |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Neo CIF Number                         | Customer Match |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Identification                         | Customer Match |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Last dedupe Run by(user name)          | Customer Match |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Last Dedupe Execution time (Date/Time) | Customer Match |
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-akash.bansal
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category:["bonds"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | key | ApplicantFields                        | MatchType      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Customer Name                          | Customer Match |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | DOB                                    | Customer Match |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Gender                                 | Customer Match |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Neo CIF Number                         | Customer Match |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Identification                         | Customer Match |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Last dedupe Run by(user name)          | Customer Match |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Last Dedupe Execution time (Date/Time) | Customer Match |
    # ${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
    @NotImplemented
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | ApplicantFields                        | MatchType      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Customer Name                          | Customer Match |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | DOB                                    | Customer Match |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Gender                                 | Customer Match |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Neo CIF Number                         | Customer Match |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Identification                         | Customer Match |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Last dedupe Run by(user name)          | Customer Match |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Last Dedupe Execution time (Date/Time) | Customer Match |


  Scenario Outline: ACAUTOCAS-4919: View matched application <DetailsFields> from Dedupe Match Screen in customer match for <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user fetch customer number from current application
    And user updates the application for dedupe
    And user create existing application for "<ProductType>"
    When user clicks on checks for duplicates
    #And the result shall be displayed by the system as per the customer found in GCD Database
    And user re-initiate "<MatchType>"
    And user open the duplicates found to validate "<MatchType>"
    And user open an application to view Matched Application's "<DetailsFields>"
    Then user can view all Matched Application's "<DetailsFields>"
    @Conventional
    @Release @Part-1
    @ImplementedBy-manish.yadav2
      #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
      # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | DetailsFields     | MatchType      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Dedupe details    | Customer Match |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Applicant details | Customer Match |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Loan details      | Customer Match |
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-akash.bansal
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | DetailsFields     | MatchType      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Dedupe details    | Customer Match |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Applicant details | Customer Match |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Loan details      | Customer Match |
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-akash.bansal
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category:["bonds"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | key | DetailsFields     | MatchType      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Dedupe details    | Customer Match |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Applicant details | Customer Match |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Loan details      | Customer Match |
    # ${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
    @NotImplemented
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | DetailsFields     | MatchType      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Dedupe details    | Customer Match |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Applicant details | Customer Match |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Loan details      | Customer Match |
