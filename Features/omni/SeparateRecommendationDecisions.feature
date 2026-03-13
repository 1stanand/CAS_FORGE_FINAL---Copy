@DevTrack
@GA-9.0
@Epic-Epic-HD-Bank-GA-9.0
@AuthoredBy-anand.singh1
@NotImplemented
@CAS-264757
Feature: Separate Decisioning for Sub Products in Omni Loan at Recommendation Stage

  ####################################################################################################
  # BUSINESS CONTEXT
  # --------------------------------------------------------------------------------------------------
  # Earlier Behaviour:
  #   - Recommendation decision was taken at Omni Loan level.
  #   - Either all sub-products were Recommended OR none were Recommended.
  #
  # New Behaviour:
  #   - Each Sub Product now has an independent "Decision" checkbox.
  #   - Recommended Amount / Limit field enablement depends on the checkbox state.
  #   - Final Recommendation dropdown is derived (OR logic across sub-products).
  #
  # Aggregate Rule:
  #   - If ANY sub-product (including Credit Card Primary) is Checked → Final Decision = Recommended
  #   - If ALL sub-products are Un-Checked → Final Decision = Not Recommended
  #
  # Special Handling:
  #   - Credit Card contains Primary and Add-On Cards.
  #   - Add-On Cards are dependent on Primary Card and remain disabled.
  ####################################################################################################


  ####################################################################################################
  # PRE-REQUISITES
  # --------------------------------------------------------------------------------------------------
  # Omni Loan Application created via API with following Sub Products:
  #   - Home Loan
  #   - Personal Loan
  #   - Auto Loan
  #   - Credit Card (With 2 Add-On Cards)
  ####################################################################################################

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user picks an application of "Omni Loan" product type as "individual" applicant at stage "Recommendation" for category "" with key ""
    And user opens an application of "Recommendation" stage present in context from application grid


  ####################################################################################################
  # SECTION 1: UI STRUCTURE VALIDATION
  ####################################################################################################

  Scenario Outline: Product Type Decision List should display new "<ColumnName>" column at Recommendation Stage for Omni Loan
    When user clicks on Product Type Decision List accordion to expand it
    Then user should be able to see the new column "<ColumnName>"
    Examples:
      | ColumnName |
      | Decision   |


  ####################################################################################################
  # SECTION 2: CHECKBOX AVAILABILITY & DEFAULT STATE
  ####################################################################################################

  Scenario Outline: Decision checkbox should be <isEnabled> for "<SubProductType>" Sub Product in Omni Loan at Recommendation Stage
    When user clicks on Product Type Decision List accordion to expand it
    Then user should be able to see a "CheckBox" type input field in "Decision" Column for "<SubProductType>" sub product
    And checkbox should be "<isEnabled>" for "<SubProductType>"
    Examples:
      | SubProductType | isEnabled |
      | Home Loan      | Enabled   |
      | Personal Loan  | Enabled   |
      | Auto Loan      | Enabled   |

  Scenario Outline: Decision checkbox should be <isEnabled> for "<CardType>" Card Type under Credit Card Sub Product
    When user clicks on Product Type Decision List accordion to expand it
    Then user should be able to see a "CheckBox" type input field in "Decision" Column for Credit Card Sub Product
    And checkbox should be "<isEnabled>" for "<CardType>" Card
    Examples:
      | CardType | isEnabled |
      | Primary  | Enabled   |
      | Add On   | Disabled  |


  ####################################################################################################
  # SECTION 3: DEPENDENCY VALIDATION – CREDIT CARD ADD-ON BEHAVIOUR
  ####################################################################################################

  Scenario Outline: Add-On Card checkbox state should follow Primary Card checkbox state in Omni Loan
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

  Scenario Outline: Recommended Amount field should be editable by default for "<SubProductType>" Sub Product
    When user clicks on Product Type Decision List accordion to expand it
    Then user should be able to enter value in Recommended Amount field for "<SubProductType>"
    Examples:
      | SubProductType |
      | Home Loan      |
      | Personal Loan  |
      | Auto Loan      |

  Scenario Outline: Recommended Limit field default state for "<CardType>" Card under Credit Card
    When user clicks on Product Type Decision List accordion to expand it
    Then Recommended Limit field for "<CardType>" Card should be "<isEnabled>"
    Examples:
      | CardType | isEnabled |
      | Primary  | Enabled   |
      | Add On   | Disabled  |


  ####################################################################################################
  # SECTION 5: FIELD ENABLE/DISABLE BASED ON CHECKBOX ACTION
  ####################################################################################################

  Scenario Outline: Recommended Amount field state should be <isEnabled> when Sub Product checkboxes are set to <CheckBoxStatus>
    When user clicks on Product Type Decision List accordion to expand it
    And user sets recommended checkbox for following sub products
      | Home Loan      | <CheckBoxStatus> |
      | Personal Loan  | <CheckBoxStatus> |
      | Auto Loan      | <CheckBoxStatus> |
    Then Recommended Amount field should be "<isEnabled>" for following sub products
      | Home Loan      |
      | Personal Loan  |
      | Auto Loan      |
    Examples:
      | CheckBoxStatus | isEnabled |
      | Checked        | Enabled   |
      | Un-Checked     | Disabled  |

  Scenario Outline: Recommended Limit field state for Primary Card should be <isEnabled> when Primary Card checkbox is set to <CheckBoxStatus>
    When user clicks on Product Type Decision List accordion to expand it
    And user makes checkbox as "<CheckBoxStatus>" for Primary Card
    Then Recommended Amount field for for "Primary" Card Type should be "<isEnabled>"
    Examples:
      | CheckBoxStatus | isEnabled |
      | Checked        | Enabled   |
      | Un-Checked     | Disabled  |

  Scenario Outline: Recommended Limit field for Add-On Card should remain Disabled irrespective of Primary Card checkbox state
    When user clicks on Product Type Decision List accordion to expand it
    And user makes checkbox as "<CheckBoxStatus>" for Primary Card
    Then Recommended Limit field for "Add On Card" should be "Disabled"
    Examples:
      | CheckBoxStatus |
      | Checked        |
      | Un-Checked     |


  ####################################################################################################
  # SECTION 6: FINAL RECOMMENDATION DROPDOWN – STATE & DERIVATION
  ####################################################################################################

  Scenario Outline: Recommendation Decision dropdown should remain Disabled at Recommendation Stage
    When user scrolls down to Recommendation Decisions
    Then Recommendation Decision dropdown for Recommendation Decisions should be "<isEnabled>"
    Examples:
      | isEnabled |
      | Disabled  |


  Scenario Outline: Recommendation Decision should be <isRecommended> when all Sub Product checkboxes are set as <CheckBoxStatus>
    When user clicks on Product Type Decision List accordion to expand it
    And user sets recommended checkbox for following sub products
      | Home Loan      | <CheckBoxStatus> |
      | Personal Loan  | <CheckBoxStatus> |
      | Auto Loan      | <CheckBoxStatus> |
    And user makes checkbox as "<CheckBoxStatus>" for Primary Card
    Then Recommendation Decision dropdown field value should be "<isRecommended>"
    Examples:
      | isRecommended   | CheckBoxStatus |
      | Recommended     | Checked        |
      | Not Recommended | Un-Checked     |

  Scenario Outline: Recommendation Decision should be Recommended when at least one Sub Product checkbox is Checked
    When user clicks on Product Type Decision List accordion to expand it
    And user sets recommended checkbox for following sub products
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

  Scenario Outline: Recommendation Decision should be Not Recommended when all Sub Product checkboxes are Un-Checked
    When user clicks on Product Type Decision List accordion to expand it
    And user sets recommended checkbox for following sub products
      | Home Loan      | <HomeStatus>     |
      | Personal Loan  | <PersonalStatus> |
      | Auto Loan      | <AutoStatus>     |
    And user makes checkbox as "<PrimaryCardStatus>" for Primary Card
    Then Recommendation Decision dropdown field value should be "Not Recommended"
    Examples:
      | HomeStatus | PersonalStatus | AutoStatus | PrimaryCardStatus |
      | Un-Checked | Un-Checked     | Un-Checked | Un-Checked        |


  ####################################################################################################
  # SECTION 7: VALIDATION – ZERO AMOUNT / LIMIT RESTRICTION
  ####################################################################################################

  Scenario Outline: Recommending a Sub Product with Amount 0 should not be allowed for <SubProductType> of Omni Loan at Recommendation Stage
    When user clicks on Product Type Decision List accordion to expand it
    And user sets recommended checkbox for following sub products
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

  Scenario Outline: Not Recommending a Sub Product with Amount 0 should not be allowed for <SubProductType> of Omni Loan at Recommendation Stage
    When user clicks on Product Type Decision List accordion to expand it
    And user sets recommended checkbox for following sub products
      | <SubProductType> | Checked        |
    And user enters "0" in Recommended amount for "<SubProductType>"
    And user sets recommended checkbox for following sub products
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


  ####################################################################################################
  # SECTION 8: STAGE TRANSITION VALIDATION
  ####################################################################################################

  Scenario Outline: Application should move to Credit Approval stage regardless of Recommendation Decision combination
    When user clicks on Product Type Decision List accordion to expand it
    And user sets recommended checkbox for following sub products
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
