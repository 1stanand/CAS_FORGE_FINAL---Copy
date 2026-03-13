@Epic-Applicant_Information
@AuthoredBy-harshprit.kumar
@ReviewedBy-harshprit.kumar
@ReviewedByDEV
@AppInfoAdoption

  #FeatureID-ACAUTOCAS-11450
# ${ApplicantType:["indiv"]}
Feature: Filling Credit Card Details

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0

  @FixedExp
  @Sanity
  Scenario Outline: ACAUTOCAS-3813:  Filling Credit card details with <mandatory_or_all> fields
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user navigates to applicant details page of "<ApplicationStage>"
    And click on view edit detailed info
    And user reads data from the excel file "<BankCreditCardWB>" under sheet "<BankCreditCard_cardDetails>" and row <BankCreditCard_cardDetails_rowNum>
    And user clicks on Bank and Credit Details
    When user adds credit card details with "<mandatory_or_all>" fields
    And user delete existing bank details
    Then credit card should be saved and added
    @Conventional
    @Release @Part-1
    @ImplementedBy-harshprit.kumar
    # ${ ProductType : ["PL","HL","AL","EDU","OMNI","CEQ","KCC","AGRL","FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | mandatory_or_all | BankCreditCardWB              | BankCreditCard_cardDetails | BankCreditCard_cardDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | all              | bank_credit_card_details.xlsx | card_details               | 0                                 |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | mandatory        | bank_credit_card_details.xlsx | card_details               | 1                                 |
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-akash.bansal
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | mandatory_or_all | BankCreditCardWB              | BankCreditCard_cardDetails | BankCreditCard_cardDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | all              | bank_credit_card_details.xlsx | card_details               | 0                                 |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | mandatory        | bank_credit_card_details.xlsx | card_details               | 1                                 |
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-akash.bansal
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category:["bonds"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | key | mandatory_or_all | BankCreditCardWB              | BankCreditCard_cardDetails | BankCreditCard_cardDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | all              | bank_credit_card_details.xlsx | card_details               | 0                                 |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | mandatory        | bank_credit_card_details.xlsx | card_details               | 1                                 |
    @NotImplemented
       # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | mandatory_or_all | BankCreditCardWB              | BankCreditCard_cardDetails | BankCreditCard_cardDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | all              | bank_credit_card_details.xlsx | card_details               | 0                                 |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | mandatory        | bank_credit_card_details.xlsx | card_details               | 1                                 |

  @Sanity
  Scenario Outline: ACAUTOCAS-3814:  Filling multiple Credit card details with mandatory fields
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user navigates to applicant details page of "<ApplicationStage>"
    And click on view edit detailed info
    And user clicks on Bank and Credit Details
    When user adds <num> credit card details with "<mandatory_or_all>" fields from file "<BankCreditCardWB>" under sheet "<BankCreditCard_cardDetails>" and starting row <startingRowNum>
    And user delete existing bank details
    Then credit card should be saved and added
    @Conventional
    @Release @Part-1
    @ImplementedBy-harshprit.kumar
    # ${ ProductType : ["PL","HL","AL","EDU","OMNI","CEQ","KCC","AGRL","FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | mandatory_or_all | num | startingRowNum | BankCreditCardWB              | BankCreditCard_cardDetails |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | all              | 3   | 19             | bank_credit_card_details.xlsx | card_details               |
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-akash.bansal
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | mandatory_or_all | num | startingRowNum | BankCreditCardWB              | BankCreditCard_cardDetails |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | all              | 3   | 19             | bank_credit_card_details.xlsx | card_details               |
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-akash.bansal
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category:["bonds"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | key | mandatory_or_all | num | startingRowNum | BankCreditCardWB              | BankCreditCard_cardDetails |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | all              | 3   | 19             | bank_credit_card_details.xlsx | card_details               |
    @NotImplemented
       # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | mandatory_or_all | num | startingRowNum | BankCreditCardWB              | BankCreditCard_cardDetails |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | all              | 3   | 19             | bank_credit_card_details.xlsx | card_details               |

  @Testing
  Scenario Outline: ACAUTOCAS-3815:  Deleting multiple Credit card details with mandatory fields
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user navigates to applicant details page of "<ApplicationStage>"
    And click on view edit detailed info
    And user clicks on Bank and Credit Details
    And user adds <num> credit card details with "<mandatory_or_all>" fields from file "<BankCreditCardWB>" under sheet "<BankCreditCard_cardDetails>" and starting row <startingRowNum>
    When user deletes <numOfDelete> credit card details
    Then credit card details should be deleted
    @Conventional
    @Release @Part-1
    @ImplementedBy-harshprit.kumar
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | mandatory_or_all | num | numOfDelete | startingRowNum | BankCreditCardWB              | BankCreditCard_cardDetails |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | all              | 3   | 3           | 19             | bank_credit_card_details.xlsx | card_details               |
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-akash.bansal
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | mandatory_or_all | num | numOfDelete | startingRowNum | BankCreditCardWB              | BankCreditCard_cardDetails |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | all              | 3   | 3           | 19             | bank_credit_card_details.xlsx | card_details               |
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-akash.bansal
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category:["bonds"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | key | mandatory_or_all | num | numOfDelete | startingRowNum | BankCreditCardWB              | BankCreditCard_cardDetails |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | all              | 3   | 3           | 19             | bank_credit_card_details.xlsx | card_details               |
    @NotImplemented
     # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | mandatory_or_all | num | numOfDelete | startingRowNum | BankCreditCardWB              | BankCreditCard_cardDetails |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | all              | 3   | 3           | 19             | bank_credit_card_details.xlsx | card_details               |
