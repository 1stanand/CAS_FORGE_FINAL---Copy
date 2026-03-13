@Epic-Loan_Application_Details
@AuthoredBy-harshita.nayak
@ReviewedBy-None
@ReviewedByDEV
@Reconciled
@Conventional
@Islamic
  #${ProductType:["MHF","IHF","LAP","HL"]}
Feature: Property Details Field Validation

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0

  @Release3
    @ReleaseLoanAppM5
    @ImplementedBy-rishabh.garg
  Scenario Outline: ACAUTOCAS-3452:  In Selection of <Field_Name> <Dependent_hyperlink> visible
    And user create new application for "<ProductType>"
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row 159
    And user fills and saves sourcing details
    And user reads data from the excel file "<PropertyDetailsWB>" under sheet "<PropertyDetails_home>" and row <PropertyDetails_home_rowNum>
    When user fills "<Field_Name>" in property details
    Then "<Dependent_hyperlink>" should be visible

    Examples:
      | ProductType   | Field_Name       | Dependent_hyperlink | SourcingDetailsWB     | SourcingDetails_home | PropertyDetailsWB     | PropertyDetails_home | PropertyDetails_home_rowNum |
      | <ProductType> | Application Type | view dedupe history | sourcing_details.xlsx | home                 | property_details.xlsx | home                 | 25                          |

  @Release3
    @ReleaseLoanAppM5
    @ImplementedBy-rishabh.garg
  Scenario Outline: ACAUTOCAS-3453:  Property Details check for duplicates <var> <tab_name>
    And user create new application for "<ProductType>"
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row 159
    And user fills and saves sourcing details
    And user reads data from the excel file "<PropertyDetailsWB>" under sheet "<PropertyDetails_home>" and row <PropertyDetails_home_rowNum>
    And user fill property details with all mandatory fields
    And user reads data from the excel file "<PropertyDetailsWB>" under sheet "<PropertyDetails_propertyAddress>" and row <PropertyDetails_propertyAddress_rowNum>
    When user check for duplicates "<var>" "<tab_name>"
    Then "<tab_name>" field of property details "<Throws_notThrows>" with proper message

    Examples:
      | ProductType   | var     | tab_name         | Throws_notThrows                   | SourcingDetailsWB     | SourcingDetails_home | PropertyDetailsWB     | PropertyDetails_home | PropertyDetails_home_rowNum | PropertyDetails_propertyAddress | PropertyDetails_propertyAddress_rowNum |
      | <ProductType> | with    | property address | does not throw any error           | sourcing_details.xlsx | home                 | property_details.xlsx | home                 | 0                           | property_address                | 0                                      |
      | <ProductType> | without | property address | throws an error with error message | sourcing_details.xlsx | home                 | property_details.xlsx | home                 | 0                           | property_address                | 0                                      |

    #Example commented as discussed with harshita
  @Release3
    @ImplementedBy-rishabh.garg
    @ReleaseLoanAppM5
  Scenario Outline: ACAUTOCAS-3454:  Summary Details add <tab_name> Details with <Var> fields in property details page
    And user create new application for "<ProductType>"
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row 159
    And user fills and saves sourcing details
    And user reads data from the excel file "<PropertyDetailsWB>" under sheet "<PropertyDetails_home>" and row <PropertyDetails_home_rowNum>
    When user fills "<tab_name>" "<Var>" in property details
    And user saves the "<tab_name>" details in property details page
    Then "<tab_name>" in property details should save successfully
    Examples:
      | ProductType   | Var | tab_name        | SourcingDetailsWB     | SourcingDetails_home | PropertyDetailsWB     | PropertyDetails_home | PropertyDetails_home_rowNum |
      | <ProductType> | all | source of funds | sourcing_details.xlsx | home                 | property_details.xlsx | home                 | 0                           |
#      | <ProductType> | mandatory | source of funds |

  @Release3
    @ImplementedBy-rishabh.garg
    @ReleaseLoanAppM5
  Scenario Outline: ACAUTOCAS-3455:  Summary Details add multiple <tab_name> Details with two fields in property details page
    And user create new application for "<ProductType>"
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row 159
    And user fills and saves sourcing details
    When user fills multiple "<tab_name>" in property details from
      | property_details.xlsx | home | 0 |
      | property_details.xlsx | home | 1 |
    And user saves the "<tab_name>" details in property details page
    Then "<tab_name>" in property details should save successfully

    Examples:
      | ProductType   | tab_name        | SourcingDetailsWB     | SourcingDetails_home |
      | <ProductType> | source of funds | sourcing_details.xlsx | home                 |

  @Release3
    @ImplementedBy-rishabh.garg
    @ReleaseLoanAppM5
  Scenario Outline: ACAUTOCAS-3456:  Summary Details delete <tab_name> Details with multiple fields in property details page
    And user create new application for "<ProductType>"
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row <SourcingDetails_home_rowNum>
    And user fills and saves sourcing details
    When user fills multiple "<tab_name>" in property details from
      | property_details.xlsx | home | 0 |
      | property_details.xlsx | home | 1 |
    Then "<tab_name>" delete successfully
    Examples:
      | ProductType   | tab_name        | SourcingDetailsWB     | SourcingDetails_home | SourcingDetails_home_rowNum |
      | <ProductType> | source of funds | sourcing_details.xlsx | home                 | 159                         |

  @Release3
    @ImplementedBy-rishabh.garg
    @ReleaseLoanAppM5
  Scenario Outline: ACAUTOCAS-3457:  Summary Details <tab_name> details <field_name> fields in property details page
    And user create new application for "<ProductType>"
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row <SourcingDetails_home_rowNum>
    And user fills and saves sourcing details
    And user reads data from the excel file "<PropertyDetailsWB>" under sheet "<PropertyDetails_home>" and row <PropertyDetails_home_rowNum>
    When user fills "<tab_name>" "<field_name>" in property details
    Then "<dependent_field>" field is autofilled

    Examples:
      | ProductType   | tab_name        | field_name | dependent_field | SourcingDetailsWB     | SourcingDetails_home | SourcingDetails_home_rowNum | PropertyDetailsWB     | PropertyDetails_home | PropertyDetails_home_rowNum |
      | <ProductType> | source of funds | source     | Description     | sourcing_details.xlsx | home                 | 159                         | property_details.xlsx | home                 | 0                           |
      | <ProductType> | source of funds | amount     | total amount    | sourcing_details.xlsx | home                 | 159                         | property_details.xlsx | home                 | 1                           |

  @Release3
    @ImplementedBy-rishabh.garg
    @ReleaseLoanAppM5
  Scenario Outline: ACAUTOCAS-3458: Summary Details <tab_name> details <field_name> validation for <var> in property details page
    And user create new application for "<ProductType>"
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row <SourcingDetails_home_rowNum>
    And user fills and saves sourcing details
    And user reads data from the excel file "<PropertyDetailsWB>" under sheet "<PropertyDetails_home>" and row <PropertyDetails_home_rowNum>
    When user fills "<tab_name>" "<field_name>" in property details
    Then "<field_name>" field "<Throws_notThrows>" error message in property details

    Examples:
      | field_name | var                        | tab_name        | ProductType   | Throws_notThrows                   | SourcingDetailsWB     | SourcingDetails_home | SourcingDetails_home_rowNum | PropertyDetailsWB     | PropertyDetails_home | PropertyDetails_home_rowNum |
      | Amount     | valid value                | source of funds | <ProductType> | does not throw any error           | sourcing_details.xlsx | home                 | 159                         | property_details.xlsx | home                 | 0                           |
      | Amount     | up to 18 digits            | source of funds | <ProductType> | does not throw any error           | sourcing_details.xlsx | home                 | 159                         | property_details.xlsx | home                 | 1                           |
      | Amount     | both digits and characters | source of funds | <ProductType> | throws an error with error message | sourcing_details.xlsx | home                 | 159                         | property_details.xlsx | home                 | 2                           |
      | Amount     | special characters         | source of funds | <ProductType> | throws an error with error message | sourcing_details.xlsx | home                 | 159                         | property_details.xlsx | home                 | 3                           |
      | Amount     | space                      | source of funds | <ProductType> | throws an error with error message | sourcing_details.xlsx | home                 | 159                         | property_details.xlsx | home                 | 4                           |
      | Amount     | paise format               | source of funds | <ProductType> | does not throw any error           | sourcing_details.xlsx | home                 | 159                         | property_details.xlsx | home                 | 5                           |
      | Amount     | zero value                 | source of funds | <ProductType> | does not throw any error           | sourcing_details.xlsx | home                 | 159                         | property_details.xlsx | home                 | 6                           |

  @Release3
    @ImplementedBy-rishabh.garg
    @ReleaseLoanAppM5
  Scenario Outline: ACAUTOCAS-3459: Summary Details <field_name> validation for <var> in property details page
    And user create new application for "<ProductType>"
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row <SourcingDetails_home_rowNum>
    And user fills and saves sourcing details
    And user reads data from the excel file "<PropertyDetailsWB>" under sheet "<PropertyDetails_home>" and row <PropertyDetails_home_rowNum>
    When user fills "<tab_name>" "<field_name>" in property details
    Then "<field_name>" field "<Throws_notThrows>" error message in property details

    Examples:
      | tab_name        | field_name    | var                        | ProductType   | Throws_notThrows                   | SourcingDetailsWB     | SourcingDetails_home | SourcingDetails_home_rowNum | PropertyDetailsWB     | PropertyDetails_home | PropertyDetails_home_rowNum |
      | Summary Details | Property Cost | valid value                | <ProductType> | does not throw any error           | sourcing_details.xlsx | home                 | 159                         | property_details.xlsx | home                 | 0                           |
      | Summary Details | Property Cost | up to 18 digits            | <ProductType> | does not throw any error           | sourcing_details.xlsx | home                 | 159                         | property_details.xlsx | home                 | 1                           |
      | Summary Details | Property Cost | both digits and characters | <ProductType> | throws an error with error message | sourcing_details.xlsx | home                 | 159                         | property_details.xlsx | home                 | 2                           |
      | Summary Details | Property Cost | special characters         | <ProductType> | throws an error with error message | sourcing_details.xlsx | home                 | 159                         | property_details.xlsx | home                 | 3                           |
      | Summary Details | Property Cost | space                      | <ProductType> | throws an error with error message | sourcing_details.xlsx | home                 | 159                         | property_details.xlsx | home                 | 4                           |
      | Summary Details | Property Cost | paise format               | <ProductType> | does not throw any error           | sourcing_details.xlsx | home                 | 159                         | property_details.xlsx | home                 | 5                           |
      | Summary Details | Property Cost | zero value                 | <ProductType> | does not throw any error           | sourcing_details.xlsx | home                 | 159                         | property_details.xlsx | home                 | 6                           |

  @Release3
    @ImplementedBy-rishabh.garg
    @ReleaseLoanAppM5
  Scenario Outline: ACAUTOCAS-3460:  Summary Details <field_name> field validation in property details page
    And user create new application for "<ProductType>"
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row <SourcingDetails_home_rowNum>
    And user fills and saves sourcing details
    And user reads data from the excel file "<PropertyDetailsWB>" under sheet "<PropertyDetails_home>" and row <PropertyDetails_home_rowNum>
    When user fills "<tab_name>" "<field_name>" in property details
    Then "<dependent_field>" field is autofilled

    Examples:
      | tab_name        | ProductType   | field_name    | dependent_field           | SourcingDetailsWB     | SourcingDetails_home | SourcingDetails_home_rowNum | PropertyDetailsWB     | PropertyDetails_home | PropertyDetails_home_rowNum |
      | Summary Details | <ProductType> | Property Cost | Total Property Cost/Price | sourcing_details.xlsx | home                 | 159                         | property_details.xlsx | home                 | 0                           |
      | Summary Details | <ProductType> | Property Cost | Percent of Down Payment   | sourcing_details.xlsx | home                 | 159                         | property_details.xlsx | home                 | 0                           |
      | Summary Details | <ProductType> | Property Cost | Down Payment              | sourcing_details.xlsx | home                 | 159                         | property_details.xlsx | home                 | 0                           |
      | Summary Details | <ProductType> | Property Cost | LCR (%)                   | sourcing_details.xlsx | home                 | 159                         | property_details.xlsx | home                 | 0                           |
      | Summary Details | <ProductType> | Property Cost | LTV (%)                   | sourcing_details.xlsx | home                 | 159                         | property_details.xlsx | home                 | 0                           |

  @Release3
    @ImplementedBy-rishabh.garg
    @ReleaseLoanAppM5
    @Sanity
  Scenario Outline: ACAUTOCAS-3461:  Property Cost Break-up Details add <tab_name> Details with <Var> fields in property details page
    And user create new application for "<ProductType>"
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row 159
    And user fills and saves sourcing details
    And user reads data from the excel file "<PropertyDetailsWB>" under sheet "<PropertyDetails_home>" and row <PropertyDetails_home_rowNum>
    When user fills "<tab_name>" "<Var>" in property details
    And user saves the "<tab_name>" details in property details page
    Then "<tab_name>" in property details should save successfully
    Examples:
      | ProductType   | Var       | tab_name               | SourcingDetailsWB     | SourcingDetails_home | PropertyDetailsWB     | PropertyDetails_home | PropertyDetails_home_rowNum |
      | <ProductType> | all       | Property Cost Break-up | sourcing_details.xlsx | home                 | property_details.xlsx | home                 | 0                           |
      | <ProductType> | mandatory | Property Cost Break-up | sourcing_details.xlsx | home                 | property_details.xlsx | home                 | 0                           |

  @Release3
    @ImplementedBy-rishabh.garg
    @ReleaseLoanAppM5
  Scenario Outline: ACAUTOCAS-3462:  Property Cost Break-up Details add multiple <tab_name> Details with two fields in property details page
    And user create new application for "<ProductType>"
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row 159
    And user fills and saves sourcing details
    When user fills multiple "<tab_name>" in property details from
      | property_details.xlsx | home | 0 |
      | property_details.xlsx | home | 1 |
    And user saves the "<tab_name>" details in property details page
    Then "<tab_name>" in property details should save successfully

    Examples:
      | ProductType   | tab_name               | SourcingDetailsWB     | SourcingDetails_home |
      | <ProductType> | Property Cost Break-up | sourcing_details.xlsx | home                 |

  @Release3
    @ImplementedBy-rishabh.garg
    @ReleaseLoanAppM5
  Scenario Outline: ACAUTOCAS-3463:  Property Cost Break-up Details delete <tab_name> Details with multiple fields in property details page
    And user create new application for "<ProductType>"
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row <SourcingDetails_home_rowNum>
    And user fills and saves sourcing details
    When user fills multiple "<tab_name>" in property details from
      | property_details.xlsx | home | 0 |
      | property_details.xlsx | home | 1 |
    Then "<tab_name>" delete successfully
    Examples:
      | ProductType   | tab_name               | SourcingDetailsWB     | SourcingDetails_home | SourcingDetails_home_rowNum |
      | <ProductType> | Property Cost Break-up | sourcing_details.xlsx | home                 | 159                         |

  @Release3
    @ImplementedBy-rishabh.garg
    @ReleaseLoanAppM5
  Scenario Outline: ACAUTOCAS-3464:  Property Cost Break-up Details <field_name> field validation in property details page
    And user create new application for "<ProductType>"
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row <SourcingDetails_home_rowNum>
    And user fills and saves sourcing details
    And user reads data from the excel file "<PropertyDetailsWB>" under sheet "<PropertyDetails_home>" and row <PropertyDetails_home_rowNum>
    When user fills "<tab_name>" "<field_name>" in property details
    And user saves the "<tab_name>"
    And user accept the warning
    Then "<dependent_field>" field is autofilled
    Examples:
      | tab_name               | ProductType   | field_name | dependent_field           | SourcingDetailsWB     | SourcingDetails_home | SourcingDetails_home_rowNum | PropertyDetailsWB     | PropertyDetails_home | PropertyDetails_home_rowNum |
      | Property Cost Break-up | <ProductType> | cost       | Property Cost             | sourcing_details.xlsx | home                 | 159                         | property_details.xlsx | home                 | 0                           |
      | Property Cost Break-up | <ProductType> | cost       | Total Property Cost/Price | sourcing_details.xlsx | home                 | 159                         | property_details.xlsx | home                 | 0                           |
      | Property Cost Break-up | <ProductType> | cost       | Percent of Down Payment   | sourcing_details.xlsx | home                 | 159                         | property_details.xlsx | home                 | 0                           |
      | Property Cost Break-up | <ProductType> | cost       | Down Payment              | sourcing_details.xlsx | home                 | 159                         | property_details.xlsx | home                 | 0                           |
      | Property Cost Break-up | <ProductType> | cost       | LCR (%)                   | sourcing_details.xlsx | home                 | 159                         | property_details.xlsx | home                 | 0                           |
      | Property Cost Break-up | <ProductType> | cost       | LTV (%)                   | sourcing_details.xlsx | home                 | 159                         | property_details.xlsx | home                 | 0                           |

  #Commented as per discussed with harshita - Invalid scenario
#  @NotImplemented
#  Scenario Outline: ACAUTOCAS-3465:  Property Cost Break-up Details <field_name> field with proper calculation in property details page
#    And user create new application for "<ProductType>"
#    And user fills and saves sourcing details
#    When user fills Property Cost Break-up "<field_name>" field with "<breakup_var>"
#    And property cost in summary details with "<cost_var>"
#    Then "<Throws_notThrows>" proper message
#    Examples:
#      | ProductType | field_name | breakup_var | cost_var  | Throws_notThrows                   |
#      | <ProductType> | cost       | 15,00,000   | 10,00,000 | does not throw any error           |
#      | <ProductType> | cost       | 15,00,000   | 15,00,000 | throws an error with error message |

