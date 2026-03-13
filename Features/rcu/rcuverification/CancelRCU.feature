@Epic-RCU
@ReviewedBy-None
@ImplementedBy-aditya.tomar
#@AuthoredBy-vinod.pandey
@AuthoredBy-vipin.kishor
  #FeatureID-ACAUTOCAS-516
Feature:Advance Search In Rcu Verification

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 7
    And user is agent of the agency who is doing rcu verification
    And user is the team lead of agency team

  #FeatureID-ACAUTOCAS-516
  Scenario: ACAUTOCAS-4782:  Cancel rcu in rcu verification
    When user navigates to rcu verification screen
    And user reads data from the excel file "RCUInitiationWB" under sheet "RCUInitiation_home" and row 0
    And user searches the application using application id
    And user selects the application
    And user cancels the rcu
    Then application is on rcu referral stage with sampling status as cancel

  #FeatureID-ACAUTOCAS-516
  Scenario: ACAUTOCAS-4783: Unable to add the rcu final decision of rcu cancelled application
    When user navigates to rcu referral screen
    And user reads data from the excel file "RCUInitiationWB" under sheet "RCUInitiation_home" and row 0
    And user searches the rcu cancelled application using application id
    And user selects the application
    Then final decision field is not editable

