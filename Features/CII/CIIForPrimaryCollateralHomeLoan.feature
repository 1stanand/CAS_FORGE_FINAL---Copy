@Epic-Collateral_Investigation
#@AuthoredBy-vinod.pandey
@AuthoredBy-vipin.kishor
@ReviewedBy-
@ImplementedBy-
@TechReviewedBy-
@NotImplemented
Feature: Collateral Investigation Initiation For Secondary Collateral Of home loan

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0

    #verification
    #FeatureID-ACAUTOCAS-368
  Scenario Outline: Validation of successful verification initiation with single agency in CII for primary collateral <collateral_sub_type> of home loan application
    And application has primary collateral with collateral subtype as "<collateral_sub_type>"
    And verification valuation for the collateral is not initiated yet
    When user selects the home loan application of CII stage
    And user selects initiate Valuation Verification
    And user adds a verification entry
    And user reads data from the excel file "CIIWorkBook.xlsx" under sheet "cii_verification" and row <row_num>
    And user fills verification Type with agency
    And user initiate the verification
    Then verification initiated successfully
    Examples:
      | collateral_sub_type                 | row_num |
      | Ready Property                      | 3       |
      | Construction On Land                | 3       |
      | Purchase a Plot                     | 3       |
      | Builder Property Under Construction | 3       |
      | Plot + Self Construction            | 3       |

          #FeatureID-ACAUTOCAS-368
  Scenario Outline: Validation of successful verification initiation with multiple agencies in CII for primary collateral <collateral_sub_type> of home loan application
    And application has primary collateral with collateral subtype as "<collateral_sub_type>"
    And verification valuation for the collateral is not initiated yet
    When user selects the home loan application of CII stage
    And user selects initiate Valuation Verification
    And user adds a verification entry
    And user reads data from the excel file "CIIWorkBook.xlsx" under sheet "cii_verification" and row <row_num>
    And user fills verification type with multiple agency
    And user initiate the verification
    Then verification initiated successfully
    Examples:
      | collateral_sub_type                 | row_num |
      | Ready Property                      | 4       |
      | Construction On Land                | 4       |
      | Purchase a Plot                     | 4       |
      | Builder Property Under Construction | 4       |
      | Plot + Self Construction            | 4       |

          #FeatureID-ACAUTOCAS-368
  Scenario Outline: Validation of unsuccessful verification initiation with duplicate agencies in CII for primary collateral <collateral_sub_type> of home loan application
    And application has primary collateral with collateral subtype as "<collateral_sub_type>"
    And verification valuation for the collateral is not initiated yet
    When user selects the home loan application of CII stage
    And user selects initiate Valuation Verification
    And user adds a verification entry
    And user reads data from the excel file "CIIWorkBook.xlsx" under sheet "cii_verification" and row <row_num>
    And user fills verification Type with duplicate agency
    And user initiate the verification
    Then error message is displayed
    Examples:
      | collateral_sub_type                 | row_num |
      | Ready Property                      | 5       |
      | Construction On Land                | 5       |
      | Purchase a Plot                     | 5       |
      | Builder Property Under Construction | 5       |
      | Plot + Self Construction            | 5       |

  Scenario Outline: Validation of successfully delete multiple verifications in CII for primary collateral <collateral_sub_type> of home loan application
    And application has primary collateral with collateral subtype as "<collateral_sub_type>"
    And verification valuation for the collateral is not initiated yet
    When user selects the home loan application of CII stage
    And user selects initiate Valuation Verification
    And user reads data from the excel file "CIIWorkBook.xlsx" under sheet "cii_verification" and row <row_num>
    And user adds multiple verification entry
    And user deletes verification entry
    Then verification deleted successfully
    Examples:
      | collateral_sub_type                 | row_num |
      | Ready Property                      | 4       |
      | Construction On Land                | 4       |
      | Purchase a Plot                     | 4       |
      | Builder Property Under Construction | 4       |
      | Plot + Self Construction            | 4       |

    #Valuation
   # FeatureID-ACAUTOCAS-368
  Scenario Outline: Validation of successful valuation initiation with single agency in CII for primary collateral <collateral_sub_type> of home loan application
    And application has primary collateral with collateral subtype as "<collateral_sub_type>"
    And verification valuation for the collateral is not initiated yet
    When user selects the home loan application of CII stage
    And user selects initiate Valuation Verification
    And user adds a valuation entry
    And user reads data from the excel file "CIIWorkBook.xlsx" under sheet "cii_valuatiom" and row <row_num>
    And user fills valuation type with agency
    And user initiate the valuation
    Then valuation initiated successfully
    Examples:
      | collateral_sub_type                 | row_num |
      | Ready Property                      | 2       |
      | Construction On Land                | 2       |
      | Purchase a Plot                     | 2       |
      | Builder Property Under Construction | 2       |
      | Plot + Self Construction            | 2       |

      #data is not prepared yet
          #FeatureID-ACAUTOCAS-368
  Scenario Outline: Validation of successful valuation initiation with multiple agencies in CII for primary collateral <collateral_sub_type> of home loan application
    And application has primary collateral with collateral subtype as "<collateral_sub_type>"
    And verification valuation for the collateral is not initiated yet
    When user selects the home loan application of CII stage
    And user selects initiate Valuation Verification
    And user adds a valuation entry
    And user reads data from the excel file "CIIWorkBook.xlsx" under sheet "cii_valuatiom" and row <row_num>
    And user fills Valuation Type with multiple agency
    And user initiate the valuation
    Then valuation initiated successfully
    Examples:
      | collateral_sub_type                 | row_num |
      | Ready Property                      | 3       |
      | Construction On Land                | 3       |
      | Purchase a Plot                     | 3       |
      | Builder Property Under Construction | 3       |
      | Plot + Self Construction            | 3       |

      #data is not prepared yet
          #FeatureID-ACAUTOCAS-368
  Scenario Outline: Validation of unsuccessful valuation initiation with duplicate valuation in CII for primary collateral <collateral_sub_type> of home loan application
    And application has primary collateral with collateral subtype as "<collateral_sub_type>"
    And verification valuation for the collateral is not initiated yet
    When user selects the home loan application of CII stage
    And user selects initiate Valuation Verification
    And user adds a valuation entry
    And user reads data from the excel file "CIIWorkBook.xlsx" under sheet "cii_valuatiom" and row <row_num>
    And user fills valuation type with duplicate agency
    And user initiate the valuation
    Then error message is displayed
    Examples:
      | collateral_sub_type                 | row_num |
      | Ready Property                      | 4       |
      | Construction On Land                | 4       |
      | Purchase a Plot                     | 4       |
      | Builder Property Under Construction | 4       |
      | Plot + Self Construction            | 4       |

  Scenario Outline: Validation of successfully delete multiple valuation in CII for primary collateral <collateral_sub_type> of home loan application
    And application has primary collateral with collateral subtype as "<collateral_sub_type>"
    And verification valuation for the collateral is not initiated yet
    When user selects the home loan application of CII stage
    And user selects initiate Valuation Verification
    And user reads data from the excel file "CIIWorkBook.xlsx" under sheet "cii_valuatiom" and row <row_num>
    And user adds multiple valuation entry
    And user deletes multiple valuation entry
    Then valuation deleted successfully
    Examples:
      | collateral_sub_type                 | row_num |
      | Ready Property                      | 3       |
      | Construction On Land                | 3       |
      | Purchase a Plot                     | 3       |
      | Builder Property Under Construction | 3       |
      | Plot + Self Construction            | 3       |

      #waive off valuation/ verification

  Scenario Outline:Validate waive off verification reason in CII for primary collateral <collateral_sub_type> of home loan application
    And application has primary collateral with collateral subtype as "<collateral_sub_type>"
    And verification valuation for the collateral is not initiated yet
    And reasons for waive off verification is configured in masters
    When user selects the home loan application of CII stage
    And user selects waive off valuation verification
    Then configured reasons are displayed in reason code
    Examples:
      | collateral_sub_type                 |
      | Ready Property                      |
      | Construction On Land                |
      | Purchase a Plot                     |
      | Builder Property Under Construction |
      | Plot + Self Construction            |

  Scenario Outline:Validate successful waive off verification in CII for primary collateral <collateral_sub_type> of home loan application
    And application has primary collateral with collateral subtype as "<collateral_sub_type>"
    And verification valuation for the collateral is not initiated yet
    And reasons for waive off verification is configured in masters
    When user selects the home loan application of CII stage
    And user reads data from the excel file "CIIWorkBook.xlsx" under sheet "cii_waiveoff_verification" and row <row_num>
    And user selects waive off valuation verification
    And user waive off verification reasons
    Then verification waived off successfully
    Examples:
      | collateral_sub_type                 | row_num |
      | Ready Property                      | 0       |
      | Construction On Land                | 0       |
      | Purchase a Plot                     | 0       |
      | Builder Property Under Construction | 0       |
      | Plot + Self Construction            | 0       |


  Scenario Outline:Validate successful waive off verification with multiple reasons in CII for primary collateral <collateral_sub_type> of home loan application
    And application has primary collateral with collateral subtype as "<collateral_sub_type>"
    And verification valuation for the collateral is not initiated yet
    And reasons for waive off verification is configured in masters
    When user selects the home loan application of CII stage
    And user reads data from the excel file "CIIWorkBook.xlsx" under sheet "cii_waiveoff_verification" and row <row_num>
    And user selects waive off valuation verification
    And user waive off verification with multiple reasons
    Then verification waived off successfully
    Examples:
      | collateral_sub_type                 | row_num |
      | Ready Property                      | 2       |
      | Construction On Land                | 2       |
      | Purchase a Plot                     | 2       |
      | Builder Property Under Construction | 2       |
      | Plot + Self Construction            | 2       |

  Scenario Outline:Validate unsuccessful waive off verification with duplicate reasons in CII for primary collateral <collateral_sub_type> of home loan application
    And application has primary collateral with collateral subtype as "<collateral_sub_type>"
    And verification valuation for the collateral is not initiated yet
    And reasons for waive off verification is configured in masters
    When user selects the home loan application of CII stage
    And user reads data from the excel file "CIIWorkBook.xlsx" under sheet "cii_waiveoff_verification" and row <row_num>
    And user selects waive off valuation verification
    And user waive off verification with duplicate reasons
    Then error message is displayed
    Examples:
      | collateral_sub_type                 | row_num |
      | Ready Property                      | 3       |
      | Construction On Land                | 3       |
      | Purchase a Plot                     | 3       |
      | Builder Property Under Construction | 3       |
      | Plot + Self Construction            | 3       |

