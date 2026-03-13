@Epic-Applicant_Information
@AppInfoAdoption
@AuthoredBy-vipin.kishor
@Reconciled
@ReviewedByDEV
#${ApplicantType:["indiv"]}
#FeatureID-ACAUTOCAS-164

Feature:asset mandatory fields validation with occupation as salaried  with save in financial detail page

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0

  Scenario Outline: ACAUTOCAS-3850: Saving asset details without <Field_Name> in financial details page at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user open Employment Details page on the basis of "<ApplicationStage>"
    And user reads data from the excel file "employment_details.xlsx" under sheet "home" and row <EmployementDetails_home_rowNum>
    When user fills employment details for "Salaried"
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_assets>" and row <FinancialDetails_assets_rowNum>
    And user saves assets without "<Field_Name>"
    Then assets is not saved with error message "<Error_Message>"

    # ${ProductType:["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL","FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @Conventional
    @Release1
    @Release @Part-2
    @ImplementedBy-akash.bansal
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | Field_Name             | EmployementDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_assets | FinancialDetails_assets_rowNum | Error_Message                                                |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | asset_type             | 130                            | financial_details.xlsx | assets                  | 2                              | There are some errors, please correct them and try again..!! |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | asset_category         | 130                            | financial_details.xlsx | assets                  | 3                              | There are some errors, please correct them and try again..!! |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | asset_type_description | 130                            | financial_details.xlsx | assets                  | 4                              | There are some errors, please correct them and try again..!! |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | asset_value            | 130                            | financial_details.xlsx | assets                  | 5                              | There are some errors, please correct them and try again..!! |

    # ${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @Islamic
    @Release
@Part-2
    @ImplementedBy-tanya
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | Field_Name             | EmployementDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_assets | FinancialDetails_assets_rowNum | Error_Message                                                |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | asset_type             | 136                            | financial_details.xlsx | assets                  | 2                              | There are some errors, please correct them and try again..!! |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | asset_category         | 136                            | financial_details.xlsx | assets                  | 3                              | There are some errors, please correct them and try again..!! |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | asset_type_description | 136                            | financial_details.xlsx | assets                  | 4                              | There are some errors, please correct them and try again..!! |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | asset_value            | 136                            | financial_details.xlsx | assets                  | 5                              | There are some errors, please correct them and try again..!! |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    # ${Category:["bonds"]}
    @Islamic
    @Release
@Part-2
    @ImplementedBy-tanya
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | Key | Field_Name             | EmployementDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_assets | FinancialDetails_assets_rowNum | Error_Message                                                |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | asset_type             | 136                            | financial_details.xlsx | assets                  | 2                              | There are some errors, please correct them and try again..!! |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | asset_category         | 136                            | financial_details.xlsx | assets                  | 3                              | There are some errors, please correct them and try again..!! |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | asset_type_description | 136                            | financial_details.xlsx | assets                  | 4                              | There are some errors, please correct them and try again..!! |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | asset_value            | 136                            | financial_details.xlsx | assets                  | 5                              | There are some errors, please correct them and try again..!! |
    @NotImplemented
    # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | Field_Name             | EmployementDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_assets | FinancialDetails_assets_rowNum | Error_Message                                                |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | asset_type             | 130                            | financial_details.xlsx | assets                  | 2                              | There are some errors, please correct them and try again..!! |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | asset_category         | 130                            | financial_details.xlsx | assets                  | 3                              | There are some errors, please correct them and try again..!! |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | asset_type_description | 130                            | financial_details.xlsx | assets                  | 4                              | There are some errors, please correct them and try again..!! |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | asset_value            | 130                            | financial_details.xlsx | assets                  | 5                              | There are some errors, please correct them and try again..!! |
