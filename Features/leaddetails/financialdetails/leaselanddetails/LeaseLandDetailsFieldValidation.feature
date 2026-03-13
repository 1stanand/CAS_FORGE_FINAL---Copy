@Epic-Applicant_Information
@ReviewedBy-tushar.chauhan
@AuthoredBy-harshita.nayak
@Reconciled
@ReviewedByDEV
@AppInfoAdoption
  # ${ApplicantType:["indiv"]}
    #FeatureID-ACAUTOCAS-191
Feature: Lease Land detail field validation with occupation type as Agriculture

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0

   @Sanity
  Scenario Outline: ACAUTOCAS-1730:  Add Lease Land Details with <Var> fields
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user open Employment Details page on the basis of "<ApplicationStage>"
    And user reads employment details excel from datatable on the basis of "<Occupation>" type
      | employment_details.xlsx | home | 3 | Agriculture |
    And user fill employment details with Occupation Type as "<Occupation>"
    And user open financial details
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_home>" and row <FinancialDetails_home_rowNum>
    When user add Lease Land Details with "<Var>" fields
    Then Lease Land Details should be saved successfully
    #${ ProductType : ["PL","HL","AL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Occupation:["Agriculture"]}
    @Release @Part-2
    @ImplementedBy-ankit.yadav
    @Conventional
    Examples:
      | ApplicationStage   | ProductType   | Occupation   | ApplicantType   | category | key | Var       | FinancialDetailsWB     | FinancialDetails_home | FinancialDetails_home_rowNum |
      | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     | Mandatory | financial_details.xlsx | lease_land_details    | 0                            |
      | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     | All       | financial_details.xlsx | lease_land_details    | 1                            |
# ${ ProductType : ["IHF","IAF"]}
# ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
#${Occupation:["Agriculture"]}
    @Islamic
    @Release
@Part-2
    @ImplementedBy-harshita.nayak
    Examples:
      | ApplicationStage   | ProductType   | Occupation   | ApplicantType   | category | key | Var       | FinancialDetailsWB     | FinancialDetails_home | FinancialDetails_home_rowNum |
      | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     | Mandatory | financial_details.xlsx | lease_land_details    | 286                          |
      | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     | All       | financial_details.xlsx | lease_land_details    | 287                          |
 #${ ProductType : ["IPF"]}
# ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
#${Occupation:["Agriculture"]}
 #${category:["bonds"]}
    @Islamic
    @Release
@Part-2
    @ImplementedBy-harshita.nayak
    Examples:
      | ApplicationStage   | ProductType   | Occupation   | ApplicantType   | category   | key | Var       | FinancialDetailsWB     | FinancialDetails_home | FinancialDetails_home_rowNum |
      | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> | <category> |     | Mandatory | financial_details.xlsx | lease_land_details    | 286                          |
      | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> | <category> |     | All       | financial_details.xlsx | lease_land_details    | 287                          |

 # ${ProductType:["FAS","GL","JLG","SHG"]}
#${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
#${Occupation:["Agriculture"]}
   @NotImplemented
    Examples:
      | ApplicationStage   | ProductType   | Occupation   | ApplicantType   | category | key | Var       | FinancialDetailsWB     | FinancialDetails_home | FinancialDetails_home_rowNum |
      | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     | Mandatory | financial_details.xlsx | lease_land_details    | 0                            |
      | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     | All       | financial_details.xlsx | lease_land_details    | 1                            |

  @Sanity
  Scenario Outline: ACAUTOCAS-1731: Add multiple <Var> Lease Land Details
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user open Employment Details page on the basis of "<ApplicationStage>"
    And user reads employment details excel from datatable on the basis of "<Occupation>" type
      | employment_details.xlsx | home | 3 | Agriculture |
    And user fill employment details with Occupation Type as "<Occupation>"
    And user open financial details
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_home>" and row <FinancialDetails_home_rowNum>
    When user add multiple <Var> Lease Land fields
    Then Lease Land Details should be saved successfully
    #${ ProductType : ["PL","HL","AL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Occupation:["Agriculture"]}
    @Release @Part-2
    @ImplementedBy-ankit.yadav
    @Conventional
    Examples:
      | Var | ApplicationStage   | ApplicantType   | ProductType   | Occupation   | category | key | FinancialDetailsWB     | FinancialDetails_home | FinancialDetails_home_rowNum |
      | 2   | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> |          |     | financial_details.xlsx | lease_land_details    | 2                            |
  #${ ProductType : ["IHF","IAF"]}
  #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
  #${Occupation:["Agriculture"]}
    @Islamic
    @Release
@Part-2
    @ImplementedBy-harshita.nayak
    Examples:
      | Var | ApplicationStage   | ApplicantType   | ProductType   | Occupation   | category | key | FinancialDetailsWB     | FinancialDetails_home | FinancialDetails_home_rowNum |
      | 2   | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> |          |     | financial_details.xlsx | lease_land_details    | 287                            |
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
      | Var | ApplicationStage   | ApplicantType   | ProductType   | Occupation   | category   | key | FinancialDetailsWB     | FinancialDetails_home | FinancialDetails_home_rowNum |
      | 2   | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> | <category> |     | financial_details.xlsx | lease_land_details    | 287                          |

 # ${ProductType:["FAS","GL","JLG","SHG"]}
#${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
#${Occupation:["Agriculture"]}
   @NotImplemented
    Examples:
      | Var | ApplicationStage   | ApplicantType   | ProductType   | Occupation   | category | key | FinancialDetailsWB     | FinancialDetails_home | FinancialDetails_home_rowNum |
      | 2   | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> |          |     | financial_details.xlsx | lease_land_details    | 2                            |


  Scenario Outline: ACAUTOCAS-1732: Delete <Var> Lease Land Details
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user open Employment Details page on the basis of "<ApplicationStage>"
    And user reads employment details excel from datatable on the basis of "<Occupation>" type
      | employment_details.xlsx | home | 3 | Agriculture |
    And user fill employment details with Occupation Type as "<Occupation>"
    And user open financial details
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_home>" and row <FinancialDetails_home_rowNum>
    When user add multiple <Var> Lease Land fields
    And user delete multiple <Var> Lease Land fields
    Then delete Lease Land Details successfully
    #${ ProductType : ["PL","HL","AL","EDU","OMNI","CEQ", "KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Occupation:["Agriculture"]}
    @Release @Part-2
    @ImplementedBy-ankit.yadav
    @Conventional
    Examples:
      | Var | ApplicationStage   | ApplicantType   | ProductType   | Occupation   | category | key | FinancialDetailsWB     | FinancialDetails_home | FinancialDetails_home_rowNum |
      | 2   | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> |          |     | financial_details.xlsx | lease_land_details    | 2                            |
#${ ProductType : ["IHF","IAF"]}
  #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
  #${Occupation:["Agriculture"]}
    @Islamic
    @Release
@Part-2
    @ImplementedBy-harshita.nayak
    Examples:
      | Var | ApplicationStage   | ApplicantType   | ProductType   | Occupation   | category | key | FinancialDetailsWB     | FinancialDetails_home | FinancialDetails_home_rowNum |
      | 2   | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> |          |     | financial_details.xlsx | lease_land_details    | 287                          |
#${ ProductType : ["IPF"]}
    #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
      #${category:["bonds"]}
    #${Occupation:["Agriculture"]}
    @Islamic
    @Release
@Part-2
    @AppInfoFixed5
    @ImplementedBy-harshita.nayak
    Examples:
      | Var | ApplicationStage   | ApplicantType   | ProductType   | Occupation   | category   | key | FinancialDetailsWB     | FinancialDetails_home | FinancialDetails_home_rowNum |
      | 2   | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> | <category> |     | financial_details.xlsx | lease_land_details    | 287                          |

 # ${ProductType:["FAS","GL","JLG","SHG"]}
#${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
#${Occupation:["Agriculture"]}
   @NotImplemented
    Examples:
      | Var | ApplicationStage   | ApplicantType   | ProductType   | Occupation   | category | key | FinancialDetailsWB     | FinancialDetails_home | FinancialDetails_home_rowNum |
      | 2   | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> |          |     | financial_details.xlsx | lease_land_details    | 2                            |


  Scenario Outline: ACAUTOCAS-1733:  Saving Lease Land Details detail without <Field_Name>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user open Employment Details page on the basis of "<ApplicationStage>"
    And user reads employment details excel from datatable on the basis of "<Occupation>" type
      | employment_details.xlsx | home | 3 | Agriculture |
    And user fill employment details with Occupation Type as "<Occupation>"
    And user open financial details
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_home>" and row <FinancialDetails_home_rowNum>
    When user fills the Lease Land Details without "<Field_Name>"
    Then Lease Land Details not saved with "<Throws_notThrows>"
    #${ ProductType : ["PL","HL","AL","EDU","OMNI","CEQ", "KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Occupation:["Agriculture"]}
    @Conventional
    @Release @Part-2
    @LoggedBug
    @ImplementedBy-ankit.yadav
    Examples:
      | Field_Name             | ApplicationStage   | ApplicantType   | ProductType   | Occupation   | category | key | FinancialDetailsWB     | FinancialDetails_home | FinancialDetails_home_rowNum | Throws_notThrows                   |
      | Asset Type Description | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> |          |     | financial_details.xlsx | lease_land_details    | 3                            | throws an error with error message |
      | Lease Land Value       | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> |          |     | financial_details.xlsx | lease_land_details    | 4                            | throws an error with error message |

# ${ ProductType : ["IHF","IAF"]}
# ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
#${Occupation:["Agriculture"]}
    @Islamic
    @Release
@Part-2
    @ImplementedBy-harshita.nayak
    Examples:
      | Field_Name             | ApplicationStage   | ApplicantType   | ProductType   | Occupation   | category | key | FinancialDetailsWB     | FinancialDetails_home | FinancialDetails_home_rowNum | Throws_notThrows                   |
      | Asset Type Description | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> |          |     | financial_details.xlsx | lease_land_details    | 330                          | throws an error with error message |
      | Lease Land Value       | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> |          |     | financial_details.xlsx | lease_land_details    | 331                          | throws an error with error message |


    #${ProductType:["IPF"]}
    #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
      #${category:["bonds"]}
    #${Occupation:["Agriculture"]}
    @Islamic
    @Release
@Part-2
    @ImplementedBy-harshita.nayak
    Examples:
      | Field_Name             | ApplicationStage   | ApplicantType   | ProductType   | Occupation   | category   | key | FinancialDetailsWB     | FinancialDetails_home | FinancialDetails_home_rowNum | Throws_notThrows                   |
      | Asset Type Description | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> | <category> |     | financial_details.xlsx | lease_land_details    | 330                          | throws an error with error message |
      | Lease Land Value       | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> | <category> |     | financial_details.xlsx | lease_land_details    | 331                          | throws an error with error message |

      # ${ProductType:["FAS","GL","JLG","SHG"]}
    #${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Occupation:["Agriculture"]}
   @NotImplemented
    Examples:
      | Field_Name             | ApplicationStage   | ApplicantType   | ProductType   | Occupation   | category | key | FinancialDetailsWB     | FinancialDetails_home | FinancialDetails_home_rowNum | Throws_notThrows                   |
      | Asset Type Description | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> |          |     | financial_details.xlsx | lease_land_details    | 3                            | throws an error with error message |
      | Lease Land Value       | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> |          |     | financial_details.xlsx | lease_land_details    | 4                            | throws an error with error message |


  Scenario Outline: ACAUTOCAS-3415: Validating Asset Value in Lease Land Details with <var> mandatory field
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user open Employment Details page on the basis of "<ApplicationStage>"
    And user reads employment details excel from datatable on the basis of "<Occupation>" type
      | employment_details.xlsx | home | 3 | Agriculture |
    And user fill employment details with Occupation Type as "<Occupation>"
    And user open financial details
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_home>" and row <FinancialDetails_home_rowNum>
    When user fills "<Field_Name>" field with "<var>" in lease land details
    Then "<Field_Name>" field "<Throws_notThrows>" in lease land details
    #${ ProductType : ["PL","HL","AL","EDU","OMNI","CEQ", "KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Occupation:["Agriculture"]}
    @Release @Part-2
    @Conventional
    @ImplementedBy-ankit.yadav
    Examples:
      | Field_Name  | var                        | ApplicationStage   | ApplicantType   | ProductType   | Occupation   | category | key | FinancialDetailsWB     | FinancialDetails_home | FinancialDetails_home_rowNum | Throws_notThrows                   |
      | Asset Value | up to 18 digits            | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> |          |     | financial_details.xlsx | lease_land_details    | 183                          | does not throw any error           |
      | Asset Value | up to 18 digits            | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> |          |     | financial_details.xlsx | lease_land_details    | 184                          | does not throw any error           |
      | Asset Value | both digits and characters | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> |          |     | financial_details.xlsx | lease_land_details    | 185                          | throws an error with error message |
      | Asset Value | special characters         | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> |          |     | financial_details.xlsx | lease_land_details    | 186                          | throws an error with error message |
      | Asset Value | space                      | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> |          |     | financial_details.xlsx | lease_land_details    | 187                          | throws an error with error message |
      | Asset Value | paise format               | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> |          |     | financial_details.xlsx | lease_land_details    | 188                          | does not throw any error           |
      | Asset Value | zero value                 | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> |          |     | financial_details.xlsx | lease_land_details    | 189                          | does not throw any error           |
      | Asset Value | more than 18 digits        | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> |          |     | financial_details.xlsx | lease_land_details    | 190                          | throws an error with error message |

  # ${ ProductType : ["IHF","IAF"]}
# ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
#${Occupation:["Agriculture"]}
    @Islamic
    @Release
@Part-2
    @ImplementedBy-harshita.nayak
    Examples:
      | Field_Name  | var                        | ApplicationStage   | ApplicantType   | ProductType   | Occupation   | category | key | FinancialDetailsWB     | FinancialDetails_home | FinancialDetails_home_rowNum | Throws_notThrows                   |
      | Asset Value | valid value                | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> |          |     | financial_details.xlsx | lease_land_details    | 183                          | does not throw any error           |
      | Asset Value | up to 18 digits            | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> |          |     | financial_details.xlsx | lease_land_details    | 184                          | does not throw any error           |
      | Asset Value | both digits and characters | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> |          |     | financial_details.xlsx | lease_land_details    | 185                          | throws an error with error message |
      | Asset Value | special characters         | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> |          |     | financial_details.xlsx | lease_land_details    | 186                          | throws an error with error message |
      | Asset Value | space                      | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> |          |     | financial_details.xlsx | lease_land_details    | 187                          | throws an error with error message |
      | Asset Value | paise format               | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> |          |     | financial_details.xlsx | lease_land_details    | 188                          | does not throw any error           |
      | Asset Value | zero value                 | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> |          |     | financial_details.xlsx | lease_land_details    | 189                          | does not throw any error           |
      | Asset Value | more than 18 digits        | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> |          |     | financial_details.xlsx | lease_land_details    | 190                          | throws an error with error message |
    #${ProductType:["IPF"]}
    #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
      #${category:["bonds"]}
    #${Occupation:["Agriculture"]}
    @Islamic
    @Release
@Part-2
    @ImplementedBy-harshita.nayak
    Examples:
      | Field_Name  | var                        | ApplicationStage   | ApplicantType   | ProductType   | Occupation   | category   | key | FinancialDetailsWB     | FinancialDetails_home | FinancialDetails_home_rowNum | Throws_notThrows                   |
      | Asset Value | valid value                | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> | <category> |     | financial_details.xlsx | lease_land_details    | 183                          | does not throw any error           |
      | Asset Value | up to 18 digits            | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> | <category> |     | financial_details.xlsx | lease_land_details    | 184                          | does not throw any error           |
      | Asset Value | both digits and characters | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> | <category> |     | financial_details.xlsx | lease_land_details    | 185                          | throws an error with error message |
      | Asset Value | special characters         | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> | <category> |     | financial_details.xlsx | lease_land_details    | 186                          | throws an error with error message |
      | Asset Value | space                      | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> | <category> |     | financial_details.xlsx | lease_land_details    | 187                          | throws an error with error message |
      | Asset Value | paise format               | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> | <category> |     | financial_details.xlsx | lease_land_details    | 188                          | does not throw any error           |
      | Asset Value | zero value                 | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> | <category> |     | financial_details.xlsx | lease_land_details    | 189                          | does not throw any error           |
      | Asset Value | more than 18 digits        | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> | <category> |     | financial_details.xlsx | lease_land_details    | 190                          | throws an error with error message |

      # ${ProductType:["FAS","GL","JLG","SHG"]}
    #${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Occupation:["Agriculture"]}
   @NotImplemented
    Examples:
      | Field_Name  | var                        | ApplicationStage   | ApplicantType   | ProductType   | Occupation   | category | key | FinancialDetailsWB     | FinancialDetails_home | FinancialDetails_home_rowNum | Throws_notThrows                   |
      | Asset Value | up to 18 digits            | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> |          |     | financial_details.xlsx | lease_land_details    | 183                          | does not throw any error           |
      | Asset Value | up to 18 digits            | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> |          |     | financial_details.xlsx | lease_land_details    | 184                          | does not throw any error           |
      | Asset Value | both digits and characters | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> |          |     | financial_details.xlsx | lease_land_details    | 185                          | throws an error with error message |
      | Asset Value | special characters         | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> |          |     | financial_details.xlsx | lease_land_details    | 186                          | throws an error with error message |
      | Asset Value | space                      | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> |          |     | financial_details.xlsx | lease_land_details    | 187                          | throws an error with error message |
      | Asset Value | paise format               | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> |          |     | financial_details.xlsx | lease_land_details    | 188                          | does not throw any error           |
      | Asset Value | zero value                 | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> |          |     | financial_details.xlsx | lease_land_details    | 189                          | does not throw any error           |
      | Asset Value | more than 18 digits        | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> |          |     | financial_details.xlsx | lease_land_details    | 190                          | throws an error with error message |

  Scenario Outline: ACAUTOCAS-3416: Validating Asset Type Description in Lease Land Details with <var> mandatory field
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user open Employment Details page on the basis of "<ApplicationStage>"
    And user reads employment details excel from datatable on the basis of "<Occupation>" type
      | employment_details.xlsx | home | 3 | Agriculture |
    And user fill employment details with Occupation Type as "<Occupation>"
    And user open financial details
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_home>" and row <FinancialDetails_home_rowNum>
    When user fills "<Field_Name>" field with "<var>" in lease land details
    Then "<Field_Name>" field "<Throws_notThrows>" in lease land details
    #${ ProductType : ["PL","HL","AL","EDU","OMNI","CEQ", "KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Occupation:["Agriculture"]}
    @Release @Part-2
    @ImplementedBy-ankit.yadav
    @Conventional
    Examples:
      | Field_Name             | var                            | ApplicationStage   | ApplicantType   | ProductType   | Occupation   | category | key | FinancialDetailsWB     | FinancialDetails_home | FinancialDetails_home_rowNum | Throws_notThrows         |
      | Asset Type Description | with valid value               | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> |          |     | financial_details.xlsx | lease_land_details    | 191                          | does not throw any error |
      | Asset Type Description | with both digits and character | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> |          |     | financial_details.xlsx | lease_land_details    | 192                          | does not throw any error |
      | Asset Type Description | with negative value            | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> |          |     | financial_details.xlsx | lease_land_details    | 193                          | does not throw any error |
      | Asset Type Description | space                          | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> |          |     | financial_details.xlsx | lease_land_details    | 194                          | does not throw any error |
      | Asset Type Description | with special character         | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> |          |     | financial_details.xlsx | lease_land_details    | 195                          | does not throw any error |

# ${ ProductType : ["IHF","IAF"]}
# ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
#${Occupation:["Agriculture"]}
    @Islamic
    @Release
@Part-2
    @ImplementedBy-harshita.nayak
    Examples:
      | Field_Name             | var                            | ApplicationStage   | ApplicantType   | ProductType   | Occupation   | category | key | FinancialDetailsWB     | FinancialDetails_home | FinancialDetails_home_rowNum | Throws_notThrows         |
      | Asset Type Description | with valid value               | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> |          |     | financial_details.xlsx | lease_land_details    | 191                          | does not throw any error |
      | Asset Type Description | with both digits and character | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> |          |     | financial_details.xlsx | lease_land_details    | 192                          | does not throw any error |
      | Asset Type Description | with negative value            | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> |          |     | financial_details.xlsx | lease_land_details    | 193                          | does not throw any error |
      | Asset Type Description | space                          | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> |          |     | financial_details.xlsx | lease_land_details    | 194                          | does not throw any error |
      | Asset Type Description | with special character         | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> |          |     | financial_details.xlsx | lease_land_details    | 195                          | does not throw any error |
    #${ProductType:["IPF"]}
    #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
      #${category:["bonds"]}
    #${Occupation:["Agriculture"]}
    @Islamic
    @Release
@Part-2
    @ImplementedBy-harshita.nayak
    Examples:
      | Field_Name             | var                            | ApplicationStage   | ProductType     | ApplicantType | Occupation   | category   | key | FinancialDetailsWB     | FinancialDetails_home | FinancialDetails_home_rowNum | Throws_notThrows         |
      | Asset Type Description | with valid value               | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> | <category> |     | financial_details.xlsx | lease_land_details    | 191                          | does not throw any error |
      | Asset Type Description | with both digits and character | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> | <category> |     | financial_details.xlsx | lease_land_details    | 192                          | does not throw any error |
      | Asset Type Description | with negative value            | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> | <category> |     | financial_details.xlsx | lease_land_details    | 193                          | does not throw any error |
      | Asset Type Description | space                          | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> | <category> |     | financial_details.xlsx | lease_land_details    | 194                          | does not throw any error |
      | Asset Type Description | with special character         | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> | <category> |     | financial_details.xlsx | lease_land_details    | 195                          | does not throw any error |

 # ${ProductType:["FAS","GL","JLG","SHG"]}
#${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
#${Occupation:["Agriculture"]}
   @NotImplemented
    Examples:
      | Field_Name             | var                            | ApplicationStage   | ProductType   | ApplicantType   | Occupation   | category | key | FinancialDetailsWB     | FinancialDetails_home | FinancialDetails_home_rowNum | Throws_notThrows         |
      | Asset Type Description | with valid value               | <ApplicationStage> | <ProductType> | <ApplicantType> | <Occupation> |          |     | financial_details.xlsx | lease_land_details    | 191                          | does not throw any error |
      | Asset Type Description | with both digits and character | <ApplicationStage> | <ProductType> | <ApplicantType> | <Occupation> |          |     | financial_details.xlsx | lease_land_details    | 192                          | does not throw any error |
      | Asset Type Description | with negative value            | <ApplicationStage> | <ProductType> | <ApplicantType> | <Occupation> |          |     | financial_details.xlsx | lease_land_details    | 193                          | does not throw any error |
      | Asset Type Description | space                          | <ApplicationStage> | <ProductType> | <ApplicantType> | <Occupation> |          |     | financial_details.xlsx | lease_land_details    | 194                          | does not throw any error |
      | Asset Type Description | with special character         | <ApplicationStage> | <ProductType> | <ApplicantType> | <Occupation> |          |     | financial_details.xlsx | lease_land_details    | 195                          | does not throw any error |


Scenario Outline: ACAUTOCAS-17142: Validating Survey Number in Lease Land Details with <var> mandatory field
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user open Employment Details page on the basis of "<ApplicationStage>"
    And user reads employment details excel from datatable on the basis of "<Occupation>" type
      | employment_details.xlsx | home | 3 | Agriculture |
    And user fill employment details with Occupation Type as "<Occupation>"
    And user open financial details
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_home>" and row <FinancialDetails_home_rowNum>
    When user fills "<Field_Name>" field with "<var>" in lease land details
    Then "<Field_Name>" field "<Throws_notThrows>" in lease land details
    #${ ProductType : ["PL","HL","AL","EDU","OMNI","CEQ", "KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Occupation:["Agriculture"]}
    @Release @Part-2
    @ImplementedBy-ankit.yadav
    @Conventional
    Examples:
      | Field_Name    | var                              | ApplicationStage   | ApplicantType   | ProductType   | Occupation   | category | key | FinancialDetailsWB     | FinancialDetails_home | FinancialDetails_home_rowNum | Throws_notThrows                   |
      | Survey Number | with valid                       | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> |          |     | financial_details.xlsx | lease_land_details    | 199                          | does not throw any error           |
      | Survey Number | with both digits and character   | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> |          |     | financial_details.xlsx | lease_land_details    | 200                          | does not throw any error           |
      | Survey Number | with negative number             | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> |          |     | financial_details.xlsx | lease_land_details    | 201                          | does not throw any error           |
      | Survey Number | alphanumeric with hyphen         | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> |          |     | financial_details.xlsx | lease_land_details    | 202                          | does not throw any error           |
      | Survey Number | with space(bug)                  | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> |          |     | financial_details.xlsx | lease_land_details    | 203                          | does not throw any error           |
      | Survey Number | alphanumeric with hash symbol    | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> |          |     | financial_details.xlsx | lease_land_details    | 204                          | does not throw any error           |
      | Survey Number | alphanumeric with comma          | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> |          |     | financial_details.xlsx | lease_land_details    | 205                          | does not throw any error           |
      | Survey Number | alphanumeric with dot            | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> |          |     | financial_details.xlsx | lease_land_details    | 206                          | does not throw any error           |
      | Survey Number | alphanumeric with forward slash  | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> |          |     | financial_details.xlsx | lease_land_details    | 207                          | does not throw any error           |
      | Survey Number | alphanumeric with backward slash | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> |          |     | financial_details.xlsx | lease_land_details    | 208                          | does not throw any error           |
      | Survey Number | with special character           | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> |          |     | financial_details.xlsx | lease_land_details    | 209                          | throws an error with error message |

    # ${ ProductType : ["IHF","IAF"]}
# ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
#${Occupation:["Agriculture"]}
    @Islamic
    @Release
@Part-2
    @ImplementedBy-harshita.nayak
    Examples:
      | Field_Name    | var                              | ApplicationStage   | ApplicantType   | ProductType   | Occupation   | category | key | FinancialDetailsWB     | FinancialDetails_home | FinancialDetails_home_rowNum | Throws_notThrows                   |
      | Survey Number | with valid                       | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> |          |     | financial_details.xlsx | lease_land_details    | 199                          | does not throw any error           |
      | Survey Number | with both digits and character   | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> |          |     | financial_details.xlsx | lease_land_details    | 200                          | does not throw any error           |
      | Survey Number | with negative number             | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> |          |     | financial_details.xlsx | lease_land_details    | 201                          | does not throw any error           |
      | Survey Number | alphanumeric with hyphen         | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> |          |     | financial_details.xlsx | lease_land_details    | 202                          | does not throw any error           |
      | Survey Number | with space(bug)                  | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> |          |     | financial_details.xlsx | lease_land_details    | 203                          | does not throw any error           |
      | Survey Number | alphanumeric with hash symbol    | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> |          |     | financial_details.xlsx | lease_land_details    | 204                          | does not throw any error           |
      | Survey Number | alphanumeric with comma          | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> |          |     | financial_details.xlsx | lease_land_details    | 205                          | does not throw any error           |
      | Survey Number | alphanumeric with dot            | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> |          |     | financial_details.xlsx | lease_land_details    | 206                          | does not throw any error           |
      | Survey Number | alphanumeric with forward slash  | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> |          |     | financial_details.xlsx | lease_land_details    | 207                          | does not throw any error           |
      | Survey Number | alphanumeric with backward slash | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> |          |     | financial_details.xlsx | lease_land_details    | 208                          | does not throw any error           |
      | Survey Number | with special character           | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> |          |     | financial_details.xlsx | lease_land_details    | 209                          | throws an error with error message |
    #${ProductType:["IPF"]}
    #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
      #${category:["bonds"]}
    #${Occupation:["Agriculture"]}
    @Islamic
    @Release
@Part-2
    @ImplementedBy-harshita.nayak
    Examples:
      | Field_Name    | var                              | ApplicationStage   | ProductType     | ApplicantType | Occupation   | category   | key | FinancialDetailsWB     | FinancialDetails_home | FinancialDetails_home_rowNum | Throws_notThrows                   |
      | Survey Number | with valid                       | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> | <category> |     | financial_details.xlsx | lease_land_details    | 199                          | does not throw any error           |
      | Survey Number | with both digits and character   | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> | <category> |     | financial_details.xlsx | lease_land_details    | 200                          | does not throw any error           |
      | Survey Number | with negative number             | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> | <category> |     | financial_details.xlsx | lease_land_details    | 201                          | does not throw any error           |
      | Survey Number | alphanumeric with hyphen         | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> | <category> |     | financial_details.xlsx | lease_land_details    | 202                          | does not throw any error           |
      | Survey Number | with space(bug)                  | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> | <category> |     | financial_details.xlsx | lease_land_details    | 203                          | does not throw any error           |
      | Survey Number | alphanumeric with hash symbol    | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> | <category> |     | financial_details.xlsx | lease_land_details    | 204                          | does not throw any error           |
      | Survey Number | alphanumeric with comma          | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> | <category> |     | financial_details.xlsx | lease_land_details    | 205                          | does not throw any error           |
      | Survey Number | alphanumeric with dot            | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> | <category> |     | financial_details.xlsx | lease_land_details    | 206                          | does not throw any error           |
      | Survey Number | alphanumeric with forward slash  | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> | <category> |     | financial_details.xlsx | lease_land_details    | 207                          | does not throw any error           |
      | Survey Number | alphanumeric with backward slash | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> | <category> |     | financial_details.xlsx | lease_land_details    | 208                          | does not throw any error           |
      | Survey Number | with special character           | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> | <category> |     | financial_details.xlsx | lease_land_details    | 209                          | throws an error with error message |

     # ${ProductType:["FAS","GL","JLG","SHG"]}
#${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
#${Occupation:["Agriculture"]}
   @NotImplemented
    Examples:
      | Field_Name    | var                              | ApplicationStage   | ProductType   | ApplicantType   | Occupation   | category | key | FinancialDetailsWB     | FinancialDetails_home | FinancialDetails_home_rowNum | Throws_notThrows                   |
      | Survey Number | with valid                       | <ApplicationStage> | <ProductType> | <ApplicantType> | <Occupation> |          |     | financial_details.xlsx | lease_land_details    | 199                          | does not throw any error           |
      | Survey Number | with both digits and character   | <ApplicationStage> | <ProductType> | <ApplicantType> | <Occupation> |          |     | financial_details.xlsx | lease_land_details    | 200                          | does not throw any error           |
      | Survey Number | with negative number             | <ApplicationStage> | <ProductType> | <ApplicantType> | <Occupation> |          |     | financial_details.xlsx | lease_land_details    | 201                          | does not throw any error           |
      | Survey Number | alphanumeric with hyphen         | <ApplicationStage> | <ProductType> | <ApplicantType> | <Occupation> |          |     | financial_details.xlsx | lease_land_details    | 202                          | does not throw any error           |
      | Survey Number | with space(bug)                  | <ApplicationStage> | <ProductType> | <ApplicantType> | <Occupation> |          |     | financial_details.xlsx | lease_land_details    | 203                          | does not throw any error           |
      | Survey Number | alphanumeric with hash symbol    | <ApplicationStage> | <ProductType> | <ApplicantType> | <Occupation> |          |     | financial_details.xlsx | lease_land_details    | 204                          | does not throw any error           |
      | Survey Number | alphanumeric with comma          | <ApplicationStage> | <ProductType> | <ApplicantType> | <Occupation> |          |     | financial_details.xlsx | lease_land_details    | 205                          | does not throw any error           |
      | Survey Number | alphanumeric with dot            | <ApplicationStage> | <ProductType> | <ApplicantType> | <Occupation> |          |     | financial_details.xlsx | lease_land_details    | 206                          | does not throw any error           |
      | Survey Number | alphanumeric with forward slash  | <ApplicationStage> | <ProductType> | <ApplicantType> | <Occupation> |          |     | financial_details.xlsx | lease_land_details    | 207                          | does not throw any error           |
      | Survey Number | alphanumeric with backward slash | <ApplicationStage> | <ProductType> | <ApplicantType> | <Occupation> |          |     | financial_details.xlsx | lease_land_details    | 208                          | does not throw any error           |
      | Survey Number | with special character           | <ApplicationStage> | <ProductType> | <ApplicantType> | <Occupation> |          |     | financial_details.xlsx | lease_land_details    | 209                          | throws an error with error message |


Scenario Outline: ACAUTOCAS-17143: Validating Landowner Name in Lease Land Details Details with <var> mandatory field
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user open Employment Details page on the basis of "<ApplicationStage>"
    And user reads employment details excel from datatable on the basis of "<Occupation>" type
      | employment_details.xlsx | home | 3 | Agriculture |
    And user fill employment details with Occupation Type as "<Occupation>"
    And user open financial details
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_home>" and row <FinancialDetails_home_rowNum>
    When user fills "<Field_Name>" field with "<var>" in lease land details
    Then "<Field_Name>" field "<Throws_notThrows>" in lease land details
    #${ ProductType : ["PL","HL","AL","EDU","OMNI","CEQ", "KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Occupation:["Agriculture"]}
    @Release @Part-2
    @ImplementedBy-ankit.yadav
    @Conventional
    Examples:
      | Field_Name     | var                                | ApplicationStage   | ApplicantType   | ProductType   | Occupation   | category | key | FinancialDetailsWB     | FinancialDetails_home | FinancialDetails_home_rowNum | Throws_notThrows                   |
      | Landowner Name | with valid                         | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> |          |     | financial_details.xlsx | lease_land_details    | 210                          | does not throw any error           |
      | Landowner Name | with both digits and character     | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> |          |     | financial_details.xlsx | lease_land_details    | 211                          | does not throw any error           |
      | Landowner Name | with negative number               | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> |          |     | financial_details.xlsx | lease_land_details    | 212                          | does not throw any error           |
      | Landowner Name | alphanumeric with hyphen           | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> |          |     | financial_details.xlsx | lease_land_details    | 213                          | does not throw any error           |
      | Landowner Name | with space                         | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> |          |     | financial_details.xlsx | lease_land_details    | 214                          | does not throw any error           |
      | Landowner Name | alphanumeric with bracket          | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> |          |     | financial_details.xlsx | lease_land_details    | 215                          | does not throw any error           |
      | Landowner Name | alphanumeric with comma            | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> |          |     | financial_details.xlsx | lease_land_details    | 216                          | does not throw any error           |
      | Landowner Name | alphanumeric with and operator     | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> |          |     | financial_details.xlsx | lease_land_details    | 217                          | does not throw any error           |
      | Landowner Name | alphanumeric with exclamation mark | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> |          |     | financial_details.xlsx | lease_land_details    | 218                          | does not throw any error           |
      | Landowner Name | alphanumeric with dot              | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> |          |     | financial_details.xlsx | lease_land_details    | 219                          | does not throw any error           |
      | Landowner Name | alphanumeric with dollar           | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> |          |     | financial_details.xlsx | lease_land_details    | 220                          | does not throw any error           |
      | Landowner Name | alphanumeric with forward slash    | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> |          |     | financial_details.xlsx | lease_land_details    | 221                          | does not throw any error           |
      | Landowner Name | with special character             | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> |          |     | financial_details.xlsx | lease_land_details    | 222                          | throws an error with error message |


# ${ ProductType : ["IHF","IAF"]}
# ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
#${Occupation:["Agriculture"]}
    @Islamic
    @Release
@Part-2
    @ImplementedBy-harshita.nayak
    Examples:
      | Field_Name     | var                                | ApplicationStage   | ApplicantType   | ProductType   | Occupation   | category | key | FinancialDetailsWB     | FinancialDetails_home | FinancialDetails_home_rowNum | Throws_notThrows                   |
      | Landowner Name | with valid                         | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> |          |     | financial_details.xlsx | lease_land_details    | 210                          | does not throw any error           |
      | Landowner Name | with both digits and character     | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> |          |     | financial_details.xlsx | lease_land_details    | 211                          | does not throw any error           |
      | Landowner Name | with negative number               | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> |          |     | financial_details.xlsx | lease_land_details    | 212                          | does not throw any error           |
      | Landowner Name | alphanumeric with hyphen           | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> |          |     | financial_details.xlsx | lease_land_details    | 213                          | does not throw any error           |
      | Landowner Name | with space                         | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> |          |     | financial_details.xlsx | lease_land_details    | 214                          | does not throw any error           |
      | Landowner Name | alphanumeric with bracket          | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> |          |     | financial_details.xlsx | lease_land_details    | 215                          | does not throw any error           |
      | Landowner Name | alphanumeric with comma            | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> |          |     | financial_details.xlsx | lease_land_details    | 216                          | does not throw any error           |
      | Landowner Name | alphanumeric with and operator     | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> |          |     | financial_details.xlsx | lease_land_details    | 217                          | does not throw any error           |
      | Landowner Name | alphanumeric with exclamation mark | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> |          |     | financial_details.xlsx | lease_land_details    | 218                          | does not throw any error           |
      | Landowner Name | alphanumeric with dot              | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> |          |     | financial_details.xlsx | lease_land_details    | 219                          | does not throw any error           |
      | Landowner Name | alphanumeric with dollar           | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> |          |     | financial_details.xlsx | lease_land_details    | 220                          | does not throw any error           |
      | Landowner Name | alphanumeric with forward slash    | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> |          |     | financial_details.xlsx | lease_land_details    | 221                          | does not throw any error           |
      | Landowner Name | with special character             | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> |          |     | financial_details.xlsx | lease_land_details    | 222                          | throws an error with error message |
 #${ProductType:["IPF"]}
    #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
      #${category:["bonds"]}
    #${Occupation:["Agriculture"]}
    @Islamic
    @Release
@Part-2
    @ImplementedBy-harshita.nayak
    Examples:
      | Field_Name     | var                                | ApplicationStage   | ApplicantType   | ProductType   | Occupation   | category   | key | FinancialDetailsWB     | FinancialDetails_home | FinancialDetails_home_rowNum | Throws_notThrows                   |
      | Landowner Name | with valid                         | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> | <category> |     | financial_details.xlsx | lease_land_details    | 210                          | does not throw any error           |
      | Landowner Name | with both digits and character     | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> | <category> |     | financial_details.xlsx | lease_land_details    | 211                          | does not throw any error           |
      | Landowner Name | with negative number               | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> | <category> |     | financial_details.xlsx | lease_land_details    | 212                          | does not throw any error           |
      | Landowner Name | alphanumeric with hyphen           | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> | <category> |     | financial_details.xlsx | lease_land_details    | 213                          | does not throw any error           |
      | Landowner Name | with space                         | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> | <category> |     | financial_details.xlsx | lease_land_details    | 214                          | does not throw any error           |
      | Landowner Name | alphanumeric with bracket          | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> | <category> |     | financial_details.xlsx | lease_land_details    | 215                          | does not throw any error           |
      | Landowner Name | alphanumeric with comma            | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> | <category> |     | financial_details.xlsx | lease_land_details    | 216                          | does not throw any error           |
      | Landowner Name | alphanumeric with and operator     | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> | <category> |     | financial_details.xlsx | lease_land_details    | 217                          | does not throw any error           |
      | Landowner Name | alphanumeric with exclamation mark | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> | <category> |     | financial_details.xlsx | lease_land_details    | 218                          | does not throw any error           |
      | Landowner Name | alphanumeric with dot              | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> | <category> |     | financial_details.xlsx | lease_land_details    | 219                          | does not throw any error           |
      | Landowner Name | alphanumeric with dollar           | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> | <category> |     | financial_details.xlsx | lease_land_details    | 220                          | does not throw any error           |
      | Landowner Name | alphanumeric with forward slash    | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> | <category> |     | financial_details.xlsx | lease_land_details    | 221                          | does not throw any error           |
      | Landowner Name | with special character             | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> | <category> |     | financial_details.xlsx | lease_land_details    | 222                          | throws an error with error message |

 # ${ProductType:["FAS","GL","JLG","SHG"]}
#${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
#${Occupation:["Agriculture"]}
   @NotImplemented
    Examples:
      | Field_Name     | var                                | ApplicationStage   | ApplicantType   | ProductType   | Occupation   | category | key | FinancialDetailsWB     | FinancialDetails_home | FinancialDetails_home_rowNum | Throws_notThrows                   |
      | Landowner Name | with valid                         | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> |          |     | financial_details.xlsx | lease_land_details    | 210                          | does not throw any error           |
      | Landowner Name | with both digits and character     | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> |          |     | financial_details.xlsx | lease_land_details    | 211                          | does not throw any error           |
      | Landowner Name | with negative number               | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> |          |     | financial_details.xlsx | lease_land_details    | 212                          | does not throw any error           |
      | Landowner Name | alphanumeric with hyphen           | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> |          |     | financial_details.xlsx | lease_land_details    | 213                          | does not throw any error           |
      | Landowner Name | with space                         | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> |          |     | financial_details.xlsx | lease_land_details    | 214                          | does not throw any error           |
      | Landowner Name | alphanumeric with bracket          | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> |          |     | financial_details.xlsx | lease_land_details    | 215                          | does not throw any error           |
      | Landowner Name | alphanumeric with comma            | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> |          |     | financial_details.xlsx | lease_land_details    | 216                          | does not throw any error           |
      | Landowner Name | alphanumeric with and operator     | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> |          |     | financial_details.xlsx | lease_land_details    | 217                          | does not throw any error           |
      | Landowner Name | alphanumeric with exclamation mark | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> |          |     | financial_details.xlsx | lease_land_details    | 218                          | does not throw any error           |
      | Landowner Name | alphanumeric with dot              | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> |          |     | financial_details.xlsx | lease_land_details    | 219                          | does not throw any error           |
      | Landowner Name | alphanumeric with dollar           | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> |          |     | financial_details.xlsx | lease_land_details    | 220                          | does not throw any error           |
      | Landowner Name | alphanumeric with forward slash    | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> |          |     | financial_details.xlsx | lease_land_details    | 221                          | does not throw any error           |
      | Landowner Name | with special character             | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> |          |     | financial_details.xlsx | lease_land_details    | 222                          | throws an error with error message |


  @Perishable
Scenario Outline: ACAUTOCAS-17144: Validating Land Area in Lease Land Details Details with <var> mandatory field
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user open Employment Details page on the basis of "<ApplicationStage>"
    And user reads employment details excel from datatable on the basis of "<Occupation>" type
      | employment_details.xlsx | home | 3 | Agriculture |
    And user fill employment details with Occupation Type as "<Occupation>"
    And user open financial details
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_home>" and row <FinancialDetails_home_rowNum>
    When user fills "<Field_Name>" field with "<var>" in lease land details
    Then "<Field_Name>" field "<Throws_notThrows>" in lease land details
#    ${ ProductType : ["PL","HL","AL","EDU","OMNI","CEQ", "KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Occupation:["Agriculture"]}
    @Release @Part-2
    @ImplementedBy-ankit.yadav
    @Conventional
    Examples:
      | Field_Name           | var                            | ApplicationStage   | ApplicantType   | ProductType   | Occupation   | category | key | FinancialDetailsWB     | FinancialDetails_home | FinancialDetails_home_rowNum | Throws_notThrows                   |
      | Land Area (in Acres) | with valid                     | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> |          |     | financial_details.xlsx | lease_land_details    | 196                          | does not throw any error           |
      | Land Area (in Acres) | with both digits and character | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> |          |     | financial_details.xlsx | lease_land_details    | 197                          | throws an error with error message |
      | Land Area (in Acres) | with special character         | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> |          |     | financial_details.xlsx | lease_land_details    | 198                          | throws an error with error message |

 # ${ ProductType : ["IHF","IAF"]}
# ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
#${Occupation:["Agriculture"]}
    @Islamic
    @Release
@Part-2
    @ImplementedBy-harshita.nayak
    Examples:
      | Field_Name           | var                            | ApplicationStage   | ApplicantType   | ProductType   | Occupation   | category | key | FinancialDetailsWB     | FinancialDetails_home | FinancialDetails_home_rowNum | Throws_notThrows                   |
      | Land Area (in Acres) | with valid                     | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> |          |     | financial_details.xlsx | lease_land_details    | 196                          | does not throw any error           |
      | Land Area (in Acres) | with both digits and character | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> |          |     | financial_details.xlsx | lease_land_details    | 197                          | throws an error with error message |
      | Land Area (in Acres) | with special character         | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> |          |     | financial_details.xlsx | lease_land_details    | 198                          | throws an error with error message |

  #${ProductType:["IPF"]}
    #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
      #${category:["bonds"]}
    #${Occupation:["Agriculture"]}
    @Islamic
    @Release
@Part-2
    @ImplementedBy-harshita.nayak
    Examples:
      | Field_Name           | var                            | ApplicationStage   | ApplicantType   | ProductType   | Occupation   | category   | key | FinancialDetailsWB     | FinancialDetails_home | FinancialDetails_home_rowNum | Throws_notThrows                   |
      | Land Area (in Acres) | with valid                     | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> | <category> |     | financial_details.xlsx | lease_land_details    | 196                          | does not throw any error           |
      | Land Area (in Acres) | with both digits and character | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> | <category> |     | financial_details.xlsx | lease_land_details    | 197                          | throws an error with error message |
      | Land Area (in Acres) | with special character         | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> | <category> |     | financial_details.xlsx | lease_land_details    | 198                          | throws an error with error message |


     # ${ProductType:["FAS","GL","JLG","SHG"]}
#${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
#${Occupation:["Agriculture"]}
   @NotImplemented
    Examples:
      | Field_Name           | var                            | ApplicationStage   | ApplicantType   | ProductType   | Occupation   | category | key | FinancialDetailsWB     | FinancialDetails_home | FinancialDetails_home_rowNum | Throws_notThrows                   |
      | Land Area (in Acres) | with valid                     | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> |          |     | financial_details.xlsx | lease_land_details    | 196                          | does not throw any error           |
      | Land Area (in Acres) | with both digits and character | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> |          |     | financial_details.xlsx | lease_land_details    | 197                          | throws an error with error message |
      | Land Area (in Acres) | with special character         | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> |          |     | financial_details.xlsx | lease_land_details    | 198                          | throws an error with error message |


  Scenario Outline: ACAUTOCAS-3406: Validating Last LandHolding Date in Lease Land Details with <var> mandatory field
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user open Employment Details page on the basis of "<ApplicationStage>"
    And user reads employment details excel from datatable on the basis of "<Occupation>" type
      | employment_details.xlsx | home | 3 | Agriculture |
    And user fill employment details with Occupation Type as "<Occupation>"
    And user open financial details
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_home>" and row <FinancialDetails_home_rowNum>
    When user fills "<Field_Name>" field with "<var>" in lease land details
    Then "<Field_Name>" field "<Throws_notThrows>" in lease land details
    #${ ProductType : ["PL","HL","AL","EDU","OMNI","CEQ", "KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Occupation:["Agriculture"]}
    @Release @Part-2
    @ImplementedBy-ankit.yadav
    @Conventional
    Examples:
      | Field_Name            | var                    | ApplicationStage   | ApplicantType   | ProductType   | Occupation   | category | key | FinancialDetailsWB     | FinancialDetails_home | FinancialDetails_home_rowNum | Throws_notThrows                   |
      | Last Landholding Date | valid date             | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> |          |     | financial_details.xlsx | lease_land_details    | 223                          | does not throw any error           |
      | Last Landholding Date | less than current date | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> |          |     | financial_details.xlsx | lease_land_details    | 224                          | does not throw any error           |
      | Last Landholding Date | before 1942            | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> |          |     | financial_details.xlsx | lease_land_details    | 225                          | throws an error with error message |
      | Last Landholding Date | current date           | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> |          |     | financial_details.xlsx | lease_land_details    | 226                          | does not throw any error           |
      | Last Landholding Date | future date            | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> |          |     | financial_details.xlsx | lease_land_details    | 227                          | does not throw any error           |
      | Last Landholding Date | year equal to 1942     | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> |          |     | financial_details.xlsx | lease_land_details    | 256                          | does not throw any error           |
      | Last Landholding Date | special characters     | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> |          |     | financial_details.xlsx | lease_land_details    | 228                          | throws an error with error message |
      | Last Landholding Date | invalid date format    | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> |          |     | financial_details.xlsx | lease_land_details    | 229                          | throws an error with error message |

# ${ ProductType : ["IHF","IAF"]}
# ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
#${Occupation:["Agriculture"]}
    @Islamic
    @Release
@Part-2
    @ImplementedBy-harshita.nayak
    Examples:
      | Field_Name            | var                    | ApplicationStage   | ApplicantType   | ProductType   | Occupation   | category | key | FinancialDetailsWB     | FinancialDetails_home | FinancialDetails_home_rowNum | Throws_notThrows                   |
      | Last Landholding Date | valid date             | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> |          |     | financial_details.xlsx | lease_land_details    | 223                          | does not throw any error           |
      | Last Landholding Date | less than current date | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> |          |     | financial_details.xlsx | lease_land_details    | 224                          | does not throw any error           |
      | Last Landholding Date | before 1942            | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> |          |     | financial_details.xlsx | lease_land_details    | 225                          | throws an error with error message |
      | Last Landholding Date | current date           | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> |          |     | financial_details.xlsx | lease_land_details    | 226                          | does not throw any error           |
      | Last Landholding Date | future date            | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> |          |     | financial_details.xlsx | lease_land_details    | 227                          | does not throw any error           |
      | Last Landholding Date | year equal to 1942     | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> |          |     | financial_details.xlsx | lease_land_details    | 256                          | does not throw any error           |
      | Last Landholding Date | special characters     | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> |          |     | financial_details.xlsx | lease_land_details    | 228                          | throws an error with error message |
      | Last Landholding Date | invalid date format    | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> |          |     | financial_details.xlsx | lease_land_details    | 229                          | throws an error with error message |

      #${ProductType:["IPF"]}
    #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
      #${category:["bonds"]}
    #${Occupation:["Agriculture"]}
    @Islamic
    @Release
@Part-2
    @ImplementedBy-harshita.nayak
    Examples:
      | Field_Name            | var                    | ApplicationStage   | ApplicantType   | ProductType   | Occupation   | category   | key | FinancialDetailsWB     | FinancialDetails_home | FinancialDetails_home_rowNum | Throws_notThrows                   |
      | Last Landholding Date | valid date             | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> | <category> |     | financial_details.xlsx | lease_land_details    | 223                          | does not throw any error           |
      | Last Landholding Date | less than current date | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> | <category> |     | financial_details.xlsx | lease_land_details    | 224                          | does not throw any error           |
      | Last Landholding Date | before 1942            | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> | <category> |     | financial_details.xlsx | lease_land_details    | 225                          | throws an error with error message |
      | Last Landholding Date | current date           | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> | <category> |     | financial_details.xlsx | lease_land_details    | 226                          | does not throw any error           |
      | Last Landholding Date | future date            | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> | <category> |     | financial_details.xlsx | lease_land_details    | 227                          | does not throw any error           |
      | Last Landholding Date | year equal to 1942     | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> | <category> |     | financial_details.xlsx | lease_land_details    | 256                          | does not throw any error           |
      | Last Landholding Date | special characters     | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> | <category> |     | financial_details.xlsx | lease_land_details    | 228                          | throws an error with error message |
      | Last Landholding Date | invalid date format    | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> | <category> |     | financial_details.xlsx | lease_land_details    | 229                          | throws an error with error message |


     # ${ProductType:["FAS","GL","JLG","SHG"]}
#${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
#${Occupation:["Agriculture"]}
   @NotImplemented
    Examples:
      | Field_Name            | var                    | ApplicationStage   | ApplicantType   | ProductType   | Occupation   | category | key | FinancialDetailsWB     | FinancialDetails_home | FinancialDetails_home_rowNum | Throws_notThrows                   |
      | Last Landholding Date | valid date             | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> |          |     | financial_details.xlsx | lease_land_details    | 223                          | does not throw any error           |
      | Last Landholding Date | less than current date | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> |          |     | financial_details.xlsx | lease_land_details    | 224                          | does not throw any error           |
      | Last Landholding Date | before 1942            | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> |          |     | financial_details.xlsx | lease_land_details    | 225                          | throws an error with error message |
      | Last Landholding Date | current date           | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> |          |     | financial_details.xlsx | lease_land_details    | 226                          | does not throw any error           |
      | Last Landholding Date | future date            | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> |          |     | financial_details.xlsx | lease_land_details    | 227                          | does not throw any error           |
      | Last Landholding Date | year equal to 1942     | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> |          |     | financial_details.xlsx | lease_land_details    | 256                          | does not throw any error           |
      | Last Landholding Date | special characters     | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> |          |     | financial_details.xlsx | lease_land_details    | 228                          | throws an error with error message |
      | Last Landholding Date | invalid date format    | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> |          |     | financial_details.xlsx | lease_land_details    | 229                          | throws an error with error message |


  Scenario Outline: ACAUTOCAS-3417: Validating Balance Tenor in Lessor Details with <var> mandatory field in lease land details
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user open Employment Details page on the basis of "<ApplicationStage>"
    And user reads employment details excel from datatable on the basis of "<Occupation>" type
      | employment_details.xlsx | home | 3 | Agriculture |
    And user fill employment details with Occupation Type as "<Occupation>"
    And user open financial details
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_home>" and row <FinancialDetails_home_rowNum>
    When user fills "<Field_Name>" field with "<var>" in lease land details
    Then "<Field_Name>" field "<Throws_notThrows>" in lease land details
    #${ ProductType : ["PL","HL","AL","EDU","OMNI","CEQ", "KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Occupation:["Agriculture"]}
    @Release @Part-2
    @ImplementedBy-ankit.yadav
    @Conventional
    Examples:
      | Field_Name    | var                        | ApplicationStage   | ApplicantType   | ProductType   | Occupation   | category | key | FinancialDetailsWB     | FinancialDetails_home | FinancialDetails_home_rowNum | Throws_notThrows                   |
      | Balance Tenor | valid value                | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> |          |     | financial_details.xlsx | lease_land_details    | 230                          | does not throw any error           |
      | Balance Tenor | both digits and characters | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> |          |     | financial_details.xlsx | lease_land_details    | 231                          | throws an error with error message |
      | Balance Tenor | more than 3 digits         | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> |          |     | financial_details.xlsx | lease_land_details    | 232                          | does not throw any error           |
      | Balance Tenor | special characters         | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> |          |     | financial_details.xlsx | lease_land_details    | 233                          | throws an error with error message |
      | Balance Tenor | &(% with special character | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> |          |     | financial_details.xlsx | lease_land_details    | 234                          | throws an error with error message |
      | Balance Tenor | space                      | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> |          |     | financial_details.xlsx | lease_land_details    | 235                          | throws an error with error message |
      | Balance Tenor | characters                 | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> |          |     | financial_details.xlsx | lease_land_details    | 236                          | throws an error with error message |
      | Balance Tenor | decimal value              | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> |          |     | financial_details.xlsx | lease_land_details    | 237                          | throws an error with error message |
      | Balance Tenor | negative value             | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> |          |     | financial_details.xlsx | lease_land_details    | 238                          | throws an error with error message |
      | Balance Tenor | zero                       | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> |          |     | financial_details.xlsx | lease_land_details    | 239                          | does not throw any error           |

    # ${ ProductType : ["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Occupation:["Agriculture"]}
    @Islamic
    @Release
@Part-2
    @ImplementedBy-harshita.nayak
    Examples:
      | Field_Name    | var                        | ApplicationStage   | ApplicantType   | ProductType   | Occupation   | category | key | FinancialDetailsWB     | FinancialDetails_home | FinancialDetails_home_rowNum | Throws_notThrows                   |
      | Balance Tenor | valid value                | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> |          |     | financial_details.xlsx | lease_land_details    | 230                          | does not throw any error           |
      | Balance Tenor | both digits and characters | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> |          |     | financial_details.xlsx | lease_land_details    | 231                          | throws an error with error message |
      | Balance Tenor | more than 3 digits         | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> |          |     | financial_details.xlsx | lease_land_details    | 232                          | does not throw any error           |
      | Balance Tenor | special characters         | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> |          |     | financial_details.xlsx | lease_land_details    | 233                          | throws an error with error message |
      | Balance Tenor | &(% with special character | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> |          |     | financial_details.xlsx | lease_land_details    | 234                          | throws an error with error message |
      | Balance Tenor | space                      | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> |          |     | financial_details.xlsx | lease_land_details    | 235                          | throws an error with error message |
      | Balance Tenor | characters                 | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> |          |     | financial_details.xlsx | lease_land_details    | 236                          | throws an error with error message |
      | Balance Tenor | decimal value              | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> |          |     | financial_details.xlsx | lease_land_details    | 237                          | throws an error with error message |
      | Balance Tenor | negative value             | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> |          |     | financial_details.xlsx | lease_land_details    | 238                          | throws an error with error message |
      | Balance Tenor | zero                       | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> |          |     | financial_details.xlsx | lease_land_details    | 239                          | does not throw any error           |

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
      | Field_Name    | var                        | ApplicationStage   | ApplicantType   | ProductType   | Occupation   | category   | key | FinancialDetailsWB     | FinancialDetails_home | FinancialDetails_home_rowNum | Throws_notThrows                   |
      | Balance Tenor | valid value                | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> | <category> |     | financial_details.xlsx | lease_land_details    | 230                          | does not throw any error           |
      | Balance Tenor | both digits and characters | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> | <category> |     | financial_details.xlsx | lease_land_details    | 231                          | throws an error with error message |
      | Balance Tenor | more than 3 digits         | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> | <category> |     | financial_details.xlsx | lease_land_details    | 232                          | does not throw any error           |
      | Balance Tenor | special characters         | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> | <category> |     | financial_details.xlsx | lease_land_details    | 233                          | throws an error with error message |
      | Balance Tenor | &(% with special character | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> | <category> |     | financial_details.xlsx | lease_land_details    | 234                          | throws an error with error message |
      | Balance Tenor | space                      | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> | <category> |     | financial_details.xlsx | lease_land_details    | 235                          | throws an error with error message |
      | Balance Tenor | characters                 | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> | <category> |     | financial_details.xlsx | lease_land_details    | 236                          | throws an error with error message |
      | Balance Tenor | decimal value              | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> | <category> |     | financial_details.xlsx | lease_land_details    | 237                          | throws an error with error message |
      | Balance Tenor | negative value             | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> | <category> |     | financial_details.xlsx | lease_land_details    | 238                          | throws an error with error message |
      | Balance Tenor | zero                       | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> | <category> |     | financial_details.xlsx | lease_land_details    | 239                          | does not throw any error           |


 # ${ProductType:["FAS","GL","JLG","SHG"]}
#${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
#${Occupation:["Agriculture"]}
   @NotImplemented
    Examples:
      | Field_Name    | var                        | ApplicationStage   | ApplicantType   | ProductType   | Occupation   | category | key | FinancialDetailsWB     | FinancialDetails_home | FinancialDetails_home_rowNum | Throws_notThrows                   |
      | Balance Tenor | valid value                | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> |          |     | financial_details.xlsx | lease_land_details    | 230                          | does not throw any error           |
      | Balance Tenor | both digits and characters | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> |          |     | financial_details.xlsx | lease_land_details    | 231                          | throws an error with error message |
      | Balance Tenor | more than 3 digits         | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> |          |     | financial_details.xlsx | lease_land_details    | 232                          | does not throw any error           |
      | Balance Tenor | special characters         | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> |          |     | financial_details.xlsx | lease_land_details    | 233                          | throws an error with error message |
      | Balance Tenor | &(% with special character | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> |          |     | financial_details.xlsx | lease_land_details    | 234                          | throws an error with error message |
      | Balance Tenor | space                      | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> |          |     | financial_details.xlsx | lease_land_details    | 235                          | throws an error with error message |
      | Balance Tenor | characters                 | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> |          |     | financial_details.xlsx | lease_land_details    | 236                          | throws an error with error message |
      | Balance Tenor | decimal value              | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> |          |     | financial_details.xlsx | lease_land_details    | 237                          | throws an error with error message |
      | Balance Tenor | negative value             | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> |          |     | financial_details.xlsx | lease_land_details    | 238                          | throws an error with error message |
      | Balance Tenor | zero                       | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> |          |     | financial_details.xlsx | lease_land_details    | 239                          | does not throw any error           |


  Scenario Outline: ACAUTOCAS-3418: Validating Lease Duration in with <var> mandatory field in lease land details
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user open Employment Details page on the basis of "<ApplicationStage>"
    And user reads employment details excel from datatable on the basis of "<Occupation>" type
      | employment_details.xlsx | home | 3 | Agriculture |
    And user fill employment details with Occupation Type as "<Occupation>"
    And user open financial details
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_home>" and row <FinancialDetails_home_rowNum>
    When user fills "<Field_Name>" field with "<var>" in lease land details
    Then "<Field_Name>" field "<Throws_notThrows>" in lease land details
    #${ ProductType : ["PL","HL","AL","EDU","OMNI","CEQ", "KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Occupation:["Agriculture"]}
    @Release @Part-2
    @ImplementedBy-ankit.yadav
    @Conventional
    Examples:
      | Field_Name     | var                        | ApplicationStage   | ApplicantType   | ProductType   | Occupation   | category | key | FinancialDetailsWB     | FinancialDetails_home | FinancialDetails_home_rowNum | Throws_notThrows                   |
      | Lease Duration | valid value                | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> |          |     | financial_details.xlsx | lease_land_details    | 240                          | does not throw any error           |
      | Lease Duration | both digits and characters | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> |          |     | financial_details.xlsx | lease_land_details    | 241                          | throws an error with error message |
      | Lease Duration | more than 3 digits         | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> |          |     | financial_details.xlsx | lease_land_details    | 242                          | does not throw any error           |
      | Lease Duration | special characters         | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> |          |     | financial_details.xlsx | lease_land_details    | 243                          | throws an error with error message |
      | Lease Duration | &(% with special character | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> |          |     | financial_details.xlsx | lease_land_details    | 244                          | throws an error with error message |
      | Lease Duration | space                      | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> |          |     | financial_details.xlsx | lease_land_details    | 245                          | throws an error with error message |
      | Lease Duration | characters                 | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> |          |     | financial_details.xlsx | lease_land_details    | 246                          | throws an error with error message |
      | Lease Duration | decimal value              | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> |          |     | financial_details.xlsx | lease_land_details    | 247                          | throws an error with error message |
      | Lease Duration | negative value             | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> |          |     | financial_details.xlsx | lease_land_details    | 248                          | throws an error with error message |
      | Lease Duration | zero                       | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> |          |     | financial_details.xlsx | lease_land_details    | 249                          | does not throw any error           |

# ${ ProductType : ["IHF","IAF"]}
# ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
#${Occupation:["Agriculture"]}
    @Islamic
    @Release
@Part-2
    @ImplementedBy-harshita.nayak
    Examples:
      | Field_Name     | var                        | ApplicationStage   | ApplicantType   | ProductType   | Occupation   | category | key | FinancialDetailsWB     | FinancialDetails_home | FinancialDetails_home_rowNum | Throws_notThrows                   |
      | Lease Duration | valid value                | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> |          |     | financial_details.xlsx | lease_land_details    | 240                          | does not throw any error           |
      | Lease Duration | both digits and characters | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> |          |     | financial_details.xlsx | lease_land_details    | 241                          | throws an error with error message |
      | Lease Duration | more than 3 digits         | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> |          |     | financial_details.xlsx | lease_land_details    | 242                          | does not throw any error           |
      | Lease Duration | special characters         | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> |          |     | financial_details.xlsx | lease_land_details    | 243                          | throws an error with error message |
      | Lease Duration | &(% with special character | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> |          |     | financial_details.xlsx | lease_land_details    | 244                          | throws an error with error message |
      | Lease Duration | space                      | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> |          |     | financial_details.xlsx | lease_land_details    | 245                          | throws an error with error message |
      | Lease Duration | characters                 | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> |          |     | financial_details.xlsx | lease_land_details    | 246                          | throws an error with error message |
      | Lease Duration | decimal value              | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> |          |     | financial_details.xlsx | lease_land_details    | 247                          | throws an error with error message |
      | Lease Duration | negative value             | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> |          |     | financial_details.xlsx | lease_land_details    | 248                          | throws an error with error message |
      | Lease Duration | zero                       | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> |          |     | financial_details.xlsx | lease_land_details    | 249                          | does not throw any error           |


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
      | Field_Name     | var                        | ApplicationStage   | ApplicantType   | ProductType   | Occupation   | category   | key | FinancialDetailsWB     | FinancialDetails_home | FinancialDetails_home_rowNum | Throws_notThrows                   |
      | Lease Duration | valid value                | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> | <category> |     | financial_details.xlsx | lease_land_details    | 240                          | does not throw any error           |
      | Lease Duration | both digits and characters | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> | <category> |     | financial_details.xlsx | lease_land_details    | 241                          | throws an error with error message |
      | Lease Duration | more than 3 digits         | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> | <category> |     | financial_details.xlsx | lease_land_details    | 242                          | does not throw any error           |
      | Lease Duration | special characters         | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> | <category> |     | financial_details.xlsx | lease_land_details    | 243                          | throws an error with error message |
      | Lease Duration | &(% with special character | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> | <category> |     | financial_details.xlsx | lease_land_details    | 244                          | throws an error with error message |
      | Lease Duration | space                      | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> | <category> |     | financial_details.xlsx | lease_land_details    | 245                          | throws an error with error message |
      | Lease Duration | characters                 | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> | <category> |     | financial_details.xlsx | lease_land_details    | 246                          | throws an error with error message |
      | Lease Duration | decimal value              | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> | <category> |     | financial_details.xlsx | lease_land_details    | 247                          | throws an error with error message |
      | Lease Duration | negative value             | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> | <category> |     | financial_details.xlsx | lease_land_details    | 248                          | throws an error with error message |
      | Lease Duration | zero                       | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> | <category> |     | financial_details.xlsx | lease_land_details    | 249                          | does not throw any error           |


 # ${ProductType:["FAS","GL","JLG","SHG"]}
#${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
#${Occupation:["Agriculture"]}
   @NotImplemented
    Examples:
      | Field_Name     | var                        | ApplicationStage   | ApplicantType   | ProductType   | Occupation   | category | key | FinancialDetailsWB     | FinancialDetails_home | FinancialDetails_home_rowNum | Throws_notThrows                   |
      | Lease Duration | valid value                | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> |          |     | financial_details.xlsx | lease_land_details    | 240                          | does not throw any error           |
      | Lease Duration | both digits and characters | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> |          |     | financial_details.xlsx | lease_land_details    | 241                          | throws an error with error message |
      | Lease Duration | more than 3 digits         | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> |          |     | financial_details.xlsx | lease_land_details    | 242                          | does not throw any error           |
      | Lease Duration | special characters         | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> |          |     | financial_details.xlsx | lease_land_details    | 243                          | throws an error with error message |
      | Lease Duration | &(% with special character | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> |          |     | financial_details.xlsx | lease_land_details    | 244                          | throws an error with error message |
      | Lease Duration | space                      | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> |          |     | financial_details.xlsx | lease_land_details    | 245                          | throws an error with error message |
      | Lease Duration | characters                 | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> |          |     | financial_details.xlsx | lease_land_details    | 246                          | throws an error with error message |
      | Lease Duration | decimal value              | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> |          |     | financial_details.xlsx | lease_land_details    | 247                          | throws an error with error message |
      | Lease Duration | negative value             | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> |          |     | financial_details.xlsx | lease_land_details    | 248                          | throws an error with error message |
      | Lease Duration | zero                       | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> |          |     | financial_details.xlsx | lease_land_details    | 249                          | does not throw any error           |


  Scenario Outline: ACAUTOCAS-1738: In Selection of <Field_Name1> <Field_Name2> field <Dependent_Field> is autofilled
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user open Employment Details page on the basis of "<ApplicationStage>"
    And user reads employment details excel from datatable on the basis of "<Occupation>" type
      | employment_details.xlsx | home | 3 | Agriculture |
    And user fill employment details with Occupation Type as "<Occupation>"
    And user open financial details
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_home>" and row <FinancialDetails_home_rowNum>
    When user enters "<Field_Name1>" "<Field_Name2>" in Lessor Details
    Then "<Dependent_Field>" should auto selected in Lessor Details
    #${ ProductType : ["PL","HL","AL","EDU","OMNI","CEQ", "KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Occupation:["Agriculture"]}
    @Release @Part-2
    @ImplementedBy-ankit.yadav
    @Conventional
    Examples:
      | Field_Name1      | Field_Name2    | Dependent_Field | ApplicationStage   | ApplicantType   | ProductType   | Occupation   | category | key | FinancialDetailsWB     | FinancialDetails_home | FinancialDetails_home_rowNum |
      | Lease Start Date | Lease End Date | Lease Duration  | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> |          |     | financial_details.xlsx | lease_land_details    | 25                           |

    # ${ ProductType : ["IHF","IAF"]}
  # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
  #${Occupation:["Agriculture"]}
    @Islamic
    @Release
@Part-2
    @ImplementedBy-harshita.nayak
    Examples:
      | Field_Name1      | Field_Name2    | Dependent_Field | ApplicationStage   | ApplicantType   | ProductType   | Occupation   | category | key | FinancialDetailsWB     | FinancialDetails_home | FinancialDetails_home_rowNum |
      | Lease Start Date | Lease End Date | Lease Duration  | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> |          |     | financial_details.xlsx | lease_land_details    | 25                           |

    #${ProductType:["IPF"]}
    #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
      #${category:["bonds"]}
    #${Occupation:["Agriculture"]}
    @Islamic
    @Release
@Part-2
    @ImplementedBy-harshita.nayak
    Examples:
      | Field_Name1      | Field_Name2    | Dependent_Field | ApplicationStage   | ApplicantType   | ProductType   | Occupation   | category   | key | FinancialDetailsWB     | FinancialDetails_home | FinancialDetails_home_rowNum |
      | Lease Start Date | Lease End Date | Lease Duration  | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> | <category> |     | financial_details.xlsx | lease_land_details    | 25                           |


 # ${ProductType:["FAS","GL","JLG","SHG"]}
#${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
#${Occupation:["Agriculture"]}
   @NotImplemented
    Examples:
      | Field_Name1      | Field_Name2    | Dependent_Field | ApplicationStage   | ApplicantType   | ProductType   | Occupation   | category | key | FinancialDetailsWB     | FinancialDetails_home | FinancialDetails_home_rowNum |
      | Lease Start Date | Lease End Date | Lease Duration  | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> |          |     | financial_details.xlsx | lease_land_details    | 25                           |


  Scenario Outline: ACAUTOCAS-3419: Validating Lease Start Date in Lessor Details with <var> non mandatory field
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user open Employment Details page on the basis of "<ApplicationStage>"
    And user reads employment details excel from datatable on the basis of "<Occupation>" type
      | employment_details.xlsx | home | 3 | Agriculture |
    And user fill employment details with Occupation Type as "<Occupation>"
    And user open financial details
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_home>" and row <FinancialDetails_home_rowNum>
    When user fills "<Field_Name>" field with "<var>" in lease land details
    Then "<Field_Name>" field "<Throws_notThrows>" in lease land details
    #${ ProductType : ["PL","HL","AL","EDU","OMNI","CEQ", "KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Occupation:["Agriculture"]}
    @Release @Part-2
    @ImplementedBy-ankit.yadav
    @Conventional
    Examples:
      | Field_Name       | var                 | ApplicationStage   | ApplicantType   | ProductType   | Occupation   | category | key | FinancialDetailsWB     | FinancialDetails_home | FinancialDetails_home_rowNum | Throws_notThrows                   |
      | Lease Start Date | valid date format   | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> |          |     | financial_details.xlsx | lease_land_details    | 250                          | does not throw any error           |
      | Lease Start Date | invalid date format | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> |          |     | financial_details.xlsx | lease_land_details    | 251                          | throws an error with error message |
      | Lease Start Date | current date        | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> |          |     | financial_details.xlsx | lease_land_details    | 252                          | does not throw any error           |
      | Lease Start Date | past date           | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> |          |     | financial_details.xlsx | lease_land_details    | 253                          | does not throw any error           |
      | Lease Start Date | future date         | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> |          |     | financial_details.xlsx | lease_land_details    | 254                          | does not throw any error           |
      | Lease Start Date | year equal to 1942  | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> |          |     | financial_details.xlsx | lease_land_details    | 256                          | does not throw any error           |
      | Lease Start Date | special characters  | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> |          |     | financial_details.xlsx | lease_land_details    | 257                          | throws an error with error message |

    @LoggedBug
    Examples:
      | Field_Name       | var                 | ApplicationStage   | ProductType   | Occupation   | FinancialDetailsWB     | FinancialDetails_home | FinancialDetails_home_rowNum | Throws_notThrows                   |
      | Lease Start Date | year less than 1942 | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | lease_land_details    | 255                          | throws an error with error message |

    # ${ ProductType : ["IHF","IAF"]}
# ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
#${Occupation:["Agriculture"]}
    @Islamic
    @Release
@Part-2
    @ImplementedBy-harshita.nayak
    Examples:
      | Field_Name       | var                 | ApplicationStage   | ApplicantType   | ProductType   | Occupation   | category | key | FinancialDetailsWB     | FinancialDetails_home | FinancialDetails_home_rowNum | Throws_notThrows                   |
      | Lease Start Date | valid date format   | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> |          |     | financial_details.xlsx | lease_land_details    | 250                          | does not throw any error           |
      | Lease Start Date | invalid date format | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> |          |     | financial_details.xlsx | lease_land_details    | 251                          | throws an error with error message |
      | Lease Start Date | current date        | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> |          |     | financial_details.xlsx | lease_land_details    | 252                          | does not throw any error           |
      | Lease Start Date | past date           | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> |          |     | financial_details.xlsx | lease_land_details    | 253                          | does not throw any error           |
      | Lease Start Date | future date         | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> |          |     | financial_details.xlsx | lease_land_details    | 254                          | does not throw any error           |
      | Lease Start Date | year equal to 1942  | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> |          |     | financial_details.xlsx | lease_land_details    | 256                          | does not throw any error           |
      | Lease Start Date | special characters  | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> |          |     | financial_details.xlsx | lease_land_details    | 257                          | throws an error with error message |

    #${ProductType:["IPF"]}
    #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
      #${category:["bonds"]}
    #${Occupation:["Agriculture"]}
    @Islamic
    @Release
@Part-2
    @ImplementedBy-harshita.nayak
    Examples:
      | Field_Name       | var                 | ApplicationStage   | ApplicantType   | ProductType   | Occupation   | category   | key | FinancialDetailsWB     | FinancialDetails_home | FinancialDetails_home_rowNum | Throws_notThrows                   |
      | Lease Start Date | valid date format   | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> | <category> |     | financial_details.xlsx | lease_land_details    | 250                          | does not throw any error           |
      | Lease Start Date | invalid date format | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> | <category> |     | financial_details.xlsx | lease_land_details    | 251                          | throws an error with error message |
      | Lease Start Date | current date        | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> | <category> |     | financial_details.xlsx | lease_land_details    | 252                          | does not throw any error           |
      | Lease Start Date | past date           | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> | <category> |     | financial_details.xlsx | lease_land_details    | 253                          | does not throw any error           |
      | Lease Start Date | future date         | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> | <category> |     | financial_details.xlsx | lease_land_details    | 254                          | does not throw any error           |
      | Lease Start Date | year equal to 1942  | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> | <category> |     | financial_details.xlsx | lease_land_details    | 256                          | does not throw any error           |
      | Lease Start Date | special characters  | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> | <category> |     | financial_details.xlsx | lease_land_details    | 257                          | throws an error with error message |


 # ${ProductType:["FAS","GL","JLG","SHG"]}
#${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
#${Occupation:["Agriculture"]}
   @NotImplemented
    Examples:
      | Field_Name       | var                 | ApplicationStage   | ApplicantType   | ProductType   | Occupation   | category | key | FinancialDetailsWB     | FinancialDetails_home | FinancialDetails_home_rowNum | Throws_notThrows                   |
      | Lease Start Date | valid date format   | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> |          |     | financial_details.xlsx | lease_land_details    | 250                          | does not throw any error           |
      | Lease Start Date | invalid date format | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> |          |     | financial_details.xlsx | lease_land_details    | 251                          | throws an error with error message |
      | Lease Start Date | current date        | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> |          |     | financial_details.xlsx | lease_land_details    | 252                          | does not throw any error           |
      | Lease Start Date | past date           | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> |          |     | financial_details.xlsx | lease_land_details    | 253                          | does not throw any error           |
      | Lease Start Date | future date         | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> |          |     | financial_details.xlsx | lease_land_details    | 254                          | does not throw any error           |
      | Lease Start Date | year equal to 1942  | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> |          |     | financial_details.xlsx | lease_land_details    | 256                          | does not throw any error           |
      | Lease Start Date | special characters  | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> |          |     | financial_details.xlsx | lease_land_details    | 257                          | throws an error with error message |
#

  Scenario Outline: ACAUTOCAS-3420: Validating Date of Birth in Lessor Details with <var> non mandatory field
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user open Employment Details page on the basis of "<ApplicationStage>"
    And user reads employment details excel from datatable on the basis of "<Occupation>" type
      | employment_details.xlsx | home | 3 | Agriculture |
    And user fill employment details with Occupation Type as "<Occupation>"
    And user open financial details
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_home>" and row <FinancialDetails_home_rowNum>
    When user fills "<Field_Name>" field with "<var>" in lease land details
    Then "<Field_Name>" field "<Throws_notThrows>" in lease land details
 #${ ProductType : ["PL","HL","AL","EDU","OMNI","CEQ", "KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Occupation:["Agriculture"]}
    @Release @Part-2
    @ImplementedBy-ankit.yadav
    @Conventional
    Examples:
      | Field_Name              | var                 | ApplicationStage   | ApplicantType   | ProductType   | Occupation   | category | key | FinancialDetailsWB     | FinancialDetails_home | FinancialDetails_home_rowNum | Throws_notThrows                   |
      | Date of Birth           | valid date format   | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> |          |     | financial_details.xlsx | lease_land_details    | 258                          | does not throw any error           |
      | Date of Birth           | invalid date format | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> |          |     | financial_details.xlsx | lease_land_details    | 259                          | throws an error with error message |
      | Date of Birth           | current date        | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> |          |     | financial_details.xlsx | lease_land_details    | 260                          | does not throw any error           |
      | Date of Birth           | past date           | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> |          |     | financial_details.xlsx | lease_land_details    | 261                          | does not throw any error           |
      | DOB future date         | future date         | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> |          |     | financial_details.xlsx | lease_land_details    | 262                          | throws an error with error message |
      | Date of Birth           | year equal to 1942  | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> |          |     | financial_details.xlsx | lease_land_details    | 264                          | does not throw any error           |
      | Date of Birth           | special characters  | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> |          |     | financial_details.xlsx | lease_land_details    | 265                          | throws an error with error message |
      | DOB year less than 1942 | year less than 1942 | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> |          |     | financial_details.xlsx | lease_land_details    | 263                          | throws an error with error message |

    # ${ ProductType : ["IHF","IAF"]}
# ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
#${Occupation:["Agriculture"]}
    @Islamic
    @Release
@Part-2
    @ImplementedBy-harshita.nayak
    Examples:
      | Field_Name              | var                 | ApplicationStage   | ApplicantType   | ProductType   | Occupation   | category | key | FinancialDetailsWB     | FinancialDetails_home | FinancialDetails_home_rowNum | Throws_notThrows                   |
      | Date of Birth           | valid date format   | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> |          |     | financial_details.xlsx | lease_land_details    | 258                          | does not throw any error           |
      | Date of Birth           | invalid date format | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> |          |     | financial_details.xlsx | lease_land_details    | 259                          | throws an error with error message |
      | Date of Birth           | current date        | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> |          |     | financial_details.xlsx | lease_land_details    | 260                          | does not throw any error           |
      | Date of Birth           | past date           | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> |          |     | financial_details.xlsx | lease_land_details    | 261                          | does not throw any error           |
      | DOB future date         | future date         | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> |          |     | financial_details.xlsx | lease_land_details    | 262                          | throws an error with error message |
      | Date of Birth           | year equal to 1942  | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> |          |     | financial_details.xlsx | lease_land_details    | 264                          | does not throw any error           |
      | Date of Birth           | special characters  | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> |          |     | financial_details.xlsx | lease_land_details    | 265                          | throws an error with error message |
      | DOB year less than 1942 | year less than 1942 | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> |          |     | financial_details.xlsx | lease_land_details    | 263                          | throws an error with error message |

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
      | Field_Name              | var                 | ApplicationStage   | ApplicantType   | ProductType   | Occupation   | category   | key | FinancialDetailsWB     | FinancialDetails_home | FinancialDetails_home_rowNum | Throws_notThrows                   |
      | Date of Birth           | valid date format   | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> | <category> |     | financial_details.xlsx | lease_land_details    | 258                          | does not throw any error           |
      | Date of Birth           | invalid date format | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> | <category> |     | financial_details.xlsx | lease_land_details    | 259                          | throws an error with error message |
      | Date of Birth           | current date        | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> | <category> |     | financial_details.xlsx | lease_land_details    | 260                          | does not throw any error           |
      | Date of Birth           | past date           | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> | <category> |     | financial_details.xlsx | lease_land_details    | 261                          | does not throw any error           |
      | DOB future date         | future date         | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> | <category> |     | financial_details.xlsx | lease_land_details    | 262                          | throws an error with error message |
      | Date of Birth           | year equal to 1942  | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> | <category> |     | financial_details.xlsx | lease_land_details    | 264                          | does not throw any error           |
      | Date of Birth           | special characters  | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> | <category> |     | financial_details.xlsx | lease_land_details    | 265                          | throws an error with error message |
      | DOB year less than 1942 | year less than 1942 | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> | <category> |     | financial_details.xlsx | lease_land_details    | 263                          | throws an error with error message |


 # ${ProductType:["FAS","GL","JLG","SHG"]}
#${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
#${Occupation:["Agriculture"]}
   @NotImplemented
    Examples:
      | Field_Name              | var                 | ApplicationStage   | ApplicantType   | ProductType   | Occupation   | category | key | FinancialDetailsWB     | FinancialDetails_home | FinancialDetails_home_rowNum | Throws_notThrows                   |
      | Date of Birth           | valid date format   | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> |          |     | financial_details.xlsx | lease_land_details    | 258                          | does not throw any error           |
      | Date of Birth           | invalid date format | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> |          |     | financial_details.xlsx | lease_land_details    | 259                          | throws an error with error message |
      | Date of Birth           | current date        | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> |          |     | financial_details.xlsx | lease_land_details    | 260                          | does not throw any error           |
      | Date of Birth           | past date           | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> |          |     | financial_details.xlsx | lease_land_details    | 261                          | does not throw any error           |
      | DOB future date         | future date         | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> |          |     | financial_details.xlsx | lease_land_details    | 262                          | throws an error with error message |
      | Date of Birth           | year equal to 1942  | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> |          |     | financial_details.xlsx | lease_land_details    | 264                          | does not throw any error           |
      | Date of Birth           | special characters  | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> |          |     | financial_details.xlsx | lease_land_details    | 265                          | throws an error with error message |
      | DOB year less than 1942 | year less than 1942 | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> |          |     | financial_details.xlsx | lease_land_details    | 263                          | throws an error with error message |

  Scenario Outline: ACAUTOCAS-3421: Validating Lease End Date in Lessor Details with <var> non mandatory field
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user open Employment Details page on the basis of "<ApplicationStage>"
    And user reads employment details excel from datatable on the basis of "<Occupation>" type
      | employment_details.xlsx | home | 3 | Agriculture |
    And user fill employment details with Occupation Type as "<Occupation>"
    And user open financial details
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_home>" and row <FinancialDetails_home_rowNum>
    When user fills "<Field_Name>" field with "<var>" in lease land details
    Then "<Field_Name>" field "<Throws_notThrows>" in lease land details
    #${ ProductType : ["PL","HL","AL","EDU","OMNI","CEQ", "KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Occupation:["Agriculture"]}
    @Release @Part-2
    @ImplementedBy-ankit.yadav
    @Conventional
    Examples:
      | Field_Name     | var                 | ApplicationStage   | ApplicantType   | ProductType   | Occupation   | category | key | FinancialDetailsWB     | FinancialDetails_home | FinancialDetails_home_rowNum | Throws_notThrows                   |
      | Lease End Date | valid date format   | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> |          |     | financial_details.xlsx | lease_land_details    | 266                          | does not throw any error           |
      | Lease End Date | invalid date format | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> |          |     | financial_details.xlsx | lease_land_details    | 267                          | throws an error with error message |
      | Lease End Date | current date        | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> |          |     | financial_details.xlsx | lease_land_details    | 268                          | does not throw any error           |
      | Lease End Date | past date           | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> |          |     | financial_details.xlsx | lease_land_details    | 269                          | does not throw any error           |
      | Lease End Date | future date         | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> |          |     | financial_details.xlsx | lease_land_details    | 270                          | does not throw any error           |
      | Lease End Date | year equal to 1942  | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> |          |     | financial_details.xlsx | lease_land_details    | 272                          | does not throw any error           |
      | Lease End Date | special characters  | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> |          |     | financial_details.xlsx | lease_land_details    | 273                          | throws an error with error message |

    @LoggedBug
   @NotImplemented
    Examples:
      | Field_Name     | var                 | ApplicationStage   | ProductType   | Occupation   | FinancialDetailsWB     | FinancialDetails_home | FinancialDetails_home_rowNum | Throws_notThrows                   |
      | Lease End Date | year less than 1942 | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | lease_land_details    | 271                          | throws an error with error message |

# ${ ProductType : ["IHF","IAF"]}
# ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
#${Occupation:["Agriculture"]}
    @Islamic
    @Release
@Part-2
    @ImplementedBy-harshita.nayak
    Examples:
      | Field_Name     | var                 | ApplicationStage   | ApplicantType   | ProductType   | Occupation   | category | key | FinancialDetailsWB     | FinancialDetails_home | FinancialDetails_home_rowNum | Throws_notThrows                   |
      | Lease End Date | valid date format   | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> |          |     | financial_details.xlsx | lease_land_details    | 266                          | does not throw any error           |
      | Lease End Date | invalid date format | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> |          |     | financial_details.xlsx | lease_land_details    | 267                          | throws an error with error message |
      | Lease End Date | current date        | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> |          |     | financial_details.xlsx | lease_land_details    | 268                          | does not throw any error           |
      | Lease End Date | past date           | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> |          |     | financial_details.xlsx | lease_land_details    | 269                          | does not throw any error           |
      | Lease End Date | future date         | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> |          |     | financial_details.xlsx | lease_land_details    | 270                          | does not throw any error           |
      | Lease End Date | year equal to 1942  | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> |          |     | financial_details.xlsx | lease_land_details    | 272                          | does not throw any error           |
      | Lease End Date | special characters  | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> |          |     | financial_details.xlsx | lease_land_details    | 273                          | throws an error with error message |

    #${ProductType:["IPF"]}
    #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
      #${category:["bonds"]}
    #${Occupation:["Agriculture"]}
    @Islamic
    @Release
@Part-2
    @ImplementedBy-harshita.nayak
    Examples:
      | Field_Name     | var                 | ApplicationStage   | ApplicantType   | ProductType   | Occupation   | category   | key | FinancialDetailsWB     | FinancialDetails_home | FinancialDetails_home_rowNum | Throws_notThrows                   |
      | Lease End Date | valid date format   | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> | <category> |     | financial_details.xlsx | lease_land_details    | 266                          | does not throw any error           |
      | Lease End Date | invalid date format | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> | <category> |     | financial_details.xlsx | lease_land_details    | 267                          | throws an error with error message |
      | Lease End Date | current date        | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> | <category> |     | financial_details.xlsx | lease_land_details    | 268                          | does not throw any error           |
      | Lease End Date | past date           | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> | <category> |     | financial_details.xlsx | lease_land_details    | 269                          | does not throw any error           |
      | Lease End Date | future date         | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> | <category> |     | financial_details.xlsx | lease_land_details    | 270                          | does not throw any error           |
      | Lease End Date | year equal to 1942  | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> | <category> |     | financial_details.xlsx | lease_land_details    | 272                          | does not throw any error           |
      | Lease End Date | special characters  | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> | <category> |     | financial_details.xlsx | lease_land_details    | 273                          | throws an error with error message |


 # ${ProductType:["FAS","GL","JLG","SHG"]}
#${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
#${Occupation:["Agriculture"]}
   @NotImplemented
    Examples:
      | Field_Name     | var                 | ApplicationStage   | ApplicantType   | ProductType   | Occupation   | category | key | FinancialDetailsWB     | FinancialDetails_home | FinancialDetails_home_rowNum | Throws_notThrows                   |
      | Lease End Date | valid date format   | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> |          |     | financial_details.xlsx | lease_land_details    | 266                          | does not throw any error           |
      | Lease End Date | invalid date format | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> |          |     | financial_details.xlsx | lease_land_details    | 267                          | throws an error with error message |
      | Lease End Date | current date        | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> |          |     | financial_details.xlsx | lease_land_details    | 268                          | does not throw any error           |
      | Lease End Date | past date           | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> |          |     | financial_details.xlsx | lease_land_details    | 269                          | does not throw any error           |
      | Lease End Date | future date         | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> |          |     | financial_details.xlsx | lease_land_details    | 270                          | does not throw any error           |
      | Lease End Date | year equal to 1942  | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> |          |     | financial_details.xlsx | lease_land_details    | 272                          | does not throw any error           |
      | Lease End Date | special characters  | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> |          |     | financial_details.xlsx | lease_land_details    | 273                          | throws an error with error message |


  Scenario Outline: ACAUTOCAS-1742:  Validating <Field_Name1> <Field_Name2> with <var> in Lessor Details
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user open Employment Details page on the basis of "<ApplicationStage>"
    And user reads employment details excel from datatable on the basis of "<Occupation>" type
      | employment_details.xlsx | home | 3 | Agriculture |
    And user fill employment details with Occupation Type as "<Occupation>"
    And user open financial details
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_home>" and row <FinancialDetails_home_rowNum>
    When user fills "<Field_Name1>" "<Field_Name2>" with "<var>" in Lessor Details
    Then "<Field_Name1>" "<Field_Name2>" field "<Throws_notThrows>" in Lessor Details
    #${ ProductType : ["PL","HL","AL","EDU","OMNI","CEQ", "KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Occupation:["Agriculture"]}
    @Release @Part-2
    @ImplementedBy-ankit.yadav
    @Conventional
    Examples:
      | Field_Name1      | Field_Name2    | var                              | ApplicationStage   | ApplicantType   | ProductType   | Occupation   | category | key | FinancialDetailsWB     | FinancialDetails_home | FinancialDetails_home_rowNum | Throws_notThrows                   |
      | Lease Start Date | Lease End Date | end date greater than start date | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> |          |     | financial_details.xlsx | lease_land_details    | 35                           | throws an error with error message |
      | Lease Start Date | Lease End Date | start date greater than end date | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> |          |     | financial_details.xlsx | lease_land_details    | 36                           | throws an error with error message |

    # ${ ProductType : ["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Occupation:["Agriculture"]}
    @Islamic
    @Release
@Part-2
    @ImplementedBy-harshita.nayak
    Examples:
      | Field_Name1      | Field_Name2    | var                              | ApplicationStage   | ApplicantType   | ProductType   | Occupation   | category | key | FinancialDetailsWB     | FinancialDetails_home | FinancialDetails_home_rowNum | Throws_notThrows                   |
      | Lease Start Date | Lease End Date | end date greater than start date | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> |          |     | financial_details.xlsx | lease_land_details    | 35                           | throws an error with error message |
      | Lease Start Date | Lease End Date | start date greater than end date | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> |          |     | financial_details.xlsx | lease_land_details    | 36                           | throws an error with error message |

    #${ProductType:["IPF"]}
    #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
      #${category:["bonds"]}
    #${Occupation:["Agriculture"]}
    @Islamic
    @Release
@Part-2
    @ImplementedBy-harshita.nayak
    Examples:
      | Field_Name1      | Field_Name2    | var                              | ApplicationStage   | ApplicantType   | ProductType   | Occupation   | category   | key | FinancialDetailsWB     | FinancialDetails_home | FinancialDetails_home_rowNum | Throws_notThrows                   |
      | Lease Start Date | Lease End Date | end date greater than start date | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> | <category> |     | financial_details.xlsx | lease_land_details    | 35                           | throws an error with error message |
      | Lease Start Date | Lease End Date | start date greater than end date | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> | <category> |     | financial_details.xlsx | lease_land_details    | 36                           | throws an error with error message |

 # ${ProductType:["FAS","GL","JLG","SHG"]}
#${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
#${Occupation:["Agriculture"]}
   @NotImplemented
    Examples:
      | Field_Name1      | Field_Name2    | var                              | ApplicationStage   | ApplicantType   | ProductType   | Occupation   | category | key | FinancialDetailsWB     | FinancialDetails_home | FinancialDetails_home_rowNum | Throws_notThrows                   |
      | Lease Start Date | Lease End Date | end date greater than start date | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> |          |     | financial_details.xlsx | lease_land_details    | 35                           | throws an error with error message |
      | Lease Start Date | Lease End Date | start date greater than end date | <ApplicationStage> | <ApplicantType> | <ProductType> | <Occupation> |          |     | financial_details.xlsx | lease_land_details    | 36                           | throws an error with error message |

#---Duplicate Scenario
#  @Release @Part-2
#    @AuthoredBy-vipin.kishor
#  #FeatureID:ACAUTOCAS-164
#  Scenario Outline: ACAUTOCAS-13100:  <FieldName> field validation in lease land details for <Occupation> occupation  at <ApplicationStage> in <ProductType>
#    And user opens an application of "<ProductType>" product type as "indiv" applicant at "<ApplicationStage>" for "" with "" from application grid
#    And user open Employment Details page on the basis of "<ApplicationStage>"
#    And user reads employment details excel from datatable on the basis of "<Occupation>" type
#      | employment_details.xlsx | home | 3 | Agriculture |
#    And user fill employment details with Occupation Type as "<Occupation>"
#    And user open financial details
#    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_home>" and row <FinancialDetails_home_rowNum>
#    When user fills "<FieldName>" field with "<var>" in lease land details
#    Then "<Field_Name>" field "<Throws_notThrows>" in lease land details
#    Examples:
#      | FieldName              | var              | ApplicationStage   | ProductType   | Occupation   | FinancialDetailsWB     | FinancialDetails_home | FinancialDetails_home_rowNum | Throws_notThrows         |
#      | Asset Type Description | with valid value | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | lease_land_details    | 12                           | does not throw any error |
#      | Asset Value            | valid value      | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | lease_land_details    | 5                            | does not throw any error |

