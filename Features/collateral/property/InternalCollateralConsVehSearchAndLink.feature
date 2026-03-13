@Epic-Secondary_Collateral
#Author: rsurya.kumar
#CreateDate: 04th Sep 2023
#ScriptedBy:
#ReviewedBy:
#Scenarios: = 758
@AuthoredBy-rsurya.kumar
  @NotImplemented
Feature: Internal Collateral Consumer Vehicle Search and Link

#  Pre-Requisites---
#  In this feature we will validate the screen layout of Collateral Browser Page

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0

#Internal Collateral Search and link
Scenario Outline: ACAUTOCAS-16948: Provision to search Consumer Vehicle as internal collateral and link
    Given user opens an application at "DDE" stage from application grid
    And user opens "CollateralPage"
    And user searches for an existing collateral
    And user gets option to filter the collateral
    And user enters parameters "<Collateral ID>", "<Collateral Type>", "<Collateral SubType>", "<Collateral Ref No>", "<Collateral Status>", "<Owner>", "<RC Number>"
    And clicks on search
    And user sees the list of collaterals available in "<CMS>" as per the parameters entered
    Then user should be able to link it to the application
    Examples:
      | Collateral ID | Collateral Type | Collateral SubType | Collateral Ref No | Collateral Status | Owner   | RC Number |
      | COLL00028707  | Asset           | Consumer Vehicle   | COLL-AWGHTR123456 | Active            | PRAKASH | JCB1234   |
      | COLL00028707  | Asset           | Consumer Vehicle   |                   | Active            |         | JCB1234   |
      | COLL00028707  | Asset           | Consumer Vehicle   | COLL-AWGHTR123456 | Active            | PRAKASH |           |
      | COLL00028707  | Asset           | Consumer Vehicle   | COLL-AWGHTR123456 | Active            |         | JCB1234   |
      | COLL00028707  | Asset           | Consumer Vehicle   | COLL-AWGHTR123456 |                   | PRAKASH | JCB1234   |
      | COLL00028707  | Asset           | Consumer Vehicle   |                   | Active            | PRAKASH |           |
      |               | Asset           | Consumer Vehicle   |                   |                   | PRAKASH | JCB1234   |
      | COLL00028707  | Asset           | Consumer Vehicle   |                   | Active            | PRAKASH | JCB1234   |
      |               | Asset           | Consumer Vehicle   | COLL-AWGHTR123456 |                   |         | JCB1234   |
      |               | Asset           | Consumer Vehicle   | COLL-AWGHTR123456 | Active            | PRAKASH | JCB1234   |
      | COLL00028707  | Asset           | Consumer Vehicle   |                   |                   | PRAKASH | JCB1234   |
      |               | Asset           | Consumer Vehicle   | COLL-AWGHTR123456 | Active            | PRAKASH |           |
      |               | Asset           | Consumer Vehicle   | COLL-AWGHTR123456 | Active            |         | JCB1234   |
      |               | Asset           | Consumer Vehicle   | COLL-AWGHTR123456 |                   | PRAKASH | JCB1234   |
      |               | Asset           | Consumer Vehicle   |                   | Active            | PRAKASH | JCB1234   |
      | COLL00028707  | Asset           | Consumer Vehicle   | COLL-AWGHTR123456 | Active            |         |           |
      | COLL00028707  | Asset           | Consumer Vehicle   | COLL-AWGHTR123456 |                   | PRAKASH |           |
      | COLL00028707  | Asset           | Consumer Vehicle   | COLL-AWGHTR123456 |                   |         | JCB1234   |
      | COLL00028707  | Asset           | Consumer Vehicle   |                   |                   | PRAKASH |           |
      | COLL00028707  | Asset           | Consumer Vehicle   |                   |                   |         | JCB1234   |
      | COLL00028707  | Asset           | Consumer Vehicle   | COLL-AWGHTR123456 |                   |         |           |
      | COLL00028707  | Asset           | Consumer Vehicle   |                   | Active            |         |           |
      |               | Asset           | Consumer Vehicle   | COLL-AWGHTR123456 | Active            |         |           |
      |               | Asset           | Consumer Vehicle   | COLL-AWGHTR123456 |                   |         |           |
      | COLL00028707  | Asset           | Consumer Vehicle   |                   |                   |         |           |
      |               | Asset           | Consumer Vehicle   |                   | Active            |         |           |
      |               | Asset           | Consumer Vehicle   |                   |                   | PRAKASH |           |
      |               | Asset           | Consumer Vehicle   |                   |                   |         | JCB1234   |
      |               | Asset           | Consumer Vehicle   |                   |                   |         |           |
