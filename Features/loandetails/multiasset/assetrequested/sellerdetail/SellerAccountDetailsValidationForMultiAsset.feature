@Epic-Loan_Application_Details
@AuthoredBy-harshita.nayak
@Conventional
@Islamic
@ImplementedBy-richa.singh
@Release
@ReleaseLoanAppM5


Feature:Seller Bank Details for Asset Requested under Multi Asset

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0

   #Prerequisite:Application already punch with application type as Multi Asset
    # ${ ProductType : ["IAF","MAL","Farm Equipment","AGRL"]}
# ${ApplicationStage:["Sourcing","Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
#${ApplicantType:["indiv","nonindiv"]}
   #FeatureID-ACAUTOCAS-11906
  Scenario Outline: ACAUTOCAS-13987:  Save the Seller Bank Details with all field in multi Asset at <ApplicationStage> stage for <ProductType>
    And user reads data from the excel file "sourcing_details.xlsx" under sheet "home" and row 286
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user navigates to asset requested page for "<ApplicationStage>"
    And user reads data from the excel file "asset_details.xlsx" under sheet "home" and row 71
    And user select asset type as Used Asset
    And user select Bought From as Individual
    And user reads data from the excel file "asset_details.xlsx" under sheet "seller_details" and row 9
    When user fill the Seller Bank Details with all field
    Then Seller Bank details should be save successfully

    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |

   #Prerequisite:Application already punch with application type as Multi Asset
    # ${ ProductType : ["IAF","MAL","Farm Equipment","AGRL"]}
# ${ApplicationStage:["Sourcing","Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
#${ApplicantType:["indiv","nonindiv"]}
    #FeatureID-ACAUTOCAS-11906
  Scenario Outline: ACAUTOCAS-13988:  Save the Seller Bank Details without <Field_Name> in multi Asset at <ApplicationStage> stage for <ProductType>
    And user reads data from the excel file "sourcing_details.xlsx" under sheet "home" and row 286
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user navigates to asset requested page for "<ApplicationStage>"
    And user reads data from the excel file "asset_details.xlsx" under sheet "home" and row 71
    And user select asset type as Used Asset
    And user select Bought From as Individual
    And user reads data from the excel file "asset_details.xlsx" under sheet "seller_details" and row <assetDetails_sellerDetails_rowNum>
    When user fill the Seller Bank Details without "<Field_Name>"
    Then "<Field_Name>" field "<Throws_notThrows>" in seller bank details
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Field_Name      | Throws_notThrows                   | assetDetails_sellerDetails_rowNum |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Account Number  | throws an error with error message | 10                                |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Type of Account | throws an error with error message | 11                                |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Bank Name       | throws an error with error message | 12                                |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Branch Name     | throws an error with error message | 13                                |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | IFSC            | throws an error with error message | 14                                |

   #Prerequisite:Application already punch with application type as Multi Asset
    # ${ ProductType : ["IAF","MAL","Farm Equipment","AGRL"]}
# ${ApplicationStage:["Sourcing","Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
#${ApplicantType:["indiv","nonindiv"]}
    #FeatureID-ACAUTOCAS-11906
  Scenario Outline: ACAUTOCAS-13989: Edit the added seller bank details in multi Asset at <ApplicationStage> in <ProductType>
    And user reads data from the excel file "sourcing_details.xlsx" under sheet "home" and row 286
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user navigates to asset requested page for "<ApplicationStage>"
    And user reads data from the excel file "asset_details.xlsx" under sheet "home" and row 71
    And user select asset type as Used Asset
    And user select Bought From as Individual
    And user reads data from the excel file "asset_details.xlsx" under sheet "seller_details" and row 9
    When user fill the Seller Bank Details with all field
    And user edits the added seller bank details
    Then seller bank details should be edited successfully
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |

   #Prerequisite:Application already punch with application type as Multi Asset
    # ${ ProductType : ["IAF","MAL","Farm Equipment","AGRL"]}
# ${ApplicationStage:["Sourcing","Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
#${ApplicantType:["indiv","nonindiv"]}
    #FeatureID-ACAUTOCAS-11906
  Scenario Outline: ACAUTOCAS-13990: Delete the added seller bank details  in multi Asset at <ApplicationStage> in <ProductType>
    And user reads data from the excel file "sourcing_details.xlsx" under sheet "home" and row 286
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user navigates to asset requested page for "<ApplicationStage>"
    And user reads data from the excel file "asset_details.xlsx" under sheet "home" and row 71
    And user select asset type as Used Asset
    And user select Bought From as Individual
    And user reads data from the excel file "asset_details.xlsx" under sheet "seller_details" and row 15
    When user fill the Seller Bank Details with all field
    And user delete the added seller bank details
    Then seller bank details should be deleted successfully
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |

   #Prerequisite:Application already punch with application type as Multi Asset
    # ${ ProductType : ["IAF","MAL","Farm Equipment","AGRL"]}
# ${ApplicationStage:["Sourcing","Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
#${ApplicantType:["indiv","nonindiv"]}
    #FeatureID-ACAUTOCAS-11906
  Scenario Outline: ACAUTOCAS-13991:  Validating the Account Number in Seller Bank Details with <Var> in multi Asset at "<ApplicationStage>" stage for "<ProductType>"
    And user reads data from the excel file "sourcing_details.xlsx" under sheet "home" and row 286
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user navigates to asset requested page for "<ApplicationStage>"
    And user reads data from the excel file "asset_details.xlsx" under sheet "home" and row 71
    And user select asset type as Used Asset
    And user select Bought From as Individual
    And user reads data from the excel file "asset_details.xlsx" under sheet "seller_details" and row <assetDetails_sellerDetails_rowNum>
    When user fills Account Number with "<Var>" in Seller Bank Details
    Then Account Number field with "<Var>" "<Throws_notThrows>" in Seller Bank Details
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Var                        | Throws_notThrows                   | assetDetails_sellerDetails_rowNum |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | valid value                | does not throw any error           | 16                                |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | both digits and characters | does not throw any error           | 17                                |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | special character hyphen   | throws an error with error message | 18                                |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | space                      | does not throw any error           | 19                                |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | negative value             | does not throw any error           | 20                                |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | special characters         | throws an error with error message | 21                                |

   #Prerequisite:Application already punch with application type as Multi Asset
    # ${ ProductType : ["IAF","MAL","Farm Equipment","AGRL"]}
# ${ApplicationStage:["Sourcing","Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
#${ApplicantType:["indiv","nonindiv"]}
    #FeatureID-ACAUTOCAS-11906
  Scenario Outline: ACAUTOCAS-13992: While selecting <Field_Name> <Dependent_Field> should be auto filled for seller bank details in multi Asset at "<ApplicationStage>" stage for "<ProductType>"
    And user reads data from the excel file "sourcing_details.xlsx" under sheet "home" and row 286
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user navigates to asset requested page for "<ApplicationStage>"
    And user reads data from the excel file "asset_details.xlsx" under sheet "home" and row 71
    And user select asset type as Used Asset
    And user select Bought From as Individual
    And user reads data from the excel file "asset_details.xlsx" under sheet "seller_details" and row 9
    When user fills "<Field_Name>" in seller bank details
    Then "<Dependent_Field>" should auto filled in seller bank details

    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Field_Name | Dependent_Field |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | IFSC       | Branch Name     |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | IFSC       | Bank Name       |


  #Prerequisite:Application already punch with application type as Multi Asset
  # ${ ProductType : ["IAF","MAL","Farm Equipment","AGRL"]}
  # ${ApplicationStage:["Sourcing","Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
  #${ApplicantType:["indiv","nonindiv"]}
  #FeatureID-ACAUTOCAS-11906
  Scenario Outline:Validate Default Bank Account should be selected after adding single seller bank details with Finance Mode as <FinanceMode> for multi asset at <ApplicationStage> stage for <ProductType>
    And user reads data from the excel file "sourcing_details.xlsx" under sheet "home" and row 286
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage" from application grid
    And user navigates to asset requested page for "<ApplicationStage>"
    And user reads data from the excel file "asset_details.xlsx" under sheet "home" and row 71
    And user select asset type as Used Asset
    And user select Bought From as Individual
    And user reads data from the excel file "asset_details.xlsx" under sheet "seller_details" and row 15
    When user add single seller bank details with save
    Then Default Bank Account should should be selected after adding single seller bank details

    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |

  #Prerequisite:Application already punch with application type as Multi Asset
  # ${ ProductType : ["IAF","MAL","Farm Equipment","AGRL"]}
  # ${ApplicationStage:["Sourcing","Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
  #${ApplicantType:["indiv","nonindiv"]}
  #FeatureID-ACAUTOCAS-11906
  Scenario Outline:User should able to change default bank account after adding multiple bank details with Finance Mode as <FinanceMode> in multi asset at <ApplicationStage> for <ProductType>
    And user reads data from the excel file "sourcing_details.xlsx" under sheet "home" and row 286
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user navigates to asset requested page for "<ApplicationStage>"
    And user reads data from the excel file "asset_details.xlsx" under sheet "home" and row 71
    And user select asset type as Used Asset
    And user select Bought From as Individual
    And user reads data from the excel file "asset_details.xlsx" under sheet "seller_details" and row 8
    And user enters seller name
    And user selects seller type
    And user fills seller identification details
    And user adds seller address from existing details
    And user reads data from the excel file "asset_details.xlsx" under sheet "seller_details" and row 15
    And user fill the Seller Bank Details with all field
    When user add "<NoOfIdentification>" bank account details with save
      | asset_details.xlsx | seller_details | 15 |
      | asset_details.xlsx | seller_details | 15 |
    Then user should able to change default bank account in seller bank details
    Examples:
      | NoOfIdentification | ApplicantType   | ApplicationStage   | ProductType   |
      | one another        | <ApplicantType> | <ApplicationStage> | <ProductType> |
      | multiple           | <ApplicantType> | <ApplicationStage> | <ProductType> |

