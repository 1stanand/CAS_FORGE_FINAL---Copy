@Epic-Applicant_Information
@AuthoredBy-vipin.kishor
@ReviewedBy-shailja.mishra
@ReviewedByDEV
@Conventional
@Islamic
#FeatureID-ACAUTOCAS-108,ACAUTOCAS-112
Feature: Application grid validations

  @ImplementedBy-utkarsh.tiwari
  @Release2
  Scenario Outline: ACAUTOCAS-937: Check applications in pool
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    When user open application grid
    Then all applications in the pool should be displayed

    Examples:
      | SourceDataFile       | SheetName | RowNumber |
      | LoginDetailsCAS.xlsx | LoginData | 7         |

  @ImplementedBy-utkarsh.tiwari
  @Release2
  Scenario Outline: ACAUTOCAS-938: Check "<Var>" applications in application grid
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user open application grid
    When user check "<Var>" application
    Then all applications on which applications are in "<Var>" to the logged in user should be display

    Examples:
      | SourceDataFile       | SheetName | RowNumber | Var      |
      | LoginDetailsCAS.xlsx | LoginData | 7         | Assigned |
      | LoginDetailsCAS.xlsx | LoginData | 7         | Pool     |
      | LoginDetailsCAS.xlsx | LoginData | 7         | Hold     |

  @ImplementedBy-utkarsh.tiwari
  @Release2
  Scenario Outline: ACAUTOCAS-939: Set columns for "<Var>" applications to "<Preference_Action>" in application grid
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user open application grid
    When user "<Select_Not>" preference columns for "<Var>" to "<Preference_Action>" in application grid
    Then columns should be "<Preference_Action>" in "<Var>" application grid

    Examples:
      | SourceDataFile       |  | SheetName | RowNumber | Var      | Select_Not  | Preference_Action |
      | LoginDetailsCAS.xlsx |  | LoginData | 7         | Assigned | selects     | show              |
      | LoginDetailsCAS.xlsx |  | LoginData | 7         | Assigned | not selects | hide              |
      | LoginDetailsCAS.xlsx |  | LoginData | 7         | Pool     | selects     | show              |
      | LoginDetailsCAS.xlsx |  | LoginData | 7         | Pool     | not selects | hide              |
      | LoginDetailsCAS.xlsx |  | LoginData | 7         | Hold     | selects     | show              |
      | LoginDetailsCAS.xlsx |  | LoginData | 7         | Hold     | not selects | hide              |

  @ImplementedBy-utkarsh.tiwari
  @Release2
  Scenario Outline: ACAUTOCAS-940: Display application grid with selected fields in show hide preference of assigned applications
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user open application grid
    When user selects "<Show_Hide_Fields>" field in show hide preference of "Assigned" application
    Then selected "<Show_Hide_Fields>" should be display in "assigned" application grid
    Examples:
      | SourceDataFile       |  | SheetName | RowNumber | Show_Hide_Fields           |
      | LoginDetailsCAS.xlsx |  | LoginData | 7         | Loan Account Number        |
      | LoginDetailsCAS.xlsx |  | LoginData | 7         | Application Form Number    |
      | LoginDetailsCAS.xlsx |  | LoginData | 7         | Neo Cust ID                |
      | LoginDetailsCAS.xlsx |  | LoginData | 7         | Identification No.         |
      | LoginDetailsCAS.xlsx |  | LoginData | 7         | Customer Name              |
      | LoginDetailsCAS.xlsx |  | LoginData | 7         | Stage                      |
      | LoginDetailsCAS.xlsx |  | LoginData | 7         | In-Queue Status            |
      | LoginDetailsCAS.xlsx |  | LoginData | 7         | Product Type               |
      | LoginDetailsCAS.xlsx |  | LoginData | 7         | Product Name               |
      | LoginDetailsCAS.xlsx |  | LoginData | 7         | Scheme                     |
      | LoginDetailsCAS.xlsx |  | LoginData | 7         | Primary Mobile Number      |
      | LoginDetailsCAS.xlsx |  | LoginData | 7         | Sourcing Date              |
      | LoginDetailsCAS.xlsx |  | LoginData | 7         | Sourcing Channel           |
      | LoginDetailsCAS.xlsx |  | LoginData | 7         | Branch                     |
      | LoginDetailsCAS.xlsx |  | LoginData | 7         | Assignee                   |
      | LoginDetailsCAS.xlsx |  | LoginData | 7         | Created By                 |
      | LoginDetailsCAS.xlsx |  | LoginData | 7         | Priority                   |
      | LoginDetailsCAS.xlsx |  | LoginData | 7         | Disbursal Status           |
      | LoginDetailsCAS.xlsx |  | LoginData | 7         | Group Description          |
      | LoginDetailsCAS.xlsx |  | LoginData | 7         | Image Based Processing     |
      | LoginDetailsCAS.xlsx |  | LoginData | 7         | Product Processor          |
      | LoginDetailsCAS.xlsx |  | LoginData | 7         | Credit Officer             |
      | LoginDetailsCAS.xlsx |  | LoginData | 7         | Agreement Booklet SNo      |
      | LoginDetailsCAS.xlsx |  | LoginData | 7         | RepaymentInstrument Status |
      | LoginDetailsCAS.xlsx |  | LoginData | 7         | Account Type               |

  @ImplementedBy-utkarsh.tiwari
  @Release2
  Scenario Outline: ACAUTOCAS-941: Display application grid with selected fields in show hide preference of pool applications
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user open application grid
    When user selects "<Show_Hide_Fields>" field in show hide preference of "pool" application
    Then selected "<Show_Hide_Fields>" should be display in "pool" application grid
    Examples:
      | SourceDataFile       |  | SheetName | RowNumber | Show_Hide_Fields           |
      | LoginDetailsCAS.xlsx |  | LoginData | 7         | Loan Account Number        |
      | LoginDetailsCAS.xlsx |  | LoginData | 7         | Application Form Number    |
      | LoginDetailsCAS.xlsx |  | LoginData | 7         | Neo Cust ID                |
      | LoginDetailsCAS.xlsx |  | LoginData | 7         | Identification No.         |
      | LoginDetailsCAS.xlsx |  | LoginData | 7         | Customer Name              |
      | LoginDetailsCAS.xlsx |  | LoginData | 7         | Stage                      |
      | LoginDetailsCAS.xlsx |  | LoginData | 7         | In-Queue Status            |
      | LoginDetailsCAS.xlsx |  | LoginData | 7         | Primary Mobile Number      |
      | LoginDetailsCAS.xlsx |  | LoginData | 7         | Sourcing Date              |
      | LoginDetailsCAS.xlsx |  | LoginData | 7         | Sourcing Channel           |
      | LoginDetailsCAS.xlsx |  | LoginData | 7         | Branch                     |
      | LoginDetailsCAS.xlsx |  | LoginData | 7         | Product Type               |
      | LoginDetailsCAS.xlsx |  | LoginData | 7         | Product Name               |
      | LoginDetailsCAS.xlsx |  | LoginData | 7         | Scheme                     |
      | LoginDetailsCAS.xlsx |  | LoginData | 7         | Created On                 |
      | LoginDetailsCAS.xlsx |  | LoginData | 7         | Priority                   |
      | LoginDetailsCAS.xlsx |  | LoginData | 7         | Disbursal Status           |
      | LoginDetailsCAS.xlsx |  | LoginData | 7         | Group Description          |
      | LoginDetailsCAS.xlsx |  | LoginData | 7         | Image Based Processing     |
      | LoginDetailsCAS.xlsx |  | LoginData | 7         | Product Processor          |
      | LoginDetailsCAS.xlsx |  | LoginData | 7         | Credit Officer             |
      | LoginDetailsCAS.xlsx |  | LoginData | 7         | Agreement Booklet SNo      |
      | LoginDetailsCAS.xlsx |  | LoginData | 7         | RepaymentInstrument Status |
      | LoginDetailsCAS.xlsx |  | LoginData | 7         | Account Type               |

  @ImplementedBy-utkarsh.tiwari
  @Release2
  Scenario Outline: ACAUTOCAS-942: Display application grid with selected fields in show hide preference of hold applications
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user open application grid
    When user selects "<Show_Hide_Fields>" field in show hide preference of "hold" application
    Then selected "<Show_Hide_Fields>" should be display in "hold" application grid
    Examples:
      | SourceDataFile       |  | SheetName | RowNumber | Show_Hide_Fields        |
      | LoginDetailsCAS.xlsx |  | LoginData | 7         | Loan Account Number     |
      | LoginDetailsCAS.xlsx |  | LoginData | 7         | Application Form Number |
      | LoginDetailsCAS.xlsx |  | LoginData | 7         | Neo Cust ID             |
      | LoginDetailsCAS.xlsx |  | LoginData | 7         | Identification No.      |
      | LoginDetailsCAS.xlsx |  | LoginData | 7         | Customer Name           |
      | LoginDetailsCAS.xlsx |  | LoginData | 7         | Stage                   |
      | LoginDetailsCAS.xlsx |  | LoginData | 7         | In-Queue Status         |
      | LoginDetailsCAS.xlsx |  | LoginData | 7         | Product Type            |
      | LoginDetailsCAS.xlsx |  | LoginData | 7         | Product Name            |
      | LoginDetailsCAS.xlsx |  | LoginData | 7         | Scheme                  |
      | LoginDetailsCAS.xlsx |  | LoginData | 7         | Sourcing Channel        |
      | LoginDetailsCAS.xlsx |  | LoginData | 7         | Created By              |
      | LoginDetailsCAS.xlsx |  | LoginData | 7         | Priority                |
      | LoginDetailsCAS.xlsx |  | LoginData | 7         | Disbursal Status        |
      | LoginDetailsCAS.xlsx |  | LoginData | 7         | Group Description       |
      | LoginDetailsCAS.xlsx |  | LoginData | 7         | Hold                    |
      | LoginDetailsCAS.xlsx |  | LoginData | 7         | Image Based Processing  |
      | LoginDetailsCAS.xlsx |  | LoginData | 7         | Product Processor       |
      | LoginDetailsCAS.xlsx |  | LoginData | 7         | Credit Officer          |
      | LoginDetailsCAS.xlsx |  | LoginData | 7         | Agreement Booklet SNo   |
      | LoginDetailsCAS.xlsx |  | LoginData | 7         | Account Type            |

  @ImplementedBy-utkarsh.tiwari
  @Release2
  Scenario Outline: ACAUTOCAS-943: Identify "<Column_Field>" field for assigned applications in Show_Hide preference action of application grid
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user open application grid
    When user checks Show_Hide preference action for "assigned" applications
    Then "<Column_Field>" field should be present in Show_Hide preference action

    Examples:
      | SourceDataFile       | SheetName | RowNumber | Column_Field               |
      | LoginDetailsCAS.xlsx | LoginData | 7         | Loan Account Number        |
      | LoginDetailsCAS.xlsx | LoginData | 7         | Application Form Number    |
      | LoginDetailsCAS.xlsx | LoginData | 7         | Neo Cust ID                |
      | LoginDetailsCAS.xlsx | LoginData | 7         | Identification No.         |
      | LoginDetailsCAS.xlsx | LoginData | 7         | Customer Name              |
      | LoginDetailsCAS.xlsx | LoginData | 7         | Stage                      |
      | LoginDetailsCAS.xlsx | LoginData | 7         | In-Queue Status            |
      | LoginDetailsCAS.xlsx | LoginData | 7         | Product Type               |
      | LoginDetailsCAS.xlsx | LoginData | 7         | Product Name               |
      | LoginDetailsCAS.xlsx | LoginData | 7         | Scheme                     |
      | LoginDetailsCAS.xlsx | LoginData | 7         | Primary Mobile Number      |
      | LoginDetailsCAS.xlsx | LoginData | 7         | Sourcing Date              |
      | LoginDetailsCAS.xlsx | LoginData | 7         | Sourcing Channel           |
      | LoginDetailsCAS.xlsx | LoginData | 7         | Branch                     |
      | LoginDetailsCAS.xlsx | LoginData | 7         | Image Based Processing     |
      | LoginDetailsCAS.xlsx | LoginData | 7         | Account Type               |
      | LoginDetailsCAS.xlsx | LoginData | 7         | Disbursal Status           |
      | LoginDetailsCAS.xlsx | LoginData | 7         | Group Description          |
      | LoginDetailsCAS.xlsx | LoginData | 7         | Credit Officer             |
      | LoginDetailsCAS.xlsx | LoginData | 7         | Created By                 |
      | LoginDetailsCAS.xlsx | LoginData | 7         | Priority                   |
      | LoginDetailsCAS.xlsx | LoginData | 7         | Product Processor          |
      | LoginDetailsCAS.xlsx | LoginData | 7         | Agreement Booklet SNo      |
      | LoginDetailsCAS.xlsx | LoginData | 7         | RepaymentInstrument Status |
      | LoginDetailsCAS.xlsx | LoginData | 7         | Assignee                   |

  @ImplementedBy-bhanu.singh1
    @Release2
  Scenario Outline: ACAUTOCAS-944: Identify "<Column_Field>" field for pool applications in Show_Hide prefrence of application grid
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user open application grid
    When user checks Show_Hide preference action for "pool" applications
    Then "<Column_Field>" field should be present in Show_Hide preference action
    Examples:
      | SourceDataFile       | SheetName | RowNumber | Column_Field               |
      | LoginDetailsCAS.xlsx | LoginData | 7         | Loan Account Number        |
      | LoginDetailsCAS.xlsx | LoginData | 7         | Application Form Number    |
      | LoginDetailsCAS.xlsx | LoginData | 7         | Neo Cust ID                |
      | LoginDetailsCAS.xlsx | LoginData | 7         | Identification No.         |
      | LoginDetailsCAS.xlsx | LoginData | 7         | Customer Name              |
      | LoginDetailsCAS.xlsx | LoginData | 7         | Stage                      |
      | LoginDetailsCAS.xlsx | LoginData | 7         | In-Queue Status            |
      | LoginDetailsCAS.xlsx | LoginData | 7         | Primary Mobile Number      |
      | LoginDetailsCAS.xlsx | LoginData | 7         | Sourcing Date              |
      | LoginDetailsCAS.xlsx | LoginData | 7         | Sourcing Channel           |
      | LoginDetailsCAS.xlsx | LoginData | 7         | Branch                     |
      | LoginDetailsCAS.xlsx | LoginData | 7         | Product Type               |
      | LoginDetailsCAS.xlsx | LoginData | 7         | Product Name               |
      | LoginDetailsCAS.xlsx | LoginData | 7         | Scheme                     |
      | LoginDetailsCAS.xlsx | LoginData | 7         | Created On                 |
      | LoginDetailsCAS.xlsx | LoginData | 7         | Priority                   |
      | LoginDetailsCAS.xlsx | LoginData | 7         | Disbursal Status           |
      | LoginDetailsCAS.xlsx | LoginData | 7         | Group Description          |
      | LoginDetailsCAS.xlsx | LoginData | 7         | Image Based Processing     |
      | LoginDetailsCAS.xlsx | LoginData | 7         | Product Processor          |
      | LoginDetailsCAS.xlsx | LoginData | 7         | Credit Officer             |
      | LoginDetailsCAS.xlsx | LoginData | 7         | Agreement Booklet SNo      |
      | LoginDetailsCAS.xlsx | LoginData | 7         | RepaymentInstrument Status |
      | LoginDetailsCAS.xlsx | LoginData | 7         | Account Type               |


  @ImplementedBy-bhanu.singh1
    @Release2
  Scenario Outline: ACAUTOCAS-945: Identify "<Column_Field>" field for hold applications in Show_Hide prefrence of application grid
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user open application grid
    When user checks Show_Hide preference action for "hold" applications
    Then "<Column_Field>" field should be present in Show_Hide preference action
    Examples:
      | SourceDataFile       | SheetName | RowNumber | Column_Field            |
      | LoginDetailsCAS.xlsx | LoginData | 8         | Loan Account Number     |
      | LoginDetailsCAS.xlsx | LoginData | 8         | Application Form Number |
      | LoginDetailsCAS.xlsx | LoginData | 8         | Neo Cust ID             |
      | LoginDetailsCAS.xlsx | LoginData | 8         | Identification No.      |
      | LoginDetailsCAS.xlsx | LoginData | 8         | Customer Name           |
      | LoginDetailsCAS.xlsx | LoginData | 8         | Stage                   |
      | LoginDetailsCAS.xlsx | LoginData | 8         | In-Queue Status         |
      | LoginDetailsCAS.xlsx | LoginData | 8         | Product Type            |
      | LoginDetailsCAS.xlsx | LoginData | 8         | Product Name            |
      | LoginDetailsCAS.xlsx | LoginData | 8         | Scheme                  |
      | LoginDetailsCAS.xlsx | LoginData | 8         | Sourcing Channel        |
      | LoginDetailsCAS.xlsx | LoginData | 8         | Created By              |
      | LoginDetailsCAS.xlsx | LoginData | 8         | Priority                |
      | LoginDetailsCAS.xlsx | LoginData | 8         | Disbursal Status        |
      | LoginDetailsCAS.xlsx | LoginData | 8         | Group Description       |
      | LoginDetailsCAS.xlsx | LoginData | 8         | Hold                    |
      | LoginDetailsCAS.xlsx | LoginData | 8         | Image Based Processing  |
      | LoginDetailsCAS.xlsx | LoginData | 8         | Product Processor       |
      | LoginDetailsCAS.xlsx | LoginData | 8         | Credit Officer          |
      | LoginDetailsCAS.xlsx | LoginData | 8         | Agreement Booklet SNo   |
      | LoginDetailsCAS.xlsx | LoginData | 8         | Account Type            |

  @ImplementedBy-utkarsh.tiwari
  @Release2
  Scenario Outline: ACAUTOCAS-946: Perform "<Actions>" action for "<Var>" applications in application grid
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user open application grid
    When user checks visibility of "<Actions>" action for "<Var>" applications
    Then "<Actions>" action perform successfully

    Examples:
      | SourceDataFile       | SheetName | RowNumber | Actions      | Var      |
      | LoginDetailsCAS.xlsx | LoginData | 7         | Copy         | Assigned |
      | LoginDetailsCAS.xlsx | LoginData | 7         | Export       | Assigned |
      | LoginDetailsCAS.xlsx | LoginData | 7         | Load search  | Assigned |
      | LoginDetailsCAS.xlsx | LoginData | 7         | Save search  | Assigned |
      | LoginDetailsCAS.xlsx | LoginData | 7         | Clear filter | Assigned |
      | LoginDetailsCAS.xlsx | LoginData | 7         | Copy         | Pool     |
      | LoginDetailsCAS.xlsx | LoginData | 7         | Export       | Pool     |
      | LoginDetailsCAS.xlsx | LoginData | 7         | Load search  | Pool     |
      | LoginDetailsCAS.xlsx | LoginData | 7         | Save search  | Pool     |
      | LoginDetailsCAS.xlsx | LoginData | 7         | Clear filter | Pool     |
      | LoginDetailsCAS.xlsx | LoginData | 7         | Copy         | Hold     |
      | LoginDetailsCAS.xlsx | LoginData | 7         | Export       | Hold     |
      | LoginDetailsCAS.xlsx | LoginData | 7         | Load search  | Hold     |
      | LoginDetailsCAS.xlsx | LoginData | 7         | Save search  | Hold     |
      | LoginDetailsCAS.xlsx | LoginData | 7         | Clear filter | Hold     |

  @ImplementedBy-utkarsh.tiwari
  @Release2
  Scenario Outline: ACAUTOCAS-947: Export application grid as "<ExportAs>" for "<Var>" applications
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user open application grid
    When Export application grid as "<ExportAs>" for "<Var>" grid
    Then application grid successfully Exported as "<ExportAs>"
    Examples:
      | SourceDataFile       | SheetName | RowNumber | ExportAs | Var      |
      | LoginDetailsCAS.xlsx | LoginData | 7         | Excel    | Assigned |
      | LoginDetailsCAS.xlsx | LoginData | 7         | CSV      | Assigned |
      | LoginDetailsCAS.xlsx | LoginData | 7         | PDF      | Assigned |
      | LoginDetailsCAS.xlsx | LoginData | 7         | Excel    | Pool     |
      | LoginDetailsCAS.xlsx | LoginData | 7         | CSV      | Pool     |
      | LoginDetailsCAS.xlsx | LoginData | 7         | PDF      | Pool     |
#    Do not have any application on Hold , hence no file will be downloaded.
#      | LoginDetailsCAS.xlsx | LoginData | 7         | Excel    | Hold     |
#      | LoginDetailsCAS.xlsx | LoginData | 7         | CSV      | Hold     |
#      | LoginDetailsCAS.xlsx | LoginData | 7         | PDF      | Hold     |

  @ImplementedBy-utkarsh.tiwari
  @Release2
  Scenario Outline: ACAUTOCAS-948: "<Application_Actions>" the "<Var>" application in application grid
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user open application grid
    When user checks the "<Application_Actions>" tab in "<Var>" Grid
    Then "<Application_Actions>" is validated successfully

    Examples:
      | SourceDataFile       | SheetName | RowNumber | Application_Actions | Var      |
      | LoginDetailsCAS.xlsx | LoginData | 7         | Reassign            | Assigned |
      | LoginDetailsCAS.xlsx | LoginData | 7         | Assign to pool      | Assigned |
      | LoginDetailsCAS.xlsx | LoginData | 7         | View                | Pool     |
      | LoginDetailsCAS.xlsx | LoginData | 7         | Assign To Me        | Pool     |
      | LoginDetailsCAS.xlsx | LoginData | 7         | UnHold              | Hold     |

  @ImplementedBy-utkarsh.tiwari
  @Release2
  Scenario Outline: ACAUTOCAS-949: "<Application_Actions>" the "<Var>" applications in bulk in application grid
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user open application grid
    When user checks visibility of "<Application_Actions>" action for "<Var>" applications
                                                                                      #    Then application successfully "<Application_Actions>" in bulk
    Examples:
      | SourceDataFile       | SheetName | RowNumber | Application_Actions | Var      |
      | LoginDetailsCAS.xlsx | LoginData | 7         | Reassign            | Assigned |
      | LoginDetailsCAS.xlsx | LoginData | 7         | Assign to pool      | Assigned |
      | LoginDetailsCAS.xlsx | LoginData | 7         | Assign ToMe         | Pool     |
      | LoginDetailsCAS.xlsx | LoginData | 7         | Unhold              | Hold     |


#  Any Application landing at a particular stage for the first time shall always show �Introduced� in �In-Queue Status� column.

  @ImplementedBy-utkarsh.tiwari
  @Release2
  Scenario Outline: ACAUTOCAS-950: "<Search_Filter>" pool applications on the basis of "<Application_Grid>"
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user open application grid
    And user selects all preference column to show in application grid in "pool"
    And user reads data from the excel file "<ApplicationDetailsWB>" under sheet "<ApplicationDetails_sheet>" and row <ApplicationDetails_sheet_rowNum>
    When user "<Search_Filter>" all application on the basis of "<Application_Grid>" in "pool"
    Then user should be able to "<Search_Filter>" all application on the basis of "<Application_Grid>" in "pool"

    Examples:
      | SourceDataFile       | SheetName | RowNumber | Search_Filter | Application_Grid           | ApplicationDetailsWB     | ApplicationDetails_sheet | ApplicationDetails_sheet_rowNum |
      | LoginDetailsCAS.xlsx | LoginData | 7         | search        | Application ID             | application_details.xlsx | application_grid         | 0                               |
      | LoginDetailsCAS.xlsx | LoginData | 7         | search        | Loan Account Number        | application_details.xlsx | application_grid         | 0                               |
      | LoginDetailsCAS.xlsx | LoginData | 7         | search        | Application Form number    | application_details.xlsx | application_grid         | 0                               |
      | LoginDetailsCAS.xlsx | LoginData | 7         | search        | Neo Cust ID                | application_details.xlsx | application_grid         | 0                               |
      | LoginDetailsCAS.xlsx | LoginData | 7         | search        | Identification No          | application_details.xlsx | application_grid         | 0                               |
      | LoginDetailsCAS.xlsx | LoginData | 7         | search        | Customer Name              | application_details.xlsx | application_grid         | 0                               |
      | LoginDetailsCAS.xlsx | LoginData | 7         | search        | Stage                      | application_details.xlsx | application_grid         | 0                               |
      | LoginDetailsCAS.xlsx | LoginData | 7         | search        | Primary Mobile Number      | application_details.xlsx | application_grid         | 0                               |
      | LoginDetailsCAS.xlsx | LoginData | 7         | search        | Sourcing channel           | application_details.xlsx | application_grid         | 0                               |
      | LoginDetailsCAS.xlsx | LoginData | 7         | search        | Image Based Processing     | application_details.xlsx | application_grid         | 0                               |
      | LoginDetailsCAS.xlsx | LoginData | 7         | search        | Account type               | application_details.xlsx | application_grid         | 0                               |
      | LoginDetailsCAS.xlsx | LoginData | 7         | search        | Disbursal Status           | application_details.xlsx | application_grid         | 0                               |
      | LoginDetailsCAS.xlsx | LoginData | 7         | search        | Group Description          | application_details.xlsx | application_grid         | 0                               |
      | LoginDetailsCAS.xlsx | LoginData | 7         | search        | Credit officer             | application_details.xlsx | application_grid         | 0                               |
      | LoginDetailsCAS.xlsx | LoginData | 7         | filter        | Sourcing Date              | application_details.xlsx | application_grid         | 0                               |
      | LoginDetailsCAS.xlsx | LoginData | 7         | filter        | Branch                     | application_details.xlsx | application_grid         | 0                               |
      | LoginDetailsCAS.xlsx | LoginData | 7         | filter        | Product Type               | application_details.xlsx | application_grid         | 0                               |
      | LoginDetailsCAS.xlsx | LoginData | 7         | filter        | Product Name               | application_details.xlsx | application_grid         | 0                               |
      | LoginDetailsCAS.xlsx | LoginData | 7         | filter        | Scheme                     | application_details.xlsx | application_grid         | 0                               |
      | LoginDetailsCAS.xlsx | LoginData | 7         | filter        | Created on Date            | application_details.xlsx | application_grid         | 0                               |
      | LoginDetailsCAS.xlsx | LoginData | 7         | filter        | Priority                   | application_details.xlsx | application_grid         | 0                               |
      | LoginDetailsCAS.xlsx | LoginData | 7         | filter        | Product Processor          | application_details.xlsx | application_grid         | 0                               |
      | LoginDetailsCAS.xlsx | LoginData | 7         | sort          | Application ID             | application_details.xlsx | application_grid         | 0                               |
      | LoginDetailsCAS.xlsx | LoginData | 7         | sort          | Loan Account Number        | application_details.xlsx | application_grid         | 0                               |
      | LoginDetailsCAS.xlsx | LoginData | 7         | sort          | Application Form number    | application_details.xlsx | application_grid         | 0                               |
      | LoginDetailsCAS.xlsx | LoginData | 7         | sort          | Neo Cust ID                | application_details.xlsx | application_grid         | 0                               |
      | LoginDetailsCAS.xlsx | LoginData | 7         | sort          | Customer Name              | application_details.xlsx | application_grid         | 0                               |
      | LoginDetailsCAS.xlsx | LoginData | 7         | sort          | Stage                      | application_details.xlsx | application_grid         | 0                               |
      | LoginDetailsCAS.xlsx | LoginData | 7         | sort          | In-Queue State             | application_details.xlsx | application_grid         | 0                               |
      | LoginDetailsCAS.xlsx | LoginData | 7         | sort          | Primary Mobile Number      | application_details.xlsx | application_grid         | 0                               |
      | LoginDetailsCAS.xlsx | LoginData | 7         | sort          | Sourcing Date              | application_details.xlsx | application_grid         | 0                               |
      | LoginDetailsCAS.xlsx | LoginData | 7         | sort          | Sourcing channel           | application_details.xlsx | application_grid         | 0                               |
      | LoginDetailsCAS.xlsx | LoginData | 7         | sort          | Branch                     | application_details.xlsx | application_grid         | 0                               |
      | LoginDetailsCAS.xlsx | LoginData | 7         | sort          | Credit officer             | application_details.xlsx | application_grid         | 0                               |
      | LoginDetailsCAS.xlsx | LoginData | 7         | sort          | Product Type               | application_details.xlsx | application_grid         | 0                               |
      | LoginDetailsCAS.xlsx | LoginData | 7         | sort          | Product Name               | application_details.xlsx | application_grid         | 0                               |
      | LoginDetailsCAS.xlsx | LoginData | 7         | sort          | Account Type               | application_details.xlsx | application_grid         | 0                               |
      | LoginDetailsCAS.xlsx | LoginData | 7         | sort          | Scheme                     | application_details.xlsx | application_grid         | 0                               |
      | LoginDetailsCAS.xlsx | LoginData | 7         | sort          | Created on Date            | application_details.xlsx | application_grid         | 0                               |
      | LoginDetailsCAS.xlsx | LoginData | 7         | sort          | Priority                   | application_details.xlsx | application_grid         | 0                               |
      | LoginDetailsCAS.xlsx | LoginData | 7         | sort          | Disbursal Status           | application_details.xlsx | application_grid         | 0                               |
      | LoginDetailsCAS.xlsx | LoginData | 7         | sort          | Group Description          | application_details.xlsx | application_grid         | 0                               |
      | LoginDetailsCAS.xlsx | LoginData | 7         | sort          | Image Based Processing     | application_details.xlsx | application_grid         | 0                               |
      | LoginDetailsCAS.xlsx | LoginData | 7         | sort          | Agreement Booklet SNo      | application_details.xlsx | application_grid         | 0                               |
      | LoginDetailsCAS.xlsx | LoginData | 7         | sort          | Product Processor          | application_details.xlsx | application_grid         | 0                               |
      | LoginDetailsCAS.xlsx | LoginData | 7         | sort          | RepaymentInstrument Status | application_details.xlsx | application_grid         | 0                               |

  @ImplementedBy-utkarsh.tiwari
  @Release2
  Scenario Outline: ACAUTOCAS-951: "<Search_Filter>" assigned applications on the basis of "<Application_Grid>"
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user open application grid
    And user selects all preference column to show in application grid in "assigned"
    And user reads data from the excel file "<ApplicationDetailsWB>" under sheet "<ApplicationDetails_sheet>" and row <ApplicationDetails_sheet_rowNum>
    When user "<Search_Filter>" all application on the basis of "<Application_Grid>" in "assigned"
    Then user should be able to "<Search_Filter>" all application on the basis of "<Application_Grid>" in "assigned"

    Examples:
      | SourceDataFile       | SheetName | RowNumber | Search_Filter | Application_Grid           | ApplicationDetailsWB     | ApplicationDetails_sheet | ApplicationDetails_sheet_rowNum |
      | LoginDetailsCAS.xlsx | LoginData | 7         | search        | Application ID             | application_details.xlsx | application_grid         | 0                               |
      | LoginDetailsCAS.xlsx | LoginData | 7         | search        | Loan Account Number        | application_details.xlsx | application_grid         | 0                               |
      | LoginDetailsCAS.xlsx | LoginData | 7         | search        | Application Form number    | application_details.xlsx | application_grid         | 0                               |
      | LoginDetailsCAS.xlsx | LoginData | 7         | search        | Neo Cust ID                | application_details.xlsx | application_grid         | 0                               |
      | LoginDetailsCAS.xlsx | LoginData | 7         | search        | Identification No          | application_details.xlsx | application_grid         | 0                               |
      | LoginDetailsCAS.xlsx | LoginData | 7         | search        | Customer Name              | application_details.xlsx | application_grid         | 0                               |
      | LoginDetailsCAS.xlsx | LoginData | 7         | search        | Stage                      | application_details.xlsx | application_grid         | 0                               |
      | LoginDetailsCAS.xlsx | LoginData | 7         | search        | Primary Mobile Number      | application_details.xlsx | application_grid         | 0                               |
      | LoginDetailsCAS.xlsx | LoginData | 7         | search        | Sourcing channel           | application_details.xlsx | application_grid         | 0                               |
      | LoginDetailsCAS.xlsx | LoginData | 7         | search        | Image Based Processing     | application_details.xlsx | application_grid         | 0                               |
      | LoginDetailsCAS.xlsx | LoginData | 7         | search        | Account type               | application_details.xlsx | application_grid         | 0                               |
      | LoginDetailsCAS.xlsx | LoginData | 7         | search        | Disbursal Status           | application_details.xlsx | application_grid         | 0                               |
      | LoginDetailsCAS.xlsx | LoginData | 7         | search        | Group Description          | application_details.xlsx | application_grid         | 0                               |
      | LoginDetailsCAS.xlsx | LoginData | 7         | search        | Credit officer             | application_details.xlsx | application_grid         | 0                               |
      | LoginDetailsCAS.xlsx | LoginData | 7         | filter        | Sourcing Date              | application_details.xlsx | application_grid         | 0                               |
      | LoginDetailsCAS.xlsx | LoginData | 7         | filter        | Branch                     | application_details.xlsx | application_grid         | 0                               |
      | LoginDetailsCAS.xlsx | LoginData | 7         | filter        | Product Type               | application_details.xlsx | application_grid         | 0                               |
      | LoginDetailsCAS.xlsx | LoginData | 7         | filter        | Product Name               | application_details.xlsx | application_grid         | 0                               |
      | LoginDetailsCAS.xlsx | LoginData | 7         | filter        | Scheme                     | application_details.xlsx | application_grid         | 0                               |
      | LoginDetailsCAS.xlsx | LoginData | 7         | filter        | Created on Date            | application_details.xlsx | application_grid         | 0                               |
      | LoginDetailsCAS.xlsx | LoginData | 7         | filter        | Priority                   | application_details.xlsx | application_grid         | 0                               |
      | LoginDetailsCAS.xlsx | LoginData | 7         | filter        | Product Processor          | application_details.xlsx | application_grid         | 0                               |
      | LoginDetailsCAS.xlsx | LoginData | 7         | sort          | Application ID             | application_details.xlsx | application_grid         | 0                               |
      | LoginDetailsCAS.xlsx | LoginData | 7         | sort          | Loan Account Number        | application_details.xlsx | application_grid         | 0                               |
      | LoginDetailsCAS.xlsx | LoginData | 7         | sort          | Application Form number    | application_details.xlsx | application_grid         | 0                               |
      | LoginDetailsCAS.xlsx | LoginData | 7         | sort          | Neo Cust ID                | application_details.xlsx | application_grid         | 0                               |
      | LoginDetailsCAS.xlsx | LoginData | 7         | sort          | Customer Name              | application_details.xlsx | application_grid         | 0                               |
      | LoginDetailsCAS.xlsx | LoginData | 7         | sort          | Stage                      | application_details.xlsx | application_grid         | 0                               |
      | LoginDetailsCAS.xlsx | LoginData | 7         | sort          | In-Queue State             | application_details.xlsx | application_grid         | 0                               |
      | LoginDetailsCAS.xlsx | LoginData | 7         | sort          | Primary Mobile Number      | application_details.xlsx | application_grid         | 0                               |
      | LoginDetailsCAS.xlsx | LoginData | 7         | sort          | Sourcing Date              | application_details.xlsx | application_grid         | 0                               |
      | LoginDetailsCAS.xlsx | LoginData | 7         | sort          | Sourcing channel           | application_details.xlsx | application_grid         | 0                               |
      | LoginDetailsCAS.xlsx | LoginData | 7         | sort          | Branch                     | application_details.xlsx | application_grid         | 0                               |
      | LoginDetailsCAS.xlsx | LoginData | 7         | sort          | Credit officer             | application_details.xlsx | application_grid         | 0                               |
      | LoginDetailsCAS.xlsx | LoginData | 7         | sort          | Product Type               | application_details.xlsx | application_grid         | 0                               |
      | LoginDetailsCAS.xlsx | LoginData | 7         | sort          | Product Name               | application_details.xlsx | application_grid         | 0                               |
      | LoginDetailsCAS.xlsx | LoginData | 7         | sort          | Account Type               | application_details.xlsx | application_grid         | 0                               |
      | LoginDetailsCAS.xlsx | LoginData | 7         | sort          | Scheme                     | application_details.xlsx | application_grid         | 0                               |
      | LoginDetailsCAS.xlsx | LoginData | 7         | sort          | Created on Date            | application_details.xlsx | application_grid         | 0                               |
      | LoginDetailsCAS.xlsx | LoginData | 7         | sort          | Priority                   | application_details.xlsx | application_grid         | 0                               |
      | LoginDetailsCAS.xlsx | LoginData | 7         | sort          | Disbursal Status           | application_details.xlsx | application_grid         | 0                               |
      | LoginDetailsCAS.xlsx | LoginData | 7         | sort          | Group Description          | application_details.xlsx | application_grid         | 0                               |
      | LoginDetailsCAS.xlsx | LoginData | 7         | sort          | Image Based Processing     | application_details.xlsx | application_grid         | 0                               |
      | LoginDetailsCAS.xlsx | LoginData | 7         | sort          | Agreement Booklet SNo      | application_details.xlsx | application_grid         | 0                               |
      | LoginDetailsCAS.xlsx | LoginData | 7         | sort          | Product Processor          | application_details.xlsx | application_grid         | 0                               |
      | LoginDetailsCAS.xlsx | LoginData | 7         | sort          | RepaymentInstrument Status | application_details.xlsx | application_grid         | 0                               |
      | LoginDetailsCAS.xlsx | LoginData | 7         | sort          | Assignee                   | application_details.xlsx | application_grid         | 0                               |

  @ImplementedBy-utkarsh.tiwari
  @Release2
  Scenario Outline: ACAUTOCAS-952: "<Search_Filter>" hold applications on the basis of "<Application_Grid>"
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And  user open application grid
    And user selects all preference column to show in application grid in "hold"
    And user reads data from the excel file "<ApplicationDetailsWB>" under sheet "<ApplicationDetails_sheet>" and row <ApplicationDetails_sheet_rowNum>
    And user "<Search_Filter>" all application on the basis of "<Application_Grid>" in "hold"
    Then user should be able to "<Search_Filter>" all application on the basis of "<Application_Grid>" in "hold"
    Examples:
      | SourceDataFile       | SheetName | RowNumber | Search_Filter | Application_Grid           | ApplicationDetailsWB     | ApplicationDetails_sheet | ApplicationDetails_sheet_rowNum |
      | LoginDetailsCAS.xlsx | LoginData | 11        | search        | Application ID             | application_details.xlsx | application_grid         | 0                               |
      | LoginDetailsCAS.xlsx | LoginData | 11        | search        | Loan Account Number        | application_details.xlsx | application_grid         | 0                               |
      | LoginDetailsCAS.xlsx | LoginData | 11        | search        | Application Form number    | application_details.xlsx | application_grid         | 0                               |
      | LoginDetailsCAS.xlsx | LoginData | 11        | search        | Neo Cust ID                | application_details.xlsx | application_grid         | 0                               |
      | LoginDetailsCAS.xlsx | LoginData | 11        | search        | Identification No          | application_details.xlsx | application_grid         | 0                               |
      | LoginDetailsCAS.xlsx | LoginData | 11        | search        | Customer Name              | application_details.xlsx | application_grid         | 0                               |
      | LoginDetailsCAS.xlsx | LoginData | 11        | search        | Stage                      | application_details.xlsx | application_grid         | 0                               |
      | LoginDetailsCAS.xlsx | LoginData | 11        | search        | Primary Mobile Number      | application_details.xlsx | application_grid         | 0                               |
      | LoginDetailsCAS.xlsx | LoginData | 11        | search        | Sourcing channel           | application_details.xlsx | application_grid         | 0                               |
      | LoginDetailsCAS.xlsx | LoginData | 11        | search        | Image Based Processing     | application_details.xlsx | application_grid         | 0                               |
      | LoginDetailsCAS.xlsx | LoginData | 11        | search        | Account type               | application_details.xlsx | application_grid         | 0                               |
      | LoginDetailsCAS.xlsx | LoginData | 11        | search        | Disbursal Status           | application_details.xlsx | application_grid         | 0                               |
      | LoginDetailsCAS.xlsx | LoginData | 11        | search        | Group Description          | application_details.xlsx | application_grid         | 0                               |
      | LoginDetailsCAS.xlsx | LoginData | 11        | search        | Credit officer             | application_details.xlsx | application_grid         | 0                               |
      | LoginDetailsCAS.xlsx | LoginData | 11        | filter        | Sourcing Date              | application_details.xlsx | application_grid         | 0                               |
      | LoginDetailsCAS.xlsx | LoginData | 11        | filter        | Branch                     | application_details.xlsx | application_grid         | 0                               |
      | LoginDetailsCAS.xlsx | LoginData | 11        | filter        | Product Type               | application_details.xlsx | application_grid         | 0                               |
      | LoginDetailsCAS.xlsx | LoginData | 11        | filter        | Product Name               | application_details.xlsx | application_grid         | 0                               |
      | LoginDetailsCAS.xlsx | LoginData | 11        | filter        | Scheme                     | application_details.xlsx | application_grid         | 0                               |
      | LoginDetailsCAS.xlsx | LoginData | 11        | filter        | Created on Date            | application_details.xlsx | application_grid         | 0                               |
      | LoginDetailsCAS.xlsx | LoginData | 11        | filter        | Priority                   | application_details.xlsx | application_grid         | 0                               |
      | LoginDetailsCAS.xlsx | LoginData | 11        | filter        | Product Processor          | application_details.xlsx | application_grid         | 0                               |
      | LoginDetailsCAS.xlsx | LoginData | 11        | sort          | Application ID             | application_details.xlsx | application_grid         | 0                               |
      | LoginDetailsCAS.xlsx | LoginData | 11        | sort          | Loan Account Number        | application_details.xlsx | application_grid         | 0                               |
      | LoginDetailsCAS.xlsx | LoginData | 11        | sort          | Application Form number    | application_details.xlsx | application_grid         | 0                               |
      | LoginDetailsCAS.xlsx | LoginData | 11        | sort          | Neo Cust ID                | application_details.xlsx | application_grid         | 0                               |
      | LoginDetailsCAS.xlsx | LoginData | 11        | sort          | Customer Name              | application_details.xlsx | application_grid         | 0                               |
      | LoginDetailsCAS.xlsx | LoginData | 11        | sort          | Stage                      | application_details.xlsx | application_grid         | 0                               |
      | LoginDetailsCAS.xlsx | LoginData | 11        | sort          | In-Queue State             | application_details.xlsx | application_grid         | 0                               |
      | LoginDetailsCAS.xlsx | LoginData | 11        | sort          | Primary Mobile Number      | application_details.xlsx | application_grid         | 0                               |
      | LoginDetailsCAS.xlsx | LoginData | 11        | sort          | Sourcing Date              | application_details.xlsx | application_grid         | 0                               |
      | LoginDetailsCAS.xlsx | LoginData | 11        | sort          | Sourcing channel           | application_details.xlsx | application_grid         | 0                               |
      | LoginDetailsCAS.xlsx | LoginData | 11        | sort          | Branch                     | application_details.xlsx | application_grid         | 0                               |
      | LoginDetailsCAS.xlsx | LoginData | 11        | sort          | Credit officer             | application_details.xlsx | application_grid         | 0                               |
      | LoginDetailsCAS.xlsx | LoginData | 11        | sort          | Product Type               | application_details.xlsx | application_grid         | 0                               |
      | LoginDetailsCAS.xlsx | LoginData | 11        | sort          | Product Name               | application_details.xlsx | application_grid         | 0                               |
      | LoginDetailsCAS.xlsx | LoginData | 11        | sort          | Account Type               | application_details.xlsx | application_grid         | 0                               |
      | LoginDetailsCAS.xlsx | LoginData | 11        | sort          | Scheme                     | application_details.xlsx | application_grid         | 0                               |
      | LoginDetailsCAS.xlsx | LoginData | 11        | sort          | Created on Date            | application_details.xlsx | application_grid         | 0                               |
      | LoginDetailsCAS.xlsx | LoginData | 11        | sort          | Priority                   | application_details.xlsx | application_grid         | 0                               |
      | LoginDetailsCAS.xlsx | LoginData | 11        | sort          | Disbursal Status           | application_details.xlsx | application_grid         | 0                               |
      | LoginDetailsCAS.xlsx | LoginData | 11        | sort          | Group Description          | application_details.xlsx | application_grid         | 0                               |
      | LoginDetailsCAS.xlsx | LoginData | 11        | sort          | Image Based Processing     | application_details.xlsx | application_grid         | 0                               |
      | LoginDetailsCAS.xlsx | LoginData | 11        | sort          | Agreement Booklet SNo      | application_details.xlsx | application_grid         | 0                               |
      | LoginDetailsCAS.xlsx | LoginData | 11        | sort          | Product Processor          | application_details.xlsx | application_grid         | 0                               |
      | LoginDetailsCAS.xlsx | LoginData | 11        | sort          | RepaymentInstrument Status | application_details.xlsx | application_grid         | 0                               |

  @ImplementedBy-utkarsh.tiwari
  @Release2
  Scenario Outline: ACAUTOCAS-953: Show the "<Var>" applications rows in application grid
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user open application grid
    When user selects "<NumberOfRows>" number of rows to show "<Var>" application in application grid
    Then selected "<NumberOfRows>" rows "<Display>" if total entries are "<More_Less>" than selected number in "<Var>" grid

    Examples:
      | SourceDataFile       | SheetName | RowNumber | Var      | NumberOfRows | Display                                 | More_Less |
      | LoginDetailsCAS.xlsx | LoginData | 7         | Assigned | 10           | display                                 | more      |
      | LoginDetailsCAS.xlsx | LoginData | 7         | Assigned | 25           | display                                 | more      |
      | LoginDetailsCAS.xlsx | LoginData | 7         | Assigned | 50           | display                                 | more      |
      | LoginDetailsCAS.xlsx | LoginData | 7         | Assigned | 100          | display                                 | more      |
      | LoginDetailsCAS.xlsx | LoginData | 7         | Assigned | 150          | display                                 | more      |
      | LoginDetailsCAS.xlsx | LoginData | 7         | Assigned | 200          | display                                 | more      |
      | LoginDetailsCAS.xlsx | LoginData | 7         | Assigned | 10           | not display only available rows display | less      |
      | LoginDetailsCAS.xlsx | LoginData | 7         | Assigned | 25           | not display only available rows display | less      |
      | LoginDetailsCAS.xlsx | LoginData | 7         | Assigned | 50           | not display only available rows display | less      |
      | LoginDetailsCAS.xlsx | LoginData | 7         | Assigned | 100          | not display only available rows display | less      |
      | LoginDetailsCAS.xlsx | LoginData | 7         | Assigned | 150          | not display only available rows display | less      |
      | LoginDetailsCAS.xlsx | LoginData | 7         | Assigned | 200          | not display only available rows display | less      |
      | LoginDetailsCAS.xlsx | LoginData | 7         | Pool     | 10           | display                                 | more      |
      | LoginDetailsCAS.xlsx | LoginData | 7         | Pool     | 25           | display                                 | more      |
      | LoginDetailsCAS.xlsx | LoginData | 7         | Pool     | 50           | display                                 | more      |
      | LoginDetailsCAS.xlsx | LoginData | 7         | Pool     | 100          | display                                 | more      |
      | LoginDetailsCAS.xlsx | LoginData | 7         | Pool     | 150          | display                                 | more      |
      | LoginDetailsCAS.xlsx | LoginData | 7         | Pool     | 200          | display                                 | more      |
      | LoginDetailsCAS.xlsx | LoginData | 7         | Pool     | 10           | not display only available rows display | less      |
      | LoginDetailsCAS.xlsx | LoginData | 7         | Pool     | 25           | not display only available rows display | less      |
      | LoginDetailsCAS.xlsx | LoginData | 7         | Pool     | 50           | not display only available rows display | less      |
      | LoginDetailsCAS.xlsx | LoginData | 7         | Pool     | 100          | not display only available rows display | less      |
      | LoginDetailsCAS.xlsx | LoginData | 7         | Pool     | 150          | not display only available rows display | less      |
      | LoginDetailsCAS.xlsx | LoginData | 7         | Pool     | 200          | not display only available rows display | less      |
      | LoginDetailsCAS.xlsx | LoginData | 7         | Hold     | 10           | display                                 | more      |
      | LoginDetailsCAS.xlsx | LoginData | 7         | Hold     | 25           | display                                 | more      |
      | LoginDetailsCAS.xlsx | LoginData | 7         | Hold     | 50           | display                                 | more      |
      | LoginDetailsCAS.xlsx | LoginData | 7         | Hold     | 100          | display                                 | more      |
      | LoginDetailsCAS.xlsx | LoginData | 7         | Hold     | 150          | display                                 | more      |
      | LoginDetailsCAS.xlsx | LoginData | 7         | Hold     | 200          | display                                 | more      |
      | LoginDetailsCAS.xlsx | LoginData | 7         | Hold     | 10           | not display only available rows display | less      |
      | LoginDetailsCAS.xlsx | LoginData | 7         | Hold     | 25           | not display only available rows display | less      |
      | LoginDetailsCAS.xlsx | LoginData | 7         | Hold     | 50           | not display only available rows display | less      |
      | LoginDetailsCAS.xlsx | LoginData | 7         | Hold     | 100          | not display only available rows display | less      |
      | LoginDetailsCAS.xlsx | LoginData | 7         | Hold     | 150          | not display only available rows display | less      |
      | LoginDetailsCAS.xlsx | LoginData | 7         | Hold     | 200          | not display only available rows display | less      |

  @ImplementedBy-utkarsh.tiwari
  @Release2
  Scenario Outline: ACAUTOCAS-954: Validation of Pagination in application grid
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user open application grid
    When "<Page>" page of application grid is open
    Then "<Paginate_Btn>" should be "<Disable_Enable>" for the "<Page>" page

    Examples:
      | SourceDataFile       | SheetName | RowNumber | Page   | Paginate_Btn             | Disable_Enable |
      | LoginDetailsCAS.xlsx | LoginData | 7         | first  | paginate_button first    | disable        |
      | LoginDetailsCAS.xlsx | LoginData | 7         | first  | paginate_button previous | disable        |
      | LoginDetailsCAS.xlsx | LoginData | 7         | first  | paginate_button next     | enable         |
      | LoginDetailsCAS.xlsx | LoginData | 7         | first  | paginate_button last     | enable         |
      | LoginDetailsCAS.xlsx | LoginData | 7         | middle | paginate_button first    | enable         |
      | LoginDetailsCAS.xlsx | LoginData | 7         | middle | paginate_button previous | enable         |
      | LoginDetailsCAS.xlsx | LoginData | 7         | middle | paginate_button next     | enable         |
      | LoginDetailsCAS.xlsx | LoginData | 7         | middle | paginate_button last     | enable         |
      | LoginDetailsCAS.xlsx | LoginData | 7         | last   | paginate_button first    | enable         |
      | LoginDetailsCAS.xlsx | LoginData | 7         | last   | paginate_button previous | enable         |
      | LoginDetailsCAS.xlsx | LoginData | 7         | last   | paginate_button next     | disable        |
      | LoginDetailsCAS.xlsx | LoginData | 7         | last   | paginate_button last     | disable        |

  @ImplementedBy-utkarsh.tiwari
  @Release2
  Scenario Outline: ACAUTOCAS-955: Validating all Pagination of application grid
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user open application grid
    When "<Page>" page of application grid is open
    Then "<Paginate_Btn>" should work successfully for "<Page>" page

    Examples:
      | SourceDataFile       | SheetName | RowNumber | Page   | Paginate_Btn             |
      | LoginDetailsCAS.xlsx | LoginData | 7         | first  | Paginate_button next     |
      | LoginDetailsCAS.xlsx | LoginData | 7         | first  | Paginate_button last     |
      | LoginDetailsCAS.xlsx | LoginData | 7         | middle | Paginate_button first    |
      | LoginDetailsCAS.xlsx | LoginData | 7         | middle | Paginate_button previous |
      | LoginDetailsCAS.xlsx | LoginData | 7         | middle | Paginate_button next     |
      | LoginDetailsCAS.xlsx | LoginData | 7         | middle | Paginate_button last     |
      | LoginDetailsCAS.xlsx | LoginData | 7         | last   | Paginate_button first    |
      | LoginDetailsCAS.xlsx | LoginData | 7         | last   | Paginate_button previous |


