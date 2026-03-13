@Epic-Applicant_Information
#@AuthoredBy-vinod.pandey
@ReviewedByDEV
@AppInfoAdoption
@FixedTest

  # ${ApplicantType:["indiv","nonindiv"]}
Feature:Neo CIF Number Generation

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0

  @Sanity
  @Perishable
  #FeatureID-ACAUTOCAS-131
  Scenario Outline: ACAUTOCAS-4205: Generate neo CIF number of <ApplicantType> <ProductType> application
    When user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user fills all mandatory kyc details of "<ProductType>" application
    And click on move to next stage
    And user verify application at "<NextStage>"
    And user opens an application of "<NextStage>" stage present in context from application grid
    Then cif number of the application is generated

    @ImplementedBy-atul.mishra
    @AuthoredBy-vipin.kishor
    @Release @Part-2
    @Conventional
     #${ ProductType : ["PF","HL","AL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
     #${ApplicationStage:["KYC"]}
    Examples:
      | ProductType   | ApplicationStage   | category | key | ApplicantType   | NextStage |
      | <ProductType> | <ApplicationStage> |          |     | <ApplicantType> | DDE       |

    @AuthoredBy-anshika.gupta
    @ImplementedBy-anshika.gupta
    @Islamic
    @Release
@Part-2
     # ${ ProductType : ["IHF","IAF"]}
     # ${ApplicationStage:["KYC"]}
    Examples:
      | ProductType   | ApplicationStage   | category | key | ApplicantType   | NextStage |
      | <ProductType> | <ApplicationStage> |          |     | <ApplicantType> | DDE       |

    @AuthoredBy-anshika.gupta
    @ImplementedBy-anshika.gupta
    @Islamic
    @Release
    @Part-2
    @FixedJsClick
    # ${ ProductType : ["IPF"]}
    #${ApplicationStage:["KYC"]}
    #${category : ["bonds"]}
    Examples:
      | ProductType   | ApplicationStage   | category   | key | ApplicantType   | NextStage              |
      | <ProductType> | <ApplicationStage> | <category> |     | <ApplicantType> | CREDIT_BUREAU_REFERRAL |

  #Squash-03_CAS-64389
  #FeatureID-ACAUTOCAS-131
  @Perishable
  Scenario Outline: ACAUTOCAS-11547: Verify neo CIF number of <ApplicantType> <ProductType> application is not generated at <ApplicationStage>
    When user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    Then cif number of the application is not generated

    @AuthoredBy-vipin.kishor
    @Conventional
    @ImplementedBy-rishabh.sachan
    @Release @Part-2
    #${ ProductType : ["PF","HL","AL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","KYC"]}
    Examples:
      | ProductType   | ApplicationStage   | category | key | ApplicantType   |
      | <ProductType> | <ApplicationStage> |          |     | <ApplicantType> |

    @AuthoredBy-anshika.gupta
    @ImplementedBy-anshika.gupta
    @Islamic
    @Release
    @Part-2
     # ${ ProductType : ["IHF","IAF"]}
     # ${ApplicationStage:["Sourcing","Login Acceptance","KYC"]}
    Examples:
      | ProductType   | ApplicationStage   | category | key | ApplicantType   |
      | <ProductType> | <ApplicationStage> |          |     | <ApplicantType> |


    @AuthoredBy-anshika.gupta
    @ImplementedBy-anshika.gupta
    @Islamic
    @Release
    @Part-2
    # ${ ProductType : ["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","KYC"]}
    #${category : ["bonds"]}
    Examples:
      | ProductType   | ApplicationStage   | category   | key | ApplicantType   |
      | <ProductType> | <ApplicationStage> | <category> |     | <ApplicantType> |


  @Sanity
  #Squash-07_CAS-64389
  #FeatureID-ACAUTOCAS-131
  Scenario Outline: ACAUTOCAS-11548: Verify neo CIF number of <ApplicantType> <ProductType> application is generated at <ApplicationStage>
    When user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    Then cif number of the application is generated

    @AuthoredBy-vipin.kishor
    @Conventional
    @ImplementedBy-rishabh.sachan
    @Release @Part-2
    #${ ProductType : ["PF","HL","AL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration","Post Approval","Disbursal","Disbursal Author"]}
    Examples:
      | ProductType   | ApplicationStage   | category | key | ApplicantType   |
      | <ProductType> | <ApplicationStage> |          |     | <ApplicantType> |

    @AuthoredBy-anshika.gupta
    @ImplementedBy-anshika.gupta
    @Islamic
    @Release
    @Part-2
     # ${ ProductType : ["IHF","IAF"]}
     #${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicationStage   | category | key | ApplicantType   |
      | <ProductType> | <ApplicationStage> |          |     | <ApplicantType> |


    @AuthoredBy-anshika.gupta
    @ImplementedBy-anshika.gupta
    @Islamic
    @Release
    @Part-2
    # ${ ProductType : ["IPF"]}
    #${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${category : ["bonds"]}
    Examples:
      | ProductType   | ApplicationStage   | category   | key | ApplicantType   |
      | <ProductType> | <ApplicationStage> | <category> |     | <ApplicantType> |


    @AuthoredBy-anshika.gupta
    #${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
   #${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
    @NotImplemented
    Examples:
      | ProductType   | ApplicationStage   | category   | key | ApplicantType   |
      | <ProductType> | <ApplicationStage> | <category> |     | <ApplicantType> |














