@Epic-Balance_Transfer
@AuthoredBy-Anshu.bhaduri
@ReviewedBy-
@ImplementedBy-
@TechReviewedBy-
#@Release2
@NotImplemented
#@BT

Feature: BTCharges_Waiver
  
  Background:
    Given User is logged in CAS with "<SourceDataFile>" under "<SheetName>" and "<RowNumber>"
    And Chargecodes should be maintained in Charge Code Definition Master with all Transaction types mapped
    And Charges should be maintained in Charge Definition Master with computation details maintained


  #=================For Contractual Charges Waiver ===================

        #FeatureID-ACAUTOCAS-14,ACAUTOCAS-361
  Scenario: ACAUTOCAS-2468: Contractual Charges should be available on Waiver Initiation Screen
    And Eligible loan applications already visible on Waiver Initiation Screen
    And application already has internal integrated system BT records
    When user navigates to Waiver initiation Screen for application having internal integrated system BT records
    Then Contractual charges should be available on waiver initiation screen with values

#=================For BT Charges Waiver ===================
      #FeatureID-ACAUTOCAS-14,ACAUTOCAS-361
  Scenario: ACAUTOCAS-2589: BT Charges should be available on Waiver Initiation Screen
    And Eligible BT loan applications already visible on Waiver Initiation Screen
    And application already has internal integrated system BT records
    When user navigates to Waiver initiation Screen for application having internal integrated system BT records
    Then BT charges should be available on waiver initiation screen with BT breakup details
  
  Scenario Outline: ACAUTOCAS-2734: Check for charges of BT records in case of total waiver and break-up waiver on Waiver Initiation Screen
    And Eligible loan applications already visible on Waiver Initiation Screen
    And BT Charges already populated on Waiver Initiation Screen
    When user Check for charges of BT records in case of "<Waiver_Status>" waiver on Waiver Initiation Screen
    Then user should see waiver amount field as "<Enable_Disable>" on waiver initiation screen for "<Waiver_Status>" waiver
    
    Examples:
      
      | Waiver_Status | Enable_Disable |
      | break-up      | disabled       |
      | total         | enabled        |

    #FeatureID-ACAUTOCAS-14,ACAUTOCAS-361
  Scenario Outline: ACAUTOCAS-2590: Capturing total waiver amount on Waiver Initiation Screen
    And Eligible BT loan applications already visible on Waiver Initiation Screen
    And BT Charges already populated on Waiver Initiation Screen
    When user navigates to BT charge breakup details records on Waiver Initiation Screen
    And user verifies charge breakup details in non editable mode
    Then user should be able to capture total waiver amount in "<Waiver_Status>" field which is "<Enable_Disable>"
    
    Examples:
      | Waiver_Status       | Enable_Disable |
      | total waiver amount | enabled        |


    #FeatureID-ACAUTOCAS-14,ACAUTOCAS-361
  Scenario:ACAUTOCAS-2591:Fetching of BT charges details on Waiver Initiation Screen
    And Eligible BT loan applications already visible on Waiver Initiation Screen
    And user already captured total waiver amount on BT Charges Details screen
    When user navigate to new fetch details button
    Then total waiver amount should get distributed against charges in waiver amount field as fetched from the integrated servicing system basis waiver priority


        #FeatureID-ACAUTOCAS-14,ACAUTOCAS-361
  Scenario: ACAUTOCAS-5586: Proper Message in case BT charges details are not fetched from the integrated servicing system on Waiver Initiation Screen
    And Eligible BT loan applications already visible on Waiver Initiation Screen
    And user already captured total waiver amount on BT Charges Details screen
    And integrated servicing system is not available
    When user navigate to new fetch details button
    Then user should get proper message that operation could not be performed with no amount distributed


    #FeatureID-ACAUTOCAS-14,ACAUTOCAS-361
  Scenario Outline:ACAUTOCAS-2466: BT Charges Waiver initiation for "<Waiver_Rate_Amount>"
    And Eligible loan applications already visible on Waiver Initiation Screen with BT charges breakup details
    And user entered "<Waiver_Rate_Amount>" on waiver initiation screen
    And waiver amount already distributed after fetching details from integrated servicing system
    When user save and initiates the waiver
    Then waiver should get initiated successfully
    
    Examples:
      
      | Waiver_Rate_Amount  |
      | Total Waiver Amount |

    #FeatureID-ACAUTOCAS-14,ACAUTOCAS-361
  Scenario Outline: ACAUTOCAS-2465: Waiver Approval for BT Charges amount with single reason
    And Eligible loan applications already visible on Waiver Approval Screen
    When user enters decision details as "<Waiver_Decision>" for waiver amount
    And user enters the reason which is populated basis decision value selected
    And user enters reason description
    And user enters comments on screen
    And user "<Save>" the record with decision details as "<Waiver_Decision>"
    Then user should be able to "<Waiver_Decision>" waiver
    Examples:
      
      | Waiver_Decision | Save             |
      | Approve         | Save and Forward |
      | Approve         | Save and Submit  |
      | Approve         | Save             |
      | Reject          | Save and Forward |
      | Reject          | Save and Submit  |
      | Reject          | Save             |

        #FeatureID-ACAUTOCAS-14,ACAUTOCAS-361
  Scenario Outline:ACAUTOCAS-2464: Waiver Approval for BT Charges amount with multiple reasons entered
    And Eligible loan applications already visible on Waiver Approval Screen
    And user already selected one reason with description entered
    When user adds another reason by clicking on + icon
    And user enters another reason description
    And user "<Save>" the record with decision details as "<Waiver_Decision>"
    Then user should be able to "<Waiver_Decision>" waiver
    Examples:
      
      | Waiver_Decision | Save             |
      | Approve         | Save and Forward |
      | Approve         | Save and Submit  |
      | Approve         | Save             |
      | Reject          | Save and Forward |
      | Reject          | Save and Submit  |
      | Reject          | Save             |


            #FeatureID-ACAUTOCAS-14,ACAUTOCAS-361
  Scenario: ACAUTOCAS-2592: Waiver Approval for BT charges in case of multiple through to users selected on Waiver Approval Screen
    And Waiver already initiated for BT loan applications
    When user selects multiple through to users on Waiver approver screen
    And user approves the waiver on Waiver approver screen
    Then waiver should get approved successfully after final approver approves


