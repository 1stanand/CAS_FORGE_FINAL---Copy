@Epic-Collateral_Investigation
#@AuthoredBy-vinod.pandey
@AuthoredBy-vipin.kishor
@ReviewedBy-
@ImplementedBy-
@TechReviewedBy-
@NotImplemented
Feature: Collateral Investigation Initiation For Secondary Collateral Of Auto Loan

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0

    #verification
    #FeatureID-ACAUTOCAS-369
  Scenario Outline: Validation of successful verification initiation with single agency in CII for primary collateral <collateral_sub_type> of auto loan application
    And application has primary collateral with collateral subtype as "<collateral_sub_type>"
    And verification valuation for the collateral is not initiated yet
    When user selects the auto loan application of CII stage
    And user selects initiate Valuation Verification
    And user adds a verification entry
    And user reads data from the excel file "CIIWorkBook.xlsx" under sheet "cii_verification" and row <row_num>
    And user fills verification Type with agency
    And user initiate the verification
    Then verification initiated successfully
    Examples:
      | collateral_sub_type  | row_num |
      | Consumer Vehicle     | 3       |
      | Commercial Vehicle   | 3       |
      | Consumer Durable     | 3       |
      | Tractor              | 3       |
      | Commercial Equipment | 3       |

          #FeatureID-ACAUTOCAS-369
  Scenario Outline: Validation of successful verification initiation with multiple agencies in CII for primary collateral <collateral_sub_type> of auto loan application
    And application has primary collateral with collateral subtype as "<collateral_sub_type>"
    And verification valuation for the collateral is not initiated yet
    When user selects the auto loan application of CII stage
    And user selects initiate Valuation Verification
    And user adds a verification entry
    And user reads data from the excel file "CIIWorkBook.xlsx" under sheet "cii_verification" and row <row_num>
    And user fills verification type with multiple agency
    And user initiate the verification
    Then verification initiated successfully
    Examples:
      | collateral_sub_type  | row_num |
      | Consumer Vehicle     | 4       |
      | Commercial Vehicle   | 4       |
      | Consumer Durable     | 4       |
      | Tractor              | 4       |
      | Commercial Equipment | 4       |

          #FeatureID-ACAUTOCAS-369
  Scenario Outline: Validation of unsuccessful verification initiation with duplicate agencies in CII for primary collateral <collateral_sub_type> of auto loan application
    And application has primary collateral with collateral subtype as "<collateral_sub_type>"
    And verification valuation for the collateral is not initiated yet
    When user selects the auto loan application of CII stage
    And user selects initiate Valuation Verification
    And user adds a verification entry
    And user reads data from the excel file "CIIWorkBook.xlsx" under sheet "cii_verification" and row <row_num>
    And user fills verification Type with duplicate agency
    And user initiate the verification
    Then error message is displayed
    Examples:
      | collateral_sub_type  | row_num |
      | Consumer Vehicle     | 5       |
      | Commercial Vehicle   | 5       |
      | Consumer Durable     | 5       |
      | Tractor              | 5       |
      | Commercial Equipment | 5       |
#FeatureID-ACAUTOCAS-369
  Scenario Outline: Validation of successfully delete multiple verifications in CII for primary collateral <collateral_sub_type> of auto loan application
    And application has primary collateral with collateral subtype as "<collateral_sub_type>"
    And verification valuation for the collateral is not initiated yet
    When user selects the auto loan application of CII stage
    And user selects initiate Valuation Verification
    And user reads data from the excel file "CIIWorkBook.xlsx" under sheet "cii_verification" and row <row_num>
    And user adds multiple verification entry
    And user deletes verification entry
    Then verification deleted successfully
    Examples:
      | collateral_sub_type  | row_num |
      | Consumer Vehicle     | 4       |
      | Commercial Vehicle   | 4       |
      | Consumer Durable     | 4       |
      | Tractor              | 4       |
      | Commercial Equipment | 4       |

    #Valuation
   # FeatureID-ACAUTOCAS-369
  Scenario Outline: Validation of successful valuation initiation with single agency in CII for primary collateral <collateral_sub_type> of auto loan application
    And application has primary collateral with collateral subtype as "<collateral_sub_type>"
    And verification valuation for the collateral is not initiated yet
    When user selects the auto loan application of CII stage
    And user selects initiate Valuation Verification
    And user adds a valuation entry
    And user reads data from the excel file "CIIWorkBook.xlsx" under sheet "cii_valuatiom" and row <row_num>
    And user fills valuation type with agency
    And user initiate the valuation
    Then valuation initiated successfully
    Examples:
      | collateral_sub_type  | row_num |
      | Consumer Vehicle     | 2       |
      | Commercial Vehicle   | 2       |
      | Consumer Durable     | 2       |
      | Tractor              | 2       |
      | Commercial Equipment | 2       |

      #data is not prepared yet
          #FeatureID-ACAUTOCAS-369
  Scenario Outline: Validation of successful valuation initiation with multiple agencies in CII for primary collateral <collateral_sub_type> of auto loan application
    And application has primary collateral with collateral subtype as "<collateral_sub_type>"
    And verification valuation for the collateral is not initiated yet
    When user selects the auto loan application of CII stage
    And user selects initiate Valuation Verification
    And user adds a valuation entry
    And user reads data from the excel file "CIIWorkBook.xlsx" under sheet "cii_valuatiom" and row <row_num>
    And user fills Valuation Type with multiple agency
    And user initiate the valuation
    Then valuation initiated successfully
    Examples:
      | collateral_sub_type  | row_num |
      | Consumer Vehicle     | 3       |
      | Commercial Vehicle   | 3       |
      | Consumer Durable     | 3       |
      | Tractor              | 3       |
      | Commercial Equipment | 3       |

      #data is not prepared yet
          #FeatureID-ACAUTOCAS-369
  Scenario Outline: Validation of unsuccessful valuation initiation with duplicate valuation in CII for primary collateral <collateral_sub_type> of auto loan application
    And application has primary collateral with collateral subtype as "<collateral_sub_type>"
    And verification valuation for the collateral is not initiated yet
    When user selects the auto loan application of CII stage
    And user selects initiate Valuation Verification
    And user adds a valuation entry
    And user reads data from the excel file "CIIWorkBook.xlsx" under sheet "cii_valuatiom" and row <row_num>
    And user fills valuation type with duplicate agency
    And user initiate the valuation
    Then error message is displayed
    Examples:
      | collateral_sub_type  | row_num |
      | Consumer Vehicle     | 4       |
      | Commercial Vehicle   | 4       |
      | Consumer Durable     | 4       |
      | Tractor              | 4       |
      | Commercial Equipment | 4       |

#FeatureID-ACAUTOCAS-369
  Scenario Outline: Validation of successfully delete multiple valuation in CII for primary collateral <collateral_sub_type> of auto loan application
    And application has primary collateral with collateral subtype as "<collateral_sub_type>"
    And verification valuation for the collateral is not initiated yet
    When user selects the auto loan application of CII stage
    And user selects initiate Valuation Verification
    And user reads data from the excel file "CIIWorkBook.xlsx" under sheet "cii_valuatiom" and row <row_num>
    And user adds multiple valuation entry
    And user deletes multiple valuation entry
    Then valuation deleted successfully
    Examples:
      | collateral_sub_type  | row_num |
      | Consumer Vehicle     | 3       |
      | Commercial Vehicle   | 3       |
      | Consumer Durable     | 3       |
      | Tractor              | 3       |
      | Commercial Equipment | 3       |

      #waive off valuation/ verification
#FeatureID-ACAUTOCAS-369
  Scenario Outline:Validate waive off verification reason in CII for primary collateral <collateral_sub_type> of auto loan application
    And application has primary collateral with collateral subtype as "<collateral_sub_type>"
    And verification valuation for the collateral is not initiated yet
    And reasons for waive off verification is configured in masters
    When user selects the auto loan application of CII stage
    And user selects waive off valuation verification
    Then configured reasons are displayed in reason code
    Examples:
      | collateral_sub_type  |
      | Consumer Vehicle     |
      | Commercial Vehicle   |
      | Consumer Durable     |
      | Tractor              |
      | Commercial Equipment |

#FeatureID-ACAUTOCAS-369
  Scenario Outline:Validate successful waive off verification in CII for primary collateral <collateral_sub_type> of auto loan application
    And application has primary collateral with collateral subtype as "<collateral_sub_type>"
    And verification valuation for the collateral is not initiated yet
    And reasons for waive off verification is configured in masters
    When user selects the auto loan application of CII stage
    And user reads data from the excel file "CIIWorkBook.xlsx" under sheet "cii_waiveoff_verification" and row <row_num>
    And user selects waive off valuation verification
    And user waive off verification reasons
    Then verification waived off successfully
    Examples:
      | collateral_sub_type  | row_num |
      | Consumer Vehicle     | 0       |
      | Commercial Vehicle   | 0       |
      | Consumer Durable     | 0       |
      | Tractor              | 0       |
      | Commercial Equipment | 0       |

#FeatureID-ACAUTOCAS-369
  Scenario Outline:Validate successful waive off verification with multiple reasons in CII for primary collateral <collateral_sub_type> of auto loan application
    And application has primary collateral with collateral subtype as "<collateral_sub_type>"
    And verification valuation for the collateral is not initiated yet
    And reasons for waive off verification is configured in masters
    When user selects the auto loan application of CII stage
    And user reads data from the excel file "CIIWorkBook.xlsx" under sheet "cii_waiveoff_verification" and row <row_num>
    And user selects waive off valuation verification
    And user waive off verification with multiple reasons
    Then verification waived off successfully
    Examples:
      | collateral_sub_type  | row_num |
      | Consumer Vehicle     | 2       |
      | Commercial Vehicle   | 2       |
      | Consumer Durable     | 2       |
      | Tractor              | 2       |
      | Commercial Equipment | 2       |

 #FeatureID-ACAUTOCAS-369
  Scenario Outline:Validate unsuccessful waive off verification with duplicate reasons in CII for primary collateral <collateral_sub_type> of auto loan application
    And application has primary collateral with collateral subtype as "<collateral_sub_type>"
    And verification valuation for the collateral is not initiated yet
    And reasons for waive off verification is configured in masters
    When user selects the auto loan application of CII stage
    And user reads data from the excel file "CIIWorkBook.xlsx" under sheet "cii_waiveoff_verification" and row <row_num>
    And user selects waive off valuation verification
    And user waive off verification with duplicate reasons
    Then error message is displayed
    Examples:
      | collateral_sub_type  | row_num |
      | Consumer Vehicle     | 3       |
      | Commercial Vehicle   | 3       |
      | Consumer Durable     | 3       |
      | Tractor              | 3       |
      | Commercial Equipment | 3       |

