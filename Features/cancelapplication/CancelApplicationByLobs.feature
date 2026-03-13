@AuthoredBy-yuvraj.raghuwanshi
@ReviewedBy-Tarun.Gupta
@TechReviewedBy-
@CAS-256322
@ImplementedBy-prashant.nandan
#Epic- Cancel Confirm days at LOB level
#StoryID-CAS-256322
#ATTD NOT APPLICABLE
@GA-9.0

Feature: Cancel Confirm days at LOB level

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 1
   #User search application for which auto_cancel_days  of the given LOBs  exceed the the configure value
  Scenario: Cancel confirm days at LOB level
   And user reads data from the excel file "cancel_application.xlsx" under sheet "cancelled_application" and row 2
    When when user search the application in cancelled grid
    Then cancelled application should not be visible

   #User search application for which auto_cancel_days of the given LOBs doesn't exceed the the configure value
  Scenario: Cancel confirm days at LOB level 2
    And user reads data from the excel file "cancel_application.xlsx" under sheet "cancelled_application" and row 2
    When when user search the application in cancelled grid
    Then cancelled application should be visible
