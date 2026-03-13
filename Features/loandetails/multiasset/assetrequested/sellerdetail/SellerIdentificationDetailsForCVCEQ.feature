@Epic-Loan_Application_Details
@AuthoredBy-harshita.nayak
@NotImplemented
@Conventional
@Deferred

Feature:Seller Identification Details for Commercial Vehicle and Commercial Equipment under Multi Asset

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0

     #Prerequisite:Application already punch with application type as Multi Asset
# ${ ProductType : ["CEQ","CV"]}
# ${ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
#${ApplicantType:["indiv","nonindiv"]}
   #02_CAS-82704
    #FeatureID-ACAUTOCAS-11906
  Scenario Outline:Verify list of accordions should be there in asset requested while selecting Bought From as Individual with Finance Mode as <FinanceMode> for multi Asset at <ApplicationStage> stage for <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user navigates to asset requested page for "<ApplicationStage>"
    And user select Funding For as "<FundingFor>"
    And user select Finance Mode as "<FinanceMode>"
    And user select asset type as Used Asset
    When user select Bought From as Individual
    Then list of accordions  tab should be display successfully
      | Seller Name            |
      | Identification         |
      | Seller Bank Details    |
      | Seller Address Details |



    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | FundingFor | FinanceMode |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Purchase    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Refinance   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Purchase    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Refinance   |

        #Prerequisite:Application already punch with application type as Multi Asset
# ${ ProductType : ["CV"]}
# ${ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
#${ApplicantType:["indiv","nonindiv"]}
   #02_CAS-82704
    #FeatureID-ACAUTOCAS-11906
  Scenario Outline:Verify list of accordions should be there in asset requested while selecting Bought From as Individual with Finance Mode as <FinanceMode> at <ApplicationStage> stage for <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user navigates to asset requested page for "<ApplicationStage>"
    And user select Funding For as "<FundingFor>"
    And user select Finance Mode as "<FinanceMode>"
    And user select asset type as Used Asset
    When user select Bought From as Individual
    Then list of accordions  tab should be display successfully
      | Seller Name            |
      | Identification         |
      | Seller Bank Details    |
      | Seller Address Details |



    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | FundingFor | FinanceMode |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Purchase    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Refinance   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Purchase    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Refinance   |


     #Prerequisite:Application already punch with application type as Multi Asset
# ${ ProductType : ["CEQ","CV"]}
# ${ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
#${ApplicantType:["indiv","nonindiv"]}
    #FeatureID-ACAUTOCAS-11906
  Scenario Outline:Add <Identification> identification details as per the Individual_Non-Individual as Non Individual with Finance Mode as <FinanceMode> for multi Asset at <ApplicationStage> for <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user navigates to asset requested page for "<ApplicationStage>"
    And user select Funding For as "<FundingFor>"
    And user select Finance Mode as "<FinanceMode>"
    And user select asset type as Used Asset
    And user select Bought From as Individual
    And user select IndividualNon-Individual as Non Individual
    When user fill identification details of seller with "<Identification>" identification type
    Then identification details of seller should be added successfully


    Examples:
      | Identification               | ApplicantType   | ApplicationStage   | ProductType   | FundingFor | FinanceMode |
      | ABN                          | <ApplicantType> | <ApplicationStage> | <ProductType> | Chassis    | Purchase    |
      | ABN                          | <ApplicantType> | <ApplicationStage> | <ProductType> | Chassis    | Refinance   |
      | ABN                          | <ApplicantType> | <ApplicationStage> | <ProductType> | FBV        | Purchase    |
      | ABN                          | <ApplicantType> | <ApplicationStage> | <ProductType> | FBV        | Refinance   |
      | ACN                          | <ApplicantType> | <ApplicationStage> | <ProductType> | Chassis    | Purchase    |
      | ACN                          | <ApplicantType> | <ApplicationStage> | <ProductType> | Chassis    | Refinance   |
      | ACN                          | <ApplicantType> | <ApplicationStage> | <ProductType> | FBV        | Purchase    |
      | ACN                          | <ApplicantType> | <ApplicationStage> | <ProductType> | FBV        | Refinance   |
      | ARBN                         | <ApplicantType> | <ApplicationStage> | <ProductType> | Chassis    | Purchase    |
      | ARBN                         | <ApplicantType> | <ApplicationStage> | <ProductType> | Chassis    | Refinance   |
      | ARBN                         | <ApplicantType> | <ApplicationStage> | <ProductType> | FBV        | Purchase    |
      | ARBN                         | <ApplicantType> | <ApplicationStage> | <ProductType> | FBV        | Refinance   |
      | ARSN                         | <ApplicantType> | <ApplicationStage> | <ProductType> | Chassis    | Purchase    |
      | ARSN                         | <ApplicantType> | <ApplicationStage> | <ProductType> | Chassis    | Refinance   |
      | ARSN                         | <ApplicantType> | <ApplicationStage> | <ProductType> | FBV        | Purchase    |
      | ARSN                         | <ApplicantType> | <ApplicationStage> | <ProductType> | FBV        | Refinance   |
      | CIN No                       | <ApplicantType> | <ApplicationStage> | <ProductType> | Chassis    | Purchase    |
      | CIN No                       | <ApplicantType> | <ApplicationStage> | <ProductType> | Chassis    | Refinance   |
      | CIN No                       | <ApplicantType> | <ApplicationStage> | <ProductType> | FBV        | Purchase    |
      | CIN No                       | <ApplicantType> | <ApplicationStage> | <ProductType> | FBV        | Refinance   |
      | KYC Identification number    | <ApplicantType> | <ApplicationStage> | <ProductType> | Chassis    | Purchase    |
      | KYC Identification number    | <ApplicantType> | <ApplicationStage> | <ProductType> | Chassis    | Refinance   |
      | KYC Identification number    | <ApplicantType> | <ApplicationStage> | <ProductType> | FBV        | Purchase    |
      | KYC Identification number    | <ApplicantType> | <ApplicationStage> | <ProductType> | FBV        | Refinance   |
      | PAN                          | <ApplicantType> | <ApplicationStage> | <ProductType> | Chassis    | Purchase    |
      | PAN                          | <ApplicantType> | <ApplicationStage> | <ProductType> | Chassis    | Refinance   |
      | PAN                          | <ApplicantType> | <ApplicationStage> | <ProductType> | FBV        | Purchase    |
      | PAN                          | <ApplicantType> | <ApplicationStage> | <ProductType> | FBV        | Refinance   |
      | Service Tax No               | <ApplicantType> | <ApplicationStage> | <ProductType> | Chassis    | Purchase    |
      | Service Tax No               | <ApplicantType> | <ApplicationStage> | <ProductType> | Chassis    | Refinance   |
      | Service Tax No               | <ApplicantType> | <ApplicationStage> | <ProductType> | FBV        | Purchase    |
      | Service Tax No               | <ApplicantType> | <ApplicationStage> | <ProductType> | FBV        | Refinance   |
      | TIN No                       | <ApplicantType> | <ApplicationStage> | <ProductType> | Chassis    | Purchase    |
      | TIN No                       | <ApplicantType> | <ApplicationStage> | <ProductType> | Chassis    | Refinance   |
      | TIN No                       | <ApplicantType> | <ApplicationStage> | <ProductType> | FBV        | Purchase    |
      | TIN No                       | <ApplicantType> | <ApplicationStage> | <ProductType> | FBV        | Refinance   |
      | Unique Identification Number | <ApplicantType> | <ApplicationStage> | <ProductType> | Chassis    | Purchase    |
      | Unique Identification Number | <ApplicantType> | <ApplicationStage> | <ProductType> | Chassis    | Refinance   |
      | Unique Identification Number | <ApplicantType> | <ApplicationStage> | <ProductType> | FBV        | Purchase    |
      | Unique Identification Number | <ApplicantType> | <ApplicationStage> | <ProductType> | FBV        | Refinance   |

      #Prerequisite:Application already punch with application type as Multi Asset
# ${ ProductType : ["CV"]}
# ${ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
#${ApplicantType:["indiv","nonindiv"]}
    #FeatureID-ACAUTOCAS-11906
  Scenario Outline:Add <Identification> identification details as per the Individual_Non-Individual as Non Individual with Finance Mode as <FinanceMode> at <ApplicationStage> for <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user navigates to asset requested page for "<ApplicationStage>"
    And user select Funding For as "<FundingFor>"
    And user select Finance Mode as "<FinanceMode>"
    And user select asset type as Used Asset
    And user select Bought From as Individual
    And user select IndividualNon-Individual as Non Individual
    When user fill identification details of seller with "<Identification>" identification type
    Then identification details of seller should be added successfully


    Examples:
      | Identification               | ApplicantType   | ApplicationStage   | ProductType   | FundingFor | FinanceMode |
      | ABN                          | <ApplicantType> | <ApplicationStage> | <ProductType> | Both       | Purchase    |
      | ABN                          | <ApplicantType> | <ApplicationStage> | <ProductType> | Both       | Refinance   |
      | ABN                          | <ApplicantType> | <ApplicationStage> | <ProductType> | Body       | Purchase    |
      | ABN                          | <ApplicantType> | <ApplicationStage> | <ProductType> | Body       | Refinance   |
      | ACN                          | <ApplicantType> | <ApplicationStage> | <ProductType> | Both       | Purchase    |
      | ACN                          | <ApplicantType> | <ApplicationStage> | <ProductType> | Both       | Refinance   |
      | ACN                          | <ApplicantType> | <ApplicationStage> | <ProductType> | Body       | Purchase    |
      | ACN                          | <ApplicantType> | <ApplicationStage> | <ProductType> | Body       | Refinance   |
      | ARBN                         | <ApplicantType> | <ApplicationStage> | <ProductType> | Both       | Purchase    |
      | ARBN                         | <ApplicantType> | <ApplicationStage> | <ProductType> | Both       | Refinance   |
      | ARBN                         | <ApplicantType> | <ApplicationStage> | <ProductType> | Body       | Purchase    |
      | ARBN                         | <ApplicantType> | <ApplicationStage> | <ProductType> | Body       | Refinance   |
      | ARSN                         | <ApplicantType> | <ApplicationStage> | <ProductType> | Both       | Purchase    |
      | ARSN                         | <ApplicantType> | <ApplicationStage> | <ProductType> | Both       | Refinance   |
      | ARSN                         | <ApplicantType> | <ApplicationStage> | <ProductType> | Body       | Purchase    |
      | ARSN                         | <ApplicantType> | <ApplicationStage> | <ProductType> | Body       | Refinance   |
      | CIN No                       | <ApplicantType> | <ApplicationStage> | <ProductType> | Both       | Purchase    |
      | CIN No                       | <ApplicantType> | <ApplicationStage> | <ProductType> | Both       | Refinance   |
      | CIN No                       | <ApplicantType> | <ApplicationStage> | <ProductType> | Body       | Purchase    |
      | CIN No                       | <ApplicantType> | <ApplicationStage> | <ProductType> | Body       | Refinance   |
      | KYC Identification number    | <ApplicantType> | <ApplicationStage> | <ProductType> | Both       | Purchase    |
      | KYC Identification number    | <ApplicantType> | <ApplicationStage> | <ProductType> | Both       | Refinance   |
      | KYC Identification number    | <ApplicantType> | <ApplicationStage> | <ProductType> | Body       | Purchase    |
      | KYC Identification number    | <ApplicantType> | <ApplicationStage> | <ProductType> | Body       | Refinance   |
      | PAN                          | <ApplicantType> | <ApplicationStage> | <ProductType> | Both       | Purchase    |
      | PAN                          | <ApplicantType> | <ApplicationStage> | <ProductType> | Both       | Refinance   |
      | PAN                          | <ApplicantType> | <ApplicationStage> | <ProductType> | Body       | Purchase    |
      | PAN                          | <ApplicantType> | <ApplicationStage> | <ProductType> | Body       | Refinance   |
      | Service Tax No               | <ApplicantType> | <ApplicationStage> | <ProductType> | Both       | Purchase    |
      | Service Tax No               | <ApplicantType> | <ApplicationStage> | <ProductType> | Both       | Refinance   |
      | Service Tax No               | <ApplicantType> | <ApplicationStage> | <ProductType> | Body       | Purchase    |
      | Service Tax No               | <ApplicantType> | <ApplicationStage> | <ProductType> | Body       | Refinance   |
      | TIN No                       | <ApplicantType> | <ApplicationStage> | <ProductType> | Both       | Purchase    |
      | TIN No                       | <ApplicantType> | <ApplicationStage> | <ProductType> | Both       | Refinance   |
      | TIN No                       | <ApplicantType> | <ApplicationStage> | <ProductType> | Body       | Purchase    |
      | TIN No                       | <ApplicantType> | <ApplicationStage> | <ProductType> | Body       | Refinance   |
      | Unique Identification Number | <ApplicantType> | <ApplicationStage> | <ProductType> | Both       | Purchase    |
      | Unique Identification Number | <ApplicantType> | <ApplicationStage> | <ProductType> | Both       | Refinance   |
      | Unique Identification Number | <ApplicantType> | <ApplicationStage> | <ProductType> | Body       | Purchase    |
      | Unique Identification Number | <ApplicantType> | <ApplicationStage> | <ProductType> | Body       | Refinance   |


     #Prerequisite:Application already punch with application type as Multi Asset
# ${ ProductType : ["CEQ","CV"]}
# ${ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
#${ApplicantType:["indiv","nonindiv"]}
    #FeatureID-ACAUTOCAS-11906
  Scenario Outline:Validation <IdentificationField> in Identification with <InputType> as per the Individual_Non-Individual as Non Individual with Finance Mode as <FinanceMode> for multi Asset at <ApplicationStage> for <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user navigates to asset requested page for "<ApplicationStage>"
    And user select Funding For as "<FundingFor>"
    And user select Finance Mode as "<FinanceMode>"
    And user select asset type as Used Asset
    And user select Bought From as Individual
    And user select IndividualNon-Individual as Non Individual
    And user open identification accordion of seller
    When user fills "<IdentificationField>" of seller with "<InputType>" in identification
    Then "<IdentificationField>" field of seller "<Throws_notThrows>" error in identification


    Examples:
      | IdentificationField | InputType                                  | Throws_notThrows         | ApplicantType   | ApplicationStage   | ProductType   | FundingFor | FinanceMode |
      | Issue Date          | more than current date                     | throw error message      | <ApplicantType> | <ApplicationStage> | <ProductType> | Chassis    | Purchase    |
      | Issue Date          | more than current date                     | throw error message      | <ApplicantType> | <ApplicationStage> | <ProductType> | Chassis    | Refinance   |
      | Issue Date          | more than current date                     | throw error message      | <ApplicantType> | <ApplicationStage> | <ProductType> | FBV        | Purchase    |
      | Issue Date          | more than current date                     | throw error message      | <ApplicantType> | <ApplicationStage> | <ProductType> | FBV        | Refinance   |
      | Issue Date          | valid date format as per user preference   | does not throw any error | <ApplicantType> | <ApplicationStage> | <ProductType> | Chassis    | Purchase    |
      | Issue Date          | valid date format as per user preference   | does not throw any error | <ApplicantType> | <ApplicationStage> | <ProductType> | Chassis    | Refinance   |
      | Issue Date          | valid date format as per user preference   | does not throw any error | <ApplicantType> | <ApplicationStage> | <ProductType> | FBV        | Purchase    |
      | Issue Date          | valid date format as per user preference   | does not throw any error | <ApplicantType> | <ApplicationStage> | <ProductType> | FBV        | Refinance   |
      | Issue Date          | invalid date format as per user preference | throw error message      | <ApplicantType> | <ApplicationStage> | <ProductType> | Chassis    | Purchase    |
      | Issue Date          | invalid date format as per user preference | throw error message      | <ApplicantType> | <ApplicationStage> | <ProductType> | Chassis    | Refinance   |
      | Issue Date          | invalid date format as per user preference | throw error message      | <ApplicantType> | <ApplicationStage> | <ProductType> | FBV        | Purchase    |
      | Issue Date          | invalid date format as per user preference | throw error message      | <ApplicantType> | <ApplicationStage> | <ProductType> | FBV        | Refinance   |
      | Expiry Date         | more than current date                     | does not throw any error | <ApplicantType> | <ApplicationStage> | <ProductType> | Chassis    | Purchase    |
      | Expiry Date         | more than current date                     | does not throw any error | <ApplicantType> | <ApplicationStage> | <ProductType> | Chassis    | Refinance   |
      | Expiry Date         | more than current date                     | does not throw any error | <ApplicantType> | <ApplicationStage> | <ProductType> | FBV        | Purchase    |
      | Expiry Date         | more than current date                     | does not throw any error | <ApplicantType> | <ApplicationStage> | <ProductType> | FBV        | Refinance   |
      | Expiry Date         | valid date format as per user preference   | does not throw any error | <ApplicantType> | <ApplicationStage> | <ProductType> | Chassis    | Purchase    |
      | Expiry Date         | valid date format as per user preference   | does not throw any error | <ApplicantType> | <ApplicationStage> | <ProductType> | Chassis    | Refinance   |
      | Expiry Date         | valid date format as per user preference   | does not throw any error | <ApplicantType> | <ApplicationStage> | <ProductType> | FBV        | Purchase    |
      | Expiry Date         | valid date format as per user preference   | does not throw any error | <ApplicantType> | <ApplicationStage> | <ProductType> | FBV        | Refinance   |
      | Expiry Date         | invalid date format as per user preference | throw error message      | <ApplicantType> | <ApplicationStage> | <ProductType> | Chassis    | Purchase    |
      | Expiry Date         | invalid date format as per user preference | throw error message      | <ApplicantType> | <ApplicationStage> | <ProductType> | Chassis    | Refinance   |
      | Expiry Date         | invalid date format as per user preference | throw error message      | <ApplicantType> | <ApplicationStage> | <ProductType> | FBV        | Purchase    |
      | Expiry Date         | invalid date format as per user preference | throw error message      | <ApplicantType> | <ApplicationStage> | <ProductType> | FBV        | Refinance   |

        #Prerequisite:Application already punch with application type as Multi Asset
# ${ ProductType : ["CV"]}
# ${ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
#${ApplicantType:["indiv","nonindiv"]}
    #FeatureID-ACAUTOCAS-11906
  Scenario Outline:Validation <IdentificationField> in Identification with <InputType> as per the Individual_Non-Individual as Non Individual with Finance Mode as <FinanceMode> at <ApplicationStage> for <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user navigates to asset requested page for "<ApplicationStage>"
    And user select Funding For as "<FundingFor>"
    And user select Finance Mode as "<FinanceMode>"
    And user select asset type as Used Asset
    And user select Bought From as Individual
    And user select IndividualNon-Individual as Non Individual
    And user open identification accordion of seller
    When user fills "<IdentificationField>" of seller with "<InputType>" in identification
    Then "<IdentificationField>" field of seller "<Throws_notThrows>" error in identification


    Examples:
      | IdentificationField | InputType                                  | Throws_notThrows         | ApplicantType   | ApplicationStage   | ProductType   | FundingFor | FinanceMode |
      | Issue Date          | more than current date                     | throw error message      | <ApplicantType> | <ApplicationStage> | <ProductType> | Both       | Purchase    |
      | Issue Date          | more than current date                     | throw error message      | <ApplicantType> | <ApplicationStage> | <ProductType> | Both       | Refinance   |
      | Issue Date          | more than current date                     | throw error message      | <ApplicantType> | <ApplicationStage> | <ProductType> | Body       | Purchase    |
      | Issue Date          | more than current date                     | throw error message      | <ApplicantType> | <ApplicationStage> | <ProductType> | Body       | Refinance   |
      | Issue Date          | valid date format as per user preference   | does not throw any error | <ApplicantType> | <ApplicationStage> | <ProductType> | Both       | Purchase    |
      | Issue Date          | valid date format as per user preference   | does not throw any error | <ApplicantType> | <ApplicationStage> | <ProductType> | Both       | Refinance   |
      | Issue Date          | valid date format as per user preference   | does not throw any error | <ApplicantType> | <ApplicationStage> | <ProductType> | Body       | Purchase    |
      | Issue Date          | valid date format as per user preference   | does not throw any error | <ApplicantType> | <ApplicationStage> | <ProductType> | Body       | Refinance   |
      | Issue Date          | invalid date format as per user preference | throw error message      | <ApplicantType> | <ApplicationStage> | <ProductType> | Both       | Purchase    |
      | Issue Date          | invalid date format as per user preference | throw error message      | <ApplicantType> | <ApplicationStage> | <ProductType> | Both       | Refinance   |
      | Issue Date          | invalid date format as per user preference | throw error message      | <ApplicantType> | <ApplicationStage> | <ProductType> | Body       | Purchase    |
      | Issue Date          | invalid date format as per user preference | throw error message      | <ApplicantType> | <ApplicationStage> | <ProductType> | Body       | Refinance   |
      | Expiry Date         | more than current date                     | does not throw any error | <ApplicantType> | <ApplicationStage> | <ProductType> | Both       | Purchase    |
      | Expiry Date         | more than current date                     | does not throw any error | <ApplicantType> | <ApplicationStage> | <ProductType> | Both       | Refinance   |
      | Expiry Date         | more than current date                     | does not throw any error | <ApplicantType> | <ApplicationStage> | <ProductType> | Body       | Purchase    |
      | Expiry Date         | more than current date                     | does not throw any error | <ApplicantType> | <ApplicationStage> | <ProductType> | Body       | Refinance   |
      | Expiry Date         | valid date format as per user preference   | does not throw any error | <ApplicantType> | <ApplicationStage> | <ProductType> | Both       | Purchase    |
      | Expiry Date         | valid date format as per user preference   | does not throw any error | <ApplicantType> | <ApplicationStage> | <ProductType> | Both       | Refinance   |
      | Expiry Date         | valid date format as per user preference   | does not throw any error | <ApplicantType> | <ApplicationStage> | <ProductType> | Body       | Purchase    |
      | Expiry Date         | valid date format as per user preference   | does not throw any error | <ApplicantType> | <ApplicationStage> | <ProductType> | Body       | Refinance   |
      | Expiry Date         | invalid date format as per user preference | throw error message      | <ApplicantType> | <ApplicationStage> | <ProductType> | Both       | Purchase    |
      | Expiry Date         | invalid date format as per user preference | throw error message      | <ApplicantType> | <ApplicationStage> | <ProductType> | Both       | Refinance   |
      | Expiry Date         | invalid date format as per user preference | throw error message      | <ApplicantType> | <ApplicationStage> | <ProductType> | Body       | Purchase    |
      | Expiry Date         | invalid date format as per user preference | throw error message      | <ApplicantType> | <ApplicationStage> | <ProductType> | Body       | Refinance   |


     #Prerequisite:Application already punch with application type as Multi Asset
# ${ ProductType : ["CEQ","CV"]}
# ${ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
#${ApplicantType:["indiv","nonindiv"]}
    #FeatureID-ACAUTOCAS-11906
  Scenario Outline: Fill identification details with "<Identification>" as per the Individual_Non-Individual as Non Individual with Finance Mode as <FinanceMode> for multi Asset at <ApplicationStage> stage for <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user navigates to asset requested page for "<ApplicationStage>"
    And user select Funding For as "<FundingFor>"
    And user select Finance Mode as "<FinanceMode>"
    And user select asset type as Used Asset
    And user select Individual_Non-Individual as Non Individual
    And user open identification accordion
    When user fill identification details with "<Identification>" identification type
    Then identification details should be added successfully




    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Identification               | FundingFor | FinanceMode |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | ABN                          | Chassis    | Purchase    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | ABN                          | Chassis    | Refinance   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | ABN                          | FBV        | Purchase    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | ABN                          | FBV        | Refinance   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | ACN                          | Chassis    | Purchase    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | ACN                          | Chassis    | Refinance   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | ACN                          | FBV        | Purchase    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | ACN                          | FBV        | Refinance   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | ARBN                         | Chassis    | Purchase    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | ARBN                         | Chassis    | Refinance   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | ARBN                         | FBV        | Purchase    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | ARBN                         | FBV        | Refinance   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | ARSN                         | Chassis    | Purchase    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | ARSN                         | Chassis    | Refinance   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | ARSN                         | FBV        | Purchase    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | ARSN                         | FBV        | Refinance   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | CIN NO.                      | Chassis    | Purchase    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | CIN NO.                      | Chassis    | Refinance   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | CIN NO.                      | FBV        | Purchase    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | CIN NO.                      | FBV        | Refinance   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | KYC Identification Number    | Chassis    | Purchase    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | KYC Identification Number    | Chassis    | Refinance   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | KYC Identification Number    | FBV        | Purchase    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | KYC Identification Number    | FBV        | Refinance   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Service Tax No.              | Chassis    | Purchase    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Service Tax No.              | Chassis    | Refinance   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Service Tax No.              | FBV        | Purchase    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Service Tax No.              | FBV        | Refinance   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | PAN                          | Chassis    | Purchase    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | PAN                          | Chassis    | Refinance   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | PAN                          | FBV        | Purchase    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | PAN                          | FBV        | Refinance   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | TIN No.                      | Chassis    | Purchase    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | TIN No.                      | Chassis    | Refinance   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | TIN No.                      | FBV        | Purchase    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | TIN No.                      | FBV        | Refinance   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Unsupported                  | Chassis    | Purchase    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Unsupported                  | Chassis    | Refinance   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Unsupported                  | FBV        | Purchase    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Unsupported                  | FBV        | Refinance   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Unique Identification Number | Chassis    | Purchase    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Unique Identification Number | Chassis    | Refinance   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Unique Identification Number | FBV        | Purchase    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Unique Identification Number | FBV        | Refinance   |

       #Prerequisite:Application already punch with application type as Multi Asset
# ${ ProductType : ["CV"]}
# ${ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
#${ApplicantType:["indiv","nonindiv"]}
    #FeatureID-ACAUTOCAS-11906
  Scenario Outline: Fill identification details with "<Identification>" as per the Individual_Non-Individual as Non Individual with Finance Mode as <FinanceMode> at <ApplicationStage> stage for <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user navigates to asset requested page for "<ApplicationStage>"
    And user select Funding For as "<FundingFor>"
    And user select Finance Mode as "<FinanceMode>"
    And user select asset type as Used Asset
    And user select Individual_Non-Individual as Non Individual
    And user open identification accordion
    When user fill identification details with "<Identification>" identification type
    Then identification details should be added successfully




    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Identification               | FundingFor | FinanceMode |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | ABN                          | Both       | Purchase    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | ABN                          | Both       | Refinance   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | ABN                          | Body       | Purchase    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | ABN                          | Body       | Refinance   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | ACN                          | Both       | Purchase    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | ACN                          | Both       | Refinance   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | ACN                          | Body       | Purchase    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | ACN                          | Body       | Refinance   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | ARBN                         | Both       | Purchase    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | ARBN                         | Both       | Refinance   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | ARBN                         | Body       | Purchase    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | ARBN                         | Body       | Refinance   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | ARSN                         | Both       | Purchase    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | ARSN                         | Both       | Refinance   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | ARSN                         | Body       | Purchase    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | ARSN                         | Body       | Refinance   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | CIN NO.                      | Both       | Purchase    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | CIN NO.                      | Both       | Refinance   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | CIN NO.                      | Body       | Purchase    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | CIN NO.                      | Body       | Refinance   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | KYC Identification Number    | Both       | Purchase    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | KYC Identification Number    | Both       | Refinance   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | KYC Identification Number    | Body       | Purchase    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | KYC Identification Number    | Body       | Refinance   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Service Tax No.              | Both       | Purchase    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Service Tax No.              | Both       | Refinance   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Service Tax No.              | Body       | Purchase    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Service Tax No.              | Body       | Refinance   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | PAN                          | Both       | Purchase    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | PAN                          | Both       | Refinance   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | PAN                          | Body       | Purchase    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | PAN                          | Body       | Refinance   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | TIN No.                      | Both       | Purchase    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | TIN No.                      | Both       | Refinance   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | TIN No.                      | Body       | Purchase    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | TIN No.                      | Body       | Refinance   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Unsupported                  | Both       | Purchase    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Unsupported                  | Both       | Refinance   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Unsupported                  | Body       | Purchase    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Unsupported                  | Body       | Refinance   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Unique Identification Number | Both       | Purchase    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Unique Identification Number | Both       | Refinance   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Unique Identification Number | Body       | Purchase    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Unique Identification Number | Body       | Refinance   |


     #Prerequisite:Application already punch with application type as Multi Asset
# ${ ProductType : ["CEQ","CV"]}
# ${ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
#${ApplicantType:["indiv","nonindiv"]}
   #10_CAS-82704
    #FeatureID-ACAUTOCAS-11906
  Scenario Outline:Identification Type list of accordions should display the details as per the Individual_Non-Individual as Non Individual with Finance Mode as <FinanceMode> for multi Asset at <ApplicationStage> stage for <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user navigates to asset requested page for "<ApplicationStage>"
    And user select Funding For as "<FundingFor>"
    And user select Finance Mode as "<FinanceMode>"
    And user select asset type as Used Asset
    And user select Bought From as Individual
    When user select IndividualNon-Individual as Non Individual
    And user open identification accordion of seller
    Then user validate that Identification Type list of accordions should be display successfully
      | ABN                          |
      | ACN                          |
      | ARBN                         |
      | ARSN                         |
      | CIN No                       |
      | KYC Identification Number    |
      | Service Tax No               |
      | PAN                          |
      | TIN No                       |
      | Unsupported                  |
      | Unique Identification Number |



    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | FundingFor | FinanceMode |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Purchase    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Refinance   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Purchase    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Refinance   |

        #Prerequisite:Application already punch with application type as Multi Asset
 # ${ ProductType : ["CV"]}
# ${ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
#${ApplicantType:["indiv","nonindiv"]}}
   #10_CAS-82704
    #FeatureID-ACAUTOCAS-11906
  Scenario Outline:Identification Type list of accordions should display the details as per the Individual_Non-Individual as Non Individual with Finance Mode as <FinanceMode> at <ApplicationStage> stage for <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user navigates to asset requested page for "<ApplicationStage>"
    And user select Funding For as "<FundingFor>"
    And user select Finance Mode as "<FinanceMode>"
    And user select asset type as Used Asset
    And user select Bought From as Individual
    When user select IndividualNon-Individual as Non Individual
    And user open identification accordion of seller
    Then user validate that Identification Type list of accordions should be display successfully
      | ABN                          |
      | ACN                          |
      | ARBN                         |
      | ARSN                         |
      | CIN No                       |
      | KYC Identification Number    |
      | Service Tax No               |
      | PAN                          |
      | TIN No                       |
      | Unsupported                  |
      | Unique Identification Number |



    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | FundingFor | FinanceMode |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Purchase    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Refinance   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Purchase    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Refinance   |


     #Prerequisite:Application already punch with application type as Multi Asset
# ${ ProductType : ["CEQ","CV"]}
# ${ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
#${ApplicantType:["indiv","nonindiv"]}
  #${FinanceMode:["Purchase","Refinance"]}
  # ${FundingFor:["Chassis","FBV"]}
    #FeatureID-ACAUTOCAS-11906
  Scenario Outline:Validation of Identification Number of <IdentificationType> in identification with <InputType> as per the Individual_Non-Individual as Non Individual with Finance Mode as <FinanceMode> for multi Asset at <ApplicationStage> stage for <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user navigates to asset requested page for "<ApplicationStage>"
    And user select Funding For as "<FundingFor>"
    And user select Finance Mode as "<FinanceMode>"
    And user select asset type as Used Asset
    And user select Bought From as Individual
    And user select IndividualNon-Individual as Non Individual
    And user open identification accordion of seller
    When user selects Identification Type of seller as "<IdentificationType>"
    And user fills "Identification Number" of seller with "<InputType>" in identification
    Then "Identification Number" field of seller "<Throws_notThrows>" error in identification


    Examples:
      | IdentificationType           | InputType                                   | Throws_notThrows | ApplicationStage   | ProductType   | ApplicantType   | FundingFor   | FinanceMode   |
      | ABN                          | 11 digits                                   | not throw any    | <ApplicationStage> | <ProductType> | <ApplicantType> | <FundingFor> | <FinanceMode> |
      | ABN                          | less than 11 digits                         | throw an         | <ApplicationStage> | <ProductType> | <ApplicantType> | <FundingFor> | <FinanceMode> |
      | ABN                          | characters                                  | throw an         | <ApplicationStage> | <ProductType> | <ApplicantType> | <FundingFor> | <FinanceMode> |
      | ABN                          | less than 11 characters                     | throw an         | <ApplicationStage> | <ProductType> | <ApplicantType> | <FundingFor> | <FinanceMode> |
      | ABN                          | alphaNumeric with 11 size                   | throw an         | <ApplicationStage> | <ProductType> | <ApplicantType> | <FundingFor> | <FinanceMode> |
      | ABN                          | special characters                          | throw an         | <ApplicationStage> | <ProductType> | <ApplicantType> | <FundingFor> | <FinanceMode> |
      | ACN                          | 9 digits                                    | not throw any    | <ApplicationStage> | <ProductType> | <ApplicantType> | <FundingFor> | <FinanceMode> |
      | ACN                          | less than 9 digits                          | throw an         | <ApplicationStage> | <ProductType> | <ApplicantType> | <FundingFor> | <FinanceMode> |
      | ACN                          | characters                                  | throw an         | <ApplicationStage> | <ProductType> | <ApplicantType> | <FundingFor> | <FinanceMode> |
      | ACN                          | less than 9 characters                      | throw an         | <ApplicationStage> | <ProductType> | <ApplicantType> | <FundingFor> | <FinanceMode> |
      | ACN                          | alphaNumeric with 9 size                    | throw an         | <ApplicationStage> | <ProductType> | <ApplicantType> | <FundingFor> | <FinanceMode> |
      | ACN                          | special characters                          | throw an         | <ApplicationStage> | <ProductType> | <ApplicantType> | <FundingFor> | <FinanceMode> |
      | ARBN                         | 9 digits                                    | not throw any    | <ApplicationStage> | <ProductType> | <ApplicantType> | <FundingFor> | <FinanceMode> |
      | ARBN                         | less than 9 digits                          | throw an         | <ApplicationStage> | <ProductType> | <ApplicantType> | <FundingFor> | <FinanceMode> |
      | ARBN                         | characters                                  | throw an         | <ApplicationStage> | <ProductType> | <ApplicantType> | <FundingFor> | <FinanceMode> |
      | ARBN                         | less than 9 characters                      | throw an         | <ApplicationStage> | <ProductType> | <ApplicantType> | <FundingFor> | <FinanceMode> |
      | ARBN                         | alphaNumeric with 9 size                    | throw an         | <ApplicationStage> | <ProductType> | <ApplicantType> | <FundingFor> | <FinanceMode> |
      | ARBN                         | special characters                          | throw an         | <ApplicationStage> | <ProductType> | <ApplicantType> | <FundingFor> | <FinanceMode> |
      | ARSN                         | 9 digits                                    | not throw any    | <ApplicationStage> | <ProductType> | <ApplicantType> | <FundingFor> | <FinanceMode> |
      | ARSN                         | less than 9 digits                          | throw an         | <ApplicationStage> | <ProductType> | <ApplicantType> | <FundingFor> | <FinanceMode> |
      | ARSN                         | characters                                  | throw an         | <ApplicationStage> | <ProductType> | <ApplicantType> | <FundingFor> | <FinanceMode> |
      | ARSN                         | less than 9 characters                      | throw an         | <ApplicationStage> | <ProductType> | <ApplicantType> | <FundingFor> | <FinanceMode> |
      | ARSN                         | alphaNumeric with 9 size                    | throw an         | <ApplicationStage> | <ProductType> | <ApplicantType> | <FundingFor> | <FinanceMode> |
      | ARSN                         | special characters                          | throw an         | <ApplicationStage> | <ProductType> | <ApplicantType> | <FundingFor> | <FinanceMode> |
      | CIN No                       | numeric values                              | throw an         | <ApplicationStage> | <ProductType> | <ApplicantType> | <FundingFor> | <FinanceMode> |
      | CIN No                       | invalid format                              | throw an         | <ApplicationStage> | <ProductType> | <ApplicantType> | <FundingFor> | <FinanceMode> |
      | CIN No                       | alphaNumeric values                         | throw an         | <ApplicationStage> | <ProductType> | <ApplicantType> | <FundingFor> | <FinanceMode> |
      | CIN No                       | special characters                          | throw an         | <ApplicationStage> | <ProductType> | <ApplicantType> | <FundingFor> | <FinanceMode> |
      | CIN No                       | size less than 21                           | throw an         | <ApplicationStage> | <ProductType> | <ApplicantType> | <FundingFor> | <FinanceMode> |
      | CIN No                       | valid format (L/U)12345AA1234AAA123456      | not throw any    | <ApplicationStage> | <ProductType> | <ApplicantType> | <FundingFor> | <FinanceMode> |
      | PAN                          | numeric values                              | throw an         | <ApplicationStage> | <ProductType> | <ApplicantType> | <FundingFor> | <FinanceMode> |
      | PAN                          | invalid format                              | throw an         | <ApplicationStage> | <ProductType> | <ApplicantType> | <FundingFor> | <FinanceMode> |
      | PAN                          | alphaNumeric values                         | throw an         | <ApplicationStage> | <ProductType> | <ApplicantType> | <FundingFor> | <FinanceMode> |
      | PAN                          | special characters                          | throw an         | <ApplicationStage> | <ProductType> | <ApplicantType> | <FundingFor> | <FinanceMode> |
      | PAN                          | size less than 10                           | throw an         | <ApplicationStage> | <ProductType> | <ApplicantType> | <FundingFor> | <FinanceMode> |
      | KYC Identification Number    | 14 digits                                   | not throw any    | <ApplicationStage> | <ProductType> | <ApplicantType> | <FundingFor> | <FinanceMode> |
      | KYC Identification Number    | 15 digits                                   | not throw any    | <ApplicationStage> | <ProductType> | <ApplicantType> | <FundingFor> | <FinanceMode> |
      | KYC Identification Number    | less than 14 digits                         | throw an         | <ApplicationStage> | <ProductType> | <ApplicantType> | <FundingFor> | <FinanceMode> |
      | KYC Identification Number    | 14 characters                               | not throw any    | <ApplicationStage> | <ProductType> | <ApplicantType> | <FundingFor> | <FinanceMode> |
      | KYC Identification Number    | 15 characters                               | not throw any    | <ApplicationStage> | <ProductType> | <ApplicantType> | <FundingFor> | <FinanceMode> |
      | KYC Identification Number    | less than 14 characters                     | throw an         | <ApplicationStage> | <ProductType> | <ApplicantType> | <FundingFor> | <FinanceMode> |
      | KYC Identification Number    | alphaNumeric with 14 size                   | not throw any    | <ApplicationStage> | <ProductType> | <ApplicantType> | <FundingFor> | <FinanceMode> |
      | KYC Identification Number    | alphaNumeric with 15 size                   | not throw any    | <ApplicationStage> | <ProductType> | <ApplicantType> | <FundingFor> | <FinanceMode> |
      | KYC Identification Number    | alphaNumeric with less than 14 size         | throw an         | <ApplicationStage> | <ProductType> | <ApplicantType> | <FundingFor> | <FinanceMode> |
      | KYC Identification Number    | special characters                          | throw an         | <ApplicationStage> | <ProductType> | <ApplicantType> | <FundingFor> | <FinanceMode> |
      | Unique Identification Number | digits                                      | not throw any    | <ApplicationStage> | <ProductType> | <ApplicantType> | <FundingFor> | <FinanceMode> |
      | Unique Identification Number | alphaNumeric                                | not throw any    | <ApplicationStage> | <ProductType> | <ApplicantType> | <FundingFor> | <FinanceMode> |
      | Unique Identification Number | characters                                  | not throw any    | <ApplicationStage> | <ProductType> | <ApplicantType> | <FundingFor> | <FinanceMode> |
      | Unique Identification Number | special characters                          | throw an         | <ApplicationStage> | <ProductType> | <ApplicantType> | <FundingFor> | <FinanceMode> |
      | Service Tax No               | numeric values                              | throw an         | <ApplicationStage> | <ProductType> | <ApplicantType> | <FundingFor> | <FinanceMode> |
      | Service Tax No               | invalid format                              | throw an         | <ApplicationStage> | <ProductType> | <ApplicantType> | <FundingFor> | <FinanceMode> |
      | Service Tax No               | alphaNumeric values                         | throw an         | <ApplicationStage> | <ProductType> | <ApplicantType> | <FundingFor> | <FinanceMode> |
      | Service Tax No               | special characters                          | throw an         | <ApplicationStage> | <ProductType> | <ApplicantType> | <FundingFor> | <FinanceMode> |
      | Service Tax No               | size less than 15                           | throw an         | <ApplicationStage> | <ProductType> | <ApplicantType> | <FundingFor> | <FinanceMode> |
      | Service Tax No               | valid format AAA(P/H)A1234A(ST/SD)(001/002) | not throw any    | <ApplicationStage> | <ProductType> | <ApplicantType> | <FundingFor> | <FinanceMode> |
      | TIN No                       | 10 digits                                   | not throw any    | <ApplicationStage> | <ProductType> | <ApplicantType> | <FundingFor> | <FinanceMode> |
      | TIN No                       | 11 digits                                   | not throw any    | <ApplicationStage> | <ProductType> | <ApplicantType> | <FundingFor> | <FinanceMode> |
      | TIN No                       | less than 10 digits                         | throw an         | <ApplicationStage> | <ProductType> | <ApplicantType> | <FundingFor> | <FinanceMode> |
      | TIN No                       | alphaNumeric                                | throw an         | <ApplicationStage> | <ProductType> | <ApplicantType> | <FundingFor> | <FinanceMode> |
      | TIN No                       | special characters                          | throw an         | <ApplicationStage> | <ProductType> | <ApplicantType> | <FundingFor> | <FinanceMode> |

       #Prerequisite:Application already punch with application type as Multi Asset
# ${ ProductType : ["CV"]}
# ${ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
#${ApplicantType:["indiv","nonindiv"]}
    #${FinanceMode:["Purchase","Refinance"]}
  # ${FundingFor:["Chassis","FBV"]}
    #FeatureID-ACAUTOCAS-11906
  Scenario Outline:Validation of Identification Number of <IdentificationType> in identification with <InputType> as per the Individual_Non-Individual as Non Individual with Finance Mode as <FinanceMode> at <ApplicationStage> stage for <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user navigates to asset requested page for "<ApplicationStage>"
    And user select Funding For as "<FundingFor>"
    And user select Finance Mode as "<FinanceMode>"
    And user select asset type as Used Asset
    And user select Bought From as Individual
    And user select IndividualNon-Individual as Non Individual
    And user open identification accordion of seller
    When user selects Identification Type of seller as "<IdentificationType>"
    And user fills "Identification Number" of seller with "<InputType>" in identification
    Then "Identification Number" field of seller "<Throws_notThrows>" error in identification


    Examples:
      | IdentificationType           | InputType                                   | Throws_notThrows | ApplicationStage   | ProductType   | ApplicantType   | FundingFor   | FinanceMode   |
      | ABN                          | 11 digits                                   | not throw any    | <ApplicationStage> | <ProductType> | <ApplicantType> | <FundingFor> | <FinanceMode> |
      | ABN                          | less than 11 digits                         | throw an         | <ApplicationStage> | <ProductType> | <ApplicantType> | <FundingFor> | <FinanceMode> |
      | ABN                          | characters                                  | throw an         | <ApplicationStage> | <ProductType> | <ApplicantType> | <FundingFor> | <FinanceMode> |
      | ABN                          | less than 11 characters                     | throw an         | <ApplicationStage> | <ProductType> | <ApplicantType> | <FundingFor> | <FinanceMode> |
      | ABN                          | alphaNumeric with 11 size                   | throw an         | <ApplicationStage> | <ProductType> | <ApplicantType> | <FundingFor> | <FinanceMode> |
      | ABN                          | special characters                          | throw an         | <ApplicationStage> | <ProductType> | <ApplicantType> | <FundingFor> | <FinanceMode> |
      | ACN                          | 9 digits                                    | not throw any    | <ApplicationStage> | <ProductType> | <ApplicantType> | <FundingFor> | <FinanceMode> |
      | ACN                          | less than 9 digits                          | throw an         | <ApplicationStage> | <ProductType> | <ApplicantType> | <FundingFor> | <FinanceMode> |
      | ACN                          | characters                                  | throw an         | <ApplicationStage> | <ProductType> | <ApplicantType> | <FundingFor> | <FinanceMode> |
      | ACN                          | less than 9 characters                      | throw an         | <ApplicationStage> | <ProductType> | <ApplicantType> | <FundingFor> | <FinanceMode> |
      | ACN                          | alphaNumeric with 9 size                    | throw an         | <ApplicationStage> | <ProductType> | <ApplicantType> | <FundingFor> | <FinanceMode> |
      | ACN                          | special characters                          | throw an         | <ApplicationStage> | <ProductType> | <ApplicantType> | <FundingFor> | <FinanceMode> |
      | ARBN                         | 9 digits                                    | not throw any    | <ApplicationStage> | <ProductType> | <ApplicantType> | <FundingFor> | <FinanceMode> |
      | ARBN                         | less than 9 digits                          | throw an         | <ApplicationStage> | <ProductType> | <ApplicantType> | <FundingFor> | <FinanceMode> |
      | ARBN                         | characters                                  | throw an         | <ApplicationStage> | <ProductType> | <ApplicantType> | <FundingFor> | <FinanceMode> |
      | ARBN                         | less than 9 characters                      | throw an         | <ApplicationStage> | <ProductType> | <ApplicantType> | <FundingFor> | <FinanceMode> |
      | ARBN                         | alphaNumeric with 9 size                    | throw an         | <ApplicationStage> | <ProductType> | <ApplicantType> | <FundingFor> | <FinanceMode> |
      | ARBN                         | special characters                          | throw an         | <ApplicationStage> | <ProductType> | <ApplicantType> | <FundingFor> | <FinanceMode> |
      | ARSN                         | 9 digits                                    | not throw any    | <ApplicationStage> | <ProductType> | <ApplicantType> | <FundingFor> | <FinanceMode> |
      | ARSN                         | less than 9 digits                          | throw an         | <ApplicationStage> | <ProductType> | <ApplicantType> | <FundingFor> | <FinanceMode> |
      | ARSN                         | characters                                  | throw an         | <ApplicationStage> | <ProductType> | <ApplicantType> | <FundingFor> | <FinanceMode> |
      | ARSN                         | less than 9 characters                      | throw an         | <ApplicationStage> | <ProductType> | <ApplicantType> | <FundingFor> | <FinanceMode> |
      | ARSN                         | alphaNumeric with 9 size                    | throw an         | <ApplicationStage> | <ProductType> | <ApplicantType> | <FundingFor> | <FinanceMode> |
      | ARSN                         | special characters                          | throw an         | <ApplicationStage> | <ProductType> | <ApplicantType> | <FundingFor> | <FinanceMode> |
      | CIN No                       | numeric values                              | throw an         | <ApplicationStage> | <ProductType> | <ApplicantType> | <FundingFor> | <FinanceMode> |
      | CIN No                       | invalid format                              | throw an         | <ApplicationStage> | <ProductType> | <ApplicantType> | <FundingFor> | <FinanceMode> |
      | CIN No                       | alphaNumeric values                         | throw an         | <ApplicationStage> | <ProductType> | <ApplicantType> | <FundingFor> | <FinanceMode> |
      | CIN No                       | special characters                          | throw an         | <ApplicationStage> | <ProductType> | <ApplicantType> | <FundingFor> | <FinanceMode> |
      | CIN No                       | size less than 21                           | throw an         | <ApplicationStage> | <ProductType> | <ApplicantType> | <FundingFor> | <FinanceMode> |
      | CIN No                       | valid format (L/U)12345AA1234AAA123456      | not throw any    | <ApplicationStage> | <ProductType> | <ApplicantType> | <FundingFor> | <FinanceMode> |
      | PAN                          | numeric values                              | throw an         | <ApplicationStage> | <ProductType> | <ApplicantType> | <FundingFor> | <FinanceMode> |
      | PAN                          | invalid format                              | throw an         | <ApplicationStage> | <ProductType> | <ApplicantType> | <FundingFor> | <FinanceMode> |
      | PAN                          | alphaNumeric values                         | throw an         | <ApplicationStage> | <ProductType> | <ApplicantType> | <FundingFor> | <FinanceMode> |
      | PAN                          | special characters                          | throw an         | <ApplicationStage> | <ProductType> | <ApplicantType> | <FundingFor> | <FinanceMode> |
      | PAN                          | size less than 10                           | throw an         | <ApplicationStage> | <ProductType> | <ApplicantType> | <FundingFor> | <FinanceMode> |
      | KYC Identification Number    | 14 digits                                   | not throw any    | <ApplicationStage> | <ProductType> | <ApplicantType> | <FundingFor> | <FinanceMode> |
      | KYC Identification Number    | 15 digits                                   | not throw any    | <ApplicationStage> | <ProductType> | <ApplicantType> | <FundingFor> | <FinanceMode> |
      | KYC Identification Number    | less than 14 digits                         | throw an         | <ApplicationStage> | <ProductType> | <ApplicantType> | <FundingFor> | <FinanceMode> |
      | KYC Identification Number    | 14 characters                               | not throw any    | <ApplicationStage> | <ProductType> | <ApplicantType> | <FundingFor> | <FinanceMode> |
      | KYC Identification Number    | 15 characters                               | not throw any    | <ApplicationStage> | <ProductType> | <ApplicantType> | <FundingFor> | <FinanceMode> |
      | KYC Identification Number    | less than 14 characters                     | throw an         | <ApplicationStage> | <ProductType> | <ApplicantType> | <FundingFor> | <FinanceMode> |
      | KYC Identification Number    | alphaNumeric with 14 size                   | not throw any    | <ApplicationStage> | <ProductType> | <ApplicantType> | <FundingFor> | <FinanceMode> |
      | KYC Identification Number    | alphaNumeric with 15 size                   | not throw any    | <ApplicationStage> | <ProductType> | <ApplicantType> | <FundingFor> | <FinanceMode> |
      | KYC Identification Number    | alphaNumeric with less than 14 size         | throw an         | <ApplicationStage> | <ProductType> | <ApplicantType> | <FundingFor> | <FinanceMode> |
      | KYC Identification Number    | special characters                          | throw an         | <ApplicationStage> | <ProductType> | <ApplicantType> | <FundingFor> | <FinanceMode> |
      | Unique Identification Number | digits                                      | not throw any    | <ApplicationStage> | <ProductType> | <ApplicantType> | <FundingFor> | <FinanceMode> |
      | Unique Identification Number | alphaNumeric                                | not throw any    | <ApplicationStage> | <ProductType> | <ApplicantType> | <FundingFor> | <FinanceMode> |
      | Unique Identification Number | characters                                  | not throw any    | <ApplicationStage> | <ProductType> | <ApplicantType> | <FundingFor> | <FinanceMode> |
      | Unique Identification Number | special characters                          | throw an         | <ApplicationStage> | <ProductType> | <ApplicantType> | <FundingFor> | <FinanceMode> |
      | Service Tax No               | numeric values                              | throw an         | <ApplicationStage> | <ProductType> | <ApplicantType> | <FundingFor> | <FinanceMode> |
      | Service Tax No               | invalid format                              | throw an         | <ApplicationStage> | <ProductType> | <ApplicantType> | <FundingFor> | <FinanceMode> |
      | Service Tax No               | alphaNumeric values                         | throw an         | <ApplicationStage> | <ProductType> | <ApplicantType> | <FundingFor> | <FinanceMode> |
      | Service Tax No               | special characters                          | throw an         | <ApplicationStage> | <ProductType> | <ApplicantType> | <FundingFor> | <FinanceMode> |
      | Service Tax No               | size less than 15                           | throw an         | <ApplicationStage> | <ProductType> | <ApplicantType> | <FundingFor> | <FinanceMode> |
      | Service Tax No               | valid format AAA(P/H)A1234A(ST/SD)(001/002) | not throw any    | <ApplicationStage> | <ProductType> | <ApplicantType> | <FundingFor> | <FinanceMode> |
      | TIN No                       | 10 digits                                   | not throw any    | <ApplicationStage> | <ProductType> | <ApplicantType> | <FundingFor> | <FinanceMode> |
      | TIN No                       | 11 digits                                   | not throw any    | <ApplicationStage> | <ProductType> | <ApplicantType> | <FundingFor> | <FinanceMode> |
      | TIN No                       | less than 10 digits                         | throw an         | <ApplicationStage> | <ProductType> | <ApplicantType> | <FundingFor> | <FinanceMode> |
      | TIN No                       | alphaNumeric                                | throw an         | <ApplicationStage> | <ProductType> | <ApplicantType> | <FundingFor> | <FinanceMode> |
      | TIN No                       | special characters                          | throw an         | <ApplicationStage> | <ProductType> | <ApplicantType> | <FundingFor> | <FinanceMode> |

     #Prerequisite:Application already punch with application type as Multi Asset
# ${ ProductType : ["CEQ","CV"]}
# ${ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
#${ApplicantType:["indiv","nonindiv"]}
  #${FinanceMode:["Purchase","Refinance"]}
  # ${FundingFor:["Chassis","FBV"]}
    #FeatureID-ACAUTOCAS-11906
  Scenario Outline:Validation of <Date> of <IdentificationType> identification with <InputType> as per the Individual_Non-Individual as Non Individual with Finance Mode as <FinanceMode> for multi Asset at <ApplicationStage> for <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user navigates to asset requested page
    And user select Funding For as "<FundingFor>"
    And user select Finance Mode as "<FinanceMode>"
    And user select asset type as Used Asset
    And user select Individual_Non-Individual as Non Individual
    And user open identification accordion
    When user selects Identification Type as "<IdentificationType>"
    And user fills "<Date>" with "<InputType>" in identification
    Then "<Date>" field "<Throws_notThrows>" error in identification


    Examples:
      | IdentificationType           | Date        | InputType              | Throws_notThrows | ApplicationStage   | ProductType   | ApplicantType   | FundingFor   | FinanceMode   |
      | ABN                          | Issue Date  | valid date             | not throw any    | <ApplicationStage> | <ProductType> | <ApplicantType> | <FundingFor> | <FinanceMode> |
      | ABN                          | Issue Date  | invalid date           | throw an         | <ApplicationStage> | <ProductType> | <ApplicantType> | <FundingFor> | <FinanceMode> |
      | ABN                          | Issue Date  | more than current date | throw an         | <ApplicationStage> | <ProductType> | <ApplicantType> | <FundingFor> | <FinanceMode> |
      | ABN                          | Issue Date  | before 1942            | throw an         | <ApplicationStage> | <ProductType> | <ApplicantType> | <FundingFor> | <FinanceMode> |
      | ABN                          | Expiry Date | valid date             | not throw any    | <ApplicationStage> | <ProductType> | <ApplicantType> | <FundingFor> | <FinanceMode> |
      | ABN                          | Expiry Date | invalid date           | throw an         | <ApplicationStage> | <ProductType> | <ApplicantType> | <FundingFor> | <FinanceMode> |
      | ABN                          | Expiry Date | more than current date | not throw any    | <ApplicationStage> | <ProductType> | <ApplicantType> | <FundingFor> | <FinanceMode> |
      | ABN                          | Expiry Date | less than current date | throw an         | <ApplicationStage> | <ProductType> | <ApplicantType> | <FundingFor> | <FinanceMode> |
      | ABN                          | Expiry Date | before 1942            | throw an         | <ApplicationStage> | <ProductType> | <ApplicantType> | <FundingFor> | <FinanceMode> |
      | ACN                          | Issue Date  | valid date             | not throw any    | <ApplicationStage> | <ProductType> | <ApplicantType> | <FundingFor> | <FinanceMode> |
      | ACN                          | Issue Date  | invalid date           | throw an         | <ApplicationStage> | <ProductType> | <ApplicantType> | <FundingFor> | <FinanceMode> |
      | ACN                          | Issue Date  | more than current date | throw an         | <ApplicationStage> | <ProductType> | <ApplicantType> | <FundingFor> | <FinanceMode> |
      | ACN                          | Issue Date  | before 1942            | throw an         | <ApplicationStage> | <ProductType> | <ApplicantType> | <FundingFor> | <FinanceMode> |
      | ACN                          | Expiry Date | valid date             | not throw any    | <ApplicationStage> | <ProductType> | <ApplicantType> | <FundingFor> | <FinanceMode> |
      | ACN                          | Expiry Date | invalid date           | throw an         | <ApplicationStage> | <ProductType> | <ApplicantType> | <FundingFor> | <FinanceMode> |
      | ACN                          | Expiry Date | more than current date | not throw any    | <ApplicationStage> | <ProductType> | <ApplicantType> | <FundingFor> | <FinanceMode> |
      | ACN                          | Expiry Date | less than current date | throw an         | <ApplicationStage> | <ProductType> | <ApplicantType> | <FundingFor> | <FinanceMode> |
      | ACN                          | Expiry Date | before 1942            | throw an         | <ApplicationStage> | <ProductType> | <ApplicantType> | <FundingFor> | <FinanceMode> |
      | ARBN                         | Issue Date  | valid date             | not throw any    | <ApplicationStage> | <ProductType> | <ApplicantType> | <FundingFor> | <FinanceMode> |
      | ARBN                         | Issue Date  | invalid date           | throw an         | <ApplicationStage> | <ProductType> | <ApplicantType> | <FundingFor> | <FinanceMode> |
      | ARBN                         | Issue Date  | more than current date | throw an         | <ApplicationStage> | <ProductType> | <ApplicantType> | <FundingFor> | <FinanceMode> |
      | ARBN                         | Issue Date  | before 1942            | throw an         | <ApplicationStage> | <ProductType> | <ApplicantType> | <FundingFor> | <FinanceMode> |
      | ARBN                         | Expiry Date | valid date             | not throw any    | <ApplicationStage> | <ProductType> | <ApplicantType> | <FundingFor> | <FinanceMode> |
      | ARBN                         | Expiry Date | invalid date           | throw an         | <ApplicationStage> | <ProductType> | <ApplicantType> | <FundingFor> | <FinanceMode> |
      | ARBN                         | Expiry Date | more than current date | not throw any    | <ApplicationStage> | <ProductType> | <ApplicantType> | <FundingFor> | <FinanceMode> |
      | ARBN                         | Expiry Date | less than current date | throw an         | <ApplicationStage> | <ProductType> | <ApplicantType> | <FundingFor> | <FinanceMode> |
      | ARBN                         | Expiry Date | before 1942            | throw an         | <ApplicationStage> | <ProductType> | <ApplicantType> | <FundingFor> | <FinanceMode> |
      | ARSN                         | Issue Date  | valid date             | not throw any    | <ApplicationStage> | <ProductType> | <ApplicantType> | <FundingFor> | <FinanceMode> |
      | ARSN                         | Issue Date  | invalid date           | throw an         | <ApplicationStage> | <ProductType> | <ApplicantType> | <FundingFor> | <FinanceMode> |
      | ARSN                         | Issue Date  | more than current date | throw an         | <ApplicationStage> | <ProductType> | <ApplicantType> | <FundingFor> | <FinanceMode> |
      | ARSN                         | Issue Date  | before 1942            | throw an         | <ApplicationStage> | <ProductType> | <ApplicantType> | <FundingFor> | <FinanceMode> |
      | ARSN                         | Expiry Date | valid date             | not throw any    | <ApplicationStage> | <ProductType> | <ApplicantType> | <FundingFor> | <FinanceMode> |
      | ARSN                         | Expiry Date | invalid date           | throw an         | <ApplicationStage> | <ProductType> | <ApplicantType> | <FundingFor> | <FinanceMode> |
      | ARSN                         | Expiry Date | more than current date | not throw any    | <ApplicationStage> | <ProductType> | <ApplicantType> | <FundingFor> | <FinanceMode> |
      | ARSN                         | Expiry Date | less than current date | throw an         | <ApplicationStage> | <ProductType> | <ApplicantType> | <FundingFor> | <FinanceMode> |
      | ARSN                         | Expiry Date | before 1942            | throw an         | <ApplicationStage> | <ProductType> | <ApplicantType> | <FundingFor> | <FinanceMode> |
      | CIN No                       | Issue Date  | valid date             | not throw any    | <ApplicationStage> | <ProductType> | <ApplicantType> | <FundingFor> | <FinanceMode> |
      | CIN No                       | Issue Date  | invalid date           | throw an         | <ApplicationStage> | <ProductType> | <ApplicantType> | <FundingFor> | <FinanceMode> |
      | CIN No                       | Issue Date  | more than current date | throw an         | <ApplicationStage> | <ProductType> | <ApplicantType> | <FundingFor> | <FinanceMode> |
      | CIN No                       | Issue Date  | before 1942            | throw an         | <ApplicationStage> | <ProductType> | <ApplicantType> | <FundingFor> | <FinanceMode> |
      | CIN No                       | Expiry Date | valid date             | not throw any    | <ApplicationStage> | <ProductType> | <ApplicantType> | <FundingFor> | <FinanceMode> |
      | CIN No                       | Expiry Date | invalid date           | throw an         | <ApplicationStage> | <ProductType> | <ApplicantType> | <FundingFor> | <FinanceMode> |
      | CIN No                       | Expiry Date | more than current date | not throw any    | <ApplicationStage> | <ProductType> | <ApplicantType> | <FundingFor> | <FinanceMode> |
      | CIN No                       | Expiry Date | less than current date | throw an         | <ApplicationStage> | <ProductType> | <ApplicantType> | <FundingFor> | <FinanceMode> |
      | CIN No                       | Expiry Date | before 1942            | throw an         | <ApplicationStage> | <ProductType> | <ApplicantType> | <FundingFor> | <FinanceMode> |
      | KYC Identification Number    | Issue Date  | valid date             | not throw any    | <ApplicationStage> | <ProductType> | <ApplicantType> | <FundingFor> | <FinanceMode> |
      | KYC Identification Number    | Issue Date  | invalid date           | throw an         | <ApplicationStage> | <ProductType> | <ApplicantType> | <FundingFor> | <FinanceMode> |
      | KYC Identification Number    | Issue Date  | more than current date | throw an         | <ApplicationStage> | <ProductType> | <ApplicantType> | <FundingFor> | <FinanceMode> |
      | KYC Identification Number    | Issue Date  | before 1942            | throw an         | <ApplicationStage> | <ProductType> | <ApplicantType> | <FundingFor> | <FinanceMode> |
      | KYC Identification Number    | Expiry Date | valid date             | not throw any    | <ApplicationStage> | <ProductType> | <ApplicantType> | <FundingFor> | <FinanceMode> |
      | KYC Identification Number    | Expiry Date | invalid date           | throw an         | <ApplicationStage> | <ProductType> | <ApplicantType> | <FundingFor> | <FinanceMode> |
      | KYC Identification Number    | Expiry Date | more than current date | not throw any    | <ApplicationStage> | <ProductType> | <ApplicantType> | <FundingFor> | <FinanceMode> |
      | KYC Identification Number    | Expiry Date | less than current date | throw an         | <ApplicationStage> | <ProductType> | <ApplicantType> | <FundingFor> | <FinanceMode> |
      | KYC Identification Number    | Expiry Date | before 1942            | throw an         | <ApplicationStage> | <ProductType> | <ApplicantType> | <FundingFor> | <FinanceMode> |
      | PAN                          | Issue Date  | valid date             | not throw any    | <ApplicationStage> | <ProductType> | <ApplicantType> | <FundingFor> | <FinanceMode> |
      | PAN                          | Issue Date  | invalid date           | throw an         | <ApplicationStage> | <ProductType> | <ApplicantType> | <FundingFor> | <FinanceMode> |
      | PAN                          | Issue Date  | more than current date | throw an         | <ApplicationStage> | <ProductType> | <ApplicantType> | <FundingFor> | <FinanceMode> |
      | PAN                          | Issue Date  | before 1942            | throw an         | <ApplicationStage> | <ProductType> | <ApplicantType> | <FundingFor> | <FinanceMode> |
      | PAN                          | Expiry Date | valid date             | not throw any    | <ApplicationStage> | <ProductType> | <ApplicantType> | <FundingFor> | <FinanceMode> |
      | PAN                          | Expiry Date | invalid date           | throw an         | <ApplicationStage> | <ProductType> | <ApplicantType> | <FundingFor> | <FinanceMode> |
      | PAN                          | Expiry Date | more than current date | not throw any    | <ApplicationStage> | <ProductType> | <ApplicantType> | <FundingFor> | <FinanceMode> |
      | PAN                          | Expiry Date | less than current date | throw an         | <ApplicationStage> | <ProductType> | <ApplicantType> | <FundingFor> | <FinanceMode> |
      | PAN                          | Expiry Date | before 1942            | throw an         | <ApplicationStage> | <ProductType> | <ApplicantType> | <FundingFor> | <FinanceMode> |
      | Service Tax No               | Issue Date  | valid date             | not throw any    | <ApplicationStage> | <ProductType> | <ApplicantType> | <FundingFor> | <FinanceMode> |
      | Service Tax No               | Issue Date  | invalid date           | throw an         | <ApplicationStage> | <ProductType> | <ApplicantType> | <FundingFor> | <FinanceMode> |
      | Service Tax No               | Issue Date  | more than current date | throw an         | <ApplicationStage> | <ProductType> | <ApplicantType> | <FundingFor> | <FinanceMode> |
      | Service Tax No               | Issue Date  | before 1942            | throw an         | <ApplicationStage> | <ProductType> | <ApplicantType> | <FundingFor> | <FinanceMode> |
      | Service Tax No               | Expiry Date | valid date             | not throw any    | <ApplicationStage> | <ProductType> | <ApplicantType> | <FundingFor> | <FinanceMode> |
      | Service Tax No               | Expiry Date | invalid date           | throw an         | <ApplicationStage> | <ProductType> | <ApplicantType> | <FundingFor> | <FinanceMode> |
      | Service Tax No               | Expiry Date | more than current date | not throw any    | <ApplicationStage> | <ProductType> | <ApplicantType> | <FundingFor> | <FinanceMode> |
      | Service Tax No               | Expiry Date | less than current date | throw an         | <ApplicationStage> | <ProductType> | <ApplicantType> | <FundingFor> | <FinanceMode> |
      | Service Tax No               | Expiry Date | before 1942            | throw an         | <ApplicationStage> | <ProductType> | <ApplicantType> | <FundingFor> | <FinanceMode> |
      | TIN No                       | Issue Date  | valid date             | not throw any    | <ApplicationStage> | <ProductType> | <ApplicantType> | <FundingFor> | <FinanceMode> |
      | TIN No                       | Issue Date  | invalid date           | throw an         | <ApplicationStage> | <ProductType> | <ApplicantType> | <FundingFor> | <FinanceMode> |
      | TIN No                       | Issue Date  | more than current date | throw an         | <ApplicationStage> | <ProductType> | <ApplicantType> | <FundingFor> | <FinanceMode> |
      | TIN No                       | Issue Date  | before 1942            | throw an         | <ApplicationStage> | <ProductType> | <ApplicantType> | <FundingFor> | <FinanceMode> |
      | TIN No                       | Expiry Date | valid date             | not throw any    | <ApplicationStage> | <ProductType> | <ApplicantType> | <FundingFor> | <FinanceMode> |
      | TIN No                       | Expiry Date | invalid date           | throw an         | <ApplicationStage> | <ProductType> | <ApplicantType> | <FundingFor> | <FinanceMode> |
      | TIN No                       | Expiry Date | more than current date | not throw any    | <ApplicationStage> | <ProductType> | <ApplicantType> | <FundingFor> | <FinanceMode> |
      | TIN No                       | Expiry Date | less than current date | throw an         | <ApplicationStage> | <ProductType> | <ApplicantType> | <FundingFor> | <FinanceMode> |
      | TIN No                       | Expiry Date | before 1942            | throw an         | <ApplicationStage> | <ProductType> | <ApplicantType> | <FundingFor> | <FinanceMode> |
      | Unique Identification Number | Issue Date  | valid date             | not throw any    | <ApplicationStage> | <ProductType> | <ApplicantType> | <FundingFor> | <FinanceMode> |
      | Unique Identification Number | Issue Date  | invalid date           | throw an         | <ApplicationStage> | <ProductType> | <ApplicantType> | <FundingFor> | <FinanceMode> |
      | Unique Identification Number | Issue Date  | more than current date | throw an         | <ApplicationStage> | <ProductType> | <ApplicantType> | <FundingFor> | <FinanceMode> |
      | Unique Identification Number | Issue Date  | before 1942            | throw an         | <ApplicationStage> | <ProductType> | <ApplicantType> | <FundingFor> | <FinanceMode> |
      | Unique Identification Number | Expiry Date | valid date             | not throw any    | <ApplicationStage> | <ProductType> | <ApplicantType> | <FundingFor> | <FinanceMode> |
      | Unique Identification Number | Expiry Date | invalid date           | throw an         | <ApplicationStage> | <ProductType> | <ApplicantType> | <FundingFor> | <FinanceMode> |
      | Unique Identification Number | Expiry Date | more than current date | not throw any    | <ApplicationStage> | <ProductType> | <ApplicantType> | <FundingFor> | <FinanceMode> |
      | Unique Identification Number | Expiry Date | less than current date | throw an         | <ApplicationStage> | <ProductType> | <ApplicantType> | <FundingFor> | <FinanceMode> |
      | Unique Identification Number | Expiry Date | before 1942            | throw an         | <ApplicationStage> | <ProductType> | <ApplicantType> | <FundingFor> | <FinanceMode> |

 #Prerequisite:Application already punch with application type as Multi Asset
# ${ ProductType : ["CV"]}
# ${ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
#${ApplicantType:["indiv","nonindiv"]}
  #${FinanceMode:["Purchase","Refinance"]}
  # ${FundingFor:["Body","Both"]}
    #FeatureID-ACAUTOCAS-11906
  Scenario Outline:Validation of <Date> of <IdentificationType> identification with <InputType> as per the Individual_Non-Individual as Non Individual with Finance Mode as "<FinanceMode>" for multi Asset at <ApplicationStage> for <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user navigates to asset requested page
    And user select Funding For as "<FundingFor>"
    And user select Finance Mode as "<FinanceMode>"
    And user select asset type as Used Asset
    And user select Individual_Non-Individual as Non Individual
    And user open identification accordion
    When user selects Identification Type as "<IdentificationType>"
    And user fills "<Date>" with "<InputType>" in identification
    Then "<Date>" field "<Throws_notThrows>" error in identification


    Examples:
      | IdentificationType           | Date        | InputType              | Throws_notThrows | ApplicationStage   | ProductType   | ApplicantType   | FundingFor   | FinanceMode   |
      | ABN                          | Issue Date  | valid date             | not throw any    | <ApplicationStage> | <ProductType> | <ApplicantType> | <FundingFor> | <FinanceMode> |
      | ABN                          | Issue Date  | invalid date           | throw an         | <ApplicationStage> | <ProductType> | <ApplicantType> | <FundingFor> | <FinanceMode> |
      | ABN                          | Issue Date  | more than current date | throw an         | <ApplicationStage> | <ProductType> | <ApplicantType> | <FundingFor> | <FinanceMode> |
      | ABN                          | Issue Date  | before 1942            | throw an         | <ApplicationStage> | <ProductType> | <ApplicantType> | <FundingFor> | <FinanceMode> |
      | ABN                          | Expiry Date | valid date             | not throw any    | <ApplicationStage> | <ProductType> | <ApplicantType> | <FundingFor> | <FinanceMode> |
      | ABN                          | Expiry Date | invalid date           | throw an         | <ApplicationStage> | <ProductType> | <ApplicantType> | <FundingFor> | <FinanceMode> |
      | ABN                          | Expiry Date | more than current date | not throw any    | <ApplicationStage> | <ProductType> | <ApplicantType> | <FundingFor> | <FinanceMode> |
      | ABN                          | Expiry Date | less than current date | throw an         | <ApplicationStage> | <ProductType> | <ApplicantType> | <FundingFor> | <FinanceMode> |
      | ABN                          | Expiry Date | before 1942            | throw an         | <ApplicationStage> | <ProductType> | <ApplicantType> | <FundingFor> | <FinanceMode> |
      | ACN                          | Issue Date  | valid date             | not throw any    | <ApplicationStage> | <ProductType> | <ApplicantType> | <FundingFor> | <FinanceMode> |
      | ACN                          | Issue Date  | invalid date           | throw an         | <ApplicationStage> | <ProductType> | <ApplicantType> | <FundingFor> | <FinanceMode> |
      | ACN                          | Issue Date  | more than current date | throw an         | <ApplicationStage> | <ProductType> | <ApplicantType> | <FundingFor> | <FinanceMode> |
      | ACN                          | Issue Date  | before 1942            | throw an         | <ApplicationStage> | <ProductType> | <ApplicantType> | <FundingFor> | <FinanceMode> |
      | ACN                          | Expiry Date | valid date             | not throw any    | <ApplicationStage> | <ProductType> | <ApplicantType> | <FundingFor> | <FinanceMode> |
      | ACN                          | Expiry Date | invalid date           | throw an         | <ApplicationStage> | <ProductType> | <ApplicantType> | <FundingFor> | <FinanceMode> |
      | ACN                          | Expiry Date | more than current date | not throw any    | <ApplicationStage> | <ProductType> | <ApplicantType> | <FundingFor> | <FinanceMode> |
      | ACN                          | Expiry Date | less than current date | throw an         | <ApplicationStage> | <ProductType> | <ApplicantType> | <FundingFor> | <FinanceMode> |
      | ACN                          | Expiry Date | before 1942            | throw an         | <ApplicationStage> | <ProductType> | <ApplicantType> | <FundingFor> | <FinanceMode> |
      | ARBN                         | Issue Date  | valid date             | not throw any    | <ApplicationStage> | <ProductType> | <ApplicantType> | <FundingFor> | <FinanceMode> |
      | ARBN                         | Issue Date  | invalid date           | throw an         | <ApplicationStage> | <ProductType> | <ApplicantType> | <FundingFor> | <FinanceMode> |
      | ARBN                         | Issue Date  | more than current date | throw an         | <ApplicationStage> | <ProductType> | <ApplicantType> | <FundingFor> | <FinanceMode> |
      | ARBN                         | Issue Date  | before 1942            | throw an         | <ApplicationStage> | <ProductType> | <ApplicantType> | <FundingFor> | <FinanceMode> |
      | ARBN                         | Expiry Date | valid date             | not throw any    | <ApplicationStage> | <ProductType> | <ApplicantType> | <FundingFor> | <FinanceMode> |
      | ARBN                         | Expiry Date | invalid date           | throw an         | <ApplicationStage> | <ProductType> | <ApplicantType> | <FundingFor> | <FinanceMode> |
      | ARBN                         | Expiry Date | more than current date | not throw any    | <ApplicationStage> | <ProductType> | <ApplicantType> | <FundingFor> | <FinanceMode> |
      | ARBN                         | Expiry Date | less than current date | throw an         | <ApplicationStage> | <ProductType> | <ApplicantType> | <FundingFor> | <FinanceMode> |
      | ARBN                         | Expiry Date | before 1942            | throw an         | <ApplicationStage> | <ProductType> | <ApplicantType> | <FundingFor> | <FinanceMode> |
      | ARSN                         | Issue Date  | valid date             | not throw any    | <ApplicationStage> | <ProductType> | <ApplicantType> | <FundingFor> | <FinanceMode> |
      | ARSN                         | Issue Date  | invalid date           | throw an         | <ApplicationStage> | <ProductType> | <ApplicantType> | <FundingFor> | <FinanceMode> |
      | ARSN                         | Issue Date  | more than current date | throw an         | <ApplicationStage> | <ProductType> | <ApplicantType> | <FundingFor> | <FinanceMode> |
      | ARSN                         | Issue Date  | before 1942            | throw an         | <ApplicationStage> | <ProductType> | <ApplicantType> | <FundingFor> | <FinanceMode> |
      | ARSN                         | Expiry Date | valid date             | not throw any    | <ApplicationStage> | <ProductType> | <ApplicantType> | <FundingFor> | <FinanceMode> |
      | ARSN                         | Expiry Date | invalid date           | throw an         | <ApplicationStage> | <ProductType> | <ApplicantType> | <FundingFor> | <FinanceMode> |
      | ARSN                         | Expiry Date | more than current date | not throw any    | <ApplicationStage> | <ProductType> | <ApplicantType> | <FundingFor> | <FinanceMode> |
      | ARSN                         | Expiry Date | less than current date | throw an         | <ApplicationStage> | <ProductType> | <ApplicantType> | <FundingFor> | <FinanceMode> |
      | ARSN                         | Expiry Date | before 1942            | throw an         | <ApplicationStage> | <ProductType> | <ApplicantType> | <FundingFor> | <FinanceMode> |
      | CIN No                       | Issue Date  | valid date             | not throw any    | <ApplicationStage> | <ProductType> | <ApplicantType> | <FundingFor> | <FinanceMode> |
      | CIN No                       | Issue Date  | invalid date           | throw an         | <ApplicationStage> | <ProductType> | <ApplicantType> | <FundingFor> | <FinanceMode> |
      | CIN No                       | Issue Date  | more than current date | throw an         | <ApplicationStage> | <ProductType> | <ApplicantType> | <FundingFor> | <FinanceMode> |
      | CIN No                       | Issue Date  | before 1942            | throw an         | <ApplicationStage> | <ProductType> | <ApplicantType> | <FundingFor> | <FinanceMode> |
      | CIN No                       | Expiry Date | valid date             | not throw any    | <ApplicationStage> | <ProductType> | <ApplicantType> | <FundingFor> | <FinanceMode> |
      | CIN No                       | Expiry Date | invalid date           | throw an         | <ApplicationStage> | <ProductType> | <ApplicantType> | <FundingFor> | <FinanceMode> |
      | CIN No                       | Expiry Date | more than current date | not throw any    | <ApplicationStage> | <ProductType> | <ApplicantType> | <FundingFor> | <FinanceMode> |
      | CIN No                       | Expiry Date | less than current date | throw an         | <ApplicationStage> | <ProductType> | <ApplicantType> | <FundingFor> | <FinanceMode> |
      | CIN No                       | Expiry Date | before 1942            | throw an         | <ApplicationStage> | <ProductType> | <ApplicantType> | <FundingFor> | <FinanceMode> |
      | KYC Identification Number    | Issue Date  | valid date             | not throw any    | <ApplicationStage> | <ProductType> | <ApplicantType> | <FundingFor> | <FinanceMode> |
      | KYC Identification Number    | Issue Date  | invalid date           | throw an         | <ApplicationStage> | <ProductType> | <ApplicantType> | <FundingFor> | <FinanceMode> |
      | KYC Identification Number    | Issue Date  | more than current date | throw an         | <ApplicationStage> | <ProductType> | <ApplicantType> | <FundingFor> | <FinanceMode> |
      | KYC Identification Number    | Issue Date  | before 1942            | throw an         | <ApplicationStage> | <ProductType> | <ApplicantType> | <FundingFor> | <FinanceMode> |
      | KYC Identification Number    | Expiry Date | valid date             | not throw any    | <ApplicationStage> | <ProductType> | <ApplicantType> | <FundingFor> | <FinanceMode> |
      | KYC Identification Number    | Expiry Date | invalid date           | throw an         | <ApplicationStage> | <ProductType> | <ApplicantType> | <FundingFor> | <FinanceMode> |
      | KYC Identification Number    | Expiry Date | more than current date | not throw any    | <ApplicationStage> | <ProductType> | <ApplicantType> | <FundingFor> | <FinanceMode> |
      | KYC Identification Number    | Expiry Date | less than current date | throw an         | <ApplicationStage> | <ProductType> | <ApplicantType> | <FundingFor> | <FinanceMode> |
      | KYC Identification Number    | Expiry Date | before 1942            | throw an         | <ApplicationStage> | <ProductType> | <ApplicantType> | <FundingFor> | <FinanceMode> |
      | PAN                          | Issue Date  | valid date             | not throw any    | <ApplicationStage> | <ProductType> | <ApplicantType> | <FundingFor> | <FinanceMode> |
      | PAN                          | Issue Date  | invalid date           | throw an         | <ApplicationStage> | <ProductType> | <ApplicantType> | <FundingFor> | <FinanceMode> |
      | PAN                          | Issue Date  | more than current date | throw an         | <ApplicationStage> | <ProductType> | <ApplicantType> | <FundingFor> | <FinanceMode> |
      | PAN                          | Issue Date  | before 1942            | throw an         | <ApplicationStage> | <ProductType> | <ApplicantType> | <FundingFor> | <FinanceMode> |
      | PAN                          | Expiry Date | valid date             | not throw any    | <ApplicationStage> | <ProductType> | <ApplicantType> | <FundingFor> | <FinanceMode> |
      | PAN                          | Expiry Date | invalid date           | throw an         | <ApplicationStage> | <ProductType> | <ApplicantType> | <FundingFor> | <FinanceMode> |
      | PAN                          | Expiry Date | more than current date | not throw any    | <ApplicationStage> | <ProductType> | <ApplicantType> | <FundingFor> | <FinanceMode> |
      | PAN                          | Expiry Date | less than current date | throw an         | <ApplicationStage> | <ProductType> | <ApplicantType> | <FundingFor> | <FinanceMode> |
      | PAN                          | Expiry Date | before 1942            | throw an         | <ApplicationStage> | <ProductType> | <ApplicantType> | <FundingFor> | <FinanceMode> |
      | Service Tax No               | Issue Date  | valid date             | not throw any    | <ApplicationStage> | <ProductType> | <ApplicantType> | <FundingFor> | <FinanceMode> |
      | Service Tax No               | Issue Date  | invalid date           | throw an         | <ApplicationStage> | <ProductType> | <ApplicantType> | <FundingFor> | <FinanceMode> |
      | Service Tax No               | Issue Date  | more than current date | throw an         | <ApplicationStage> | <ProductType> | <ApplicantType> | <FundingFor> | <FinanceMode> |
      | Service Tax No               | Issue Date  | before 1942            | throw an         | <ApplicationStage> | <ProductType> | <ApplicantType> | <FundingFor> | <FinanceMode> |
      | Service Tax No               | Expiry Date | valid date             | not throw any    | <ApplicationStage> | <ProductType> | <ApplicantType> | <FundingFor> | <FinanceMode> |
      | Service Tax No               | Expiry Date | invalid date           | throw an         | <ApplicationStage> | <ProductType> | <ApplicantType> | <FundingFor> | <FinanceMode> |
      | Service Tax No               | Expiry Date | more than current date | not throw any    | <ApplicationStage> | <ProductType> | <ApplicantType> | <FundingFor> | <FinanceMode> |
      | Service Tax No               | Expiry Date | less than current date | throw an         | <ApplicationStage> | <ProductType> | <ApplicantType> | <FundingFor> | <FinanceMode> |
      | Service Tax No               | Expiry Date | before 1942            | throw an         | <ApplicationStage> | <ProductType> | <ApplicantType> | <FundingFor> | <FinanceMode> |
      | TIN No                       | Issue Date  | valid date             | not throw any    | <ApplicationStage> | <ProductType> | <ApplicantType> | <FundingFor> | <FinanceMode> |
      | TIN No                       | Issue Date  | invalid date           | throw an         | <ApplicationStage> | <ProductType> | <ApplicantType> | <FundingFor> | <FinanceMode> |
      | TIN No                       | Issue Date  | more than current date | throw an         | <ApplicationStage> | <ProductType> | <ApplicantType> | <FundingFor> | <FinanceMode> |
      | TIN No                       | Issue Date  | before 1942            | throw an         | <ApplicationStage> | <ProductType> | <ApplicantType> | <FundingFor> | <FinanceMode> |
      | TIN No                       | Expiry Date | valid date             | not throw any    | <ApplicationStage> | <ProductType> | <ApplicantType> | <FundingFor> | <FinanceMode> |
      | TIN No                       | Expiry Date | invalid date           | throw an         | <ApplicationStage> | <ProductType> | <ApplicantType> | <FundingFor> | <FinanceMode> |
      | TIN No                       | Expiry Date | more than current date | not throw any    | <ApplicationStage> | <ProductType> | <ApplicantType> | <FundingFor> | <FinanceMode> |
      | TIN No                       | Expiry Date | less than current date | throw an         | <ApplicationStage> | <ProductType> | <ApplicantType> | <FundingFor> | <FinanceMode> |
      | TIN No                       | Expiry Date | before 1942            | throw an         | <ApplicationStage> | <ProductType> | <ApplicantType> | <FundingFor> | <FinanceMode> |
      | Unique Identification Number | Issue Date  | valid date             | not throw any    | <ApplicationStage> | <ProductType> | <ApplicantType> | <FundingFor> | <FinanceMode> |
      | Unique Identification Number | Issue Date  | invalid date           | throw an         | <ApplicationStage> | <ProductType> | <ApplicantType> | <FundingFor> | <FinanceMode> |
      | Unique Identification Number | Issue Date  | more than current date | throw an         | <ApplicationStage> | <ProductType> | <ApplicantType> | <FundingFor> | <FinanceMode> |
      | Unique Identification Number | Issue Date  | before 1942            | throw an         | <ApplicationStage> | <ProductType> | <ApplicantType> | <FundingFor> | <FinanceMode> |
      | Unique Identification Number | Expiry Date | valid date             | not throw any    | <ApplicationStage> | <ProductType> | <ApplicantType> | <FundingFor> | <FinanceMode> |
      | Unique Identification Number | Expiry Date | invalid date           | throw an         | <ApplicationStage> | <ProductType> | <ApplicantType> | <FundingFor> | <FinanceMode> |
      | Unique Identification Number | Expiry Date | more than current date | not throw any    | <ApplicationStage> | <ProductType> | <ApplicantType> | <FundingFor> | <FinanceMode> |
      | Unique Identification Number | Expiry Date | less than current date | throw an         | <ApplicationStage> | <ProductType> | <ApplicantType> | <FundingFor> | <FinanceMode> |
      | Unique Identification Number | Expiry Date | before 1942            | throw an         | <ApplicationStage> | <ProductType> | <ApplicantType> | <FundingFor> | <FinanceMode> |


     #Prerequisite:Application already punch with application type as Multi Asset
# ${ ProductType : ["CEQ","CV"]}
# ${ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
#${ApplicantType:["indiv","nonindiv"]}
    #FeatureID-ACAUTOCAS-11906
  Scenario Outline:Fill identification details with "<Identification>" as per the Individual_Non-Individual as Individual with Finance Mode as <FinanceMode> for multi Asset at <ApplicationStage> stage for <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user navigates to asset requested page
    And user select Funding For as "<FundingFor>"
    And user select Finance Mode as "<FinanceMode>"
    And user select asset type as Used Asset
    And user select Individual_Non-Individual as Individual
    And user open identification accordion
    When user fill identification details with "<Identification>" identification type
    Then identification details should be added successfully


    Examples:
      | Identification            | ApplicationStage   | ProductType   | ApplicantType   | FundingFor | FinanceMode |
      | Aadhar No                 | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Refinance   |
      | Aadhar No                 | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Purchase    |
      | Aadhar No                 | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Refinance   |
      | Aadhar No                 | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Purchase    |
      | Authorization Letter      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Refinance   |
      | Authorization Letter      | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Purchase    |
      | Authorization Letter      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Refinance   |
      | Authorization Letter      | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Purchase    |
      | Driving License           | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Refinance   |
      | Driving License           | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Purchase    |
      | Driving License           | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Refinance   |
      | Driving License           | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Purchase    |
      | Government Employee Id    | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Refinance   |
      | Government Employee Id    | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Purchase    |
      | Government Employee Id    | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Refinance   |
      | Government Employee Id    | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Purchase    |
      | KYC Identification number | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Refinance   |
      | KYC Identification number | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Purchase    |
      | KYC Identification number | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Refinance   |
      | KYC Identification number | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Purchase    |
      | Nrega Job Card            | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Refinance   |
      | Nrega Job Card            | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Purchase    |
      | Nrega Job Card            | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Refinance   |
      | Nrega Job Card            | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Purchase    |
      | PAN                       | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Refinance   |
      | PAN                       | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Purchase    |
      | PAN                       | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Refinance   |
      | PAN                       | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Purchase    |
      | Sarpanch Letter           | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Refinance   |
      | Sarpanch Letter           | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Purchase    |
      | Sarpanch Letter           | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Refinance   |
      | Sarpanch Letter           | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Purchase    |
      | UID Token Number          | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Refinance   |
      | UID Token Number          | <ApplicationStage> | <ProductType> | <ApplicantType> | Chassis    | Purchase    |
      | UID Token Number          | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Refinance   |
      | UID Token Number          | <ApplicationStage> | <ProductType> | <ApplicantType> | FBV        | Purchase    |


     #Prerequisite:Application already punch with application type as Multi Asset
# ${ ProductType : ["CV"]}
# ${ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
#${ApplicantType:["indiv","nonindiv"]}
    #FeatureID-ACAUTOCAS-11906
  Scenario Outline:Fill identification details with "<Identification>" as per the Individual_Non-Individual as Individual with Finance Mode as <FinanceMode> at <ApplicationStage> stage for <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user navigates to asset requested page
    And user select Funding For as "<FundingFor>"
    And user select Finance Mode as "<FinanceMode>"
    And user select asset type as Used Asset
    And user select Individual_Non-Individual as Individual
    And user open identification accordion
    When user fill identification details with "<Identification>" identification type
    Then identification details should be added successfully


    Examples:
      | Identification            | ApplicationStage   | ProductType   | ApplicantType   | FundingFor | FinanceMode |
      | Aadhar No                 | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Refinance   |
      | Aadhar No                 | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Purchase    |
      | Aadhar No                 | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Refinance   |
      | Aadhar No                 | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Purchase    |
      | Authorization Letter      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Refinance   |
      | Authorization Letter      | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Purchase    |
      | Authorization Letter      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Refinance   |
      | Authorization Letter      | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Purchase    |
      | Driving License           | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Refinance   |
      | Driving License           | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Purchase    |
      | Driving License           | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Refinance   |
      | Driving License           | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Purchase    |
      | Government Employee Id    | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Refinance   |
      | Government Employee Id    | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Purchase    |
      | Government Employee Id    | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Refinance   |
      | Government Employee Id    | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Purchase    |
      | KYC Identification number | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Refinance   |
      | KYC Identification number | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Purchase    |
      | KYC Identification number | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Refinance   |
      | KYC Identification number | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Purchase    |
      | Nrega Job Card            | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Refinance   |
      | Nrega Job Card            | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Purchase    |
      | Nrega Job Card            | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Refinance   |
      | Nrega Job Card            | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Purchase    |
      | PAN                       | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Refinance   |
      | PAN                       | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Purchase    |
      | PAN                       | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Refinance   |
      | PAN                       | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Purchase    |
      | Sarpanch Letter           | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Refinance   |
      | Sarpanch Letter           | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Purchase    |
      | Sarpanch Letter           | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Refinance   |
      | Sarpanch Letter           | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Purchase    |
      | UID Token Number          | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Refinance   |
      | UID Token Number          | <ApplicationStage> | <ProductType> | <ApplicantType> | Both       | Purchase    |
      | UID Token Number          | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Refinance   |
      | UID Token Number          | <ApplicationStage> | <ProductType> | <ApplicantType> | Body       | Purchase    |

    #Prerequisite:Application already punch with application type as Multi Asset
 # ${ ProductType : ["CEQ","CV"]}
# ${ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
#${ApplicantType:["indiv","nonindiv"]}
  #${FinanceMode:["Purchase","Refinance"]}
  # ${FundingFor:["Chassis","FBV"]}
    #FeatureID-ACAUTOCAS-11906
  Scenario Outline:Validating Identification Number of "<IdentificationType>" with "<InputType>" as per the Individual_Non-Individual as Individual with Finance Mode as <FinanceMode> for multi Asset at <ApplicationStage> stage for <ProductType>
    And user open an application of "<ProductType>" for "<ApplicantType>" applicant at "<ApplicationStage>" stage
    And user navigates to asset requested page
    And user select Funding For as "<FundingFor>"
    And user select Finance Mode as "<FinanceMode>"
    And user select asset type as Used Asset
    And user select Individual_Non-Individual as Individual
    And user open identification accordion
    When user select Identification Type as "<IdentificationType>"
    And user fills Identification Number with "<InputType>" in identification
    Then Identification Number field "<Throws_notThrows>" error


    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | IdentificationType        | InputType                           | Throws_notThrows | FundingFor   | FinanceMode   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Aadhar No.                | 12 digits                           | not throw any    | <FundingFor> | <FinanceMode> |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Aadhar No.                | less than 12 digits                 | throw an         | <FundingFor> | <FinanceMode> |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Aadhar No.                | alphaNumeric values                 | throw an         | <FundingFor> | <FinanceMode> |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Aadhar No.                | special characters                  | throw an         | <FundingFor> | <FinanceMode> |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Driving Licence           | alphaNumeric with 10 size           | not throw any    | <FundingFor> | <FinanceMode> |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Driving Licence           | digits of size 10-25                | not throw any    | <FundingFor> | <FinanceMode> |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Driving Licence           | characters of size 10-25            | not throw any    | <FundingFor> | <FinanceMode> |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Driving Licence           | alphaNumeric of size 10-25          | not throw any    | <FundingFor> | <FinanceMode> |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Government Employee ID    | alphaNumeric with 10 size           | not throw any    | <FundingFor> | <FinanceMode> |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Government Employee ID    | digits of size 10-25                | not throw any    | <FundingFor> | <FinanceMode> |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Government Employee ID    | characters of size 10-25            | not throw any    | <FundingFor> | <FinanceMode> |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Government Employee ID    | alphaNumeric of size 10-25          | not throw any    | <FundingFor> | <FinanceMode> |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | PAN                       | numeric values                      | throw an         | <FundingFor> | <FinanceMode> |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | PAN                       | invalid format                      | throw an         | <FundingFor> | <FinanceMode> |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | PAN                       | alphaNumeric values                 | throw an         | <FundingFor> | <FinanceMode> |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | PAN                       | special characters                  | throw an         | <FundingFor> | <FinanceMode> |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | PAN                       | size less than 10                   | throw an         | <FundingFor> | <FinanceMode> |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | PAN                       | valid format(AAA(H/P)A1234A)        | not throw any    | <FundingFor> | <FinanceMode> |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | PAN                       | valid format(AAA(P/H)A1234A)        | not throw any    | <FundingFor> | <FinanceMode> |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | KYC Identification Number | 14 digits                           | not throw any    | <FundingFor> | <FinanceMode> |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | KYC Identification Number | 15 digits                           | not throw any    | <FundingFor> | <FinanceMode> |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | KYC Identification Number | less than 14 digits                 | throw an         | <FundingFor> | <FinanceMode> |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | KYC Identification Number | 14 characters                       | not throw any    | <FundingFor> | <FinanceMode> |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | KYC Identification Number | 15 characters                       | not throw any    | <FundingFor> | <FinanceMode> |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | KYC Identification Number | less than 14 characters             | throw an         | <FundingFor> | <FinanceMode> |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | KYC Identification Number | alphaNumeric with 14 size           | not throw any    | <FundingFor> | <FinanceMode> |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | KYC Identification Number | alphaNumeric with 15 size           | not throw any    | <FundingFor> | <FinanceMode> |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | KYC Identification Number | alphaNumeric with less than 14 size | throw an         | <FundingFor> | <FinanceMode> |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | KYC Identification Number | special characters                  | throw an         | <FundingFor> | <FinanceMode> |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | UID Token No.             | 72 digits                           | not throw any    | <FundingFor> | <FinanceMode> |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | UID Token No.             | less than 72 digits                 | throw an         | <FundingFor> | <FinanceMode> |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | UID Token No.             | 72 characters                       | not throw any    | <FundingFor> | <FinanceMode> |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | UID Token No.             | less than 72 characters             | throw an         | <FundingFor> | <FinanceMode> |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | UID Token No.             | alphaNumeric with 72 size           | not throw any    | <FundingFor> | <FinanceMode> |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | UID Token No.             | alphaNumeric with less than 72 size | throw an         | <FundingFor> | <FinanceMode> |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | UID Token No.             | special characters                  | throw an         | <FundingFor> | <FinanceMode> |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Nrega Job Card            | 18 digits                           | not throw any    | <FundingFor> | <FinanceMode> |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Nrega Job Card            | less than 18 digits                 | throw an         | <FundingFor> | <FinanceMode> |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Nrega Job Card            | 18 characters                       | not throw any    | <FundingFor> | <FinanceMode> |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Nrega Job Card            | less than 18 characters             | throw an         | <FundingFor> | <FinanceMode> |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Nrega Job Card            | alphaNumeric with 18 size           | not throw any    | <FundingFor> | <FinanceMode> |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Nrega Job Card            | alphaNumeric with less than 18 size | throw an         | <FundingFor> | <FinanceMode> |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Nrega Job Card            | special characters                  | throw an         | <FundingFor> | <FinanceMode> |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Authorization Letter      | digits                              | not throw any    | <FundingFor> | <FinanceMode> |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Authorization Letter      | alphaNumeric                        | not throw any    | <FundingFor> | <FinanceMode> |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Authorization Letter      | characters                          | not throw any    | <FundingFor> | <FinanceMode> |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Authorization Letter      | special characters                  | throw an         | <FundingFor> | <FinanceMode> |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Sarpanch Letter           | digits                              | not throw any    | <FundingFor> | <FinanceMode> |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Sarpanch Letter           | alphaNumeric                        | not throw any    | <FundingFor> | <FinanceMode> |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Sarpanch Letter           | characters                          | not throw any    | <FundingFor> | <FinanceMode> |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Sarpanch Letter           | special characters                  | throw an         | <FundingFor> | <FinanceMode> |

      #Prerequisite:Application already punch with application type as Multi Asset
  # ${ ProductType : ["CEQ","CV"]}
# ${ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
#${ApplicantType:["indiv","nonindiv"]}
  #${FinanceMode:["Purchase","Refinance"]}
  # ${FundingFor:["Body","Both"]}
    #FeatureID-ACAUTOCAS-11906
  Scenario Outline:Validating Identification Number of "<IdentificationType>" with "<InputType>" as per the Individual_Non-Individual as Individual with Finance Mode as <FinanceMode> at <ApplicationStage> stage for <ProductType>
    And user open an application of "<ProductType>" for "<ApplicantType>" applicant at "<ApplicationStage>" stage
    And user navigates to asset requested page
    And user select Funding For as "<FundingFor>"
    And user select Finance Mode as "<FinanceMode>"
    And user select asset type as Used Asset
    And user select Individual_Non-Individual as Individual
    And user open identification accordion
    When user select Identification Type as "<IdentificationType>"
    And user fills Identification Number with "<InputType>" in identification
    Then Identification Number field "<Throws_notThrows>" error

    
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | IdentificationType        | InputType                           | Throws_notThrows | FundingFor   | FinanceMode   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Aadhar No.                | 12 digits                           | not throw any    | <FundingFor> | <FinanceMode> |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Aadhar No.                | less than 12 digits                 | throw an         | <FundingFor> | <FinanceMode> |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Aadhar No.                | alphaNumeric values                 | throw an         | <FundingFor> | <FinanceMode> |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Aadhar No.                | special characters                  | throw an         | <FundingFor> | <FinanceMode> |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Driving Licence           | alphaNumeric with 10 size           | not throw any    | <FundingFor> | <FinanceMode> |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Driving Licence           | digits of size 10-25                | not throw any    | <FundingFor> | <FinanceMode> |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Driving Licence           | characters of size 10-25            | not throw any    | <FundingFor> | <FinanceMode> |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Driving Licence           | alphaNumeric of size 10-25          | not throw any    | <FundingFor> | <FinanceMode> |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Government Employee ID    | alphaNumeric with 10 size           | not throw any    | <FundingFor> | <FinanceMode> |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Government Employee ID    | digits of size 10-25                | not throw any    | <FundingFor> | <FinanceMode> |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Government Employee ID    | characters of size 10-25            | not throw any    | <FundingFor> | <FinanceMode> |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Government Employee ID    | alphaNumeric of size 10-25          | not throw any    | <FundingFor> | <FinanceMode> |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | PAN                       | numeric values                      | throw an         | <FundingFor> | <FinanceMode> |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | PAN                       | invalid format                      | throw an         | <FundingFor> | <FinanceMode> |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | PAN                       | alphaNumeric values                 | throw an         | <FundingFor> | <FinanceMode> |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | PAN                       | special characters                  | throw an         | <FundingFor> | <FinanceMode> |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | PAN                       | size less than 10                   | throw an         | <FundingFor> | <FinanceMode> |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | PAN                       | valid format(AAA(H/P)A1234A)        | not throw any    | <FundingFor> | <FinanceMode> |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | PAN                       | valid format(AAA(P/H)A1234A)        | not throw any    | <FundingFor> | <FinanceMode> |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | KYC Identification Number | 14 digits                           | not throw any    | <FundingFor> | <FinanceMode> |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | KYC Identification Number | 15 digits                           | not throw any    | <FundingFor> | <FinanceMode> |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | KYC Identification Number | less than 14 digits                 | throw an         | <FundingFor> | <FinanceMode> |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | KYC Identification Number | 14 characters                       | not throw any    | <FundingFor> | <FinanceMode> |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | KYC Identification Number | 15 characters                       | not throw any    | <FundingFor> | <FinanceMode> |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | KYC Identification Number | less than 14 characters             | throw an         | <FundingFor> | <FinanceMode> |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | KYC Identification Number | alphaNumeric with 14 size           | not throw any    | <FundingFor> | <FinanceMode> |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | KYC Identification Number | alphaNumeric with 15 size           | not throw any    | <FundingFor> | <FinanceMode> |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | KYC Identification Number | alphaNumeric with less than 14 size | throw an         | <FundingFor> | <FinanceMode> |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | KYC Identification Number | special characters                  | throw an         | <FundingFor> | <FinanceMode> |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | UID Token No.             | 72 digits                           | not throw any    | <FundingFor> | <FinanceMode> |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | UID Token No.             | less than 72 digits                 | throw an         | <FundingFor> | <FinanceMode> |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | UID Token No.             | 72 characters                       | not throw any    | <FundingFor> | <FinanceMode> |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | UID Token No.             | less than 72 characters             | throw an         | <FundingFor> | <FinanceMode> |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | UID Token No.             | alphaNumeric with 72 size           | not throw any    | <FundingFor> | <FinanceMode> |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | UID Token No.             | alphaNumeric with less than 72 size | throw an         | <FundingFor> | <FinanceMode> |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | UID Token No.             | special characters                  | throw an         | <FundingFor> | <FinanceMode> |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Nrega Job Card            | 18 digits                           | not throw any    | <FundingFor> | <FinanceMode> |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Nrega Job Card            | less than 18 digits                 | throw an         | <FundingFor> | <FinanceMode> |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Nrega Job Card            | 18 characters                       | not throw any    | <FundingFor> | <FinanceMode> |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Nrega Job Card            | less than 18 characters             | throw an         | <FundingFor> | <FinanceMode> |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Nrega Job Card            | alphaNumeric with 18 size           | not throw any    | <FundingFor> | <FinanceMode> |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Nrega Job Card            | alphaNumeric with less than 18 size | throw an         | <FundingFor> | <FinanceMode> |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Nrega Job Card            | special characters                  | throw an         | <FundingFor> | <FinanceMode> |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Authorization Letter      | digits                              | not throw any    | <FundingFor> | <FinanceMode> |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Authorization Letter      | alphaNumeric                        | not throw any    | <FundingFor> | <FinanceMode> |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Authorization Letter      | characters                          | not throw any    | <FundingFor> | <FinanceMode> |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Authorization Letter      | special characters                  | throw an         | <FundingFor> | <FinanceMode> |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Sarpanch Letter           | digits                              | not throw any    | <FundingFor> | <FinanceMode> |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Sarpanch Letter           | alphaNumeric                        | not throw any    | <FundingFor> | <FinanceMode> |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Sarpanch Letter           | characters                          | not throw any    | <FundingFor> | <FinanceMode> |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Sarpanch Letter           | special characters                  | throw an         | <FundingFor> | <FinanceMode> |

  #Prerequisite:Application already punch with application type as Multi Asset
# ${ ProductType : ["CEQ","CV"]}
# ${ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
#${ApplicantType:["indiv","nonindiv"]}
   #10_CAS-82704
    #FeatureID-ACAUTOCAS-11906
  Scenario Outline:Identification Type list of accordions should display as per the Individual_Non-Individual as Individual with Finance Mode as <FinanceMode> for multi Asset at <ApplicationStage> stage for <ProductType>
    And user open an application of "<ProductType>" for "<ApplicantType>" applicant at "<ApplicationStage>" stage
    And user navigates to asset requested page
    And user select Funding For as "<FundingFor>"
    And user select Finance Mode as "<FinanceMode>"
    And user select asset type as Used Asset
    When user select Individual_Non-Individual as Individual
    And user navigates to identification tab
    Then user validate that Identification Type list of accordions should be display successfully
      | Aadhar No.                   |
      | PAN                          |
      | Authorization Letter         |
      | Driving Licence              |
      | Government Employee ID       |
      | KYC Identification Number    |
      | Nrega Job Card               |
      | PASSPORT                     |
      | Ration Card                  |
      | Sarpanch Letter              |
      | UID Token No.                |
      | Unique Identification Number |
      | Voter's ID                   |



    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | FundingFor | FinanceMode |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Refinance   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Purchase    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Refinance   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Purchase    |

     #Prerequisite:Application already punch with application type as Multi Asset
# ${ ProductType : ["CV"]}
# ${ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
#${ApplicantType:["indiv","nonindiv"]}
   #10_CAS-82704
    #FeatureID-ACAUTOCAS-11906
  Scenario Outline:Identification Type list of accordions should display as per the Individual_Non-Individual as Individual with Finance Mode as <FinanceMode> at <ApplicationStage> stage for <ProductType>
    And user open an application of "<ProductType>" for "<ApplicantType>" applicant at "<ApplicationStage>" stage
    And user navigates to asset requested page
    And user select Funding For as "<FundingFor>"
    And user select Finance Mode as "<FinanceMode>"
    And user select asset type as Used Asset
    When user select Individual_Non-Individual as Individual
    And user navigates to identification tab
    Then user validate that Identification Type list of accordions should be display successfully
      | Aadhar No.                   |
      | PAN                          |
      | Authorization Letter         |
      | Driving Licence              |
      | Government Employee ID       |
      | KYC Identification Number    |
      | Nrega Job Card               |
      | PASSPORT                     |
      | Ration Card                  |
      | Sarpanch Letter              |
      | UID Token No.                |
      | Unique Identification Number |
      | Voter's ID                   |



    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | FundingFor | FinanceMode |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Refinance   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Purchase    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Refinance   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Purchase    |


    #Prerequisite:Application already punch with application type as Multi Asset
# ${ ProductType : ["CEQ","CV"]}
# ${ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
#${ApplicantType:["indiv","nonindiv"]}
    #FeatureID-ACAUTOCAS-11906
  Scenario Outline:Validating "<IdentificationField>" in Identification with "<InputType>" as per the Individual_Non-Individual as Individual Finance Mode as <FinanceMode> at <ApplicationStage> stage for <ProductType>
    And user open an application of "<ProductType>" for "<ApplicantType>" applicant at "<ApplicationStage>" stage
    And user navigates to asset requested page
    And user select Funding For as "<FundingFor>"
    And user select Finance Mode as "<FinanceMode>"
    And user select asset type as Used Asset
    And user select Individual_Non-Individual as Individual
    And user open identification accordion
    When user fill "<IdentificationField>" with "<InputType>" in identification
    Then Identification Number field "<Throws_notThrows>" error

    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | FundingFor | FinanceMode   | IdentificationField | InputType                                  | Throws_notThrows |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis | Refinance | Issue Date          | more than current date                     | throw an         |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis | Purchase | Issue Date          | more than current date                     | throw an         |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV | Refinance | Issue Date          | more than current date                     | throw an         |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV | Purchase | Issue Date          | more than current date                     | throw an         |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis | Refinance | Issue Date          | less than DOB                              | throw an         |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis | Purchase | Issue Date          | less than DOB                              | throw an         |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV | Refinance | Issue Date          | less than DOB                              | throw an         |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV | Purchase | Issue Date          | less than DOB                              | throw an         |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis | Refinance | Issue Date          | valid date(DOB-Current Date)               | not throw any    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis | Purchase | Issue Date          | valid date(DOB-Current Date)               | not throw any    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV | Refinance | Issue Date          | valid date(DOB-Current Date)               | not throw any    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV | Purchase | Issue Date          | valid date(DOB-Current Date)               | not throw any    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis | Refinance | Issue Date          | valid date format as per user preference   | not throw any    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis | Purchase | Issue Date          | valid date format as per user preference   | not throw any    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV | Refinance | Issue Date          | valid date format as per user preference   | not throw any    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV | Purchase | Issue Date          | valid date format as per user preference   | not throw any    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis | Refinance | Issue Date          | invalid date format as per user preference | throw an         |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis | Purchase | Issue Date          | invalid date format as per user preference | throw an         |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV | Refinance | Issue Date          | invalid date format as per user preference | throw an         |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV | Purchase | Issue Date          | invalid date format as per user preference | throw an         |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis | Refinance | Expiry Date         | more than current date                     | throw an         |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis | Purchase | Expiry Date         | more than current date                     | throw an         |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV | Refinance | Expiry Date         | more than current date                     | throw an         |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV | Purchase | Expiry Date         | more than current date                     | throw an         |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis | Refinance | Expiry Date         | less than DOB                              | throw an         |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis | Purchase | Expiry Date         | less than DOB                              | throw an         |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV | Refinance | Expiry Date         | less than DOB                              | throw an         |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV | Purchase | Expiry Date         | less than DOB                              | throw an         |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis | Refinance | Expiry Date         | valid date(DOB-Current Date)               | not throw any    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis | Purchase | Expiry Date         | valid date(DOB-Current Date)               | not throw any    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV | Refinance | Expiry Date         | valid date(DOB-Current Date)               | not throw any    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV | Purchase | Expiry Date         | valid date(DOB-Current Date)               | not throw any    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis | Refinance | Expiry Date         | valid date format as per user preference   | not throw any    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis | Purchase | Expiry Date         | valid date format as per user preference   | not throw any    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV | Refinance | Expiry Date         | valid date format as per user preference   | not throw any    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV | Purchase | Expiry Date         | valid date format as per user preference   | not throw any    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis | Refinance | Expiry Date         | invalid date format as per user preference | throw an         |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis | Purchase | Expiry Date         | invalid date format as per user preference | throw an         |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV | Refinance | Expiry Date         | invalid date format as per user preference | throw an         |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV | Purchase | Expiry Date         | invalid date format as per user preference | throw an         |

     #Prerequisite:Application already punch with application type as Multi Asset
# ${ ProductType : ["CEQ","CV"]}
# ${ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
#${ApplicantType:["indiv","nonindiv"]}
    #FeatureID-ACAUTOCAS-11906
  Scenario Outline:Validating "<IdentificationField>" in Identification with "<InputType>" as per the Individual_Non-Individual as Individual with Finance Mode as <FinanceMode> at <ApplicationStage> stage for <ProductType>
    And user open an application of "<ProductType>" for "<ApplicantType>" applicant at "<ApplicationStage>" stage
    And user navigates to asset requested page
    And user select Funding For as "<FundingFor>"
    And user select Finance Mode as "<FinanceMode>"
    And user select asset type as Used Asset
    And user select Individual_Non-Individual as Individual
    And user open identification accordion
    When user fill "<IdentificationField>" with "<InputType>" in identification
    Then Identification Number field "<Throws_notThrows>" error

    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | FundingFor | FinanceMode   | IdentificationField | InputType                                  | Throws_notThrows |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both | Refinance | Issue Date          | more than current date                     | throw an         |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both | Purchase | Issue Date          | more than current date                     | throw an         |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body | Refinance | Issue Date          | more than current date                     | throw an         |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body | Purchase | Issue Date          | more than current date                     | throw an         |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both | Refinance | Issue Date          | less than DOB                              | throw an         |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both | Purchase | Issue Date          | less than DOB                              | throw an         |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body | Refinance | Issue Date          | less than DOB                              | throw an         |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body | Purchase | Issue Date          | less than DOB                              | throw an         |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both | Refinance | Issue Date          | valid date(DOB-Current Date)               | not throw any    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both | Purchase | Issue Date          | valid date(DOB-Current Date)               | not throw any    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body | Refinance | Issue Date          | valid date(DOB-Current Date)               | not throw any    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body | Purchase | Issue Date          | valid date(DOB-Current Date)               | not throw any    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both | Refinance | Issue Date          | valid date format as per user preference   | not throw any    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both | Purchase | Issue Date          | valid date format as per user preference   | not throw any    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body | Refinance | Issue Date          | valid date format as per user preference   | not throw any    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body | Purchase | Issue Date          | valid date format as per user preference   | not throw any    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both | Refinance | Issue Date          | invalid date format as per user preference | throw an         |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both | Purchase | Issue Date          | invalid date format as per user preference | throw an         |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body | Refinance | Issue Date          | invalid date format as per user preference | throw an         |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body | Purchase | Issue Date          | invalid date format as per user preference | throw an         |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both | Refinance | Expiry Date         | more than current date                     | throw an         |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both | Purchase | Expiry Date         | more than current date                     | throw an         |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body | Refinance | Expiry Date         | more than current date                     | throw an         |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body | Purchase | Expiry Date         | more than current date                     | throw an         |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both | Refinance | Expiry Date         | less than DOB                              | throw an         |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both | Purchase | Expiry Date         | less than DOB                              | throw an         |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body | Refinance | Expiry Date         | less than DOB                              | throw an         |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body | Purchase | Expiry Date         | less than DOB                              | throw an         |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both | Refinance | Expiry Date         | valid date(DOB-Current Date)               | not throw any    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both | Purchase | Expiry Date         | valid date(DOB-Current Date)               | not throw any    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body | Refinance | Expiry Date         | valid date(DOB-Current Date)               | not throw any    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body | Purchase | Expiry Date         | valid date(DOB-Current Date)               | not throw any    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both | Refinance | Expiry Date         | valid date format as per user preference   | not throw any    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both | Purchase | Expiry Date         | valid date format as per user preference   | not throw any    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body | Refinance | Expiry Date         | valid date format as per user preference   | not throw any    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body | Purchase | Expiry Date         | valid date format as per user preference   | not throw any    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both | Refinance | Expiry Date         | invalid date format as per user preference | throw an         |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both | Purchase | Expiry Date         | invalid date format as per user preference | throw an         |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body | Refinance | Expiry Date         | invalid date format as per user preference | throw an         |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body | Purchase | Expiry Date         | invalid date format as per user preference | throw an         |

   #Prerequisite:Application already punch with application type as Multi Asset
# ${ ProductType : ["CEQ","CV"]}
# ${ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
#${ApplicantType:["indiv","nonindiv"]}
    #FeatureID-ACAUTOCAS-11906
  Scenario Outline:Add <Identification> identification details as per the Individual_Non-Individual as Individual with Finance Mode as <FinanceMode> for multi Asset at <ApplicationStage> for <ProductType>
    And user open an application of "<ProductType>" for "<ApplicantType>" applicant at "<ApplicationStage>" stage
    And user navigates to asset requested page
    And user select Funding For as "<FundingFor>"
    And user select Finance Mode as "<FinanceMode>"
    And user select asset type as Used Asset
    And user select Individual_Non-Individual as Individual
    And user open identification accordion
    When user fill identification details with "<Identification>" identification type
    Then identification details should be added successfully

    Examples:
      | Identification            | ApplicantType   | ApplicationStage   | ProductType   | FundingFor | FinanceMode   |
      | Aadhar No                 | <ApplicantType> | <ApplicationStage> | <ProductType> | Chassis | Refinance |
      | Aadhar No                 | <ApplicantType> | <ApplicationStage> | <ProductType> | Chassis | Purchase |
      | Aadhar No                 | <ApplicantType> | <ApplicationStage> | <ProductType> | FBV | Refinance |
      | Aadhar No                 | <ApplicantType> | <ApplicationStage> | <ProductType> | FBV | Purchase |
      | Authorization Letter      | <ApplicantType> | <ApplicationStage> | <ProductType> | Chassis | Refinance |
      | Authorization Letter      | <ApplicantType> | <ApplicationStage> | <ProductType> | Chassis | Purchase |
      | Authorization Letter      | <ApplicantType> | <ApplicationStage> | <ProductType> | FBV | Refinance |
      | Authorization Letter      | <ApplicantType> | <ApplicationStage> | <ProductType> | FBV | Purchase |
      | Driving License           | <ApplicantType> | <ApplicationStage> | <ProductType> | Chassis | Refinance |
      | Driving License           | <ApplicantType> | <ApplicationStage> | <ProductType> | Chassis | Purchase |
      | Driving License           | <ApplicantType> | <ApplicationStage> | <ProductType> | FBV | Refinance |
      | Driving License           | <ApplicantType> | <ApplicationStage> | <ProductType> | FBV | Purchase |
      | Government Employee Id    | <ApplicantType> | <ApplicationStage> | <ProductType> | Chassis | Refinance |
      | Government Employee Id    | <ApplicantType> | <ApplicationStage> | <ProductType> | Chassis | Purchase |
      | Government Employee Id    | <ApplicantType> | <ApplicationStage> | <ProductType> | FBV | Refinance |
      | Government Employee Id    | <ApplicantType> | <ApplicationStage> | <ProductType> | FBV | Purchase |
      | KYC Identification number | <ApplicantType> | <ApplicationStage> | <ProductType> | Chassis | Refinance |
      | KYC Identification number | <ApplicantType> | <ApplicationStage> | <ProductType> | Chassis | Purchase |
      | KYC Identification number | <ApplicantType> | <ApplicationStage> | <ProductType> | FBV | Refinance |
      | KYC Identification number | <ApplicantType> | <ApplicationStage> | <ProductType> | FBV | Purchase |
      | Nrega Job Card            | <ApplicantType> | <ApplicationStage> | <ProductType> | Chassis | Refinance |
      | Nrega Job Card            | <ApplicantType> | <ApplicationStage> | <ProductType> | Chassis | Purchase |
      | Nrega Job Card            | <ApplicantType> | <ApplicationStage> | <ProductType> | FBV | Refinance |
      | Nrega Job Card            | <ApplicantType> | <ApplicationStage> | <ProductType> | FBV | Purchase |
      | PAN                       | <ApplicantType> | <ApplicationStage> | <ProductType> | Chassis | Refinance |
      | PAN                       | <ApplicantType> | <ApplicationStage> | <ProductType> | Chassis | Purchase |
      | PAN                       | <ApplicantType> | <ApplicationStage> | <ProductType> | FBV | Refinance |
      | PAN                       | <ApplicantType> | <ApplicationStage> | <ProductType> | FBV | Purchase |
      | Sarpanch Letter           | <ApplicantType> | <ApplicationStage> | <ProductType> | Chassis | Refinance |
      | Sarpanch Letter           | <ApplicantType> | <ApplicationStage> | <ProductType> | Chassis | Purchase |
      | Sarpanch Letter           | <ApplicantType> | <ApplicationStage> | <ProductType> | FBV | Refinance |
      | Sarpanch Letter           | <ApplicantType> | <ApplicationStage> | <ProductType> | FBV | Purchase |
      | UID Token Number          | <ApplicantType> | <ApplicationStage> | <ProductType> | Chassis | Refinance |
      | UID Token Number          | <ApplicantType> | <ApplicationStage> | <ProductType> | Chassis | Purchase |
      | UID Token Number          | <ApplicantType> | <ApplicationStage> | <ProductType> | FBV | Refinance |
      | UID Token Number          | <ApplicantType> | <ApplicationStage> | <ProductType> | FBV | Purchase |

      #Prerequisite:Application already punch with application type as Multi Asset
# ${ ProductType : ["CV"]}
# ${ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
#${ApplicantType:["indiv","nonindiv"]}
    #FeatureID-ACAUTOCAS-11906
  Scenario Outline:Add <Identification> identification details as per the Individual_Non-Individual as Individual with Finance Mode as <FinanceMode> at <ApplicationStage> for <ProductType>
    And user open an application of "<ProductType>" for "<ApplicantType>" applicant at "<ApplicationStage>" stage
    And user navigates to asset requested page
    And user select Funding For as "<FundingFor>"
    And user select Finance Mode as "<FinanceMode>"
    And user select asset type as Used Asset
    And user select Individual_Non-Individual as Individual
    And user open identification accordion
    When user fill identification details with "<Identification>" identification type
    Then identification details should be added successfully

    Examples:
      | Identification            | ApplicantType   | ApplicationStage   | ProductType   | FundingFor | FinanceMode   |
      | Aadhar No                 | <ApplicantType> | <ApplicationStage> | <ProductType> | Both | Refinance |
      | Aadhar No                 | <ApplicantType> | <ApplicationStage> | <ProductType> | Both | Purchase |
      | Aadhar No                 | <ApplicantType> | <ApplicationStage> | <ProductType> | Body | Refinance |
      | Aadhar No                 | <ApplicantType> | <ApplicationStage> | <ProductType> | Body | Purchase |
      | Authorization Letter      | <ApplicantType> | <ApplicationStage> | <ProductType> | Both | Refinance |
      | Authorization Letter      | <ApplicantType> | <ApplicationStage> | <ProductType> | Both | Purchase |
      | Authorization Letter      | <ApplicantType> | <ApplicationStage> | <ProductType> | Body | Refinance |
      | Authorization Letter      | <ApplicantType> | <ApplicationStage> | <ProductType> | Body | Purchase |
      | Driving License           | <ApplicantType> | <ApplicationStage> | <ProductType> | Both | Refinance |
      | Driving License           | <ApplicantType> | <ApplicationStage> | <ProductType> | Both | Purchase |
      | Driving License           | <ApplicantType> | <ApplicationStage> | <ProductType> | Body | Refinance |
      | Driving License           | <ApplicantType> | <ApplicationStage> | <ProductType> | Body | Purchase |
      | Government Employee Id    | <ApplicantType> | <ApplicationStage> | <ProductType> | Both | Refinance |
      | Government Employee Id    | <ApplicantType> | <ApplicationStage> | <ProductType> | Both | Purchase |
      | Government Employee Id    | <ApplicantType> | <ApplicationStage> | <ProductType> | Body | Refinance |
      | Government Employee Id    | <ApplicantType> | <ApplicationStage> | <ProductType> | Body | Purchase |
      | KYC Identification number | <ApplicantType> | <ApplicationStage> | <ProductType> | Both | Refinance |
      | KYC Identification number | <ApplicantType> | <ApplicationStage> | <ProductType> | Both | Purchase |
      | KYC Identification number | <ApplicantType> | <ApplicationStage> | <ProductType> | Body | Refinance |
      | KYC Identification number | <ApplicantType> | <ApplicationStage> | <ProductType> | Body | Purchase |
      | Nrega Job Card            | <ApplicantType> | <ApplicationStage> | <ProductType> | Both | Refinance |
      | Nrega Job Card            | <ApplicantType> | <ApplicationStage> | <ProductType> | Both | Purchase |
      | Nrega Job Card            | <ApplicantType> | <ApplicationStage> | <ProductType> | Body | Refinance |
      | Nrega Job Card            | <ApplicantType> | <ApplicationStage> | <ProductType> | Body | Purchase |
      | PAN                       | <ApplicantType> | <ApplicationStage> | <ProductType> | Both | Refinance |
      | PAN                       | <ApplicantType> | <ApplicationStage> | <ProductType> | Both | Purchase |
      | PAN                       | <ApplicantType> | <ApplicationStage> | <ProductType> | Body | Refinance |
      | PAN                       | <ApplicantType> | <ApplicationStage> | <ProductType> | Body | Purchase |
      | Sarpanch Letter           | <ApplicantType> | <ApplicationStage> | <ProductType> | Both | Refinance |
      | Sarpanch Letter           | <ApplicantType> | <ApplicationStage> | <ProductType> | Both | Purchase |
      | Sarpanch Letter           | <ApplicantType> | <ApplicationStage> | <ProductType> | Body | Refinance |
      | Sarpanch Letter           | <ApplicantType> | <ApplicationStage> | <ProductType> | Body | Purchase |
      | UID Token Number          | <ApplicantType> | <ApplicationStage> | <ProductType> | Both | Refinance |
      | UID Token Number          | <ApplicantType> | <ApplicationStage> | <ProductType> | Both | Purchase |
      | UID Token Number          | <ApplicantType> | <ApplicationStage> | <ProductType> | Body | Refinance |
      | UID Token Number          | <ApplicantType> | <ApplicationStage> | <ProductType> | Body | Purchase |

 #Prerequisite:Application already punch with application type as Multi Asset
# ${ ProductType : ["CEQ","CV"]}
# ${ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
#${ApplicantType:["indiv","nonindiv"]}
    #FeatureID-ACAUTOCAS-11906
  Scenario Outline:<Edit_Delete> existing identification details record as per the Individual_Non-Individual as <var> with Finance Mode as <FinanceMode> for multi Asset at <ApplicationStage> for <ProductType>
    And user open an application of "<ProductType>" for "<ApplicantType>" applicant at "<ApplicationStage>" stage
    And user navigates to asset requested page
    And user select Funding For as "<FundingFor>"
    And user select Finance Mode as "<FinanceMode>"
    And user select asset type as Used Asset
    And user select Individual_Non-Individual as <var>
    And user open identification accordion
    And user fill identification details
    When user "<Edit_Delete>" identification details
    Then identification details "<Edit_Delete>" should be added


    Examples:
      | Edit_Delete | ApplicantType   | ApplicationStage   | ProductType   | var            | FundingFor | FinanceMode |
      | Edit        | <ApplicantType> | <ApplicationStage> | <ProductType> | Individual     | Chassis    | Refinance   |
      | Edit        | <ApplicantType> | <ApplicationStage> | <ProductType> | Individual     | Chassis    | Purchase    |
      | Edit        | <ApplicantType> | <ApplicationStage> | <ProductType> | Individual     | FBV        | Refinance   |
      | Edit        | <ApplicantType> | <ApplicationStage> | <ProductType> | Individual     | FBV        | Purchase    |
      | Delete      | <ApplicantType> | <ApplicationStage> | <ProductType> | Non-Individual | Chassis    | Refinance   |
      | Delete      | <ApplicantType> | <ApplicationStage> | <ProductType> | Non-Individual | Chassis    | Purchase    |
      | Delete      | <ApplicantType> | <ApplicationStage> | <ProductType> | Non-Individual | FBV        | Refinance   |
      | Delete      | <ApplicantType> | <ApplicationStage> | <ProductType> | Non-Individual | FBV        | Purchase    |

     #Prerequisite:Application already punch with application type as Multi Asset
# ${ ProductType : ["CV"]}
# ${ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
#${ApplicantType:["indiv","nonindiv"]}
    #FeatureID-ACAUTOCAS-11906
  Scenario Outline:<Edit_Delete> existing identification details record as per the Individual_Non-Individual as <var> with Finance Mode as <FinanceMode> at <ApplicationStage> for <ProductType>
    And user open an application of "<ProductType>" for "<ApplicantType>" applicant at "<ApplicationStage>" stage
    And user navigates to asset requested page
    And user select Funding For as "<FundingFor>"
    And user select Finance Mode as "<FinanceMode>"
    And user select asset type as Used Asset
    And user select Individual_Non-Individual as <var>
    And user open identification accordion
    And user fill identification details
    When user "<Edit_Delete>" identification details
    Then identification details "<Edit_Delete>" should be added


    Examples:
      | Edit_Delete | ApplicantType   | ApplicationStage   | ProductType   | var            | FundingFor | FinanceMode |
      | Edit        | <ApplicantType> | <ApplicationStage> | <ProductType> | Individual     | Both       | Refinance   |
      | Edit        | <ApplicantType> | <ApplicationStage> | <ProductType> | Individual     | Both       | Purchase    |
      | Edit        | <ApplicantType> | <ApplicationStage> | <ProductType> | Individual     | Body       | Refinance   |
      | Edit        | <ApplicantType> | <ApplicationStage> | <ProductType> | Individual     | Body       | Purchase    |
      | Delete      | <ApplicantType> | <ApplicationStage> | <ProductType> | Non-Individual | Both       | Refinance   |
      | Delete      | <ApplicantType> | <ApplicationStage> | <ProductType> | Non-Individual | Both       | Purchase    |
      | Delete      | <ApplicantType> | <ApplicationStage> | <ProductType> | Non-Individual | Body       | Refinance   |
      | Delete      | <ApplicantType> | <ApplicationStage> | <ProductType> | Non-Individual | Body       | Purchase    |


 #Prerequisite:Application already punch with application type as Multi Asset
# ${ ProductType : ["CEQ","CV"]}
# ${ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
#${ApplicantType:["indiv","nonindiv"]}
    #FeatureID-ACAUTOCAS-11906
  Scenario Outline:Add multiple identification details as per the Individual_Non-Individual as <var> with Finance Mode as <FinanceMode> for multi Asset at <ApplicationStage> for <ProductType>
    And user open an application of "<ProductType>" for "<ApplicantType>" applicant at "<ApplicationStage>" stage
    And user navigates to asset requested page
    And user select Funding For as "<FundingFor>"
    And user select Finance Mode as "<FinanceMode>"
    And user select asset type as Used Asset
    When user select Individual_Non-Individual as <var>
    And user open identification accordion
    And user add "<NoOfIdentification>" identification details
    Then identification details should be added successfully


    Examples:
      | NoOfIdentification | ApplicantType   | ApplicationStage   | ProductType   | var            | FundingFor | FinanceMode |
      | one another        | <ApplicantType> | <ApplicationStage> | <ProductType> | Individual     | Chassis    | Refinance   |
      | one another        | <ApplicantType> | <ApplicationStage> | <ProductType> | Individual     | Chassis    | Purchase    |
      | one another        | <ApplicantType> | <ApplicationStage> | <ProductType> | Individual     | FBV        | Refinance   |
      | one another        | <ApplicantType> | <ApplicationStage> | <ProductType> | Individual     | FBV        | Purchase    |
      | multiple           | <ApplicantType> | <ApplicationStage> | <ProductType> | Non-Individual | Chassis    | Refinance   |
      | multiple           | <ApplicantType> | <ApplicationStage> | <ProductType> | Non-Individual | Chassis    | Purchase    |
      | multiple           | <ApplicantType> | <ApplicationStage> | <ProductType> | Non-Individual | FBV        | Refinance   |
      | multiple           | <ApplicantType> | <ApplicationStage> | <ProductType> | Non-Individual | FBV        | Purchase    |

    #Prerequisite:Application already punch with application type as Multi Asset
# ${ ProductType : ["CV"]}
# ${ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
#${ApplicantType:["indiv","nonindiv"]}
    #FeatureID-ACAUTOCAS-11906
  Scenario Outline:Add multiple identification details as per the Individual_Non-Individual as <var> with Finance Mode as <FinanceMode> at <ApplicationStage> for <ProductType>
    And user open an application of "<ProductType>" for "<ApplicantType>" applicant at "<ApplicationStage>" stage
    And user navigates to asset requested page
    And user select Funding For as "<FundingFor>"
    And user select Finance Mode as "<FinanceMode>"
    And user select asset type as Used Asset
    When user select Individual_Non-Individual as <var>
    And user open identification accordion
    And user add "<NoOfIdentification>" identification details
    Then identification details should be added successfully


    Examples:
      | NoOfIdentification | ApplicantType   | ApplicationStage   | ProductType   | var            | FundingFor | FinanceMode |
      | one another        | <ApplicantType> | <ApplicationStage> | <ProductType> | Individual     | Both       | Refinance   |
      | one another        | <ApplicantType> | <ApplicationStage> | <ProductType> | Individual     | Both       | Purchase    |
      | one another        | <ApplicantType> | <ApplicationStage> | <ProductType> | Individual     | Body       | Refinance   |
      | one another        | <ApplicantType> | <ApplicationStage> | <ProductType> | Individual     | Body       | Purchase    |
      | multiple           | <ApplicantType> | <ApplicationStage> | <ProductType> | Non-Individual | Both       | Refinance   |
      | multiple           | <ApplicantType> | <ApplicationStage> | <ProductType> | Non-Individual | Both       | Purchase    |
      | multiple           | <ApplicantType> | <ApplicationStage> | <ProductType> | Non-Individual | Body       | Refinance   |
      | multiple           | <ApplicantType> | <ApplicationStage> | <ProductType> | Non-Individual | Body       | Purchase    |


 #Prerequisite:Application already punch with application type as Multi Asset
# ${ ProductType : ["CEQ","CV"]}
# ${ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
#${ApplicantType:["indiv","nonindiv"]}
    #FeatureID-ACAUTOCAS-11906
  Scenario Outline:Fill duplicate identification details as per the Individual_Non-Individual as <var> with Finance Mode as <FinanceMode> for multi Asset at <ApplicationStage> for <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user navigates to asset requested page
    And user select Funding For as "<FundingFor>"
    And user select Finance Mode as "<FinanceMode>"
    And user select asset type as Used Asset
    And user select Individual_Non-Individual as <var>
    And user open identification accordion
    And user fill identification details
    When user fill another identification details with same values
    Then duplicate identification details should not be added with an error message


    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | var            | FundingFor | FinanceMode |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Individual     | Chassis    | Refinance   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Individual     | Chassis    | Purchase    |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Individual     | FBV        | Refinance   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Individual     | FBV        | Purchase    |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Non-Individual | Chassis    | Refinance   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Non-Individual | Chassis    | Purchase    |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Non-Individual | FBV        | Refinance   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Non-Individual | FBV        | Purchase    |

#Prerequisite:Application already punch with application type as Multi Asset
# ${ ProductType : ["CV"]}
# ${ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
#${ApplicantType:["indiv","nonindiv"]}
    #FeatureID-ACAUTOCAS-11906
  Scenario Outline:Fill duplicate identification details as per the Individual_Non-Individual as <var> with Finance Mode as <FinanceMode> at <ApplicationStage> for <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user navigates to asset requested page
    And user select Funding For as "<FundingFor>"
    And user select Finance Mode as "<FinanceMode>"
    And user select asset type as Used Asset
    And user select Individual_Non-Individual as <var>
    And user open identification accordion
    And user fill identification details
    When user fill another identification details with same values
    Then duplicate identification details should not be added with an error message


    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | var            | FundingFor | FinanceMode |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Individual     | Both       | Refinance   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Individual     | Both       | Purchase    |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Individual     | Body       | Refinance   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Individual     | Body       | Purchase    |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Non-Individual | Both       | Refinance   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Non-Individual | Both       | Purchase    |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Non-Individual | Body       | Refinance   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Non-Individual | Body       | Purchase    |




