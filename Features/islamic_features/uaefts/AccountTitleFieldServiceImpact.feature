@Epic-UAEFTS
@PQMStory

Feature: Account Title field Service Impact


  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0


   # PQM-2_CAS-213314
  #FeatureID-ACAUTOCAS-15327
  @AuthoredBy-aryan.jain
  @ImplementedBy-aryan.jain
  Scenario Outline: ACAUTOCAS-17404: Validate Account Title field should be present in Bank details for <AccountType> at <ApplicationStage> of <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user navigates to personal information page of "<ApplicationStage>"
    And user clicks on Bank and Credit Details
    And user deletes existing bank details
    And user click on plus sign of Bank Details
    When user selects account Type As "<AccountType>" at Bank and Credit Details
    Then Account Title field should be present
    # ${ProductType : ["PF","MAL","HL","LAP","CV","MHL","FE","EDU","AGRL","JLG","CEQ","MULF","BD","CashCred","BL","LC","BG"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Credit Approval","Post Approval"]}
    # ${ApplicantType:["indiv","nonindiv"]}
    
#    @Release
#    Examples:
#      | AccountType        | ProductType   | ApplicationStage   | ApplicantType   | Category | Key |
#      | Cash Credit        | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |
#      | Current Account    | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |
#      | KCC Account        | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |
#      | Over Draft Account | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |
#      | Saving Account     | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |

    # ${ProductType:["IPF"]}
    # ${Category:["bonds","metals","shares"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${ApplicantType:["indiv"]}
    @Islamic
    
    @Release
    Examples:
      | AccountType        | ProductType   | ApplicationStage   | ApplicantType   | Category   | Key |
      | Cash Credit        | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     |
      | Current Account    | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     |
      | KCC Account        | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     |
      | Over Draft Account | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     |
      | Saving Account     | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     |

    #${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Reconsideration","Credit Approval","Post Approval"]}
    # ${ApplicantType:["indiv"]}
    @Islamic
    
    @Release
    Examples:
      | AccountType        | ProductType   | ApplicationStage   | ApplicantType   | Category | Key |
      | Cash Credit        | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |
      | Current Account    | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |
      | KCC Account        | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |
      | Over Draft Account | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |
      | Saving Account     | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |


   # PQM-3_CAS-213314
  #FeatureID-ACAUTOCAS-15327
  @AuthoredBy-aryan.jain
  @ImplementedBy-aryan.jain
  Scenario Outline: ACAUTOCAS-17405: Validate Account Title field is non mandatory in Bank details for <AccountType> at <ApplicationStage> of <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user navigates to personal information page of "<ApplicationStage>"
    And user clicks on Bank and Credit Details
    And user deletes existing bank details
    And user click on plus sign of Bank Details
    When user selects account Type As "<AccountType>" at Bank and Credit Details
    And user clicks on save button in Bank details
    Then No validation should occurred for Account Title
    # ${ProductType : ["PF","MAL","HL","LAP","CV","MHL","FE","EDU","AGRL","JLG","CEQ","MULF","BD","CashCred","BL","LC","BG"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Credit Approval","Post Approval"]}
    # ${ApplicantType:["indiv","nonindiv"]}
    
#    @Release
#    Examples:
#      | AccountType        | ProductType   | ApplicationStage   | ApplicantType   | Category | Key |
#      | Cash Credit        | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |
#      | Current Account    | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |
#      | KCC Account        | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |
#      | Over Draft Account | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |
#      | Saving Account     | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |

    # ${ProductType:["IPF"]}
    # ${Category:["bonds","metals","shares"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${ApplicantType:["indiv"]}
    @Islamic
    
    @Release
    Examples:
      | AccountType        | ProductType   | ApplicationStage   | ApplicantType   | Category   | Key |
      | Cash Credit        | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     |
      | Current Account    | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     |
      | KCC Account        | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     |
      | Over Draft Account | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     |
      | Saving Account     | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     |

    #${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Reconsideration","Credit Approval","Post Approval"]}
    # ${ApplicantType:["indiv"]}
    @Islamic
    
    @Release
    Examples:
      | AccountType        | ProductType   | ApplicationStage   | ApplicantType   | Category | Key |
      | Cash Credit        | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |
      | Current Account    | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |
      | KCC Account        | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |
      | Over Draft Account | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |
      | Saving Account     | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |

   # PQM-4_CAS-213314
  #FeatureID-ACAUTOCAS-15327
  @AuthoredBy-aryan.jain
  @ImplementedBy-aryan.jain
  @Perishable
  Scenario Outline: ACAUTOCAS-17406: Validate Account Title should not have special character in Bank details for <AccountType> at <ApplicationStage> of <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user navigates to personal information page of "<ApplicationStage>"
    And user clicks on Bank and Credit Details
    And user deletes existing bank details
    And user click on plus sign of Bank Details
    And user reads data from the excel file "<BankCreditCardWB>" under sheet "<BankCreditCard_bankDetails>" and row <BankCreditCard_bankDetails_rowNum>
    And user selects account Type As "<AccountType>" at Bank and Credit Details
    And user fills bank details without account title
    When user fill account title with special character
    And user clicks on save button in Bank details to get error
    Then validation error should come for account title
    # ${ProductType : ["PF","MAL","HL","LAP","CV","MHL","FE","EDU","AGRL","JLG","CEQ","MULF","BD","CashCred","BL","LC","BG"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Credit Approval","Post Approval"]}
    # ${ApplicantType:["indiv","nonindiv"]}
    
#    @Release
#    Examples:
#      | AccountType        | ProductType   | ApplicationStage   | ApplicantType   | Category | Key | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum |
#      | Cash Credit        | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | bank_credit_card_details.xlsx | bank_details               | 69                                |
#      | Current Account    | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | bank_credit_card_details.xlsx | bank_details               | 69                                |
#      | KCC Account        | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | bank_credit_card_details.xlsx | bank_details               | 69                                |
#      | Over Draft Account | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | bank_credit_card_details.xlsx | bank_details               | 69                                |
#      | Saving Account     | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | bank_credit_card_details.xlsx | bank_details               | 69                                |

    # ${ProductType:["IPF"]}
    # ${Category:["bonds","metals","shares"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${ApplicantType:["indiv"]}
    @Islamic
    
    @Release
    Examples:
      | AccountType        | ProductType   | ApplicationStage   | ApplicantType   | Category   | Key | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum |
      | Cash Credit        | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | bank_credit_card_details.xlsx | bank_details               | 69                                |
      | Current Account    | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | bank_credit_card_details.xlsx | bank_details               | 69                                |
      | KCC Account        | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | bank_credit_card_details.xlsx | bank_details               | 69                                |
      | Over Draft Account | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | bank_credit_card_details.xlsx | bank_details               | 69                                |
      | Saving Account     | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | bank_credit_card_details.xlsx | bank_details               | 69                                |

    #${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Reconsideration","Credit Approval","Post Approval"]}
    # ${ApplicantType:["indiv"]}
    @Islamic
    
    @Release
    Examples:
      | AccountType        | ProductType   | ApplicationStage   | ApplicantType   | Category | Key | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum |
      | Cash Credit        | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | bank_credit_card_details.xlsx | bank_details               | 69                                |
      | Current Account    | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | bank_credit_card_details.xlsx | bank_details               | 69                                |
      | KCC Account        | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | bank_credit_card_details.xlsx | bank_details               | 69                                |
      | Over Draft Account | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | bank_credit_card_details.xlsx | bank_details               | 69                                |
      | Saving Account     | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | bank_credit_card_details.xlsx | bank_details               | 69                                |


   # PQM-5_CAS-213314
  #FeatureID-ACAUTOCAS-15327
  @AuthoredBy-aryan.jain
  @ImplementedBy-aryan.jain
  Scenario Outline: ACAUTOCAS-17407: Save bank details without filling account title in Bank details for <AccountType> at <ApplicationStage> of <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user navigates to personal information page of "<ApplicationStage>"
    And user clicks on Bank and Credit Details
    And user deletes existing bank details
    And user click on plus sign of Bank Details
    And user reads data from the excel file "<BankCreditCardWB>" under sheet "<BankCreditCard_bankDetails>" and row <BankCreditCard_bankDetails_rowNum>
    And user selects account Type As "<AccountType>" at Bank and Credit Details
    When user fills bank details without account title
    And user clicks on save button in Bank details
    Then No validation should occurred for Account Title
    # ${ProductType : ["PF","MAL","HL","LAP","CV","MHL","FE","EDU","AGRL","JLG","CEQ","MULF","BD","CashCred","BL","LC","BG"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Credit Approval","Post Approval"]}
    # ${ApplicantType:["indiv","nonindiv"]}
    
#    @Release
#    Examples:
#      | AccountType        | ProductType   | ApplicationStage   | ApplicantType   | Category | Key | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum |
#      | Cash Credit        | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | bank_credit_card_details.xlsx | bank_details               | 70                                |
#      | Current Account    | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | bank_credit_card_details.xlsx | bank_details               | 70                                |
#      | KCC Account        | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | bank_credit_card_details.xlsx | bank_details               | 70                                |
#      | Over Draft Account | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | bank_credit_card_details.xlsx | bank_details               | 70                                |
#      | Saving Account     | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | bank_credit_card_details.xlsx | bank_details               | 70                                |

    # ${ProductType:["IPF"]}
    # ${Category:["bonds","metals","shares"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${ApplicantType:["indiv"]}
    @Islamic
    
    @Release
    Examples:
      | AccountType        | ProductType   | ApplicationStage   | ApplicantType   | Category   | Key | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum |
      | Cash Credit        | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | Current Account    | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | KCC Account        | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | Over Draft Account | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | Saving Account     | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | bank_credit_card_details.xlsx | bank_details               | 70                                |

    #${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Reconsideration","Credit Approval","Post Approval"]}
    # ${ApplicantType:["indiv"]}
    @Islamic
    
    @Release
    Examples:
      | AccountType        | ProductType   | ApplicationStage   | ApplicantType   | Category | Key | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum |
      | Cash Credit        | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | Current Account    | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | KCC Account        | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | Over Draft Account | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | Saving Account     | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | bank_credit_card_details.xlsx | bank_details               | 70                                |


   # PQM-6_CAS-213314
  #FeatureID-ACAUTOCAS-15327
  @AuthoredBy-aryan.jain
  @ImplementedBy-aryan.jain
  Scenario Outline: ACAUTOCAS-17408: Save bank details with account title in Bank details for <AccountType> at <ApplicationStage> of <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user navigates to personal information page of "<ApplicationStage>"
    And user clicks on Bank and Credit Details
    And user deletes existing bank details
    And user click on plus sign of Bank Details
    And user reads data from the excel file "<BankCreditCardWB>" under sheet "<BankCreditCard_bankDetails>" and row <BankCreditCard_bankDetails_rowNum>
    And user selects account Type As "<AccountType>" at Bank and Credit Details
    When user fills bank details without account title
    And user fill account title
    Then Bank details should be saved successfully in bank details
    # ${ProductType : ["PF","MAL","HL","LAP","CV","MHL","FE","EDU","AGRL","JLG","CEQ","MULF","BD","CashCred","BL","LC","BG"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Credit Approval","Post Approval"]}
    # ${ApplicantType:["indiv","nonindiv"]}
    
#    @Release
#    Examples:
#      | AccountType        | ProductType   | ApplicationStage   | ApplicantType   | Category | Key | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum |
#      | Cash Credit        | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | bank_credit_card_details.xlsx | bank_details               | 70                                |
#      | Current Account    | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | bank_credit_card_details.xlsx | bank_details               | 70                                |
#      | KCC Account        | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | bank_credit_card_details.xlsx | bank_details               | 70                                |
#      | Over Draft Account | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | bank_credit_card_details.xlsx | bank_details               | 70                                |
#      | Saving Account     | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | bank_credit_card_details.xlsx | bank_details               | 70                                |

    # ${ProductType:["IPF"]}
    # ${Category:["bonds","metals","shares"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${ApplicantType:["indiv"]}
    @Islamic
    
    @Release
    Examples:
      | AccountType        | ProductType   | ApplicationStage   | ApplicantType   | Category   | Key | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum |
      | Cash Credit        | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | Current Account    | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | KCC Account        | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | Over Draft Account | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | Saving Account     | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | bank_credit_card_details.xlsx | bank_details               | 70                                |

    #${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Reconsideration","Credit Approval","Post Approval"]}
    # ${ApplicantType:["indiv"]}
    @Islamic
    
    @Release
    Examples:
      | AccountType        | ProductType   | ApplicationStage   | ApplicantType   | Category | Key | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum |
      | Cash Credit        | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | Current Account    | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | KCC Account        | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | Over Draft Account | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | Saving Account     | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | bank_credit_card_details.xlsx | bank_details               | 70                                |


   # PQM-35_CAS-213314
  #FeatureID-ACAUTOCAS-15327
  @AuthoredBy-aryan.jain
  @ImplementedBy-aryan.jain
  @Perishable
  @TestPQMStories
    @31MarFix
  Scenario Outline: ACAUTOCAS-17409:Verify Account Title data should be present in copy application in which account title is filled for <AccountType> at <ApplicationStage> of <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user navigates to personal information page of "<ApplicationStage>"
    And user clicks on Bank and Credit Details
    And user deletes existing bank details
    And user click on plus sign of Bank Details
    And user reads data from the excel file "<BankCreditCardWB>" under sheet "<BankCreditCard_bankDetails>" and row <BankCreditCard_bankDetails_rowNum>
    And user selects account Type As "<AccountType>" at Bank and Credit Details
    And user fills bank details without account title
    And user fill account title
    And user clicks on save button in Bank details
    And user moves application from "<ApplicationStage>" stage to application of "<ProductType>" product type as "<ApplicantType>" applicant at "<Stage>" for "<Category>" with "<Key>" stage without opening it
    And user searches application using "Application Number" in copy application screen
    When user copy the application
    And user opens an application of "DDE" stage present in context from application grid
    And user navigates to personal information page of "DDE"
    And user clicks on Bank and Credit Details
    Then account title data should be present
    # ${ProductType : ["PF","MAL","HL","LAP","CV","MHL","FE","EDU","AGRL","JLG","CEQ","MULF","BD","CashCred","BL","LC","BG"]}
    # ${Stage:["DDE","Credit Approval"]}
    # ${ApplicantType:["indiv","nonindiv"]}
    
#    @Release
#    Examples:
#      | AccountType        | ProductType   | Stage   | ApplicantType   | Category | Key | ApplicationStage | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum |
#      | Cash Credit        | <ProductType> | <Stage> | <ApplicantType> |          |     | Lead Details     | bank_credit_card_details.xlsx | bank_details               | 70                                |
#      | Current Account    | <ProductType> | <Stage> | <ApplicantType> |          |     | Lead Details     | bank_credit_card_details.xlsx | bank_details               | 70                                |
#      | KCC Account        | <ProductType> | <Stage> | <ApplicantType> |          |     | Lead Details     | bank_credit_card_details.xlsx | bank_details               | 70                                |
#      | Over Draft Account | <ProductType> | <Stage> | <ApplicantType> |          |     | Lead Details     | bank_credit_card_details.xlsx | bank_details               | 70                                |
#      | Saving Account     | <ProductType> | <Stage> | <ApplicantType> |          |     | Lead Details     | bank_credit_card_details.xlsx | bank_details               | 70                                |
    # ${ProductType:["IPF"]}
    # ${Category:["bonds","metals","shares"]}
    # ${Stage:["DDE","Credit Approval"]}
    # ${ApplicantType:["indiv"]}
    @Islamic
    
    @Release
    Examples:
      | AccountType        | ProductType   | Stage   | ApplicantType   | Category   | Key | ApplicationStage | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum |
      | Cash Credit        | <ProductType> | <Stage> | <ApplicantType> | <Category> |     | Sourcing         | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | Current Account    | <ProductType> | <Stage> | <ApplicantType> | <Category> |     | Sourcing         | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | KCC Account        | <ProductType> | <Stage> | <ApplicantType> | <Category> |     | Sourcing         | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | Over Draft Account | <ProductType> | <Stage> | <ApplicantType> | <Category> |     | Sourcing         | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | Saving Account     | <ProductType> | <Stage> | <ApplicantType> | <Category> |     | Sourcing         | bank_credit_card_details.xlsx | bank_details               | 70                                |
    #${ProductType:["IAF","IHF"]}
    # ${Stage:["DDE","Credit Approval"]}
    # ${ApplicantType:["indiv"]}
    @Islamic
    
    @Release
    Examples:
      | AccountType        | ProductType   | Stage   | ApplicantType   | Category | Key | ApplicationStage | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum |
      | Cash Credit        | <ProductType> | <Stage> | <ApplicantType> |          |     | Sourcing         | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | Current Account    | <ProductType> | <Stage> | <ApplicantType> |          |     | Sourcing         | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | KCC Account        | <ProductType> | <Stage> | <ApplicantType> |          |     | Sourcing         | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | Over Draft Account | <ProductType> | <Stage> | <ApplicantType> |          |     | Sourcing         | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | Saving Account     | <ProductType> | <Stage> | <ApplicantType> |          |     | Sourcing         | bank_credit_card_details.xlsx | bank_details               | 70                                |

   # PQM-36_CAS-213314
  #FeatureID-ACAUTOCAS-15327
  @AuthoredBy-aryan.jain
  @ImplementedBy-aryan.jain
  @Perishable
  @TestPQMStories
    @31MarFix
  Scenario Outline: ACAUTOCAS-17410:Verify Account Title data should not be present in copy application in which account title is not filled for <AccountType> at <ApplicationStage> of <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user navigates to personal information page of "<ApplicationStage>"
    And user clicks on Bank and Credit Details
    And user deletes existing bank details
    And user click on plus sign of Bank Details
    And user reads data from the excel file "<BankCreditCardWB>" under sheet "<BankCreditCard_bankDetails>" and row <BankCreditCard_bankDetails_rowNum>
    And user selects account Type As "<AccountType>" at Bank and Credit Details
    And user fills bank details without account title
    And user clicks on save button in Bank details
    And user moves application from "<ApplicationStage>" stage to application of "<ProductType>" product type as "<ApplicantType>" applicant at "<Stage>" for "<Category>" with "<Key>" stage without opening it
    And user searches application using "Application Number" in copy application screen
    When user copy the application
    And user opens an application of "DDE" stage present in context from application grid
    And user navigates to personal information page of "DDE"
    And user clicks on Bank and Credit Details
    Then account title data should not be present
    # ${ProductType : ["PF","MAL","HL","LAP","CV","MHL","FE","EDU","AGRL","JLG","CEQ","MULF","BD","CashCred","BL","LC","BG"]}
    # ${Stage:["DDE","Credit Approval"]}
    # ${ApplicantType:["indiv","nonindiv"]}
    
#    @Release
#    Examples:
#      | AccountType        | ProductType   | Stage   | ApplicantType   | Category | Key | ApplicationStage | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum |
#      | Cash Credit        | <ProductType> | <Stage> | <ApplicantType> |          |     | Lead Details     | bank_credit_card_details.xlsx | bank_details               | 70                                |
#      | Current Account    | <ProductType> | <Stage> | <ApplicantType> |          |     | Lead Details     | bank_credit_card_details.xlsx | bank_details               | 70                                |
#      | KCC Account        | <ProductType> | <Stage> | <ApplicantType> |          |     | Lead Details     | bank_credit_card_details.xlsx | bank_details               | 70                                |
#      | Over Draft Account | <ProductType> | <Stage> | <ApplicantType> |          |     | Lead Details     | bank_credit_card_details.xlsx | bank_details               | 70                                |
#      | Saving Account     | <ProductType> | <Stage> | <ApplicantType> |          |     | Lead Details     | bank_credit_card_details.xlsx | bank_details               | 70                                |
    # ${ProductType:["IPF"]}
    # ${Category:["bonds","metals","shares"]}
    # ${Stage:["DDE","Credit Approval"]}
    # ${ApplicantType:["indiv"]}
    @Islamic
    
    @Release
    Examples:
      | AccountType        | ProductType   | Stage   | ApplicantType   | Category   | Key | ApplicationStage | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum |
      | Cash Credit        | <ProductType> | <Stage> | <ApplicantType> | <Category> |     | Sourcing         | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | Current Account    | <ProductType> | <Stage> | <ApplicantType> | <Category> |     | Sourcing         | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | KCC Account        | <ProductType> | <Stage> | <ApplicantType> | <Category> |     | Sourcing         | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | Over Draft Account | <ProductType> | <Stage> | <ApplicantType> | <Category> |     | Sourcing         | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | Saving Account     | <ProductType> | <Stage> | <ApplicantType> | <Category> |     | Sourcing         | bank_credit_card_details.xlsx | bank_details               | 70                                |
    #${ProductType:["IAF","IHF"]}
    # ${Stage:["DDE","Credit Approval"]}
    # ${ApplicantType:["indiv"]}
    @Islamic
    
    @Release
    Examples:
      | AccountType        | ProductType   | Stage   | ApplicantType   | Category | Key | ApplicationStage | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum |
      | Cash Credit        | <ProductType> | <Stage> | <ApplicantType> |          |     | Sourcing         | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | Current Account    | <ProductType> | <Stage> | <ApplicantType> |          |     | Sourcing         | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | KCC Account        | <ProductType> | <Stage> | <ApplicantType> |          |     | Sourcing         | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | Over Draft Account | <ProductType> | <Stage> | <ApplicantType> |          |     | Sourcing         | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | Saving Account     | <ProductType> | <Stage> | <ApplicantType> |          |     | Sourcing         | bank_credit_card_details.xlsx | bank_details               | 70                                |

   # PQM-41_CAS-213314
  #FeatureID-ACAUTOCAS-15327
  @AuthoredBy-aryan.jain
  @ImplementedBy-aryan.jain
    @31MarFix
  Scenario Outline: ACAUTOCAS-17411: Validate hover on account title in Bank details for <AccountType> at <ApplicationStage> of <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user navigates to personal information page of "<ApplicationStage>"
    And user clicks on Bank and Credit Details
    And user deletes existing bank details
    And user click on plus sign of Bank Details
    And user selects account Type As "<AccountType>" at Bank and Credit Details
    When user hover on account title in bank details
    Then tooltip should be displayed for account title in bank details
    # ${ProductType : ["PF","MAL","HL","LAP","CV","MHL","FE","EDU","AGRL","JLG","CEQ","MULF","BD","CashCred","BL","LC","BG"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Credit Approval","Post Approval"]}
    # ${ApplicantType:["indiv","nonindiv"]}
    
#    @Release
#    Examples:
#      | AccountType        | ProductType   | ApplicationStage   | ApplicantType   | Category | Key |
#      | Cash Credit        | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |
#      | Current Account    | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |
#      | KCC Account        | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |
#      | Over Draft Account | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |
#      | Saving Account     | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |

    # ${ProductType:["IPF"]}
    # ${Category:["bonds","metals","shares"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${ApplicantType:["indiv"]}
    @Islamic
    
    @Release
    Examples:
      | AccountType        | ProductType   | ApplicationStage   | ApplicantType   | Category   | Key |
      | Cash Credit        | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     |
      | Current Account    | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     |
      | KCC Account        | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     |
      | Over Draft Account | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     |
      | Saving Account     | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     |

    #${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Reconsideration","Credit Approval","Post Approval"]}
    # ${ApplicantType:["indiv"]}
    @Islamic
    
    @Release
    Examples:
      | AccountType        | ProductType   | ApplicationStage   | ApplicantType   | Category | Key |
      | Cash Credit        | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |
      | Current Account    | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |
      | KCC Account        | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |
      | Over Draft Account | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |
      | Saving Account     | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |


  #FeatureID-ACAUTOCAS-15327
  @AuthoredBy-aryan.jain
  @ImplementedBy-aryan.jain
    @31MarFix
  Scenario Outline: ACAUTOCAS-17412: Validate tooltip name by hover on account title in Bank details for <AccountType> at <ApplicationStage> of <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user navigates to personal information page of "<ApplicationStage>"
    And user clicks on Bank and Credit Details
    And user deletes existing bank details
    And user click on plus sign of Bank Details
    And user selects account Type As "<AccountType>" at Bank and Credit Details
    When user hover on account title in bank details
    Then tooltip name should be same as account title in bank details
    # ${ProductType : ["PF","MAL","HL","LAP","CV","MHL","FE","EDU","AGRL","JLG","CEQ","MULF","BD","CashCred","BL","LC","BG"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Credit Approval","Post Approval"]}
    # ${ApplicantType:["indiv","nonindiv"]}
    
#    @Release
#    Examples:
#      | AccountType        | ProductType   | ApplicationStage   | ApplicantType   | Category | Key |
#      | Cash Credit        | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |
#      | Current Account    | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |
#      | KCC Account        | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |
#      | Over Draft Account | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |
#      | Saving Account     | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |

    # ${ProductType:["IPF"]}
    # ${Category:["bonds","metals","shares"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${ApplicantType:["indiv"]}
    @Islamic
    
    @Release
    Examples:
      | AccountType        | ProductType   | ApplicationStage   | ApplicantType   | Category   | Key |
      | Cash Credit        | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     |
      | Current Account    | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     |
      | KCC Account        | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     |
      | Over Draft Account | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     |
      | Saving Account     | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     |

    #${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Reconsideration","Credit Approval","Post Approval"]}
    # ${ApplicantType:["indiv"]}
    @Islamic
    
    @Release
    Examples:
      | AccountType        | ProductType   | ApplicationStage   | ApplicantType   | Category | Key |
      | Cash Credit        | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |
      | Current Account    | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |
      | KCC Account        | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |
      | Over Draft Account | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |
      | Saving Account     | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |

 # PQM-42_CAS-213314
  #FeatureID-ACAUTOCAS-15327
  @AuthoredBy-aryan.jain
  @ImplementedBy-aryan.jain
  Scenario Outline: ACAUTOCAS-17413: Verify account title data is left aligned in Bank details for <AccountType> at <ApplicationStage> of <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user navigates to personal information page of "<ApplicationStage>"
    And user clicks on Bank and Credit Details
    And user deletes existing bank details
    And user click on plus sign of Bank Details
    And user reads data from the excel file "<BankCreditCardWB>" under sheet "<BankCreditCard_bankDetails>" and row <BankCreditCard_bankDetails_rowNum>
    When user selects account Type As "<AccountType>" at Bank and Credit Details
    And user fill account title
    Then Account Title data should be left aligned
    # ${ProductType : ["PF","MAL","HL","LAP","CV","MHL","FE","EDU","AGRL","JLG","CEQ","MULF","BD","CashCred","BL","LC","BG"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Credit Approval","Post Approval"]}
    # ${ApplicantType:["indiv","nonindiv"]}
    
#    @Release
#    Examples:
#      | AccountType        | ProductType   | ApplicationStage   | ApplicantType   | Category | Key | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum |
#      | Cash Credit        | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | bank_credit_card_details.xlsx | bank_details               | 70                                |
#      | Current Account    | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | bank_credit_card_details.xlsx | bank_details               | 70                                |
#      | KCC Account        | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | bank_credit_card_details.xlsx | bank_details               | 70                                |
#      | Over Draft Account | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | bank_credit_card_details.xlsx | bank_details               | 70                                |
#      | Saving Account     | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | bank_credit_card_details.xlsx | bank_details               | 70                                |

    # ${ProductType:["IPF"]}
    # ${Category:["bonds","metals","shares"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${ApplicantType:["indiv"]}
    @Islamic
    
    @Release
    Examples:
      | AccountType        | ProductType   | ApplicationStage   | ApplicantType   | Category   | Key | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum |
      | Cash Credit        | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | Current Account    | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | KCC Account        | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | Over Draft Account | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | Saving Account     | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | bank_credit_card_details.xlsx | bank_details               | 70                                |

    #${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Reconsideration","Credit Approval","Post Approval"]}
    # ${ApplicantType:["indiv"]}
    @Islamic
    
    @Release
    Examples:
      | AccountType        | ProductType   | ApplicationStage   | ApplicantType   | Category | Key | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum |
      | Cash Credit        | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | Current Account    | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | KCC Account        | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | Over Draft Account | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | Saving Account     | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | bank_credit_card_details.xlsx | bank_details               | 70                                |


   # PQM-44_CAS-213314
  #FeatureID-ACAUTOCAS-15327
  @AuthoredBy-aryan.jain
  @ImplementedBy-aryan.jain
  @Perishable
  Scenario Outline: ACAUTOCAS-17414: Validation for save bank details come for fetch bank details in Bank details for <AccountType> at <ApplicationStage> of <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user navigates to personal information page of "<ApplicationStage>"
    And user clicks on Bank and Credit Details
    And user deletes existing bank details
    And user click on plus sign of Bank Details
    And user reads data from the excel file "<BankCreditCardWB>" under sheet "<BankCreditCard_bankDetails>" and row <BankCreditCard_bankDetails_rowNum>
    And user selects account Type As "<AccountType>" at Bank and Credit Details
    And user fills bank details without account title
    And user fill account title
    When user clicks on Fetch Bank button in Bank details
    Then proper error message should come for fetching bank details without saving it
    # ${ProductType : ["PF","MAL","HL","LAP","CV","MHL","FE","EDU","AGRL","JLG","CEQ","MULF","BD","CashCred","BL","LC","BG"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Credit Approval","Post Approval"]}
    # ${ApplicantType:["indiv","nonindiv"]}
    
#    @Release
#    Examples:
#      | AccountType        | ProductType   | ApplicationStage   | ApplicantType   | Category | Key | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum |
#      | Cash Credit        | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | bank_credit_card_details.xlsx | bank_details               | 71                                |
#      | Current Account    | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | bank_credit_card_details.xlsx | bank_details               | 71                                |
#      | KCC Account        | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | bank_credit_card_details.xlsx | bank_details               | 71                                |
#      | Over Draft Account | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | bank_credit_card_details.xlsx | bank_details               | 71                                |
#      | Saving Account     | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | bank_credit_card_details.xlsx | bank_details               | 71                                |

    # ${ProductType:["IPF"]}
    # ${Category:["bonds","metals","shares"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${ApplicantType:["indiv"]}
    @Islamic
    
    @Release
    Examples:
      | AccountType        | ProductType   | ApplicationStage   | ApplicantType   | Category   | Key | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum |
      | Cash Credit        | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | bank_credit_card_details.xlsx | bank_details               | 71                                |
      | Current Account    | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | bank_credit_card_details.xlsx | bank_details               | 71                                |
      | KCC Account        | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | bank_credit_card_details.xlsx | bank_details               | 71                                |
      | Over Draft Account | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | bank_credit_card_details.xlsx | bank_details               | 71                                |
      | Saving Account     | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | bank_credit_card_details.xlsx | bank_details               | 71                                |

    #${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Reconsideration","Credit Approval","Post Approval"]}
    # ${ApplicantType:["indiv"]}
    @Islamic
    
    @Release
    Examples:
      | AccountType        | ProductType   | ApplicationStage   | ApplicantType   | Category | Key | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum |
      | Cash Credit        | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | bank_credit_card_details.xlsx | bank_details               | 71                                |
      | Current Account    | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | bank_credit_card_details.xlsx | bank_details               | 71                                |
      | KCC Account        | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | bank_credit_card_details.xlsx | bank_details               | 71                                |
      | Over Draft Account | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | bank_credit_card_details.xlsx | bank_details               | 71                                |
      | Saving Account     | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | bank_credit_card_details.xlsx | bank_details               | 71                                |

# PQM-51_CAS-213314
  #FeatureID-ACAUTOCAS-15327
  @AuthoredBy-aryan.jain
  @ImplementedBy-aryan.jain
  Scenario Outline: ACAUTOCAS-17415: Validate bank details <FieldName> is in view mode at enquiry stage for <AccountType> at <ApplicationStage> of <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user navigates to personal information page of "<ApplicationStage>"
    And user clicks on Bank and Credit Details
    And user deletes existing bank details
    And user click on plus sign of Bank Details
    And user reads data from the excel file "<BankCreditCardWB>" under sheet "<BankCreditCard_bankDetails>" and row <BankCreditCard_bankDetails_rowNum>
    And user selects account Type As "<AccountType>" at Bank and Credit Details
    And user fills bank details without account title
    And user fill account title
    And user clicks on save button in Bank details
    When user opens an "<ProductType>" application at "<ApplicationStage>" stage from enquiry screen
    And user navigates to personal information page of "<ApplicationStage>"
    And user clicks on Bank and Credit Details
    Then "<FieldName>" should be present in view mode
    # ${ProductType : ["PF","MAL","HL","LAP","CV","MHL","FE","EDU","AGRL","JLG","CEQ","MULF","BD","CashCred","BL","LC","BG"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Credit Approval","Post Approval"]}
    # ${ApplicantType:["indiv","nonindiv"]}
    
#    @Release
#    Examples:
#      | AccountType        | ProductType   | ApplicationStage   | ApplicantType   | Category | Key | FieldName                      | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum |
#      | Cash Credit        | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Checkbox                       | bank_credit_card_details.xlsx | bank_details               | 70                                |
#      | Cash Credit        | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Bank Name                      | bank_credit_card_details.xlsx | bank_details               | 70                                |
#      | Cash Credit        | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Branch Name                    | bank_credit_card_details.xlsx | bank_details               | 70                                |
#      | Cash Credit        | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | IFSC                           | bank_credit_card_details.xlsx | bank_details               | 70                                |
#      | Cash Credit        | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Type of Account                | bank_credit_card_details.xlsx | bank_details               | 70                                |
#      | Cash Credit        | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Account Opening Date           | bank_credit_card_details.xlsx | bank_details               | 70                                |
#      | Cash Credit        | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Nature Of Bank Account         | bank_credit_card_details.xlsx | bank_details               | 70                                |
#      | Cash Credit        | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Account Status                 | bank_credit_card_details.xlsx | bank_details               | 70                                |
#      | Cash Credit        | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Source System                  | bank_credit_card_details.xlsx | bank_details               | 70                                |
#      | Cash Credit        | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | No. of Months Account Held     | bank_credit_card_details.xlsx | bank_details               | 70                                |
#      | Cash Credit        | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Default Account                | bank_credit_card_details.xlsx | bank_details               | 70                                |
#      | Cash Credit        | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Salary Account                 | bank_credit_card_details.xlsx | bank_details               | 70                                |
#      | Cash Credit        | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Repayment Account              | bank_credit_card_details.xlsx | bank_details               | 70                                |
#      | Cash Credit        | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | No. of Inward Cheques Returned | bank_credit_card_details.xlsx | bank_details               | 70                                |
#      | Cash Credit        | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Consolidated Average Balance   | bank_credit_card_details.xlsx | bank_details               | 70                                |
#      | Cash Credit        | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Account Number                 | bank_credit_card_details.xlsx | bank_details               | 70                                |
#      | Cash Credit        | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Average Bank Balance           | bank_credit_card_details.xlsx | bank_details               | 70                                |
#      | Current Account    | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Checkbox                       | bank_credit_card_details.xlsx | bank_details               | 70                                |
#      | Current Account    | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Bank Name                      | bank_credit_card_details.xlsx | bank_details               | 70                                |
#      | Current Account    | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Branch Name                    | bank_credit_card_details.xlsx | bank_details               | 70                                |
#      | Current Account    | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | IFSC                           | bank_credit_card_details.xlsx | bank_details               | 70                                |
#      | Current Account    | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Type of Account                | bank_credit_card_details.xlsx | bank_details               | 70                                |
#      | Current Account    | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Account Opening Date           | bank_credit_card_details.xlsx | bank_details               | 70                                |
#      | Current Account    | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Nature Of Bank Account         | bank_credit_card_details.xlsx | bank_details               | 70                                |
#      | Current Account    | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Account Status                 | bank_credit_card_details.xlsx | bank_details               | 70                                |
#      | Current Account    | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Source System                  | bank_credit_card_details.xlsx | bank_details               | 70                                |
#      | Current Account    | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | No. of Months Account Held     | bank_credit_card_details.xlsx | bank_details               | 70                                |
#      | Current Account    | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Default Account                | bank_credit_card_details.xlsx | bank_details               | 70                                |
#      | Current Account    | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Salary Account                 | bank_credit_card_details.xlsx | bank_details               | 70                                |
#      | Current Account    | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Repayment Account              | bank_credit_card_details.xlsx | bank_details               | 70                                |
#      | Current Account    | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | No. of Inward Cheques Returned | bank_credit_card_details.xlsx | bank_details               | 70                                |
#      | Current Account    | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Consolidated Average Balance   | bank_credit_card_details.xlsx | bank_details               | 70                                |
#      | Current Account    | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Account Number                 | bank_credit_card_details.xlsx | bank_details               | 70                                |
#      | Current Account    | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Average Bank Balance           | bank_credit_card_details.xlsx | bank_details               | 70                                |
#      | KCC Account        | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Checkbox                       | bank_credit_card_details.xlsx | bank_details               | 70                                |
#      | KCC Account        | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Bank Name                      | bank_credit_card_details.xlsx | bank_details               | 70                                |
#      | KCC Account        | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Branch Name                    | bank_credit_card_details.xlsx | bank_details               | 70                                |
#      | KCC Account        | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | IFSC                           | bank_credit_card_details.xlsx | bank_details               | 70                                |
#      | KCC Account        | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Type of Account                | bank_credit_card_details.xlsx | bank_details               | 70                                |
#      | KCC Account        | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Account Opening Date           | bank_credit_card_details.xlsx | bank_details               | 70                                |
#      | KCC Account        | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Nature Of Bank Account         | bank_credit_card_details.xlsx | bank_details               | 70                                |
#      | KCC Account        | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Account Status                 | bank_credit_card_details.xlsx | bank_details               | 70                                |
#      | KCC Account        | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Source System                  | bank_credit_card_details.xlsx | bank_details               | 70                                |
#      | KCC Account        | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | No. of Months Account Held     | bank_credit_card_details.xlsx | bank_details               | 70                                |
#      | KCC Account        | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Default Account                | bank_credit_card_details.xlsx | bank_details               | 70                                |
#      | KCC Account        | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Salary Account                 | bank_credit_card_details.xlsx | bank_details               | 70                                |
#      | KCC Account        | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Repayment Account              | bank_credit_card_details.xlsx | bank_details               | 70                                |
#      | KCC Account        | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | No. of Inward Cheques Returned | bank_credit_card_details.xlsx | bank_details               | 70                                |
#      | KCC Account        | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Consolidated Average Balance   | bank_credit_card_details.xlsx | bank_details               | 70                                |
#      | KCC Account        | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Account Number                 | bank_credit_card_details.xlsx | bank_details               | 70                                |
#      | KCC Account        | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Average Bank Balance           | bank_credit_card_details.xlsx | bank_details               | 70                                |
#      | Over Draft Account | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Checkbox                       | bank_credit_card_details.xlsx | bank_details               | 70                                |
#      | Over Draft Account | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Bank Name                      | bank_credit_card_details.xlsx | bank_details               | 70                                |
#      | Over Draft Account | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Branch Name                    | bank_credit_card_details.xlsx | bank_details               | 70                                |
#      | Over Draft Account | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | IFSC                           | bank_credit_card_details.xlsx | bank_details               | 70                                |
#      | Over Draft Account | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Type of Account                | bank_credit_card_details.xlsx | bank_details               | 70                                |
#      | Over Draft Account | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Account Opening Date           | bank_credit_card_details.xlsx | bank_details               | 70                                |
#      | Over Draft Account | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Nature Of Bank Account         | bank_credit_card_details.xlsx | bank_details               | 70                                |
#      | Over Draft Account | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Account Status                 | bank_credit_card_details.xlsx | bank_details               | 70                                |
#      | Over Draft Account | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Source System                  | bank_credit_card_details.xlsx | bank_details               | 70                                |
#      | Over Draft Account | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | No. of Months Account Held     | bank_credit_card_details.xlsx | bank_details               | 70                                |
#      | Over Draft Account | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Default Account                | bank_credit_card_details.xlsx | bank_details               | 70                                |
#      | Over Draft Account | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Salary Account                 | bank_credit_card_details.xlsx | bank_details               | 70                                |
#      | Over Draft Account | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Repayment Account              | bank_credit_card_details.xlsx | bank_details               | 70                                |
#      | Over Draft Account | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | No. of Inward Cheques Returned | bank_credit_card_details.xlsx | bank_details               | 70                                |
#      | Over Draft Account | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Consolidated Average Balance   | bank_credit_card_details.xlsx | bank_details               | 70                                |
#      | Over Draft Account | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Account Number                 | bank_credit_card_details.xlsx | bank_details               | 70                                |
#      | Over Draft Account | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Average Bank Balance           | bank_credit_card_details.xlsx | bank_details               | 70                                |
#      | Saving Account     | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Checkbox                       | bank_credit_card_details.xlsx | bank_details               | 70                                |
#      | Saving Account     | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Bank Name                      | bank_credit_card_details.xlsx | bank_details               | 70                                |
#      | Saving Account     | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Branch Name                    | bank_credit_card_details.xlsx | bank_details               | 70                                |
#      | Saving Account     | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | IFSC                           | bank_credit_card_details.xlsx | bank_details               | 70                                |
#      | Saving Account     | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Type of Account                | bank_credit_card_details.xlsx | bank_details               | 70                                |
#      | Saving Account     | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Account Opening Date           | bank_credit_card_details.xlsx | bank_details               | 70                                |
#      | Saving Account     | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Nature Of Bank Account         | bank_credit_card_details.xlsx | bank_details               | 70                                |
#      | Saving Account     | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Account Status                 | bank_credit_card_details.xlsx | bank_details               | 70                                |
#      | Saving Account     | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Source System                  | bank_credit_card_details.xlsx | bank_details               | 70                                |
#      | Saving Account     | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | No. of Months Account Held     | bank_credit_card_details.xlsx | bank_details               | 70                                |
#      | Saving Account     | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Default Account                | bank_credit_card_details.xlsx | bank_details               | 70                                |
#      | Saving Account     | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Salary Account                 | bank_credit_card_details.xlsx | bank_details               | 70                                |
#      | Saving Account     | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Repayment Account              | bank_credit_card_details.xlsx | bank_details               | 70                                |
#      | Saving Account     | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | No. of Inward Cheques Returned | bank_credit_card_details.xlsx | bank_details               | 70                                |
#      | Saving Account     | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Consolidated Average Balance   | bank_credit_card_details.xlsx | bank_details               | 70                                |
#      | Saving Account     | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Account Number                 | bank_credit_card_details.xlsx | bank_details               | 70                                |
#      | Saving Account     | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Average Bank Balance           | bank_credit_card_details.xlsx | bank_details               | 70                                |

    # ${ProductType:["IPF"]}
    # ${Category:["bonds","metals","shares"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${ApplicantType:["indiv"]}
    @Islamic
    
    @Release
    Examples:
      | AccountType        | ProductType   | ApplicationStage   | ApplicantType   | Category   | Key | FieldName                      | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum |
      | Cash Credit        | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Checkbox                       | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | Cash Credit        | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Bank Name                      | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | Cash Credit        | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Branch Name                    | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | Cash Credit        | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | IFSC                           | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | Cash Credit        | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Type of Account                | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | Cash Credit        | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Account Opening Date           | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | Cash Credit        | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Nature Of Bank Account         | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | Cash Credit        | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Account Status                 | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | Cash Credit        | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Source System                  | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | Cash Credit        | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | No. of Months Account Held     | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | Cash Credit        | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Default Account                | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | Cash Credit        | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Salary Account                 | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | Cash Credit        | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Repayment Account              | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | Cash Credit        | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | No. of Inward Cheques Returned | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | Cash Credit        | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Consolidated Average Balance   | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | Cash Credit        | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Account Number                 | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | Cash Credit        | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Average Bank Balance           | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | Current Account    | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Checkbox                       | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | Current Account    | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Bank Name                      | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | Current Account    | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Branch Name                    | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | Current Account    | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | IFSC                           | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | Current Account    | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Type of Account                | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | Current Account    | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Account Opening Date           | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | Current Account    | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Nature Of Bank Account         | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | Current Account    | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Account Status                 | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | Current Account    | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Source System                  | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | Current Account    | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | No. of Months Account Held     | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | Current Account    | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Default Account                | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | Current Account    | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Salary Account                 | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | Current Account    | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Repayment Account              | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | Current Account    | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | No. of Inward Cheques Returned | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | Current Account    | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Consolidated Average Balance   | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | Current Account    | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Account Number                 | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | Current Account    | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Average Bank Balance           | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | KCC Account        | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Checkbox                       | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | KCC Account        | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Bank Name                      | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | KCC Account        | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Branch Name                    | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | KCC Account        | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | IFSC                           | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | KCC Account        | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Type of Account                | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | KCC Account        | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Account Opening Date           | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | KCC Account        | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Nature Of Bank Account         | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | KCC Account        | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Account Status                 | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | KCC Account        | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Source System                  | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | KCC Account        | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | No. of Months Account Held     | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | KCC Account        | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Default Account                | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | KCC Account        | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Salary Account                 | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | KCC Account        | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Repayment Account              | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | KCC Account        | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | No. of Inward Cheques Returned | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | KCC Account        | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Consolidated Average Balance   | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | KCC Account        | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Account Number                 | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | KCC Account        | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Average Bank Balance           | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | Over Draft Account | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Checkbox                       | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | Over Draft Account | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Bank Name                      | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | Over Draft Account | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Branch Name                    | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | Over Draft Account | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | IFSC                           | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | Over Draft Account | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Type of Account                | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | Over Draft Account | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Account Opening Date           | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | Over Draft Account | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Nature Of Bank Account         | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | Over Draft Account | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Account Status                 | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | Over Draft Account | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Source System                  | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | Over Draft Account | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | No. of Months Account Held     | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | Over Draft Account | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Default Account                | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | Over Draft Account | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Salary Account                 | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | Over Draft Account | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Repayment Account              | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | Over Draft Account | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | No. of Inward Cheques Returned | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | Over Draft Account | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Consolidated Average Balance   | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | Over Draft Account | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Account Number                 | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | Over Draft Account | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Average Bank Balance           | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | Saving Account     | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Checkbox                       | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | Saving Account     | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Bank Name                      | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | Saving Account     | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Branch Name                    | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | Saving Account     | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | IFSC                           | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | Saving Account     | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Type of Account                | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | Saving Account     | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Account Opening Date           | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | Saving Account     | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Nature Of Bank Account         | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | Saving Account     | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Account Status                 | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | Saving Account     | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Source System                  | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | Saving Account     | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | No. of Months Account Held     | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | Saving Account     | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Default Account                | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | Saving Account     | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Salary Account                 | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | Saving Account     | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Repayment Account              | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | Saving Account     | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | No. of Inward Cheques Returned | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | Saving Account     | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Consolidated Average Balance   | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | Saving Account     | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Account Number                 | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | Saving Account     | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Average Bank Balance           | bank_credit_card_details.xlsx | bank_details               | 70                                |

    #${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Reconsideration","Credit Approval","Post Approval"]}
    # ${ApplicantType:["indiv"]}
    @Islamic
    
    @Release
    Examples:
      | AccountType        | ProductType   | ApplicationStage   | ApplicantType   | Category | Key | FieldName                      | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum |
      | Cash Credit        | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Checkbox                       | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | Cash Credit        | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Bank Name                      | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | Cash Credit        | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Branch Name                    | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | Cash Credit        | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | IFSC                           | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | Cash Credit        | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Type of Account                | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | Cash Credit        | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Account Opening Date           | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | Cash Credit        | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Nature Of Bank Account         | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | Cash Credit        | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Account Status                 | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | Cash Credit        | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Source System                  | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | Cash Credit        | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | No. of Months Account Held     | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | Cash Credit        | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Default Account                | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | Cash Credit        | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Salary Account                 | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | Cash Credit        | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Repayment Account              | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | Cash Credit        | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | No. of Inward Cheques Returned | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | Cash Credit        | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Consolidated Average Balance   | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | Cash Credit        | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Account Number                 | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | Cash Credit        | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Average Bank Balance           | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | Current Account    | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Checkbox                       | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | Current Account    | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Bank Name                      | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | Current Account    | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Branch Name                    | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | Current Account    | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | IFSC                           | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | Current Account    | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Type of Account                | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | Current Account    | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Account Opening Date           | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | Current Account    | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Nature Of Bank Account         | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | Current Account    | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Account Status                 | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | Current Account    | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Source System                  | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | Current Account    | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | No. of Months Account Held     | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | Current Account    | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Default Account                | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | Current Account    | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Salary Account                 | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | Current Account    | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Repayment Account              | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | Current Account    | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | No. of Inward Cheques Returned | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | Current Account    | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Consolidated Average Balance   | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | Current Account    | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Account Number                 | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | Current Account    | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Average Bank Balance           | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | KCC Account        | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Checkbox                       | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | KCC Account        | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Bank Name                      | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | KCC Account        | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Branch Name                    | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | KCC Account        | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | IFSC                           | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | KCC Account        | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Type of Account                | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | KCC Account        | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Account Opening Date           | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | KCC Account        | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Nature Of Bank Account         | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | KCC Account        | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Account Status                 | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | KCC Account        | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Source System                  | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | KCC Account        | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | No. of Months Account Held     | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | KCC Account        | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Default Account                | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | KCC Account        | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Salary Account                 | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | KCC Account        | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Repayment Account              | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | KCC Account        | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | No. of Inward Cheques Returned | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | KCC Account        | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Consolidated Average Balance   | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | KCC Account        | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Account Number                 | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | KCC Account        | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Average Bank Balance           | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | Over Draft Account | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Checkbox                       | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | Over Draft Account | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Bank Name                      | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | Over Draft Account | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Branch Name                    | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | Over Draft Account | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | IFSC                           | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | Over Draft Account | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Type of Account                | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | Over Draft Account | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Account Opening Date           | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | Over Draft Account | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Nature Of Bank Account         | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | Over Draft Account | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Account Status                 | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | Over Draft Account | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Source System                  | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | Over Draft Account | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | No. of Months Account Held     | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | Over Draft Account | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Default Account                | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | Over Draft Account | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Salary Account                 | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | Over Draft Account | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Repayment Account              | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | Over Draft Account | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | No. of Inward Cheques Returned | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | Over Draft Account | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Consolidated Average Balance   | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | Over Draft Account | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Account Number                 | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | Over Draft Account | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Average Bank Balance           | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | Saving Account     | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Checkbox                       | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | Saving Account     | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Bank Name                      | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | Saving Account     | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Branch Name                    | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | Saving Account     | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | IFSC                           | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | Saving Account     | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Type of Account                | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | Saving Account     | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Account Opening Date           | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | Saving Account     | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Nature Of Bank Account         | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | Saving Account     | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Account Status                 | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | Saving Account     | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Source System                  | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | Saving Account     | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | No. of Months Account Held     | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | Saving Account     | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Default Account                | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | Saving Account     | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Salary Account                 | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | Saving Account     | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Repayment Account              | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | Saving Account     | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | No. of Inward Cheques Returned | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | Saving Account     | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Consolidated Average Balance   | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | Saving Account     | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Account Number                 | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | Saving Account     | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Average Bank Balance           | bank_credit_card_details.xlsx | bank_details               | 70                                |

   # PQM-52_CAS-213314
  #FeatureID-ACAUTOCAS-15327
  @AuthoredBy-aryan.jain
  @ImplementedBy-aryan.jain
  @Perishable

  Scenario Outline: ACAUTOCAS-17416:Validate last entry <FieldName> is in disable mode for multiple entry in bank details for <AccountType> at <ApplicationStage> of <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user navigates to personal information page of "<ApplicationStage>"
    And user clicks on Bank and Credit Details
    And user deletes existing bank details
    And user click on plus sign of Bank Details
    And user reads data from the excel file "<BankCreditCardWB>" under sheet "<BankCreditCard_bankDetails>" and row <BankCreditCard_bankDetails_rowNum>
    And user selects account Type As "<AccountType>" at Bank and Credit Details
    And user fills bank details without account title
    And user fill account title
    And user clicks on Bank Statement Details hyperlink
    And user fills Bank Statement Details with ok
    And user clicks on save button in Bank details
    And user click on plus sign of Bank Details
    And user reads data from the excel file "<BankCreditCardWB>" under sheet "<BankCreditCard_bankDetails>" and row <BankCreditCard_bankDetails_rowNum1>
    And user selects account Type As "<AccountType>" at Bank and Credit Details
    And user fills bank details without account title
    And user fill account title
    And user clicks on Bank Statement Details hyperlink
    And user fills Bank Statement Details with ok
    And user clicks on save button in Bank details
    When user clicks on Fetch Bank button in Bank details
    Then "<FieldName>" should be in disable mode
    # ${ProductType : ["PF","MAL","HL","LAP","CV","MHL","FE","EDU","AGRL","JLG","CEQ","MULF","BD","CashCred","BL","LC","BG"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Credit Approval","Post Approval"]}
    # ${ApplicantType:["indiv","nonindiv"]}
    
#    @Release
#    Examples:
#      | AccountType        | ProductType   | ApplicationStage   | ApplicantType   | Category | Key | FieldName                      | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum | BankCreditCard_bankDetails_rowNum1 |
#      | Cash Credit        | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Checkbox                       | bank_credit_card_details.xlsx | bank_details               | 70                                | 72                                 |
#      | Cash Credit        | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Bank Name                      | bank_credit_card_details.xlsx | bank_details               | 70                                | 72                                 |
#      | Cash Credit        | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Branch Name                    | bank_credit_card_details.xlsx | bank_details               | 70                                | 72                                 |
#      | Cash Credit        | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | IFSC                           | bank_credit_card_details.xlsx | bank_details               | 70                                | 72                                 |
#      | Cash Credit        | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Type of Account                | bank_credit_card_details.xlsx | bank_details               | 70                                | 72                                 |
#      | Cash Credit        | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Account Opening Date           | bank_credit_card_details.xlsx | bank_details               | 70                                | 72                                 |
#      | Cash Credit        | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Account Status                 | bank_credit_card_details.xlsx | bank_details               | 70                                | 72                                 |
#      | Cash Credit        | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Source System                  | bank_credit_card_details.xlsx | bank_details               | 70                                | 72                                 |
#      | Cash Credit        | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | No. of Months Account Held     | bank_credit_card_details.xlsx | bank_details               | 70                                | 72                                 |
#      | Cash Credit        | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | No. of Inward Cheques Returned | bank_credit_card_details.xlsx | bank_details               | 70                                | 72                                 |
#      | Cash Credit        | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Consolidated Average Balance   | bank_credit_card_details.xlsx | bank_details               | 70                                | 72                                 |
#      | Cash Credit        | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Account Number                 | bank_credit_card_details.xlsx | bank_details               | 70                                | 72                                 |
#      | Cash Credit        | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Average Bank Balance           | bank_credit_card_details.xlsx | bank_details               | 70                                | 72                                 |
#      | Current Account    | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Checkbox                       | bank_credit_card_details.xlsx | bank_details               | 70                                | 72                                 |
#      | Current Account    | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Bank Name                      | bank_credit_card_details.xlsx | bank_details               | 70                                | 72                                 |
#      | Current Account    | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Branch Name                    | bank_credit_card_details.xlsx | bank_details               | 70                                | 72                                 |
#      | Current Account    | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | IFSC                           | bank_credit_card_details.xlsx | bank_details               | 70                                | 72                                 |
#      | Current Account    | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Type of Account                | bank_credit_card_details.xlsx | bank_details               | 70                                | 72                                 |
#      | Current Account    | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Account Opening Date           | bank_credit_card_details.xlsx | bank_details               | 70                                | 72                                 |
#      | Current Account    | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Account Status                 | bank_credit_card_details.xlsx | bank_details               | 70                                | 72                                 |
#      | Current Account    | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Source System                  | bank_credit_card_details.xlsx | bank_details               | 70                                | 72                                 |
#      | Current Account    | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | No. of Months Account Held     | bank_credit_card_details.xlsx | bank_details               | 70                                | 72                                 |
#      | Current Account    | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | No. of Inward Cheques Returned | bank_credit_card_details.xlsx | bank_details               | 70                                | 72                                 |
#      | Current Account    | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Consolidated Average Balance   | bank_credit_card_details.xlsx | bank_details               | 70                                | 72                                 |
#      | Current Account    | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Account Number                 | bank_credit_card_details.xlsx | bank_details               | 70                                | 72                                 |
#      | Current Account    | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Average Bank Balance           | bank_credit_card_details.xlsx | bank_details               | 70                                | 72                                 |
#      | KCC Account        | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Checkbox                       | bank_credit_card_details.xlsx | bank_details               | 70                                | 72                                 |
#      | KCC Account        | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Bank Name                      | bank_credit_card_details.xlsx | bank_details               | 70                                | 72                                 |
#      | KCC Account        | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Branch Name                    | bank_credit_card_details.xlsx | bank_details               | 70                                | 72                                 |
#      | KCC Account        | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | IFSC                           | bank_credit_card_details.xlsx | bank_details               | 70                                | 72                                 |
#      | KCC Account        | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Type of Account                | bank_credit_card_details.xlsx | bank_details               | 70                                | 72                                 |
#      | KCC Account        | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Account Opening Date           | bank_credit_card_details.xlsx | bank_details               | 70                                | 72                                 |
#      | KCC Account        | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Account Status                 | bank_credit_card_details.xlsx | bank_details               | 70                                | 72                                 |
#      | KCC Account        | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Source System                  | bank_credit_card_details.xlsx | bank_details               | 70                                | 72                                 |
#      | KCC Account        | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | No. of Months Account Held     | bank_credit_card_details.xlsx | bank_details               | 70                                | 72                                 |
#      | KCC Account        | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | No. of Inward Cheques Returned | bank_credit_card_details.xlsx | bank_details               | 70                                | 72                                 |
#      | KCC Account        | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Consolidated Average Balance   | bank_credit_card_details.xlsx | bank_details               | 70                                | 72                                 |
#      | KCC Account        | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Account Number                 | bank_credit_card_details.xlsx | bank_details               | 70                                | 72                                 |
#      | KCC Account        | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Average Bank Balance           | bank_credit_card_details.xlsx | bank_details               | 70                                | 72                                 |
#      | Over Draft Account | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Checkbox                       | bank_credit_card_details.xlsx | bank_details               | 70                                | 72                                 |
#      | Over Draft Account | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Bank Name                      | bank_credit_card_details.xlsx | bank_details               | 70                                | 72                                 |
#      | Over Draft Account | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Branch Name                    | bank_credit_card_details.xlsx | bank_details               | 70                                | 72                                 |
#      | Over Draft Account | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | IFSC                           | bank_credit_card_details.xlsx | bank_details               | 70                                | 72                                 |
#      | Over Draft Account | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Type of Account                | bank_credit_card_details.xlsx | bank_details               | 70                                | 72                                 |
#      | Over Draft Account | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Account Opening Date           | bank_credit_card_details.xlsx | bank_details               | 70                                | 72                                 |
#      | Over Draft Account | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Account Status                 | bank_credit_card_details.xlsx | bank_details               | 70                                | 72                                 |
#      | Over Draft Account | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Source System                  | bank_credit_card_details.xlsx | bank_details               | 70                                | 72                                 |
#      | Over Draft Account | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | No. of Months Account Held     | bank_credit_card_details.xlsx | bank_details               | 70                                | 72                                 |
#      | Over Draft Account | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | No. of Inward Cheques Returned | bank_credit_card_details.xlsx | bank_details               | 70                                | 72                                 |
#      | Over Draft Account | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Consolidated Average Balance   | bank_credit_card_details.xlsx | bank_details               | 70                                | 72                                 |
#      | Over Draft Account | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Account Number                 | bank_credit_card_details.xlsx | bank_details               | 70                                | 72                                 |
#      | Over Draft Account | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Average Bank Balance           | bank_credit_card_details.xlsx | bank_details               | 70                                | 72                                 |
#      | Saving Account     | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Checkbox                       | bank_credit_card_details.xlsx | bank_details               | 70                                | 72                                 |
#      | Saving Account     | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Bank Name                      | bank_credit_card_details.xlsx | bank_details               | 70                                | 72                                 |
#      | Saving Account     | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Branch Name                    | bank_credit_card_details.xlsx | bank_details               | 70                                | 72                                 |
#      | Saving Account     | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | IFSC                           | bank_credit_card_details.xlsx | bank_details               | 70                                | 72                                 |
#      | Saving Account     | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Type of Account                | bank_credit_card_details.xlsx | bank_details               | 70                                | 72                                 |
#      | Saving Account     | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Account Opening Date           | bank_credit_card_details.xlsx | bank_details               | 70                                | 72                                 |
#      | Saving Account     | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Account Status                 | bank_credit_card_details.xlsx | bank_details               | 70                                | 72                                 |
#      | Saving Account     | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Source System                  | bank_credit_card_details.xlsx | bank_details               | 70                                | 72                                 |
#      | Saving Account     | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | No. of Months Account Held     | bank_credit_card_details.xlsx | bank_details               | 70                                | 72                                 |
#      | Saving Account     | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | No. of Inward Cheques Returned | bank_credit_card_details.xlsx | bank_details               | 70                                | 72                                 |
#      | Saving Account     | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Consolidated Average Balance   | bank_credit_card_details.xlsx | bank_details               | 70                                | 72                                 |
#      | Saving Account     | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Account Number                 | bank_credit_card_details.xlsx | bank_details               | 70                                | 72                                 |
#      | Saving Account     | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Average Bank Balance           | bank_credit_card_details.xlsx | bank_details               | 70                                | 72                                 |

    # ${ProductType:["IPF"]}
    # ${Category:["bonds","metals","shares"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${ApplicantType:["indiv"]}

    @Islamic
    
    @Release
    Examples:
      | AccountType        | ProductType   | ApplicationStage   | ApplicantType   | Category   | Key | FieldName                      | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum | BankCreditCard_bankDetails_rowNum1 |
      | Cash Credit        | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Checkbox                       | bank_credit_card_details.xlsx | bank_details               | 70                                | 72                                 |
      | Cash Credit        | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Bank Name                      | bank_credit_card_details.xlsx | bank_details               | 70                                | 72                                 |
      | Cash Credit        | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Branch Name                    | bank_credit_card_details.xlsx | bank_details               | 70                                | 72                                 |
      | Cash Credit        | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | IFSC                           | bank_credit_card_details.xlsx | bank_details               | 70                                | 72                                 |
      | Cash Credit        | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Type of Account                | bank_credit_card_details.xlsx | bank_details               | 70                                | 72                                 |
      | Cash Credit        | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Account Opening Date           | bank_credit_card_details.xlsx | bank_details               | 70                                | 72                                 |
      | Cash Credit        | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Account Status                 | bank_credit_card_details.xlsx | bank_details               | 70                                | 72                                 |
      | Cash Credit        | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Source System                  | bank_credit_card_details.xlsx | bank_details               | 70                                | 72                                 |
      | Cash Credit        | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | No. of Months Account Held     | bank_credit_card_details.xlsx | bank_details               | 70                                | 72                                 |
      | Cash Credit        | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | No. of Inward Cheques Returned | bank_credit_card_details.xlsx | bank_details               | 70                                | 72                                 |
      | Cash Credit        | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Consolidated Average Balance   | bank_credit_card_details.xlsx | bank_details               | 70                                | 72                                 |
      | Cash Credit        | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Account Number                 | bank_credit_card_details.xlsx | bank_details               | 70                                | 72                                 |
      | Cash Credit        | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Average Bank Balance           | bank_credit_card_details.xlsx | bank_details               | 70                                | 72                                 |
      | Current Account    | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Checkbox                       | bank_credit_card_details.xlsx | bank_details               | 70                                | 72                                 |
      | Current Account    | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Bank Name                      | bank_credit_card_details.xlsx | bank_details               | 70                                | 72                                 |
      | Current Account    | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Branch Name                    | bank_credit_card_details.xlsx | bank_details               | 70                                | 72                                 |
      | Current Account    | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | IFSC                           | bank_credit_card_details.xlsx | bank_details               | 70                                | 72                                 |
      | Current Account    | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Type of Account                | bank_credit_card_details.xlsx | bank_details               | 70                                | 72                                 |
      | Current Account    | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Account Opening Date           | bank_credit_card_details.xlsx | bank_details               | 70                                | 72                                 |
      | Current Account    | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Account Status                 | bank_credit_card_details.xlsx | bank_details               | 70                                | 72                                 |
      | Current Account    | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Source System                  | bank_credit_card_details.xlsx | bank_details               | 70                                | 72                                 |
      | Current Account    | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | No. of Months Account Held     | bank_credit_card_details.xlsx | bank_details               | 70                                | 72                                 |
      | Current Account    | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | No. of Inward Cheques Returned | bank_credit_card_details.xlsx | bank_details               | 70                                | 72                                 |
      | Current Account    | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Consolidated Average Balance   | bank_credit_card_details.xlsx | bank_details               | 70                                | 72                                 |
      | Current Account    | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Account Number                 | bank_credit_card_details.xlsx | bank_details               | 70                                | 72                                 |
      | Current Account    | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Average Bank Balance           | bank_credit_card_details.xlsx | bank_details               | 70                                | 72                                 |
      | KCC Account        | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Checkbox                       | bank_credit_card_details.xlsx | bank_details               | 70                                | 72                                 |
      | KCC Account        | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Bank Name                      | bank_credit_card_details.xlsx | bank_details               | 70                                | 72                                 |
      | KCC Account        | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Branch Name                    | bank_credit_card_details.xlsx | bank_details               | 70                                | 72                                 |
      | KCC Account        | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | IFSC                           | bank_credit_card_details.xlsx | bank_details               | 70                                | 72                                 |
      | KCC Account        | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Type of Account                | bank_credit_card_details.xlsx | bank_details               | 70                                | 72                                 |
      | KCC Account        | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Account Opening Date           | bank_credit_card_details.xlsx | bank_details               | 70                                | 72                                 |
      | KCC Account        | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Account Status                 | bank_credit_card_details.xlsx | bank_details               | 70                                | 72                                 |
      | KCC Account        | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Source System                  | bank_credit_card_details.xlsx | bank_details               | 70                                | 72                                 |
      | KCC Account        | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | No. of Months Account Held     | bank_credit_card_details.xlsx | bank_details               | 70                                | 72                                 |
      | KCC Account        | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | No. of Inward Cheques Returned | bank_credit_card_details.xlsx | bank_details               | 70                                | 72                                 |
      | KCC Account        | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Consolidated Average Balance   | bank_credit_card_details.xlsx | bank_details               | 70                                | 72                                 |
      | KCC Account        | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Account Number                 | bank_credit_card_details.xlsx | bank_details               | 70                                | 72                                 |
      | KCC Account        | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Average Bank Balance           | bank_credit_card_details.xlsx | bank_details               | 70                                | 72                                 |
      | Over Draft Account | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Checkbox                       | bank_credit_card_details.xlsx | bank_details               | 70                                | 72                                 |
      | Over Draft Account | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Bank Name                      | bank_credit_card_details.xlsx | bank_details               | 70                                | 72                                 |
      | Over Draft Account | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Branch Name                    | bank_credit_card_details.xlsx | bank_details               | 70                                | 72                                 |
      | Over Draft Account | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | IFSC                           | bank_credit_card_details.xlsx | bank_details               | 70                                | 72                                 |
      | Over Draft Account | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Type of Account                | bank_credit_card_details.xlsx | bank_details               | 70                                | 72                                 |
      | Over Draft Account | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Account Opening Date           | bank_credit_card_details.xlsx | bank_details               | 70                                | 72                                 |
      | Over Draft Account | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Account Status                 | bank_credit_card_details.xlsx | bank_details               | 70                                | 72                                 |
      | Over Draft Account | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Source System                  | bank_credit_card_details.xlsx | bank_details               | 70                                | 72                                 |
      | Over Draft Account | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | No. of Months Account Held     | bank_credit_card_details.xlsx | bank_details               | 70                                | 72                                 |
      | Over Draft Account | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | No. of Inward Cheques Returned | bank_credit_card_details.xlsx | bank_details               | 70                                | 72                                 |
      | Over Draft Account | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Consolidated Average Balance   | bank_credit_card_details.xlsx | bank_details               | 70                                | 72                                 |
      | Over Draft Account | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Account Number                 | bank_credit_card_details.xlsx | bank_details               | 70                                | 72                                 |
      | Over Draft Account | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Average Bank Balance           | bank_credit_card_details.xlsx | bank_details               | 70                                | 72                                 |
      | Saving Account     | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Checkbox                       | bank_credit_card_details.xlsx | bank_details               | 70                                | 72                                 |
      | Saving Account     | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Bank Name                      | bank_credit_card_details.xlsx | bank_details               | 70                                | 72                                 |
      | Saving Account     | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Branch Name                    | bank_credit_card_details.xlsx | bank_details               | 70                                | 72                                 |
      | Saving Account     | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | IFSC                           | bank_credit_card_details.xlsx | bank_details               | 70                                | 72                                 |
      | Saving Account     | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Type of Account                | bank_credit_card_details.xlsx | bank_details               | 70                                | 72                                 |
      | Saving Account     | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Account Opening Date           | bank_credit_card_details.xlsx | bank_details               | 70                                | 72                                 |
      | Saving Account     | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Account Status                 | bank_credit_card_details.xlsx | bank_details               | 70                                | 72                                 |
      | Saving Account     | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Source System                  | bank_credit_card_details.xlsx | bank_details               | 70                                | 72                                 |
      | Saving Account     | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | No. of Months Account Held     | bank_credit_card_details.xlsx | bank_details               | 70                                | 72                                 |
      | Saving Account     | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | No. of Inward Cheques Returned | bank_credit_card_details.xlsx | bank_details               | 70                                | 72                                 |
      | Saving Account     | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Consolidated Average Balance   | bank_credit_card_details.xlsx | bank_details               | 70                                | 72                                 |
      | Saving Account     | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Account Number                 | bank_credit_card_details.xlsx | bank_details               | 70                                | 72                                 |
      | Saving Account     | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Average Bank Balance           | bank_credit_card_details.xlsx | bank_details               | 70                                | 72                                 |

    #${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Reconsideration","Credit Approval","Post Approval"]}
    # ${ApplicantType:["indiv"]}
    @Islamic
    
    @Release
    @TestPQMStories
    Examples:
      | AccountType        | ProductType   | ApplicationStage   | ApplicantType   | Category | Key | FieldName                      | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum | BankCreditCard_bankDetails_rowNum1 |
      | Cash Credit        | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Checkbox                       | bank_credit_card_details.xlsx | bank_details               | 70                                | 72                                 |
      | Cash Credit        | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Bank Name                      | bank_credit_card_details.xlsx | bank_details               | 70                                | 72                                 |
      | Cash Credit        | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Branch Name                    | bank_credit_card_details.xlsx | bank_details               | 70                                | 72                                 |
      | Cash Credit        | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | IFSC                           | bank_credit_card_details.xlsx | bank_details               | 70                                | 72                                 |
      | Cash Credit        | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Type of Account                | bank_credit_card_details.xlsx | bank_details               | 70                                | 72                                 |
      | Cash Credit        | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Account Opening Date           | bank_credit_card_details.xlsx | bank_details               | 70                                | 72                                 |
      | Cash Credit        | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Account Status                 | bank_credit_card_details.xlsx | bank_details               | 70                                | 72                                 |
      | Cash Credit        | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Source System                  | bank_credit_card_details.xlsx | bank_details               | 70                                | 72                                 |
      | Cash Credit        | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | No. of Months Account Held     | bank_credit_card_details.xlsx | bank_details               | 70                                | 72                                 |
      | Cash Credit        | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | No. of Inward Cheques Returned | bank_credit_card_details.xlsx | bank_details               | 70                                | 72                                 |
      | Cash Credit        | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Consolidated Average Balance   | bank_credit_card_details.xlsx | bank_details               | 70                                | 72                                 |
      | Cash Credit        | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Account Number                 | bank_credit_card_details.xlsx | bank_details               | 70                                | 72                                 |
      | Cash Credit        | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Average Bank Balance           | bank_credit_card_details.xlsx | bank_details               | 70                                | 72                                 |
      | Current Account    | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Checkbox                       | bank_credit_card_details.xlsx | bank_details               | 70                                | 72                                 |
      | Current Account    | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Bank Name                      | bank_credit_card_details.xlsx | bank_details               | 70                                | 72                                 |
      | Current Account    | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Branch Name                    | bank_credit_card_details.xlsx | bank_details               | 70                                | 72                                 |
      | Current Account    | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | IFSC                           | bank_credit_card_details.xlsx | bank_details               | 70                                | 72                                 |
      | Current Account    | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Type of Account                | bank_credit_card_details.xlsx | bank_details               | 70                                | 72                                 |
      | Current Account    | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Account Opening Date           | bank_credit_card_details.xlsx | bank_details               | 70                                | 72                                 |
      | Current Account    | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Account Status                 | bank_credit_card_details.xlsx | bank_details               | 70                                | 72                                 |
      | Current Account    | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Source System                  | bank_credit_card_details.xlsx | bank_details               | 70                                | 72                                 |
      | Current Account    | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | No. of Months Account Held     | bank_credit_card_details.xlsx | bank_details               | 70                                | 72                                 |
      | Current Account    | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | No. of Inward Cheques Returned | bank_credit_card_details.xlsx | bank_details               | 70                                | 72                                 |
      | Current Account    | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Consolidated Average Balance   | bank_credit_card_details.xlsx | bank_details               | 70                                | 72                                 |
      | Current Account    | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Account Number                 | bank_credit_card_details.xlsx | bank_details               | 70                                | 72                                 |
      | Current Account    | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Average Bank Balance           | bank_credit_card_details.xlsx | bank_details               | 70                                | 72                                 |
      | KCC Account        | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Checkbox                       | bank_credit_card_details.xlsx | bank_details               | 70                                | 72                                 |
      | KCC Account        | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Bank Name                      | bank_credit_card_details.xlsx | bank_details               | 70                                | 72                                 |
      | KCC Account        | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Branch Name                    | bank_credit_card_details.xlsx | bank_details               | 70                                | 72                                 |
      | KCC Account        | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | IFSC                           | bank_credit_card_details.xlsx | bank_details               | 70                                | 72                                 |
      | KCC Account        | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Type of Account                | bank_credit_card_details.xlsx | bank_details               | 70                                | 72                                 |
      | KCC Account        | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Account Opening Date           | bank_credit_card_details.xlsx | bank_details               | 70                                | 72                                 |
      | KCC Account        | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Account Status                 | bank_credit_card_details.xlsx | bank_details               | 70                                | 72                                 |
      | KCC Account        | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Source System                  | bank_credit_card_details.xlsx | bank_details               | 70                                | 72                                 |
      | KCC Account        | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | No. of Months Account Held     | bank_credit_card_details.xlsx | bank_details               | 70                                | 72                                 |
      | KCC Account        | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | No. of Inward Cheques Returned | bank_credit_card_details.xlsx | bank_details               | 70                                | 72                                 |
      | KCC Account        | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Consolidated Average Balance   | bank_credit_card_details.xlsx | bank_details               | 70                                | 72                                 |
      | KCC Account        | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Account Number                 | bank_credit_card_details.xlsx | bank_details               | 70                                | 72                                 |
      | KCC Account        | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Average Bank Balance           | bank_credit_card_details.xlsx | bank_details               | 70                                | 72                                 |
      | Over Draft Account | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Checkbox                       | bank_credit_card_details.xlsx | bank_details               | 70                                | 72                                 |
      | Over Draft Account | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Bank Name                      | bank_credit_card_details.xlsx | bank_details               | 70                                | 72                                 |
      | Over Draft Account | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Branch Name                    | bank_credit_card_details.xlsx | bank_details               | 70                                | 72                                 |
      | Over Draft Account | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | IFSC                           | bank_credit_card_details.xlsx | bank_details               | 70                                | 72                                 |
      | Over Draft Account | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Type of Account                | bank_credit_card_details.xlsx | bank_details               | 70                                | 72                                 |
      | Over Draft Account | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Account Opening Date           | bank_credit_card_details.xlsx | bank_details               | 70                                | 72                                 |
      | Over Draft Account | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Account Status                 | bank_credit_card_details.xlsx | bank_details               | 70                                | 72                                 |
      | Over Draft Account | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Source System                  | bank_credit_card_details.xlsx | bank_details               | 70                                | 72                                 |
      | Over Draft Account | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | No. of Months Account Held     | bank_credit_card_details.xlsx | bank_details               | 70                                | 72                                 |
      | Over Draft Account | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | No. of Inward Cheques Returned | bank_credit_card_details.xlsx | bank_details               | 70                                | 72                                 |
      | Over Draft Account | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Consolidated Average Balance   | bank_credit_card_details.xlsx | bank_details               | 70                                | 72                                 |
      | Over Draft Account | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Account Number                 | bank_credit_card_details.xlsx | bank_details               | 70                                | 72                                 |
      | Over Draft Account | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Average Bank Balance           | bank_credit_card_details.xlsx | bank_details               | 70                                | 72                                 |
      | Saving Account     | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Checkbox                       | bank_credit_card_details.xlsx | bank_details               | 70                                | 72                                 |
      | Saving Account     | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Bank Name                      | bank_credit_card_details.xlsx | bank_details               | 70                                | 72                                 |
      | Saving Account     | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Branch Name                    | bank_credit_card_details.xlsx | bank_details               | 70                                | 72                                 |
      | Saving Account     | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | IFSC                           | bank_credit_card_details.xlsx | bank_details               | 70                                | 72                                 |
      | Saving Account     | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Type of Account                | bank_credit_card_details.xlsx | bank_details               | 70                                | 72                                 |
      | Saving Account     | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Account Opening Date           | bank_credit_card_details.xlsx | bank_details               | 70                                | 72                                 |
      | Saving Account     | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Account Status                 | bank_credit_card_details.xlsx | bank_details               | 70                                | 72                                 |
      | Saving Account     | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Source System                  | bank_credit_card_details.xlsx | bank_details               | 70                                | 72                                 |
      | Saving Account     | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | No. of Months Account Held     | bank_credit_card_details.xlsx | bank_details               | 70                                | 72                                 |
      | Saving Account     | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | No. of Inward Cheques Returned | bank_credit_card_details.xlsx | bank_details               | 70                                | 72                                 |
      | Saving Account     | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Consolidated Average Balance   | bank_credit_card_details.xlsx | bank_details               | 70                                | 72                                 |
      | Saving Account     | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Account Number                 | bank_credit_card_details.xlsx | bank_details               | 70                                | 72                                 |
      | Saving Account     | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Average Bank Balance           | bank_credit_card_details.xlsx | bank_details               | 70                                | 72                                 |

    # PQM-37_CAS-213314
 #FeatureID-ACAUTOCAS-15327
  @AuthoredBy-aniket.tripathi
  @ImplementedBy-aniket.tripathi
  @Perishable
  @TestPQMStories
  @MoveToNextRunner1
  Scenario Outline: ACAUTOCAS-17417: Account Title should be present for previous filled applicant for <ProductType> product type with <FinalStage> stage
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user navigates to personal information page of "<ApplicationStage>"
    And user clicks on Bank and Credit Details
    And user deletes existing bank details
    And user click on plus sign of Bank Details
    And user reads data from the excel file "<BankCreditCardWB>" under sheet "<BankCreditCard_bankDetails>" and row <BankCreditCard_bankDetails_rowNum>
    And user selects account Type As "<AccountType>" at Bank and Credit Details
    And user fills bank details without account title
    And user fill account title
    And user clicks on save button in Bank details
    And user stores the application number for copy applicant
    And user moves application from "Sourcing" stage to application of "<ProductType>" product type as "<ApplicantType>" applicant at "dde" for "<Category>" with "<Key>" stage without opening it
    And user creates an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<FinalStage>" for "<Category>" with "<Key>" from web service
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<FinalStage>" for "<Category>" with "<Key>" from application grid
    And user opens applicant information page of "<FinalStage>"
    When user adds existing "<ApplicantType>" for "<CustomerType>" with relationship type as "<RelationshipType>"
    And user opens recently added view edit detailed information
    And user clicks on Bank and Credit Details
    Then Account Title should be present same as filled in bank details
# ${ProductType : ["PF","MAL","HL","LAP","CV","MHL","FE","EDU","AGRL","JLG","CEQ","MULF","BD","CashCred","BL","LC","BG"]}
# ${ApplicationStage:["Lead Details"]}
# ${FinalStage:["Lead Details","Login Acceptance","DDE","Credit Approval"]}
# ${ApplicantType:["indiv","nonindiv"]}
# ${CustomerType:["Co-applicant","Guarantor"]}
# ${RelationshipType:["Friend"]}
    
#    @Release
#    Examples:
#      | AccountType        | ProductType   | ApplicationStage   | FinalStage   | ApplicantType   | Category | Key | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum | CustomerType   | RelationshipType   |
#      | Cash Credit        | <ProductType> | <ApplicationStage> | <FinalStage> | <ApplicantType> |          |     | bank_credit_card_details.xlsx | bank_details               | 70                                | <CustomerType> | <RelationshipType> |
#      | Current Account    | <ProductType> | <ApplicationStage> | <FinalStage> | <ApplicantType> |          |     | bank_credit_card_details.xlsx | bank_details               | 70                                | <CustomerType> | <RelationshipType> |
#      | KCC Account        | <ProductType> | <ApplicationStage> | <FinalStage> | <ApplicantType> |          |     | bank_credit_card_details.xlsx | bank_details               | 70                                | <CustomerType> | <RelationshipType> |
#      | Over Draft Account | <ProductType> | <ApplicationStage> | <FinalStage> | <ApplicantType> |          |     | bank_credit_card_details.xlsx | bank_details               | 70                                | <CustomerType> | <RelationshipType> |
#      | Saving Account     | <ProductType> | <ApplicationStage> | <FinalStage> | <ApplicantType> |          |     | bank_credit_card_details.xlsx | bank_details               | 70                                | <CustomerType> | <RelationshipType> |

# ${ProductType:["IPF"]}
# ${Category:["bonds","metals","shares"]}
# ${ApplicationStage:["Sourcing"]}
# ${FinalStage:["Sourcing","Login Acceptance","DDE","Recommendation","Reconsideration","Credit Approval"]}
# ${ApplicantType:["indiv"]}
# ${CustomerType:["Co-applicant","Guarantor"]}
# ${RelationshipType:["Friend"]}

    @Islamic
    
    @Release
    @5FebM5Fix
    Examples:
      | AccountType        | ProductType   | ApplicationStage   | FinalStage   | ApplicantType   | Category   | Key | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum | CustomerType   | RelationshipType   |
      | Cash Credit        | <ProductType> | <ApplicationStage> | <FinalStage> | <ApplicantType> | <Category> |     | bank_credit_card_details.xlsx | bank_details               | 70                                | <CustomerType> | <RelationshipType> |
      | Current Account    | <ProductType> | <ApplicationStage> | <FinalStage> | <ApplicantType> | <Category> |     | bank_credit_card_details.xlsx | bank_details               | 70                                | <CustomerType> | <RelationshipType> |
      | KCC Account        | <ProductType> | <ApplicationStage> | <FinalStage> | <ApplicantType> | <Category> |     | bank_credit_card_details.xlsx | bank_details               | 70                                | <CustomerType> | <RelationshipType> |
      | Over Draft Account | <ProductType> | <ApplicationStage> | <FinalStage> | <ApplicantType> | <Category> |     | bank_credit_card_details.xlsx | bank_details               | 70                                | <CustomerType> | <RelationshipType> |
      | Saving Account     | <ProductType> | <ApplicationStage> | <FinalStage> | <ApplicantType> | <Category> |     | bank_credit_card_details.xlsx | bank_details               | 70                                | <CustomerType> | <RelationshipType> |

#${ProductType:["IAF","IHF"]}
# ${ApplicationStage:["Sourcing"]}
# ${FinalStage:["Sourcing","Login Acceptance","DDE","Reconsideration","Credit Approval"]}
# ${ApplicantType:["indiv"]}
# ${CustomerType:["Co-applicant","Guarantor"]}
# ${RelationshipType:["Friend"]}
    @Islamic
    
    @Release
    @5FebM5Fix
    Examples:
      | AccountType        | ProductType   | ApplicationStage   | FinalStage   | ApplicantType   | Category | Key | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum | CustomerType   | RelationshipType   |
      | Cash Credit        | <ProductType> | <ApplicationStage> | <FinalStage> | <ApplicantType> |          |     | bank_credit_card_details.xlsx | bank_details               | 70                                | <CustomerType> | <RelationshipType> |
      | Current Account    | <ProductType> | <ApplicationStage> | <FinalStage> | <ApplicantType> |          |     | bank_credit_card_details.xlsx | bank_details               | 70                                | <CustomerType> | <RelationshipType> |
      | KCC Account        | <ProductType> | <ApplicationStage> | <FinalStage> | <ApplicantType> |          |     | bank_credit_card_details.xlsx | bank_details               | 70                                | <CustomerType> | <RelationshipType> |
      | Over Draft Account | <ProductType> | <ApplicationStage> | <FinalStage> | <ApplicantType> |          |     | bank_credit_card_details.xlsx | bank_details               | 70                                | <CustomerType> | <RelationshipType> |
      | Saving Account     | <ProductType> | <ApplicationStage> | <FinalStage> | <ApplicantType> |          |     | bank_credit_card_details.xlsx | bank_details               | 70                                | <CustomerType> | <RelationshipType> |


# PQM-38_CAS-213314
   #FeatureID-ACAUTOCAS-15327
  @AuthoredBy-deep.maurya
  @ImplementedBy-deep.maurya
  @Perishable
  @TestPQMStories
  @MoveToNextRunner2
  Scenario Outline: ACAUTOCAS-17418:Account Title should be empty for previous filled applicant
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user navigates to personal information page of "<ApplicationStage>"
    And user clicks on Bank and Credit Details
    And user deletes existing bank details
    And user click on plus sign of Bank Details
    And user reads data from the excel file "<BankCreditCardWB>" under sheet "<BankCreditCard_bankDetails>" and row <BankCreditCard_bankDetails_rowNum>
    And user selects account Type As "<AccountType>" at Bank and Credit Details
    And user fills bank details without account title
    And user clicks on save button in Bank details
    And user stores the application number for copy applicant
    And user moves application from "Sourcing" stage to application of "<ProductType>" product type as "<ApplicantType>" applicant at "dde" for "<Category>" with "<Key>" stage without opening it
    And user creates an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<FinalStage>" for "<Category>" with "<Key>" from web service
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<FinalStage>" for "<Category>" with "<Key>" from application grid
    And user opens applicant information page of "<FinalStage>"
    When user adds existing "<ApplicantType>" for "<CustomerType>" with relationship type as "<RelationshipType>"
    And user opens recently added view edit detailed information
    And user clicks on Bank and Credit Details
    Then account title data should not be present
# ${ProductType : ["PF","MAL","HL","LAP","CV","MHL","FE","EDU","AGRL","JLG","CEQ","MULF","BD","CashCred","BL","LC","BG"]}
# ${ApplicationStage:["Lead Details"]}
# ${FinalStage:["Lead Details","Login Acceptance","DDE","Credit Approval"]}
# ${ApplicantType:["indiv","nonindiv"]}
# ${CustomerType:["Co-applicant","Guarantor"]}
# ${RelationshipType:["Friend"]}
    
#    @Release
#    Examples:
#      | AccountType        | ProductType   | ApplicationStage   | FinalStage   | ApplicantType   | Category | Key | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum | CustomerType   | RelationshipType   |
#      | Cash Credit        | <ProductType> | <ApplicationStage> | <FinalStage> | <ApplicantType> |          |     | bank_credit_card_details.xlsx | bank_details               | 70                                | <CustomerType> | <RelationshipType> |
#      | Current Account    | <ProductType> | <ApplicationStage> | <FinalStage> | <ApplicantType> |          |     | bank_credit_card_details.xlsx | bank_details               | 70                                | <CustomerType> | <RelationshipType> |
#      | KCC Account        | <ProductType> | <ApplicationStage> | <FinalStage> | <ApplicantType> |          |     | bank_credit_card_details.xlsx | bank_details               | 70                                | <CustomerType> | <RelationshipType> |
#      | Over Draft Account | <ProductType> | <ApplicationStage> | <FinalStage> | <ApplicantType> |          |     | bank_credit_card_details.xlsx | bank_details               | 70                                | <CustomerType> | <RelationshipType> |
#      | Saving Account     | <ProductType> | <ApplicationStage> | <FinalStage> | <ApplicantType> |          |     | bank_credit_card_details.xlsx | bank_details               | 70                                | <CustomerType> | <RelationshipType> |

# ${ProductType:["IPF"]}
# ${Category:["bonds","metals","shares"]}
# ${ApplicationStage:["Sourcing"]}
# ${FinalStage:["Sourcing","Login Acceptance","DDE","Recommendation","Reconsideration","Credit Approval"]}
# ${ApplicantType:["indiv"]}
# ${CustomerType:["Co-applicant","Guarantor"]}
# ${RelationshipType:["Friend"]}
    @Islamic
    
    @Release
    @5FebM5Fix
    Examples:
      | AccountType        | ProductType   | ApplicationStage   | FinalStage   | ApplicantType   | Category   | Key | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum | CustomerType   | RelationshipType   |
      | Cash Credit        | <ProductType> | <ApplicationStage> | <FinalStage> | <ApplicantType> | <Category> |     | bank_credit_card_details.xlsx | bank_details               | 70                                | <CustomerType> | <RelationshipType> |
      | Current Account    | <ProductType> | <ApplicationStage> | <FinalStage> | <ApplicantType> | <Category> |     | bank_credit_card_details.xlsx | bank_details               | 70                                | <CustomerType> | <RelationshipType> |
      | KCC Account        | <ProductType> | <ApplicationStage> | <FinalStage> | <ApplicantType> | <Category> |     | bank_credit_card_details.xlsx | bank_details               | 70                                | <CustomerType> | <RelationshipType> |
      | Over Draft Account | <ProductType> | <ApplicationStage> | <FinalStage> | <ApplicantType> | <Category> |     | bank_credit_card_details.xlsx | bank_details               | 70                                | <CustomerType> | <RelationshipType> |
      | Saving Account     | <ProductType> | <ApplicationStage> | <FinalStage> | <ApplicantType> | <Category> |     | bank_credit_card_details.xlsx | bank_details               | 70                                | <CustomerType> | <RelationshipType> |

#${ProductType:["IAF","IHF"]}
# ${ApplicationStage:["Sourcing"]}
# ${FinalStage:["Sourcing","Login Acceptance","DDE","Reconsideration","Credit Approval"]}
# ${ApplicantType:["indiv"]}
# ${CustomerType:["Co-applicant","Guarantor"]}
# ${RelationshipType:["Friend"]}
    @Islamic
    
    @Release
    @5FebM5Fix
    Examples:
      | AccountType        | ProductType   | ApplicationStage   | FinalStage   | ApplicantType   | Category | Key | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum | CustomerType   | RelationshipType   |
      | Cash Credit        | <ProductType> | <ApplicationStage> | <FinalStage> | <ApplicantType> |          |     | bank_credit_card_details.xlsx | bank_details               | 70                                | <CustomerType> | <RelationshipType> |
      | Current Account    | <ProductType> | <ApplicationStage> | <FinalStage> | <ApplicantType> |          |     | bank_credit_card_details.xlsx | bank_details               | 70                                | <CustomerType> | <RelationshipType> |
      | KCC Account        | <ProductType> | <ApplicationStage> | <FinalStage> | <ApplicantType> |          |     | bank_credit_card_details.xlsx | bank_details               | 70                                | <CustomerType> | <RelationshipType> |
      | Over Draft Account | <ProductType> | <ApplicationStage> | <FinalStage> | <ApplicantType> |          |     | bank_credit_card_details.xlsx | bank_details               | 70                                | <CustomerType> | <RelationshipType> |
      | Saving Account     | <ProductType> | <ApplicationStage> | <FinalStage> | <ApplicantType> |          |     | bank_credit_card_details.xlsx | bank_details               | 70                                | <CustomerType> | <RelationshipType> |


  #FeatureID-ACAUTOCAS-15327
  @AuthoredBy-aryan.jain
  @ImplementedBy-aryan.jain
  @Perishable
Scenario Outline: ACAUTOCAS-18102: Validate bank details <FieldName> is in view mode at hold stage for <AccountType> at <ApplicationStage> of <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user navigates to personal information page of "<ApplicationStage>"
    And user clicks on Bank and Credit Details
    And user deletes existing bank details
    And user click on plus sign of Bank Details
    And user reads data from the excel file "<BankCreditCardWB>" under sheet "<BankCreditCard_bankDetails>" and row <BankCreditCard_bankDetails_rowNum>
    And user selects account Type As "<AccountType>" at Bank and Credit Details
    And user fills bank details without account title
    And user fill account title
    And user clicks on save button in Bank details
    And user throw the application to the hold grid for "<ApplicationStage>"
    When user search for an application present of "<ProductType>" application at "<ApplicationStage>" stage in hold application grid
    And user navigates to personal information page of "<ApplicationStage>"
    And user clicks on Bank and Credit Details
    Then "<FieldName>" should be present in view mode
    # ${ProductType : ["PF","MAL","HL","LAP","CV","MHL","FE","EDU","AGRL","JLG","CEQ","MULF","BD","CashCred","BL","LC","BG"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Credit Approval","Post Approval"]}
    # ${ApplicantType:["indiv","nonindiv"]}
    
#    @Release
#    Examples:
#      | AccountType        | ProductType   | ApplicationStage   | ApplicantType   | Category | Key | FieldName                      | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum |
#      | Cash Credit        | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Checkbox                       | bank_credit_card_details.xlsx | bank_details               | 70                                |
#      | Cash Credit        | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Bank Name                      | bank_credit_card_details.xlsx | bank_details               | 70                                |
#      | Cash Credit        | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Branch Name                    | bank_credit_card_details.xlsx | bank_details               | 70                                |
#      | Cash Credit        | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | IFSC                           | bank_credit_card_details.xlsx | bank_details               | 70                                |
#      | Cash Credit        | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Type of Account                | bank_credit_card_details.xlsx | bank_details               | 70                                |
#      | Cash Credit        | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Account Opening Date           | bank_credit_card_details.xlsx | bank_details               | 70                                |
#      | Cash Credit        | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Nature Of Bank Account         | bank_credit_card_details.xlsx | bank_details               | 70                                |
#      | Cash Credit        | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Account Status                 | bank_credit_card_details.xlsx | bank_details               | 70                                |
#      | Cash Credit        | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Source System                  | bank_credit_card_details.xlsx | bank_details               | 70                                |
#      | Cash Credit        | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | No. of Months Account Held     | bank_credit_card_details.xlsx | bank_details               | 70                                |
#      | Cash Credit        | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Default Account                | bank_credit_card_details.xlsx | bank_details               | 70                                |
#      | Cash Credit        | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Salary Account                 | bank_credit_card_details.xlsx | bank_details               | 70                                |
#      | Cash Credit        | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Repayment Account              | bank_credit_card_details.xlsx | bank_details               | 70                                |
#      | Cash Credit        | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | No. of Inward Cheques Returned | bank_credit_card_details.xlsx | bank_details               | 70                                |
#      | Cash Credit        | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Consolidated Average Balance   | bank_credit_card_details.xlsx | bank_details               | 70                                |
#      | Cash Credit        | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Account Number                 | bank_credit_card_details.xlsx | bank_details               | 70                                |
#      | Cash Credit        | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Average Bank Balance           | bank_credit_card_details.xlsx | bank_details               | 70                                |
#      | Current Account    | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Checkbox                       | bank_credit_card_details.xlsx | bank_details               | 70                                |
#      | Current Account    | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Bank Name                      | bank_credit_card_details.xlsx | bank_details               | 70                                |
#      | Current Account    | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Branch Name                    | bank_credit_card_details.xlsx | bank_details               | 70                                |
#      | Current Account    | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | IFSC                           | bank_credit_card_details.xlsx | bank_details               | 70                                |
#      | Current Account    | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Type of Account                | bank_credit_card_details.xlsx | bank_details               | 70                                |
#      | Current Account    | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Account Opening Date           | bank_credit_card_details.xlsx | bank_details               | 70                                |
#      | Current Account    | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Nature Of Bank Account         | bank_credit_card_details.xlsx | bank_details               | 70                                |
#      | Current Account    | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Account Status                 | bank_credit_card_details.xlsx | bank_details               | 70                                |
#      | Current Account    | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Source System                  | bank_credit_card_details.xlsx | bank_details               | 70                                |
#      | Current Account    | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | No. of Months Account Held     | bank_credit_card_details.xlsx | bank_details               | 70                                |
#      | Current Account    | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Default Account                | bank_credit_card_details.xlsx | bank_details               | 70                                |
#      | Current Account    | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Salary Account                 | bank_credit_card_details.xlsx | bank_details               | 70                                |
#      | Current Account    | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Repayment Account              | bank_credit_card_details.xlsx | bank_details               | 70                                |
#      | Current Account    | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | No. of Inward Cheques Returned | bank_credit_card_details.xlsx | bank_details               | 70                                |
#      | Current Account    | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Consolidated Average Balance   | bank_credit_card_details.xlsx | bank_details               | 70                                |
#      | Current Account    | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Account Number                 | bank_credit_card_details.xlsx | bank_details               | 70                                |
#      | Current Account    | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Average Bank Balance           | bank_credit_card_details.xlsx | bank_details               | 70                                |
#      | KCC Account        | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Checkbox                       | bank_credit_card_details.xlsx | bank_details               | 70                                |
#      | KCC Account        | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Bank Name                      | bank_credit_card_details.xlsx | bank_details               | 70                                |
#      | KCC Account        | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Branch Name                    | bank_credit_card_details.xlsx | bank_details               | 70                                |
#      | KCC Account        | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | IFSC                           | bank_credit_card_details.xlsx | bank_details               | 70                                |
#      | KCC Account        | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Type of Account                | bank_credit_card_details.xlsx | bank_details               | 70                                |
#      | KCC Account        | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Account Opening Date           | bank_credit_card_details.xlsx | bank_details               | 70                                |
#      | KCC Account        | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Nature Of Bank Account         | bank_credit_card_details.xlsx | bank_details               | 70                                |
#      | KCC Account        | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Account Status                 | bank_credit_card_details.xlsx | bank_details               | 70                                |
#      | KCC Account        | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Source System                  | bank_credit_card_details.xlsx | bank_details               | 70                                |
#      | KCC Account        | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | No. of Months Account Held     | bank_credit_card_details.xlsx | bank_details               | 70                                |
#      | KCC Account        | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Default Account                | bank_credit_card_details.xlsx | bank_details               | 70                                |
#      | KCC Account        | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Salary Account                 | bank_credit_card_details.xlsx | bank_details               | 70                                |
#      | KCC Account        | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Repayment Account              | bank_credit_card_details.xlsx | bank_details               | 70                                |
#      | KCC Account        | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | No. of Inward Cheques Returned | bank_credit_card_details.xlsx | bank_details               | 70                                |
#      | KCC Account        | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Consolidated Average Balance   | bank_credit_card_details.xlsx | bank_details               | 70                                |
#      | KCC Account        | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Account Number                 | bank_credit_card_details.xlsx | bank_details               | 70                                |
#      | KCC Account        | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Average Bank Balance           | bank_credit_card_details.xlsx | bank_details               | 70                                |
#      | Over Draft Account | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Checkbox                       | bank_credit_card_details.xlsx | bank_details               | 70                                |
#      | Over Draft Account | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Bank Name                      | bank_credit_card_details.xlsx | bank_details               | 70                                |
#      | Over Draft Account | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Branch Name                    | bank_credit_card_details.xlsx | bank_details               | 70                                |
#      | Over Draft Account | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | IFSC                           | bank_credit_card_details.xlsx | bank_details               | 70                                |
#      | Over Draft Account | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Type of Account                | bank_credit_card_details.xlsx | bank_details               | 70                                |
#      | Over Draft Account | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Account Opening Date           | bank_credit_card_details.xlsx | bank_details               | 70                                |
#      | Over Draft Account | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Nature Of Bank Account         | bank_credit_card_details.xlsx | bank_details               | 70                                |
#      | Over Draft Account | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Account Status                 | bank_credit_card_details.xlsx | bank_details               | 70                                |
#      | Over Draft Account | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Source System                  | bank_credit_card_details.xlsx | bank_details               | 70                                |
#      | Over Draft Account | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | No. of Months Account Held     | bank_credit_card_details.xlsx | bank_details               | 70                                |
#      | Over Draft Account | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Default Account                | bank_credit_card_details.xlsx | bank_details               | 70                                |
#      | Over Draft Account | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Salary Account                 | bank_credit_card_details.xlsx | bank_details               | 70                                |
#      | Over Draft Account | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Repayment Account              | bank_credit_card_details.xlsx | bank_details               | 70                                |
#      | Over Draft Account | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | No. of Inward Cheques Returned | bank_credit_card_details.xlsx | bank_details               | 70                                |
#      | Over Draft Account | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Consolidated Average Balance   | bank_credit_card_details.xlsx | bank_details               | 70                                |
#      | Over Draft Account | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Account Number                 | bank_credit_card_details.xlsx | bank_details               | 70                                |
#      | Over Draft Account | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Average Bank Balance           | bank_credit_card_details.xlsx | bank_details               | 70                                |
#      | Saving Account     | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Checkbox                       | bank_credit_card_details.xlsx | bank_details               | 70                                |
#      | Saving Account     | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Bank Name                      | bank_credit_card_details.xlsx | bank_details               | 70                                |
#      | Saving Account     | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Branch Name                    | bank_credit_card_details.xlsx | bank_details               | 70                                |
#      | Saving Account     | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | IFSC                           | bank_credit_card_details.xlsx | bank_details               | 70                                |
#      | Saving Account     | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Type of Account                | bank_credit_card_details.xlsx | bank_details               | 70                                |
#      | Saving Account     | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Account Opening Date           | bank_credit_card_details.xlsx | bank_details               | 70                                |
#      | Saving Account     | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Nature Of Bank Account         | bank_credit_card_details.xlsx | bank_details               | 70                                |
#      | Saving Account     | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Account Status                 | bank_credit_card_details.xlsx | bank_details               | 70                                |
#      | Saving Account     | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Source System                  | bank_credit_card_details.xlsx | bank_details               | 70                                |
#      | Saving Account     | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | No. of Months Account Held     | bank_credit_card_details.xlsx | bank_details               | 70                                |
#      | Saving Account     | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Default Account                | bank_credit_card_details.xlsx | bank_details               | 70                                |
#      | Saving Account     | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Salary Account                 | bank_credit_card_details.xlsx | bank_details               | 70                                |
#      | Saving Account     | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Repayment Account              | bank_credit_card_details.xlsx | bank_details               | 70                                |
#      | Saving Account     | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | No. of Inward Cheques Returned | bank_credit_card_details.xlsx | bank_details               | 70                                |
#      | Saving Account     | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Consolidated Average Balance   | bank_credit_card_details.xlsx | bank_details               | 70                                |
#      | Saving Account     | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Account Number                 | bank_credit_card_details.xlsx | bank_details               | 70                                |
#      | Saving Account     | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Average Bank Balance           | bank_credit_card_details.xlsx | bank_details               | 70                                |

    # ${ProductType:["IPF"]}
    # ${Category:["bonds","metals","shares"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${ApplicantType:["indiv"]}
    @Islamic
    
    @Release
    Examples:
      | AccountType        | ProductType   | ApplicationStage   | ApplicantType   | Category   | Key | FieldName                      | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum |
      | Cash Credit        | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Checkbox                       | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | Cash Credit        | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Bank Name                      | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | Cash Credit        | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Branch Name                    | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | Cash Credit        | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | IFSC                           | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | Cash Credit        | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Type of Account                | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | Cash Credit        | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Account Opening Date           | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | Cash Credit        | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Nature Of Bank Account         | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | Cash Credit        | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Account Status                 | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | Cash Credit        | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Source System                  | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | Cash Credit        | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | No. of Months Account Held     | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | Cash Credit        | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Default Account                | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | Cash Credit        | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Salary Account                 | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | Cash Credit        | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Repayment Account              | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | Cash Credit        | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | No. of Inward Cheques Returned | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | Cash Credit        | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Consolidated Average Balance   | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | Cash Credit        | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Account Number                 | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | Cash Credit        | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Average Bank Balance           | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | Current Account    | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Checkbox                       | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | Current Account    | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Bank Name                      | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | Current Account    | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Branch Name                    | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | Current Account    | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | IFSC                           | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | Current Account    | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Type of Account                | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | Current Account    | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Account Opening Date           | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | Current Account    | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Nature Of Bank Account         | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | Current Account    | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Account Status                 | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | Current Account    | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Source System                  | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | Current Account    | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | No. of Months Account Held     | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | Current Account    | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Default Account                | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | Current Account    | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Salary Account                 | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | Current Account    | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Repayment Account              | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | Current Account    | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | No. of Inward Cheques Returned | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | Current Account    | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Consolidated Average Balance   | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | Current Account    | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Account Number                 | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | Current Account    | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Average Bank Balance           | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | KCC Account        | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Checkbox                       | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | KCC Account        | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Bank Name                      | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | KCC Account        | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Branch Name                    | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | KCC Account        | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | IFSC                           | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | KCC Account        | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Type of Account                | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | KCC Account        | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Account Opening Date           | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | KCC Account        | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Nature Of Bank Account         | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | KCC Account        | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Account Status                 | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | KCC Account        | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Source System                  | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | KCC Account        | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | No. of Months Account Held     | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | KCC Account        | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Default Account                | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | KCC Account        | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Salary Account                 | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | KCC Account        | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Repayment Account              | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | KCC Account        | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | No. of Inward Cheques Returned | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | KCC Account        | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Consolidated Average Balance   | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | KCC Account        | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Account Number                 | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | KCC Account        | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Average Bank Balance           | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | Over Draft Account | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Checkbox                       | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | Over Draft Account | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Bank Name                      | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | Over Draft Account | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Branch Name                    | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | Over Draft Account | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | IFSC                           | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | Over Draft Account | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Type of Account                | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | Over Draft Account | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Account Opening Date           | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | Over Draft Account | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Nature Of Bank Account         | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | Over Draft Account | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Account Status                 | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | Over Draft Account | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Source System                  | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | Over Draft Account | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | No. of Months Account Held     | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | Over Draft Account | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Default Account                | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | Over Draft Account | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Salary Account                 | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | Over Draft Account | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Repayment Account              | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | Over Draft Account | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | No. of Inward Cheques Returned | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | Over Draft Account | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Consolidated Average Balance   | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | Over Draft Account | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Account Number                 | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | Over Draft Account | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Average Bank Balance           | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | Saving Account     | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Checkbox                       | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | Saving Account     | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Bank Name                      | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | Saving Account     | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Branch Name                    | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | Saving Account     | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | IFSC                           | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | Saving Account     | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Type of Account                | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | Saving Account     | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Account Opening Date           | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | Saving Account     | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Nature Of Bank Account         | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | Saving Account     | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Account Status                 | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | Saving Account     | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Source System                  | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | Saving Account     | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | No. of Months Account Held     | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | Saving Account     | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Default Account                | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | Saving Account     | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Salary Account                 | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | Saving Account     | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Repayment Account              | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | Saving Account     | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | No. of Inward Cheques Returned | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | Saving Account     | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Consolidated Average Balance   | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | Saving Account     | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Account Number                 | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | Saving Account     | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | Average Bank Balance           | bank_credit_card_details.xlsx | bank_details               | 70                                |

    #${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Reconsideration","Credit Approval","Post Approval"]}
    # ${ApplicantType:["indiv"]}
    @Islamic
    
    @Release
    Examples:
      | AccountType        | ProductType   | ApplicationStage   | ApplicantType   | Category | Key | FieldName                      | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum |
      | Cash Credit        | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Checkbox                       | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | Cash Credit        | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Bank Name                      | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | Cash Credit        | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Branch Name                    | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | Cash Credit        | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | IFSC                           | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | Cash Credit        | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Type of Account                | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | Cash Credit        | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Account Opening Date           | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | Cash Credit        | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Nature Of Bank Account         | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | Cash Credit        | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Account Status                 | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | Cash Credit        | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Source System                  | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | Cash Credit        | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | No. of Months Account Held     | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | Cash Credit        | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Default Account                | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | Cash Credit        | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Salary Account                 | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | Cash Credit        | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Repayment Account              | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | Cash Credit        | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | No. of Inward Cheques Returned | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | Cash Credit        | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Consolidated Average Balance   | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | Cash Credit        | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Account Number                 | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | Cash Credit        | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Average Bank Balance           | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | Current Account    | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Checkbox                       | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | Current Account    | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Bank Name                      | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | Current Account    | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Branch Name                    | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | Current Account    | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | IFSC                           | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | Current Account    | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Type of Account                | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | Current Account    | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Account Opening Date           | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | Current Account    | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Nature Of Bank Account         | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | Current Account    | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Account Status                 | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | Current Account    | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Source System                  | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | Current Account    | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | No. of Months Account Held     | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | Current Account    | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Default Account                | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | Current Account    | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Salary Account                 | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | Current Account    | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Repayment Account              | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | Current Account    | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | No. of Inward Cheques Returned | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | Current Account    | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Consolidated Average Balance   | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | Current Account    | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Account Number                 | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | Current Account    | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Average Bank Balance           | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | KCC Account        | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Checkbox                       | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | KCC Account        | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Bank Name                      | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | KCC Account        | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Branch Name                    | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | KCC Account        | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | IFSC                           | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | KCC Account        | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Type of Account                | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | KCC Account        | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Account Opening Date           | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | KCC Account        | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Nature Of Bank Account         | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | KCC Account        | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Account Status                 | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | KCC Account        | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Source System                  | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | KCC Account        | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | No. of Months Account Held     | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | KCC Account        | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Default Account                | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | KCC Account        | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Salary Account                 | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | KCC Account        | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Repayment Account              | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | KCC Account        | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | No. of Inward Cheques Returned | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | KCC Account        | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Consolidated Average Balance   | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | KCC Account        | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Account Number                 | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | KCC Account        | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Average Bank Balance           | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | Over Draft Account | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Checkbox                       | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | Over Draft Account | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Bank Name                      | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | Over Draft Account | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Branch Name                    | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | Over Draft Account | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | IFSC                           | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | Over Draft Account | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Type of Account                | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | Over Draft Account | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Account Opening Date           | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | Over Draft Account | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Nature Of Bank Account         | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | Over Draft Account | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Account Status                 | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | Over Draft Account | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Source System                  | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | Over Draft Account | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | No. of Months Account Held     | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | Over Draft Account | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Default Account                | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | Over Draft Account | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Salary Account                 | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | Over Draft Account | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Repayment Account              | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | Over Draft Account | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | No. of Inward Cheques Returned | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | Over Draft Account | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Consolidated Average Balance   | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | Over Draft Account | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Account Number                 | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | Over Draft Account | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Average Bank Balance           | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | Saving Account     | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Checkbox                       | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | Saving Account     | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Bank Name                      | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | Saving Account     | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Branch Name                    | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | Saving Account     | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | IFSC                           | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | Saving Account     | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Type of Account                | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | Saving Account     | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Account Opening Date           | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | Saving Account     | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Nature Of Bank Account         | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | Saving Account     | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Account Status                 | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | Saving Account     | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Source System                  | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | Saving Account     | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | No. of Months Account Held     | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | Saving Account     | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Default Account                | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | Saving Account     | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Salary Account                 | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | Saving Account     | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Repayment Account              | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | Saving Account     | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | No. of Inward Cheques Returned | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | Saving Account     | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Consolidated Average Balance   | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | Saving Account     | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Account Number                 | bank_credit_card_details.xlsx | bank_details               | 70                                |
      | Saving Account     | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Average Bank Balance           | bank_credit_card_details.xlsx | bank_details               | 70                                |


