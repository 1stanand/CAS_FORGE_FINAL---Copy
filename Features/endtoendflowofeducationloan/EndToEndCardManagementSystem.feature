@Epic-E2E
@Conventional
@E2EOrder
@Release
@CardManagement
@AuthoredBy-harshita.nayak
@ImplementedBy-harshita.nayak
  #FeatureID-ACAUTOCAS-17204
Feature: End to end work flow for All LOB Order Wise

  Scenario Outline: ACAUTOCAS-20889: Validate sourcing details data in view mode for Card Management System for <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>" with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    When user opens an application present in context from Send To Card Management System grid
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_sheet>" and row <SourcingDetails_rowNum>
    Then user validate data in view mode for sourcing details at Card Management System


    Examples:
      | LogicalID          | SourcingDetailsWB              | SourcingDetails_sheet | SourcingDetails_rowNum | ProductType             |
      | CC00001            | credit_card_loan_end_flow.xlsx | sourcing_details      | 1                      | Credit Card Application |
      | CC00002            | credit_card_loan_end_flow.xlsx | sourcing_details      | 2                      | Credit Card Application |
      | CAS_262309_CC00002 | credit_card_loan_end_flow.xlsx | sourcing_details      | 2                      | Credit Card Application |
      | CC00003            | credit_card_loan_end_flow.xlsx | sourcing_details      | 3                      | Credit Card Application |

  Scenario Outline: Validate sourcing details data in view mode for Card Management System for <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>" with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    When user opens an application present in context from Send To Card Management System grid
    And user fill data in dynamic form from the excel file "<PersonalDetails>" under sheet "<DynamicFormDetailsEdit> and row <DynamicForm_rowNum>"
    Then user validate data in view mode for dynamic form at Card Management System

    Examples:

      | LogicalID          | ProductType             | PersonalDetails      | DynamicFormDetailsEdit      | DynamicForm_rowNum |
      | CAS_262309_CC00002 | Credit Card Application | PersonalDetails.xlsx | DynamicFormDetailsEdit.xlsx | 1                  |


  Scenario Outline: ACAUTOCAS-20890: Validate credit card details data in view mode for Card Management System for <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>" with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
#    When user opens an application present in context from Send To Card Management System grid
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_sheet>" and row <SourcingDetails_rowNum>
    When user opens credit card details at Card Management System
    Then user validate data in view mode for credit card details at Card Management System

    Examples:
      | LogicalID          | SourcingDetailsWB              | SourcingDetails_sheet | SourcingDetails_rowNum | ProductType             |
      | CC00001            | credit_card_loan_end_flow.xlsx | card_details          | 1                      | Credit Card Application |
      | CC00002            | credit_card_loan_end_flow.xlsx | card_details          | 2                      | Credit Card Application |
      | CAS_262309_CC00002 | credit_card_loan_end_flow.xlsx | card_details          | 2                      | Credit Card Application |
      | CC00003            | credit_card_loan_end_flow.xlsx | card_details          | 6                      | Credit Card Application |

  Scenario Outline: ACAUTOCAS-20891: Validate customer details data in view mode for Card Management System for <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>" with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
#    When user opens an application present in context from Send To Card Management System grid
    And user reads data from the excel file "<CustomerDetailsWB>" under sheet "<CustomerDetails_home>" and row <CustomerDetails_home_rowNum>
    When user opens view details of customer at Card Management System
    Then user validate data in view mode for customer details at Card Management System


    Examples:
      | LogicalID | CustomerDetailsWB     | CustomerDetails_home | CustomerDetails_home_rowNum | ProductType             |
      | CC00001   | customer_details.xlsx | home                 | 119                         | Credit Card Application |
      | CC00003   | customer_details.xlsx | home                 | 124                         | Credit Card Application |

  Scenario Outline: ACAUTOCAS-20892: Validate document details data in view mode for Card Management System for <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>" with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
#    When user opens an application present in context from Send To Card Management System grid
    And user reads data from the excel file "<DocumentWB>" under sheet "<Document_home>" and row <Document_home_rowNum>
    When user selects document tab
    Then user validate data in view mode for document details at Card Management System


    Examples:
      | LogicalID          | DocumentWB    | Document_home | Document_home_rowNum | ProductType             |
      | CC00001            | document.xlsx | home          | 504                  | Credit Card Application |
      | CC00002            | document.xlsx | home          | 540                  | Credit Card Application |
      | CAS_262309_CC00002 | document.xlsx | home          | 540                  | Credit Card Application |
      | CC00003            | document.xlsx | home          | 536                  | Credit Card Application |
