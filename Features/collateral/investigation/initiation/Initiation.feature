@Epic-Collateral_Investigation
@AuthoredBy-rsurya.kumar
@ReviewedBy-
@TechReviewedBy-

#  REFER TO THE ORIGINAL GWT WRITTEN

Feature: Collateral investigation initiation

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user is on collateral investigation initiation screen

  #FeatureID-ACAUTOCAS-363
  Scenario: ACAUTOCAS-5240:  user identifies application for collateral investigation carrying "Consumer Vehicle" and "Commercial Equipment"
    And user identifies an application "<ApplicationID>" carrying "<CollateralSubType>"
    When user selects the application to initiate the investigation
    Then user should be able to see collaterals attached with "Current Verification Status" as "<CurrentVerificationStatus>":
      | ApplicationID | CollateralSubType    | CurrentVerificationStatus  |
      | APPL00001129  | Consumer Vehicle     | Verification Not Initiated |
      | APPL00001129  | Commercial Equipment | Verification Not Initiated |

  #FeatureID-ACAUTOCAS-363
  Scenario Outline: ACAUTOCAS-5125:  user identifies application for collateral investigation carrying "Commercial Vehicle"
    And user identifies an application "<ApplicationID>" carrying "Commercial Vehicle"
    When user selects the application to initiate the investigation
    Then user should be able to see collaterals attached with "Current Verification Status" as "<CurrentVerificationStatus>"
    Examples:
      | ApplicationID | CurrentVerificationStatus  |
      | APPL00001130  | Verification Not Initiated |

  #FeatureID-ACAUTOCAS-363
  Scenario Outline: ACAUTOCAS-5126:  user identifies application for collateral investigation carrying "Consumer Durable"
    And user identifies an application "<ApplicationID>" carrying "Consumer Durable"
    When user selects the application to initiate the investigation
    Then user should be able to see collaterals attached with "Current Verification Status" as "<CurrentVerificationStatus>"
    Examples:
      | ApplicationID | CurrentVerificationStatus  |
      | APPL00001131  | Verification Not Initiated |

  #FeatureID-ACAUTOCAS-363
  Scenario: ACAUTOCAS-5241:  user identifies application for collateral investigation carrying "Tractor" and "Builder Property Under Construction"
    And user identifies an application "<ApplicationID>" carrying "<CollateralSubType>"
    When user selects the application to initiate the investigation
    Then user should be able to see collaterals attached with "Current Verification Status" as "<CurrentVerificationStatus>":
      | ApplicationID | CollateralSubType                   | CurrentVerificationStatus  |
      | APPL00001132  | Tractor                             | Verification Not Initiated |
      | APPL00001132  | Builder Property Under Construction | Verification Not Initiated |

  #FeatureID-ACAUTOCAS-363
  Scenario: ACAUTOCAS-5242:  user identifies application for collateral investigation carrying "Construction On Land" and "Plot Plus Self Construction"
    And user identifies an application "<ApplicationID>" carrying "<CollateralSubType>"
    When user selects the application to initiate the investigation
    Then user should be able to see collaterals attached with "Current Verification Status" as "<CurrentVerificationStatus>":
      | ApplicationID | CollateralNumber | CollateralSubType           | CurrentVerificationStatus  |
      | APPL00001133  | CMS00004283      | Construction On Land        | Verification Not Initiated |
      | APPL00001133  | CMS00004284      | Plot Plus Self Construction | Verification Not Initiated |

  #FeatureID-ACAUTOCAS-363
  Scenario Outline: ACAUTOCAS-5127:  user identifies application for collateral investigation carrying "Ready Property"
    And user identifies an application "<ApplicationID>" carrying "Ready Property"
    When user selects the application to initiate the investigation
    Then user should be able to see collaterals attached with "Current Verification Status" as "<CurrentVerificationStatus>"
    Examples:
      | ApplicationID | CurrentVerificationStatus  |
      | APPL00001134  | Verification Not Initiated |

  #FeatureID-ACAUTOCAS-363
  Scenario: ACAUTOCAS-5243:  user initiates collateral investigation for "Consumer Vehicle" and "Commercial Equipment"
    And user identifies an application "<ApplicationID>" carrying "<CollateralSubType>"
    And user selects the application to initiate the investigation
    And user sees below collaterals attached with "Current Verification Status" as "<CurrentVerificationStatus>":
      | ApplicationID | CollateralNumber | CollateralSubType    | CurrentVerificationStatus  |
      | APPL00001129  | CMS00004283      | Consumer Vehicle     | Verification Not Initiated |
      | APPL00001129  | CMS00004284      | Commercial Equipment | Verification Not Initiated |
    And user initiates valuation verification for
