@DevTrack
@GA-9.0
@Epic-SeparateCreditApprovalDecisioningInAnOmniLoan
@AuthoredBy-anand.singh1
@Order
@NotImplemented
@CAS-264769
@CreditApproval

Feature: Separate_Decision_OMNILoan_CreditApproval

 ####################################################################################################
 ###### PRE-REQUISITES
 ###### ---------------------------------------------------------------------------------------------
 ###### Omni Loan Application created via API with following Sub Products:
 ######   - Home Loan
 ######   - Personal Loan
 ######   - Auto Loan
 ######   - Credit Card (With 2 Add-On Cards)
 ###################################################################################################

 #########################################################################################################
 ###### BUSINESS CONTEXT
 ###### --------------------------------------------------------------------------------------------------
 ###### Earlier Behaviour:
 ######   - Credit Approval decision was taken at Omni Loan level.
 ######   - Either all sub-products were Approved OR none were Approved.
 ######
 ###### New Behaviour:
 ######   - Each Sub Product now has an independent "Decision" checkbox in Product Type Decision List.
 ######   - Decision checkboxes are auto-populated from Recommendation stage decisions.
 ######   - Approved Limit field enablement depends on the checkbox state.
 ######   - Final Credit Approval decision is derived (OR logic across sub-products).
 ######
 ###### Aggregate Rule:
 ######   - If ANY sub-product (including Credit Card Primary) is Checked → Final Decision = Approved
 ######   - If ALL sub-products are Un-Checked → Total Sanction = 0 → Application blocked from MTNS
 ######
 ###### Special Handling:
 ######   - Credit Card contains Primary and Add-On Cards.
 ######   - Add-On Cards are dependent on Primary Card and remain disabled.
 ######   - Collateral/VAP linked to a rejected sub-loan gets de-linked automatically on MTNS.
 #########################################################################################################

####################################################################################################
# PRE_REQUISITE 1: APPLICATION STARTS
####################################################################################################
  @PickApplication
  Scenario Outline:AT RECOMMENDATION : For App with [ <LogicalID> ] Get Application At Credit Approval with Mixed Recommendation Decisions for Omni Loan
    Given all prerequisite are performed in previous scenario of "Omni Loan" logical id "<LogicalID>"
    And user picks an application of "Omni Loan" product type as "individual" applicant at stage "Recommendation" for category "" with key ""
    And user opens an application of "Recommendation" stage present in context from application grid
    When user clicks on Product Type Decision List accordion to expand it
    And user sets recommended checkbox for following sub products
      | SubProductType | CheckBoxStatus   |
      | Home Loan      | <HomeStatus>     |
      | Personal Loan  | <PersonalStatus> |
      | Auto Loan      | <AutoStatus>     |
    And user makes checkbox as "<PrimaryCardStatus>" for Primary Card
    And user clicks on move to next stage
    Then Application should be move to "Credit Approval" stage
    Examples:
      | LogicalID                            | HomeStatus | PersonalStatus | AutoStatus | PrimaryCardStatus |
      | Separate_Decisions_ALL_CHECKED       | Checked    | Checked        | Checked    | Checked           |
      | Separate_Decisions_HL_PL_MAL_CHECKED | Checked    | Checked        | Checked    | Un-Checked        |
      | Separate_Decisions_HL_PL_CC_CHECKED  | Checked    | Checked        | Un-Checked | Checked           |
      | Separate_Decisions_HL_PL_CHECKED     | Checked    | Checked        | Un-Checked | Un-Checked        |
      | Separate_Decisions_HL_MAL_CC_CHECKED | Checked    | Un-Checked     | Checked    | Checked           |
      | Separate_Decisions_HL_MAL_CHECKED    | Checked    | Un-Checked     | Checked    | Un-Checked        |
      | Separate_Decisions_HL_CC_CHECKED     | Checked    | Un-Checked     | Un-Checked | Checked           |
      | Separate_Decisions_HL_CHECKED        | Checked    | Un-Checked     | Un-Checked | Un-Checked        |
      | Separate_Decisions_PL_MAL_CC_CHECKED | Un-Checked | Checked        | Checked    | Checked           |
      | Separate_Decisions_PL_MAL_CHECKED    | Un-Checked | Checked        | Checked    | Un-Checked        |
      | Separate_Decisions_PL_CC_CHECKED     | Un-Checked | Checked        | Un-Checked | Checked           |
      | Separate_Decisions_PL_CHECKED        | Un-Checked | Checked        | Un-Checked | Un-Checked        |
      | Separate_Decisions_MAL_CC_CHECKED    | Un-Checked | Un-Checked     | Checked    | Checked           |
      | Separate_Decisions_MAL_CHECKED       | Un-Checked | Un-Checked     | Checked    | Un-Checked        |
      | Separate_Decisions_CC_CHECKED        | Un-Checked | Un-Checked     | Un-Checked | Checked           |
      | Separate_Decisions_NONE_CHECKED      | Un-Checked | Un-Checked     | Un-Checked | Un-Checked        |

####################################################################################################
# SECTION 1: UI STRUCTURE VALIDATION
####################################################################################################
  @PickApplication
  Scenario Outline:AT CREDIT APPROVAL : For App with [ <LogicalID> ] Availability of New Column In Product Type Decision List in Underwriter Decision Drawer for Omni Loan
    Given all prerequisite are performed in previous scenario of "Omni Loan" logical id "<LogicalID>"
    And user opens an application of "Credit Approval" stage present in context from application grid
    When user opens the Decision Drawer at Credit Approval Stage
    And user clicks on Product Type Decision List Tab
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
      | Separate_Decisions_NONE_CHECKED      | Decision   |

####################################################################################################
# SECTION 2: CHECKBOX AVAILABILITY & DEFAULT STATE
####################################################################################################
  @PickApplication
  Scenario Outline:AT CREDIT APPROVAL : For App with [ <LogicalID> ] Availability of "Enabled" Checkbox in Decision Column of Product Type Decision List for Sub Product Types of Omni Loan
    Given all prerequisite are performed in previous scenario of "Omni Loan" logical id "<LogicalID>"
    And user opens an application of "Credit Approval" stage present in context from application grid
    When user opens the Decision Drawer at Credit Approval Stage
    And user clicks on Product Type Decision List Tab
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

  @PickApplication
  Scenario Outline:AT CREDIT APPROVAL : For App with [ <LogicalID> ] Availability of <isEnabled> Checkbox in Decision Column of Product Type Decision List for <CardType> Card of Omni Loan
    Given all prerequisite are performed in previous scenario of "Omni Loan" logical id "<LogicalID>"
    And user opens an application of "Credit Approval" stage present in context from application grid
    When user opens the Decision Drawer at Credit Approval Stage
    And user clicks on Product Type Decision List Tab
    Then user should be able to see a "CheckBox" type input field in "Decision" Column for Credit Card Sub Product
    And checkbox should be "<isEnabled>" for "<CardType>" Card
    Examples:
      | LogicalID                      | CardType | isEnabled |
      | Separate_Decisions_ALL_CHECKED | Primary  | Enabled   |
      | Separate_Decisions_ALL_CHECKED | Add On   | Disabled  |

####################################################################################################
# SECTION 3: AUTO-POPULATION FROM RECOMMENDATION STAGE
####################################################################################################
  @PickApplication
  Scenario Outline:AT CREDIT APPROVAL : For App with [ <LogicalID> ] Decision Checkbox for Sub Product Types should be Auto Populated from Recommendation Stage Decision
    Given all prerequisite are performed in previous scenario of "Omni Loan" logical id "<LogicalID>"
    And user opens an application of "Credit Approval" stage present in context from application grid
    When user opens the Decision Drawer at Credit Approval Stage
    And user clicks on Product Type Decision List Tab
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
      | Separate_Decisions_NONE_CHECKED      | Un-Checked                | Un-Checked                | Un-Checked                  |

  @PickApplication
  Scenario Outline:AT CREDIT APPROVAL : For App with [ <LogicalID> ] Decision Checkbox for Credit Card should be Auto Populated from Recommendation Stage Decision
    Given all prerequisite are performed in previous scenario of "Omni Loan" logical id "<LogicalID>"
    And user opens an application of "Credit Approval" stage present in context from application grid
    When user opens the Decision Drawer at Credit Approval Stage
    And user clicks on Product Type Decision List Tab
    Then Decision checkbox for cards should be as
      | Primary Card | <PrimaryCardStatus> |
      | Add On Card  | <AddOnCardStatus>   |
    Examples:
      | LogicalID                            | PrimaryCardStatus | AddOnCardStatus |
      | Separate_Decisions_ALL_CHECKED       | Checked           | Checked         |
      | Separate_Decisions_HL_PL_MAL_CHECKED | Un-Checked        | Un-Checked      |
      | Separate_Decisions_HL_PL_CC_CHECKED  | Checked           | Checked         |
      | Separate_Decisions_HL_PL_CHECKED     | Un-Checked        | Un-Checked      |
      | Separate_Decisions_HL_MAL_CC_CHECKED | Checked           | Checked         |
      | Separate_Decisions_HL_MAL_CHECKED    | Un-Checked        | Un-Checked      |
      | Separate_Decisions_HL_CC_CHECKED     | Checked           | Checked         |
      | Separate_Decisions_HL_CHECKED        | Un-Checked        | Un-Checked      |
      | Separate_Decisions_PL_MAL_CC_CHECKED | Checked           | Checked         |
      | Separate_Decisions_PL_MAL_CHECKED    | Un-Checked        | Un-Checked      |
      | Separate_Decisions_PL_CC_CHECKED     | Checked           | Checked         |
      | Separate_Decisions_PL_CHECKED        | Un-Checked        | Un-Checked      |
      | Separate_Decisions_MAL_CC_CHECKED    | Checked           | Checked         |
      | Separate_Decisions_MAL_CHECKED       | Un-Checked        | Un-Checked      |
      | Separate_Decisions_CC_CHECKED        | Checked           | Checked         |
      | Separate_Decisions_NONE_CHECKED      | Un-Checked        | Un-Checked      |


####### CheckBox EDITABLE CEHCK #######
#  @PickApplication
#   Scenario Outline:AT CREDIT APPROVAL : For App with [ <LogicalID> ] Decision Checkbox for Sub Product Types should remain Editable even after Auto Population from Recommendation Stage
#    Given all prerequisite are performed in previous scenario of "Omni Loan" logical id "<LogicalID>"
#    And user opens an application of "Credit Approval" stage present in context from application grid
#    When user opens the Decision Drawer at Credit Approval Stage
#    And user clicks on Product Type Decision List Tab
#    Then Decision checkboxes should be enabled for
#      | Home Loan     |
#      | Personal Loan |
#      | Auto Loan     |
#    Examples:
#      | LogicalID                            |
#      | Separate_Decisions_ALL_CHECKED       |
#      | Separate_Decisions_HL_PL_MAL_CHECKED |
#      | Separate_Decisions_HL_PL_CC_CHECKED  |
#      | Separate_Decisions_HL_PL_CHECKED     |
#      | Separate_Decisions_HL_MAL_CC_CHECKED |
#      | Separate_Decisions_HL_MAL_CHECKED    |
#      | Separate_Decisions_HL_CC_CHECKED     |
#      | Separate_Decisions_HL_CHECKED        |
#      | Separate_Decisions_PL_MAL_CC_CHECKED |
#      | Separate_Decisions_PL_MAL_CHECKED    |
#      | Separate_Decisions_PL_CC_CHECKED     |
#      | Separate_Decisions_PL_CHECKED        |
#      | Separate_Decisions_MAL_CC_CHECKED    |
#      | Separate_Decisions_MAL_CHECKED       |
#      | Separate_Decisions_CC_CHECKED        |
#      | Separate_Decisions_NONE_CHECKED      |
#
#  @PickApplication
#   Scenario Outline:AT CREDIT APPROVAL : For App with [ <LogicalID> ] Decision Checkbox for Credit Card should remain Editable even after Auto Population from Recommendation Stage
#    Given all prerequisite are performed in previous scenario of "Omni Loan" logical id "<LogicalID>"
#    And user opens an application of "Credit Approval" stage present in context from application grid
#    When user opens the Decision Drawer at Credit Approval Stage
#    And user clicks on Product Type Decision List Tab
#    Then Decision checkbox for primary Card should be enabled
#    And Add on Card checkbox should be disabled
#    Examples:
#      | LogicalID                            |
#      | Separate_Decisions_ALL_CHECKED       |
#      | Separate_Decisions_HL_PL_MAL_CHECKED |
#      | Separate_Decisions_HL_PL_CC_CHECKED  |
#      | Separate_Decisions_HL_PL_CHECKED     |
#      | Separate_Decisions_HL_MAL_CC_CHECKED |
#      | Separate_Decisions_HL_MAL_CHECKED    |
#      | Separate_Decisions_HL_CC_CHECKED     |
#      | Separate_Decisions_HL_CHECKED        |
#      | Separate_Decisions_PL_MAL_CC_CHECKED |
#      | Separate_Decisions_PL_MAL_CHECKED    |
#      | Separate_Decisions_PL_CC_CHECKED     |
#      | Separate_Decisions_PL_CHECKED        |
#      | Separate_Decisions_MAL_CC_CHECKED    |
#      | Separate_Decisions_MAL_CHECKED       |
#      | Separate_Decisions_CC_CHECKED        |
#      | Separate_Decisions_NONE_CHECKED      |

####################################################################################################
# SECTION 4: DEPENDENCY VALIDATION – CREDIT CARD ADD-ON BEHAVIOUR
####################################################################################################

  Scenario Outline:AT CREDIT APPROVAL : For App with [ <LogicalID> ] CheckBox for Add On Cards should be <CheckBoxStatus> once Primary Card checkbox is <CheckBoxStatus>
    Given all prerequisite are performed in previous scenario of "Omni Loan" logical id "<LogicalID>"
    And user opens an application of "Credit Approval" stage present in context from application grid
    When user opens the Decision Drawer at Credit Approval Stage
    And user clicks on Product Type Decision List Tab
    And user makes checkbox as "<CheckBoxStatus>" for Primary Card
    Then CheckBox for "Add On" Card Type should be "<CheckBoxStatus>"
    Examples:
      | LogicalID                            | CheckBoxStatus |
      | Separate_Decisions_ALL_CHECKED       | Checked        |
      | Separate_Decisions_HL_PL_MAL_CHECKED | Checked        |
      | Separate_Decisions_HL_PL_CC_CHECKED  | Checked        |
      | Separate_Decisions_HL_PL_CHECKED     | Checked        |
      | Separate_Decisions_HL_MAL_CC_CHECKED | Checked        |
      | Separate_Decisions_HL_MAL_CHECKED    | Checked        |
      | Separate_Decisions_HL_CC_CHECKED     | Checked        |
      | Separate_Decisions_HL_CHECKED        | Checked        |
      | Separate_Decisions_PL_MAL_CC_CHECKED | Checked        |
      | Separate_Decisions_PL_MAL_CHECKED    | Checked        |
      | Separate_Decisions_PL_CC_CHECKED     | Checked        |
      | Separate_Decisions_PL_CHECKED        | Checked        |
      | Separate_Decisions_MAL_CC_CHECKED    | Checked        |
      | Separate_Decisions_MAL_CHECKED       | Checked        |
      | Separate_Decisions_CC_CHECKED        | Checked        |
      | Separate_Decisions_NONE_CHECKED      | Checked        |

      | Separate_Decisions_ALL_CHECKED       | Un-Checked     |
      | Separate_Decisions_HL_PL_MAL_CHECKED | Un-Checked     |
      | Separate_Decisions_HL_PL_CC_CHECKED  | Un-Checked     |
      | Separate_Decisions_HL_PL_CHECKED     | Un-Checked     |
      | Separate_Decisions_HL_MAL_CC_CHECKED | Un-Checked     |
      | Separate_Decisions_HL_MAL_CHECKED    | Un-Checked     |
      | Separate_Decisions_HL_CC_CHECKED     | Un-Checked     |
      | Separate_Decisions_HL_CHECKED        | Un-Checked     |
      | Separate_Decisions_PL_MAL_CC_CHECKED | Un-Checked     |
      | Separate_Decisions_PL_MAL_CHECKED    | Un-Checked     |
      | Separate_Decisions_PL_CC_CHECKED     | Un-Checked     |
      | Separate_Decisions_PL_CHECKED        | Un-Checked     |
      | Separate_Decisions_MAL_CC_CHECKED    | Un-Checked     |
      | Separate_Decisions_MAL_CHECKED       | Un-Checked     |
      | Separate_Decisions_CC_CHECKED        | Un-Checked     |
      | Separate_Decisions_NONE_CHECKED      | Un-Checked     |


####################################################################################################
# SECTION 5: APPROVED LIMIT FIELD ENABLEMENT BEHAVIOUR
####################################################################################################

  Scenario Outline:AT CREDIT APPROVAL : For App with [ <LogicalID> ] Validate Approved Amount field behaviour for Sub Product Types
    Given all prerequisite are performed in previous scenario of "Omni Loan" logical id "<LogicalID>"
    And user opens an application of "Credit Approval" stage present in context from application grid
    When user opens the Decision Drawer at Credit Approval Stage
    And user clicks on Product Type Decision List Tab
    Then Approved Amount fields should have following state
      | Home Loan     | <HL_State> |
      | Personal Loan | <PL_State> |
      | Auto Loan     | <AL_State> |
    Examples:
      | LogicalID                            | HL_State | PL_State | AL_State |
      | Separate_Decisions_ALL_CHECKED       | Enabled  | Enabled  | Enabled  |
      | Separate_Decisions_HL_PL_MAL_CHECKED | Enabled  | Enabled  | Enabled  |
      | Separate_Decisions_HL_PL_CC_CHECKED  | Enabled  | Enabled  | Disabled |
      | Separate_Decisions_HL_PL_CHECKED     | Enabled  | Enabled  | Disabled |
      | Separate_Decisions_HL_MAL_CC_CHECKED | Enabled  | Disabled | Enabled  |
      | Separate_Decisions_HL_MAL_CHECKED    | Enabled  | Disabled | Enabled  |
      | Separate_Decisions_HL_CC_CHECKED     | Enabled  | Disabled | Disabled |
      | Separate_Decisions_HL_CHECKED        | Enabled  | Disabled | Disabled |
      | Separate_Decisions_PL_MAL_CC_CHECKED | Disabled | Enabled  | Enabled  |
      | Separate_Decisions_PL_MAL_CHECKED    | Disabled | Enabled  | Enabled  |
      | Separate_Decisions_PL_CC_CHECKED     | Disabled | Enabled  | Disabled |
      | Separate_Decisions_PL_CHECKED        | Disabled | Enabled  | Disabled |
      | Separate_Decisions_MAL_CC_CHECKED    | Disabled | Disabled | Enabled  |
      | Separate_Decisions_MAL_CHECKED       | Disabled | Disabled | Enabled  |
      | Separate_Decisions_CC_CHECKED        | Disabled | Disabled | Disabled |
      | Separate_Decisions_NONE_CHECKED      | Disabled | Disabled | Disabled |

  Scenario Outline:AT CREDIT APPROVAL : For App with [ <LogicalID> ] Validate Default State for Cards
    Given all prerequisite are performed in previous scenario of "Omni Loan" logical id "<LogicalID>"
    And user opens an application of "Credit Approval" stage present in context from application grid
    When user opens the Decision Drawer at Credit Approval Stage
    And user clicks on Product Type Decision List Tab
    Then Approved Limit fields should have following state for cards
      | Primary | <Primary_State> |
      | Add On  | <Addon_State>   |
    Examples:
      | LogicalID                            | Primary_State | Addon_State |
      | Separate_Decisions_ALL_CHECKED       | Enabled       | Enabled     |
      | Separate_Decisions_HL_PL_MAL_CHECKED | Disabled      | Disabled    |
      | Separate_Decisions_HL_PL_CC_CHECKED  | Enabled       | Enabled     |
      | Separate_Decisions_HL_PL_CHECKED     | Disabled      | Disabled    |
      | Separate_Decisions_HL_MAL_CC_CHECKED | Enabled       | Enabled     |
      | Separate_Decisions_HL_MAL_CHECKED    | Disabled      | Disabled    |
      | Separate_Decisions_HL_CC_CHECKED     | Enabled       | Enabled     |
      | Separate_Decisions_HL_CHECKED        | Disabled      | Disabled    |
      | Separate_Decisions_PL_MAL_CC_CHECKED | Enabled       | Enabled     |
      | Separate_Decisions_PL_MAL_CHECKED    | Disabled      | Disabled    |
      | Separate_Decisions_PL_CC_CHECKED     | Enabled       | Enabled     |
      | Separate_Decisions_PL_CHECKED        | Disabled      | Disabled    |
      | Separate_Decisions_MAL_CC_CHECKED    | Enabled       | Enabled     |
      | Separate_Decisions_MAL_CHECKED       | Disabled      | Disabled    |
      | Separate_Decisions_CC_CHECKED        | Enabled       | Enabled     |
      | Separate_Decisions_NONE_CHECKED      | Disabled      | Disabled    |




######=============================== Approved Amount Field Behavior Based On Actions =================================

  ##State Mutation Testing


  ### Duplicates
  Scenario Outline:AT CREDIT APPROVAL : For App with [ <LogicalID> ] Approved Amount field state should be <isEnabled> once Decision checkbox is <CheckBoxStatus> for Sub Products of Omni Loan
    Given all prerequisite are performed in previous scenario of "Omni Loan" logical id "<LogicalID>"

    And user opens an application of "Credit Approval" stage present in context from application grid
    When user opens the Decision Drawer at Credit Approval Stage
    And user clicks on Product Type Decision List Tab
    And user sets decision checkbox for following sub products
      | Home Loan     | <CheckBoxStatus> |
      | Personal Loan | <CheckBoxStatus> |
      | Auto Loan     | <CheckBoxStatus> |
    Then Approved Amount field should be "<isEnabled>" for following sub products
      | Home Loan     |
      | Personal Loan |
      | Auto Loan     |
    Examples:
      | LogicalID                            | CheckBoxStatus | isEnabled |
      | Separate_Decisions_ALL_CHECKED       | Checked        | Enabled   |
      | Separate_Decisions_ALL_CHECKED       | Un-Checked     | Disabled  |
      | Separate_Decisions_HL_PL_MAL_CHECKED | Checked        | Enabled   |
      | Separate_Decisions_HL_PL_MAL_CHECKED | Un-Checked     | Disabled  |
      | Separate_Decisions_HL_PL_CC_CHECKED  | Checked        | Enabled   |
      | Separate_Decisions_HL_PL_CC_CHECKED  | Un-Checked     | Disabled  |
      | Separate_Decisions_HL_PL_CHECKED     | Checked        | Enabled   |
      | Separate_Decisions_HL_PL_CHECKED     | Un-Checked     | Disabled  |
      | Separate_Decisions_HL_MAL_CC_CHECKED | Checked        | Enabled   |
      | Separate_Decisions_HL_MAL_CC_CHECKED | Un-Checked     | Disabled  |
      | Separate_Decisions_HL_MAL_CHECKED    | Checked        | Enabled   |
      | Separate_Decisions_HL_MAL_CHECKED    | Un-Checked     | Disabled  |
      | Separate_Decisions_HL_CC_CHECKED     | Checked        | Enabled   |
      | Separate_Decisions_HL_CC_CHECKED     | Un-Checked     | Disabled  |
      | Separate_Decisions_HL_CHECKED        | Checked        | Enabled   |
      | Separate_Decisions_HL_CHECKED        | Un-Checked     | Disabled  |
      | Separate_Decisions_PL_MAL_CC_CHECKED | Checked        | Enabled   |
      | Separate_Decisions_PL_MAL_CC_CHECKED | Un-Checked     | Disabled  |
      | Separate_Decisions_PL_MAL_CHECKED    | Checked        | Enabled   |
      | Separate_Decisions_PL_MAL_CHECKED    | Un-Checked     | Disabled  |
      | Separate_Decisions_PL_CC_CHECKED     | Checked        | Enabled   |
      | Separate_Decisions_PL_CC_CHECKED     | Un-Checked     | Disabled  |
      | Separate_Decisions_PL_CHECKED        | Checked        | Enabled   |
      | Separate_Decisions_PL_CHECKED        | Un-Checked     | Disabled  |
      | Separate_Decisions_MAL_CC_CHECKED    | Checked        | Enabled   |
      | Separate_Decisions_MAL_CC_CHECKED    | Un-Checked     | Disabled  |
      | Separate_Decisions_MAL_CHECKED       | Checked        | Enabled   |
      | Separate_Decisions_MAL_CHECKED       | Un-Checked     | Disabled  |
      | Separate_Decisions_CC_CHECKED        | Checked        | Enabled   |
      | Separate_Decisions_CC_CHECKED        | Un-Checked     | Disabled  |
      | Separate_Decisions_NONE_CHECKED      | Checked        | Enabled   |
      | Separate_Decisions_NONE_CHECKED      | Un-Checked     | Disabled  |

 ### Duplicates
  Scenario Outline:AT CREDIT APPROVAL : For App with [ <LogicalID> ] Approved Limit field for Primary Card should be "<isEnabled>" when Decision checkbox is set to "<CheckBoxStatus>"
    Given all prerequisite are performed in previous scenario of "Omni Loan" logical id "<LogicalID>"
    And user opens an application of "Credit Approval" stage present in context from application grid
    When user opens the Decision Drawer at Credit Approval Stage
    And user clicks on Product Type Decision List Tab
    And user makes checkbox as "<CheckBoxStatus>" for Primary Card
    Then Approved Limit field for "Primary" Card should be "<isEnabled>"
    Examples:
      | LogicalID                            | CheckBoxStatus | isEnabled |
      | Separate_Decisions_ALL_CHECKED       | Checked        | Enabled   |
      | Separate_Decisions_ALL_CHECKED       | Un-Checked     | Disabled  |
      | Separate_Decisions_HL_PL_MAL_CHECKED | Checked        | Enabled   |
      | Separate_Decisions_HL_PL_MAL_CHECKED | Un-Checked     | Disabled  |
      | Separate_Decisions_HL_PL_CC_CHECKED  | Checked        | Enabled   |
      | Separate_Decisions_HL_PL_CC_CHECKED  | Un-Checked     | Disabled  |
      | Separate_Decisions_HL_PL_CHECKED     | Checked        | Enabled   |
      | Separate_Decisions_HL_PL_CHECKED     | Un-Checked     | Disabled  |
      | Separate_Decisions_HL_MAL_CC_CHECKED | Checked        | Enabled   |
      | Separate_Decisions_HL_MAL_CC_CHECKED | Un-Checked     | Disabled  |
      | Separate_Decisions_HL_MAL_CHECKED    | Checked        | Enabled   |
      | Separate_Decisions_HL_MAL_CHECKED    | Un-Checked     | Disabled  |
      | Separate_Decisions_HL_CC_CHECKED     | Checked        | Enabled   |
      | Separate_Decisions_HL_CC_CHECKED     | Un-Checked     | Disabled  |
      | Separate_Decisions_HL_CHECKED        | Checked        | Enabled   |
      | Separate_Decisions_HL_CHECKED        | Un-Checked     | Disabled  |
      | Separate_Decisions_PL_MAL_CC_CHECKED | Checked        | Enabled   |
      | Separate_Decisions_PL_MAL_CC_CHECKED | Un-Checked     | Disabled  |
      | Separate_Decisions_PL_MAL_CHECKED    | Checked        | Enabled   |
      | Separate_Decisions_PL_MAL_CHECKED    | Un-Checked     | Disabled  |
      | Separate_Decisions_PL_CC_CHECKED     | Checked        | Enabled   |
      | Separate_Decisions_PL_CC_CHECKED     | Un-Checked     | Disabled  |
      | Separate_Decisions_PL_CHECKED        | Checked        | Enabled   |
      | Separate_Decisions_PL_CHECKED        | Un-Checked     | Disabled  |
      | Separate_Decisions_MAL_CC_CHECKED    | Checked        | Enabled   |
      | Separate_Decisions_MAL_CC_CHECKED    | Un-Checked     | Disabled  |
      | Separate_Decisions_MAL_CHECKED       | Checked        | Enabled   |
      | Separate_Decisions_MAL_CHECKED       | Un-Checked     | Disabled  |
      | Separate_Decisions_CC_CHECKED        | Checked        | Enabled   |
      | Separate_Decisions_CC_CHECKED        | Un-Checked     | Disabled  |
      | Separate_Decisions_NONE_CHECKED      | Checked        | Enabled   |
      | Separate_Decisions_NONE_CHECKED      | Un-Checked     | Disabled  |

 ### Incorrect
  Scenario Outline:AT CREDIT APPROVAL : For App with [ <LogicalID> ] Approved Limit Field for Add On Card should remain Disabled regardless of Primary Card checkbox state
    Given all prerequisite are performed in previous scenario of "Omni Loan" logical id "<LogicalID>"

    And user opens an application of "Credit Approval" stage present in context from application grid
    When user opens the Decision Drawer at Credit Approval Stage
    And user clicks on Product Type Decision List Tab
    And user makes checkbox as "<CheckBoxStatus>" for Primary Card
    Then Approved Limit field for "Add On Card" should be "Disabled"
    Examples:
      | LogicalID                            | CheckBoxStatus |
      | Separate_Decisions_ALL_CHECKED       | Checked        |
      | Separate_Decisions_ALL_CHECKED       | Un-Checked     |
      | Separate_Decisions_HL_PL_MAL_CHECKED | Checked        |
      | Separate_Decisions_HL_PL_MAL_CHECKED | Un-Checked     |
      | Separate_Decisions_HL_PL_CC_CHECKED  | Checked        |
      | Separate_Decisions_HL_PL_CC_CHECKED  | Un-Checked     |
      | Separate_Decisions_HL_PL_CHECKED     | Checked        |
      | Separate_Decisions_HL_PL_CHECKED     | Un-Checked     |
      | Separate_Decisions_HL_MAL_CC_CHECKED | Checked        |
      | Separate_Decisions_HL_MAL_CC_CHECKED | Un-Checked     |
      | Separate_Decisions_HL_MAL_CHECKED    | Checked        |
      | Separate_Decisions_HL_MAL_CHECKED    | Un-Checked     |
      | Separate_Decisions_HL_CC_CHECKED     | Checked        |
      | Separate_Decisions_HL_CC_CHECKED     | Un-Checked     |
      | Separate_Decisions_HL_CHECKED        | Checked        |
      | Separate_Decisions_HL_CHECKED        | Un-Checked     |
      | Separate_Decisions_PL_MAL_CC_CHECKED | Checked        |
      | Separate_Decisions_PL_MAL_CC_CHECKED | Un-Checked     |
      | Separate_Decisions_PL_MAL_CHECKED    | Checked        |
      | Separate_Decisions_PL_MAL_CHECKED    | Un-Checked     |
      | Separate_Decisions_PL_CC_CHECKED     | Checked        |
      | Separate_Decisions_PL_CC_CHECKED     | Un-Checked     |
      | Separate_Decisions_PL_CHECKED        | Checked        |
      | Separate_Decisions_PL_CHECKED        | Un-Checked     |
      | Separate_Decisions_MAL_CC_CHECKED    | Checked        |
      | Separate_Decisions_MAL_CC_CHECKED    | Un-Checked     |
      | Separate_Decisions_MAL_CHECKED       | Checked        |
      | Separate_Decisions_MAL_CHECKED       | Un-Checked     |
      | Separate_Decisions_CC_CHECKED        | Checked        |
      | Separate_Decisions_CC_CHECKED        | Un-Checked     |
      | Separate_Decisions_NONE_CHECKED      | Checked        |
      | Separate_Decisions_NONE_CHECKED      | Un-Checked     |

####################################################################################################
# SECTION 6: CREDIT APPROVAL DECISION DROPDOWN BEHAVIOUR
####################################################################################################

  Scenario Outline:AT CREDIT APPROVAL : For App with [ <LogicalID> ] Credit Approval Decision Dropdown should be Disabled for Omni Loan
    Given all prerequisite are performed in previous scenario of "Omni Loan" logical id "<LogicalID>"
    And user opens an application of "Credit Approval" stage present in context from application grid
    When user opens the Decision Drawer at Credit Approval Stage
    And user opens Credit Decisions Tab in Credit Approval Decision Drawer
    Then Credit Approval Decision dropdown should be "Disabled"
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

######=============================== Credit Approval Decision Dropdown Value Changes =================================

  Scenario Outline:AT CREDIT APPROVAL : For App with [ <LogicalID> ] Credit Approval Decision should be <Decision> when all Sub Product checkboxes are set as <CheckBoxStatus>
    Given all prerequisite are performed in previous scenario of "Omni Loan" logical id "<LogicalID>"
    And user opens an application of "Credit Approval" stage present in context from application grid
    When user opens the Decision Drawer at Credit Approval Stage
    And user clicks on Product Type Decision List Tab
    And user sets decision checkbox for following sub products
      | SubProductType | CheckBoxStatus   |
      | Home Loan      | <CheckBoxStatus> |
      | Personal Loan  | <CheckBoxStatus> |
      | Auto Loan      | <CheckBoxStatus> |
    And user makes checkbox as "<CheckBoxStatus>" for Primary Card
    And user opens Credit Decisions Tab in Credit Approval Decision Drawer
    Then Credit Approval Decision dropdown field value should be "<Decision>"
    Examples:
      | LogicalID                            | Decision     | CheckBoxStatus |
      | Separate_Decisions_ALL_CHECKED       | Approved     | Checked        |
      | Separate_Decisions_HL_PL_MAL_CHECKED | Approved     | Checked        |
      | Separate_Decisions_HL_PL_CC_CHECKED  | Approved     | Checked        |
      | Separate_Decisions_HL_PL_CHECKED     | Approved     | Checked        |
      | Separate_Decisions_HL_MAL_CC_CHECKED | Approved     | Checked        |
      | Separate_Decisions_HL_MAL_CHECKED    | Approved     | Checked        |
      | Separate_Decisions_HL_CC_CHECKED     | Approved     | Checked        |
      | Separate_Decisions_HL_CHECKED        | Approved     | Checked        |
      | Separate_Decisions_PL_MAL_CC_CHECKED | Approved     | Checked        |
      | Separate_Decisions_PL_MAL_CHECKED    | Approved     | Checked        |
      | Separate_Decisions_PL_CC_CHECKED     | Approved     | Checked        |
      | Separate_Decisions_PL_CHECKED        | Approved     | Checked        |
      | Separate_Decisions_MAL_CC_CHECKED    | Approved     | Checked        |
      | Separate_Decisions_MAL_CHECKED       | Approved     | Checked        |
      | Separate_Decisions_CC_CHECKED        | Approved     | Checked        |
      | Separate_Decisions_NONE_CHECKED      | Approved     | Checked        |
      | Separate_Decisions_ALL_CHECKED       | Not Approved | Un-Checked     |
      | Separate_Decisions_HL_PL_MAL_CHECKED | Not Approved | Un-Checked     |
      | Separate_Decisions_HL_PL_CC_CHECKED  | Not Approved | Un-Checked     |
      | Separate_Decisions_HL_PL_CHECKED     | Not Approved | Un-Checked     |
      | Separate_Decisions_HL_MAL_CC_CHECKED | Not Approved | Un-Checked     |
      | Separate_Decisions_HL_MAL_CHECKED    | Not Approved | Un-Checked     |
      | Separate_Decisions_HL_CC_CHECKED     | Not Approved | Un-Checked     |
      | Separate_Decisions_HL_CHECKED        | Not Approved | Un-Checked     |
      | Separate_Decisions_PL_MAL_CC_CHECKED | Not Approved | Un-Checked     |
      | Separate_Decisions_PL_MAL_CHECKED    | Not Approved | Un-Checked     |
      | Separate_Decisions_PL_CC_CHECKED     | Not Approved | Un-Checked     |
      | Separate_Decisions_PL_CHECKED        | Not Approved | Un-Checked     |
      | Separate_Decisions_MAL_CC_CHECKED    | Not Approved | Un-Checked     |
      | Separate_Decisions_MAL_CHECKED       | Not Approved | Un-Checked     |
      | Separate_Decisions_CC_CHECKED        | Not Approved | Un-Checked     |
      | Separate_Decisions_NONE_CHECKED      | Not Approved | Un-Checked     |



#  ##### ---------------- DO-NE TILL HEREEEE ------------------------------------------


  Scenario Outline:AT CREDIT APPROVAL : For App with [ <LogicalID> ] Credit Approval Decision should be Approved when any of Sub Product checkboxes is set as Checked
    Given all prerequisite are performed in previous scenario of "Omni Loan" logical id "<LogicalID>"

    And user opens an application of "Credit Approval" stage present in context from application grid
    When user opens the Decision Drawer at Credit Approval Stage
    And user clicks on Product Type Decision List Tab
    And user sets decision checkbox for following sub products
      | Home Loan     | <HomeStatus>     |
      | Personal Loan | <PersonalStatus> |
      | Auto Loan     | <AutoStatus>     |
    And user makes checkbox as "<PrimaryCardStatus>" for Primary Card
    And user opens Credit Decisions Tab in Credit Approval Decision Drawer
    Then Credit Approval Decision dropdown field value should be "Approved"
    Examples:
      | LogicalID                            | HomeStatus | PersonalStatus | AutoStatus | PrimaryCardStatus |
      | Separate_Decisions_ALL_CHECKED       | Checked    | Checked        | Checked    | Checked           |
      | Separate_Decisions_HL_PL_MAL_CHECKED | Checked    | Checked        | Checked    | Un-Checked        |
      | Separate_Decisions_HL_PL_CC_CHECKED  | Checked    | Checked        | Un-Checked | Checked           |
      | Separate_Decisions_HL_PL_CHECKED     | Checked    | Checked        | Un-Checked | Un-Checked        |
      | Separate_Decisions_HL_MAL_CC_CHECKED | Checked    | Un-Checked     | Checked    | Checked           |
      | Separate_Decisions_HL_MAL_CHECKED    | Checked    | Un-Checked     | Checked    | Un-Checked        |
      | Separate_Decisions_HL_CC_CHECKED     | Checked    | Un-Checked     | Un-Checked | Checked           |
      | Separate_Decisions_HL_CHECKED        | Checked    | Un-Checked     | Un-Checked | Un-Checked        |
      | Separate_Decisions_PL_MAL_CC_CHECKED | Un-Checked | Checked        | Checked    | Checked           |
      | Separate_Decisions_PL_MAL_CHECKED    | Un-Checked | Checked        | Checked    | Un-Checked        |
      | Separate_Decisions_PL_CC_CHECKED     | Un-Checked | Checked        | Un-Checked | Checked           |
      | Separate_Decisions_PL_CHECKED        | Un-Checked | Checked        | Un-Checked | Un-Checked        |
      | Separate_Decisions_MAL_CC_CHECKED    | Un-Checked | Un-Checked     | Checked    | Checked           |
      | Separate_Decisions_MAL_CHECKED       | Un-Checked | Un-Checked     | Checked    | Un-Checked        |
      | Separate_Decisions_CC_CHECKED        | Un-Checked | Un-Checked     | Un-Checked | Checked           |


  Scenario Outline:AT CREDIT APPROVAL : For App with [ <LogicalID> ] Credit Approval Decision should be Not Approved when none of Sub Product checkboxes are Checked
    Given all prerequisite are performed in previous scenario of "Omni Loan" logical id "<LogicalID>"
    And user opens an application of "Credit Approval" stage present in context from application grid
    When user opens the Decision Drawer at Credit Approval Stage
    And user clicks on Product Type Decision List Tab
    And user sets decision checkbox for following sub products
      | Home Loan     | <HomeStatus>     |
      | Personal Loan | <PersonalStatus> |
      | Auto Loan     | <AutoStatus>     |
    And user makes checkbox as "<PrimaryCardStatus>" for Primary Card
    And user opens Credit Decisions Tab in Credit Approval Decision Drawer
    Then Credit Approval Decision dropdown field value should be "Not Approved"
    Examples:
      | LogicalID                       | HomeStatus | PersonalStatus | AutoStatus | PrimaryCardStatus |
      | Separate_Decisions_NONE_CHECKED | Un-Checked | Un-Checked     | Un-Checked | Un-Checked        |

#####################################################################################################
## SECTION 7: SANCTION AMOUNT RECALCULATION
#####################################################################################################

  Scenario Outline:AT CREDIT APPROVAL : For App with [ <LogicalID> ] Total Sanction Amount should exclude Approved Amount of Un-Checked Sub Products
    Given all prerequisite are performed in previous scenario of "Omni Loan" logical id "<LogicalID>"
    And user opens an application of "Credit Approval" stage present in context from application grid
    When user opens the Decision Drawer at Credit Approval Stage
    And user clicks on Product Type Decision List Tab
    And user sets decision checkbox for following sub products
      | Home Loan      | <HomeStatus>     |
      | Personal Loan  | <PersonalStatus> |
      | Auto Loan      | <AutoStatus>     |
    And user makes checkbox as "<PrimaryCardStatus>" for Primary Card
    And user saves the Product Type Decision details
    And user opens Credit Decisions Tab in Credit Approval Decision Drawer
    Then Total Sanction Amount should be recalculated excluding amount of Un-Checked sub products  ######
    Examples:
      | LogicalID                            | HomeStatus | PersonalStatus | AutoStatus | PrimaryCardStatus |
      | Separate_Decisions_ALL_CHECKED       | Checked    | Checked        | Checked    | Checked           |
      | Separate_Decisions_HL_PL_MAL_CHECKED | Checked    | Checked        | Checked    | Un-Checked        |
      | Separate_Decisions_HL_PL_CC_CHECKED  | Checked    | Checked        | Un-Checked | Checked           |
      | Separate_Decisions_HL_PL_CHECKED     | Checked    | Checked        | Un-Checked | Un-Checked        |
      | Separate_Decisions_HL_MAL_CC_CHECKED | Checked    | Un-Checked     | Checked    | Checked           |
      | Separate_Decisions_HL_MAL_CHECKED    | Checked    | Un-Checked     | Checked    | Un-Checked        |
      | Separate_Decisions_HL_CC_CHECKED     | Checked    | Un-Checked     | Un-Checked | Checked           |
      | Separate_Decisions_HL_CHECKED        | Checked    | Un-Checked     | Un-Checked | Un-Checked        |
      | Separate_Decisions_PL_MAL_CC_CHECKED | Un-Checked | Checked        | Checked    | Checked           |
      | Separate_Decisions_PL_MAL_CHECKED    | Un-Checked | Checked        | Checked    | Un-Checked        |
      | Separate_Decisions_PL_CC_CHECKED     | Un-Checked | Checked        | Un-Checked | Checked           |
      | Separate_Decisions_PL_CHECKED        | Un-Checked | Checked        | Un-Checked | Un-Checked        |
      | Separate_Decisions_MAL_CC_CHECKED    | Un-Checked | Un-Checked     | Checked    | Checked           |
      | Separate_Decisions_MAL_CHECKED       | Un-Checked | Un-Checked     | Checked    | Un-Checked        |
      | Separate_Decisions_CC_CHECKED        | Un-Checked | Un-Checked     | Un-Checked | Checked           |


    ### Mutation Test Case

  Scenario Outline:AT CREDIT APPROVAL : For App with [ <LogicalID> ] Total Sanction Amount should be updated to 0 when all Sub Products are Un-Checked
    Given all prerequisite are performed in previous scenario of "Omni Loan" logical id "<LogicalID>"

    And user opens an application of "Credit Approval" stage present in context from application grid
    When user opens the Decision Drawer at Credit Approval Stage
    And user clicks on Product Type Decision List Tab
    And user sets decision checkbox for following sub products
      | SubProductType | CheckBoxStatus |
      | Home Loan      | Un-Checked     |
      | Personal Loan  | Un-Checked     |
      | Auto Loan      | Un-Checked     |
    And user makes checkbox as "Un-Checked" for Primary Card
    And user saves the Product Type Decision details
    And user opens Credit Decisions Tab in Credit Approval Decision Drawer
    Then Total Sanction Amount should be updated to "0"
    Examples:
      | LogicalID                       |
      | Separate_Decisions_NONE_CHECKED |

#####################################################################################################
## SECTION 8: MOVE TO NEXT STAGE VALIDATIONS
#####################################################################################################
#######------------------- APPLICATION SHOULD GET REJECTED -------------------###
  Scenario Outline:AT CREDIT APPROVAL : For App with [ <LogicalID> ] Application should not Move To Next Stage when all Sub Products are Un-Checked
    Given all prerequisite are performed in previous scenario of "Omni Loan" logical id "<LogicalID>"

    And user opens an application of "Credit Approval" stage present in context from application grid
    When user opens the Decision Drawer at Credit Approval Stage
    And user clicks on Product Type Decision List Tab
    And user sets decision checkbox for following sub products
      | SubProductType | CheckBoxStatus |
      | Home Loan      | Un-Checked     |
      | Personal Loan  | Un-Checked     |
      | Auto Loan      | Un-Checked     |
    And user makes checkbox as "Un-Checked" for Primary Card
    And user saves the Product Type Decision details
    And user clicks on move to next stage
    Then Application should not move to next stage
    And user should be able to see validation message for 0 sanction amount
    Examples:
      | LogicalID                       |
      | Separate_Decisions_NONE_CHECKED |

  Scenario Outline:AT CREDIT APPROVAL : For App with [ <LogicalID> ] Application with 0 Sanction Amount should get Rejected successfully
    Given all prerequisite are performed in previous scenario of "Omni Loan" logical id "<LogicalID>"

    And user opens an application of "Credit Approval" stage present in context from application grid
    When user opens the Decision Drawer at Credit Approval Stage
    And user clicks on Product Type Decision List Tab
    And user sets decision checkbox for following sub products
      | SubProductType | CheckBoxStatus |
      | Home Loan      | Un-Checked     |
      | Personal Loan  | Un-Checked     |
      | Auto Loan      | Un-Checked     |
    And user makes checkbox as "Un-Checked" for Primary Card
    And user saves the Product Type Decision details
    And user opens Credit Decisions Tab in Credit Approval Decision Drawer
    And user selects decision as reject
    Then Application should get rejected successfully with 0 sanction amount
    Examples:
      | LogicalID                       |
      | Separate_Decisions_NONE_CHECKED |

#####################################################################################################
## SECTION 9: COLLATERAL DELINK BEHAVIOUR ON MTNS
#####################################################################################################
### --- Validation says, You need to Manually De-Link Collateral
  Scenario Outline:AT CREDIT APPROVAL : For App with [ <LogicalID> ] Collateral linked to a Rejected Sub Loan should get De-linked automatically on Move To Next Stage
    Given all prerequisite are performed in previous scenario of "Omni Loan" logical id "<LogicalID>"
    And user opens an application of "Credit Approval" stage present in context from application grid
    When user opens the Decision Drawer at Credit Approval Stage
    And user clicks on Product Type Decision List Tab
    And user sets decision checkbox for following sub products
      | SubProductType | CheckBoxStatus |
      | Home Loan      | Un-Checked     |
      | Personal Loan  | Checked        |
      | Auto Loan      | Checked        |
    And user makes checkbox as "Checked" for Primary Card
    And user saves the Product Type Decision details
    And user opens Credit Decisions Tab in Credit Approval Decision Drawer
    And user reads data from the excel file "credit_approval_end_flow.xlsx" under sheet "underwriter_decision" and row 3
    And user fills the decision details for "Omni Loan"
    And credit approval decision saved successfully
    And user clicks on move to next stage
    Then Collateral should get de-linked from rejected sub loan "Home Loan"   ### How It will be checked is implementation decision, test case remains
    Examples:
      | LogicalID                            |
      | Separate_Decisions_PL_MAL_CC_CHECKED |


    #### TO BE REMOVED
  Scenario Outline:AT CREDIT APPROVAL : For App with [ <LogicalID> ] Collateral linked to Multiple Sub Loans should remain linked to Approved Sub Loans when one Sub Loan is Rejected
    Given all prerequisite are performed in previous scenario of "Omni Loan" logical id "<LogicalID>"
    And user opens an application of "Credit Approval" stage present in context from application grid
    When user opens the Decision Drawer at Credit Approval Stage
    And user clicks on Product Type Decision List Tab
    And user sets decision checkbox for following sub products
      | SubProductType | CheckBoxStatus |
      | Home Loan      | Un-Checked     |
      | Personal Loan  | Checked        |
      | Auto Loan      | Checked        |
    And user makes checkbox as "Un-Checked" for Primary Card
    And user saves the Product Type Decision details
    And user opens Credit Decisions Tab in Credit Approval Decision Drawer
    And user reads data from the excel file "credit_approval_end_flow.xlsx" under sheet "underwriter_decision" and row 3
    And user fills the decision details for "Omni Loan"
    And credit approval decision saved successfully
    And user clicks on move to next stage
    Then Collateral should remain linked to approved sub loans
    And Collateral should get de-linked from rejected sub loan "Home Loan"    ### How It will be checked is implementation decision, test case remains
    Examples:
      | LogicalID                         |
      | Separate_Decisions_PL_MAL_CHECKED |


#### --- Same Validation Message and Not confirmation VAP.Scenario:
#### --- Manually Link The VAP to Other collateral
#### --- Get Approval Again

  Scenario Outline:AT CREDIT APPROVAL : For App with [ <LogicalID> ] Confirmation Dialogue should appear on MTNS when VAP is linked to Collateral of a Rejected Sub Loan
    Given all prerequisite are performed in previous scenario of "Omni Loan" logical id "<LogicalID>"
    And user opens an application of "Credit Approval" stage present in context from application grid
    When user opens the Decision Drawer at Credit Approval Stage
    And user clicks on Product Type Decision List Tab
    And user sets decision checkbox for following sub products
      | SubProductType | CheckBoxStatus |
      | Home Loan      | Un-Checked     |
      | Personal Loan  | Checked        |
      | Auto Loan      | Un-Checked     |
    And user makes checkbox as "Checked" for Primary Card
    And user saves the Product Type Decision details
    And user opens Credit Decisions Tab in Credit Approval Decision Drawer
    And user reads data from the excel file "credit_approval_end_flow.xlsx" under sheet "underwriter_decision" and row 3
    And user fills the decision details for "Omni Loan"
    And credit approval decision saved successfully
    And user clicks on move to next stage
    Then a confirmation dialogue should get opened stating following collaterals and VAP will get de-linked as sub loan is marked rejected
    Examples:
      | LogicalID                        |
      | Separate_Decisions_PL_CC_CHECKED |

  Scenario Outline:AT CREDIT APPROVAL : For App with [ <LogicalID> ] Application should Move to Next Stage on Confirmation of VAP De-link Dialogue
    Given all prerequisite are performed in previous scenario of "Omni Loan" logical id "<LogicalID>"
    And user opens an application of "Credit Approval" stage present in context from application grid
    And user confirms the collateral and VAP de-link confirmation dialogue
    Then Application should move to next stage successfully
    Examples:
      | LogicalID                        |
      | Separate_Decisions_PL_CC_CHECKED |


#####################################################################################################
## SECTION 12: APPLICATION MOVES TO NEXT STAGE (HAPPY PATHS)
#####################################################################################################

  Scenario Outline:AT CREDIT APPROVAL : For App with [ <LogicalID> ] Application Can Move To Next Stage from Credit Approval when at least one Sub Product is Approved for Omni Loan
    Given all prerequisite are performed in previous scenario of "Omni Loan" logical id "<LogicalID>"
    And user opens an application of "Credit Approval" stage present in context from application grid
    When user opens the Decision Drawer at Credit Approval Stage
    And user clicks on Product Type Decision List Tab
    And user sets decision checkbox for following sub products
      | SubProductType | CheckBoxStatus   |
      | Home Loan      | <HomeStatus>     |
      | Personal Loan  | <PersonalStatus> |
      | Auto Loan      | <AutoStatus>     |
    And user makes checkbox as "<PrimaryCardStatus>" for Primary Card
    And user saves the Product Type Decision details
    And user opens Credit Decisions Tab in Credit Approval Decision Drawer
    And user reads data from the excel file "credit_approval_end_flow.xlsx" under sheet "underwriter_decision" and row 3
    And user fills the decision details for "Omni Loan"
    And credit approval decision saved successfully
    And user clicks on move to next stage
    Then Application should be move to "Reconsideration" stage
    Examples:
      | LogicalID                            | HomeStatus | PersonalStatus | AutoStatus | PrimaryCardStatus |
      | Separate_Decisions_ALL_CHECKED       | Checked    | Checked        | Checked    | Checked           |
      | Separate_Decisions_HL_PL_MAL_CHECKED | Checked    | Checked        | Checked    | Un-Checked        |
      | Separate_Decisions_HL_PL_CC_CHECKED  | Checked    | Checked        | Un-Checked | Checked           |
      | Separate_Decisions_HL_PL_CHECKED     | Checked    | Checked        | Un-Checked | Un-Checked        |
      | Separate_Decisions_HL_MAL_CHECKED    | Checked    | Un-Checked     | Checked    | Checked           |
      | Separate_Decisions_HL_MAL_CHECKED    | Checked    | Un-Checked     | Checked    | Un-Checked        |
      | Separate_Decisions_HL_CC_CHECKED     | Checked    | Un-Checked     | Un-Checked | Checked           |
      | Separate_Decisions_HL_CHECKED        | Checked    | Un-Checked     | Un-Checked | Un-Checked        |
      | Separate_Decisions_PL_CHECKED        | Un-Checked | Checked        | Un-Checked | Un-Checked        |
      | Separate_Decisions_MAL_CC_CHECKED    | Un-Checked | Un-Checked     | Checked    | Checked           |
      | Separate_Decisions_MAL_CHECKED       | Un-Checked | Un-Checked     | Checked    | Un-Checked        |
      | Separate_Decisions_CC_CHECKED        | Un-Checked | Un-Checked     | Un-Checked | Checked           |

#    Combinations not Included as They Already Moved To Next Stage
#      | Separate_Decisions_PL_MAL_CC_CHECKED | Un-Checked | Checked        | Checked    | Checked           |
#      | Separate_Decisions_PL_MAL_CHECKED    | Un-Checked | Checked        | Checked    | Un-Checked        |
#      | Separate_Decisions_PL_CC_CHECKED     | Un-Checked | Checked        | Un-Checked | Checked           |

  # And Separate_Decisions_NONE_CHECKED Is Already Rejected