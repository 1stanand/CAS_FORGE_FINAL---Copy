@Epic-PF_Share_Base
@PQMStory
@AuthoredBy-ankit.yadav
@ImplementedBy-ankit.yadav
@Release
@Shares
@Islamic
@Perishable

#${ApplicantType:["indiv"]}
#${ProductType:["IPF"]}
#${ApplicationStage:["Reconsideration"]}

Feature: Share Purchase Tab Functionality at post approval stage

  Background:
    Given user is on CAS Login Page

#PQM-1_CAS-189504
#FeatureID-ACAUTOCAS-5496
  Scenario Outline: ACAUTOCAS-14654:  <Action> the authority for share purchase tab: SHARE_PURCHASE_TAB
    And user logged in "Common Masters" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    When user navigates to System Administration - User Management - Users page
    And user reads data from the excel file "users.xlsx" under sheet "user_data" and row <Users_userData_rowNum>
    And user "<Action>" a Role with authority SHARE_PURCHASE_TAB to a user
    Then user should be able to "<Action>" role with Authority Share Purchase tab
    Examples:
      | Action | Users_userData_rowNum |
      | add    | 0                     |
      | delete | 0                     |

#PQM-2_CAS-189504
#PMG-1_CAS-189504
#ST-9_CAS-189504, 10_CAS-189504
#FeatureID-ACAUTOCAS-5496
  Scenario Outline: ACAUTOCAS-14655: Login with user who is given authority for Share Purchase Tab
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user reads data from the excel file "shares.xlsx" under sheet "background" and row 0
    When user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    Then user should be able to see share purchase stage
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Category | Key              |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | isshare purchase |

#PQM-3_CAS-189504
#FeatureID-ACAUTOCAS-5496
  Scenario Outline: ACAUTOCAS-14656:  Login with user who is given authority to <Action> Share Purchase
    And user logged in "Common Masters" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    When user navigates to System Administration - User Management - Users page
    And user reads data from the excel file "users.xlsx" under sheet "user_data" and row <Users_userData_rowNum>
    And user "<Action>" a Role with authority SHARE_PURCHASE to a user
    Then user should be able to "<Action>" role with Authority Share Purchase
    Examples:
      | Action | Users_userData_rowNum |
      | add    | 1                     |
      | delete | 1                     |

#PQM-4_CAS-189504
#PMG-2_CAS-189504
#FeatureID-ACAUTOCAS-5496
  Scenario Outline: ACAUTOCAS-14657:  Share Purchase Tab should be <Condition>
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user reads data from the excel file "shares.xlsx" under sheet "background" and row 0
    When user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    Then share purchase tab should be "<Condition>"
    Examples:
      | ProductType   | ApplicationStage   | Condition                | ApplicantType   | Category | Key              |
      | <ProductType> | <ApplicationStage> | opened in view only mode | <ApplicantType> | shares   | isshare purchase |
    
#PQM-6_CAS-189504
#PMG-4.1_CAS-189504
#FeatureID-ACAUTOCAS-5496
  Scenario Outline: ACAUTOCAS-14658:  Verify <Fields> with Required Button
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user reads data from the excel file "shares.xlsx" under sheet "background" and row 0
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user is on Share Purchase Tab
    When user selects Required button on share purchase
    And user reads data from the excel file "<ShareDetailsWB>" under sheet "<ShareDetails_sharePurchase>" and row <ShareDetails_sharePurchase_rowNum>
    Then user should be able to see share purchase details fields with label as in workbook
    Examples:
      | Fields                | ProductType   | ApplicationStage   | ShareDetailsWB     | ShareDetails_sharePurchase | ShareDetails_sharePurchase_rowNum | ApplicantType   | Category | Key             |
      | Serial No             | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_purchase             | 13                                | <ApplicantType> | shares   | ispost approval |
      | Execution Date/Time   | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_purchase             | 14                                | <ApplicantType> | shares   | ispost approval |
      | Total Executed Amount | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_purchase             | 15                                | <ApplicantType> | shares   | ispost approval |
      | Status                | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_purchase             | 16                                | <ApplicantType> | shares   | ispost approval |
      | Additional Details    | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_purchase             | 17                                | <ApplicantType> | shares   | ispost approval |

#PQM-7_CAS-189504
#PMG-4.2_CAS-189504
#FeatureID-ACAUTOCAS-5496
  Scenario Outline: ACAUTOCAS-14659:  Verify <Fields> with All Button
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user reads data from the excel file "shares.xlsx" under sheet "background" and row 0
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user is on Share Purchase Tab
    When user clicks all button on share purchase
    And user reads data from the excel file "<ShareDetailsWB>" under sheet "<ShareDetails_sharePurchase>" and row <ShareDetails_sharePurchase_rowNum>
    Then user should be able to see share purchase details fields with label as in workbook
    Examples:
      | Fields                                             | ProductType   | ApplicationStage   | ShareDetailsWB     | ShareDetails_sharePurchase | ShareDetails_sharePurchase_rowNum | ApplicantType   | Category | Key             |
      | Serial No                                          | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_purchase             | 13                                | <ApplicantType> | shares   | ispost approval |
      | Execution Date/Time                                | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_purchase             | 14                                | <ApplicantType> | shares   | ispost approval |
      | Total Executed Amount                              | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_purchase             | 15                                | <ApplicantType> | shares   | ispost approval |
      | Status                                             | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_purchase             | 16                                | <ApplicantType> | shares   | ispost approval |
      | Additional Details                                 | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_purchase             | 17                                | <ApplicantType> | shares   | ispost approval |
      | Permanent Residence Telephone Number 1             | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_purchase             | 18                                | <ApplicantType> | shares   | ispost approval |
      | Relation with Applicant                            | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_purchase             | 19                                | <ApplicantType> | shares   | ispost approval |
      | Person Contacted                                   | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_purchase             | 20                                | <ApplicantType> | shares   | ispost approval |
      | Telecalling Log                                    | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_purchase             | 21                                | <ApplicantType> | shares   | ispost approval |
      | Permanent Residence Telephone Number 2             | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_purchase             | 22                                | <ApplicantType> | shares   | ispost approval |
      | Name of Company                                    | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_purchase             | 35                                | <ApplicantType> | shares   | ispost approval |
      | Landmark                                           | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_purchase             | 36                                | <ApplicantType> | shares   | ispost approval |
      | Address                                            | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_purchase             | 37                                | <ApplicantType> | shares   | ispost approval |
      | Address Residence Information (Permanent Address)  | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_purchase             | 38                                | <ApplicantType> | shares   | ispost approval |
      | Landmark Residence Information (Permanent Address) | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_purchase             | 39                                | <ApplicantType> | shares   | ispost approval |
      | Permanent Address                                  | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_purchase             | 40                                | <ApplicantType> | shares   | ispost approval |
      | Vintage                                            | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_purchase             | 41                                | <ApplicantType> | shares   | ispost approval |
      | Type                                               | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_purchase             | 42                                | <ApplicantType> | shares   | ispost approval |

#PQM-10_CAS-189504
#UT-47_CAS-189504
#FeatureID-ACAUTOCAS-5496
  Scenario Outline: ACAUTOCAS-14660:  Check Expand All functionality with <Section>
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user reads data from the excel file "shares.xlsx" under sheet "background" and row 0
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user is on Share Purchase Tab
    When user clicks on Expand All button
    Then "<Section>" in the share purchase tab should be expanded
    Examples:
      | ProductType   | ApplicationStage   | Section                     | ApplicantType   | Category | Key             |
      | <ProductType> | <ApplicationStage> | Share Purchase Details Grid | <ApplicantType> | shares   | ispost approval |

#PQM-11_CAS-189504
#UT-48_CAS-189504
#FeatureID-ACAUTOCAS-5496
  Scenario Outline: ACAUTOCAS-14661:  Validate collapse All functionality with <Section>
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user reads data from the excel file "shares.xlsx" under sheet "background" and row 0
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user is on Share Purchase Tab
    When user clicks on collapse "<Section>" while all tabs are bydefault opened
    Then "<Section>" in the share purchase tab should be collapsed
    Examples:
      | ProductType   | ApplicationStage   | Section                     | ApplicantType   | Category | Key             |
      | <ProductType> | <ApplicationStage> | Share Purchase Details Grid | <ApplicantType> | shares   | ispost approval |


#PQM-12_CAS-189504
#ST-33_CAS-189504
#FeatureID-ACAUTOCAS-5496
  Scenario Outline: ACAUTOCAS-14662:  Verify if Share Exceution grid is <condition>
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user reads data from the excel file "shares.xlsx" under sheet "background" and row 0
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    When user is on Share Purchase Tab
    Then share execution details grid should be "<condition>"
    Examples:
      | ProductType   | ApplicationStage   | condition | ApplicantType   | Category | Key             |
      | <ProductType> | <ApplicationStage> | visible   | <ApplicantType> | shares   | ispost approval |

#PQM-13_CAS-189504
#PQM-32_CAS-189504
#PMG-6_CAS-189504
#FeatureID-ACAUTOCAS-5496
  Scenario Outline: ACAUTOCAS-14663:  Share Execution Grid <ColumnName> verification
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user reads data from the excel file "shares.xlsx" under sheet "background" and row 0
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    When user is on Share Purchase Tab
    Then "<ColumnName>" should be present at proper position
    Examples:
      | ProductType   | ApplicationStage   | ColumnName            | ApplicantType   | Category | Key             |
      | <ProductType> | <ApplicationStage> | Serial No             | <ApplicantType> | shares   | ispost approval |
      | <ProductType> | <ApplicationStage> | Execution Date/Time   | <ApplicantType> | shares   | ispost approval |
      | <ProductType> | <ApplicationStage> | Total Executed Amount | <ApplicantType> | shares   | ispost approval |
      | <ProductType> | <ApplicationStage> | Status                | <ApplicantType> | shares   | ispost approval |
      | <ProductType> | <ApplicationStage> | Additional Details    | <ApplicantType> | shares   | ispost approval |

#PQM-16_CAS-189504
#PMG-9_CAS-189504
#ST-38_CAS-189504
#FeatureID-ACAUTOCAS-5496
  Scenario Outline: ACAUTOCAS-14664:  Validate + icon on share execution details to be <Condition>
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user reads data from the excel file "shares.xlsx" under sheet "background" and row 0
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user is on Share Purchase Tab
    When user clicks on + Icon corresponding to any record
    Then plus icon should be "<Condition>" next to each record in the grid
    Examples:
      | ProductType   | ApplicationStage   | Condition | ApplicantType   | Category | Key             |
      | <ProductType> | <ApplicationStage> | displayed | <ApplicantType> | shares   | ispost approval |
      | <ProductType> | <ApplicationStage> | enabled   | <ApplicantType> | shares   | ispost approval |

#PQM-17_CAS-189504
#PMG-10_CAS-189504
#ST-36_CAS-189504
#FeatureID-ACAUTOCAS-5496
  Scenario Outline: ACAUTOCAS-14665:  Validate clicking + Icon <Condition>
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user reads data from the excel file "shares.xlsx" under sheet "background" and row 0
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user is on Share Purchase Tab
    When user clicks on + Icon corresponding to any record
    Then "<Condition>" on share purchase tab
    Examples:
      | ProductType   | ApplicationStage   | Condition                                | ApplicantType   | Category | Key             |
      | <ProductType> | <ApplicationStage> | details will get opened in expanded mode | <ApplicantType> | shares   | ispost approval |
      | <ProductType> | <ApplicationStage> | plus icon will change into minus icon    | <ApplicantType> | shares   | ispost approval |

#PMG-8_CAS-189504
#FeatureID-ACAUTOCAS-5496
  Scenario Outline: ACAUTOCAS-14666:  Validate grid in Expand All mode and <Condition>
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user reads data from the excel file "shares.xlsx" under sheet "background" and row 0
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user is on Share Purchase Tab
    When user clicks on Expand All button
    Then "<Condition>" on share purchase tab
    Examples:
      | ProductType   | ApplicationStage   | Condition                                | ApplicantType   | Category | Key             |
      | <ProductType> | <ApplicationStage> | details will get opened in expanded mode | <ApplicantType> | shares   | ispost approval |
      | <ProductType> | <ApplicationStage> | plus icon will change into minus icon    | <ApplicantType> | shares   | ispost approval |

#PQM-18_CAS-189504
#PMG-11_CAS-189504
#FeatureID-ACAUTOCAS-5496
  Scenario Outline: ACAUTOCAS-14667:  Validate <Column> by clicking + button
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user reads data from the excel file "shares.xlsx" under sheet "background" and row 0
    When user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user is on Share Purchase Tab
    When user clicks on + Icon corresponding to any record
    Then investor details "<Column>" should be present along with data
    Examples:
      | ProductType   | ApplicationStage   | Column               | ApplicantType   | Category | Key             |
      | <ProductType> | <ApplicationStage> | Company Name         | <ApplicantType> | shares   | ispost approval |
      | <ProductType> | <ApplicationStage> | Order Number         | <ApplicantType> | shares   | ispost approval |
      | <ProductType> | <ApplicationStage> | Executed Quantity    | <ApplicantType> | shares   | ispost approval |
      | <ProductType> | <ApplicationStage> | Executed Share Price | <ApplicantType> | shares   | ispost approval |
      | <ProductType> | <ApplicationStage> | VAT Amount           | <ApplicantType> | shares   | ispost approval |
      | <ProductType> | <ApplicationStage> | Executed Amount      | <ApplicantType> | shares   | ispost approval |
      | <ProductType> | <ApplicationStage> | Execution Flag       | <ApplicantType> | shares   | ispost approval |

#PQM-19_CAS-189504
#PMG-12_CAS-189504
#ST-40_CAS-189504
#FeatureID-ACAUTOCAS-5496
  Scenario Outline: ACAUTOCAS-14668:  Validate number of records as per Order Type- Market Share Price
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user reads data from the excel file "shares.xlsx" under sheet "background" and row 0
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user is on Share Purchase Tab
    When user clicks on + Icon corresponding to any record
    Then single or multiple records can be present in the grid
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Category | Key             |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | ispost approval |

#PQM-20_CAS-189504
#PMG-13_CAS-189504
#ST-41_CAS-189504
#FeatureID-ACAUTOCAS-5496
  Scenario Outline: ACAUTOCAS-14669:  Validate number of records as per Order Type- Requested Share Price
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user reads data from the excel file "shares.xlsx" under sheet "background" and row 0
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user is on Share Purchase Tab
    When user clicks on + Icon corresponding to any record
    Then single or multiple records can be present in the grid
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Category | Key             |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | ispost approval |

#PQM-21_CAS-189504
#PMG-14_CAS-189504
#ST-42_CAS-189504
#FeatureID-ACAUTOCAS-5496
  Scenario Outline: ACAUTOCAS-14670:  Validate Additional Details hyper link to be <Condition>
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user reads data from the excel file "shares.xlsx" under sheet "background" and row 0
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    When user is on Share Purchase Tab
    Then additional details hyperlink corresponding to each record should be "<Condition>"
    Examples:
      | ProductType   | ApplicationStage   | Condition | ApplicantType   | Category | Key             |
      | <ProductType> | <ApplicationStage> | displayed | <ApplicantType> | shares   | ispost approval |

#PQM-22_CAS-189504
#PMG-15_CAS-189504
#ST-43_CAS-189504
#FeatureID-ACAUTOCAS-5496
  Scenario Outline: ACAUTOCAS-14671:  Validate Additional details modal window
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user reads data from the excel file "shares.xlsx" under sheet "background" and row 0
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user is on Share Purchase Tab
    When user clicks on additional details hyperlink for any record
    Then additional Details modal window will open
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Category | Key             |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | ispost approval |


#PQM-23_CAS-189504
#PMG-16_CAS-189504
#ST-45_CAS-189504
#UT-31_CAS-189504
#FeatureID-ACAUTOCAS-5496
  Scenario Outline: ACAUTOCAS-14672:  Validate closing of Additional details modal window
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user reads data from the excel file "shares.xlsx" under sheet "background" and row 0
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user is on Share Purchase Tab
    And user clicks on additional details hyperlink for any record
    When user click on cancel button
    Then modal window should get closed
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Category | Key             |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | ispost approval |

#PQM-30_CAS-189504
#FeatureID-ACAUTOCAS-5496
  Scenario Outline: ACAUTOCAS-14673:  In Additional Field section verify first field should be RFF value
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user reads data from the excel file "shares.xlsx" under sheet "background" and row 0
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user is on Share Purchase Tab
    When user clicks on additional details hyperlink for any record
    Then first field should be RFF value
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Category | Key             |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | ispost approval |

#PQM-34_CAS-189504
#FeatureID-ACAUTOCAS-5496
  Scenario Outline: ACAUTOCAS-14674:  Verify option Show Entry with <NoOfRecords> records
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user reads data from the excel file "shares.xlsx" under sheet "background" and row 0
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user is on Share Purchase Tab
    When user clicks on show entry and select "<NoOfRecords>" records
    Then upto "<NoOfRecords>" records should be visible in grid
    Examples:
      | ProductType   | ApplicationStage   | NoOfRecords | ApplicantType   | Category | Key             |
      | <ProductType> | <ApplicationStage> | 10          | <ApplicantType> | shares   | ispost approval |
      | <ProductType> | <ApplicationStage> | 25          | <ApplicantType> | shares   | ispost approval |
      | <ProductType> | <ApplicationStage> | 50          | <ApplicantType> | shares   | ispost approval |
      | <ProductType> | <ApplicationStage> | 100         | <ApplicantType> | shares   | ispost approval |

#PQM-35_CAS-189504
#FeatureID-ACAUTOCAS-5496
  Scenario Outline: ACAUTOCAS-14675:  Verify <FieldValue> should come from Investor details
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user reads data from the excel file "shares.xlsx" under sheet "background" and row 0
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user is on Share Purchase Tab
    And user reads data from the excel file "<ShareDetailsWB>" under sheet "<ShareDetails_sharePurchase>" and row <ShareDetails_sharePurchase_rowNum>
    When user clicks on + Icon corresponding to any record
    Then investor details "<FieldValue>" should be present along with data
    Examples:
      | ProductType   | ApplicationStage   | ShareDetailsWB     | ShareDetails_sharePurchase | ShareDetails_sharePurchase_rowNum | FieldValue           | ApplicantType   | Category | Key             |
      | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_purchase             | 99                                | Company Name         | <ApplicantType> | shares   | ispost approval |
      | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_purchase             | 99                                | Executed Share Price | <ApplicantType> | shares   | ispost approval |
      | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_purchase             | 99                                | Executed Amount      | <ApplicantType> | shares   | ispost approval |

#FeatureID-ACAUTOCAS-5496
  Scenario Outline: ACAUTOCAS-14676:  Validate Total Executed Amount and <Field>
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user reads data from the excel file "shares.xlsx" under sheet "background" and row 0
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user is on Share Purchase Tab
    When user clicks on + Icon corresponding to any record
    Then total executed Amount should be greater than equal to "<Field>"
    Examples:
      | ProductType   | ApplicationStage   | Field                | ApplicantType   | Category | Key             |
      | <ProductType> | <ApplicationStage> | Executed Share Price | <ApplicantType> | shares   | ispost approval |
      | <ProductType> | <ApplicationStage> | VAT Amount           | <ApplicantType> | shares   | ispost approval |
      | <ProductType> | <ApplicationStage> | Executed Amount      | <ApplicantType> | shares   | ispost approval |

#PMG-7_CAS-189504
#ST-35_CAS-189504
#FeatureID-ACAUTOCAS-5496
  Scenario Outline: ACAUTOCAS-14677:  <Section> section by default grid in collapse mode
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user reads data from the excel file "shares.xlsx" under sheet "background" and row 0
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    When user is on Share Purchase Tab
    Then by default "<Section>" will be in collapse mode
    Examples:
      | ProductType   | ApplicationStage   | Section                        | ApplicantType   | Category | Key             |
      | <ProductType> | <ApplicationStage> | Share Purchase Details Grid    | <ApplicantType> | shares   | ispost approval |
      | <ProductType> | <ApplicationStage> | Customer Communication History | <ApplicantType> | shares   | ispost approval |
      | <ProductType> | <ApplicationStage> | Activity                       | <ApplicantType> | shares   | ispost approval |

#PMG-25_CAS-189504
#ST-48_CAS-189504
#FeatureID-ACAUTOCAS-5496
  Scenario Outline: ACAUTOCAS-14678:  Validate Date & Time of each record
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user reads data from the excel file "shares.xlsx" under sheet "background" and row 0
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    When user is on Share Purchase Tab
    Then for each record Date & Time should get stamped
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Category | Key             |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | ispost approval |

#PQM-15_CAS-189504
#FeatureID-ACAUTOCAS-5496
  Scenario Outline: ACAUTOCAS-14679:  Check share purchase status
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user reads data from the excel file "shares.xlsx" under sheet "background" and row 0
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    When user is on Share Purchase Tab
    Then share purchase status should be approved
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Category | Key             |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | ispost approval |

#ST-52_CAS-189504
#FeatureID-ACAUTOCAS-5496
  Scenario Outline: ACAUTOCAS-14680:  Check Alignment of <ColumnName> at share purchase stage
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user reads data from the excel file "shares.xlsx" under sheet "background" and row 0
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user is on Share Purchase Tab
    When user clicks on additional details hyperlink for any record
    Then "<ColumnName>" should be present at proper position
    Examples:
      | ProductType   | ApplicationStage   | ColumnName               | ApplicantType   | Category | Key             |
      | <ProductType> | <ApplicationStage> | Additional Json Section  | <ApplicantType> | shares   | ispost approval |
      | <ProductType> | <ApplicationStage> | Additional Field Section | <ApplicantType> | shares   | ispost approval |

#PQM-28_CAS-189504
#UT-6_CAS-189504
#FeatureID-ACAUTOCAS-5496
  Scenario Outline: ACAUTOCAS-14681:  Click on Share Purchase Tab multiple times
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user reads data from the excel file "shares.xlsx" under sheet "background" and row 0
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user is on Share Purchase Tab
    When user clicks on Share Purchase Tab multiple times
    Then data in share purchase details table must get reloaded properly
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Category | Key             |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | ispost approval |

#PQM-33_CAS-189504
#FeatureID-ACAUTOCAS-5496
  Scenario Outline: ACAUTOCAS-14682:  Verify sorting option on the grid
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user reads data from the excel file "shares.xlsx" under sheet "background" and row 0
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user is on Share Purchase Tab
    When user click on the sorting option
    Then data should be sorted in ascending order
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Category | Key             |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | ispost approval |
