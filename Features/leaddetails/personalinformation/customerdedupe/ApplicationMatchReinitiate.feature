@Epic-Applicant_Information
@AuthoredBy-vipin.kishor
@ReviewedBy-ayush.garg
@TechReviewedBy-
@Reconciled
@AppInfoAdoption
@Perishable
@Dedupe

#FeatureID-ACAUTOCAS-152,ACAUTOCAS-5976

# ${ApplicantType:["indiv","nonindiv"]}
Feature:Application match re-initiate

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0

  @MultiCheck
  Scenario Outline:ACAUTOCAS-4906: Validate Application match re-initiate for "<ProductType>"
#   Creates an application with an existing application data for duplicates reason
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user fetch customer number from current application
    And user updates the application for dedupe
    And user create existing application for "<ProductType>"
    When user clicks on checks for duplicates
    And user saves the application number and application
    And user create existing application for "<ProductType>"
    And user clicks on checks for duplicates
    And user re-initiate "<MatchType>"
    Then "<MatchType>" re-initiated
    @Conventional
    @Release @Part-1
    @ImplementedBy-yash.sharma
      #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
      # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | MatchType         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Application Match |
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-akash.bansal
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | MatchType         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Application Match |
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-akash.bansal
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category:["bonds"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | key | MatchType         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Application Match |
    # ${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
    @NotImplemented
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | MatchType         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Application Match |

#1. Application Match: In this dedupe is run on the CAS database. the result shall be displayed by
#the system as per the customer found in CAS Database.

  @Sanity
  Scenario Outline:ACAUTOCAS-4907: Application Match after check for duplicates in "<ProductType>"
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user fetch customer number from current application
    And user updates the application for dedupe
    And user create existing application for "<ProductType>"
    When user clicks on checks for duplicates
    And user saves the application number and application
    And user create existing application for "<ProductType>"
    When user clicks on checks for duplicates
#    In this dedupe is run on the CAS database
    Then the result shall be displayed by the system as per the customer found in CAS Database
    @Conventional
    @Release @Part-1
    @ImplementedBy-yash.sharma
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

  Scenario Outline:ACAUTOCAS-4908:Validating applications that are found to be duplicates in application match for "<ProductType>" with "<NumberOfApplications>" application
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user fetch customer number from current application
    And user updates the application for dedupe
    And user create existing application for "<ProductType>"
    When user clicks on checks for duplicates
    And user saves the application number and application
    And user create existing application for "<ProductType>"
    When user clicks on checks for duplicates
    And user re-initiate "<MatchType>"
    And user open the duplicates found to validate "<MatchType>"
    And user check strength of match on "<NumberOfApplications>" application
    Then new applicant data(matching parameters) should be matched with existing application for "<NumberOfApplications>" applicants
    @Conventional
    @Release @Part-1
    @ImplementedBy-yash.sharma
      #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
      # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | NumberOfApplications | MatchType         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | single               | Application Match |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | multiple             | Application Match |
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-akash.bansal
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | NumberOfApplications | MatchType         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | single               | Application Match |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | multiple             | Application Match |
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-akash.bansal
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category:["bonds"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | key | NumberOfApplications | MatchType         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | single               | Application Match |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | multiple             | Application Match |
    # ${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
    @NotImplemented
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | NumberOfApplications | MatchType         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | single               | Application Match |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | multiple             | Application Match |

  @MultiCheck
  Scenario Outline: ACAUTOCAS-4909:Link the duplicates found application with current new applicant in application match for "<ProductType>" with "<NumberOfApplications>" application
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user fetch customer number from current application
    And user updates the application for dedupe
    And user opens Applicant information page of "<ApplicationStage>" with view and edit mode
    When user clicks on checks for duplicates
    And user re-initiate "<MatchType>"
    And user open the duplicates found to validate "<MatchType>"
    And user link the "<NumberOfApplications>" duplicates found application
    Then application should be successfully linked with new current applicant
    @Conventional
    @Release @Part-1
    @ImplementedBy-yash.sharma
      #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
      # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | NumberOfApplications | MatchType         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | single               | Application Match |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | multiple             | Application Match |
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-akash.bansal
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | NumberOfApplications | MatchType         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | single               | Application Match |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | multiple             | Application Match |
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-akash.bansal
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category:["bonds"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | key | NumberOfApplications | MatchType         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | single               | Application Match |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | multiple             | Application Match |
    # ${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
    @NotImplemented
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | NumberOfApplications | MatchType         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | single               | Application Match |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | multiple             | Application Match |

#    Dedupe Match Screen

  Scenario Outline:ACAUTOCAS-4910: Validate application match's dedupe match screen "<ApplicantFields>" field for "<ProductType>"
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user fetch customer number from current application
    And user updates the application for dedupe
    And user create existing application for "<ProductType>"
    When user clicks on checks for duplicates
    And user saves the application number and application
    And user create existing application for "<ProductType>"
    When user clicks on checks for duplicates
    And user re-initiate "<MatchType>"
    And user open the duplicates found to validate "<MatchType>"
    Then "<ApplicantFields>" should be present in Dedupe Match Screen
    @Conventional
    @Release @Part-1
    @ImplementedBy-yash.sharma
      #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
      # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | ApplicantFields                        | MatchType         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Customer Name                          | Application Match |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | DOB                                    | Application Match |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Gender                                 | Application Match |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Neo CIF Number                         | Application Match |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Identification                         | Application Match |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Last dedupe Run by(user name)          | Application Match |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Last Dedupe Execution time (Date/Time) | Application Match |
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-akash.bansal
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | ApplicantFields                        | MatchType         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Customer Name                          | Application Match |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | DOB                                    | Application Match |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Gender                                 | Application Match |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Neo CIF Number                         | Application Match |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Identification                         | Application Match |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Last dedupe Run by(user name)          | Application Match |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Last Dedupe Execution time (Date/Time) | Application Match |
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-akash.bansal
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category:["bonds"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | key | ApplicantFields                        | MatchType         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Customer Name                          | Application Match |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | DOB                                    | Application Match |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Gender                                 | Application Match |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Neo CIF Number                         | Application Match |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Identification                         | Application Match |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Last dedupe Run by(user name)          | Application Match |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Last Dedupe Execution time (Date/Time) | Application Match |
    # ${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
    @NotImplemented
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | ApplicantFields                        | MatchType         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Customer Name                          | Application Match |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | DOB                                    | Application Match |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Gender                                 | Application Match |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Neo CIF Number                         | Application Match |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Identification                         | Application Match |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Last dedupe Run by(user name)          | Application Match |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Last Dedupe Execution time (Date/Time) | Application Match |


  Scenario Outline: ACAUTOCAS-4911:View matched application details from Dedupe Match Screen in application match "<DetailsFields>" field for "<ProductType>"
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user fetch customer number from current application
    And user updates the application for dedupe
    And user opens Applicant information page of "<ApplicationStage>" with view and edit mode
    When user clicks on checks for duplicates
    And user re-initiate "<MatchType>"
    And user open the duplicates found to validate "<MatchType>"
    And user open an application to view Matched Application's "<DetailsFields>"
    Then user can view all Matched Application's "<DetailsFields>"
    @Conventional
    @Release @Part-1
    @ImplementedBy-yash.sharma
      #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
      # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | DetailsFields     | MatchType         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Dedupe details    | Application Match |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Applicant details | Application Match |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Loan details      | Application Match |
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-akash.bansal
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | DetailsFields     | MatchType         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Dedupe details    | Application Match |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Applicant details | Application Match |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Loan details      | Application Match |
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-akash.bansal
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category:["bonds"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | key | DetailsFields     | MatchType         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Dedupe details    | Application Match |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Applicant details | Application Match |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Loan details      | Application Match |
    # ${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
    @NotImplemented
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | DetailsFields     | MatchType         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Dedupe details    | Application Match |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Applicant details | Application Match |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Loan details      | Application Match |
