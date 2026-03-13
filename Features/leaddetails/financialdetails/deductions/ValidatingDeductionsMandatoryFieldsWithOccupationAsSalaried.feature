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
Feature: Validating Deductions Mandatory Fields with Occupation as Salaried

  Scenario Outline: ACAUTOCAS-3867:  Validating Mandatory Fields in Deductions <Without_Specific_Field> with Save
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
    When user fills deductions "<Without_Specific_Field>"
    Then application is not saved with the error message "<Error_Message>"
    @Islamic
    @Release
@Part-1
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category:["bonds"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | key | Without_Specific_Field      | SourceDataFile       | SheetName | RowNumber | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_deductions | FinancialDetails_deductions_rowNum | Error_Message           |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | without deduction head      | LoginDetailsCAS.xlsx | LoginData | 7         | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | deductions                  | 6                                  | This field is required. |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | without deduction frequency | LoginDetailsCAS.xlsx | LoginData | 7         | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | deductions                  | 7                                  | This field is required. |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | without currency            | LoginDetailsCAS.xlsx | LoginData | 7         | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | deductions                  | 8                                  | This field is required. |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | without amount              | LoginDetailsCAS.xlsx | LoginData | 7         | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | deductions                  | 9                                  | This field is required. |

    @Islamic
    @Release
@Part-1
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | Without_Specific_Field      | SourceDataFile       | SheetName | RowNumber | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_deductions | FinancialDetails_deductions_rowNum | Error_Message           |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | without deduction head      | LoginDetailsCAS.xlsx | LoginData | 7         | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | deductions                  | 6                                  | This field is required. |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | without deduction frequency | LoginDetailsCAS.xlsx | LoginData | 7         | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | deductions                  | 7                                  | This field is required. |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | without currency            | LoginDetailsCAS.xlsx | LoginData | 7         | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | deductions                  | 8                                  | This field is required. |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | without amount              | LoginDetailsCAS.xlsx | LoginData | 7         | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | deductions                  | 9                                  | This field is required. |

    @Conventional
    @Release @Part-1
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
   # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | Without_Specific_Field      | SourceDataFile       | SheetName | RowNumber | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_deductions | FinancialDetails_deductions_rowNum | Error_Message           |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | without deduction head      | LoginDetailsCAS.xlsx | LoginData | 7         | employment_details.xlsx | home                   | 130                           | financial_details.xlsx | deductions                  | 6                                  | This field is required. |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | without deduction frequency | LoginDetailsCAS.xlsx | LoginData | 7         | employment_details.xlsx | home                   | 130                           | financial_details.xlsx | deductions                  | 63                                 | This field is required. |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | without currency            | LoginDetailsCAS.xlsx | LoginData | 7         | employment_details.xlsx | home                   | 130                           | financial_details.xlsx | deductions                  | 64                                 | This field is required. |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | without amount              | LoginDetailsCAS.xlsx | LoginData | 7         | employment_details.xlsx | home                   | 130                           | financial_details.xlsx | deductions                  | 9                                  | This field is required. |

     # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | Without_Specific_Field      | SourceDataFile       | SheetName | RowNumber | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_deductions | FinancialDetails_deductions_rowNum | Error_Message           |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | without deduction head      | LoginDetailsCAS.xlsx | LoginData | 7         | employment_details.xlsx | home                   | 130                           | financial_details.xlsx | deductions                  | 6                                  | This field is required. |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | without deduction frequency | LoginDetailsCAS.xlsx | LoginData | 7         | employment_details.xlsx | home                   | 130                           | financial_details.xlsx | deductions                  | 7                                  | This field is required. |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | without currency            | LoginDetailsCAS.xlsx | LoginData | 7         | employment_details.xlsx | home                   | 130                           | financial_details.xlsx | deductions                  | 8                                  | This field is required. |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | without amount              | LoginDetailsCAS.xlsx | LoginData | 7         | employment_details.xlsx | home                   | 130                           | financial_details.xlsx | deductions                  | 9                                  | This field is required. |
