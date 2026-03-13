@Epic-E2E
@Conventional
@E2EOrder
@Release
@AuthoredBy-harshita.nayak
@ImplementedBy-harshita.nayak
@Order
@Enquiry
@NotImplemented
@CAS-262309
@Sprint-4

  #FeatureID-ACAUTOCAS-17204
Feature: End to end work flow for All LOB Order Wise

  Scenario Outline: ACAUTOCAS-20895: Validate sourcing details fields in view mode at enquiry grid for <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>" with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user opens application from enquiry menu
    When user opens an application present in context from enquiry grid
    Then various field should be present in view mode for sourcing details at enquiry grid
      | Request Type     |
      | Sourcing Channel |
      | DSE Name         |
      | Source Branch    |
    @CCDE
    Examples:
      | LogicalID | ProductType             |
      | CC00001   | Credit Card Application |

  Scenario Outline: ACAUTOCAS-20896: Validate card details fields in view mode at enquiry grid for <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>" with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
#    And user opens application from enquiry menu
#    When user opens an application present in context from enquiry grid
    When user navigates to card details
    Then various field should be present in view mode for card details at enquiry grid
      | Surrogate Code  |
      | Delivery Option |

    @CCDE
    Examples:
      | LogicalID | ProductType             |
      | CC00001   | Credit Card Application |


  Scenario Outline:Validate dynamic form data in view mode for enquiry grid for <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>" with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user opens application from enquiry menu
    When user opens an application present in context from enquiry grid
    And user fill data in dynamic form from the excel file "<PersonalDetails>" under sheet "<DynamicFormDetailsEdit> and row <DynamicForm_rowNum>"
    Then user validate data in view mode for dynamic form at enquiry grid

    @CCDE
    Examples:

      | LogicalID          | ProductType             | PersonalDetails      | DynamicFormDetailsEdit      | DynamicForm_rowNum |
      | CAS_262309_CC00002 | Credit Card Application | PersonalDetails.xlsx | DynamicFormDetailsEdit.xlsx | 1                  |


  Scenario Outline: ACAUTOCAS-20897: Validate sourcing details data in view mode for enquiry grid for <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>" with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user opens application from enquiry menu
    When user opens an application present in context from enquiry grid
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_sheet>" and row <SourcingDetails_rowNum>
    Then user validate data in view mode for sourcing details at enquiry grid

    @CardManagement
    Examples:
      | LogicalID | SourcingDetailsWB              | SourcingDetails_sheet | SourcingDetails_rowNum | ProductType             |
      | CC00001   | credit_card_loan_end_flow.xlsx | sourcing_details      | 1                      | Credit Card Application |


  Scenario Outline: ACAUTOCAS-20898: Validate credit card details data in view mode for enquiry grid for <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>" with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
#    And user opens application from enquiry menu
#    When user opens an application present in context from enquiry grid
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_sheet>" and row <SourcingDetails_rowNum>
    When user opens credit card details at enquiry
    Then user validate data in view mode for credit card details at enquiry grid

    @CardManagement
    Examples:
      | LogicalID | SourcingDetailsWB              | SourcingDetails_sheet | SourcingDetails_rowNum | ProductType             |
      | CC00001   | credit_card_loan_end_flow.xlsx | card_details          | 1                      | Credit Card Application |

  Scenario Outline: ACAUTOCAS-20899: Validate customer details data in view mode for enquiry grid for <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>" with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
#    And user opens application from enquiry menu
#    And user opens an application present in context from enquiry grid
    And user reads data from the excel file "<CustomerDetailsWB>" under sheet "<CustomerDetails_home>" and row <CustomerDetails_home_rowNum>
    When user opens view details of customer at enquiry grid
    Then user validate data in view mode for customer details at enquiry grid

    @CardManagement
    Examples:
      | LogicalID | CustomerDetailsWB     | CustomerDetails_home | CustomerDetails_home_rowNum | ProductType             |
      | CC00001   | customer_details.xlsx | home                 | 119                         | Credit Card Application |

  Scenario Outline: ACAUTOCAS-20900: Validate document details data in view mode for Card Management System for <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>" with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
#    And user opens application from enquiry menu
#    When user opens an application present in context from enquiry grid
    And user reads data from the excel file "<DocumentWB>" under sheet "<Document_home>" and row <Document_home_rowNum>
    When user selects document tab
    Then user validate data in view mode for document details at enquiry grid

    @CardManagement
    Examples:
      | LogicalID | DocumentWB    | Document_home | Document_home_rowNum | ProductType             |
      | CC00001   | document.xlsx | home          | 504                  | Credit Card Application |
