@Epic-Loan_Application_Details
@AuthoredBy-harshita.nayak
@NotImplemented
@Conventional
@Deferred

Feature:Asset Requested Validation For Commercial Equipment and Commercial Vehicle under Multi Asset

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0

     #Prerequisite:Application already punch with application type as Multi Asset
 # ${ ProductType : ["CEQ","CV"]}
# ${ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
#${ApplicantType:["indiv","nonindiv"]}
  # ${FundingFor:["Chassis","FBV"]}
#  ${AssetType:["New Asset","Used Asset"]}
  #${BoughtFrom:["Dealer","Manufacture","Individual"]}
#  ${Mandatory_All:["mandatory","all_field"]}
    #FeatureID-ACAUTOCAS-11906
  @Sanity
  Scenario Outline: ACAUTOCAS-14295: Save Compute the asset requested by selecting bought from as <BoughtFrom> along Financial mode as Purchase with <FundingFor> <Mandatory_All> at <ApplicationStage> stage for <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "" with "" from application grid
    And user navigates to asset requested page for "<ApplicationStage>"
    And user select funding for as "<FundingFor>"
    And user select Collateral Sub-Type/Asset details as "<ProductType>"
    When user fills asset requested with "<AssetType>" along with Financial mode as Purchase
    And user select  bought from as <BoughtFrom> with <Mandatory_All>
    And user save the data for "<FundingFor>"
    Then asset requested page should be save successfully

    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | AssetType   | FundingFor   | Mandatory_All   | BoughtFrom   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <AssetType> | <FundingFor> | <Mandatory_All> | <BoughtFrom> |

        #Prerequisite:Application already punch with application type as Multi Asset
 # ${ ProductType : ["CEQ","CV"]}
# ${ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
#${ApplicantType:["indiv","nonindiv"]}
  # ${FundingFor:["Chassis","FBV"]}
  #${BoughtFrom:["Dealer","Manufacture","Individual"]}
#  ${Mandatory_All:["mandatory","all_field"]}
    #FeatureID-ACAUTOCAS-11906
  @Sanity
  Scenario Outline: ACAUTOCAS-14296: Save Compute the asset requested by selecting bought from as <BoughtFrom> along Financial mode as Refinance with <FundingFor> <Mandatory_All> at <ApplicationStage> stage for <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "" with "" from application grid
    And user navigates to asset requested page for "<ApplicationStage>"
    And user select funding for as "<FundingFor>"
    And user select Collateral Sub-Type/Asset details as "<ProductType>"
    When user fills asset requested with "<AssetType>" along with Financial mode as Refinance
    And user select  bought from as <BoughtFrom> with <Mandatory_All>
    And user save the data for "<FundingFor>"
    Then asset requested page should be save successfully

    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | AssetType  | FundingFor   | Mandatory_All   | BoughtFrom   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | New Asset  | <FundingFor> | <Mandatory_All> | Dealer       |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | New Asset  | <FundingFor> | <Mandatory_All> | Manufacture  |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Used Asset | <FundingFor> | <Mandatory_All> | <BoughtFrom> |


      #Prerequisite:Application already punch with application type as Multi Asset
 # ${ ProductType : ["CV"]}
# ${ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
#${ApplicantType:["indiv","nonindiv"]}
  # ${FundingFor:["Body","Both"]}
#  ${AssetType:["New Asset","Used Asset"]}
  #${BoughtFrom:["Dealer","Manufacture","Individual"]}
#  ${Mandatory_All:["mandatory","all_field"]}
    #FeatureID-ACAUTOCAS-11906
  @Sanity
  Scenario Outline: ACAUTOCAS-14297: Save Compute the asset requested by selecting bought from as <BoughtFrom> along Financial mode as Purchase with <FundingFor> for <Mandatory_All> at <ApplicationStage> stage for <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "" with "" from application grid
    And user navigates to asset requested page for "<ApplicationStage>"
    And user select funding for as "<FundingFor>"
    And user select Collateral Sub-Type/Asset details as "<ProductType>"
    When user fills asset requested with "<AssetType>" along with Financial mode as Purchase
    And user select  bought from as <BoughtFrom> with <Mandatory_All>
    And user save the data for "<FundingFor>"
    Then asset requested page should be save successfully

    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | AssetType   | FundingFor   | Mandatory_All   | BoughtFrom   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <AssetType> | <FundingFor> | <Mandatory_All> | <BoughtFrom> |

#Prerequisite:Application already punch with application type as Multi Asset
 # ${ ProductType : ["CV"]}
# ${ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
#${ApplicantType:["indiv","nonindiv"]}
  # ${FundingFor:["Body","Both"]}
  #${BoughtFrom:["Dealer","Manufacture","Individual"]}
#  ${Mandatory_All:["mandatory","all_field"]}
    #FeatureID-ACAUTOCAS-11906
  @Sanity
  Scenario Outline: ACAUTOCAS-14298: Save Compute the asset requested by selecting bought from as <BoughtFrom> along Financial mode as Refinance with <FundingFor> for <Mandatory_All> at <ApplicationStage> stage for <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "" with "" from application grid
    And user navigates to asset requested page for "<ApplicationStage>"
    And user select funding for as "<FundingFor>"
    And user select Collateral Sub-Type/Asset details as "<ProductType>"
    When user fills asset requested with "<AssetType>" along with Financial mode as Refinance
    And user select  bought from as <BoughtFrom> with <Mandatory_All>
    And user save the data for "<FundingFor>"
    Then asset requested page should be save successfully

    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | AssetType  | FundingFor   | Mandatory_All   | BoughtFrom   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | New Asset  | <FundingFor> | <Mandatory_All> | Manufacture  |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | New Asset  | <FundingFor> | <Mandatory_All> | Dealer       |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Used Asset | <FundingFor> | <Mandatory_All> | <BoughtFrom> |

 #Prerequisite:Application already punch with application type as Multi Asset
 # ${ ProductType : ["CEQ","CV"]}
# ${ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
#${ApplicantType:["indiv","nonindiv"]}
  #  ${FundingFor:["Chassis","FBV"]}
#${FinanceMode:["Purchase","Refinance"]}
    #  ${AssetType:["New Asset","Used Asset"]}
# FeatureID-ACAUTOCAS-11906
  Scenario Outline: ACAUTOCAS-14299: Save Compute asset requested by selecting bought from as Dealer without filling <Field_Name> with Funding For as <FundingFor> for multi Asset at <ApplicationStage> stage for <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user navigates to asset requested page
    And user select Funding For as "<FundingFor>"
    And user select Collateral Sub-Type/Asset details as "<ProductType>"
    And user select Finance Mode as "<FinanceMode>"
    When user fills asset requested with asset type as "<AssetType>" without "<Field_Name>"
    And user select bought from as Dealer
    And user click on save compute asset requested
    Then "<Field_Name>" fields "<Throws_notThrows>" in asset requested page

    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | FundingFor   | FinanceMode   | AssetType   | Field_Name                        | Throws_notThrows                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <FundingFor> | <FinanceMode> | <AssetType> | Collateral Sub-Type/Asset details | throws an error with error message |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <FundingFor> | <FinanceMode> | <AssetType> | Asset Category                    | throws an error with error message |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <FundingFor> | <FinanceMode> | <AssetType> | Asset Model                       | throws an error with error message |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <FundingFor> | <FinanceMode> | <AssetType> | Asset Cost                        | throws an error with error message |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <FundingFor> | <FinanceMode> | <AssetType> | Quantity                          | throws an error with error message |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <FundingFor> | <FinanceMode> | <AssetType> | Dealer                            | throws an error with error message |

    #Prerequisite:Application already punch with application type as Multi Asset
 # ${ ProductType : ["CEQ","CV"]}
# ${ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
#${ApplicantType:["indiv","nonindiv"]}
  #${FundingFor:["Chassis","FBV"]}
#${FinanceMode:["Purchase"]}
#${AssetType:["New Asset","Used Asset"]}
# ${BoughtFrom:["Manufacture","Individual"]}
#${ApplicantType:["indiv","nonindiv"]}
# FeatureID-ACAUTOCAS-11906
  Scenario Outline: ACAUTOCAS-14300: Save Compute asset requested by selecting bought from as <BoughtFrom> without filling <Field_Name> with Funding For as <FundingFor> for multi Asset at <ApplicationStage> stage for <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user navigates to asset requested page
    And user select Funding For as "<FundingFor>"
    And user select Collateral Sub-Type/Asset details as "<ProductType>"
    And user select Finance Mode as "<FinanceMode>"
    When user fills asset requested with asset type as "<AssetType>" without "<Field_Name>"
    And user select bought from as <BoughtFrom>
    And user click on save compute asset requested
    Then "<Field_Name>" fields "<Throws_notThrows>" in asset requested page

    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | FundingFor   | FinanceMode   | AssetType   | BoughtFrom   | Field_Name                        | Throws_notThrows                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <FundingFor> | <FinanceMode> | <AssetType> | <BoughtFrom> | Collateral Sub-Type/Asset details | throws an error with error message |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <FundingFor> | <FinanceMode> | <AssetType> | <BoughtFrom> | Asset Category                    | throws an error with error message |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <FundingFor> | <FinanceMode> | <AssetType> | <BoughtFrom> | Asset Model                       | throws an error with error message |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <FundingFor> | <FinanceMode> | <AssetType> | <BoughtFrom> | Asset Cost                        | throws an error with error message |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <FundingFor> | <FinanceMode> | <AssetType> | <BoughtFrom> | Quantity                          | throws an error with error message |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <FundingFor> | Refinance     | Used Asset  | <BoughtFrom> | Collateral Sub-Type/Asset details | throws an error with error message |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <FundingFor> | Refinance     | Used Asset  | <BoughtFrom> | Asset Category                    | throws an error with error message |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <FundingFor> | Refinance     | Used Asset  | <BoughtFrom> | Asset Model                       | throws an error with error message |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <FundingFor> | Refinance     | Used Asset  | <BoughtFrom> | Asset Cost                        | throws an error with error message |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <FundingFor> | Refinance     | Used Asset  | <BoughtFrom> | Quantity                          | throws an error with error message |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <FundingFor> | Refinance     | New Asset   | Manufacture  | Collateral Sub-Type/Asset details | throws an error with error message |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <FundingFor> | Refinance     | New Asset   | Manufacture  | Asset Category                    | throws an error with error message |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <FundingFor> | Refinance     | New Asset   | Manufacture  | Asset Model                       | throws an error with error message |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <FundingFor> | Refinance     | New Asset   | Manufacture  | Asset Cost                        | throws an error with error message |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <FundingFor> | Refinance     | New Asset   | Manufacture  | Quantity                          | throws an error with error message |


    #Prerequisite:Application already punch with application type as Multi Asset
 # ${ ProductType : ["CV"]}
# ${ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
#${ApplicantType:["indiv","nonindiv"]}
  #  ${FundingFor:["Body","Both"]}
#${FinanceMode:["Purchase","Refinance"]}
#${AssetType:["New Asset","Used Asset"]}
# FeatureID-ACAUTOCAS-11906
  Scenario Outline:Save Compute asset requested by selecting bought from as Dealer without filling <Field_Name> with Funding For as <FundingFor> at <ApplicationStage> stage for <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user navigates to asset requested page
    And user select Funding For as "<FundingFor>"
    And user select Collateral Sub-Type/Asset details as "<ProductType>"
    And user select Finance Mode as "<FinanceMode>"
    When user fills asset requested with asset type as "<AssetType>" without "<Field_Name>"
    And user select bought from as Dealer
    And user click on save compute asset requested
    Then "<Field_Name>" fields "<Throws_notThrows>" in asset requested page

    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | FundingFor   | FinanceMode   | AssetType   | Field_Name                        | Throws_notThrows                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <FundingFor> | <FinanceMode> | <AssetType> | Collateral Sub-Type/Asset details | throws an error with error message |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <FundingFor> | <FinanceMode> | <AssetType> | Asset Category                    | throws an error with error message |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <FundingFor> | <FinanceMode> | <AssetType> | Asset Model                       | throws an error with error message |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <FundingFor> | <FinanceMode> | <AssetType> | Asset Cost                        | throws an error with error message |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <FundingFor> | <FinanceMode> | <AssetType> | Quantity                          | throws an error with error message |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <FundingFor> | <FinanceMode> | <AssetType> | Dealer                            | throws an error with error message |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <FundingFor> | <FinanceMode> | <AssetType> | Bought From                       | throws an error with error message |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <FundingFor> | <FinanceMode> | <AssetType> | Body Manufacturer                 | throws an error with error message |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <FundingFor> | <FinanceMode> | <AssetType> | Dealer For Body                   | throws an error with error message |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <FundingFor> | <FinanceMode> | <AssetType> | Body Type                         | throws an error with error message |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <FundingFor> | <FinanceMode> | <AssetType> | Body Sub Type                     | throws an error with error message |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <FundingFor> | <FinanceMode> | <AssetType> | Body Cost                         | throws an error with error message |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <FundingFor> | <FinanceMode> | <AssetType> | Body Cost Per Grid                | throws an error with error message |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <FundingFor> | <FinanceMode> | <AssetType> | Body Cost Proposed                | throws an error with error message |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <FundingFor> | <FinanceMode> | <AssetType> | Body Downpayment                  | throws an error with error message |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <FundingFor> | <FinanceMode> | <AssetType> | Body Quantity                     | throws an error with error message |

       #Prerequisite:Application already punch with application type as Multi Asset
 # ${ ProductType : ["CV"]}
# ${ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
#${ApplicantType:["indiv","nonindiv"]}
  #  ${FundingFor:["Body","Both"]}
#${FinanceMode:["Purchase"]}
#${AssetType:["New Asset","Used Asset"]}
    #${BoughtFrom:["Manufacture","Individual"]}
# FeatureID-ACAUTOCAS-11906
  Scenario Outline:Save Compute asset requested by selecting bought from as <BoughtFrom> without filling <Field_Name> with Funding For as <FundingFor> in multi Asset at <ApplicationStage> stage for <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user navigates to asset requested page
    And user select funding for as "<FundingFor>"
    And user select Collateral Sub-Type/Asset details as "<ProductType>"
    And user select Finance Mode as "<FinanceMode>"
    And user fills asset requested with asset type as "<AssetType>" without "<Field_Name>"
    And user select bought from as "<BoughtFrom>"
    When user click on save compute asset requested
    Then "<Field_Name>" fields "<Throws_notThrows>" in asset requested page

    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | FundingFor   | FinanceMode   | AssetType   | BoughtFrom   | Field_Name                        | Throws_notThrows                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <FundingFor> | <FinanceMode> | <AssetType> | <BoughtFrom> | Collateral Sub-Type/Asset details | throws an error with error message |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <FundingFor> | <FinanceMode> | <AssetType> | <BoughtFrom> | Asset Category                    | throws an error with error message |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <FundingFor> | <FinanceMode> | <AssetType> | <BoughtFrom> | Asset Model                       | throws an error with error message |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <FundingFor> | <FinanceMode> | <AssetType> | <BoughtFrom> | Asset Cost                        | throws an error with error message |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <FundingFor> | <FinanceMode> | <AssetType> | <BoughtFrom> | Quantity                          | throws an error with error message |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <FundingFor> | <FinanceMode> | <AssetType> | <BoughtFrom> | Dealer                            | throws an error with error message |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <FundingFor> | <FinanceMode> | <AssetType> | <BoughtFrom> | Bought From                       | throws an error with error message |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <FundingFor> | <FinanceMode> | <AssetType> | <BoughtFrom> | Body Manufacturer                 | throws an error with error message |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <FundingFor> | <FinanceMode> | <AssetType> | <BoughtFrom> | Dealer For Body                   | throws an error with error message |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <FundingFor> | <FinanceMode> | <AssetType> | <BoughtFrom> | Body Type                         | throws an error with error message |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <FundingFor> | <FinanceMode> | <AssetType> | <BoughtFrom> | Body Sub Type                     | throws an error with error message |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <FundingFor> | <FinanceMode> | <AssetType> | <BoughtFrom> | Body Cost                         | throws an error with error message |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <FundingFor> | <FinanceMode> | <AssetType> | <BoughtFrom> | Body Cost Per Grid                | throws an error with error message |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <FundingFor> | <FinanceMode> | <AssetType> | <BoughtFrom> | Body Cost Proposed                | throws an error with error message |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <FundingFor> | <FinanceMode> | <AssetType> | <BoughtFrom> | Body Downpayment                  | throws an error with error message |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <FundingFor> | <FinanceMode> | <AssetType> | <BoughtFrom> | Body Quantity                     | throws an error with error message |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <FundingFor> | Refinance     | New Asset   | Manufacture  | Collateral Sub-Type/Asset details | throws an error with error message |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <FundingFor> | Refinance     | New Asset   | Manufacture  | Asset Category                    | throws an error with error message |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <FundingFor> | Refinance     | New Asset   | Manufacture  | Asset Model                       | throws an error with error message |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <FundingFor> | Refinance     | New Asset   | Manufacture  | Asset Cost                        | throws an error with error message |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <FundingFor> | Refinance     | New Asset   | Manufacture  | Quantity                          | throws an error with error message |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <FundingFor> | Refinance     | New Asset   | Manufacture  | Dealer                            | throws an error with error message |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <FundingFor> | Refinance     | New Asset   | Manufacture  | Bought From                       | throws an error with error message |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <FundingFor> | Refinance     | New Asset   | Manufacture  | Body Manufacturer                 | throws an error with error message |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <FundingFor> | Refinance     | New Asset   | Manufacture  | Dealer For Body                   | throws an error with error message |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <FundingFor> | Refinance     | New Asset   | Manufacture  | Body Type                         | throws an error with error message |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <FundingFor> | Refinance     | New Asset   | Manufacture  | Body Sub Type                     | throws an error with error message |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <FundingFor> | Refinance     | New Asset   | Manufacture  | Body Cost                         | throws an error with error message |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <FundingFor> | Refinance     | New Asset   | Manufacture  | Body Cost Per Grid                | throws an error with error message |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <FundingFor> | Refinance     | New Asset   | Manufacture  | Body Cost Proposed                | throws an error with error message |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <FundingFor> | Refinance     | New Asset   | Manufacture  | Body Downpayment                  | throws an error with error message |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <FundingFor> | Refinance     | New Asset   | Manufacture  | Body Quantity                     | throws an error with error message |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <FundingFor> | Refinance     | Used Asset  | <BoughtFrom> | Collateral Sub-Type/Asset details | throws an error with error message |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <FundingFor> | Refinance     | Used Asset  | <BoughtFrom> | Asset Category                    | throws an error with error message |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <FundingFor> | Refinance     | Used Asset  | <BoughtFrom> | Asset Model                       | throws an error with error message |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <FundingFor> | Refinance     | Used Asset  | <BoughtFrom> | Asset Cost                        | throws an error with error message |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <FundingFor> | Refinance     | Used Asset  | <BoughtFrom> | Quantity                          | throws an error with error message |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <FundingFor> | Refinance     | Used Asset  | <BoughtFrom> | Dealer                            | throws an error with error message |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <FundingFor> | Refinance     | Used Asset  | <BoughtFrom> | Bought From                       | throws an error with error message |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <FundingFor> | Refinance     | Used Asset  | <BoughtFrom> | Body Manufacturer                 | throws an error with error message |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <FundingFor> | Refinance     | Used Asset  | <BoughtFrom> | Dealer For Body                   | throws an error with error message |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <FundingFor> | Refinance     | Used Asset  | <BoughtFrom> | Body Type                         | throws an error with error message |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <FundingFor> | Refinance     | Used Asset  | <BoughtFrom> | Body Sub Type                     | throws an error with error message |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <FundingFor> | Refinance     | Used Asset  | <BoughtFrom> | Body Cost                         | throws an error with error message |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <FundingFor> | Refinance     | Used Asset  | <BoughtFrom> | Body Cost Per Grid                | throws an error with error message |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <FundingFor> | Refinance     | Used Asset  | <BoughtFrom> | Body Cost Proposed                | throws an error with error message |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <FundingFor> | Refinance     | Used Asset  | <BoughtFrom> | Body Downpayment                  | throws an error with error message |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <FundingFor> | Refinance     | Used Asset  | <BoughtFrom> | Body Quantity                     | throws an error with error message |

#Prerequisite:Application already punch with application type as Multi Asset
 # ${ ProductType : ["CEQ","CV"]}
# ${ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
#${ApplicantType:["indiv","nonindiv"]}
  # ${FundingFor:["Chassis","FBV"]}
#${FinanceMode:["Purchase","Refinance"]}
#${AssetType:["New Asset","Used Asset"]}
#${BoughtFrom:["Dealer","Manufacture","Individual"]}
# FeatureID-ACAUTOCAS-11906
  Scenario Outline: ACAUTOCAS-14303: Validate the field name marked as Mandatory NonMandatory by selecting bought from as <BoughtFrom> with Funding For as <FundingFor> at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user navigates to asset requested page
    And user select Funding For as "<FundingFor>"
    And user select Collateral Sub-Type/Asset details as "<ProductType>"
    And user select Funding For as "<FundingFor>"
    And user select Finance Mode as "<FinanceMode>" along with "<AssetType>"
    When user select bought from as "<BoughtFrom>"
    Then user should be able to see marked Field Name as Mandatory NonMandatory
      | FieldName           | Mandatory_NonMandatory |
      | Asset Category      | mandatory              |
      | Manufacturer        | non mandatory          |
      | Asset Model         | mandatory              |
      | Asset Variant       | non mandatory          |
      | Asset Level         | non mandatory          |
      | Asset Cost          | mandatory              |
      | Quantity            | non mandatory          |
      | Bought From         | mandatory              |
      | DownPayment(Amount) | non mandatory          |
      | LTV(%)              | mandatory              |
      | Total Asset Cost    | mandatory              |
      | DownPayment( %)     | non mandatory          |

    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | AssetType   | FundingFor   | FinanceMode   | BoughtFrom   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <AssetType> | <FundingFor> | <FinanceMode> | <BoughtFrom> |

#Prerequisite:Application already punch with application type as Multi Asset
 # ${ ProductType : ["CEQ","CV"]}
# ${ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
#${ApplicantType:["indiv","nonindiv"]}
  # ${FundingFor:["Chassis","FBV"]}
#${FinanceMode:["Purchase","Refinance"]}
#${AssetType:["New Asset","Used Asset"]}
#${BoughtFrom:["Dealer","Manufacture",]}
# FeatureID-ACAUTOCAS-11906
  Scenario Outline:<Field_Name> field validation with <Validity> <InputType> by selecting bought from as <BoughtFrom> at <ApplicationStage> stage for <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "" with "" from application grid
    And user navigates to asset requested page for "<ApplicationStage>"
    And user select Funding For as "<FundingFor>"
    And user select Collateral Sub-Type/Asset details as "<ProductType>"
    And user select Finance Mode as "<FinanceMode>" along with "<AssetType>"
    When user select asset type as "<AssetType>"
    And user select bought from as "<BoughtFrom>"
    And user fills "<Validity>" "<Field_Name>" with "<InputType>"
    Then "<Field_Name>" field "<Throws_notThrows>"
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | AssetType   | FundingFor   | FinanceMode   | BoughtFrom   | Field_Name          | Validity | InputType                          | Throws_notThrows    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <AssetType> | <FundingFor> | <FinanceMode> | <BoughtFrom> | Quantity            | valid    | positive digits                    | not throw any error |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <AssetType> | <FundingFor> | <FinanceMode> | <BoughtFrom> | Quantity            | invalid  | characters                         | throw an error      |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <AssetType> | <FundingFor> | <FinanceMode> | <BoughtFrom> | Quantity            | invalid  | both digits and characters         | throw an error      |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <AssetType> | <FundingFor> | <FinanceMode> | <BoughtFrom> | Quantity            | invalid  | negative                           | throw an error      |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <AssetType> | <FundingFor> | <FinanceMode> | <BoughtFrom> | Quantity            | invalid  | hyphen                             | throw an error      |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <AssetType> | <FundingFor> | <FinanceMode> | <BoughtFrom> | Quantity            | invalid  | space                              | throw an error      |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <AssetType> | <FundingFor> | <FinanceMode> | <BoughtFrom> | Quantity            | invalid  | special characters except hyphen   | throw an error      |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <AssetType> | <FundingFor> | <FinanceMode> | <BoughtFrom> | Quantity            | invalid  | more than 2 decimal places         | throw an error      |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <AssetType> | <FundingFor> | <FinanceMode> | <BoughtFrom> | Quantity            | invalid  | zero                               | throw an error      |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <AssetType> | <FundingFor> | <FinanceMode> | <BoughtFrom> | Asset Cost          | invalid  | more than 18 digits                | throw an            |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <AssetType> | <FundingFor> | <FinanceMode> | <BoughtFrom> | Asset Cost          | valid    | less than 18 digits                | not throw any       |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <AssetType> | <FundingFor> | <FinanceMode> | <BoughtFrom> | Asset Cost          | invalid  | character                          | throw an            |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <AssetType> | <FundingFor> | <FinanceMode> | <BoughtFrom> | Asset Cost          | invalid  | special character                  | throw an            |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <AssetType> | <FundingFor> | <FinanceMode> | <BoughtFrom> | Asset Cost          | invalid  | negative values                    | throw an            |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <AssetType> | <FundingFor> | <FinanceMode> | <BoughtFrom> | Asset Cost          | invalid  | character with space               | throw an            |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <AssetType> | <FundingFor> | <FinanceMode> | <BoughtFrom> | Asset Cost          | invalid  | digits with space                  | throw an            |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <AssetType> | <FundingFor> | <FinanceMode> | <BoughtFrom> | Asset Cost          | valid    | positive values and Upto 18 digits | not throw any       |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <AssetType> | <FundingFor> | <FinanceMode> | <BoughtFrom> | DownPayment(Amount) | invalid  | more than 18 digits                | throw an            |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <AssetType> | <FundingFor> | <FinanceMode> | <BoughtFrom> | DownPayment(Amount) | valid    | less than 18 digits                | not throw any       |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <AssetType> | <FundingFor> | <FinanceMode> | <BoughtFrom> | DownPayment(Amount) | invalid  | character                          | throw an            |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <AssetType> | <FundingFor> | <FinanceMode> | <BoughtFrom> | DownPayment(Amount) | invalid  | special character                  | throw an            |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <AssetType> | <FundingFor> | <FinanceMode> | <BoughtFrom> | DownPayment(Amount) | invalid  | negative values                    | throw an            |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <AssetType> | <FundingFor> | <FinanceMode> | <BoughtFrom> | DownPayment(Amount) | invalid  | character with space               | throw an            |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <AssetType> | <FundingFor> | <FinanceMode> | <BoughtFrom> | DownPayment(Amount) | invalid  | digits with space                  | throw an            |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <AssetType> | <FundingFor> | <FinanceMode> | <BoughtFrom> | DownPayment(Amount) | valid    | positive values and Upto 18 digits | not throw any       |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <AssetType> | <FundingFor> | <FinanceMode> | <BoughtFrom> | LTV(%)              | valid    | positive digits                    | not throw any       |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <AssetType> | <FundingFor> | <FinanceMode> | <BoughtFrom> | LTV(%)              | valid    | characters                         | not throw any       |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <AssetType> | <FundingFor> | <FinanceMode> | <BoughtFrom> | LTV(%)              | valid    | both digits and characters         | not throw any       |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <AssetType> | <FundingFor> | <FinanceMode> | <BoughtFrom> | LTV(%)              | valid    | negative                           | not throw any       |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <AssetType> | <FundingFor> | <FinanceMode> | <BoughtFrom> | LTV(%)              | valid    | hyphen                             | not throw any       |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <AssetType> | <FundingFor> | <FinanceMode> | <BoughtFrom> | LTV(%)              | valid    | space                              | not throw any       |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <AssetType> | <FundingFor> | <FinanceMode> | <BoughtFrom> | LTV(%)              | valid    | special characters except hyphen   | not throw any       |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <AssetType> | <FundingFor> | <FinanceMode> | <BoughtFrom> | LTV(%)              | valid    | more than 2 decimal places         | not throw any       |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <AssetType> | <FundingFor> | <FinanceMode> | <BoughtFrom> | DownPayment(%)      | valid    | positive digits                    | not throw any       |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <AssetType> | <FundingFor> | <FinanceMode> | <BoughtFrom> | DownPayment(%)      | valid    | characters                         | not throw any       |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <AssetType> | <FundingFor> | <FinanceMode> | <BoughtFrom> | DownPayment(%)      | valid    | both digits and characters         | not throw any       |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <AssetType> | <FundingFor> | <FinanceMode> | <BoughtFrom> | DownPayment(%)      | valid    | negative                           | not throw any       |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <AssetType> | <FundingFor> | <FinanceMode> | <BoughtFrom> | DownPayment(%)      | valid    | hyphen                             | not throw any       |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <AssetType> | <FundingFor> | <FinanceMode> | <BoughtFrom> | DownPayment(%)      | valid    | space                              | not throw any       |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <AssetType> | <FundingFor> | <FinanceMode> | <BoughtFrom> | DownPayment(%)      | valid    | special characters except hyphen   | not throw any       |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <AssetType> | <FundingFor> | <FinanceMode> | <BoughtFrom> | DownPayment(%)      | valid    | more than 2 decimal places         | not throw any       |

#Prerequisite:Application already punch with application type as Multi Asset
 # ${ ProductType : ["CV"]}
# ${ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
#${ApplicantType:["indiv","nonindiv"]}
  # ${FundingFor:["Body","Both"]}
#${FinanceMode:["Purchase","Refinance"]}
#${AssetType:["New Asset","Used Asset"]}
#${BoughtFrom:["Dealer","Manufacture"]}
# FeatureID-ACAUTOCAS-11906
  Scenario Outline:<Field_Name> field validation with <Validity> using <InputType> by selecting bought from as <BoughtFrom> with <FundingFor>  at <ApplicationStage> stage for <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "" with "" from application grid
    And user navigates to asset requested page for "<ApplicationStage>"
    And user select Funding For as "<FundingFor>"
    And user select Collateral Sub-Type/Asset details as "<ProductType>"
    And user select Funding For as "<FundingFor>"
    And user select Finance Mode as "<FinanceMode>" along with "<AssetType>"
    When user select asset type as "<AssetType>"
    And user select bought from as "<BoughtFrom>"
    And user fills "<Validity>" "<Field_Name>" with "<InputType>"
    Then "<Field_Name>" field "<Throws_notThrows>"
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | AssetType   | FundingFor   | FinanceMode   | BoughtFrom   | Field_Name          | Validity | InputType                          | Throws_notThrows    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <AssetType> | <FundingFor> | <FinanceMode> | <BoughtFrom> | Quantity            | valid    | positive digits                    | not throw any error |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <AssetType> | <FundingFor> | <FinanceMode> | <BoughtFrom> | Quantity            | invalid  | characters                         | throw an error      |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <AssetType> | <FundingFor> | <FinanceMode> | <BoughtFrom> | Quantity            | invalid  | both digits and characters         | throw an error      |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <AssetType> | <FundingFor> | <FinanceMode> | <BoughtFrom> | Quantity            | invalid  | negative                           | throw an error      |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <AssetType> | <FundingFor> | <FinanceMode> | <BoughtFrom> | Quantity            | invalid  | hyphen                             | throw an error      |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <AssetType> | <FundingFor> | <FinanceMode> | <BoughtFrom> | Quantity            | invalid  | space                              | throw an error      |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <AssetType> | <FundingFor> | <FinanceMode> | <BoughtFrom> | Quantity            | invalid  | special characters except hyphen   | throw an error      |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <AssetType> | <FundingFor> | <FinanceMode> | <BoughtFrom> | Quantity            | invalid  | more than 2 decimal places         | throw an error      |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <AssetType> | <FundingFor> | <FinanceMode> | <BoughtFrom> | Quantity            | invalid  | zero                               | throw an error      |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <AssetType> | <FundingFor> | <FinanceMode> | <BoughtFrom> | Asset Cost          | invalid  | more than 18 digits                | throw an            |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <AssetType> | <FundingFor> | <FinanceMode> | <BoughtFrom> | Asset Cost          | valid    | less than 18 digits                | not throw any       |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <AssetType> | <FundingFor> | <FinanceMode> | <BoughtFrom> | Asset Cost          | invalid  | character                          | throw an            |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <AssetType> | <FundingFor> | <FinanceMode> | <BoughtFrom> | Asset Cost          | invalid  | special character                  | throw an            |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <AssetType> | <FundingFor> | <FinanceMode> | <BoughtFrom> | Asset Cost          | invalid  | negative values                    | throw an            |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <AssetType> | <FundingFor> | <FinanceMode> | <BoughtFrom> | Asset Cost          | invalid  | character with space               | throw an            |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <AssetType> | <FundingFor> | <FinanceMode> | <BoughtFrom> | Asset Cost          | invalid  | digits with space                  | throw an            |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <AssetType> | <FundingFor> | <FinanceMode> | <BoughtFrom> | Asset Cost          | valid    | positive values and Upto 18 digits | not throw any       |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <AssetType> | <FundingFor> | <FinanceMode> | <BoughtFrom> | DownPayment(Amount) | invalid  | more than 18 digits                | throw an            |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <AssetType> | <FundingFor> | <FinanceMode> | <BoughtFrom> | DownPayment(Amount) | valid    | less than 18 digits                | not throw any       |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <AssetType> | <FundingFor> | <FinanceMode> | <BoughtFrom> | DownPayment(Amount) | invalid  | character                          | throw an            |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <AssetType> | <FundingFor> | <FinanceMode> | <BoughtFrom> | DownPayment(Amount) | invalid  | special character                  | throw an            |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <AssetType> | <FundingFor> | <FinanceMode> | <BoughtFrom> | DownPayment(Amount) | invalid  | negative values                    | throw an            |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <AssetType> | <FundingFor> | <FinanceMode> | <BoughtFrom> | DownPayment(Amount) | invalid  | character with space               | throw an            |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <AssetType> | <FundingFor> | <FinanceMode> | <BoughtFrom> | DownPayment(Amount) | invalid  | digits with space                  | throw an            |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <AssetType> | <FundingFor> | <FinanceMode> | <BoughtFrom> | DownPayment(Amount) | valid    | positive values and Upto 18 digits | not throw any       |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <AssetType> | <FundingFor> | <FinanceMode> | <BoughtFrom> | LTV(%)              | valid    | positive digits                    | not throw any       |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <AssetType> | <FundingFor> | <FinanceMode> | <BoughtFrom> | LTV(%)              | valid    | characters                         | not throw any       |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <AssetType> | <FundingFor> | <FinanceMode> | <BoughtFrom> | LTV(%)              | valid    | both digits and characters         | not throw any       |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <AssetType> | <FundingFor> | <FinanceMode> | <BoughtFrom> | LTV(%)              | valid    | negative                           | not throw any       |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <AssetType> | <FundingFor> | <FinanceMode> | <BoughtFrom> | LTV(%)              | valid    | hyphen                             | not throw any       |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <AssetType> | <FundingFor> | <FinanceMode> | <BoughtFrom> | LTV(%)              | valid    | space                              | not throw any       |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <AssetType> | <FundingFor> | <FinanceMode> | <BoughtFrom> | LTV(%)              | valid    | special characters except hyphen   | not throw any       |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <AssetType> | <FundingFor> | <FinanceMode> | <BoughtFrom> | LTV(%)              | valid    | more than 2 decimal places         | not throw any       |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <AssetType> | <FundingFor> | <FinanceMode> | <BoughtFrom> | DownPayment(%)      | valid    | positive digits                    | not throw any       |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <AssetType> | <FundingFor> | <FinanceMode> | <BoughtFrom> | DownPayment(%)      | valid    | characters                         | not throw any       |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <AssetType> | <FundingFor> | <FinanceMode> | <BoughtFrom> | DownPayment(%)      | valid    | both digits and characters         | not throw any       |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <AssetType> | <FundingFor> | <FinanceMode> | <BoughtFrom> | DownPayment(%)      | valid    | negative                           | not throw any       |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <AssetType> | <FundingFor> | <FinanceMode> | <BoughtFrom> | DownPayment(%)      | valid    | hyphen                             | not throw any       |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <AssetType> | <FundingFor> | <FinanceMode> | <BoughtFrom> | DownPayment(%)      | valid    | space                              | not throw any       |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <AssetType> | <FundingFor> | <FinanceMode> | <BoughtFrom> | DownPayment(%)      | valid    | special characters except hyphen   | not throw any       |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <AssetType> | <FundingFor> | <FinanceMode> | <BoughtFrom> | DownPayment(%)      | valid    | more than 2 decimal places         | not throw any       |


#Prerequisite:Application already punch with application type as Multi Asset
 # ${ ProductType : ["CEQ","CV"]}
# ${ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
#${ApplicantType:["indiv","nonindiv"]}
  # ${FundingFor:["Chassis","FBV"]}
#  CAS-60354
#FeatureID-ACAUTOCAS-11906
  Scenario Outline:While selecting Funding For as <FundingFor> along with Asset Type as <AssetType> Bought From as Individual get <Var> for multi Asset at <ApplicationStage> stage for <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "" with "" from application grid
    And user navigates to asset requested page for "<ApplicationStage>"
    And user select Funding For as "<FundingFor>"
    And user select Collateral Sub-Type/Asset details as "<ProductType>"
    And user select Finance Mode as "<FinanceMode>"
    When user select asset type as "<AssetType>"
    Then the Bought From as Individual should be "<Var>"

    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | FundingFor   | FinanceMode | AssetType  | Var     |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <FundingFor> | Purchase    | Used Asset | Enable  |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <FundingFor> | Purchase    | New Asset  | Disable |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <FundingFor> | Refinance   | Used Asset | Enable  |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <FundingFor> | Refinance   | New Asset  | Disable |

    #Prerequisite:Application already punch with application type as Multi Asset
 # ${ ProductType : ["CV"]}
# ${ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
#${ApplicantType:["indiv","nonindiv"]}
  # ${FundingFor:["Body","Both"]}
#  CAS-60354
#FeatureID-ACAUTOCAS-11906
  Scenario Outline:While selecting Funding For as <FundingFor> along with Asset Type as <AssetType> Bought From as Individual get <Var> at <ApplicationStage> stage for <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "" with "" from application grid
    And user navigates to asset requested page for "<ApplicationStage>"
    And user select Funding For as "<FundingFor>"
    And user select Collateral Sub-Type/Asset details as "<ProductType>"
    And user select Finance Mode as "<FinanceMode>"
    When user select asset type as "<AssetType>"
    Then the Bought From as Individual should be "<Var>"

    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | FundingFor   | FinanceMode | AssetType  | Var     |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <FundingFor> | Purchase    | Used Asset | Enable  |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <FundingFor> | Purchase    | New Asset  | Disable |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <FundingFor> | Refinance   | Used Asset | Enable  |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <FundingFor> | Refinance   | New Asset  | Disable |

    #Prerequisite:Application already punch with application type as Multi Asset
 # ${ ProductType : ["CEQ","CV"]}
# ${ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
#${ApplicantType:["indiv","nonindiv"]}
  # ${FundingFor:["Chassis","FBV"]}
#  CAS-60354
#FeatureID-ACAUTOCAS-11906
  Scenario Outline:While selecting Funding For as <FundingFor> along with Asset Type as <AssetType> Finance Mode as <FinanceMode> get <Var> for multi Asset at <ApplicationStage> stage for <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "" with "" from application grid
    And user navigates to asset requested page for "<ApplicationStage>"
    And user select Funding For as "<FundingFor>"
    And user select Collateral Sub-Type/Asset details as "<ProductType>"
    And user select Finance Mode as "<FinanceMode>"
    When user select asset type as "<AssetType>"
    Then Finance Mode as "<FinanceMode>" should be "<Var>"

    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | FundingFor   | FinanceMode | AssetType  | Var     |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <FundingFor> | Purchase    | Used Asset | Enable  |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <FundingFor> | Purchase    | New Asset  | Disable |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <FundingFor> | Refinance   | Used Asset | Enable  |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <FundingFor> | Refinance   | New Asset  | Disable |

    #Prerequisite:Application already punch with application type as Multi Asset
 # ${ ProductType : ["CV"]}
# ${ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
#${ApplicantType:["indiv","nonindiv"]}
  # ${FundingFor:["Body","Both"]}
#  CAS-60354
#FeatureID-ACAUTOCAS-11906
  Scenario Outline:While selecting Funding For as <FundingFor> along with Asset Type as <AssetType> Finance Mode as <FinanceMode> get <Var> at <ApplicationStage> stage for <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "" with "" from application grid
    And user navigates to asset requested page for "<ApplicationStage>"
    And user select Funding For as "<FundingFor>"
    And user select Collateral Sub-Type/Asset details as "<ProductType>"
    And user select Finance Mode as "<FinanceMode>"
    When user select asset type as "<AssetType>"
    Then Finance Mode as "<FinanceMode>" should be "<Var>"

    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | FundingFor   | FinanceMode | AssetType  | Var     |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <FundingFor> | Purchase    | Used Asset | Enable  |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <FundingFor> | Purchase    | New Asset  | Disable |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <FundingFor> | Refinance   | Used Asset | Enable  |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <FundingFor> | Refinance   | New Asset  | Disable |

   #Prerequisite:Application already punch with application type as Multi Asset
#  Dealer data fetch from Master Configuration
 # ${ ProductType : ["CEQ","CV"]}
# ${ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
#${ApplicantType:["indiv","nonindiv"]}
    # ${FundingFor:["Chassis","FBV"]}
#  CAS-77872,CAS-96444,CAS-87257,CAS-78434,CAS-126154,CAS-72157
    #FeatureID-ACAUTOCAS-11906
  Scenario Outline:Validated the Dealer field with a list of data while selecting Bought From as Dealer for Finance Mode as <FinanceMode> at <ApplicationStage> stage for <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "" with "" from application grid
    And user navigates to asset requested page for "<ApplicationStage>"
    And user select Funding For as "<FundingFor>"
    And user select Collateral Sub-Type/Asset details as "<ProductType>"
    And user select Finance Mode as <FinanceMode>
    And user select asset type as "<AssetType>"
    When user select Bought from as Dealer
    Then the Dealer field should be present with list of data

    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | FundingFor   | FinanceMode | AssetType  |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <FundingFor> | Purchase    | Used Asset |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <FundingFor> | Purchase    | New Asset  |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <FundingFor> | Refinance   | Used Asset |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <FundingFor> | Refinance   | New Asset  |

      #Prerequisite:Application already punch with application type as Multi Asset
#  Dealer data fetch from Master Configuration
 # ${ ProductType : ["CV"]}
# ${ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
#${ApplicantType:["indiv","nonindiv"]}
    # ${FundingFor:["Body","Both"]}
#  CAS-77872,CAS-96444,CAS-87257,CAS-78434,CAS-126154,CAS-72157
    #FeatureID-ACAUTOCAS-11906
  Scenario Outline:Validated the Dealer field with a list of data while selecting Bought From as Dealer for Finance Mode as <FinanceMode> in multi asset at <ApplicationStage> stage for <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "" with "" from application grid
    And user navigates to asset requested page for "<ApplicationStage>"
    And user select Funding For as "<FundingFor>"
    And user select Collateral Sub-Type/Asset details as "<ProductType>"
    And user select Finance Mode as <FinanceMode>
    And user select asset type as "<AssetType>"
    When user select Bought from as Dealer
    Then the Dealer field should be present with list of data

    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | FundingFor   | FinanceMode | AssetType  |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <FundingFor> | Purchase    | Used Asset |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <FundingFor> | Purchase    | New Asset  |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <FundingFor> | Refinance   | Used Asset |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <FundingFor> | Refinance   | New Asset  |


   #Prerequisite:Application already punch with application type as Multi Asset
#  Dealer data fetch from Master Configuration
  # ${ ProductType : ["CEQ","CV"]}
# ${ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
#${ApplicantType:["indiv","nonindiv"]}
    # ${FundingFor:["Chassis","FBV"]}
#  CAS-91142,CAS-96689
      #FeatureID-ACAUTOCAS-11906
  Scenario Outline:While selecting Dealer details dealer code should be reflected with Funding For as <FundingFor> at <ApplicationStage> stage for <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "" with "" from application grid
    And user select Funding For as "<FundingFor>"
    And user select Collateral Sub-Type/Asset details as "<ProductType>"
    And user select Finance Mode as <FinanceMode>
    And user select asset type as "<AssetType>"
    When user select Bought from as Dealer
    And user search dealer details
    Then the dealer code should be reflected successfully

    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | FundingFor   | FinanceMode | AssetType  |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <FundingFor> | Purchase    | Used Asset |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <FundingFor> | Purchase    | New Asset  |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <FundingFor> | Refinance   | Used Asset |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <FundingFor> | Refinance   | New Asset  |

       #Prerequisite:Application already punch with application type as Multi Asset
#  Dealer data fetch from Master Configuration
  # ${ ProductType : ["CV"]}
# ${ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
#${ApplicantType:["indiv","nonindiv"]}
    # ${FundingFor:["Body","Both"]}
#  CAS-91142,CAS-96689
      #FeatureID-ACAUTOCAS-11906
  Scenario Outline:While selecting Dealer details dealer code should be reflected with Funding For as <FundingFor> in multi asset at <ApplicationStage> stage for <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "" with "" from application grid
    And user select Funding For as "<FundingFor>"
    And user select Collateral Sub-Type/Asset details as "<ProductType>"
    And user select Finance Mode as <FinanceMode>
    And user select asset type as "<AssetType>"
    When user select Bought from as Dealer
    And user search dealer details
    Then the dealer code should be reflected successfully

    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | FundingFor   | FinanceMode | AssetType  |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <FundingFor> | Purchase    | Used Asset |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <FundingFor> | Purchase    | New Asset  |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <FundingFor> | Refinance   | Used Asset |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <FundingFor> | Refinance   | New Asset  |


       #Prerequisite:Application already punch with application type as Multi Asset
#  Dealer data fetch from Master Configuration
  # ${ ProductType : ["CEQ","CV"]}
# ${ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
#${ApplicantType:["indiv","nonindiv"]}
    # ${FundingFor:["Chassis","FBV"]}
#  CAS-84515,CAS-90337
#FeatureID-ACAUTOCAS-11906
  Scenario Outline:Validate while selecting Dealer details Showroom data should be selected from the dropdown with Funding For as <FundingFor> at <ApplicationStage> stage for <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "" with "" from application grid
    And user select Funding For as "<FundingFor>"
    And user select Collateral Sub-Type/Asset details as "<ProductType>"
    And user select Finance Mode as <FinanceMode>
    And user select asset type as "<AssetType>"
    When user select Bought from as Dealer
    And user select dealer details from dropdown
    Then user validated Showroom data should be selected from the dropdown

    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | FundingFor   | FinanceMode | AssetType  |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <FundingFor> | Purchase    | Used Asset |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <FundingFor> | Purchase    | New Asset  |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <FundingFor> | Refinance   | Used Asset |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <FundingFor> | Refinance   | New Asset  |

#Prerequisite:Application already punch with application type as Multi Asset
#  Dealer data fetch from Master Configuration
  # ${ ProductType : ["CV"]}
# ${ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
#${ApplicantType:["indiv","nonindiv"]}
 # ${FundingFor:["Body","Both"]}
#  CAS-84515,CAS-90337
#FeatureID-ACAUTOCAS-11906
  Scenario Outline:Validate while selecting Dealer details Showroom data should be selected from the dropdown with Funding For as <FundingFor> in multi asset at <ApplicationStage> stage for <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "" with "" from application grid
    And user select Funding For as "<FundingFor>"
    And user select Collateral Sub-Type/Asset details as "<ProductType>"
    And user select Finance Mode as <FinanceMode>
    And user select asset type as "<AssetType>"
    When user select Bought from as Dealer
    And user select dealer details from dropdown
    Then user validated Showroom data should be selected from the dropdown

    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | FundingFor   | FinanceMode | AssetType  |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <FundingFor> | Purchase    | Used Asset |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <FundingFor> | Purchase    | New Asset  |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <FundingFor> | Refinance   | Used Asset |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <FundingFor> | Refinance   | New Asset  |



       #Prerequisite:Application already punch with application type as Multi Asset
#  Dealer data fetch from Master Configuration
  # ${ ProductType : ["CEQ","CV"]}
# ${ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
#${ApplicantType:["indiv","nonindiv"]}
    # ${FundingFor:["Chassis","FBV"]}
#  CAS-109208
#FeatureID-ACAUTOCAS-11906
  Scenario Outline:Validate Showroom Dealer address details should be display while selecting Showroom value with Funding For as <FundingFor> at <ApplicationStage> stage for <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "" with "" from application grid
    And user navigates to asset requested page for "<ApplicationStage>"
    And user select Funding For as "<FundingFor>"
    And user select Collateral Sub-Type/Asset details as "<ProductType>"
    And user select Finance Mode as <FinanceMode>
    And user select asset type as "<AssetType>"
    And user select Bought from as Dealer
    And user select dealer details from dropdown
    When user select showroom details from dropdown
    Then user validated Dealer address details should be displayed successfully

    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | FundingFor   | FinanceMode | AssetType  |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <FundingFor> | Purchase    | Used Asset |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <FundingFor> | Purchase    | New Asset  |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <FundingFor> | Refinance   | Used Asset |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <FundingFor> | Refinance   | New Asset  |

          #Prerequisite:Application already punch with application type as Multi Asset
#  Dealer data fetch from Master Configuration
  # ${ ProductType : ["CV"]}
# ${ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
#${ApplicantType:["indiv","nonindiv"]}
    # ${FundingFor:["Both","Body"]}
#  CAS-109208
#FeatureID-ACAUTOCAS-11906
  Scenario Outline:Validate Showroom Dealer address details should be display while selecting Showroom value with Funding For as <FundingFor> in multi asset at <ApplicationStage> stage for <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "" with "" from application grid
    And user navigates to asset requested page for "<ApplicationStage>"
    And user select Funding For as "<FundingFor>"
    And user select Collateral Sub-Type/Asset details as "<ProductType>"
    And user select Finance Mode as <FinanceMode>
    And user select asset type as "<AssetType>"
    And user select Bought from as Dealer
    And user select dealer details from dropdown
    When user select showroom details from dropdown
    Then user validated Dealer address details should be displayed successfully

    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | FundingFor   | FinanceMode | AssetType  |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <FundingFor> | Purchase    | Used Asset |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <FundingFor> | Purchase    | New Asset  |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <FundingFor> | Refinance   | Used Asset |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <FundingFor> | Refinance   | New Asset  |



       #Prerequisite:Application already punch with application type as Multi Asset
#  Field Data display in dropdown configure from master
  # ${ ProductType : ["CEQ","CV"]}
# ${ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
#${ApplicantType:["indiv","nonindiv"]}
# ${FundingFor:["Chassis","FBV"]}
 # ${FinanceMode:["Purchase","Refinance"]}
  #${AssetType:["New Asset","Used Asset"]}
#  CAS-84515,CAS-47148,CAS-146281
#FeatureID-ACAUTOCAS-11906
  Scenario Outline:Validate the <DependentField> fields which dependent on <FieldName> with Funding For as <FundingFor> at <ApplicationStage> stage for <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "" with "" from application grid
    And user navigates to asset requested page for "<ApplicationStage>"
    And user select Funding For as "<FundingFor>"
    And user select Collateral Sub-Type/Asset details as "<ProductType>"
    And user select Finance Mode as <FinanceMode>
    And user select asset type as "<AssetType>"
    When user select "<DependentField>" field value from dropdown
    Then "<FieldName>" value should present in dropdown

    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | FinanceMode   | FundingFor   | AssetType   | FieldName      | DependentField |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <FinanceMode> | <FundingFor> | <AssetType> | Asset Category | Manufacture    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <FinanceMode> | <FundingFor> | <AssetType> | Asset Category | Asset Model    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <FinanceMode> | <FundingFor> | <AssetType> | Asset Category | Asset Variant  |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <FinanceMode> | <FundingFor> | <AssetType> | Asset Category | Asset Level    |

           #Prerequisite:Application already punch with application type as Multi Asset
#  Field Data display in dropdown configure from master
  # ${ ProductType : ["CV"]}
# ${ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
#${ApplicantType:["indiv","nonindiv"]}
# ${FundingFor:["Body","Both"]}
 # ${FinanceMode:["Purchase","Refinance"]}
  #${AssetType:["New Asset","Used Asset"]}
#  CAS-84515,CAS-47148,CAS-146281
#FeatureID-ACAUTOCAS-11906
  Scenario Outline:Validate the <DependentField> fields which dependent on <FieldName> with Funding For <FundingFor> in multi asset at <ApplicationStage> stage for <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "" with "" from application grid
    And user navigates to asset requested page for "<ApplicationStage>"
    And user select Funding For as "<FundingFor>"
    And user select Collateral Sub-Type/Asset details as "<ProductType>"
    And user select Finance Mode as <FinanceMode>
    And user select asset type as "<AssetType>"
    When user select "<DependentField>" field value from dropdown
    Then "<FieldName>" value should present in dropdown

    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | FinanceMode   | FundingFor   | AssetType   | FieldName      | DependentField |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <FinanceMode> | <FundingFor> | <AssetType> | Asset Category | Manufacture    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <FinanceMode> | <FundingFor> | <AssetType> | Asset Category | Asset Model    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <FinanceMode> | <FundingFor> | <AssetType> | Asset Category | Asset Variant  |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <FinanceMode> | <FundingFor> | <AssetType> | Asset Category | Asset Level    |

       #Prerequisite:Application already punch with application type as Multi Asset
   # ${ ProductType : ["CEQ","CV"]}
# ${ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
#${ApplicantType:["indiv","nonindiv"]}
# ${FundingFor:["Chassis","FBV"]}
#${FinanceMode:["Purchase","Refinance"]}
  #${AssetType:["New Asset","Used Asset"]}
#FeatureID-ACAUTOCAS-11906
  Scenario Outline:Validate the value in Total Asset Cost field should be calculated while entering value in Asset Cost along with Quantity with Funding For as <FundingFor> at <ApplicationStage> stage for <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "" with "" from application grid
    And user navigates to asset requested page for "<ApplicationStage>"
    And user select Funding For as "<FundingFor>"
    And user select Collateral Sub-Type/Asset details as "<ProductType>"
    And user select Finance Mode as <FinanceMode>
    And user select asset type as "<AssetType>"
    When user enter value in Asset Cost along with Quantity
      | Asset Cost | Quantity |
      | 100000     | 2        |
      | 80000      | 1        |
    Then the value in Total Asset Cost should be calculated successfully

    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | FinanceMode   | FundingFor   | AssetType   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <FinanceMode> | <FundingFor> | <AssetType> |

          #Prerequisite:Application already punch with application type as Multi Asset
   # ${ ProductType : ["CV"]}
# ${ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
#${ApplicantType:["indiv","nonindiv"]}
# ${FundingFor:["Body","Both"]}
#${FinanceMode:["Purchase","Refinance"]}
  #${AssetType:["New Asset","Used Asset"]}
#FeatureID-ACAUTOCAS-11906
  Scenario Outline:Validate the value in Total Asset Cost field should be calculated while entering value in Asset Cost along with Quantity with Funding For as <FundingFor> in multi Asset at <ApplicationStage> stage for <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "" with "" from application grid
    And user navigates to asset requested page for "<ApplicationStage>"
    And user select Funding For as "<FundingFor>"
    And user select Collateral Sub-Type/Asset details as "<ProductType>"
    And user select Finance Mode as <FinanceMode>
    And user select asset type as "<AssetType>"
    When user enter value in Asset Cost along with Quantity
      | Asset Cost | Quantity |
      | 100000     | 2        |
      | 80000      | 1        |
    Then the value in Total Asset Cost should be calculated successfully

    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | FinanceMode   | FundingFor   | AssetType   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <FinanceMode> | <FundingFor> | <AssetType> |

       #Prerequisite:Application already punch with application type as Multi Asset
   # ${ ProductType : ["CEQ","CV"]}
# ${ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
#${ApplicantType:["indiv","nonindiv"]}
# ${FundingFor:["Chassis","FBV"]}
#${FinanceMode:["Purchase","Refinance"]}
  #${AssetType:["New Asset","Used Asset"]}
#  CAS-76378
#FeatureID-ACAUTOCAS-11906
  Scenario Outline:Validate the value in <Field_Name> should be calculated while entering value in DownPayment with Funding For as <FundingFor> at <ApplicationStage> stage for <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "" with "" from application grid
    And user navigates to asset requested page for "<ApplicationStage>"
    And user select Funding For as "<FundingFor>"
    And user select Collateral Sub-Type/Asset details as "<ProductType>"
    And user select Finance Mode as <FinanceMode>
    And user select asset type as "<AssetType>"
    And user enter value in Asset Cost along with Quantity
      | Asset Cost | Quantity |
      | 100000     | 2        |
    When user enter value in DownPayment
      | DownPayment(Amount) |
      | 1000                |
    Then the value in <Field_Name> should be calculated successfully

    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | FundingFor   | FinanceMode   | AssetType   | Field_Name         |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <FundingFor> | <FinanceMode> | <AssetType> | DownPayment( %)    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <FundingFor> | <FinanceMode> | <AssetType> | Application Amount |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <FundingFor> | <FinanceMode> | <AssetType> | LTV(%)             |

     #Prerequisite:Application already punch with application type as Multi Asset
   # ${ ProductType : ["CV"]}
# ${ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
#${ApplicantType:["indiv","nonindiv"]}
# ${FundingFor:["Body","Both"]}
#${FinanceMode:["Purchase","Refinance"]}
  #${AssetType:["New Asset","Used Asset"]}
#  CAS-76378
#FeatureID-ACAUTOCAS-11906
  Scenario Outline:Validate the value in <Field_Name> should be calculated while entering value in DownPayment with Funding For as <FundingFor> in multi asset at <ApplicationStage> stage for <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "" with "" from application grid
    And user navigates to asset requested page for "<ApplicationStage>"
    And user select Funding For as "<FundingFor>"
    And user select Collateral Sub-Type/Asset details as "<ProductType>"
    And user select Finance Mode as <FinanceMode>
    And user select asset type as "<AssetType>"
    And user enter value in Asset Cost along with Quantity
      | Asset Cost | Quantity |
      | 100000     | 2        |
    When user enter value in DownPayment
      | DownPayment(Amount) |
      | 1000                |
    Then the value in <Field_Name> should be calculated successfully

    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | FundingFor   | FinanceMode   | AssetType   | Field_Name         |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <FundingFor> | <FinanceMode> | <AssetType> | DownPayment( %)    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <FundingFor> | <FinanceMode> | <AssetType> | Application Amount |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <FundingFor> | <FinanceMode> | <AssetType> | LTV(%)             |

         #Prerequisite:Application already punch with application type as Multi Asset
    # ${ ProductType : ["CEQ","CV"]}
# ${ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
#${ApplicantType:["indiv","nonindiv"]}
# ${FundingFor:["Chassis","FBV"]}
#${FinanceMode:["Purchase","Refinance"]}
  #${AssetType:["New Asset","Used Asset"]}
#  CAS-76378
#FeatureID-ACAUTOCAS-11906
  Scenario Outline:Validate the value in <Field_Name> should be calculated while entering value in LTV(%) with Funding For as <FundingFor> at <ApplicationStage> stage for <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user navigates to asset requested page
    And user select Funding For as "<FundingFor>"
    And user select Collateral Sub-Type/Asset details as "<ProductType>"
    And user select Finance Mode as <FinanceMode>
    And user select asset type as "<AssetType>"
    And user enter value in Asset Cost along with Quantity
      | Asset Cost | Quantity |
      | 100000     | 2        |
    When user enter value in LTV(%)
      | LTV(%) |
      | 90     |
    Then the value in <Field_Name> should be calculated successfully

    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | FundingFor   | FinanceMode   | AssetType   | Field_Name          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <FundingFor> | <FinanceMode> | <AssetType> | DownPayment( %)     |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <FundingFor> | <FinanceMode> | <AssetType> | Application Amount  |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <FundingFor> | <FinanceMode> | <AssetType> | DownPayment(Amount) |

           #Prerequisite:Application already punch with application type as Multi Asset
    # ${ ProductType : ["CV"]}
# ${ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
#${ApplicantType:["indiv","nonindiv"]}
# ${FundingFor:["Body","Both"]}
#${FinanceMode:["Purchase","Refinance"]}
  #${AssetType:["New Asset","Used Asset"]}
#  CAS-76378
#FeatureID-ACAUTOCAS-11906
  Scenario Outline:Validate the value in <Field_Name> should be calculated while entering value in LTV(%) with Funding For as <FundingFor> in multi asset at <ApplicationStage> stage for <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user navigates to asset requested page
    And user select Funding For as "<FundingFor>"
    And user select Collateral Sub-Type/Asset details as "<ProductType>"
    And user select Finance Mode as <FinanceMode>
    And user select asset type as "<AssetType>"
    And user enter value in Asset Cost along with Quantity
      | Asset Cost | Quantity |
      | 100000     | 2        |
    When user enter value in LTV(%)
      | LTV(%) |
      | 90     |
    Then the value in <Field_Name> should be calculated successfully

    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | FundingFor   | FinanceMode   | AssetType   | Field_Name          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <FundingFor> | <FinanceMode> | <AssetType> | DownPayment( %)     |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <FundingFor> | <FinanceMode> | <AssetType> | Application Amount  |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <FundingFor> | <FinanceMode> | <AssetType> | DownPayment(Amount) |

           #Prerequisite:Application already punch with application type as Multi Asset
    # ${ ProductType : ["CEQ","CV"]}
# ${ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
# ${FundingFor:["Chassis","FBV"]}
#${ApplicantType:["indiv","nonindiv"]}
#${FinanceMode:["Purchase","Refinance"]}
  #${AssetType:["New Asset","Used Asset"]}
#  CAS-76378
#FeatureID-ACAUTOCAS-11906
  Scenario Outline:Validate the value in <Field_Name> should be calculated while entering value in DownPayment(%) with Funding For as <FundingFor> at <ApplicationStage> stage for <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user navigates to asset requested page
    And user select Funding For as "<FundingFor>"
    And user select Collateral Sub-Type/Asset details as "<ProductType>"
    And user select Finance Mode as <FinanceMode>
    And user select asset type as "<AssetType>"
    And user enter value in Asset Cost along with Quantity
      | Asset Cost | Quantity |
      | 100000     | 2        |
    When user enter value in LTV(%)
      | DownPayment(%) |
      | 10             |
    Then the value in <Field_Name> should be calculated successfully

    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | FundingFor   | FinanceMode   | AssetType   | Field_Name          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <FundingFor> | <FinanceMode> | <AssetType> | LTV( %)             |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <FundingFor> | <FinanceMode> | <AssetType> | Application Amount  |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <FundingFor> | <FinanceMode> | <AssetType> | DownPayment(Amount) |

             #Prerequisite:Application already punch with application type as Multi Asset
    # ${ ProductType : ["CV"]}
# ${ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
# ${FundingFor:["Body","Both"]}
#${ApplicantType:["indiv","nonindiv"]}
#${FinanceMode:["Purchase","Refinance"]}
  #${AssetType:["New Asset","Used Asset"]}
#  CAS-76378
#FeatureID-ACAUTOCAS-11906
  Scenario Outline:Validate the value in <Field_Name> should be calculated while entering value in DownPayment(%) with Funding For as <FundingFor> in multi asset at <ApplicationStage> stage for <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user navigates to asset requested page
    And user select Funding For as "<FundingFor>"
    And user select Collateral Sub-Type/Asset details as "<ProductType>"
    And user select Finance Mode as <FinanceMode>
    And user select asset type as "<AssetType>"
    And user enter value in Asset Cost along with Quantity
      | Asset Cost | Quantity |
      | 100000     | 2        |
    When user enter value in LTV(%)
      | DownPayment(%) |
      | 10             |
    Then the value in <Field_Name> should be calculated successfully

    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | FundingFor   | FinanceMode   | AssetType   | Field_Name          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <FundingFor> | <FinanceMode> | <AssetType> | LTV( %)             |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <FundingFor> | <FinanceMode> | <AssetType> | Application Amount  |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <FundingFor> | <FinanceMode> | <AssetType> | DownPayment(Amount) |

           #Prerequisite:Application already punch with application type as Multi Asset
    # ${ ProductType : ["CEQ","CV"]}
# ${ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
#${ApplicantType:["indiv","nonindiv"]}
# ${FundingFor:["Chassis","FBV"]}
#${FinanceMode:["Purchase","Refinance"]}
  #${AssetType:["New Asset","Used Asset"]}
#FeatureID-ACAUTOCAS-11906
  Scenario Outline:Validate the Consolidated Summary specific field should be present in read only mode with Funding For as <FundingFor> at <ApplicationStage> stage for <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "" with "" from application grid
    And user navigates to asset requested page
    And user select Funding For as "<FundingFor>"
    And user select Collateral Sub-Type/Asset details as "<ProductType>"
    And user select Finance Mode as <FinanceMode>
    When user select asset type as "<AssetType>"
    Then user validated that the Consolidated Summary specific field should be present in read only mode
      | Consolidated Total Asset Cost     |
      | Consolidated Down Payment (Amount |
      | DownPayment( %)                   |
      | Consolidated Loan Amount          |
      | Consolidated LTV                  |


    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | FundingFor   | FinanceMode   | AssetType   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <FundingFor> | <FinanceMode> | <AssetType> |

               #Prerequisite:Application already punch with application type as Multi Asset
      # ${ ProductType : ["CV"]}
# ${ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
#${ApplicantType:["indiv","nonindiv"]}
# ${FundingFor:["Body","Both"]}
#${FinanceMode:["Purchase","Refinance"]}
  #${AssetType:["New Asset","Used Asset"]}
#FeatureID-ACAUTOCAS-11906
  Scenario Outline:Validate the Consolidated Summary specific field should be present in read only mode with Funding For as <FundingFor> in multi asset at <ApplicationStage> stage for <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "" with "" from application grid
    And user navigates to asset requested page
    And user select Funding For as "<FundingFor>"
    And user select Collateral Sub-Type/Asset details as "<ProductType>"
    And user select Finance Mode as <FinanceMode>
    When user select asset type as "<AssetType>"
    Then user validated that the Consolidated Summary specific field should be present in read only mode
      | Consolidated Total Asset Cost     |
      | Consolidated Down Payment (Amount |
      | DownPayment( %)                   |
      | Consolidated Loan Amount          |
      | Consolidated LTV                  |


    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | FundingFor   | FinanceMode   | AssetType   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <FundingFor> | <FinanceMode> | <AssetType> |

    # ${ ProductType : ["CEQ","CV"]}
# ${ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
#${ApplicantType:["indiv","nonindiv"]}
# ${FundingFor:["Chassis","FBV"]}
#${FinanceMode:["Purchase","Refinance"]}
  #${AssetType:["New Asset","Used Asset"]}
#FeatureID-ACAUTOCAS-11906
  Scenario Outline: Validate on Asset Requested Screen specific field should be present in read only mode with Funding For as <FundingFor> at <ApplicationStage> stage for <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "" with "" from application grid
    And user navigates to asset requested page for "<ApplicationStage>"
    And user select Funding For as "<FundingFor>"
    And user select Collateral Sub-Type/Asset details as "<ProductType>"
    And user select Finance Mode as <FinanceMode>
    When user select asset type as "<AssetType>"
    Then user validated that on Asset Requested Screen specific field should be present in read only mode
      | Asset Number       |
      | Make/Model/Variant |
      | Quantity           |
      | Dealer             |
      | Total Asset Cost   |
      | Loan Amount        |
      | DownPayment        |


    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | FundingFor   | FinanceMode   | AssetType   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <FundingFor> | <FinanceMode> | <AssetType> |

  # ${ ProductType : ["CV"]}
# ${ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
#${ApplicantType:["indiv","nonindiv"]}
# ${FundingFor:["Body","Both"]}
#${FinanceMode:["Purchase","Refinance"]}
  #${AssetType:["New Asset","Used Asset"]}
#FeatureID-ACAUTOCAS-11906
  Scenario Outline: Validate on Asset Requested Screen specific field should be present in read only mode with Funding For as <FundingFor> in multi asset at <ApplicationStage> stage for <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "" with "" from application grid
    And user navigates to asset requested page for "<ApplicationStage>"
    And user select Funding For as "<FundingFor>"
    And user select Collateral Sub-Type/Asset details as "<ProductType>"
    And user select Finance Mode as <FinanceMode>
    When user select asset type as "<AssetType>"
    Then user validated that on Asset Requested Screen specific field should be present in read only mode
      | Asset Number       |
      | Make/Model/Variant |
      | Quantity           |
      | Dealer             |
      | Total Asset Cost   |
      | Loan Amount        |
      | DownPayment        |


    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | FundingFor   | FinanceMode   | AssetType   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <FundingFor> | <FinanceMode> | <AssetType> |

