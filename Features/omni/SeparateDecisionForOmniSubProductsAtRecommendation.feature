@DevTrack
@GA-9.0
@Epic-SeparateCreditApprovalDecisioningInAnOmniLoan
@AuthoredBy-anand.singh1
@NotImplemented
@CAS-264757
Feature: Separate_Decision_OMNILoan_Recommendation


  ####################################################################################################
  ###### PRE-REQUISITES
  ###### --------------------------------------------------------------------------------------------------
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
  ######   - Recommendation decision was taken at Omni Loan level.
  ######   - Either all sub-products were Recommended OR none were Recommended.
  ######
  ###### New Behaviour:
  ######   - Each Sub Product now has an independent "Decision" checkbox.
  ######   - Recommended Amount / Limit field enablement depends on the checkbox state.
  ######   - Final Recommendation dropdown is derived (OR logic across sub-products).
  ######
  ###### Aggregate Rule:
  ######   - If ANY sub-product (including Credit Card Primary) is Checked → Final Decision = Recommended
  ######   - If ALL sub-products are Un-Checked → Final Decision = Not Recommended
  ######
  ###### Special Handling:
  ######   - Credit Card contains Primary and Add-On Cards.
  ######   - Add-On Cards are dependent on Primary Card and remain disabled.
  #########################################################################################################

  #${ProductType:[]}    ### Not Neeeded, As story is only for just one LOB, providing hard Coded LOB- Omni Loan.
  #${ApplicationStage:[]}  ### Not Neeeded, As story is only for just one Stage, providing hard Coded stages - Recommendation.


  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user picks an application of "Omni Loan" product type as "individual" applicant at stage "Recommendation" for category "" with key ""
    And user opens an application of "Recommendation" stage present in context from application grid


  ####################################################################################################
  # SECTION 1: UI STRUCTURE VALIDATION
  ####################################################################################################

  Scenario Outline: Availability of New Column In Product Type Decision List in Omni Loan at Recommendation Stage
    When user clicks on Product Type Decision List accordion to expand it
    Then user should be able to see the new column "<ColumnName>"
    Examples:
      | ColumnName |
      | Decision   |

  ####################################################################################################
  # SECTION 2: CHECKBOX AVAILABILITY & DEFAULT STATE
  ####################################################################################################
  Scenario Outline: Availability of <isEnabled> Checkbox in Decision Column of Product Type Decision List for <SubProductType> of Omni Loan at Recommendation Stage
    When user clicks on Product Type Decision List accordion to expand it
    Then user should be able to see a "CheckBox" type input field in "Decision" Column for "<SubProductType>" sub product
    And checkbox should be "<isEnabled>" for "<SubProductType>"
    Examples:
      | SubProductType | isEnabled |
      | Home Loan      | Enabled   |
      | Personal Loan  | Enabled   |
      | Auto Loan      | Enabled   |

  Scenario Outline: Availability of <isEnabled> Checkbox in Decision Column of Product Type Decision List for <CardType> of Omni Loan at Recommendation Stage
    When user clicks on Product Type Decision List accordion to expand it
    Then user should be able to see a "CheckBox" type input field in "<ColumnName>" Column for Credit Card Sub Product
    And checkbox should be "<isEnabled>" for "<CardType>" Card
    Examples:
      | CardType | isEnabled |
      | Primary  | Enabled   |
      | Add On   | Disabled  |

  ####################################################################################################
  # SECTION 3: DEPENDENCY VALIDATION – CREDIT CARD ADD-ON BEHAVIOUR
  ####################################################################################################
  Scenario Outline: CheckBox for Add On Cards should be <CheckBoxStatus> once Primary Card checkbox is <CheckBoxStatus> in Omni Loan at Recommendation Stage
    When user clicks on Product Type Decision List accordion to expand it
    And user makes checkbox as "<CheckBoxStatus>" for Primary Card
    Then CheckBox for "Add On" Card Type should be "<CheckBoxStatus>"
    Examples:
      | CheckBoxStatus |
      | Un-Checked     |
      | Checked        |

  ####################################################################################################
  # SECTION 4: DEFAULT FIELD ENABLEMENT BEHAVIOUR
  ####################################################################################################
  Scenario Outline: Recommended Amount Field should be Enabled By Default for <SubProductType> of Omni Loan at Recommendation Stage
    When user clicks on Product Type Decision List accordion to expand it
    Then user should be able to enter value in Recommended Amount field for "<SubProductType>"
    Examples:
      | SubProductType |
      | Home Loan      |
      | Personal Loan  |
      | Auto Loan      |

  Scenario Outline: Recommended Limit Field should be <isEnabled> By Default for <CardType> of Omni Loan at Recommendation Stage
    When user clicks on Product Type Decision List accordion to expand it
    Then Recommended Limit field for "<CardType>" Card should be "<isEnabled>"
    Examples:
      | CardType | isEnabled |
      | Primary  | Enabled   |
      | Add On   | Disabled  |

  ######=============================== Amount Field Behavior Based On Actions =================================
  Scenario Outline: Recommended amount field state should be <isEnabled> once recommended checkbox is <CheckBoxStatus> for all Sub Products of Omni Loan at Recommendation Stage
    When user clicks on Product Type Decision List accordion to expand it
    And user sets recommended checkbox for following sub products
      | SubProductType | CheckBoxStatus   |
      | Home Loan      | <CheckBoxStatus> |
      | Personal Loan  | <CheckBoxStatus> |
      | Auto Loan      | <CheckBoxStatus> |
    Then Recommended Amount field should be "<isEnabled>" for following sub products
      | SubProductType |
      | Home Loan      |
      | Personal Loan  |
      | Auto Loan      |

    Examples:
      | CheckBoxStatus | isEnabled |
      | Checked        | Enabled   |
      | Un-Checked     | Disabled  |

  Scenario Outline: Recommended Limit field for Primary Card should get be <isEnabled> once recommended checkbox is <CheckBoxStatus> for Primary Card of Omni Loan at Recommendation Stage
    When user clicks on Product Type Decision List accordion to expand it
    And user makes checkbox as "<CheckBoxStatus>" for Primary Card
    Then Recommended Amount field for "Primary" Card Type should be "<isEnabled>"
    Examples:
      | CheckBoxStatus | isEnabled |
      | Checked        | Enabled   |
      | Un-Checked     | Disabled  |

  Scenario Outline: Recommended Limit Field for Add On Card should remain Disabled with recommended checkbox as <CheckBoxStatus> for Primary Card of Omni Loan at Recommendation Stage
    When user clicks on Product Type Decision List accordion to expand it
    And user makes checkbox as "<CheckBoxStatus>" for Primary Card
    Then Recommended Limit field for "Add On Card" should be "Disabled"
    Examples:
      | CheckBoxStatus |
      | Checked        |
      | Un-Checked     |




  ######=============================== Recommendation Decision Dropdown Should Be Disabled =================================
  Scenario Outline: Recommendation Decision Dropdown should be Disabled for Omni Loan at Recommendation Stage
    When user scrolls down to Recommendation Decisions
    Then Recommendation Decision dropdown for Recommendation Decisions should be "<isEnabled>"
    Examples:
      | isEnabled |
      | Disabled  |

  ######=============================== Recommendation Decision Dropdown Value Changes =================================
  Scenario Outline: Recommendation Decision should be <isRecommended> when all Sub Product checkboxes are set as <CheckBoxStatus>
    When user clicks on Product Type Decision List accordion to expand it
    And user sets recommended checkbox for following sub products
      | SubProductType | CheckBoxStatus   |
      | Home Loan      | <CheckBoxStatus> |
      | Personal Loan  | <CheckBoxStatus> |
      | Auto Loan      | <CheckBoxStatus> |
    And user makes checkbox as "<CheckBoxStatus>" for Primary Card
    Then Recommendation Decision dropdown field value should be "<isRecommended>"
    Examples:
      | isRecommended   | CheckBoxStatus |
      | Recommended     | Checked        |
      | Not Recommended | Un-Checked     |

  Scenario Outline: Recommendation Decision should be Recommended when any of Sub Product checkboxes is set as Checked
    When user clicks on Product Type Decision List accordion to expand it
    And user sets recommended checkbox for following sub products
      | SubProductType | CheckBoxStatus   |
      | Home Loan      | <HomeStatus>     |
      | Personal Loan  | <PersonalStatus> |
      | Auto Loan      | <AutoStatus>     |
    And user makes checkbox as "<PrimaryCardStatus>" for Primary Card
    Then Recommendation Decision dropdown field value should be "Recommended"
    Examples:
      | HomeStatus | PersonalStatus | AutoStatus | PrimaryCardStatus |
      | Checked    | Checked        | Checked    | Checked           |
      | Checked    | Checked        | Checked    | Un-Checked        |
      | Checked    | Checked        | Un-Checked | Checked           |
      | Checked    | Checked        | Un-Checked | Un-Checked        |
      | Checked    | Un-Checked     | Checked    | Checked           |
      | Checked    | Un-Checked     | Checked    | Un-Checked        |
      | Checked    | Un-Checked     | Un-Checked | Checked           |
      | Checked    | Un-Checked     | Un-Checked | Un-Checked        |
      | Un-Checked | Checked        | Checked    | Checked           |
      | Un-Checked | Checked        | Checked    | Un-Checked        |
      | Un-Checked | Checked        | Un-Checked | Checked           |
      | Un-Checked | Checked        | Un-Checked | Un-Checked        |
      | Un-Checked | Un-Checked     | Checked    | Checked           |
      | Un-Checked | Un-Checked     | Checked    | Un-Checked        |
      | Un-Checked | Un-Checked     | Un-Checked | Checked           |


  Scenario Outline: Recommendation Decision should be Not Recommended when none of Sub Product checkboxes is set as Checked
    When user clicks on Product Type Decision List accordion to expand it
    And user sets recommended checkbox for following sub products
      | SubProductType | CheckBoxStatus   |
      | Home Loan      | <HomeStatus>     |
      | Personal Loan  | <PersonalStatus> |
      | Auto Loan      | <AutoStatus>     |
    And user makes checkbox as "<PrimaryCardStatus>" for Primary Card
    Then Recommendation Decision dropdown field value should be "Not Recommended"
    Examples:
      | HomeStatus | PersonalStatus | AutoStatus | PrimaryCardStatus |
      | Un-Checked | Un-Checked     | Un-Checked | Un-Checked        |







  ######=============================== Can Not Recommend Product With 0 Amount =================================

  Scenario Outline: Recommending a Sub Product with Amount 0 should not be allowed for <SubProductType> of Omni Loan at Recommendation Stage
    When user clicks on Product Type Decision List accordion to expand it
    And user sets recommended checkbox for following sub products
      | SubProductType   | CheckBoxStatus |
      | <SubProductType> | Checked        |
    And user enters "0" in Recommended amount for "<SubProductType>"
    And user saves the Product Type Decision details
    Then user should be able to see validation popup with message Recommended amount for "<SubProductType>" can not be 0
    Examples:
      | SubProductType |
      | Home Loan      |
      | Personal Loan  |
      | Auto Loan      |

  Scenario Outline: Recommending <CardType> with Limit 0 should not be allowed in Omni Loan at Recommendation Stage
    When user clicks on Product Type Decision List accordion to expand it
    And user makes checkbox as "Checked" for Primary Card
    And user enters "0" in Recommended Limit for Primary Card
    And user saves the Product Type Decision details
    Then user should be able to see validation popup with message Recommended amount for "<CardType>" can not be 0
    Examples:
      | CardType |
      | Primary  |



  ######=============================== Can Not 'Not Recommend' Product With 0 Amount =================================
  Scenario Outline: Not Recommending a Sub Product with Amount 0 should not be allowed for <SubProductType> of Omni Loan at Recommendation Stage
    When user clicks on Product Type Decision List accordion to expand it
    And user sets recommended checkbox for following sub products
      | SubProductType   | CheckBoxStatus |
      | <SubProductType> | Checked        |
    And user enters "0" in Recommended amount for "<SubProductType>"
    And user sets recommended checkbox for following sub products
      | SubProductType   | CheckBoxStatus |
      | <SubProductType> | Un-Checked     |
    And user saves the Product Type Decision details
    Then user should be able to see validation popup with message Recommended amount for "<SubProductType>" can not be 0
    Examples:
      | SubProductType |
      | Home Loan      |
      | Personal Loan  |
      | Auto Loan      |

  Scenario Outline: Not Recommending <CardType> with Limit 0 should not be allowed in Omni Loan at Recommendation Stage
    When user clicks on Product Type Decision List accordion to expand it
    And user makes checkbox as "Checked" for Primary Card
    And user enters "0" in Recommended Limit for Primary Card
    And user makes checkbox as "Un-Checked" for Primary Card
    And user saves the Product Type Decision details
    Then user should be able to see validation popup with message Recommended amount for "<CardType>" can not be 0
    Examples:
      | CardType |
      | Primary  |

  ######=============================== Application Moves to Next Stage With Any Decision =================================
  Scenario Outline: Application Can Move To Next Stage From Recommendation regardless of Recommendation Decision for Omni Loan
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
      | HomeStatus | PersonalStatus | AutoStatus | PrimaryCardStatus |
      | Checked    | Checked        | Checked    | Checked           |
      | Checked    | Checked        | Checked    | Un-Checked        |
      | Checked    | Checked        | Un-Checked | Checked           |
      | Checked    | Checked        | Un-Checked | Un-Checked        |
      | Checked    | Un-Checked     | Checked    | Checked           |
      | Checked    | Un-Checked     | Checked    | Un-Checked        |
      | Checked    | Un-Checked     | Un-Checked | Checked           |
      | Checked    | Un-Checked     | Un-Checked | Un-Checked        |
      | Un-Checked | Checked        | Checked    | Checked           |
      | Un-Checked | Checked        | Checked    | Un-Checked        |
      | Un-Checked | Checked        | Un-Checked | Checked           |
      | Un-Checked | Checked        | Un-Checked | Un-Checked        |
      | Un-Checked | Un-Checked     | Checked    | Checked           |
      | Un-Checked | Un-Checked     | Checked    | Un-Checked        |
      | Un-Checked | Un-Checked     | Un-Checked | Checked           |
      | Un-Checked | Un-Checked     | Un-Checked | Un-Checked        |




