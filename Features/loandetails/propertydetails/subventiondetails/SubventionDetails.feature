#@Epic-Loan_Application_Details
#@AuthoredBy-anshima.tiwari
#@ReviewedBy-
#@ImplementedBy-
#@TechReviewedBy-
#
#@SubventionDetails
#Feature: Subvention details in Property details
#
##  Pre-Requisites---
##  In this feature we will validate subvention details in property details who is having ALL_Roles Authority
#  #In Builder Project master maintain Subvention details and check checkbox of subvention allowed in Scheme to verify subvention
## Punch Home Loan application at Lead details fill property detail with builder
#
#  Background:
#    Given user is on CAS login page
#    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
#
#    #User check property details when subvention is not maintain in builder details and in scheme
# #${ProductType:["HL","IHF","OMNI","MHL"]}
# #${ApplicationStage:["Lead Details", "Login Acceptance", "DDE", "Credit Approval", "Reconsideration" , "Post Approval" , "Disbursal Initiation"]}
#  #FeatureID-ACAUTOCAS-5912
#  Scenario Outline:Verify Subvention details tab at <ApplicationStage> in <ProductType>
#    And user open an application of "<ProductType>" at "<ApplicationStage>"
#    And user open loan details
#    When user open property details
#    Then subvention details tab should not be present
#    Examples:
#      | ApplicationStage   | ProductType   |
#      | <ApplicationStage> | <ProductType> |
#
#     #User check property details when subvention is maintain in builder details but checkbox is not ticked in scheme
# #${ProductType:["HL","IHF","OMNI","MHL"]}
# #${ApplicationStage:["Lead Details", "Login Acceptance", "DDE", "Credit Approval", "Reconsideration" , "Post Approval" , "Disbursal Initiation"]}
#  #FeatureID-ACAUTOCAS-5912
#  Scenario Outline:Verify Subvention details tab at <ApplicationStage> in <ProductType> for subvention details
#    And user open an application of "<ProductType>" at "<ApplicationStage>"
#    And user open loan details
#    And user open property details
#    And user fill property details
#    When user selects collateral sub type as builder property under construction
#    Then subvention details tab should not be present
#    Examples:
#      | ApplicationStage   | ProductType   |
#      | <ApplicationStage> | <ProductType> |
#
#
#
#    #User check property details when subvention is maintain in builder details in scheme
# #${ProductType:["HL","IHF","OMNI","MHL"]}
# #${ApplicationStage:["Lead Details", "Login Acceptance", "DDE", "Credit Approval", "Reconsideration" , "Post Approval" , "Disbursal Initiation"]}
#  #FeatureID-ACAUTOCAS-5912
#  Scenario Outline:Verify Subvention details at <ApplicationStage> in <ProductType>
#    And user open an application of "<ProductType>" at "<ApplicationStage>"
#    And user open loan details
#    And user open property details
#    And user fill property details
#    And user selects collateral sub type as builder property under construction
#    When user selects project name in which subvention is not allowed
#    Then subvention details tab should not be present
#    Examples:
#      | ApplicationStage   | ProductType   |
#      | <ApplicationStage> | <ProductType> |
#
#
#
#    #User check property details when subvention is maintain in builder details
# #${ProductType:["HL","IHF","OMNI","MHL"]}
# #${ApplicationStage:["Lead Details", "Login Acceptance", "DDE", "Credit Approval", "Reconsideration" , "Post Approval" , "Disbursal Initiation"]}
#  #FeatureID-ACAUTOCAS-5912
#  Scenario Outline:Verify Subvention details at <ApplicationStage> in <ProductType> for builder maintain
#    And user open an application of "<ProductType>" at "<ApplicationStage>"
#    And user open loan details
#    And user open property details
#    And user fill property details
#    And user selects collateral sub type as builder property under construction
#    When user selects project name in which subvention is allowed
#    Then subvention details tab should be visible
#    Examples:
#      | ApplicationStage   | ProductType   |
#      | <ApplicationStage> | <ProductType> |
#
#
#
#     #User check property details when subvention is maintain in builder details but Modifiable At Application Level is not allowed
#  #Subvention type-collectible
# #${ProductType:["HL","IHF","OMNI","MHL"]}
# #${ApplicationStage:["Lead Details", "Login Acceptance", "DDE", "Credit Approval", "Reconsideration" , "Post Approval" , "Disbursal Initiation"]}
#  #FeatureID-ACAUTOCAS-5912
#  Scenario Outline:Verify Subvention details tab at <ApplicationStage> in <ProductType> for subvention type collectible
#    And user open an application of "<ProductType>" at "<ApplicationStage>"
#    And user open loan details
#    And user open property details
#    And user fill property details
#    And user selects collateral sub type as builder property under construction
#    And user selects project name in which subvention is allowed
#    And user open subvention details tab should be visible
#    When user tick on subvention allowed
#    Then subvention details should be visible in view mode
#    Examples:
#      | ApplicationStage   | ProductType   |
#      | <ApplicationStage> | <ProductType> |
#
#
#    #User check property details when subvention is maintain in builder details and Modifiable At Application Level is allowed
#  #Subvention type-collectible
# #${ProductType:["HL","IHF","OMNI","MHL"]}
# #${ApplicationStage:["Lead Details", "Login Acceptance", "DDE", "Credit Approval", "Reconsideration" , "Post Approval" , "Disbursal Initiation"]}
#  #FeatureID-ACAUTOCAS-5912
#  Scenario Outline:Verify Subvention details tab at <ApplicationStage> in <ProductType> for type collectible
#    And user open an application of "<ProductType>" at "<ApplicationStage>"
#    And user open loan details
#    And user open property details
#    And user fill property details
#    And user selects collateral sub type as builder property under construction
#    And user selects project name in which subvention is allowed
#    And user open subvention details tab should be visible
#    When user tick on subvention allowed
#    Then subvention end date subvention percentage should be visible in editable mode
#    Examples:
#      | ApplicationStage   | ProductType   |
#      | <ApplicationStage> | <ProductType> |
#
#    #User check property details when subvention is maintain in builder details but Modifiable At Application Level is allowed
#  #Subvention type-collectible
# #${ProductType:["HL","IHF","OMNI","MHL"]}
# #${ApplicationStage:["Lead Details", "Login Acceptance", "DDE", "Credit Approval", "Reconsideration" , "Post Approval" , "Disbursal Initiation"]}
#  #FeatureID-ACAUTOCAS-5912
#  Scenario Outline:Verify Subvention detail tab at <ApplicationStage> in <ProductType>
#    And user open an application of "<ProductType>" at "<ApplicationStage>"
#    And user open loan details
#    And user open property details
#    And user fill property details
#    And user selects collateral sub type as builder property under construction
#    And user selects project name in which subvention is allowed
#    And user open subvention details tab should be visible
#    When user tick on subvention allowed
#    Then subvention end date subvention percentage should be visible in editable mode
#    Examples:
#      | ApplicationStage   | ProductType   |
#      | <ApplicationStage> | <ProductType> |
#
#     #User check property details when subvention is maintain in builder details but subvention end date is past date
#  #Subvention type-collectible
# #${ProductType:["HL","IHF","OMNI","MHL"]}
# #${ApplicationStage:["Lead Details", "Login Acceptance", "DDE", "Credit Approval", "Reconsideration" , "Post Approval" , "Disbursal Initiation"]}
#  #FeatureID-ACAUTOCAS-5912
#  Scenario Outline:Verify Subvention details tab at <ApplicationStage> in <ProductType> for different builder
#    And user open an application of "<ProductType>" at "<ApplicationStage>"
#    And user open loan details
#    And user open property details
#    And user fill property details
#    And user selects collateral sub type as builder property under construction
#    When user selects project name in which subvention is allowed
#    Then subvention details tab should not be visible
#    Examples:
#      | ApplicationStage   | ProductType   |
#      | <ApplicationStage> | <ProductType> |
#
#
##Verify subvention details which is maintain in builder details
#  #Subvention type-collectible
# #${ProductType:["HL","IHF","OMNI","MHL"]}
# #${ApplicationStage:["Lead Details", "Login Acceptance", "DDE", "Credit Approval", "Reconsideration" , "Post Approval" , "Disbursal Initiation"]}
#  #FeatureID-ACAUTOCAS-5912
#  Scenario Outline:Verify Subvention details tab at <ApplicationStage> in <ProductType> for builder project is maintained
#    And user open an application of "<ProductType>" at "<ApplicationStage>"
#    And user open loan details
#    And user open property details
#    And user fill property details
#    And user selects collateral sub type as builder property under construction
#    And user selects project name in which subvention is allowed
#    And user open subvention details tab should be visible
#    When user tick on subvention allowed
#    Then subvention details should be same as maintained in master
#    Examples:
#      | ApplicationStage   | ProductType   |
#      | <ApplicationStage> | <ProductType> |
#
#    #Edit subvention details which is maintain in builder details
#  #Subvention type-collectible
# #${ProductType:["HL","IHF","OMNI","MHL"]}
# #${ApplicationStage:["Lead Details", "Login Acceptance", "DDE", "Credit Approval", "Reconsideration" , "Post Approval" , "Disbursal Initiation"]}
#  #FeatureID-ACAUTOCAS-5912
#  Scenario Outline:Verify Subvention details tab at <ApplicationStage> in <ProductType> for edit
#    And user open an application of "<ProductType>" at "<ApplicationStage>"
#    And user open loan details
#    And user open property details
#    And user fill property details
#    And user selects collateral sub type as builder property under construction
#    And user selects project name in which subvention is allowed
#    And user open subvention details tab should be visible
#    And user tick on subvention allowed
#    And user edit subvention percentage subvention end date
#    And user fill all the details of property details
#    When user click on save button
#    Then subvention details should be updated
#    Examples:
#      | ApplicationStage   | ProductType   |
#      | <ApplicationStage> | <ProductType> |
#
#
#
#    #Check past date for subvention end date which is maintain in builder details
#  #Subvention type-collectible
# #${ProductType:["HL","IHF","OMNI","MHL"]}
# #${ApplicationStage:["Lead Details", "Login Acceptance", "DDE", "Credit Approval", "Reconsideration" , "Post Approval" , "Disbursal Initiation"]}
#  #FeatureID-ACAUTOCAS-5912
#  Scenario Outline:Verify Subvention details tab at <ApplicationStage> in <ProductType> for subvention date
#    And user open an application of "<ProductType>" at "<ApplicationStage>"
#    And user open loan details
#    And user open property details
#    And user fill property details
#    And user selects collateral sub type as builder property under construction
#    And user selects project name in which subvention is allowed
#    And user open subvention details tab should be visible
#    And user tick on subvention allowed
#    When user enter past date in subvention end date
#    Then user should get validation
#    Examples:
#      | ApplicationStage   | ProductType   |
#      | <ApplicationStage> | <ProductType> |
#
#     #Check percentage which is maintain in builder details
#  #Subvention type-collectible
# #${ProductType:["HL","IHF","OMNI","MHL"]}
# #${ApplicationStage:["Lead Details", "Login Acceptance", "DDE", "Credit Approval", "Reconsideration" , "Post Approval" , "Disbursal Initiation"]}
#  #FeatureID-ACAUTOCAS-5912
#  Scenario Outline:Verify Subvention details tab at <ApplicationStage> in <ProductType> for percentage
#    And user open an application of "<ProductType>" at "<ApplicationStage>"
#    And user open loan details
#    And user open property details
#    And user fill property details
#    And user selects collateral sub type as builder property under construction
#    And user selects project name in which subvention is allowed
#    And user open subvention details tab should be visible
#    And user tick on subvention allowed
#    When user enter character, negative value in subvention percentage field
#    Then user should get validation
#    Examples:
#      | ApplicationStage   | ProductType   |
#      | <ApplicationStage> | <ProductType> |
#
#
#     #Check percentage which is maintain in builder details by incorrect data
#  #Subvention type-collectible
# #${ProductType:["HL","IHF","OMNI","MHL"]}
# #${ApplicationStage:["Lead Details", "Login Acceptance", "DDE", "Credit Approval", "Reconsideration" , "Post Approval" , "Disbursal Initiation"]}
#  #FeatureID-ACAUTOCAS-5912
#  Scenario Outline:Verify Subvention details tab at <ApplicationStage> in <ProductType> for incorrect data
#    And user open an application of "<ProductType>" at "<ApplicationStage>"
#    And user open loan details
#    And user open property details
#    And user fill property details
#    And user selects collateral sub type as builder property under construction
#    And user selects project name in which subvention is allowed
#    And user open subvention details tab should be visible
#    And user tick on subvention allowed
#    And user enter more than 2 digit value in subvention percentage field
#    When user save property details
#    Then user should get validation
#    Examples:
#      | ApplicationStage   | ProductType   |
#      | <ApplicationStage> | <ProductType> |
#
#     #Check subvention details for view mode which is maintain in builder details
#  #Subvention type-collectible
# #${ProductType:["HL","IHF","OMNI","MHL"]}
# #${ApplicationStage:["Lead Details", "Login Acceptance", "DDE", "Credit Approval", "Reconsideration" , "Post Approval" , "Disbursal Initiation"]}
#  #FeatureID-ACAUTOCAS-5912
#  Scenario Outline:Verify Subvention details tab at <ApplicationStage> in <ProductType> in view mode
#    And user open an application of "<ProductType>" at "<ApplicationStage>"
#    And user open loan details in view mode
#    And user open property details
#    And user open subvention allowed
#    When user try to edit subvention details
#    Then user should not able to edit subvention details user only view subvention details
#    Examples:
#      | ApplicationStage   | ProductType   |
#      | <ApplicationStage> | <ProductType> |
#
#
#    #User check property details when subvention is maintain in builder details
#  #Subvention type-Upfront
# #${ProductType:["HL","IHF","OMNI","MHL"]}
# #${ApplicationStage:["Lead Details", "Login Acceptance", "DDE", "Credit Approval", "Reconsideration" , "Post Approval" , "Disbursal Initiation"]}
#  #FeatureID-ACAUTOCAS-5912
#  Scenario Outline:Verify Subvention details tab at <ApplicationStage> in <ProductType> for upfront
#    And user open an application of "<ProductType>" at "<ApplicationStage>"
#    And user open loan details
#    And user open property details
#    And user fill property details
#    And user selects collateral sub type as builder property under construction
#    When user selects project name in which subvention is allowed
#    Then subvention details tab should be visible
#    Examples:
#      | ApplicationStage   | ProductType   |
#      | <ApplicationStage> | <ProductType> |
#
#
#     #User check property details when subvention is maintain in builder details but Modifiable At Application Level is not allowed
#  #Subvention type-Upfront
# #${ProductType:["HL","IHF","OMNI","MHL"]}
# #${ApplicationStage:["Lead Details", "Login Acceptance", "DDE", "Credit Approval", "Reconsideration" , "Post Approval" , "Disbursal Initiation"]}
#  #FeatureID-ACAUTOCAS-5912
#  Scenario Outline:Verify Subvention details tab at <ApplicationStage> in <ProductType> for subvention type upfront
#    And user open an application of "<ProductType>" at "<ApplicationStage>"
#    And user open loan details
#    And user open property details
#    And user fill property details
#    And user selects collateral sub type as builder property under construction
#    And user selects project name in which subvention is allowed
#    And user open subvention details tab should be visible
#    When user tick on subvention allowed
#    Then subvention details should be visible in view mode
#    Examples:
#      | ApplicationStage   | ProductType   |
#      | <ApplicationStage> | <ProductType> |
#
#    #User check property details when subvention is maintain in builder details and Modifiable At Application Level is allowed
#  #Subvention type-Upfront
# #${ProductType:["HL","IHF","OMNI","MHL"]}
# #${ApplicationStage:["Lead Details", "Login Acceptance", "DDE", "Credit Approval", "Reconsideration" , "Post Approval" , "Disbursal Initiation"]}
#  #FeatureID-ACAUTOCAS-5912
#  Scenario Outline:Verify Subvention details tab at <ApplicationStage> in <ProductType> for application level editable
#    And user open an application of "<ProductType>" at "<ApplicationStage>"
#    And user open loan details
#    And user open property details
#    And user fill property details
#    And user selects collateral sub type as builder property under construction
#    And user selects project name in which subvention is allowed
#    And user open subvention details tab should be visible
#    When user tick on subvention allowed
#    Then subvention end date subvention only should be visible in editable mode
#    Examples:
#      | ApplicationStage   | ProductType   |
#      | <ApplicationStage> | <ProductType> |
#
#    #User check property details when subvention is maintain in builder details but subvention end date is past date
#  #Subvention type-Upfront
# #${ProductType:["HL","IHF","OMNI","MHL"]}
# #${ApplicationStage:["Lead Details", "Login Acceptance", "DDE", "Credit Approval", "Reconsideration" , "Post Approval" , "Disbursal Initiation"]}
#  #FeatureID-ACAUTOCAS-5912
#  Scenario Outline:Verify Subvention details tab at <ApplicationStage> in <ProductType> for past date
#    And user open an application of "<ProductType>" at "<ApplicationStage>"
#    And user open loan details
#    And user open property details
#    And user fill property details
#    And user selects collateral sub type as builder property under construction
#    When user selects project name in which subvention is allowed
#    Then subvention details tab should not be visible
#    Examples:
#      | ApplicationStage   | ProductType   |
#      | <ApplicationStage> | <ProductType> |
#
#    #Verify subvention details which is maintain in builder details
#  #Subvention type-upfront
# #${ProductType:["HL","IHF","OMNI","MHL"]}
# #${ApplicationStage:["Lead Details", "Login Acceptance", "DDE", "Credit Approval", "Reconsideration" , "Post Approval" , "Disbursal Initiation"]}
#  #FeatureID-ACAUTOCAS-5912
#  Scenario Outline:Verify Subvention details tab at <ApplicationStage> in <ProductType> for builder maintanence
#    And user open an application of "<ProductType>" at "<ApplicationStage>"
#    And user open loan details
#    And user open property details
#    And user fill property details
#    And user selects collateral sub type as builder property under construction
#    And user selects project name in which subvention is allowed
#    And user open subvention details tab should be visible
#    When user tick on subvention allowed
#    Then subvention details should be same as maintained in master
#    Examples:
#      | ApplicationStage   | ProductType   |
#      | <ApplicationStage> | <ProductType> |
#
#        #Edit subvention details which is maintain in builder details
#  #Subvention type-upfront
# #${ProductType:["HL","IHF","OMNI","MHL"]}
# #${ApplicationStage:["Lead Details", "Login Acceptance", "DDE", "Credit Approval", "Reconsideration" , "Post Approval" , "Disbursal Initiation"]}
#  #FeatureID-ACAUTOCAS-5912
#  Scenario Outline:Verify Subvention details tab at <ApplicationStage> in <ProductType> for upfront editable
#    And user open an application of "<ProductType>" at "<ApplicationStage>"
#    And user open loan details
#    And user open property details
#    And user fill property details
#    And user selects collateral sub type as builder property under construction
#    And user selects project name in which subvention is allowed
#    And user open subvention details tab should be visible
#    And user tick on subvention allowed
#    And user edit subvention end date
#    And user fill all the details of property details
#    When user click on save button
#    Then subvention details should be updated
#    Examples:
#      | ApplicationStage   | ProductType   |
#      | <ApplicationStage> | <ProductType> |
#
#      #Check past date for subvention end date which is maintain in builder details
#  #Subvention type-upfront
# #${ProductType:["HL","IHF","OMNI","MHL"]}
# #${ApplicationStage:["Lead Details", "Login Acceptance", "DDE", "Credit Approval", "Reconsideration" , "Post Approval" , "Disbursal Initiation"]}
#  #FeatureID-ACAUTOCAS-5912
#  Scenario Outline:Verify Subvention details tab at <ApplicationStage> in <ProductType> for upfront date
#    And user open an application of "<ProductType>" at "<ApplicationStage>"
#    And user open loan details
#    And user open property details
#    And user fill property details
#    And user selects collateral sub type as builder property under construction
#    And user selects project name in which subvention is allowed
#    And user open subvention details tab should be visible
#    And user tick on subvention allowed
#    When user enter past date in subvention end date
#    Then user should get validation
#    Examples:
#      | ApplicationStage   | ProductType   |
#      | <ApplicationStage> | <ProductType> |
#
#      #Check percentage which is maintain in builder details
#  #Subvention type-upfront
# #${ProductType:["HL","IHF","OMNI","MHL"]}
# #${ApplicationStage:["Lead Details", "Login Acceptance", "DDE", "Credit Approval", "Reconsideration" , "Post Approval" , "Disbursal Initiation"]}
#  #FeatureID-ACAUTOCAS-5912
#  Scenario Outline:Verify Subvention details tab at <ApplicationStage> in <ProductType> for upfront percentage
#    And user open an application of "<ProductType>" at "<ApplicationStage>"
#    And user open loan details
#    And user open property details
#    And user fill property details
#    And user selects collateral sub type as builder property under construction
#    And user selects project name in which subvention is allowed
#    And user open subvention details tab should be visible
#    And user tick on subvention allowed
#    When user check percentage field
#    Then percentage field should be in view mode
#    Examples:
#      | ApplicationStage   | ProductType   |
#      | <ApplicationStage> | <ProductType> |
#
#     #Check subvention details for view mode which is maintain in builder details
#  #Subvention type-upfront
# #${ProductType:["HL","IHF","OMNI","MHL"]}
# #${ApplicationStage:["Lead Details", "Login Acceptance", "DDE", "Credit Approval", "Reconsideration" , "Post Approval" , "Disbursal Initiation"]}
#  #FeatureID-ACAUTOCAS-5912
#  Scenario Outline:Verify Subvention detail tab at <ApplicationStage> in <ProductType> in view mode
#    And user open an application of "<ProductType>" at "<ApplicationStage>"
#    And user open loan details in view mode
#    And user open property details
#    And user open subvention allowed
#    When user try to edit subvention details
#    Then user should not able to edit subvention details user only view subvention details
#    Examples:
#      | ApplicationStage   | ProductType   |
#      | <ApplicationStage> | <ProductType> |
#
#
#      #User check property details when subvention is maintain in builder details
#  #Subvention type-Both
# #${ProductType:["HL","IHF","OMNI","MHL"]}
# #${ApplicationStage:["Lead Details", "Login Acceptance", "DDE", "Credit Approval", "Reconsideration" , "Post Approval" , "Disbursal Initiation"]}
#  #FeatureID-ACAUTOCAS-5912
#  Scenario Outline:Verify Subvention details tab at <ApplicationStage> in <ProductType> for both
#    And user open an application of "<ProductType>" at "<ApplicationStage>"
#    And user open loan details
#    And user open property details
#    And user fill property details
#    And user selects collateral sub type as builder property under construction
#    When user selects project name in which subvention is allowed
#    Then subvention details tab should be visible
#    Examples:
#      | ApplicationStage   | ProductType   |
#      | <ApplicationStage> | <ProductType> |
#
#
#     #User check property details when subvention is maintain in builder details but Modifiable At Application Level is not allowed
#  #Subvention type-Both
# #${ProductType:["HL","IHF","OMNI","MHL"]}
# #${ApplicationStage:["Lead Details", "Login Acceptance", "DDE", "Credit Approval", "Reconsideration" , "Post Approval" , "Disbursal Initiation"]}
#  #FeatureID-ACAUTOCAS-5912
#  Scenario Outline:Verify Subvention details tab at <ApplicationStage> in <ProductType> for subvention type both
#    And user open an application of "<ProductType>" at "<ApplicationStage>"
#    And user open loan details
#    And user open property details
#    And user fill property details
#    And user selects collateral sub type as builder property under construction
#    And user selects project name in which subvention is allowed
#    And user open subvention details tab should be visible
#    When user tick on subvention allowed
#    Then subvention details should be visible in view mode
#    Examples:
#      | ApplicationStage   | ProductType   |
#      | <ApplicationStage> | <ProductType> |
#
#    #User check property details when subvention is maintain in builder details and Modifiable At Application Level is allowed
#  #Subvention type-Both
# #${ProductType:["HL","IHF","OMNI","MHL"]}
# #${ApplicationStage:["Lead Details", "Login Acceptance", "DDE", "Credit Approval", "Reconsideration" , "Post Approval" , "Disbursal Initiation"]}
#  #FeatureID-ACAUTOCAS-5912
#  Scenario Outline:Verify Subvention details tab at <ApplicationStage> in <ProductType> for editable subvention type
#    And user open an application of "<ProductType>" at "<ApplicationStage>"
#    And user open loan details
#    And user open property details
#    And user fill property details
#    And user selects collateral sub type as builder property under construction
#    And user selects project name in which subvention is allowed
#    When user open subvention details tab should be visible
#    Then subvention details should be visible in editable mode
#    Examples:
#      | ApplicationStage   | ProductType   |
#      | <ApplicationStage> | <ProductType> |
#
#    #User check property details when subvention is maintain in builder details but subvention end date is past date
#  #Subvention type-Both
# #${ProductType:["HL","IHF","OMNI","MHL"]}
# #${ApplicationStage:["Lead Details", "Login Acceptance", "DDE", "Credit Approval", "Reconsideration" , "Post Approval" , "Disbursal Initiation"]}
#  #FeatureID-ACAUTOCAS-5912
#  Scenario Outline:Verify Subvention details tab at <ApplicationStage> in <ProductType> for subvention type both in property details
#    And user open an application of "<ProductType>" at "<ApplicationStage>"
#    And user open loan details
#    And user open property details
#    And user fill property details
#    And user selects collateral sub type as builder property under construction
#    When user selects project name in which subvention is allowed
#    Then subvention details tab should not be visible
#    Examples:
#      | ApplicationStage   | ProductType   |
#      | <ApplicationStage> | <ProductType> |
#
#    #Verify subvention details which is maintain in builder details
#  #Subvention type-Both
# #${ProductType:["HL","IHF","OMNI","MHL"]}
# #${ApplicationStage:["Lead Details", "Login Acceptance", "DDE", "Credit Approval", "Reconsideration" , "Post Approval" , "Disbursal Initiation"]}
#  #FeatureID-ACAUTOCAS-5912
#  Scenario Outline:Verify Subvention details tab at <ApplicationStage> in <ProductType> for subvention both
#    And user open an application of "<ProductType>" at "<ApplicationStage>"
#    And user open loan details
#    And user open property details
#    And user fill property details
#    And user selects collateral sub type as builder property under construction
#    And user selects project name in which subvention is allowed
#    And user open subvention details tab should be visible
#    When user checked subvention allowed checkbox
#    Then subvention details should be blank
#    Examples:
#      | ApplicationStage   | ProductType   |
#      | <ApplicationStage> | <ProductType> |
#
#        #verify for different subvention type subvention details which is maintain in builder details
#  #Subvention type-Both
# #${ProductType:["HL","IHF","OMNI","MHL"]}
# #${ApplicationStage:["Lead Details", "Login Acceptance", "DDE", "Credit Approval", "Reconsideration" , "Post Approval" , "Disbursal Initiation"]}
#  #FeatureID-ACAUTOCAS-5912
#  Scenario Outline:Verify Subvention details tab at <ApplicationStage> in <ProductType> in property details for subvention type collectible
#    And user open an application of "<ProductType>" at "<ApplicationStage>"
#    And user open loan details
#    And user open property details
#    And user fill property details
#    And user selects collateral sub type as builder property under construction
#    And user selects project name in which subvention is allowed
#    And user open subvention details tab should be visible
#    When user select subvention type collectible
#    Then subvention percentage subvention end date should be editable
#
#    Examples:
#      | ApplicationStage   | ProductType   |
#      | <ApplicationStage> | <ProductType> |
#
#     #Edit subvention details which is maintain in builder details
#  #Subvention type-Both
# #${ProductType:["HL","IHF","OMNI","MHL"]}
# #${ApplicationStage:["Lead Details", "Login Acceptance", "DDE", "Credit Approval", "Reconsideration" , "Post Approval" , "Disbursal Initiation"]}
#  #FeatureID-ACAUTOCAS-5912
#  Scenario Outline:Verify Subvention details tab at <ApplicationStage> in <ProductType> in property details edit subvention type collectible
#    And user open an application of "<ProductType>" at "<ApplicationStage>"
#    And user open loan details
#    And user open property details
#    And user fill property details
#    And user selects collateral sub type as builder property under construction
#    And user selects project name in which subvention is allowed
#    And user open subvention details tab should be visible
#    And user select subvention type collectible
#    And user edit subvention end date subvention percentage
#    And user fill all the details of property details
#    When user click on save button
#    Then subvention details should be updated
#    Examples:
#      | ApplicationStage   | ProductType   |
#      | <ApplicationStage> | <ProductType> |
#
#      #Check past date and subvention percentage for subvention end date which is maintain in builder details
#  #Subvention type-Both
# #${ProductType:["HL","IHF","OMNI","MHL"]}
# #${ApplicationStage:["Lead Details", "Login Acceptance", "DDE", "Credit Approval", "Reconsideration" , "Post Approval" , "Disbursal Initiation"]}
#  #FeatureID-ACAUTOCAS-5912
#  Scenario Outline:Verify Subvention detail tab at <ApplicationStage> in <ProductType> in property details for subvention type collectible
#    And user open an application of "<ProductType>" at "<ApplicationStage>"
#    And user open loan details
#    And user open property details
#    And user fill property details
#    And user selects collateral sub type as builder property under construction
#    And user selects project name in which subvention is allowed
#    And user open subvention details tab should be visible
#    And user select subvention type collectible
#    When user enter past date in subvention end date
#    Then user should get validation
#    Examples:
#      | ApplicationStage   | ProductType   |
#      | <ApplicationStage> | <ProductType> |
#
#      #verify for different subvention type subvention details which is maintain in builder details
#  #Subvention type-Both
# #${ProductType:["HL","IHF","OMNI","MHL"]}
# #${ApplicationStage:["Lead Details", "Login Acceptance", "DDE", "Credit Approval", "Reconsideration" , "Post Approval" , "Disbursal Initiation"]}
#  #FeatureID-ACAUTOCAS-5912
#  Scenario Outline:Verify Subvention details tab at <ApplicationStage> in <ProductType> in property details for subvention type upfront
#    And user open an application of "<ProductType>" at "<ApplicationStage>"
#    And user open loan details
#    And user open property details
#    And user fill property details
#    And user selects collateral sub type as builder property under construction
#    And user selects project name in which subvention is allowed
#    And user open subvention details tab should be visible
#    When user select subvention type upfront
#    Then subvention end date should be editable
#
#    Examples:
#      | ApplicationStage   | ProductType   |
#      | <ApplicationStage> | <ProductType> |
#
#     #Edit subvention details which is maintain in builder details
#  #Subvention type-Both
# #${ProductType:["HL","IHF","OMNI","MHL"]}
# #${ApplicationStage:["Lead Details", "Login Acceptance", "DDE", "Credit Approval", "Reconsideration" , "Post Approval" , "Disbursal Initiation"]}
#  #FeatureID-ACAUTOCAS-5912
#  Scenario Outline:Verify Subvention details tab at <ApplicationStage> in <ProductType> in property details edit subvention type upfront
#    And user open an application of "<ProductType>" at "<ApplicationStage>"
#    And user open loan details
#    And user open property details
#    And user fill property details
#    And user selects collateral sub type as builder property under construction
#    And user selects project name in which subvention is allowed
#    And user open subvention details tab should be visible
#    And user select subvention type upfront
#    And user edit subvention end date
#    And user fill all the details of property details
#    When user click on save button
#    Then subvention details should be updated
#    Examples:
#      | ApplicationStage   | ProductType   |
#      | <ApplicationStage> | <ProductType> |
#
#      #Check past date and subvention percentage for subvention end date which is maintain in builder details
#  #Subvention type-Both
# #${ProductType:["HL","IHF","OMNI","MHL"]}
# #${ApplicationStage:["Lead Details", "Login Acceptance", "DDE", "Credit Approval", "Reconsideration" , "Post Approval" , "Disbursal Initiation"]}
#  #FeatureID-ACAUTOCAS-5912
#  Scenario Outline:Verify Subvention details tab at <ApplicationStage> in <ProductType> in property details for subvention type upfront maintained in builder
#    And user open an application of "<ProductType>" at "<ApplicationStage>"
#    And user open loan details
#    And user open property details
#    And user fill property details
#    And user selects collateral sub type as builder property under construction
#    And user selects project name in which subvention is allowed
#    And user open subvention details tab should be visible
#    And user select subvention type upfront
#    When user enter past date in subvention end date
#    Then user should get validation
#    Examples:
#      | ApplicationStage   | ProductType   |
#      | <ApplicationStage> | <ProductType> |
#
#      #Check percentage which is maintain in builder details
#  #Subvention type-Both
# #${ProductType:["HL","IHF","OMNI","MHL"]}
# #${ApplicationStage:["Lead Details", "Login Acceptance", "DDE", "Credit Approval", "Reconsideration" , "Post Approval" , "Disbursal Initiation"]}
#  #FeatureID-ACAUTOCAS-5912
#  Scenario Outline:Verify Subvention details tab at <ApplicationStage> in <ProductType> in property details for subvention type upfront percentage
#    And user open an application of "<ProductType>" at "<ApplicationStage>"
#    And user open loan details
#    And user open property details
#    And user fill property details
#    And user selects collateral sub type as builder property under construction
#    And user selects project name in which subvention is allowed
#    And user open subvention details tab should be visible
#    And user select subvention type upfront
#    When user check percentage field
#    Then percentage field should be in view mode
#    Examples:
#      | ApplicationStage   | ProductType   |
#      | <ApplicationStage> | <ProductType> |
#
#     #Check subvention details for view mode which is maintain in builder details
#  #Subvention type-Both
# #${ProductType:["HL","IHF","OMNI","MHL"]}
# #${ApplicationStage:["Lead Details", "Login Acceptance", "DDE", "Credit Approval", "Reconsideration" , "Post Approval" , "Disbursal Initiation"]}
#  #FeatureID-ACAUTOCAS-5912
#  Scenario Outline:Verify Subvention details tab at <ApplicationStage> in <ProductType> in property details for view
#    And user open an application of "<ProductType>" at "<ApplicationStage>"
#    And user open loan details in view mode
#    And user open property details
#    And user open subvention allowed
#    When user try to edit subvention details
#    Then user should not able to edit subvention details user only view subvention details
#    Examples:
#      | ApplicationStage   | ProductType   |
#      | <ApplicationStage> | <ProductType> |
#
#
#    #User check property details when subvention is maintain in builder details
# #${ProductType:["HL","IHF","OMNI","MHL"]}
# #${ApplicationStage:["Credit Approval", "Reconsideration" , "Post Approval" , "Disbursal Initiation"]}
#  #${SubventionType:["Collectible", "Upfront", "Both"]
#  #FeatureID-ACAUTOCAS-5912
#  Scenario Outline:Verify Subvention details at <ApplicationStage> in <ProductType> in CAM Report
#    And user open an application of "<ProductType>" at "<ApplicationStage>"
#    And user open loan details
#    And user open property details
#    And user select builder details
#    And user check subvention type "<SubventionType>"
#    And user fill property details
#    And move the application till <ApplicationStage>
#    When user open CAM report
#    Then same subvention details should be visible which is present in property details
#    Examples:
#      | ApplicationStage   | ProductType   | SubventionType |
#      | <ApplicationStage> | <ProductType> | <Collectible>  |
#      | <ApplicationStage> | <ProductType> | <Upfront>      |
#      | <ApplicationStage> | <ProductType> | <Both>         |
#
#      #view edited subvention details in CAM report
#  #Subvention type-collectible
# #${ProductType:["HL","IHF","OMNI","MHL"]}
# #${ApplicationStage:["Credit Approval", "Reconsideration" , "Post Approval" , "Disbursal Initiation"]}
#  #FeatureID-ACAUTOCAS-5912
#  Scenario Outline:Verify Subvention details at <ApplicationStage> in <ProductType> in CAM for edited subvention details
#    And user open an application of "<ProductType>" at "<ApplicationStage>"
#    And user open loan details
#    And user open property details
#    And user fill property details
#    And user selects collateral sub type as builder property under construction
#    And user selects project name in which subvention is allowed
#    And user open subvention details tab should be visible
#    And user tick on subvention allowed
#    And user edit subvention percentage subvention end date
#    And user fill all the details of property details
#    And user click on save button
#    And subvention details are updated successfully of subvention type <SubventionType>
#    When user opne CAM report
#    Then updated subvention details should be visible
#    Examples:
#      | ApplicationStage   | ProductType   | SubventionType |
#      | <ApplicationStage> | <ProductType> | <Collectible>  |
#      | <ApplicationStage> | <ProductType> | <Upfront>      |
#      | <ApplicationStage> | <ProductType> | <Both>         |
#
##
#
