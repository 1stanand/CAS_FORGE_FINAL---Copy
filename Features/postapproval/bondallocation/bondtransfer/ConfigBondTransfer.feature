#@Epic-PF_Bond_Base
#@PQMStory
#@AuthoredBy-aniket.tripathi
#@ReviewedBy-
#@ImplementedBy-aniket.tripathi
#@Islamic
#@Bonds
#@ManualConfig
#Feature: Configuration in Bond Transfer
#
#  Background:
#    Given user is on CAS Login Page
#    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
#
##FeatureID-ACAUTOCAS-
##PQM-10_CAS-189588
#Scenario: ACAUTOCAS-16097: Selection of Bond Allocation Tab on Role Master
#    When user opens Role Master
#    And user adds bond Allocation Authority section for that role
#    Then bond Allocation authority should be added for that user
#
## ${ProductType:["IPF"]}
## ${ApplicationStage:["Post Approval"]}
##FeatureID-ACAUTOCAS-
##PQM-10_CAS-189588
#Scenario Outline: ACAUTOCAS-16098: Visibility of Bond Allocation tab at <ApplicationStage> for a <ProductType> after role master mapping
#    And user opens an "<ProductType>" application at "<ApplicationStage>" stage from application grid
#    When user opens bond allocation tab
#    Then Bond Allocation tab should be visible at "<ApplicationStage>" stage
#    Examples:
#      | ProductType   | ApplicationStage   |
#      | <ProductType> | <ApplicationStage> |
#
##FeatureID-ACAUTOCAS-
##PQM-10_CAS-189588
#Scenario: ACAUTOCAS-16097: Selection of Bond Allocation Tab on Role Master
#    When user opens Role Master
#    And user removes bond Allocation Authority section for that role
#    Then bond Allocation authority should be romoved for that user
#
## ${ProductType:["IPF"]}
## ${ApplicationStage:["Post Approval"]}
##FeatureID-ACAUTOCAS-
##PQM-10_CAS-189588
#Scenario Outline: ACAUTOCAS-16098: Visibility of Bond Allocation tab at <ApplicationStage> for a <ProductType> after role master mapping
#    When user opens an "<ProductType>" application at "<ApplicationStage>" stage from application grid
#    Then Bond Allocation tab should not visible at "<ApplicationStage>" stage
#    Examples:
#      | ProductType   | ApplicationStage   |
#      | <ProductType> | <ApplicationStage> |
#
##FeatureID-ACAUTOCAS-
##PQM-28_CAS-189588
#  Scenario Outline: ACAUTOCAS-14537:  Visibility of Bond Transfer Service on Remote Call Configuration
#    When user opens remote call configuration
#    And user reads data from the excel file "<PostApprovalWB>" under sheet "<PostApproval_BondAllocation>" and row <PostApproval_BondAllocation_rowNum>
#    And user opens view bond transfer service
#    Then user should be able to view the bond transfer service
#    Examples:
#      | PostApprovalWB     | PostApproval_BondAllocation | PostApproval_BondAllocation_rowNum |
#      | post_approval.xlsx | bondAllocation              | 0                                  |
#
##FeatureID-ACAUTOCAS-
##PQM-31_CAS-189588
#  Scenario Outline: ACAUTOCAS-14538:  Visibility of Bond Transfer Service on Seed Data Master
#    When user opens seed data master
#    And user reads data from the excel file "<PostApprovalWB>" under sheet "<PostApproval_BondAllocation>" and row <PostApproval_BondAllocation_rowNum>
#    And user opens view bond transfer service
#    Then user should be able to view the bond transfer service on seed data master
#    Examples:
#      | PostApprovalWB     | PostApproval_BondAllocation | PostApproval_BondAllocation_rowNum |
#      | post_approval.xlsx | bondAllocation              | 0                                  |
