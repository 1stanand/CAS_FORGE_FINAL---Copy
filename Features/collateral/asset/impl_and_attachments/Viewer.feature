@Epic-Secondary_Collateral
@AuthoredBy-rsurya.kumar
#CreateDate: 09th May 2024
#ScriptedBy:
#ReviewedBy:
#Scenarios: = 2
@ReviewedByGWT
@Viewer
@ImplementedBy-priyanhsu.kashyap
@Conventional
Feature: Implements and Attachments Viewer

#  Pre-Requisites---
#  In this feature we will view a Implements and Attachments attached to the loan application.

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0

#FeatureID-ACAUTOCAS-8108
  Scenario Outline: ACAUTOCAS-8850:  Implements and Attachments data reconcile to validate if data was saved properly
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_assetDetails>" and row <Collateral_assetDetails_rowNum>
    And user selects collateral type along with collateral sub type
    When user fills all fields of home page of collateral details for given collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_invoiceDetails>" and row <Collateral_invoiceDetails_rowNum>
    And user fills mandatory fields of invoice details of collateral sub type
    And user closes duplicate check result box after checking the duplicates
    And user fills Reason Section
    And user saves the Collateral Details
    And user views the saved collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_assetDetails>" and row <Collateral_assetDetails_rowNum>
    And user see the data of Asset Details as filled earlier
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_invoiceDetails>" and row <Collateral_invoiceDetails_rowNum>
    And user see the data of Invoice Details as filled earlier
    Then user ensure the data is same in view mode
    Examples:
      | CollateralWB    | Collateral_assetDetails | Collateral_assetDetails_rowNum | Collateral_invoiceDetails | Collateral_invoiceDetails_rowNum | ProductType | applicantType | ApplicationStage | category | key |
      | collateral.xlsx | asset_details           | 289                            | invoice_details           | 120                              | PL          | indiv         | DDE              |          |     |


#FeatureID-ACAUTOCAS-8108
  Scenario Outline: ACAUTOCAS-8851:  CollateralPage should not allow to modify data in viewer mode
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_assetDetails>" and row <Collateral_assetDetails_rowNum>
    And user selects collateral type along with collateral sub type
    When user fills all fields of home page of collateral details for given collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_invoiceDetails>" and row <Collateral_invoiceDetails_rowNum>
    And user fills mandatory fields of invoice details of collateral sub type
    And user closes duplicate check result box after checking the duplicates
    And user fills Reason Section
    And user saves the Collateral Details
    And user views the saved collateral
    Then user should not be able to modify the data of saved asset collateral
    Examples:
      | CollateralWB    | Collateral_assetDetails | Collateral_assetDetails_rowNum | Collateral_invoiceDetails | Collateral_invoiceDetails_rowNum | ProductType | applicantType | ApplicationStage | category | key |
      | collateral.xlsx | asset_details           | 289                            | invoice_details           | 120                              | PL          | indiv         | DDE              |          |     |

