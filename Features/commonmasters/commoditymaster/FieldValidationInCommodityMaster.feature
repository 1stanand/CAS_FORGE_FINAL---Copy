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
Feature: Field and Screen Validation In Commodity Master

  Background:
    Given user is on CAS Login Page
    And user logged in "Common Masters" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user navigates to Commodity Master Grid

    #PQM-12_CAS-187231,10_CAS-187231,11_CAS-187231,14_CAS-187231,15_CAS-187231,19_CAS-187231,18_CAS-187231,26_CAS-187231,27_CAS-187231,17_CAS-187231
    #PMG-1_CAS-187231CAS-184519,3_CAS-187231CAS-184519,4_CAS-187231CAS-184519,6_CAS-187231CAS-184519,13_CAS-187231CAS-184519,17_CAS-187231CAS-184519,23_CAS-187231CAS-184519,24_CAS-187231CAS-184519,26_CAS-187231CAS-184519
    #ST-39_CAS-187231CAS-184519,
    #UT-
    #FeatureID-ACAUTOCAS-11335
  Scenario Outline: ACAUTOCAS-14415:  Entering <Validity> <fieldName> with <validityReason> in Commodity Master
    And user reads data from the excel file "<CommodityMasterWB>" under sheet "<CommodityMasterWB_SheetName>" and row <CommodityMasterWB_SheetName_rowNum>
    And user opens Commodity Master
    When user fills "<Validity>" "<fieldName>" with "<validityReason>"
    Then "<fieldName>" "<Throws_notThrows>" after entering
    Examples:
      | Validity | validityReason                         | Throws_notThrows            | fieldName             | CommodityMasterWB     | CommodityMasterWB_SheetName | CommodityMasterWB_SheetName_rowNum |
      | InValid  | More Than 100 Characters               | Throws proper error message | Commodity Code        | commodity_master.xlsx | home                        | 0                                  |
      | InValid  | Special Characters                     | Throws proper error message | Commodity Code        | commodity_master.xlsx | home                        | 1                                  |
      | InValid  | 40 Characters with special characters  | Throws proper error message | Commodity Code        | commodity_master.xlsx | home                        | 2                                  |
      | Valid    | Alphanumeric                           | Does Not throws error       | Commodity Code        | commodity_master.xlsx | home                        | 3                                  |
      | Valid    | Special Characters                     | Does Not throws error       | Commodity Name        | commodity_master.xlsx | home                        | 4                                  |
      | Valid    | 100 Characters with special characters | Does Not throws error       | Commodity Name        | commodity_master.xlsx | home                        | 5                                  |
      | Valid    | Characters                             | Does Not throws error       | Commodity Name        | commodity_master.xlsx | home                        | 6                                  |
      | Valid    | Numbers                                | Does Not throws error       | Commodity Name        | commodity_master.xlsx | home                        | 7                                  |
      | Valid    | Multi Lingual                          | Does Not throws error       | Commodity Name        | commodity_master.xlsx | home                        | 8                                  |
      | Valid    | 400 Characters with special character  | Does Not throws error       | Commodity Description | commodity_master.xlsx | home                        | 9                                  |
      | Valid    | Character                              | Does Not throws error       | Commodity Description | commodity_master.xlsx | home                        | 6                                  |
      | Valid    | Alphabets                              | Does Not throws error       | Commodity Description | commodity_master.xlsx | home                        | 10                                 |
      | Valid    | Numbers                                | Does Not throws error       | Commodity Description | commodity_master.xlsx | home                        | 7                                  |
      | Valid    | Special Characters                     | Does Not throws error       | Commodity Description | commodity_master.xlsx | home                        | 4                                  |
      | InValid  | Upto 8 digits                          | Throws proper error message | Unit Price            | commodity_master.xlsx | home                        | 12                                 |
      | Valid    | Upto 7 digits                          | Does Not throws error       | Unit Price            | commodity_master.xlsx | home                        | 7                                  |

    #PQM-14_CAS-187231,
    #PMG-
    #ST-
    #UT-
    #FeatureID-ACAUTOCAS-11335
  Scenario: ACAUTOCAS-14416:  Validate the Character Count of Commodity Name
    And user reads data from the excel file "commodity_master.xlsx" under sheet "home" and row 11
    And user opens Commodity Master
    When user fills "Valid" "Commodity Name" with "200 Characters"
    Then "Commodity Name" should only take 100 Characters

    #PQM-22_CAS-187231
    #PMG-9_CAS-187231CAS-184519,11_CAS-187231CAS-184519
    #ST-16_CAS-187231CAS-184519
    #UT-
    #FeatureID-ACAUTOCAS-11335
  Scenario Outline: ACAUTOCAS-14417:  Validate the <metalType> on the Basis of Commodity Type as <commodityType> are <visibility>
    And user reads data from the excel file "commodity_master.xlsx" under sheet "home" and row 11
    And user opens Commodity Master
    When user selects Commodity as "<commodityType>"
    Then  "<metalType>" should be "<visibility>" in the DropDown after selecting Commodity Type as "<commodityType>"
    Examples:
      | commodityType | metalType | visibility  |
      | Metal         | PLATINUM  | Visible     |
      | Metal         | SILVER    | Visible     |
      | Metal         | STEEL     | Visible     |
      | Metal         | TITANIUM  | Visible     |
      | Bonds         | PLATINUM  | Not-visible |
      | Bonds         | SILVER    | Not-visible |
      | Bonds         | STEEL     | Not-visible |
      | Bonds         | TITANIUM  | Not-visible |
      | Shares        | PLATINUM  | Not-visible |
      | Shares        | SILVER    | Not-visible |
      | Shares        | STEEL     | Not-visible |
      | Shares        | TITANIUM  | Not-visible |

    #PQM-24_CAS-187231
    #PMG-12_CAS-187231CAS-184519,14_CAS-187231CAS-184519
    #ST-
    #UT-
    #FeatureID-ACAUTOCAS-11335
  @31MarFix
  Scenario Outline: ACAUTOCAS-14418:  Unit Price should be <mandatoryOrNonMandatory> on selecting commodity type as <commodityType>
    And user reads data from the excel file "<CommodityMasterWB>" under sheet "<CommodityMasterWB_SheetName>" and row <CommodityMasterWB_SheetName_rowNum>
    And user search and delete existing commodity
    And user opens Commodity Master
    And user fills all Fields except Unit Price and Commodity Type as "<commodityType>"
    When user save Commodity Master
    Then Unit Price should be "<mandatoryOrNonMandatory>"
    Examples:
      | mandatoryOrNonMandatory | commodityType | CommodityMasterWB     | CommodityMasterWB_SheetName | CommodityMasterWB_SheetName_rowNum |
      | Mandatory               | Bonds         | commodity_master.xlsx | home                        | 0                                  |
      | Non-Mandatory           | Metal         | commodity_master.xlsx | home                        | 2                                  |
      | Non-Mandatory           | Shares        | commodity_master.xlsx | home                        | 1                                  |

    #PQM-
    #PMG-
    #ST-17_CAS-187231CAS-184519
    #UT-
    #FeatureID-ACAUTOCAS-11335
  Scenario: ACAUTOCAS-14419:  Conventional Product types should not be visible in the Product Type dropdown of Commodity Master
    And user opens Commodity Master
    When user selects the Product Type
    Then Only Islamic Finance product type Personal Finance should be visible

    #PQM-
    #PMG-20_CAS-187231CAS-184519,27_CAS-187231CAS-184519,29_CAS-187231CAS-184519
    #ST-19_CAS-187231CAS-184519,32_CAS-187231
    #UT-
    #FeatureID-ACAUTOCAS-11335
  Scenario: ACAUTOCAS-14420:  Verify Products In Commodity Master Post Selection Product Type As Personal Finance
    And user reads data from the excel file "commodity_master.xlsx" under sheet "home" and row 3
    And user opens Commodity Master
    And user selects Product Type as Personal Finance
    When user opens list of Products in Commodity Master
    And user navigates to Product Master
    Then The product should be present in Product Master as Personal Finance

    #PQM-29_CAS-187231,30_CAS-187231
    #PMG-
    #ST-
    #UT-
    #FeatureID-ACAUTOCAS-11335
  Scenario Outline: ACAUTOCAS-14421:  Quote Date as <date> can be current or past date but not future date <throwsNotThrows>
    And user opens Commodity Master
    When user enters Quote Date as "<date>"
    Then Quote Date should "<throwsNotThrows>"
    Examples:
      | date         | throwsNotThrows       |
      | Current Date | Does Not throws error |
      | Past Date    | Does Not throws error |
      | Future Date  | Throws Error          |

    #PQM-
    #PMG-
    #ST-
    #UT-
    #FeatureID-ACAUTOCAS-11335
  Scenario Outline: ACAUTOCAS-14422:  Unable to Search <inactiveOrUnapproved> product
    And user reads data from the excel file "<CommodityMasterWB>" under sheet "<CommodityMasterWB_SheetName>" and row <CommodityMasterWB_SheetName_rowNum>
    And user opens Commodity Master
    And user selects Product Type as Personal Finance
    When user enters "<inactiveOrUnapproved>" product in master
    Then Proper error should be shown
    Examples:
      | inactiveOrUnapproved | CommodityMasterWB     | CommodityMasterWB_SheetName | CommodityMasterWB_SheetName_rowNum |
      | Inactive             | commodity_master.xlsx | home                        | 4                                  |
      | Unapproved           | commodity_master.xlsx | home                        | 5                                  |

    #PQM-37_CAS-187231
    #PMG-22_CAS-187231CAS-184519
    #ST-
    #UT-
    #FeatureID-ACAUTOCAS-11335
  Scenario Outline: ACAUTOCAS-14423:  <fieldName> Should not be Editable Post Approval
    And user reads data from the excel file "commodity_master.xlsx" under sheet "home" and row 3
    And user opens Approved Commodity in Commodity Master
    When user tries to edit the "<fieldName>"
    Then The "<fieldName>" should be non editable
    Examples:
      | fieldName      |
      | Commodity Code |
      | Product Type   |
      | Product        |

    #PQM-49_CAS-187231
    #PMG-
    #ST-32_CAS-187231CAS-184519
    #UT-
    #FeatureID-ACAUTOCAS-11335
  Scenario: ACAUTOCAS-14424:  Verify Mapped Dynamic Form Present in Commodity Master
    When user opens Commodity Master
    Then Dynamic Form Should be present


    #Commenting because these fields are removed->CAS-207791
    #PQM-28_CAS-187231
    #PMG-16_CAS-187231CAS-184519
    #ST-44_CAS-187231CAS-184519,43_CAS-187231CAS-184519,42_CAS-187231CAS-184519
    #UT-
    #FeatureID-ACAUTOCAS-11335
#  Scenario Outline: ACAUTOCAS-14425:  <fieldName> should be Mandatory for Commodity Type as <commodityType>
#    And user opens Commodity Master
#    When user selects Commodity as "<commodityType>"
#    Then "<fieldName>" should be "<mandatoryNonmandatory>" on Commodity Master
#
#    Examples:
#      | fieldName              | commodityType | mandatoryNonmandatory |
#      | Commodity Hold (Hours) | Bonds         | Non-Mandatory         |
#      | Commodity Hold (Mins)  | Bonds         | Non-Mandatory         |
#      | Commodity Hold (Hours) | Shares        | Non-Mandatory         |
#      | Commodity Hold (Mins)  | Shares        | Non-Mandatory         |
#      | Commodity Hold (Hours) | Metal         | Non-Mandatory         |
#      | Commodity Hold (Mins)  | Metal         | Non-Mandatory         |

    #PQM-
    #PMG-
    #ST-20_CAS-187231CAS-184519
    #UT-
    #FeatureID-ACAUTOCAS-11335
  Scenario: ACAUTOCAS-14426:  User clicks on Save Button without filling Mandatory Fields
    And user reads data from the excel file "commodity_master.xlsx" under sheet "home" and row 3
    And user opens Commodity Master
    When user clicks on save button in Commodity Master
    Then Mandatory Fields Should be Highlighted

    #PQM-20_CAS-187231
    #PMG-18_CAS-187231CAS-184519
    #ST-15_CAS-187231CAS-184519
    #UT-
    #FeatureID-ACAUTOCAS-11335
  Scenario Outline: ACAUTOCAS-14427:  <commodityType> should be Present in Commodity Type Drop Down
    When user opens Commodity Master
    Then "<commodityType>" should be Present in Commodity Master Drop Down
    Examples:
      | commodityType |
      | Bonds         |
      | Metal         |
      | Shares        |

    #PQM-
    #PMG-
    #ST-14_CAS-187231CAS-184519
    #UT-
    #FeatureID-ACAUTOCAS-11335
  Scenario: ACAUTOCAS-14428:  Validate the Visibility of Help Icon
    When user opens Commodity Master
    Then Help icon should be visible in header

    #PQM-9_CAS-187231
    #PMG-
    #ST-8_CAS-187231CAS-184519,12_CAS-187231CAS-184519,13_CAS-187231CAS-184519
    #UT-
    #FeatureID-ACAUTOCAS-11335
  Scenario: ACAUTOCAS-14429:  Validate the functionality of Required Button
    And user opens Commodity Master
    When user clicks on Required Button
    Then Only mandatory fields should be visible
      | Commodity Code |
      | Commodity Name |
      | Commodity Type |
      | Product Type   |
      | Product        |

    #PQM-42_CAS-187231
    #PMG-
    #ST-
    #UT-
    #FeatureID-ACAUTOCAS-11335
  Scenario Outline: ACAUTOCAS-14430:  On Selection of Status as <status> <dependentFieldName> will Behave as <behaviour> at Commodity Master
    And user reads data from the excel file "commodity_master.xlsx" under sheet "home" and row 8
    And user search a Commodity In Grid
    And user open the Commodity in Edit Mode
    When user change the Status as "<status>"
    Then "<dependentFieldName>" should be "<behaviour>" at Commodity Master
    Examples:
      | status   | dependentFieldName | behaviour |
      | Inactive | Inactive Reason    | Displayed |
      | Inactive | Description        | Displayed |


    #PQM-43_CAS-187231
    #PMG-
    #ST-
    #UT-
    #FeatureID-ACAUTOCAS-11335
  Scenario: ACAUTOCAS-14431:  Select Multiple Other Reason with same Description
    And user reads data from the excel file "commodity_master.xlsx" under sheet "home" and row 8
    And user opens created Commodity
    When user selects Multiple Other Reason
    Then System should allow to add multiple others same reasons


   #PQM-43_CAS-187231
    #PMG-15_CAS-187231CAS-184519
    #ST-
    #UT-
    #FeatureID-ACAUTOCAS-11335
  Scenario Outline: ACAUTOCAS-14432:  Check fields saved after creation Commodity as <commodityType>
    And user reads data from the excel file "<CommodityMasterWB>" under sheet "<CommodityMasterWB_SheetName>" and row <CommodityMasterWB_SheetName_rowNum>
    And user search and delete existing commodity
    And user opens Commodity Master
    And user fills "NonMandatory" fields in Commodity Master with Commodity as "<commodityType>"
    And user clicks on save button in Commodity Master
    And user search created Commodity In Grid
    When user open the Commodity in Edit Mode
    Then fields should be saved
      | Commodity Type        |
      | Unit Price            |
      | Commodity Code        |
      | Commodity Name        |
      | Commodity Description |
      | Product               |
    Examples:
      | commodityType | CommodityMasterWB     | CommodityMasterWB_SheetName | CommodityMasterWB_SheetName_rowNum |
      | Bonds         | commodity_master.xlsx | home                        | 0                                  |
      | Shares        | commodity_master.xlsx | home                        | 1                                  |
      | Metal         | commodity_master.xlsx | home                        | 2                                  |

    #PQM-
    #PMG-
    #ST-6_CAS-187231CAS-184519,33_CAS-187231CAS-184519
    #UT-
    #FeatureID-ACAUTOCAS-11335
  Scenario Outline: ACAUTOCAS-14433:  <fieldName> should be visible in Commodity Master
    When user opens Commodity Master
    Then "<fieldName>" should be visible
    Examples:
      | fieldName             |
      | Commodity Code        |
      | Commodity Name        |
      | CommodityType         |
      | Unit Price            |
      | Commodity Description |
      | Product Type          |
      | Product               |
      | Quote Date            |
      | Online                |
      | Offline               |
      | Active                |
      | Inactive              |

    #PQM-
    #PMG-
    #ST-9_CAS-187231CAS-184519
    #UT-
    #FeatureID-ACAUTOCAS-11335
  Scenario Outline: ACAUTOCAS-14434:  Check ToolTip functionality for <fieldName>
    When user opens Commodity Master
    Then Tooltip should work for "<fieldName>"
    Examples:
      | fieldName             |
      | Commodity Code        |
      | Commodity Name        |
      | Commodity Type        |
      | Unit Price            |
      | Commodity Description |
      | Product Type(div)     |
      | Product               |

    #PQM-
    #PMG-
    #ST-10_CAS-187231CAS-184519
    #UT-
    #FeatureID-ACAUTOCAS-11335
  Scenario Outline: ACAUTOCAS-14435:  Check PlaceHolders for <fieldName>
    When user opens Commodity Master
    Then PlaceHolder should be available for "<fieldName>"
    Examples:
      | fieldName             |
      | Commodity Code        |
      | Commodity Name        |
      | Unit Price            |
      | Commodity Description |
      | Product               |

    #PQM-
    #PMG-
    #ST-
    #UT-
    #FeatureID-ACAUTOCAS-11335
  Scenario: ACAUTOCAS-14436:  Check Metal Type on selecting Commodity as Metal
    And user opens Commodity Master
    When user selects Commodity as "Metal"
    Then Metal Type should be visible

    #PQM-
    #PMG-
    #ST-11_CAS-187231CAS-184519
    #UT-
    #FeatureID-ACAUTOCAS-11335
  Scenario: ACAUTOCAS-14437:  Unit Price Currency should be default as Base Currency
    When user opens Commodity Master
    Then Unit Price should be default as Base Currency

    #PQM-
    #PMG-
    #ST-41_CAS-187231CAS-184519
    #UT-
    #FeatureID-ACAUTOCAS-11335
  Scenario: ACAUTOCAS-14438:  On Selection of Commodity Type as Metal Metal Type should become Mandatory
    And user reads data from the excel file "commodity_master.xlsx" under sheet "home" and row 10
    And user opens Commodity Master
    And user fills "Mandatory" fields in Commodity Master with Commodity as "Metal"
    When user save Commodity Master
    Then Metal Type should become Mandatory

  #FeatureID-ACAUTOCAS-11335
Scenario Outline: ACAUTOCAS-17726: Check Special Character <CharacterName> Individually for <fieldName> in Commodity Master
    And user opens Commodity Master
    And user reads data from the excel file "commodity_master.xlsx" under sheet "special_characters" and row <inputRowNum>
    When user fills "<Validity>" "<fieldName>" with "<validityReason>"
    And user reads data from the excel file "commodity_master.xlsx" under sheet "special_characters" and row <errorRowNum>
    Then "<fieldName>" "Throws proper error message" after entering
    Examples:
      | fieldName      | CharacterName        | inputRowNum | Validity | validityReason    | errorRowNum |
      | Commodity Code | Full stop            | 0           | Invalid  | Special Character | 0           |
      | Commodity Code | Comma                | 1           | Invalid  | Special Character | 0           |
      | Commodity Code | Exclamation mark     | 2           | Invalid  | Special Character | 0           |
      | Commodity Code | Double quote         | 3           | Invalid  | Special Character | 0           |
      | Commodity Code | Hash                 | 4           | Invalid  | Special Character | 0           |
      | Commodity Code | Dollar               | 5           | Invalid  | Special Character | 0           |
      | Commodity Code | Percent              | 6           | Invalid  | Special Character | 0           |
      | Commodity Code | Ampersand            | 7           | Invalid  | Special Character | 0           |
      | Commodity Code | Apostrophe           | 8           | Invalid  | Special Character | 0           |
      | Commodity Code | Left parenthesis     | 9           | Invalid  | Special Character | 0           |
      | Commodity Code | Right parenthesis    | 10          | Invalid  | Special Character | 0           |
      | Commodity Code | Asterisk             | 11          | Invalid  | Special Character | 0           |
      | Commodity Code | Plus                 | 12          | Invalid  | Special Character | 0           |
      | Commodity Code | Hyphen               | 13          | Invalid  | Special Character | 0           |
      | Commodity Code | Forward slash        | 14          | Invalid  | Special Character | 0           |
      | Commodity Code | Colon                | 15          | Invalid  | Special Character | 0           |
      | Commodity Code | Semicolon            | 16          | Invalid  | Special Character | 0           |
      | Commodity Code | Less than            | 17          | Invalid  | Special Character | 0           |
      | Commodity Code | Equal                | 18          | Invalid  | Special Character | 0           |
      | Commodity Code | Greater than         | 19          | Invalid  | Special Character | 0           |
      | Commodity Code | Question mark        | 20          | Invalid  | Special Character | 0           |
      | Commodity Code | At                   | 21          | Invalid  | Special Character | 0           |
      | Commodity Code | Left square bracket  | 22          | Invalid  | Special Character | 0           |
      | Commodity Code | Backslash            | 23          | Invalid  | Special Character | 0           |
      | Commodity Code | Right square bracket | 24          | Invalid  | Special Character | 0           |
      | Commodity Code | Caret                | 25          | Invalid  | Special Character | 0           |
      | Commodity Code | Grave accent         | 27          | Invalid  | Special Character | 0           |
      | Commodity Code | Left curly brace     | 28          | Invalid  | Special Character | 0           |
      | Commodity Code | Vertical bar         | 29          | Invalid  | Special Character | 0           |
      | Commodity Code | Right curly brace    | 30          | Invalid  | Special Character | 0           |
      | Commodity Code | Tilde                | 31          | Invalid  | Special Character | 0           |
      | Unit Price     | Comma                | 1           | Invalid  | Special Character | 1           |
      | Unit Price     | Exclamation mark     | 2           | Invalid  | Special Character | 1           |
      | Unit Price     | Double quote         | 3           | Invalid  | Special Character | 1           |
      | Unit Price     | Hash                 | 4           | Invalid  | Special Character | 1           |
      | Unit Price     | Dollar               | 5           | Invalid  | Special Character | 1           |
      | Unit Price     | Percent              | 6           | Invalid  | Special Character | 1           |
      | Unit Price     | Ampersand            | 7           | Invalid  | Special Character | 1           |
      | Unit Price     | Apostrophe           | 8           | Invalid  | Special Character | 1           |
      | Unit Price     | Left parenthesis     | 9           | Invalid  | Special Character | 1           |
      | Unit Price     | Right parenthesis    | 10          | Invalid  | Special Character | 1           |
      | Unit Price     | Asterisk             | 11          | Invalid  | Special Character | 1           |
      | Unit Price     | Plus                 | 12          | Invalid  | Special Character | 1           |
      | Unit Price     | Hyphen               | 13          | Invalid  | Special Character | 2           |
      | Unit Price     | Forward slash        | 14          | Invalid  | Special Character | 1           |
      | Unit Price     | Colon                | 15          | Invalid  | Special Character | 1           |
      | Unit Price     | Semicolon            | 16          | Invalid  | Special Character | 1           |
      | Unit Price     | Less than            | 17          | Invalid  | Special Character | 1           |
      | Unit Price     | Equal                | 18          | Invalid  | Special Character | 1           |
      | Unit Price     | Greater than         | 19          | Invalid  | Special Character | 1           |
      | Unit Price     | Question mark        | 20          | Invalid  | Special Character | 1           |
      | Unit Price     | At                   | 21          | Invalid  | Special Character | 1           |
      | Unit Price     | Left square bracket  | 22          | Invalid  | Special Character | 1           |
      | Unit Price     | Backslash            | 23          | Invalid  | Special Character | 1           |
      | Unit Price     | Right square bracket | 24          | Invalid  | Special Character | 1           |
      | Unit Price     | Caret                | 25          | Invalid  | Special Character | 1           |
      | Unit Price     | Underscore           | 26          | Invalid  | Special Character | 1           |
      | Unit Price     | Grave accent         | 27          | Invalid  | Special Character | 1           |
      | Unit Price     | Left curly brace     | 28          | Invalid  | Special Character | 1           |
      | Unit Price     | Vertical bar         | 29          | Invalid  | Special Character | 1           |
      | Unit Price     | Right curly brace    | 30          | Invalid  | Special Character | 1           |
      | Unit Price     | Tilde                | 31          | Invalid  | Special Character | 1           |
