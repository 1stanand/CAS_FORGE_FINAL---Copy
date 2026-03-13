@Epic-Applicant_Information
@AuthoredBy-vipin.kishor
@Reconciled
@AppInfoAdoption
@Dedupe

# ${ ApplicantType : ["indiv"]}
#FeatureID-ACAUTOCAS-153,ACAUTOCAS-5974
Feature:Dedupe Match Screen Of Customer Match Re-initiate For Created Application


  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0


  @Perishable
  Scenario Outline:ACAUTOCAS-4946: Validate customer match's dedupe match screen <ApplicantFields> field at <ApplicationStage> stage for <ProductType> product
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user fetch customer number from current application
    And user updates the application for dedupe
    And user navigates to personal information page of "<ApplicationStage>"
    When user clicks on checks for duplicates
    And user re-initiate "<Parameter>"
    And user open the duplicates found to validate "<Parameter>"
    Then "<ApplicantFields>" should be present in Dedupe Match Screen

    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @ImplementedBy-rishabh.sachan
    @Conventional
    @Release @Part-1
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category | Key | Parameter      | ApplicantFields                        |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Customer Match | Customer Name                          |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Customer Match | DOB                                    |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Customer Match | Gender                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Customer Match | Neo CIF Number                         |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Customer Match | Identification                         |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Customer Match | Last dedupe Run by(user name)          |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Customer Match | Last Dedupe Execution time (Date/Time) |

    # ${ ProductType : ["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Credit Approval","Reconsideration"]}
    @ImplementedBy-rishabh.sachan
    @Islamic
    @Release
@Part-1
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category | Key | Parameter      | ApplicantFields                        |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Customer Match | Customer Name                          |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Customer Match | DOB                                    |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Customer Match | Gender                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Customer Match | Neo CIF Number                         |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Customer Match | Identification                         |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Customer Match | Last dedupe Run by(user name)          |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Customer Match | Last Dedupe Execution time (Date/Time) |

    # ${ ProductType : ["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    # ${ Category : ["bonds"]}
    @ImplementedBy-rishabh.sachan
    @Islamic
    @Release
@Part-1
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category   | Key | Parameter      | ApplicantFields                        |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | Customer Match | Customer Name                          |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | Customer Match | DOB                                    |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | Customer Match | Gender                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | Customer Match | Neo CIF Number                         |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | Customer Match | Identification                         |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | Customer Match | Last dedupe Run by(user name)          |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | Customer Match | Last Dedupe Execution time (Date/Time) |

     # ${ProductType:["FAS","GL","JLG","SHG"]}
    #${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
    @Deferred
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category | Key | Parameter      | ApplicantFields                        |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Customer Match | Customer Name                          |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Customer Match | DOB                                    |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Customer Match | Gender                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Customer Match | Neo CIF Number                         |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Customer Match | Identification                         |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Customer Match | Last dedupe Run by(user name)          |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Customer Match | Last Dedupe Execution time (Date/Time) |
