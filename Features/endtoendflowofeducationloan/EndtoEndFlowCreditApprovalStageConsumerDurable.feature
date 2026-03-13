@Epic-E2E
@Conventional
@E2EOrder
@Release
@CreditApproval

Feature: End to end work flow for Credit Approval Consumer Durable
  @ImplementedBy-ashutosh.kumar2
Scenario Outline: ACAUTOCAS-20919: Validate application summary generation at credit approval for <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>" with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user opens an application at "Credit Approval Consumer Durable" stage from application grid
    And user selects intent indicator tab
    When user clicks on application summary button for consumer durable
    Then application summary should be generated successfully

    Examples:
      | LogicalID | ProductType       |
      | CD00001   | Consumer Durable  |

  @ImplementedBy-ashutosh.kumar2
Scenario Outline: ACAUTOCAS-19883: Validate data of previous stage at credit approval for <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>" with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
#    And user opens an application at "Credit Approval Consumer Durable" stage from application grid
    And user reads data from the excel file "<RepaymentParameters_WB>" under sheet "<RepaymentParameters_Sheet>" and row <RepaymentParameters_RowNum>
    And user clicks on underwriter decision tab
    When user open "<Section>" of loan information for "Credit Approval Consumer Durable"
    Then user should be validate the data of "<Section>" successfully for consumer durable


    Examples:
      | LogicalID | ProductType      | Section              | RepaymentParameters_WB    | RepaymentParameters_Sheet | RepaymentParameters_RowNum |
      | CD00001   | Consumer Durable | Repayment Parameters | repayment_parameters.xlsx | repayment_parameters      | 2980                       |

  @ImplementedBy-ashutosh.kumar2
Scenario Outline: ACAUTOCAS-19884: user fill document status at credit approval for <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>" with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
#    And user opens an application at "Credit Approval Consumer Durable" stage from application grid
    And user clicks on underwriter decision tab
    And user selects document tab
    And user reads data from the excel file "<DocumentWB>" under sheet "<Document_home>" and row <Document_home_rowNum>
    And user selects the document
    And user selects document status as "<Status>"
    When user submit the document
    Then documents should be submitted successfully with close
    Examples:
     | ProductType       | LogicalID | DocumentWB    | Document_home | Document_home_rowNum | Status              |
     | Consumer Durable  | CD00001   | document.xlsx | home          | 216                  | Received & Uploaded |
     | Consumer Durable  | CD00001   | document.xlsx | home          | 438                  | Received & Uploaded |

  @ImplementedBy-ashutosh.kumar2
Scenario Outline: ACAUTOCAS-19885: user  re run deviation policy at credit approval for <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>" with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
#    And user opens an application at "Credit Approval Consumer Durable" stage from application grid
#    And user clicks on underwriter decision tab
    When user open application from deviation grid
    And user run deviation policy at credit approval for consumer durable
    Then deviation policy should re-run successfully

    Examples:
      | LogicalID | LogicalID | ProductType      |
      | CD00001   | CD00001   | Consumer Durable |

  @ImplementedBy-ashutosh.kumar2
Scenario Outline: ACAUTOCAS-19886: user approve the credit approval checklist for <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>" with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
#    And user opens an application at "Credit Approval Consumer Durable" stage from application grid
    And user navigates to underwriter decision page at Credit Approval
    And user reads data from the excel file "kyc_check_end_flow.xlsx" under sheet "decision" and row 0
    And user fills the re run the kyc at credit approval for consumer durable
    When user checks the approval checklist at credit approval for consumer durable
    Then credit approval checklist data saved successfully
    Examples:
      | LogicalID | ProductType      |
      | CD00001   | Consumer Durable |

  @ImplementedBy-ashutosh.kumar2
Scenario Outline: ACAUTOCAS-19887: user fill kyc details at credit approval for <ProductType> LogicalID <LogicalID>
      Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>"
      And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
#      And user opens an application at "Credit Approval Consumer Durable" stage from application grid
      And user clicks on underwriter decision tab
      And user navigates to applicant personal information screen on "Credit Approval Consumer Durable"
      And user reads data from the excel file "personal_information_end_flow.xlsx" under sheet "identification_details" and row 24
      When user fills kyc details of applicant information
      Then KYC Details of applicant information should be saved successfully
      Examples:
        | LogicalID | ProductType      |
        | CD00001   | Consumer Durable |

  @ImplementedBy-ashutosh.kumar2
Scenario Outline: ACAUTOCAS-19888: User navigate to ECM Screen at Credit Approval Stage for <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>"
    And user logout from CAS
    And user logged in "ECM" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user navigates to Case Search of ECM
    And user search for an application in Case Search from context in ECM
    When user opens first task assigned in Case Search to application in ECM
    And user group the document by "primary applicant" in ecm
    And user reads data from the excel file "<DocumentWB>" under sheet "<Document_home>" and row <Document_home_rowNum>
    Then uploaded document should be present in ECM
    Examples:
      | LogicalID | ProductType      | DocumentWB    | Document_home | Document_home_rowNum |
      | CD00001   | Consumer Durable | document.xlsx | home          | 216                  |
      | CD00001   | Consumer Durable | document.xlsx | home          | 438                  |

  @ImplementedBy-ashutosh.kumar2
Scenario Outline: ACAUTOCAS-19889: user fill decision at credit approval for <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>" with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user opens an application at "Credit Approval Consumer Durable" stage from application grid
    And user clicks on underwriter decision tab
    And user click on calculate eligibility for "<ProductType>"
    And user reads data from the excel file "<CreditApproval_WB>" under sheet "<CreditApproval_Sheet>" and row <CreditApproval_RowNum>
    When user fills the decision details for "<ProductType>"
    Then credit approval decision saved successfully
    Examples:
      | LogicalID | ProductType      | CreditApproval_WB             | CreditApproval_Sheet | CreditApproval_RowNum |
      | CD00001   | Consumer Durable | credit_approval_end_flow.xlsx | underwriter_decision | 2                     |



