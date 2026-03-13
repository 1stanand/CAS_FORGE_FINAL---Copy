@Epic-Activity
@ReviewedBy-tushar.chauhan
@ImplementedBy-anuj.singh
@AuthoredBy-kamal.shaiva
@Release3
Feature: Tags_Add_View

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user opens an application at "LOGIN ACCEPTANCE" stage from application grid
    And user reads data from the excel file "activity.xlsx" under sheet "tags" and row 0
    And user opens the activity tab

  Scenario: ACAUTOCAS-2460:  Validate if tags is available to add
    And user select tags in Activity Tab
    When user enter a tag
    And click on add tag in tags section
    Then user should be able to add tag

#Scenario: ACAUTOCAS-2461:  Validate if tegs is available to add
#    And user select tags in Activity Tab
#    When user search
#    And select already created tag
#    Then user should be able to select tag


  Scenario: ACAUTOCAS-2462:  Validate if tags is available to delete
    And user select tags in Activity Tab
    When user delete already created tag
    Then user should be able to delete tag


#Scenario: ACAUTOCAS-2460:  Validate if tags is available to add
#    And user select tags in Activity Tab
#    When  user enter a tag
#    Then user should be able to create parameter of the added tag
#
#
#Scenario: ACAUTOCAS-2460:  Validate if tags is available to add
#    And user select tags in Activity Tab
#    When  user search
#    And select already created tag
#    Then user should be able to create parameter of the added tag
