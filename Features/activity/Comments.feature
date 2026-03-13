@Epic-Activity
@ReviewedBy-None
@AuthoredBy-kamal.shaiva
@ReviewedByDEV

Feature: Activity Comments is used for any comments user want to add and view for any reference

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user opens an application at "LOGIN ACCEPTANCE" stage from application grid
    And user opens the activity tab

  @ImplementedBy-aniket.tripathi
  @Release3
  Scenario: ACAUTOCAS-2433:  Validate if Comments is available for text
    When Authorized user select comments in Activity Tab
    And Authorized user enters the text in comments section without any special character
    And Authorized user should be able to enter data
    Then data should be saved with time stamp

  @ImplementedBy-aniket.tripathi
  @Release3
  Scenario: ACAUTOCAS-2434:  Validate if Comments is available for text and special character
    When Authorized user select comments in Activity Tab
    And Authorized user enters the text in comments section with some special character
    And Authorized user should be able to enter data
    Then data should be saved with time stamp

  @ImplementedBy-aniket.tripathi
  @Release3
  Scenario: ACAUTOCAS-2435:  Validate if Comments is available for text and comment is time stamped
    When Authorized user select comments in Activity Tab
    And Authorized user enters the text in comments section without any special character
    And Authorized user should be able to enter data
    Then data should be saved with time stamp

  Scenario: ACAUTOCAS-2436:  Validate if Comments is available for edit
    Given Authorized user select comments in Activity Tab
    When Authorized user edit the text entered by other user in comments section
    Then Authorized user should not be able to edit the text entered by other user

  Scenario: ACAUTOCAS-2437:  Validate if Comments is available for delete
    Given Authorized user select comments in Activity Tab
    When Authorized user delete the text entered by other user in comments section
    Then Authorized user should not be able to delete the text entered by other user

  Scenario: ACAUTOCAS-2436:  Validate if Comments is available for edit
    Given Authorized user select comments in Activity Tab
    When Authorized user edit the text entered by him in comments section
    Then Authorized user should be able to edit the text entered by him on same stage

  Scenario: ACAUTOCAS-2437:  Validate if Comments is available for delete
    Given Authorized user select comments in Activity Tab
    When Authorized user delete the text entered by him in comments section
    Then Authorized user should be able to delete the text entered by him on same stage

  Scenario: ACAUTOCAS-2438:  Validate if Comments is available at next stage
    Given Authorized user select comments in Activity Tab
    When Authorized user enter the text entered in comments section
    And move to next stage
    Then Authorized user should be able to read the comments entered in previous stage

  Scenario: ACAUTOCAS-2439:  Validate if Comments is available at send back stage
    Given Authorized user select comments in Activity Tab
    When Authorized user enter the text entered in comments section
    And send back to previous stage
    Then Authorized user should be able to read the comments entered

  Scenario: ACAUTOCAS-2440:  Validate if Comments is available after reassign the application
    Given Authorized user select comments in Activity Tab
    When Authorized user enter the text entered in comments section
    And reassign the application to other user
    Then Authorized user should be able to read the comments entered before reassigning of the application



