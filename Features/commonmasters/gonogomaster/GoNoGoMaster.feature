@DevTrack
@GA-9.0
@Story_CAS_253517

Feature: Go No Go master setup for loan application

  Background:  Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0

# Pre-Requisites-

 #Lob configured - Yes
 #This is applicable for product type  - Multi Facility
 #Deal exists


  Scenario: Go no Go code should exist on the Go no Go configuration master screen
    When the user navigates to Go No Go master
    And the user creates Go No Go master
    Then "Go-no-Go Code" field should exist

  Scenario: Go no Go code should exist on the Go no Go configuration master screen as a mandatory field
    When the user navigates to Go No Go master
    And the user creates Go No Go master
    Then "Go-no-Go Code" field should be mandatory

  Scenario: Go no Go name should exist on the Go no Go configuration master screen
    When the user navigates to Go No Go master
    And the user creates Go No Go master
    Then "Go-no-Go Name" field should exist

  Scenario: Go no Go name should exist on the Go no Go configuration master screen as a mandatory field
    When the user navigates to Go No Go master
    And the user creates Go No Go master
    Then "Go-no-Go Name" field should be mandatory

  Scenario: Go no Go description should exist on the Go no Go configuration master screen
    When the user navigates to Go No Go master
    And the user creates Go No Go master
    Then "Go-no-Go Description" field should exist

  Scenario: Go no Go description should exist on the Go no Go configuration master screen as a mandatory field
    When the user navigates to Go No Go master
    And the user creates Go No Go master
    Then "Go-no-Go Description" field should be mandatory

  Scenario: Product Type should exist on the Go no Go configuration master screen
    When the user navigates to Go No Go master
    And the user creates Go No Go master
    Then "Product Type" field should exist

  Scenario: Product should exist on the Go no Go configuration master screen as a mandatory field
    When the user navigates to Go No Go master
    And the user creates Go No Go master
    Then "Product Type" field should be mandatory

  Scenario Outline: Create Go No Go configuration with mandatory fields
    When the user navigates to Go No Go master
    And the user creates Go No Go master
    And user reads data from the excel file "Go_No_Go_Master.xlsx" under sheet "go_no_go_master" and row <Go_no_goMaster_rowNum>
    And the user enters all mandatory fields and clicks Save
    Then the Go No Go configuration record is created successfully
  Examples:
    | Go_no_goMaster_rowNum |
    | 0                     |

  Scenario Outline: No field should get missed while saving the Go-no-Go configuration
    When the user navigates to Go No Go master
    And the user creates Go No Go master
    And user reads data from the excel file "Go_No_Go_Master.xlsx" under sheet "go_no_go_master" and row <Go_no_goMaster_rowNum>
    When the user clicks Save with missing data in "<FieldName>"
    Then the system displays a mandatory field validation error on "<FieldName>"

    Examples:
      | FieldName            | Go_no_goMaster_rowNum |
      | Go-no-Go Code        | 1                     |
      | Go-no-Go Name        | 2                     |
      | Go-no-Go Description | 3                     |

  Scenario Outline: Validate maximum length restrictions for text fields
    When the user navigates to Go No Go master
    And the user creates Go No Go master
    And user reads data from the excel file "Go_No_Go_Master.xlsx" under sheet "go_no_go_master" and row <Go_no_goMaster_rowNum>
    When the user is entering a value for "<FieldName>"
    Then the system restricts the input "<FieldName>" to the configured <MaxLength>

    Examples:
      | FieldName            | MaxLength | Go_no_goMaster_rowNum |
      | Go-no-Go Code        | 8         | 4                     |
      | Go-no-Go Name        | 50        | 4                     |
      | Go-no-Go Description | 400       | 4                     |
      | Go-no-Go Code        | 8         | 15                    |
      | Go-no-Go Name        | 50        | 15                    |


  Scenario Outline: Validate Go-No-Go Code length
    When the user navigates to Go No Go master
    And the user creates Go No Go master
    And user reads data from the excel file "Go_No_Go_Master.xlsx" under sheet "go_no_go_master" and row <Go_no_goMaster_rowNum>
    And the user is entering a "Go-no-Go Code"
    Then the system restricts the input for "Go-no-Go Code" to <MaxLength> characters

    Examples:
      | MaxLength | Go_no_goMaster_rowNum |
      | 8         | 4                     |

  Scenario Outline: Validate Go-No-Go Name length
    When the user navigates to Go No Go master
    And the user creates Go No Go master
    And user reads data from the excel file "Go_No_Go_Master.xlsx" under sheet "go_no_go_master" and row <Go_no_goMaster_rowNum>
    And the user is entering a "Go-no-Go Name"
    Then the system restricts the input for "Go-no-Go Name" to <MaxLength> characters

    Examples:
      | MaxLength | Go_no_goMaster_rowNum |
      | 50        | 4                     |

  Scenario Outline: Validate Go-No-Go Description length
    When the user navigates to Go No Go master
    And the user creates Go No Go master
    And user reads data from the excel file "Go_No_Go_Master.xlsx" under sheet "go_no_go_master" and row <Go_no_goMaster_rowNum>
    And the user is entering a "Go-no-Go Description"
    Then the system restricts the input for "Go-no-Go Description" to <MaxLength> characters

    Examples:
      | MaxLength | Go_no_goMaster_rowNum |
      | 400       | 4                     |


  Scenario: Label field should exist in Go-No-Go Rule Mapping
    When the user navigates to Go No Go master
    And the user creates Go No Go master
    And the user expands the Go No Go Rule Mapping accordion
    Then the Label field should exist

  Scenario Outline: Define rule for mapped field
    When the user navigates to Go No Go master
    And the user creates Go No Go master
    And user reads data from the excel file "Go_No_Go_Master.xlsx" under sheet "go_no_go_master" and row <Go_no_goMaster_rowNum>
    And the user enters all mandatory fields and clicks Save
    And the user edits the created record
    When the user defines Rule for the field for excel
    Then the rule is saved against the selected field

    Examples:
      | Go_no_goMaster_rowNum |
      | 5                     |
      | 6                     |

  Scenario Outline: Mark rule mapping field as mandatory or non-mandatory
    When the user navigates to Go No Go master
    And the user creates Go No Go master
    And user reads data from the excel file "Go_No_Go_Master.xlsx" under sheet "go_no_go_master" and row <Go_no_goMaster_rowNum>
    And the user enters all mandatory fields and clicks Save
    And the user edits the created record
    When the user checks the checkbox Is mandatory
    Then the mandatory configuration is saved for the field

    Examples:
      | Go_no_goMaster_rowNum |
      | 7                     |
      | 8                     |

  Scenario: Add multiple fields in rule mapping
    When the user navigates to Go No Go master
    And the user creates Go No Go master
    And user reads data from the excel file "Go_No_Go_Master.xlsx" under sheet "go_no_go_master" and row 9
    And fills all mandatory rows except for go no go rule mapping and opens the accordion
    And user fills go no go rule mappings
      | Go_No_Go_Master.xlsx | go_no_go_master | 9  |
      | Go_No_Go_Master.xlsx | go_no_go_master | 10 |
      | Go_No_Go_Master.xlsx | go_no_go_master | 11 |
    And saves the entered data from excel
    Then all added fields are displayed in the rule mapping table


  Scenario Outline: Checking delete button visibility
    When the user navigates to Go No Go master
    And the user creates Go No Go master
    And the user expands the Go No Go Rule Mapping accordion
    And the mapping has <No_of_Entries> entries
    And Delete button visibility should be "<Visibility>"
    Examples:
      | No_of_Entries | Visibility  |
      | 1             | not-visible |
      | 2             | visible     |

  Scenario: Check Maker Checker flow for approval
    When the user navigates to Go No Go master
    And the user creates Go No Go master
    And user reads data from the excel file "Go_No_Go_Master.xlsx" under sheet "go_no_go_master" and row 12
    And the user enters all mandatory fields and clicks on Save and Send For Approval
    And user logout from CAS
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "ChildBrowserSheet" and 0
    And user "approve" the record
    Then the record must be approved successfully

  Scenario: Check Maker Checker flow for reject
    When the user navigates to Go No Go master
    And the user creates Go No Go master
    And user reads data from the excel file "Go_No_Go_Master.xlsx" under sheet "go_no_go_master" and row 13
    And the user enters all mandatory fields and clicks on Save and Send For Approval
    And user logout from CAS
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "ChildBrowserSheet" and 1
    And user "reject" the record
    Then the record must be rejected successfully

  Scenario: Check Maker Checker flow for send back
    When the user navigates to Go No Go master
    And the user creates Go No Go master
    And user reads data from the excel file "Go_No_Go_Master.xlsx" under sheet "go_no_go_master" and row 14
    And the user enters all mandatory fields and clicks on Save and Send For Approval
    And user logout from CAS
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "ChildBrowserSheet" and 1
    And user "send back" the record
    Then the record must be sent back successfully

