@Epic-Applicant_Information
@AppInfoAdoption
@AuthoredBy-vipin.kishor
@Reconciled
@ReviewedByDEV
#${ApplicantType:["indiv"]}

#FeatureID-ACAUTOCAS-164
Feature:asset mandatory fields validation with occupation as salaried in financial detail page

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0

  Scenario Outline: ACAUTOCAS-3853: Validation of asset value "<Validity_Reason>" in financial details page at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user navigates to applicant details page of "<ApplicationStage>"
    And click on view edit detailed info
    And user reads data from the excel file "employment_details.xlsx" under sheet "home" and row <EmploymentDetails_home_rowNum>
    When user fills employment details for "Salaried"
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_assets>" and row <FinancialDetails_assets_rowNum>
    And user enter assets with "<Validity>" "<Field_Name>" "<Validity_Reason>" in financial detail
    Then application "<Throws_notThrows>" "<With_Error_Message>"

    # ${ProductType:["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL","FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @Conventional
    @Release2
    @Release @Part-2
    @ImplementedBy-bhanu.singh1
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | Field_Name  | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_assets | FinancialDetails_assets_rowNum | Validity | Validity_Reason           | Throws_notThrows                   | With_Error_Message                                                  |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | asset_value | 7                             | financial_details.xlsx | assets                  | 6                              | valid    | with valid                | does_not_throw_any_error           |                                                                     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | asset_value | 7                             | financial_details.xlsx | assets                  | 7                              | valid    | with max digits           | does_not_throw_any_error           |                                                                     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | asset_value | 7                             | financial_details.xlsx | assets                  | 8                              | invalid  | with more than max limit  | throws an error with error message | Only positive values and Upto 18 digits are allowed before decimal. |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | asset_value | 7                             | financial_details.xlsx | assets                  | 9                              | invalid  | with character and digits | throws an error with error message | Invalid Amount.                                                     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | asset_value | 7                             | financial_details.xlsx | assets                  | 10                             | invalid  | with special character    | throws an error with error message | Invalid Amount.                                                     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | asset_value | 7                             | financial_details.xlsx | assets                  | 11                             | invalid  | with space                | throws an error with error message | Invalid Amount.                                                     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | asset_value | 7                             | financial_details.xlsx | assets                  | 12                             | valid    | with decimal              | does_not_throw_any_error           |                                                                     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | asset_value | 7                             | financial_details.xlsx | assets                  | 13                             | invalid  | with character            | throws an error with error message | Invalid Amount.                                                     |

    # ${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @Islamic
    @Release
@Part-2
    @ImplementedBy-tanya
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | Field_Name  | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_assets | FinancialDetails_assets_rowNum | Validity | Validity_Reason           | Throws_notThrows                   | With_Error_Message                                                  |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | asset_value | 136                           | financial_details.xlsx | assets                  | 6                              | valid    | with valid                | does_not_throw_any_error           |                                                                     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | asset_value | 136                           | financial_details.xlsx | assets                  | 7                              | valid    | with max digits           | does_not_throw_any_error           |                                                                     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | asset_value | 136                           | financial_details.xlsx | assets                  | 8                              | invalid  | with more than max limit  | throws an error with error message | Only positive values and Upto 18 digits are allowed before decimal. |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | asset_value | 136                           | financial_details.xlsx | assets                  | 9                              | invalid  | with character and digits | throws an error with error message | Invalid Amount.                                                     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | asset_value | 136                           | financial_details.xlsx | assets                  | 10                             | invalid  | with special character    | throws an error with error message | Invalid Amount.                                                     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | asset_value | 136                           | financial_details.xlsx | assets                  | 11                             | invalid  | with space                | throws an error with error message | Invalid Amount.                                                     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | asset_value | 136                           | financial_details.xlsx | assets                  | 12                             | valid    | with decimal              | does_not_throw_any_error           |                                                                     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | asset_value | 136                           | financial_details.xlsx | assets                  | 13                             | invalid  | with character            | throws an error with error message | Invalid Amount.                                                     |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    # ${Category:["bonds"]}
    @Islamic
    @Release
@Part-2
    @ImplementedBy-tanya
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | Key | Field_Name  | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_assets | FinancialDetails_assets_rowNum | Validity | Validity_Reason           | Throws_notThrows                   | With_Error_Message                                                  |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | asset_value | 136                           | financial_details.xlsx | assets                  | 6                              | valid    | with valid                | does_not_throw_any_error           |                                                                     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | asset_value | 136                           | financial_details.xlsx | assets                  | 7                              | valid    | with max digits           | does_not_throw_any_error           |                                                                     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | asset_value | 136                           | financial_details.xlsx | assets                  | 8                              | invalid  | with more than max limit  | throws an error with error message | Only positive values and Upto 18 digits are allowed before decimal. |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | asset_value | 136                           | financial_details.xlsx | assets                  | 9                              | invalid  | with character and digits | throws an error with error message | Invalid Amount.                                                     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | asset_value | 136                           | financial_details.xlsx | assets                  | 10                             | invalid  | with special character    | throws an error with error message | Invalid Amount.                                                     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | asset_value | 136                           | financial_details.xlsx | assets                  | 11                             | invalid  | with space                | throws an error with error message | Invalid Amount.                                                     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | asset_value | 136                           | financial_details.xlsx | assets                  | 12                             | valid    | with decimal              | does_not_throw_any_error           |                                                                     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | asset_value | 136                           | financial_details.xlsx | assets                  | 13                             | invalid  | with character            | throws an error with error message | Invalid Amount.                                                     |

  # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
   @NotImplemented
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | Field_Name  | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_assets | FinancialDetails_assets_rowNum | Validity | Validity_Reason           | Throws_notThrows                   | With_Error_Message                                                  |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | asset_value | 7                             | financial_details.xlsx | assets                  | 6                              | valid    | with valid                | does_not_throw_any_error           |                                                                     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | asset_value | 7                             | financial_details.xlsx | assets                  | 7                              | valid    | with max digits           | does_not_throw_any_error           |                                                                     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | asset_value | 7                             | financial_details.xlsx | assets                  | 8                              | invalid  | with more than max limit  | throws an error with error message | Only positive values and Upto 18 digits are allowed before decimal. |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | asset_value | 7                             | financial_details.xlsx | assets                  | 9                              | invalid  | with character and digits | throws an error with error message | Invalid Amount.                                                     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | asset_value | 7                             | financial_details.xlsx | assets                  | 10                             | invalid  | with special character    | throws an error with error message | Invalid Amount.                                                     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | asset_value | 7                             | financial_details.xlsx | assets                  | 11                             | invalid  | with space                | throws an error with error message | Invalid Amount.                                                     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | asset_value | 7                             | financial_details.xlsx | assets                  | 12                             | valid    | with decimal              | does_not_throw_any_error           |                                                                     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | asset_value | 7                             | financial_details.xlsx | assets                  | 13                             | invalid  | with character            | throws an error with error message | Invalid Amount.                                                     |

  Scenario Outline: ACAUTOCAS-3854: Entering the <Validity> <Field_Name> <Validity_Reason> at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user navigates to applicant details page of "<ApplicationStage>"
    And click on view edit detailed info
    And user reads data from the excel file "employment_details.xlsx" under sheet "home" and row <EmploymentDetails_home_rowNum>
    When user fills employment details for "Salaried"
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_assets>" and row <FinancialDetails_assets_rowNum>
    And user enter assets_description with "<Validity>" "<Field_Name>" "<Validity_Reason>" in financial detail
    Then application "<Throws_notThrows>" "<With_Error_Message>"

    # ${ProductType:["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL","FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @Conventional
    @Release2
    @Release @Part-2
    @ImplementedBy-utkarsh.tiwari
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | Field_Name             | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_assets | FinancialDetails_assets_rowNum | Validity | Validity_Reason          | Throws_notThrows         | With_Error_Message |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | asset_type_description | 7                             | financial_details.xlsx | assets                  | 6                              | valid    | with max character       | does_not_throw_any_error |                    |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | asset_type_description | 7                             | financial_details.xlsx | assets                  | 7                              | invalid  | with more than max limit | does_not_throw_any_error |                    |

    # ${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @Islamic
    @Release
@Part-2
    @ImplementedBy-tanya
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | Field_Name             | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_assets | FinancialDetails_assets_rowNum | Validity | Validity_Reason          | Throws_notThrows         | With_Error_Message |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | asset_type_description | 136                           | financial_details.xlsx | assets                  | 6                              | valid    | with max character       | does_not_throw_any_error |                    |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | asset_type_description | 136                           | financial_details.xlsx | assets                  | 7                              | invalid  | with more than max limit | does_not_throw_any_error |                    |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    # ${Category:["bonds"]}
    @Islamic
    @Release
@Part-2
    @ImplementedBy-tanya
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | Key | Field_Name             | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_assets | FinancialDetails_assets_rowNum | Validity | Validity_Reason          | Throws_notThrows         | With_Error_Message |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | asset_type_description | 136                           | financial_details.xlsx | assets                  | 6                              | valid    | with max character       | does_not_throw_any_error |                    |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | asset_type_description | 136                           | financial_details.xlsx | assets                  | 7                              | invalid  | with more than max limit | does_not_throw_any_error |                    |

  # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
   @NotImplemented
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | Field_Name             | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_assets | FinancialDetails_assets_rowNum | Validity | Validity_Reason          | Throws_notThrows         | With_Error_Message |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | asset_type_description | 7                             | financial_details.xlsx | assets                  | 6                              | valid    | with max character       | does_not_throw_any_error |                    |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | asset_type_description | 7                             | financial_details.xlsx | assets                  | 7                              | invalid  | with more than max limit | does_not_throw_any_error |                    |
