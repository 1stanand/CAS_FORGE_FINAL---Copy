@Epic-Applicant_Information
@AuthoredBy-utkarsh.tiwari
@ImplementedBy-utkarsh.tiwari
@Reconciled
@AppInfoAdoption

    #${ApplicantType:["indiv","nonindiv"]}
  #FeatureID-ACAUTOCAS-191
Feature: Mandatory Field Validation In Bank Detail With Save

  Scenario Outline: ACAUTOCAS-3809:  Insert Bank Detail without <var>
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user navigates to applicant details page of "<ApplicationStage>"
    When click on view edit detailed info
    And user reads data from the excel file "<BankCreditCardWB>" under sheet "<BankCreditCard_bankDetails>" and row <BankCreditCard_bankDetails_rowNum>
    And user clicks on Bank and Credit Details
    And user delete existing bank details
    And user click on plus sign of Bank Details
    And user enters bank details without "<var>"
    Then error should be displayed in "<var>"
    @Islamic
    @Release
    @Part-1
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category:["bonds"]}
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category   | key | var            | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | Bank Name      | bank_credit_card_details.xlsx | bank_details               | 44                                |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | Account Number | bank_credit_card_details.xlsx | bank_details               | 44                                |

    @Islamic
    @Release
    @Part-1
    #${ProductType:["IHF","IAF"]}
    #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category | key | var            | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Bank Name      | bank_credit_card_details.xlsx | bank_details               | 44                                |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Account Number | bank_credit_card_details.xlsx | bank_details               | 44                                |


    @Conventional
    @Release @Part-1
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category | key | var            | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Bank Name      | bank_credit_card_details.xlsx | bank_details               | 0                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Account Number | bank_credit_card_details.xlsx | bank_details               | 0                                 |

    @Deferred
# ${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category | key | var            | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Bank Name      | bank_credit_card_details.xlsx | bank_details               | 0                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Account Number | bank_credit_card_details.xlsx | bank_details               | 0                                 |


  Scenario Outline: ACAUTOCAS-3810:  Type of Account should be disabled after saving the Bank details
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user navigates to applicant details page of "<ApplicationStage>"
    When click on view edit detailed info
    And user reads data from the excel file "<BankCreditCardWB>" under sheet "<BankCreditCard_bankDetails>" and row <BankCreditCard_bankDetails_rowNum>
    And user clicks on Bank and Credit Details
    And user delete existing bank details
    And user click on plus sign of Bank Details
    And user enters bank details without "Add View Bank Detail"
    Then Type of Account should be disable
    @Islamic
    @Release
    @Part-1
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category:["bonds"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | key | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | bank_credit_card_details.xlsx | bank_details               | 44                                |

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
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | bank_credit_card_details.xlsx | bank_details               | 94                                 |

    @Deferred
# ${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | bank_credit_card_details.xlsx | bank_details               | 0                                 |

  @FixedExp
  Scenario Outline: ACAUTOCAS-3811:  Add or view Bank details hyperlink should not be visible after saving Bank details
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user navigates to applicant details page of "<ApplicationStage>"
    When click on view edit detailed info
    And user reads data from the excel file "<BankCreditCardWB>" under sheet "<BankCreditCard_bankDetails>" and row <BankCreditCard_bankDetails_rowNum>
    And user clicks on Bank and Credit Details
    And user delete existing bank details
    And user click on plus sign of Bank Details
    And user enters bank details without "Add View Bank Detail"
    Then Add view Bank details hyperlink should not be visible
    @Islamic
    @Release
    @Part-1
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category:["bonds"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | key | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | bank_credit_card_details.xlsx | bank_details               | 44                                |

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
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | bank_credit_card_details.xlsx | bank_details               | 0                                 |

    @Deferred
# ${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | bank_credit_card_details.xlsx | bank_details               | 0                                 |
