@Epic-Applicant_Information
@AuthoredBy-harshprit.kumar
@ReviewedBy-harshprit.kumar
@Reconcile
@AppInfoAdoption
@Experiment
#FeatureID-ACAUTOCAS-11450
#${ApplicantType:["indiv"]}
Feature: Validation Of Non Mandatory Fields Of Credit Card Details Without Save

  Scenario Outline: ACAUTOCAS-3818:  Validating non mandatory field <field> in credit card details with <attribute> without save
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user navigates to applicant details page of "<ApplicationStage>"
    And click on view edit detailed info
    And user reads data from the excel file "<BankCreditCardWB>" under sheet "<BankCreditCard_cardDetails>" and row <BankCreditCard_cardDetails_rowNum>
    And user clicks on Bank and Credit Details
    When user fills "<field>" with "<attribute>"
    And user delete existing bank details
    Then "<validity>" message should display around "<field>" field in credit card details
    @Conventional
    @Release @Part-1
    @ImplementedBy-harshprit.kumar
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | validity | field               | attribute                          | SourceDataFile       | SheetName | RowNumber | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | BankCreditCardWB              | BankCreditCard_cardDetails | BankCreditCard_cardDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | error    | Card Limit          | more than 18 digits                | LoginDetailsCAS.xlsx | LoginData | 0         | personal_information.xlsx | home              | 1                        | bank_credit_card_details.xlsx | card_details               | 11                                |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | error    | Card Limit          | characters                         | LoginDetailsCAS.xlsx | LoginData | 0         | personal_information.xlsx | home              | 1                        | bank_credit_card_details.xlsx | card_details               | 12                                |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | error    | Card Limit          | special characters                 | LoginDetailsCAS.xlsx | LoginData | 0         | personal_information.xlsx | home              | 1                        | bank_credit_card_details.xlsx | card_details               | 13                                |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | error    | Card Limit          | spaces                             | LoginDetailsCAS.xlsx | LoginData | 0         | personal_information.xlsx | home              | 1                        | bank_credit_card_details.xlsx | card_details               | 14                                |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | error    | Card Expiry         | expiry date less than current date | LoginDetailsCAS.xlsx | LoginData | 0         | personal_information.xlsx | home              | 1                        | bank_credit_card_details.xlsx | card_details               | 15                                |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | no error | Card Limit Currency | currency based on country          | LoginDetailsCAS.xlsx | LoginData | 0         | personal_information.xlsx | home              | 1                        | bank_credit_card_details.xlsx | card_details               | 16                                |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | no error | Card Limit          | upto 18 digits                     | LoginDetailsCAS.xlsx | LoginData | 0         | personal_information.xlsx | home              | 1                        | bank_credit_card_details.xlsx | card_details               | 17                                |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | no error | Card Limit          | upto 18 digits with decimal value  | LoginDetailsCAS.xlsx | LoginData | 0         | personal_information.xlsx | home              | 1                        | bank_credit_card_details.xlsx | card_details               | 18                                |
    @Islamic
    @Release
@Part-1
    @ImplementedBy-akash.bansal
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | validity | field               | attribute                          | SourceDataFile       | SheetName | RowNumber | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | BankCreditCardWB              | BankCreditCard_cardDetails | BankCreditCard_cardDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | error    | Card Limit          | more than 18 digits                | LoginDetailsCAS.xlsx | LoginData | 0         | personal_information.xlsx | home              | 1                        | bank_credit_card_details.xlsx | card_details               | 11                                |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | error    | Card Limit          | characters                         | LoginDetailsCAS.xlsx | LoginData | 0         | personal_information.xlsx | home              | 1                        | bank_credit_card_details.xlsx | card_details               | 12                                |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | error    | Card Limit          | special characters                 | LoginDetailsCAS.xlsx | LoginData | 0         | personal_information.xlsx | home              | 1                        | bank_credit_card_details.xlsx | card_details               | 13                                |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | error    | Card Limit          | spaces                             | LoginDetailsCAS.xlsx | LoginData | 0         | personal_information.xlsx | home              | 1                        | bank_credit_card_details.xlsx | card_details               | 14                                |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | error    | Card Expiry         | expiry date less than current date | LoginDetailsCAS.xlsx | LoginData | 0         | personal_information.xlsx | home              | 1                        | bank_credit_card_details.xlsx | card_details               | 15                                |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | no error | Card Limit Currency | currency based on country          | LoginDetailsCAS.xlsx | LoginData | 0         | personal_information.xlsx | home              | 1                        | bank_credit_card_details.xlsx | card_details               | 16                                |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | no error | Card Limit          | upto 18 digits                     | LoginDetailsCAS.xlsx | LoginData | 0         | personal_information.xlsx | home              | 1                        | bank_credit_card_details.xlsx | card_details               | 17                                |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | no error | Card Limit          | upto 18 digits with decimal value  | LoginDetailsCAS.xlsx | LoginData | 0         | personal_information.xlsx | home              | 1                        | bank_credit_card_details.xlsx | card_details               | 18                                |
    @Islamic
    @Release
@Part-1
    @ImplementedBy-akash.bansal
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category:["bonds"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | key | validity | field               | attribute                          | SourceDataFile       | SheetName | RowNumber | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | BankCreditCardWB              | BankCreditCard_cardDetails | BankCreditCard_cardDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | error    | Card Limit          | more than 18 digits                | LoginDetailsCAS.xlsx | LoginData | 0         | personal_information.xlsx | home              | 1                        | bank_credit_card_details.xlsx | card_details               | 11                                |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | error    | Card Limit          | characters                         | LoginDetailsCAS.xlsx | LoginData | 0         | personal_information.xlsx | home              | 1                        | bank_credit_card_details.xlsx | card_details               | 12                                |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | error    | Card Limit          | special characters                 | LoginDetailsCAS.xlsx | LoginData | 0         | personal_information.xlsx | home              | 1                        | bank_credit_card_details.xlsx | card_details               | 13                                |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | error    | Card Limit          | spaces                             | LoginDetailsCAS.xlsx | LoginData | 0         | personal_information.xlsx | home              | 1                        | bank_credit_card_details.xlsx | card_details               | 14                                |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | error    | Card Expiry         | expiry date less than current date | LoginDetailsCAS.xlsx | LoginData | 0         | personal_information.xlsx | home              | 1                        | bank_credit_card_details.xlsx | card_details               | 15                                |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | no error | Card Limit Currency | currency based on country          | LoginDetailsCAS.xlsx | LoginData | 0         | personal_information.xlsx | home              | 1                        | bank_credit_card_details.xlsx | card_details               | 16                                |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | no error | Card Limit          | upto 18 digits                     | LoginDetailsCAS.xlsx | LoginData | 0         | personal_information.xlsx | home              | 1                        | bank_credit_card_details.xlsx | card_details               | 17                                |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | no error | Card Limit          | upto 18 digits with decimal value  | LoginDetailsCAS.xlsx | LoginData | 0         | personal_information.xlsx | home              | 1                        | bank_credit_card_details.xlsx | card_details               | 18                                |
    @NotImplemented
       # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | validity | field               | attribute                          | SourceDataFile       | SheetName | RowNumber | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | BankCreditCardWB              | BankCreditCard_cardDetails | BankCreditCard_cardDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | error    | Card Limit          | more than 18 digits                | LoginDetailsCAS.xlsx | LoginData | 0         | personal_information.xlsx | home              | 1                        | bank_credit_card_details.xlsx | card_details               | 11                                |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | error    | Card Limit          | characters                         | LoginDetailsCAS.xlsx | LoginData | 0         | personal_information.xlsx | home              | 1                        | bank_credit_card_details.xlsx | card_details               | 12                                |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | error    | Card Limit          | special characters                 | LoginDetailsCAS.xlsx | LoginData | 0         | personal_information.xlsx | home              | 1                        | bank_credit_card_details.xlsx | card_details               | 13                                |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | error    | Card Limit          | spaces                             | LoginDetailsCAS.xlsx | LoginData | 0         | personal_information.xlsx | home              | 1                        | bank_credit_card_details.xlsx | card_details               | 14                                |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | error    | Card Expiry         | expiry date less than current date | LoginDetailsCAS.xlsx | LoginData | 0         | personal_information.xlsx | home              | 1                        | bank_credit_card_details.xlsx | card_details               | 15                                |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | no error | Card Limit Currency | currency based on country          | LoginDetailsCAS.xlsx | LoginData | 0         | personal_information.xlsx | home              | 1                        | bank_credit_card_details.xlsx | card_details               | 16                                |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | no error | Card Limit          | upto 18 digits                     | LoginDetailsCAS.xlsx | LoginData | 0         | personal_information.xlsx | home              | 1                        | bank_credit_card_details.xlsx | card_details               | 17                                |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | no error | Card Limit          | upto 18 digits with decimal value  | LoginDetailsCAS.xlsx | LoginData | 0         | personal_information.xlsx | home              | 1                        | bank_credit_card_details.xlsx | card_details               | 18                                |
