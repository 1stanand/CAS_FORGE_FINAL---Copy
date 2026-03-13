@Epic-Applicant_Information
@AuthoredBy-harshita.nayak
@ReviewedBy-tushar.chauhan
@Reconciled
@AppInfoAdoption

# ${ApplicantType:["indiv"]}
    #FeatureID-ACAUTOCAS-191
Feature: Other Income detail field validation with occupation type as Agriculture

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0

    @Sanity
  Scenario Outline: ACAUTOCAS-1781:  Add other income details with "<Var>" fields
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user open Employment Details page on the basis of "<ApplicationStage>"
    And user reads employment details excel from datatable on the basis of "<Occupation>" type
      | employment_details.xlsx | home | 3 | Agriculture |
    And user fill employment details with Occupation Type as "<Occupation>"
    And user open financial details
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_home>" and row <FinancialDetails_home_rowNum>
    When user fills other income details with "<Var>" fields
    Then other income details should save successfully
    @ImplementedBy-ankit.yadav
    @ReleaseAppInfoM4
    @Conventional
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Occupation:["Agriculture"]}
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category | Key | Occupation   | Var       | FinancialDetailsWB     | FinancialDetails_home | FinancialDetails_home_rowNum |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | <Occupation> | mandatory | financial_details.xlsx | other_income_details  | 59                           |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | <Occupation> | all       | financial_details.xlsx | other_income_details  | 59                           |

    #${ProductType:["IHF","IAF"]}
 #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Occupation:["Agriculture"]}
    @Islamic
    @Release
    @Part-2
    @ImplementedBy-harshita.nayak
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category | Key | Occupation   | Var       | FinancialDetailsWB     | FinancialDetails_home | FinancialDetails_home_rowNum |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | <Occupation> | mandatory | financial_details.xlsx | other_income_details  | 171                          |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | <Occupation> | all       | financial_details.xlsx | other_income_details  | 171                          |
#${ProductType:["IPF"]}
    #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
      #${ Category:["bonds","shares","metals"]}
    #${Occupation:["Agriculture"]}
    @Islamic
    @Release
    @Part-2
    @ImplementedBy-harshita.nayak
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Occupation   | Category   | Key | Var       | FinancialDetailsWB     | FinancialDetails_home | FinancialDetails_home_rowNum |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Occupation> | <Category> |     | mandatory | financial_details.xlsx | other_income_details  | 171                          |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Occupation> | <Category> |     | all       | financial_details.xlsx | other_income_details  | 171                          |
 # ${ProductType:["FAS","GL","JLG","SHG"]}
 #${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Occupation:["Agriculture"]}
    @NotImplemented
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Occupation   | Category | Key | Var       | FinancialDetailsWB     | FinancialDetails_home | FinancialDetails_home_rowNum |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Occupation> |          |     | mandatory | financial_details.xlsx | other_income_details  | 59                           |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Occupation> |          |     | all       | financial_details.xlsx | other_income_details  | 59                           |

  Scenario Outline: ACAUTOCAS-1782: Add <multiple> other income details
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user open Employment Details page on the basis of "<ApplicationStage>"
    And user reads employment details excel from datatable on the basis of "<Occupation>" type
      | employment_details.xlsx | home | 3 | Agriculture |
    And user fill employment details with Occupation Type as "<Occupation>"
    And user open financial details
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_home>" and row <FinancialDetails_home_rowNum>
    When user add <multiple> other income details from the sheet "<FinancialDetailsWB>" under sheet "<FinancialDetails_home>" and row <FinancialDetails_home_rowNum>
    Then other income details should save successfully
    @ImplementedBy-ankit.yadav
    @ReleaseAppInfoM4
    @Conventional
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Occupation:["Agriculture"]}
    Examples:
      | multiple | ApplicationStage   | ProductType   | Occupation   | ApplicantType   | Category | Key | FinancialDetailsWB     | FinancialDetails_home | FinancialDetails_home_rowNum |
      | 2        | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     | financial_details.xlsx | other_income_details  | 71                           |
  #${ProductType:["IHF","IAF"]}
 #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Occupation:["Agriculture"]}
    @Islamic
    @Release
    @Part-2
    @ImplementedBy-harshita.nayak
    Examples:
      | multiple | ApplicationStage   | ProductType   | Occupation   | ApplicantType   | Category | Key | FinancialDetailsWB     | FinancialDetails_home | FinancialDetails_home_rowNum |
      | 2        | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     | financial_details.xlsx | other_income_details  | 190                          |
#${ProductType:["IPF"]}
    #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
      #${ Category:["bonds","shares","metals"]}
    #${Occupation:["Agriculture"]}
    @Islamic
    @Release
    @Part-2
    @ImplementedBy-harshita.nayak
    Examples:
      | multiple | ApplicationStage   | ProductType   | Occupation   | ApplicantType   | Category   | Key | FinancialDetailsWB     | FinancialDetails_home | FinancialDetails_home_rowNum |
      | 2        | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> | <Category> |     | financial_details.xlsx | other_income_details  | 190                          |
 # ${ProductType:["FAS","GL","JLG","SHG"]}
 #${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Occupation:["Agriculture"]}
    Examples:
      | multiple | ApplicationStage   | ProductType   | Occupation   | ApplicantType   | Category | Key | FinancialDetailsWB     | FinancialDetails_home | FinancialDetails_home_rowNum |
      | 2        | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     | financial_details.xlsx | other_income_details  | 71                           |

  Scenario Outline: ACAUTOCAS-1783: Delete <multiple> other income details
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user open Employment Details page on the basis of "<ApplicationStage>"
    And user reads employment details excel from datatable on the basis of "<Occupation>" type
      | employment_details.xlsx | home | 3 | Agriculture |
    And user fill employment details with Occupation Type as "<Occupation>"
    And user open financial details
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_home>" and row <FinancialDetails_home_rowNum>
    When user add <multiple> other income details from the sheet "<FinancialDetailsWB>" under sheet "<FinancialDetails_home>" and row <FinancialDetails_home_rowNum>
    And user delete <multiple> other income details
    Then delete other income details successfully
    @ImplementedBy-ankit.yadav
    @ReleaseAppInfoM4
    @Conventional
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Occupation:["Agriculture"]}
    Examples:
      | multiple | ApplicationStage   | ProductType   | Occupation   | ApplicantType   | Category | Key | FinancialDetailsWB     | FinancialDetails_home | FinancialDetails_home_rowNum |
      | 2        | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     | financial_details.xlsx | other_income_details  | 71                           |
  #${ProductType:["IHF","IAF"]}
 #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Occupation:["Agriculture"]}
    @Islamic
    @Release
    @Part-2
    @ImplementedBy-harshita.nayak
    Examples:
      | multiple | ApplicationStage   | ProductType   | Occupation   | ApplicantType   | Category | Key | FinancialDetailsWB     | FinancialDetails_home | FinancialDetails_home_rowNum |
      | 2        | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     | financial_details.xlsx | other_income_details  | 190                          |
#${ProductType:["IPF"]}
    #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
      #${ Category:["bonds","shares","metals"]}
    #${Occupation:["Agriculture"]}
    @Islamic
    @Release
    @Part-2
    @ImplementedBy-harshita.nayak
    Examples:
      | multiple | ApplicationStage   | ProductType   | Occupation   | ApplicantType   | Category   | Key | FinancialDetailsWB     | FinancialDetails_home | FinancialDetails_home_rowNum |
      | 2        | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> | <Category> |     | financial_details.xlsx | other_income_details  | 190                          |
 # ${ProductType:["FAS","GL","JLG","SHG"]}
 #${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Occupation:["Agriculture"]}
    @NotImplemented
    Examples:
      | multiple | ApplicationStage   | ProductType   | Occupation   | ApplicantType   | Category | Key | FinancialDetailsWB     | FinancialDetails_home | FinancialDetails_home_rowNum |
      | 2        | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     | financial_details.xlsx | other_income_details  | 71                           |


  @Perishable
  Scenario Outline: ACAUTOCAS-1784:  Saving other income detail without <Field_Name>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user open Employment Details page on the basis of "<ApplicationStage>"
    And user reads employment details excel from datatable on the basis of "<Occupation>" type
      | employment_details.xlsx | home | 3 | Agriculture |
    And user fill employment details with Occupation Type as "<Occupation>"
    And user open financial details
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_home>" and row <FinancialDetails_home_rowNum>
    When user fills the other income details without "<Field_Name>"
    Then other income details not saved with "<Throws_notThrows>"
    @ImplementedBy-ankit.yadav
    @ReleaseAppInfoM4
    @Conventional
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Occupation:["Agriculture"]}
    Examples:
      | Field_Name         | Throws_notThrows                   | FinancialDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_home | ApplicationStage   | Occupation   | ApplicantType   | Category | Key | ProductType  |
      | Income Head        | throws an error with error message | 59                           | financial_details.xlsx | other_income_details  | <ApplicationStage> | <Occupation> | <ApplicantType> |          |     | <ProductType |
      | Income Source      | throws an error with error message | 59                           | financial_details.xlsx | other_income_details  | <ApplicationStage> | <Occupation> | <ApplicantType> |          |     | <ProductType |
      | Sharing Percentage | throws an error with error message | 68                           | financial_details.xlsx | other_income_details  | <ApplicationStage> | <Occupation> | <ApplicantType> |          |     | <ProductType |
      | Amount             | throws an error with error message | 198                          | financial_details.xlsx | other_income_details  | <ApplicationStage> | <Occupation> | <ApplicantType> |          |     | <ProductType |
      | Percentage         | throws an error with error message | 199                          | financial_details.xlsx | other_income_details  | <ApplicationStage> | <Occupation> | <ApplicantType> |          |     | <ProductType |
      | Frequency          | throws an error with error message | 70                           | financial_details.xlsx | other_income_details  | <ApplicationStage> | <Occupation> | <ApplicantType> |          |     | <ProductType |
#${ProductType:["IHF","IAF"]}
 #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Occupation:["Agriculture"]}
    @Islamic
    @Release
    @Part-2
    @ImplementedBy-harshita.nayak
    Examples:
      | Field_Name         | Throws_notThrows                   | FinancialDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_home | ApplicationStage   | Occupation   | ApplicantType   | Category | Key | ProductType   |
      | Income Head        | throws an error with error message | 171                          | financial_details.xlsx | other_income_details  | <ApplicationStage> | <Occupation> | <ApplicantType> |          |     | <ProductType> |
      | Income Source      | throws an error with error message | 171                          | financial_details.xlsx | other_income_details  | <ApplicationStage> | <Occupation> | <ApplicantType> |          |     | <ProductType> |
      | Sharing Percentage | throws an error with error message | 68                           | financial_details.xlsx | other_income_details  | <ApplicationStage> | <Occupation> | <ApplicantType> |          |     | <ProductType> |
      | Amount             | throws an error with error message | 198                          | financial_details.xlsx | other_income_details  | <ApplicationStage> | <Occupation> | <ApplicantType> |          |     | <ProductType> |
      | Percentage         | throws an error with error message | 199                          | financial_details.xlsx | other_income_details  | <ApplicationStage> | <Occupation> | <ApplicantType> |          |     | <ProductType> |
      | Frequency          | throws an error with error message | 70                           | financial_details.xlsx | other_income_details  | <ApplicationStage> | <Occupation> | <ApplicantType> |          |     | <ProductType> |
#${ProductType:["IPF"]}
    #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
      #${ Category:["bonds","shares","metals"]}
    #${Occupation:["Agriculture"]}
    @Islamic
    @Release
    @Part-2
    @ImplementedBy-harshita.nayak
    Examples:
      | Field_Name         | Throws_notThrows                   | FinancialDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_home | ApplicationStage   | Occupation   | ApplicantType   | Category   | Key | ProductType   |
      | Income Head        | throws an error with error message | 171                          | financial_details.xlsx | other_income_details  | <ApplicationStage> | <Occupation> | <ApplicantType> | <Category> |     | <ProductType> |
      | Income Source      | throws an error with error message | 171                          | financial_details.xlsx | other_income_details  | <ApplicationStage> | <Occupation> | <ApplicantType> | <Category> |     | <ProductType> |
      | Sharing Percentage | throws an error with error message | 68                           | financial_details.xlsx | other_income_details  | <ApplicationStage> | <Occupation> | <ApplicantType> | <Category> |     | <ProductType> |
      | Amount             | throws an error with error message | 198                          | financial_details.xlsx | other_income_details  | <ApplicationStage> | <Occupation> | <ApplicantType> | <Category> |     | <ProductType> |
      | Percentage         | throws an error with error message | 199                          | financial_details.xlsx | other_income_details  | <ApplicationStage> | <Occupation> | <ApplicantType> | <Category> |     | <ProductType> |
      | Frequency          | throws an error with error message | 70                           | financial_details.xlsx | other_income_details  | <ApplicationStage> | <Occupation> | <ApplicantType> | <Category> |     | <ProductType> |

     # ${ProductType:["FAS","GL","JLG","SHG"]}
 #${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Occupation:["Agriculture"]}
    @NotImplemented
    Examples:
      | Field_Name         | Throws_notThrows                   | FinancialDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_home | ApplicationStage   | Occupation   | ApplicantType   | Category | Key | ProductType  |
      | Income Head        | throws an error with error message | 59                           | financial_details.xlsx | other_income_details  | <ApplicationStage> | <Occupation> | <ApplicantType> |          |     | <ProductType |
      | Income Source      | throws an error with error message | 59                           | financial_details.xlsx | other_income_details  | <ApplicationStage> | <Occupation> | <ApplicantType> |          |     | <ProductType |
      | Sharing Percentage | throws an error with error message | 68                           | financial_details.xlsx | other_income_details  | <ApplicationStage> | <Occupation> | <ApplicantType> |          |     | <ProductType |
      | Amount             | throws an error with error message | 198                          | financial_details.xlsx | other_income_details  | <ApplicationStage> | <Occupation> | <ApplicantType> |          |     | <ProductType |
      | Percentage         | throws an error with error message | 199                          | financial_details.xlsx | other_income_details  | <ApplicationStage> | <Occupation> | <ApplicantType> |          |     | <ProductType |
      | Frequency          | throws an error with error message | 70                           | financial_details.xlsx | other_income_details  | <ApplicationStage> | <Occupation> | <ApplicantType> |          |     | <ProductType |

  @Perishable
  Scenario Outline: ACAUTOCAS-1785: Validating <Field_Name> in other Income Details with <var>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user open Employment Details page on the basis of "<ApplicationStage>"
    And user reads employment details excel from datatable on the basis of "<Occupation>" type
      | employment_details.xlsx | home | 3 | Agriculture |
    And user fill employment details with Occupation Type as "<Occupation>"
    And user open financial details
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_home>" and row <FinancialDetails_home_rowNum>
    When user fills "<Field_Name>" field with "<var>" in other income details
    Then "<Field_Name>" field "<Throws_notThrows>" in other income details
    @ImplementedBy-ankit.yadav
    @ReleaseAppInfoM4
    @Conventional
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Occupation:["Agriculture"]}
    Examples:
      | Field_Name | var                            | Throws_notThrows                   | FinancialDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_home | ApplicationStage   | ProductType   | ApplicantType   | Category | Key | Occupation   |
      | Amount     | valid value                    | does not throw any error           | 61                           | financial_details.xlsx | other_income_details  | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | <Occupation> |
      | Amount     | up to 18 digits                | does not throw any error           | 62                           | financial_details.xlsx | other_income_details  | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | <Occupation> |
      | Amount     | both digits and characters     | throws an error with error message | 63                           | financial_details.xlsx | other_income_details  | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | <Occupation> |
      | Amount     | special characters             | throws an error with error message | 64                           | financial_details.xlsx | other_income_details  | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | <Occupation> |
      | Amount     | space                          | throws an error with error message | 65                           | financial_details.xlsx | other_income_details  | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | <Occupation> |
      | Amount     | paise format                   | does not throw any error           | 66                           | financial_details.xlsx | other_income_details  | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | <Occupation> |
      | Amount     | zero value                     | does not throw any error           | 67                           | financial_details.xlsx | other_income_details  | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | <Occupation> |
      | Percentage | with valid                     | does not throw any error           | 61                           | financial_details.xlsx | other_income_details  | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | <Occupation> |
      | Percentage | more than maximum value        | throws an error with error message | 62                           | financial_details.xlsx | other_income_details  | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | <Occupation> |
      | Percentage | with negative number           | throws an error with error message | 64                           | financial_details.xlsx | other_income_details  | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | <Occupation> |
      | Percentage | with two decimal places        | does not throw any error           | 67                           | financial_details.xlsx | other_income_details  | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | <Occupation> |
      | Sharing    | with valid                     | does not throw any error           | 61                           | financial_details.xlsx | other_income_details  | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | <Occupation> |
      | Sharing    | more than maximum value        | throws an error with error message | 62                           | financial_details.xlsx | other_income_details  | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | <Occupation> |
      | Sharing    | with both digits and character | throws an error with error message | 63                           | financial_details.xlsx | other_income_details  | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | <Occupation> |
      | Sharing    | with negative number           | throws an error with error message | 64                           | financial_details.xlsx | other_income_details  | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | <Occupation> |
      | Sharing    | with special character         | throws an error with error message | 65                           | financial_details.xlsx | other_income_details  | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | <Occupation> |
      | Sharing    | with space                     | throws an error with error message | 66                           | financial_details.xlsx | other_income_details  | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | <Occupation> |
      | Sharing    | with two decimal places        | does not throw any error           | 67                           | financial_details.xlsx | other_income_details  | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | <Occupation> |

    @LoggedBug
    Examples:
      | Field_Name | var                            | Throws_notThrows                   | FinancialDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_home | ApplicationStage   | ProductType   | ApplicantType   | Category | Key | Occupation   |
      | Percentage | with both digits and character | throws an error with error message | 63                           | financial_details.xlsx | other_income_details  | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | <Occupation> |
      | Percentage | with special character         | throws an error with error message | 65                           | financial_details.xlsx | other_income_details  | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | <Occupation> |
      | Percentage | with space                     | throws an error with error message | 66                           | financial_details.xlsx | other_income_details  | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | <Occupation> |

#${ProductType:["IHF","IAF"]}
 #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Occupation:["Agriculture"]}
    @Islamic
    @Release
    @Part-2
    @ImplementedBy-harshita.nayak
    Examples:
      | Field_Name | var                            | Throws_notThrows                   | FinancialDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_home | ApplicationStage   | ProductType   | ApplicantType   | Category | Key | Occupation   |
      | Amount     | valid value                    | does not throw any error           | 172                          | financial_details.xlsx | other_income_details  | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | <Occupation> |
      | Amount     | up to 18 digits                | does not throw any error           | 173                          | financial_details.xlsx | other_income_details  | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | <Occupation> |
      | Amount     | both digits and characters     | throws an error with error message | 174                          | financial_details.xlsx | other_income_details  | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | <Occupation> |
      | Amount     | special characters             | throws an error with error message | 175                          | financial_details.xlsx | other_income_details  | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | <Occupation> |
      | Amount     | space                          | throws an error with error message | 176                          | financial_details.xlsx | other_income_details  | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | <Occupation> |
      | Amount     | paise format                   | does not throw any error           | 177                          | financial_details.xlsx | other_income_details  | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | <Occupation> |
      | Amount     | zero value                     | does not throw any error           | 178                          | financial_details.xlsx | other_income_details  | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | <Occupation> |
      | Percentage | with valid                     | does not throw any error           | 172                          | financial_details.xlsx | other_income_details  | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | <Occupation> |
      | Percentage | more than maximum value        | throws an error with error message | 173                          | financial_details.xlsx | other_income_details  | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | <Occupation> |
      | Percentage | with negative number           | throws an error with error message | 175                          | financial_details.xlsx | other_income_details  | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | <Occupation> |
      | Percentage | with two decimal places        | does not throw any error           | 178                          | financial_details.xlsx | other_income_details  | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | <Occupation> |
      | Percentage | with both digits and character | throws an error with error message | 174                          | financial_details.xlsx | other_income_details  | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | <Occupation> |
      | Percentage | with special character         | throws an error with error message | 176                          | financial_details.xlsx | other_income_details  | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | <Occupation> |
      | Percentage | with space                     | throws an error with error message | 177                          | financial_details.xlsx | other_income_details  | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | <Occupation> |
      | Sharing    | with valid                     | does not throw any error           | 172                          | financial_details.xlsx | other_income_details  | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | <Occupation> |
      | Sharing    | more than maximum value        | throws an error with error message | 173                          | financial_details.xlsx | other_income_details  | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | <Occupation> |
      | Sharing    | with both digits and character | throws an error with error message | 174                          | financial_details.xlsx | other_income_details  | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | <Occupation> |
      | Sharing    | with negative number           | throws an error with error message | 175                          | financial_details.xlsx | other_income_details  | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | <Occupation> |
      | Sharing    | with special character         | throws an error with error message | 176                          | financial_details.xlsx | other_income_details  | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | <Occupation> |
      | Sharing    | with space                     | throws an error with error message | 177                          | financial_details.xlsx | other_income_details  | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | <Occupation> |
      | Sharing    | with two decimal places        | does not throw any error           | 178                          | financial_details.xlsx | other_income_details  | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | <Occupation> |
    #${ProductType:["IPF"]}
    #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
      #${ Category:["bonds","shares","metals"]}
    #${Occupation:["Agriculture"]}
    @Islamic
    @Release
    @Part-2
    @ImplementedBy-harshita.nayak
    Examples:
      | Field_Name | var                            | Throws_notThrows                   | FinancialDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_home | ApplicationStage   | ProductType   | ApplicantType   | Category   | Key | Occupation   |
      | Amount     | valid value                    | does not throw any error           | 172                          | financial_details.xlsx | other_income_details  | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | <Occupation> |
      | Amount     | up to 18 digits                | does not throw any error           | 173                          | financial_details.xlsx | other_income_details  | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | <Occupation> |
      | Amount     | both digits and characters     | throws an error with error message | 174                          | financial_details.xlsx | other_income_details  | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | <Occupation> |
      | Amount     | special characters             | throws an error with error message | 175                          | financial_details.xlsx | other_income_details  | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | <Occupation> |
      | Amount     | space                          | throws an error with error message | 176                          | financial_details.xlsx | other_income_details  | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | <Occupation> |
      | Amount     | paise format                   | does not throw any error           | 177                          | financial_details.xlsx | other_income_details  | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | <Occupation> |
      | Amount     | zero value                     | does not throw any error           | 178                          | financial_details.xlsx | other_income_details  | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | <Occupation> |
      | Percentage | with valid                     | does not throw any error           | 172                          | financial_details.xlsx | other_income_details  | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | <Occupation> |
      | Percentage | more than maximum value        | throws an error with error message | 173                          | financial_details.xlsx | other_income_details  | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | <Occupation> |
      | Percentage | with negative number           | throws an error with error message | 175                          | financial_details.xlsx | other_income_details  | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | <Occupation> |
      | Percentage | with two decimal places        | does not throw any error           | 178                          | financial_details.xlsx | other_income_details  | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | <Occupation> |
      | Percentage | with both digits and character | throws an error with error message | 174                          | financial_details.xlsx | other_income_details  | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | <Occupation> |
      | Percentage | with special character         | throws an error with error message | 176                          | financial_details.xlsx | other_income_details  | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | <Occupation> |
      | Percentage | with space                     | throws an error with error message | 177                          | financial_details.xlsx | other_income_details  | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | <Occupation> |
      | Sharing    | with valid                     | does not throw any error           | 172                          | financial_details.xlsx | other_income_details  | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | <Occupation> |
      | Sharing    | more than maximum value        | throws an error with error message | 173                          | financial_details.xlsx | other_income_details  | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | <Occupation> |
      | Sharing    | with both digits and character | throws an error with error message | 174                          | financial_details.xlsx | other_income_details  | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | <Occupation> |
      | Sharing    | with negative number           | throws an error with error message | 175                          | financial_details.xlsx | other_income_details  | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | <Occupation> |
      | Sharing    | with special character         | throws an error with error message | 176                          | financial_details.xlsx | other_income_details  | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | <Occupation> |
      | Sharing    | with space                     | throws an error with error message | 177                          | financial_details.xlsx | other_income_details  | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | <Occupation> |
      | Sharing    | with two decimal places        | does not throw any error           | 178                          | financial_details.xlsx | other_income_details  | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | <Occupation> |

     # ${ProductType:["FAS","GL","JLG","SHG"]}
 #${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Occupation:["Agriculture"]}
    @NotImplemented
    Examples:
      | Field_Name | var                            | Throws_notThrows                   | FinancialDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_home | ApplicationStage   | ProductType   | ApplicantType   | Category | Key | Occupation   |
      | Amount     | valid value                    | does not throw any error           | 61                           | financial_details.xlsx | other_income_details  | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | <Occupation> |
      | Amount     | up to 18 digits                | does not throw any error           | 62                           | financial_details.xlsx | other_income_details  | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | <Occupation> |
      | Amount     | both digits and characters     | throws an error with error message | 63                           | financial_details.xlsx | other_income_details  | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | <Occupation> |
      | Amount     | special characters             | throws an error with error message | 64                           | financial_details.xlsx | other_income_details  | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | <Occupation> |
      | Amount     | space                          | throws an error with error message | 65                           | financial_details.xlsx | other_income_details  | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | <Occupation> |
      | Amount     | paise format                   | does not throw any error           | 66                           | financial_details.xlsx | other_income_details  | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | <Occupation> |
      | Amount     | zero value                     | does not throw any error           | 67                           | financial_details.xlsx | other_income_details  | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | <Occupation> |
      | Percentage | with valid                     | does not throw any error           | 61                           | financial_details.xlsx | other_income_details  | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | <Occupation> |
      | Percentage | more than maximum value        | throws an error with error message | 62                           | financial_details.xlsx | other_income_details  | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | <Occupation> |
      | Percentage | with negative number           | throws an error with error message | 64                           | financial_details.xlsx | other_income_details  | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | <Occupation> |
      | Percentage | with two decimal places        | does not throw any error           | 67                           | financial_details.xlsx | other_income_details  | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | <Occupation> |
      | Sharing    | with valid                     | does not throw any error           | 61                           | financial_details.xlsx | other_income_details  | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | <Occupation> |
      | Sharing    | more than maximum value        | throws an error with error message | 62                           | financial_details.xlsx | other_income_details  | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | <Occupation> |
      | Sharing    | with both digits and character | throws an error with error message | 63                           | financial_details.xlsx | other_income_details  | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | <Occupation> |
      | Sharing    | with negative number           | throws an error with error message | 64                           | financial_details.xlsx | other_income_details  | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | <Occupation> |
      | Sharing    | with special character         | throws an error with error message | 65                           | financial_details.xlsx | other_income_details  | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | <Occupation> |
      | Sharing    | with space                     | throws an error with error message | 66                           | financial_details.xlsx | other_income_details  | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | <Occupation> |
      | Sharing    | with two decimal places        | does not throw any error           | 67                           | financial_details.xlsx | other_income_details  | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | <Occupation> |

    @LoggedBug
    Examples:
      | Field_Name | var                            | Throws_notThrows                   | FinancialDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_home | ApplicationStage   | ProductType   | ApplicantType   | Category | Key | Occupation   |
      | Percentage | with both digits and character | throws an error with error message | 63                           | financial_details.xlsx | other_income_details  | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | <Occupation> |
      | Percentage | with special character         | throws an error with error message | 65                           | financial_details.xlsx | other_income_details  | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | <Occupation> |
      | Percentage | with space                     | throws an error with error message | 66                           | financial_details.xlsx | other_income_details  | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | <Occupation> |

    @Perishable
  Scenario Outline: ACAUTOCAS-1786:  In Selection of frequency as "<Var>" net amount changes
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user open Employment Details page on the basis of "<ApplicationStage>"
    And user reads employment details excel from datatable on the basis of "<Occupation>" type
      | employment_details.xlsx | home | 3 | Agriculture |
    And user fill employment details with Occupation Type as "<Occupation>"
    And user open financial details
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_home>" and row <FinancialDetails_home_rowNum>
    When user enters income amount
    And select other income frequency as "<Var>"
    Then net amount should be evaluated as "<Times>" times of income amount
    @ImplementedBy-ankit.yadav
    @ReleaseAppInfoM4
    @Conventional
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Occupation:["Agriculture"]}
    Examples:
      | Times | Var              | FinancialDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_home | ApplicationStage   | Occupation   | ApplicantType   | Category | Key | ProductType   |
      | 12    | ?a_?????_Monthly | 30                           | financial_details.xlsx | other_income_details  | <ApplicationStage> | <Occupation> | <ApplicantType> |          |     | <ProductType> |
      | 4     | Quarterly        | 31                           | financial_details.xlsx | other_income_details  | <ApplicationStage> | <Occupation> | <ApplicantType> |          |     | <ProductType> |
      | 1     | Annually         | 32                           | financial_details.xlsx | other_income_details  | <ApplicationStage> | <Occupation> | <ApplicantType> |          |     | <ProductType> |
      | 6     | Bi-Monthly       | 33                           | financial_details.xlsx | other_income_details  | <ApplicationStage> | <Occupation> | <ApplicantType> |          |     | <ProductType> |
      | 26    | Fortnightly      | 34                           | financial_details.xlsx | other_income_details  | <ApplicationStage> | <Occupation> | <ApplicantType> |          |     | <ProductType> |
      | 2     | Half Yearly      | 35                           | financial_details.xlsx | other_income_details  | <ApplicationStage> | <Occupation> | <ApplicantType> |          |     | <ProductType> |
      | 1     | OneTime          | 36                           | financial_details.xlsx | other_income_details  | <ApplicationStage> | <Occupation> | <ApplicantType> |          |     | <ProductType> |
      | 52    | Weekly           | 37                           | financial_details.xlsx | other_income_details  | <ApplicationStage> | <Occupation> | <ApplicantType> |          |     | <ProductType> |
  #${ProductType:["IHF","IAF"]}
 #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Occupation:["Agriculture"]}
    @Islamic
    @Release
    @Part-2
    @ImplementedBy-harshita.nayak
    Examples:
      | Times | Var         | FinancialDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_home | ApplicationStage   | Occupation   | ApplicantType   | Category | Key | ProductType   |
      | 12    | Monthly     | 180                          | financial_details.xlsx | other_income_details  | <ApplicationStage> | <Occupation> | <ApplicantType> |          |     | <ProductType> |
      | 4     | Quarterly   | 181                          | financial_details.xlsx | other_income_details  | <ApplicationStage> | <Occupation> | <ApplicantType> |          |     | <ProductType> |
      | 1     | Annually    | 182                          | financial_details.xlsx | other_income_details  | <ApplicationStage> | <Occupation> | <ApplicantType> |          |     | <ProductType> |
      | 6     | Bi-Monthly  | 183                          | financial_details.xlsx | other_income_details  | <ApplicationStage> | <Occupation> | <ApplicantType> |          |     | <ProductType> |
      | 26    | Fortnightly | 184                          | financial_details.xlsx | other_income_details  | <ApplicationStage> | <Occupation> | <ApplicantType> |          |     | <ProductType> |
      | 2     | Half Yearly | 185                          | financial_details.xlsx | other_income_details  | <ApplicationStage> | <Occupation> | <ApplicantType> |          |     | <ProductType> |
      | 1     | OneTime     | 186                          | financial_details.xlsx | other_income_details  | <ApplicationStage> | <Occupation> | <ApplicantType> |          |     | <ProductType> |
      | 52    | Weekly      | 187                          | financial_details.xlsx | other_income_details  | <ApplicationStage> | <Occupation> | <ApplicantType> |          |     | <ProductType> |

  #${ProductType:["IPF"]}
    #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
      #${ Category:["bonds","shares","metals"]}
    #${Occupation:["Agriculture"]}
    @FixedJsClick2
    @Islamic
    @Release
    @Part-2
    @ImplementedBy-harshita.nayak
    Examples:
      | Times | Var         | FinancialDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_home | ApplicationStage   | Occupation   | ApplicantType   | Category   | Key | ProductType   |
      | 12    | Monthly     | 180                          | financial_details.xlsx | other_income_details  | <ApplicationStage> | <Occupation> | <ApplicantType> | <Category> |     | <ProductType> |
      | 4     | Quarterly   | 181                          | financial_details.xlsx | other_income_details  | <ApplicationStage> | <Occupation> | <ApplicantType> | <Category> |     | <ProductType> |
      | 1     | Annually    | 182                          | financial_details.xlsx | other_income_details  | <ApplicationStage> | <Occupation> | <ApplicantType> | <Category> |     | <ProductType> |
      | 6     | Bi-Monthly  | 183                          | financial_details.xlsx | other_income_details  | <ApplicationStage> | <Occupation> | <ApplicantType> | <Category> |     | <ProductType> |
      | 26    | Fortnightly | 184                          | financial_details.xlsx | other_income_details  | <ApplicationStage> | <Occupation> | <ApplicantType> | <Category> |     | <ProductType> |
      | 2     | Half Yearly | 185                          | financial_details.xlsx | other_income_details  | <ApplicationStage> | <Occupation> | <ApplicantType> | <Category> |     | <ProductType> |
      | 1     | OneTime     | 186                          | financial_details.xlsx | other_income_details  | <ApplicationStage> | <Occupation> | <ApplicantType> | <Category> |     | <ProductType> |
      | 52    | Weekly      | 187                          | financial_details.xlsx | other_income_details  | <ApplicationStage> | <Occupation> | <ApplicantType> | <Category> |     | <ProductType> |
 # ${ProductType:["FAS","GL","JLG","SHG"]}
 #${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Occupation:["Agriculture"]}
    @NotImplemented
    Examples:
      | Times | Var              | FinancialDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_home | ApplicationStage   | Occupation   | ApplicantType   | Category | Key | ProductType   |
      | 12    | ?a_?????_Monthly | 30                           | financial_details.xlsx | other_income_details  | <ApplicationStage> | <Occupation> | <ApplicantType> |          |     | <ProductType> |
      | 4     | Quarterly        | 31                           | financial_details.xlsx | other_income_details  | <ApplicationStage> | <Occupation> | <ApplicantType> |          |     | <ProductType> |
      | 1     | Annually         | 32                           | financial_details.xlsx | other_income_details  | <ApplicationStage> | <Occupation> | <ApplicantType> |          |     | <ProductType> |
      | 6     | Bi-Monthly       | 33                           | financial_details.xlsx | other_income_details  | <ApplicationStage> | <Occupation> | <ApplicantType> |          |     | <ProductType> |
      | 26    | Fortnightly      | 34                           | financial_details.xlsx | other_income_details  | <ApplicationStage> | <Occupation> | <ApplicantType> |          |     | <ProductType> |
      | 2     | Half Yearly      | 35                           | financial_details.xlsx | other_income_details  | <ApplicationStage> | <Occupation> | <ApplicantType> |          |     | <ProductType> |
      | 1     | OneTime          | 36                           | financial_details.xlsx | other_income_details  | <ApplicationStage> | <Occupation> | <ApplicantType> |          |     | <ProductType> |
      | 52    | Weekly           | 37                           | financial_details.xlsx | other_income_details  | <ApplicationStage> | <Occupation> | <ApplicantType> |          |     | <ProductType> |

  Scenario Outline: ACAUTOCAS-1787: Add primary and secondary income sharing percentage in more details
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user open Employment Details page on the basis of "<ApplicationStage>"
    And user reads employment details excel from datatable on the basis of "<Occupation>" type
      | employment_details.xlsx | home | 3 | Agriculture |
    And user fill employment details with Occupation Type as "<Occupation>"
    And user open financial details
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_home>" and row <FinancialDetails_home_rowNum>
    When user adds primary and secondary income sharing percentage with sum more than hundred percentage
    Then primary and secondary income sharing percentage should not be saved
    @ImplementedBy-ankit.yadav
    @ReleaseAppInfoM4
    @Conventional
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
     #${Occupation:["Agriculture"]}
    Examples:
      | FinancialDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_home | ApplicationStage   | Occupation   | ApplicantType   | Category | Key | ProductType   |
      | 40                           | financial_details.xlsx | other_income_details  | <ApplicationStage> | <Occupation> | <ApplicantType> |          |     | <ProductType> |

    #${ProductType:["IHF","IAF"]}
 #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Occupation:["Agriculture"]}
    @Islamic
    @Release
    @Part-2
    @ImplementedBy-harshita.nayak
    Examples:
      | FinancialDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_home | ApplicationStage   | Occupation   | ApplicantType   | Category | Key | ProductType   |
      | 188                          | financial_details.xlsx | other_income_details  | <ApplicationStage> | <Occupation> | <ApplicantType> |          |     | <ProductType> |
#${ProductType:["IPF"]}
    #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
      #${ Category:["bonds","shares","metals"]}
    #${Occupation:["Agriculture"]}
    @Islamic
    @Release
    @Part-2
    @ImplementedBy-harshita.nayak
    Examples:
      | FinancialDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_home | ApplicationStage   | Occupation   | ApplicantType   | Category   | Key | ProductType   |
      | 188                          | financial_details.xlsx | other_income_details  | <ApplicationStage> | <Occupation> | <ApplicantType> | <Category> |     | <ProductType> |

   # ${ProductType:["FAS","GL","JLG","SHG"]}
 #${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Occupation:["Agriculture"]}
    @NotImplemented
    Examples:
      | FinancialDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_home | ApplicationStage   | Occupation   | ApplicantType   | Category | Key | ProductType   |
      | 40                           | financial_details.xlsx | other_income_details  | <ApplicationStage> | <Occupation> | <ApplicantType> |          |     | <ProductType> |

  Scenario Outline: ACAUTOCAS-1788:  Add income sharing details without "<Field_Name>"
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user open Employment Details page on the basis of "<ApplicationStage>"
    And user reads employment details excel from datatable on the basis of "<Occupation>" type
      | employment_details.xlsx | home | 3 | Agriculture |
    And user fill employment details with Occupation Type as "<Occupation>"
    And user open financial details
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_home>" and row <FinancialDetails_home_rowNum>
    When user fills income sharing details without "<Field_Name>"
    Then "<Throws_notThrows>" message should display around "<Field_Name>" field

    @ImplementedBy-ankit.yadav
    @ReleaseAppInfoM4
    @Conventional
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
     #${Occupation:["Agriculture"]}
    Examples:
      | Field_Name         | Throws_notThrows                   | FinancialDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_home | ApplicationStage   | Occupation   | ApplicantType   | Category | Key | ProductType   |
      | Applicant_Type     | throws an error with error message | 59                           | financial_details.xlsx | other_income_details  | <ApplicationStage> | <Occupation> | <ApplicantType> |          |     | <ProductType> |
      | Name               | throws an error with error message | 59                           | financial_details.xlsx | other_income_details  | <ApplicationStage> | <Occupation> | <ApplicantType> |          |     | <ProductType> |
      | Sharing_Percentage | throws an error with error message | 59                           | financial_details.xlsx | other_income_details  | <ApplicationStage> | <Occupation> | <ApplicantType> |          |     | <ProductType> |
  #${ProductType:["IHF","IAF"]}
 #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Occupation:["Agriculture"]}
    @Islamic
    @Release
    @Part-2
    @ImplementedBy-harshita.nayak
    Examples:
      | Field_Name         | Throws_notThrows                   | FinancialDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_home | ApplicationStage   | Occupation   | ApplicantType   | Category | Key | ProductType   |
      | Applicant_Type     | throws an error with error message | 171                          | financial_details.xlsx | other_income_details  | <ApplicationStage> | <Occupation> | <ApplicantType> |          |     | <ProductType> |
      | Name               | throws an error with error message | 171                          | financial_details.xlsx | other_income_details  | <ApplicationStage> | <Occupation> | <ApplicantType> |          |     | <ProductType> |
      | Sharing_Percentage | throws an error with error message | 171                          | financial_details.xlsx | other_income_details  | <ApplicationStage> | <Occupation> | <ApplicantType> |          |     | <ProductType> |
#${ProductType:["IPF"]}
    #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
      #${ Category:["bonds","shares","metals"]}
    #${Occupation:["Agriculture"]}
    @Islamic
    @Release
    @Part-2
    @ImplementedBy-harshita.nayak
    Examples:
      | Field_Name         | Throws_notThrows                   | FinancialDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_home | ApplicationStage   | Occupation   | ApplicantType   | Category   | Key | ProductType   |
      | Applicant_Type     | throws an error with error message | 171                          | financial_details.xlsx | other_income_details  | <ApplicationStage> | <Occupation> | <ApplicantType> | <Category> |     | <ProductType> |
      | Name               | throws an error with error message | 171                          | financial_details.xlsx | other_income_details  | <ApplicationStage> | <Occupation> | <ApplicantType> | <Category> |     | <ProductType> |
      | Sharing_Percentage | throws an error with error message | 171                          | financial_details.xlsx | other_income_details  | <ApplicationStage> | <Occupation> | <ApplicantType> | <Category> |     | <ProductType> |
  # ${ProductType:["FAS","GL","JLG","SHG"]}
 #${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Occupation:["Agriculture"]}
    @NotImplemented
    Examples:
      | Field_Name         | Throws_notThrows                   | FinancialDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_home | ApplicationStage   | Occupation   | ApplicantType   | Category | Key | ProductType   |
      | Applicant_Type     | throws an error with error message | 59                           | financial_details.xlsx | other_income_details  | <ApplicationStage> | <Occupation> | <ApplicantType> |          |     | <ProductType> |
      | Name               | throws an error with error message | 59                           | financial_details.xlsx | other_income_details  | <ApplicationStage> | <Occupation> | <ApplicantType> |          |     | <ProductType> |
      | Sharing_Percentage | throws an error with error message | 59                           | financial_details.xlsx | other_income_details  | <ApplicationStage> | <Occupation> | <ApplicantType> |          |     | <ProductType> |

  Scenario Outline: ACAUTOCAS-1789: Add multiple income sharing details
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user open Employment Details page on the basis of "<ApplicationStage>"
    And user reads employment details excel from datatable on the basis of "<Occupation>" type
      | employment_details.xlsx | home | 3 | Agriculture |
    And user fill employment details with Occupation Type as "<Occupation>"
    And user open financial details
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_home>" and row <FinancialDetails_home_rowNum>
    When user adds multiple income sharing details
    Then multiple income sharing details should be saved successfully
    @ImplementedBy-ankit.yadav
    @ReleaseAppInfoM4
    @Conventional
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Occupation:["Agriculture"]}
    Examples:
      | FinancialDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_home | ApplicationStage   | Occupation   | ApplicantType   | Category | Key | ProductType   |
      | 60                           | financial_details.xlsx | other_income_details  | <ApplicationStage> | <Occupation> | <ApplicantType> |          |     | <ProductType> |
 #${ProductType:["IHF","IAF"]}
 #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Occupation:["Agriculture"]}
    @Islamic
    @Release
    @Part-2
    @ImplementedBy-harshita.nayak
    Examples:
      | FinancialDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_home | ApplicationStage   | Occupation   | ApplicantType   | Category | Key | ProductType   |
      | 171                          | financial_details.xlsx | other_income_details  | <ApplicationStage> | <Occupation> | <ApplicantType> |          |     | <ProductType> |

        #${ProductType:["IPF"]}
    #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
      #${ Category:["bonds","shares","metals"]}
    #${Occupation:["Agriculture"]}
    @Islamic
    @Release
    @Part-2
    @ImplementedBy-harshita.nayak
    Examples:
      | FinancialDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_home | ApplicationStage   | Occupation   | ApplicantType   | Category   | Key | ProductType   |
      | 171                          | financial_details.xlsx | other_income_details  | <ApplicationStage> | <Occupation> | <ApplicantType> | <Category> |     | <ProductType> |
 # ${ProductType:["FAS","GL","JLG","SHG"]}
 #${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Occupation:["Agriculture"]}
    @NotImplemented
    Examples:
      | FinancialDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_home | ApplicationStage   | Occupation   | ApplicantType   | Category | Key | ProductType   |
      | 60                           | financial_details.xlsx | other_income_details  | <ApplicationStage> | <Occupation> | <ApplicantType> |          |     | <ProductType> |

  Scenario Outline: ACAUTOCAS-1790: Delete income sharing details
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user open Employment Details page on the basis of "<ApplicationStage>"
    And user reads employment details excel from datatable on the basis of "<Occupation>" type
      | employment_details.xlsx | home | 3 | Agriculture |
    And user fill employment details with Occupation Type as "<Occupation>"
    And user open financial details
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_home>" and row <FinancialDetails_home_rowNum>
    When user adds multiple income sharing details
    And user deletes multiple income sharing details
    Then income sharing details should be deleted successfully
    @ImplementedBy-ankit.yadav
    @ReleaseAppInfoM4
    @Conventional
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Occupation:["Agriculture"]}
    Examples:
      | FinancialDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_home | ApplicationStage   | Occupation   | ApplicantType   | Category | Key | ProductType   |
      | 60                           | financial_details.xlsx | other_income_details  | <ApplicationStage> | <Occupation> | <ApplicantType> |          |     | <ProductType> |
 #${ProductType:["IHF","IAF"]}
 #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Occupation:["Agriculture"]}
    @Islamic
    @Release
    @Part-2
    @ImplementedBy-harshita.nayak
    Examples:
      | FinancialDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_home | ApplicationStage   | Occupation   | ApplicantType   | Category | Key | ProductType   |
      | 171                          | financial_details.xlsx | other_income_details  | <ApplicationStage> | <Occupation> | <ApplicantType> |          |     | <ProductType> |

        #${ProductType:["IPF"]}
    #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
      #${ Category:["bonds","shares","metals"]}
    #${Occupation:["Agriculture"]}
    @FixedJsClick
    @Islamic
    @Release
    @Part-2
    @ImplementedBy-harshita.nayak
    Examples:
      | FinancialDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_home | ApplicationStage   | Occupation   | ApplicantType   | Category   | Key | ProductType   |
      | 171                          | financial_details.xlsx | other_income_details  | <ApplicationStage> | <Occupation> | <ApplicantType> | <Category> |     | <ProductType> |
 # ${ProductType:["FAS","GL","JLG","SHG"]}
 #${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Occupation:["Agriculture"]}
    @NotImplemented
    Examples:
      | FinancialDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_home | ApplicationStage   | Occupation   | ApplicantType   | Category | Key | ProductType   |
      | 60                           | financial_details.xlsx | other_income_details  | <ApplicationStage> | <Occupation> | <ApplicantType> |          |     | <ProductType> |

  Scenario Outline: ACAUTOCAS-3431:  In Selection of <Field_Name> <Dependent_Field> is autofilled in other income
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user open Employment Details page on the basis of "<ApplicationStage>"
    And user reads employment details excel from datatable on the basis of "<Occupation>" type
      | employment_details.xlsx | home | 3 | Agriculture |
    And user fill employment details with Occupation Type as "<Occupation>"
    And user open financial details
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_home>" and row <FinancialDetails_home_rowNum>
    When user adds "<Field_Name>" fields in other income details
    Then "<Dependent_Field>" should be auto computed correctly in other income details
    @ImplementedBy-ankit.yadav
    @ReleaseAppInfoM4
    @Conventional
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Occupation:["Agriculture"]}
    Examples:
      | Field_Name                                                                                   | Dependent_Field | FinancialDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_home | ApplicationStage   | Occupation   | ApplicantType   | Category | Key | ProductType   |
      | income amount, income frequency, percentage and sharing percentage                           | Net Amount      | 59                           | financial_details.xlsx | other_income_details  | <ApplicationStage> | <Occupation> | <ApplicantType> |          |     | <ProductType> |
      | income head,income source,income amount, income frequency, percentage and sharing percentage | Net Amount      | 59                           | financial_details.xlsx | other_income_details  | <ApplicationStage> | <Occupation> | <ApplicantType> |          |     | <ProductType> |

    #${ProductType:["IHF","IAF"]}
 #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Occupation:["Agriculture"]}
    @Islamic
    @Release
    @Part-2
    @ImplementedBy-harshita.nayak
    Examples:
      | Field_Name                                                                                   | Dependent_Field | FinancialDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_home | ApplicationStage   | Occupation   | ApplicantType   | Category | Key | ProductType   |
      | income amount, income frequency, percentage and sharing percentage                           | Net Amount      | 171                          | financial_details.xlsx | other_income_details  | <ApplicationStage> | <Occupation> | <ApplicantType> |          |     | <ProductType> |
      | income head,income source,income amount, income frequency, percentage and sharing percentage | Net Amount      | 171                          | financial_details.xlsx | other_income_details  | <ApplicationStage> | <Occupation> | <ApplicantType> |          |     | <ProductType> |
 #${ProductType:["IPF"]}
    #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
      #${ Category:["bonds","shares","metals"]}
    #${Occupation:["Agriculture"]}
    @Islamic
    @Release
    @Part-2
    @ImplementedBy-harshita.nayak
    Examples:
      | Field_Name                                                                                   | Dependent_Field | FinancialDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_home | ApplicationStage   | Occupation   | ApplicantType   | Category   | Key | ProductType   |
      | income amount, income frequency, percentage and sharing percentage                           | Net Amount      | 171                          | financial_details.xlsx | other_income_details  | <ApplicationStage> | <Occupation> | <ApplicantType> | <Category> |     | <ProductType> |
      | income head,income source,income amount, income frequency, percentage and sharing percentage | Net Amount      | 171                          | financial_details.xlsx | other_income_details  | <ApplicationStage> | <Occupation> | <ApplicantType> | <Category> |     | <ProductType> |
 # ${ProductType:["FAS","GL","JLG","SHG"]}
 #${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Occupation:["Agriculture"]}
    @NotImplemented
    Examples:
      | Field_Name                                                                                   | Dependent_Field | FinancialDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_home | ApplicationStage   | Occupation   | ApplicantType   | Category | Key | ProductType   |
      | income amount, income frequency, percentage and sharing percentage                           | Net Amount      | 59                           | financial_details.xlsx | other_income_details  | <ApplicationStage> | <Occupation> | <ApplicantType> |          |     | <ProductType> |
      | income head,income source,income amount, income frequency, percentage and sharing percentage | Net Amount      | 59                           | financial_details.xlsx | other_income_details  | <ApplicationStage> | <Occupation> | <ApplicantType> |          |     | <ProductType> |
