#@Epic-PF_Bond_Base
#@PQMStory
#@AuthoredBy-aniket.tripathi
#@ReviewedBy-
#@ImplementedBy-aniket.tripathi
#@Islamic
#@Bonds
#@ManualConfig
#
#Feature: Masters Handling for Bond Allocation
#
#  Background:
#    Given user is on CAS Login Page
#    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
#
##FeatureID-ACAUTOCAS-,CAS-190862-1
#  Scenario: ACAUTOCAS-14518:  Visibility of Bond Product seed data
#    And user is on seed data masters
#    When user search DType Bond Product
#    Then user should be able to see Bond Product seed records
#
##FeatureID-ACAUTOCAS-,CAS-190862-2
#  Scenario: ACAUTOCAS-14519:  Visibility of bond product field
#    And user navigates to Commodity Master Grid
#    And user opens Commodity Master
#    When user creates a new master record and verify new field of Bond Product
#    Then user should be able to see Bond Product field
#
##FeatureID-ACAUTOCAS-,CAS-190862-3
#  Scenario: ACAUTOCAS-14520:  Visibility of bond product seed data for Commodity type as bond
#    And user opens commodity master
#    And user creates a new master record and verify new field of Bond Product
#    When user opens dropdown of bond product
#    Then Seeded value Sukuk to be displayed with description Sukuk Bond
#
##FeatureID-ACAUTOCAS-,CAS-190862-5
#  Scenario: ACAUTOCAS-14521:  Creation of new record of Commodity type as bond in commodity master
#    And user opens commodity master
#    When user creates a new master record
#    And user fills all mandatory details of create commodity master
#    Then commodity master should be created successfully
#
##FeatureID-ACAUTOCAS-,CAS-190862-8
#  Scenario Outline: ACAUTOCAS-14522:  Authority for Initiate Bond Purchase to be checked in Role master
#    And user opens Role Master
#    When Search "<authority>" authority for Initiate Bond Purchase
#    Then Bond purchase initiate authority should be present
#    Examples:
#      | authority              |
#      | BOND_PURCHASE_INITIATE |
#
##FeatureID-ACAUTOCAS-,CAS-190862-8,13
#  Scenario: ACAUTOCAS-14523:  Visibility of add role with Authority Initiate Bond Purchase to user
#  And user opens Role Master
#  When Add this Role to a user
#  Then User should be able to add role with Authority Initiate Bond Purchase to user
#
##FeatureID-ACAUTOCAS-,CAS-190862-11
#  Scenario Outline: ACAUTOCAS-14524:  Authority for Initiate Bond Transfer to be checked in Role master
#    And user opens Role Master
#    When Search "<authority>" authority for Initiate Bond Purchase
#    Then Bond transfer initiate authority should be present
#    Examples:
#      | authority              |
#      | BOND_TRANSFER_INITIATE |
#
##FeatureID-ACAUTOCAS-,CAS-190862-15
#  Scenario: ACAUTOCAS-14525:  Visibility of add role with Authority Initiate Bond Transfer to user
#    And user opens Role Master
#    When Add this Role to a user
#    Then User should be able to add role with Authority Initiate Bond Transfer to user
#
##FeatureID-ACAUTOCAS-,CAS-190862-25
#  Scenario: ACAUTOCAS-14526:  Visibility of document upload from enquiry screen
#    And user opens enquiry screen
#    When user enters the application number and searches the application
#    Then user should be able to visibility of document upload screen
#
##FeatureID-ACAUTOCAS-,CAS-190862-25
#  Scenario: ACAUTOCAS-14527:  Visibility of document upload from hold screen
#    And user opens hold screen
#    When user enters the application number and searches the application
#    Then user should be able to visibility of document upload screen
#
##FeatureID-ACAUTOCAS-,CAS-190862-25
#  Scenario: ACAUTOCAS-14528:  Visibility of document upload from Workflow View Mode screen
#    And user opens Workflow View Mode screen
#    When user enters the application number and searches the application
#    Then user should be able to visibility of document upload screen
#
##FeatureID-ACAUTOCAS-,CAS-190862-25
#  Scenario: ACAUTOCAS-14529:  Visibility of additional field button from enquiry screen
#    And user opens enquiry screen
#    When user enters the application number and searches the application
#    Then user should be able to visibility of document upload screen
#
##FeatureID-ACAUTOCAS-,CAS-190862-25
#  Scenario: ACAUTOCAS-14530:  Visibility of additional field button from hold screen
#    And user opens hold screen
#    When user enters the application number and searches the application
#    Then user should be able to visibility of document upload screen
#
##FeatureID-ACAUTOCAS-,CAS-190862-25
#  Scenario: ACAUTOCAS-14531:  Visibility of additional field button from Workflow View Mode screen
#    And user opens Workflow View Mode screen
#    When user enters the application number and searches the application
#    Then user should be able to visibility of document upload screen
#
##FeatureID-ACAUTOCAS-,CAS-190862-25
#  Scenario: ACAUTOCAS-14532:  Visibility of additional field screen from enquiry screen
#    And user opens enquiry screen
#    When user enters the application number and searches the application
#    And user opens additional field screen
#    Then user should be able to visibility of document upload screen
#
##FeatureID-ACAUTOCAS-,CAS-190862-25
#  Scenario: ACAUTOCAS-14533:  Visibility of additional field screen from hold screen
#    And user opens hold screen
#    When user enters the application number and searches the application
#    And user opens additional field screen
#    Then user should be able to visibility of document upload screen
#
##FeatureID-ACAUTOCAS-,CAS-190862-25
#  Scenario: ACAUTOCAS-14534:  Visibility of additional field screen from Workflow View Mode screen
#    And user opens Workflow View Mode screen
#    When user enters the application number and searches the application
#    And user opens additional field screen
#    Then user should be able to visibility of document upload screen
