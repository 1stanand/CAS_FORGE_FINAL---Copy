@DevTrack
@GA-9.0
@Epic-SeparateCreditApprovalDecisioningInAnOmniLoan
@AuthoredBy-anand.singh1
@Order
@NotImplemented
@Reconsideration
@CAS-264860
Feature: Separate_Decision_OMNILoan_Committee_Reconsideration

 ####################################################################################################
 ###### PRE-REQUISITES
 ###### --------------------------------------------------------------------------------------------------
 ###### Omni Loan Application progressed to Credit Approval stage via:
 ######   CAS-264769 feature file (Separate_Decision_OMNILoan_CreditApproval)
 ######   LogicalIDs carry over from that file.
 ######
 ###### Sub Products in Application:
 ######   - Home Loan
 ######   - Personal Loan
 ######   - Auto Loan
 ######   - Credit Card (With 2 Add-On Cards)
 ###################################################################################################

 #########################################################################################################
 ###### BUSINESS CONTEXT
 ###### --------------------------------------------------------------------------------------------------
 ###### RECONSIDERATION:
 ######   - All sub-loan decisions as taken at Credit Approval are visible in view mode.
 ######   - View mode is enforced even if the editable checkbox is checked.
 #########################################################################################################


####################################################################################################
# SECTION 4: RECONSIDERATION – SUB LOAN DECISION VIEW MODE
####################################################################################################
  @OpenApplication
  Scenario Outline:AT RECONSIDERATION : For App with [ <LogicalID> ] Availability of New Column In Product Type Decision List for Omni Loan
    Given all prerequisite are performed in previous scenario of "Omni Loan" logical id "<LogicalID>"
    And user opens an application of "Reconsideration" stage present in context from application grid
    When user clicks on Product Type Decision List accordion to expand it
    Then user should be able to see the new column "<ColumnName>"
    Examples:
      | LogicalID                            | ColumnName |
      | Separate_Decisions_ALL_CHECKED       | Decision   |
      | Separate_Decisions_HL_PL_MAL_CHECKED | Decision   |
      | Separate_Decisions_HL_PL_CC_CHECKED  | Decision   |
      | Separate_Decisions_HL_PL_CHECKED     | Decision   |
      | Separate_Decisions_HL_MAL_CC_CHECKED | Decision   |
      | Separate_Decisions_HL_MAL_CHECKED    | Decision   |
      | Separate_Decisions_HL_CC_CHECKED     | Decision   |
      | Separate_Decisions_HL_CHECKED        | Decision   |
      | Separate_Decisions_PL_MAL_CC_CHECKED | Decision   |
      | Separate_Decisions_PL_MAL_CHECKED    | Decision   |
      | Separate_Decisions_PL_CC_CHECKED     | Decision   |
      | Separate_Decisions_PL_CHECKED        | Decision   |
      | Separate_Decisions_MAL_CC_CHECKED    | Decision   |
      | Separate_Decisions_MAL_CHECKED       | Decision   |
      | Separate_Decisions_CC_CHECKED        | Decision   |

  Scenario Outline:AT RECONSIDERATION : For App with [ <LogicalID> ] Sub Loan Level Decisions should be visible in View Mode for Omni Loan
    Given all prerequisite are performed in previous scenario of "Omni Loan" logical id "<LogicalID>"
    And user opens an application of "Reconsideration" stage present in context from application grid
    When user clicks on Product Type Decision List accordion to expand it
    Then user should be able to see a "CheckBox" type input field in "Decision" Column for
      | Home Loan     |
      | Personal Loan |
      | Auto Loan     |
    And checkbox should be "Enabled" for all Sub products
    Examples:
      | LogicalID                            |
      | Separate_Decisions_ALL_CHECKED       |
      | Separate_Decisions_HL_PL_MAL_CHECKED |
      | Separate_Decisions_HL_PL_CC_CHECKED  |
      | Separate_Decisions_HL_PL_CHECKED     |
      | Separate_Decisions_HL_MAL_CC_CHECKED |
      | Separate_Decisions_HL_MAL_CHECKED    |
      | Separate_Decisions_HL_CC_CHECKED     |
      | Separate_Decisions_HL_CHECKED        |
      | Separate_Decisions_PL_MAL_CC_CHECKED |
      | Separate_Decisions_PL_MAL_CHECKED    |
      | Separate_Decisions_PL_CC_CHECKED     |
      | Separate_Decisions_PL_CHECKED        |
      | Separate_Decisions_MAL_CC_CHECKED    |
      | Separate_Decisions_MAL_CHECKED       |
      | Separate_Decisions_CC_CHECKED        |
      | Separate_Decisions_NONE_CHECKED      |

  Scenario Outline:AT RECONSIDERATION : For App with [ <LogicalID> ] Decisions For <CardType> should be visible in View Mode for Omni Loan
    Given all prerequisite are performed in previous scenario of "Omni Loan" logical id "<LogicalID>"
    And user opens an application of "Credit Approval" stage present in context from application grid
    When user opens the Decision Drawer at Credit Approval Stage
    And user clicks on Product Type Decision List Tab
    Then user should be able to see a "CheckBox" type input field in "Decision" Column for Credit Card Sub Product
    And checkbox should be "Disabled" for "<CardType>" Card
    Examples:
      | LogicalID                      | CardType |
      | Separate_Decisions_ALL_CHECKED | Primary  |
      | Separate_Decisions_ALL_CHECKED | Add On   |


  Scenario Outline:AT RECONSIDERATION :  For App with [ <LogicalID> ]  Sub Loan Level Decision should reflect the decision taken at Credit Approval Stage
    Given all prerequisite are performed in previous scenario of "Omni Loan" logical id "<LogicalID>"
    And user opens an application of "Reconsideration" stage present in context from application grid
    When user clicks on Product Type Decision List accordion to expand it
    Then Decision checkboxes should be as follows
      | Home Loan     | <HL_ExpectedCheckBoxStatus>   |
      | Personal Loan | <PL_ExpectedCheckBoxStatus>   |
      | Auto Loan     | <Auto_ExpectedCheckBoxStatus> |
    Examples:
      | LogicalID                            | HL_ExpectedCheckBoxStatus | PL_ExpectedCheckBoxStatus | Auto_ExpectedCheckBoxStatus |
      | Separate_Decisions_ALL_CHECKED       | Checked                   | Checked                   | Checked                     |
      | Separate_Decisions_HL_PL_MAL_CHECKED | Checked                   | Checked                   | Checked                     |
      | Separate_Decisions_HL_PL_CC_CHECKED  | Checked                   | Checked                   | Un-Checked                  |
      | Separate_Decisions_HL_PL_CHECKED     | Checked                   | Checked                   | Un-Checked                  |
      | Separate_Decisions_HL_MAL_CC_CHECKED | Checked                   | Un-Checked                | Checked                     |
      | Separate_Decisions_HL_MAL_CHECKED    | Checked                   | Un-Checked                | Checked                     |
      | Separate_Decisions_HL_CC_CHECKED     | Checked                   | Un-Checked                | Un-Checked                  |
      | Separate_Decisions_HL_CHECKED        | Checked                   | Un-Checked                | Un-Checked                  |
      | Separate_Decisions_PL_MAL_CC_CHECKED | Un-Checked                | Checked                   | Checked                     |
      | Separate_Decisions_PL_MAL_CHECKED    | Un-Checked                | Checked                   | Checked                     |
      | Separate_Decisions_PL_CC_CHECKED     | Un-Checked                | Checked                   | Un-Checked                  |
      | Separate_Decisions_PL_CHECKED        | Un-Checked                | Checked                   | Un-Checked                  |
      | Separate_Decisions_MAL_CC_CHECKED    | Un-Checked                | Un-Checked                | Checked                     |
      | Separate_Decisions_MAL_CHECKED       | Un-Checked                | Un-Checked                | Checked                     |
      | Separate_Decisions_CC_CHECKED        | Un-Checked                | Un-Checked                | Un-Checked                  |

  Scenario Outline:AT RECONSIDERATION :  For App with [ <LogicalID> ] Card Type Decision should reflect the decision taken at Credit Approval Stage
    Given all prerequisite are performed in previous scenario of "Omni Loan" logical id "<LogicalID>" with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user opens an application of "Reconsideration" stage present in context from application grid
    When user clicks on Product Type Decision List accordion to expand it
    And Decision checkbox for cards should be as
      | Primary Card | <Status> |
      | Add On Card  | <Status> |
    Examples:
      | LogicalID                            | Status     |
      | Separate_Decisions_ALL_CHECKED       | Checked    |
      | Separate_Decisions_HL_PL_MAL_CHECKED | Un-Checked |
      | Separate_Decisions_HL_PL_CC_CHECKED  | Checked    |
      | Separate_Decisions_HL_PL_CHECKED     | Un-Checked |
      | Separate_Decisions_HL_MAL_CC_CHECKED | Checked    |
      | Separate_Decisions_HL_MAL_CHECKED    | Un-Checked |
      | Separate_Decisions_HL_CC_CHECKED     | Checked    |
      | Separate_Decisions_HL_CHECKED        | Un-Checked |
      | Separate_Decisions_PL_MAL_CC_CHECKED | Checked    |
      | Separate_Decisions_PL_MAL_CHECKED    | Un-Checked |
      | Separate_Decisions_PL_CC_CHECKED     | Checked    |
      | Separate_Decisions_PL_CHECKED        | Un-Checked |
      | Separate_Decisions_MAL_CC_CHECKED    | Checked    |
      | Separate_Decisions_MAL_CHECKED       | Un-Checked |
      | Separate_Decisions_CC_CHECKED        | Checked    |


####################################################################################################
# SECTION 5: RECONSIDERATION – VIEW MODE ENFORCED EVEN WHEN EDITABLE CHECKBOX IS CHECKED
####################################################################################################

  Scenario Outline:AT RECONSIDERATION :  For App with [ <LogicalID> ]  Sub Loan Level Decision should remain in View Mode even when Checkbox is Checked
    Given all prerequisite are performed in previous scenario of "Omni Loan" logical id "<LogicalID>" with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user opens an application of "Reconsideration" stage present in context from application grid
    When user clicks on Product Type Decision List accordion to expand it
    Then user should be able to see a "CheckBox" type input field in "Decision" Column for
      | Home Loan     |
      | Personal Loan |
      | Auto Loan     |
    And checkbox should be "Disabled" for all Sub products
    Examples:
    Examples:
      | LogicalID                            |
      | Separate_Decisions_ALL_CHECKED       |
      | Separate_Decisions_HL_PL_MAL_CHECKED |
      | Separate_Decisions_HL_PL_CC_CHECKED  |
      | Separate_Decisions_HL_PL_CHECKED     |
      | Separate_Decisions_HL_MAL_CC_CHECKED |
      | Separate_Decisions_HL_MAL_CHECKED    |
      | Separate_Decisions_HL_CC_CHECKED     |
      | Separate_Decisions_HL_CHECKED        |
      | Separate_Decisions_PL_MAL_CC_CHECKED |
      | Separate_Decisions_PL_MAL_CHECKED    |
      | Separate_Decisions_PL_CC_CHECKED     |
      | Separate_Decisions_PL_CHECKED        |
      | Separate_Decisions_MAL_CC_CHECKED    |
      | Separate_Decisions_MAL_CHECKED       |
      | Separate_Decisions_CC_CHECKED        |

  Scenario Outline:AT RECONSIDERATION :  For App with [ <LogicalID> ]  <CardType> Credit Card Level Decision should remain in View Mode even when Checkbox is Checked
    Given all prerequisite are performed in previous scenario of "Omni Loan" logical id "<LogicalID>"
    And user opens an application of "Reconsideration" stage present in context from application grid
    When user clicks on Product Type Decision List accordion to expand it
    Then user should be able to see a "CheckBox" type input field in "Decision" Column for Credit Card Sub Product
    And checkbox should be "Disabled" for "<CardType>" Card
    Examples:
      | LogicalID                            | CardType     |
      | Separate_Decisions_ALL_CHECKED       | Primary Card |
      | Separate_Decisions_HL_PL_MAL_CHECKED | Primary Card |
      | Separate_Decisions_HL_PL_CC_CHECKED  | Primary Card |
      | Separate_Decisions_HL_PL_CHECKED     | Primary Card |
      | Separate_Decisions_HL_MAL_CC_CHECKED | Primary Card |
      | Separate_Decisions_HL_MAL_CHECKED    | Primary Card |
      | Separate_Decisions_HL_CC_CHECKED     | Primary Card |
      | Separate_Decisions_HL_CHECKED        | Primary Card |
      | Separate_Decisions_PL_MAL_CC_CHECKED | Primary Card |
      | Separate_Decisions_PL_MAL_CHECKED    | Primary Card |
      | Separate_Decisions_PL_CC_CHECKED     | Primary Card |
      | Separate_Decisions_PL_CHECKED        | Primary Card |
      | Separate_Decisions_MAL_CC_CHECKED    | Primary Card |
      | Separate_Decisions_MAL_CHECKED       | Primary Card |
      | Separate_Decisions_CC_CHECKED        | Primary Card |
      | Separate_Decisions_ALL_CHECKED       | Add-On Card  |
      | Separate_Decisions_HL_PL_MAL_CHECKED | Add-On Card  |
      | Separate_Decisions_HL_PL_CC_CHECKED  | Add-On Card  |
      | Separate_Decisions_HL_PL_CHECKED     | Add-On Card  |
      | Separate_Decisions_HL_MAL_CC_CHECKED | Add-On Card  |
      | Separate_Decisions_HL_MAL_CHECKED    | Add-On Card  |
      | Separate_Decisions_HL_CC_CHECKED     | Add-On Card  |
      | Separate_Decisions_HL_CHECKED        | Add-On Card  |
      | Separate_Decisions_PL_MAL_CC_CHECKED | Add-On Card  |
      | Separate_Decisions_PL_MAL_CHECKED    | Add-On Card  |
      | Separate_Decisions_PL_CC_CHECKED     | Add-On Card  |
      | Separate_Decisions_PL_CHECKED        | Add-On Card  |
      | Separate_Decisions_MAL_CC_CHECKED    | Add-On Card  |
      | Separate_Decisions_MAL_CHECKED       | Add-On Card  |
      | Separate_Decisions_CC_CHECKED        | Add-On Card  |