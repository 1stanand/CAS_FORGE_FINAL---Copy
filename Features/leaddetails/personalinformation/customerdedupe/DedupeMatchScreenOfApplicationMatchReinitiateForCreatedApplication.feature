@Epic-Applicant_Information
@AuthoredBy-vipin.kishor
@ReviewedBy-ayush.garg
@TechReviewedBy-
@Release3
@Reconciled
@ReviewedByDEV
@AppInfoAdoption
@Dedupe

# ${ ApplicantType : ["indiv"]}
#FeatureID-ACAUTOCAS-152,ACAUTOCAS-5976
Feature:Dedupe Match Screen Of Application match re-initiate on created application


  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0


  @Perishable
  Scenario Outline: ACAUTOCAS-4952: Validate Application match's dedupe match screen <ApplicantFields> field at <ApplicationStage> stage for <ProductType> product type
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
      | ApplicationStage   | ProductType   | ApplicantType   | Category | Key | Parameter         | ApplicantFields                        |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Application Match | Customer Name                          |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Application Match | DOB                                    |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Application Match | Gender                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Application Match | Neo CIF Number                         |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Application Match | Identification                         |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Application Match | Last dedupe Run by(user name)          |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Application Match | Last Dedupe Execution time (Date/Time) |

    # ${ ProductType : ["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Credit Approval","Reconsideration"]}
    @ImplementedBy-rishabh.sachan
    @Islamic
    @Release
@Part-1
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category | Key | Parameter         | ApplicantFields                        |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Application Match | Customer Name                          |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Application Match | DOB                                    |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Application Match | Gender                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Application Match | Neo CIF Number                         |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Application Match | Identification                         |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Application Match | Last dedupe Run by(user name)          |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Application Match | Last Dedupe Execution time (Date/Time) |

    # ${ ProductType : ["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    # ${ Category : ["bonds"]}
    @ImplementedBy-rishabh.sachan
    @Islamic
    @Release
@Part-1
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category   | Key | Parameter         | ApplicantFields                        |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | Application Match | Customer Name                          |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | Application Match | DOB                                    |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | Application Match | Gender                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | Application Match | Neo CIF Number                         |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | Application Match | Identification                         |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | Application Match | Last dedupe Run by(user name)          |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | Application Match | Last Dedupe Execution time (Date/Time) |

     # ${ProductType:["FAS","GL","JLG","SHG"]}
    #${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
    @Deferred
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category | Key | Parameter         | ApplicantFields                        |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Application Match | Customer Name                          |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Application Match | DOB                                    |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Application Match | Gender                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Application Match | Neo CIF Number                         |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Application Match | Identification                         |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Application Match | Last dedupe Run by(user name)          |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Application Match | Last Dedupe Execution time (Date/Time) |
