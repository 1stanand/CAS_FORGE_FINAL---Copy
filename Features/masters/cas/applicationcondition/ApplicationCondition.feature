@Epic-Conditions
@PQMStory
@AuthoredBy-yash.sharma
@ImplementedBy-yash.sharma
@Release
@Islamic
@26MarFix
Feature: Security Conditions-Handle security conditions (Masters)

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0

      #FeatureID-ACAUTOCAS-15332
Scenario Outline: ACAUTOCAS-18103: Validate ToolTip Functionality in Application Condition Master
    And user navigates to Application condition master
    When user clicks on Create Application Condition Master
    Then tooltip should be visible for "<fieldName>" in Application Condition
    Examples:
      | fieldName          |
      | Internal Condition |
      | Standard Condition |
      | Special Condition  |
      | Security Condition |

    #FeatureID-ACAUTOCAS-11335
Scenario Outline: ACAUTOCAS-18104: Check Special Character <CharacterName> Individually for <fieldName> in Application Condition Master
    And user navigates to Application condition master
    When user clicks on Create Application Condition Master
    And user reads data from the excel file "application_condition.xlsx" under sheet "special_characters" and row <inputRowNum>
    When user fills Special Characters in Application Condition Code
    And user reads data from the excel file "application_condition.xlsx" under sheet "special_characters" and row <errorRowNum>
    Then "<fieldName>" "Throws proper error message" after entering
    Examples:
      | fieldName      | CharacterName        | inputRowNum | Validity | validityReason    | errorRowNum |
      | Condition Code | Full stop            | 0           | Invalid  | Special Character | 0           |
      | Condition Code | Comma                | 1           | Invalid  | Special Character | 0           |
      | Condition Code | Exclamation mark     | 2           | Invalid  | Special Character | 0           |
      | Condition Code | Double quote         | 3           | Invalid  | Special Character | 0           |
      | Condition Code | Hash                 | 4           | Invalid  | Special Character | 0           |
      | Condition Code | Dollar               | 5           | Invalid  | Special Character | 0           |
      | Condition Code | Percent              | 6           | Invalid  | Special Character | 0           |
      | Condition Code | Ampersand            | 7           | Invalid  | Special Character | 0           |
      | Condition Code | Apostrophe           | 8           | Invalid  | Special Character | 0           |
      | Condition Code | Left parenthesis     | 9           | Invalid  | Special Character | 0           |
      | Condition Code | Right parenthesis    | 10          | Invalid  | Special Character | 0           |
      | Condition Code | Asterisk             | 11          | Invalid  | Special Character | 0           |
      | Condition Code | Plus                 | 12          | Invalid  | Special Character | 0           |
      | Condition Code | Hyphen               | 13          | Invalid  | Special Character | 0           |
      | Condition Code | Forward slash        | 14          | Invalid  | Special Character | 0           |
      | Condition Code | Colon                | 15          | Invalid  | Special Character | 0           |
      | Condition Code | Semicolon            | 16          | Invalid  | Special Character | 0           |
      | Condition Code | Less than            | 17          | Invalid  | Special Character | 0           |
      | Condition Code | Equal                | 18          | Invalid  | Special Character | 0           |
      | Condition Code | Greater than         | 19          | Invalid  | Special Character | 0           |
      | Condition Code | Question mark        | 20          | Invalid  | Special Character | 0           |
      | Condition Code | At                   | 21          | Invalid  | Special Character | 0           |
      | Condition Code | Left square bracket  | 22          | Invalid  | Special Character | 0           |
      | Condition Code | Backslash            | 23          | Invalid  | Special Character | 0           |
      | Condition Code | Right square bracket | 24          | Invalid  | Special Character | 0           |
      | Condition Code | Caret                | 25          | Invalid  | Special Character | 0           |
      | Condition Code | Grave accent         | 27          | Invalid  | Special Character | 0           |
      | Condition Code | Left curly brace     | 28          | Invalid  | Special Character | 0           |
      | Condition Code | Vertical bar         | 29          | Invalid  | Special Character | 0           |
      | Condition Code | Right curly brace    | 30          | Invalid  | Special Character | 0           |
      | Condition Code | Tilde                | 31          | Invalid  | Special Character | 0           |

    #PQM:CAS-197579_1
  #FeatureID-ACAUTOCAS-15332
  Scenario: ACAUTOCAS-16027: Validate Security conditions checkbox in Create Application condition master
    And user navigates to Application condition master
    When user clicks on Create Application Condition Master
    Then checkbox for Security conditions is visible

  #PQM:CAS-197579_2
  @IslamicSanity
  #FeatureID-ACAUTOCAS-15332
  Scenario: ACAUTOCAS-16028: Validate user clicks Security condition checkbox in Application condition master
    And user navigates to Application condition master
    And user clicks on Create Application Condition Master
    And user selects all checkboxes except "Security Condition"
    When user selects "Security Condition" checkbox
    Then Other checkboxes should gets deselected
      | Internal Condition |
      | Standard Condition |
      | Special Condition  |

  #FeatureID-ACAUTOCAS-15332
  Scenario Outline: ACAUTOCAS-16029: Validate dropdown for <conditionType> conditions in Standard/Security condition sets master
    And user navigates to StandardSecurity conditions sets master
    And user clicks on Create StandardSecurity Conditions Sets
    When user selects "<conditionType>" conditions in the dropdown
    Then conditions for "<conditionType>" conditions should be visible
    Examples:
      | conditionType |
      | Standard      |
      | Security      |

     #PQM:CAS-197579_8
  #FeatureID-ACAUTOCAS-15332
  Scenario Outline: ACAUTOCAS-16030: Verify dropdown for <conditionType> conditions in Standard/Security Condition Sets Master
    And user navigates to StandardSecurity conditions sets master
    And user clicks on Create StandardSecurity Conditions Sets
    When user checks values for Condition Type
    Then "<conditionType>" should be present for Condition Type Drop Down.
    Examples:
      | conditionType |
      | Standard      |
      | Security      |

    #PQM:CAS-197579_9,CAS-197579_10
  #FeatureID-ACAUTOCAS-15332
  Scenario Outline: ACAUTOCAS-16031: Verify dropdown values for <conditionType> conditions in Standard/Security Condition Sets Master
    And user reads data from the excel file "application_condition.xlsx" under sheet "home" and row 0
    And user navigates to StandardSecurity conditions sets master
    And user clicks on Create StandardSecurity Conditions Sets
    When user selects "<conditionType>" values for Condition Type
    Then Only "<conditionType>" based conditions should be visible in the conditions
    Examples:
      | conditionType |
      | Standard      |
      | Security      |

    #PQM:CAS-197579_11
  #FeatureID-ACAUTOCAS-15332
  Scenario: ACAUTOCAS-16032: Validate Description text box
    And user navigates to StandardSecurity conditions sets master
    And user clicks on Create StandardSecurity Conditions Sets
    When user clicks on Description text box
    Then Description text box is visible upto 4 lines


    #PQM:CAS-197579_12
  #FeatureID-ACAUTOCAS-15332
  Scenario: ACAUTOCAS-16033: Validate Description text box after entering maximum characters
    And user reads data from the excel file "application_condition.xlsx" under sheet "home" and row 0
    And user navigates to StandardSecurity conditions sets master
    And user clicks on Create StandardSecurity Conditions Sets
    When user enters maximum on Description text box
    Then Description text box is visible upto 4 lines

    #PQM:CAS-197579_13
  #FeatureID-ACAUTOCAS-15332
  Scenario: ACAUTOCAS-16034: Validate visibilty of fieldName in Standard/Security conditions sets master
    And user navigates to StandardSecurity conditions sets master
    When user clicks on Create StandardSecurity Conditions Sets
    Then fieldName should be visible in StandardSecurity conditions sets master
      | Condition Set Code        |
      | Condition Set Name        |
      | Condition Set Description |
      | Condition Type            |
      | Status                    |

  #FeatureID-ACAUTOCAS-15332
  @31MarFix
  Scenario: ACAUTOCAS-16035: Create a Application Condition Master for Security Condition
    And user reads data from the excel file "application_condition.xlsx" under sheet "home" and row 1
    And user navigates to Application condition master
    And  user clicks on Create Application Condition Master
    When user enters "<mandatoryNonMandatory>" data in Application Condition Master
    And user clicks "Save" button in Application Condition Master
    Then Proper Success message should appear for Application Condition

  #FeatureID-ACAUTOCAS-15332
  @31MarFix
  Scenario: ACAUTOCAS-16036: Create a Standard/Security Sets Master
    And user reads data from the excel file "application_condition.xlsx" under sheet "home" and row 2
    And user navigates to StandardSecurity conditions sets master
    And user clicks on Create StandardSecurity Conditions Sets
    When user enters "<mandatoryNonMandatory>" data in StandardSecurity Sets Master
    And user clicks "Save" button in StandardSecurity Sets Master
    Then Proper Success message should appear for StandardSecurity Sets Master

    #PQM:CAS-197579_16
  #FeatureID-ACAUTOCAS-15332
  Scenario: ACAUTOCAS-16037: Try to edit security condition in application condition
    And user navigates to Application condition master
    When user try to edit Security Condition in Application Condition Master
    Then Security Condition Checkbox should be disabled

  #FeatureID-ACAUTOCAS-15332
  Scenario: ACAUTOCAS-16038: Try to delete the mapped record in application condition
    And user reads data from the excel file "application_condition.xlsx" under sheet "home" and row 7
    And user navigates to Application condition master
    When user try to delete the mapped record in application condition
    Then Proper validation should come in Notification Box

  #FeatureID-ACAUTOCAS-15332
  Scenario: ACAUTOCAS-16039: Validate clone record after saving
    And user reads data from the excel file "application_condition.xlsx" under sheet "home" and row 10
    And user navigates to StandardSecurity Conditions Mapping Screen
    And user searches requirred StandardSecurity Coditions Mapping Record
    And user clone first record in StandardSecurity Conditions Mapping
    When user save cloned record in StandardSecurity Conditions Mapping
    Then Proper Error Message should appear in Notification

    #PQM:CAS-197579_31,CAS-197579_51
  #FeatureID-ACAUTOCAS-15332
  Scenario: ACAUTOCAS-16040: Validate fieldName as Editable in clone record in StandardSecurity Conditions Mapping Screen
    And user reads data from the excel file "application_condition.xlsx" under sheet "home" and row 11
    And user navigates to StandardSecurity Conditions Mapping Screen
    And user searches requirred StandardSecurity Coditions Mapping Record
    And user clone first record in StandardSecurity Conditions Mapping
    When user open the cloned record in StandardSecurity Conditions Mapping
    Then fieldName should be Editable in StandardSecurity Conditions Mapping
      | Product Type    |
      | Condition Type  |
      | Conditions Sets |

    #PQM:CAS-197579_30
  #FeatureID-ACAUTOCAS-15332
  Scenario: ACAUTOCAS-16041: Validate fieldName as Editable in clone record for Standard/Security Sets Master
    And user reads data from the excel file "application_condition.xlsx" under sheet "home" and row 0
    And user navigates to StandardSecurity conditions sets master
    And user search and clone requirred StandardSecurity Sets master
    When user open the cloned record in StandardSecurity conditions sets master
    Then fieldName should be Editable in StandardSecurity conditions sets master
      | Condition Set Code        |
      | Condition Set Name        |
      | Condition Set Description |
      | Condition Type            |

  #PQM:CAS-197579_29
  #FeatureID-ACAUTOCAS-15332
  Scenario: ACAUTOCAS-16042: Validate fieldName as Editable in clone record for Application Condition Master
    And user reads data from the excel file "application_condition.xlsx" under sheet "home" and row 12
    And user navigates to Application condition master
    And user searches and clone requirred Application Condition Master
    When user open the cloned record in Application condition master
    Then fieldName should be Editable in Application condition master
      | Condition Code              |
      | Condition Name              |
      | Condition Description       |
      | Internal Condition Checkbox |
      | Standard Condition Checkbox |
      | Special Condition Checkbox  |
      | Security Condition Checkbox |

    #PQM:CAS-197579_32
  #FeatureID-ACAUTOCAS-15332
  Scenario: ACAUTOCAS-16043: Validate fieldName as Non Editable in view record for Application Condition Master
    And user navigates to Application condition master
    When user open the first record in view mode Application condition master
    Then fieldName should be Non Editable in Application condition master
      | Condition Code        |
      | Condition Name        |
      | Condition Description |
      | Internal Condition    |
      | Standard Condition    |
      | Special Condition     |
      | Security Condition    |

    #PQM:CAS-197579_34
  #FeatureID-ACAUTOCAS-15332

  Scenario: ACAUTOCAS-16044: Try to inactive the mapped record in application condition master
    And user reads data from the excel file "application_condition.xlsx" under sheet "home" and row 6
    And user navigates to Application condition master
    And user searches requirred Application Condition Master
    When user mark status to inactive the mapped record in application condition
    Then Proper Error Message should appear in Notification

  #FeatureID-ACAUTOCAS-15332

  Scenario Outline: ACAUTOCAS-16045: Validate <fieldName> and <behaviour> in used Application Condition Master
    And user navigates to Application condition master
    And user reads data from the excel file "application_condition.xlsx" under sheet "home" and row 6
    When user searches requirred Application Condition Master
    Then The "<fieldName>" should be "<behaviour>" in Application Condition Master
    Examples:
      | fieldName                   | behaviour    |
      | Condition Code              | Not-Editable |
      | Condition Name              | Editable     |
      | Condition Description       | Editable     |
      | Internal Condition Checkbox | Not-Editable |
      | Standard Condition Checkbox | Not-Editable |
      | Special Condition Checkbox  | Not-Editable |
      | Security Condition Checkbox | Not-Editable |

    #PQM:CAS-197579_17
  #FeatureID-ACAUTOCAS-15332
  Scenario: ACAUTOCAS-16046: Verify condition type when product type is not selected in standard /security conditions mapping
    And user navigates to StandardSecurity Conditions Mapping Screen
    When user clicks Create StandardSecurity Conditions Mapping
    Then "Condition Type" should be "Not-editable" by default

    #PQM:CAS-197579_19
  #FeatureID-ACAUTOCAS-15332
  Scenario Outline: ACAUTOCAS-16047: Verify <fieldName> and <behaviour>  in Standard/Security Condition Sets
    And user reads data from the excel file "application_condition.xlsx" under sheet "home" and row 2
    And user navigates to StandardSecurity conditions sets master
    When user search and open requirred Conditions Sets Master Record
    Then The "<fieldName>" should be "<behaviour>" in StandardSecurity Conditions Sets Screen
    Examples:
      | fieldName                 | behaviour    |
      | Condition Set Code        | Not-Editable |
      | Condition Set Name        | Editable     |
      | Condition Set Description | Editable     |
      | Condition Type            | Not-Editable |


    #PQM:CAS-197579_20,CAS-197579_21
  #FeatureID-ACAUTOCAS-15332
  Scenario Outline: ACAUTOCAS-16048: Verify <fieldName> and <behaviour>  in Standard/Security Condition Mapping
    And user reads data from the excel file "application_condition.xlsx" under sheet "home" and row 0
    And user navigates to StandardSecurity Conditions Mapping Screen
    When user opens already saved record from StadardSecurity Conditions Mapping Screen
    Then The "<fieldName>" should be "<behaviour>" in StandardSecurity Conditions Mapping Screen
    Examples:
      | fieldName      | behaviour    |
      | Product Type   | Not-Editable |
      | Condition Type | Not-Editable |

    #PQM:CAS-197579_22
  #FeatureID-ACAUTOCAS-15332
  Scenario: ACAUTOCAS-16049: Verify multiple set of same condition in standard/security conditions mapping
    And user reads data from the excel file "application_condition.xlsx" under sheet "home" and row 2
    And user navigates to StandardSecurity Conditions Mapping Screen
    And user clicks Create StandardSecurity Conditions Mapping
    When user adds multiple same Condition Sets in Conditions Mapping
    And user saves the StandardSecurity Conditions Mapping
    Then Proper Error Message should appear in Notification

    #PQM:CAS-197579_25
  #FeatureID-ACAUTOCAS-15332
  Scenario: ACAUTOCAS-16050: Verify delete option at standard/security conditions mapping
    And user reads data from the excel file "application_condition.xlsx" under sheet "home" and row 2
    And user navigates to StandardSecurity Conditions Mapping Screen
    When user clicks Create StandardSecurity Conditions Mapping
    And user adds multiple same Condition Sets in Conditions Mapping
    Then Delete Button Should be visible in Conditions Sets Mapping

    #PQM:CAS-197579_28,CAS-197579_48
  #FeatureID-ACAUTOCAS-15332
  Scenario: ACAUTOCAS-16051: Verify validation for existing record in standard/security condition mapping for existing
    And user reads data from the excel file "application_condition.xlsx" under sheet "home" and row 3
    And user navigates to StandardSecurity Conditions Mapping Screen
    And user clicks Create StandardSecurity Conditions Mapping
    When user creates duplicate StandardSecurity Sets Mapping
    Then Proper Error Message should appear in Notification

    #PQM:CAS-197579_38,CAS-197579_39
  #FeatureID-ACAUTOCAS-15332

  Scenario: ACAUTOCAS-16052: Check Audit Trail in mapped Application Condition Master
    And user reads data from the excel file "application_condition.xlsx" under sheet "home" and row 3
    And user navigates to Application condition master
    And user searches requirred Application Condition Master
    When user opens Audit Trail from Acitvity Section in Application condition master
    Then Audit trail should be updated in Application condition master

    #PQM:CAS-197579_40
  #FeatureID-ACAUTOCAS-15332
  Scenario: ACAUTOCAS-16053: Try to edit mapped record in Standard/Security Conditions Set
    And user reads data from the excel file "application_condition.xlsx" under sheet "home" and row 2
    And user navigates to StandardSecurity conditions sets master
    When user searches requirred StandardSecurity Record
    Then user should be able to change mapped condition set in StandardSecurity conditions sets master

    #PQM:CAS-197579_41
  #FeatureID-ACAUTOCAS-15332
  Scenario: ACAUTOCAS-16054: Try to edit unmapped record in standard/security conditions set
    And user reads data from the excel file "application_condition.xlsx" under sheet "home" and row 4
    And user navigates to StandardSecurity conditions sets master
    When user searches requirred StandardSecurity Record
    Then The "Condition Type" should be "Editable" in StandardSecurity Conditions Sets Screen

    #PQM:CAS-197579_42
  #FeatureID-ACAUTOCAS-15332
  Scenario: ACAUTOCAS-16055: Try to inactive the Unmapped Record in standard/security conditions set
    And user reads data from the excel file "application_condition.xlsx" under sheet "home" and row 4
    And user navigates to StandardSecurity conditions sets master
    When user searches requirred StandardSecurity Record
    And User mark the record as inactive in StandardSecurity Conditions Mapping Screen
    Then No Error Message should appear in Notification

    #PQM:CAS-197579_43
  #FeatureID-ACAUTOCAS-15332
  Scenario: ACAUTOCAS-16056: Try to inactive the Mapped Record in Standard/Security Condition Sets
    And user reads data from the excel file "application_condition.xlsx" under sheet "home" and row 5
    And user navigates to StandardSecurity conditions sets master
    When user search and open requirred Conditions Sets Master Record
    And User mark the record as inactive in StandardSecurity Conditions Mapping Screen
    Then Proper Error Message should appear in Notification

    #PQM:CAS-197579_44
  #FeatureID-ACAUTOCAS-15332
  Scenario: ACAUTOCAS-16057: Verify Aduit Trail for Edit Mapped record in Standard/Security Conditions Set
    And user reads data from the excel file "application_condition.xlsx" under sheet "home" and row 2
    And user navigates to StandardSecurity conditions sets master
    And user searches requirred StandardSecurity Record
    When user opens Audit Trail from Acitvity Section in StandardSecurity Conditions Sets Master
    Then Audit trail should be updated in StandardSecurity Conditions Sets Master

    #PQM:CAS-197579_45
  #FeatureID-ACAUTOCAS-15332
  Scenario: ACAUTOCAS-16058: Verify Audit Trail for Edit Unmapped record in Standard/Security Conditions Set
    And user reads data from the excel file "application_condition.xlsx" under sheet "home" and row 4
    And user navigates to StandardSecurity conditions sets master
    And user searches requirred StandardSecurity Record
    When user opens Audit Trail from Acitvity Section in StandardSecurity Conditions Sets Master
    Then Audit trail should be updated in StandardSecurity Conditions Sets Master

    #PQM:CAS-197579_46
  #FeatureID-ACAUTOCAS-15332
  Scenario: ACAUTOCAS-16346:Verify an Editted saved as draft record for Unmapped Standard/Security conditions sets master
    And user reads data from the excel file "application_condition.xlsx" under sheet "home" and row 4
    And user navigates to StandardSecurity conditions sets master
    And user searches requirred StandardSecurity Record
    And user clicks "Save" button in StandardSecurity Sets Master
    When user opens the above Edited and saved as Draft
    Then The "Condition Type" should be "Editable" in StandardSecurity Conditions Sets Screen

    #PQM:CAS-197579_47
  #FeatureID-ACAUTOCAS-15332
  Scenario: ACAUTOCAS-16347:Verify an Editted saved as draft record for Mapped Standard/Security conditions sets master
    And user reads data from the excel file "application_condition.xlsx" under sheet "home" and row 2
    And user navigates to StandardSecurity conditions sets master
    And user search and open requirred Conditions Sets Master Record
    And user clicks "Save" button in StandardSecurity Sets Master
    When user opens the above Edited and saved as Draft
    Then The "Condition Type" should be "Not-Editable" in StandardSecurity Conditions Sets Screen


    #PQM:CAS-197579_49
  #FeatureID-ACAUTOCAS-15332
  Scenario: ACAUTOCAS-16059: Verify Create Another after this One Checkbox
    And user reads data from the excel file "application_condition.xlsx" under sheet "home" and row 4
    And user navigates to StandardSecurity Conditions Mapping Screen
    And user clicks Create StandardSecurity Conditions Mapping
    And user adds multiple Condition Sets StandardSecurity Conditions Mapping
    When user selects create another after this one checkbox
    And user saves the record StandardSecurity Conditions Mapping
    Then Record should be send for approval and new screens should be open

    #PQM:CAS-197579_52
  #FeatureID-ACAUTOCAS-15332
  Scenario: ACAUTOCAS-16060: Verify Cloned record with any changes StandardSecurity Conditions Mapping Screen
    And user reads data from the excel file "application_condition.xlsx" under sheet "home" and row 13
    And user navigates to StandardSecurity Conditions Mapping Screen
    And user searches requirred StandardSecurity Coditions Mapping Record
    And user clone first record in StandardSecurity Conditions Mapping
    And user open the cloned record in StandardSecurity Conditions Mapping
    When user saves the Opened Record StandardSecurity Conditions Mapping
    Then Proper Error Message should appear in Notification

    #PQM:CAS-197579_53
  #FeatureID-ACAUTOCAS-15332
  Scenario: ACAUTOCAS-16061: Verify Priority Option in StandardSecurity Conditions Mapping Screen
    And user reads data from the excel file "application_condition.xlsx" under sheet "home" and row 2
    And user navigates to StandardSecurity Conditions Mapping Screen
    And user clicks Create StandardSecurity Conditions Mapping
    And user adds multiple Condition Sets StandardSecurity Conditions Mapping
    When user changes priority of Condition Sets
    Then Rows should be up down as per priority

    #FeatureID-ACAUTOCAS-15332
Scenario: ACAUTOCAS-18105: Validate Inactive StandardSecurity Set in StandardSecurity Mapping
    And user reads data from the excel file "application_condition.xlsx" under sheet "home" and row 15
    And user navigates to StandardSecurity Conditions Mapping Screen
    And user clicks Create StandardSecurity Conditions Mapping
    And user selects product type and condition type in Conditions Mapping
    When user click Condition Set Name
    Then Inactive StandardSecurity Set should not be present in the Drop Down

