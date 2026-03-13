@Epic-Applicant_Information
@AuthoredBy-vipin.kishor
@ReviewedBy-ayush.garg
@ReviewedByDEV
@AppInfoAdoption
@Perishable
#FeatureID-ACAUTOCAS-153,ACAUTOCAS-5974

  # ${ApplicantType:["indiv","nonindiv"]}
Feature:Customer match re-initiate on created application

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0


  Scenario Outline: ACAUTOCAS-4942: Validate Customer match re-initiate at <ApplicationStage> stage for <ProductType> on created application
#   Creates an application with an existing application data for duplicates reason
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user fetch customer number from current application
    And user updates the application for dedupe
    And user navigate to personal information screen on "<ApplicationStage>"
    And user consent the identification details
    When user clicks on checks for duplicates
    And user re-initiate "<Parameter>"
    Then "<Parameter>" match re-initiated at "<ApplicationStage>" stage

    #${ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @ImplementedBy-deep.maurya
    @Conventional
    @Release @Part-1
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category | Key | Parameter      |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Customer Match |

    #${ProductType : ["IHF","IAF"]}
    #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Credit Approval","Reconsideration"]}
    @ImplementedBy-utkarsh.tiwari
    @Islamic
    @Release
    @Part-1
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category | Key | Parameter      |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Customer Match |

    #${ProductType : ["IPF"]}
    #${ApplicationStage:["Sourcing","LOGIN ACCEPTANCE","DDE","Recommendation","Credit Approval","RECONSIDERATION"]}
    #${Category : ["bonds"]}
    @ImplementedBy-utkarsh.tiwari
    @Islamic
    @Release
    @Part-1
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category   | Key | Parameter      |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | Customer Match |

    #${ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
    #${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category | Key | Parameter      |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Customer Match |


#1. Customer Match: In this dedupe is run on the CAS database. the result shall be displayed by
#the system as per the customer found in CAS Database.


  @FixedExp
  Scenario Outline: ACAUTOCAS-4943: Customer Match after check for duplicates at <ApplicationStage> stage for <ProductType> on created application
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user fetch customer number from current application
    And user updates the application for dedupe
    And user navigate to personal information screen on "<ApplicationStage>"
    And user consent the identification details
    When user clicks on checks for duplicates
#    In this dedupe is run on the CAS database
    Then the result shall be displayed by the system as per the customer found on "<ApplicationStage>" in CAS Database

    #${ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @ImplementedBy-deep.maurya
    @Conventional
    @Release @Part-1
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category | Key |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |

    #${ProductType : ["IHF","IAF"]}
    #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Credit Approval","Reconsideration"]}
    @ImplementedBy-utkarsh.tiwari
    @Islamic
    @Release
    @Part-1
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category | Key |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |

    #${ProductType : ["IPF"]}
    #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category : ["bonds"]}
    @ImplementedBy-utkarsh.tiwari
    @Islamic
    @Release
    @Part-1
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category   | Key |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     |

    #${ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
    #${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category | Key |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |


  Scenario Outline: ACAUTOCAS-4944: Validating <NumberOfApplications> applications that are found to be duplicates in customer match at <ApplicationStage> stage for <ProductType> on created application
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user fetch customer number from current application
    And user updates the application for dedupe
    And user navigate to personal information screen on "<ApplicationStage>"
    And user consent the identification details
    When user clicks on checks for duplicates
    And user re-initiate "<Parameter>"
    And user open the duplicates found to validate "<Parameter>"
    Then new applicant data(matching parameters) should be matched with existing application for "<NumberOfApplications>" applicants

    #${ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${NumberOfApplications:["single","multiple"]}
    @ImplementedBy-deep.maurya
    @Conventional
    @Release @Part-1
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category | Key | Parameter      | NumberOfApplications   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Customer Match | <NumberOfApplications> |

    #${ProductType : ["IHF","IAF"]}
    #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Credit Approval","Reconsideration"]}
    #${NumberOfApplications:["single","multiple"]}
    @ImplementedBy-utkarsh.tiwari
    @Islamic
    @Release
    @Part-1
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category | Key | Parameter      | NumberOfApplications   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Customer Match | <NumberOfApplications> |

    #${ProductType : ["IPF"]}
    #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category : ["bonds"]}
    #${NumberOfApplications:["single","multiple"]}
    @ImplementedBy-utkarsh.tiwari
    @Islamic
    @Release
    @Part-1
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category   | Key | Parameter      | NumberOfApplications   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | Customer Match | <NumberOfApplications> |

    #${ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
    #${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${NumberOfApplications:["single","multiple"]}
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category | Key | Parameter      | NumberOfApplications   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Customer Match | <NumberOfApplications> |


  Scenario Outline: ACAUTOCAS-4945: Link the duplicates found <NumberOfApplications> application with current new applicant in customer match at <ApplicationStage> stage for <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user fetch customer number from current application
    And user updates the application for dedupe
    And user navigate to personal information screen on "<ApplicationStage>"
    And user consent the identification details
    When user clicks on checks for duplicates
    And user re-initiate "<Parameter>"
    And user open the duplicates found to validate "<Parameter>"
    And user link the "<NumberOfApplications>" duplicates found application at "<ApplicationStage>" stage
    Then application should be successfully linked with new current applicant

    #${ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${NumberOfApplications:["single","multiple"]}
    @ImplementedBy-deep.maurya
    @Conventional
    @Release @Part-1
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category | Key | Parameter      | NumberOfApplications   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Customer Match | <NumberOfApplications> |

    #${ProductType : ["IHF","IAF"]}
    #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Credit Approval","Reconsideration"]}
    #${NumberOfApplications:["single","multiple"]}
    @ImplementedBy-utkarsh.tiwari
    @Islamic
    @Release
    @Part-1
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category | Key | Parameter      | NumberOfApplications   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Customer Match | <NumberOfApplications> |

    #${ProductType : ["IPF"]}
    #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category : ["bonds"]}
    #${NumberOfApplications:["single","multiple"]}
    @ImplementedBy-utkarsh.tiwari
    @Islamic
    @Release
    @Part-1
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category   | Key | Parameter      | NumberOfApplications   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | Customer Match | <NumberOfApplications> |

    #${ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
    #${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${NumberOfApplications:["single","multiple"]}
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category | Key | Parameter      | NumberOfApplications   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Customer Match | <NumberOfApplications> |


  Scenario Outline: ACAUTOCAS-4947: View matched application <DetailsFields> from Dedupe Match Screen in customer match at <ApplicationStage> stage for <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user fetch customer number from current application
    And user updates the application for dedupe
    And user navigates to personal information page of "<ApplicationStage>"
    And user consent the identification details
    When user clicks on checks for duplicates
    And user re-initiate "<Parameter>"
    And user open the duplicates found to validate "<Parameter>"
    And user open an application to view Matched Application's "<DetailsFields>"
    Then user can view all Matched Application's "<DetailsFields>"
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @ImplementedBy-kanika.mahal
    @Conventional
    @Release @Part-1
    Examples:
      | DetailsFields     | ApplicationStage   | ProductType   | ApplicantType   | Category | Key | Parameter      |
      | Dedupe details    | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Customer Match |
      | Applicant details | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Customer Match |
      | Loan details      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Customer Match |
# ${ ProductType : ["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Credit Approval","Reconsideration"]}
    @ImplementedBy-kanika.mahal
    @Islamic
    @Release
    @Part-1
    Examples:
      | DetailsFields     | ApplicationStage   | ProductType   | ApplicantType   | Category | Key | Parameter      |
      | Dedupe details    | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Customer Match |
      | Applicant details | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Customer Match |
      | Loan details      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Customer Match |
# ${ ProductType : ["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    # ${ Category : ["bonds"]}
    @ImplementedBy-kanika.mahal
    @Islamic
    @Release
    @Part-1
    Examples:
      | DetailsFields     | ApplicationStage   | ProductType   | ApplicantType   | Category   | Key | Parameter      |
      | Dedupe details    | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | Customer Match |
      | Applicant details | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | Customer Match |
      | Loan details      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | Customer Match |
#${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
    #${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
    @NotImplemented
    Examples:
      | DetailsFields     | ApplicationStage   | ProductType   | ApplicantType   | Category | Key | Parameter      |
      | Dedupe details    | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Customer Match |
      | Applicant details | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Customer Match |
      | Loan details      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Customer Match |




















