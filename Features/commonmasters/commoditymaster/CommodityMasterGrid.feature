@Epic-Commodity_Master
@PQMStory
@GWTReviewedBy-vinod.pandey
@AuthoredBy-yash.sharma
@TechReviewdBy-harshprit.kumar
@ImplementedBy-yash.sharma
@commodityMaster
@Islamic
@ReleaseIslamicM3
@Release


#Story-CAS-187231,CAS-184519
Feature: Verify Commodity Master Grid

  Background:
    Given user is on CAS Login Page
    And user logged in "Common Masters" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0


    #PQM-8_CAS-187231
    #PMG-
    #ST-
    #UT-
    #FeatureID-ACAUTOCAS-11339
  Scenario: ACAUTOCAS-14406:  Verify Create Commodity Master Button
    And user navigates to Commodity Master Grid
    When user opens Commodity Master
    Then user Should be successfully landed on Commodity master screen

    #Islamic war is implemented and User has authority to view commodity master in menu
    #PQM-3_CAS-187231
    #PMG-19_CAS-187231CAS-184519
    #ST-1_CAS-187231CAS-184519,2_CAS-187231CAS-184519
    #UT-
    #FeatureID-ACAUTOCAS-11339
  Scenario: ACAUTOCAS-14407:  Verify Commodity Master is visible in Islamic Finance Master
    And user opens Masters
    When user opens Islamic Finance
    Then Commodity Master Should be present

    #PQM-4_CAS-187231
    #PMG-
    #ST-3_CAS-187231CAS-184519,7_CAS-187231CAS-184519
    #UT-
    #FeatureID-ACAUTOCAS-11339
  Scenario Outline: ACAUTOCAS-14408:  User verifies <columns> in commodity master grid
    When user navigates to Commodity Master Grid
    Then user should see the following "<columns>" in the commodity grid
    Examples:
      | columns         |
      | Commodity Code  |
      | Commodity Type  |
      | Product Type    |
      | Product         |
      | Created By      |
      | Created On      |
      | Reviewed By     |
      | Reviewed On     |
      | Updated On      |
      | Active/Inactive |
      | Status          |
      | Actions         |

    #PQM-6_CAS-187231
    #PMG-
    #ST-27_CAS-187231CAS-184519
    #UT-
    #FeatureID-ACAUTOCAS-11339
  Scenario Outline: ACAUTOCAS-14409:  Sorting <column> on Commodity Master Grid In <order> Order
    And user navigates to Commodity Master Grid
    When user sorts "<column>" in "<order>" order
    Then Sorting should be done on "<column>" in "<order>" order
    Examples:
      | column          | order      |
      | Commodity Code  | Ascending  |
      | Commodity Type  | Ascending  |
      | Product Type    | Ascending  |
      | Product         | Ascending  |
      | Created By      | Ascending  |
      | Created On      | Ascending  |
#      | Reviewed By     | Ascending  |
#      | Reviewed On     | Ascending  |
#      | Updated On      | Ascending  |
      | Active/Inactive | Ascending  |
      | Status          | Ascending  |
      | Commodity Code  | Descending |
      | Commodity Type  | Descending |
      | Product Type    | Descending |
      | Product         | Descending |
      | Created By      | Descending |
      | Created On      | Descending |
#      | Reviewed By     | Descending |
#      | Reviewed On     | Descending |
#      | Updated On      | Descending |
      | Active/Inactive | Descending |
      | Status          | Descending |



    #PQM-
    #PMG-
    #ST-5_CAS-187231CAS-184519
    #UT-
    #FeatureID-ACAUTOCAS-11339
  Scenario Outline: ACAUTOCAS-14410:  Validate Functionality Of Show/Hide <columns> Button
    And user navigates to Commodity Master Grid
    And user clicks on ShowHide Button
    When user selects "<columns>" on Commodity Master Grid
    Then "<columns>" should not be present in Commodity Master Grid

    Examples:
      | columns         |
      | Commodity Type  |
      | Product Type    |
      | Product         |
      | Created By      |
      | Created On      |
      | Reviewed By     |
      | Reviewed On     |
      | Updated On      |
      | Active/Inactive |
      | Status          |

    #PQM-
    #PMG-
    #ST-
    #UT-
    #FeatureID-ACAUTOCAS-11339

  Scenario Outline: ACAUTOCAS-14411:  Show the <NumberOfRows> with <Display> rows in <More_Less> in Commodity Master Grid
    And user navigates to Commodity Master Grid
    When user selects "<NumberOfRows>" number of rows to show for Commodity Master Grid
    Then selected <NumberOfRows> rows "<Display>" in case total entries are "<More_Less>" than selected number for Commodity Master Grid
    Examples:
      | NumberOfRows | Display                                 | More_Less |
      | 10           | display                                 | more      |
      | 25           | display                                 | more      |
      | 50           | display                                 | more      |
      | 100          | display                                 | more      |
      | 150          | display                                 | more      |
      | 200          | display                                 | more      |
      | 10           | not display only available rows display | less      |
      | 25           | not display only available rows display | less      |
      | 50           | not display only available rows display | less      |
      | 100          | not display only available rows display | less      |
      | 150          | not display only available rows display | less      |
      | 200          | not display only available rows display | less      |

    #PQM-47_CAS-187231
    #PMG-
    #ST-30_CAS-187231CAS-184519
    #UT-
    #FeatureID-ACAUTOCAS-11339
  Scenario: ACAUTOCAS-14412:  Clone Existing Record
    And user reads data from the excel file "commodity_master.xlsx" under sheet "home" and row 6
    And user navigates to Commodity Master Grid
    And user search a Commodity In Grid
    When user clone the Commodity Master
    Then Record should be cloned successfully with status "Clone,Saved As Draft"

    #PQM-5_CAS-187231,35_CAS-187231
    #PMG-
    #ST-4_CAS-187231CAS-184519,26_CAS-187231CAS-184519
    #UT-
    #FeatureID-ACAUTOCAS-11339
  Scenario Outline: ACAUTOCAS-14413:  Search <parameter> in Search Box
    And user reads data from the excel file "<CommodityMasterWB>" under sheet "<CommodityMasterWB_SheetName>" and row <CommodityMasterWB_SheetName_rowNum>
    And user navigates to Commodity Master Grid
    When user search "<parameter>" in Commodity Master Grid
    Then Record should get searched successfully
    Examples:
      | parameter      | CommodityMasterWB     | CommodityMasterWB_SheetName | CommodityMasterWB_SheetName_rowNum |
      | Commodity Code | commodity_master.xlsx | home                        | 14                                 |
      | Commodity Type | commodity_master.xlsx | home                        | 15                                 |
      | Product Type   | commodity_master.xlsx | home                        | 16                                 |
      | Product        | commodity_master.xlsx | home                        | 17                                 |
      | Status         | commodity_master.xlsx | home                        | 18                                 |
      | Reviewed By    | commodity_master.xlsx | home                        | 19                                 |

    #PQM-40_CAS-187231,
    #PMG-
    #ST-
    #UT-
    #FeatureID-ACAUTOCAS-11339
  Scenario Outline: ACAUTOCAS-14414:  Search a Deleted Record in Commodity Master Grid for <commodityType>
    And user reads data from the excel file "<CommodityMasterWB>" under sheet "<CommodityMasterWB_SheetName>" and row <CommodityMasterWB_SheetName_rowNum>
    And user navigates to Commodity Master Grid
    And user opens Commodity Master
    And user fills "Mandatory" fields in Commodity Master with Commodity as "<commodityType>"
    And user clicks on save button in Commodity Master
    When user delete the Commodity
    Then Record should be deleted Not present in Commodity Master Grid
    Examples:
      | commodityType | CommodityMasterWB     | CommodityMasterWB_SheetName | CommodityMasterWB_SheetName_rowNum |
      | Bonds         | commodity_master.xlsx | home                        | 0                                  |
      | Shares        | commodity_master.xlsx | home                        | 1                                  |
      | Metal         | commodity_master.xlsx | home                        | 2                                  |


      #FeatureID-ACAUTOCAS-11339
Scenario: ACAUTOCAS-17714: Validate Select All Functionality at Commodity Master Grid
    And user navigates to Commodity Master Grid
    And user selects "200" entries for view in Grid
    When user click select all checkbox
    Then all checkbox should be selected


