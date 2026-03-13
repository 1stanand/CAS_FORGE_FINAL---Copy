@Epic-PF_Bond_Base
@PQMStory
@AuthoredBy-aryan.jain
@ImplementedBy-aryan.jain
@Islamic
@Bonds
@ReleaseIslamicM3
@Release

Feature: Master For Bond Purchase

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0

#FeatureID-ACAUTOCAS-11341
#PQM-CAS-185568-28
  Scenario Outline: ACAUTOCAS-14487:  Remote call configuration master for Bond Purchase
    And user go to remote call configuration master
    When user search the "<Services>" in remote call configuration master
    Then "<Services>" should be visible on remote call configuration master
    Examples:
      | Services            |
      | BondPurchaseService |

#FeatureID-ACAUTOCAS-11341
#PQM-CAS-185568-31
  Scenario Outline: ACAUTOCAS-14488:  Bond purchase service success generic parameter should be visible
    And user logged in "Common Masters" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And navigates to seed Data
    When user search the "<Parameter>" in seed data master
    Then "<Parameter>" should be visible on seed data master
    Examples:
      | Parameter                     |
      | Bond Purchase Service Success |

#FeatureID-ACAUTOCAS-11341
#PQM-CAS-185568-6
  Scenario Outline: ACAUTOCAS-14489: create a new commodity master record with product is not mapped to bond as commodity
    And user logged in "Common Masters" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user navigates to Commodity Master Grid
    When user opens Commodity Master
    And user reads data from the excel file "<CommodityMasterWB>" under sheet "<CommodityMasterWB_SheetName>" and row <CommodityMasterWB_SheetName_rowNum>
    And user fills fields in Commodity Master except product type
    And user clicks on save button in Commodity Master
    Then user should not be able to save the record
    Examples:
      | CommodityMasterWB     | CommodityMasterWB_SheetName | CommodityMasterWB_SheetName_rowNum |
      | commodity_master.xlsx | home                        | 0                                  |

#FeatureID-ACAUTOCAS-11341
#PQM-CAS-185568-58
  Scenario Outline: ACAUTOCAS-14490: Commodity Master with Bond as Commodity is marked as Inactive
    And user logged in "Common Masters" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user navigates to Commodity Master Grid
    And user reads data from the excel file "<CommodityMasterWB>" under sheet "<CommodityMasterWB_SheetName>" and row <CommodityMasterWB_SheetName_rowNum>
    And user search and delete existing commodity
    When user opens Commodity Master
    And user fills fields in Commodity Master with Commodity as "<commodityType>" with status inactive
    When user clicks on save button in Commodity Master
    Then Commodity Master Should be saved as draft
    Examples:
      | commodityType | CommodityMasterWB     | CommodityMasterWB_SheetName | CommodityMasterWB_SheetName_rowNum |
      | Bonds         | commodity_master.xlsx | home                        | 0                                  |

#FeatureID-ACAUTOCAS-11341
#PQM-CAS-185568-20
  Scenario Outline: ACAUTOCAS-14491:  In event definition bond purchase event should be present
    And user go to event definition master
    When user search the "<Event>" in event definition master
    Then "<Event>" should be visible on event definition master
    Examples:
      | Event                      |
      | BOND_PURCHASE_SERVICE_TASK |

