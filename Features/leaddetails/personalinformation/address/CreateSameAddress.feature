@Epic-Applicant_Information
@AuthoredBy-vipin.kishor
@AppInfoAdoption
#${ApplicantType:["indiv","nonindiv"]}
#FeatureID-ACAUTOCAS-151
Feature: Create same address as currently added address

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 7


  Scenario Outline: ACAUTOCAS-3976:Select the field create same as address at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user navigates to applicant details page of "<ApplicationStage>"
    And click on view edit detailed info
    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_address>" and row <PersonalInfo_address_rowNum>
    When user checked the create same as address checkbox
    Then address type field should be visible
    @ImplementedBy-ayush.garg
    @Release @Part-1
    @Conventional
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | PersonalInfoWB            | PersonalInfo_address | PersonalInfo_address_rowNum | ProductType   | ApplicationStage   | ApplicantType   | Category | key |
      | personal_information.xlsx | address              | 27                          | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |


    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
   # ${ProductType:["IAF","IHF"]}
    @Islamic
    @Release
@Part-1
    @ImplementedBy-vipin.kishor
    Examples:
      | PersonalInfoWB            | PersonalInfo_address | PersonalInfo_address_rowNum | ProductType   | ApplicationStage   | ApplicantType   | Category | key |
      | personal_information.xlsx | address              | 27                          | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |

       # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
      # ${ProductType:["IPF"]}
     #${Category:["bonds"]}
    @Islamic
    @Release
@Part-1
    @ImplementedBy-vipin.kishor
    Examples:
      | PersonalInfoWB            | PersonalInfo_address | PersonalInfo_address_rowNum | ProductType   | ApplicationStage   | ApplicantType   | Category   | key |
      | personal_information.xlsx | address              | 27                          | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     |


    # ${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
   # ${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
    @NotImplemented
    Examples:
      | PersonalInfoWB            | PersonalInfo_address | PersonalInfo_address_rowNum | ProductType   | ApplicationStage   | ApplicantType   | Category | key |
      | personal_information.xlsx | address              | 27                          | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |


  Scenario Outline: ACAUTOCAS-3977:  Select address type for the new address to be created at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user navigates to applicant details page of "<ApplicationStage>"
    And click on view edit detailed info
    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_address>" and row <PersonalInfo_address_rowNum>
    When user checked the create same as address checkbox
    Then user should be able to choose address type
    @ImplementedBy-ayush.garg
    @Release @Part-1
    @Conventional
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | PersonalInfoWB            | PersonalInfo_address | PersonalInfo_address_rowNum | ProductType   | ApplicationStage   | ApplicantType   | Category | key |
      | personal_information.xlsx | address              | 27                          | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |


    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
   # ${ProductType:["IAF","IHF"]}
    @Islamic
    @Release
@Part-1
    @ImplementedBy-vipin.kishor
    Examples:
      | PersonalInfoWB            | PersonalInfo_address | PersonalInfo_address_rowNum | ProductType   | ApplicationStage   | ApplicantType   | Category | key |
      | personal_information.xlsx | address              | 27                          | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |

       # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
      # ${ProductType:["IPF"]}
     #${Category:["bonds"]}
    @Islamic
    @Release
@Part-1
    @ImplementedBy-vipin.kishor
    Examples:
      | PersonalInfoWB            | PersonalInfo_address | PersonalInfo_address_rowNum | ProductType   | ApplicationStage   | ApplicantType   | Category   | key |
      | personal_information.xlsx | address              | 27                          | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     |


    # ${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
   # ${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
    @NotImplemented
    Examples:
      | PersonalInfoWB            | PersonalInfo_address | PersonalInfo_address_rowNum | ProductType   | ApplicationStage   | ApplicantType   | Category | key |
      | personal_information.xlsx | address              | 27                          | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |


  Scenario Outline: ACAUTOCAS-3978:  Create another address using the currently added address at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_home>" and row <PersonalInfo_home_rowNum>
    And user navigate to address accordion in personal information screen on "<ApplicationStage>"
    When user create another address using the currently added "<Address>" in personal information
    Then address details should save successfully
    @ImplementedBy-ayush.garg
    @Release @Part-1
    @Conventional
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | Address                    | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | ProductType   | ApplicationStage   | ApplicantType   | Category | key |
      | Alternate Business Address | personal_information.xlsx | address           | 130                      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |


    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
   # ${ProductType:["IAF","IHF"]}
    @Islamic
    @Release
@Part-1
    @ImplementedBy-vipin.kishor
    Examples:
      | Address                    | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | ProductType   | ApplicationStage   | ApplicantType   | Category | key |
      | Alternate Business Address | personal_information.xlsx | address           | 138                      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |

       # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
      # ${ProductType:["IPF"]}
     #${Category:["bonds"]}
    @Islamic
    @Release
@Part-1
    @ImplementedBy-vipin.kishor
    Examples:
      | Address                    | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | ProductType   | ApplicationStage   | ApplicantType   | Category   | key |
      | Alternate Business Address | personal_information.xlsx | address           | 138                      | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     |


    # ${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
   # ${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
    @NotImplemented
    Examples:
      | Address                    | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | ProductType   | ApplicationStage   | ApplicantType   | Category | key |
      | Alternate Business Address | personal_information.xlsx | address           | 138                      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |

  @FixedExp
  Scenario Outline: ACAUTOCAS-3979:  Create an address using the address type with which an address is already created at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user navigates to applicant details page of "<ApplicationStage>"
    And click on view edit detailed info
    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_address>" and row <PersonalInfo_address_rowNum>
    When user creates address with already used "<Address>" address type
    Then another address should not be added
    @ImplementedBy-ayush.garg
    @Release @Part-1
    @Conventional
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | Address                    | PersonalInfoWB            | PersonalInfo_address | PersonalInfo_address_rowNum | ProductType   | ApplicationStage   | ApplicantType   | Category | key |
      | Alternate Business Address | personal_information.xlsx | address              | 138                         | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |


    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
   # ${ProductType:["IAF","IHF"]}
    @Islamic
    @Release
@Part-1
    @ImplementedBy-vipin.kishor
    Examples:
      | Address                    | PersonalInfoWB            | PersonalInfo_address | PersonalInfo_address_rowNum | ProductType   | ApplicationStage   | ApplicantType   | Category | key |
      | Alternate Business Address | personal_information.xlsx | address              | 138                         | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |

       # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
      # ${ProductType:["IPF"]}
     #${Category:["bonds"]}
    @Islamic
    @Release
@Part-1
    @ImplementedBy-vipin.kishor
    Examples:
      | Address                    | PersonalInfoWB            | PersonalInfo_address | PersonalInfo_address_rowNum | ProductType   | ApplicationStage   | ApplicantType   | Category   | key |
      | Alternate Business Address | personal_information.xlsx | address              | 138                         | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     |


    # ${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
   # ${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
   @NotImplemented
    Examples:
      | Address                    | PersonalInfoWB            | PersonalInfo_address | PersonalInfo_address_rowNum | ProductType   | ApplicationStage   | ApplicantType   | Category | key |
      | Alternate Business Address | personal_information.xlsx | address              | 138                         | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |
