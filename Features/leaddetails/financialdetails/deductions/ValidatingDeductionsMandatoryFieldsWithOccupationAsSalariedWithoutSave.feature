@Epic-Applicant_Information
@AuthoredBy-utkarsh.tiwari
@ImplementedBy-utkarsh.tiwari
@Release1
@Reconciled
@ReviewedByDEV
@AppInfoAdoption
@Perishable
#FeatureID-ACAUTOCAS-161
 #${ApplicantType:["indiv"]}
Feature: Validating Deductions Mandatory Fields with Occupation as Salaried Without Save

  Scenario Outline: ACAUTOCAS-3862:  Changing Currency in Deductions in Financial Details to <Currency> with <Validity> data
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user navigates to applicant details page of "<ApplicationStage>"
    And click on view edit detailed info
    And user reads data from the excel file "<EmploymentDetailsWB>" under sheet "<EmploymentDetails_home>" and row <EmploymentDetails_home_rowNum>
    And user fills employment details without save and next for "Salaried"
    And user changes major occupation to "Salaried"
    And user clicks on save and next of Employment Details
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_deductions>" and row <FinancialDetails_deductions_rowNum>
    When user changes currency to "<Currency>"
    Then currency is changed successfully to "<Currency>"
    @Islamic
    @Release
@Part-1
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category:["bonds"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | key | Validity | Currency | SourceDataFile       | SheetName | RowNumber | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_deductions | FinancialDetails_deductions_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | valid    | USD      | LoginDetailsCAS.xlsx | LoginData | 7         | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | deductions                  | 10                                 |

    @Islamic
    @Release
@Part-1
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | Validity | Currency | SourceDataFile       | SheetName | RowNumber | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_deductions | FinancialDetails_deductions_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | valid    | USD      | LoginDetailsCAS.xlsx | LoginData | 7         | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | deductions                  | 10                                 |

    @Conventional
    @Release @Part-1
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
   # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | Validity | Currency | SourceDataFile       | SheetName | RowNumber | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_deductions | FinancialDetails_deductions_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | valid    | USD      | LoginDetailsCAS.xlsx | LoginData | 7         | employment_details.xlsx | home                   | 130                           | financial_details.xlsx | deductions                  | 10                                 |

     # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | Validity | Currency | SourceDataFile       | SheetName | RowNumber | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_deductions | FinancialDetails_deductions_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | valid    | USD      | LoginDetailsCAS.xlsx | LoginData | 7         | employment_details.xlsx | home                   | 130                           | financial_details.xlsx | deductions                  | 10                                 |

  Scenario Outline: ACAUTOCAS-3863:  Validating Amount field in Deductions as <Validity> data with <Amount_Field_Data>
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user navigates to applicant details page of "<ApplicationStage>"
    And click on view edit detailed info
    And user reads data from the excel file "<EmploymentDetailsWB>" under sheet "<EmploymentDetails_home>" and row <EmploymentDetails_home_rowNum>
    And user fills employment details without save and next for "Salaried"
    And user changes major occupation to "Salaried"
    And user clicks on save and next of Employment Details
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_deductions>" and row <FinancialDetails_deductions_rowNum>
    When user fills "<Amount_Field_Data>" in amount in deductions
    Then application "<Throws_NotThrows>" "<Error_Message>"
    @Islamic
    @Release
@Part-1
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category:["bonds"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | key | Validity | Amount_Field_Data    | Throws_NotThrows         | SourceDataFile       | SheetName | RowNumber | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_deductions | FinancialDetails_deductions_rowNum | Error_Message                                                       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | valid    | valid data           | does_not_throw_any_error | LoginDetailsCAS.xlsx | LoginData | 7         | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | deductions                  | 11                                 |                                                                     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | valid    | max length           | does_not_throw_any_error | LoginDetailsCAS.xlsx | LoginData | 7         | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | deductions                  | 12                                 |                                                                     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | invalid  | more than max length | throws                   | LoginDetailsCAS.xlsx | LoginData | 7         | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | deductions                  | 13                                 | Only positive values and Upto 18 digits are allowed before decimal. |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | invalid  | both digits and char | throws                   | LoginDetailsCAS.xlsx | LoginData | 7         | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | deductions                  | 14                                 | Invalid Amount.                                                     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | invalid  | negative number      | throws                   | LoginDetailsCAS.xlsx | LoginData | 7         | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | deductions                  | 15                                 | Only positive values and Upto 18 digits are allowed before decimal. |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | invalid  | special char         | throws                   | LoginDetailsCAS.xlsx | LoginData | 7         | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | deductions                  | 16                                 | Invalid Amount.                                                     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | invalid  | with space           | throws                   | LoginDetailsCAS.xlsx | LoginData | 7         | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | deductions                  | 17                                 | Invalid Amount.                                                     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | valid    | paise format         | does_not_throw_any_error | LoginDetailsCAS.xlsx | LoginData | 7         | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | deductions                  | 18                                 |                                                                     |

    @Islamic
    @Release
@Part-1
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | Validity | Amount_Field_Data    | Throws_NotThrows         | SourceDataFile       | SheetName | RowNumber | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_deductions | FinancialDetails_deductions_rowNum | Error_Message                                                       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | valid    | valid data           | does_not_throw_any_error | LoginDetailsCAS.xlsx | LoginData | 7         | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | deductions                  | 11                                 |                                                                     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | valid    | max length           | does_not_throw_any_error | LoginDetailsCAS.xlsx | LoginData | 7         | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | deductions                  | 12                                 |                                                                     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | invalid  | more than max length | throws                   | LoginDetailsCAS.xlsx | LoginData | 7         | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | deductions                  | 13                                 | Only positive values and Upto 18 digits are allowed before decimal. |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | invalid  | both digits and char | throws                   | LoginDetailsCAS.xlsx | LoginData | 7         | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | deductions                  | 14                                 | Invalid Amount.                                                     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | invalid  | negative number      | throws                   | LoginDetailsCAS.xlsx | LoginData | 7         | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | deductions                  | 15                                 | Only positive values and Upto 18 digits are allowed before decimal. |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | invalid  | special char         | throws                   | LoginDetailsCAS.xlsx | LoginData | 7         | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | deductions                  | 16                                 | Invalid Amount.                                                     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | invalid  | with space           | throws                   | LoginDetailsCAS.xlsx | LoginData | 7         | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | deductions                  | 17                                 | Invalid Amount.                                                     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | valid    | paise format         | does_not_throw_any_error | LoginDetailsCAS.xlsx | LoginData | 7         | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | deductions                  | 18                                 |                                                                     |

    @Conventional
    @Release @Part-1
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
   # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | Validity | Amount_Field_Data    | Throws_NotThrows         | SourceDataFile       | SheetName | RowNumber | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_deductions | FinancialDetails_deductions_rowNum | Error_Message                                                       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | valid    | valid data           | does_not_throw_any_error | LoginDetailsCAS.xlsx | LoginData | 7         | employment_details.xlsx | home                   | 130                           | financial_details.xlsx | deductions                  | 11                                 |                                                                     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | valid    | max length           | does_not_throw_any_error | LoginDetailsCAS.xlsx | LoginData | 7         | employment_details.xlsx | home                   | 130                           | financial_details.xlsx | deductions                  | 12                                 |                                                                     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | invalid  | more than max length | throws                   | LoginDetailsCAS.xlsx | LoginData | 7         | employment_details.xlsx | home                   | 130                           | financial_details.xlsx | deductions                  | 13                                 | Only positive values and Upto 18 digits are allowed before decimal. |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | invalid  | both digits and char | throws                   | LoginDetailsCAS.xlsx | LoginData | 7         | employment_details.xlsx | home                   | 130                           | financial_details.xlsx | deductions                  | 14                                 | Invalid Amount.                                                     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | invalid  | negative number      | throws                   | LoginDetailsCAS.xlsx | LoginData | 7         | employment_details.xlsx | home                   | 130                           | financial_details.xlsx | deductions                  | 15                                 | Only positive values and Upto 18 digits are allowed before decimal. |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | invalid  | special char         | throws                   | LoginDetailsCAS.xlsx | LoginData | 7         | employment_details.xlsx | home                   | 130                           | financial_details.xlsx | deductions                  | 16                                 | Invalid Amount.                                                     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | invalid  | with space           | throws                   | LoginDetailsCAS.xlsx | LoginData | 7         | employment_details.xlsx | home                   | 130                           | financial_details.xlsx | deductions                  | 17                                 | Invalid Amount.                                                     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | valid    | paise format         | does_not_throw_any_error | LoginDetailsCAS.xlsx | LoginData | 7         | employment_details.xlsx | home                   | 130                           | financial_details.xlsx | deductions                  | 18                                 |                                                                     |

     # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | Validity | Amount_Field_Data    | Throws_NotThrows         | SourceDataFile       | SheetName | RowNumber | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_deductions | FinancialDetails_deductions_rowNum | Error_Message                                                       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | valid    | valid data           | does_not_throw_any_error | LoginDetailsCAS.xlsx | LoginData | 7         | employment_details.xlsx | home                   | 130                           | financial_details.xlsx | deductions                  | 11                                 |                                                                     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | valid    | max length           | does_not_throw_any_error | LoginDetailsCAS.xlsx | LoginData | 7         | employment_details.xlsx | home                   | 130                           | financial_details.xlsx | deductions                  | 12                                 |                                                                     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | invalid  | more than max length | throws                   | LoginDetailsCAS.xlsx | LoginData | 7         | employment_details.xlsx | home                   | 130                           | financial_details.xlsx | deductions                  | 13                                 | Only positive values and Upto 18 digits are allowed before decimal. |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | invalid  | both digits and char | throws                   | LoginDetailsCAS.xlsx | LoginData | 7         | employment_details.xlsx | home                   | 130                           | financial_details.xlsx | deductions                  | 14                                 | Invalid Amount.                                                     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | invalid  | negative number      | throws                   | LoginDetailsCAS.xlsx | LoginData | 7         | employment_details.xlsx | home                   | 130                           | financial_details.xlsx | deductions                  | 15                                 | Only positive values and Upto 18 digits are allowed before decimal. |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | invalid  | special char         | throws                   | LoginDetailsCAS.xlsx | LoginData | 7         | employment_details.xlsx | home                   | 130                           | financial_details.xlsx | deductions                  | 16                                 | Invalid Amount.                                                     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | invalid  | with space           | throws                   | LoginDetailsCAS.xlsx | LoginData | 7         | employment_details.xlsx | home                   | 130                           | financial_details.xlsx | deductions                  | 17                                 | Invalid Amount.                                                     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | valid    | paise format         | does_not_throw_any_error | LoginDetailsCAS.xlsx | LoginData | 7         | employment_details.xlsx | home                   | 130                           | financial_details.xlsx | deductions                  | 18                                 |                                                                     |


  Scenario Outline: ACAUTOCAS-3864:  Validating Percentage field in Deductions as <Validity> data with <Amount_Field_Data>
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user navigates to applicant details page of "<ApplicationStage>"
    And click on view edit detailed info
    And user reads data from the excel file "<EmploymentDetailsWB>" under sheet "<EmploymentDetails_home>" and row <EmploymentDetails_home_rowNum>
    And user fills employment details without save and next for "Salaried"
    And user changes major occupation to "Salaried"
    And user clicks on save and next of Employment Details
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_deductions>" and row <FinancialDetails_deductions_rowNum>
    When user fills deductions with "<Percentage_Field_Data>" in percentage
    Then application "<Throws_NotThrows>" "<Error_Message>"

    @Islamic
    @Release
@Part-1
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category:["bonds"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | key | Validity | Percentage_Field_Data      | Throws_NotThrows         | SourceDataFile       | SheetName | RowNumber | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_deductions | FinancialDetails_deductions_rowNum | Error_Message                                                                     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | valid    | valid data                 | does_not_throw_any_error | LoginDetailsCAS.xlsx | LoginData | 7         | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | deductions                  | 19                                 |                                                                                   |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | invalid  | more than 100 percent      | throws                   | LoginDetailsCAS.xlsx | LoginData | 7         | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | deductions                  | 20                                 | Please enter valid percentage: upto 2 digits are allowed before and after decimal |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | invalid  | both digits and char       | throws                   | LoginDetailsCAS.xlsx | LoginData | 7         | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | deductions                  | 21                                 | Please enter valid percentage: upto 2 digits are allowed before and after decimal |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | invalid  | negative number            | throws                   | LoginDetailsCAS.xlsx | LoginData | 7         | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | deductions                  | 22                                 | Please enter valid percentage: upto 2 digits are allowed before and after decimal |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | invalid  | special char               | throws                   | LoginDetailsCAS.xlsx | LoginData | 7         | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | deductions                  | 23                                 | Please enter valid percentage: upto 2 digits are allowed before and after decimal |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | invalid  | with space                 | throws                   | LoginDetailsCAS.xlsx | LoginData | 7         | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | deductions                  | 24                                 | Please enter valid percentage: upto 2 digits are allowed before and after decimal |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | invalid  | more than 2 decimal places | throws                   | LoginDetailsCAS.xlsx | LoginData | 7         | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | deductions                  | 25                                 | Please enter valid percentage: upto 2 digits are allowed before and after decimal |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | valid    | 2 decimal places           | does_not_throw_any_error | LoginDetailsCAS.xlsx | LoginData | 7         | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | deductions                  | 26                                 |                                                                                   |

    @Islamic
    @Release
@Part-1
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | Validity | Percentage_Field_Data      | Throws_NotThrows         | SourceDataFile       | SheetName | RowNumber | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_deductions | FinancialDetails_deductions_rowNum | Error_Message                                                                     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | valid    | valid data                 | does_not_throw_any_error | LoginDetailsCAS.xlsx | LoginData | 7         | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | deductions                  | 19                                 |                                                                                   |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | invalid  | more than 100 percent      | throws                   | LoginDetailsCAS.xlsx | LoginData | 7         | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | deductions                  | 20                                 | Please enter valid percentage: upto 2 digits are allowed before and after decimal |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | invalid  | both digits and char       | throws                   | LoginDetailsCAS.xlsx | LoginData | 7         | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | deductions                  | 21                                 | Please enter valid percentage: upto 2 digits are allowed before and after decimal |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | invalid  | negative number            | throws                   | LoginDetailsCAS.xlsx | LoginData | 7         | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | deductions                  | 22                                 | Please enter valid percentage: upto 2 digits are allowed before and after decimal |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | invalid  | special char               | throws                   | LoginDetailsCAS.xlsx | LoginData | 7         | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | deductions                  | 23                                 | Please enter valid percentage: upto 2 digits are allowed before and after decimal |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | invalid  | with space                 | throws                   | LoginDetailsCAS.xlsx | LoginData | 7         | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | deductions                  | 24                                 | Please enter valid percentage: upto 2 digits are allowed before and after decimal |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | invalid  | more than 2 decimal places | throws                   | LoginDetailsCAS.xlsx | LoginData | 7         | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | deductions                  | 25                                 | Please enter valid percentage: upto 2 digits are allowed before and after decimal |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | valid    | 2 decimal places           | does_not_throw_any_error | LoginDetailsCAS.xlsx | LoginData | 7         | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | deductions                  | 26                                 |                                                                                   |

    @Conventional
    @Release @Part-1
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
   # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | Validity | Percentage_Field_Data      | Throws_NotThrows         | SourceDataFile       | SheetName | RowNumber | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_deductions | FinancialDetails_deductions_rowNum | Error_Message                                                                     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | valid    | valid data                 | does_not_throw_any_error | LoginDetailsCAS.xlsx | LoginData | 7         | employment_details.xlsx | home                   | 130                           | financial_details.xlsx | deductions                  | 19                                 |                                                                                   |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | invalid  | more than 100 percent      | throws                   | LoginDetailsCAS.xlsx | LoginData | 7         | employment_details.xlsx | home                   | 130                           | financial_details.xlsx | deductions                  | 20                                 | Please enter value between 0 to 100 upto 2 decimal places. |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | invalid  | both digits and char       | throws                   | LoginDetailsCAS.xlsx | LoginData | 7         | employment_details.xlsx | home                   | 130                           | financial_details.xlsx | deductions                  | 21                                 | Please enter value between 0 to 100 upto 2 decimal places. |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | invalid  | negative number            | throws                   | LoginDetailsCAS.xlsx | LoginData | 7         | employment_details.xlsx | home                   | 130                           | financial_details.xlsx | deductions                  | 22                                 | Please enter value between 0 to 100 upto 2 decimal places. |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | invalid  | special char               | throws                   | LoginDetailsCAS.xlsx | LoginData | 7         | employment_details.xlsx | home                   | 130                           | financial_details.xlsx | deductions                  | 23                                 | Please enter value between 0 to 100 upto 2 decimal places. |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | invalid  | with space                 | throws                   | LoginDetailsCAS.xlsx | LoginData | 7         | employment_details.xlsx | home                   | 130                           | financial_details.xlsx | deductions                  | 24                                 | Please enter value between 0 to 100 upto 2 decimal places. |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | invalid  | more than 2 decimal places | throws                   | LoginDetailsCAS.xlsx | LoginData | 7         | employment_details.xlsx | home                   | 130                           | financial_details.xlsx | deductions                  | 25                                 | Please enter value between 0 to 100 upto 2 decimal places. |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | valid    | 2 decimal places           | does_not_throw_any_error | LoginDetailsCAS.xlsx | LoginData | 7         | employment_details.xlsx | home                   | 130                           | financial_details.xlsx | deductions                  | 26                                 |                                                                                   |

     # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | Validity | Percentage_Field_Data      | Throws_NotThrows         | SourceDataFile       | SheetName | RowNumber | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_deductions | FinancialDetails_deductions_rowNum | Error_Message                                                                     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | valid    | valid data                 | does_not_throw_any_error | LoginDetailsCAS.xlsx | LoginData | 7         | employment_details.xlsx | home                   | 130                           | financial_details.xlsx | deductions                  | 19                                 |                                                                                   |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | invalid  | more than 100 percent      | throws                   | LoginDetailsCAS.xlsx | LoginData | 7         | employment_details.xlsx | home                   | 130                           | financial_details.xlsx | deductions                  | 20                                 | Please enter value between 0 to 100 upto 2 decimal places. |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | invalid  | both digits and char       | throws                   | LoginDetailsCAS.xlsx | LoginData | 7         | employment_details.xlsx | home                   | 130                           | financial_details.xlsx | deductions                  | 21                                 | Please enter value between 0 to 100 upto 2 decimal places. |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | invalid  | negative number            | throws                   | LoginDetailsCAS.xlsx | LoginData | 7         | employment_details.xlsx | home                   | 130                           | financial_details.xlsx | deductions                  | 22                                 | Please enter value between 0 to 100 upto 2 decimal places. |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | invalid  | special char               | throws                   | LoginDetailsCAS.xlsx | LoginData | 7         | employment_details.xlsx | home                   | 130                           | financial_details.xlsx | deductions                  | 23                                 | Please enter value between 0 to 100 upto 2 decimal places. |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | invalid  | with space                 | throws                   | LoginDetailsCAS.xlsx | LoginData | 7         | employment_details.xlsx | home                   | 130                           | financial_details.xlsx | deductions                  | 24                                 | Please enter value between 0 to 100 upto 2 decimal places. |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | invalid  | more than 2 decimal places | throws                   | LoginDetailsCAS.xlsx | LoginData | 7         | employment_details.xlsx | home                   | 130                           | financial_details.xlsx | deductions                  | 25                                 | Please enter value between 0 to 100 upto 2 decimal places. |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | valid    | 2 decimal places           | does_not_throw_any_error | LoginDetailsCAS.xlsx | LoginData | 7         | employment_details.xlsx | home                   | 130                           | financial_details.xlsx | deductions                  | 26                                 |                                                                                   |


  Scenario Outline: ACAUTOCAS-3865:  Validating Net Amount combination with <Validity> Deduction Frequency as <Deduction_Frequency>
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user navigates to applicant details page of "<ApplicationStage>"
    And click on view edit detailed info
    And user reads data from the excel file "<EmploymentDetailsWB>" under sheet "<EmploymentDetails_home>" and row <EmploymentDetails_home_rowNum>
    And user fills employment details without save and next for "Salaried"
    And user changes major occupation to "Salaried"
    And user clicks on save and next of Employment Details
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_deductions>" and row <FinancialDetails_deductions_rowNum>
    When user fills deductions with deduction frequency as "<Deduction_Frequency>"
    Then net amount is calculated successfully for "<Deduction_Frequency>" deduction frequency
    @Islamic
    @Release
@Part-1
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category:["bonds"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | key | Validity | Deduction_Frequency | SourceDataFile       | SheetName | RowNumber | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_deductions | FinancialDetails_deductions_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | valid    | monthly             | LoginDetailsCAS.xlsx | LoginData | 7         | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | deductions                  | 27                                 |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | valid    | quarterly           | LoginDetailsCAS.xlsx | LoginData | 7         | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | deductions                  | 28                                 |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | valid    | annually            | LoginDetailsCAS.xlsx | LoginData | 7         | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | deductions                  | 29                                 |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | valid    | bi-monthly          | LoginDetailsCAS.xlsx | LoginData | 7         | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | deductions                  | 30                                 |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | valid    | fortnightly         | LoginDetailsCAS.xlsx | LoginData | 7         | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | deductions                  | 31                                 |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | valid    | half yearly         | LoginDetailsCAS.xlsx | LoginData | 7         | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | deductions                  | 32                                 |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | valid    | one time            | LoginDetailsCAS.xlsx | LoginData | 7         | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | deductions                  | 33                                 |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | valid    | weekly              | LoginDetailsCAS.xlsx | LoginData | 7         | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | deductions                  | 34                                 |
    @Islamic
    @Release
@Part-1
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | Validity | Deduction_Frequency | SourceDataFile       | SheetName | RowNumber | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_deductions | FinancialDetails_deductions_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | valid    | monthly             | LoginDetailsCAS.xlsx | LoginData | 7         | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | deductions                  | 27                                 |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | valid    | quarterly           | LoginDetailsCAS.xlsx | LoginData | 7         | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | deductions                  | 28                                 |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | valid    | annually            | LoginDetailsCAS.xlsx | LoginData | 7         | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | deductions                  | 29                                 |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | valid    | bi-monthly          | LoginDetailsCAS.xlsx | LoginData | 7         | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | deductions                  | 30                                 |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | valid    | fortnightly         | LoginDetailsCAS.xlsx | LoginData | 7         | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | deductions                  | 31                                 |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | valid    | half yearly         | LoginDetailsCAS.xlsx | LoginData | 7         | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | deductions                  | 32                                 |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | valid    | one time            | LoginDetailsCAS.xlsx | LoginData | 7         | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | deductions                  | 33                                 |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | valid    | weekly              | LoginDetailsCAS.xlsx | LoginData | 7         | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | deductions                  | 34                                 |
    @Conventional
    @Release @Part-1
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
   # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | Validity | Deduction_Frequency | SourceDataFile       | SheetName | RowNumber | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_deductions | FinancialDetails_deductions_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | valid    | monthly             | LoginDetailsCAS.xlsx | LoginData | 7         | employment_details.xlsx | home                   | 130                           | financial_details.xlsx | deductions                  | 27                                 |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | valid    | quarterly           | LoginDetailsCAS.xlsx | LoginData | 7         | employment_details.xlsx | home                   | 130                           | financial_details.xlsx | deductions                  | 28                                 |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | valid    | annually            | LoginDetailsCAS.xlsx | LoginData | 7         | employment_details.xlsx | home                   | 130                           | financial_details.xlsx | deductions                  | 29                                 |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | valid    | bi-monthly          | LoginDetailsCAS.xlsx | LoginData | 7         | employment_details.xlsx | home                   | 130                           | financial_details.xlsx | deductions                  | 30                                 |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | valid    | fortnightly         | LoginDetailsCAS.xlsx | LoginData | 7         | employment_details.xlsx | home                   | 130                           | financial_details.xlsx | deductions                  | 31                                 |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | valid    | half yearly         | LoginDetailsCAS.xlsx | LoginData | 7         | employment_details.xlsx | home                   | 130                           | financial_details.xlsx | deductions                  | 32                                 |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | valid    | one time            | LoginDetailsCAS.xlsx | LoginData | 7         | employment_details.xlsx | home                   | 130                           | financial_details.xlsx | deductions                  | 33                                 |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | valid    | weekly              | LoginDetailsCAS.xlsx | LoginData | 7         | employment_details.xlsx | home                   | 130                           | financial_details.xlsx | deductions                  | 34                                 |
     # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | Validity | Deduction_Frequency | SourceDataFile       | SheetName | RowNumber | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_deductions | FinancialDetails_deductions_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | valid    | monthly             | LoginDetailsCAS.xlsx | LoginData | 7         | employment_details.xlsx | home                   | 130                           | financial_details.xlsx | deductions                  | 27                                 |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | valid    | quarterly           | LoginDetailsCAS.xlsx | LoginData | 7         | employment_details.xlsx | home                   | 130                           | financial_details.xlsx | deductions                  | 28                                 |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | valid    | annually            | LoginDetailsCAS.xlsx | LoginData | 7         | employment_details.xlsx | home                   | 130                           | financial_details.xlsx | deductions                  | 29                                 |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | valid    | bi-monthly          | LoginDetailsCAS.xlsx | LoginData | 7         | employment_details.xlsx | home                   | 130                           | financial_details.xlsx | deductions                  | 30                                 |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | valid    | fortnightly         | LoginDetailsCAS.xlsx | LoginData | 7         | employment_details.xlsx | home                   | 130                           | financial_details.xlsx | deductions                  | 31                                 |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | valid    | half yearly         | LoginDetailsCAS.xlsx | LoginData | 7         | employment_details.xlsx | home                   | 130                           | financial_details.xlsx | deductions                  | 32                                 |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | valid    | one time            | LoginDetailsCAS.xlsx | LoginData | 7         | employment_details.xlsx | home                   | 130                           | financial_details.xlsx | deductions                  | 33                                 |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | valid    | weekly              | LoginDetailsCAS.xlsx | LoginData | 7         | employment_details.xlsx | home                   | 130                           | financial_details.xlsx | deductions                  | 34                                 |


  Scenario Outline: ACAUTOCAS-3866:  Validating Net Amount combination with <Validity> percentage and amount
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user navigates to applicant details page of "<ApplicationStage>"
    And click on view edit detailed info
    And user reads data from the excel file "<EmploymentDetailsWB>" under sheet "<EmploymentDetails_home>" and row <EmploymentDetails_home_rowNum>
    And user fills employment details without save and next for "Salaried"
    And user changes major occupation to "Salaried"
    And user clicks on save and next of Employment Details
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_deductions>" and row <FinancialDetails_deductions_rowNum>
    When user fills deductions with "<Percentage_Amount>"
    Then net amount in combination with percentage and amount is calculated successfully for "<Deduction_Frequency>" deduction frequency
    @Islamic
    @Release
@Part-1
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category:["bonds"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | key |  | Validity | Deduction_Frequency | Percentage_Amount     | SourceDataFile       | SheetName | RowNumber | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_deductions | FinancialDetails_deductions_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     |  | valid    | monthly             | percentage and amount | LoginDetailsCAS.xlsx | LoginData | 7         | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | deductions                  | 19                                 |

    @Islamic
    @Release
@Part-1
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key |  | Validity | Deduction_Frequency | Percentage_Amount     | SourceDataFile       | SheetName | RowNumber | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_deductions | FinancialDetails_deductions_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |  | valid    | monthly             | percentage and amount | LoginDetailsCAS.xlsx | LoginData | 7         | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | deductions                  | 19                                 |

    @Conventional
    @Release @Part-1
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
   # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key |  | Validity | Deduction_Frequency | Percentage_Amount     | SourceDataFile       | SheetName | RowNumber | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_deductions | FinancialDetails_deductions_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |  | valid    | monthly             | percentage and amount | LoginDetailsCAS.xlsx | LoginData | 7         | employment_details.xlsx | home                   | 130                           | financial_details.xlsx | deductions                  | 19                                 |

     # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key |  | Validity | Deduction_Frequency | Percentage_Amount     | SourceDataFile       | SheetName | RowNumber | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_deductions | FinancialDetails_deductions_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |  | valid    | monthly             | percentage and amount | LoginDetailsCAS.xlsx | LoginData | 7         | employment_details.xlsx | home                   | 130                           | financial_details.xlsx | deductions                  | 19                                 |
