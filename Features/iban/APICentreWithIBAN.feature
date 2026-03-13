@Epic-Islamic_IBAN_IFSC
@PQMStory
@Islamic
@AuthoredBy-deep.maurya
@ImplementedBy-ayush.garg
@TechReviewedBy-
@Release


@IBAN
Feature: API Centre with Iban

  Background:
    Given user is on CAS Login Page
    And user logged in "APIcenter" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user click on CAS API vault

 # PMG-15_CAS-186817, 16_CAS-186817, 17_CAS-186817, 19_CAS-186817, 20_CAS-186817, 21_CAS-186817
# PQM-148_CAS-186817, 149_CAS-186817, 150_CAS-186817,151_CAS-186817, 152_CAS-186817, 153_CAS-186817,154_CAS-186817,155_CAS-186817, 156_CAS-186817, 157_CAS-186817, 158_CAS-186817, 159_CAS-186817,160_CAS-186817,161_CAS-186817,162_CAS-186817, 163_CAS-186817,164_CAS-186817, 165_CAS-186817, 166_CAS-186817,167_CAS-186817, 168_CAS-186817, 169_CAS-186817, 170_CAS-186817, 171_CAS-186817, 180_CAS-186817, 181_CAS-186817, 174_CAS-186817, 175_CAS-186817, 176_CAS-186817, 177_CAS-186817, 178_CAS-186817
  #FeatureID-ACAUTOCAS-15316
Scenario Outline: ACAUTOCAS-16106: Verify <ServiceName> service with <DataType> IBAN data
    And user clicks on documentation section
    And Check URL of the service "<ServiceCode>"
    And user click on get access token
    And user fills details for access token
    And user generates access token
    And user copy the access token
    And user click on try now button on API center
    And user reads data from the excel file "<ShareSellWB>" under sheet "<ShareSell_home>" and row <ShareSell_home_rowNum>
    And user update the json of "<ServiceCode>"
    And user enters access token
    When user click on send request button
    Then API hit should be "<Condition>" with proper response
    Examples:
      | DataType | ServiceName       | ServiceCode | Condition    | ShareSellWB     | ShareSell_home   | ShareSell_home_rowNum |
      | valid    | createApplication | CAS_Appl_01 | successful   | share_sell.xlsx | sharesellservice | 0                     |
      | invalid  | createApplication | CAS_Appl_01 | unsuccessful | share_sell.xlsx | sharesellservice | 1                     |
      | valid    | updateApplication | CAS_Appl_02 | successful   | share_sell.xlsx | sharesellservice | 2                     |
      | invalid  | updateApplication | CAS_Appl_02 | unsuccessful | share_sell.xlsx | sharesellservice | 3                     |
      | valid    | disbursalService  | CAS_Disb_01 | successful   | share_sell.xlsx | sharesellservice | 10                    |
      | invalid  | disbursalService  | CAS_Disb_01 | unsuccessful | share_sell.xlsx | sharesellservice | 11                    |
      | valid    | fetchBankDetails  | CAS_Cred_13 | successful   | share_sell.xlsx | sharesellservice | 4                     |
      | invalid  | fetchBankDetails  | CAS_Cred_13 | unsuccessful | share_sell.xlsx | sharesellservice | 5                     |

# PQM-144_CAS-186817,145_CAS-186817, 146_CAS-186817, 147_CAS-186817
  #FeatureID-ACAUTOCAS-15316
Scenario Outline: ACAUTOCAS-16107: Verify IBAN field for <ServiceName> service
    And user clicks on documentation section
    And Check URL of the service "<ServiceCode>"
    When user click on try now button on API center
    Then IBAN field should be visible in body part of the "<ServiceName>" service
    Examples:
      | DataType | ServiceName                    | ServiceCode |
      | valid    | createApplication              | CAS_Appl_01 |
      | valid    | updateApplication              | CAS_Appl_02 |
      | valid    | disbursalService               | CAS_Disb_01 |
      | valid    | fetchBankDetailsFromThirdParty | CAS_Cred_13 |
