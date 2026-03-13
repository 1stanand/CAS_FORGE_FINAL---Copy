@Epic-Secondary_Collateral
#Author: rsurya.kumar
#CreateDate: 04th Oct 2023
#ScriptedBy:
#ReviewedBy:
#Scenarios: = 2
@AuthoredBy-rsurya.kumar
@ImplementedBy-richa.singh
@Release3
@ReviewedByDEV
@ReviewedSecCollateral
@Sanity
  #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal Initiation"]}
  # ${CollateralSubType:["Corporate Guarantee"]}
Feature: Corporate Guarantee Viewer

#  Pre-Requisites---
#  In this feature we will attach an Guarantee Corporate Guarantee to the loan application.

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0

  Scenario Outline: ACAUTOCAS-3099:  "Corporate Guarantee" data reconcile to validate if data was saved properly
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page
    And existing collateral details are stored
    And user clicks on add new collateral
    And user reads data from the excel file "collateral.xlsx" under sheet "default" and row 7
    And user selects collateral type along with collateral sub type
    And user enters mandatory fields of collateral details of corporate guarantee
    And user reads data from the excel file "collateral.xlsx" under sheet "guarantor_identification" and row 8
    And user enters mandatory fields of guarantor identification of corporate guarantee
    And user reads data from the excel file "collateral.xlsx" under sheet "guarantor_address" and row 7
    And user enters mandatory fields of guarantor address of corporate guarantee
    And user saves the data
    When user opens newly added Collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    Then user should be able to sees the data as available in excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | key | category | applicantType |
      | collateral.xlsx | default            | 7                         | <ProductType> | <ApplicationStage> |     |          | indiv         |

  Scenario: ACAUTOCAS-3100:  CollateralPage should not allow to modify data in viewer mode
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page
    And existing collateral details are stored
    And user clicks on add new collateral
    And user reads data from the excel file "collateral.xlsx" under sheet "default" and row 7
    And user selects collateral type along with collateral sub type
    And user enters mandatory fields of collateral details of corporate guarantee
    And user reads data from the excel file "collateral.xlsx" under sheet "guarantor_identification" and row 8
    And user enters mandatory fields of guarantor identification of corporate guarantee
    And user reads data from the excel file "collateral.xlsx" under sheet "guarantor_address" and row 7
    And user enters mandatory fields of guarantor address of corporate guarantee
    And user saves the data
    When user views the saved collateral
    Then user should not be able to modifies the data
      | ProductType   | ApplicationStage   | key | category | applicantType | ProductType   | ApplicationStage   | key | category | applicantType |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | <ProductType> | <ApplicationStage> |     |          | indiv         |
