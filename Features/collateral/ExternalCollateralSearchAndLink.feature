@Epic-Secondary_Collateral
@AuthoredBy-rsurya.kumar
#CreateDate: 11th Sep 2023
#ScriptedBy:
#ReviewedBy:
#Scenarios: = 186
@CollateralExternalSearch
@NotImplemented
Feature: External Collateral Search and Link

#  Pre-Requisites---
#  In this feature we will validate the screen layout of Collateral Browser Page

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0

#External Search CAS-127468 and link
  Scenario Outline: ACAUTOCAS-1300: Provision to search collateral from third party and link
    When user opens an application at "DDE" stage from application grid
    And user opens "CollateralPage"
    And user searches for an existing collateral
    And user gets option to filter the collateral
    And user enters parameters "<Collateral ID>", "<Collateral Ref No>", "<Collateral Status>", "<Owner>"
    And clicks on Search External
    And user sees the list of collaterals available in "ExternalSystem" as per the parameters entered
    Then user should be able to link it to the application
    Examples:
      | Collateral ID | Collateral Ref No | Collateral Status | Owner   |
      | COLL00028707  | COLL-AWGHTR123456 |                   | PRAKASH |
      |               |                   |                   | PRAKASH |
      | COLL00028707  | COLL-AWGHTR123456 | Active            |         |
      | COLL00028707  | COLL-AWGHTR123456 | Active            | PRAKASH |
      | COLL00028707  |                   | Active            | PRAKASH |
      |               | COLL-AWGHTR123456 | Active            | PRAKASH |
      |               |                   | Active            | PRAKASH |
      |               | COLL-AWGHTR123456 | Active            |         |
      |               | COLL-AWGHTR123456 |                   | PRAKASH |
      | COLL00028707  |                   |                   |         |
      |               | COLL-AWGHTR123456 |                   |         |
      | COLL00028707  | COLL-AWGHTR123456 |                   |         |
      |               |                   | Active            |         |
      | COLL00028707  |                   | Active            |         |
      | COLL00028707  |                   |                   | PRAKASH |

#StoryID-CAS-127468
#FeatureID-ACAUTOCAS-4115,ACAUTOCAS-4103,CAS-127468,ACAUTOCAS-6852
  Scenario Outline: ACAUTOCAS-8923:  User attaches a collateral already attached to same "<ProductType>" application at "<ApplicationStage>" Stage
    And "<ProductType>" application is at "<ApplicationStage>" Stage
    And collateral with "GlobalCollateralNumber" is attached to the application
    When user opens the application from application grid
    And user navigates to the collateral page
    And user searches for an existing external collateral using "GlobalCollateralNumber"
    And user gets the collateral info
    And user links the collateral with the application
    Then user should get an "ErrorMessage" as mentioned in workbook "<SourceDataFile>" under sheet "<SheetName>" and row number <RowNumber>
    @PF
    Examples:
      | SourceDataFile | SheetName | RowNumber | ProductType | ApplicationStage     |
      | AssetFile.xlsx | d_linking | 0         | PF          | DDE                  |
      | AssetFile.xlsx | d_linking | 3         | PF          | Recommendation       |
      | AssetFile.xlsx | d_linking | 6         | PF          | Reconsideration      |
      | AssetFile.xlsx | d_linking | 8         | PF          | Disbursal Initiation |
    @IPF
    Examples:
      | SourceDataFile | SheetName | RowNumber | ProductType | ApplicationStage     |
      | AssetFile.xlsx | d_linking | 0         | PF          | DDE                  |
      | AssetFile.xlsx | d_linking | 3         | PF          | Recommendation       |
      | AssetFile.xlsx | d_linking | 6         | PF          | Reconsideration      |
      | AssetFile.xlsx | d_linking | 8         | PF          | Disbursal Initiation |
    @HL
    Examples:
      | SourceDataFile | SheetName | RowNumber | ProductType | ApplicationStage     |
      | AssetFile.xlsx | d_linking | 14        | HL          | DDE                  |
      | AssetFile.xlsx | d_linking | 17        | HL          | Recommendation       |
      | AssetFile.xlsx | d_linking | 20        | HL          | Reconsideration      |
      | AssetFile.xlsx | d_linking | 22        | HL          | Disbursal Initiation |
    @IHF
    Examples:
      | SourceDataFile | SheetName | RowNumber | ProductType | ApplicationStage     |
      | AssetFile.xlsx | d_linking | 14        | HL          | DDE                  |
      | AssetFile.xlsx | d_linking | 17        | HL          | Recommendation       |
      | AssetFile.xlsx | d_linking | 20        | HL          | Reconsideration      |
      | AssetFile.xlsx | d_linking | 22        | HL          | Disbursal Initiation |
    @CON_VEH
    Examples:
      | SourceDataFile | SheetName | RowNumber | ProductType | ApplicationStage     |
      | AssetFile.xlsx | d_linking | 28        | CON_VEH     | DDE                  |
      | AssetFile.xlsx | d_linking | 31        | CON_VEH     | Recommendation       |
      | AssetFile.xlsx | d_linking | 34        | CON_VEH     | Reconsideration      |
      | AssetFile.xlsx | d_linking | 36        | CON_VEH     | Disbursal Initiation |

#StoryID-CAS-127468
#FeatureID-ACAUTOCAS-4115,ACAUTOCAS-4103,CAS-127468,ACAUTOCAS-6852
  Scenario Outline: ACAUTOCAS-8924:  User attaches a collateral already attached to same "<ProductType>" application at "Credit Approval" Stage
    And "<ProductType>" application is at "<ApplicationStage>" Stage
    And collateral with "GlobalCollateralNumber" is attached to the application
    When user opens the application from credit approval menu
    And user navigates to the collateral page
    And user searches for an existing external collateral using "GlobalCollateralNumber"
    And user gets the collateral info
    And user links the collateral with the application
    Then user should get an "ErrorMessage" as mentioned in workbook "<SourceDataFile>" under sheet "<SheetName>" and row number <RowNumber>
    @PF
    Examples:
      | SourceDataFile | SheetName | RowNumber | ProductType | ApplicationStage |
      | AssetFile.xlsx | d_linking | 5         | PF          | Credit Approval  |
    @HL
    Examples:
      | SourceDataFile | SheetName | RowNumber | ProductType | ApplicationStage |
      | AssetFile.xlsx | d_linking | 19        | HL          | Credit Approval  |
    @IPF
    Examples:
      | SourceDataFile | SheetName | RowNumber | ProductType | ApplicationStage |
      | AssetFile.xlsx | d_linking | 5         | PF          | Credit Approval  |
    @IHF
    Examples:
      | SourceDataFile | SheetName | RowNumber | ProductType | ApplicationStage |
      | AssetFile.xlsx | d_linking | 19        | HL          | Credit Approval  |
    @CON_VEH
    Examples:
      | SourceDataFile | SheetName | RowNumber | ProductType | ApplicationStage |
      | AssetFile.xlsx | d_linking | 33        | CON_VEH     | Credit Approval  |
