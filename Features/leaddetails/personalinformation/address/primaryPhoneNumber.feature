@Epic-Applicant_Information
@AuthoredBy-vipin.kishor
@ReviewedBy-None
@ImplementedBy-vipin.kishor
@ReviewedByDEV
@AppInfoAdoption
#${ApplicantType:["indiv","nonindiv"]}
#FeatureID-ACAUTOCAS-151
Feature: Primary phone number in address details

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 7


  Scenario Outline: ACAUTOCAS-3989:User add multiple primary phone number in "<Address>" for "<ProductType>" at "<ApplicationStage>"
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user navigates to applicant details page of "<ApplicationStage>"
    And click on view edit detailed info
    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_home>" and row <PersonalInfo_home_rowNum>
    And user fills multiple primary phone number in "<Address>"
    Then multiple primary phone number should be added

    @Release @Part-1
    @Conventional
    #${ ProductType : ["PF","HL","AL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ApplicationStage   | ProductType   | Address                    | Category | key | ApplicantType   | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum |
      | <ApplicationStage> | <ProductType> | Additional Address         |          |     | <ApplicantType> | personal_information.xlsx | address           | 139                      |
      | <ApplicationStage> | <ProductType> | Alternate Business Address |          |     | <ApplicantType> | personal_information.xlsx | address           | 138                      |
      | <ApplicationStage> | <ProductType> | Office Address             |          |     | <ApplicantType> | personal_information.xlsx | address           | 141                      |
      | <ApplicationStage> | <ProductType> | Permanent Address          |          |     | <ApplicantType> | personal_information.xlsx | address           | 142                      |
      | <ApplicationStage> | <ProductType> | Residential Address        |          |     | <ApplicantType> | personal_information.xlsx | address           | 143                      |


    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
   # ${ProductType:["IAF","IHF"]}
    @Islamic
    @Release
@Part-1
    Examples:
      | ApplicationStage   | ProductType   | Address                    | Category | key | ApplicantType   | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum |
      | <ApplicationStage> | <ProductType> | Additional Address         |          |     | <ApplicantType> | personal_information.xlsx | address           | 139                      |
      | <ApplicationStage> | <ProductType> | Alternate Business Address |          |     | <ApplicantType> | personal_information.xlsx | address           | 138                      |
      | <ApplicationStage> | <ProductType> | Office Address             |          |     | <ApplicantType> | personal_information.xlsx | address           | 141                      |
      | <ApplicationStage> | <ProductType> | Permanent Address          |          |     | <ApplicantType> | personal_information.xlsx | address           | 142                      |
      | <ApplicationStage> | <ProductType> | Residential Address        |          |     | <ApplicantType> | personal_information.xlsx | address           | 143                      |

       # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
      # ${ProductType:["IPF"]}
     #${Category:["bonds"]}
    @Islamic
    @Release
@Part-1
    Examples:
      | ApplicationStage   | ProductType   | Address                    | Category   | key | ApplicantType   | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum |
      | <ApplicationStage> | <ProductType> | Additional Address         | <Category> |     | <ApplicantType> | personal_information.xlsx | address           | 139                      |
      | <ApplicationStage> | <ProductType> | Alternate Business Address | <Category> |     | <ApplicantType> | personal_information.xlsx | address           | 138                      |
      | <ApplicationStage> | <ProductType> | Office Address             | <Category> |     | <ApplicantType> | personal_information.xlsx | address           | 141                      |
      | <ApplicationStage> | <ProductType> | Permanent Address          | <Category> |     | <ApplicantType> | personal_information.xlsx | address           | 142                      |
      | <ApplicationStage> | <ProductType> | Residential Address        | <Category> |     | <ApplicantType> | personal_information.xlsx | address           | 143                      |


    @Deferred
# ${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
   # ${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ApplicationStage   | ProductType   | Address                    | Category | key | ApplicantType   | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum |
      | <ApplicationStage> | <ProductType> | Additional Address         |          |     | <ApplicantType> | personal_information.xlsx | address           | 139                      |
      | <ApplicationStage> | <ProductType> | Alternate Business Address |          |     | <ApplicantType> | personal_information.xlsx | address           | 138                      |
      | <ApplicationStage> | <ProductType> | Office Address             |          |     | <ApplicantType> | personal_information.xlsx | address           | 141                      |
      | <ApplicationStage> | <ProductType> | Permanent Address          |          |     | <ApplicantType> | personal_information.xlsx | address           | 142                      |
      | <ApplicationStage> | <ProductType> | Residential Address        |          |     | <ApplicantType> | personal_information.xlsx | address           | 143                      |


  Scenario Outline: ACAUTOCAS-3990:User can edit country of primary phone number in "<Address>" for "<ProductType>" at "<ApplicationStage>"
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user navigate to address accordion in personal information screen on "<ApplicationStage>"
    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_home>" and row <PersonalInfo_home_rowNum>
    When user add "<Address>" in personal information
    And user edits "<Address>" details
    And user saves the address details on personal information page
    Then country of primary phone number should be edited
    @Release @Part-1
    @Conventional
    #${ ProductType : ["PF","HL","AL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ApplicationStage   | ProductType   | Address                    | Category | key | ApplicantType   | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum |
      | <ApplicationStage> | <ProductType> | Additional Address         |          |     | <ApplicantType> | personal_information.xlsx | address           | 169                      |
      | <ApplicationStage> | <ProductType> | Alternate Business Address |          |     | <ApplicantType> | personal_information.xlsx | address           | 168                      |
      | <ApplicationStage> | <ProductType> | Office Address             |          |     | <ApplicantType> | personal_information.xlsx | address           | 170                      |
      | <ApplicationStage> | <ProductType> | Permanent Address          |          |     | <ApplicantType> | personal_information.xlsx | address           | 171                      |
      | <ApplicationStage> | <ProductType> | Residential Address        |          |     | <ApplicantType> | personal_information.xlsx | address           | 172                      |



    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
   # ${ProductType:["IAF","IHF"]}
    @Islamic
    @Release
@Part-1
    Examples:
      | ApplicationStage   | ProductType   | Address                    | Category | key | ApplicantType   | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum |
      | <ApplicationStage> | <ProductType> | Additional Address         |          |     | <ApplicantType> | personal_information.xlsx | address           | 139                      |
      | <ApplicationStage> | <ProductType> | Alternate Business Address |          |     | <ApplicantType> | personal_information.xlsx | address           | 138                      |
      | <ApplicationStage> | <ProductType> | Office Address             |          |     | <ApplicantType> | personal_information.xlsx | address           | 141                      |
      | <ApplicationStage> | <ProductType> | Permanent Address          |          |     | <ApplicantType> | personal_information.xlsx | address           | 142                      |
      | <ApplicationStage> | <ProductType> | Residential Address        |          |     | <ApplicantType> | personal_information.xlsx | address           | 143                      |

       # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
      # ${ProductType:["IPF"]}
     #${Category:["bonds"]}
    @Islamic
    @Release
@Part-1
    Examples:
      | ApplicationStage   | ProductType   | Address                    | Category   | key | ApplicantType   | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum |
      | <ApplicationStage> | <ProductType> | Additional Address         | <Category> |     | <ApplicantType> | personal_information.xlsx | address           | 139                      |
      | <ApplicationStage> | <ProductType> | Alternate Business Address | <Category> |     | <ApplicantType> | personal_information.xlsx | address           | 138                      |
      | <ApplicationStage> | <ProductType> | Office Address             | <Category> |     | <ApplicantType> | personal_information.xlsx | address           | 141                      |
      | <ApplicationStage> | <ProductType> | Permanent Address          | <Category> |     | <ApplicantType> | personal_information.xlsx | address           | 142                      |
      | <ApplicationStage> | <ProductType> | Residential Address        | <Category> |     | <ApplicantType> | personal_information.xlsx | address           | 143                      |


    @Deferred
# ${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
   # ${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ApplicationStage   | ProductType   | Address                    | Category | key | ApplicantType   | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum |
      | <ApplicationStage> | <ProductType> | Additional Address         |          |     | <ApplicantType> | personal_information.xlsx | address           | 139                      |
      | <ApplicationStage> | <ProductType> | Alternate Business Address |          |     | <ApplicantType> | personal_information.xlsx | address           | 138                      |
      | <ApplicationStage> | <ProductType> | Office Address             |          |     | <ApplicantType> | personal_information.xlsx | address           | 141                      |
      | <ApplicationStage> | <ProductType> | Permanent Address          |          |     | <ApplicantType> | personal_information.xlsx | address           | 142                      |
      | <ApplicationStage> | <ProductType> | Residential Address        |          |     | <ApplicantType> | personal_information.xlsx | address           | 143                      |


  Scenario Outline: ACAUTOCAS-3991:User filling the "<Validity>" "<Field_Name>" with "<InputType>" primary phone number in "<Address>" for "<ProductType>" at "<ApplicationStage>"
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user navigate to address accordion in personal information screen on "<ApplicationStage>"
    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_home>" and row <PersonalInfo_home_rowNum>
    When user selects address type as "<Address>" in personal information
    And user checks for "<Validity>" "<Field_Name>" with "<InputType>" in address details
    Then "<Field_Name>" in address details "<Throws_notThrows>" error
    @Release @Part-1
    @Conventional
   #${ ProductType : ["PF","HL","AL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
   #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | Field_Name | ProductType   | Validity | InputType           | Throws_notThrows | ApplicationStage   | Address                    | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | ApplicantType   | Category | key |
      | STD Code   | <ProductType> | invalid  | character           | throw an         | <ApplicationStage> | Additional Address         | personal_information.xlsx | address           | 145                      | <ApplicantType> |          |     |
      | STD Code   | <ProductType> | invalid  | alphanumeric        | throw an         | <ApplicationStage> | Additional Address         | personal_information.xlsx | address           | 146                      | <ApplicantType> |          |     |
      | STD Code   | <ProductType> | valid    | number              | not throw any    | <ApplicationStage> | Additional Address         | personal_information.xlsx | address           | 147                      | <ApplicantType> |          |     |
      | STD Code   | <ProductType> | valid    | max length 8 digits | not throw any    | <ApplicationStage> | Additional Address         | personal_information.xlsx | address           | 148                      | <ApplicantType> |          |     |
      | STD Code   | <ProductType> | invalid  | character           | throw an         | <ApplicationStage> | Alternate Business Address | personal_information.xlsx | address           | 145                      | <ApplicantType> |          |     |
      | STD Code   | <ProductType> | invalid  | alphanumeric        | throw an         | <ApplicationStage> | Alternate Business Address | personal_information.xlsx | address           | 146                      | <ApplicantType> |          |     |
      | STD Code   | <ProductType> | valid    | number              | not throw any    | <ApplicationStage> | Alternate Business Address | personal_information.xlsx | address           | 147                      | <ApplicantType> |          |     |
      | STD Code   | <ProductType> | valid    | max length 8 digits | not throw any    | <ApplicationStage> | Alternate Business Address | personal_information.xlsx | address           | 148                      | <ApplicantType> |          |     |
      | STD Code   | <ProductType> | invalid  | character           | throw an         | <ApplicationStage> | Office Address             | personal_information.xlsx | address           | 145                      | <ApplicantType> |          |     |
      | STD Code   | <ProductType> | invalid  | alphanumeric        | throw an         | <ApplicationStage> | Office Address             | personal_information.xlsx | address           | 146                      | <ApplicantType> |          |     |
      | STD Code   | <ProductType> | valid    | number              | not throw any    | <ApplicationStage> | Office Address             | personal_information.xlsx | address           | 147                      | <ApplicantType> |          |     |
      | STD Code   | <ProductType> | valid    | max length 8 digits | not throw any    | <ApplicationStage> | Office Address             | personal_information.xlsx | address           | 148                      | <ApplicantType> |          |     |
      | STD Code   | <ProductType> | invalid  | character           | throw an         | <ApplicationStage> | Permanent Address          | personal_information.xlsx | address           | 145                      | <ApplicantType> |          |     |
      | STD Code   | <ProductType> | invalid  | alphanumeric        | throw an         | <ApplicationStage> | Permanent Address          | personal_information.xlsx | address           | 146                      | <ApplicantType> |          |     |
      | STD Code   | <ProductType> | valid    | number              | not throw any    | <ApplicationStage> | Permanent Address          | personal_information.xlsx | address           | 147                      | <ApplicantType> |          |     |
      | STD Code   | <ProductType> | valid    | max length 8 digits | not throw any    | <ApplicationStage> | Permanent Address          | personal_information.xlsx | address           | 148                      | <ApplicantType> |          |     |
      | STD Code   | <ProductType> | invalid  | character           | throw an         | <ApplicationStage> | Residential Address        | personal_information.xlsx | address           | 145                      | <ApplicantType> |          |     |
      | STD Code   | <ProductType> | invalid  | alphanumeric        | throw an         | <ApplicationStage> | Residential Address        | personal_information.xlsx | address           | 146                      | <ApplicantType> |          |     |
      | STD Code   | <ProductType> | valid    | number              | not throw any    | <ApplicationStage> | Residential Address        | personal_information.xlsx | address           | 147                      | <ApplicantType> |          |     |
      | STD Code   | <ProductType> | valid    | max length 8 digits | not throw any    | <ApplicationStage> | Residential Address        | personal_information.xlsx | address           | 148                      | <ApplicantType> |          |     |



    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
   # ${ProductType:["IAF","IHF"]}
    @Islamic
    @Release
@Part-1
    Examples:
      | Field_Name | ProductType   | Validity | InputType           | Throws_notThrows | ApplicationStage   | Address                    | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | ApplicantType   | Category | key |
      | STD Code   | <ProductType> | invalid  | character           | throw an         | <ApplicationStage> | Additional Address         | personal_information.xlsx | address           | 145                      | <ApplicantType> |          |     |
      | STD Code   | <ProductType> | invalid  | alphanumeric        | throw an         | <ApplicationStage> | Additional Address         | personal_information.xlsx | address           | 146                      | <ApplicantType> |          |     |
      | STD Code   | <ProductType> | valid    | number              | not throw any    | <ApplicationStage> | Additional Address         | personal_information.xlsx | address           | 147                      | <ApplicantType> |          |     |
      | STD Code   | <ProductType> | valid    | max length 8 digits | not throw any    | <ApplicationStage> | Additional Address         | personal_information.xlsx | address           | 148                      | <ApplicantType> |          |     |
      | STD Code   | <ProductType> | invalid  | character           | throw an         | <ApplicationStage> | Alternate Business Address | personal_information.xlsx | address           | 145                      | <ApplicantType> |          |     |
      | STD Code   | <ProductType> | invalid  | alphanumeric        | throw an         | <ApplicationStage> | Alternate Business Address | personal_information.xlsx | address           | 146                      | <ApplicantType> |          |     |
      | STD Code   | <ProductType> | valid    | number              | not throw any    | <ApplicationStage> | Alternate Business Address | personal_information.xlsx | address           | 147                      | <ApplicantType> |          |     |
      | STD Code   | <ProductType> | valid    | max length 8 digits | not throw any    | <ApplicationStage> | Alternate Business Address | personal_information.xlsx | address           | 148                      | <ApplicantType> |          |     |
      | STD Code   | <ProductType> | invalid  | character           | throw an         | <ApplicationStage> | Office Address             | personal_information.xlsx | address           | 145                      | <ApplicantType> |          |     |
      | STD Code   | <ProductType> | invalid  | alphanumeric        | throw an         | <ApplicationStage> | Office Address             | personal_information.xlsx | address           | 146                      | <ApplicantType> |          |     |
      | STD Code   | <ProductType> | valid    | number              | not throw any    | <ApplicationStage> | Office Address             | personal_information.xlsx | address           | 147                      | <ApplicantType> |          |     |
      | STD Code   | <ProductType> | valid    | max length 8 digits | not throw any    | <ApplicationStage> | Office Address             | personal_information.xlsx | address           | 148                      | <ApplicantType> |          |     |
      | STD Code   | <ProductType> | invalid  | character           | throw an         | <ApplicationStage> | Permanent Address          | personal_information.xlsx | address           | 145                      | <ApplicantType> |          |     |
      | STD Code   | <ProductType> | invalid  | alphanumeric        | throw an         | <ApplicationStage> | Permanent Address          | personal_information.xlsx | address           | 146                      | <ApplicantType> |          |     |
      | STD Code   | <ProductType> | valid    | number              | not throw any    | <ApplicationStage> | Permanent Address          | personal_information.xlsx | address           | 147                      | <ApplicantType> |          |     |
      | STD Code   | <ProductType> | valid    | max length 8 digits | not throw any    | <ApplicationStage> | Permanent Address          | personal_information.xlsx | address           | 148                      | <ApplicantType> |          |     |
      | STD Code   | <ProductType> | invalid  | character           | throw an         | <ApplicationStage> | Residential Address        | personal_information.xlsx | address           | 145                      | <ApplicantType> |          |     |
      | STD Code   | <ProductType> | invalid  | alphanumeric        | throw an         | <ApplicationStage> | Residential Address        | personal_information.xlsx | address           | 146                      | <ApplicantType> |          |     |
      | STD Code   | <ProductType> | valid    | number              | not throw any    | <ApplicationStage> | Residential Address        | personal_information.xlsx | address           | 147                      | <ApplicantType> |          |     |
      | STD Code   | <ProductType> | valid    | max length 8 digits | not throw any    | <ApplicationStage> | Residential Address        | personal_information.xlsx | address           | 148                      | <ApplicantType> |          |     |



    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    # ${ProductType:["IPF"]}
    #${Category:["bonds"]}
    @Islamic
    @Release
@Part-1
    Examples:
      | Field_Name | ProductType   | Validity | InputType           | Throws_notThrows | ApplicationStage   | Address                    | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | ApplicantType   | Category   | key |
      | STD Code   | <ProductType> | invalid  | character           | throw an         | <ApplicationStage> | Additional Address         | personal_information.xlsx | address           | 145                      | <ApplicantType> | <Category> |     |
      | STD Code   | <ProductType> | invalid  | alphanumeric        | throw an         | <ApplicationStage> | Additional Address         | personal_information.xlsx | address           | 146                      | <ApplicantType> | <Category> |     |
      | STD Code   | <ProductType> | valid    | number              | not throw any    | <ApplicationStage> | Additional Address         | personal_information.xlsx | address           | 147                      | <ApplicantType> | <Category> |     |
      | STD Code   | <ProductType> | valid    | max length 8 digits | not throw any    | <ApplicationStage> | Additional Address         | personal_information.xlsx | address           | 148                      | <ApplicantType> | <Category> |     |
      | STD Code   | <ProductType> | invalid  | character           | throw an         | <ApplicationStage> | Alternate Business Address | personal_information.xlsx | address           | 145                      | <ApplicantType> | <Category> |     |
      | STD Code   | <ProductType> | invalid  | alphanumeric        | throw an         | <ApplicationStage> | Alternate Business Address | personal_information.xlsx | address           | 146                      | <ApplicantType> | <Category> |     |
      | STD Code   | <ProductType> | valid    | number              | not throw any    | <ApplicationStage> | Alternate Business Address | personal_information.xlsx | address           | 147                      | <ApplicantType> | <Category> |     |
      | STD Code   | <ProductType> | valid    | max length 8 digits | not throw any    | <ApplicationStage> | Alternate Business Address | personal_information.xlsx | address           | 148                      | <ApplicantType> | <Category> |     |
      | STD Code   | <ProductType> | invalid  | character           | throw an         | <ApplicationStage> | Office Address             | personal_information.xlsx | address           | 145                      | <ApplicantType> | <Category> |     |
      | STD Code   | <ProductType> | invalid  | alphanumeric        | throw an         | <ApplicationStage> | Office Address             | personal_information.xlsx | address           | 146                      | <ApplicantType> | <Category> |     |
      | STD Code   | <ProductType> | valid    | number              | not throw any    | <ApplicationStage> | Office Address             | personal_information.xlsx | address           | 147                      | <ApplicantType> | <Category> |     |
      | STD Code   | <ProductType> | valid    | max length 8 digits | not throw any    | <ApplicationStage> | Office Address             | personal_information.xlsx | address           | 148                      | <ApplicantType> | <Category> |     |
      | STD Code   | <ProductType> | invalid  | character           | throw an         | <ApplicationStage> | Permanent Address          | personal_information.xlsx | address           | 145                      | <ApplicantType> | <Category> |     |
      | STD Code   | <ProductType> | invalid  | alphanumeric        | throw an         | <ApplicationStage> | Permanent Address          | personal_information.xlsx | address           | 146                      | <ApplicantType> | <Category> |     |
      | STD Code   | <ProductType> | valid    | number              | not throw any    | <ApplicationStage> | Permanent Address          | personal_information.xlsx | address           | 147                      | <ApplicantType> | <Category> |     |
      | STD Code   | <ProductType> | valid    | max length 8 digits | not throw any    | <ApplicationStage> | Permanent Address          | personal_information.xlsx | address           | 148                      | <ApplicantType> | <Category> |     |
      | STD Code   | <ProductType> | invalid  | character           | throw an         | <ApplicationStage> | Residential Address        | personal_information.xlsx | address           | 145                      | <ApplicantType> | <Category> |     |
      | STD Code   | <ProductType> | invalid  | alphanumeric        | throw an         | <ApplicationStage> | Residential Address        | personal_information.xlsx | address           | 146                      | <ApplicantType> | <Category> |     |
      | STD Code   | <ProductType> | valid    | number              | not throw any    | <ApplicationStage> | Residential Address        | personal_information.xlsx | address           | 147                      | <ApplicantType> | <Category> |     |
      | STD Code   | <ProductType> | valid    | max length 8 digits | not throw any    | <ApplicationStage> | Residential Address        | personal_information.xlsx | address           | 148                      | <ApplicantType> | <Category> |     |


   @Deferred
# ${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
   # ${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | Field_Name | ProductType   | Validity | InputType           | Throws_notThrows | ApplicationStage   | Address                    | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | ApplicantType   | Category | key |
      | STD Code   | <ProductType> | invalid  | character           | throw an         | <ApplicationStage> | Additional Address         | personal_information.xlsx | address           | 145                      | <ApplicantType> |          |     |
      | STD Code   | <ProductType> | invalid  | alphanumeric        | throw an         | <ApplicationStage> | Additional Address         | personal_information.xlsx | address           | 146                      | <ApplicantType> |          |     |
      | STD Code   | <ProductType> | valid    | number              | not throw any    | <ApplicationStage> | Additional Address         | personal_information.xlsx | address           | 147                      | <ApplicantType> |          |     |
      | STD Code   | <ProductType> | valid    | max length 8 digits | not throw any    | <ApplicationStage> | Additional Address         | personal_information.xlsx | address           | 148                      | <ApplicantType> |          |     |
      | STD Code   | <ProductType> | invalid  | character           | throw an         | <ApplicationStage> | Alternate Business Address | personal_information.xlsx | address           | 145                      | <ApplicantType> |          |     |
      | STD Code   | <ProductType> | invalid  | alphanumeric        | throw an         | <ApplicationStage> | Alternate Business Address | personal_information.xlsx | address           | 146                      | <ApplicantType> |          |     |
      | STD Code   | <ProductType> | valid    | number              | not throw any    | <ApplicationStage> | Alternate Business Address | personal_information.xlsx | address           | 147                      | <ApplicantType> |          |     |
      | STD Code   | <ProductType> | valid    | max length 8 digits | not throw any    | <ApplicationStage> | Alternate Business Address | personal_information.xlsx | address           | 148                      | <ApplicantType> |          |     |
      | STD Code   | <ProductType> | invalid  | character           | throw an         | <ApplicationStage> | Office Address             | personal_information.xlsx | address           | 145                      | <ApplicantType> |          |     |
      | STD Code   | <ProductType> | invalid  | alphanumeric        | throw an         | <ApplicationStage> | Office Address             | personal_information.xlsx | address           | 146                      | <ApplicantType> |          |     |
      | STD Code   | <ProductType> | valid    | number              | not throw any    | <ApplicationStage> | Office Address             | personal_information.xlsx | address           | 147                      | <ApplicantType> |          |     |
      | STD Code   | <ProductType> | valid    | max length 8 digits | not throw any    | <ApplicationStage> | Office Address             | personal_information.xlsx | address           | 148                      | <ApplicantType> |          |     |
      | STD Code   | <ProductType> | invalid  | character           | throw an         | <ApplicationStage> | Permanent Address          | personal_information.xlsx | address           | 145                      | <ApplicantType> |          |     |
      | STD Code   | <ProductType> | invalid  | alphanumeric        | throw an         | <ApplicationStage> | Permanent Address          | personal_information.xlsx | address           | 146                      | <ApplicantType> |          |     |
      | STD Code   | <ProductType> | valid    | number              | not throw any    | <ApplicationStage> | Permanent Address          | personal_information.xlsx | address           | 147                      | <ApplicantType> |          |     |
      | STD Code   | <ProductType> | valid    | max length 8 digits | not throw any    | <ApplicationStage> | Permanent Address          | personal_information.xlsx | address           | 148                      | <ApplicantType> |          |     |
      | STD Code   | <ProductType> | invalid  | character           | throw an         | <ApplicationStage> | Residential Address        | personal_information.xlsx | address           | 145                      | <ApplicantType> |          |     |
      | STD Code   | <ProductType> | invalid  | alphanumeric        | throw an         | <ApplicationStage> | Residential Address        | personal_information.xlsx | address           | 146                      | <ApplicantType> |          |     |
      | STD Code   | <ProductType> | valid    | number              | not throw any    | <ApplicationStage> | Residential Address        | personal_information.xlsx | address           | 147                      | <ApplicantType> |          |     |
      | STD Code   | <ProductType> | valid    | max length 8 digits | not throw any    | <ApplicationStage> | Residential Address        | personal_information.xlsx | address           | 148                      | <ApplicantType> |          |     |


  Scenario Outline: ACAUTOCAS-3992:  User filling "<Validity>" "<Field_Name>" with "<InputType>" of primary phone number in "<Address>" for "<ProductType>" at "<ApplicationStage>"
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user navigate to address accordion in personal information screen on "<ApplicationStage>"
    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_home>" and row <PersonalInfo_home_rowNum>
    When user selects address type as "<Address>" in personal information
    And user checks for "<Validity>" "<Field_Name>" with "<InputType>" in address details
    Then "<Field_Name>" in address details "<Throws_notThrows>" error
    @Release @Part-1
    @Conventional
    #${ ProductType : ["PF","HL","AL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | Field_Name | ProductType   | Validity | InputType           | Throws_notThrows | ApplicationStage   | Address                    | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | ApplicantType   | Category | key |
      | Number     | <ProductType> | invalid  | character           | throw an         | <ApplicationStage> | Additional Address         | personal_information.xlsx | address           | 145                      | <ApplicantType> |          |     |
      | Number     | <ProductType> | invalid  | alphanumeric        | throw an         | <ApplicationStage> | Additional Address         | personal_information.xlsx | address           | 146                      | <ApplicantType> |          |     |
      | Number     | <ProductType> | valid    | number              | not throw any    | <ApplicationStage> | Additional Address         | personal_information.xlsx | address           | 147                      | <ApplicantType> |          |     |
      | Number     | <ProductType> | valid    | max length 8 digits | not throw any    | <ApplicationStage> | Additional Address         | personal_information.xlsx | address           | 148                      | <ApplicantType> |          |     |
      | Number     | <ProductType> | invalid  | character           | throw an         | <ApplicationStage> | Alternate Business Address | personal_information.xlsx | address           | 145                      | <ApplicantType> |          |     |
      | Number     | <ProductType> | invalid  | alphanumeric        | throw an         | <ApplicationStage> | Alternate Business Address | personal_information.xlsx | address           | 146                      | <ApplicantType> |          |     |
      | Number     | <ProductType> | valid    | number              | not throw any    | <ApplicationStage> | Alternate Business Address | personal_information.xlsx | address           | 147                      | <ApplicantType> |          |     |
      | Number     | <ProductType> | valid    | max length 8 digits | not throw any    | <ApplicationStage> | Alternate Business Address | personal_information.xlsx | address           | 148                      | <ApplicantType> |          |     |
      | Number     | <ProductType> | invalid  | character           | throw an         | <ApplicationStage> | Office Address             | personal_information.xlsx | address           | 145                      | <ApplicantType> |          |     |
      | Number     | <ProductType> | invalid  | alphanumeric        | throw an         | <ApplicationStage> | Office Address             | personal_information.xlsx | address           | 146                      | <ApplicantType> |          |     |
      | Number     | <ProductType> | valid    | number              | not throw any    | <ApplicationStage> | Office Address             | personal_information.xlsx | address           | 147                      | <ApplicantType> |          |     |
      | Number     | <ProductType> | valid    | max length 8 digits | not throw any    | <ApplicationStage> | Office Address             | personal_information.xlsx | address           | 148                      | <ApplicantType> |          |     |
      | Number     | <ProductType> | invalid  | character           | throw an         | <ApplicationStage> | Permanent Address          | personal_information.xlsx | address           | 145                      | <ApplicantType> |          |     |
      | Number     | <ProductType> | invalid  | alphanumeric        | throw an         | <ApplicationStage> | Permanent Address          | personal_information.xlsx | address           | 146                      | <ApplicantType> |          |     |
      | Number     | <ProductType> | valid    | number              | not throw any    | <ApplicationStage> | Permanent Address          | personal_information.xlsx | address           | 147                      | <ApplicantType> |          |     |
      | Number     | <ProductType> | valid    | max length 8 digits | not throw any    | <ApplicationStage> | Permanent Address          | personal_information.xlsx | address           | 148                      | <ApplicantType> |          |     |
      | Number     | <ProductType> | invalid  | character           | throw an         | <ApplicationStage> | Residential Address        | personal_information.xlsx | address           | 145                      | <ApplicantType> |          |     |
      | Number     | <ProductType> | invalid  | alphanumeric        | throw an         | <ApplicationStage> | Residential Address        | personal_information.xlsx | address           | 146                      | <ApplicantType> |          |     |
      | Number     | <ProductType> | valid    | number              | not throw any    | <ApplicationStage> | Residential Address        | personal_information.xlsx | address           | 147                      | <ApplicantType> |          |     |
      | Number     | <ProductType> | valid    | max length 8 digits | not throw any    | <ApplicationStage> | Residential Address        | personal_information.xlsx | address           | 148                      | <ApplicantType> |          |     |


    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
   # ${ProductType:["IAF","IHF"]}
    @Islamic
    @Release
@Part-1
    Examples:
      | Field_Name | ProductType   | Validity | InputType           | Throws_notThrows | ApplicationStage   | Address                    | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | ApplicantType   | Category | key |
      | Number     | <ProductType> | invalid  | character           | throw an         | <ApplicationStage> | Additional Address         | personal_information.xlsx | address           | 145                      | <ApplicantType> |          |     |
      | Number     | <ProductType> | invalid  | alphanumeric        | throw an         | <ApplicationStage> | Additional Address         | personal_information.xlsx | address           | 146                      | <ApplicantType> |          |     |
      | Number     | <ProductType> | valid    | number              | not throw any    | <ApplicationStage> | Additional Address         | personal_information.xlsx | address           | 147                      | <ApplicantType> |          |     |
      | Number     | <ProductType> | valid    | max length 8 digits | not throw any    | <ApplicationStage> | Additional Address         | personal_information.xlsx | address           | 148                      | <ApplicantType> |          |     |
      | Number     | <ProductType> | invalid  | character           | throw an         | <ApplicationStage> | Alternate Business Address | personal_information.xlsx | address           | 145                      | <ApplicantType> |          |     |
      | Number     | <ProductType> | invalid  | alphanumeric        | throw an         | <ApplicationStage> | Alternate Business Address | personal_information.xlsx | address           | 146                      | <ApplicantType> |          |     |
      | Number     | <ProductType> | valid    | number              | not throw any    | <ApplicationStage> | Alternate Business Address | personal_information.xlsx | address           | 147                      | <ApplicantType> |          |     |
      | Number     | <ProductType> | valid    | max length 8 digits | not throw any    | <ApplicationStage> | Alternate Business Address | personal_information.xlsx | address           | 148                      | <ApplicantType> |          |     |
      | Number     | <ProductType> | invalid  | character           | throw an         | <ApplicationStage> | Office Address             | personal_information.xlsx | address           | 145                      | <ApplicantType> |          |     |
      | Number     | <ProductType> | invalid  | alphanumeric        | throw an         | <ApplicationStage> | Office Address             | personal_information.xlsx | address           | 146                      | <ApplicantType> |          |     |
      | Number     | <ProductType> | valid    | number              | not throw any    | <ApplicationStage> | Office Address             | personal_information.xlsx | address           | 147                      | <ApplicantType> |          |     |
      | Number     | <ProductType> | valid    | max length 8 digits | not throw any    | <ApplicationStage> | Office Address             | personal_information.xlsx | address           | 148                      | <ApplicantType> |          |     |
      | Number     | <ProductType> | invalid  | character           | throw an         | <ApplicationStage> | Permanent Address          | personal_information.xlsx | address           | 145                      | <ApplicantType> |          |     |
      | Number     | <ProductType> | invalid  | alphanumeric        | throw an         | <ApplicationStage> | Permanent Address          | personal_information.xlsx | address           | 146                      | <ApplicantType> |          |     |
      | Number     | <ProductType> | valid    | number              | not throw any    | <ApplicationStage> | Permanent Address          | personal_information.xlsx | address           | 147                      | <ApplicantType> |          |     |
      | Number     | <ProductType> | valid    | max length 8 digits | not throw any    | <ApplicationStage> | Permanent Address          | personal_information.xlsx | address           | 148                      | <ApplicantType> |          |     |
      | Number     | <ProductType> | invalid  | character           | throw an         | <ApplicationStage> | Residential Address        | personal_information.xlsx | address           | 145                      | <ApplicantType> |          |     |
      | Number     | <ProductType> | invalid  | alphanumeric        | throw an         | <ApplicationStage> | Residential Address        | personal_information.xlsx | address           | 146                      | <ApplicantType> |          |     |
      | Number     | <ProductType> | valid    | number              | not throw any    | <ApplicationStage> | Residential Address        | personal_information.xlsx | address           | 147                      | <ApplicantType> |          |     |
      | Number     | <ProductType> | valid    | max length 8 digits | not throw any    | <ApplicationStage> | Residential Address        | personal_information.xlsx | address           | 148                      | <ApplicantType> |          |     |

       # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
      # ${ProductType:["IPF"]}
     #${Category:["bonds"]}
    @Islamic
    @Release
@Part-1
    Examples:
      | Field_Name | ProductType   | Validity | InputType           | Throws_notThrows | ApplicationStage   | Address                    | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | ApplicantType   | Category   | key |
      | Number     | <ProductType> | invalid  | character           | throw an         | <ApplicationStage> | Additional Address         | personal_information.xlsx | address           | 145                      | <ApplicantType> | <Category> |     |
      | Number     | <ProductType> | invalid  | alphanumeric        | throw an         | <ApplicationStage> | Additional Address         | personal_information.xlsx | address           | 146                      | <ApplicantType> | <Category> |     |
      | Number     | <ProductType> | valid    | number              | not throw any    | <ApplicationStage> | Additional Address         | personal_information.xlsx | address           | 147                      | <ApplicantType> | <Category> |     |
      | Number     | <ProductType> | valid    | max length 8 digits | not throw any    | <ApplicationStage> | Additional Address         | personal_information.xlsx | address           | 148                      | <ApplicantType> | <Category> |     |
      | Number     | <ProductType> | invalid  | character           | throw an         | <ApplicationStage> | Alternate Business Address | personal_information.xlsx | address           | 145                      | <ApplicantType> | <Category> |     |
      | Number     | <ProductType> | invalid  | alphanumeric        | throw an         | <ApplicationStage> | Alternate Business Address | personal_information.xlsx | address           | 146                      | <ApplicantType> | <Category> |     |
      | Number     | <ProductType> | valid    | number              | not throw any    | <ApplicationStage> | Alternate Business Address | personal_information.xlsx | address           | 147                      | <ApplicantType> | <Category> |     |
      | Number     | <ProductType> | valid    | max length 8 digits | not throw any    | <ApplicationStage> | Alternate Business Address | personal_information.xlsx | address           | 148                      | <ApplicantType> | <Category> |     |
      | Number     | <ProductType> | invalid  | character           | throw an         | <ApplicationStage> | Office Address             | personal_information.xlsx | address           | 145                      | <ApplicantType> | <Category> |     |
      | Number     | <ProductType> | invalid  | alphanumeric        | throw an         | <ApplicationStage> | Office Address             | personal_information.xlsx | address           | 146                      | <ApplicantType> | <Category> |     |
      | Number     | <ProductType> | valid    | number              | not throw any    | <ApplicationStage> | Office Address             | personal_information.xlsx | address           | 147                      | <ApplicantType> | <Category> |     |
      | Number     | <ProductType> | valid    | max length 8 digits | not throw any    | <ApplicationStage> | Office Address             | personal_information.xlsx | address           | 148                      | <ApplicantType> | <Category> |     |
      | Number     | <ProductType> | invalid  | character           | throw an         | <ApplicationStage> | Permanent Address          | personal_information.xlsx | address           | 145                      | <ApplicantType> | <Category> |     |
      | Number     | <ProductType> | invalid  | alphanumeric        | throw an         | <ApplicationStage> | Permanent Address          | personal_information.xlsx | address           | 146                      | <ApplicantType> | <Category> |     |
      | Number     | <ProductType> | valid    | number              | not throw any    | <ApplicationStage> | Permanent Address          | personal_information.xlsx | address           | 147                      | <ApplicantType> | <Category> |     |
      | Number     | <ProductType> | valid    | max length 8 digits | not throw any    | <ApplicationStage> | Permanent Address          | personal_information.xlsx | address           | 148                      | <ApplicantType> | <Category> |     |
      | Number     | <ProductType> | invalid  | character           | throw an         | <ApplicationStage> | Residential Address        | personal_information.xlsx | address           | 145                      | <ApplicantType> | <Category> |     |
      | Number     | <ProductType> | invalid  | alphanumeric        | throw an         | <ApplicationStage> | Residential Address        | personal_information.xlsx | address           | 146                      | <ApplicantType> | <Category> |     |
      | Number     | <ProductType> | valid    | number              | not throw any    | <ApplicationStage> | Residential Address        | personal_information.xlsx | address           | 147                      | <ApplicantType> | <Category> |     |
      | Number     | <ProductType> | valid    | max length 8 digits | not throw any    | <ApplicationStage> | Residential Address        | personal_information.xlsx | address           | 148                      | <ApplicantType> | <Category> |     |


    @Deferred
# ${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
   # ${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | Field_Name | ProductType   | Validity | InputType           | Throws_notThrows | ApplicationStage   | Address                    | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | ApplicantType   | Category | key |
      | Number     | <ProductType> | invalid  | character           | throw an         | <ApplicationStage> | Additional Address         | personal_information.xlsx | address           | 145                      | <ApplicantType> |          |     |
      | Number     | <ProductType> | invalid  | alphanumeric        | throw an         | <ApplicationStage> | Additional Address         | personal_information.xlsx | address           | 146                      | <ApplicantType> |          |     |
      | Number     | <ProductType> | valid    | number              | not throw any    | <ApplicationStage> | Additional Address         | personal_information.xlsx | address           | 147                      | <ApplicantType> |          |     |
      | Number     | <ProductType> | valid    | max length 8 digits | not throw any    | <ApplicationStage> | Additional Address         | personal_information.xlsx | address           | 148                      | <ApplicantType> |          |     |
      | Number     | <ProductType> | invalid  | character           | throw an         | <ApplicationStage> | Alternate Business Address | personal_information.xlsx | address           | 145                      | <ApplicantType> |          |     |
      | Number     | <ProductType> | invalid  | alphanumeric        | throw an         | <ApplicationStage> | Alternate Business Address | personal_information.xlsx | address           | 146                      | <ApplicantType> |          |     |
      | Number     | <ProductType> | valid    | number              | not throw any    | <ApplicationStage> | Alternate Business Address | personal_information.xlsx | address           | 147                      | <ApplicantType> |          |     |
      | Number     | <ProductType> | valid    | max length 8 digits | not throw any    | <ApplicationStage> | Alternate Business Address | personal_information.xlsx | address           | 148                      | <ApplicantType> |          |     |
      | Number     | <ProductType> | invalid  | character           | throw an         | <ApplicationStage> | Office Address             | personal_information.xlsx | address           | 145                      | <ApplicantType> |          |     |
      | Number     | <ProductType> | invalid  | alphanumeric        | throw an         | <ApplicationStage> | Office Address             | personal_information.xlsx | address           | 146                      | <ApplicantType> |          |     |
      | Number     | <ProductType> | valid    | number              | not throw any    | <ApplicationStage> | Office Address             | personal_information.xlsx | address           | 147                      | <ApplicantType> |          |     |
      | Number     | <ProductType> | valid    | max length 8 digits | not throw any    | <ApplicationStage> | Office Address             | personal_information.xlsx | address           | 148                      | <ApplicantType> |          |     |
      | Number     | <ProductType> | invalid  | character           | throw an         | <ApplicationStage> | Permanent Address          | personal_information.xlsx | address           | 145                      | <ApplicantType> |          |     |
      | Number     | <ProductType> | invalid  | alphanumeric        | throw an         | <ApplicationStage> | Permanent Address          | personal_information.xlsx | address           | 146                      | <ApplicantType> |          |     |
      | Number     | <ProductType> | valid    | number              | not throw any    | <ApplicationStage> | Permanent Address          | personal_information.xlsx | address           | 147                      | <ApplicantType> |          |     |
      | Number     | <ProductType> | valid    | max length 8 digits | not throw any    | <ApplicationStage> | Permanent Address          | personal_information.xlsx | address           | 148                      | <ApplicantType> |          |     |
      | Number     | <ProductType> | invalid  | character           | throw an         | <ApplicationStage> | Residential Address        | personal_information.xlsx | address           | 145                      | <ApplicantType> |          |     |
      | Number     | <ProductType> | invalid  | alphanumeric        | throw an         | <ApplicationStage> | Residential Address        | personal_information.xlsx | address           | 146                      | <ApplicantType> |          |     |
      | Number     | <ProductType> | valid    | number              | not throw any    | <ApplicationStage> | Residential Address        | personal_information.xlsx | address           | 147                      | <ApplicantType> |          |     |
      | Number     | <ProductType> | valid    | max length 8 digits | not throw any    | <ApplicationStage> | Residential Address        | personal_information.xlsx | address           | 148                      | <ApplicantType> |          |     |


  Scenario Outline: ACAUTOCAS-3993: User filling the EXTN of primary phone number with "<Validity>" "<Field_Name>" with "<InputType>" in "<Address>" for "<ProductType>" at "<ApplicationStage>"
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user navigate to address accordion in personal information screen on "<ApplicationStage>"
    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_home>" and row <PersonalInfo_home_rowNum>
    When user selects address type as "<Address>" in personal information
    And user checks for "<Validity>" "<Field_Name>" with "<InputType>" in address details
    Then "<Field_Name>" in address details "<Throws_notThrows>" error
    @Release @Part-1
    @Conventional
    #${ ProductType : ["PF","HL","AL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | Field_Name | ProductType   | Validity | InputType           | Throws_notThrows | ApplicationStage   | Address                    | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | ApplicantType   | Category | key |
      | EXTN       | <ProductType> | invalid  | character           | throw an         | <ApplicationStage> | Additional Address         | personal_information.xlsx | address           | 145                      | <ApplicantType> |          |     |
      | EXTN       | <ProductType> | invalid  | alphanumeric        | throw an         | <ApplicationStage> | Additional Address         | personal_information.xlsx | address           | 146                      | <ApplicantType> |          |     |
      | EXTN       | <ProductType> | valid    | number              | not throw any    | <ApplicationStage> | Additional Address         | personal_information.xlsx | address           | 147                      | <ApplicantType> |          |     |
      | EXTN       | <ProductType> | valid    | max length 8 digits | not throw any    | <ApplicationStage> | Additional Address         | personal_information.xlsx | address           | 148                      | <ApplicantType> |          |     |
      | EXTN       | <ProductType> | invalid  | character           | throw an         | <ApplicationStage> | Alternate Business Address | personal_information.xlsx | address           | 145                      | <ApplicantType> |          |     |
      | EXTN       | <ProductType> | invalid  | alphanumeric        | throw an         | <ApplicationStage> | Alternate Business Address | personal_information.xlsx | address           | 146                      | <ApplicantType> |          |     |
      | EXTN       | <ProductType> | valid    | number              | not throw any    | <ApplicationStage> | Alternate Business Address | personal_information.xlsx | address           | 147                      | <ApplicantType> |          |     |
      | EXTN       | <ProductType> | valid    | max length 8 digits | not throw any    | <ApplicationStage> | Alternate Business Address | personal_information.xlsx | address           | 148                      | <ApplicantType> |          |     |
      | EXTN       | <ProductType> | invalid  | character           | throw an         | <ApplicationStage> | Office Address             | personal_information.xlsx | address           | 145                      | <ApplicantType> |          |     |
      | EXTN       | <ProductType> | invalid  | alphanumeric        | throw an         | <ApplicationStage> | Office Address             | personal_information.xlsx | address           | 146                      | <ApplicantType> |          |     |
      | EXTN       | <ProductType> | valid    | number              | not throw any    | <ApplicationStage> | Office Address             | personal_information.xlsx | address           | 147                      | <ApplicantType> |          |     |
      | EXTN       | <ProductType> | valid    | max length 8 digits | not throw any    | <ApplicationStage> | Office Address             | personal_information.xlsx | address           | 148                      | <ApplicantType> |          |     |
      | EXTN       | <ProductType> | invalid  | character           | throw an         | <ApplicationStage> | Permanent Address          | personal_information.xlsx | address           | 145                      | <ApplicantType> |          |     |
      | EXTN       | <ProductType> | invalid  | alphanumeric        | throw an         | <ApplicationStage> | Permanent Address          | personal_information.xlsx | address           | 146                      | <ApplicantType> |          |     |
      | EXTN       | <ProductType> | valid    | number              | not throw any    | <ApplicationStage> | Permanent Address          | personal_information.xlsx | address           | 147                      | <ApplicantType> |          |     |
      | EXTN       | <ProductType> | valid    | max length 8 digits | not throw any    | <ApplicationStage> | Permanent Address          | personal_information.xlsx | address           | 148                      | <ApplicantType> |          |     |
      | EXTN       | <ProductType> | invalid  | character           | throw an         | <ApplicationStage> | Residential Address        | personal_information.xlsx | address           | 145                      | <ApplicantType> |          |     |
      | EXTN       | <ProductType> | invalid  | alphanumeric        | throw an         | <ApplicationStage> | Residential Address        | personal_information.xlsx | address           | 146                      | <ApplicantType> |          |     |
      | EXTN       | <ProductType> | valid    | number              | not throw any    | <ApplicationStage> | Residential Address        | personal_information.xlsx | address           | 147                      | <ApplicantType> |          |     |
      | EXTN       | <ProductType> | valid    | max length 8 digits | not throw any    | <ApplicationStage> | Residential Address        | personal_information.xlsx | address           | 148                      | <ApplicantType> |          |     |



    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
   # ${ProductType:["IAF","IHF"]}
    @Islamic
    @Release
@Part-1
    Examples:
      | Field_Name | ProductType   | Validity | InputType           | Throws_notThrows | ApplicationStage   | Address                    | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | ApplicantType   | Category | key |
      | EXTN       | <ProductType> | invalid  | character           | throw an         | <ApplicationStage> | Additional Address         | personal_information.xlsx | address           | 145                      | <ApplicantType> |          |     |
      | EXTN       | <ProductType> | invalid  | alphanumeric        | throw an         | <ApplicationStage> | Additional Address         | personal_information.xlsx | address           | 146                      | <ApplicantType> |          |     |
      | EXTN       | <ProductType> | valid    | number              | not throw any    | <ApplicationStage> | Additional Address         | personal_information.xlsx | address           | 147                      | <ApplicantType> |          |     |
      | EXTN       | <ProductType> | valid    | max length 8 digits | not throw any    | <ApplicationStage> | Additional Address         | personal_information.xlsx | address           | 148                      | <ApplicantType> |          |     |
      | EXTN       | <ProductType> | invalid  | character           | throw an         | <ApplicationStage> | Alternate Business Address | personal_information.xlsx | address           | 145                      | <ApplicantType> |          |     |
      | EXTN       | <ProductType> | invalid  | alphanumeric        | throw an         | <ApplicationStage> | Alternate Business Address | personal_information.xlsx | address           | 146                      | <ApplicantType> |          |     |
      | EXTN       | <ProductType> | valid    | number              | not throw any    | <ApplicationStage> | Alternate Business Address | personal_information.xlsx | address           | 147                      | <ApplicantType> |          |     |
      | EXTN       | <ProductType> | valid    | max length 8 digits | not throw any    | <ApplicationStage> | Alternate Business Address | personal_information.xlsx | address           | 148                      | <ApplicantType> |          |     |
      | EXTN       | <ProductType> | invalid  | character           | throw an         | <ApplicationStage> | Office Address             | personal_information.xlsx | address           | 145                      | <ApplicantType> |          |     |
      | EXTN       | <ProductType> | invalid  | alphanumeric        | throw an         | <ApplicationStage> | Office Address             | personal_information.xlsx | address           | 146                      | <ApplicantType> |          |     |
      | EXTN       | <ProductType> | valid    | number              | not throw any    | <ApplicationStage> | Office Address             | personal_information.xlsx | address           | 147                      | <ApplicantType> |          |     |
      | EXTN       | <ProductType> | valid    | max length 8 digits | not throw any    | <ApplicationStage> | Office Address             | personal_information.xlsx | address           | 148                      | <ApplicantType> |          |     |
      | EXTN       | <ProductType> | invalid  | character           | throw an         | <ApplicationStage> | Permanent Address          | personal_information.xlsx | address           | 145                      | <ApplicantType> |          |     |
      | EXTN       | <ProductType> | invalid  | alphanumeric        | throw an         | <ApplicationStage> | Permanent Address          | personal_information.xlsx | address           | 146                      | <ApplicantType> |          |     |
      | EXTN       | <ProductType> | valid    | number              | not throw any    | <ApplicationStage> | Permanent Address          | personal_information.xlsx | address           | 147                      | <ApplicantType> |          |     |
      | EXTN       | <ProductType> | valid    | max length 8 digits | not throw any    | <ApplicationStage> | Permanent Address          | personal_information.xlsx | address           | 148                      | <ApplicantType> |          |     |
      | EXTN       | <ProductType> | invalid  | character           | throw an         | <ApplicationStage> | Residential Address        | personal_information.xlsx | address           | 145                      | <ApplicantType> |          |     |
      | EXTN       | <ProductType> | invalid  | alphanumeric        | throw an         | <ApplicationStage> | Residential Address        | personal_information.xlsx | address           | 146                      | <ApplicantType> |          |     |
      | EXTN       | <ProductType> | valid    | number              | not throw any    | <ApplicationStage> | Residential Address        | personal_information.xlsx | address           | 147                      | <ApplicantType> |          |     |
      | EXTN       | <ProductType> | valid    | max length 8 digits | not throw any    | <ApplicationStage> | Residential Address        | personal_information.xlsx | address           | 148                      | <ApplicantType> |          |     |

       # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
      # ${ProductType:["IPF"]}
     #${Category:["bonds"]}
    @Islamic
    @Release
@Part-1
    Examples:
      | Field_Name | ProductType   | Validity | InputType           | Throws_notThrows | ApplicationStage   | Address                    | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | ApplicantType   | Category   | key |
      | EXTN       | <ProductType> | invalid  | character           | throw an         | <ApplicationStage> | Additional Address         | personal_information.xlsx | address           | 145                      | <ApplicantType> | <Category> |     |
      | EXTN       | <ProductType> | invalid  | alphanumeric        | throw an         | <ApplicationStage> | Additional Address         | personal_information.xlsx | address           | 146                      | <ApplicantType> | <Category> |     |
      | EXTN       | <ProductType> | valid    | number              | not throw any    | <ApplicationStage> | Additional Address         | personal_information.xlsx | address           | 147                      | <ApplicantType> | <Category> |     |
      | EXTN       | <ProductType> | valid    | max length 8 digits | not throw any    | <ApplicationStage> | Additional Address         | personal_information.xlsx | address           | 148                      | <ApplicantType> | <Category> |     |
      | EXTN       | <ProductType> | invalid  | character           | throw an         | <ApplicationStage> | Alternate Business Address | personal_information.xlsx | address           | 145                      | <ApplicantType> | <Category> |     |
      | EXTN       | <ProductType> | invalid  | alphanumeric        | throw an         | <ApplicationStage> | Alternate Business Address | personal_information.xlsx | address           | 146                      | <ApplicantType> | <Category> |     |
      | EXTN       | <ProductType> | valid    | number              | not throw any    | <ApplicationStage> | Alternate Business Address | personal_information.xlsx | address           | 147                      | <ApplicantType> | <Category> |     |
      | EXTN       | <ProductType> | valid    | max length 8 digits | not throw any    | <ApplicationStage> | Alternate Business Address | personal_information.xlsx | address           | 148                      | <ApplicantType> | <Category> |     |
      | EXTN       | <ProductType> | invalid  | character           | throw an         | <ApplicationStage> | Office Address             | personal_information.xlsx | address           | 145                      | <ApplicantType> | <Category> |     |
      | EXTN       | <ProductType> | invalid  | alphanumeric        | throw an         | <ApplicationStage> | Office Address             | personal_information.xlsx | address           | 146                      | <ApplicantType> | <Category> |     |
      | EXTN       | <ProductType> | valid    | number              | not throw any    | <ApplicationStage> | Office Address             | personal_information.xlsx | address           | 147                      | <ApplicantType> | <Category> |     |
      | EXTN       | <ProductType> | valid    | max length 8 digits | not throw any    | <ApplicationStage> | Office Address             | personal_information.xlsx | address           | 148                      | <ApplicantType> | <Category> |     |
      | EXTN       | <ProductType> | invalid  | character           | throw an         | <ApplicationStage> | Permanent Address          | personal_information.xlsx | address           | 145                      | <ApplicantType> | <Category> |     |
      | EXTN       | <ProductType> | invalid  | alphanumeric        | throw an         | <ApplicationStage> | Permanent Address          | personal_information.xlsx | address           | 146                      | <ApplicantType> | <Category> |     |
      | EXTN       | <ProductType> | valid    | number              | not throw any    | <ApplicationStage> | Permanent Address          | personal_information.xlsx | address           | 147                      | <ApplicantType> | <Category> |     |
      | EXTN       | <ProductType> | valid    | max length 8 digits | not throw any    | <ApplicationStage> | Permanent Address          | personal_information.xlsx | address           | 148                      | <ApplicantType> | <Category> |     |
      | EXTN       | <ProductType> | invalid  | character           | throw an         | <ApplicationStage> | Residential Address        | personal_information.xlsx | address           | 145                      | <ApplicantType> | <Category> |     |
      | EXTN       | <ProductType> | invalid  | alphanumeric        | throw an         | <ApplicationStage> | Residential Address        | personal_information.xlsx | address           | 146                      | <ApplicantType> | <Category> |     |
      | EXTN       | <ProductType> | valid    | number              | not throw any    | <ApplicationStage> | Residential Address        | personal_information.xlsx | address           | 147                      | <ApplicantType> | <Category> |     |
      | EXTN       | <ProductType> | valid    | max length 8 digits | not throw any    | <ApplicationStage> | Residential Address        | personal_information.xlsx | address           | 148                      | <ApplicantType> | <Category> |     |

    @Deferred
# ${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
   # ${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | Field_Name | ProductType   | Validity | InputType           | Throws_notThrows | ApplicationStage   | Address                    | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | ApplicantType   | Category | key |
      | EXTN       | <ProductType> | invalid  | character           | throw an         | <ApplicationStage> | Additional Address         | personal_information.xlsx | address           | 145                      | <ApplicantType> |          |     |
      | EXTN       | <ProductType> | invalid  | alphanumeric        | throw an         | <ApplicationStage> | Additional Address         | personal_information.xlsx | address           | 146                      | <ApplicantType> |          |     |
      | EXTN       | <ProductType> | valid    | number              | not throw any    | <ApplicationStage> | Additional Address         | personal_information.xlsx | address           | 147                      | <ApplicantType> |          |     |
      | EXTN       | <ProductType> | valid    | max length 6 digits | not throw any    | <ApplicationStage> | Additional Address         | personal_information.xlsx | address           | 148                      | <ApplicantType> |          |     |
      | EXTN       | <ProductType> | invalid  | character           | throw an         | <ApplicationStage> | Alternate Business Address | personal_information.xlsx | address           | 145                      | <ApplicantType> |          |     |
      | EXTN       | <ProductType> | invalid  | alphanumeric        | throw an         | <ApplicationStage> | Alternate Business Address | personal_information.xlsx | address           | 146                      | <ApplicantType> |          |     |
      | EXTN       | <ProductType> | valid    | number              | not throw any    | <ApplicationStage> | Alternate Business Address | personal_information.xlsx | address           | 147                      | <ApplicantType> |          |     |
      | EXTN       | <ProductType> | valid    | max length 6 digits | not throw any    | <ApplicationStage> | Alternate Business Address | personal_information.xlsx | address           | 148                      | <ApplicantType> |          |     |
      | EXTN       | <ProductType> | invalid  | character           | throw an         | <ApplicationStage> | Office Address             | personal_information.xlsx | address           | 145                      | <ApplicantType> |          |     |
      | EXTN       | <ProductType> | invalid  | alphanumeric        | throw an         | <ApplicationStage> | Office Address             | personal_information.xlsx | address           | 146                      | <ApplicantType> |          |     |
      | EXTN       | <ProductType> | valid    | number              | not throw any    | <ApplicationStage> | Office Address             | personal_information.xlsx | address           | 147                      | <ApplicantType> |          |     |
      | EXTN       | <ProductType> | valid    | max length 6 digits | not throw any    | <ApplicationStage> | Office Address             | personal_information.xlsx | address           | 148                      | <ApplicantType> |          |     |
      | EXTN       | <ProductType> | invalid  | character           | throw an         | <ApplicationStage> | Permanent Address          | personal_information.xlsx | address           | 145                      | <ApplicantType> |          |     |
      | EXTN       | <ProductType> | invalid  | alphanumeric        | throw an         | <ApplicationStage> | Permanent Address          | personal_information.xlsx | address           | 146                      | <ApplicantType> |          |     |
      | EXTN       | <ProductType> | valid    | number              | not throw any    | <ApplicationStage> | Permanent Address          | personal_information.xlsx | address           | 147                      | <ApplicantType> |          |     |
      | EXTN       | <ProductType> | valid    | max length 6 digits | not throw any    | <ApplicationStage> | Permanent Address          | personal_information.xlsx | address           | 148                      | <ApplicantType> |          |     |
      | EXTN       | <ProductType> | invalid  | character           | throw an         | <ApplicationStage> | Residential Address        | personal_information.xlsx | address           | 145                      | <ApplicantType> |          |     |
      | EXTN       | <ProductType> | invalid  | alphanumeric        | throw an         | <ApplicationStage> | Residential Address        | personal_information.xlsx | address           | 146                      | <ApplicantType> |          |     |
      | EXTN       | <ProductType> | valid    | number              | not throw any    | <ApplicationStage> | Residential Address        | personal_information.xlsx | address           | 147                      | <ApplicantType> |          |     |
      | EXTN       | <ProductType> | valid    | max length 6 digits | not throw any    | <ApplicationStage> | Residential Address        | personal_information.xlsx | address           | 148                      | <ApplicantType> |          |     |

