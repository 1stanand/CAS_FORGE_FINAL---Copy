@Epic-Activity
@AuthoredBy-kamal.shaiva
@ImplementedBy-aryan.jain
@ReviewedBy-None

Feature: Activity_Notes_Add_View

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0

  @Release3
  Scenario: ACAUTOCAS-2447:  Validate if notes is available to add
    And user opens an application at "lead details" stage from application grid
    And user opens the activity tab
    And user select notes in Activity Tab
    When user click on add note in notes section
    Then user should be able to add notes details

  @Release3
  Scenario: ACAUTOCAS-2448:  Validate if Application Notes is available to add
    And user opens an application at "LOGIN ACCEPTANCE" stage from application grid
    And user reads data from the excel file "activity.xlsx" under sheet "notes" and row 0
    And user opens the activity tab
    And user select notes in Activity Tab
    And user click on add note in notes section
    When user is able to enter the title
    And user is able to enter the note code
    And user is be able to enter the note
    And user click on add to add note
    Then user should be able to add the note


  Scenario: ACAUTOCAS-2449:  Validate if note code in Notes is available to add
    And user opens an application at "LOGIN ACCEPTANCE" stage from application grid
    And user reads data from the excel file "activity.xlsx" under sheet "notes" and row 0
    And user opens the activity tab
    And user select notes in Activity Tab
    And user click on add note in notes section
    When user add note code in Notes section
    And user is able to search Note code
    Then note code in serach should appear as per product type mapped in Note Code master
    And user is able to add note code


#    Scenario: ACAUTOCAS-2450:  Validate if Notes is available to add
#        And user click on add note code in Notes section
#        When  user add note in Notes section
#        And select Application
#        And enter note code
#        Then  user should be able to search
#        And select the Note code
#        And note code in serach should appear as per product type
#        And Product mapping in Note Code master

  @Release3
  Scenario: ACAUTOCAS-2451:  Validate if Private Notes is available to add
    And user opens an application at "LOGIN ACCEPTANCE" stage from application grid
    And user reads data from the excel file "activity.xlsx" under sheet "notes" and row 0
    And user opens the activity tab
    And user select notes in Activity Tab
    And user click on add note in notes section
    When click on Private Node
    Then Allowed users should appear
    And user should be able to select multiple users

  @Release3
  Scenario: ACAUTOCAS-2452:  Validate if attachment in Notes is available to add
    And user opens an application at "LOGIN ACCEPTANCE" stage from application grid
    And user reads data from the excel file "activity.xlsx" under sheet "notes" and row 0
    And user opens the activity tab
    And user select notes in Activity Tab
    And user click on add note in notes section
    When click on choose file
    Then user should be able to attach the file with size
    And the format of the file should be correct


#    Scenario: ACAUTOCAS-2452:  Validate if attachment in Notes is available to add
#        And user click on add note code in Notes section
#        When  user add note in Notes section
#        And select Application
#        And click on choose file
#        Then the format of the file should be pdf,odt,txt,docx,doc,xls,xlsx,jpg,jpeg,png,gif,tif,msg,oft
#        And  user should be not able to attach the file with size more than 50 mb




#    Scenario: ACAUTOCAS-2452:  Validate if attachment in Notes is available to add
#        And user click on add note code in Notes section
#        When  user add note in Notes section
#        And select Application
#        And click on choose file
#        Then  user should be able to select the file
#        And the size of the file should be less than 50 MB
#        And the format of the file should be other than pdf,odt,txt,docx,doc,xls,xlsx,jpg,jpeg,png,gif,tif,msg,oft
#        And  user should not be able to attach the file as an attachment

  @Release3
  Scenario: ACAUTOCAS-2453:  Validate if Applicant type Notes is available to add
    And user opens an application at "LOGIN ACCEPTANCE" stage from application grid
    And user reads data from the excel file "activity.xlsx" under sheet "notes" and row 0
    And user opens the activity tab
    And user select notes in Activity Tab
    And user click on add note in notes section
    When user is able to select the Applicant
    And  user is able to select the primary applicant
    And  user is able to enter the title
    And  user is able to enter the note code
    And user is be able to enter the note
    And user click on add to add note
    Then user should be able to add the note


#    Scenario: ACAUTOCAS-2451:  Validate if Private Notes is available to add
#        And user click on add note code in Notes section
#        When  user add note in Notes section
#        And select Applicant
#        And click on Private Node
#        Then Allowed users should appear
#        And  user should be able to select multiple users


#    Scenario: ACAUTOCAS-2452:  Validate if attachment in Notes is available to add
#        And user click on add note code in Notes section
#        When  user add note in Notes section
#        And select Applicant
#        And click on choose file
#        Then  user should be able to select the file
#        And attach the file as an attachment
#        And the size of the file should be less than 50 MB
#        And the format of the file should be pdf,odt,txt,docx,doc,xls,xlsx,jpg,jpeg,png,gif,tif,msg,oft


#    Scenario: ACAUTOCAS-2452:  Validate if attachment in Notes is available to add
#        And user click on add note code in Notes section
#        When  user add note in Notes section
#        And select Applicant
#        And click on choose file
#        Then  user should be able to select the file
#        And the size of the file should be more than 50 MB
#        And the format of the file should be pdf,odt,txt,docx,doc,xls,xlsx,jpg,jpeg,png,gif,tif,msg,oft
#        And  user should not be able to attach the file as an attachment


#    Scenario: ACAUTOCAS-2452:  Validate if attachment in Notes is available to add
#        And user click on add note code in Notes section
#        When  user add note in Notes section
#        And select Applicant
#        And click on choose file
#        Then  user should be able to select the file
#        And the size of the file should be less than 50 MB
#        And the format of the file should be other than pdf,odt,txt,docx,doc,xls,xlsx,jpg,jpeg,png,gif,tif,msg,oft
#        And  user should not be able to attach the file as an attachment


  Scenario: ACAUTOCAS-2454:  Validate if attachment in Notes is available to delete
    And user click on Notes section
    When  user delete note in Notes section
    Then  user who has created the note should be able to delete the note


#    Scenario: ACAUTOCAS-2454:  Validate if attachment in Notes is available to delete
#        And user click on Notes section
#        When  user delete note in Notes section
#        Then  user who has created the note should be able to delete the note


  Scenario: ACAUTOCAS-2455:  Validate if attachment in Notes is available to edit
    And user click on Notes section
    When  user edit note in Notes section
    Then  user who has created the note should be able to edit the note


#    Scenario: ACAUTOCAS-2455:  Validate if attachment in Notes is available to edit
#        And user click on Notes section
#        When  user edit note in Notes section
#        Then  user who has created the note should not be able to edit the note


  Scenario Outline: ACAUTOCAS-2456:  Validate if attachment in Notes is available to delete on other stages
    And user click on Notes section
    When user add attachment at <Stage>
    And move the application to <Next Stage>
    Then  user who has added the attachment in Notes should not be able to delete the attachment
    Examples:
      | Stage           | Next Stage      |
      | Lead Details    | DDE             |
      | Credit Approval | Reconsideration |


#    Scenario: ACAUTOCAS-2456:  Validate if attachment in Notes is available to delete on other stages
#        And user click on Notes section
#        When  user delete note in Notes section
#        Then  user who has created the note should not be able to delete the note


  Scenario Outline: ACAUTOCAS-2457:  Validate if attachment in Notes is available to edit on other stages
    And user click on Notes section
    When user edit attachment at <Stage>
    And move the application to <Next Stage>
    Then  user who has added the attachment in Notes should not be able to edit the attachment
    Examples:
      | Stage           | Next Stage      |
      | Lead Details    | DDE             |
      | Credit Approval | Reconsideration |


#    Scenario: ACAUTOCAS-2457:  Validate if attachment in Notes is available to edit on other stages
#        And user click on Notes section
#        When  user edit note in Notes section
#        Then  user who has created the note should not be able to edit the note

  Scenario Outline: ACAUTOCAS-2458:  Validate if attachment in Notes is available to delete on same stage from send back
    And user click on Notes section
    When user add attachment at <Stage>
    And move the application to <Next Stage>
    And send back the application at <Stage>
    Then  user who has added the attachment in Notes should not be able to delete the attachment
    Examples:
      | Stage           | Next Stage      |
      | Lead Details    | DDE             |
      | Credit Approval | Reconsideration |

  Scenario Outline: ACAUTOCAS-2459:  Validate if attachment in Notes is available to edit on same stages from send back
    And user click on Notes section
    When user edit attachment at <Stage>
    And move the application to <Next Stage>
    And send back the application at <Stage>
    Then  user who has added the attachment in Notes should not be able to edit the attachment
    Examples:
      | Stage           | Next Stage      |
      | Lead Details    | DDE             |
      | Credit Approval | Reconsideration |

#Edit Notes which is based on Authoritty
  Scenario:Edit the added notes in activity
    And user opens an "<ProductType>" application at "<ApplicationStage>" from application grid
    And user opens applicant information page of "<ApplicationStage>"
    And user open activity accordion
    And user add a note
    When user edit the added notes
    Then notes should  be edited successfully


