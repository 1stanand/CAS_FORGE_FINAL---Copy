@Epic-Applicant_Information
@AuthoredBy-vipin.kishor
@ReviewedBy-harshprit.kumar
@ImplementedBy-harshprit.kumar
@ReviewedByDEV
@AppInfoAdoption
#FeatureID-ACAUTOCAS-151
  #${ApplicantType:["indiv","nonindiv"]}
Feature: Primary Phone Number Combination Test in address details


  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 7


  Scenario Outline: ACAUTOCAS-3994:  ISD code changes if the country code is selected as <var>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user navigates to applicant details page of "<ApplicationStage>"
    And click on view edit detailed info
    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_address>" and row <PersonalInfo_address_rowNum>
    When user fills country code in Primary Phone Number
    Then ISD code should change according to the country code
    @Release @Part-1
    @Conventional
    @ImplementedBy-harshprit.kumar
    #${ ProductType : ["PF","HL","AL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | var | PersonalInfoWB            | PersonalInfo_address | PersonalInfo_address_rowNum | ProductType   | ApplicantType   | ApplicationStage   | Category | key |
      | AE  | personal_information.xlsx | address              | 37                          | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |
      | AF  | personal_information.xlsx | address              | 38                          | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |
      | AL  | personal_information.xlsx | address              | 39                          | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |
      | AO  | personal_information.xlsx | address              | 40                          | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |
      | AU  | personal_information.xlsx | address              | 41                          | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |
      | EH  | personal_information.xlsx | address              | 42                          | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |
      | IE  | personal_information.xlsx | address              | 43                          | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |
      | IN  | personal_information.xlsx | address              | 44                          | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |
      | NP  | personal_information.xlsx | address              | 45                          | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |
      | NZ  | personal_information.xlsx | address              | 46                          | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |
      | RU  | personal_information.xlsx | address              | 47                          | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |
      | VN  | personal_information.xlsx | address              | 48                          | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |
      | ZA  | personal_information.xlsx | address              | 49                          | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |


     # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
   # ${ProductType:["IAF","IHF"]}
    @Islamic
    @Release
@Part-1
    @ImplementedBy-vipin.kishor
    Examples:
      | var | PersonalInfoWB            | PersonalInfo_address | PersonalInfo_address_rowNum | ProductType   | ApplicantType   | ApplicationStage   | Category | key |
      | AE  | personal_information.xlsx | address              | 37                          | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |
      | AF  | personal_information.xlsx | address              | 38                          | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |
      | AL  | personal_information.xlsx | address              | 39                          | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |
      | AO  | personal_information.xlsx | address              | 40                          | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |
      | AU  | personal_information.xlsx | address              | 41                          | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |
      | EH  | personal_information.xlsx | address              | 42                          | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |
      | IE  | personal_information.xlsx | address              | 43                          | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |
      | IN  | personal_information.xlsx | address              | 44                          | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |
      | NP  | personal_information.xlsx | address              | 45                          | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |
      | NZ  | personal_information.xlsx | address              | 46                          | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |
      | RU  | personal_information.xlsx | address              | 47                          | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |
      | VN  | personal_information.xlsx | address              | 48                          | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |
      | ZA  | personal_information.xlsx | address              | 49                          | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |

       # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
      # ${ProductType:["IPF"]}
     #${Category:["bonds"]}
    @Islamic
    @Release
@Part-1
    @ImplementedBy-vipin.kishor
    Examples:
      | var | PersonalInfoWB            | PersonalInfo_address | PersonalInfo_address_rowNum | ProductType   | ApplicantType   | ApplicationStage   | Category | key |
      | AE  | personal_information.xlsx | address              | 37                          | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |
      | AF  | personal_information.xlsx | address              | 38                          | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |
      | AL  | personal_information.xlsx | address              | 39                          | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |
      | AO  | personal_information.xlsx | address              | 40                          | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |
      | AU  | personal_information.xlsx | address              | 41                          | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |
      | EH  | personal_information.xlsx | address              | 42                          | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |
      | IE  | personal_information.xlsx | address              | 43                          | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |
      | IN  | personal_information.xlsx | address              | 44                          | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |
      | NP  | personal_information.xlsx | address              | 45                          | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |
      | NZ  | personal_information.xlsx | address              | 46                          | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |
      | RU  | personal_information.xlsx | address              | 47                          | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |
      | VN  | personal_information.xlsx | address              | 48                          | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |
      | ZA  | personal_information.xlsx | address              | 49                          | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |


    @Deferred
# ${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
   # ${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | var | PersonalInfoWB            | PersonalInfo_address | PersonalInfo_address_rowNum | ProductType   | ApplicantType   | ApplicationStage   | Category | key |
      | AE  | personal_information.xlsx | address              | 37                          | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |
      | AF  | personal_information.xlsx | address              | 38                          | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |
      | AL  | personal_information.xlsx | address              | 39                          | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |
      | AO  | personal_information.xlsx | address              | 40                          | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |
      | AU  | personal_information.xlsx | address              | 41                          | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |
      | EH  | personal_information.xlsx | address              | 42                          | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |
      | IE  | personal_information.xlsx | address              | 43                          | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |
      | IN  | personal_information.xlsx | address              | 44                          | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |
      | NP  | personal_information.xlsx | address              | 45                          | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |
      | NZ  | personal_information.xlsx | address              | 46                          | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |
      | RU  | personal_information.xlsx | address              | 47                          | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |
      | VN  | personal_information.xlsx | address              | 48                          | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |
      | ZA  | personal_information.xlsx | address              | 49                          | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |
