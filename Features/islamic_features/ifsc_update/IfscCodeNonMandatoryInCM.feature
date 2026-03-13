@Epic-Islamic_IBAN_IFSC
@PQMStory
@AuthoredBy-deep.maurya
@ImplementedBy-deep.maurya
@Release
@Islamic

  #CAS-199728
#Default Configuration:
#IFSC code: Visible and Non Mandatory
Feature:IFSC Code Non mandatory in Common master

  Background:
    Given user is on CAS Login Page
    And user logged in "Common Masters" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0


  #FeatureID-ACAUTOCAS-15319
Scenario Outline: ACAUTOCAS-15752:Check visibility of IFSC code along with non mandatory field in External Bank in Common Master
    And user reads data from the excel file "<BusinessPartnerWB>" under sheet "<BusinessPartnerWB_SheetName>" and row <BusinessPartnerWB_SheetName_rowNum>
    And user navigates to external bank master
    And user clicks on create External Bank
    And user selects Account Type as "<AccountType>" in External Bank
    When user clicks on Add External Bank Branch
    Then IFSC code should be visible and non mandatory in Bank Branch details
    Examples:
      | AccountType        | BusinessPartnerWB     | BusinessPartnerWB_SheetName | BusinessPartnerWB_SheetName_rowNum |
      | Saving Account     | business_partner.xlsx | home                        | 0                                  |
      | Current Account    | business_partner.xlsx | home                        | 6                                  |
      | KCC Account        | business_partner.xlsx | home                        | 12                                 |
      | Over Draft Account | business_partner.xlsx | home                        | 18                                 |
      | Cash Credit        | business_partner.xlsx | home                        | 24                                 |


  #FeatureID-ACAUTOCAS-15319
Scenario Outline: ACAUTOCAS-15753:Saving External Bank Branch Details without IFSC code for sub payments mode type as <Sub_Type_Payments_Mode> in Common Master
    And user reads data from the excel file "<BusinessPartnerWB>" under sheet "<BusinessPartnerWB_SheetName>" and row <BusinessPartnerWB_SheetName_rowNum>
    And user navigates to external bank master
    And user clicks on create External Bank
    And user selects Account Type as "<AccountType>" in External Bank
    And user clicks on Add External Bank Branch
    When user fills mandatory details with sub payments mode type as "<Sub_Type_Payments_Mode>"
    Then Bank Branch details should be saved successfully without IFSC code
    Examples:
      | AccountType        | BusinessPartnerWB     | Sub_Type_Payments_Mode | BusinessPartnerWB_SheetName | BusinessPartnerWB_SheetName_rowNum |
      | Saving Account     | business_partner.xlsx | Internal Transfer      | home                        | 0                                  |
      | Saving Account     | business_partner.xlsx | Auto Debit             | home                        | 1                                  |
      | Saving Account     | business_partner.xlsx | Credit Debit Card      | home                        | 2                                  |
      | Saving Account     | business_partner.xlsx | IMPS                   | home                        | 3                                  |
      | Saving Account     | business_partner.xlsx | NEFT                   | home                        | 4                                  |
      | Saving Account     | business_partner.xlsx | RTGS                   | home                        | 5                                  |
      | Current Account    | business_partner.xlsx | Internal Transfer      | home                        | 6                                  |
      | Current Account    | business_partner.xlsx | Auto Debit             | home                        | 7                                  |
      | Current Account    | business_partner.xlsx | Credit Debit Card      | home                        | 8                                  |
      | Current Account    | business_partner.xlsx | IMPS                   | home                        | 9                                  |
      | Current Account    | business_partner.xlsx | NEFT                   | home                        | 10                                 |
      | Current Account    | business_partner.xlsx | RTGS                   | home                        | 11                                 |
      | KCC Account        | business_partner.xlsx | Internal Transfer      | home                        | 12                                 |
      | KCC Account        | business_partner.xlsx | Auto Debit             | home                        | 13                                 |
      | KCC Account        | business_partner.xlsx | Credit Debit Card      | home                        | 14                                 |
      | KCC Account        | business_partner.xlsx | IMPS                   | home                        | 15                                 |
      | KCC Account        | business_partner.xlsx | NEFT                   | home                        | 16                                 |
      | KCC Account        | business_partner.xlsx | RTGS                   | home                        | 17                                 |
      | Over Draft Account | business_partner.xlsx | Internal Transfer      | home                        | 18                                 |
      | Over Draft Account | business_partner.xlsx | Auto Debit             | home                        | 19                                 |
      | Over Draft Account | business_partner.xlsx | Credit Debit Card      | home                        | 20                                 |
      | Over Draft Account | business_partner.xlsx | IMPS                   | home                        | 21                                 |
      | Over Draft Account | business_partner.xlsx | NEFT                   | home                        | 22                                 |
      | Over Draft Account | business_partner.xlsx | RTGS                   | home                        | 23                                 |
      | Cash Credit        | business_partner.xlsx | Internal Transfer      | home                        | 24                                 |
      | Cash Credit        | business_partner.xlsx | Auto Debit             | home                        | 25                                 |
      | Cash Credit        | business_partner.xlsx | Credit Debit Card      | home                        | 26                                 |
      | Cash Credit        | business_partner.xlsx | IMPS                   | home                        | 27                                 |
      | Cash Credit        | business_partner.xlsx | NEFT                   | home                        | 28                                 |
      | Cash Credit        | business_partner.xlsx | RTGS                   | home                        | 29                                 |
