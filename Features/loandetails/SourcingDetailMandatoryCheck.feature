@Epic-Loan_Application_Details
@SkipTest
@Conventional
@Islamic

Feature: Validate Sourcing Details Tab

  @AuthoredBy-utkarsh.tiwari
    @ReviewedBy-None
    @ImplementedBy-utkarsh.tiwari
  Scenario Outline: ACAUTOCAS-13931:  Validating all mandatory field of Sourcing Detail tab
    Given user is on CAS Login Page
    When user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user clicks on menu
    And user clicks on Application Master
    And user clicks on Application Grid Master
    And user clicks on Applications
    And user clicks on Create Application
    And user clicks on Home Loan
    And user clicks on Applicant Information
    And user clicks on loan details
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row <SourcingDetails_home_rowNum>
    And user selects Channel
    And user inputs Product
    And user inputs amount requested
    And user inputs tenure
    And user inputs rate
    And user selects Application Purpose
    And user inputs sourcing name
    Then user clicks on save button

    Examples:
      | SourceDataFile       | SheetName | RowNumber | SourcingDetailsWB     | SourcingDetails_home | SourcingDetails_home_rowNum |
      | LoginDetailsCAS.xlsx | LoginData | 2         | sourcing_details.xlsx | home                 | 0                           |


  @ImplementedBy-ayush.garg
  Scenario Outline: ACAUTOCAS-13932:  Application is created for product with unmapped scheme
    Given user is on CAS Login Page
    When user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row <SourcingDetails_home_rowNum>
    And user create new application of personal loan for individual
    And user open loan details
    And user fills mandatory fields of Loan Information
    And user saves the application
    Then an error should occur



    Examples:
      | SourceDataFile       | SheetName | RowNumber | SourcingDetailsWB     | SourcingDetails_home | SourcingDetails_home_rowNum |
      | LoginDetailsCAS.xlsx | LoginData | 0         | sourcing_details.xlsx | home                 | 2                           |

  @ImplementedBy-ayush.garg
  Scenario Outline: ACAUTOCAS-13933:  Application is created for wrong product
    Given user is on CAS Login Page
    When user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row <SourcingDetails_home_rowNum>
    And user creates Application and add a product
    Then an error should occur on product tab



    Examples:
      | SourceDataFile       | SheetName | RowNumber | SourcingDetailsWB     | SourcingDetails_home | SourcingDetails_home_rowNum |
      | LoginDetailsCAS.xlsx | LoginData | 0         | sourcing_details.xlsx | home                 | 3                           |


  @ImplementedBy-ayush.garg
  Scenario Outline: ACAUTOCAS-13934:  Application is created with a "<variant>"
    Given user is on CAS Login Page
    When user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row <SourcingDetails_home_rowNum>
    And user creates Application and enters requested amount
    Then an error should occur on amount requested tab



    Examples:
      | SourceDataFile       | SheetName | RowNumber | SourcingDetailsWB     | SourcingDetails_home | SourcingDetails_home_rowNum |
      | LoginDetailsCAS.xlsx | LoginData | 0         | sourcing_details.xlsx | home                 | 4                           |
      | LoginDetailsCAS.xlsx | LoginData | 0         | sourcing_details.xlsx | home                 | 5                           |
      | LoginDetailsCAS.xlsx | LoginData | 0         | sourcing_details.xlsx | home                 | 6                           |

  @ImplementedBy-ayush.garg
  Scenario Outline: ACAUTOCAS-13935:  Application is created with "<variant>"
    Given user is on CAS Login Page
    When user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row <SourcingDetails_home_rowNum>
    And user creates Application and enters wrong tenure of loan period
    Then an error should occur on tenure tab



    Examples:
      | SourceDataFile       | SheetName | RowNumber | SourcingDetailsWB     | SourcingDetails_home | SourcingDetails_home_rowNum |
      | LoginDetailsCAS.xlsx | LoginData | 0         | sourcing_details.xlsx | home                 | 7                           |
      | LoginDetailsCAS.xlsx | LoginData | 0         | sourcing_details.xlsx | home                 | 8                           |


  @ImplementedBy-ayush.garg
  Scenario Outline: ACAUTOCAS-13936:  Application is created with wrong date of receipt
    Given user is on CAS Login Page
    When user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row <SourcingDetails_home_rowNum>
    And user creates Application and enters wrong wrong date of receipt
    Then an error should occur on date of receipt tab

    Examples:
      | SourceDataFile       | SheetName | RowNumber | SourcingDetailsWB     | SourcingDetails_home | SourcingDetails_home_rowNum |
      | LoginDetailsCAS.xlsx | LoginData | 0         | sourcing_details.xlsx | home                 | 10                          |


  @ImplementedBy-ayush.garg
  Scenario Outline: ACAUTOCAS-13937:  Invalid lead number-crm
    Given user is on CAS Login Page
    When user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row <SourcingDetails_home_rowNum>
    And user creates Application and enters wrong lead number-crm
    Then an error should occur on lead number-crm tab

    Examples:
      | SourceDataFile       | SheetName | RowNumber | SourcingDetailsWB     | SourcingDetails_home | SourcingDetails_home_rowNum |
      | LoginDetailsCAS.xlsx | LoginData | 0         | sourcing_details.xlsx | home                 | 12                          |


  @ImplementedBy-ayush.garg
  Scenario Outline: ACAUTOCAS-13938:  Invalid distance from sourcing Branch
    Given user is on CAS Login Page
    When user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row <SourcingDetails_home_rowNum>
    And user creates Application and enters wrong distance from sourcing Branch
    Then an error should occur on distance from sourcing Branch

    Examples:
      | SourceDataFile       | SheetName | RowNumber | SourcingDetailsWB     | SourcingDetails_home | SourcingDetails_home_rowNum |
      | LoginDetailsCAS.xlsx | LoginData | 0         | sourcing_details.xlsx | home                 | 13                          |


  @ImplementedBy-ayush.garg
  Scenario Outline: ACAUTOCAS-13939:  Invalid date of received document
    Given user is on CAS Login Page
    When user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row <SourcingDetails_home_rowNum>
    And user creates Application and enters invalid date of received document
    Then an error should occur on date of received document tab

    Examples:

      | SourceDataFile       | SheetName | RowNumber | SourcingDetailsWB     | SourcingDetails_home | SourcingDetails_home_rowNum |
      | LoginDetailsCAS.xlsx | LoginData | 0         | sourcing_details.xlsx | home                 | 14                          |



