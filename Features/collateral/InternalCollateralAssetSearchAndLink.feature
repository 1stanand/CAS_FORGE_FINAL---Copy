@Epic-Secondary_Collateral
#Author: rsurya.kumar
#CreateDate: 04th Sep 2023
#ScriptedBy:
#ReviewedBy:
#Scenarios: = 758
@ReviewedSecCollateral
@Reconciled
@AuthoredBy-rsurya.kumar

#${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#${ApplicationStage:["DDE", "Credit", "Approval", "Recommendation", "Reconsideration", "Disbursal Initiation"]}
#${ApplicantType:["indiv","nonindiv"]}
Feature: Internal Collateral Asset Search and Link

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
#  Pre-Requisites---
#  In this feature we will validate the screen layout of Collateral Browser Page
#Internal Collateral Search and link
  @ImplementedBy-aditya.tomar
    @Release
  Scenario Outline: ACAUTOCAS-3115:  Provision to search Asset <with> as internal collateral and link of <applicantType> on <ProductType> on <ApplicationStage> at <Collateral_collateralSearch_rowNum>
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page
    And user searches for an existing collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_search>" and row <Collateral_search_rowNum>
    When user enters parameters to search collateral
    And clicks on search
    And user sees the list of collaterals available in CMS as per the parameters entered
    Then user should be able to link it to the application
    Examples:
      | CollateralWB    | Collateral_search | Collateral_search_rowNum | ProductType   | ApplicationStage   | key | category | applicantType | with                                                                        |
      | collateral.xlsx | collateral_search | 1462                     | <ProductType> | <ApplicationStage> |     |          | indiv         | Collateral ID, Collateral Type, Collateral Ref No, Owner                    |
      | collateral.xlsx | collateral_search | 1463                     | <ProductType> | <ApplicationStage> |     |          | indiv         | Collateral Type, Collateral Status,  Owner                                  |
      | collateral.xlsx | collateral_search | 1464                     | <ProductType> | <ApplicationStage> |     |          | indiv         | Collateral ID, Collateral Type, Collateral Ref No, Collateral Status, Owner |
      | collateral.xlsx | collateral_search | 1465                     | <ProductType> | <ApplicationStage> |     |          | indiv         | Collateral Type, Collateral Ref No, Collateral Status, Owner                |
      | collateral.xlsx | collateral_search | 1466                     | <ProductType> | <ApplicationStage> |     |          | indiv         | Collateral ID, Collateral Type, Collateral Ref No, Collateral Status        |
      | collateral.xlsx | collateral_search | 1467                     | <ProductType> | <ApplicationStage> |     |          | indiv         | Collateral ID, Collateral Type, Collateral Status, Owner                    |
      | collateral.xlsx | collateral_search | 1468                     | <ProductType> | <ApplicationStage> |     |          | indiv         | Collateral ID, Collateral Type, Collateral Status, Owner                    |
      | collateral.xlsx | collateral_search | 1469                     | <ProductType> | <ApplicationStage> |     |          | indiv         | Collateral ID, Collateral Type, Collateral Ref No                           |
      | collateral.xlsx | collateral_search | 1470                     | <ProductType> | <ApplicationStage> |     |          | indiv         | Collateral Type                                                             |
      | collateral.xlsx | collateral_search | 1471                     | <ProductType> | <ApplicationStage> |     |          | indiv         | Collateral ID, Collateral Type                                              |
      | collateral.xlsx | collateral_search | 1472                     | <ProductType> | <ApplicationStage> |     |          | indiv         | Collateral ID, Collateral Type, Collateral Status                           |
      | collateral.xlsx | collateral_search | 1473                     | <ProductType> | <ApplicationStage> |     |          | indiv         | Collateral Type, Collateral Ref No                                          |
      | collateral.xlsx | collateral_search | 1474                     | <ProductType> | <ApplicationStage> |     |          | indiv         | Collateral Type                                                             |
      | collateral.xlsx | collateral_search | 1475                     | <ProductType> | <ApplicationStage> |     |          | indiv         | Collateral Type, Collateral Status, Owner                                   |

  @ImplementedBy-richa.singh
  @Conventional
  @Release
  #FeatureID-ACAUTOCAS-249
  Scenario Outline: ACAUTOCAS-11611:  Internal search and link Asset as collateral to reconcile the copied data
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNo>
    And user selects collateral type along with collateral sub type
    And user fills mandatory fields for "<CollateralSubType>" collateral
    And user checks the duplicates on collateral dedupe check
    And user clicks on save collateral to save CMS data in context
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page on "<ApplicationStage>" without adding New Collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNo>
    When user searches for an existing internal collateral using Global Collateral Number
    And user links the collateral with the application
    And user attempts to modify collateral based on "<CollateralSubType>"
    Then user should be able to reconcile the data for "<CollateralSubType>" collateral successfully
    Examples:
      | CollateralSubType    | CollateralWB    | Collateral_default | Collateral_default_rowNo | ProductType   | ApplicationStage   | applicantType   | category | key |
      | Commercial Equipment | collateral.xlsx | default            | 3                        | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |
      | Commercial Vehicle   | collateral.xlsx | default            | 2                        | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |
      | Consumer Durable     | collateral.xlsx | default            | 1                        | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |
      | Consumer Vehicle     | collateral.xlsx | default            | 0                        | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |
      | Tractor              | collateral.xlsx | default            | 4                        | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |


  @ImplementedBy-richa.singh
  @Conventional
  @Release
  #FeatureID-ACAUTOCAS-249
  Scenario Outline: ACAUTOCAS-11612:  Internal search and link Asset as collateral to reconcile the copied CERSAI data
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNo>
    And user selects collateral type along with collateral sub type
    And user fills mandatory fields for "<CollateralSubType>" collateral
    And user checks the duplicates on collateral dedupe check
    And user clicks on save collateral to save CMS data in context
    And user edits the recently added collateral
    And user navigates to the CERSAI page
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_cersaiDetails>" and row <Collateral_cersaiDetails_rowNum>
    And user fills all fields in section CERSAI Data
    And user saves the CERSAI data
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page on "<ApplicationStage>" without adding New Collateral
    When user searches for an existing internal collateral using Global Collateral Number
    And user links the collateral with the application
    And user attempts to modify collateral based on "<CollateralSubType>"
    And user navigates to the CERSAI page
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_cersaiDetails>" and row <Collateral_cersaiDetails_rowNum>
    Then user should be able to reconcile the data for CERSAI successfully
    Examples:
      | CollateralSubType    | CollateralWB    | Collateral_default | Collateral_default_rowNo | ProductType   | ApplicationStage   | applicantType   | category | key | Collateral_cersaiDetails | Collateral_cersaiDetails_rowNum |
      | Commercial Equipment | collateral.xlsx | default            | 3                        | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | cersai_details           | 119                             |
      | Commercial Vehicle   | collateral.xlsx | default            | 2                        | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | cersai_details           | 119                             |
      | Consumer Durable     | collateral.xlsx | default            | 1                        | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | cersai_details           | 119                             |
      | Consumer Vehicle     | collateral.xlsx | default            | 0                        | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | cersai_details           | 119                             |
      | Tractor              | collateral.xlsx | default            | 4                        | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | cersai_details           | 119                             |

  @ImplementedBy-richa.singh
  @Conventional
  @Release
 #FeatureID-ACAUTOCAS-249
  Scenario Outline: ACAUTOCAS-11613:  Internal search and link Asset as collateral to reconcile the copied CERSAI security interest data
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNo>
    And user selects collateral type along with collateral sub type
    And user fills mandatory fields for "<CollateralSubType>" collateral
    And user checks the duplicates on collateral dedupe check
    And user clicks on save collateral to save CMS data in context
    And user edits the recently added collateral
    And user navigates to the CERSAI page
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_cersaiDetails>" and row <Collateral_cersaiDetails_rowNum>
    And user fills all fields in section CERSAI Data
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_cersaiDetails>" and row <Collateral_securityInterestDetails_rowNum>
    And user views the section Security Interest Details
    And user enters Security Interest Details
    And user saves the CERSAI data
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page on "<ApplicationStage>" without adding New Collateral
    When user searches for an existing internal collateral using Global Collateral Number
    And user links the collateral with the application
    And user attempts to modify collateral based on "<CollateralSubType>"
    And user navigates to the CERSAI page
    And user views the section Security Interest Details
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_cersaiDetails>" and row <Collateral_securityInterestDetails_rowNum>
    Then user should be able to reconcile the data for CERSAI security interest data successfully
    Examples:
      | CollateralSubType    | CollateralWB    | Collateral_default | Collateral_default_rowNo | ProductType   | ApplicationStage   | applicantType   | category | key | Collateral_cersaiDetails | Collateral_cersaiDetails_rowNum | Collateral_securityInterestDetails_rowNum |
      | Commercial Equipment | collateral.xlsx | default            | 3                        | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | cersai_details           | 119                             | 194                                       |
      | Commercial Vehicle   | collateral.xlsx | default            | 2                        | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | cersai_details           | 119                             | 194                                       |
      | Consumer Durable     | collateral.xlsx | default            | 1                        | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | cersai_details           | 119                             | 194                                       |
      | Consumer Vehicle     | collateral.xlsx | default            | 0                        | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | cersai_details           | 119                             | 194                                       |
      | Tractor              | collateral.xlsx | default            | 4                        | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | cersai_details           | 119                             | 194                                       |
