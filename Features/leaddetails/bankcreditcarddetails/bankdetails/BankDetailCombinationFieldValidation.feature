@Epic-Applicant_Information
@AuthoredBy-utkarsh.tiwari
@ImplementedBy-utkarsh.tiwari
@AppInfoAdoption

    # ${ApplicantType:["indiv","nonindiv"]}
  #FeatureID-ACAUTOCAS-191
Feature: Bank Detail Combination Field Validation
  @FixedExp
  Scenario Outline: ACAUTOCAS-3806:  Number of Months Account Held option should be displayed in Bank Details
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user navigates to applicant details page of "<ApplicationStage>"
    When click on view edit detailed info
    And user reads data from the excel file "<BankCreditCardWB>" under sheet "<BankCreditCard_bankDetails>" and row <BankCreditCard_bankDetails_rowNum>
    And user clicks on Bank and Credit Details
    And user enters the Account Opening Date
    Then Number of Months should be displayed with valid months
    @Islamic
    @Release
    @Part-1
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category:["bonds"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | key | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | bank_credit_card_details.xlsx | bank_details               | 0                                 |

    @Islamic
    @Release
    @Part-1
    #${ProductType:["IHF","IAF"]}
    #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | bank_credit_card_details.xlsx | bank_details               | 44                                |


    @Conventional
    @Release @Part-1
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | bank_credit_card_details.xlsx | bank_details               | 44                                |

    @Deferred
    # ${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | bank_credit_card_details.xlsx | bank_details               | 44                                |

  @FixedExp
  Scenario Outline: ACAUTOCAS-3807:  Validating Maximum and Minimum Balance Combination in Bank Details Page
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user navigates to applicant details page of "<ApplicationStage>"
    When click on view edit detailed info
    And user reads data from the excel file "<BankCreditCardWB>" under sheet "<BankCreditCard_bankDetails>" and row <BankCreditCard_bankDetails_rowNum>
    And user clicks on Bank and Credit Details
    And user fills bank details and opens Add Manual Page
    And user enter maximum limit that is "<var>" Minimum Limit
    Then it should "<var2>"
    @Islamic
    @Release
    @Part-1
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category:["bonds"]}
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category   | key | var                      | var2                         | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | Greater than or equal to | work properly                | bank_credit_card_details.xlsx | bank_details               | 13                                |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | less than                | display proper error message | bank_credit_card_details.xlsx | bank_details               | 14                                |

    @Islamic
    @Release
    @Part-1
    #${ProductType:["IHF","IAF"]}
    #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category | key | var                      | var2                         | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Greater than or equal to | work properly                | bank_credit_card_details.xlsx | bank_details               | 13                                |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | less than                | display proper error message | bank_credit_card_details.xlsx | bank_details               | 14                                |


    @Conventional
    @Release @Part-1
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category | key | var                      | var2                         | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Greater than or equal to | work properly                | bank_credit_card_details.xlsx | bank_details               | 13                                |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | less than                | display proper error message | bank_credit_card_details.xlsx | bank_details               | 14                                |

    @Deferred
    # ${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category | key | var                      | var2                         | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Greater than or equal to | work properly                | bank_credit_card_details.xlsx | bank_details               | 13                                |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | less than                | display proper error message | bank_credit_card_details.xlsx | bank_details               | 14                                |

