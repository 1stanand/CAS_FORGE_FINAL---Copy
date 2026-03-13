@Epic-Applicant_Information
@AuthoredBy-utkarsh.tiwari
@ReviewedBy-None
@Reconciled
@ReviewedByDEV
@AppInfoAdoption
@longRun
@Experiment

  #${ApplicantType:["indiv","nonindiv"]}
  #FeatureID-ACAUTOCAS-191
Feature: Validate Bank Details on Bank Credit Card Page

  @FixedExp
   @Sanity
  Scenario Outline: ACAUTOCAS-3812:  <var> bank details <var2>
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user navigates to applicant details page of "<ApplicationStage>"
    When click on view edit detailed info
    And user reads data from the excel file "<BankCreditCardWB>" under sheet "<BankCreditCard_bankDetails>" and row <BankCreditCard_bankDetails_rowNum>
    And user clicks on Bank and Credit Details
    And user "<var>" bank details "<var2>" of Bank and Credit Card Details
    Then "<var3>" details should be <var>ed <var2>
    @Conventional
    @Release @Part-1
    @ImplementedBy-utkarsh.tiwari
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | var  | var2                  | var3     | SourceDataFile       | SheetName | RowNumber | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Add  | with all fields       |          | LoginDetailsCAS.xlsx | LoginData | 0         | bank_credit_card_details.xlsx | bank_details               | 0                                 |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Add  | with mandatory fields |          | LoginDetailsCAS.xlsx | LoginData | 0         | bank_credit_card_details.xlsx | bank_details               | 0                                 |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Edit |                       |          | LoginDetailsCAS.xlsx | LoginData | 0         | bank_credit_card_details.xlsx | bank_details               | 0                                 |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Add  |                       | Multiple | LoginDetailsCAS.xlsx | LoginData | 0         | bank_credit_card_details.xlsx | bank_details               | 0                                 |
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-akash.bansal
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | var  | var2                  | var3     | SourceDataFile       | SheetName | RowNumber | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Add  | with all fields       |          | LoginDetailsCAS.xlsx | LoginData | 0         | bank_credit_card_details.xlsx | bank_details               | 0                                 |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Add  | with mandatory fields |          | LoginDetailsCAS.xlsx | LoginData | 0         | bank_credit_card_details.xlsx | bank_details               | 0                                 |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Edit |                       |          | LoginDetailsCAS.xlsx | LoginData | 0         | bank_credit_card_details.xlsx | bank_details               | 0                                 |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Add  |                       | Multiple | LoginDetailsCAS.xlsx | LoginData | 0         | bank_credit_card_details.xlsx | bank_details               | 0                                 |
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-akash.bansal
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    # ${Category:["bonds"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | key | var  | var2                  | var3     | SourceDataFile       | SheetName | RowNumber | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Add  | with all fields       |          | LoginDetailsCAS.xlsx | LoginData | 0         | bank_credit_card_details.xlsx | bank_details               | 0                                 |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Add  | with mandatory fields |          | LoginDetailsCAS.xlsx | LoginData | 0         | bank_credit_card_details.xlsx | bank_details               | 0                                 |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Edit |                       |          | LoginDetailsCAS.xlsx | LoginData | 0         | bank_credit_card_details.xlsx | bank_details               | 0                                 |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Add  |                       | Multiple | LoginDetailsCAS.xlsx | LoginData | 0         | bank_credit_card_details.xlsx | bank_details               | 0                                 |
    @NotImplemented
      # ${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | var  | var2                  | var3     | SourceDataFile       | SheetName | RowNumber | BankCreditCardWB              | BankCreditCard_bankDetails | BankCreditCard_bankDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Add  | with all fields       |          | LoginDetailsCAS.xlsx | LoginData | 0         | bank_credit_card_details.xlsx | bank_details               | 0                                 |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Add  | with mandatory fields |          | LoginDetailsCAS.xlsx | LoginData | 0         | bank_credit_card_details.xlsx | bank_details               | 0                                 |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Edit |                       |          | LoginDetailsCAS.xlsx | LoginData | 0         | bank_credit_card_details.xlsx | bank_details               | 0                                 |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Add  |                       | Multiple | LoginDetailsCAS.xlsx | LoginData | 0         | bank_credit_card_details.xlsx | bank_details               | 0                                 |





