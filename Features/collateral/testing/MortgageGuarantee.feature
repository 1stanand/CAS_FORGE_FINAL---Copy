@Epic-CollateralDetails
@AuthoredBy-pallavi.singh
@ImplementedBy-pallavi.singh
@Collateral
@PQMStory

#${ApplicantType:["indiv","nonindiv"]}
# ${ProductType:["HL","PL","MAL"]}
#${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Post Approval"]}
Feature: Test Cases_CAS49521_A new collateral Type Mortgage Guarantee

   #create business partner
  # PQM-06_CAS-49521 -iii)
  Scenario Outline: Create a Business Partner in Common Master for "<LogicalID>"
    Given user logged in "Common Masters" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user stores logical ID "<LogicalID>" in report
    And user navigates to Business Partners tab
    And user creates a Business Partner
    And user reads data from the excel file "business_partner.xlsx" under sheet "<BusinessPartnerWB_SheetName>" and row <BusinessPartnerWB_SheetName_rowNum1>
    And user fills business partner details
    When user saves business partner details
    Then business details should be saved successfully
    Examples:
      | LogicalID             | BusinessPartnerWB_SheetName_rowNum1 | BusinessPartnerWB_SheetName |
      | PF_CAS_49521_MG_06II  | 4                                   | mortgage_guarantee          |
      | HL_CAS_49521_MG_06II  | 4                                   | mortgage_guarantee          |
      | MAL_CAS_49521_MG_06II | 4                                   | mortgage_guarantee          |



  # PQM-02_CAS-49521 -i),# PQM-02_CAS-49521 -ii),# PQM-03_CAS-49521-i),# PQM-03_CAS-49521-ii),# PQM-04_CAS-49521-i),# PQM-04_CAS-49521-ii),# PQM-04_CAS-49521-iii)# PQM-06_CAS-49521-iii)
  # PQM-05_CAS-49521-i),# PQM-05_CAS-49521-ii),# PQM-05_CAS-49521-iii),# PQM-05_CAS-49521-iv),# PQM-07_CAS-49521-i),# PQM-08_CAS-49521-i),# PQM-08_CAS-49521-ii),# PQM-16_CAS-49521-i),# PQM-16_CAS-49521-ii)
  Scenario Outline: Select collateral type as Guarantee collateral subtype as Mortgage Guarantee of "<ProductType>" logical id "<LogicalID>"
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>" with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user stores logical ID "<LogicalID>" in report
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "collateral.xlsx" under sheet "guarantee_details" and row <Collateral_guarantee_rowNum>
    When user selects collateral type along with collateral sub type
    Then collateral details show the Guarantee coming under the collateral type Mortgage Guarantee under the Collateral sub type
    Examples:
      | LogicalID              | ProductType | ApplicationStage   | ApplicantType   | Category | key | Collateral_guarantee_rowNum |
      | PF_CAS_49521_MG_02     | PF          | <ApplicationStage> | <ApplicantType> |          |     | 2                           |
      | PF_CAS_49521_MG_03     | PF          | <ApplicationStage> | <ApplicantType> |          |     | 2                           |
      | PF_CAS_49521_MG_04I    | PF          | <ApplicationStage> | <ApplicantType> |          |     | 3                           |
      | PF_CAS_49521_MG_04II   | PF          | <ApplicationStage> | <ApplicantType> |          |     | 4                           |
      | PF_CAS_49521_MG_04III  | PF          | <ApplicationStage> | <ApplicantType> |          |     | 5                           |
      | PF_CAS_49521_MG_05I    | PF          | <ApplicationStage> | <ApplicantType> |          |     | 7                           |
      | PF_CAS_49521_MG_05II   | PF          | <ApplicationStage> | <ApplicantType> |          |     | 4                           |
      | PF_CAS_49521_MG_05III  | PF          | <ApplicationStage> | <ApplicantType> |          |     | 8                           |
      | PF_CAS_49521_MG_06II   | PF          | <ApplicationStage> | <ApplicantType> |          |     | 9                           |
      | PF_CAS_49521_MG_08I    | PF          | <ApplicationStage> | <ApplicantType> |          |     | 3                           |
      | PF_CAS_49521_MG_16I    | PF          | <ApplicationStage> | <ApplicantType> |          |     | 3                           |
      | PF_CAS_49521_MG_07I    | PF          | <ApplicationStage> | <ApplicantType> |          |     | 3                           |

      | HL_CAS_49521_MG_02     | HL          | <ApplicationStage> | <ApplicantType> |          |     | 2                           |
      | HL_CAS_49521_MG_03     | HL          | <ApplicationStage> | <ApplicantType> |          |     | 2                           |
      | HL_CAS_49521_MG_04I    | HL          | <ApplicationStage> | <ApplicantType> |          |     | 3                           |
      | HL_CAS_49521_MG_04II   | HL          | <ApplicationStage> | <ApplicantType> |          |     | 4                           |
      | HL_CAS_49521_MG_04III  | HL          | <ApplicationStage> | <ApplicantType> |          |     | 5                           |
      | HL_CAS_49521_MG_05I    | HL          | <ApplicationStage> | <ApplicantType> |          |     | 7                           |
      | HL_CAS_49521_MG_05II   | HL          | <ApplicationStage> | <ApplicantType> |          |     | 4                           |
      | HL_CAS_49521_MG_05III  | HL          | <ApplicationStage> | <ApplicantType> |          |     | 8                           |
      | HL_CAS_49521_MG_06II   | HL          | <ApplicationStage> | <ApplicantType> |          |     | 9                           |
      | HL_CAS_49521_MG_08I    | HL          | <ApplicationStage> | <ApplicantType> |          |     | 3                           |
      | HL_CAS_49521_MG_16I    | HL          | <ApplicationStage> | <ApplicantType> |          |     | 3                           |
      | HL_CAS_49521_MG_07I    | HL          | <ApplicationStage> | <ApplicantType> |          |     | 3                           |

      | MAL_CAS_49521_MG_02    | MAL         | <ApplicationStage> | <ApplicantType> |          |     | 2                           |
      | MAL_CAS_49521_MG_03    | MAL         | <ApplicationStage> | <ApplicantType> |          |     | 2                           |
      | MAL_CAS_49521_MG_04I   | MAL         | <ApplicationStage> | <ApplicantType> |          |     | 3                           |
      | MAL_CAS_49521_MG_04II  | MAL         | <ApplicationStage> | <ApplicantType> |          |     | 4                           |
      | MAL_CAS_49521_MG_04III | MAL         | <ApplicationStage> | <ApplicantType> |          |     | 5                           |
      | MAL_CAS_49521_MG_05I   | MAL         | <ApplicationStage> | <ApplicantType> |          |     | 7                           |
      | MAL_CAS_49521_MG_05II  | MAL         | <ApplicationStage> | <ApplicantType> |          |     | 4                           |
      | MAL_CAS_49521_MG_05III | MAL         | <ApplicationStage> | <ApplicantType> |          |     | 8                           |
      | MAL_CAS_49521_MG_06II  | MAL         | <ApplicationStage> | <ApplicantType> |          |     | 9                           |
      | MAL_CAS_49521_MG_08I   | MAL         | <ApplicationStage> | <ApplicantType> |          |     | 3                           |
      | MAL_CAS_49521_MG_16I   | MAL         | <ApplicationStage> | <ApplicantType> |          |     | 3                           |
      | MAL_CAS_49521_MG_07I   | MAL         | <ApplicationStage> | <ApplicantType> |          |     | 3                           |

    # PQM-02_CAS-49521- ii),# PQM-03_CAS-49521-i),# PQM-03_CAS-49521-ii)
  Scenario Outline: Verify fields of Mortgage Guarantee of "<ProductType>" logical id "<LogicalID>"
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>" with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    When user checks field of Mortgage Guarantee
    Then fields of mortgage guarantee subtype should be displayed
      | Mortgage Guarantee Company Code       |
      | Mortgage Guarantee Company Percentage |
      | Mortgage Guarantee Email ID           |
    Examples:
      | LogicalID           | ProductType |
      | PF_CAS_49521_MG_02  | PF          |

      | HL_CAS_49521_MG_02  | HL          |

      | MAL_CAS_49521_MG_02 | MAL         |


  # PQM-03_CAS-49521-i),# PQM-03_CAS-49521-ii),# PQM-03_CAS-49521-ii),# PQM-03_CAS-49521-iii) a)
  # PQM-05_CAS-49521-i),# PQM-05_CAS-49521-ii),# PQM-05_CAS-49521-iii)
  #Scenario to fetch DB data
  Scenario Outline: Execute DB Query for <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>" with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    When user executes query to fetches the mortgage business partner maintained in master from Database
    Then query executed successfully
    Examples:
      | LogicalID             | ProductType |
      | PF_CAS_49521_MG_02    | PF          |
      | PF_CAS_49521_MG_05I   | PF          |
      | PF_CAS_49521_MG_05II  | PF          |

      | HL_CAS_49521_MG_02    | HL          |
      | HL_CAS_49521_MG_05I   | HL          |
      | HL_CAS_49521_MG_05II  | HL          |

      | MAL_CAS_49521_MG_02   | MAL         |
      | MAL_CAS_49521_MG_05I  | MAL         |
      | MAL_CAS_49521_MG_05II | MAL         |


  # PQM-03_CAS-49521-i),# PQM-03_CAS-49521-ii)
  Scenario Outline: All the values maintained at the Mortgage Guarantee Company master should come at the Mortgage Guarantee Company Name field
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>" with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    When user fetches the "<Field>" maintained in master from Database
    And user reads data from the excel file "collateral.xlsx" under sheet "guarantee_details" and row 10
    And user selects Mortgage Guarantee Company Name
    Then all the values maintained in Mortgage Guarantee Company master must be visible
    Examples:
      | LogicalID           | ProductType | Field                           |
      | PF_CAS_49521_MG_02  | PF          | Mortgage Guarantee Company Code |

      | HL_CAS_49521_MG_02  | HL          | Mortgage Guarantee Company Code |

      | MAL_CAS_49521_MG_02 | MAL         | Mortgage Guarantee Company Code |

  # PQM-03_CAS-49521-ii),# PQM-03_CAS-49521-iii) a)
  Scenario Outline: To check for the Mortgage Guarantee <Field> field value populating for <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>" with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user reads data from the excel file "collateral.xlsx" under sheet "guarantee_details" and row <rowNum>
    And user selects Mortgage Guarantee Company Name
    When user fetches the "<Field>" maintained in master from Database
    Then "<Field>" field should autopopulate with value defined in master
    Examples:
      | LogicalID           | ProductType | Field                                 | rowNum |
      | PF_CAS_49521_MG_02  | PF          | Mortgage Guarantee Company Percentage | 2      |
      | PF_CAS_49521_MG_02  | PF          | Mortgage Guarantee Email ID           | 6      |

      | HL_CAS_49521_MG_02  | HL          | Mortgage Guarantee Company Percentage | 2      |
      | HL_CAS_49521_MG_02  | HL          | Mortgage Guarantee Email ID           | 6      |

      | MAL_CAS_49521_MG_02 | MAL         | Mortgage Guarantee Company Percentage | 2      |
      | MAL_CAS_49521_MG_02 | MAL         | Mortgage Guarantee Email ID           | 6      |


  # PQM-03_CAS-49521-iii) b)
  Scenario Outline: Check Mortgage Guarantee Email ID field editable for <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>" with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user reads data from the excel file "collateral.xlsx" under sheet "guarantee_details" and row 6
    When user selects Mortgage Guarantee Company Name
    Then user should be able to modify the data in field "Mortgage Guarantee Email ID"
    Examples:
      | LogicalID           | ProductType |
      | PF_CAS_49521_MG_02  | PF          |

      | HL_CAS_49521_MG_02  | HL          |

      | MAL_CAS_49521_MG_02 | MAL         |


    # PQM-03_CAS-49521
  #covered in 4 test case
#  Scenario Outline: To check for the Mortgage Guarantee Email ID value
#    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>"
#    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
#    And user opens an application of "<ApplicationStage>" stage present in context from application grid
#    And user opens Collateral Page for adding new collateral
#    And user reads data from the excel file "collateral.xlsx" under sheet "default" and row 849
#    And user selects collateral type along with collateral sub type
#    When user enters mandatory fields for mortgage guarantee
#    Then Email ID field should be non mandatory field
#    Examples:
#      | LogicalID    | ProductType   | ApplicationStage |
#      | CAS_49521_01 | PF | dde              |

  # PQM-04_CAS-49521-i),# PQM-04_CAS-49521-iv),# PQM-06_CAS-49521-iii),# PQM-08_CAS-49521-i),# PQM-08_CAS-49521-ii)
  # PQM-16_CAS-49521-i),# PQM-16_CAS-49521-ii)
  Scenario Outline:Mortgage company record should be saved as collateral along-with new collateral id for <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>" with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user reads data from the excel file "collateral.xlsx" under sheet "guarantee_details" and row <Collateral_guarantee_rowNum>
    And user fills mandatory fields for "Mortgage Guarantee" collateral
    When user saves the collateral data
    Then CMS id should be generated for "Mortgage Guarantee"
    Examples:
      | LogicalID             | ProductType | Collateral_guarantee_rowNum |
      | PF_CAS_49521_MG_04I   | PF          | 3                           |
      | PF_CAS_49521_MG_06II  | PF          | 9                           |
      | PF_CAS_49521_MG_08I   | PF          | 3                           |
      | PF_CAS_49521_MG_16I   | PF          | 3                           |

      | HL_CAS_49521_MG_04I   | HL          | 3                           |
      | HL_CAS_49521_MG_06II  | HL          | 9                           |
      | HL_CAS_49521_MG_08I   | HL          | 3                           |
      | HL_CAS_49521_MG_16I   | HL          | 3                           |

      | MAL_CAS_49521_MG_04I  | MAL         | 3                           |
      | MAL_CAS_49521_MG_06II | MAL         | 9                           |
      | MAL_CAS_49521_MG_08I  | MAL         | 3                           |
      | MAL_CAS_49521_MG_16I  | MAL         | 3                           |



  # PQM-04_CAS-49521-ii)
  Scenario Outline:System should not allow the user to save the collateral details by selecting only Mortgage Guarantee Company Name
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>" with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user reads data from the excel file "collateral.xlsx" under sheet "guarantee_details" and row 4
    When user selects Mortgage Guarantee Company Name
    And user saves the data of collateral subtype
    Then System should not allow the user to save the collateral details
    Examples:
      | LogicalID             | ProductType |
      | PF_CAS_49521_MG_04II  | PF          |

      | HL_CAS_49521_MG_04II  | HL          |

      | MAL_CAS_49521_MG_04II | MAL         |

  # PQM-04_CAS-49521-iii)
  Scenario Outline:System should allow the user to save the collateral details as the email id field is non-mandatory
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>" with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user reads data from the excel file "collateral.xlsx" under sheet "guarantee_details" and row 5
    #email id not filled
    And user enters mandatory fields of collateral details of mortgage guarantee
    When user saves the collateral data
    Then collateral should saved successfully
    Examples:
      | LogicalID              | ProductType |
      | PF_CAS_49521_MG_04III  | PF          |

      | HL_CAS_49521_MG_04III  | HL          |

      | MAL_CAS_49521_MG_04III | MAL         |


  # PQM-04_CAS-49521-iv)
  Scenario Outline: Another Mortgage Guarantee Company should be picked after editing
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>" with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user modifies the saved collateral subtype
    And user reads data from the excel file "collateral.xlsx" under sheet "guarantee_details" and row 6
    And user enters mandatory fields for mortgage guarantee
    When user saves the collateral data
    Then collateral should saved successfully
    Examples:
      | LogicalID            | ProductType |
      | PF_CAS_49521_MG_04I  | PF          |

      | HL_CAS_49521_MG_04I  | HL          |

      | MAL_CAS_49521_MG_04I | MAL         |


  # PQM-05_CAS-49521-i)
  Scenario Outline: Collateral should successfully save the collateral details as the MG% value lies in between the Min and Max rate as maintained in master
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>" with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user reads data from the excel file "collateral.xlsx" under sheet "guarantee_details" and row 6
    And user selects Mortgage Guarantee Company Name
    And user fetches the "mortgage guarantee percentage range" maintained in master from Database
    When user enters Mortgage Guarantee Company Percentage "<Percentage>"
    And user saves the collateral data
    Then collateral should saved successfully
    Examples:
      | LogicalID            | ProductType | Percentage        |
      | PF_CAS_49521_MG_05I  | PF          | between the range |

      | HL_CAS_49521_MG_05I  | HL          | between the range |

      | MAL_CAS_49521_MG_05I | MAL         | between the range |


  # PQM-05_CAS-49521-ii),# PQM-05_CAS-49521-iii)
  Scenario Outline: Validate user should get an error for Mortgage Collateral Subtype at field level that mg% should not be <Min_Max> rate as defined in master
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>" with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user reads data from the excel file "collateral.xlsx" under sheet "guarantee_details" and row 6
    And user selects Mortgage Guarantee Company Name
    And user fetches the "mortgage guarantee percentage range" maintained in master from Database
    When user enters Mortgage Guarantee Company Percentage "<Min_Max>"
    Then user should get an error at field level that mg% should not be "<Min_Max>" rate defined
    Examples:
      | LogicalID            | ProductType | Min_Max       |
      | PF_CAS_49521_MG_05II | PF          | more than max |
      | PF_CAS_49521_MG_05II | PF          | less than min |

      | HL_CAS_49521_MG_05II | HL          | more than max |
      | HL_CAS_49521_MG_05II | HL          | less than min |

      | MAL_CAS_49521_MG_05II | MAL          | more than max |
      | MAL_CAS_49521_MG_05II | MAL          | less than min |

  # PQM-05_CAS-49521-iv)
  Scenario Outline: Email id field should be editable after selection of Mortgage Company from front end
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>" with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user reads data from the excel file "collateral.xlsx" under sheet "guarantee_details" and row 8
    When user selects Mortgage Guarantee Company Name
    Then user should be able to modify the data in field "Mortgage Guarantee Company Percentage"
    Examples:
      | LogicalID             | ProductType |
      | PF_CAS_49521_MG_05III | PF          |

      | HL_CAS_49521_MG_05III | HL          |

      | MAL_CAS_49521_MG_05III | MAL          |


  # PQM-06_CAS-49521-i),# PQM-06_CAS-49521-ii)
  Scenario Outline: Mortgage Collateral details should be created containing duplicate <Field> but the code should be unique in Business Partner Master for <LogicalID>
    Given user logged in "Common Masters" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user stores logical ID "<LogicalID>" in report
    And user navigates to Business Partners tab
    And user creates a Business Partner
    And user reads data from the excel file "business_partner.xlsx" under sheet "mortgage_guarantee" and row <BusinessPartnerWB_SheetName_rowNum1>
    And user fills business partner details
    And user saves business partner details
#    And user creates another business partner details
    And user reads data from the excel file "business_partner.xlsx" under sheet "mortgage_guarantee" and row <BusinessPartnerWB_SheetName_rowNum2>
    And user fills business partner details
    When user saves business partner details
    Then Mortgage Collaterals should be created with same "<Field>"
    Examples:
      | LogicalID            | Field                 | BusinessPartnerWB_SheetName_rowNum1 | BusinessPartnerWB_SheetName_rowNum2 |
      | PF_CAS_49521_MG_06I  | Business Partner Name | 0                                   | 1                                   |
      | PF_CAS_49521_MG_06I  | Email ID              | 2                                   | 3                                   |

      | HL_CAS_49521_MG_06I  | Business Partner Name | 0                                   | 1                                   |
      | HL_CAS_49521_MG_06I  | Email ID              | 2                                   | 3                                   |

      | MAL_CAS_49521_MG_06I | Business Partner Name | 0                                   | 1                                   |
      | MAL_CAS_49521_MG_06I | Email ID              | 2                                   | 3                                   |

    # PQM-06_CAS-49521-iii)
  Scenario Outline: Delete created business partner in BP Master for <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>"
    And user logged in "Common Masters" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user navigates to Business Partners tab
    And user searches business partner code
    When user deletes business partner
    Then business partner deleted successfully
    Examples:
      | LogicalID             | ProductType |
      | PF_CAS_49521_MG_06II  | PF          |

      | HL_CAS_49521_MG_06II  | HL          |

      | MAL_CAS_49521_MG_06II | MAL         |

  # PQM-06_CAS-49521-iii)
  Scenario Outline: Mortgage guarantee code should not be visible for new collateral as the associated BP Type has been deleted
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>"
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user opens an application of "<ApplicationStage>" stage present in context from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "collateral.xlsx" under sheet "guarantee_details" and row 2
    When user enters the deleted mortgage company code
    Then Mortgage guarantee code should not be visible in list
    Examples:
      | LogicalID             | ProductType | ApplicationStage   |
      | PF_CAS_49521_MG_06II  | PF          | <ApplicationStage> |

      | HL_CAS_49521_MG_06II  | HL          | <ApplicationStage> |

      | MAL_CAS_49521_MG_06II | MAL         | <ApplicationStage> |

  # PQM-07_CAS-49521-i)
  Scenario Outline: Validate collateral dedupe not works for Mortage Guarantee Collateral Subtype for <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>"
    And user reads data from the excel file "collateral.xlsx" under sheet "guarantee_details" and row 3
    And user fills mandatory fields for "Mortgage Guarantee" collateral
    #save without dedupe
    When user saves the collateral data
    Then collateral should saved successfully
    Examples:
      | LogicalID            | ProductType |
      | PF_CAS_49521_MG_07I  | PF          |

      | HL_CAS_49521_MG_07I  | HL          |

      | MAL_CAS_49521_MG_07I | MAL         |

     # PQM-07_CAS-49521-ii)
  #  Punch an application for multi facility and add bill discounting facility
  #On hold
  @NotImplemented
  Scenario Outline: Validate guarantor address detail saved for Corporate Guarantee collateral for multi facility application
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>"
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user creates an application for multi facility of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "collateral.xlsx" under sheet "guarantee_details" and row 8
    And user selects collateral type along with collateral sub type
    And user clicks on guarantor address accordion
    And user clicks on add guarantor address
    And user reads data from the excel file "collateral.xlsx" under sheet "guarantor_address" and row 67
    When user fills guarantor address detail
    And user clicks on done
    Then Guarantor address saved successfully
    Examples:
      | LogicalID             | ProductType | ApplicantType   | ApplicationStage   | Category | Key |
      | PF_CAS_49521_MG_07II  | PF          | <ApplicantType> | <ApplicationStage> |          |     |

      | HL_CAS_49521_MG_07II  | HL          | <ApplicantType> | <ApplicationStage> |          |     |

      | MAL_CAS_49521_MG_07II | MAL         | <ApplicantType> | <ApplicationStage> |          |     |


  # PQM-08_CAS-49521-i)
  Scenario Outline: Application should be available for the Copy Application feature containing the Mortgage Guarantee Company as the Collateral
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>"
    And user navigates to copy application screen
    When user searches application using "Application Number" in copy application screen
    Then application should be available for copy application feature
    Examples:
      | LogicalID            | ProductType |
      | PF_CAS_49521_MG_08I  | PF          |

      | HL_CAS_49521_MG_08I  | HL          |

      | MAL_CAS_49521_MG_08I | MAL         |



  # PQM-08_CAS-49521-ii)
  Scenario Outline: Verify the new application generated from copying the application having the Collateral type as Mortgage Guarantee
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>"
    And user reads data from the excel file "copy_application.xlsx" under sheet "home" and row 35
    And user copy the application
    And user record the generated application
    And user opens an application of "<ApplicationStage>" stage present in context from application grid
    When user open collateral page of "<ApplicationStage>" stage
    And user views the recently added collateral
    Then application should have same Mortgage Guarantee as collateral detail
    Examples:
      | LogicalID            | ProductType | ApplicationStage   |
      | PF_CAS_49521_MG_08I  | PF          | <ApplicationStage> |

      | HL_CAS_49521_MG_08I  | HL          | <ApplicationStage> |

      | MAL_CAS_49521_MG_08I | MAL         | <ApplicationStage> |


  # PQM-09_CAS-49521-i),ii)
#  Already covered in PQM-CAS-109708
#  Scenario Outline: List of Mortgage Guarantee Collateral should come as result from existing search collateral functionality
#    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>"
#    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
#    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
#    When user open collateral page of "<ApplicationStage>" stage
#    And user clicks on search existing
#    And user reads data from the excel file "collateral.xlsx" under sheet "guarantee_details" and row 0
#    And user selects guarantee with mortgage collateral subtype
#    And clicks on search
#    Then List of Mortgage Guarantee Collateral should come as result
#    Examples:
#      | LogicalID        | ProductType   | ApplicantType   | ApplicationStage   | Category | Key |
#      | PF_CAS_49521_MG_09I | PF | <ApplicantType> | <ApplicationStage> |          |     |


   # PQM-09_CAS-49521-iii)
  # This scenario is already covered in ACAUTOCAS-21209 for PQM-01_CAS-109708
#  Scenario Outline: Link Mortgage Guarantee Collateral from existing search functionality
#    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>"
#    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
#    And user opens an application of "<ApplicationStage>" stage present in context from application grid
#    And user open collateral page of "<ApplicationStage>" stage
#    And user reads data from the excel file "collateral.xlsx" under sheet "collateral_search" and row 3117
#    When user enters parameters to search collateral
#    And clicks on search
#    And user finds collateral matching the search criteria
#    And user links the collateral with the application
#    Then collateral should have linked with correct details
#    Examples:
#      | LogicalID | ProductType   | ApplicantType   | ApplicationStage   | Category | Key |
#      |           | PF | <ApplicantType> | <ApplicationStage> |          |     |


  @NotImplemented
  # Scenario for Adding Collateral Using Application Creation Service
  # PQM-11_CAS-49521 , # PQM-13_CAS-49521
  Scenario Outline: Add <Collateral_Type> collateral using Application Creation Service for <LogicalID>
    Given user stores logical ID "<LogicalID>" in report
    When user creates an application of "<ProductType>" product type as "<ApplicantType>" applicant at stage "<ApplicationStage>" with collateral as "<Collateral_Type>" with api service
    Then application created successfully with collateral detail
    Examples:
      | LogicalID             | ProductType | ApplicantType   | ApplicationStage   | Collateral_Type                        |
      | PF_CAS_49521_MG_11I   | PF          | <ApplicantType> | <ApplicationStage> | Mortgage Guarantee                     |
      | PF_CAS_49521_MG_11III | PF          | <ApplicantType> | <ApplicationStage> | Mortgage Guarantee with Dynamic Fields |
      | PF_CAS_49521_MG_13I   | PF          | <ApplicantType> | <ApplicationStage> | More than one Mortgage Guarantee       |

  @NotImplemented
   # PQM-11_CAS-49521-i) , # PQM-13_CAS-49521-i)
  Scenario Outline: Application should get retrieved in CMS Database with collateral type added as the <Collateral_Type> using App create service for <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>"
    When user executes query to get collateral detail from CMS Database
    Then <Collateral_Type> should be present in CMS Database with details
    Examples:
      | LogicalID           | ProductType | Collateral_Type    |
      | PF_CAS_49521_MG_11I | PF          | Mortgage Guarantee |
      | PF_CAS_49521_MG_13I | PF          | Mortgage Guarantee |

  @NotImplemented
 # PQM-11_CAS-49521-ii), # PQM-11_CAS-49521-iii) , # PQM-13_CAS-49521-i)
  Scenario Outline: Validate application created through service with collateral type added as the <Collateral_Type> for <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>"
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user opens an application of "<ApplicationStage>" stage present in context from application grid
    When user open collateral page of "<ApplicationStage>" stage
    Then "<Collateral_Type>" should be present with same details as added using app create service
    Examples:
      | LogicalID             | ProductType | ApplicationStage   | Collateral_Type                        |
      | PF_CAS_49521_MG_11I   | PF          | <ApplicationStage> | Mortgage Guarantee                     |
      | PF_CAS_49521_MG_11III | PF          | <ApplicationStage> | Mortgage Guarantee with Dynamic Fields |
      | PF_CAS_49521_MG_13I   | PF          | <ApplicationStage> | More than one Mortgage Guarantee       |


  @NotImplemented
  # Scenario for Adding Collateral Using Application Updation Service
  # PQM-12_CAS-49521, PQM-13_CAS-49521-ii)
  Scenario Outline: Add <Collateral_Type> collateral using Application Updation Service for <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>"
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    When user updates application with new "<Collateral_Type>" as mortgage using app update service
    Then application updates successfully with collateral detail
    Examples:
      | LogicalID             | ProductType | ApplicantType   | ApplicationStage   | Collateral_Type                        | Category | key |
      | PF_CAS_49521_MG_12I   | PF          | <ApplicantType> | <ApplicationStage> | Mortgage Guarantee                     |          |     |
      | PF_CAS_49521_MG_12III | PF          | <ApplicantType> | <ApplicationStage> | Mortgage Guarantee with Dynamic Fields |          |     |
      | PF_CAS_49521_MG_13II  | PF          | <ApplicantType> | <ApplicationStage> | More than one Mortgage Guarantee       |          |     |

  @NotImplemneted
   # PQM-12_CAS-49521-i) , # PQM-13_CAS-49521-ii)
  Scenario Outline: Application should get retrieved in CMS Database with collateral type added as the <Collateral_Type> using App Update service for <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>"
    When user executes query to get collateral detail from CMS Database
    Then <Collateral_Type> should be present in CMS Database with detail
    Examples:
      | LogicalID            | ProductType | Collateral_Type                  |
      | PF_CAS_49521_MG_12I  | PF          | Mortgage Guarantee               |
      | PF_CAS_49521_MG_13II | PF          | More than one Mortgage Guarantee |

  @NotImplemented
 # PQM-12_CAS-49521-ii),# PQM-12_CAS-49521-iii) , # PQM-13_CAS-49521-ii)
  Scenario Outline: Validate application updated through service with collateral type added as <Collateral_Type> for <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>"
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user opens an application of "<ApplicationStage>" stage present in context from application grid
    When user open collateral page of "<ApplicationStage>" stage
    Then "<Collateral_Type>" should be present with same details as added using app update service
    Examples:
      | LogicalID             | ProductType | ApplicationStage   | Collateral_Type                        |
      | PF_CAS_49521_MG_12I   | PF          | <ApplicationStage> | Mortgage Guarantee                     |
      | PF_CAS_49521_MG_12III | PF          | <ApplicationStage> | Mortgage Guarantee with Dynamic Fields |
      | PF_CAS_49521_MG_13II  | PF          | <ApplicationStage> | More than one Mortgage Guarantee       |


   # PQM-14_CAS-49521-i)
#  Scenario Outline: To check for the provision for adding upto the 10 placeholders for dynamic field in the collateral screen for <LogicalID>
#    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>"
#    And user logged in "Common Masters" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
#    And user navigates to dynamic form mapping
#    And user clicks on creates dynamic form mapping
#    And user reads data from the excel file "collateral.xlsx" under sheet "guarantee_details" and row 9
#    And user selects field type
#    And user selects collateral type along with collateral sub type
#    When user clicks on dynamic form dropdown
#    Then user should be able to see more than 10 placeholders for dynamic field
#    Examples:
#      | LogicalID        | ProductType   |
#      | PF_CAS_49521_MG_14I | PF |

  # PQM-15_CAS-49521-i) , PQM-15_CAS-49521-ii), # PQM-14_CAS-49521-i)
  @NotImplemented
  Scenario Outline: Navigate To Dynamic Form in Common Master for <LogicalID>
    Given user logged in "Common Masters" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user stores logical ID "<LogicalID>" in report
    When user navigates to dynamic form mapping
    Then dynamic form mapping screen is visible
    Examples:
      | LogicalID           |
      | PF_CAS_49521_MG_14I |

  # PQM-15_CAS-49521-i) , PQM-15_CAS-49521-ii), # PQM-14_CAS-49521-i)
  @NotImplemented
  Scenario Outline: Create Dynamic Form of <FormField> type for <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>"
    And user clicks on creates dynamic form mapping
    And user reads data from the excel file "collateral.xlsx" under sheet "guarantee_details" and row <Collateral_guarantee_rowNum>
    And user selects field type
    And user selects collateral type along with collateral sub type in dynamic form
    And user selects dynamic form "<FormField>"
    When user clicks on saves and request approval
    Then dynamic form created successfully
    Examples:
      | LogicalID           | Collateral_guarantee_rowNum | FormField                           |
      | PF_CAS_49521_MG_14I | 0                           | Business Verification               |
      | PF_CAS_49521_MG_14I | 1                           | Asset_Models                        |
      | PF_CAS_49521_MG_14I | 2                           | Business Tele Verification Card     |
      | PF_CAS_49521_MG_14I | 3                           | Legal_Verification                  |
      | PF_CAS_49521_MG_14I | 4                           | Cas_Fixed_Deposit                   |
      | PF_CAS_49521_MG_14I | 5                           | Business Verification Card          |
      | PF_CAS_49521_MG_14I | 6                           | disbursalDealer                     |
      | PF_CAS_49521_MG_14I | 7                           | Permanent Address Verification Card |
      | PF_CAS_49521_MG_14I | 8                           | Mobile Tele Verification Card       |
      | PF_CAS_49521_MG_14I | 9                           | Residence Verification Card         |

    # PQM-15_CAS-49521-i) , PQM-15_CAS-49521-ii), # PQM-14_CAS-49521-i)
  @NotImplemented
  Scenario Outline: Approve Dynamic Form for <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>"
    And user logout from "Common Masters"
    And user logged in "Common Masters" with username and password present in "LoginDetailsCAS.xlsx" under "ChildBrowserSheet" and 0
    And user navigates to dynamic form mapping
    When user approves the pending dynamic form
    Then user should be able to approve dynamic form successfully
    Examples:
      | LogicalID           | ProductType |
      | PF_CAS_49521_MG_14I | PF          |


    # PQM-15_CAS-49521-i), PQM-15_CAS-49521-ii),# PQM-14_CAS-49521-i)
  @NotImplemented
  Scenario Outline: Added dynamic form page fields should get added into the Collateral page for <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>"
    And user logged in "CAS" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "collateral.xlsx" under sheet "guarantee_details" and row <Collateral_guarantee_rowNum>
    When user selects collateral type along with collateral sub type
    Then user should be able to see added dynamic form page fields
    Examples:
      | LogicalID           | ProductType | ApplicantType   | ApplicationStage   | Category | Key | Collateral_guarantee_rowNum |
      | PF_CAS_49521_MG_14I | PF          | <ApplicantType> | <ApplicationStage> |          |     | 9                           |


  # PQM-15_CAS-49521-ii)
  @NotImplemented
  Scenario Outline: Edit Dynamic Form for <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>" with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user logout from CAS
    And user logged in "Common Masters" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user navigates to dynamic form mapping
    And user reads data from the excel file "collateral.xlsx" under sheet "guarantee_details" and row <Collateral_guarantee_rowNum>
    And user searches created dynamic form mapping
    And user clicks on edit button on Dynamic Form Screen Mapping
    And user edits dynamic form field
    And user clicks on saves and request approval
    And user logged in "Common Masters" with username and password present in "LoginDetailsCAS.xlsx" under "ChildBrowserSheet" and 0
    When user approves the edited dynamic form
    Then user should be able to approve dynamic form successfully
    Examples:
      | LogicalID           | ProductType | Collateral_guarantee_rowNum |
      | PF_CAS_49521_MG_14I | PF          | 11                          |


#  PQM-15_CAS-49521-ii)
  @NotImplemented
  Scenario Outline: Dynamic form page fields should get updated in the Collateral page for <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>"
    And user logged in "CAS" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "collateral.xlsx" under sheet "guarantee_details" and row <Collateral_guarantee_rowNum>
    When user selects collateral type along with collateral sub type
    Then user should be able to see updated dynamic form page fields
    Examples:
      | LogicalID           | ProductType | ApplicantType   | ApplicationStage   | Category | Key | Collateral_guarantee_rowNum |
      | PF_CAS_49521_MG_14I | PF          | <ApplicantType> | <ApplicationStage> |          |     | 11                          |



   # PQM-16_CAS-49521-i),# PQM-16_CAS-49521-ii)
  @NotImplemented
  Scenario Outline: Validate Collateral moved to the GCC Database for <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>"
    When user executes query to get collateral detail from GCC Database
    Then "<Collateral_Type>" should be present in GCC Database with detail
    Examples:
      | LogicalID           | ProductType | Collateral_Type    |
      | PF_CAS_49521_MG_16I | PF          | Mortgage Guarantee |

     # PQM-16_CAS-49521-ii)
  @NotImplemented
  Scenario Outline: Validate Collateral moved to the GCC from front end for <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>"
    And user opens an application of "<ApplicationStage>" stage present in context from application grid
    And user open collateral page of "<ApplicationStage>" stage
    And user searches for an existing collateral
    And user reads data from the excel file "collateral.xlsx" under sheet "collateral_search" and row 3117
    And user enters Collateral Number from context in Search Collateral
    When clicks on search
    Then List of collaterals should available in ExternalSystem as per the parameters entered
    Examples:
      | LogicalID           | ProductType | ApplicationStage   |
      | PF_CAS_49521_MG_16I | PF          | <ApplicationStage> |


   # PQM-17_CAS-49521
  # Already covered in PQM-03_CAS-109708
#  Scenario Outline: collateral must be delink
#    Given try to delink collateral on credirt approval>colllatral
#    When user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
#    Then collateral must be delink
#    Examples:
#      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key |
#      | PF | <ApplicantType> | <ApplicationStage> |          |     |