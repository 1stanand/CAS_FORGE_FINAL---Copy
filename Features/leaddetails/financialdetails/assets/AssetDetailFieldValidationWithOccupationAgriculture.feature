@Epic-Applicant_Information
@AppInfoAdoption
@ReviewedByDEV
@AuthoredBy-harshita.nayak
@Reconciled
#${ApplicantType:["indiv"]}
  #FeatureID-ACAUTOCAS-191
Feature: Asset detail field validation with occupation type as Agriculture

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 7

   @Sanity
  Scenario Outline: ACAUTOCAS-1683: Add asset details with "<Var>" fields at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user open Employment Details page on the basis of "<ApplicationStage>"
    And user reads data from the excel file "employment_details.xlsx" under sheet "home" and row 132
    And user fills employment details for "Agriculture"
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_assets>" and row <FinancialDetails_assets_rowNum>
    When user add asset details with "<Var>" fields
    Then asset details should save successfully

    # ${ProductType:["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL","FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @Conventional
    @Release @Part-2
    @ImplementedBy-tushar.chauhan
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Var       | FinancialDetailsWB     | FinancialDetails_assets | FinancialDetails_assets_rowNum | Category | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | mandatory | financial_details.xlsx | assets                  | 1                              |          |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | all       | financial_details.xlsx | assets                  | 1                              |          |     |

    # ${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @Islamic
    @Release
@Part-2
    @ImplementedBy-tanya
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Var       | FinancialDetailsWB     | FinancialDetails_assets | FinancialDetails_assets_rowNum | Category | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | mandatory | financial_details.xlsx | assets                  | 1                              |          |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | all       | financial_details.xlsx | assets                  | 1                              |          |     |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    # ${Category:["bonds"]}
    @Islamic
    @Release
@Part-2
    @ImplementedBy-tanya
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Var       | FinancialDetailsWB     | FinancialDetails_assets | FinancialDetails_assets_rowNum | Category   | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | mandatory | financial_details.xlsx | assets                  | 1                              | <Category> |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | all       | financial_details.xlsx | assets                  | 1                              | <Category> |     |

    # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
   @NotImplemented
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Var       | FinancialDetailsWB     | FinancialDetails_assets | FinancialDetails_assets_rowNum | Category | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | mandatory | financial_details.xlsx | assets                  | 1                              |          |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | all       | financial_details.xlsx | assets                  | 1                              |          |     |

   @Sanity
  Scenario Outline: ACAUTOCAS-1684: Add multiple "<Var>" asset details at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user open Employment Details page on the basis of "<ApplicationStage>"
    And user reads data from the excel file "employment_details.xlsx" under sheet "home" and row 132
    And user fills employment details for "Agriculture"
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_assets>" and row <FinancialDetails_assets_rowNum>
    When user add multiple "<Var>" asset fields
    Then asset details should save successfully

    # ${ProductType:["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL","FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @Conventional
    @Release @Part-2
    @ImplementedBy-tushar.chauhan
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Var | FinancialDetailsWB     | FinancialDetails_assets | FinancialDetails_assets_rowNum | Category | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | 2   | financial_details.xlsx | assets                  | 1                              |          |     |

    # ${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @Islamic
    @Release
@Part-2
    @ImplementedBy-tanya
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Var | FinancialDetailsWB     | FinancialDetails_assets | FinancialDetails_assets_rowNum | Category | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | 2   | financial_details.xlsx | assets                  | 1                              |          |     |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    # ${Category:["bonds"]}
    @Islamic
    @Release
@Part-2
    @ImplementedBy-tanya
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Var | FinancialDetailsWB     | FinancialDetails_assets | FinancialDetails_assets_rowNum | Category   | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | 2   | financial_details.xlsx | assets                  | 1                              | <Category> |     |

    # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
   @NotImplemented
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Var | FinancialDetailsWB     | FinancialDetails_assets | FinancialDetails_assets_rowNum | Category | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | 2   | financial_details.xlsx | assets                  | 1                              |          |     |

  Scenario Outline: ACAUTOCAS-1685: Delete "<Var>" asset details at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user open Employment Details page on the basis of "<ApplicationStage>"
    And user reads data from the excel file "employment_details.xlsx" under sheet "home" and row 132
    And user fills employment details for "Agriculture"
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_assets>" and row <FinancialDetails_assets_rowNum>
    And user add multiple "<Var>" asset fields
    When user delete asset details
    Then asset details delete successfully

    # ${ProductType:["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL","FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @Conventional
    @Release @Part-2
    @ImplementedBy-tushar.chauhan
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Var | FinancialDetailsWB     | FinancialDetails_assets | FinancialDetails_assets_rowNum | Category | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | 2   | financial_details.xlsx | assets                  | 1                              |          |     |

    # ${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @Islamic
    @Release
@Part-2
    @ImplementedBy-tanya
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Var | FinancialDetailsWB     | FinancialDetails_assets | FinancialDetails_assets_rowNum | Category | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | 2   | financial_details.xlsx | assets                  | 1                              |          |     |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    # ${Category:["bonds"]}
    @Islamic
    @Release
@Part-2
    @ImplementedBy-tanya
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Var | FinancialDetailsWB     | FinancialDetails_assets | FinancialDetails_assets_rowNum | Category   | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | 2   | financial_details.xlsx | assets                  | 1                              | <Category> |     |

    # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
   @NotImplemented
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Var | FinancialDetailsWB     | FinancialDetails_assets | FinancialDetails_assets_rowNum | Category | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | 2   | financial_details.xlsx | assets                  | 1                              |          |     |


  Scenario Outline: ACAUTOCAS-1686: Saving asset detail without <Field_Name> at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user open Employment Details page on the basis of "<ApplicationStage>"
    And user reads data from the excel file "employment_details.xlsx" under sheet "home" and row 132
    And user fills employment details for "Agriculture"
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_assets>" and row <FinancialDetails_assets_rowNum>
    When user saves asset details without "<Field_Name>"
    Then assets is not saved with error message "<Error_Message>"

    # ${ProductType:["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL","FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @Conventional
    @Release @Part-2
    @ImplementedBy-tushar.chauhan
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Field_Name             | FinancialDetailsWB     | FinancialDetails_assets | FinancialDetails_assets_rowNum | Error_Message                                                | Category | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | asset_type             | financial_details.xlsx | assets                  | 2                              | There are some errors, please correct them and try again..!! |          |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | asset_category         | financial_details.xlsx | assets                  | 3                              | There are some errors, please correct them and try again..!! |          |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | asset_type_description | financial_details.xlsx | assets                  | 4                              | There are some errors, please correct them and try again..!! |          |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | asset_value            | financial_details.xlsx | assets                  | 5                              | There are some errors, please correct them and try again..!! |          |     |

    # ${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @Islamic
    @Release
@Part-2
    @ImplementedBy-tanya
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Field_Name             | FinancialDetailsWB     | FinancialDetails_assets | FinancialDetails_assets_rowNum | Error_Message                                                | Category | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | asset_type             | financial_details.xlsx | assets                  | 2                              | There are some errors, please correct them and try again..!! |          |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | asset_category         | financial_details.xlsx | assets                  | 3                              | There are some errors, please correct them and try again..!! |          |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | asset_type_description | financial_details.xlsx | assets                  | 4                              | There are some errors, please correct them and try again..!! |          |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | asset_value            | financial_details.xlsx | assets                  | 5                              | There are some errors, please correct them and try again..!! |          |     |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    # ${Category:["bonds"]}
    @FixedJsClick
    @Islamic
    @Release
@Part-2
    @ImplementedBy-tanya
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Field_Name             | FinancialDetailsWB     | FinancialDetails_assets | FinancialDetails_assets_rowNum | Error_Message                                                | Category   | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | asset_type             | financial_details.xlsx | assets                  | 2                              | There are some errors, please correct them and try again..!! | <Category> |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | asset_category         | financial_details.xlsx | assets                  | 3                              | There are some errors, please correct them and try again..!! | <Category> |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | asset_type_description | financial_details.xlsx | assets                  | 4                              | There are some errors, please correct them and try again..!! | <Category> |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | asset_value            | financial_details.xlsx | assets                  | 5                              | There are some errors, please correct them and try again..!! | <Category> |     |

    # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
   @NotImplemented
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Field_Name             | FinancialDetailsWB     | FinancialDetails_assets | FinancialDetails_assets_rowNum | Error_Message                                                | Category | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | asset_type             | financial_details.xlsx | assets                  | 2                              | There are some errors, please correct them and try again..!! |          |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | asset_category         | financial_details.xlsx | assets                  | 3                              | There are some errors, please correct them and try again..!! |          |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | asset_type_description | financial_details.xlsx | assets                  | 4                              | There are some errors, please correct them and try again..!! |          |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | asset_value            | financial_details.xlsx | assets                  | 5                              | There are some errors, please correct them and try again..!! |          |     |


  @AppInfoFixed5
  Scenario Outline: ACAUTOCAS-3401:Validating Asset Value in asset Details with <var> mandatory field at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user open Employment Details page on the basis of "<ApplicationStage>"
    And user reads data from the excel file "employment_details.xlsx" under sheet "home" and row 132
    And user fills employment details for "Agriculture"
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_assets>" and row <FinancialDetails_assets_rowNum>
    When user fills "<Field_Name>" field with "<var>" in asset details
    Then "<Field_Name>" field "<Throws_notThrows>" in asset details

    # ${ProductType:["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL","FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @Conventional
    @Release @Part-2
    @ImplementedBy-tushar.chauhan
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Field_Name  | var                        | FinancialDetailsWB     | FinancialDetails_assets | FinancialDetails_assets_rowNum | Throws_notThrows                   | Category | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Asset Value | valid value                | financial_details.xlsx | assets                  | 14                             | does not throw any error           |          |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Asset Value | up to 18 digits            | financial_details.xlsx | assets                  | 15                             | does not throw any error           |          |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Asset Value | more than 18 digits        | financial_details.xlsx | assets                  | 16                             | throws an error with error message |          |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Asset Value | negative value             | financial_details.xlsx | assets                  | 17                             | throws an error with error message |          |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Asset Value | both digits and characters | financial_details.xlsx | assets                  | 18                             | throws an error with error message |          |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Asset Value | special characters         | financial_details.xlsx | assets                  | 19                             | throws an error with error message |          |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Asset Value | space                      | financial_details.xlsx | assets                  | 20                             | throws an error with error message |          |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Asset Value | paise format               | financial_details.xlsx | assets                  | 21                             | does not throw any error           |          |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Asset Value | zero value                 | financial_details.xlsx | assets                  | 22                             | does not throw any error           |          |     |

    # ${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @Islamic
    @Release
@Part-2
    @ImplementedBy-tanya
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Field_Name  | var                        | FinancialDetailsWB     | FinancialDetails_assets | FinancialDetails_assets_rowNum | Throws_notThrows                   | Category | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Asset Value | valid value                | financial_details.xlsx | assets                  | 14                             | does not throw any error           |          |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Asset Value | up to 18 digits            | financial_details.xlsx | assets                  | 15                             | does not throw any error           |          |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Asset Value | more than 18 digits        | financial_details.xlsx | assets                  | 16                             | throws an error with error message |          |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Asset Value | negative value             | financial_details.xlsx | assets                  | 17                             | throws an error with error message |          |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Asset Value | both digits and characters | financial_details.xlsx | assets                  | 18                             | throws an error with error message |          |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Asset Value | special characters         | financial_details.xlsx | assets                  | 19                             | throws an error with error message |          |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Asset Value | space                      | financial_details.xlsx | assets                  | 20                             | throws an error with error message |          |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Asset Value | paise format               | financial_details.xlsx | assets                  | 21                             | does not throw any error           |          |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Asset Value | zero value                 | financial_details.xlsx | assets                  | 22                             | does not throw any error           |          |     |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    # ${Category:["bonds"]}
    @Islamic
    @Release
@Part-2
    @ImplementedBy-tanya
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Field_Name  | var                        | FinancialDetailsWB     | FinancialDetails_assets | FinancialDetails_assets_rowNum | Throws_notThrows                   | Category   | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Asset Value | valid value                | financial_details.xlsx | assets                  | 14                             | does not throw any error           | <Category> |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Asset Value | up to 18 digits            | financial_details.xlsx | assets                  | 15                             | does not throw any error           | <Category> |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Asset Value | more than 18 digits        | financial_details.xlsx | assets                  | 16                             | throws an error with error message | <Category> |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Asset Value | negative value             | financial_details.xlsx | assets                  | 17                             | throws an error with error message | <Category> |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Asset Value | both digits and characters | financial_details.xlsx | assets                  | 18                             | throws an error with error message | <Category> |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Asset Value | special characters         | financial_details.xlsx | assets                  | 19                             | throws an error with error message | <Category> |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Asset Value | space                      | financial_details.xlsx | assets                  | 20                             | throws an error with error message | <Category> |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Asset Value | paise format               | financial_details.xlsx | assets                  | 21                             | does not throw any error           | <Category> |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Asset Value | zero value                 | financial_details.xlsx | assets                  | 22                             | does not throw any error           | <Category> |     |

    # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
   @NotImplemented
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Field_Name  | var                        | FinancialDetailsWB     | FinancialDetails_assets | FinancialDetails_assets_rowNum | Throws_notThrows                   | Category | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Asset Value | valid value                | financial_details.xlsx | assets                  | 14                             | does not throw any error           |          |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Asset Value | up to 18 digits            | financial_details.xlsx | assets                  | 15                             | does not throw any error           |          |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Asset Value | more than 18 digits        | financial_details.xlsx | assets                  | 16                             | throws an error with error message |          |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Asset Value | negative value             | financial_details.xlsx | assets                  | 17                             | throws an error with error message |          |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Asset Value | both digits and characters | financial_details.xlsx | assets                  | 18                             | throws an error with error message |          |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Asset Value | special characters         | financial_details.xlsx | assets                  | 19                             | throws an error with error message |          |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Asset Value | space                      | financial_details.xlsx | assets                  | 20                             | throws an error with error message |          |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Asset Value | paise format               | financial_details.xlsx | assets                  | 21                             | does not throw any error           |          |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Asset Value | zero value                 | financial_details.xlsx | assets                  | 22                             | does not throw any error           |          |     |

  Scenario Outline: ACAUTOCAS-3402: Validating Asset Type Description in asset Details with <var> mandatory field at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user open Employment Details page on the basis of "<ApplicationStage>"
    And user reads data from the excel file "employment_details.xlsx" under sheet "home" and row 132
    And user fills employment details for "Agriculture"
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_assets>" and row <FinancialDetails_assets_rowNum>
    When user fills "<Field_Name>" field with "<var>" in asset details
    Then "<Field_Name>" field "<Throws_notThrows>" in asset details

    # ${ProductType:["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL","FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @Conventional
    @Release @Part-2
    @ImplementedBy-tushar.chauhan
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Field_Name             | var                            | FinancialDetailsWB     | FinancialDetails_assets | FinancialDetails_assets_rowNum | Throws_notThrows         | Category | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Asset Type Description | with valid value               | financial_details.xlsx | assets                  | 23                             | does not throw any error |          |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Asset Type Description | with both digits and character | financial_details.xlsx | assets                  | 24                             | does not throw any error |          |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Asset Type Description | with negative value            | financial_details.xlsx | assets                  | 25                             | does not throw any error |          |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Asset Type Description | with space                     | financial_details.xlsx | assets                  | 26                             | does not throw any error |          |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Asset Type Description | with special character         | financial_details.xlsx | assets                  | 27                             | does not throw any error |          |     |

    # ${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @Islamic
    @Release
@Part-2
    @ImplementedBy-tanya
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Field_Name             | var                            | FinancialDetailsWB     | FinancialDetails_assets | FinancialDetails_assets_rowNum | Throws_notThrows         | Category | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Asset Type Description | with valid value               | financial_details.xlsx | assets                  | 23                             | does not throw any error |          |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Asset Type Description | with both digits and character | financial_details.xlsx | assets                  | 24                             | does not throw any error |          |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Asset Type Description | with negative value            | financial_details.xlsx | assets                  | 25                             | does not throw any error |          |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Asset Type Description | with space                     | financial_details.xlsx | assets                  | 26                             | does not throw any error |          |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Asset Type Description | with special character         | financial_details.xlsx | assets                  | 27                             | does not throw any error |          |     |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    # ${Category:["bonds"]}
    @FixedJsClick
    @Islamic
    @Release
@Part-2
    @ImplementedBy-tanya
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Field_Name             | var                            | FinancialDetailsWB     | FinancialDetails_assets | FinancialDetails_assets_rowNum | Throws_notThrows         | Category   | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Asset Type Description | with valid value               | financial_details.xlsx | assets                  | 23                             | does not throw any error | <Category> |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Asset Type Description | with both digits and character | financial_details.xlsx | assets                  | 24                             | does not throw any error | <Category> |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Asset Type Description | with negative value            | financial_details.xlsx | assets                  | 25                             | does not throw any error | <Category> |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Asset Type Description | with space                     | financial_details.xlsx | assets                  | 26                             | does not throw any error | <Category> |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Asset Type Description | with special character         | financial_details.xlsx | assets                  | 27                             | does not throw any error | <Category> |     |

    # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
   @NotImplemented
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Field_Name             | var                            | FinancialDetailsWB     | FinancialDetails_assets | FinancialDetails_assets_rowNum | Throws_notThrows         | Category | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Asset Type Description | with valid value               | financial_details.xlsx | assets                  | 23                             | does not throw any error |          |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Asset Type Description | with both digits and character | financial_details.xlsx | assets                  | 24                             | does not throw any error |          |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Asset Type Description | with negative value            | financial_details.xlsx | assets                  | 25                             | does not throw any error |          |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Asset Type Description | with space                     | financial_details.xlsx | assets                  | 26                             | does not throw any error |          |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Asset Type Description | with special character         | financial_details.xlsx | assets                  | 27                             | does not throw any error |          |     |


  @FixedTest
  Scenario Outline: ACAUTOCAS-3404: Validating Survey Number in asset Details with <var> mandatory field at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user open Employment Details page on the basis of "<ApplicationStage>"
    And user reads data from the excel file "employment_details.xlsx" under sheet "home" and row 132
    And user fills employment details for "Agriculture"
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_assets>" and row <FinancialDetails_assets_rowNum>
    When user fills "<Field_Name>" field with "<var>" in asset details
    Then "<Field_Name>" field "<Throws_notThrows>" in asset details

    # ${ProductType:["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL","FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @Conventional
    @Release @Part-2
    @ImplementedBy-tushar.chauhan
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Field_Name    | var                              | FinancialDetailsWB     | FinancialDetails_assets | FinancialDetails_assets_rowNum | Throws_notThrows                   | Category | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Survey Number | with valid                       | financial_details.xlsx | assets                  | 41                             | does not throw any error           |          |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Survey Number | with both digits and character   | financial_details.xlsx | assets                  | 42                             | does not throw any error           |          |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Survey Number | with negative number             | financial_details.xlsx | assets                  | 43                             | does not throw any error           |          |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Survey Number | alphanumeric with hyphen         | financial_details.xlsx | assets                  | 44                             | does not throw any error           |          |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Survey Number | with space(bug)                  | financial_details.xlsx | assets                  | 45                             | does not throw any error           |          |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Survey Number | alphanumeric with hash symbol    | financial_details.xlsx | assets                  | 46                             | does not throw any error           |          |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Survey Number | alphanumeric with comma          | financial_details.xlsx | assets                  | 47                             | does not throw any error           |          |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Survey Number | alphanumeric with dot            | financial_details.xlsx | assets                  | 48                             | does not throw any error           |          |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Survey Number | alphanumeric with forward slash  | financial_details.xlsx | assets                  | 49                             | does not throw any error           |          |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Survey Number | alphanumeric with backward slash | financial_details.xlsx | assets                  | 50                             | does not throw any error           |          |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Survey Number | with special character           | financial_details.xlsx | assets                  | 51                             | throws an error with error message |          |     |

    # ${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @Islamic
    @Release
@Part-2
    @ImplementedBy-tanya
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Field_Name    | var                              | FinancialDetailsWB     | FinancialDetails_assets | FinancialDetails_assets_rowNum | Throws_notThrows                   | Category | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Survey Number | with valid                       | financial_details.xlsx | assets                  | 41                             | does not throw any error           |          |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Survey Number | with both digits and character   | financial_details.xlsx | assets                  | 42                             | does not throw any error           |          |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Survey Number | with negative number             | financial_details.xlsx | assets                  | 43                             | does not throw any error           |          |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Survey Number | alphanumeric with hyphen         | financial_details.xlsx | assets                  | 44                             | does not throw any error           |          |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Survey Number | with space(bug)                  | financial_details.xlsx | assets                  | 45                             | does not throw any error           |          |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Survey Number | alphanumeric with hash symbol    | financial_details.xlsx | assets                  | 46                             | does not throw any error           |          |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Survey Number | alphanumeric with comma          | financial_details.xlsx | assets                  | 47                             | does not throw any error           |          |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Survey Number | alphanumeric with dot            | financial_details.xlsx | assets                  | 48                             | does not throw any error           |          |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Survey Number | alphanumeric with forward slash  | financial_details.xlsx | assets                  | 49                             | does not throw any error           |          |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Survey Number | alphanumeric with backward slash | financial_details.xlsx | assets                  | 50                             | does not throw any error           |          |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Survey Number | with special character           | financial_details.xlsx | assets                  | 51                             | throws an error with error message |          |     |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    # ${Category:["bonds"]}
    @Islamic
    @Release
@Part-2
    @ImplementedBy-tanya
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Field_Name    | var                              | FinancialDetailsWB     | FinancialDetails_assets | FinancialDetails_assets_rowNum | Throws_notThrows                   | Category   | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Survey Number | with valid                       | financial_details.xlsx | assets                  | 41                             | does not throw any error           | <Category> |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Survey Number | with both digits and character   | financial_details.xlsx | assets                  | 42                             | does not throw any error           | <Category> |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Survey Number | with negative number             | financial_details.xlsx | assets                  | 43                             | does not throw any error           | <Category> |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Survey Number | alphanumeric with hyphen         | financial_details.xlsx | assets                  | 44                             | does not throw any error           | <Category> |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Survey Number | with space(bug)                  | financial_details.xlsx | assets                  | 45                             | does not throw any error           | <Category> |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Survey Number | alphanumeric with hash symbol    | financial_details.xlsx | assets                  | 46                             | does not throw any error           | <Category> |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Survey Number | alphanumeric with comma          | financial_details.xlsx | assets                  | 47                             | does not throw any error           | <Category> |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Survey Number | alphanumeric with dot            | financial_details.xlsx | assets                  | 48                             | does not throw any error           | <Category> |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Survey Number | alphanumeric with forward slash  | financial_details.xlsx | assets                  | 49                             | does not throw any error           | <Category> |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Survey Number | alphanumeric with backward slash | financial_details.xlsx | assets                  | 50                             | does not throw any error           | <Category> |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Survey Number | with special character           | financial_details.xlsx | assets                  | 51                             | throws an error with error message | <Category> |     |

    # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
   @NotImplemented
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Field_Name    | var                              | FinancialDetailsWB     | FinancialDetails_assets | FinancialDetails_assets_rowNum | Throws_notThrows                   | Category | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Survey Number | with valid                       | financial_details.xlsx | assets                  | 41                             | does not throw any error           |          |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Survey Number | with both digits and character   | financial_details.xlsx | assets                  | 42                             | does not throw any error           |          |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Survey Number | with negative number             | financial_details.xlsx | assets                  | 43                             | does not throw any error           |          |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Survey Number | alphanumeric with hyphen         | financial_details.xlsx | assets                  | 44                             | does not throw any error           |          |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Survey Number | with space(bug)                  | financial_details.xlsx | assets                  | 45                             | does not throw any error           |          |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Survey Number | alphanumeric with hash symbol    | financial_details.xlsx | assets                  | 46                             | does not throw any error           |          |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Survey Number | alphanumeric with comma          | financial_details.xlsx | assets                  | 47                             | does not throw any error           |          |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Survey Number | alphanumeric with dot            | financial_details.xlsx | assets                  | 48                             | does not throw any error           |          |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Survey Number | alphanumeric with forward slash  | financial_details.xlsx | assets                  | 49                             | does not throw any error           |          |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Survey Number | alphanumeric with backward slash | financial_details.xlsx | assets                  | 50                             | does not throw any error           |          |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Survey Number | with special character           | financial_details.xlsx | assets                  | 51                             | throws an error with error message |          |     |

  Scenario Outline: ACAUTOCAS-1689: In Selection of <Field_Name> as Agriculture Land <Dependent_hyperlink> is editable at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user open Employment Details page on the basis of "<ApplicationStage>"
    And user reads data from the excel file "employment_details.xlsx" under sheet "home" and row 132
    And user fills employment details for "Agriculture"
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_assets>" and row <FinancialDetails_assets_rowNum>
    When user fills "<Field_Name>" field with "valid value" in asset details
    Then "<Dependent_hyperlink>" should be editable in asset details

    # ${ProductType:["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL","FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @Conventional
    @Release @Part-2
    @ImplementedBy-tushar.chauhan
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | Field_Name | Dependent_hyperlink | FinancialDetailsWB     | FinancialDetails_assets | FinancialDetails_assets_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Asset Type | Details             | financial_details.xlsx | assets                  | 59                             |

    # ${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @Islamic
    @Release
@Part-2
    @ImplementedBy-tanya
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | Field_Name | Dependent_hyperlink | FinancialDetailsWB     | FinancialDetails_assets | FinancialDetails_assets_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Asset Type | Details             | financial_details.xlsx | assets                  | 59                             |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    # ${Category:["bonds"]}
    @Islamic
    @Release
@Part-2
    @ImplementedBy-tanya
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | Key | Field_Name | Dependent_hyperlink | FinancialDetailsWB     | FinancialDetails_assets | FinancialDetails_assets_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Asset Type | Details             | financial_details.xlsx | assets                  | 59                             |

    # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
   @NotImplemented
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | Field_Name | Dependent_hyperlink | FinancialDetailsWB     | FinancialDetails_assets | FinancialDetails_assets_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Asset Type | Details             | financial_details.xlsx | assets                  | 59                             |

  Scenario Outline: ACAUTOCAS-1690: In Selection of <Field_Name> field <Dependent_Field> is autofilled at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user open Employment Details page on the basis of "<ApplicationStage>"
    And user reads data from the excel file "employment_details.xlsx" under sheet "home" and row 132
    And user fills employment details for "Agriculture"
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_assets>" and row <FinancialDetails_assets_rowNum>
    When user fills "<Field_Name>" field with "valid value" in asset details
    Then "<Dependent_Field>" should be autofilled in asset details

    # ${ProductType:["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL","FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @Conventional
    @Release @Part-2
    @ImplementedBy-tushar.chauhan
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | Field_Name | Dependent_Field | FinancialDetailsWB     | FinancialDetails_assets | FinancialDetails_assets_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Asset Type | Category        | financial_details.xlsx | assets                  | 59                             |

    # ${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @Islamic
    @Release
@Part-2
    @ImplementedBy-tanya
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | Field_Name | Dependent_Field | FinancialDetailsWB     | FinancialDetails_assets | FinancialDetails_assets_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Asset Type | Category        | financial_details.xlsx | assets                  | 59                             |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    # ${Category:["bonds"]}
    @Islamic
    @Release
@Part-2
    @ImplementedBy-tanya
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | Key | Field_Name | Dependent_Field | FinancialDetailsWB     | FinancialDetails_assets | FinancialDetails_assets_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Asset Type | Category        | financial_details.xlsx | assets                  | 59                             |

    # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
   @NotImplemented
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | Field_Name | Dependent_Field | FinancialDetailsWB     | FinancialDetails_assets | FinancialDetails_assets_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Asset Type | Category        | financial_details.xlsx | assets                  | 59                             |

  @FixedTest
  Scenario Outline: ACAUTOCAS-3403: Validating Landowner Name in asset Details with <var> mandatory field at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user open Employment Details page on the basis of "<ApplicationStage>"
    And user reads data from the excel file "employment_details.xlsx" under sheet "home" and row 132
    And user fills employment details for "Agriculture"
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_assets>" and row <FinancialDetails_assets_rowNum>
    When user fills "<Field_Name>" field with "<var>" in asset details
    Then "<Field_Name>" field "<Throws_notThrows>" in asset details

    # ${ProductType:["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL","FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @Conventional
    @Release @Part-2
    @ImplementedBy-tushar.chauhan
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | Field_Name     | var                                | FinancialDetailsWB     | FinancialDetails_assets | FinancialDetails_assets_rowNum | Throws_notThrows                   |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Landowner Name | with valid                         | financial_details.xlsx | assets                  | 28                             | does not throw any error           |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Landowner Name | with both digits and character     | financial_details.xlsx | assets                  | 29                             | does not throw any error           |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Landowner Name | with negative number               | financial_details.xlsx | assets                  | 30                             | does not throw any error           |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Landowner Name | alphanumeric with hyphen           | financial_details.xlsx | assets                  | 31                             | does not throw any error           |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Landowner Name | with space                         | financial_details.xlsx | assets                  | 32                             | does not throw any error           |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Landowner Name | alphanumeric with bracket          | financial_details.xlsx | assets                  | 33                             | does not throw any error           |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Landowner Name | alphanumeric with comma            | financial_details.xlsx | assets                  | 34                             | does not throw any error           |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Landowner Name | alphanumeric with and operator     | financial_details.xlsx | assets                  | 35                             | does not throw any error           |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Landowner Name | alphanumeric with exclamation mark | financial_details.xlsx | assets                  | 36                             | does not throw any error           |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Landowner Name | alphanumeric with dot              | financial_details.xlsx | assets                  | 37                             | does not throw any error           |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Landowner Name | alphanumeric with dollar           | financial_details.xlsx | assets                  | 38                             | does not throw any error           |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Landowner Name | alphanumeric with forward slash    | financial_details.xlsx | assets                  | 39                             | does not throw any error           |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Landowner Name | with special character             | financial_details.xlsx | assets                  | 40                             | throws an error with error message |

    # ${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @Islamic
    @Release
@Part-2
    @ImplementedBy-tanya
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | Field_Name     | var                                | FinancialDetailsWB     | FinancialDetails_assets | FinancialDetails_assets_rowNum | Throws_notThrows                   |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Landowner Name | with valid                         | financial_details.xlsx | assets                  | 28                             | does not throw any error           |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Landowner Name | with both digits and character     | financial_details.xlsx | assets                  | 29                             | does not throw any error           |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Landowner Name | with negative number               | financial_details.xlsx | assets                  | 30                             | does not throw any error           |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Landowner Name | alphanumeric with hyphen           | financial_details.xlsx | assets                  | 31                             | does not throw any error           |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Landowner Name | with space                         | financial_details.xlsx | assets                  | 32                             | does not throw any error           |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Landowner Name | alphanumeric with bracket          | financial_details.xlsx | assets                  | 33                             | does not throw any error           |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Landowner Name | alphanumeric with comma            | financial_details.xlsx | assets                  | 34                             | does not throw any error           |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Landowner Name | alphanumeric with and operator     | financial_details.xlsx | assets                  | 35                             | does not throw any error           |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Landowner Name | alphanumeric with exclamation mark | financial_details.xlsx | assets                  | 36                             | does not throw any error           |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Landowner Name | alphanumeric with dot              | financial_details.xlsx | assets                  | 37                             | does not throw any error           |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Landowner Name | alphanumeric with dollar           | financial_details.xlsx | assets                  | 38                             | does not throw any error           |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Landowner Name | alphanumeric with forward slash    | financial_details.xlsx | assets                  | 39                             | does not throw any error           |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Landowner Name | with special character             | financial_details.xlsx | assets                  | 40                             | throws an error with error message |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    # ${Category:["bonds"]}
    @Islamic
    @Release
@Part-2
    @ImplementedBy-tanya
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | Key | Field_Name     | var                                | FinancialDetailsWB     | FinancialDetails_assets | FinancialDetails_assets_rowNum | Throws_notThrows                   |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Landowner Name | with valid                         | financial_details.xlsx | assets                  | 28                             | does not throw any error           |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Landowner Name | with both digits and character     | financial_details.xlsx | assets                  | 29                             | does not throw any error           |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Landowner Name | with negative number               | financial_details.xlsx | assets                  | 30                             | does not throw any error           |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Landowner Name | alphanumeric with hyphen           | financial_details.xlsx | assets                  | 31                             | does not throw any error           |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Landowner Name | with space                         | financial_details.xlsx | assets                  | 32                             | does not throw any error           |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Landowner Name | alphanumeric with bracket          | financial_details.xlsx | assets                  | 33                             | does not throw any error           |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Landowner Name | alphanumeric with comma            | financial_details.xlsx | assets                  | 34                             | does not throw any error           |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Landowner Name | alphanumeric with and operator     | financial_details.xlsx | assets                  | 35                             | does not throw any error           |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Landowner Name | alphanumeric with exclamation mark | financial_details.xlsx | assets                  | 36                             | does not throw any error           |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Landowner Name | alphanumeric with dot              | financial_details.xlsx | assets                  | 37                             | does not throw any error           |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Landowner Name | alphanumeric with dollar           | financial_details.xlsx | assets                  | 38                             | does not throw any error           |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Landowner Name | alphanumeric with forward slash    | financial_details.xlsx | assets                  | 39                             | does not throw any error           |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Landowner Name | with special character             | financial_details.xlsx | assets                  | 40                             | throws an error with error message |

    # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
   @NotImplemented
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | Field_Name     | var                                | FinancialDetailsWB     | FinancialDetails_assets | FinancialDetails_assets_rowNum | Throws_notThrows                   |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Landowner Name | with valid                         | financial_details.xlsx | assets                  | 28                             | does not throw any error           |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Landowner Name | with both digits and character     | financial_details.xlsx | assets                  | 29                             | does not throw any error           |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Landowner Name | with negative number               | financial_details.xlsx | assets                  | 30                             | does not throw any error           |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Landowner Name | alphanumeric with hyphen           | financial_details.xlsx | assets                  | 31                             | does not throw any error           |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Landowner Name | with space                         | financial_details.xlsx | assets                  | 32                             | does not throw any error           |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Landowner Name | alphanumeric with bracket          | financial_details.xlsx | assets                  | 33                             | does not throw any error           |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Landowner Name | alphanumeric with comma            | financial_details.xlsx | assets                  | 34                             | does not throw any error           |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Landowner Name | alphanumeric with and operator     | financial_details.xlsx | assets                  | 35                             | does not throw any error           |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Landowner Name | alphanumeric with exclamation mark | financial_details.xlsx | assets                  | 36                             | does not throw any error           |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Landowner Name | alphanumeric with dot              | financial_details.xlsx | assets                  | 37                             | does not throw any error           |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Landowner Name | alphanumeric with dollar           | financial_details.xlsx | assets                  | 38                             | does not throw any error           |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Landowner Name | alphanumeric with forward slash    | financial_details.xlsx | assets                  | 39                             | does not throw any error           |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Landowner Name | with special character             | financial_details.xlsx | assets                  | 40                             | throws an error with error message |

  Scenario Outline: ACAUTOCAS-3405: Validating Land Area in asset Details <var> non mandatory field at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user open Employment Details page on the basis of "<ApplicationStage>"
    And user reads data from the excel file "employment_details.xlsx" under sheet "home" and row 132
    And user fills employment details for "Agriculture"
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_assets>" and row <FinancialDetails_assets_rowNum>
    When user fills "<Field_Name>" field with "<var>" in asset details
    Then "<Field_Name>" field "<Throws_notThrows>" in asset details

    # ${ProductType:["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL","FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @Conventional
    @Release @Part-2
    @ImplementedBy-tushar.chauhan
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | Field_Name           | var                            | FinancialDetailsWB     | FinancialDetails_assets | FinancialDetails_assets_rowNum | Throws_notThrows                   |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Land Area (in Acres) | with valid value               | financial_details.xlsx | assets                  | 52                             | does not throw any error           |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Land Area (in Acres) | with both digits and character | financial_details.xlsx | assets                  | 53                             | throws an error with error message |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Land Area (in Acres) | with special character         | financial_details.xlsx | assets                  | 55                             | throws an error with error message |
#      | Land Area (in Acres) | more than four digits          | LoginDetailsCAS.xlsx | LoginData | 7         | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 3                             | financial_details.xlsx | assets                  | 54                             | throws an error with error message |

    # ${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @Islamic
    @Release
@Part-2
    @ImplementedBy-tanya
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | Field_Name           | var                            | FinancialDetailsWB     | FinancialDetails_assets | FinancialDetails_assets_rowNum | Throws_notThrows                   |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Land Area (in Acres) | with valid value               | financial_details.xlsx | assets                  | 52                             | does not throw any error           |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Land Area (in Acres) | with both digits and character | financial_details.xlsx | assets                  | 53                             | throws an error with error message |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Land Area (in Acres) | with special character         | financial_details.xlsx | assets                  | 55                             | throws an error with error message |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    # ${Category:["bonds"]}
    @Islamic
    @Release
@Part-2
    @ImplementedBy-tanya
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | Key | Field_Name           | var                            | FinancialDetailsWB     | FinancialDetails_assets | FinancialDetails_assets_rowNum | Throws_notThrows                   |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Land Area (in Acres) | with valid value               | financial_details.xlsx | assets                  | 52                             | does not throw any error           |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Land Area (in Acres) | with both digits and character | financial_details.xlsx | assets                  | 53                             | throws an error with error message |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Land Area (in Acres) | with special character         | financial_details.xlsx | assets                  | 55                             | throws an error with error message |

    # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
   @NotImplemented
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | Field_Name           | var                            | FinancialDetailsWB     | FinancialDetails_assets | FinancialDetails_assets_rowNum | Throws_notThrows                   |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Land Area (in Acres) | with valid value               | financial_details.xlsx | assets                  | 52                             | does not throw any error           |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Land Area (in Acres) | with both digits and character | financial_details.xlsx | assets                  | 53                             | throws an error with error message |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Land Area (in Acres) | with special character         | financial_details.xlsx | assets                  | 55                             | throws an error with error message |

  Scenario Outline: ACAUTOCAS-1694: Saving asset details hyperlink without <Field_Name> at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user open Employment Details page on the basis of "<ApplicationStage>"
    And user reads data from the excel file "employment_details.xlsx" under sheet "home" and row 132
    And user fills employment details for "Agriculture"
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_assets>" and row <FinancialDetails_assets_rowNum>
    When user fills the asset details hyperlink without "<Field_Name>"
    Then asset details hyperlink not saved without "<Field_Name>" "<Throws_notThrows>"

    # ${ProductType:["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL","FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @Conventional
    @Release @Part-2
    @ImplementedBy-tushar.chauhan
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | Field_Name     | FinancialDetailsWB     | FinancialDetails_assets | FinancialDetails_assets_rowNum | Throws_notThrows                   |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Survey Number  | financial_details.xlsx | assets                  | 59                             | throws an error with error message |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Landowner Name | financial_details.xlsx | assets                  | 60                             | throws an error with error message |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Irrigated      | financial_details.xlsx | assets                  | 61                             | throws an error with error message |

    # ${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @Islamic
    @Release
@Part-2
    @ImplementedBy-tanya
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | Field_Name     | FinancialDetailsWB     | FinancialDetails_assets | FinancialDetails_assets_rowNum | Throws_notThrows                   |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Survey Number  | financial_details.xlsx | assets                  | 59                             | throws an error with error message |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Landowner Name | financial_details.xlsx | assets                  | 60                             | throws an error with error message |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Irrigated      | financial_details.xlsx | assets                  | 61                             | throws an error with error message |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    # ${Category:["bonds"]}
    @Islamic
    @Release
@Part-2
    @ImplementedBy-tanya
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | Key | Field_Name     | FinancialDetailsWB     | FinancialDetails_assets | FinancialDetails_assets_rowNum | Throws_notThrows                   |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Survey Number  | financial_details.xlsx | assets                  | 59                             | throws an error with error message |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Landowner Name | financial_details.xlsx | assets                  | 60                             | throws an error with error message |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Irrigated      | financial_details.xlsx | assets                  | 61                             | throws an error with error message |

    # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
   @NotImplemented
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | Field_Name     | FinancialDetailsWB     | FinancialDetails_assets | FinancialDetails_assets_rowNum | Throws_notThrows                   |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Survey Number  | financial_details.xlsx | assets                  | 59                             | throws an error with error message |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Landowner Name | financial_details.xlsx | assets                  | 60                             | throws an error with error message |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Irrigated      | financial_details.xlsx | assets                  | 61                             | throws an error with error message |

  Scenario Outline: ACAUTOCAS-1695: In Selection of <Field_Name> as owned <Dependent_Field> is displayed at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user open Employment Details page on the basis of "<ApplicationStage>"
    And user reads data from the excel file "employment_details.xlsx" under sheet "home" and row 132
    And user fills employment details for "Agriculture"
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_assets>" and row <FinancialDetails_assets_rowNum>
    When user fills "<Field_Name>" field with "valid value" in asset details
    Then "<Dependent_Field>" should be displayed in asset details

    # ${ProductType:["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL","FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @Conventional
    @Release @Part-2
    @ImplementedBy-tushar.chauhan
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | Field_Name       | Dependent_Field       | FinancialDetailsWB     | FinancialDetails_assets | FinancialDetails_assets_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Ownership Status | Last Landholding Date | financial_details.xlsx | assets                  | 59                             |

    # ${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @Islamic
    @Release
@Part-2
    @ImplementedBy-tanya
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | Field_Name       | Dependent_Field       | FinancialDetailsWB     | FinancialDetails_assets | FinancialDetails_assets_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Ownership Status | Last Landholding Date | financial_details.xlsx | assets                  | 59                             |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    # ${Category:["bonds"]}
    @Islamic
    @Release
@Part-2
    @ImplementedBy-tanya
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | Key | Field_Name       | Dependent_Field       | FinancialDetailsWB     | FinancialDetails_assets | FinancialDetails_assets_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Ownership Status | Last Landholding Date | financial_details.xlsx | assets                  | 59                             |

    # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
   @NotImplemented
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | Field_Name       | Dependent_Field       | FinancialDetailsWB     | FinancialDetails_assets | FinancialDetails_assets_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Ownership Status | Last Landholding Date | financial_details.xlsx | assets                  | 59                             |

  Scenario Outline: ACAUTOCAS-3406: Validating Last LandHolding Date in asset Details <var> non mandatory field at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user open Employment Details page on the basis of "<ApplicationStage>"
    And user reads data from the excel file "employment_details.xlsx" under sheet "home" and row 132
    And user fills employment details for "Agriculture"
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_assets>" and row <FinancialDetails_assets_rowNum>
    When user fills "<Field_Name>" field with "<var>" in asset details
    Then "<Field_Name>" field "<Throws_notThrows>" in asset details

    # ${ProductType:["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL","FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @Conventional
    @Release @Part-2
    @ImplementedBy-tushar.chauhan
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | Field_Name            | var                    | FinancialDetailsWB     | FinancialDetails_assets | FinancialDetails_assets_rowNum | Throws_notThrows                   |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Last Landholding Date | valid date             | financial_details.xlsx | assets                  | 56                             | does not throw any error           |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Last Landholding Date | less than current date | financial_details.xlsx | assets                  | 57                             | does not throw any error           |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Last Landholding Date | before 1942            | financial_details.xlsx | assets                  | 58                             | throws an error with error message |

    # ${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @Islamic
    @Release
@Part-2
    @ImplementedBy-tanya
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | Field_Name            | var                    | FinancialDetailsWB     | FinancialDetails_assets | FinancialDetails_assets_rowNum | Throws_notThrows                   |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Last Landholding Date | valid date             | financial_details.xlsx | assets                  | 56                             | does not throw any error           |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Last Landholding Date | less than current date | financial_details.xlsx | assets                  | 57                             | does not throw any error           |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Last Landholding Date | before 1942            | financial_details.xlsx | assets                  | 58                             | throws an error with error message |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    # ${Category:["bonds"]}
    @Islamic
    @Release
@Part-2
    @ImplementedBy-tanya
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | Key | Field_Name            | var                    | FinancialDetailsWB     | FinancialDetails_assets | FinancialDetails_assets_rowNum | Throws_notThrows                   |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Last Landholding Date | valid date             | financial_details.xlsx | assets                  | 56                             | does not throw any error           |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Last Landholding Date | less than current date | financial_details.xlsx | assets                  | 57                             | does not throw any error           |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Last Landholding Date | before 1942            | financial_details.xlsx | assets                  | 58                             | throws an error with error message |

    # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
   @NotImplemented
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | Field_Name            | var                    | FinancialDetailsWB     | FinancialDetails_assets | FinancialDetails_assets_rowNum | Throws_notThrows                   |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Last Landholding Date | valid date             | financial_details.xlsx | assets                  | 56                             | does not throw any error           |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Last Landholding Date | less than current date | financial_details.xlsx | assets                  | 57                             | does not throw any error           |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Last Landholding Date | before 1942            | financial_details.xlsx | assets                  | 58                             | throws an error with error message |

  Scenario Outline: ACAUTOCAS-1697: Saving Land Address Details without <Field_Name> in Asset Details at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user open Employment Details page on the basis of "<ApplicationStage>"
    And user reads data from the excel file "employment_details.xlsx" under sheet "home" and row 132
    And user fills employment details for "Agriculture"
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_assets>" and row <FinancialDetails_assets_rowNum>
    When user fills Land Address Details without "<Field_Name>"
    Then Land Address Details not saved without "<Field_Name>"

    # ${ProductType:["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL","FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @Conventional
    @Release @Part-2
    @ImplementedBy-tushar.chauhan
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | Field_Name  | FinancialDetailsWB     | FinancialDetails_assets | FinancialDetails_assets_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Plot Number | financial_details.xlsx | assets                  | 92                             |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | PinCode     | financial_details.xlsx | assets                  | 93                             |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | State       | financial_details.xlsx | assets                  | 94                             |

    # ${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @Islamic
    @Release
@Part-2
    @ImplementedBy-tanya
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | Field_Name  | FinancialDetailsWB     | FinancialDetails_assets | FinancialDetails_assets_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Plot Number | financial_details.xlsx | assets                  | 92                             |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | P.O. Box    | financial_details.xlsx | assets                  | 93                             |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Emirate     | financial_details.xlsx | assets                  | 94                             |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    # ${Category:["bonds"]}
    @Islamic
    @Release
@Part-2
    @ImplementedBy-tanya
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | Key | Field_Name  | FinancialDetailsWB     | FinancialDetails_assets | FinancialDetails_assets_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Plot Number | financial_details.xlsx | assets                  | 92                             |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | P.O. Box    | financial_details.xlsx | assets                  | 93                             |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Emirate     | financial_details.xlsx | assets                  | 94                             |

    # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
   @NotImplemented
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | Field_Name  | FinancialDetailsWB     | FinancialDetails_assets | FinancialDetails_assets_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Plot Number | financial_details.xlsx | assets                  | 92                             |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | PinCode     | financial_details.xlsx | assets                  | 93                             |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | State       | financial_details.xlsx | assets                  | 94                             |

  Scenario Outline: ACAUTOCAS-1698: Saving Land Address Details with <Mandatory_All> field in Asset Details page at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user open Employment Details page on the basis of "<ApplicationStage>"
    And user reads data from the excel file "employment_details.xlsx" under sheet "home" and row 132
    And user fills employment details for "Agriculture"
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_assets>" and row <FinancialDetails_assets_rowNum>
    When user fills Land Address details with "<Mandatory_All>" field
    Then Land Address Details is saved successfully

    # ${ProductType:["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL","FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @Conventional
    @Release @Part-2
    @ImplementedBy-tushar.chauhan
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | Mandatory_All | FinancialDetailsWB     | FinancialDetails_assets | FinancialDetails_assets_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | mandatory     | financial_details.xlsx | assets                  | 62                             |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | all           | financial_details.xlsx | assets                  | 63                             |

    # ${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @Islamic
    @Release
@Part-2
    @ImplementedBy-tanya
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | Mandatory_All | FinancialDetailsWB     | FinancialDetails_assets | FinancialDetails_assets_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | mandatory     | financial_details.xlsx | assets                  | 62                             |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | all           | financial_details.xlsx | assets                  | 209                            |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    # ${Category:["bonds"]}
    @Islamic
    @Release
@Part-2
    @ImplementedBy-tanya
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | Key | Mandatory_All | FinancialDetailsWB     | FinancialDetails_assets | FinancialDetails_assets_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | mandatory     | financial_details.xlsx | assets                  | 62                             |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | all           | financial_details.xlsx | assets                  | 209                            |

    # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
   @NotImplemented
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | Mandatory_All | FinancialDetailsWB     | FinancialDetails_assets | FinancialDetails_assets_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | mandatory     | financial_details.xlsx | assets                  | 62                             |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | all           | financial_details.xlsx | assets                  | 63                             |

  @FixedTest
  Scenario Outline: ACAUTOCAS-3407: Validating Non Mandatory Field Address Line2 in Land Address Details with <var> in Asset Details at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user open Employment Details page on the basis of "<ApplicationStage>"
    And user reads data from the excel file "employment_details.xlsx" under sheet "home" and row 132
    And user fills employment details for "Agriculture"
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_assets>" and row <FinancialDetails_assets_rowNum>
    When user enters "<Field_Name>" with "<var>" in land address details
    Then "<Field_Name>" field "<Throws_notThrows>" in land address details

    # ${ProductType:["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL","FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @Conventional
    @Release @Part-2
    @ImplementedBy-tushar.chauhan
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | Field_Name     | var                        | FinancialDetailsWB     | FinancialDetails_assets | FinancialDetails_assets_rowNum | Throws_notThrows         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Address Line 2 | valid value                | financial_details.xlsx | assets                  | 64                             | does not throw any error |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Address Line 2 | both digits and characters | financial_details.xlsx | assets                  | 65                             | does not throw any error |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Address Line 2 | space                      | financial_details.xlsx | assets                  | 66                             | does not throw any error |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Address Line 2 | special characters         | financial_details.xlsx | assets                  | 67                             | does not throw any error |

    # ${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @Islamic
    @Release
@Part-2
    @ImplementedBy-tanya
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | Field_Name     | var                        | FinancialDetailsWB     | FinancialDetails_assets | FinancialDetails_assets_rowNum | Throws_notThrows         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Address Line 2 | valid value                | financial_details.xlsx | assets                  | 64                             | does not throw any error |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Address Line 2 | both digits and characters | financial_details.xlsx | assets                  | 65                             | does not throw any error |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Address Line 2 | space                      | financial_details.xlsx | assets                  | 66                             | does not throw any error |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Address Line 2 | special characters         | financial_details.xlsx | assets                  | 67                             | does not throw any error |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    # ${Category:["bonds"]}
    @Islamic
    @Release
@Part-2
    @ImplementedBy-tanya
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | Key | Field_Name     | var                        | FinancialDetailsWB     | FinancialDetails_assets | FinancialDetails_assets_rowNum | Throws_notThrows         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Address Line 2 | valid value                | financial_details.xlsx | assets                  | 64                             | does not throw any error |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Address Line 2 | both digits and characters | financial_details.xlsx | assets                  | 65                             | does not throw any error |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Address Line 2 | space                      | financial_details.xlsx | assets                  | 66                             | does not throw any error |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Address Line 2 | special characters         | financial_details.xlsx | assets                  | 67                             | does not throw any error |

    # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
   @NotImplemented
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | Field_Name     | var                        | FinancialDetailsWB     | FinancialDetails_assets | FinancialDetails_assets_rowNum | Throws_notThrows         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Address Line 2 | valid value                | financial_details.xlsx | assets                  | 64                             | does not throw any error |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Address Line 2 | both digits and characters | financial_details.xlsx | assets                  | 65                             | does not throw any error |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Address Line 2 | space                      | financial_details.xlsx | assets                  | 66                             | does not throw any error |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Address Line 2 | special characters         | financial_details.xlsx | assets                  | 67                             | does not throw any error |

  @FixedTest
  Scenario Outline: ACAUTOCAS-3407: Validating Non Mandatory Field Address Line3 in Land Address Details with <var> at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user open Employment Details page on the basis of "<ApplicationStage>"
    And user reads data from the excel file "employment_details.xlsx" under sheet "home" and row 132
    And user fills employment details for "Agriculture"
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_assets>" and row <FinancialDetails_assets_rowNum>
    When user enters "<Field_Name>" with "<var>" in land address details
    Then "<Field_Name>" field "<Throws_notThrows>" in land address details

    # ${ProductType:["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL","FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @Conventional
    @Release @Part-2
    @ImplementedBy-tushar.chauhan
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | Field_Name     | var                        | FinancialDetailsWB     | FinancialDetails_assets | FinancialDetails_assets_rowNum | Throws_notThrows         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Address Line 3 | valid value                | financial_details.xlsx | assets                  | 68                             | does not throw any error |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Address Line 3 | both digits and characters | financial_details.xlsx | assets                  | 69                             | does not throw any error |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Address Line 3 | space                      | financial_details.xlsx | assets                  | 70                             | does not throw any error |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Address Line 3 | special characters         | financial_details.xlsx | assets                  | 71                             | does not throw any error |

    # ${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @Islamic
    @Release
@Part-2
    @ImplementedBy-tanya
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | Field_Name     | var                        | FinancialDetailsWB     | FinancialDetails_assets | FinancialDetails_assets_rowNum | Throws_notThrows         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Address Line 3 | valid value                | financial_details.xlsx | assets                  | 68                             | does not throw any error |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Address Line 3 | both digits and characters | financial_details.xlsx | assets                  | 69                             | does not throw any error |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Address Line 3 | space                      | financial_details.xlsx | assets                  | 70                             | does not throw any error |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Address Line 3 | special characters         | financial_details.xlsx | assets                  | 71                             | does not throw any error |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    # ${Category:["bonds"]}
    @Islamic
    @Release
@Part-2
    @ImplementedBy-tanya
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | Key | Field_Name     | var                        | FinancialDetailsWB     | FinancialDetails_assets | FinancialDetails_assets_rowNum | Throws_notThrows         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Address Line 3 | valid value                | financial_details.xlsx | assets                  | 68                             | does not throw any error |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Address Line 3 | both digits and characters | financial_details.xlsx | assets                  | 69                             | does not throw any error |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Address Line 3 | space                      | financial_details.xlsx | assets                  | 70                             | does not throw any error |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Address Line 3 | special characters         | financial_details.xlsx | assets                  | 71                             | does not throw any error |

    # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
   @NotImplemented
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | Field_Name     | var                        | FinancialDetailsWB     | FinancialDetails_assets | FinancialDetails_assets_rowNum | Throws_notThrows         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Address Line 3 | valid value                | financial_details.xlsx | assets                  | 68                             | does not throw any error |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Address Line 3 | both digits and characters | financial_details.xlsx | assets                  | 69                             | does not throw any error |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Address Line 3 | space                      | financial_details.xlsx | assets                  | 70                             | does not throw any error |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Address Line 3 | special characters         | financial_details.xlsx | assets                  | 71                             | does not throw any error |

#Duplicate Scenario
#  @Release @Part-2
#  Scenario Outline: ACAUTOCAS-3408: Validating Mobile Phone in Land Address Details with <validity>
#    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_assets>" and row <FinancialDetails_assets_rowNum>
#    When user enters "<Field_Name>" with "<var>" in land address details
#    Then "<Field_Name>" field "<Throws_notThrows>" in land address details
#
#  Examples:
#    | Field_Name   | var                    | FinancialDetailsWB     | FinancialDetails_assets | FinancialDetails_assets_rowNum | Throws_notThrows                   |
#    | Mobile Phone | valid value            | financial_details.xlsx | assets                  | 76                             | does not throw any error           |
#    | Mobile Phone | with special character | financial_details.xlsx | assets                  | 75                             | throws an error with error message |

  @FixedTest
  Scenario Outline: ACAUTOCAS-3409: Validating Mobile Phone in Land Address Details <var> in asset details at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user open Employment Details page on the basis of "<ApplicationStage>"
    And user reads data from the excel file "employment_details.xlsx" under sheet "home" and row 132
    And user fills employment details for "Agriculture"
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_assets>" and row <FinancialDetails_assets_rowNum>
    When user enters "<Field_Name>" with "<var>" in land address details
    Then "<Field_Name>" field "<Throws_notThrows>" in land address details

    # ${ProductType:["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL","FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @Conventional
    @Release @Part-2
    @ImplementedBy-tushar.chauhan
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | Field_Name   | var                       | FinancialDetailsWB     | FinancialDetails_assets | FinancialDetails_assets_rowNum | Throws_notThrows                   |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Mobile Phone | with characters           | financial_details.xlsx | assets                  | 72                             | throws an error with error message |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Mobile Phone | with special character    | financial_details.xlsx | assets                  | 73                             | throws an error with error message |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Mobile Phone | with characters and digit | financial_details.xlsx | assets                  | 74                             | throws an error with error message |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Mobile Phone | with spaces               | financial_details.xlsx | assets                  | 75                             | throws an error with error message |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Mobile Phone | valid value               | financial_details.xlsx | assets                  | 76                             | does not throw any error           |

    # ${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @Islamic
    @Release
@Part-2
    @ImplementedBy-tanya
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | Field_Name   | var                       | FinancialDetailsWB     | FinancialDetails_assets | FinancialDetails_assets_rowNum | Throws_notThrows                   |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Mobile Phone | with characters           | financial_details.xlsx | assets                  | 72                             | throws an error with error message |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Mobile Phone | with special character    | financial_details.xlsx | assets                  | 73                             | throws an error with error message |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Mobile Phone | with characters and digit | financial_details.xlsx | assets                  | 74                             | throws an error with error message |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Mobile Phone | with spaces               | financial_details.xlsx | assets                  | 75                             | throws an error with error message |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Mobile Phone | valid value               | financial_details.xlsx | assets                  | 76                             | does not throw any error           |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    # ${Category:["bonds"]}
    @Islamic
    @Release
@Part-2
    @ImplementedBy-tanya
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | Key | Field_Name   | var                       | FinancialDetailsWB     | FinancialDetails_assets | FinancialDetails_assets_rowNum | Throws_notThrows                   |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Mobile Phone | with characters           | financial_details.xlsx | assets                  | 72                             | throws an error with error message |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Mobile Phone | with special character    | financial_details.xlsx | assets                  | 73                             | throws an error with error message |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Mobile Phone | with characters and digit | financial_details.xlsx | assets                  | 74                             | throws an error with error message |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Mobile Phone | with spaces               | financial_details.xlsx | assets                  | 75                             | throws an error with error message |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Mobile Phone | valid value               | financial_details.xlsx | assets                  | 76                             | does not throw any error           |

    # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
   @NotImplemented
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | Field_Name   | var                       | FinancialDetailsWB     | FinancialDetails_assets | FinancialDetails_assets_rowNum | Throws_notThrows                   |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Mobile Phone | with characters           | financial_details.xlsx | assets                  | 72                             | throws an error with error message |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Mobile Phone | with special character    | financial_details.xlsx | assets                  | 73                             | throws an error with error message |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Mobile Phone | with characters and digit | financial_details.xlsx | assets                  | 74                             | throws an error with error message |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Mobile Phone | with spaces               | financial_details.xlsx | assets                  | 75                             | throws an error with error message |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Mobile Phone | valid value               | financial_details.xlsx | assets                  | 76                             | does not throw any error           |

  @FixedTest
  Scenario Outline: ACAUTOCAS-3409: Validating STD field in Land Address Details <var> at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user open Employment Details page on the basis of "<ApplicationStage>"
    And user reads data from the excel file "employment_details.xlsx" under sheet "home" and row 132
    And user fills employment details for "Agriculture"
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_assets>" and row <FinancialDetails_assets_rowNum>
    When user enters "<Field_Name>" with "<var>" in land address details
    Then "<Field_Name>" field "<Throws_notThrows>" in land address details

    # ${ProductType:["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL","FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @Conventional
    @Release @Part-2
    @ImplementedBy-tushar.chauhan
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | Field_Name | var                       | FinancialDetailsWB     | FinancialDetails_assets | FinancialDetails_assets_rowNum | Throws_notThrows                   |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | STD        | valid value               | financial_details.xlsx | assets                  | 77                             | does not throw any error           |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | STD        | with characters           | financial_details.xlsx | assets                  | 78                             | throws an error with error message |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | STD        | with special character    | financial_details.xlsx | assets                  | 79                             | throws an error with error message |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | STD        | with characters and digit | financial_details.xlsx | assets                  | 80                             | throws an error with error message |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | STD        | with spaces               | financial_details.xlsx | assets                  | 81                             | throws an error with error message |

    # ${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @Islamic
    @Release
@Part-2
    @ImplementedBy-tanya
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | Field_Name | var                       | FinancialDetailsWB     | FinancialDetails_assets | FinancialDetails_assets_rowNum | Throws_notThrows                   |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | STD        | valid value               | financial_details.xlsx | assets                  | 77                             | does not throw any error           |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | STD        | with characters           | financial_details.xlsx | assets                  | 78                             | throws an error with error message |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | STD        | with special character    | financial_details.xlsx | assets                  | 79                             | throws an error with error message |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | STD        | with characters and digit | financial_details.xlsx | assets                  | 80                             | throws an error with error message |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | STD        | with spaces               | financial_details.xlsx | assets                  | 81                             | throws an error with error message |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    # ${Category:["bonds"]}
    @Islamic
    @Release
@Part-2
    @ImplementedBy-tanya
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | Key | Field_Name | var                       | FinancialDetailsWB     | FinancialDetails_assets | FinancialDetails_assets_rowNum | Throws_notThrows                   |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | STD        | valid value               | financial_details.xlsx | assets                  | 77                             | does not throw any error           |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | STD        | with characters           | financial_details.xlsx | assets                  | 78                             | throws an error with error message |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | STD        | with special character    | financial_details.xlsx | assets                  | 79                             | throws an error with error message |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | STD        | with characters and digit | financial_details.xlsx | assets                  | 80                             | throws an error with error message |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | STD        | with spaces               | financial_details.xlsx | assets                  | 81                             | throws an error with error message |

    # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
   @NotImplemented
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | Field_Name | var                       | FinancialDetailsWB     | FinancialDetails_assets | FinancialDetails_assets_rowNum | Throws_notThrows                   |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | STD        | valid value               | financial_details.xlsx | assets                  | 77                             | does not throw any error           |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | STD        | with characters           | financial_details.xlsx | assets                  | 78                             | throws an error with error message |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | STD        | with special character    | financial_details.xlsx | assets                  | 79                             | throws an error with error message |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | STD        | with characters and digit | financial_details.xlsx | assets                  | 80                             | throws an error with error message |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | STD        | with spaces               | financial_details.xlsx | assets                  | 81                             | throws an error with error message |

  @FixedTest
  Scenario Outline: ACAUTOCAS-3409: Validating Number field in Land Address Details <var> at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user open Employment Details page on the basis of "<ApplicationStage>"
    And user reads data from the excel file "employment_details.xlsx" under sheet "home" and row 132
    And user fills employment details for "Agriculture"
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_assets>" and row <FinancialDetails_assets_rowNum>
    When user enters "<Field_Name>" with "<var>" in land address details
    Then "<Field_Name>" field "<Throws_notThrows>" in land address details

    # ${ProductType:["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL","FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @Conventional
    @Release @Part-2
    @ImplementedBy-tushar.chauhan
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | Field_Name | var                       | FinancialDetailsWB     | FinancialDetails_assets | FinancialDetails_assets_rowNum | Throws_notThrows                   |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Number     | valid value               | financial_details.xlsx | assets                  | 82                             | does not throw any error           |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Number     | with characters           | financial_details.xlsx | assets                  | 83                             | throws an error with error message |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Number     | with special_character    | financial_details.xlsx | assets                  | 84                             | throws an error with error message |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Number     | with characters and digit | financial_details.xlsx | assets                  | 85                             | throws an error with error message |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Number     | with spaces               | financial_details.xlsx | assets                  | 86                             | throws an error with error message |

    # ${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @Islamic
    @Release
@Part-2
    @ImplementedBy-tanya
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | Field_Name | var                       | FinancialDetailsWB     | FinancialDetails_assets | FinancialDetails_assets_rowNum | Throws_notThrows                   |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Number     | valid value               | financial_details.xlsx | assets                  | 82                             | does not throw any error           |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Number     | with characters           | financial_details.xlsx | assets                  | 83                             | throws an error with error message |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Number     | with special_character    | financial_details.xlsx | assets                  | 84                             | throws an error with error message |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Number     | with characters and digit | financial_details.xlsx | assets                  | 85                             | throws an error with error message |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Number     | with spaces               | financial_details.xlsx | assets                  | 86                             | throws an error with error message |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    # ${Category:["bonds"]}
    @Islamic
    @Release
@Part-2
    @ImplementedBy-tanya
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | Key | Field_Name | var                       | FinancialDetailsWB     | FinancialDetails_assets | FinancialDetails_assets_rowNum | Throws_notThrows                   |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Number     | valid value               | financial_details.xlsx | assets                  | 82                             | does not throw any error           |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Number     | with characters           | financial_details.xlsx | assets                  | 83                             | throws an error with error message |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Number     | with special_character    | financial_details.xlsx | assets                  | 84                             | throws an error with error message |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Number     | with characters and digit | financial_details.xlsx | assets                  | 85                             | throws an error with error message |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Number     | with spaces               | financial_details.xlsx | assets                  | 86                             | throws an error with error message |

    # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
   @NotImplemented
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | Field_Name | var                       | FinancialDetailsWB     | FinancialDetails_assets | FinancialDetails_assets_rowNum | Throws_notThrows                   |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Number     | valid value               | financial_details.xlsx | assets                  | 82                             | does not throw any error           |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Number     | with characters           | financial_details.xlsx | assets                  | 83                             | throws an error with error message |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Number     | with special_character    | financial_details.xlsx | assets                  | 84                             | throws an error with error message |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Number     | with characters and digit | financial_details.xlsx | assets                  | 85                             | throws an error with error message |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Number     | with spaces               | financial_details.xlsx | assets                  | 86                             | throws an error with error message |

  @FixedTest
  Scenario Outline: ACAUTOCAS-3409: Validating Extn field in Land Address Details <var> at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user open Employment Details page on the basis of "<ApplicationStage>"
    And user reads data from the excel file "employment_details.xlsx" under sheet "home" and row 132
    And user fills employment details for "Agriculture"
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_assets>" and row <FinancialDetails_assets_rowNum>
    When user enters "<Field_Name>" with "<var>" in land address details
    Then "<Field_Name>" field "<Throws_notThrows>" in land address details

    # ${ProductType:["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL","FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @Conventional
    @Release @Part-2
    @ImplementedBy-tushar.chauhan
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | Field_Name | var                       | FinancialDetailsWB     | FinancialDetails_assets | FinancialDetails_assets_rowNum | Throws_notThrows                   |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Extn       | valid value               | financial_details.xlsx | assets                  | 87                             | does not throw any error           |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Extn       | with characters           | financial_details.xlsx | assets                  | 88                             | throws an error with error message |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Extn       | with special character    | financial_details.xlsx | assets                  | 89                             | throws an error with error message |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Extn       | with characters and digit | financial_details.xlsx | assets                  | 90                             | throws an error with error message |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Extn       | with spaces               | financial_details.xlsx | assets                  | 91                             | throws an error with error message |

    # ${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @Islamic
    @Release
@Part-2
    @ImplementedBy-tanya
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | Field_Name | var                       | FinancialDetailsWB     | FinancialDetails_assets | FinancialDetails_assets_rowNum | Throws_notThrows                   |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Extn       | valid value               | financial_details.xlsx | assets                  | 87                             | does not throw any error           |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Extn       | with characters           | financial_details.xlsx | assets                  | 88                             | throws an error with error message |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Extn       | with special character    | financial_details.xlsx | assets                  | 89                             | throws an error with error message |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Extn       | with characters and digit | financial_details.xlsx | assets                  | 90                             | throws an error with error message |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Extn       | with spaces               | financial_details.xlsx | assets                  | 91                             | throws an error with error message |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    # ${Category:["bonds"]}
    @Islamic
    @Release
@Part-2
    @ImplementedBy-tanya
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | Key | Field_Name | var                       | FinancialDetailsWB     | FinancialDetails_assets | FinancialDetails_assets_rowNum | Throws_notThrows                   |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Extn       | valid value               | financial_details.xlsx | assets                  | 87                             | does not throw any error           |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Extn       | with characters           | financial_details.xlsx | assets                  | 88                             | throws an error with error message |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Extn       | with special character    | financial_details.xlsx | assets                  | 89                             | throws an error with error message |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Extn       | with characters and digit | financial_details.xlsx | assets                  | 90                             | throws an error with error message |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Extn       | with spaces               | financial_details.xlsx | assets                  | 91                             | throws an error with error message |

    # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
   @NotImplemented
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | Field_Name | var                       | FinancialDetailsWB     | FinancialDetails_assets | FinancialDetails_assets_rowNum | Throws_notThrows                   |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Extn       | valid value               | financial_details.xlsx | assets                  | 87                             | does not throw any error           |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Extn       | with characters           | financial_details.xlsx | assets                  | 88                             | throws an error with error message |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Extn       | with special character    | financial_details.xlsx | assets                  | 89                             | throws an error with error message |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Extn       | with characters and digit | financial_details.xlsx | assets                  | 90                             | throws an error with error message |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Extn       | with spaces               | financial_details.xlsx | assets                  | 91                             | throws an error with error message |

  @AppInfoFixed5
  Scenario Outline: ACAUTOCAS-1702: In Selection of Duration at this Address with "<From>" and "<To>" at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user open Employment Details page on the basis of "<ApplicationStage>"
    And user reads data from the excel file "employment_details.xlsx" under sheet "home" and row 132
    And user fills employment details for "Agriculture"
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_assets>" and row <FinancialDetails_assets_rowNum>
    When user selects "<Field_Name>" details with "<From>" and "<To>" in land address details
    Then "<Field_Name>" field "<Throws_notThrows>" in land address details

    # ${ProductType:["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL","FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @Conventional
    @Release @Part-2
    @ImplementedBy-tushar.chauhan
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | Field_Name               | From                 | To                     | FinancialDetailsWB     | FinancialDetails_assets | FinancialDetails_assets_rowNum | Throws_notThrows                   |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Duration at this Address | less than To date    | greater than From Date | financial_details.xlsx | assets                  | 95                             | does not throw any error           |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Duration at this Address | greater than To Date | less than From Date    | financial_details.xlsx | assets                  | 96                             | throws an error with error message |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Duration at this Address | valid To date        | valid From date        | financial_details.xlsx | assets                  | 97                             | does not throw any error           |

    # ${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @Islamic
    @Release
@Part-2
    @ImplementedBy-tanya
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | Field_Name               | From                 | To                     | FinancialDetailsWB     | FinancialDetails_assets | FinancialDetails_assets_rowNum | Throws_notThrows                   |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Duration at this Address | less than To date    | greater than From Date | financial_details.xlsx | assets                  | 95                             | does not throw any error           |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Duration at this Address | greater than To Date | less than From Date    | financial_details.xlsx | assets                  | 96                             | throws an error with error message |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Duration at this Address | valid To date        | valid From date        | financial_details.xlsx | assets                  | 97                             | does not throw any error           |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    # ${Category:["bonds"]}
    @Islamic
    @Release
@Part-2
    @ImplementedBy-tanya
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | Key | Field_Name               | From                 | To                     | FinancialDetailsWB     | FinancialDetails_assets | FinancialDetails_assets_rowNum | Throws_notThrows                   |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Duration at this Address | less than To date    | greater than From Date | financial_details.xlsx | assets                  | 95                             | does not throw any error           |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Duration at this Address | greater than To Date | less than From Date    | financial_details.xlsx | assets                  | 96                             | throws an error with error message |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Duration at this Address | valid To date        | valid From date        | financial_details.xlsx | assets                  | 97                             | does not throw any error           |

    # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
   @NotImplemented
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | Field_Name               | From                 | To                     | FinancialDetailsWB     | FinancialDetails_assets | FinancialDetails_assets_rowNum | Throws_notThrows                   |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Duration at this Address | less than To date    | greater than From Date | financial_details.xlsx | assets                  | 95                             | does not throw any error           |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Duration at this Address | greater than To Date | less than From Date    | financial_details.xlsx | assets                  | 96                             | throws an error with error message |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Duration at this Address | valid To date        | valid From date        | financial_details.xlsx | assets                  | 97                             | does not throw any error           |

  Scenario Outline: ACAUTOCAS-1702: In Selection of Duration at this City with "<From>" and "<To>" at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user open Employment Details page on the basis of "<ApplicationStage>"
    And user reads data from the excel file "employment_details.xlsx" under sheet "home" and row 132
    And user fills employment details for "Agriculture"
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_assets>" and row <FinancialDetails_assets_rowNum>
    When user selects "<Field_Name>" details with "<From>" and "<To>" in land address details
    Then "<Field_Name>" field "<Throws_notThrows>" in land address details

    # ${ProductType:["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL","FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @Conventional
    @Release @Part-2
    @ImplementedBy-tushar.chauhan
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | Field_Name            | From                 | To                     | FinancialDetailsWB     | FinancialDetails_assets | FinancialDetails_assets_rowNum | Throws_notThrows                   |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Duration at this City | less than To date    | greater than From Date | financial_details.xlsx | assets                  | 98                             | does not throw any error           |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Duration at this City | greater than To Date | less than From Date    | financial_details.xlsx | assets                  | 99                             | throws an error with error message |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Duration at this City | valid To date        | valid From date        | financial_details.xlsx | assets                  | 100                            | does not throw any error           |

    # ${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @Islamic
    @Release
@Part-2
    @ImplementedBy-tanya
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | Field_Name            | From                 | To                     | FinancialDetailsWB     | FinancialDetails_assets | FinancialDetails_assets_rowNum | Throws_notThrows                   |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Duration at this City | less than To date    | greater than From Date | financial_details.xlsx | assets                  | 98                             | does not throw any error           |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Duration at this City | greater than To Date | less than From Date    | financial_details.xlsx | assets                  | 99                             | throws an error with error message |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Duration at this City | valid To date        | valid From date        | financial_details.xlsx | assets                  | 100                            | does not throw any error           |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    # ${Category:["bonds"]}
    @Islamic
    @Release
@Part-2
    @ImplementedBy-tanya
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | Key | Field_Name            | From                 | To                     | FinancialDetailsWB     | FinancialDetails_assets | FinancialDetails_assets_rowNum | Throws_notThrows                   |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Duration at this City | less than To date    | greater than From Date | financial_details.xlsx | assets                  | 98                             | does not throw any error           |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Duration at this City | greater than To Date | less than From Date    | financial_details.xlsx | assets                  | 99                             | throws an error with error message |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Duration at this City | valid To date        | valid From date        | financial_details.xlsx | assets                  | 100                            | does not throw any error           |

    # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
   @NotImplemented
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | Field_Name            | From                 | To                     | FinancialDetailsWB     | FinancialDetails_assets | FinancialDetails_assets_rowNum | Throws_notThrows                   |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Duration at this City | less than To date    | greater than From Date | financial_details.xlsx | assets                  | 98                             | does not throw any error           |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Duration at this City | greater than To Date | less than From Date    | financial_details.xlsx | assets                  | 99                             | throws an error with error message |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Duration at this City | valid To date        | valid From date        | financial_details.xlsx | assets                  | 100                            | does not throw any error           |

  Scenario Outline: ACAUTOCAS-1703: In Selection of Current Address <Dependent_Field> disabled at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user open Employment Details page on the basis of "<ApplicationStage>"
    And user reads data from the excel file "employment_details.xlsx" under sheet "home" and row 132
    And user fills employment details for "Agriculture"
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_assets>" and row <FinancialDetails_assets_rowNum>
    When user selects Current Address field in land Details Page
    Then "<Dependent_Field>" should be disabled in land Details Page

    # ${ProductType:["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL","FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @Conventional
    @Release @Part-2
    @ImplementedBy-tushar.chauhan
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | Dependent_Field             | FinancialDetailsWB     | FinancialDetails_assets | FinancialDetails_assets_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Duration at this Address To | financial_details.xlsx | assets                  | 98                             |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Duration at this City To    | financial_details.xlsx | assets                  | 99                             |

    # ${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @Islamic
    @Release
@Part-2
    @ImplementedBy-tanya
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | Dependent_Field             | FinancialDetailsWB     | FinancialDetails_assets | FinancialDetails_assets_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Duration at this Address To | financial_details.xlsx | assets                  | 98                             |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Duration at this City To    | financial_details.xlsx | assets                  | 99                             |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    # ${Category:["bonds"]}
    @Islamic
    @Release
@Part-2
    @ImplementedBy-tanya
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | Key | Dependent_Field             | FinancialDetailsWB     | FinancialDetails_assets | FinancialDetails_assets_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Duration at this Address To | financial_details.xlsx | assets                  | 98                             |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Duration at this City To    | financial_details.xlsx | assets                  | 99                             |

    # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
   @NotImplemented
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | Dependent_Field             | FinancialDetailsWB     | FinancialDetails_assets | FinancialDetails_assets_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Duration at this Address To | financial_details.xlsx | assets                  | 98                             |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Duration at this City To    | financial_details.xlsx | assets                  | 99                             |

  Scenario Outline: ACAUTOCAS-1690: In Selection of Pincode field <Dependent_Field> is autofilled at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user open Employment Details page on the basis of "<ApplicationStage>"
    And user reads data from the excel file "employment_details.xlsx" under sheet "home" and row 132
    And user fills employment details for "Agriculture"
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_assets>" and row <FinancialDetails_assets_rowNum>
    When user enters "<Field_Name>" in Land Address Details
    Then "<Dependent_Field>" should auto selected in Land Address Details

    # ${ProductType:["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL","FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @Conventional
    @Release @Part-2
    @ImplementedBy-tushar.chauhan
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | Field_Name | Dependent_Field | FinancialDetailsWB     | FinancialDetails_assets | FinancialDetails_assets_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | PinCode    | State           | financial_details.xlsx | assets                  | 63                             |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | PinCode    | Region          | financial_details.xlsx | assets                  | 63                             |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | PinCode    | City            | financial_details.xlsx | assets                  | 63                             |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | PinCode    | District        | financial_details.xlsx | assets                  | 63                             |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | PinCode    | Taluka          | financial_details.xlsx | assets                  | 63                             |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | PinCode    | Village         | financial_details.xlsx | assets                  | 63                             |

    # ${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @Islamic
    @Release
@Part-2
    @ImplementedBy-tanya
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | Field_Name | Dependent_Field | FinancialDetailsWB     | FinancialDetails_assets | FinancialDetails_assets_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | P.O. Box   | Emirate         | financial_details.xlsx | assets                  | 209                            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | P.O. Box   | Region          | financial_details.xlsx | assets                  | 209                            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | P.O. Box   | City            | financial_details.xlsx | assets                  | 209                            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | P.O. Box   | District        | financial_details.xlsx | assets                  | 209                            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | P.O. Box   | Taluka          | financial_details.xlsx | assets                  | 209                            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | P.O. Box   | Village         | financial_details.xlsx | assets                  | 209                            |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    # ${Category:["bonds"]}
    @Islamic
    @Release
@Part-2
    @ImplementedBy-tanya
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | Key | Field_Name | Dependent_Field | FinancialDetailsWB     | FinancialDetails_assets | FinancialDetails_assets_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | P.O. Box   | Emirate         | financial_details.xlsx | assets                  | 209                            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | P.O. Box   | Region          | financial_details.xlsx | assets                  | 209                            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | P.O. Box   | City            | financial_details.xlsx | assets                  | 209                            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | P.O. Box   | District        | financial_details.xlsx | assets                  | 209                            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | P.O. Box   | Taluka          | financial_details.xlsx | assets                  | 209                            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | P.O. Box   | Village         | financial_details.xlsx | assets                  | 209                            |

    # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
   @NotImplemented
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | Field_Name | Dependent_Field | FinancialDetailsWB     | FinancialDetails_assets | FinancialDetails_assets_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | PinCode    | State           | financial_details.xlsx | assets                  | 63                             |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | PinCode    | Region          | financial_details.xlsx | assets                  | 63                             |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | PinCode    | City            | financial_details.xlsx | assets                  | 63                             |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | PinCode    | District        | financial_details.xlsx | assets                  | 63                             |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | PinCode    | Taluka          | financial_details.xlsx | assets                  | 63                             |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | PinCode    | Village         | financial_details.xlsx | assets                  | 63                             |

  Scenario Outline: ACAUTOCAS-1690: In Selection of State field <Dependent_Field> is autofilled at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user open Employment Details page on the basis of "<ApplicationStage>"
    And user reads data from the excel file "employment_details.xlsx" under sheet "home" and row 132
    And user fills employment details for "Agriculture"
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_assets>" and row <FinancialDetails_assets_rowNum>
    When user enters "<Field_Name>" in Land Address Details
    Then "<Dependent_Field>" should auto selected in Land Address Details

    # ${ProductType:["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL","FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @Conventional
    @Release @Part-2
    @ImplementedBy-tushar.chauhan
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | Field_Name | Dependent_Field | FinancialDetailsWB     | FinancialDetails_assets | FinancialDetails_assets_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | State      | Region          | financial_details.xlsx | assets                  | 63                             |

    # ${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @Islamic
    @Release
@Part-2
    @ImplementedBy-tanya
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | Field_Name | Dependent_Field | FinancialDetailsWB     | FinancialDetails_assets | FinancialDetails_assets_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Emirate    | Region          | financial_details.xlsx | assets                  | 63                             |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    # ${Category:["bonds"]}
    @Islamic
    @Release
@Part-2
    @ImplementedBy-tanya
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | Key | Field_Name | Dependent_Field | FinancialDetailsWB     | FinancialDetails_assets | FinancialDetails_assets_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Emirate    | Region          | financial_details.xlsx | assets                  | 63                             |

    # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
   @NotImplemented
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | Field_Name | Dependent_Field | FinancialDetailsWB     | FinancialDetails_assets | FinancialDetails_assets_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | State      | Region          | financial_details.xlsx | assets                  | 63                             |

  Scenario Outline: ACAUTOCAS-1706: In Selection of Irrigated field as Yes Irrigation Source is displayed at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user open Employment Details page on the basis of "<ApplicationStage>"
    And user reads data from the excel file "employment_details.xlsx" under sheet "home" and row 132
    And user fills employment details for "Agriculture"
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_assets>" and row <FinancialDetails_assets_rowNum>
    When user enters Irrigated field as yes in Land Address Details
    Then Irrigation Source should displayed in Land Address Details

    # ${ProductType:["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL","FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @Conventional
    @Release @Part-2
    @ImplementedBy-tushar.chauhan
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | FinancialDetailsWB     | FinancialDetails_assets | FinancialDetails_assets_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | financial_details.xlsx | assets                  | 127                            |

    # ${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @Islamic
    @Release
@Part-2
    @ImplementedBy-tanya
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | FinancialDetailsWB     | FinancialDetails_assets | FinancialDetails_assets_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | financial_details.xlsx | assets                  | 127                            |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    # ${Category:["bonds"]}
    @Islamic
    @Release
@Part-2
    @ImplementedBy-tanya
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | Key | FinancialDetailsWB     | FinancialDetails_assets | FinancialDetails_assets_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | financial_details.xlsx | assets                  | 127                            |

    # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
   @NotImplemented
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | FinancialDetailsWB     | FinancialDetails_assets | FinancialDetails_assets_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | financial_details.xlsx | assets                  | 127                            |

  @FixedTest
  Scenario Outline: ACAUTOCAS-1707: In Selection of country code in Phone Number field ISD code changes with <var> at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user open Employment Details page on the basis of "<ApplicationStage>"
    And user reads data from the excel file "employment_details.xlsx" under sheet "home" and row 132
    And user fills employment details for "Agriculture"
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_assets>" and row <FinancialDetails_assets_rowNum>
    When user selects country code with "<var>" in  "<Field_Name>" field in Land Address Details
    Then ISD code of "<Field_Name>" changes display successfully in Land Address Details

    # ${ProductType:["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL","FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @Conventional
    @Release @Part-2
    @ImplementedBy-tushar.chauhan
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | var | Field_Name   | FinancialDetailsWB     | FinancialDetails_assets | FinancialDetails_assets_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | AE  | Phone Number | financial_details.xlsx | assets                  | 101                            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | AF  | Phone Number | financial_details.xlsx | assets                  | 102                            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | AL  | Phone Number | financial_details.xlsx | assets                  | 103                            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | AO  | Phone Number | financial_details.xlsx | assets                  | 104                            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | AU  | Phone Number | financial_details.xlsx | assets                  | 105                            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | EH  | Phone Number | financial_details.xlsx | assets                  | 106                            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | IE  | Phone Number | financial_details.xlsx | assets                  | 107                            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | IN  | Phone Number | financial_details.xlsx | assets                  | 108                            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | NP  | Phone Number | financial_details.xlsx | assets                  | 109                            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | NZ  | Phone Number | financial_details.xlsx | assets                  | 110                            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | RU  | Phone Number | financial_details.xlsx | assets                  | 111                            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | VN  | Phone Number | financial_details.xlsx | assets                  | 112                            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | ZA  | Phone Number | financial_details.xlsx | assets                  | 113                            |

    # ${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @Islamic
    @Release
@Part-2
    @ImplementedBy-tanya
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | var | Field_Name   | FinancialDetailsWB     | FinancialDetails_assets | FinancialDetails_assets_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | AE  | Phone Number | financial_details.xlsx | assets                  | 101                            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | AF  | Phone Number | financial_details.xlsx | assets                  | 102                            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | AL  | Phone Number | financial_details.xlsx | assets                  | 103                            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | AO  | Phone Number | financial_details.xlsx | assets                  | 104                            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | AU  | Phone Number | financial_details.xlsx | assets                  | 105                            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | EH  | Phone Number | financial_details.xlsx | assets                  | 106                            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | IE  | Phone Number | financial_details.xlsx | assets                  | 107                            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | IN  | Phone Number | financial_details.xlsx | assets                  | 108                            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | NP  | Phone Number | financial_details.xlsx | assets                  | 109                            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | NZ  | Phone Number | financial_details.xlsx | assets                  | 110                            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | RU  | Phone Number | financial_details.xlsx | assets                  | 111                            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | VN  | Phone Number | financial_details.xlsx | assets                  | 112                            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | ZA  | Phone Number | financial_details.xlsx | assets                  | 113                            |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    # ${Category:["bonds"]}
    @FixedJsClick
    @Islamic
    @Release
@Part-2
    @ImplementedBy-tanya
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | Key | var | Field_Name   | FinancialDetailsWB     | FinancialDetails_assets | FinancialDetails_assets_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | AE  | Phone Number | financial_details.xlsx | assets                  | 101                            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | AF  | Phone Number | financial_details.xlsx | assets                  | 102                            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | AL  | Phone Number | financial_details.xlsx | assets                  | 103                            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | AO  | Phone Number | financial_details.xlsx | assets                  | 104                            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | AU  | Phone Number | financial_details.xlsx | assets                  | 105                            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | EH  | Phone Number | financial_details.xlsx | assets                  | 106                            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | IE  | Phone Number | financial_details.xlsx | assets                  | 107                            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | IN  | Phone Number | financial_details.xlsx | assets                  | 108                            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | NP  | Phone Number | financial_details.xlsx | assets                  | 109                            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | NZ  | Phone Number | financial_details.xlsx | assets                  | 110                            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | RU  | Phone Number | financial_details.xlsx | assets                  | 111                            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | VN  | Phone Number | financial_details.xlsx | assets                  | 112                            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | ZA  | Phone Number | financial_details.xlsx | assets                  | 113                            |

    # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
   @NotImplemented
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | var | Field_Name   | FinancialDetailsWB     | FinancialDetails_assets | FinancialDetails_assets_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | AE  | Phone Number | financial_details.xlsx | assets                  | 101                            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | AF  | Phone Number | financial_details.xlsx | assets                  | 102                            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | AL  | Phone Number | financial_details.xlsx | assets                  | 103                            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | AO  | Phone Number | financial_details.xlsx | assets                  | 104                            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | AU  | Phone Number | financial_details.xlsx | assets                  | 105                            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | EH  | Phone Number | financial_details.xlsx | assets                  | 106                            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | IE  | Phone Number | financial_details.xlsx | assets                  | 107                            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | IN  | Phone Number | financial_details.xlsx | assets                  | 108                            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | NP  | Phone Number | financial_details.xlsx | assets                  | 109                            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | NZ  | Phone Number | financial_details.xlsx | assets                  | 110                            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | RU  | Phone Number | financial_details.xlsx | assets                  | 111                            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | VN  | Phone Number | financial_details.xlsx | assets                  | 112                            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | ZA  | Phone Number | financial_details.xlsx | assets                  | 113                            |

  @FixedTest
  Scenario Outline: ACAUTOCAS-1707: In Selection of country code in Mobile Phone field ISD code changes with <var> at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user open Employment Details page on the basis of "<ApplicationStage>"
    And user reads data from the excel file "employment_details.xlsx" under sheet "home" and row 132
    And user fills employment details for "Agriculture"
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_assets>" and row <FinancialDetails_assets_rowNum>
    When user selects country code with "<var>" in  "<Field_Name>" field in Land Address Details
    Then ISD code of "<Field_Name>" changes display successfully in Land Address Details

    # ${ProductType:["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL","FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @Conventional
    @Release @Part-2
    @ImplementedBy-tushar.chauhan
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | var | Field_Name   | FinancialDetailsWB     | FinancialDetails_assets | FinancialDetails_assets_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | AE  | Mobile Phone | financial_details.xlsx | assets                  | 114                            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | AF  | Mobile Phone | financial_details.xlsx | assets                  | 115                            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | AL  | Mobile Phone | financial_details.xlsx | assets                  | 116                            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | AO  | Mobile Phone | financial_details.xlsx | assets                  | 117                            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | AU  | Mobile Phone | financial_details.xlsx | assets                  | 118                            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | EH  | Mobile Phone | financial_details.xlsx | assets                  | 119                            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | IE  | Mobile Phone | financial_details.xlsx | assets                  | 120                            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | IN  | Mobile Phone | financial_details.xlsx | assets                  | 121                            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | NP  | Mobile Phone | financial_details.xlsx | assets                  | 122                            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | NZ  | Mobile Phone | financial_details.xlsx | assets                  | 123                            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | RU  | Mobile Phone | financial_details.xlsx | assets                  | 124                            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | VN  | Mobile Phone | financial_details.xlsx | assets                  | 125                            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | ZA  | Mobile Phone | financial_details.xlsx | assets                  | 126                            |

    # ${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @Islamic
    @Release
@Part-2
    @ImplementedBy-tanya
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | var | Field_Name   | FinancialDetailsWB     | FinancialDetails_assets | FinancialDetails_assets_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | AE  | Mobile Phone | financial_details.xlsx | assets                  | 114                            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | AF  | Mobile Phone | financial_details.xlsx | assets                  | 115                            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | AL  | Mobile Phone | financial_details.xlsx | assets                  | 116                            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | AO  | Mobile Phone | financial_details.xlsx | assets                  | 117                            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | AU  | Mobile Phone | financial_details.xlsx | assets                  | 118                            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | EH  | Mobile Phone | financial_details.xlsx | assets                  | 119                            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | IE  | Mobile Phone | financial_details.xlsx | assets                  | 120                            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | IN  | Mobile Phone | financial_details.xlsx | assets                  | 121                            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | NP  | Mobile Phone | financial_details.xlsx | assets                  | 122                            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | NZ  | Mobile Phone | financial_details.xlsx | assets                  | 123                            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | RU  | Mobile Phone | financial_details.xlsx | assets                  | 124                            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | VN  | Mobile Phone | financial_details.xlsx | assets                  | 125                            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | ZA  | Mobile Phone | financial_details.xlsx | assets                  | 126                            |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    # ${Category:["bonds"]}
    @Islamic
    @Release
@Part-2
    @ImplementedBy-tanya
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | Key | var | Field_Name   | FinancialDetailsWB     | FinancialDetails_assets | FinancialDetails_assets_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | AE  | Mobile Phone | financial_details.xlsx | assets                  | 114                            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | AF  | Mobile Phone | financial_details.xlsx | assets                  | 115                            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | AL  | Mobile Phone | financial_details.xlsx | assets                  | 116                            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | AO  | Mobile Phone | financial_details.xlsx | assets                  | 117                            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | AU  | Mobile Phone | financial_details.xlsx | assets                  | 118                            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | EH  | Mobile Phone | financial_details.xlsx | assets                  | 119                            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | IE  | Mobile Phone | financial_details.xlsx | assets                  | 120                            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | IN  | Mobile Phone | financial_details.xlsx | assets                  | 121                            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | NP  | Mobile Phone | financial_details.xlsx | assets                  | 122                            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | NZ  | Mobile Phone | financial_details.xlsx | assets                  | 123                            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | RU  | Mobile Phone | financial_details.xlsx | assets                  | 124                            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | VN  | Mobile Phone | financial_details.xlsx | assets                  | 125                            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | ZA  | Mobile Phone | financial_details.xlsx | assets                  | 126                            |

    # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
   @NotImplemented
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | var | Field_Name   | FinancialDetailsWB     | FinancialDetails_assets | FinancialDetails_assets_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | AE  | Mobile Phone | financial_details.xlsx | assets                  | 114                            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | AF  | Mobile Phone | financial_details.xlsx | assets                  | 115                            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | AL  | Mobile Phone | financial_details.xlsx | assets                  | 116                            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | AO  | Mobile Phone | financial_details.xlsx | assets                  | 117                            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | AU  | Mobile Phone | financial_details.xlsx | assets                  | 118                            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | EH  | Mobile Phone | financial_details.xlsx | assets                  | 119                            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | IE  | Mobile Phone | financial_details.xlsx | assets                  | 120                            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | IN  | Mobile Phone | financial_details.xlsx | assets                  | 121                            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | NP  | Mobile Phone | financial_details.xlsx | assets                  | 122                            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | NZ  | Mobile Phone | financial_details.xlsx | assets                  | 123                            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | RU  | Mobile Phone | financial_details.xlsx | assets                  | 124                            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | VN  | Mobile Phone | financial_details.xlsx | assets                  | 125                            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | ZA  | Mobile Phone | financial_details.xlsx | assets                  | 126                            |
