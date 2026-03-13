@Epic-Loan_Application_Details
@AuthoredBy-harshita.nayak
@NotImplemented
@Conventional
@Deferred
Feature:Seller Bank Details for Commercial Vehicle and Commercial Equipment under Multi Asset

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0

     #Prerequisite:Application already punch with application type as Multi Asset
# ${ ProductType : ["CEQ","CV"]}
# ${ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
#${ApplicantType:["indiv","nonindiv"]}
   #FeatureID-ACAUTOCAS-11906
  Scenario Outline:Save the Seller Bank Details with all field with Finance Mode as <FinanceMode> for multi Asset at <ApplicationStage> stage for <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user navigates to asset requested page for "<ApplicationStage>"
    And user select Funding For as "<FundingFor>"
    And user select Finance Mode as "<FinanceMode>"
    And user select asset type as Used Asset
    And user select Bought From as Individual
    When user fill the Seller Bank Details with all field
    Then Seller Bank details should be save successfully

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
   #FeatureID-ACAUTOCAS-11906
  Scenario Outline:Save the Seller Bank Details with all field with Finance Mode as <FinanceMode> at <ApplicationStage> stage for <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user navigates to asset requested page for "<ApplicationStage>"
    And user select Funding For as "<FundingFor>"
    And user select Finance Mode as "<FinanceMode>"
    And user select asset type as Used Asset
    And user select Bought From as Individual
    When user fill the Seller Bank Details with all field
    Then Seller Bank details should be save successfully

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
  Scenario Outline:Save the Seller Bank Details without <Field_Name> with Finance Mode as <FinanceMode> for multi Asset at <ApplicationStage> stage for <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user navigates to asset requested page for "<ApplicationStage>"
    And user select Funding For as "<FundingFor>"
    And user select Finance Mode as "<FinanceMode>"
    And user select asset type as Used Asset
    And user select Bought From as Individual
    When user fill the Seller Bank Details without "<Field_Name>"
    Then "<Field_Name>" field "<Throws_notThrows>" in seller bank details
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | FundingFor | FinanceMode | Field_Name      | Throws_notThrows                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Purchase    | Account Number  | throws an error with error message |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Refinance   | Account Number  | throws an error with error message |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Purchase    | Account Number  | throws an error with error message |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Refinance   | Account Number  | throws an error with error message |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Purchase    | Type of Account | throws an error with error message |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Refinance   | Type of Account | throws an error with error message |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Purchase    | Type of Account | throws an error with error message |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Refinance   | Type of Account | throws an error with error message |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Purchase    | Bank Name       | throws an error with error message |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Refinance   | Bank Name       | throws an error with error message |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Purchase    | Bank Name       | throws an error with error message |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Refinance   | Bank Name       | throws an error with error message |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Purchase    | Branch Name     | throws an error with error message |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Refinance   | Branch Name     | throws an error with error message |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Purchase    | Branch Name     | throws an error with error message |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Refinance   | Branch Name     | throws an error with error message |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Purchase    | IFSC            | throws an error with error message |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Refinance   | IFSC            | throws an error with error message |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Purchase    | IFSC            | throws an error with error message |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Refinance   | IFSC            | throws an error with error message |

         #Prerequisite:Application already punch with application type as Multi Asset
# ${ ProductType : ["CV"]}
# ${ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
#${ApplicantType:["indiv","nonindiv"]}
    #FeatureID-ACAUTOCAS-11906
  Scenario Outline:Save the Seller Bank Details without <Field_Name> with Finance Mode as <FinanceMode> at <ApplicationStage> stage for <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user navigates to asset requested page for "<ApplicationStage>"
    And user select Funding For as "<FundingFor>"
    And user select Finance Mode as "<FinanceMode>"
    And user select asset type as Used Asset
    And user select Bought From as Individual
    When user fill the Seller Bank Details without "<Field_Name>"
    Then "<Field_Name>" field "<Throws_notThrows>" in seller bank details
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | FundingFor | FinanceMode | Field_Name      | Throws_notThrows                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Purchase    | Account Number  | throws an error with error message |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Refinance   | Account Number  | throws an error with error message |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Purchase    | Account Number  | throws an error with error message |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Refinance   | Account Number  | throws an error with error message |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Purchase    | Type of Account | throws an error with error message |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Refinance   | Type of Account | throws an error with error message |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Purchase    | Type of Account | throws an error with error message |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Refinance   | Type of Account | throws an error with error message |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Purchase    | Bank Name       | throws an error with error message |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Refinance   | Bank Name       | throws an error with error message |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Purchase    | Bank Name       | throws an error with error message |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Refinance   | Bank Name       | throws an error with error message |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Purchase    | Branch Name     | throws an error with error message |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Refinance   | Branch Name     | throws an error with error message |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Purchase    | Branch Name     | throws an error with error message |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Refinance   | Branch Name     | throws an error with error message |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Purchase    | IFSC            | throws an error with error message |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Refinance   | IFSC            | throws an error with error message |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Purchase    | IFSC            | throws an error with error message |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Refinance   | IFSC            | throws an error with error message |

     #Prerequisite:Application already punch with application type as Multi Asset
# ${ ProductType : ["CEQ","CV"]}
# ${ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
#${ApplicantType:["indiv","nonindiv"]}
    #FeatureID-ACAUTOCAS-11906
  Scenario Outline:Edit the added seller bank details with Finance Mode as <FinanceMode> for multi Asset at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user navigates to asset requested page for "<ApplicationStage>"
    And user select Funding For as "<FundingFor>"
    And user select Finance Mode as "<FinanceMode>"
    And user select asset type as Used Asset
    And user select Bought From as Individual
    When user fill the Seller Bank Details with all field
    And user edits the added seller bank details
    Then seller bank details should be edited successfully
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
    #FeatureID-ACAUTOCAS-11906
  Scenario Outline:Edit the added seller bank details with Finance Mode as <FinanceMode> at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user navigates to asset requested page for "<ApplicationStage>"
    And user select Funding For as "<FundingFor>"
    And user select Finance Mode as "<FinanceMode>"
    And user select asset type as Used Asset
    And user select Bought From as Individual
    When user fill the Seller Bank Details with all field
    And user edits the added seller bank details
    Then seller bank details should be edited successfully
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
  Scenario Outline:Delete the added seller bank details with Finance Mode as <FinanceMode> for multi Asset at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user navigates to asset requested page for "<ApplicationStage>"
    And user select Funding For as "<FundingFor>"
    And user select Finance Mode as "<FinanceMode>"
    And user select asset type as Used Asset
    And user select Bought From as Individual
    When user fill the Seller Bank Details with all field
    And user delete the added seller bank details
    Then seller bank details should be deleted successfully
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
    #FeatureID-ACAUTOCAS-11906
  Scenario Outline:Delete the added seller bank details with Finance Mode as <FinanceMode> at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user navigates to asset requested page for "<ApplicationStage>"
    And user select Funding For as "<FundingFor>"
    And user select Finance Mode as "<FinanceMode>"
    And user select asset type as Used Asset
    And user select Bought From as Individual
    When user fill the Seller Bank Details with all field
    And user delete the added seller bank details
    Then seller bank details should be deleted successfully
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | FundingFor | FinanceMode |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Purchase    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Refinance   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Purchase    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Refinance   |


 #Prerequisite:Application already punch with application type as Multi Asset
# ${ ProductType : ["CV"]}
# ${ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
#${ApplicantType:["indiv","nonindiv"]}
    #FeatureID-ACAUTOCAS-11906
  Scenario Outline:Add multiple seller account details with Finance Mode as <FinanceMode> for multi asset at <ApplicationStage> for <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user navigates to asset requested page for "<ApplicationStage>"
    And user select Funding For as "<FundingFor>"
    And user select Finance Mode as "<FinanceMode>"
    And user select asset type as Used Asset
    And user select Bought From as Individual
    When user add "<NoOfIdentification>" identification details
    Then identification details should be added successfully
    Examples:
      | NoOfIdentification | ApplicantType   | ApplicationStage   | ProductType   | FundingFor | FinanceMode |
      | one another        | <ApplicantType> | <ApplicationStage> | <ProductType> | Both       | Purchase    |
      | one another        | <ApplicantType> | <ApplicationStage> | <ProductType> | Both       | Refinance   |
      | one another        | <ApplicantType> | <ApplicationStage> | <ProductType> | Body       | Purchase    |
      | one another        | <ApplicantType> | <ApplicationStage> | <ProductType> | Body       | Refinance   |
      | multiple           | <ApplicantType> | <ApplicationStage> | <ProductType> | Both       | Purchase    |
      | multiple           | <ApplicantType> | <ApplicationStage> | <ProductType> | Both       | Refinance   |
      | multiple           | <ApplicantType> | <ApplicationStage> | <ProductType> | Body       | Purchase    |
      | multiple           | <ApplicantType> | <ApplicationStage> | <ProductType> | Body       | Refinance   |

    #Prerequisite:Application already punch with application type as Multi Asset
# ${ ProductType : ["CEQ","CV"]}
# ${ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
#${ApplicantType:["indiv","nonindiv"]}
    #FeatureID-ACAUTOCAS-11906
  Scenario Outline:User should able to change default bank account after adding multiple bank details with Finance Mode as <FinanceMode> for multi asset at <ApplicationStage> for <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user navigates to asset requested page for "<ApplicationStage>"
    And user select Funding For as "<FundingFor>"
    And user select Finance Mode as "<FinanceMode>"
    And user select asset type as Used Asset
    And user select Bought From as Individual
    When user add "<NoOfIdentification>" identification details with save
    Then user should able to change default bank account in seller bank details
    Examples:
      | NoOfIdentification | ApplicantType   | ApplicationStage   | ProductType   | FundingFor | FinanceMode |
      | one another        | <ApplicantType> | <ApplicationStage> | <ProductType> | Chassis    | Purchase    |
      | one another        | <ApplicantType> | <ApplicationStage> | <ProductType> | Chassis    | Refinance   |
      | one another        | <ApplicantType> | <ApplicationStage> | <ProductType> | FBV        | Purchase    |
      | one another        | <ApplicantType> | <ApplicationStage> | <ProductType> | FBV        | Refinance   |
      | multiple           | <ApplicantType> | <ApplicationStage> | <ProductType> | Chassis    | Purchase    |
      | multiple           | <ApplicantType> | <ApplicationStage> | <ProductType> | Chassis    | Refinance   |
      | multiple           | <ApplicantType> | <ApplicationStage> | <ProductType> | FBV        | Purchase    |
      | multiple           | <ApplicantType> | <ApplicationStage> | <ProductType> | FBV        | Refinance   |


      #Prerequisite:Application already punch with application type as Multi Asset
# ${ ProductType : ["CV"]}
# ${ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
#${ApplicantType:["indiv","nonindiv"]}
    #FeatureID-ACAUTOCAS-11906
  Scenario Outline:User should able to change default bank account after adding multiple bank details with Finance Mode as <FinanceMode> at <ApplicationStage> for <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user navigates to asset requested page for "<ApplicationStage>"
    And user select Funding For as "<FundingFor>"
    And user select Finance Mode as "<FinanceMode>"
    And user select asset type as Used Asset
    And user select Bought From as Individual
    When user add "<NoOfIdentification>" identification details with save
    Then user should able to change default bank account in seller bank details
    Examples:
      | NoOfIdentification | ApplicantType   | ApplicationStage   | ProductType   | FundingFor | FinanceMode |
      | one another        | <ApplicantType> | <ApplicationStage> | <ProductType> | Both       | Purchase    |
      | one another        | <ApplicantType> | <ApplicationStage> | <ProductType> | Both       | Refinance   |
      | one another        | <ApplicantType> | <ApplicationStage> | <ProductType> | Body       | Purchase    |
      | one another        | <ApplicantType> | <ApplicationStage> | <ProductType> | Body       | Refinance   |
      | multiple           | <ApplicantType> | <ApplicationStage> | <ProductType> | Both       | Purchase    |
      | multiple           | <ApplicantType> | <ApplicationStage> | <ProductType> | Both       | Refinance   |
      | multiple           | <ApplicantType> | <ApplicationStage> | <ProductType> | Body       | Purchase    |
      | multiple           | <ApplicantType> | <ApplicationStage> | <ProductType> | Body       | Refinance   |

     #Prerequisite:Application already punch with application type as Multi Asset
# ${ ProductType : ["CEQ","CV"]}
# ${ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
#${ApplicantType:["indiv","nonindiv"]}
    #FeatureID-ACAUTOCAS-11906
  Scenario Outline:Validating the Account Number in Seller Bank Details with <Var> along Finance Mode as <FinanceMode> in multi Asset at "<ApplicationStage>" stage for "<ProductType>"
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user navigates to asset requested page for "<ApplicationStage>"
    And user select Funding For as "<FundingFor>"
    And user select Finance Mode as "<FinanceMode>"
    And user select asset type as Used Asset
    And user select Bought From as Individual
    When user fills Account Number with "<Var>" in Seller Bank Details
    Then Account Number field with "<Var>" "<Throws_notThrows>" in Seller Bank Details
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | FundingFor | FinanceMode | Var                        | Throws_notThrows                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Purchase    | valid value                | does not throw any error           |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Refinance   | valid value                | does not throw any error           |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Purchase    | valid value                | does not throw any error           |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Refinance   | valid value                | does not throw any error           |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Purchase    | both digits and characters | does not throw any error           |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Refinance   | both digits and characters | does not throw any error           |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Purchase    | both digits and characters | does not throw any error           |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Refinance   | both digits and characters | does not throw any error           |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Purchase    | special character hyphen   | throws an error with error message |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Refinance   | special character hyphen   | throws an error with error message |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Purchase    | special character hyphen   | throws an error with error message |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Refinance   | special character hyphen   | throws an error with error message |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Purchase    | space                      | does not throw any error           |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Refinance   | space                      | does not throw any error           |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Purchase    | space                      | does not throw any error           |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Refinance   | space                      | does not throw any error           |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Purchase    | negative value             | does not throw any error           |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Refinance   | negative value             | does not throw any error           |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Purchase    | negative value             | does not throw any error           |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Refinance   | negative value             | does not throw any error           |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Purchase    | special characters         | throws an error with error message |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Refinance   | special characters         | throws an error with error message |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Purchase    | special characters         | throws an error with error message |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Refinance   | special characters         | throws an error with error message |

       #Prerequisite:Application already punch with application type as Multi Asset
# ${ ProductType : ["CV"]}
# ${ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
#${ApplicantType:["indiv","nonindiv"]}
    #FeatureID-ACAUTOCAS-11906
  Scenario Outline:Validating the Account Number in Seller Bank Details with <Var> along Finance Mode as <FinanceMode> at "<ApplicationStage>" stage for "<ProductType>"
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user navigates to asset requested page for "<ApplicationStage>"
    And user select Funding For as "<FundingFor>"
    And user select Finance Mode as "<FinanceMode>"
    And user select asset type as Used Asset
    And user select Bought From as Individual
    When user fills Account Number with "<Var>" in Seller Bank Details
    Then Account Number field with "<Var>" "<Throws_notThrows>" in Seller Bank Details
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | FundingFor | FinanceMode | Var                        | Throws_notThrows                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Purchase    | valid value                | does not throw any error           |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Refinance   | valid value                | does not throw any error           |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Purchase    | valid value                | does not throw any error           |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Refinance   | valid value                | does not throw any error           |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Purchase    | both digits and characters | does not throw any error           |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Refinance   | both digits and characters | does not throw any error           |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Purchase    | both digits and characters | does not throw any error           |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Refinance   | both digits and characters | does not throw any error           |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Purchase    | special character hyphen   | throws an error with error message |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Refinance   | special character hyphen   | throws an error with error message |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Purchase    | special character hyphen   | throws an error with error message |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Refinance   | special character hyphen   | throws an error with error message |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Purchase    | space                      | does not throw any error           |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Refinance   | space                      | does not throw any error           |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Purchase    | space                      | does not throw any error           |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Refinance   | space                      | does not throw any error           |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Purchase    | negative value             | does not throw any error           |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Refinance   | negative value             | does not throw any error           |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Purchase    | negative value             | does not throw any error           |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Refinance   | negative value             | does not throw any error           |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Purchase    | special characters         | throws an error with error message |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Refinance   | special characters         | throws an error with error message |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Purchase    | special characters         | throws an error with error message |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Refinance   | special characters         | throws an error with error message |

 #Prerequisite:Application already punch with application type as Multi Asset
# ${ ProductType : ["CEQ","CV"]}
# ${ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
#${ApplicantType:["indiv","nonindiv"]}
    #FeatureID-ACAUTOCAS-11906
  Scenario Outline:While selecting <Field_Name> <Dependent_Field> should be auto filled for seller bank details with Finance Mode as <FinanceMode> in multi Asset at "<ApplicationStage>" stage for "<ProductType>"
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user navigates to asset requested page for "<ApplicationStage>"
    And user select Funding For as "<FundingFor>"
    And user select Finance Mode as "<FinanceMode>"
    And user select asset type as Used Asset
    And user select Bought From as Individual
    When user fills "<Field_Name>" in seller bank details
    Then "<Dependent_Field>" should auto filled in seller bank details

    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | FundingFor | FinanceMode | Field_Name | Dependent_Field |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Purchase    | IFSC       | Branch Name     |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Refinance   | IFSC       | Branch Name     |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Purchase    | IFSC       | Branch Name     |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Refinance   | IFSC       | Branch Name     |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Purchase    | IFSC       | Bank Name       |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Refinance   | IFSC       | Bank Name       |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Purchase    | IFSC       | Bank Name       |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Refinance   | IFSC       | Bank Name       |

     #Prerequisite:Application already punch with application type as Multi Asset
# ${ ProductType : ["CV"]}
# ${ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
#${ApplicantType:["indiv","nonindiv"]}
    #FeatureID-ACAUTOCAS-11906
  Scenario Outline:While selecting <Field_Name> <Dependent_Field> should be auto filled for seller bank details with Finance Mode as <FinanceMode> at "<ApplicationStage>" stage for "<ProductType>"
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user navigates to asset requested page for "<ApplicationStage>"
    And user select Funding For as "<FundingFor>"
    And user select Finance Mode as "<FinanceMode>"
    And user select asset type as Used Asset
    And user select Bought From as Individual
    When user fills "<Field_Name>" in seller bank details
    Then "<Dependent_Field>" should auto filled in seller bank details

    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | FundingFor | FinanceMode | Field_Name | Dependent_Field |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Purchase    | IFSC       | Branch Name     |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Refinance   | IFSC       | Branch Name     |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Purchase    | IFSC       | Branch Name     |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Refinance   | IFSC       | Branch Name     |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Purchase    | IFSC       | Bank Name       |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Refinance   | IFSC       | Bank Name       |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Purchase    | IFSC       | Bank Name       |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Refinance   | IFSC       | Bank Name       |

     #Prerequisite:Application already punch with application type as Multi Asset
# ${ ProductType : ["CEQ","CV"]}
# ${ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
#${ApplicantType:["indiv","nonindiv"]}
    #FeatureID-ACAUTOCAS-11906
  Scenario Outline:Validate Default Bank Account should be selected after adding single seller bank details with Finance Mode as <FinanceMode> at "<ApplicationStage>" stage for "<ProductType>"
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user navigates to asset requested page for "<ApplicationStage>"
    And user select Funding For as "<FundingFor>"
    And user select Finance Mode as "<FinanceMode>"
    And user select asset type as Used Asset
    And user select Bought From as Individual
    When user add single seller bank details with save
    Then Default Bank Account should should be selected after adding single seller bank details

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
    #FeatureID-ACAUTOCAS-11906
  Scenario Outline:Validate Default Bank Account should be selected after adding single seller bank details with Finance Mode as <FinanceMode> in multi asset at "<ApplicationStage>" stage for "<ProductType>"
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user navigates to asset requested page for "<ApplicationStage>"
    And user select Funding For as "<FundingFor>"
    And user select Finance Mode as "<FinanceMode>"
    And user select asset type as Used Asset
    And user select Bought From as Individual
    When user add single seller bank details with save
    Then Default Bank Account should should be selected after adding single seller bank details

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
  Scenario Outline:User should able to change default bank account details after adding multiple bank details with Finance Mode as <FinanceMode> at <ApplicationStage> for <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user navigates to asset requested page for "<ApplicationStage>"
    And user select Funding For as "<FundingFor>"
    And user select Finance Mode as "<FinanceMode>"
    And user select asset type as Used Asset
    And user select Bought From as Individual
    When user add "<NoOfIdentification>" identification details with save
    Then user should able to change default bank account in seller bank details
    Examples:
      | NoOfIdentification | ApplicantType   | ApplicationStage   | ProductType   | FundingFor | FinanceMode |
      | one another        | <ApplicantType> | <ApplicationStage> | <ProductType> | Chassis    | Purchase    |
      | one another        | <ApplicantType> | <ApplicationStage> | <ProductType> | Chassis    | Refinance   |
      | one another        | <ApplicantType> | <ApplicationStage> | <ProductType> | FBV        | Purchase    |
      | one another        | <ApplicantType> | <ApplicationStage> | <ProductType> | FBV        | Refinance   |
      | multiple           | <ApplicantType> | <ApplicationStage> | <ProductType> | Chassis    | Purchase    |
      | multiple           | <ApplicantType> | <ApplicationStage> | <ProductType> | Chassis    | Refinance   |
      | multiple           | <ApplicantType> | <ApplicationStage> | <ProductType> | FBV        | Purchase    |
      | multiple           | <ApplicantType> | <ApplicationStage> | <ProductType> | FBV        | Refinance   |

    #Prerequisite:Application already punch with application type as Multi Asset
# ${ ProductType : ["CV"]}
# ${ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
#${ApplicantType:["indiv","nonindiv"]}
    #FeatureID-ACAUTOCAS-11906
  Scenario Outline:User should able to change default bank account after adding multiple bank details with Finance Mode as <FinanceMode> in multi asset at <ApplicationStage> for <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user navigates to asset requested page for "<ApplicationStage>"
    And user select Funding For as "<FundingFor>"
    And user select Collateral Sub-Type/Asset details as "<ProductType>
    And user select Finance Mode as "<FinanceMode>"
    And user select asset type as Used Asset
    And user select Bought From as Individual
    When user add "<NoOfIdentification>" identification details with save
    Then user should able to change default bank account in seller bank details
    Examples:
      | NoOfIdentification | ApplicantType   | ApplicationStage   | ProductType   | FundingFor | FinanceMode |
      | one another        | <ApplicantType> | <ApplicationStage> | <ProductType> | Both       | Purchase    |
      | one another        | <ApplicantType> | <ApplicationStage> | <ProductType> | Both       | Refinance   |
      | one another        | <ApplicantType> | <ApplicationStage> | <ProductType> | Body       | Purchase    |
      | one another        | <ApplicantType> | <ApplicationStage> | <ProductType> | Body       | Refinance   |
      | multiple           | <ApplicantType> | <ApplicationStage> | <ProductType> | Both       | Purchase    |
      | multiple           | <ApplicantType> | <ApplicationStage> | <ProductType> | Both       | Refinance   |
      | multiple           | <ApplicantType> | <ApplicationStage> | <ProductType> | Body       | Purchase    |
      | multiple           | <ApplicantType> | <ApplicationStage> | <ProductType> | Body       | Refinance   |
