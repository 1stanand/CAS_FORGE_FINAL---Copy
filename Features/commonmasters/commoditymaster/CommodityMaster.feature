@Epic-Commodity_Master
@PQMStory
@GWTReviewedBy-vinod.pandey
@AuthoredBy-yash.sharma
@ImplementedBy-yash.sharma
@TechReviewdBy-harshprit.kumar
@Islamic @Release
@26MarFix
#Story-CAS-187231,CAS-184519
Feature: Create Commodity From Commodity Master

  Background:
    Given user is on CAS Login Page
    And user logged in "Common Masters" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0

    #PQM-
    #PMG-z
    #ST-21_CAS-187231CAS-184519
    #UT-
    #FeatureID-ACAUTOCAS-11334
  Scenario Outline: ACAUTOCAS-14397:  Create a Commodity Draft using commodity type as <commodityType> filling <MandatoryOrAll> fields
    And user navigates to Product Master
    And user creates new Product For "<commodityType>"
    And user logout from CAS
    And user logged in "Common Masters" with username and password present in "LoginDetailsCAS.xlsx" under "ChildBrowserSheet" and 0
    And user approves the Product
    And user navigates to Commodity Master Grid
    And user opens Commodity Master
    And user reads data from the excel file "<CommodityMasterWB>" under sheet "<CommodityMasterWB_SheetName>" and row <CommodityMasterWB_SheetName_rowNum>
    And user fills "<MandatoryOrAll>" fields in Commodity Master with Commodity as "<commodityType>"
    When user clicks on save button in Commodity Master
    Then Commodity Master Record Should be saved with Status "New,Saved As Draft"
    Examples:
      | commodityType | MandatoryOrAll | CommodityMasterWB     | CommodityMasterWB_SheetName | CommodityMasterWB_SheetName_rowNum |
      | Bonds         | Mandatory      | commodity_master.xlsx | home                        | 0                                  |
      | Bonds         | All            | commodity_master.xlsx | home                        | 0                                  |
      | Shares        | Mandatory      | commodity_master.xlsx | home                        | 1                                  |
      | Shares        | All            | commodity_master.xlsx | home                        | 1                                  |
      | Metal         | Mandatory      | commodity_master.xlsx | home                        | 2                                  |
      | Metal         | All            | commodity_master.xlsx | home                        | 2                                  |

Scenario Outline: ACAUTOCAS-17715: Create a Offline Commodity Draft using commodity type as <commodityType> filling <MandatoryOrAll> fields
    And user navigates to Product Master
    And user creates new Product For "<commodityType>"
    And user logout from CAS
    And user logged in "Common Masters" with username and password present in "LoginDetailsCAS.xlsx" under "ChildBrowserSheet" and 0
    And user approves the Product
    And user navigates to Commodity Master Grid
    And user opens Commodity Master
    And user reads data from the excel file "<CommodityMasterWB>" under sheet "<CommodityMasterWB_SheetName>" and row <CommodityMasterWB_SheetName_rowNum>
    And user fills "<MandatoryOrAll>" fields in Commodity Master with Commodity as "<commodityType>"
    And user selects offline flag for commodity master
    When user clicks on save button in Commodity Master
    Then Commodity Master Record Should be saved with Status "New,Saved As Draft"
    Examples:
      | commodityType | MandatoryOrAll | CommodityMasterWB     | CommodityMasterWB_SheetName | CommodityMasterWB_SheetName_rowNum |
      | Bonds         | Mandatory      | commodity_master.xlsx | home                        | 0                                  |
      | Bonds         | All            | commodity_master.xlsx | home                        | 0                                  |
      | Shares        | Mandatory      | commodity_master.xlsx | home                        | 1                                  |
      | Shares        | All            | commodity_master.xlsx | home                        | 1                                  |
      | Metal         | Mandatory      | commodity_master.xlsx | home                        | 2                                  |
      | Metal         | All            | commodity_master.xlsx | home                        | 2                                  |


    #PQM-33_CAS-187231,34_CAS-187231
    #PMG-7_CAS-187231CAS-184519
    #ST-22_CAS-187231CAS-184519,23_CAS-187231CAS-184519
    #UT-
    #FeatureID-ACAUTOCAS-11334
Scenario Outline: ACAUTOCAS-17716: Create and Approve Commodity using commodity type as <commodityType> filling <MandatoryOrAll> fields
    And user navigates to Product Master
    And user creates new Product For "<commodityType>"
    And user logout from CAS
    And user logged in "Common Masters" with username and password present in "LoginDetailsCAS.xlsx" under "ChildBrowserSheet" and 0
    And user approves the Product
    And user navigates to Commodity Master Grid
    And user opens Commodity Master
    And user reads data from the excel file "<CommodityMasterWB>" under sheet "<CommodityMasterWB_SheetName>" and row <CommodityMasterWB_SheetName_rowNum>
    And user fills "<MandatoryOrAll>" fields in Commodity Master with Commodity as "<commodityType>"
    When user clicks on Save and Request Approval  button in Commodity Master
    And user logout from CAS
    And user logged in "Common Masters" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user navigates to Commodity Master Grid
    And user approve this Commodity
    Then Commodity Master Record Should be saved with Status "Approved"
    Examples:
      | commodityType | MandatoryOrAll | CommodityMasterWB     | CommodityMasterWB_SheetName | CommodityMasterWB_SheetName_rowNum |
      | Bonds         | Mandatory      | commodity_master.xlsx | home                        | 0                                  |
      | Bonds         | All            | commodity_master.xlsx | home                        | 0                                  |
      | Shares        | Mandatory      | commodity_master.xlsx | home                        | 1                                  |
      | Shares        | All            | commodity_master.xlsx | home                        | 1                                  |
      | Metal         | Mandatory      | commodity_master.xlsx | home                        | 2                                  |
      | Metal         | All            | commodity_master.xlsx | home                        | 2                                  |

    #PQM-33_CAS-187231,34_CAS-187231
    #PMG-7_CAS-187231CAS-184519
    #ST-22_CAS-187231CAS-184519,23_CAS-187231CAS-184519
    #UT-
    #FeatureID-ACAUTOCAS-11334
Scenario Outline: ACAUTOCAS-17717: Create and Approve from Header Commodity using commodity type as <commodityType> filling <MandatoryOrAll> fields
    And user navigates to Product Master
    And user creates new Product For "<commodityType>"
    And user logout from CAS
    And user logged in "Common Masters" with username and password present in "LoginDetailsCAS.xlsx" under "ChildBrowserSheet" and 0
    And user approves the Product
    And user navigates to Commodity Master Grid
    And user opens Commodity Master
    And user reads data from the excel file "<CommodityMasterWB>" under sheet "<CommodityMasterWB_SheetName>" and row <CommodityMasterWB_SheetName_rowNum>
    And user fills "<MandatoryOrAll>" fields in Commodity Master with Commodity as "<commodityType>"
    When user clicks on Save and Request Approval  button in Commodity Master
    And user logout from CAS
    And user logged in "Common Masters" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user navigates to Commodity Master Grid
    And user approve this Commodity using Approve Button above the Grid
    Then Commodity Master Record Should be saved with Status "Approved"
    Examples:
      | commodityType | MandatoryOrAll | CommodityMasterWB     | CommodityMasterWB_SheetName | CommodityMasterWB_SheetName_rowNum |
      | Bonds         | Mandatory      | commodity_master.xlsx | home                        | 0                                  |
      | Bonds         | All            | commodity_master.xlsx | home                        | 0                                  |
      | Shares        | Mandatory      | commodity_master.xlsx | home                        | 1                                  |
      | Shares        | All            | commodity_master.xlsx | home                        | 1                                  |
      | Metal         | Mandatory      | commodity_master.xlsx | home                        | 2                                  |
      | Metal         | All            | commodity_master.xlsx | home                        | 2                                  |

    #PQM-33_CAS-187231,34_CAS-187231
    #PMG-7_CAS-187231CAS-184519
    #ST-22_CAS-187231CAS-184519,23_CAS-187231CAS-184519
    #UT-
    #FeatureID-ACAUTOCAS-11334
Scenario Outline: ACAUTOCAS-17718: Create and Approve after Opening Commodity using commodity type as <commodityType> filling <MandatoryOrAll> fields
    And user navigates to Product Master
    And user creates new Product For "<commodityType>"
    And user logout from CAS
    And user logged in "Common Masters" with username and password present in "LoginDetailsCAS.xlsx" under "ChildBrowserSheet" and 0
    And user approves the Product
    And user navigates to Commodity Master Grid
    And user opens Commodity Master
    And user reads data from the excel file "<CommodityMasterWB>" under sheet "<CommodityMasterWB_SheetName>" and row <CommodityMasterWB_SheetName_rowNum>
    And user fills "<MandatoryOrAll>" fields in Commodity Master with Commodity as "<commodityType>"
    When user clicks on Save and Request Approval  button in Commodity Master
    And user logout from CAS
    And user logged in "Common Masters" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user navigates to Commodity Master Grid
    And user approve this Commodity using Approve Button after opening
    Then Commodity Master Record Should be saved with Status "Approved"
    Examples:
      | commodityType | MandatoryOrAll | CommodityMasterWB     | CommodityMasterWB_SheetName | CommodityMasterWB_SheetName_rowNum |
      | Bonds         | Mandatory      | commodity_master.xlsx | home                        | 0                                  |
      | Bonds         | All            | commodity_master.xlsx | home                        | 0                                  |
      | Shares        | Mandatory      | commodity_master.xlsx | home                        | 1                                  |
      | Shares        | All            | commodity_master.xlsx | home                        | 1                                  |
      | Metal         | Mandatory      | commodity_master.xlsx | home                        | 2                                  |
      | Metal         | All            | commodity_master.xlsx | home                        | 2                                  |


    #PQM-31_CAS-187231,41_CAS-187231,13_CAS-187231,23_CAS-187231,21_CAS-187231
    #PMG-2_CAS-187231CAS-184519,8_CAS-187231CAS-184519,10_CAS-187231CAS-184519,28_CAS-187231CAS-184519
    #ST-34_CAS-187231CAS-184519
    #UT-
    #FeatureID-ACAUTOCAS-11334
  Scenario: ACAUTOCAS-14398:  Unable to create Commodity Master with Existing Commodity Code
    And user navigates to Commodity Master Grid
    And user reads data from the excel file "commodity_master.xlsx" under sheet "home" and row 0
    And user opens Commodity Master
    When user enters Existing Commodity Code along with Mandatory Fields
    And user save Commodity Master
    Then Proper Error Message should be shown in Commodity Master

    #PQM-46_CAS-187231
    #PMG-
    #ST-
    #UT-
    #FeatureID-ACAUTOCAS-11334
  Scenario: ACAUTOCAS-14399:  Create new record after clicking on create another record after this checkbox
    And user navigates to Commodity Master Grid
    And user reads data from the excel file "commodity_master.xlsx" under sheet "home" and row 0
    And user opens Commodity Master
    And user fills "Mandatory" fields in Commodity Master with Commodity as "Bonds"
    When user clicks on create another record after this one checkbox
    And user clicks on save button in Commodity Master
    Then For new record fields should be present blank to add new data


    #PQM-
    #PMG-
    #ST-
    #UT-
    #FeatureID-ACAUTOCAS-11334
  Scenario Outline: ACAUTOCAS-14400:  Cancel a commodity using <commodityType> as <MandatoryOrAll>
    And user navigates to Commodity Master Grid
    And user reads data from the excel file "<CommodityMasterWB>" under sheet "<CommodityMasterWB_SheetName>" and row <CommodityMasterWB_SheetName_rowNum>
    And user opens Commodity Master
    And user fills "<MandatoryOrAll>" fields in Commodity Master with Commodity as "<commodityType>"
    When user clicks on cancel button in Commodity Master
    Then Commodity Master Should not be created
    Examples:
      | commodityType | MandatoryOrAll | CommodityMasterWB     | CommodityMasterWB_SheetName | CommodityMasterWB_SheetName_rowNum |
      | Bonds         | Mandatory      | commodity_master.xlsx | home                        | 0                                  |
      | Bonds         | All            | commodity_master.xlsx | home                        | 0                                  |
      | Shares        | Mandatory      | commodity_master.xlsx | home                        | 1                                  |
      | Shares        | All            | commodity_master.xlsx | home                        | 1                                  |
      | Metal         | Mandatory      | commodity_master.xlsx | home                        | 2                                  |
      | Metal         | All            | commodity_master.xlsx | home                        | 2                                  |



    #PQM-1_CAS-187231
    #PMG-
    #ST-
    #UT-
    #FeatureID-ACAUTOCAS-11334
  Scenario Outline: ACAUTOCAS-14401:  Create a Role with Authority <authority>
    And user navigates to role master
    And user opens Role Master
    And user reads data from the excel file "commodity_master.xlsx" under sheet "home" and row 0
    And user fills mandatory fields in Role Master
    When user assign "<authority>" to user
    Then Role should be created with proper Message
    Examples:
      | authority               |
      | VIEW_COMMIDITYMASTER    |
      | MAKER_COMMIDITYMASTER   |
      | CHECKER_COMMIDITYMASTER |



    #PQM-36_CAS-187231,
    #PMG-
    #ST-29_CAS-187231CAS-184519
    #UT-
    #FeatureID-ACAUTOCAS-11334
  Scenario: ACAUTOCAS-14402:  Open Record By Clicking On Hyperlink
    And user navigates to Commodity Master Grid
    And user reads data from the excel file "commodity_master.xlsx" under sheet "home" and row 14
    When user search "Commodity Code" in Commodity Master Grid
    And user open the Commodity in Edit Mode
    Then Record should be open in view mode System should not allow to edit the record

    #PQM-38_CAS-187231
    #PMG-
    #ST-35_CAS-187231CAS-184519
    #UT-
    #FeatureID-ACAUTOCAS-11334
  Scenario: ACAUTOCAS-14403:  Validate History In Activity in Commodity Master
    And user navigates to Commodity Master Grid
    And user reads data from the excel file "commodity_master.xlsx" under sheet "home" and row 14
    When user search "Commodity Code" in Commodity Master Grid
    And user open the Commodity in Edit Mode
    And user opens Activity Tab in Commodity Master
    Then History should be maintain in audit trail and in activies


    #PQM-45_CAS-187231,41_CAS-1885568
    #PMG-
    #ST-25_CAS-187231CAS-184519
    #UT-
   #FeatureID-ACAUTOCAS-11334
Scenario Outline: ACAUTOCAS-17719: Create and Reject a Commodity with Commodity Type as <commodityType>
    And user navigates to Product Master
    And user creates new Product For "<commodityType>"
    And user logout from CAS
    And user logged in "Common Masters" with username and password present in "LoginDetailsCAS.xlsx" under "ChildBrowserSheet" and 0
    And user approves the Product
    And user navigates to Commodity Master Grid
    And user opens Commodity Master
    And user reads data from the excel file "<CommodityMasterWB>" under sheet "<CommodityMasterWB_SheetName>" and row <CommodityMasterWB_SheetName_rowNum>
    And user fills "<MandatoryOrAll>" fields in Commodity Master with Commodity as "<commodityType>"
    When user clicks on Save and Request Approval  button in Commodity Master
    And user logout from CAS
    And user logged in "Common Masters" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user navigates to Commodity Master Grid
    And user Reject this Commodity
    Then The Commodity should not be Present in Grid
    Examples:
      | commodityType | MandatoryOrAll | CommodityMasterWB     | CommodityMasterWB_SheetName | CommodityMasterWB_SheetName_rowNum |
      | Bonds         | Mandatory      | commodity_master.xlsx | home                        | 0                                  |
      | Bonds         | All            | commodity_master.xlsx | home                        | 0                                  |
      | Shares        | Mandatory      | commodity_master.xlsx | home                        | 1                                  |
      | Shares        | All            | commodity_master.xlsx | home                        | 1                                  |
      | Metal         | Mandatory      | commodity_master.xlsx | home                        | 2                                  |
      | Metal         | All            | commodity_master.xlsx | home                        | 2                                  |

    #PQM-45_CAS-187231,41_CAS-1885568
    #PMG-
    #ST-25_CAS-187231CAS-184519
    #UT-
   #FeatureID-ACAUTOCAS-11334
Scenario Outline: ACAUTOCAS-17720: Create and Reject from Header a Commodity with Commodity Type as <commodityType>
    And user navigates to Product Master
    And user creates new Product For "<commodityType>"
    And user logout from CAS
    And user logged in "Common Masters" with username and password present in "LoginDetailsCAS.xlsx" under "ChildBrowserSheet" and 0
    And user approves the Product
    And user navigates to Commodity Master Grid
    And user opens Commodity Master
    And user reads data from the excel file "<CommodityMasterWB>" under sheet "<CommodityMasterWB_SheetName>" and row <CommodityMasterWB_SheetName_rowNum>
    And user fills "<MandatoryOrAll>" fields in Commodity Master with Commodity as "<commodityType>"
    When user clicks on Save and Request Approval  button in Commodity Master
    And user logout from CAS
    And user logged in "Common Masters" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user navigates to Commodity Master Grid
    And user Reject this Commodity using Approve Button above the Grid
    Then The Commodity should not be Present in Grid
    Examples:
      | commodityType | MandatoryOrAll | CommodityMasterWB     | CommodityMasterWB_SheetName | CommodityMasterWB_SheetName_rowNum |
      | Bonds         | Mandatory      | commodity_master.xlsx | home                        | 0                                  |
      | Bonds         | All            | commodity_master.xlsx | home                        | 0                                  |
      | Shares        | Mandatory      | commodity_master.xlsx | home                        | 1                                  |
      | Shares        | All            | commodity_master.xlsx | home                        | 1                                  |
      | Metal         | Mandatory      | commodity_master.xlsx | home                        | 2                                  |
      | Metal         | All            | commodity_master.xlsx | home                        | 2                                  |

    #PQM-45_CAS-187231,41_CAS-1885568
    #PMG-
    #ST-25_CAS-187231CAS-184519
    #UT-
   #FeatureID-ACAUTOCAS-11334
Scenario Outline: ACAUTOCAS-17721: Create and Reject Commodity after Opening with Commodity Type as <commodityType>
    And user navigates to Product Master
    And user creates new Product For "<commodityType>"
    And user logout from CAS
    And user logged in "Common Masters" with username and password present in "LoginDetailsCAS.xlsx" under "ChildBrowserSheet" and 0
    And user approves the Product
    And user navigates to Commodity Master Grid
    And user opens Commodity Master
    And user reads data from the excel file "<CommodityMasterWB>" under sheet "<CommodityMasterWB_SheetName>" and row <CommodityMasterWB_SheetName_rowNum>
    And user fills "<MandatoryOrAll>" fields in Commodity Master with Commodity as "<commodityType>"
    When user clicks on Save and Request Approval  button in Commodity Master
    And user logout from CAS
    And user logged in "Common Masters" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user navigates to Commodity Master Grid
    And user Reject this Commodity using using Reject Button after opening
    Then The Commodity should not be Present in Grid
    Examples:
      | commodityType | MandatoryOrAll | CommodityMasterWB     | CommodityMasterWB_SheetName | CommodityMasterWB_SheetName_rowNum |
      | Bonds         | Mandatory      | commodity_master.xlsx | home                        | 0                                  |
      | Bonds         | All            | commodity_master.xlsx | home                        | 0                                  |
      | Shares        | Mandatory      | commodity_master.xlsx | home                        | 1                                  |
      | Shares        | All            | commodity_master.xlsx | home                        | 1                                  |
      | Metal         | Mandatory      | commodity_master.xlsx | home                        | 2                                  |
      | Metal         | All            | commodity_master.xlsx | home                        | 2                                  |


   #PQM-39_CAS-187231
   #PMG-
   #ST-28_CAS-187231CAS-184519
   #UT-
   #FeatureID-ACAUTOCAS-11334
Scenario: ACAUTOCAS-17722: Check History in Audit Trail after Editing Commodity Description an Existing Commodity
    And user navigates to Commodity Master Grid
    And user reads data from the excel file "commodity_master.xlsx" under sheet "home" and row 22
    And user open Existing Commodity
    And user update Commodity Description
    When user clicks on Save and Request Approval  button in Commodity Master
    And user logout from CAS
    And user logged in "Common Masters" with username and password present in "LoginDetailsCAS.xlsx" under "ChildBrowserSheet" and 0
    And user navigates to Commodity Master Grid
    And user approve this Commodity
    And user open Existing Commodity
    Then Audit trail data should be change according to editing

   #FeatureID-ACAUTOCAS-11334
Scenario: ACAUTOCAS-17723: Check History in Audit Trail after Editing Unit Price an Existing Commodity
    And user navigates to Commodity Master Grid
    And user reads data from the excel file "commodity_master.xlsx" under sheet "home" and row 23
    And user open Existing Commodity
    And user update Unit Price
    When user clicks on Save and Request Approval  button in Commodity Master
    And user logout from CAS
    And user logged in "Common Masters" with username and password present in "LoginDetailsCAS.xlsx" under "ChildBrowserSheet" and 0
    And user navigates to Commodity Master Grid
    And user approve this Commodity
    And user open Existing Commodity
    Then Audit trail data should be change according to editing

   #FeatureID-ACAUTOCAS-11334
Scenario: ACAUTOCAS-17724: Check History in Audit Trail after Editing Quote Date an Existing Commodity
    And user navigates to Commodity Master Grid
    And user reads data from the excel file "commodity_master.xlsx" under sheet "home" and row 24
    And user open Existing Commodity
    And user update Quote Date
    When user clicks on Save and Request Approval  button in Commodity Master
    And user logout from CAS
    And user logged in "Common Masters" with username and password present in "LoginDetailsCAS.xlsx" under "ChildBrowserSheet" and 0
    And user navigates to Commodity Master Grid
    And user approve this Commodity
    And user open Existing Commodity
    Then Audit trail data should be change according to editing

  #PQM-13_CAS-191764
  #FeatureID-ACAUTOCAS-11334
  Scenario Outline: ACAUTOCAS-14404:  Create a Commodity Draft using commodity type as <commodityType> for palladiumm
    And user navigates to Product Master
    And user creates new Product For "<commodityType>"
    And user logout from CAS
    And user logged in "Common Masters" with username and password present in "LoginDetailsCAS.xlsx" under "ChildBrowserSheet" and 0
    And user approves the Product
    And user navigates to Commodity Master Grid
    And user opens Commodity Master
    And user reads data from the excel file "<CommodityMasterWB>" under sheet "<CommodityMasterWB_SheetName>" and row <CommodityMasterWB_SheetName_rowNum>
    And user fills "<MandatoryOrAll>" fields in Commodity Master with Commodity as "<commodityType>"
    When user clicks on save button in Commodity Master
    Then Commodity Master Record Should be saved with Status "New,Saved As Draft"
    Examples:
      | commodityType | MandatoryOrAll | CommodityMasterWB     | CommodityMasterWB_SheetName | CommodityMasterWB_SheetName_rowNum |
      | Metal         | All            | commodity_master.xlsx | home                        | 20                                 |


  #PQM-1_CAS-195368
  #FeatureID-ACAUTOCAS-11334
  Scenario Outline: ACAUTOCAS-14405:  Create a Commodity Draft using commodity type as <commodityType> for silver
    And user navigates to Product Master
    And user creates new Product For "<commodityType>"
    And user logout from CAS
    And user logged in "Common Masters" with username and password present in "LoginDetailsCAS.xlsx" under "ChildBrowserSheet" and 0
    And user approves the Product
    And user navigates to Commodity Master Grid
    And user opens Commodity Master
    And user reads data from the excel file "<CommodityMasterWB>" under sheet "<CommodityMasterWB_SheetName>" and row <CommodityMasterWB_SheetName_rowNum>
    And user fills "<MandatoryOrAll>" fields in Commodity Master with Commodity as "<commodityType>"
    When user clicks on save button in Commodity Master
    Then Commodity Master Record Should be saved with Status "New,Saved As Draft"
    Examples:
      | commodityType | MandatoryOrAll | CommodityMasterWB     | CommodityMasterWB_SheetName | CommodityMasterWB_SheetName_rowNum |
      | Metal         | All            | commodity_master.xlsx | home                        | 21                                 |


  #FeatureID-ACAUTOCAS-11334
Scenario Outline: ACAUTOCAS-17725: Create a Commodity by Skipping mandatory fields using commodity type as <commodityType>
    And user navigates to Commodity Master Grid
    And user reads data from the excel file "<CommodityMasterWB>" under sheet "<CommodityMasterWB_SheetName>" and row <CommodityMasterWB_SheetName_rowNum>
    And user opens Commodity Master
    And user fills all fields and skipping "<fieldName>"
    When user clicks on save button for error validation in Commodity Master
    Then Proper Error Message should be there in pNotify for Commodity Master
    Examples:
      | commodityType | fieldName      | CommodityMasterWB     | CommodityMasterWB_SheetName | CommodityMasterWB_SheetName_rowNum |
      | Bonds         | Commodity Code | commodity_master.xlsx | combinations                | 0                                  |
      | Metals        | Commodity Code | commodity_master.xlsx | combinations                | 1                                  |
      | Shares        | Commodity Code | commodity_master.xlsx | combinations                | 2                                  |
      | Bonds         | Commodity Name | commodity_master.xlsx | combinations                | 3                                  |
      | Metals        | Commodity Name | commodity_master.xlsx | combinations                | 4                                  |
      | Shares        | Commodity Name | commodity_master.xlsx | combinations                | 5                                  |
      | Bonds         | Product Type   | commodity_master.xlsx | combinations                | 6                                  |
      | Metals        | Product Type   | commodity_master.xlsx | combinations                | 7                                  |
      | Shares        | Product Type   | commodity_master.xlsx | combinations                | 8                                  |
      | Bonds         | Commodity Type | commodity_master.xlsx | combinations                | 9                                  |
      | Metals        | Commodity Type | commodity_master.xlsx | combinations                | 10                                 |
      | Shares        | Commodity Type | commodity_master.xlsx | combinations                | 11                                 |
      | Bonds         | Unit Price     | commodity_master.xlsx | combinations                | 12                                 |
      | Metals        | Unit Price     | commodity_master.xlsx | combinations                | 13                                 |
      | Shares        | Unit Price     | commodity_master.xlsx | combinations                | 14                                 |
      | Bonds         | Product        | commodity_master.xlsx | combinations                | 15                                 |
      | Metals        | Product        | commodity_master.xlsx | combinations                | 16                                 |
      | Shares        | Product        | commodity_master.xlsx | combinations                | 17                                 |
      | Bonds         | Quote Date     | commodity_master.xlsx | combinations                | 18                                 |
      | Metals        | Quote Date     | commodity_master.xlsx | combinations                | 19                                 |
      | Shares        | Quote Date     | commodity_master.xlsx | combinations                | 20                                 |
