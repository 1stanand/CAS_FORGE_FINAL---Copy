@Epic-Applicant_Information
@AuthoredBy-harshita.nayak
@ReviewedBy-tushar.chauhan
@ReviewedByDEV
@Reconciled
@AppInfoAdoption

# ${ApplicantType:["indiv"]}
    #FeatureID-ACAUTOCAS-191
Feature: Lessor detail Validation in Lease Land Details field with occupation type as Agriculture

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0

  Scenario Outline: ACAUTOCAS-1743:  Saving Lessor Details Address without <Field_Name> in Lease Land Details
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user open Employment Details page on the basis of "<ApplicationStage>"
    And user reads employment details excel from datatable on the basis of "<Occupation>" type
      | employment_details.xlsx | home | 3 | Agriculture |
    And user fill employment details with Occupation Type as "<Occupation>"
    And user open financial details
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_home>" and row <FinancialDetails_home_rowNum>
    When user fills lessor address details without "<Field_Name>"
    Then lessor address details not saved with "<Throws_notThrows>"
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
    @FixedJsClick2
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
  Scenario Outline: ACAUTOCAS-1744:  Saving Lessor Details Address with <Mandatory_All> field in Lease Land Details
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user open Employment Details page on the basis of "<ApplicationStage>"
    And user reads employment details excel from datatable on the basis of "<Occupation>" type
      | employment_details.xlsx | home | 3 | Agriculture |
    And user fill employment details with Occupation Type as "<Occupation>"
    And user open financial details
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_home>" and row <FinancialDetails_home_rowNum>
    When user fills lessor address details with "<Mandatory_All>" field
    Then lessor address details is saved successfully
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

  Scenario Outline: ACAUTOCAS-3422: Validating Full Address in Lessor Details Address with <validity>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user open Employment Details page on the basis of "<ApplicationStage>"
    And user reads employment details excel from datatable on the basis of "<Occupation>" type
      | employment_details.xlsx | home | 3 | Agriculture |
    And user fill employment details with Occupation Type as "<Occupation>"
    And user open financial details
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_home>" and row <FinancialDetails_home_rowNum>
    When user enters full address in lessor address Details
    Then full address field with "<validity>" "<Throws_notThrows>" in lessor address Details
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

  Scenario Outline: ACAUTOCAS-1746:  Add multiple <var> <Field_Name> Lessor Details Address
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user open Employment Details page on the basis of "<ApplicationStage>"
    And user reads employment details excel from datatable on the basis of "<Occupation>" type
      | employment_details.xlsx | home | 3 | Agriculture |
    And user fill employment details with Occupation Type as "<Occupation>"
    And user open financial details
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_home>" and row <FinancialDetails_home_rowNum>
    When user add multiple <var> "<Field_Name>" in lessor address details
    Then "<Field_Name>" should added in lessor address details
    #${ ProductType : ["PL","HL","AL","EDU","OMNI","CEQ", "KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Occupation:["Agriculture"]}
    @Release @Part-2
    @ImplementedBy-ankit.yadav
    @Conventional
    Examples:
      | ApplicationStage   | ApplicantType   | ProductType   | Occupation   | category | key | Field_Name   | var | FinancialDetailsWB     | FinancialDetails_home | FinancialDetails_home_rowNum |
      | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> |          |     | Phone Number | 3   | financial_details.xlsx | lease_land_details    | 0                            |
    #${ ProductType : ["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Occupation:["Agriculture"]}
    @Islamic
    @Release
    @Part-2
    @ImplementedBy-harshita.nayak
    Examples:
      | ApplicationStage   | ApplicantType   | ProductType   | Occupation   | category | key | Field_Name   | var | FinancialDetailsWB     | FinancialDetails_home | FinancialDetails_home_rowNum |
      | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> |          |     | Phone Number | 3   | financial_details.xlsx | lease_land_details    | 0                            |
    #${ProductType:["IPF"]}
    #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
      #${category:["bonds"]}
    #${Occupation:["Agriculture"]}
    @FixedJsClick2
    @Islamic
    @Release
    @Part-2
    @ImplementedBy-harshita.nayak
    Examples:
      | ApplicationStage   | ApplicantType   | ProductType   | Occupation   | category   | key | Field_Name   | var | FinancialDetailsWB     | FinancialDetails_home | FinancialDetails_home_rowNum |
      | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> | <category> |     | Phone Number | 3   | financial_details.xlsx | lease_land_details    | 286                          |

     # ${ProductType:["FAS","GL","JLG","SHG"]}
#${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
#${Occupation:["Agriculture"]}
    @NotImplemented
    Examples:
      | ApplicationStage   | ApplicantType   | ProductType   | Occupation   | category | key | Field_Name   | var | FinancialDetailsWB     | FinancialDetails_home | FinancialDetails_home_rowNum |
      | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> |          |     | Phone Number | 3   | financial_details.xlsx | lease_land_details    | 0                            |

  Scenario Outline: ACAUTOCAS-3423: Validating Non Mandatory Field <Field_Name> in Lessor Details Address with <var> in lease land details
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user open Employment Details page on the basis of "<ApplicationStage>"
    And user reads employment details excel from datatable on the basis of "<Occupation>" type
      | employment_details.xlsx | home | 3 | Agriculture |
    And user fill employment details with Occupation Type as "<Occupation>"
    And user open financial details
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_home>" and row <FinancialDetails_home_rowNum>
    When user enters "<Field_Name>" with "<var>" in lessor address details
    Then "<Field_Name>" field "<Throws_notThrows>" in lessor address details
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
    @FixedTest28
    @AppInfoFixed5
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

  Scenario Outline: ACAUTOCAS-3424: Validating Mobile Phone in Lessor Details Address with <validity>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user open Employment Details page on the basis of "<ApplicationStage>"
    And user reads employment details excel from datatable on the basis of "<Occupation>" type
      | employment_details.xlsx | home | 3 | Agriculture |
    And user fill employment details with Occupation Type as "<Occupation>"
    And user open financial details
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_home>" and row <FinancialDetails_home_rowNum>
    When user enters mobile phone in lessor address details
    Then mobile phone field with "<validity>" "<Throws_notThrows>" in lessor address details
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

  Scenario Outline: ACAUTOCAS-3425: Validating <Field_Name> in Lessor Details Address <var> in lease land details
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user open Employment Details page on the basis of "<ApplicationStage>"
    And user reads employment details excel from datatable on the basis of "<Occupation>" type
      | employment_details.xlsx | home | 3 | Agriculture |
    And user fill employment details with Occupation Type as "<Occupation>"
    And user open financial details
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_home>" and row <FinancialDetails_home_rowNum>
    When user enters "<Field_Name>" in lessor address details
    Then "<Field_Name>" field with "<var>" "<Throws_notThrows>" in lessor address details
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
    @FixedTest28
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

    @Perishable
  Scenario Outline: ACAUTOCAS-1750:  In Selection of <Field_Name> with "<From>" and "<To>" in Lessor Details Address
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user open Employment Details page on the basis of "<ApplicationStage>"
    And user reads employment details excel from datatable on the basis of "<Occupation>" type
      | employment_details.xlsx | home | 3 | Agriculture |
    And user fill employment details with Occupation Type as "<Occupation>"
    And user open financial details
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_home>" and row <FinancialDetails_home_rowNum>
    When user selects "<Field_Name>" details with "<From>" and "<To>" in lessor address details
    Then "<Field_Name>" field "<Throws_notThrows>" in lessor address details
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
    @AppInfoFixed5
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


  Scenario Outline: ACAUTOCAS-1751:  In Selection of <Field_Name> <Dependent_Field> disabled
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user open Employment Details page on the basis of "<ApplicationStage>"
    And user reads employment details excel from datatable on the basis of "<Occupation>" type
      | employment_details.xlsx | home | 3 | Agriculture |
    And user fill employment details with Occupation Type as "<Occupation>"
    And user open financial details
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_home>" and row <FinancialDetails_home_rowNum>
    When user selects "<Field_Name>" field in lessor address details
    Then "<Dependent_Field>" should be disabled in lessor address details
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
      | ApplicationStage   | ProductType   | ApplicantType   | category   | key | Occupation  | Field_Name      | Dependent_Field             | FinancialDetailsWB     | FinancialDetails_home | FinancialDetails_home_rowNum |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <category> |     | Agriculture | Current Address | Duration at this Address To | financial_details.xlsx | lease_land_details    | 328                          |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <category> |     | Agriculture | Current Address | Duration at this City To    | financial_details.xlsx | lease_land_details    | 329                          |
   # ${ProductType:["FAS","GL","JLG","SHG"]}
 #${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Occupation:["Agriculture"]}
    @NotImplemented
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | category | key | Occupation   | Field_Name      | Dependent_Field             | FinancialDetailsWB     | FinancialDetails_home | FinancialDetails_home_rowNum |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | <Occupation> | Current Address | Duration at this Address To | financial_details.xlsx | lease_land_details    | 76                           |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | <Occupation> | Current Address | Duration at this City To    | financial_details.xlsx | lease_land_details    | 77                           |

  Scenario Outline: ACAUTOCAS-1752: In Selection of <Field_Name> field <Dependent_Field> is autofilled
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user open Employment Details page on the basis of "<ApplicationStage>"
    And user reads employment details excel from datatable on the basis of "<Occupation>" type
      | employment_details.xlsx | home | 3 | Agriculture |
    And user fill employment details with Occupation Type as "<Occupation>"
    And user open financial details
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_home>" and row <FinancialDetails_home_rowNum>
    When user enters "<Field_Name>" of lessor address details
    Then "<Dependent_Field>" should auto selected in lessor address details
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

  Scenario Outline: ACAUTOCAS-1753: In Selection of Address Verified is enabled in Lessor Details Address
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user open Employment Details page on the basis of "<ApplicationStage>"
    And user reads employment details excel from datatable on the basis of "<Occupation>" type
      | employment_details.xlsx | home | 3 | Agriculture |
    And user fill employment details with Occupation Type as "<Occupation>"
    And user open financial details
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_home>" and row <FinancialDetails_home_rowNum>
    When user selects is address verified field in lessor address details
    Then is address verified should be enabled in lessor address details
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


  Scenario Outline: ACAUTOCAS-1754:  In Selection of country code in <Field_Name> field ISD code changes with <var> in Lessor Details Address
    And user opens an application of "<ProductType>" product type as "indiv" applicant at "<ApplicationStage>" for "" with "" from application grid
    And user open Employment Details page on the basis of "<ApplicationStage>"
    And user reads employment details excel from datatable on the basis of "<Occupation>" type
      | employment_details.xlsx | home | 3 | Agriculture |
    And user fill employment details with Occupation Type as "<Occupation>"
    And user open financial details
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_home>" and row <FinancialDetails_home_rowNum>
    When user selects country code with "<var>" in  "<Field_Name>" field in lessor address details
    Then ISD code of "<Field_Name>" changes display successfully in lessor address details
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

   # ${ProductType:["FAS","GL","JLG","SHG"]}
 #${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
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

    @Perishable
    @Sanity
  Scenario Outline: ACAUTOCAS-1755:  Add in Lessor Details Identification with <Var> fields
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user open Employment Details page on the basis of "<ApplicationStage>"
    And user reads employment details excel from datatable on the basis of "<Occupation>" type
      | employment_details.xlsx | home | 3 | Agriculture |
    And user fill employment details with Occupation Type as "<Occupation>"
    And user open financial details
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_home>" and row <FinancialDetails_home_rowNum>
    When user add in lessor identification details with "<Var>" fields
    Then lessor identification details save successfully
    @ImplementedBy-ankit.yadav
    @Release @Part-2
    @Conventional
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Occupation:["Agriculture"]}
    Examples:
      | ApplicationStage   | ProductType   | Occupation   | ApplicantType   | category | key | Var       | FinancialDetailsWB     | FinancialDetails_home | FinancialDetails_home_rowNum |
      | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     | all       | financial_details.xlsx | lease_land_details    | 0                            |
      | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     | mandatory | financial_details.xlsx | lease_land_details    | 1                            |
 #${ProductType:["IHF","IAF"]}
 #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Occupation:["Agriculture"]}
    @Islamic
    @Release
    @Part-2
    @ImplementedBy-harshita.nayak
    Examples:
      | ApplicationStage   | ProductType   | Occupation   | ApplicantType   | category | key | Var       | FinancialDetailsWB     | FinancialDetails_home | FinancialDetails_home_rowNum |
      | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     | all       | financial_details.xlsx | lease_land_details    | 286                          |
      | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     | mandatory | financial_details.xlsx | lease_land_details    | 287                          |
    #${ProductType:["IPF"]}
    #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
      #${category:["bonds"]}
    #${Occupation:["Agriculture"]}
    @Islamic
    @Release
    @Part-2
    @ImplementedBy-harshita.nayak
    Examples:
      | ApplicationStage   | ProductType   | Occupation   | ApplicantType   | category   | key | Var       | FinancialDetailsWB     | FinancialDetails_home | FinancialDetails_home_rowNum |
      | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> | <category> |     | all       | financial_details.xlsx | lease_land_details    | 286                          |
      | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> | <category> |     | mandatory | financial_details.xlsx | lease_land_details    | 287                          |
  # ${ProductType:["FAS","GL","JLG","SHG"]}
 #${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Occupation:["Agriculture"]}
    @NotImplemented
    Examples:
      | ApplicationStage   | ProductType   | Occupation   | ApplicantType   | category | key | Var       | FinancialDetailsWB     | FinancialDetails_home | FinancialDetails_home_rowNum |
      | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     | all       | financial_details.xlsx | lease_land_details    | 0                            |
      | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     | mandatory | financial_details.xlsx | lease_land_details    | 1                            |

  @Sanity
  Scenario Outline: ACAUTOCAS-1756:  Add multiple "<singleMultiple>" in Lessor Details Identification
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user open Employment Details page on the basis of "<ApplicationStage>"
    And user reads employment details excel from datatable on the basis of "<Occupation>" type
      | employment_details.xlsx | home | 3 | Agriculture |
    And user fill employment details with Occupation Type as "<Occupation>"
    And user open financial details
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_home>" and row <FinancialDetails_home_rowNum>
    When user add "<singleMultiple>" in lessor identification details
      | financial_details.xlsx | lease_land_details | <rowNum1> |
      | financial_details.xlsx | lease_land_details | <rowNum2> |
    And user save lessor detail with check for dedupe
    Then lessor identification details should save successfully
    @ImplementedBy-ankit.yadav
    @Release @Part-2
    @Conventional
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Occupation:["Agriculture"]}
    Examples:
      | ApplicationStage   | ProductType   | Occupation   | ApplicantType   | category | key | singleMultiple | FinancialDetailsWB     | FinancialDetails_home | FinancialDetails_home_rowNum | rowNum1 | rowNum2 |
      | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     | multiple       | financial_details.xlsx | lease_land_details    | 0                            | 0       | 1       |
#${ProductType:["IHF","IAF"]}
 #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Occupation:["Agriculture"]}
    @Islamic
    @Release
    @Part-2
    @ImplementedBy-harshita.nayak
    Examples:
      | ApplicationStage   | ProductType   | Occupation   | ApplicantType   | category | key | singleMultiple | FinancialDetailsWB     | FinancialDetails_home | FinancialDetails_home_rowNum | rowNum1 | rowNum2 |
      | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     | multiple       | financial_details.xlsx | lease_land_details    | 286                          | 286     | 297     |
    #${ProductType:["IPF"]}
    #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
      #${category:["bonds"]}
    #${Occupation:["Agriculture"]}
    @Islamic
    @Release
    @Part-2
    @ImplementedBy-harshita.nayak
    Examples:
      | ApplicationStage   | ProductType   | Occupation   | ApplicantType   | category   | key | singleMultiple | FinancialDetailsWB     | FinancialDetails_home | FinancialDetails_home_rowNum | rowNum1 | rowNum2 |
      | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> | <category> |     | multiple       | financial_details.xlsx | lease_land_details    | 286                          | 286     | 297     |
  # ${ProductType:["FAS","GL","JLG","SHG"]}
 #${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Occupation:["Agriculture"]}
    @NotImplemented
    Examples:
      | ApplicationStage   | ProductType   | Occupation   | ApplicantType   | category | key | singleMultiple | FinancialDetailsWB     | FinancialDetails_home | FinancialDetails_home_rowNum | rowNum1 | rowNum2 |
      | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     | multiple       | financial_details.xlsx | lease_land_details    | 0                            | 0       | 1       |

  Scenario Outline: ACAUTOCAS-1757:  Delete "<Var>" in Lessor Details Identification
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user open Employment Details page on the basis of "<ApplicationStage>"
    And user reads employment details excel from datatable on the basis of "<Occupation>" type
      | employment_details.xlsx | home | 3 | Agriculture |
    And user fill employment details with Occupation Type as "<Occupation>"
    And user open financial details
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_home>" and row <FinancialDetails_home_rowNum>
    When user add "<singleMultiple>" in lessor identification details
      | financial_details.xlsx | lease_land_details | <rowNum1> |
      | financial_details.xlsx | lease_land_details | <rowNum2> |
    And user delete multiple <Var> lessor identification fields
    Then delete lessor identification details successfully
    @ImplementedBy-ankit.yadav
    @Release @Part-2
    @Conventional
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Occupation:["Agriculture"]}
    Examples:
      | ApplicationStage   | ProductType   | Occupation   | ApplicantType   | category | key | singleMultiple | Var | FinancialDetailsWB     | FinancialDetails_home | FinancialDetails_home_rowNum | rowNum1 | rowNum2 |
      | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     | multiple       | 2   | financial_details.xlsx | lease_land_details    | 0                            | 0       | 1       |
#${ProductType:["IHF","IAF"]}
 #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Occupation:["Agriculture"]}
    @Islamic
    @Release
    @Part-2
    @ImplementedBy-harshita.nayak
    Examples:
      | ApplicationStage   | ProductType   | Occupation   | ApplicantType   | category | key | singleMultiple | Var | FinancialDetailsWB     | FinancialDetails_home | FinancialDetails_home_rowNum | rowNum1 | rowNum2 |
      | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     | multiple       | 2   | financial_details.xlsx | lease_land_details    | 286                          | 286     | 297     |
    #${ProductType:["IPF"]}
    #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
      #${category:["bonds"]}
    #${Occupation:["Agriculture"]}
    @Islamic
    @Release
    @Part-2
    @ImplementedBy-harshita.nayak
    Examples:
      | ApplicationStage   | ProductType   | Occupation   | ApplicantType   | category   | key | singleMultiple | Var | FinancialDetailsWB     | FinancialDetails_home | FinancialDetails_home_rowNum | rowNum1 | rowNum2 |
      | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> | <category> |     | multiple       | 2   | financial_details.xlsx | lease_land_details    | 286                          | 286     | 297     |
  # ${ProductType:["FAS","GL","JLG","SHG"]}
 #${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Occupation:["Agriculture"]}
    @NotImplemented
    Examples:
      | ApplicationStage   | ProductType   | Occupation   | ApplicantType   | category | key | singleMultiple | Var | FinancialDetailsWB     | FinancialDetails_home | FinancialDetails_home_rowNum | rowNum1 | rowNum2 |
      | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     | multiple       | 2   | financial_details.xlsx | lease_land_details    | 0                            | 0       | 1       |

  Scenario Outline: ACAUTOCAS-1758: In Selection of <Field_Name1> <Field_Name2> <Dependent_Field> is enabled in Lessor Details
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user open Employment Details page on the basis of "<ApplicationStage>"
    And user reads employment details excel from datatable on the basis of "<Occupation>" type
      | employment_details.xlsx | home | 3 | Agriculture |
    And user fill employment details with Occupation Type as "<Occupation>"
    And user open financial details
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_home>" and row <FinancialDetails_home_rowNum>
    When user selects "<Field_Name1>" "<Field_Name2>" field in lessor identification details
    Then "<Dependent_Field>" should be "<Throws_notThrows>" in lessor identification details
    @ImplementedBy-ankit.yadav
    @Release @Part-2
    @Conventional
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Occupation:["Agriculture"]}
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Occupation   | category | key | Field_Name1 | Field_Name2       | Dependent_Field | FinancialDetailsWB     | FinancialDetails_home | FinancialDetails_home_rowNum | Throws_notThrows                   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Occupation> |          |     | Lessor Name | LessorIndNovIndiv | Identification  | financial_details.xlsx | lease_land_details    | 41                           | does not throw any error           |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Occupation> |          |     | Lessor Name | LessorIndNovIndiv | Identification  | financial_details.xlsx | lease_land_details    | 42                           | throws an error with error message |
#${ProductType:["IHF","IAF"]}
 #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Occupation:["Agriculture"]}
    @Islamic
    @Release
    @Part-2
    @ImplementedBy-harshita.nayak
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Occupation   | category | key | Field_Name1 | Field_Name2       | Dependent_Field | FinancialDetailsWB     | FinancialDetails_home | FinancialDetails_home_rowNum | Throws_notThrows                   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Occupation> |          |     | Lessor Name | LessorIndNovIndiv | Identification  | financial_details.xlsx | lease_land_details    | 292                          | does not throw any error           |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Occupation> |          |     | Lessor Name | LessorIndNovIndiv | Identification  | financial_details.xlsx | lease_land_details    | 293                          | throws an error with error message |

    #${ProductType:["IPF"]}
    #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
      #${category:["bonds"]}
    #${Occupation:["Agriculture"]}
    @Islamic
    @Release
    @Part-2
    @FixedTest28
    @ImplementedBy-harshita.nayak
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Occupation   | category   | key | Field_Name1 | Field_Name2       | Dependent_Field | FinancialDetailsWB     | FinancialDetails_home | FinancialDetails_home_rowNum | Throws_notThrows                   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Occupation> | <category> |     | Lessor Name | LessorIndNovIndiv | Identification  | financial_details.xlsx | lease_land_details    | 292                          | does not throw any error           |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Occupation> | <category> |     | Lessor Name | LessorIndNovIndiv | Identification  | financial_details.xlsx | lease_land_details    | 293                          | throws an error with error message |
 # ${ProductType:["FAS","GL","JLG","SHG"]}
 #${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Occupation:["Agriculture"]}
    @NotImplemented
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Occupation   | category | key | Field_Name1 | Field_Name2       | Dependent_Field | FinancialDetailsWB     | FinancialDetails_home | FinancialDetails_home_rowNum | Throws_notThrows                   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Occupation> |          |     | Lessor Name | LessorIndNovIndiv | Identification  | financial_details.xlsx | lease_land_details    | 41                           | does not throw any error           |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Occupation> |          |     | Lessor Name | LessorIndNovIndiv | Identification  | financial_details.xlsx | lease_land_details    | 42                           | throws an error with error message |

  Scenario Outline: ACAUTOCAS-1759:  In Selection of <Type_of_Identification> with <Issue_Date> issue date with non Mandatory in Lessor Details Identification
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user open Employment Details page on the basis of "<ApplicationStage>"
    And user reads employment details excel from datatable on the basis of "<Occupation>" type
      | employment_details.xlsx | home | 3 | Agriculture |
    And user fill employment details with Occupation Type as "<Occupation>"
    And user open financial details
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_home>" and row <FinancialDetails_home_rowNum>
    When user selects "<Type_of_Identification>" details with "<Issue_Date>" in lessor identification details
    Then issue date "<Throws_notThrows>" in lessor identification details
    @ImplementedBy-ankit.yadav
    @Release @Part-2
    @Conventional
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Occupation:["Agriculture"]}
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Occupation   | category | key | Type_of_Identification | Issue_Date             | Throws_notThrows                   | FinancialDetailsWB     | FinancialDetails_home | FinancialDetails_home_rowNum |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Occupation> |          |     | Aadhar Number          | valid                  | does not throw any error           | financial_details.xlsx | lease_land_details    | 43                           |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Occupation> |          |     | Aadhar Number          | more than current date | throws an error with error message | financial_details.xlsx | lease_land_details    | 44                           |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Occupation> |          |     | KYC                    | valid                  | does not throw any error           | financial_details.xlsx | lease_land_details    | 45                           |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Occupation> |          |     | KYC                    | more than current date | throws an error with error message | financial_details.xlsx | lease_land_details    | 46                           |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Occupation> |          |     | Passport               | valid                  | does not throw any error           | financial_details.xlsx | lease_land_details    | 47                           |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Occupation> |          |     | Passport               | more than current date | throws an error with error message | financial_details.xlsx | lease_land_details    | 48                           |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Occupation> |          |     | Pan                    | valid                  | does not throw any error           | financial_details.xlsx | lease_land_details    | 49                           |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Occupation> |          |     | Pan                    | more than current date | throws an error with error message | financial_details.xlsx | lease_land_details    | 50                           |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Occupation> |          |     | UID token              | valid                  | does not throw any error           | financial_details.xlsx | lease_land_details    | 51                           |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Occupation> |          |     | UID token              | more than current date | throws an error with error message | financial_details.xlsx | lease_land_details    | 52                           |

#${ProductType:["IHF","IAF"]}
 #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Occupation:["Agriculture"]}
    @Islamic
    @Release
    @Part-2
    @ImplementedBy-harshita.nayak
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Occupation   | category | key | Type_of_Identification    | Issue_Date             | Throws_notThrows                   | FinancialDetailsWB     | FinancialDetails_home | FinancialDetails_home_rowNum |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Occupation> |          |     | Emirates ID               | valid                  | does not throw any error           | financial_details.xlsx | lease_land_details    | 295                          |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Occupation> |          |     | Emirates ID               | more than current date | throws an error with error message | financial_details.xlsx | lease_land_details    | 296                          |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Occupation> |          |     | Trade License No.         | valid                  | does not throw any error           | financial_details.xlsx | lease_land_details    | 297                          |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Occupation> |          |     | Trade License No.         | more than current date | throws an error with error message | financial_details.xlsx | lease_land_details    | 298                          |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Occupation> |          |     | TIN_No                    | valid                  | does not throw any error           | financial_details.xlsx | lease_land_details    | 299                          |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Occupation> |          |     | TIN_No                    | more than current date | throws an error with error message | financial_details.xlsx | lease_land_details    | 300                          |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Occupation> |          |     | Shop/Establishment Number | valid                  | does not throw any error           | financial_details.xlsx | lease_land_details    | 301                          |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Occupation> |          |     | Shop/Establishment Number | more than current date | throws an error with error message | financial_details.xlsx | lease_land_details    | 302                          |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Occupation> |          |     | UDYAM                     | valid                  | does not throw any error           | financial_details.xlsx | lease_land_details    | 303                          |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Occupation> |          |     | UDYAM                     | more than current date | throws an error with error message | financial_details.xlsx | lease_land_details    | 304                          |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Occupation> |          |     | UDYOG                     | valid                  | does not throw any error           | financial_details.xlsx | lease_land_details    | 305                          |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Occupation> |          |     | UDYOG                     | more than current date | throws an error with error message | financial_details.xlsx | lease_land_details    | 306                          |

   #${ProductType:["IHF","IAF"]}
 #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Occupation:["Agriculture"]}
    @Islamic
    @Release
    @Part-2
    @ImplementedBy-harshita.nayak
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Occupation   | category | key | Type_of_Identification    | Issue_Date             | Throws_notThrows                   | FinancialDetailsWB     | FinancialDetails_home | FinancialDetails_home_rowNum |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Occupation> |          |     | Emirates ID               | valid                  | does not throw any error           | financial_details.xlsx | lease_land_details    | 295                          |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Occupation> |          |     | Emirates ID               | more than current date | throws an error with error message | financial_details.xlsx | lease_land_details    | 296                          |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Occupation> |          |     | Trade License No.         | valid                  | does not throw any error           | financial_details.xlsx | lease_land_details    | 297                          |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Occupation> |          |     | Trade License No.         | more than current date | throws an error with error message | financial_details.xlsx | lease_land_details    | 298                          |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Occupation> |          |     | TIN_No                    | valid                  | does not throw any error           | financial_details.xlsx | lease_land_details    | 299                          |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Occupation> |          |     | TIN_No                    | more than current date | throws an error with error message | financial_details.xlsx | lease_land_details    | 300                          |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Occupation> |          |     | Shop/Establishment Number | valid                  | does not throw any error           | financial_details.xlsx | lease_land_details    | 301                          |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Occupation> |          |     | Shop/Establishment Number | more than current date | throws an error with error message | financial_details.xlsx | lease_land_details    | 302                          |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Occupation> |          |     | UDYAM                     | valid                  | does not throw any error           | financial_details.xlsx | lease_land_details    | 303                          |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Occupation> |          |     | UDYAM                     | more than current date | throws an error with error message | financial_details.xlsx | lease_land_details    | 304                          |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Occupation> |          |     | UDYOG                     | valid                  | does not throw any error           | financial_details.xlsx | lease_land_details    | 305                          |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Occupation> |          |     | UDYOG                     | more than current date | throws an error with error message | financial_details.xlsx | lease_land_details    | 306                          |

    #${ProductType:["IPF"]}
    #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
      #${category:["bonds"]}
    #${Occupation:["Agriculture"]}
    @FixedJsClick
    @Islamic
    @Release
    @Part-2
    @ImplementedBy-harshita.nayak
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Occupation   | category   | key | Type_of_Identification    | Issue_Date             | Throws_notThrows                   | FinancialDetailsWB     | FinancialDetails_home | FinancialDetails_home_rowNum |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Occupation> | <category> |     | Emirates ID               | valid                  | does not throw any error           | financial_details.xlsx | lease_land_details    | 295                          |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Occupation> | <category> |     | Emirates ID               | more than current date | throws an error with error message | financial_details.xlsx | lease_land_details    | 296                          |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Occupation> | <category> |     | Trade License No.         | valid                  | does not throw any error           | financial_details.xlsx | lease_land_details    | 297                          |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Occupation> | <category> |     | Trade License No.         | more than current date | throws an error with error message | financial_details.xlsx | lease_land_details    | 298                          |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Occupation> | <category> |     | TIN_No                    | valid                  | does not throw any error           | financial_details.xlsx | lease_land_details    | 299                          |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Occupation> | <category> |     | TIN_No                    | more than current date | throws an error with error message | financial_details.xlsx | lease_land_details    | 300                          |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Occupation> | <category> |     | Shop/Establishment Number | valid                  | does not throw any error           | financial_details.xlsx | lease_land_details    | 301                          |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Occupation> | <category> |     | Shop/Establishment Number | more than current date | throws an error with error message | financial_details.xlsx | lease_land_details    | 302                          |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Occupation> | <category> |     | UDYAM                     | valid                  | does not throw any error           | financial_details.xlsx | lease_land_details    | 303                          |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Occupation> | <category> |     | UDYAM                     | more than current date | throws an error with error message | financial_details.xlsx | lease_land_details    | 304                          |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Occupation> | <category> |     | UDYOG                     | valid                  | does not throw any error           | financial_details.xlsx | lease_land_details    | 305                          |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Occupation> | <category> |     | UDYOG                     | more than current date | throws an error with error message | financial_details.xlsx | lease_land_details    | 306                          |

     # ${ProductType:["FAS","GL","JLG","SHG"]}
 #${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Occupation:["Agriculture"]}
    @NotImplemented
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Occupation   | category | key | Type_of_Identification | Issue_Date             | Throws_notThrows                   | FinancialDetailsWB     | FinancialDetails_home | FinancialDetails_home_rowNum |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Occupation> |          |     | Aadhar Number          | valid                  | does not throw any error           | financial_details.xlsx | lease_land_details    | 43                           |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Occupation> |          |     | Aadhar Number          | more than current date | throws an error with error message | financial_details.xlsx | lease_land_details    | 44                           |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Occupation> |          |     | KYC                    | valid                  | does not throw any error           | financial_details.xlsx | lease_land_details    | 45                           |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Occupation> |          |     | KYC                    | more than current date | throws an error with error message | financial_details.xlsx | lease_land_details    | 46                           |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Occupation> |          |     | Passport               | valid                  | does not throw any error           | financial_details.xlsx | lease_land_details    | 47                           |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Occupation> |          |     | Passport               | more than current date | throws an error with error message | financial_details.xlsx | lease_land_details    | 48                           |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Occupation> |          |     | Pan                    | valid                  | does not throw any error           | financial_details.xlsx | lease_land_details    | 49                           |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Occupation> |          |     | Pan                    | more than current date | throws an error with error message | financial_details.xlsx | lease_land_details    | 50                           |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Occupation> |          |     | UID token              | valid                  | does not throw any error           | financial_details.xlsx | lease_land_details    | 51                           |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Occupation> |          |     | UID token              | more than current date | throws an error with error message | financial_details.xlsx | lease_land_details    | 52                           |

  Scenario Outline: ACAUTOCAS-1760:  In Selection of <Type_of_Identification> with <Expiry_Date> expiry date with non Mandatory in Lessor Details Identification
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user open Employment Details page on the basis of "<ApplicationStage>"
    And user reads employment details excel from datatable on the basis of "<Occupation>" type
      | employment_details.xlsx | home | 3 | Agriculture |
    And user fill employment details with Occupation Type as "<Occupation>"
    And user open financial details
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_home>" and row <FinancialDetails_home_rowNum>
    When user selects "<Type_of_Identification>" details with "<Expiry_Date>" in lessor identification details
    Then expiry date "<Throws_notThrows>" in lessor identification details
    @ImplementedBy-ankit.yadav
    @Release @Part-2
    @Conventional
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Occupation:["Agriculture"]}
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Occupation   | category | key | Type_of_Identification | Expiry_Date            | Throws_notThrows                   | FinancialDetailsWB     | FinancialDetails_home | FinancialDetails_home_rowNum |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Occupation> |          |     | Aadhar No.             | valid                  | does not throw any error           | financial_details.xlsx | lease_land_details    | 53                           |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Occupation> |          |     | Aadhar No.             | less than current date | throws an error with error message | financial_details.xlsx | lease_land_details    | 54                           |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Occupation> |          |     | KYC                    | valid                  | does not throw any error           | financial_details.xlsx | lease_land_details    | 55                           |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Occupation> |          |     | KYC                    | less than current date | throws an error with error message | financial_details.xlsx | lease_land_details    | 56                           |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Occupation> |          |     | Passport               | valid                  | does not throw any error           | financial_details.xlsx | lease_land_details    | 57                           |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Occupation> |          |     | Passport               | less than current date | throws an error with error message | financial_details.xlsx | lease_land_details    | 58                           |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Occupation> |          |     | Pan                    | valid                  | does not throw any error           | financial_details.xlsx | lease_land_details    | 59                           |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Occupation> |          |     | Pan                    | less than current date | throws an error with error message | financial_details.xlsx | lease_land_details    | 60                           |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Occupation> |          |     | UID token              | valid                  | does not throw any error           | financial_details.xlsx | lease_land_details    | 61                           |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Occupation> |          |     | UID token              | less than current date | throws an error with error message | financial_details.xlsx | lease_land_details    | 62                           |
 #${ProductType:["IHF","IAF"]}
 #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Occupation:["Agriculture"]}
    @Islamic
    @Release
    @Part-2
    @ImplementedBy-harshita.nayak
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Occupation   | category | key | Type_of_Identification    | Expiry_Date            | Throws_notThrows                   | FinancialDetailsWB     | FinancialDetails_home | FinancialDetails_home_rowNum |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Occupation> |          |     | Emirates ID               | valid                  | does not throw any error           | financial_details.xlsx | lease_land_details    | 347                          |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Occupation> |          |     | Emirates ID               | less than current date | throws an error with error message | financial_details.xlsx | lease_land_details    | 348                          |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Occupation> |          |     | Trade License No.         | valid                  | does not throw any error           | financial_details.xlsx | lease_land_details    | 349                          |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Occupation> |          |     | Trade License No.         | less than current date | throws an error with error message | financial_details.xlsx | lease_land_details    | 350                          |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Occupation> |          |     | TIN_No                    | valid                  | does not throw any error           | financial_details.xlsx | lease_land_details    | 351                          |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Occupation> |          |     | TIN_No                    | less than current date | throws an error with error message | financial_details.xlsx | lease_land_details    | 352                          |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Occupation> |          |     | Shop/Establishment Number | valid                  | does not throw any error           | financial_details.xlsx | lease_land_details    | 353                          |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Occupation> |          |     | Shop/Establishment Number | less than current date | throws an error with error message | financial_details.xlsx | lease_land_details    | 354                          |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Occupation> |          |     | UDYAM                     | valid                  | does not throw any error           | financial_details.xlsx | lease_land_details    | 355                          |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Occupation> |          |     | UDYAM                     | more than current date | throws an error with error message | financial_details.xlsx | lease_land_details    | 356                          |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Occupation> |          |     | UDYOG                     | valid                  | does not throw any error           | financial_details.xlsx | lease_land_details    | 357                          |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Occupation> |          |     | UDYOG                     | less than current date | throws an error with error message | financial_details.xlsx | lease_land_details    | 358                          |

      #${ProductType:["IPF"]}
    #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
      #${category:["bonds"]}
    #${Occupation:["Agriculture"]}
    @FixedJsClick
    @Islamic
    @Release
    @Part-2
    @ImplementedBy-harshita.nayak
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Occupation   | category   | key | Type_of_Identification    | Expiry_Date            | Throws_notThrows                   | FinancialDetailsWB     | FinancialDetails_home | FinancialDetails_home_rowNum |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Occupation> | <category> |     | Emirates ID               | valid                  | does not throw any error           | financial_details.xlsx | lease_land_details    | 347                          |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Occupation> | <category> |     | Emirates ID               | less than current date | throws an error with error message | financial_details.xlsx | lease_land_details    | 348                          |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Occupation> | <category> |     | Trade License No.         | valid                  | does not throw any error           | financial_details.xlsx | lease_land_details    | 349                          |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Occupation> | <category> |     | Trade License No.         | less than current date | throws an error with error message | financial_details.xlsx | lease_land_details    | 350                          |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Occupation> | <category> |     | TIN_No                    | valid                  | does not throw any error           | financial_details.xlsx | lease_land_details    | 351                          |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Occupation> | <category> |     | TIN_No                    | less than current date | throws an error with error message | financial_details.xlsx | lease_land_details    | 352                          |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Occupation> | <category> |     | Shop/Establishment Number | valid                  | does not throw any error           | financial_details.xlsx | lease_land_details    | 353                          |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Occupation> | <category> |     | Shop/Establishment Number | less than current date | throws an error with error message | financial_details.xlsx | lease_land_details    | 354                          |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Occupation> | <category> |     | UDYAM                     | valid                  | does not throw any error           | financial_details.xlsx | lease_land_details    | 355                          |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Occupation> | <category> |     | UDYAM                     | more than current date | throws an error with error message | financial_details.xlsx | lease_land_details    | 356                          |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Occupation> | <category> |     | UDYOG                     | valid                  | does not throw any error           | financial_details.xlsx | lease_land_details    | 357                          |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Occupation> | <category> |     | UDYOG                     | less than current date | throws an error with error message | financial_details.xlsx | lease_land_details    | 358                          |

     # ${ProductType:["FAS","GL","JLG","SHG"]}
 #${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Occupation:["Agriculture"]}
    @NotImplemented
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Occupation   | category | key | Type_of_Identification | Expiry_Date            | Throws_notThrows                   | FinancialDetailsWB     | FinancialDetails_home | FinancialDetails_home_rowNum |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Occupation> |          |     | Aadhar No.             | valid                  | does not throw any error           | financial_details.xlsx | lease_land_details    | 53                           |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Occupation> |          |     | Aadhar No.             | less than current date | throws an error with error message | financial_details.xlsx | lease_land_details    | 54                           |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Occupation> |          |     | KYC                    | valid                  | does not throw any error           | financial_details.xlsx | lease_land_details    | 55                           |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Occupation> |          |     | KYC                    | less than current date | throws an error with error message | financial_details.xlsx | lease_land_details    | 56                           |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Occupation> |          |     | Passport               | valid                  | does not throw any error           | financial_details.xlsx | lease_land_details    | 57                           |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Occupation> |          |     | Passport               | less than current date | throws an error with error message | financial_details.xlsx | lease_land_details    | 58                           |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Occupation> |          |     | Pan                    | valid                  | does not throw any error           | financial_details.xlsx | lease_land_details    | 59                           |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Occupation> |          |     | Pan                    | less than current date | throws an error with error message | financial_details.xlsx | lease_land_details    | 60                           |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Occupation> |          |     | UID token              | valid                  | does not throw any error           | financial_details.xlsx | lease_land_details    | 61                           |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Occupation> |          |     | UID token              | less than current date | throws an error with error message | financial_details.xlsx | lease_land_details    | 62                           |


  Scenario Outline: ACAUTOCAS-1761:  In selection of <Field_Name> <Validity_Reason> with non Mandatory in Lessor Details Identification
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user open Employment Details page on the basis of "<ApplicationStage>"
    And user reads employment details excel from datatable on the basis of "<Occupation>" type
      | employment_details.xlsx | home | 3 | Agriculture |
    And user fill employment details with Occupation Type as "<Occupation>"
    And user open financial details
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_home>" and row <FinancialDetails_home_rowNum>
    When user enters "<Field_Name>" "<Validity_Reason>" in lessor identification details
    Then identification number "<Throws_notThrows>" in lessor identification details
    @ImplementedBy-ankit.yadav
    @Release @Part-2
    @Conventional
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Occupation:["Agriculture"]}
    Examples:
      | ApplicationStage   | ProductType   | Occupation   | ApplicantType   | category | key | Field_Name  | Validity_Reason           | Throws_notThrows                   | FinancialDetailsWB     | FinancialDetails_home | FinancialDetails_home_rowNum |
      | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     | Aadhaar No. | with characters and digit | throws an error with error message | financial_details.xlsx | lease_land_details    | 63                           |
      | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     | Aadhaar No. | with only characters      | throws an error with error message | financial_details.xlsx | lease_land_details    | 64                           |
      | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     | Pan         | with characters and digit | throws an error with error message | financial_details.xlsx | lease_land_details    | 65                           |
      | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     | Pan         | with characters           | throws an error with error message | financial_details.xlsx | lease_land_details    | 66                           |
      | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     | passport    | with characters and digit | throws an error with error message | financial_details.xlsx | lease_land_details    | 67                           |
      | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     | passport    | with characters           | throws an error with error message | financial_details.xlsx | lease_land_details    | 68                           |
      | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     | KYC         | with characters           | throws an error with error message | financial_details.xlsx | lease_land_details    | 69                           |
      | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     | UID token   | with characters           | throws an error with error message | financial_details.xlsx | lease_land_details    | 70                           |
      | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     | Aadhaar No. | valid value               | does not throw any error           | financial_details.xlsx | lease_land_details    | 71                           |
      | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     | Aadhaar No. | with less digit           | throws an error with error message | financial_details.xlsx | lease_land_details    | 72                           |
      | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     | Aadhaar No. | with special characters   | throws an error with error message | financial_details.xlsx | lease_land_details    | 73                           |
      | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     | Pan         | valid value               | does not throw any error           | financial_details.xlsx | lease_land_details    | 74                           |
      | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     | Pan         | with less digit           | throws an error with error message | financial_details.xlsx | lease_land_details    | 75                           |
      | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     | Pan         | with special characters   | throws an error with error message | financial_details.xlsx | lease_land_details    | 76                           |
      | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     | passport    | valid value               | does not throw any error           | financial_details.xlsx | lease_land_details    | 77                           |
      | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     | passport    | with less digit           | throws an error with error message | financial_details.xlsx | lease_land_details    | 78                           |
      | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     | Passport    | with special characters   | throws an error with error message | financial_details.xlsx | lease_land_details    | 79                           |
      | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     | KYC         | valid value               | does not throw any error           | financial_details.xlsx | lease_land_details    | 80                           |
      | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     | KYC         | with less digit           | throws an error with error message | financial_details.xlsx | lease_land_details    | 81                           |
      | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     | KYC         | with characters and digit | does not throw any error           | financial_details.xlsx | lease_land_details    | 82                           |
      | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     | KYC         | with special characters   | throws an error with error message | financial_details.xlsx | lease_land_details    | 83                           |
      | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     | UID token   | valid value               | does not throw any error           | financial_details.xlsx | lease_land_details    | 84                           |
      | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     | UID token   | with less digit           | throws an error with error message | financial_details.xlsx | lease_land_details    | 85                           |
      | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     | UID token   | with characters and digit | does not throw any error           | financial_details.xlsx | lease_land_details    | 86                           |
      | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     | UID token   | with special characters   | throws an error with error message | financial_details.xlsx | lease_land_details    | 87                           |
  #${ProductType:["IHF","IAF"]}
  #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Occupation:["Agriculture"]}
    @Islamic
    @Release
    @Part-2
    @ImplementedBy-harshita.nayak
    Examples:
      | ApplicationStage   | ProductType   | Occupation   | ApplicantType   | category | key | Field_Name                | Validity_Reason     | Throws_notThrows                   | FinancialDetailsWB     | FinancialDetails_home | FinancialDetails_home_rowNum |
      | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     | TIN_No                    | 10 digits           | does not throw any error           | financial_details.xlsx | lease_land_details    | 377                          |
      | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     | TIN_No                    | 11 digits           | does not throw any error           | financial_details.xlsx | lease_land_details    | 378                          |
      | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     | TIN_No                    | more than 11 digits | throws an error with error message | financial_details.xlsx | lease_land_details    | 379                          |
      | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     | TIN_No                    | alphaNumeric values | throws an error with error message | financial_details.xlsx | lease_land_details    | 380                          |
      | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     | TIN_No                    | special characters  | throws an error with error message | financial_details.xlsx | lease_land_details    | 381                          |
      | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     | TIN_No                    | less tha 10 digits  | throws an error with error message | financial_details.xlsx | lease_land_details    | 382                          |
      | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     | Shop/Establishment Number | 12 digits           | does not throw any error           | financial_details.xlsx | lease_land_details    | 383                          |
      | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     | Shop/Establishment Number | alphaNumeric values | throws an error with error message | financial_details.xlsx | lease_land_details    | 384                          |
      | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     | Shop/Establishment Number | special characters  | throws an error with error message | financial_details.xlsx | lease_land_details    | 385                          |
      | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     | Shop/Establishment Number | less tha 12 digits  | throws an error with error message | financial_details.xlsx | lease_land_details    | 386                          |
      | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     | UDYAM                     | valid value         | does not throw any error           | financial_details.xlsx | lease_land_details    | 387                          |
      | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     | UDYAM                     | alphaNumeric values | throws an error with error message | financial_details.xlsx | lease_land_details    | 388                          |
      | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     | UDYAM                     | special characters  | throws an error with error message | financial_details.xlsx | lease_land_details    | 389                          |
      | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     | UDYOG                     | valid value         | does not throw any error           | financial_details.xlsx | lease_land_details    | 390                          |
      | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     | UDYOG                     | alphaNumeric values | throws an error with error message | financial_details.xlsx | lease_land_details    | 391                          |
      | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     | UDYOG                     | special characters  | throws an error with error message | financial_details.xlsx | lease_land_details    | 392                          |
      | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     | UDYOG                     | only digits         | throws an error with error message | financial_details.xlsx | lease_land_details    | 393                          |
      | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     | Emirates ID               | valid value         | does not throw any error           | financial_details.xlsx | lease_land_details    | 394                          |
      | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     | Trade License No.         | valid value         | does not throw any error           | financial_details.xlsx | lease_land_details    | 395                          |

#${ProductType:["IPF"]}
    #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
      #${category:["bonds"]}
    #${Occupation:["Agriculture"]}
  @FixedJsClick2
    @Islamic
    @Release
    @Part-2
    @FixedTest28
    @AppInfoFixed5
    @ImplementedBy-harshita.nayak
    Examples:
      | ApplicationStage   | ProductType   | Occupation   | ApplicantType   | category   | key | Field_Name                | Validity_Reason     | Throws_notThrows                   | FinancialDetailsWB     | FinancialDetails_home | FinancialDetails_home_rowNum |
      | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> | <category> |     | TIN_No                    | 10 digits           | does not throw any error           | financial_details.xlsx | lease_land_details    | 377                          |
      | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> | <category> |     | TIN_No                    | 11 digits           | does not throw any error           | financial_details.xlsx | lease_land_details    | 378                          |
      | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> | <category> |     | TIN_No                    | more than 11 digits | throws an error with error message | financial_details.xlsx | lease_land_details    | 379                          |
      | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> | <category> |     | TIN_No                    | alphaNumeric values | throws an error with error message | financial_details.xlsx | lease_land_details    | 380                          |
      | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> | <category> |     | TIN_No                    | special characters  | throws an error with error message | financial_details.xlsx | lease_land_details    | 381                          |
      | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> | <category> |     | TIN_No                    | less tha 10 digits  | throws an error with error message | financial_details.xlsx | lease_land_details    | 382                          |
      | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> | <category> |     | Shop/Establishment Number | 12 digits           | does not throw any error           | financial_details.xlsx | lease_land_details    | 383                          |
      | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> | <category> |     | Shop/Establishment Number | alphaNumeric values | throws an error with error message | financial_details.xlsx | lease_land_details    | 384                          |
      | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> | <category> |     | Shop/Establishment Number | special characters  | throws an error with error message | financial_details.xlsx | lease_land_details    | 385                          |
      | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> | <category> |     | Shop/Establishment Number | less tha 12 digits  | throws an error with error message | financial_details.xlsx | lease_land_details    | 386                          |
      | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> | <category> |     | UDYAM                     | valid value         | does not throw any error           | financial_details.xlsx | lease_land_details    | 387                          |
      | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> | <category> |     | UDYAM                     | alphaNumeric values | throws an error with error message | financial_details.xlsx | lease_land_details    | 388                          |
      | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> | <category> |     | UDYAM                     | special characters  | throws an error with error message | financial_details.xlsx | lease_land_details    | 389                          |
      | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> | <category> |     | UDYOG                     | valid value         | does not throw any error           | financial_details.xlsx | lease_land_details    | 390                          |
      | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> | <category> |     | UDYOG                     | alphaNumeric values | throws an error with error message | financial_details.xlsx | lease_land_details    | 391                          |
      | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> | <category> |     | UDYOG                     | special characters  | throws an error with error message | financial_details.xlsx | lease_land_details    | 392                          |
      | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> | <category> |     | UDYOG                     | only digits         | throws an error with error message | financial_details.xlsx | lease_land_details    | 393                          |
      | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> | <category> |     | Emirates ID               | valid value         | does not throw any error           | financial_details.xlsx | lease_land_details    | 394                          |
      | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> | <category> |     | Trade License No.         | valid value         | does not throw any error           | financial_details.xlsx | lease_land_details    | 395                          |

 # ${ProductType:["FAS","GL","JLG","SHG"]}
 #${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Occupation:["Agriculture"]}
    @NotImplemented
    Examples:
      | ApplicationStage   | ProductType   | Occupation   | ApplicantType   | category | key | Field_Name  | Validity_Reason           | Throws_notThrows                   | FinancialDetailsWB     | FinancialDetails_home | FinancialDetails_home_rowNum |
      | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     | Aadhaar No. | with characters and digit | throws an error with error message | financial_details.xlsx | lease_land_details    | 63                           |
      | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     | Aadhaar No. | with only characters      | throws an error with error message | financial_details.xlsx | lease_land_details    | 64                           |
      | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     | Pan         | with characters and digit | throws an error with error message | financial_details.xlsx | lease_land_details    | 65                           |
      | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     | Pan         | with characters           | throws an error with error message | financial_details.xlsx | lease_land_details    | 66                           |
      | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     | passport    | with characters and digit | throws an error with error message | financial_details.xlsx | lease_land_details    | 67                           |
      | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     | passport    | with characters           | throws an error with error message | financial_details.xlsx | lease_land_details    | 68                           |
      | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     | KYC         | with characters           | throws an error with error message | financial_details.xlsx | lease_land_details    | 69                           |
      | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     | UID token   | with characters           | throws an error with error message | financial_details.xlsx | lease_land_details    | 70                           |
      | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     | Aadhaar No. | valid value               | does not throw any error           | financial_details.xlsx | lease_land_details    | 71                           |
      | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     | Aadhaar No. | with less digit           | throws an error with error message | financial_details.xlsx | lease_land_details    | 72                           |
      | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     | Aadhaar No. | with special characters   | throws an error with error message | financial_details.xlsx | lease_land_details    | 73                           |
      | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     | Pan         | valid value               | does not throw any error           | financial_details.xlsx | lease_land_details    | 74                           |
      | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     | Pan         | with less digit           | throws an error with error message | financial_details.xlsx | lease_land_details    | 75                           |
      | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     | Pan         | with special characters   | throws an error with error message | financial_details.xlsx | lease_land_details    | 76                           |
      | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     | passport    | valid value               | does not throw any error           | financial_details.xlsx | lease_land_details    | 77                           |
      | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     | passport    | with less digit           | throws an error with error message | financial_details.xlsx | lease_land_details    | 78                           |
      | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     | Passport    | with special characters   | throws an error with error message | financial_details.xlsx | lease_land_details    | 79                           |
      | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     | KYC         | valid value               | does not throw any error           | financial_details.xlsx | lease_land_details    | 80                           |
      | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     | KYC         | with less digit           | throws an error with error message | financial_details.xlsx | lease_land_details    | 81                           |
      | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     | KYC         | with characters and digit | does not throw any error           | financial_details.xlsx | lease_land_details    | 82                           |
      | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     | KYC         | with special characters   | throws an error with error message | financial_details.xlsx | lease_land_details    | 83                           |
      | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     | UID token   | valid value               | does not throw any error           | financial_details.xlsx | lease_land_details    | 84                           |
      | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     | UID token   | with less digit           | throws an error with error message | financial_details.xlsx | lease_land_details    | 85                           |
      | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     | UID token   | with characters and digit | does not throw any error           | financial_details.xlsx | lease_land_details    | 86                           |
      | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     | UID token   | with special characters   | throws an error with error message | financial_details.xlsx | lease_land_details    | 87                           |

  Scenario Outline: ACAUTOCAS-1762:  Saving Lessor Details Identification without <Field_Name> in Lessor Land Details
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user open Employment Details page on the basis of "<ApplicationStage>"
    And user reads employment details excel from datatable on the basis of "<Occupation>" type
      | employment_details.xlsx | home | 3 | Agriculture |
    And user fill employment details with Occupation Type as "<Occupation>"
    And user open financial details
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_home>" and row <FinancialDetails_home_rowNum>
    When user fills identification details without "<Field_Name>" in lessor identification details
    Then lessor identification details is not saved without "<Field_Name>" showing proper message
    @ImplementedBy-ankit.yadav
    @Release @Part-2
    @Conventional
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Occupation:["Agriculture"]}
    Examples:
      | ApplicationStage   | Occupation   | ApplicantType   | category | key | ProductType   | Field_Name          | FinancialDetailsWB     | FinancialDetails_home | FinancialDetails_home_rowNum |
      | <ApplicationStage> | <Occupation> | <ApplicantType> |          |     | <ProductType> | Identification Type | financial_details.xlsx | lease_land_details    | 88                           |
      | <ApplicationStage> | <Occupation> | <ApplicantType> |          |     | <ProductType> | Identification No.  | financial_details.xlsx | lease_land_details    | 89                           |
      | <ApplicationStage> | <Occupation> | <ApplicantType> |          |     | <ProductType> | Country of Issue    | financial_details.xlsx | lease_land_details    | 90                           |

#${ProductType:["IHF","IAF"]}
 #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Occupation:["Agriculture"]}
    @Islamic
    @Release
    @Part-2
    @ImplementedBy-harshita.nayak
    Examples:
      | ApplicationStage   | Occupation   | ApplicantType   | category | key | ProductType   | Field_Name          | FinancialDetailsWB     | FinancialDetails_home | FinancialDetails_home_rowNum |
      | <ApplicationStage> | <Occupation> | <ApplicantType> |          |     | <ProductType> | Identification Type | financial_details.xlsx | lease_land_details    | 332                          |
      | <ApplicationStage> | <Occupation> | <ApplicantType> |          |     | <ProductType> | Identification No.  | financial_details.xlsx | lease_land_details    | 333                          |
      | <ApplicationStage> | <Occupation> | <ApplicantType> |          |     | <ProductType> | Country of Issue    | financial_details.xlsx | lease_land_details    | 334                          |
#${ProductType:["IPF"]}
    #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
      #${category:["bonds"]}
    #${Occupation:["Agriculture"]}
    @FixedJsClick2
    @Islamic
    @Release
    @Part-2
    @AppInfoFixed5
    @ImplementedBy-harshita.nayak
    Examples:
      | ApplicationStage   | Occupation   | ApplicantType   | category   | key | ProductType   | Field_Name          | FinancialDetailsWB     | FinancialDetails_home | FinancialDetails_home_rowNum |
      | <ApplicationStage> | <Occupation> | <ApplicantType> | <category> |     | <ProductType> | Identification Type | financial_details.xlsx | lease_land_details    | 332                          |
      | <ApplicationStage> | <Occupation> | <ApplicantType> | <category> |     | <ProductType> | Identification No.  | financial_details.xlsx | lease_land_details    | 333                          |
      | <ApplicationStage> | <Occupation> | <ApplicantType> | <category> |     | <ProductType> | Country of Issue    | financial_details.xlsx | lease_land_details    | 334                          |
 # ${ProductType:["FAS","GL","JLG","SHG"]}
 #${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Occupation:["Agriculture"]}
    @NotImplemented
    Examples:
      | ApplicationStage   | Occupation   | ApplicantType   | category | key | ProductType   | Field_Name          | FinancialDetailsWB     | FinancialDetails_home | FinancialDetails_home_rowNum |
      | <ApplicationStage> | <Occupation> | <ApplicantType> |          |     | <ProductType> | Identification Type | financial_details.xlsx | lease_land_details    | 88                           |
      | <ApplicationStage> | <Occupation> | <ApplicantType> |          |     | <ProductType> | Identification No.  | financial_details.xlsx | lease_land_details    | 89                           |
      | <ApplicationStage> | <Occupation> | <ApplicantType> |          |     | <ProductType> | Country of Issue    | financial_details.xlsx | lease_land_details    | 90                           |


  Scenario Outline: ACAUTOCAS-1763:  In Selection of <Type_of_Identification> with <Issue_Date> and <Expiry_Date> in Lessor Details Identification
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user open Employment Details page on the basis of "<ApplicationStage>"
    And user reads employment details excel from datatable on the basis of "<Occupation>" type
      | employment_details.xlsx | home | 3 | Agriculture |
    And user fill employment details with Occupation Type as "<Occupation>"
    And user open financial details
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_home>" and row <FinancialDetails_home_rowNum>
    When user selects "<Type_of_Identification>" details with "<Issue_Date>" and "<Expiry_Date>" in lessor identification details
    Then application "<Throws_notThrows>" in lessor identification details
    @ImplementedBy-ankit.yadav
    @Release @Part-2
    @Conventional
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Occupation:["Agriculture"]}
    Examples:
      | ApplicationStage   | ProductType   | Occupation   | ApplicantType   | category | key | Issue_Date                        | Expiry_Date                                             | Type_of_Identification | Throws_notThrows                   | FinancialDetailsWB     | FinancialDetails_home | FinancialDetails_home_rowNum |
      | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     | issue date less than current date | valid expiry date                                       | Aadhar No.             | does not throw any error           | financial_details.xlsx | lease_land_details    | 91                           |
      | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     | valid issue date                  | expiry date more than current date                      | Aadhar No.             | does not throw any error           | financial_details.xlsx | lease_land_details    | 92                           |
      | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     | valid issue date                  | expiry date more than issue date less than current date | Aadhar No.             | throws an error with error message | financial_details.xlsx | lease_land_details    | 93                           |
      | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     | issue date less than current date | valid expiry date                                       | KYC                    | does not throw any error           | financial_details.xlsx | lease_land_details    | 94                           |
      | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     | valid issue date                  | expiry date more than current date                      | KYC                    | does not throw any error           | financial_details.xlsx | lease_land_details    | 95                           |
      | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     | valid issue date                  | expiry date more than issue date less than current date | KYC                    | throws an error with error message | financial_details.xlsx | lease_land_details    | 96                           |
      | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     | issue date less than current date | valid expiry date                                       | Pan                    | does not throw any error           | financial_details.xlsx | lease_land_details    | 97                           |
      | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     | valid issue date                  | expiry date more than current date                      | Pan                    | does not throw any error           | financial_details.xlsx | lease_land_details    | 98                           |
      | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     | valid issue date                  | expiry date more than issue date less than current date | Pan                    | throws an error with error message | financial_details.xlsx | lease_land_details    | 99                           |
      | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     | issue date less than current date | valid expiry date                                       | Passport               | does not throw any error           | financial_details.xlsx | lease_land_details    | 100                          |
      | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     | valid issue date                  | expiry date more than current date                      | Passport               | does not throw any error           | financial_details.xlsx | lease_land_details    | 101                          |
      | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     | valid issue date                  | expiry date more than issue date less than current date | Passport               | throws an error with error message | financial_details.xlsx | lease_land_details    | 102                          |
      | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     | issue date less than current date | valid expiry date                                       | UID Token              | does not throw any error           | financial_details.xlsx | lease_land_details    | 103                          |
      | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     | valid issue date                  | expiry date more than current date                      | UID Token              | does not throw any error           | financial_details.xlsx | lease_land_details    | 104                          |
      | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     | valid issue date                  | expiry date more than issue date less than current date | UID Token              | throws an error with error message | financial_details.xlsx | lease_land_details    | 105                          |
#${ProductType:["IHF","IAF"]}
 #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Occupation:["Agriculture"]}
    @Islamic
    @Release
    @Part-2
    @ImplementedBy-harshita.nayak
    Examples:
      | ApplicationStage   | ProductType   | Occupation   | ApplicantType   | category | key | Issue_Date                        | Expiry_Date                                             | Type_of_Identification    | Throws_notThrows                   | FinancialDetailsWB     | FinancialDetails_home | FinancialDetails_home_rowNum |
      | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     | issue date less than current date | valid expiry date                                       | Emirates ID               | does not throw any error           | financial_details.xlsx | lease_land_details    | 359                          |
      | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     | valid issue date                  | expiry date more than current date                      | Emirates ID               | does not throw any error           | financial_details.xlsx | lease_land_details    | 360                          |
      | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     | valid issue date                  | expiry date more than issue date less than current date | Emirates ID               | throws an error with error message | financial_details.xlsx | lease_land_details    | 361                          |
      | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     | issue date less than current date | valid expiry date                                       | Trade License No.         | does not throw any error           | financial_details.xlsx | lease_land_details    | 362                          |
      | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     | valid issue date                  | expiry date more than current date                      | Trade License No.         | does not throw any error           | financial_details.xlsx | lease_land_details    | 363                          |
      | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     | valid issue date                  | expiry date more than issue date less than current date | Trade License No.         | throws an error with error message | financial_details.xlsx | lease_land_details    | 364                          |
      | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     | issue date less than current date | valid expiry date                                       | TIN_No                    | does not throw any error           | financial_details.xlsx | lease_land_details    | 365                          |
      | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     | valid issue date                  | expiry date more than current date                      | TIN_No                    | does not throw any error           | financial_details.xlsx | lease_land_details    | 366                          |
      | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     | valid issue date                  | expiry date more than issue date less than current date | TIN_No                    | throws an error with error message | financial_details.xlsx | lease_land_details    | 367                          |
      | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     | issue date less than current date | valid expiry date                                       | Shop/Establishment Number | does not throw any error           | financial_details.xlsx | lease_land_details    | 368                          |
      | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     | valid issue date                  | expiry date more than current date                      | Shop/Establishment Number | does not throw any error           | financial_details.xlsx | lease_land_details    | 369                          |
      | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     | valid issue date                  | expiry date more than issue date less than current date | Shop/Establishment Number | throws an error with error message | financial_details.xlsx | lease_land_details    | 370                          |
      | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     | issue date less than current date | valid expiry date                                       | UDYAM                     | does not throw any error           | financial_details.xlsx | lease_land_details    | 371                          |
      | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     | valid issue date                  | expiry date more than current date                      | UDYAM                     | does not throw any error           | financial_details.xlsx | lease_land_details    | 372                          |
      | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     | valid issue date                  | expiry date more than issue date less than current date | UDYAM                     | throws an error with error message | financial_details.xlsx | lease_land_details    | 373                          |
      | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     | issue date less than current date | valid expiry date                                       | UDYOG                     | does not throw any error           | financial_details.xlsx | lease_land_details    | 374                          |
      | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     | valid issue date                  | expiry date more than current date                      | UDYOG                     | does not throw any error           | financial_details.xlsx | lease_land_details    | 375                          |
      | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     | valid issue date                  | expiry date more than issue date less than current date | UDYOG                     | throws an error with error message | financial_details.xlsx | lease_land_details    | 376                          |

        #${ProductType:["IPF"]}
    #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
      #${category:["bonds"]}
    #${Occupation:["Agriculture"]}
  @FixedJsClick2
    @Islamic
    @Release
    @Part-2
    @AppInfoFixed5
    @ImplementedBy-harshita.nayak
    Examples:
      | ApplicationStage   | ProductType   | Occupation   | ApplicantType   | category   | key | Issue_Date                        | Expiry_Date                                             | Type_of_Identification    | Throws_notThrows                   | FinancialDetailsWB     | FinancialDetails_home | FinancialDetails_home_rowNum |
      | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> | <category> |     | issue date less than current date | valid expiry date                                       | Emirates ID               | does not throw any error           | financial_details.xlsx | lease_land_details    | 359                          |
      | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> | <category> |     | valid issue date                  | expiry date more than current date                      | Emirates ID               | does not throw any error           | financial_details.xlsx | lease_land_details    | 360                          |
      | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> | <category> |     | valid issue date                  | expiry date more than issue date less than current date | Emirates ID               | throws an error with error message | financial_details.xlsx | lease_land_details    | 361                          |
      | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> | <category> |     | issue date less than current date | valid expiry date                                       | Trade License No.         | does not throw any error           | financial_details.xlsx | lease_land_details    | 362                          |
      | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> | <category> |     | valid issue date                  | expiry date more than current date                      | Trade License No.         | does not throw any error           | financial_details.xlsx | lease_land_details    | 363                          |
      | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> | <category> |     | valid issue date                  | expiry date more than issue date less than current date | Trade License No.         | throws an error with error message | financial_details.xlsx | lease_land_details    | 364                          |
      | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> | <category> |     | issue date less than current date | valid expiry date                                       | TIN_No                    | does not throw any error           | financial_details.xlsx | lease_land_details    | 365                          |
      | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> | <category> |     | valid issue date                  | expiry date more than current date                      | TIN_No                    | does not throw any error           | financial_details.xlsx | lease_land_details    | 366                          |
      | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> | <category> |     | valid issue date                  | expiry date more than issue date less than current date | TIN_No                    | throws an error with error message | financial_details.xlsx | lease_land_details    | 367                          |
      | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> | <category> |     | issue date less than current date | valid expiry date                                       | Shop/Establishment Number | does not throw any error           | financial_details.xlsx | lease_land_details    | 368                          |
      | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> | <category> |     | valid issue date                  | expiry date more than current date                      | Shop/Establishment Number | does not throw any error           | financial_details.xlsx | lease_land_details    | 369                          |
      | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> | <category> |     | valid issue date                  | expiry date more than issue date less than current date | Shop/Establishment Number | throws an error with error message | financial_details.xlsx | lease_land_details    | 370                          |
      | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> | <category> |     | issue date less than current date | valid expiry date                                       | UDYAM                     | does not throw any error           | financial_details.xlsx | lease_land_details    | 371                          |
      | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> | <category> |     | valid issue date                  | expiry date more than current date                      | UDYAM                     | does not throw any error           | financial_details.xlsx | lease_land_details    | 372                          |
      | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> | <category> |     | valid issue date                  | expiry date more than issue date less than current date | UDYAM                     | throws an error with error message | financial_details.xlsx | lease_land_details    | 373                          |
      | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> | <category> |     | issue date less than current date | valid expiry date                                       | UDYOG                     | does not throw any error           | financial_details.xlsx | lease_land_details    | 374                          |
      | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> | <category> |     | valid issue date                  | expiry date more than current date                      | UDYOG                     | does not throw any error           | financial_details.xlsx | lease_land_details    | 375                          |
      | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> | <category> |     | valid issue date                  | expiry date more than issue date less than current date | UDYOG                     | throws an error with error message | financial_details.xlsx | lease_land_details    | 376                          |

      # ${ProductType:["FAS","GL","JLG","SHG"]}
    #${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Occupation:["Agriculture"]}
    @NotImplemented
    Examples:
      | ApplicationStage   | ProductType   | Occupation   | ApplicantType   | category | key | Issue_Date                        | Expiry_Date                                             | Type_of_Identification | Throws_notThrows                   | FinancialDetailsWB     | FinancialDetails_home | FinancialDetails_home_rowNum |
      | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     | issue date less than current date | valid expiry date                                       | Aadhar No.             | does not throw any error           | financial_details.xlsx | lease_land_details    | 91                           |
      | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     | valid issue date                  | expiry date more than current date                      | Aadhar No.             | does not throw any error           | financial_details.xlsx | lease_land_details    | 92                           |
      | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     | valid issue date                  | expiry date more than issue date less than current date | Aadhar No.             | throws an error with error message | financial_details.xlsx | lease_land_details    | 93                           |
      | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     | issue date less than current date | valid expiry date                                       | KYC                    | does not throw any error           | financial_details.xlsx | lease_land_details    | 94                           |
      | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     | valid issue date                  | expiry date more than current date                      | KYC                    | does not throw any error           | financial_details.xlsx | lease_land_details    | 95                           |
      | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     | valid issue date                  | expiry date more than issue date less than current date | KYC                    | throws an error with error message | financial_details.xlsx | lease_land_details    | 96                           |
      | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     | issue date less than current date | valid expiry date                                       | Pan                    | does not throw any error           | financial_details.xlsx | lease_land_details    | 97                           |
      | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     | valid issue date                  | expiry date more than current date                      | Pan                    | does not throw any error           | financial_details.xlsx | lease_land_details    | 98                           |
      | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     | valid issue date                  | expiry date more than issue date less than current date | Pan                    | throws an error with error message | financial_details.xlsx | lease_land_details    | 99                           |
      | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     | issue date less than current date | valid expiry date                                       | Passport               | does not throw any error           | financial_details.xlsx | lease_land_details    | 100                          |
      | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     | valid issue date                  | expiry date more than current date                      | Passport               | does not throw any error           | financial_details.xlsx | lease_land_details    | 101                          |
      | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     | valid issue date                  | expiry date more than issue date less than current date | Passport               | throws an error with error message | financial_details.xlsx | lease_land_details    | 102                          |
      | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     | issue date less than current date | valid expiry date                                       | UID Token              | does not throw any error           | financial_details.xlsx | lease_land_details    | 103                          |
      | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     | valid issue date                  | expiry date more than current date                      | UID Token              | does not throw any error           | financial_details.xlsx | lease_land_details    | 104                          |
      | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     | valid issue date                  | expiry date more than issue date less than current date | UID Token              | throws an error with error message | financial_details.xlsx | lease_land_details    | 105                          |


  Scenario Outline: ACAUTOCAS-1764:  In Selection of <Type_of_Identification> without Issue_Date and Expiry_Date in Lessor Details Identification
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user open Employment Details page on the basis of "<ApplicationStage>"
    And user reads employment details excel from datatable on the basis of "<Occupation>" type
      | employment_details.xlsx | home | 3 | Agriculture |
    And user fill employment details with Occupation Type as "<Occupation>"
    And user open financial details
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_home>" and row <FinancialDetails_home_rowNum>
    When user selects "<Type_of_Identification>" without Issue_Date and Expiry_Date in lessor identification details
    Then lessor identification details "<Throws_notThrows>"
    #${ ProductType : ["PL","HL","AL","EDU","OMNI","CEQ", "KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Occupation:["Agriculture"]}
    @Release @Part-2
    @Conventional
    @ImplementedBy-ankit.yadav
    Examples:
      | ApplicationStage   | ProductType   | Occupation   | category | key | Type_of_Identification | Throws_notThrows                   | FinancialDetailsWB     | FinancialDetails_home | FinancialDetails_home_rowNum |
      | <ApplicationStage> | <ProductType> | <Occupation> |          |     | Passport               | throws an error with error message | financial_details.xlsx | lease_land_details    | 78                           |
 # ${ProductType:["FAS","GL","JLG","SHG"]}
    #${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Occupation:["Agriculture"]}
    @NotImplemented
    Examples:
      | ApplicationStage   | ProductType   | Occupation   | category | key | Type_of_Identification | Throws_notThrows                   | FinancialDetailsWB     | FinancialDetails_home | FinancialDetails_home_rowNum |
      | <ApplicationStage> | <ProductType> | <Occupation> |          |     | Passport               | throws an error with error message | financial_details.xlsx | lease_land_details    | 78                           |

  Scenario Outline: ACAUTOCAS-1765:  In Selection of <Type_of_Identification> without save
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user open Employment Details page on the basis of "<ApplicationStage>"
    And user reads employment details excel from datatable on the basis of "<Occupation>" type
      | employment_details.xlsx | home | 3 | Agriculture |
    And user fill employment details with Occupation Type as "<Occupation>"
    And user open financial details
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_home>" and row <FinancialDetails_home_rowNum>
    When user selects "<Type_of_Identification>" in lessor identification details
    Then country of issue should be "<Dependent_On_Identification>" in lessor identification details
   #${ ProductType : ["PL","HL","AL","EDU","OMNI","CEQ", "KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Occupation:["Agriculture"]}
    @Release @Part-2
    @Conventional
    @ImplementedBy-ankit.yadav
    Examples:
      | ApplicationStage   | ProductType   | Occupation   | category | key | Type_of_Identification | Dependent_On_Identification | FinancialDetailsWB     | FinancialDetails_home | FinancialDetails_home_rowNum |
      | <ApplicationStage> | <ProductType> | <Occupation> |          |     | UID Token              | autofilled                  | financial_details.xlsx | lease_land_details    | 103                          |
      | <ApplicationStage> | <ProductType> | <Occupation> |          |     | UID Token              | not editable                | financial_details.xlsx | lease_land_details    | 104                          |

     # ${ProductType:["FAS","GL","JLG","SHG"]}
    #${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Occupation:["Agriculture"]}
    @NotImplemented
    Examples:
      | ApplicationStage   | ProductType   | Occupation   | category | key | Type_of_Identification | Dependent_On_Identification | FinancialDetailsWB     | FinancialDetails_home | FinancialDetails_home_rowNum |
      | <ApplicationStage> | <ProductType> | <Occupation> |          |     | UID Token              | autofilled                  | financial_details.xlsx | lease_land_details    | 103                          |
      | <ApplicationStage> | <ProductType> | <Occupation> |          |     | UID Token              | not editable                | financial_details.xlsx | lease_land_details    | 104                          |

  Scenario Outline: ACAUTOCAS-1766:  In Selection of <Type_of_Identification> without <Field_Name> in Lessor Details Identification
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user open Employment Details page on the basis of "<ApplicationStage>"
    And user reads employment details excel from datatable on the basis of "<Occupation>" type
      | employment_details.xlsx | home | 3 | Agriculture |
    And user fill employment details with Occupation Type as "<Occupation>"
    And user open financial details
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_home>" and row <FinancialDetails_home_rowNum>
    When user entering without "<Field_Name>" for "<Type_of_Identification>" in lessor identification details
    Then seller details is not saved without "<Field_Name>" showing proper message in lessor identification details
     #${ ProductType : ["PL","HL","AL","EDU","OMNI","CEQ", "KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Occupation:["Agriculture"]}
    @Release @Part-2
    @Conventional
    @ImplementedBy-ankit.yadav
    Examples:
      | ApplicationStage   | ApplicantType   | ProductType   | Occupation   | category | key | Field_Name         | Type_of_Identification | FinancialDetailsWB     | FinancialDetails_home | FinancialDetails_home_rowNum |
      | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> |          |     | Identification No. | Aadhar No.             | financial_details.xlsx | lease_land_details    | 91                           |
      | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> |          |     | Identification No. | Pan                    | financial_details.xlsx | lease_land_details    | 97                           |
      | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> |          |     | Identification No. | Passport               | financial_details.xlsx | lease_land_details    | 100                          |
      | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> |          |     | Identification No. | UID Token              | financial_details.xlsx | lease_land_details    | 103                          |
      | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> |          |     | Identification No. | KYC                    | financial_details.xlsx | lease_land_details    | 94                           |
      | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> |          |     | Country of Issue   | Aadhar No.             | financial_details.xlsx | lease_land_details    | 91                           |
      | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> |          |     | Country of Issue   | Pan                    | financial_details.xlsx | lease_land_details    | 97                           |
      | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> |          |     | Country of Issue   | Passport               | financial_details.xlsx | lease_land_details    | 100                          |
      | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> |          |     | Country of Issue   | KYC                    | financial_details.xlsx | lease_land_details    | 94                           |
   # ${ ProductType : ["IHF","IAF"]}
# ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
#${Occupation:["Agriculture"]}
    @Islamic
    @Release
    @Part-2
    @ImplementedBy-harshita.nayak
    Examples:
      | ApplicationStage   | ApplicantType   | ProductType   | Occupation   | category | key | Field_Name         | Type_of_Identification    | FinancialDetailsWB     | FinancialDetails_home | FinancialDetails_home_rowNum |
      | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> |          |     | Identification No. | Emirates ID               | financial_details.xlsx | lease_land_details    | 335                          |
      | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> |          |     | Identification No. | Trade License No.         | financial_details.xlsx | lease_land_details    | 336                          |
      | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> |          |     | Identification No. | TIN_No                    | financial_details.xlsx | lease_land_details    | 337                          |
      | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> |          |     | Identification No. | Shop/Establishment Number | financial_details.xlsx | lease_land_details    | 338                          |
      | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> |          |     | Identification No. | UDYAM                     | financial_details.xlsx | lease_land_details    | 339                          |
      | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> |          |     | Identification No. | UDYOG                     | financial_details.xlsx | lease_land_details    | 340                          |
      | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> |          |     | Country of Issue   | Emirates ID               | financial_details.xlsx | lease_land_details    | 341                          |
      | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> |          |     | Country of Issue   | Trade License No.         | financial_details.xlsx | lease_land_details    | 342                          |
      | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> |          |     | Country of Issue   | TIN_No                    | financial_details.xlsx | lease_land_details    | 343                          |
      | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> |          |     | Country of Issue   | Shop/Establishment Number | financial_details.xlsx | lease_land_details    | 344                          |
      | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> |          |     | Country of Issue   | UDYAM                     | financial_details.xlsx | lease_land_details    | 345                          |
      | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> |          |     | Country of Issue   | UDYOG                     | financial_details.xlsx | lease_land_details    | 346                          |
#${ProductType:["IPF"]}
    #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
      #${category:["bonds"]}
    #${Occupation:["Agriculture"]}
    @Islamic
    @Release
    @Part-2
    @FixedTest28
    @ImplementedBy-harshita.nayak
    Examples:
      | ApplicationStage   | ApplicantType   | ProductType   | Occupation   | category   | key | Field_Name         | Type_of_Identification    | FinancialDetailsWB     | FinancialDetails_home | FinancialDetails_home_rowNum |
      | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> | <category> |     | Identification No. | Emirates ID               | financial_details.xlsx | lease_land_details    | 335                          |
      | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> | <category> |     | Identification No. | Trade License No.         | financial_details.xlsx | lease_land_details    | 336                          |
      | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> | <category> |     | Identification No. | TIN_No                    | financial_details.xlsx | lease_land_details    | 337                          |
      | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> | <category> |     | Identification No. | Shop/Establishment Number | financial_details.xlsx | lease_land_details    | 338                          |
      | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> | <category> |     | Identification No. | UDYAM                     | financial_details.xlsx | lease_land_details    | 339                          |
      | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> | <category> |     | Identification No. | UDYOG                     | financial_details.xlsx | lease_land_details    | 340                          |
      | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> | <category> |     | Country of Issue   | Emirates ID               | financial_details.xlsx | lease_land_details    | 341                          |
      | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> | <category> |     | Country of Issue   | Trade License No.         | financial_details.xlsx | lease_land_details    | 342                          |
      | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> | <category> |     | Country of Issue   | TIN_No                    | financial_details.xlsx | lease_land_details    | 343                          |
      | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> | <category> |     | Country of Issue   | Shop/Establishment Number | financial_details.xlsx | lease_land_details    | 344                          |
      | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> | <category> |     | Country of Issue   | UDYAM                     | financial_details.xlsx | lease_land_details    | 345                          |
      | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> | <category> |     | Country of Issue   | UDYOG                     | financial_details.xlsx | lease_land_details    | 346                          |

   # ${ProductType:["FAS","GL","JLG","SHG"]}
    #${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Occupation:["Agriculture"]}
    @NotImplemented
    Examples:
      | ApplicationStage   | ApplicantType   | ProductType   | Occupation   | category | key | Field_Name         | Type_of_Identification | FinancialDetailsWB     | FinancialDetails_home | FinancialDetails_home_rowNum |
      | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> |          |     | Identification No. | Aadhar No.             | financial_details.xlsx | lease_land_details    | 91                           |
      | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> |          |     | Identification No. | Pan                    | financial_details.xlsx | lease_land_details    | 97                           |
      | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> |          |     | Identification No. | Passport               | financial_details.xlsx | lease_land_details    | 100                          |
      | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> |          |     | Identification No. | UID Token              | financial_details.xlsx | lease_land_details    | 103                          |
      | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> |          |     | Identification No. | KYC                    | financial_details.xlsx | lease_land_details    | 94                           |
      | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> |          |     | Country of Issue   | Aadhar No.             | financial_details.xlsx | lease_land_details    | 91                           |
      | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> |          |     | Country of Issue   | Pan                    | financial_details.xlsx | lease_land_details    | 97                           |
      | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> |          |     | Country of Issue   | Passport               | financial_details.xlsx | lease_land_details    | 100                          |
      | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> |          |     | Country of Issue   | KYC                    | financial_details.xlsx | lease_land_details    | 94                           |

  Scenario Outline: ACAUTOCAS-3426: Validating Lessor Name in Lessor Details with <var> mandatory field in lease land details
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user open Employment Details page on the basis of "<ApplicationStage>"
    And user reads employment details excel from datatable on the basis of "<Occupation>" type
      | employment_details.xlsx | home | 3 | Agriculture |
    And user fill employment details with Occupation Type as "<Occupation>"
    And user open financial details
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_home>" and row <FinancialDetails_home_rowNum>
    When user fills lessor name field with "<var>" in lessor details
    Then lessor Name field "<Throws_notThrows>" in lessor details
     #${ ProductType : ["PL","HL","AL","EDU","OMNI","CEQ", "KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Occupation:["Agriculture"]}
    @Release @Part-2
    @Conventional
    @ImplementedBy-ankit.yadav
    Examples:
      | ApplicationStage   | ApplicantType   | ProductType   | Occupation   | category | key | var                                      | Throws_notThrows                   | FinancialDetailsWB     | FinancialDetails_home | FinancialDetails_home_rowNum |
      | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> |          |     | valid value                              | does not throw any error           | financial_details.xlsx | lease_land_details    | 61                           |
      | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> |          |     | both digits and characters               | does not throw any error           | financial_details.xlsx | lease_land_details    | 62                           |
      | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> |          |     | special characters with comma            | does not throw any error           | financial_details.xlsx | lease_land_details    | 63                           |
      | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> |          |     | space                                    | does not throw any error           | financial_details.xlsx | lease_land_details    | 64                           |
      | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> |          |     | special characters with forward slash    | does not throw any error           | financial_details.xlsx | lease_land_details    | 65                           |
      | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> |          |     | special characters with and operator     | does not throw any error           | financial_details.xlsx | lease_land_details    | 66                           |
      | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> |          |     | special characters with exclamation mark | does not throw any error           | financial_details.xlsx | lease_land_details    | 67                           |
      | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> |          |     | special characters with dollar           | does not throw any error           | financial_details.xlsx | lease_land_details    | 68                           |
      | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> |          |     | special characters with hyphen           | does not throw any error           | financial_details.xlsx | lease_land_details    | 69                           |
      | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> |          |     | special characters with bracket          | does not throw any error           | financial_details.xlsx | lease_land_details    | 70                           |
      | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> |          |     | negative value                           | does not throw any error           | financial_details.xlsx | lease_land_details    | 71                           |
      | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> |          |     | special characters                       | throws an error with error message | financial_details.xlsx | lease_land_details    | 72                           |

     # ${ ProductType : ["IHF","IAF"]}
# ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
#${Occupation:["Agriculture"]}
    @Islamic
    @Release
    @Part-2
    @ImplementedBy-harshita.nayak
    Examples:
      | ApplicationStage   | ApplicantType   | ProductType   | Occupation   | category | key | var                                      | Throws_notThrows                   | FinancialDetailsWB     | FinancialDetails_home | FinancialDetails_home_rowNum |
      | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> |          |     | valid value                              | does not throw any error           | financial_details.xlsx | lease_land_details    | 313                          |
      | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> |          |     | both digits and characters               | does not throw any error           | financial_details.xlsx | lease_land_details    | 314                          |
      | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> |          |     | special characters with comma            | does not throw any error           | financial_details.xlsx | lease_land_details    | 315                          |
      | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> |          |     | space                                    | does not throw any error           | financial_details.xlsx | lease_land_details    | 316                          |
      | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> |          |     | special characters with forward slash    | does not throw any error           | financial_details.xlsx | lease_land_details    | 317                          |
      | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> |          |     | special characters with and operator     | does not throw any error           | financial_details.xlsx | lease_land_details    | 318                          |
      | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> |          |     | special characters with exclamation mark | does not throw any error           | financial_details.xlsx | lease_land_details    | 319                          |
      | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> |          |     | special characters with dollar           | does not throw any error           | financial_details.xlsx | lease_land_details    | 320                          |
      | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> |          |     | special characters with hyphen           | does not throw any error           | financial_details.xlsx | lease_land_details    | 321                          |
      | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> |          |     | special characters with bracket          | does not throw any error           | financial_details.xlsx | lease_land_details    | 322                          |
      | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> |          |     | negative value                           | does not throw any error           | financial_details.xlsx | lease_land_details    | 323                          |
      | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> |          |     | special characters                       | throws an error with error message | financial_details.xlsx | lease_land_details    | 324                          |
    #${ProductType:["IPF"]}
    #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
      #${category:["bonds"]}
    #${Occupation:["Agriculture"]}
    @FixedJsClick2
    @Islamic
    @Release
    @Part-2
    @ImplementedBy-harshita.nayak
    Examples:
      | ApplicationStage   | ApplicantType   | ProductType   | Occupation   | category   | key | var                                      | Throws_notThrows                   | FinancialDetailsWB     | FinancialDetails_home | FinancialDetails_home_rowNum |
      | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> | <category> |     | valid value                              | does not throw any error           | financial_details.xlsx | lease_land_details    | 313                          |
      | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> | <category> |     | both digits and characters               | does not throw any error           | financial_details.xlsx | lease_land_details    | 314                          |
      | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> | <category> |     | special characters with comma            | does not throw any error           | financial_details.xlsx | lease_land_details    | 315                          |
      | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> | <category> |     | space                                    | does not throw any error           | financial_details.xlsx | lease_land_details    | 316                          |
      | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> | <category> |     | special characters with forward slash    | does not throw any error           | financial_details.xlsx | lease_land_details    | 317                          |
      | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> | <category> |     | special characters with and operator     | does not throw any error           | financial_details.xlsx | lease_land_details    | 318                          |
      | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> | <category> |     | special characters with exclamation mark | does not throw any error           | financial_details.xlsx | lease_land_details    | 319                          |
      | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> | <category> |     | special characters with dollar           | does not throw any error           | financial_details.xlsx | lease_land_details    | 320                          |
      | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> | <category> |     | special characters with hyphen           | does not throw any error           | financial_details.xlsx | lease_land_details    | 321                          |
      | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> | <category> |     | special characters with bracket          | does not throw any error           | financial_details.xlsx | lease_land_details    | 322                          |
      | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> | <category> |     | negative value                           | does not throw any error           | financial_details.xlsx | lease_land_details    | 323                          |
      | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> | <category> |     | special characters                       | throws an error with error message | financial_details.xlsx | lease_land_details    | 324                          |
 # ${ProductType:["FAS","GL","JLG","SHG"]}
    #${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Occupation:["Agriculture"]}
    @NotImplemented
    Examples:
      | ApplicationStage   | ApplicantType   | ProductType   | Occupation   | category | key | var                                      | Throws_notThrows                   | FinancialDetailsWB     | FinancialDetails_home | FinancialDetails_home_rowNum |
      | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> |          |     | valid value                              | does not throw any error           | financial_details.xlsx | lease_land_details    | 61                           |
      | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> |          |     | both digits and characters               | does not throw any error           | financial_details.xlsx | lease_land_details    | 62                           |
      | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> |          |     | special characters with comma            | does not throw any error           | financial_details.xlsx | lease_land_details    | 63                           |
      | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> |          |     | space                                    | does not throw any error           | financial_details.xlsx | lease_land_details    | 64                           |
      | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> |          |     | special characters with forward slash    | does not throw any error           | financial_details.xlsx | lease_land_details    | 65                           |
      | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> |          |     | special characters with and operator     | does not throw any error           | financial_details.xlsx | lease_land_details    | 66                           |
      | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> |          |     | special characters with exclamation mark | does not throw any error           | financial_details.xlsx | lease_land_details    | 67                           |
      | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> |          |     | special characters with dollar           | does not throw any error           | financial_details.xlsx | lease_land_details    | 68                           |
      | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> |          |     | special characters with hyphen           | does not throw any error           | financial_details.xlsx | lease_land_details    | 69                           |
      | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> |          |     | special characters with bracket          | does not throw any error           | financial_details.xlsx | lease_land_details    | 70                           |
      | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> |          |     | negative value                           | does not throw any error           | financial_details.xlsx | lease_land_details    | 71                           |
      | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> |          |     | special characters                       | throws an error with error message | financial_details.xlsx | lease_land_details    | 72                           |


  Scenario Outline: ACAUTOCAS-3427:  Lessor Details <var> checking for duplicates
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user open Employment Details page on the basis of "<ApplicationStage>"
    And user reads employment details excel from datatable on the basis of "<Occupation>" type
      | employment_details.xlsx | home | 3 | Agriculture |
    And user fill employment details with Occupation Type as "<Occupation>"
    And user open financial details
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_home>" and row <FinancialDetails_home_rowNum>
    And user fills lessor Details with "<Mandatory_All>" in lessor details
    When user saves the data "<var>" checking duplicates in lessor details
    Then "<Throws_notThrows>" message in lessor details
     #${ ProductType : ["PL","HL","AL","EDU","OMNI","CEQ", "KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Occupation:["Agriculture"]}
    @Release @Part-2
    @Conventional
    @ImplementedBy-ankit.yadav
    Examples:
      | ApplicationStage   | ApplicantType   | ProductType   | Occupation   | category | key | var     | Mandatory_All | Throws_notThrows                   | FinancialDetailsWB     | FinancialDetails_home | FinancialDetails_home_rowNum |
      | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> |          |     | without | mandatory     | throws an error with error message | financial_details.xlsx | lease_land_details    | 0                            |
      | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> |          |     | with    | mandatory     | does not throw any error           | financial_details.xlsx | lease_land_details    | 0                            |
 # ${ ProductType : ["IHF","IAF"]}
# ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
#${Occupation:["Agriculture"]}
    @Islamic
    @Release
    @Part-2
    @ImplementedBy-harshita.nayak
    Examples:
      | ApplicationStage   | ApplicantType   | ProductType   | Occupation   | category | key | var     | Mandatory_All | Throws_notThrows                   | FinancialDetailsWB     | FinancialDetails_home | FinancialDetails_home_rowNum |
      | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> |          |     | without | mandatory     | throws an error with error message | financial_details.xlsx | lease_land_details    | 286                          |
      | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> |          |     | with    | mandatory     | does not throw any error           | financial_details.xlsx | lease_land_details    | 286                          |
    #${ProductType:["IPF"]}
    #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
      #${category:["bonds"]}
    #${Occupation:["Agriculture"]}
    @FixedJsClick2
    @Islamic
    @Release
    @Part-2
    @ImplementedBy-harshita.nayak
    Examples:
      | ApplicationStage   | ApplicantType   | ProductType   | Occupation   | category   | key | var     | Mandatory_All | Throws_notThrows                   | FinancialDetailsWB     | FinancialDetails_home | FinancialDetails_home_rowNum |
      | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> | <category> |     | without | mandatory     | throws an error with error message | financial_details.xlsx | lease_land_details    | 286                          |
      | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> | <category> |     | with    | mandatory     | does not throw any error           | financial_details.xlsx | lease_land_details    | 286                          |
 # ${ProductType:["FAS","GL","JLG","SHG"]}
    #${ApplicationStage:["DDE","Recommendation","Credit Approval","\\Reconsideration"]}
    #${Occupation:["Agriculture"]}
    @NotImplemented
    Examples:
      | ApplicationStage   | ApplicantType   | ProductType   | Occupation   | category | key | var     | Mandatory_All | Throws_notThrows                   | FinancialDetailsWB     | FinancialDetails_home | FinancialDetails_home_rowNum |
      | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> |          |     | without | mandatory     | throws an error with error message | financial_details.xlsx | lease_land_details    | 0                            |
      | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> |          |     | with    | mandatory     | does not throw any error           | financial_details.xlsx | lease_land_details    | 0                            |

  Scenario Outline: ACAUTOCAS-3428: Lessor Details to view duplicates results
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user open Employment Details page on the basis of "<ApplicationStage>"
    And user reads employment details excel from datatable on the basis of "<Occupation>" type
      | employment_details.xlsx | home | 3 | Agriculture |
    And user fill employment details with Occupation Type as "<Occupation>"
    And user open financial details
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_home>" and row <FinancialDetails_home_rowNum>
    And user fills lessor Details with "<Mandatory_All>" in lessor details
    When user selects check for duplicates lessor details in lessor details
    Then "<Duplicate_Check_Result>" results display successfully in lessor details
     #${ ProductType : ["PL","HL","AL","EDU","OMNI","CEQ", "KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Occupation:["Agriculture"]}
    @Release @Part-2 @Conventional
    @ImplementedBy-ankit.yadav
    Examples:
      | Mandatory_All | Duplicate_Check_Result | FinancialDetailsWB     | FinancialDetails_home | FinancialDetails_home_rowNum | ApplicationStage   | ApplicantType   | ProductType   | Occupation   | category | key |
      | mandatory     | Internal Duplicates    | financial_details.xlsx | lease_land_details    | 0                            | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> |          |     |
      | mandatory     | External Duplicates    | financial_details.xlsx | lease_land_details    | 0                            | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> |          |     |
      | mandatory     | Negative Duplicates    | financial_details.xlsx | lease_land_details    | 0                            | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> |          |     |
# ${ ProductType : ["IHF","IAF"]}
# ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
#${Occupation:["Agriculture"]}
    @Islamic
    @Release
    @Part-2
    @ImplementedBy-harshita.nayak
    Examples:
      | Mandatory_All | Duplicate_Check_Result | FinancialDetailsWB     | FinancialDetails_home | FinancialDetails_home_rowNum | ApplicationStage   | ApplicantType   | ProductType   | Occupation   | category | key |
      | mandatory     | Internal Duplicates    | financial_details.xlsx | lease_land_details    | 286                          | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> |          |     |
      | mandatory     | External Duplicates    | financial_details.xlsx | lease_land_details    | 286                          | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> |          |     |
      | mandatory     | Negative Duplicates    | financial_details.xlsx | lease_land_details    | 286                          | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> |          |     |
    #${ProductType:["IPF"]}
    #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
      #${category:["bonds"]}
    #${Occupation:["Agriculture"]}
    @FixedJsClick2
    @Islamic
    @Release
    @Part-2
    @ImplementedBy-harshita.nayak
    Examples:
      | Mandatory_All | Duplicate_Check_Result | FinancialDetailsWB     | FinancialDetails_home | FinancialDetails_home_rowNum | ApplicationStage   | ApplicantType   | ProductType   | Occupation   | category   | key |
      | mandatory     | Internal Duplicates    | financial_details.xlsx | lease_land_details    | 286                          | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> | <category> |     |
      | mandatory     | External Duplicates    | financial_details.xlsx | lease_land_details    | 286                          | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> | <category> |     |
      | mandatory     | Negative Duplicates    | financial_details.xlsx | lease_land_details    | 286                          | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> | <category> |     |
      # ${ProductType:["FAS","GL","JLG","SHG"]}
    #${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Occupation:["Agriculture"]}
    @NotImplemented
    Examples:
      | Mandatory_All | Duplicate_Check_Result | FinancialDetailsWB     | FinancialDetails_home | FinancialDetails_home_rowNum | ApplicationStage   | ApplicantType   | ProductType   | Occupation   | category | key |
      | mandatory     | Internal Duplicates    | financial_details.xlsx | lease_land_details    | 0                            | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> |          |     |
      | mandatory     | External Duplicates    | financial_details.xlsx | lease_land_details    | 0                            | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> |          |     |
      | mandatory     | Negative Duplicates    | financial_details.xlsx | lease_land_details    | 0                            | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> |          |     |




