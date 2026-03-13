@Epic-Applicant_Information
@AuthoredBy-utkarsh.tiwari
@Reconciled
@AppInfoAdoption

  #${ApplicantType:["indiv","nonindiv"]}
  #FeatureID-ACAUTOCAS-191
Feature: Mandatory Field Validation In Bank Detail Without Save

  Scenario Outline: ACAUTOCAS-3808:  Insert the account number with <var>
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user navigates to applicant details page of "<ApplicationStage>"
    When click on view edit detailed info
    And user reads data from the excel file "<BankCreditCardWB>" under sheet "<BankCreditCard_bankDetails>" and row <BankCreditCard_bankDetails_rowNum>
    And user clicks on Bank and Credit Details
    And user delete existing bank details
    And user click on plus sign of Bank Details
    And user enters bank details without "Add View Bank Detail"
    Then Account number with "<var>" should "<var2>"
    @Conventional
    @Release @Part-1
    @ImplementedBy-utkarsh.tiwari
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
   # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | var                             | var2   | SourceDataFile       |  | SheetName | RowNumber | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | with space                      | throws | LoginDetailsCAS.xlsx |  | LoginData | 0         | bank_credit_card_details.xlsx | bank_details               | 5                                 |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | with negative number            | throws | LoginDetailsCAS.xlsx |  | LoginData | 0         | bank_credit_card_details.xlsx | bank_details               | 4                                 |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | with both digits and characters | throws | LoginDetailsCAS.xlsx |  | LoginData | 0         | bank_credit_card_details.xlsx | bank_details               | 3                                 |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | special characters              | throws | LoginDetailsCAS.xlsx |  | LoginData | 0         | bank_credit_card_details.xlsx | bank_details               | 2                                 |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | maximum length                  | throws | LoginDetailsCAS.xlsx |  | LoginData | 0         | bank_credit_card_details.xlsx | bank_details               | 1                                 |

    @Islamic
    @Release
    @Part-1
    @ImplementedBy-utkarsh.tiwari
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category:["bonds"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | key | var                             | var2   | SourceDataFile       |  | SheetName | RowNumber | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | with space                      | throws | LoginDetailsCAS.xlsx |  | LoginData | 0         | bank_credit_card_details.xlsx | bank_details               | 5                                 |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | with negative number            | throws | LoginDetailsCAS.xlsx |  | LoginData | 0         | bank_credit_card_details.xlsx | bank_details               | 4                                 |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | with both digits and characters | throws | LoginDetailsCAS.xlsx |  | LoginData | 0         | bank_credit_card_details.xlsx | bank_details               | 3                                 |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | special characters              | throws | LoginDetailsCAS.xlsx |  | LoginData | 0         | bank_credit_card_details.xlsx | bank_details               | 2                                 |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | maximum length                  | throws | LoginDetailsCAS.xlsx |  | LoginData | 0         | bank_credit_card_details.xlsx | bank_details               | 1                                 |

    @Islamic
    @Release
    @Part-1
    @ImplementedBy-utkarsh.tiwari
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | var                             | var2   | SourceDataFile       |  | SheetName | RowNumber | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | with space                      | throws | LoginDetailsCAS.xlsx |  | LoginData | 0         | bank_credit_card_details.xlsx | bank_details               | 5                                 |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | with negative number            | throws | LoginDetailsCAS.xlsx |  | LoginData | 0         | bank_credit_card_details.xlsx | bank_details               | 4                                 |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | with both digits and characters | throws | LoginDetailsCAS.xlsx |  | LoginData | 0         | bank_credit_card_details.xlsx | bank_details               | 3                                 |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | special characters              | throws | LoginDetailsCAS.xlsx |  | LoginData | 0         | bank_credit_card_details.xlsx | bank_details               | 2                                 |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | maximum length                  | throws | LoginDetailsCAS.xlsx |  | LoginData | 0         | bank_credit_card_details.xlsx | bank_details               | 1                                 |
    @NotImplemented
    # ${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | var                             | var2                         | SourceDataFile       |  | SheetName | RowNumber | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | with space                      | work properly                | LoginDetailsCAS.xlsx |  | LoginData | 0         | bank_credit_card_details.xlsx | bank_details               | 5                                 |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | with negative number            | work properly                | LoginDetailsCAS.xlsx |  | LoginData | 0         | bank_credit_card_details.xlsx | bank_details               | 4                                 |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | with both digits and characters | work properly                | LoginDetailsCAS.xlsx |  | LoginData | 0         | bank_credit_card_details.xlsx | bank_details               | 3                                 |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | special characters              | display proper error message | LoginDetailsCAS.xlsx |  | LoginData | 0         | bank_credit_card_details.xlsx | bank_details               | 2                                 |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | maximum length                  | work properly                | LoginDetailsCAS.xlsx |  | LoginData | 0         | bank_credit_card_details.xlsx | bank_details               | 1                                 |

