@Epic-Applicant_Information
@AuthoredBy-harshprit.kumar
@ReviewedBy-harshprit.kumar
@Reconcile
@AppInfoAdoption
@Experiment
  #FeatureID-ACAUTOCAS-11450
# ${ApplicantType:["indiv"]}
Feature: Validation Of Mandatory Fields Of Credit Card Details Without Save

  Scenario Outline: ACAUTOCAS-3817:  Validating mandatory field <field> in credit card details with <attribute> without save
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
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | validity | field       | attribute                       | SourceDataFile       | SheetName | RowNumber | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | BankCreditCardWB              | BankCreditCard_cardDetails | BankCreditCard_cardDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | error    | Card Number | less than 13 digits             | LoginDetailsCAS.xlsx | LoginData | 1         | personal_information.xlsx | home              | 1                        | bank_credit_card_details.xlsx | card_details               | 4                                 |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | error    | Card Number | more than 19 digits             | LoginDetailsCAS.xlsx | LoginData | 1         | personal_information.xlsx | home              | 1                        | bank_credit_card_details.xlsx | card_details               | 5                                 |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | no error | Card Number | valid value                     | LoginDetailsCAS.xlsx | LoginData | 1         | personal_information.xlsx | home              | 1                        | bank_credit_card_details.xlsx | card_details               | 0                                 |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | no error | Card Number | digits length between 13 and 19 | LoginDetailsCAS.xlsx | LoginData | 1         | personal_information.xlsx | home              | 1                        | bank_credit_card_details.xlsx | card_details               | 0                                 |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | error    | Card Issuer | data not present in master data | LoginDetailsCAS.xlsx | LoginData | 1         | personal_information.xlsx | home              | 1                        | bank_credit_card_details.xlsx | card_details               | 10                                |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | no error | Card Issuer | data present in master data     | LoginDetailsCAS.xlsx | LoginData | 1         | personal_information.xlsx | home              | 1                        | bank_credit_card_details.xlsx | card_details               | 0                                 |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | no error | Card Number | characters                      | LoginDetailsCAS.xlsx | LoginData | 1         | personal_information.xlsx | home              | 1                        | bank_credit_card_details.xlsx | card_details               | 6                                 |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | no error | Card Number | both digits and characters      | LoginDetailsCAS.xlsx | LoginData | 1         | personal_information.xlsx | home              | 1                        | bank_credit_card_details.xlsx | card_details               | 7                                 |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | error    | Card Number | special characters              | LoginDetailsCAS.xlsx | LoginData | 1         | personal_information.xlsx | home              | 1                        | bank_credit_card_details.xlsx | card_details               | 8                                 |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | error    | Card Number | space                           | LoginDetailsCAS.xlsx | LoginData | 1         | personal_information.xlsx | home              | 1                        | bank_credit_card_details.xlsx | card_details               | 9                                 |
    @Islamic
    @Release
@Part-1
    @ImplementedBy-akash.bansal
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | validity | field       | attribute                       | SourceDataFile       | SheetName | RowNumber | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | BankCreditCardWB              | BankCreditCard_cardDetails | BankCreditCard_cardDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | error    | Card Number | less than 13 digits             | LoginDetailsCAS.xlsx | LoginData | 0         | personal_information.xlsx | home              | 1                        | bank_credit_card_details.xlsx | card_details               | 4                                 |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | error    | Card Number | more than 19 digits             | LoginDetailsCAS.xlsx | LoginData | 1         | personal_information.xlsx | home              | 1                        | bank_credit_card_details.xlsx | card_details               | 5                                 |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | no error | Card Number | valid value                     | LoginDetailsCAS.xlsx | LoginData | 1         | personal_information.xlsx | home              | 1                        | bank_credit_card_details.xlsx | card_details               | 0                                 |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | no error | Card Number | digits length between 13 and 19 | LoginDetailsCAS.xlsx | LoginData | 1         | personal_information.xlsx | home              | 1                        | bank_credit_card_details.xlsx | card_details               | 0                                 |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | error    | Card Issuer | data not present in master data | LoginDetailsCAS.xlsx | LoginData | 1         | personal_information.xlsx | home              | 1                        | bank_credit_card_details.xlsx | card_details               | 10                                |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | no error | Card Issuer | data present in master data     | LoginDetailsCAS.xlsx | LoginData | 1         | personal_information.xlsx | home              | 1                        | bank_credit_card_details.xlsx | card_details               | 0                                 |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | no error | Card Number | characters                      | LoginDetailsCAS.xlsx | LoginData | 1         | personal_information.xlsx | home              | 1                        | bank_credit_card_details.xlsx | card_details               | 6                                 |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | no error | Card Number | both digits and characters      | LoginDetailsCAS.xlsx | LoginData | 1         | personal_information.xlsx | home              | 1                        | bank_credit_card_details.xlsx | card_details               | 7                                 |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | error    | Card Number | special characters              | LoginDetailsCAS.xlsx | LoginData | 1         | personal_information.xlsx | home              | 1                        | bank_credit_card_details.xlsx | card_details               | 8                                 |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | error    | Card Number | space                           | LoginDetailsCAS.xlsx | LoginData | 1         | personal_information.xlsx | home              | 1                        | bank_credit_card_details.xlsx | card_details               | 9                                 |
    @Islamic
    @Release
@Part-1
    @ImplementedBy-akash.bansal
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category:["bonds"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | key | validity | field       | attribute                       | SourceDataFile       | SheetName | RowNumber | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | BankCreditCardWB              | BankCreditCard_cardDetails | BankCreditCard_cardDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | error    | Card Number | less than 13 digits             | LoginDetailsCAS.xlsx | LoginData | 1         | personal_information.xlsx | home              | 1                        | bank_credit_card_details.xlsx | card_details               | 4                                 |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | error    | Card Number | more than 19 digits             | LoginDetailsCAS.xlsx | LoginData | 1         | personal_information.xlsx | home              | 1                        | bank_credit_card_details.xlsx | card_details               | 5                                 |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | no error | Card Number | valid value                     | LoginDetailsCAS.xlsx | LoginData | 1         | personal_information.xlsx | home              | 1                        | bank_credit_card_details.xlsx | card_details               | 0                                 |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | no error | Card Number | digits length between 13 and 19 | LoginDetailsCAS.xlsx | LoginData | 1         | personal_information.xlsx | home              | 1                        | bank_credit_card_details.xlsx | card_details               | 0                                 |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | error    | Card Issuer | data not present in master data | LoginDetailsCAS.xlsx | LoginData | 1         | personal_information.xlsx | home              | 1                        | bank_credit_card_details.xlsx | card_details               | 10                                |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | no error | Card Issuer | data present in master data     | LoginDetailsCAS.xlsx | LoginData | 1         | personal_information.xlsx | home              | 1                        | bank_credit_card_details.xlsx | card_details               | 0                                 |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | no error | Card Number | characters                      | LoginDetailsCAS.xlsx | LoginData | 1         | personal_information.xlsx | home              | 1                        | bank_credit_card_details.xlsx | card_details               | 6                                 |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | no error | Card Number | both digits and characters      | LoginDetailsCAS.xlsx | LoginData | 1         | personal_information.xlsx | home              | 1                        | bank_credit_card_details.xlsx | card_details               | 7                                 |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | error    | Card Number | special characters              | LoginDetailsCAS.xlsx | LoginData | 1         | personal_information.xlsx | home              | 1                        | bank_credit_card_details.xlsx | card_details               | 8                                 |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | error    | Card Number | space                           | LoginDetailsCAS.xlsx | LoginData | 1         | personal_information.xlsx | home              | 1                        | bank_credit_card_details.xlsx | card_details               | 9                                 |
    @NotImplemented
       # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | validity | field       | attribute                       | SourceDataFile       | SheetName | RowNumber | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | BankCreditCardWB              | BankCreditCard_cardDetails | BankCreditCard_cardDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | error    | Card Number | less than 13 digits             | LoginDetailsCAS.xlsx | LoginData | 1         | personal_information.xlsx | home              | 1                        | bank_credit_card_details.xlsx | card_details               | 4                                 |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | error    | Card Number | more than 19 digits             | LoginDetailsCAS.xlsx | LoginData | 1         | personal_information.xlsx | home              | 1                        | bank_credit_card_details.xlsx | card_details               | 5                                 |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | no error | Card Number | valid value                     | LoginDetailsCAS.xlsx | LoginData | 1         | personal_information.xlsx | home              | 1                        | bank_credit_card_details.xlsx | card_details               | 0                                 |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | no error | Card Number | digits length between 13 and 19 | LoginDetailsCAS.xlsx | LoginData | 1         | personal_information.xlsx | home              | 1                        | bank_credit_card_details.xlsx | card_details               | 0                                 |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | error    | Card Issuer | data not present in master data | LoginDetailsCAS.xlsx | LoginData | 1         | personal_information.xlsx | home              | 1                        | bank_credit_card_details.xlsx | card_details               | 10                                |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | no error | Card Issuer | data present in master data     | LoginDetailsCAS.xlsx | LoginData | 1         | personal_information.xlsx | home              | 1                        | bank_credit_card_details.xlsx | card_details               | 0                                 |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | no error | Card Number | characters                      | LoginDetailsCAS.xlsx | LoginData | 1         | personal_information.xlsx | home              | 1                        | bank_credit_card_details.xlsx | card_details               | 6                                 |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | no error | Card Number | both digits and characters      | LoginDetailsCAS.xlsx | LoginData | 1         | personal_information.xlsx | home              | 1                        | bank_credit_card_details.xlsx | card_details               | 7                                 |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | error    | Card Number | special characters              | LoginDetailsCAS.xlsx | LoginData | 1         | personal_information.xlsx | home              | 1                        | bank_credit_card_details.xlsx | card_details               | 8                                 |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | error    | Card Number | space                           | LoginDetailsCAS.xlsx | LoginData | 1         | personal_information.xlsx | home              | 1                        | bank_credit_card_details.xlsx | card_details               | 9                                 |

