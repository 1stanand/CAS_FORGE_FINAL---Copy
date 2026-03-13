@Epic-BulkAllocationGrid
@ReviewedBy-utkarsh.tiwari
@ImplementedBy-mohd.arif1
@AuthoredBy-gaurav.Khanna
@DevTrack
@GA-9.0
@BulkAllocationGrid
@Order
@CAS-256587
#FeatureID-CAS-256587
# Pre-Requisites---
# Validate user has access of the grid
# Validate user has appropriate role
Feature: Enhancements in Bulk Allocation Grid for Improved Usability and Data Visibility

  Scenario Outline: Replace Branch Code with Branch Name LogicalID <LogicalID>
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user starts creating application of logical id "<LogicalID>"
    And user creates an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from web service
    And set Application related data in the thread context
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row <SourcingDetails_home_rowNum>
    And user fills all sourcing details with application creation date and saves sourcing details
    And user navigates to application manager
    And user opens bulk allocation screen
    And user reads data from the excel file "application_manager.xlsx" under sheet "bulk_allocation" and row 0
    And user enters search parameter in bulk allocation search parameter
    And user click the search button to get the search result
    And Bulk allocation grid is rendered successfully with data
    And User clicks on show & hide icon
    And user selects the "Sourcing Branch" column
    And user clicks on save button to save column layout preferences
    And user enters search parameter in bulk allocation search parameter
    And user click the search button to get the search result
    And user reads data from the excel file "application_manager.xlsx" under sheet "bulk_allocation_grid_params" and row 0
    When Bulk allocation grid is rendered successfully with data
    Then Name is populated in Sourcing Branch field instead of code
    Examples:
      | LogicalID                | ProductType | ApplicationStage | ApplicantType | Category | key | SourcingDetails_home | SourcingDetailsWB     | SourcingDetails_home_rowNum |
      | PL_CAS_255999_APP_CREATE | PL          | DDE              | indiv         |          |     | home                 | sourcing_details.xlsx | 298                         |


  Scenario Outline: Implement Show/Hide Columns with saved user preferences LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>"
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user navigates to application manager
    And user opens bulk allocation screen
    And user reads data from the excel file "application_manager.xlsx" under sheet "bulk_allocation" and row 0
    And user enters search parameter in bulk allocation search parameter
    And user click the search button to get the search result
    And Bulk allocation grid is rendered successfully with data
    And User clicks on show & hide icon
    When User makes all the columns to be visible in the grid except customer name
    And user clicks on save button to save column layout preferences
    And user enters search parameter in bulk allocation search parameter
    And user click the search button to get the search result
    And User clicks on show & hide icon
    Then The columns in grid should be according to show & hide user preference
    Examples:
      | LogicalID                | ProductType | ApplicationStage | ApplicantType | Category | key |
      | PL_CAS_255999_APP_CREATE | PL          | DDE              | indiv         |          |     |


  Scenario Outline: Add and display "In-Queue Status" column LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>"
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user navigates to application manager
    And user opens bulk allocation screen
    And user reads data from the excel file "application_manager.xlsx" under sheet "bulk_allocation" and row 0
    And user enters search parameter in bulk allocation search parameter
    And user click the search button to get the search result
    And User clicks on show & hide icon
    And user selects the "In-Queue Status" column
    And user clicks on save button to save column layout preferences
    And user enters search parameter in bulk allocation search parameter
    And user click the search button to get the search result
    When Bulk allocation grid is rendered successfully with data
    Then The Bulk allocation grid should include a new column titled "In-Queue Status"
    Examples:
      | LogicalID                | ProductType | ApplicationStage | ApplicantType | Category | key |
      | PL_CAS_255999_APP_CREATE | PL          | DDE              | indiv         |          |     |


  Scenario Outline: Add and display "In-Queue Status" column with real-time updates LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>"
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user navigates to application manager
    And user opens bulk allocation screen
    And user reads data from the excel file "application_manager.xlsx" under sheet "bulk_allocation" and row 0
    And user enters search parameter in bulk allocation search parameter
    And user click the search button to get the search result
    And User clicks on show & hide icon
    And user selects the "In-Queue Status" column
    And user clicks on save button to save column layout preferences
    And user enters search parameter in bulk allocation search parameter
    And user click the search button to get the search result
    When Bulk allocation grid is rendered successfully with data
    Then A new column titled "In-Queue Status" should be visible in the grid and data should be visible in row
    Examples:
      | LogicalID                | ProductType | ApplicationStage | ApplicantType | Category | key |
      | PL_CAS_255999_APP_CREATE | PL          | DDE              | indiv         |          |     |


  Scenario Outline: Allow "Task ID" column to be hidden in Bulk Allocation screen LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>"
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user navigates to application manager
    And user opens bulk allocation screen
    And user reads data from the excel file "application_manager.xlsx" under sheet "bulk_allocation" and row 0
    And user enters search parameter in bulk allocation search parameter
    And user click the search button to get the search result
    And Bulk allocation grid is rendered successfully with data
    When User clicks on show & hide icon
    And user deselects the "Task ID" column
    And user clicks on save button to save column layout preferences
    And user enters search parameter in bulk allocation search parameter
    And user click the search button to get the search result
    And Bulk allocation grid is rendered successfully with data
    Then the "Task ID" column should be hidden from the grid
    Examples:
      | LogicalID                | ProductType | ApplicationStage | ApplicantType | Category | key |
      | PL_CAS_255999_APP_CREATE | PL          | DDE              | indiv         |          |     |


  Scenario Outline: Task ID column is hidden in Bulk Allocation screen LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>"
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user navigates to application manager
    And user opens bulk allocation screen
    And user reads data from the excel file "application_manager.xlsx" under sheet "bulk_allocation" and row 0
    And user enters search parameter in bulk allocation search parameter
    And user click the search button to get the search result
    When Bulk allocation grid is rendered successfully with data
    And User clicks on show & hide icon
    And User makes all the columns to be visible in the grid
    And user deselects the "Task ID" column
    And user clicks on save button to save column layout preferences
    And user logout from CAS
    And user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user navigates to application manager
    And user opens bulk allocation screen
    And user enters search parameter in bulk allocation search parameter
    And user click the search button to get the search result
    And Bulk allocation grid is rendered successfully with data
    Then the user preferences should persist for subsequent sessions and "Task ID" column should not be visible
    Examples:
      | LogicalID                | ProductType | ApplicationStage | ApplicantType | Category | key |
      | PL_CAS_255999_APP_CREATE | PL          | DDE              | indiv         |          |     |


  Scenario Outline: Validate search functionality availability across columns LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>"
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user navigates to application manager
    And user opens bulk allocation screen
    And user reads data from the excel file "application_manager.xlsx" under sheet "bulk_allocation" and row 0
    And user enters search parameter in bulk allocation search parameter
    And user click the search button to get the search result
    When Bulk allocation grid is rendered successfully with data
    Then "<Search Available>" for "<Field Name>" in Bulk Allocation grid
    Examples:
      | LogicalID                | ProductType | ApplicationStage | ApplicantType | Category | key | Field Name             | Search Available  |
      | PL_CAS_255999_APP_CREATE | PL          | DDE              | indiv         |          |     | Application ID         | Yes               |
      | PL_CAS_255999_APP_CREATE | PL          | DDE              | indiv         |          |     | Application Initiator  | Yes               |
      | PL_CAS_255999_APP_CREATE | PL          | DDE              | indiv         |          |     | Application Type       | Yes               |
      | PL_CAS_255999_APP_CREATE | PL          | DDE              | indiv         |          |     | Customer Name          | Yes               |
      | PL_CAS_255999_APP_CREATE | PL          | DDE              | indiv         |          |     | Stage Name             | Yes               |
      | PL_CAS_255999_APP_CREATE | PL          | DDE              | indiv         |          |     | Religion               | Yes               |
      | PL_CAS_255999_APP_CREATE | PL          | DDE              | indiv         |          |     | Segment                | Yes               |
      | PL_CAS_255999_APP_CREATE | PL          | DDE              | indiv         |          |     | Assigned to User       | Yes               |
      | PL_CAS_255999_APP_CREATE | PL          | DDE              | indiv         |          |     | Sourcing Date          | Yes               |
      | PL_CAS_255999_APP_CREATE | PL          | DDE              | indiv         |          |     | Sourcing Channel       | Yes               |
      | PL_CAS_255999_APP_CREATE | PL          | DDE              | indiv         |          |     | In-Queue Status        | No                |
      | PL_CAS_255999_APP_CREATE | PL          | DDE              | indiv         |          |     | Loan Amount            | No                |
      | PL_CAS_255999_APP_CREATE | PL          | DDE              | indiv         |          |     | Team Branch            | No                |
      | PL_CAS_255999_APP_CREATE | PL          | DDE              | indiv         |          |     | Last Updated           | No                |


  Scenario Outline: Bulk Allocation new fields visibility in grid LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>"
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user navigates to application manager
    And user opens bulk allocation screen
    And user reads data from the excel file "application_manager.xlsx" under sheet "bulk_allocation" and row 0
    And user enters search parameter in bulk allocation search parameter
    And user click the search button to get the search result
    And User clicks on show & hide icon
    And User makes all the columns to be visible in the grid
    And user clicks on save button to save column layout preferences
    And user enters search parameter in bulk allocation search parameter
    And user click the search button to get the search result
    When Bulk allocation grid is rendered successfully with data
    Then In bulk allocation grid the "<New Field Name>" should be visible in the grid
    Examples:
      | LogicalID                | ProductType | ApplicationStage | ApplicantType | Category | key | New Field Name   |
      | PL_CAS_255999_APP_CREATE | PL          | DDE              | indiv         |          |     | Sourcing Channel |
      | PL_CAS_255999_APP_CREATE | PL          | DDE              | indiv         |          |     | Last Updated     |
      | PL_CAS_255999_APP_CREATE | PL          | DDE              | indiv         |          |     | Sourcing Date    |

  Scenario Outline: Add Export grid functionality LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>"
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user navigates to application manager
    And user opens bulk allocation screen
    And user reads data from the excel file "application_manager.xlsx" under sheet "bulk_allocation" and row 0
    And user enters search parameter in bulk allocation search parameter
    And user click the search button to get the search result
    When Bulk allocation grid is rendered successfully with data
    Then The grid should include a new functionality as export
    Examples:
      | LogicalID                | ProductType | ApplicationStage | ApplicantType | Category | key |
      | PL_CAS_255999_APP_CREATE | PL          | DDE              | indiv         |          |     |

  Scenario Outline: Export file containing filtered file LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>"
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user navigates to application manager
    And user opens bulk allocation screen
    And user reads data from the excel file "application_manager.xlsx" under sheet "bulk_allocation" and row 0
    And user enters search parameter in bulk allocation search parameter
    And user click the search button to get the search result
    And Bulk allocation grid is rendered successfully with data
    When the user clicks the export icon in bulk allocation grid
    And user click the Export to "Excel" icon
    Then "EXCEL" File should be generated successfully with the grid data
    Examples:
      | LogicalID                | ProductType | ApplicationStage | ApplicantType | Category | key |
      | PL_CAS_255999_APP_CREATE | PL          | DDE              | indiv         |          |     |


  Scenario Outline: Export CSV file containing filtered records LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>"
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user navigates to application manager
    And user opens bulk allocation screen
    And user reads data from the excel file "application_manager.xlsx" under sheet "bulk_allocation" and row 0
    And user enters search parameter in bulk allocation search parameter
    And user click the search button to get the search result
    And Bulk allocation grid is rendered successfully with data
    When the user clicks the export icon in bulk allocation grid
    And user click the Export to "CSV" icon
    Then "CSV" File should be generated successfully with the grid data
    Examples:
      | LogicalID                | ProductType | ApplicationStage | ApplicantType | Category | key |
      | PL_CAS_255999_APP_CREATE | PL          | DDE              | indiv         |          |     |


  Scenario Outline: Export PDF file containing filtered records LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>"
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user navigates to application manager
    And user opens bulk allocation screen
    And user reads data from the excel file "application_manager.xlsx" under sheet "bulk_allocation" and row 0
    And user enters search parameter in bulk allocation search parameter
    And user click the search button to get the search result
    And Bulk allocation grid is rendered successfully with data
    When the user clicks the export icon in bulk allocation grid
    And user click the Export to "PDF" icon
    Then Pdf should be generated successfully with the grid data
    Examples:
      | LogicalID                | ProductType | ApplicationStage | ApplicantType | Category | key |
      | PL_CAS_255999_APP_CREATE | PL          | DDE              | indiv         |          |     |


  Scenario Outline: Sort by Application Number in ascending order LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>"
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user navigates to application manager
    And user opens bulk allocation screen
    And user reads data from the excel file "application_manager.xlsx" under sheet "bulk_allocation" and row 0
    And user enters search parameter in bulk allocation search parameter without application number
    And user click the search button to get the search result
    And Bulk allocation grid is rendered successfully with data
    When The user clicks the "Application ID" column header to sort the records
    Then The grid should display the records sorted in ascending order of "Application ID"
    Examples:
      | LogicalID                | ProductType | ApplicationStage | ApplicantType | Category | key |
      | PL_CAS_255999_APP_CREATE | PL          | DDE              | indiv         |          |     |


  Scenario Outline: Sort by Application Number in descending order , after clicking the sort icon 2 times
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>"
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user navigates to application manager
    And user opens bulk allocation screen
    And user reads data from the excel file "application_manager.xlsx" under sheet "bulk_allocation" and row 0
    And user enters search parameter in bulk allocation search parameter without application number
    And user click the search button to get the search result
    And Bulk allocation grid is rendered successfully with data
    When The user clicks the "Application ID" column header to sort the records
    And The user clicks the "Application ID" column header to sort the records
    Then The grid should display the records sorted in descending order of "Application ID"
    Examples:
      | LogicalID                | ProductType | ApplicationStage | ApplicantType | Category | key |
      | PL_CAS_255999_APP_CREATE | PL          | DDE              | indiv         |          |     |


  Scenario Outline: Sort by Sourcing Date newly added column LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>"
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user navigates to application manager
    And user opens bulk allocation screen
    And user reads data from the excel file "application_manager.xlsx" under sheet "bulk_allocation" and row 0
    And user enters search parameter in bulk allocation search parameter without application number
    And user click the search button to get the search result
    And Bulk allocation grid is rendered successfully with data
    When The user clicks the "Sourcing Date" column header to sort the records
    Then The grid should display the records sorted in ascending order of "Sourcing Date"
    Examples:
      | LogicalID                | ProductType | ApplicationStage | ApplicantType | Category | key |
      | PL_CAS_255999_APP_CREATE | PL          | DDE              | indiv         |          |     |

#   To be commented as sorting on this column is not working fine
#  Scenario Outline: Sort by Last Update Date & Time LogicalID <LogicalID>
#    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>"
#    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
#    And user navigates to application manager
#    And user opens bulk allocation screen
#    And user reads data from the excel file "application_manager.xlsx" under sheet "bulk_allocation" and row 0
#    And user enters search parameter in bulk allocation search parameter without application number
#    And user click the search button to get the search result
#    And Bulk allocation grid is rendered successfully with data
#    When The user clicks the "Last Updated" column header to sort the records
#    Then The grid should display the records sorted in ascending order of "Last Updated"
#    Examples:
#      | LogicalID                | ProductType | ApplicationStage | ApplicantType | Category | key |
#      | PL_CAS_255999_APP_CREATE | PL          | DDE              | indiv         |          |     |


  Scenario Outline: Sorting preserved during pagination LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>"
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user navigates to application manager
    And user opens bulk allocation screen
    And user reads data from the excel file "application_manager.xlsx" under sheet "bulk_allocation" and row 0
    And user enters search parameter in bulk allocation search parameter without application number
    And user click the search button to get the search result
    And Bulk allocation grid is rendered successfully with data
    And The user clicks the "Application ID" column header to sort the records
    When The user navigates to next page in bulk allocation grid
    Then The grid should display the records sorted in ascending order of "Application ID"
    Examples:
      | LogicalID                | ProductType | ApplicationStage | ApplicantType | Category | key |
      | PL_CAS_255999_APP_CREATE | PL          | DDE              | indiv         |          |     |


  Scenario Outline: Sorting preserved when filters are applied
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>"
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user navigates to application manager
    And user opens bulk allocation screen
    And user reads data from the excel file "application_manager.xlsx" under sheet "bulk_allocation" and row 0
    And user enters search parameter in bulk allocation search parameter without application number
    And user click the search button to get the search result
    And Bulk allocation grid is rendered successfully with data
    And The user clicks the "Application ID" column header to sort the records
    And user reads data from the excel file "application_manager.xlsx" under sheet "bulk_allocation_grid_params" and row 0
    When User enters the value in "STAGE NAME" column in Grid
    Then Grid should show filtered records in sorted ascending order by "Application ID"
    Examples:
      | LogicalID                | ProductType | ApplicationStage | ApplicantType | Category | key |
      | PL_CAS_255999_APP_CREATE | PL          | DDE              | indiv         |          |     |


  Scenario Outline: Sorting working on "In-Queue Status" by sorting LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>"
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user navigates to application manager
    And user opens bulk allocation screen
    And user reads data from the excel file "application_manager.xlsx" under sheet "bulk_allocation" and row 0
    And user enters search parameter in bulk allocation search parameter without application number
    And user click the search button to get the search result
    And Bulk allocation grid is rendered successfully with data
    And The user clicks the "In-Queue Status" column header to sort the records
    Then The grid should display the records sorted in ascending order of "In-Queue Status"
    Examples:
      | LogicalID                | ProductType | ApplicationStage | ApplicantType | Category | key |
      | PL_CAS_255999_APP_CREATE | PL          | DDE              | indiv         |          |     |


  Scenario Outline: Search by Application Number (Exact Match) LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>"
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user navigates to application manager
    And user opens bulk allocation screen
    And user reads data from the excel file "application_manager.xlsx" under sheet "bulk_allocation" and row 0
    And user enters search parameter in bulk allocation search parameter without application number
    And user click the search button to get the search result
    And Bulk allocation grid is rendered successfully with data
    When User enters the value in "Application ID" column in Grid
    Then Only records should be displayed with Application Number provided in search
    Examples:
      | LogicalID                | ProductType | ApplicationStage | ApplicantType | Category | key |
      | PL_CAS_255999_APP_CREATE | PL          | DDE              | indiv         |          |     |


  Scenario Outline: Search by Application Initiator (Exact match) LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>"
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user navigates to application manager
    And user opens bulk allocation screen
    And user reads data from the excel file "application_manager.xlsx" under sheet "bulk_allocation" and row 0
    And user enters search parameter in bulk allocation search parameter
    And user click the search button to get the search result
    And Bulk allocation grid is rendered successfully with data
    And user reads data from the excel file "application_manager.xlsx" under sheet "bulk_allocation_grid_params" and row 0
    When User enters the value in "Application Initiator" column in Grid
    Then only records with same Application Initiator should appear in grid if any
    Examples:
      | LogicalID                | ProductType | ApplicationStage | ApplicantType | Category | key |
      | PL_CAS_255999_APP_CREATE | PL          | DDE              | indiv         |          |     |


  Scenario Outline: Search by Host ID LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>"
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user navigates to application manager
    And user opens bulk allocation screen
    And user reads data from the excel file "application_manager.xlsx" under sheet "bulk_allocation" and row 0
    And user enters search parameter in bulk allocation search parameter
    And user click the search button to get the search result
    And Bulk allocation grid is rendered successfully with data
    And user reads data from the excel file "application_manager.xlsx" under sheet "bulk_allocation_grid_params" and row 0
    When User enters the value in "Host ID" column in Grid
    Then Only records should appear in grid having matching "Host ID" as searched in the grid
    Examples:
      | LogicalID                | ProductType | ApplicationStage | ApplicantType | Category | key |
      | PL_CAS_255999_APP_CREATE | PL          | DDE              | indiv         |          |     |


  Scenario Outline: Search by Application Type LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>"
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user navigates to application manager
    And user opens bulk allocation screen
    And user reads data from the excel file "application_manager.xlsx" under sheet "bulk_allocation" and row 0
    And user enters search parameter in bulk allocation search parameter
    And user click the search button to get the search result
    And Bulk allocation grid is rendered successfully with data
    And user reads data from the excel file "application_manager.xlsx" under sheet "bulk_allocation_grid_params" and row 0
    When User enters the value in "Application Type" column in Grid
    Then Only records should appear in grid having matching "Application Type" as searched in the grid
    Examples:
      | LogicalID                | ProductType | ApplicationStage | ApplicantType | Category | key |
      | PL_CAS_255999_APP_CREATE | PL          | DDE              | indiv         |          |     |


  Scenario Outline: Search by Customer Name (case insensitive) LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>"
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user navigates to application manager
    And user opens bulk allocation screen
    And user reads data from the excel file "application_manager.xlsx" under sheet "bulk_allocation" and row 0
    And user enters search parameter in bulk allocation search parameter without application number
    And user click the search button to get the search result
    And Bulk allocation grid is rendered successfully with data
    When User enters the value in "Customer Name" column in Grid
    Then Only records should appear in grid having matching "Customer Name" as searched in the grid
    Examples:
      | LogicalID                | ProductType | ApplicationStage | ApplicantType | Category | key |
      | PL_CAS_255999_APP_CREATE | PL          | DDE              | indiv         |          |     |


  Scenario Outline: Search by Stage LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>"
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user navigates to application manager
    And user opens bulk allocation screen
    And user reads data from the excel file "application_manager.xlsx" under sheet "bulk_allocation" and row 0
    And user enters search parameter in bulk allocation search parameter
    And user clears the activity or stage field in search parameters
    And user click the search button to get the search result
    And Bulk allocation grid is rendered successfully with data
    And user reads data from the excel file "application_manager.xlsx" under sheet "bulk_allocation_grid_params" and row 0
    When User enters the value in "STAGE NAME" column in Grid
    Then Only records should appear in grid having matching "STAGE NAME" as searched in the grid
    Examples:
      | LogicalID                | ProductType | ApplicationStage | ApplicantType | Category | key |
      | PL_CAS_255999_APP_CREATE | PL          | DDE              | indiv         |          |     |


  Scenario Outline: Search by Religion LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>"
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user navigates to application manager
    And user opens bulk allocation screen
    And user reads data from the excel file "application_manager.xlsx" under sheet "bulk_allocation" and row 0
    And user enters search parameter in bulk allocation search parameter without application number
    And user click the search button to get the search result
    And Bulk allocation grid is rendered successfully with data
    And user reads data from the excel file "application_manager.xlsx" under sheet "bulk_allocation_grid_params" and row 0
    When User enters the value in "Religion" column in Grid
    Then Only records should appear in grid having matching "Religion" as searched in the grid
    Examples:
      | LogicalID                | ProductType | ApplicationStage | ApplicantType | Category | key |
      | PL_CAS_255999_APP_CREATE | PL          | DDE              | indiv         |          |     |


  Scenario Outline: Search by Sourcing Date LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>"
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user navigates to application manager
    And user opens bulk allocation screen
    And user reads data from the excel file "application_manager.xlsx" under sheet "bulk_allocation" and row 0
    And user enters search parameter in bulk allocation search parameter without application number
    And user click the search button to get the search result
    And Bulk allocation grid is rendered successfully with data
    And user reads data from the excel file "application_manager.xlsx" under sheet "bulk_allocation_grid_params" and row 0
    When user enters the range in sourcing date field in grid
    Then Only applications sourced between these dates are shown in grid
    Examples:
      | LogicalID                | ProductType | ApplicationStage | ApplicantType | Category | key |
      | PL_CAS_255999_APP_CREATE | PL          | DDE              | indiv         |          |     |


  Scenario Outline: Search by Channel LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>"
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user navigates to application manager
    And user opens bulk allocation screen
    And user reads data from the excel file "application_manager.xlsx" under sheet "bulk_allocation" and row 0
    And user enters search parameter in bulk allocation search parameter
    And user click the search button to get the search result
    And Bulk allocation grid is rendered successfully with data
    And user reads data from the excel file "application_manager.xlsx" under sheet "bulk_allocation_grid_params" and row 0
    When User enters the value in "Sourcing Channel" column in Grid
    Then Only records should appear in grid having matching "Sourcing Channel" as searched in the grid
    Examples:
      | LogicalID                | ProductType | ApplicationStage | ApplicantType | Category | key |
      | PL_CAS_255999_APP_CREATE | PL          | DDE              | indiv         |          |     |


  Scenario Outline: Search across multiple fields simultaneously LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>"
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user navigates to application manager
    And user opens bulk allocation screen
    And user reads data from the excel file "application_manager.xlsx" under sheet "bulk_allocation" and row 0
    And user enters search parameter in bulk allocation search parameter
    And user click the search button to get the search result
    And Bulk allocation grid is rendered successfully with data
    And user reads data from the excel file "application_manager.xlsx" under sheet "bulk_allocation_grid_params" and row 0
    When User enters the value in "STAGE NAME" column in Grid
    And User enters the value in "Customer Name" column in Grid
    Then Only applications matching the Stage Name and Customer Name appears in Grid
    Examples:
      | LogicalID                | ProductType | ApplicationStage | ApplicantType | Category | key |
      | PL_CAS_255999_APP_CREATE | PL          | DDE              | indiv         |          |     |


  Scenario Outline: Search should not return results for invalid query LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>"
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user navigates to application manager
    And user opens bulk allocation screen
    And user reads data from the excel file "application_manager.xlsx" under sheet "bulk_allocation" and row 0
    And user enters search parameter in bulk allocation search parameter
    And user click the search button to get the search result
    And Bulk allocation grid is rendered successfully with data
    When The user search by invalid Stage Name as "<Stage Name>" in grid
    Then The grid should show No Records Found
    Examples:
      | LogicalID                | ProductType | ApplicationStage | ApplicantType | Category | key | Stage Name |
      | PL_CAS_255999_APP_CREATE | PL          | DDE              | indiv         |          |     | XYZABC     |


  Scenario Outline: Search value should be applied only to the intended column - Sourcing Branch & Application initiator LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>"
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user navigates to application manager
    And user opens bulk allocation screen
    And user reads data from the excel file "application_manager.xlsx" under sheet "bulk_allocation" and row 0
    And user enters search parameter in bulk allocation search parameter
    And user click the search button to get the search result
    And Bulk allocation grid is rendered successfully with data
    And user reads data from the excel file "application_manager.xlsx" under sheet "bulk_allocation_grid_params" and row 0
    And User enters the value in "Application Initiator" column in Grid
    When User enters the value in "Sourcing Branch" column in Grid
    Then Only records with Sourcing Branch and Application initiator searched should appear in Grid
    Examples:
      | LogicalID                | ProductType | ApplicationStage | ApplicantType | Category | key |
      | PL_CAS_255999_APP_CREATE | PL          | DDE              | indiv         |          |     |


  Scenario Outline: Search filter should reset when user clicks "Clear Filters" LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>"
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user navigates to application manager
    And user opens bulk allocation screen
    And user reads data from the excel file "application_manager.xlsx" under sheet "bulk_allocation" and row 0
    And user enters search parameter in bulk allocation search parameter
    And user click the search button to get the search result
    And Bulk allocation grid is rendered successfully with data
    And user sorts the records by application number column
    And The Grid loaded with data having application numbers in order by default
    And user reads data from the excel file "application_manager.xlsx" under sheet "bulk_allocation_grid_params" and row 0
    When User enters the value in "Stage Name" column in Grid
    And the user clicks the clear filter button in bulk allocation grid
    Then The grid should be rendered without the search parameters
    Examples:
      | LogicalID                | ProductType | ApplicationStage | ApplicantType | Category | key |
      | PL_CAS_255999_APP_CREATE | PL          | DDE              | indiv         |          |     |


  Scenario Outline: Search preference should not persist after logout LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>"
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user navigates to application manager
    And user opens bulk allocation screen
    And user reads data from the excel file "application_manager.xlsx" under sheet "bulk_allocation" and row 0
    And user enters search parameter in bulk allocation search parameter
    And user click the search button to get the search result
    And Bulk allocation grid is rendered successfully with data
    And The user search by invalid Stage Name as "<Stage Name>" in grid
    When User opens the search parameter accordion and press the reset button
    And user enters search parameter in bulk allocation search parameter
    And user click the search button to get the search result
    And Bulk allocation grid is rendered successfully with data
    Then The search of stage name is empty in the grid
    Examples:
      | LogicalID                | ProductType | ApplicationStage | ApplicantType | Category | key |  Stage Name |
      | PL_CAS_255999_APP_CREATE | PL          | DDE              | indiv         |          |     |  XYZABC     |

  Scenario Outline: Upload user preference saved in Show/Hide Columns LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>"
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user navigates to application manager
    And user opens bulk allocation screen
    And user reads data from the excel file "application_manager.xlsx" under sheet "bulk_allocation" and row 0
    And user enters search parameter in bulk allocation search parameter
    And user click the search button to get the search result
    And Bulk allocation grid is rendered successfully with data
    And User clicks on show & hide icon
    And the user hides some of the columns using Show & Hide functionality
    And user clicks on save button to save column layout preferences
    And user enters search parameter in bulk allocation search parameter
    And user click the search button to get the search result
    When Bulk allocation grid is rendered successfully with data
    And User clicks on show & hide icon
    Then The bulk allocation column preferences for user should be according to save preferences
    Examples:
      | LogicalID                | ProductType | ApplicationStage | ApplicantType | Category | key |
      | PL_CAS_255999_APP_CREATE | PL          | DDE              | indiv         |          |     |
