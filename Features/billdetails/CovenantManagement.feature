#@Epic-Corporate_Loans
#@AuthoredBy-anshima.tiwari
#@ReviewedBy-
#@ImplementedBy-
#@TechReviewedBy-
#
#@CustomerGroups
#Feature: Covenant Management
#
#    #  Pre-Requisites---
##  In this feature we will validate all these screen level verification with User who is having ALL_Roles Authority
## Multi facility application should be present at DDE and in facility details product type should be bill discounting
#
#  Background:
#    Given user is on CAS login page
#    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
#    And user clicks on deal & facility details
#    And user clicks on facility details tab
#
#
#  Scenario:user verify Covenant tab
#    When user clicks on add button
#    Then fields should be present
#
#  Scenario Outline: user verify covenant details fields
#    When user clicks on bill details tab
#    Then Following fields "<Fields>" should be visible in this required conditonal mandatory "<Required_Conditional_Mandatory>" in view mode
#    Examples:
#      | Fields                   | Required_Conditional_Mandatory |
#      | Deal/Facility ID         | Not Required                   |
#      | Covenant Code            | Not Required                   |
#      | Covenant Type            | Required                       |
#      | Covenant Name            | Required                       |
#      | Covenant Description     | Not Required                   |
#      | Frequency                | Required                       |
#      | Start date               | Not Required                   |
#      | End date                 | Not Required                   |
#      | Due Date                 | Not Required                   |
#      | Grace Days               | Not Required                   |
#      | Due Date with Grace Days | Not Required                   |
#      | Next Review Date         | Not Required                   |
#      | Parameter                | Required                       |
#      | Operator                 | Not Required                   |
#      | Expected Value           | Not Required                   |
#      | Actual Value             | Not Required                   |
#      | Question Checklist       | Not Required                   |
#      | Penality details         | Not Required                   |
#      | Charge Details           | Not Required                   |
#      | Status                   | Not Required                   |
#
#
#  Scenario Outline: user verify status tab fields
#    When user click on status tab
#    Then Following fields "<Fields>" should be visible in this required conditonal mandatory "<Required_Conditional_Mandatory>" in view mode
#    Examples:
#
#      | Fields                    | Required_Conditional_Mandatory |
#      | Status                    | Not Required                   |
#      | Sub Status                | Not Required                   |
#      | Final Status              | Required                       |
#      | Committed Date            | Not Required                   |
#      | Breach Closure Date       | Not Required                   |
#      | Closure of Action/Remarks | Not Required                   |
#
