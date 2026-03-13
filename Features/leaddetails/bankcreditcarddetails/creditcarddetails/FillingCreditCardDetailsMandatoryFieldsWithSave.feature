@Epic-Applicant_Information
@AuthoredBy-harshprit.kumar
@ReviewedBy-harshprit.kumar
@ReviewedByDEV
@AppInfoAdoption
@Experiment
#FeatureID-ACAUTOCAS-11450
# ${ApplicantType:["indiv"]}
Feature: Filling Credit Card Details Mandatory Fields With Save

  Scenario Outline: ACAUTOCAS-3816: Filling Credit card details without <field> with saving
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user navigates to applicant details page of "<ApplicationStage>"
    And click on view edit detailed info
    And user reads data from the excel file "<BankCreditCardWB>" under sheet "<BankCreditCard_cardDetails>" and row <BankCreditCard_cardDetails_rowNum>
    And user clicks on Bank and Credit Details
    When user adds credit card details with "<mandatory_all>" fields without "<field>"
    And user delete existing bank details
    Then credit card details should not save
    @Conventional
    @Release @Part-1
    @ImplementedBy-harshprit.kumar
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | mandatory_all | field       | SourceDataFile       | SheetName | RowNumber | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | BankCreditCardWB              | BankCreditCard_cardDetails | BankCreditCard_cardDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | mandatory     | card issuer | LoginDetailsCAS.xlsx | LoginData | 0         | personal_information.xlsx | home              | 1                        | bank_credit_card_details.xlsx | card_details               | 2                                 |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | mandatory     | card number | LoginDetailsCAS.xlsx | LoginData | 0         | personal_information.xlsx | home              | 1                        | bank_credit_card_details.xlsx | card_details               | 3                                 |
    @Islamic
    @Release
@Part-1
    @ImplementedBy-akash.bansal
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | mandatory_all | field       | SourceDataFile       | SheetName | RowNumber | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | BankCreditCardWB              | BankCreditCard_cardDetails | BankCreditCard_cardDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | mandatory     | card issuer | LoginDetailsCAS.xlsx | LoginData | 0         | personal_information.xlsx | home              | 1                        | bank_credit_card_details.xlsx | card_details               | 2                                 |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | mandatory     | card number | LoginDetailsCAS.xlsx | LoginData | 0         | personal_information.xlsx | home              | 1                        | bank_credit_card_details.xlsx | card_details               | 3                                 |
    @Islamic
    @Release
@Part-1
    @ImplementedBy-akash.bansal
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category:["bonds"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | key | mandatory_all | field       | SourceDataFile       | SheetName | RowNumber | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | BankCreditCardWB              | BankCreditCard_cardDetails | BankCreditCard_cardDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | mandatory     | card issuer | LoginDetailsCAS.xlsx | LoginData | 0         | personal_information.xlsx | home              | 1                        | bank_credit_card_details.xlsx | card_details               | 2                                 |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | mandatory     | card number | LoginDetailsCAS.xlsx | LoginData | 0         | personal_information.xlsx | home              | 1                        | bank_credit_card_details.xlsx | card_details               | 3                                 |
    @NotImplemented
       # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | mandatory_all | field       | SourceDataFile       | SheetName | RowNumber | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | BankCreditCardWB              | BankCreditCard_cardDetails | BankCreditCard_cardDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | mandatory     | card issuer | LoginDetailsCAS.xlsx | LoginData | 0         | personal_information.xlsx | home              | 1                        | bank_credit_card_details.xlsx | card_details               | 2                                 |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | mandatory     | card number | LoginDetailsCAS.xlsx | LoginData | 0         | personal_information.xlsx | home              | 1                        | bank_credit_card_details.xlsx | card_details               | 3                                 |
