@Epic-Loan_Application_Details
@AuthoredBy-harshita.nayak
@Conventional
@Islamic
@Perishable

Feature:Asset Requested Validation under Multi Asset

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0

   #Prerequisite:Application already punch with application type as Multi Asset
    # { ProductType : ["IAF","MAL","Farm Equipment","AGRL"]}
# ${ApplicationStage:["Sourcing","Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
#${ApplicantType:["indiv","nonindiv"]}
#  CAS-187759
    #FeatureID-ACAUTOCAS-11906
  @ImplementedBy-rishabh.garg
    @Release

  Scenario Outline: ACAUTOCAS-13940: Save Compute asset requested without filling <Field_Name> for Consumer Vehicle under multi Asset as <var> at <ApplicationStage> stage for <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "" with "" from application grid
    And user reads data from the excel file "sourcing_details.xlsx" under sheet "home" and row 286
    And user navigates to asset requested page for "<ApplicationStage>"
    And user reads data from the excel file "asset_details.xlsx" under sheet "multi_asset_details" and row <Asset_Details_multi_asset_rowNo>
    When user fills asset requested with asset type as "<var>" without "<Field_Name>"
    And user click on save compute asset requested
    Then "<Field_Name>" fields "<Throws_notThrows>" on compute asset requested

    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | var        | Field_Name                        | Throws_notThrows                   | Asset_Details_multi_asset_rowNo |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | New Asset  | Collateral Sub-Type/Asset details | throws an error with error message | 2                               |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | New Asset  | Asset Category                    | throws an error with error message | 3                               |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | New Asset  | Asset Model                       | throws an error with error message | 5                               |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | New Asset  | Asset Cost                        | throws an error with error message | 6                               |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | New Asset  | Quantity                          | throws an error with error message | 7                               |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | New Asset  | Dealer                            | throws an error with error message | 8                               |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | New Asset  | Downpayment(Amount)               | throws an error with error message | 9                               |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | New Asset  | LTV(%)                            | throws an error with error message | 10                              |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Used Asset | Collateral Sub-Type/Asset details | throws an error with error message | 11                              |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Used Asset | Asset Category                    | throws an error with error message | 12                              |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Used Asset | Asset Model                       | throws an error with error message | 14                              |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Used Asset | Asset Cost                        | throws an error with error message | 15                              |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Used Asset | Quantity                          | throws an error with error message | 16                              |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Used Asset | Dealer                            | throws an error with error message | 17                              |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Used Asset | Downpayment(Amount)               | throws an error with error message | 18                              |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Used Asset | LTV(%)                            | throws an error with error message | 19                              |


   #Prerequisite:Application already punch with application type as Multi Asset
    # { ProductType : ["IAF","MAL","Farm Equipment","AGRL"]}
# ${ApplicationStage:["Sourcing","Lead Details","DDE"]}
#${ApplicantType:["indiv","nonindiv"]}
#  CAS-83292,CAS-146410,CAS-184412,CAS-182057,CAS-167914,CAS-70971,CAS-44798
    #FeatureID-ACAUTOCAS-11906
  @ImplementedBy-rishabh.garg
    @Release

  Scenario Outline: ACAUTOCAS-13941: Save next asset requested without filling <Field_Name> for multi Asset at <ApplicationStage> stage for <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "" with "" from application grid
    And user reads data from the excel file "sourcing_details.xlsx" under sheet "home" and row 286
    And user navigates to asset requested page for "<ApplicationStage>"
    And user reads data from the excel file "asset_details.xlsx" under sheet "multi_asset_details" and row <Asset_Details_multi_asset_rowNo>
    When user fills asset requested with asset type as "<var>" without "<Field_Name>"
    And user click on save next asset requested
    Then "<Field_Name>" fields "<Throws_notThrows>" on compute asset requested

    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | var        | Field_Name                        | Throws_notThrows                   | Asset_Details_multi_asset_rowNo |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | New Asset  | Collateral Sub-Type/Asset details | throws an error with error message | 2                               |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | New Asset  | Asset Category                    | throws an error with error message | 3                               |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | New Asset  | Asset Model                       | throws an error with error message | 5                               |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | New Asset  | Asset Cost                        | throws an error with error message | 6                               |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | New Asset  | Quantity                          | throws an error with error message | 7                               |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | New Asset  | Dealer                            | throws an error with error message | 8                               |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | New Asset  | Downpayment(Amount)               | throws an error with error message | 9                               |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | New Asset  | LTV(%)                            | throws an error with error message | 10                              |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Used Asset | Collateral Sub-Type/Asset details | throws an error with error message | 11                              |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Used Asset | Asset Category                    | throws an error with error message | 12                              |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Used Asset | Asset Model                       | throws an error with error message | 14                              |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Used Asset | Asset Cost                        | throws an error with error message | 15                              |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Used Asset | Quantity                          | throws an error with error message | 16                              |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Used Asset | Dealer                            | throws an error with error message | 17                              |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Used Asset | Downpayment(Amount)               | throws an error with error message | 18                              |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Used Asset | LTV(%)                            | throws an error with error message | 19                              |


  #Prerequisite:Application already punch with application type as Multi Asset
  # ${ProductType:["IAF", "MAL", "Farm Equipment", "AGRL"]}
  # ${ApplicationStage:["Sourcing","Lead Details", "DDE", "Recommendation", "Credit Approval", "Reconsideration"]}
  # ${ApplicantType:["indiv", "nonindiv"]}
  # ${Mandatory_All:["mandatory", "all"]}
  #CAS-83292,CAS-146410,CAS-184412,CAS-182057,CAS-167914,CAS-70971,CAS-44798
    #FeatureID-ACAUTOCAS-11906
  @Sanity

    @Release
    @ImplementedBy-tanya
  Scenario Outline: ACAUTOCAS-13942: Save the asset requested with <Mandatory_All> for multi Asset at <ApplicationStage> stage for <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "" with "" from application grid
    And user reads data from the excel file "sourcing_details.xlsx" under sheet "home" and row 286
    And user navigates to asset requested page for "<ApplicationStage>"
    And user reads data from the excel file "asset_details.xlsx" under sheet "multi_asset_details" and row <Asset_Details_multi_asset_rowNum>
    When user fills asset requested "<Mandatory_All>" fields with "<AssetType>"
    And user save the asset requested data
    Then asset requested page should be save successfully

    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | AssetType  | Mandatory_All   | Asset_Details_multi_asset_rowNum |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | New Asset  | <Mandatory_All> | 0                                |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Used Asset | <Mandatory_All> | 1                                |

  #Prerequisite:Application already punch with application type as Multi Asset
  # ${ProductType : ["IAF","MAL","Farm Equipment","AGRL"]}
  # ${ApplicationStage:["Sourcing","Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
  # ${ApplicantType:["indiv","nonindiv"]}
  #CAS-67475
  #FeatureID-ACAUTOCAS-11906

  @Release
    @ImplementedBy-tanya
  Scenario Outline: ACAUTOCAS-13943: Delete the added Asset Requested details for multi Asset at <ApplicationStage> stage for <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "" with "" from application grid
    And user reads data from the excel file "sourcing_details.xlsx" under sheet "home" and row 286
    And user navigates to asset requested page for "<ApplicationStage>"
    And user reads data from the excel file "asset_details.xlsx" under sheet "multi_asset_details" and row <Asset_Details_multi_asset_rowNum>
    And user fills asset requested "all" fields with "<AssetType>"
    And user save the asset requested data
    When user delete the added asset requested details
    Then asset requested details should be deleted successfully

    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | AssetType  | Asset_Details_multi_asset_rowNum |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | New Asset  | 20                               |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Used Asset | 21                               |

  #Prerequisite:Application already punch with application type as Multi Asset
  # ${ProductType : ["IAF","MAL","Farm Equipment","AGRL"]}
  # ${ApplicationStage:["Sourcing","Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
  # ${ApplicantType:["indiv","nonindiv"]}
  # ${AssetType:["New Asset","Used Asset"]}
  #FeatureID-ACAUTOCAS-11906

  @Release
    @ImplementedBy-tanya
  Scenario Outline: ACAUTOCAS-13944: Edit the added Asset Requested details along with save for multi Asset at <ApplicationStage> stage for <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "" with "" from application grid
    And user reads data from the excel file "sourcing_details.xlsx" under sheet "home" and row 286
    And user navigates to asset requested page for "<ApplicationStage>"
    And user reads asset details excel from datatable on the basis of "<AssetType>" type
      | asset_details.xlsx | multi_asset_details | 0 | New Asset  |
      | asset_details.xlsx | multi_asset_details | 1 | Used Asset |
    And user fills asset requested "all" fields with "<AssetType>"
    And user save the asset requested data
    When user edit the added asset requested details
    And user reads data from the excel file "asset_details.xlsx" under sheet "multi_asset_details" and row 22
    And user modify the asset requested details
    And user save the asset requested data
    Then edited asset requested details should be saved successfully

    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | AssetType   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <AssetType> |

  #Prerequisite:Application already punch with application type as Multi Asset
  # ${ProductType : ["IAF","MAL","Farm Equipment","AGRL"]}
  # ${ApplicationStage:["Sourcing","Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
  # ${ApplicantType:["indiv","nonindiv"]}
  #FeatureID-ACAUTOCAS-11906

  @Release
    @ImplementedBy-tanya
  Scenario Outline: ACAUTOCAS-13945: Required field of asset requested for multi Asset at <ApplicationStage> for <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "" with "" from application grid
    And user reads data from the excel file "sourcing_details.xlsx" under sheet "home" and row 286
    And user navigates to asset requested page for "<ApplicationStage>"
    When user clicks on Required fields in asset requested
    Then the following mandatory fields should be present in asset requested
      | Collateral Sub-Type/Asset details |
      | Finance Mode                      |
      | Asset Type                        |
      | Asset Category                    |
      | Asset Model                       |
      | Asset Cost                        |
      | Quantity                          |
      | Bought From                       |
      | Dealer                            |
      | Total Asset Cost                  |
      | DownPayment(Amount)               |
      | LTV(%)                            |

    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |

  #Prerequisite:Application already punch with application type as Multi Asset
  # ${ProductType : ["IAF","MAL","Farm Equipment","AGRL"]}
  # ${ApplicationStage:["Sourcing","Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
  # ${ApplicantType:["indiv","nonindiv"]}
  #FeatureID-ACAUTOCAS-11906

  @Release
    @ImplementedBy-tanya
  Scenario Outline: ACAUTOCAS-13946: All field of asset requested for multi Asset at <ApplicationStage> for <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "" with "" from application grid
    And user reads data from the excel file "sourcing_details.xlsx" under sheet "home" and row 286
    And user navigates to asset requested page for "<ApplicationStage>"
    When user clicks on All fields in asset requested
    Then the following All fields should be present in asset requested
      | Asset Number                      |
      | Collateral Sub-Type/Asset details |
      | Finance Mode                      |
      | Asset Type                        |
      | Asset Category                    |
      | Manufacturer                      |
      | Asset Model                       |
      | Asset Variant                     |
      | Asset Level                       |
      | Asset Cost                        |
      | Quantity                          |
      | Manufacturer Address              |
      | Manufacturer GSTIN                |
      | Bought From                       |
      | Dealer                            |
      | Showroom Name                     |
      | Total Asset Cost                  |
      | DownPayment(Amount)               |
      | LTV(%)                            |

    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |

  #Prerequisite:Application already punch with application type as Multi Asset
  #${ProductType:["IAF","MAL","Farm Equipment","AGRL"]}
  #${ApplicationStage:["Sourcing","Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
  #${ApplicantType:["indiv","nonindiv"]}
  #${AssetType:["New Asset","Used Asset"]}
  #FeatureID-ACAUTOCAS-11906

  @Release
    @ImplementedBy-tanya
  Scenario Outline: ACAUTOCAS-13947: <Field_Name> field validation with <Validity> <InputType> in asset requested details for multi Asset at <ApplicationStage> stage for <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "" with "" from application grid
    And user reads data from the excel file "sourcing_details.xlsx" under sheet "home" and row 286
    And user navigates to asset requested page for "<ApplicationStage>"
    And user reads asset details excel from datatable on the basis of "<AssetType>" type
      | asset_details.xlsx | multi_asset_details | 0 | New Asset  |
      | asset_details.xlsx | multi_asset_details | 1 | Used Asset |
    When user select asset type as "<AssetType>"
    And user reads data from the excel file "asset_details.xlsx" under sheet "multi_asset_details" and row <Asset_Details_multi_asset_rowNum>
    And user fills "<Validity>" "<Field_Name>" with "<InputType>" in asset requested page
    Then "<Field_Name>" field "<Throws_notThrows>" error in asset requested page
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | AssetType   | Field_Name          | Validity | InputType                        | Throws_notThrows | Asset_Details_multi_asset_rowNum |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <AssetType> | Quantity            | valid    | positive digits                  | not throw any    | 22                               |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <AssetType> | Quantity            | invalid  | characters                       | throw an         | 23                               |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <AssetType> | Quantity            | invalid  | both digits and characters       | throw an         | 24                               |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <AssetType> | Quantity            | invalid  | negative                         | throw an         | 25                               |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <AssetType> | Quantity            | invalid  | hyphen                           | throw an         | 26                               |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <AssetType> | Quantity            | invalid  | space                            | throw an         | 27                               |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <AssetType> | Quantity            | invalid  | special characters except hyphen | throw an         | 28                               |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <AssetType> | Quantity            | invalid  | more than 2 decimal places       | throw an         | 29                               |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <AssetType> | Quantity            | invalid  | zero                             | throw an         | 30                               |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <AssetType> | Asset Cost          | invalid  | more than 18 digits              | throw an         | 31                               |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <AssetType> | Asset Cost          | valid    | less than 18 digits              | not throw any    | 32                               |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <AssetType> | Asset Cost          | invalid  | character                        | throw an         | 33                               |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <AssetType> | Asset Cost          | invalid  | special character                | throw an         | 34                               |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <AssetType> | Asset Cost          | invalid  | negative values                  | throw an         | 35                               |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <AssetType> | Asset Cost          | invalid  | character with space             | throw an         | 36                               |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <AssetType> | Asset Cost          | invalid  | digits with space                | throw an         | 37                               |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <AssetType> | Asset Cost          | valid    | zero                             | not throw any    | 38                               |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <AssetType> | Downpayment(Amount) | invalid  | more than 18 digits              | throw an         | 39                               |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <AssetType> | Downpayment(Amount) | valid    | less than 18 digits              | not throw any    | 40                               |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <AssetType> | Downpayment(Amount) | invalid  | character                        | throw an         | 41                               |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <AssetType> | Downpayment(Amount) | invalid  | special character                | throw an         | 42                               |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <AssetType> | Downpayment(Amount) | invalid  | negative values                  | throw an         | 43                               |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <AssetType> | Downpayment(Amount) | invalid  | character with space             | throw an         | 44                               |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <AssetType> | Downpayment(Amount) | invalid  | digits with space                | throw an         | 45                               |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <AssetType> | Downpayment(Amount) | valid    | zero                             | not throw any    | 46                               |

  # Prerequisite:Application already punch with application type as Multi Asset
  # ${ProductType : ["IAF","MAL","Farm Equipment","AGRL"]}
  # ${ApplicationStage:["Sourcing","Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
  # ${ApplicantType:["indiv","nonindiv"]}
  # CAS-60354
  #FeatureID-ACAUTOCAS-11906

  @Release
    @ImplementedBy-tanya
  Scenario Outline: ACAUTOCAS-13948: While selecting Finance Mode as <FinanceMode> Asset Type as <AssetType> Bought From as Individual get <Var> for multi Asset at <ApplicationStage> stage for <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "" with "" from application grid
    And user reads data from the excel file "sourcing_details.xlsx" under sheet "home" and row 286
    And user navigates to asset requested page for "<ApplicationStage>"
    And user reads data from the excel file "asset_details.xlsx" under sheet "multi_asset_details" and row <Asset_Details_multi_asset_rowNum>
    And user select Finance Mode as "<FinanceMode>"
    When user select asset type as "<AssetType>"
    Then the Bought From Individual should be "<Var>"

    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | FinanceMode | AssetType  | Var     | Asset_Details_multi_asset_rowNum |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Purchase    | New Asset  | Enable  | 0                                |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Purchase    | Used Asset | Disable | 1                                |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Refinance   | New Asset  | Disable | 48                               |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Refinance   | Used Asset | Enable  | 49                               |

  #Prerequisite:Application already punch with application type as Multi Asset
  # Dealer data fetch from Master Configuration
  # ${ProductType : ["IAF","MAL","Farm Equipment","AGRL"]}
  # ${ApplicationStage:["Sourcing","Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
  # ${ApplicantType:["indiv","nonindiv"]}
  # CAS-77872,CAS-96444,CAS-87257,CAS-78434,CAS-126154,CAS-72157
  #FeatureID-ACAUTOCAS-11906

  @Release
    @ImplementedBy-tanya
  Scenario Outline: ACAUTOCAS-13949: Validated the Dealer field with a list of data while selecting Bought From as Dealer for multi Asset at <ApplicationStage> stage for <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "" with "" from application grid
    And user reads data from the excel file "sourcing_details.xlsx" under sheet "home" and row 286
    And user navigates to asset requested page for "<ApplicationStage>"
    And user reads data from the excel file "asset_details.xlsx" under sheet "multi_asset_details" and row <Asset_Details_multi_asset_rowNum>
    And user select Finance Mode as "<FinanceMode>"
    And user select asset type as "<AssetType>"
    When user select Bought From as "Dealer"
    Then the Dealer field should be present with list of data

    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | FinanceMode | AssetType  | Asset_Details_multi_asset_rowNum |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Purchase    | New Asset  | 0                                |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Purchase    | Used Asset | 1                                |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Refinance   | New Asset  | 48                               |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Refinance   | Used Asset | 49                               |

  #Prerequisite:Application already punch with application type as Multi Asset
  # Dealer data fetch from Master Configuration
  # ${ProductType : ["IAF","MAL","Farm Equipment","AGRL"]}
  # ${ApplicationStage:["Sourcing","Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
  # ${ApplicantType:["indiv","nonindiv"]}
  # CAS-91142,CAS-96689
  #FeatureID-ACAUTOCAS-11906

  @Release
    @ImplementedBy-tanya
  Scenario Outline: ACAUTOCAS-13950: While selecting Dealer details dealer code should be reflected for multi Asset at <ApplicationStage> stage for <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "" with "" from application grid
    And user reads data from the excel file "sourcing_details.xlsx" under sheet "home" and row 286
    And user navigates to asset requested page for "<ApplicationStage>"
    And user reads data from the excel file "asset_details.xlsx" under sheet "multi_asset_details" and row <Asset_Details_multi_asset_rowNum>
    And user select Finance Mode as "<FinanceMode>"
    And user select asset type as "<AssetType>"
    When user select Bought From as "Dealer"
    And user search dealer details
    Then the dealer code should be reflected successfully

    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | FinanceMode | AssetType  | Asset_Details_multi_asset_rowNum |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Purchase    | New Asset  | 0                                |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Purchase    | Used Asset | 1                                |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Refinance   | New Asset  | 48                               |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Refinance   | Used Asset | 49                               |

  #Prerequisite:Application already punch with application type as Multi Asset
  # Dealer data fetch from Master Configuration
  # ${ProductType : ["IAF","MAL","Farm Equipment","AGRL"]}
  # ${ApplicationStage:["Sourcing","Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
  # ${ApplicantType:["indiv","nonindiv"]}
  # CAS-84515,CAS-90337
  #FeatureID-ACAUTOCAS-11906

  @Release
    @ImplementedBy-tanya
  Scenario Outline: ACAUTOCAS-13951: Validate while selecting Dealer details Showroom data should be selected from the dropdown for multi Asset at <ApplicationStage> stage for <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "" with "" from application grid
    And user reads data from the excel file "sourcing_details.xlsx" under sheet "home" and row 286
    And user navigates to asset requested page for "<ApplicationStage>"
    And user reads data from the excel file "asset_details.xlsx" under sheet "multi_asset_details" and row <Asset_Details_multi_asset_rowNum>
    And user select Finance Mode as "<FinanceMode>"
    And user select asset type as "<AssetType>"
    When user select Bought From as "Dealer"
    And user select dealer details from dropdown
    And user select corresponding showroom data from dropdown
    Then user validated showroom data should be populated from the dropdown

    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | FinanceMode | AssetType  | Asset_Details_multi_asset_rowNum |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Purchase    | New Asset  | 0                                |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Purchase    | Used Asset | 1                                |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Refinance   | New Asset  | 48                               |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Refinance   | Used Asset | 49                               |


  #Prerequisite:Application already punch with application type as Multi Asset
  # Dealer data fetch from Master Configuration
  # ${ProductType : ["IAF","MAL","Farm Equipment","AGRL"]}
  # ${ApplicationStage:["Sourcing","Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
  # ${ApplicantType:["indiv","nonindiv"]}
  # CAS-109208
  #FeatureID-ACAUTOCAS-11906

  @Release
    @ImplementedBy-tanya
  Scenario Outline: ACAUTOCAS-13952: Validate the Showroom Dealer address details should be displayed while selecting Showroom value for multi Asset at <ApplicationStage> stage for <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "" with "" from application grid
    And user reads data from the excel file "sourcing_details.xlsx" under sheet "home" and row 286
    And user navigates to asset requested page for "<ApplicationStage>"
    And user reads data from the excel file "asset_details.xlsx" under sheet "multi_asset_details" and row <Asset_Details_multi_asset_rowNum>
    And user select Finance Mode as "<FinanceMode>"
    And user select asset type as "<AssetType>"
    When user select Bought From as "Dealer"
    And user select dealer details from dropdown
    And user select corresponding showroom data from dropdown
    Then user validated Showroom Dealer address details should be displayed successfully

    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | FinanceMode | AssetType  | Asset_Details_multi_asset_rowNum |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Purchase    | New Asset  | 0                                |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Purchase    | Used Asset | 1                                |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Refinance   | New Asset  | 48                               |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Refinance   | Used Asset | 49                               |



  #Prerequisite:Application already punch with application type as Multi Asset
  # Field Data display in dropdown configure from master
  # ${ProductType : ["IAF","MAL","Farm Equipment","AGRL"]}
  # ${ApplicationStage:["Sourcing","Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
  # ${ApplicantType:["indiv","nonindiv"]}
  # ${FinanceMode:["Purchase","Refinance"]}
  # ${AssetType:["New Asset","Used Asset"]}
  # CAS-84515,CAS-47148,CAS-146281
  #FeatureID-ACAUTOCAS-11906

  @Release
    @ImplementedBy-tanya
  Scenario Outline: ACAUTOCAS-13953: Validate the <DependentField> fields which dependent on <FieldName> for multi Asset at <ApplicationStage> stage for <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "" with "" from application grid
    And user reads data from the excel file "sourcing_details.xlsx" under sheet "home" and row 286
    And user navigates to asset requested page for "<ApplicationStage>"
    And user reads data from the excel file "asset_details.xlsx" under sheet "multi_asset_details" and row 0
    And user select Collateral Sub Type Asset Details
    And user reads asset details excel from datatable on the basis of "<FinanceMode>" type
      | asset_details.xlsx | multi_asset_details | 0  | Purchase  |
      | asset_details.xlsx | multi_asset_details | 49 | Refinance |
    And user select Finance Mode as "<FinanceMode>"
    And user reads asset details excel from datatable on the basis of "<AssetType>" type
      | asset_details.xlsx | multi_asset_details | 0 | New Asset  |
      | asset_details.xlsx | multi_asset_details | 1 | Used Asset |
    And user select asset type as "<AssetType>"
    When user select value in "<FieldName>" field
    Then values in dropdown of "<DependentField>" should be present

    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | FinanceMode   | AssetType   | FieldName      | DependentField |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <FinanceMode> | <AssetType> | Asset Category | Manufacturer   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <FinanceMode> | <AssetType> | Asset Category | Asset Model    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <FinanceMode> | <AssetType> | Asset Model    | Asset Variant  |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <FinanceMode> | <AssetType> | Asset Category | Asset Level    |

  #Prerequisite:Application already punch with application type as Multi Asset
  # ${ProductType : ["IAF","MAL","Farm Equipment","AGRL"]}
  # ${ApplicationStage:["Sourcing","Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
  # ${ApplicantType:["indiv","nonindiv"]}
  # ${FinanceMode:["Purchase","Refinance"]}
  # ${AssetType:["New Asset","Used Asset"]}
  #FeatureID-ACAUTOCAS-11906

  @Release
    @ImplementedBy-tanya
  Scenario Outline: ACAUTOCAS-13954: Validate the value in Total Asset Cost field should be calculated while entering value in Asset Cost along with Quantity for multi Asset at <ApplicationStage> stage for <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "" with "" from application grid
    And user reads data from the excel file "sourcing_details.xlsx" under sheet "home" and row 286
    And user navigates to asset requested page for "<ApplicationStage>"
    And user reads asset details excel from datatable on the basis of "<FinanceMode>" type
      | asset_details.xlsx | multi_asset_details | 0  | Purchase  |
      | asset_details.xlsx | multi_asset_details | 49 | Refinance |
    And user select Finance Mode as "<FinanceMode>"
    And user reads asset details excel from datatable on the basis of "<AssetType>" type
      | asset_details.xlsx | multi_asset_details | 0 | New Asset  |
      | asset_details.xlsx | multi_asset_details | 1 | Used Asset |
    And user select asset type as "<AssetType>"
    And user reads data from the excel file "asset_details.xlsx" under sheet "multi_asset_details" and row 53
    When user enter value in Asset Cost along with Quantity
    Then the value in Total Asset Cost should be calculated successfully

    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | FinanceMode   | AssetType   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <FinanceMode> | <AssetType> |

  #Prerequisite:Application already punch with application type as Multi Asset
  # ${ProductType : ["IAF","MAL","Farm Equipment","AGRL"]}
  # ${ApplicationStage:["Sourcing","Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
  # ${ApplicantType:["indiv","nonindiv"]}
  # ${FinanceMode:["Purchase","Refinance"]}
  # ${AssetType:["New Asset","Used Asset"]}
  # CAS-76378
  #FeatureID-ACAUTOCAS-11906

  @Release
    @ImplementedBy-tanya
  Scenario Outline: ACAUTOCAS-13955: Validate the value in <FieldName> should be calculated while entering value in DownPayment for multi Asset at <ApplicationStage> stage for <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "" with "" from application grid
    And user reads data from the excel file "sourcing_details.xlsx" under sheet "home" and row 286
    And user navigates to asset requested page for "<ApplicationStage>"
    And user reads asset details excel from datatable on the basis of "<FinanceMode>" type
      | asset_details.xlsx | multi_asset_details | 0  | Purchase  |
      | asset_details.xlsx | multi_asset_details | 49 | Refinance |
    And user select Finance Mode as "<FinanceMode>"
    And user reads asset details excel from datatable on the basis of "<AssetType>" type
      | asset_details.xlsx | multi_asset_details | 0 | New Asset  |
      | asset_details.xlsx | multi_asset_details | 1 | Used Asset |
    And user select asset type as "<AssetType>"
    And user reads data from the excel file "asset_details.xlsx" under sheet "multi_asset_details" and row 53
    And user enter value in Asset Cost along with Quantity
    When user enter value in DownPayment(Amount)
    Then the value in "<FieldName>" should be calculated successfully based on DownPayment(Amount)

    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | FinanceMode   | AssetType   | FieldName          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <FinanceMode> | <AssetType> | DownPayment( %)    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <FinanceMode> | <AssetType> | Application Amount |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <FinanceMode> | <AssetType> | LTV(%)             |

  #Prerequisite:Application already punch with application type as Multi Asset
  # ${ProductType : ["IAF","MAL","Farm Equipment","AGRL"]}
  # ${ApplicationStage:["Sourcing","Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
  # ${ApplicantType:["indiv","nonindiv"]}
  # ${FinanceMode:["Purchase","Refinance"]}
  # ${AssetType:["New Asset","Used Asset"]}
  # CAS-76378
  #FeatureID-ACAUTOCAS-11906

  @Release
    @ImplementedBy-tanya
  Scenario Outline: Validate the value in <FieldName> should be calculated while entering value in LTV(%) for multi Asset at <ApplicationStage> stage for <ProductType>
    And user creates an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "" with "" from web service
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "" with "" from application grid
    And user reads data from the excel file "sourcing_details.xlsx" under sheet "home" and row 286
    And user navigates to asset requested page for "<ApplicationStage>"
    And user reads asset details excel from datatable on the basis of "<FinanceMode>" type
      | asset_details.xlsx | multi_asset_details | 0  | Purchase  |
      | asset_details.xlsx | multi_asset_details | 49 | Refinance |
    And user select Finance Mode as "<FinanceMode>"
    And user reads asset details excel from datatable on the basis of "<AssetType>" type
      | asset_details.xlsx | multi_asset_details | 0 | New Asset  |
      | asset_details.xlsx | multi_asset_details | 1 | Used Asset |
    And user select asset type as "<AssetType>"
    And user reads data from the excel file "asset_details.xlsx" under sheet "multi_asset_details" and row 53
    And user enter value in Asset Cost along with Quantity
    When user enter value in LTV(%)
    Then the value in "<FieldName>" should be calculated successfully based on LTV(%)

    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | FinanceMode   | AssetType   | FieldName           |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <FinanceMode> | <AssetType> | DownPayment( %)     |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <FinanceMode> | <AssetType> | Application Amount  |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <FinanceMode> | <AssetType> | DownPayment(Amount) |

  #Prerequisite:Application already punch with application type as Multi Asset
  # ${ProductType : ["IAF","CON_VEH","Farm Equipment","AGRL"]}
  # ${ApplicationStage:["Sourcing","Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
  # ${ApplicantType:["indiv","nonindiv"]}
  # ${FinanceMode:["Purchase","Refinance"]}
  # ${AssetType:["New Asset","Used Asset"]}
  # CAS-76378
  #FeatureID-ACAUTOCAS-11906

  @Release
    @ImplementedBy-tanya
  Scenario Outline: Validate the value in <FieldName> should be calculated while entering value in DownPayment(%) for multi Asset at <ApplicationStage> stage for <ProductType>
    And user creates an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "" with "" from web service
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "" with "" from application grid
    And user reads data from the excel file "sourcing_details.xlsx" under sheet "home" and row 286
    And user navigates to asset requested page for "<ApplicationStage>"
    And user reads asset details excel from datatable on the basis of "<FinanceMode>" type
      | asset_details.xlsx | multi_asset_details | 0  | Purchase  |
      | asset_details.xlsx | multi_asset_details | 49 | Refinance |
    And user select Finance Mode as "<FinanceMode>"
    And user reads asset details excel from datatable on the basis of "<AssetType>" type
      | asset_details.xlsx | multi_asset_details | 0 | New Asset  |
      | asset_details.xlsx | multi_asset_details | 1 | Used Asset |
    And user select asset type as "<AssetType>"
    And user reads data from the excel file "asset_details.xlsx" under sheet "multi_asset_details" and row 53
    And user enter value in Asset Cost along with Quantity
    When user enter value in DownPayment( %)
    Then the value in "<FieldName>" should be calculated successfully based on DownPayment( %)

    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | FinanceMode   | AssetType   | FieldName           |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <FinanceMode> | <AssetType> | LTV( %)             |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <FinanceMode> | <AssetType> | Application Amount  |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <FinanceMode> | <AssetType> | DownPayment(Amount) |

  #Prerequisite:Application already punch with application type as Multi Asset
  # ${ProductType : ["IAF","CON_VEH","Farm Equipment","AGRL"]}
  # ${ApplicationStage:["Sourcing","Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
  # ${ApplicantType:["indiv","nonindiv"]}
  # ${FinanceMode:["Purchase","Refinance"]}
  # ${AssetType:["New Asset","Used Asset"]}
  #FeatureID-ACAUTOCAS-11906

  @Release
    @ImplementedBy-tanya
  Scenario Outline: ACAUTOCAS-13956: Validate the Consolidated Summary specific field should be present in read only mode for multi Asset at <ApplicationStage> stage for <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "" with "" from application grid
    And user reads data from the excel file "sourcing_details.xlsx" under sheet "home" and row 286
    And user navigates to asset requested page for "<ApplicationStage>"
    And user reads asset details excel from datatable on the basis of "<FinanceMode>" type
      | asset_details.xlsx | multi_asset_details | 0  | Purchase  |
      | asset_details.xlsx | multi_asset_details | 49 | Refinance |
    And user select Finance Mode as "<FinanceMode>"
    And user reads asset details excel from datatable on the basis of "<AssetType>" type
      | asset_details.xlsx | multi_asset_details | 0 | New Asset  |
      | asset_details.xlsx | multi_asset_details | 1 | Used Asset |
    When user select asset type as "<AssetType>"
    Then user validated that the Consolidated Summary specific field should be present in read only mode
      | Consolidated Total Asset Cost      |
      | Consolidated Down Payment (Amount) |
      | DownPayment( %)                    |
      | Consolidated Loan Amount           |
      | Consolidated LTV                   |

    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | FinanceMode   | AssetType   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <FinanceMode> | <AssetType> |

  #Prerequisite:Application already punch with application type as Multi Asset
  # ${ProductType : ["IAF","CON_VEH","Farm Equipment","AGRL"]}
  # ${ApplicationStage:["Sourcing","Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
  # ${ApplicantType:["indiv","nonindiv"]}
  # ${FinanceMode:["Purchase","Refinance"]}
  #FeatureID-ACAUTOCAS-11906

  @Release
    @ImplementedBy-tanya
  Scenario Outline: ACAUTOCAS-13957: Validate on Asset Requested Screen specific field should be present in read only mode for multi Asset at <ApplicationStage> stage for <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "" with "" from application grid
    And user reads data from the excel file "sourcing_details.xlsx" under sheet "home" and row 286
    And user navigates to asset requested page for "<ApplicationStage>"
    And user reads asset details excel from datatable on the basis of "<FinanceMode>" type
      | asset_details.xlsx | multi_asset_details | 1  | Purchase  |
      | asset_details.xlsx | multi_asset_details | 49 | Refinance |
    And user select Finance Mode as "<FinanceMode>"
    When user select asset type as "<AssetType>"
    Then user validated that on Asset Requested Screen specific field should be present in read only mode
      | Asset Number     |
      | Total Asset Cost |

    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | FinanceMode   | AssetType  |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <FinanceMode> | Used Asset |

  #Prerequisite:Application already punch with application type as Multi Asset
  # ${ProductType : ["IAF","CON_VEH","Farm Equipment","AGRL"]}
  # ${ApplicationStage:["Sourcing","Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
  # ${ApplicantType:["indiv","nonindiv"]}
  # ${FinanceMode:["Purchase","Refinance"]}
  #FeatureID-ACAUTOCAS-11906

  @Release
    @ImplementedBy-tanya
  Scenario Outline: Validate on Asset Requested Screen specific field should be present in read only mode for multi Asset at <ApplicationStage> stage for <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "" with "" from application grid
    And user reads data from the excel file "sourcing_details.xlsx" under sheet "home" and row 286
    And user navigates to asset requested page for "<ApplicationStage>"
    And user reads asset details excel from datatable on the basis of "<FinanceMode>" type
      | asset_details.xlsx | multi_asset_details | 0  | Purchase  |
      | asset_details.xlsx | multi_asset_details | 48 | Refinance |
    And user select Finance Mode as "<FinanceMode>"
    When user select asset type as "<AssetType>"
    Then user validated that on Asset Requested Screen specific field should be present in read only mode
      | Asset Number       |
      | Total Asset Cost   |
      | Manufacturer GSTIN |

    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | FinanceMode   | AssetType |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <FinanceMode> | New Asset |
