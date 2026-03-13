#@Epic-Testing
#@JavaMelody
#
#Feature: Java Melody monitoring Report
#
#Scenario: ACAUTOCAS-19611: Java Melody monitoring Report Generated Successfully
#    Given user is on CAS Login Page
#    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
#    And user opens the Java Melody monitoring statistics
#    And user opens the detail sections to accesses them
#    When user downloads the PDF document
#    Then user should be able to download the Java Melody monitoring statistics PDF document
