@Epic-Applicant_Information
@AuthoredBy-vipin.kishor
@ReviewedBy-ayush.garg
@ImplementedBy-rishabh.sachan
@TechReviewedBy-
@Reconciled
@ReviewedByDEV
@AppInfoAdoption
@Dedupe

# ${ ApplicantType : ["indiv"]}
#FeatureID- ACAUTOCAS-152,ACAUTOCAS-5976
Feature:Application match re-initiate on created application


  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0

  Scenario Outline: ACAUTOCAS-4948: Validate Application match re-initiate at <ApplicationStage> stage for <ProductType> on created application
#   Creates an application with an existing application data for duplicates reason
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user navigates to personal information page of "<ApplicationStage>"
    When user clicks on checks for duplicates
    And user re-initiate "<Parameter>" duplicates
    Then application match re-initiated at "<ApplicationStage>" stage

    #${ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @ImplementedBy-rishabh.sachan
    @Conventional
    @Release @Part-1
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category | Key | Parameter         |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Application Match |

    #${ProductType : ["IHF","IAF"]}
    #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Credit Approval","Reconsideration"]}
    @ImplementedBy-rishabh.sachan
    @Islamic
    @Release
@Part-1
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category | Key | Parameter         |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Application Match |

    #${ProductType : ["IPF"]}
    #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category : ["bonds"]}
    @ImplementedBy-rishabh.sachan
    @Islamic
    @Release
@Part-1
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category   | Key | Parameter         |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | Application Match |

    @Deferred
    # ${ProductType:["FAS","GL","JLG","SHG"]}
      # ${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category | Key | Parameter         |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Application Match |


#1. Application Match: In this dedupe is run on the CAS database. the result shall be displayed by
#the system as per the customer found in CAS Database.
  Scenario Outline: ACAUTOCAS-4949: Application Match after check for duplicates at <ApplicationStage> stage for <ProductType> on created application
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user navigates to personal information page of "<ApplicationStage>"
    When user clicks on checks for duplicates
#    In this dedupe is run on the CAS database
    Then the result shall be displayed by the system as per the customer found in CAS Database

    #${ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @ImplementedBy-rishabh.sachan
    @Conventional
    @Release @Part-1
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category | Key |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |

    #${ProductType : ["IHF","IAF"]}
    #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Credit Approval","Reconsideration"]}
    @ImplementedBy-rishabh.sachan
    @Islamic
    @Release
@Part-1
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category | Key |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |

    #${ProductType : ["IPF"]}
    #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category : ["bonds"]}
    @ImplementedBy-rishabh.sachan
    @Islamic
    @Release
@Part-1
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category   | Key |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     |

    @Deferred
    # ${ProductType:["FAS","GL","JLG","SHG"]}
      # ${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category | Key |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |


  @Perishable
  Scenario Outline: ACAUTOCAS-4950: Validating <NumberOfApplication> applications that are found to be duplicates in application match at <ApplicationStage> stage for <ProductType> on created application
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user fetch customer number from current application
    And user updates the application for dedupe
    And user navigates to personal information page of "<ApplicationStage>"
    When user clicks on checks for duplicates
    And user re-initiate "<Parameter>"
    And user open the duplicates found to validate "<Parameter>"
    Then new applicant data(matching parameters) should be matched with existing application for "<NumberOfApplication>" applicants

    #${ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${NumberOfApplication:["single","multiple"]}
    @ImplementedBy-rishabh.sachan
    @Conventional
    @Release @Part-1
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category | Key | Parameter         | NumberOfApplication   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Application Match | <NumberOfApplication> |

    #${ProductType : ["IHF","IAF"]}
    #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Credit Approval","Reconsideration"]}
    #${NumberOfApplication:["single","multiple"]}
    @ImplementedBy-rishabh.sachan
    @Islamic
    @Release
@Part-1
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category | Key | Parameter         | NumberOfApplication   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Application Match | <NumberOfApplication> |

    #${ProductType : ["IPF"]}
    #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category : ["bonds"]}
    #${NumberOfApplication:["single","multiple"]}
    @ImplementedBy-rishabh.sachan
    @Islamic
    @Release
@Part-1
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category   | Key | Parameter         | NumberOfApplication   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | Application Match | <NumberOfApplication> |

    @Deferred
    # ${ProductType:["FAS","GL","JLG","SHG"]}
      # ${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${NumberOfApplication:["single","multiple"]}
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category | Key | Parameter         | NumberOfApplication   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Application Match | <NumberOfApplication> |


  @Perishable
  Scenario Outline: ACAUTOCAS-4951: Link the duplicates found <NumberOfApplication> application with current new applicant in application match at <ApplicationStage> stage for <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user fetch customer number from current application
    And user updates the application for dedupe
    And user navigates to personal information page of "<ApplicationStage>"
    When user clicks on checks for duplicates
    And user re-initiate "<Parameter>"
    And user open the duplicates found to validate "<Parameter>"
    And user link the "<NumberOfApplication>" duplicates found application at "<ApplicationStage>" stage
    Then application should be successfully linked with new current applicant

    #${ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${NumberOfApplication:["single","multiple"]}
    @ImplementedBy-rishabh.sachan
    @Conventional
    @Release @Part-1
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category | Key | Parameter         | NumberOfApplication   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Application Match | <NumberOfApplication> |

    #${ProductType : ["IHF","IAF"]}
    #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Credit Approval","Reconsideration"]}
    #${NumberOfApplication:["single","multiple"]}
    @ImplementedBy-rishabh.sachan
    @Islamic
    @Release
@Part-1
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category | Key | Parameter         | NumberOfApplication   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Application Match | <NumberOfApplication> |

    #${ProductType : ["IPF"]}
    #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category : ["bonds"]}
    #${NumberOfApplication:["single","multiple"]}
    @ImplementedBy-rishabh.sachan
    @Islamic
    @Release
@Part-1
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category   | Key | Parameter         | NumberOfApplication   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | Application Match | <NumberOfApplication> |

    @Deferred
    # ${ProductType:["FAS","GL","JLG","SHG"]}
      # ${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${NumberOfApplication:["single","multiple"]}
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category | Key | Parameter         | NumberOfApplication   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Application Match | <NumberOfApplication> |


  #Dedupe Match Screen
  @Perishable
  Scenario Outline: ACAUTOCAS-4953: View matched application <DetailField> from Dedupe Match Screen in application match at <ApplicationStage> stage for <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user fetch customer number from current application
    And user updates the application for dedupe
    And user navigates to personal information page of "<ApplicationStage>"
    When user clicks on checks for duplicates
    And user re-initiate "<Parameter>"
    And user open the duplicates found to validate "<Parameter>"
    And user open an application to view Matched Application's "<DetailField>"
    Then user can view all Matched Application's "<DetailField>"

    #${ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${DetailField:["Dedupe details","Applicant details","Loan details"]}
    @ImplementedBy-rishabh.sachan
    @Conventional
    @Release @Part-1
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category | Key | Parameter         | DetailField   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Application Match | <DetailField> |

    #${ProductType : ["IHF","IAF"]}
    #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Credit Approval","Reconsideration"]}
    #${DetailField:["Dedupe details","Applicant details","Loan details"]}
    @ImplementedBy-rishabh.sachan
    @Islamic
    @Release
@Part-1
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category | Key | Parameter         | DetailField   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Application Match | <DetailField> |

    #${ProductType : ["IPF"]}
    #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category : ["bonds"]}
    #${DetailField:["Dedupe details","Applicant details","Loan details"]}
    @ImplementedBy-rishabh.sachan
    @Islamic
    @Release
@Part-1
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category   | Key | Parameter         | DetailField   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | Application Match | <DetailField> |

    @Deferred
    # ${ProductType:["FAS","GL","JLG","SHG"]}
      # ${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${DetailField:["Dedupe details","Applicant details","Loan details"]}
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category | Key | Parameter         | DetailField   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Application Match | <DetailField> |
