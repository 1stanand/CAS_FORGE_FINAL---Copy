@Epic-Applicant_Information
@AuthoredBy-harshita.nayak
@ReviewedBy-tushar.chauhan
@Reconciled
@ReviewedByDEV
@AppInfoAdoption

# ${ApplicantType:["indiv"]}
  #FeatureID-ACAUTOCAS-191
Feature: Land Address detail Validation in Lease Land Details field with occupation type as Agriculture

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0


  Scenario Outline: ACAUTOCAS-1719: Saving Land Address Details without <Field_Name> in Lease Land Details
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user open Employment Details page on the basis of "<ApplicationStage>"
    And user reads employment details excel from datatable on the basis of "<Occupation>" type
      | employment_details.xlsx | home | 3 | Agriculture |
    And user fill employment details with Occupation Type as "<Occupation>"
    And user open financial details
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_home>" and row <FinancialDetails_home_rowNum>
    When user fills lease land address details without "<Field_Name>"
    Then lease land address details not saved with "<Throws_notThrows>"
    @ImplementedBy-ankit.yadav
    @Release @Part-2
    @Conventional
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Occupation:["Agriculture"]}
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | category | key | Occupation   | Field_Name  | FinancialDetailsWB     | FinancialDetails_home | FinancialDetails_home_rowNum | Throws_notThrows                   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | <Occupation> | Plot Number | financial_details.xlsx | lease_land_details    | 37                           | throws an error with error message |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | <Occupation> | PinCode     | financial_details.xlsx | lease_land_details    | 38                           | throws an error with error message |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | <Occupation> | State       | financial_details.xlsx | lease_land_details    | 39                           | throws an error with error message |

    #${ProductType:["IHF","IAF"]}
 #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Occupation:["Agriculture"]}
    @Islamic
    @Release
    @Part-2
    @ImplementedBy-harshita.nayak
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | category | key | Occupation   | Field_Name  | FinancialDetailsWB     | FinancialDetails_home | FinancialDetails_home_rowNum | Throws_notThrows                   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | <Occupation> | Plot Number | financial_details.xlsx | lease_land_details    | 289                          | throws an error with error message |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | <Occupation> | P.O.Box     | financial_details.xlsx | lease_land_details    | 290                          | throws an error with error message |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | <Occupation> | Emirate     | financial_details.xlsx | lease_land_details    | 291                          | throws an error with error message |
    #${ProductType:["IPF"]}
    #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
      #${category:["bonds"]}
    #${Occupation:["Agriculture"]}
    @Islamic
    @Release
    @Part-2
    @ImplementedBy-harshita.nayak
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | category   | key | Occupation   | Field_Name  | FinancialDetailsWB     | FinancialDetails_home | FinancialDetails_home_rowNum | Throws_notThrows                   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <category> |     | <Occupation> | Plot Number | financial_details.xlsx | lease_land_details    | 289                          | throws an error with error message |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <category> |     | <Occupation> | P.O.Box     | financial_details.xlsx | lease_land_details    | 290                          | throws an error with error message |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <category> |     | <Occupation> | Emirate     | financial_details.xlsx | lease_land_details    | 291                          | throws an error with error message |
 # ${ProductType:["FAS","GL","JLG","SHG"]}
 #${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Occupation:["Agriculture"]}
    @NotImplemented
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | category | key | Occupation   | Field_Name  | FinancialDetailsWB     | FinancialDetails_home | FinancialDetails_home_rowNum | Throws_notThrows                   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | <Occupation> | Plot Number | financial_details.xlsx | lease_land_details    | 37                           | throws an error with error message |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | <Occupation> | PinCode     | financial_details.xlsx | lease_land_details    | 38                           | throws an error with error message |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | <Occupation> | State       | financial_details.xlsx | lease_land_details    | 39                           | throws an error with error message |

  @Sanity
  Scenario Outline: ACAUTOCAS-1720:  Saving Land Address Details with <Mandatory_All> field in Lease Land Details
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user open Employment Details page on the basis of "<ApplicationStage>"
    And user reads employment details excel from datatable on the basis of "<Occupation>" type
      | employment_details.xlsx | home | 3 | Agriculture |
    And user fill employment details with Occupation Type as "<Occupation>"
    And user open financial details
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_home>" and row <FinancialDetails_home_rowNum>
    When user fills lease land address details with "<Mandatory_All>" field
    Then lease land address details is saved successfully
    @ImplementedBy-ankit.yadav
    @Release @Part-2
    @Conventional
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Occupation:["Agriculture"]}
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | category | key | Occupation   | Mandatory_All | FinancialDetailsWB     | FinancialDetails_home | FinancialDetails_home_rowNum |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | <Occupation> | Mandatory     | financial_details.xlsx | lease_land_details    | 40                           |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | <Occupation> | All           | financial_details.xlsx | lease_land_details    | 41                           |
 #${ProductType:["IHF","IAF"]}
 #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Occupation:["Agriculture"]}
    @Islamic
    @Release
    @Part-2
    @ImplementedBy-harshita.nayak
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | category | key | Occupation   | Mandatory_All | FinancialDetailsWB     | FinancialDetails_home | FinancialDetails_home_rowNum |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | <Occupation> | Mandatory     | financial_details.xlsx | lease_land_details    | 292                          |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | <Occupation> | All           | financial_details.xlsx | lease_land_details    | 293                          |
    #${ProductType:["IPF"]}
    #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
      #${category:["bonds"]}
    #${Occupation:["Agriculture"]}
    @Islamic
    @Release
    @Part-2
    @ImplementedBy-harshita.nayak
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | category   | key | Occupation   | Mandatory_All | FinancialDetailsWB     | FinancialDetails_home | FinancialDetails_home_rowNum |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <category> |     | <Occupation> | Mandatory     | financial_details.xlsx | lease_land_details    | 292                          |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <category> |     | <Occupation> | All           | financial_details.xlsx | lease_land_details    | 293                          |
 # ${ProductType:["FAS","GL","JLG","SHG"]}
 #${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Occupation:["Agriculture"]}
    @NotImplemented
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | category | key | Occupation   | Mandatory_All | FinancialDetailsWB     | FinancialDetails_home | FinancialDetails_home_rowNum |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | <Occupation> | Mandatory     | financial_details.xlsx | lease_land_details    | 40                           |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | <Occupation> | All           | financial_details.xlsx | lease_land_details    | 41                           |

  Scenario Outline: ACAUTOCAS-3411: Validating Full Address in Land Address Details with <validity>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user open Employment Details page on the basis of "<ApplicationStage>"
    And user reads employment details excel from datatable on the basis of "<Occupation>" type
      | employment_details.xlsx | home | 3 | Agriculture |
    And user fill employment details with Occupation Type as "<Occupation>"
    And user open financial details
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_home>" and row <FinancialDetails_home_rowNum>
    When user enters full Address in lease land address details
    Then full address field with "<validity>" "<Throws_notThrows>" in lease land address details
    @ImplementedBy-ankit.yadav
    @Release @Part-2
    @Conventional
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Occupation:["Agriculture"]}
    Examples:
      | ApplicationStage   | Occupation   | ApplicantType   | category | key | ProductType   | validity | Throws_notThrows         | FinancialDetailsWB     | FinancialDetails_home | FinancialDetails_home_rowNum |
      | <ApplicationStage> | <Occupation> | <ApplicantType> |          |     | <ProductType> | valid    | does not throw any error | financial_details.xlsx | lease_land_details    | 41                           |
#${ProductType:["IHF","IAF"]}
 #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Occupation:["Agriculture"]}
    @Islamic
    @Release
    @Part-2
    @ImplementedBy-harshita.nayak
    Examples:
      | ApplicationStage   | Occupation   | ApplicantType   | category | key | ProductType   | validity | Throws_notThrows         | FinancialDetailsWB     | FinancialDetails_home | FinancialDetails_home_rowNum |
      | <ApplicationStage> | <Occupation> | <ApplicantType> |          |     | <ProductType> | valid    | does not throw any error | financial_details.xlsx | lease_land_details    | 293                          |
 #${ProductType:["IPF"]}
    #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
      #${category:["bonds"]}
    #${Occupation:["Agriculture"]}
    @Islamic
    @Release
    @Part-2
    @ImplementedBy-harshita.nayak
    Examples:
      | ApplicationStage   | Occupation   | ApplicantType   | category   | key | ProductType   | validity | Throws_notThrows         | FinancialDetailsWB     | FinancialDetails_home | FinancialDetails_home_rowNum |
      | <ApplicationStage> | <Occupation> | <ApplicantType> | <category> |     | <ProductType> | valid    | does not throw any error | financial_details.xlsx | lease_land_details    | 293                          |
 # ${ProductType:["FAS","GL","JLG","SHG"]}
 #${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Occupation:["Agriculture"]}
    @NotImplemented
    Examples:
      | ApplicationStage   | Occupation   | ApplicantType   | category | key | ProductType   | validity | Throws_notThrows         | FinancialDetailsWB     | FinancialDetails_home | FinancialDetails_home_rowNum |
      | <ApplicationStage> | <Occupation> | <ApplicantType> |          |     | <ProductType> | valid    | does not throw any error | financial_details.xlsx | lease_land_details    | 41                           |

  Scenario Outline: ACAUTOCAS-3412: Validating Non Mandatory Field <Field_Name> in Lease Land Address Details with <var>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user open Employment Details page on the basis of "<ApplicationStage>"
    And user reads employment details excel from datatable on the basis of "<Occupation>" type
      | employment_details.xlsx | home | 3 | Agriculture |
    And user fill employment details with Occupation Type as "<Occupation>"
    And user open financial details
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_home>" and row <FinancialDetails_home_rowNum>
    When user enters "<Field_Name>" with "<var>" in lease land address details
    Then "<Field_Name>" field "<Throws_notThrows>" in lease land address details
    @ImplementedBy-ankit.yadav
    @Release @Part-2
    @Conventional
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Occupation:["Agriculture"]}
    Examples:
      | ApplicationStage   | Occupation   | ApplicantType   | category | key | ProductType   | Field_Name     | var                        | Throws_notThrows                   | FinancialDetailsWB     | FinancialDetails_home | FinancialDetails_home_rowNum |
      | <ApplicationStage> | <Occupation> | <ApplicantType> |          |     | <ProductType> | Address Line 2 | valid value                | does not throw any error           | financial_details.xlsx | lease_land_details    | 42                           |
      | <ApplicationStage> | <Occupation> | <ApplicantType> |          |     | <ProductType> | Address Line 2 | both digits and characters | does not throw any error           | financial_details.xlsx | lease_land_details    | 43                           |
      | <ApplicationStage> | <Occupation> | <ApplicantType> |          |     | <ProductType> | Address Line 2 | space                      | does not throw any error           | financial_details.xlsx | lease_land_details    | 44                           |
      | <ApplicationStage> | <Occupation> | <ApplicantType> |          |     | <ProductType> | Address Line 2 | special characters         | does not throw any error           | financial_details.xlsx | lease_land_details    | 45                           |
      | <ApplicationStage> | <Occupation> | <ApplicantType> |          |     | <ProductType> | Address Line 3 | valid value                | does not throw any error           | financial_details.xlsx | lease_land_details    | 46                           |
      | <ApplicationStage> | <Occupation> | <ApplicantType> |          |     | <ProductType> | Address Line 3 | both digits and characters | does not throw any error           | financial_details.xlsx | lease_land_details    | 47                           |
      | <ApplicationStage> | <Occupation> | <ApplicantType> |          |     | <ProductType> | Address Line 3 | space                      | does not throw any error           | financial_details.xlsx | lease_land_details    | 48                           |
      | <ApplicationStage> | <Occupation> | <ApplicantType> |          |     | <ProductType> | Address Line 3 | special characters         | throws an error with error message | financial_details.xlsx | lease_land_details    | 49                           |
#${ProductType:["IHF","IAF"]}
 #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Occupation:["Agriculture"]}
    @Islamic
    @Release
    @Part-2
    @ImplementedBy-harshita.nayak
    Examples:
      | ApplicationStage   | Occupation   | ApplicantType   | category | key | ProductType   | Field_Name     | var                        | Throws_notThrows                   | FinancialDetailsWB     | FinancialDetails_home | FinancialDetails_home_rowNum |
      | <ApplicationStage> | <Occupation> | <ApplicantType> |          |     | <ProductType> | Address Line 2 | valid value                | does not throw any error           | financial_details.xlsx | lease_land_details    | 294                          |
      | <ApplicationStage> | <Occupation> | <ApplicantType> |          |     | <ProductType> | Address Line 2 | both digits and characters | does not throw any error           | financial_details.xlsx | lease_land_details    | 295                          |
      | <ApplicationStage> | <Occupation> | <ApplicantType> |          |     | <ProductType> | Address Line 2 | space                      | does not throw any error           | financial_details.xlsx | lease_land_details    | 296                          |
      | <ApplicationStage> | <Occupation> | <ApplicantType> |          |     | <ProductType> | Address Line 2 | special characters         | does not throw any error           | financial_details.xlsx | lease_land_details    | 297                          |
      | <ApplicationStage> | <Occupation> | <ApplicantType> |          |     | <ProductType> | Address Line 3 | valid value                | does not throw any error           | financial_details.xlsx | lease_land_details    | 298                          |
      | <ApplicationStage> | <Occupation> | <ApplicantType> |          |     | <ProductType> | Address Line 3 | both digits and characters | does not throw any error           | financial_details.xlsx | lease_land_details    | 299                          |
      | <ApplicationStage> | <Occupation> | <ApplicantType> |          |     | <ProductType> | Address Line 3 | space                      | does not throw any error           | financial_details.xlsx | lease_land_details    | 300                          |
      | <ApplicationStage> | <Occupation> | <ApplicantType> |          |     | <ProductType> | Address Line 3 | special characters         | throws an error with error message | financial_details.xlsx | lease_land_details    | 301                          |

    #${ProductType:["IPF"]}
    #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
      #${category:["bonds"]}
    #${Occupation:["Agriculture"]}
    @Islamic
    @Release
    @Part-2
    @ImplementedBy-harshita.nayak
    Examples:
      | ApplicationStage   | Occupation   | ApplicantType   | category   | key | ProductType   | Field_Name     | var                        | Throws_notThrows                   | FinancialDetailsWB     | FinancialDetails_home | FinancialDetails_home_rowNum |
      | <ApplicationStage> | <Occupation> | <ApplicantType> | <category> |     | <ProductType> | Address Line 2 | valid value                | does not throw any error           | financial_details.xlsx | lease_land_details    | 294                          |
      | <ApplicationStage> | <Occupation> | <ApplicantType> | <category> |     | <ProductType> | Address Line 2 | both digits and characters | does not throw any error           | financial_details.xlsx | lease_land_details    | 295                          |
      | <ApplicationStage> | <Occupation> | <ApplicantType> | <category> |     | <ProductType> | Address Line 2 | space                      | does not throw any error           | financial_details.xlsx | lease_land_details    | 296                          |
      | <ApplicationStage> | <Occupation> | <ApplicantType> | <category> |     | <ProductType> | Address Line 2 | special characters         | does not throw any error           | financial_details.xlsx | lease_land_details    | 297                          |
      | <ApplicationStage> | <Occupation> | <ApplicantType> | <category> |     | <ProductType> | Address Line 3 | valid value                | does not throw any error           | financial_details.xlsx | lease_land_details    | 298                          |
      | <ApplicationStage> | <Occupation> | <ApplicantType> | <category> |     | <ProductType> | Address Line 3 | both digits and characters | does not throw any error           | financial_details.xlsx | lease_land_details    | 299                          |
      | <ApplicationStage> | <Occupation> | <ApplicantType> | <category> |     | <ProductType> | Address Line 3 | space                      | does not throw any error           | financial_details.xlsx | lease_land_details    | 300                          |
      | <ApplicationStage> | <Occupation> | <ApplicantType> | <category> |     | <ProductType> | Address Line 3 | special characters         | throws an error with error message | financial_details.xlsx | lease_land_details    | 301                          |
 # ${ProductType:["FAS","GL","JLG","SHG"]}
 #${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Occupation:["Agriculture"]}
    @NotImplemented
    Examples:
      | ApplicationStage   | Occupation   | ApplicantType   | category | key | ProductType   | Field_Name     | var                        | Throws_notThrows                   | FinancialDetailsWB     | FinancialDetails_home | FinancialDetails_home_rowNum |
      | <ApplicationStage> | <Occupation> | <ApplicantType> |          |     | <ProductType> | Address Line 2 | valid value                | does not throw any error           | financial_details.xlsx | lease_land_details    | 42                           |
      | <ApplicationStage> | <Occupation> | <ApplicantType> |          |     | <ProductType> | Address Line 2 | both digits and characters | does not throw any error           | financial_details.xlsx | lease_land_details    | 43                           |
      | <ApplicationStage> | <Occupation> | <ApplicantType> |          |     | <ProductType> | Address Line 2 | space                      | does not throw any error           | financial_details.xlsx | lease_land_details    | 44                           |
      | <ApplicationStage> | <Occupation> | <ApplicantType> |          |     | <ProductType> | Address Line 2 | special characters         | does not throw any error           | financial_details.xlsx | lease_land_details    | 45                           |
      | <ApplicationStage> | <Occupation> | <ApplicantType> |          |     | <ProductType> | Address Line 3 | valid value                | does not throw any error           | financial_details.xlsx | lease_land_details    | 46                           |
      | <ApplicationStage> | <Occupation> | <ApplicantType> |          |     | <ProductType> | Address Line 3 | both digits and characters | does not throw any error           | financial_details.xlsx | lease_land_details    | 47                           |
      | <ApplicationStage> | <Occupation> | <ApplicantType> |          |     | <ProductType> | Address Line 3 | space                      | does not throw any error           | financial_details.xlsx | lease_land_details    | 48                           |
      | <ApplicationStage> | <Occupation> | <ApplicantType> |          |     | <ProductType> | Address Line 3 | special characters         | throws an error with error message | financial_details.xlsx | lease_land_details    | 49                           |

  Scenario Outline: ACAUTOCAS-3413: Validating Mobile Phone in Land Address Details with <validity>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user open Employment Details page on the basis of "<ApplicationStage>"
    And user reads employment details excel from datatable on the basis of "<Occupation>" type
      | employment_details.xlsx | home | 3 | Agriculture |
    And user fill employment details with Occupation Type as "<Occupation>"
    And user open financial details
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_home>" and row <FinancialDetails_home_rowNum>
    When user enters Mobile Phone in lease land address details
    Then Mobile Phone field with "<validity>" "<Throws_notThrows>" in lease land address details
    @ImplementedBy-ankit.yadav
    @Release @Part-2
    @Conventional
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Occupation:["Agriculture"]}
    Examples:
      | ApplicationStage   | Occupation   | ApplicantType   | category | key | ProductType   | validity | Throws_notThrows                   | FinancialDetailsWB     | FinancialDetails_home | FinancialDetails_home_rowNum |
      | <ApplicationStage> | <Occupation> | <ApplicantType> |          |     | <ProductType> | valid    | does not throw any error           | financial_details.xlsx | lease_land_details    | 50                           |
      | <ApplicationStage> | <Occupation> | <ApplicantType> |          |     | <ProductType> | invalid  | throws an error with error message | financial_details.xlsx | lease_land_details    | 51                           |
#${ProductType:["IHF","IAF"]}
 #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Occupation:["Agriculture"]}
    @Islamic
    @Release
    @Part-2
    @ImplementedBy-harshita.nayak
    Examples:
      | ApplicationStage   | Occupation   | ApplicantType   | category | key | ProductType   | validity | Throws_notThrows                   | FinancialDetailsWB     | FinancialDetails_home | FinancialDetails_home_rowNum |
      | <ApplicationStage> | <Occupation> | <ApplicantType> |          |     | <ProductType> | valid    | does not throw any error           | financial_details.xlsx | lease_land_details    | 302                          |
      | <ApplicationStage> | <Occupation> | <ApplicantType> |          |     | <ProductType> | invalid  | throws an error with error message | financial_details.xlsx | lease_land_details    | 303                          |
   #${ProductType:["IPF"]}
    #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
      #${category:["bonds"]}
    #${Occupation:["Agriculture"]}
    @Islamic
    @Release
    @Part-2
    @ImplementedBy-harshita.nayak
    Examples:
      | ApplicationStage   | Occupation   | ApplicantType   | category   | key | ProductType   | validity | Throws_notThrows                   | FinancialDetailsWB     | FinancialDetails_home | FinancialDetails_home_rowNum |
      | <ApplicationStage> | <Occupation> | <ApplicantType> | <category> |     | <ProductType> | valid    | does not throw any error           | financial_details.xlsx | lease_land_details    | 302                          |
      | <ApplicationStage> | <Occupation> | <ApplicantType> | <category> |     | <ProductType> | invalid  | throws an error with error message | financial_details.xlsx | lease_land_details    | 303                          |

 # ${ProductType:["FAS","GL","JLG","SHG"]}
 #${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Occupation:["Agriculture"]}
    @NotImplemented
    Examples:
      | ApplicationStage   | Occupation   | ApplicantType   | category | key | ProductType   | validity | Throws_notThrows                   | FinancialDetailsWB     | FinancialDetails_home | FinancialDetails_home_rowNum |
      | <ApplicationStage> | <Occupation> | <ApplicantType> |          |     | <ProductType> | valid    | does not throw any error           | financial_details.xlsx | lease_land_details    | 50                           |
      | <ApplicationStage> | <Occupation> | <ApplicantType> |          |     | <ProductType> | invalid  | throws an error with error message | financial_details.xlsx | lease_land_details    | 51                           |

  Scenario Outline: ACAUTOCAS-3414: Validating <Field_Name> in Lease Land Address Details <var>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user open Employment Details page on the basis of "<ApplicationStage>"
    And user reads employment details excel from datatable on the basis of "<Occupation>" type
      | employment_details.xlsx | home | 3 | Agriculture |
    And user fill employment details with Occupation Type as "<Occupation>"
    And user open financial details
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_home>" and row <FinancialDetails_home_rowNum>
    When user enters "<Field_Name>" in lease land address details
    Then "<Field_Name>" field with "<var>" "<Throws_notThrows>" in lease land address details
    @ImplementedBy-ankit.yadav
    @Release @Part-2
    @Conventional
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Occupation:["Agriculture"]}
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | category | key | Occupation   | Field_Name   | var                       | Throws_notThrows                   | FinancialDetailsWB     | FinancialDetails_home | FinancialDetails_home_rowNum |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | <Occupation> | Mobile Phone | with characters           | throws an error with error message | financial_details.xlsx | lease_land_details    | 52                           |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | <Occupation> | Mobile Phone | with special character    | throws an error with error message | financial_details.xlsx | lease_land_details    | 53                           |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | <Occupation> | Mobile Phone | with characters and digit | throws an error with error message | financial_details.xlsx | lease_land_details    | 54                           |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | <Occupation> | Mobile Phone | with spaces               | throws an error with error message | financial_details.xlsx | lease_land_details    | 55                           |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | <Occupation> | Mobile Phone | valid value               | does not throw any error           | financial_details.xlsx | lease_land_details    | 56                           |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | <Occupation> | STD          | valid value               | does not throw any error           | financial_details.xlsx | lease_land_details    | 57                           |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | <Occupation> | STD          | with characters           | throws an error with error message | financial_details.xlsx | lease_land_details    | 58                           |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | <Occupation> | STD          | with special character    | throws an error with error message | financial_details.xlsx | lease_land_details    | 59                           |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | <Occupation> | STD          | with characters and digit | throws an error with error message | financial_details.xlsx | lease_land_details    | 60                           |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | <Occupation> | STD          | with spaces               | throws an error with error message | financial_details.xlsx | lease_land_details    | 61                           |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | <Occupation> | Number       | valid  value              | does not throw any error           | financial_details.xlsx | lease_land_details    | 62                           |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | <Occupation> | Number       | with characters           | throws an error with error message | financial_details.xlsx | lease_land_details    | 63                           |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | <Occupation> | Number       | with special_character    | throws an error with error message | financial_details.xlsx | lease_land_details    | 64                           |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | <Occupation> | Number       | with characters and digit | throws an error with error message | financial_details.xlsx | lease_land_details    | 65                           |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | <Occupation> | Number       | with spaces               | throws an error with error message | financial_details.xlsx | lease_land_details    | 66                           |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | <Occupation> | Extn         | valid value               | does not throw any error           | financial_details.xlsx | lease_land_details    | 67                           |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | <Occupation> | Extn         | with characters           | throws an error with error message | financial_details.xlsx | lease_land_details    | 68                           |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | <Occupation> | Extn         | with special character    | throws an error with error message | financial_details.xlsx | lease_land_details    | 69                           |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | <Occupation> | Extn         | with characters and digit | throws an error with error message | financial_details.xlsx | lease_land_details    | 70                           |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | <Occupation> | Extn         | with spaces               | throws an error with error message | financial_details.xlsx | lease_land_details    | 71                           |

    #${ProductType:["IHF","IAF"]}
 #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Occupation:["Agriculture"]}
    @Islamic
    @Release
    @Part-2
    @ImplementedBy-harshita.nayak
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | category | key | Occupation   | Field_Name   | var                       | Throws_notThrows                   | FinancialDetailsWB     | FinancialDetails_home | FinancialDetails_home_rowNum |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | <Occupation> | Mobile Phone | with characters           | throws an error with error message | financial_details.xlsx | lease_land_details    | 304                          |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | <Occupation> | Mobile Phone | with special character    | throws an error with error message | financial_details.xlsx | lease_land_details    | 305                          |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | <Occupation> | Mobile Phone | with characters and digit | throws an error with error message | financial_details.xlsx | lease_land_details    | 306                          |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | <Occupation> | Mobile Phone | with spaces               | throws an error with error message | financial_details.xlsx | lease_land_details    | 307                          |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | <Occupation> | Mobile Phone | valid value               | does not throw any error           | financial_details.xlsx | lease_land_details    | 308                          |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | <Occupation> | STD          | valid value               | does not throw any error           | financial_details.xlsx | lease_land_details    | 309                          |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | <Occupation> | STD          | with characters           | throws an error with error message | financial_details.xlsx | lease_land_details    | 310                          |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | <Occupation> | STD          | with special character    | throws an error with error message | financial_details.xlsx | lease_land_details    | 311                          |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | <Occupation> | STD          | with characters and digit | throws an error with error message | financial_details.xlsx | lease_land_details    | 312                          |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | <Occupation> | STD          | with spaces               | throws an error with error message | financial_details.xlsx | lease_land_details    | 313                          |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | <Occupation> | Number       | valid  value              | does not throw any error           | financial_details.xlsx | lease_land_details    | 314                          |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | <Occupation> | Number       | with characters           | throws an error with error message | financial_details.xlsx | lease_land_details    | 315                          |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | <Occupation> | Number       | with special_character    | throws an error with error message | financial_details.xlsx | lease_land_details    | 316                          |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | <Occupation> | Number       | with characters and digit | throws an error with error message | financial_details.xlsx | lease_land_details    | 317                          |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | <Occupation> | Number       | with spaces               | throws an error with error message | financial_details.xlsx | lease_land_details    | 318                          |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | <Occupation> | Extn         | valid value               | does not throw any error           | financial_details.xlsx | lease_land_details    | 319                          |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | <Occupation> | Extn         | with characters           | throws an error with error message | financial_details.xlsx | lease_land_details    | 320                          |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | <Occupation> | Extn         | with special character    | throws an error with error message | financial_details.xlsx | lease_land_details    | 321                          |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | <Occupation> | Extn         | with characters and digit | throws an error with error message | financial_details.xlsx | lease_land_details    | 322                          |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | <Occupation> | Extn         | with spaces               | throws an error with error message | financial_details.xlsx | lease_land_details    | 323                          |
 #${ProductType:["IPF"]}
    #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
      #${category:["bonds"]}
    #${Occupation:["Agriculture"]}
    @Islamic
    @Release
    @Part-2
    @AppInfoFixed5
    @ImplementedBy-harshita.nayak
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | category   | key | Occupation   | Field_Name   | var                       | Throws_notThrows                   | FinancialDetailsWB     | FinancialDetails_home | FinancialDetails_home_rowNum |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <category> |     | <Occupation> | Mobile Phone | with characters           | throws an error with error message | financial_details.xlsx | lease_land_details    | 304                          |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <category> |     | <Occupation> | Mobile Phone | with special character    | throws an error with error message | financial_details.xlsx | lease_land_details    | 305                          |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <category> |     | <Occupation> | Mobile Phone | with characters and digit | throws an error with error message | financial_details.xlsx | lease_land_details    | 306                          |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <category> |     | <Occupation> | Mobile Phone | with spaces               | throws an error with error message | financial_details.xlsx | lease_land_details    | 307                          |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <category> |     | <Occupation> | Mobile Phone | valid value               | does not throw any error           | financial_details.xlsx | lease_land_details    | 308                          |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <category> |     | <Occupation> | STD          | valid value               | does not throw any error           | financial_details.xlsx | lease_land_details    | 309                          |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <category> |     | <Occupation> | STD          | with characters           | throws an error with error message | financial_details.xlsx | lease_land_details    | 310                          |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <category> |     | <Occupation> | STD          | with special character    | throws an error with error message | financial_details.xlsx | lease_land_details    | 311                          |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <category> |     | <Occupation> | STD          | with characters and digit | throws an error with error message | financial_details.xlsx | lease_land_details    | 312                          |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <category> |     | <Occupation> | STD          | with spaces               | throws an error with error message | financial_details.xlsx | lease_land_details    | 313                          |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <category> |     | <Occupation> | Number       | valid  value              | does not throw any error           | financial_details.xlsx | lease_land_details    | 314                          |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <category> |     | <Occupation> | Number       | with characters           | throws an error with error message | financial_details.xlsx | lease_land_details    | 315                          |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <category> |     | <Occupation> | Number       | with special_character    | throws an error with error message | financial_details.xlsx | lease_land_details    | 316                          |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <category> |     | <Occupation> | Number       | with characters and digit | throws an error with error message | financial_details.xlsx | lease_land_details    | 317                          |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <category> |     | <Occupation> | Number       | with spaces               | throws an error with error message | financial_details.xlsx | lease_land_details    | 318                          |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <category> |     | <Occupation> | Extn         | valid value               | does not throw any error           | financial_details.xlsx | lease_land_details    | 319                          |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <category> |     | <Occupation> | Extn         | with characters           | throws an error with error message | financial_details.xlsx | lease_land_details    | 320                          |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <category> |     | <Occupation> | Extn         | with special character    | throws an error with error message | financial_details.xlsx | lease_land_details    | 321                          |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <category> |     | <Occupation> | Extn         | with characters and digit | throws an error with error message | financial_details.xlsx | lease_land_details    | 322                          |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <category> |     | <Occupation> | Extn         | with spaces               | throws an error with error message | financial_details.xlsx | lease_land_details    | 323                          |
 # ${ProductType:["FAS","GL","JLG","SHG"]}
 #${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Occupation:["Agriculture"]}
    @NotImplemented
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | category | key | Occupation   | Field_Name   | var                       | Throws_notThrows                   | FinancialDetailsWB     | FinancialDetails_home | FinancialDetails_home_rowNum |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | <Occupation> | Mobile Phone | with characters           | throws an error with error message | financial_details.xlsx | lease_land_details    | 52                           |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | <Occupation> | Mobile Phone | with special character    | throws an error with error message | financial_details.xlsx | lease_land_details    | 53                           |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | <Occupation> | Mobile Phone | with characters and digit | throws an error with error message | financial_details.xlsx | lease_land_details    | 54                           |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | <Occupation> | Mobile Phone | with spaces               | throws an error with error message | financial_details.xlsx | lease_land_details    | 55                           |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | <Occupation> | Mobile Phone | valid value               | does not throw any error           | financial_details.xlsx | lease_land_details    | 56                           |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | <Occupation> | STD          | valid value               | does not throw any error           | financial_details.xlsx | lease_land_details    | 57                           |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | <Occupation> | STD          | with characters           | throws an error with error message | financial_details.xlsx | lease_land_details    | 58                           |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | <Occupation> | STD          | with special character    | throws an error with error message | financial_details.xlsx | lease_land_details    | 59                           |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | <Occupation> | STD          | with characters and digit | throws an error with error message | financial_details.xlsx | lease_land_details    | 60                           |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | <Occupation> | STD          | with spaces               | throws an error with error message | financial_details.xlsx | lease_land_details    | 61                           |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | <Occupation> | Number       | valid  value              | does not throw any error           | financial_details.xlsx | lease_land_details    | 62                           |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | <Occupation> | Number       | with characters           | throws an error with error message | financial_details.xlsx | lease_land_details    | 63                           |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | <Occupation> | Number       | with special_character    | throws an error with error message | financial_details.xlsx | lease_land_details    | 64                           |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | <Occupation> | Number       | with characters and digit | throws an error with error message | financial_details.xlsx | lease_land_details    | 65                           |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | <Occupation> | Number       | with spaces               | throws an error with error message | financial_details.xlsx | lease_land_details    | 66                           |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | <Occupation> | Extn         | valid value               | does not throw any error           | financial_details.xlsx | lease_land_details    | 67                           |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | <Occupation> | Extn         | with characters           | throws an error with error message | financial_details.xlsx | lease_land_details    | 68                           |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | <Occupation> | Extn         | with special character    | throws an error with error message | financial_details.xlsx | lease_land_details    | 69                           |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | <Occupation> | Extn         | with characters and digit | throws an error with error message | financial_details.xlsx | lease_land_details    | 70                           |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | <Occupation> | Extn         | with spaces               | throws an error with error message | financial_details.xlsx | lease_land_details    | 71                           |

  Scenario Outline: ACAUTOCAS-1725:  In Selection of <Field_Name> with "<From>" and "<To>" in Land Address
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user open Employment Details page on the basis of "<ApplicationStage>"
    And user reads employment details excel from datatable on the basis of "<Occupation>" type
      | employment_details.xlsx | home | 3 | Agriculture |
    And user fill employment details with Occupation Type as "<Occupation>"
    And user open financial details
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_home>" and row <FinancialDetails_home_rowNum>
    When user selects "<Field_Name>" details with "<From>" and "<To>" in lease land address details
    Then "<Field_Name>" field "<Throws_notThrows>" in lease land address details
    @ImplementedBy-ankit.yadav
    @Release @Part-2
    @Conventional
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Occupation:["Agriculture"]}
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | category | key | Occupation   | Field_Name               | From                 | To                     | Throws_notThrows                   | FinancialDetailsWB     | FinancialDetails_home | FinancialDetails_home_rowNum |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | <Occupation> | Duration at this Address | less than To date    | greater than From Date | does not throw any error           | financial_details.xlsx | lease_land_details    | 72                           |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | <Occupation> | Duration at this Address | greater than To Date | less than From Date    | throws an error with error message | financial_details.xlsx | lease_land_details    | 73                           |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | <Occupation> | Duration at this Address | valid To date        | valid From date        | does not throw any error           | financial_details.xlsx | lease_land_details    | 74                           |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | <Occupation> | Duration at this City    | less than To date    | greater than From Date | does not throw any error           | financial_details.xlsx | lease_land_details    | 75                           |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | <Occupation> | Duration at this City    | greater than To Date | less than From Date    | throws an error with error message | financial_details.xlsx | lease_land_details    | 76                           |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | <Occupation> | Duration at this City    | valid To date        | valid From date        | does not throw any error           | financial_details.xlsx | lease_land_details    | 77                           |

    #${ProductType:["IHF","IAF"]}
 #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Occupation:["Agriculture"]}
    @Islamic
    @Release
    @Part-2
    @ImplementedBy-harshita.nayak
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | category | key | Occupation   | Field_Name               | From                 | To                     | Throws_notThrows                   | FinancialDetailsWB     | FinancialDetails_home | FinancialDetails_home_rowNum |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | <Occupation> | Duration at this Address | less than To date    | greater than From Date | does not throw any error           | financial_details.xlsx | lease_land_details    | 324                          |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | <Occupation> | Duration at this Address | greater than To Date | less than From Date    | throws an error with error message | financial_details.xlsx | lease_land_details    | 325                          |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | <Occupation> | Duration at this Address | valid To date        | valid From date        | does not throw any error           | financial_details.xlsx | lease_land_details    | 326                          |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | <Occupation> | Duration at this City    | less than To date    | greater than From Date | does not throw any error           | financial_details.xlsx | lease_land_details    | 327                          |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | <Occupation> | Duration at this City    | greater than To Date | less than From Date    | throws an error with error message | financial_details.xlsx | lease_land_details    | 328                          |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | <Occupation> | Duration at this City    | valid To date        | valid From date        | does not throw any error           | financial_details.xlsx | lease_land_details    | 329                          |

     #${ProductType:["IPF"]}
    #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
      #${category:["bonds"]}
    #${Occupation:["Agriculture"]}
    @Islamic
    @Release
    @Part-2
    @ImplementedBy-harshita.nayak
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | category   | key | Occupation   | Field_Name               | From                 | To                     | Throws_notThrows                   | FinancialDetailsWB     | FinancialDetails_home | FinancialDetails_home_rowNum |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <category> |     | <Occupation> | Duration at this Address | less than To date    | greater than From Date | does not throw any error           | financial_details.xlsx | lease_land_details    | 324                          |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <category> |     | <Occupation> | Duration at this Address | greater than To Date | less than From Date    | throws an error with error message | financial_details.xlsx | lease_land_details    | 325                          |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <category> |     | <Occupation> | Duration at this Address | valid To date        | valid From date        | does not throw any error           | financial_details.xlsx | lease_land_details    | 326                          |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <category> |     | <Occupation> | Duration at this City    | less than To date    | greater than From Date | does not throw any error           | financial_details.xlsx | lease_land_details    | 327                          |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <category> |     | <Occupation> | Duration at this City    | greater than To Date | less than From Date    | throws an error with error message | financial_details.xlsx | lease_land_details    | 328                          |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <category> |     | <Occupation> | Duration at this City    | valid To date        | valid From date        | does not throw any error           | financial_details.xlsx | lease_land_details    | 329                          |
 # ${ProductType:["FAS","GL","JLG","SHG"]}
 #${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Occupation:["Agriculture"]}
    @NotImplemented
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | category | key | Occupation   | Field_Name               | From                 | To                     | Throws_notThrows                   | FinancialDetailsWB     | FinancialDetails_home | FinancialDetails_home_rowNum |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | <Occupation> | Duration at this Address | less than To date    | greater than From Date | does not throw any error           | financial_details.xlsx | lease_land_details    | 72                           |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | <Occupation> | Duration at this Address | greater than To Date | less than From Date    | throws an error with error message | financial_details.xlsx | lease_land_details    | 73                           |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | <Occupation> | Duration at this Address | valid To date        | valid From date        | does not throw any error           | financial_details.xlsx | lease_land_details    | 74                           |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | <Occupation> | Duration at this City    | less than To date    | greater than From Date | does not throw any error           | financial_details.xlsx | lease_land_details    | 75                           |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | <Occupation> | Duration at this City    | greater than To Date | less than From Date    | throws an error with error message | financial_details.xlsx | lease_land_details    | 76                           |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | <Occupation> | Duration at this City    | valid To date        | valid From date        | does not throw any error           | financial_details.xlsx | lease_land_details    | 77                           |


  Scenario Outline: ACAUTOCAS-1726:  In Selection of <Field_Name> <Dependent_Field> disabled
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user open Employment Details page on the basis of "<ApplicationStage>"
    And user reads employment details excel from datatable on the basis of "<Occupation>" type
      | employment_details.xlsx | home | 3 | Agriculture |
    And user fill employment details with Occupation Type as "<Occupation>"
    And user open financial details
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_home>" and row <FinancialDetails_home_rowNum>
    When user selects "<Field_Name>" field in lease land address details
    Then "<Dependent_Field>" should be disabled in lease land address details
    @ImplementedBy-ankit.yadav
    @Release @Part-2
    @Conventional
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Occupation:["Agriculture"]}
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | category | key | Occupation   | Field_Name      | Dependent_Field             | FinancialDetailsWB     | FinancialDetails_home | FinancialDetails_home_rowNum |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | <Occupation> | Current Address | Duration at this Address To | financial_details.xlsx | lease_land_details    | 76                           |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | <Occupation> | Current Address | Duration at this City To    | financial_details.xlsx | lease_land_details    | 77                           |

    #${ProductType:["IHF","IAF"]}
 #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Occupation:["Agriculture"]}
    @Islamic
    @Release
    @Part-2
    @ImplementedBy-harshita.nayak
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | category | key | Occupation   | Field_Name      | Dependent_Field             | FinancialDetailsWB     | FinancialDetails_home | FinancialDetails_home_rowNum |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | <Occupation> | Current Address | Duration at this Address To | financial_details.xlsx | lease_land_details    | 328                          |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | <Occupation> | Current Address | Duration at this City To    | financial_details.xlsx | lease_land_details    | 329                          |
    #${ProductType:["IPF"]}
    #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
      #${category:["bonds"]}
    #${Occupation:["Agriculture"]}
    @Islamic
    @Release
    @Part-2
    @ImplementedBy-harshita.nayak
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | category   | key | Occupation   | Field_Name      | Dependent_Field             | FinancialDetailsWB     | FinancialDetails_home | FinancialDetails_home_rowNum |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <category> |     | <Occupation> | Current Address | Duration at this Address To | financial_details.xlsx | lease_land_details    | 328                          |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <category> |     | <Occupation> | Current Address | Duration at this City To    | financial_details.xlsx | lease_land_details    | 329                          |
   # ${ProductType:["FAS","GL","JLG","SHG"]}
 #${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Occupation:["Agriculture"]}
    @NotImplemented
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | category | key | Occupation   | Field_Name      | Dependent_Field             | FinancialDetailsWB     | FinancialDetails_home | FinancialDetails_home_rowNum |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | <Occupation> | Current Address | Duration at this Address To | financial_details.xlsx | lease_land_details    | 76                           |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | <Occupation> | Current Address | Duration at this City To    | financial_details.xlsx | lease_land_details    | 77                           |

  Scenario Outline: ACAUTOCAS-1727:  In Selection of <Field_Name> field <Dependent_Field> is autofilled
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user open Employment Details page on the basis of "<ApplicationStage>"
    And user reads employment details excel from datatable on the basis of "<Occupation>" type
      | employment_details.xlsx | home | 3 | Agriculture |
    And user fill employment details with Occupation Type as "<Occupation>"
    And user open financial details
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_home>" and row <FinancialDetails_home_rowNum>
    When user enters "<Field_Name>" of lease land address details
    Then "<Dependent_Field>" should auto selected in lease land address details
    @ImplementedBy-ankit.yadav
    @Release @Part-2
    @Conventional
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Occupation:["Agriculture"]}
    Examples:
      | ApplicationStage   | ProductType   | Occupation   | ApplicantType   | category | key | Field_Name | Dependent_Field | FinancialDetailsWB     | FinancialDetails_home | FinancialDetails_home_rowNum |
      | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     | PinCode    | State           | financial_details.xlsx | lease_land_details    | 72                           |
      | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     | PinCode    | Region          | financial_details.xlsx | lease_land_details    | 73                           |
      | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     | PinCode    | City            | financial_details.xlsx | lease_land_details    | 74                           |
      | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     | PinCode    | District        | financial_details.xlsx | lease_land_details    | 75                           |
      | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     | PinCode    | Taluka          | financial_details.xlsx | lease_land_details    | 76                           |
      | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     | PinCode    | Village         | financial_details.xlsx | lease_land_details    | 77                           |
      | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     | State      | Region          | financial_details.xlsx | lease_land_details    | 78                           |
#${ProductType:["IHF","IAF"]}
 #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Occupation:["Agriculture"]}
    @Islamic
    @Release
    @Part-2
    @ImplementedBy-harshita.nayak
    Examples:
      | ApplicationStage   | ProductType   | Occupation   | ApplicantType   | category | key | Field_Name | Dependent_Field | FinancialDetailsWB     | FinancialDetails_home | FinancialDetails_home_rowNum |
      | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     | P.O.Box    | Emirate         | financial_details.xlsx | lease_land_details    | 324                          |
      | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     | P.O.Box    | Region          | financial_details.xlsx | lease_land_details    | 325                          |
      | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     | P.O.Box    | City            | financial_details.xlsx | lease_land_details    | 326                          |
      | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     | P.O.Box    | District        | financial_details.xlsx | lease_land_details    | 327                          |
      | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     | P.O.Box    | Taluka          | financial_details.xlsx | lease_land_details    | 328                          |
      | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     | P.O.Box    | Village         | financial_details.xlsx | lease_land_details    | 329                          |
      | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     | Emirate    | Region          | financial_details.xlsx | lease_land_details    | 329                          |
  #${ProductType:["IPF"]}
    #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
      #${category:["bonds"]}
    #${Occupation:["Agriculture"]}
    @Islamic
    @Release
    @Part-2
    @ImplementedBy-harshita.nayak
    Examples:
      | ApplicationStage   | ProductType   | Occupation   | ApplicantType   | category   | key | Field_Name | Dependent_Field | FinancialDetailsWB     | FinancialDetails_home | FinancialDetails_home_rowNum |
      | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> | <category> |     | P.O.Box    | Emirate         | financial_details.xlsx | lease_land_details    | 324                          |
      | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> | <category> |     | P.O.Box    | Region          | financial_details.xlsx | lease_land_details    | 325                          |
      | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> | <category> |     | P.O.Box    | City            | financial_details.xlsx | lease_land_details    | 326                          |
      | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> | <category> |     | P.O.Box    | District        | financial_details.xlsx | lease_land_details    | 327                          |
      | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> | <category> |     | P.O.Box    | Taluka          | financial_details.xlsx | lease_land_details    | 328                          |
      | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> | <category> |     | P.O.Box    | Village         | financial_details.xlsx | lease_land_details    | 329                          |
      | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> | <category> |     | Emirate    | Region          | financial_details.xlsx | lease_land_details    | 329                          |

     # ${ProductType:["FAS","GL","JLG","SHG"]}
 #${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Occupation:["Agriculture"]}
    @NotImplemented
    Examples:
      | ApplicationStage   | ProductType   | Occupation   | ApplicantType   | category | key | Field_Name | Dependent_Field | FinancialDetailsWB     | FinancialDetails_home | FinancialDetails_home_rowNum |
      | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     | PinCode    | State           | financial_details.xlsx | lease_land_details    | 72                           |
      | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     | PinCode    | Region          | financial_details.xlsx | lease_land_details    | 73                           |
      | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     | PinCode    | City            | financial_details.xlsx | lease_land_details    | 74                           |
      | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     | PinCode    | District        | financial_details.xlsx | lease_land_details    | 75                           |
      | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     | PinCode    | Taluka          | financial_details.xlsx | lease_land_details    | 76                           |
      | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     | PinCode    | Village         | financial_details.xlsx | lease_land_details    | 77                           |
      | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     | State      | Region          | financial_details.xlsx | lease_land_details    | 78                           |

  Scenario Outline: ACAUTOCAS-1728: In Selection of Is address verified is enabled in Land Address
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user open Employment Details page on the basis of "<ApplicationStage>"
    And user reads employment details excel from datatable on the basis of "<Occupation>" type
      | employment_details.xlsx | home | 3 | Agriculture |
    And user fill employment details with Occupation Type as "<Occupation>"
    And user open financial details
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_home>" and row <FinancialDetails_home_rowNum>
    When user selects is address verified field of lease land address details
    Then is address verified should be enabled of lease land address details
    @ImplementedBy-ankit.yadav
    @Release @Part-2
    @Conventional
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Occupation:["Agriculture"]}
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | category | key | Occupation   | FinancialDetailsWB     | FinancialDetails_home | FinancialDetails_home_rowNum |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | <Occupation> | financial_details.xlsx | lease_land_details    | 0                            |

  #${ProductType:["IHF","IAF"]}
 #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Occupation:["Agriculture"]}
    @Islamic
    @Release
    @Part-2
    @ImplementedBy-harshita.nayak
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | category | key | Occupation   | FinancialDetailsWB     | FinancialDetails_home | FinancialDetails_home_rowNum |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | <Occupation> | financial_details.xlsx | lease_land_details    | 287                          |

     #${ProductType:["IPF"]}
    #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
      #${category:["bonds"]}
    #${Occupation:["Agriculture"]}
    @Islamic
    @Release
    @Part-2
    @ImplementedBy-harshita.nayak
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | category   | key | Occupation   | FinancialDetailsWB     | FinancialDetails_home | FinancialDetails_home_rowNum |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <category> |     | <Occupation> | financial_details.xlsx | lease_land_details    | 287                          |
  # ${ProductType:["FAS","GL","JLG","SHG"]}
 #${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Occupation:["Agriculture"]}
    @NotImplemented
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | category | key | Occupation   | FinancialDetailsWB     | FinancialDetails_home | FinancialDetails_home_rowNum |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | <Occupation> | financial_details.xlsx | lease_land_details    | 0                            |

  Scenario Outline: ACAUTOCAS-1729:  In Selection of country code in <Field_Name> field ISD code changes with <var> in Land Address
    And user opens an application of "<ProductType>" product type as "indiv" applicant at "<ApplicationStage>" for "" with "" from application grid
    And user open Employment Details page on the basis of "<ApplicationStage>"
    And user reads employment details excel from datatable on the basis of "<Occupation>" type
      | employment_details.xlsx | home | 3 | Agriculture |
    And user fill employment details with Occupation Type as "<Occupation>"
    And user open financial details
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_home>" and row <FinancialDetails_home_rowNum>
    When user selects country code with "<var>" in  "<Field_Name>" field of lease land address details
    Then ISD code of "<Field_Name>" changes display successfully of lease land address details
    @ImplementedBy-ankit.yadav
    @Release @Part-2
    @Conventional
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Occupation:["Agriculture"]}
    Examples:
      | ApplicationStage   | ProductType   | Occupation   | var | Field_Name   | FinancialDetailsWB     | FinancialDetails_home | FinancialDetails_home_rowNum |
      | <ApplicationStage> | <ProductType> | <Occupation> | AE  | Phone Number | financial_details.xlsx | lease_land_details    | 78                           |
      | <ApplicationStage> | <ProductType> | <Occupation> | AF  | Phone Number | financial_details.xlsx | lease_land_details    | 79                           |
      | <ApplicationStage> | <ProductType> | <Occupation> | AL  | Phone Number | financial_details.xlsx | lease_land_details    | 80                           |
      | <ApplicationStage> | <ProductType> | <Occupation> | AO  | Phone Number | financial_details.xlsx | lease_land_details    | 81                           |
      | <ApplicationStage> | <ProductType> | <Occupation> | AU  | Phone Number | financial_details.xlsx | lease_land_details    | 82                           |
      | <ApplicationStage> | <ProductType> | <Occupation> | EH  | Phone Number | financial_details.xlsx | lease_land_details    | 83                           |
      | <ApplicationStage> | <ProductType> | <Occupation> | IE  | Phone Number | financial_details.xlsx | lease_land_details    | 84                           |
      | <ApplicationStage> | <ProductType> | <Occupation> | IN  | Phone Number | financial_details.xlsx | lease_land_details    | 85                           |
      | <ApplicationStage> | <ProductType> | <Occupation> | NP  | Phone Number | financial_details.xlsx | lease_land_details    | 86                           |
      | <ApplicationStage> | <ProductType> | <Occupation> | NZ  | Phone Number | financial_details.xlsx | lease_land_details    | 87                           |
      | <ApplicationStage> | <ProductType> | <Occupation> | RU  | Phone Number | financial_details.xlsx | lease_land_details    | 88                           |
      | <ApplicationStage> | <ProductType> | <Occupation> | VN  | Phone Number | financial_details.xlsx | lease_land_details    | 89                           |
      | <ApplicationStage> | <ProductType> | <Occupation> | ZA  | Phone Number | financial_details.xlsx | lease_land_details    | 90                           |
      | <ApplicationStage> | <ProductType> | <Occupation> | AE  | Mobile Phone | financial_details.xlsx | lease_land_details    | 91                           |
      | <ApplicationStage> | <ProductType> | <Occupation> | AF  | Mobile Phone | financial_details.xlsx | lease_land_details    | 92                           |
      | <ApplicationStage> | <ProductType> | <Occupation> | AL  | Mobile Phone | financial_details.xlsx | lease_land_details    | 93                           |
      | <ApplicationStage> | <ProductType> | <Occupation> | AO  | Mobile Phone | financial_details.xlsx | lease_land_details    | 94                           |
      | <ApplicationStage> | <ProductType> | <Occupation> | AU  | Mobile Phone | financial_details.xlsx | lease_land_details    | 95                           |
      | <ApplicationStage> | <ProductType> | <Occupation> | EH  | Mobile Phone | financial_details.xlsx | lease_land_details    | 96                           |
      | <ApplicationStage> | <ProductType> | <Occupation> | IE  | Mobile Phone | financial_details.xlsx | lease_land_details    | 97                           |
      | <ApplicationStage> | <ProductType> | <Occupation> | IN  | Mobile Phone | financial_details.xlsx | lease_land_details    | 98                           |
      | <ApplicationStage> | <ProductType> | <Occupation> | NP  | Mobile Phone | financial_details.xlsx | lease_land_details    | 99                           |
      | <ApplicationStage> | <ProductType> | <Occupation> | NZ  | Mobile Phone | financial_details.xlsx | lease_land_details    | 100                          |
      | <ApplicationStage> | <ProductType> | <Occupation> | RU  | Mobile Phone | financial_details.xlsx | lease_land_details    | 101                          |
      | <ApplicationStage> | <ProductType> | <Occupation> | VN  | Mobile Phone | financial_details.xlsx | lease_land_details    | 102                          |
      | <ApplicationStage> | <ProductType> | <Occupation> | ZA  | Mobile Phone | financial_details.xlsx | lease_land_details    | 103                          |
