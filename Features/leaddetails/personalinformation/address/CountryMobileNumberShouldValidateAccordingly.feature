@Epic-Applicant_Information
@AuthoredBy-vipin.kishor
@ReviewedBy-None
@ReviewedByDEV
@AppInfoAdoption
#${ApplicantType:["indiv","nonindiv"]}
#FeatureID-ACAUTOCAS-151
Feature: Add primary phone number with respect to the selected country in address details

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 7


  Scenario Outline: ACAUTOCAS-3974: Add valid mobile phone number in address details at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user navigates to applicant details page of "<ApplicationStage>"
    And click on view edit detailed info
    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_address>" and row <PersonalInfo_address_rowNum>
    When user enters mobile phone number corresponding to the country chosen
    Then phone number should be validated successfully
    @Conventional
    @Release @Part-1
    @ImplementedBy-ayush.garg
     # ${ ProductType : ["PF","HL","AL","EDU","OMNI","CEQ", "KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | PersonalInfoWB            | PersonalInfo_address | PersonalInfo_address_rowNum | ProductType   | ApplicationStage   | ApplicantType   | Category | key |
      | personal_information.xlsx | address              | 16                          | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |
      | personal_information.xlsx | address              | 22                          | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |

     # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
   # ${ProductType:["IAF","IHF"]}
    @Islamic
    @Release
@Part-1
    @ImplementedBy-vipin.kishor
    Examples:
      | PersonalInfoWB            | PersonalInfo_address | PersonalInfo_address_rowNum | ProductType   | ApplicationStage   | ApplicantType   | Category | key |
      | personal_information.xlsx | address              | 16                          | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |
      | personal_information.xlsx | address              | 155                         | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |

       # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
      # ${ProductType:["IPF"]}
     #${Category:["bonds"]}
    @Islamic
    @Release
@Part-1
    @ImplementedBy-vipin.kishor
    Examples:
      | PersonalInfoWB            | PersonalInfo_address | PersonalInfo_address_rowNum | ProductType   | ApplicationStage   | ApplicantType   | Category   | key |
      | personal_information.xlsx | address              | 16                          | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     |
      | personal_information.xlsx | address              | 155                         | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     |


    # ${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
   # ${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
   @NotImplemented
    Examples:
      | PersonalInfoWB            | PersonalInfo_address | PersonalInfo_address_rowNum | ProductType   | ApplicationStage   | ApplicantType   | Category | key |
      | personal_information.xlsx | address              | 16                          | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |
      | personal_information.xlsx | address              | 22                          | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |


  Scenario Outline: ACAUTOCAS-3975:  Add invalid mobile phone number in address details at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user navigates to applicant details page of "<ApplicationStage>"
    And click on view edit detailed info
    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_address>" and row <PersonalInfo_address_rowNum>
    When user enters mobile phone number corresponding to the country chosen
    Then that number should be displayed as incorrect
    @Conventional
    @Release @Part-1
    @ImplementedBy-ayush.garg
     # ${ ProductType : ["PF","HL","AL","EDU","OMNI","CEQ", "KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | PersonalInfoWB            | PersonalInfo_address | PersonalInfo_address_rowNum | ProductType   | ApplicationStage   | ApplicantType   | Category | key |
      | personal_information.xlsx | address              | 15                          | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |
      | personal_information.xlsx | address              | 21                          | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |

     # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
   # ${ProductType:["IAF","IHF"]}
    @Islamic
    @Release
@Part-1
    @ImplementedBy-vipin.kishor
    Examples:
      | PersonalInfoWB            | PersonalInfo_address | PersonalInfo_address_rowNum | ProductType   | ApplicationStage   | ApplicantType   | Category | key |
      | personal_information.xlsx | address              | 15                          | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |
      | personal_information.xlsx | address              | 19                          | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |

       # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
      # ${ProductType:["IPF"]}
     #${Category:["bonds"]}
    @Islamic
    @Release
@Part-1
    @ImplementedBy-vipin.kishor
    Examples:
      | PersonalInfoWB            | PersonalInfo_address | PersonalInfo_address_rowNum | ProductType   | ApplicationStage   | ApplicantType   | Category   | key |
      | personal_information.xlsx | address              | 15                          | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     |
      | personal_information.xlsx | address              | 19                          | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     |


    # ${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
   # ${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
   @NotImplemented
    Examples:
      | PersonalInfoWB            | PersonalInfo_address | PersonalInfo_address_rowNum | ProductType   | ApplicationStage   | ApplicantType   | Category | key |
      | personal_information.xlsx | address              | 15                          | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |
      | personal_information.xlsx | address              | 21                          | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |

