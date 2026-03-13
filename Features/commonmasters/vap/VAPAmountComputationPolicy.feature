@Epic-VAP
@AuthoredBy-ruchi.rawat
@ReviewedBy-atul.mishra
@Release3
@ImplementedBy-aryan.jain
@ReviewedByDEV

Feature: VAP Amount Computation Policy Master helps maintain the VAP Amount computation logic.

#1. Unique code, alphanumeric and underscore allowed, length 8

  Background:
    Given user is on CAS Login Page
    And user logged in "Common Masters" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And clicks on VAP Amount Computation Policy master
    And clicks on Create VAP Amount Computation Policy button

  Scenario Outline: ACAUTOCAS-2470:  Creating a new VAP Amount Computation Policy with characters which are not allowed
    And user reads data from the excel file "<VAPWB>" under sheet "<VAP_SheetName>" and row <VAP_SheetName_RowNumber>
    When user enters characters other than alphabets, numbers and underscore
    Then error message stating that only alphanumeric and underscore are allowed is displayed
    Examples:
      | VAPWB    | VAP_SheetName                 | VAP_SheetName_RowNumber |
      | vap.xlsx | vap_amount_computation_policy | 0                       |

  Scenario Outline: ACAUTOCAS-2471:  Creating a new VAP Amount Computation  with existing code
    And user reads data from the excel file "<VAPWB>" under sheet "<VAP_SheetName>" and row <VAP_SheetName_RowNumber>
    When user enters an existing Policy Code
    Then error message stating that code already exists is displayed
    Examples:
      | VAPWB    | VAP_SheetName                 | VAP_SheetName_RowNumber |
      | vap.xlsx | vap_amount_computation_policy | 1                       |

  Scenario Outline: ACAUTOCAS-2472:  Creating a new VAP Amount Computation with allowed characters
    And user reads data from the excel file "<VAPWB>" under sheet "<VAP_SheetName>" and row <VAP_SheetName_RowNumber>
    When user enter policy code contains "<Characters>"
    Then the policy code should be accepted
    Examples:
      | Characters         | VAPWB    | VAP_SheetName                 | VAP_SheetName_RowNumber |
      | Alphabets          | vap.xlsx | vap_amount_computation_policy | 2                       |
      | Numbers            | vap.xlsx | vap_amount_computation_policy | 3                       |
      | Special Characters | vap.xlsx | vap_amount_computation_policy | 4                       |

#2. Creating Policy Name

  Scenario Outline: ACAUTOCAS-2750:  Creating a new VAP Amount Computation Policy name
    And user reads data from the excel file "<VAPWB>" under sheet "<VAP_SheetName>" and row <VAP_SheetName_RowNumber>
    When user enters the policy name contains "<Characters>"
    Then user can enter "<Characters>"
    And policy name can be of 100 characters maximum length
    And policy name should be unique as existing policy name is not allowed
    Examples:
      | Characters         | VAPWB    | VAP_SheetName                 | VAP_SheetName_RowNumber |
      | Alphabets          | vap.xlsx | vap_amount_computation_policy | 2                       |
      | Numbers            | vap.xlsx | vap_amount_computation_policy | 3                       |
      | Special Characters | vap.xlsx | vap_amount_computation_policy | 4                       |

#3. Creating Policy Description

  Scenario Outline: ACAUTOCAS-2751:  Maintaining Policy Description
    And user reads data from the excel file "<VAPWB>" under sheet "<VAP_SheetName>" and row <VAP_SheetName_RowNumber>
    When user enters the policy description contains "<Characters>"
    Then user can use "<Characters>"
    And policy description can be of 100 characters maximum length
    And policy description is non mandatory
    Examples:
      | Characters         | VAPWB    | VAP_SheetName                 | VAP_SheetName_RowNumber |
      | Alphabets          | vap.xlsx | vap_amount_computation_policy | 2                       |
      | Numbers            | vap.xlsx | vap_amount_computation_policy | 3                       |
      | Special Characters | vap.xlsx | vap_amount_computation_policy | 4                       |

#4. Mapping to currency

  Scenario Outline: ACAUTOCAS-2473:  Mapping to currency
    And user reads data from the excel file "<VAPWB>" under sheet "<VAP_SheetName>" and row <VAP_SheetName_RowNumber>
    When user searches for currency in the auto complete LoV
    Then currencies maintained in the currency master shall be displayed for selection
    Examples:
      | VAPWB    | VAP_SheetName                 | VAP_SheetName_RowNumber |
      | vap.xlsx | vap_amount_computation_policy | 0                       |

#5. Contract type loan or lease for which the policy shall be used

  Scenario Outline: ACAUTOCAS-2752:  Mapping to contract type
    When user clicks on the contract type dropdown
    Then values "<ContractType>" shall be displayed for selection
    Examples:
      | ContractType |
      | Loan         |
      | Lease        |


