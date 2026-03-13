@Epic-Secondary_Collateral
@AuthoredBy-rsurya.kumar
@ReviewedBy-
#@TechReviewedBy-
#
#@CollateralTypeLand @CollateralInvestigationInitiation
@ReviewedByDEV
@Reconciled
Feature: Collateral Auto Initiation for Land type collateral when Auto Initiation flag is set to No

#  The DB parameter 'cas.autoInit.config' is set to N in configuration table
#  select * from configuration where PROPERTY_KEY = 'cas.autoInit.config';

#User Story references
#  CAS-122570 - Auto-Initiation : Collateral Investigation (CAS and CMS)
#  CAS-123921 - CLONE - Auto-Initiation : Collateral Investigation (CAS and CMS)
#  CAS-165882 - Logged By: JYOTI.GUPTA - The system (CAS) must auto-allocate the Verification/Valuation of Collateral based on the Rules that are set in the system

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0

#FeatureID-ACAUTOCAS-363
  Scenario Outline: ACAUTOCAS-5311:  Collateral investigation initiation for Land <Collateral_SubType> at Stage <Stage>
    And user opens an application at "<Application_Stage>" stage from application grid
    And user opens Collateral Page for adding new collateral at "<Stage>" stage
    And user reads data from the excel file "<CollateralInfoWB>" under sheet "<CollateralInfoWB_home>" and row <CollateralInfoWB_home_rowNum>
    And user selects collateral type along with collateral sub type
    And user enters all mandatory information of collateral
    And user reads data from the excel file "<CollateralInfoWB>" under sheet "<CollateralInfoWB_address_details>" and row <CollateralInfoWB_address_details_rowNum>
    And user enters address details of land collateral
    And user reads data from the excel file "<CollateralInfoWB>" under sheet "<CollateralInfoWB_other_details>" and row <CollateralInfoWB_other_details_rowNum>
    And user enters other details of land collateral
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    And user records the application number at "<Stage>"
    When user opens collateral investigation initiation screen
    And user search the application with already attached collateral
    Then user should be able to see the attached collateral subtype "<Collateral_SubType>"
    @ImplementedBy-rishabh.garg
    @Release
    @LoggedBug
    Examples:
      | Collateral_SubType | Stage                  | Application_Stage         | CollateralInfoWB | CollateralInfoWB_home | CollateralInfoWB_home_rowNum | CollateralInfoWB_address_details | CollateralInfoWB_address_details_rowNum | CollateralInfoWB_other_details | CollateralInfoWB_other_details_rowNum |
      | Agriculture Land   | DDE                    | dde                       | collateral.xlsx  | default               | 6                            | address_details                  | 3                                       | other_details                  | 0                                     |
      | Agriculture Land   | Credit Bureau Referral | credit_bureau_referral    | collateral.xlsx  | default               | 6                            | address_details                  | 3                                       | other_details                  | 0                                     |
      | Agriculture Land   | FII                    | fii                       | collateral.xlsx  | default               | 6                            | address_details                  | 3                                       | other_details                  | 0                                     |
      | Agriculture Land   | Recommendation         | recommendation_indiv_pl   | collateral.xlsx  | default               | 6                            | address_details                  | 3                                       | other_details                  | 0                                     |
      | Agriculture Land   | Credit Approval        | credit approval_indiv_pl  | collateral.xlsx  | default               | 6                            | address_details                  | 3                                       | other_details                  | 0                                     |
      | Agriculture Land   | Reconsideration        | reconsideration_indiv_pl  | collateral.xlsx  | default               | 6                            | address_details                  | 3                                       | other_details                  | 0                                     |
      | Agriculture Land   | Post Approval          | post approval_indiv_pl    | collateral.xlsx  | default               | 6                            | address_details                  | 3                                       | other_details                  | 0                                     |
      | Agriculture Land   | Disbursal              | disbursal_indiv_pl        | collateral.xlsx  | default               | 6                            | address_details                  | 3                                       | other_details                  | 0                                     |
      | Agriculture Land   | FIV                    | fiv                       | collateral.xlsx  | default               | 6                            | address_details                  | 3                                       | other_details                  | 0                                     |
      | Agriculture Land   | Disbursal Author       | disbursal author_indiv_pl | collateral.xlsx  | default               | 6                            | address_details                  | 3                                       | other_details                  | 0                                     |
      | Agriculture Land   | Application Renewal    | application_renewal       | collateral.xlsx  | default               | 6                            | address_details                  | 3                                       | other_details                  | 0                                     |
      | Agriculture Land   | Tranch Initiation      | tranch_initiation         | collateral.xlsx  | default               | 6                            | address_details                  | 3                                       | other_details                  | 0                                     |
      | Agriculture Land   | Tranch Approval        | tranch_approval           | collateral.xlsx  | default               | 6                            | address_details                  | 3                                       | other_details                  | 0                                     |
