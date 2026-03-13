@Epic-VAP
@AuthoredBy-sajja.ravikumar
#OriginalAuthor-rajni.gola
@ReviewedBy-
@ImplementedBy-
@TechReviewedBy-

@NotImplemented

Feature: Validate VAP Details Validations for Insurance VAP Category at Credit Approval stage

  Background:
    Given User is logged in CAS with "<SourceDataFile>" under "<SheetName>" and "<RowNumber>"
    And user has configured VAP policy for product mapped in the application in Product master
    And user has configured VAP policy for scheme mapped in the application in Scheme master
    And user has configured VAP Parameter Policy, VAP Amount Computation Policy, VAP Payout Computation Policy, VAP Policy masters under CAS - Common Masters

  #FeatureID-ACAUTOCAS-207
  Scenario Outline: Data validation on VAP Details page for VAP type Asset Insurance at row number "<VAPRowNumber>" for "<ValidationField>" field
    And user open an application from workbook "VAPDetailsValidate.xlsx" under sheet "vap_category_insurance" for row number "<RowNumber>"
    When user goes to "VAP details" from "3 dots option"
    And user selects vap product of vap type "Asset Insurance"
    And user enters data from workbook "VAPDetailsValidate.xlsx" under sheet "vap_details_insurance" for row number "<VAPRowNumber>"
    And user enters data from workbook "VAPDetailsValidate.xlsx" under sheet "nominee_details" for row number "<NomineeRowNumber>"
    And user saves the data
    Then user should be able to "<SuccessFailure>" save data for the field "<ValidationField>" with message
    #"<SuccessFailureReason>" for the field "<ValidationField>"
    Examples:
      | RowNumber | VAPRowNumber | NomineeRowNumber | SuccessFailure | ValidationField          |
      | 2         | 0            | 0                | successfully   | Collateral Id            |
      | 2         | 1            | 0                | successfully   | VAP Treatment            |
      | 2         | 2            | 0                | successfully   | Bought From              |
      | 2         | 3            | 0                | successfully   | Disburse To              |
      | 2         | 4            | 0                | successfully   | Policy Number            |
      | 2         | 5            | 0                | successfully   | VAP Amount               |
      | 2         | 6            | 0                | successfully   | Differential Amount      |
      | 2         | 7            | 0                | successfully   | Cover Note Number        |
      | 2         | 8            | 0                | successfully   | Cover Note Creation Date |
      | 2         | 9            | 0                | successfully   | Start Date               |
      | 2         | 10           | 0                | successfully   | Maturity Date            |
      | 2         | 11           | 0                | successfully   | Coverage Type            |
      | 2         | 12           | 0                | successfully   | Coverage Amount          |
      | 2         | 13           | 0                | successfully   | Premium Amount           |
      | 2         | 14           | 0                | successfully   | Loss Payee               |
      | 2         | 15           | 0                | unsuccessfully | Collateral Id            |
      | 2         | 16           | 0                | unsuccessfully | Collateral Id            |
      | 2         | 17           | 0                | unsuccessfully | VAP Treatment            |
      | 2         | 18           | 0                | unsuccessfully | VAP Treatment            |
      | 2         | 19           | 0                | unsuccessfully | VAP Amount               |
      | 2         | 20           | 0                | unsuccessfully | VAP Amount               |
      | 2         | 21           | 0                | unsuccessfully | VAP Amount               |
      | 2         | 22           | 0                | unsuccessfully | VAP Amount               |
      | 2         | 23           | 0                | unsuccessfully | VAP Amount               |
      | 2         | 24           | 0                | unsuccessfully | Differential Amount      |
      | 2         | 25           | 0                | unsuccessfully | Differential Amount      |
      | 2         | 26           | 0                | unsuccessfully | Differential Amount      |
      | 2         | 27           | 0                | unsuccessfully | Differential Amount      |
      | 2         | 28           | 0                | successfully   | Differential Amount      |
      | 2         | 29           | 0                | unsuccessfully | Cover Note Number        |
      | 2         | 30           | 0                | unsuccessfully | Cover Note Number        |
      | 2         | 31           | 0                | unsuccessfully | Cover Note Number        |
      | 2         | 32           | 0                | unsuccessfully | Cover Note Number        |
      | 2         | 33           | 0                | unsuccessfully | Cover Note Number        |
      | 2         | 34           | 0                | unsuccessfully | Cover Note Number        |
      | 2         | 35           | 0                | successfully   | Cover Note Number        |
      | 2         | 36           | 0                | unsuccessfully | Cover Note Creation Date |
      | 2         | 37           | 0                | unsuccessfully | Cover Note Creation Date |
      | 2         | 38           | 0                | unsuccessfully | Policy Number            |
      | 2         | 39           | 0                | unsuccessfully | Policy Number            |
      | 2         | 40           | 0                | unsuccessfully | Policy Number            |
      | 2         | 41           | 0                | unsuccessfully | Policy Number            |
      | 2         | 42           | 0                | unsuccessfully | Policy Number            |
      | 2         | 43           | 0                | unsuccessfully | Policy Number            |
      | 2         | 44           | 0                | successfully   | Policy Number            |
      | 2         | 45           | 0                | unsuccessfully | Bought From              |
      | 2         | 46           | 0                | unsuccessfully | Disburse To              |
      | 2         | 47           | 0                | unsuccessfully | Disburse To              |
      | 2         | 48           | 0                | unsuccessfully | Start Date               |
      | 2         | 49           | 0                | unsuccessfully | Start Date               |
      | 2         | 50           | 0                | unsuccessfully | Maturity Date            |
      | 2         | 51           | 0                | unsuccessfully | Maturity Date            |
      | 2         | 52           | 0                | unsuccessfully | Maturity Date            |
      | 2         | 52           | 0                | unsuccessfully | Maturity Date            |
      | 2         | 54           | 0                | unsuccessfully | Coverage Type            |
      | 2         | 55           | 0                | unsuccessfully | Coverage Amount          |
      | 2         | 56           | 0                | unsuccessfully | Coverage Amount          |
      | 2         | 57           | 0                | unsuccessfully | Coverage Amount          |
      | 2         | 58           | 0                | unsuccessfully | Coverage Amount          |
      | 2         | 59           | 0                | unsuccessfully | Coverage Amount          |
      | 2         | 60           | 0                | unsuccessfully | Coverage Amount          |
      | 2         | 61           | 0                | unsuccessfully | Premium Amount           |
      | 2         | 62           | 0                | unsuccessfully | Premium Amount           |
      | 2         | 63           | 0                | unsuccessfully | Premium Amount           |
      | 2         | 64           | 0                | unsuccessfully | Premium Amount           |
      | 2         | 65           | 0                | unsuccessfully | Premium Amount           |
      | 2         | 66           | 0                | unsuccessfully | Premium Amount           |
      | 2         | 67           | 0                | unsuccessfully | Loss Payee               |
      | 2         | 68           | 0                | unsuccessfully | Loss Payee               |
      | 2         | 69           | 0                | unsuccessfully | Loss Payee               |
      | 2         | 70           | 0                | unsuccessfully | Loss Payee               |
      | 2         | 71           | 0                | unsuccessfully | Quantity                 |
      | 2         | 72           | 0                | unsuccessfully | Quantity                 |
      | 2         | 73           | 0                | successfully   | All                      |

 #FeatureID-ACAUTOCAS-207
  Scenario Outline: Data validation on VAP Details page for VAP type GAP Insurance at row number "<VAPRowNumber>" for "<ValidationField>" field
    And user open an application from workbook "VAPDetailsValidate.xlsx" under sheet "vap_category_insurance" for row number "<RowNumber>"
    When user goes to "VAP details" from "3 dots option"
    And user selects vap product of vap type "GAP Insurance"
    And user enters data from workbook "VAPDetailsValidate.xlsx" under sheet "vap_details_insurance" for row number "<VAPRowNumber>"
    And user enters data from workbook "VAPDetailsValidate.xlsx" under sheet "nominee_details" for row number "<NomineeRowNumber>"
    And user saves the data
    Then user should be able to "<SuccessFailure>" save data for the field "<ValidationField>" with message
    #  "<SuccessFailureReason>" for the field "<ValidationField>"
    Examples:
      | RowNumber | VAPRowNumber | NomineeRowNumber | SuccessFailure | ValidationField          |
      | 9         | 15           | 0                | unsuccessfully | Collateral Id            |
      | 9         | 16           | 0                | unsuccessfully | Collateral Id            |
      | 9         | 17           | 0                | unsuccessfully | VAP Treatment            |
      | 9         | 18           | 0                | unsuccessfully | VAP Treatment            |
      | 9         | 19           | 0                | unsuccessfully | VAP Amount               |
      | 9         | 20           | 0                | unsuccessfully | VAP Amount               |
      | 9         | 21           | 0                | unsuccessfully | VAP Amount               |
      | 9         | 22           | 0                | unsuccessfully | VAP Amount               |
      | 9         | 23           | 0                | unsuccessfully | VAP Amount               |
      | 9         | 24           | 0                | unsuccessfully | Differential Amount      |
      | 9         | 25           | 0                | unsuccessfully | Differential Amount      |
      | 9         | 26           | 0                | unsuccessfully | Differential Amount      |
      | 9         | 27           | 0                | unsuccessfully | Differential Amount      |
      | 9         | 29           | 0                | unsuccessfully | Cover Note Number        |
      | 9         | 30           | 0                | unsuccessfully | Cover Note Number        |
      | 9         | 31           | 0                | unsuccessfully | Cover Note Number        |
      | 9         | 32           | 0                | unsuccessfully | Cover Note Number        |
      | 9         | 33           | 0                | unsuccessfully | Cover Note Number        |
      | 9         | 34           | 0                | unsuccessfully | Cover Note Number        |
      | 9         | 36           | 0                | unsuccessfully | Cover Note Creation Date |
      | 9         | 37           | 0                | unsuccessfully | Cover Note Creation Date |
      | 9         | 38           | 0                | unsuccessfully | Policy Number            |
      | 9         | 39           | 0                | unsuccessfully | Policy Number            |
      | 9         | 40           | 0                | unsuccessfully | Policy Number            |
      | 9         | 41           | 0                | unsuccessfully | Policy Number            |
      | 9         | 42           | 0                | unsuccessfully | Policy Number            |
      | 9         | 43           | 0                | unsuccessfully | Policy Number            |
      | 9         | 45           | 0                | unsuccessfully | Bought From              |
      | 9         | 46           | 0                | unsuccessfully | Disburse To              |
      | 9         | 47           | 0                | unsuccessfully | Disburse To              |
      | 9         | 48           | 0                | unsuccessfully | Start Date               |
      | 9         | 49           | 0                | unsuccessfully | Start Date               |
      | 9         | 50           | 0                | unsuccessfully | Maturity Date            |
      | 9         | 51           | 0                | unsuccessfully | Maturity Date            |
      | 9         | 52           | 0                | unsuccessfully | Maturity Date            |
      | 9         | 52           | 0                | unsuccessfully | Maturity Date            |
      | 9         | 54           | 0                | unsuccessfully | Coverage Type            |
      | 9         | 55           | 0                | unsuccessfully | Coverage Amount          |
      | 9         | 56           | 0                | unsuccessfully | Coverage Amount          |
      | 9         | 57           | 0                | unsuccessfully | Coverage Amount          |
      | 9         | 58           | 0                | unsuccessfully | Coverage Amount          |
      | 9         | 59           | 0                | unsuccessfully | Coverage Amount          |
      | 9         | 60           | 0                | unsuccessfully | Coverage Amount          |
      | 9         | 61           | 0                | unsuccessfully | Premium Amount           |
      | 9         | 62           | 0                | unsuccessfully | Premium Amount           |
      | 9         | 63           | 0                | unsuccessfully | Premium Amount           |
      | 9         | 64           | 0                | unsuccessfully | Premium Amount           |
      | 9         | 65           | 0                | unsuccessfully | Premium Amount           |
      | 9         | 66           | 0                | unsuccessfully | Premium Amount           |
      | 9         | 71           | 0                | unsuccessfully | Quantity                 |
      | 9         | 72           | 0                | unsuccessfully | Quantity                 |
      | 9         | 74           | 0                | unsuccessfully | Date Of Delivery         |
      | 9         | 75           | 0                | unsuccessfully | Date Of Delivery         |
      | 9         | 76           | 0                | unsuccessfully | Distance Covered         |
      | 9         | 77           | 0                | unsuccessfully | Distance Covered         |
      | 9         | 78           | 0                | unsuccessfully | Distance Covered         |
      | 9         | 85           | 0                | successfully   | Mandatory                |
      | 9         | 86           | 0                | successfully   | All                      |

 #FeatureID-ACAUTOCAS-207
  Scenario Outline: Data validation on VAP Details page for VAP type Life Insurance at row number "<VAPRowNumber>" for "<ValidationField>" field
    And user open an application from workbook "VAPDetailsValidate.xlsx" under sheet "vap_category_insurance" for row number "<RowNumber>"
    When user goes to "VAP details" from "3 dots option"
    And user selects vap product of vap type "Life Insurance"
    And user enters data from workbook "VAPDetailsValidate.xlsx" under sheet "vap_details_insurance" for row number "<VAPRowNumber>"
    And user enters data from workbook "VAPDetailsValidate.xlsx" under sheet "nominee_details" for row number "<NomineeRowNumber>"
    And user saves the data
    Then user should be able to "<SuccessFailure>" save data for the field "<ValidationField>" with message
    #"<SuccessFailureReason>" for the field "<ValidationField>"
    Examples:
      | RowNumber | VAPRowNumber | NomineeRowNumber | SuccessFailure | ValidationField          |
      | 16        | 17           | 0                | unsuccessfully | VAP Treatment            |
      | 16        | 18           | 0                | unsuccessfully | VAP Treatment            |
      | 16        | 19           | 0                | unsuccessfully | VAP Amount               |
      | 16        | 20           | 0                | unsuccessfully | VAP Amount               |
      | 16        | 21           | 0                | unsuccessfully | VAP Amount               |
      | 16        | 22           | 0                | unsuccessfully | VAP Amount               |
      | 16        | 23           | 0                | unsuccessfully | VAP Amount               |
      | 16        | 24           | 0                | unsuccessfully | Differential Amount      |
      | 16        | 25           | 0                | unsuccessfully | Differential Amount      |
      | 16        | 26           | 0                | unsuccessfully | Differential Amount      |
      | 16        | 27           | 0                | unsuccessfully | Differential Amount      |
      | 16        | 29           | 0                | unsuccessfully | Cover Note Number        |
      | 16        | 30           | 0                | unsuccessfully | Cover Note Number        |
      | 16        | 31           | 0                | unsuccessfully | Cover Note Number        |
      | 16        | 32           | 0                | unsuccessfully | Cover Note Number        |
      | 16        | 33           | 0                | unsuccessfully | Cover Note Number        |
      | 16        | 34           | 0                | unsuccessfully | Cover Note Number        |
      | 16        | 36           | 0                | unsuccessfully | Cover Note Creation Date |
      | 16        | 37           | 0                | unsuccessfully | Cover Note Creation Date |
      | 16        | 38           | 0                | unsuccessfully | Policy Number            |
      | 16        | 39           | 0                | unsuccessfully | Policy Number            |
      | 16        | 40           | 0                | unsuccessfully | Policy Number            |
      | 16        | 41           | 0                | unsuccessfully | Policy Number            |
      | 16        | 42           | 0                | unsuccessfully | Policy Number            |
      | 16        | 43           | 0                | unsuccessfully | Policy Number            |
      | 16        | 45           | 0                | unsuccessfully | Bought From              |
      | 16        | 46           | 0                | unsuccessfully | Disburse To              |
      | 16        | 47           | 0                | unsuccessfully | Disburse To              |
      | 16        | 48           | 0                | unsuccessfully | Start Date               |
      | 16        | 49           | 0                | unsuccessfully | Start Date               |
      | 16        | 50           | 0                | unsuccessfully | Maturity Date            |
      | 16        | 51           | 0                | unsuccessfully | Maturity Date            |
      | 16        | 52           | 0                | unsuccessfully | Maturity Date            |
      | 16        | 53           | 0                | unsuccessfully | Maturity Date            |
      | 16        | 54           | 0                | unsuccessfully | Coverage Type            |
      | 16        | 55           | 0                | unsuccessfully | Coverage Amount          |
      | 16        | 56           | 0                | unsuccessfully | Coverage Amount          |
      | 16        | 57           | 0                | unsuccessfully | Coverage Amount          |
      | 16        | 58           | 0                | unsuccessfully | Coverage Amount          |
      | 16        | 59           | 0                | unsuccessfully | Coverage Amount          |
      | 16        | 60           | 0                | unsuccessfully | Coverage Amount          |
      | 16        | 61           | 0                | unsuccessfully | Premium Amount           |
      | 16        | 62           | 0                | unsuccessfully | Premium Amount           |
      | 16        | 63           | 0                | unsuccessfully | Premium Amount           |
      | 16        | 64           | 0                | unsuccessfully | Premium Amount           |
      | 16        | 65           | 0                | unsuccessfully | Premium Amount           |
      | 16        | 66           | 0                | unsuccessfully | Premium Amount           |
      | 16        | 71           | 0                | unsuccessfully | Quantity                 |
      | 16        | 72           | 0                | unsuccessfully | Quantity                 |
      | 16        | 87           | 0                | successfully   | Mandatory                |
      | 16        | 88           | 0                | successfully   | All                      |

 #FeatureID-ACAUTOCAS-207
  Scenario Outline: Data validation on VAP Details page for VAP type Payment Protection at row number "<VAPRowNumber>" for "<ValidationField>" field
    And user open an application from workbook "VAPDetailsValidate.xlsx" under sheet "vap_category_insurance" for row number "<RowNumber>"
    When user goes to "VAP details" from "3 dots option"
    And user selects vap product of vap type "Payment Protection"
    And user enters data from workbook "VAPDetailsValidate.xlsx" under sheet "vap_details_insurance" for row number "<VAPRowNumber>"
    And user enters data from workbook "VAPDetailsValidate.xlsx" under sheet "nominee_details" for row number "<NomineeRowNumber>"
    And user saves the data
    Then user should be able to "<SuccessFailure>" save data for the field "<ValidationField>" with message
    #"<SuccessFailureReason>" for the field "<ValidationField>"
    Examples:
      | RowNumber | VAPRowNumber | NomineeRowNumber | SuccessFailure | ValidationField          |
      | 23        | 17           | 0                | unsuccessfully | VAP Treatment            |
      | 23        | 18           | 0                | unsuccessfully | VAP Treatment            |
      | 23        | 19           | 0                | unsuccessfully | VAP Amount               |
      | 23        | 20           | 0                | unsuccessfully | VAP Amount               |
      | 23        | 21           | 0                | unsuccessfully | VAP Amount               |
      | 23        | 22           | 0                | unsuccessfully | VAP Amount               |
      | 23        | 23           | 0                | unsuccessfully | VAP Amount               |
      | 23        | 24           | 0                | unsuccessfully | Differential Amount      |
      | 23        | 25           | 0                | unsuccessfully | Differential Amount      |
      | 23        | 26           | 0                | unsuccessfully | Differential Amount      |
      | 23        | 27           | 0                | unsuccessfully | Differential Amount      |
      | 23        | 29           | 0                | unsuccessfully | Cover Note Number        |
      | 23        | 30           | 0                | unsuccessfully | Cover Note Number        |
      | 23        | 31           | 0                | unsuccessfully | Cover Note Number        |
      | 23        | 32           | 0                | unsuccessfully | Cover Note Number        |
      | 23        | 33           | 0                | unsuccessfully | Cover Note Number        |
      | 23        | 34           | 0                | unsuccessfully | Cover Note Number        |
      | 23        | 36           | 0                | unsuccessfully | Cover Note Creation Date |
      | 23        | 37           | 0                | unsuccessfully | Cover Note Creation Date |
      | 23        | 38           | 0                | unsuccessfully | Policy Number            |
      | 23        | 39           | 0                | unsuccessfully | Policy Number            |
      | 23        | 40           | 0                | unsuccessfully | Policy Number            |
      | 23        | 41           | 0                | unsuccessfully | Policy Number            |
      | 23        | 42           | 0                | unsuccessfully | Policy Number            |
      | 23        | 43           | 0                | unsuccessfully | Policy Number            |
      | 23        | 45           | 0                | unsuccessfully | Bought From              |
      | 23        | 46           | 0                | unsuccessfully | Disburse To              |
      | 23        | 47           | 0                | unsuccessfully | Disburse To              |
      | 23        | 48           | 0                | unsuccessfully | Start Date               |
      | 23        | 49           | 0                | unsuccessfully | Start Date               |
      | 23        | 50           | 0                | unsuccessfully | Maturity Date            |
      | 23        | 51           | 0                | unsuccessfully | Maturity Date            |
      | 23        | 52           | 0                | unsuccessfully | Maturity Date            |
      | 23        | 53           | 0                | unsuccessfully | Maturity Date            |
      | 23        | 54           | 0                | unsuccessfully | Coverage Type            |
      | 23        | 55           | 0                | unsuccessfully | Coverage Amount          |
      | 23        | 56           | 0                | unsuccessfully | Coverage Amount          |
      | 23        | 57           | 0                | unsuccessfully | Coverage Amount          |
      | 23        | 58           | 0                | unsuccessfully | Coverage Amount          |
      | 23        | 59           | 0                | unsuccessfully | Coverage Amount          |
      | 23        | 60           | 0                | unsuccessfully | Coverage Amount          |
      | 23        | 61           | 0                | unsuccessfully | Premium Amount           |
      | 23        | 62           | 0                | unsuccessfully | Premium Amount           |
      | 23        | 63           | 0                | unsuccessfully | Premium Amount           |
      | 23        | 64           | 0                | unsuccessfully | Premium Amount           |
      | 23        | 65           | 0                | unsuccessfully | Premium Amount           |
      | 23        | 66           | 0                | unsuccessfully | Premium Amount           |
      | 23        | 71           | 0                | unsuccessfully | Quantity                 |
      | 23        | 72           | 0                | unsuccessfully | Quantity                 |
      | 23        | 89           | 0                | successfully   | Mandatory                |
      | 23        | 90           | 0                | successfully   | All                      |

 #FeatureID-ACAUTOCAS-207
  Scenario Outline: Data validation on VAP Details page for VAP type Credit Protection at row number "<VAPRowNumber>" for "<ValidationField>" field
    And user open an application from workbook "VAPDetailsValidate.xlsx" under sheet "vap_category_insurance" for row number "<RowNumber>"
    When user goes to "VAP details" from "3 dots option"
    And user selects vap product of vap type "Credit Protection"
    And user enters data from workbook "VAPDetailsValidate.xlsx" under sheet "vap_details_insurance" for row number "<VAPRowNumber>"
    And user enters data from workbook "VAPDetailsValidate.xlsx" under sheet "nominee_details" for row number "<NomineeRowNumber>"
    And user saves the data
    Then user should be able to "<SuccessFailure>" save data for the field "<ValidationField>" with message
#"<SuccessFailureReason>" for the field "<ValidationField>"
    Examples:
      | RowNumber | VAPRowNumber | NomineeRowNumber | SuccessFailure | ValidationField          |
      | 30        | 17           | 0                | unsuccessfully | VAP Treatment            |
      | 30        | 18           | 0                | unsuccessfully | VAP Treatment            |
      | 30        | 19           | 0                | unsuccessfully | VAP Amount               |
      | 30        | 20           | 0                | unsuccessfully | VAP Amount               |
      | 30        | 21           | 0                | unsuccessfully | VAP Amount               |
      | 30        | 22           | 0                | unsuccessfully | VAP Amount               |
      | 30        | 23           | 0                | unsuccessfully | VAP Amount               |
      | 30        | 24           | 0                | unsuccessfully | Differential Amount      |
      | 30        | 25           | 0                | unsuccessfully | Differential Amount      |
      | 30        | 26           | 0                | unsuccessfully | Differential Amount      |
      | 30        | 27           | 0                | unsuccessfully | Differential Amount      |
      | 30        | 29           | 0                | unsuccessfully | Cover Note Number        |
      | 30        | 30           | 0                | unsuccessfully | Cover Note Number        |
      | 30        | 31           | 0                | unsuccessfully | Cover Note Number        |
      | 30        | 32           | 0                | unsuccessfully | Cover Note Number        |
      | 30        | 33           | 0                | unsuccessfully | Cover Note Number        |
      | 30        | 34           | 0                | unsuccessfully | Cover Note Number        |
      | 30        | 36           | 0                | unsuccessfully | Cover Note Creation Date |
      | 30        | 37           | 0                | unsuccessfully | Cover Note Creation Date |
      | 30        | 38           | 0                | unsuccessfully | Policy Number            |
      | 30        | 39           | 0                | unsuccessfully | Policy Number            |
      | 30        | 40           | 0                | unsuccessfully | Policy Number            |
      | 30        | 41           | 0                | unsuccessfully | Policy Number            |
      | 30        | 42           | 0                | unsuccessfully | Policy Number            |
      | 30        | 43           | 0                | unsuccessfully | Policy Number            |
      | 30        | 45           | 0                | unsuccessfully | Bought From              |
      | 30        | 46           | 0                | unsuccessfully | Disburse To              |
      | 30        | 47           | 0                | unsuccessfully | Disburse To              |
      | 30        | 48           | 0                | unsuccessfully | Start Date               |
      | 30        | 49           | 0                | unsuccessfully | Start Date               |
      | 30        | 50           | 0                | unsuccessfully | Maturity Date            |
      | 30        | 51           | 0                | unsuccessfully | Maturity Date            |
      | 30        | 52           | 0                | unsuccessfully | Maturity Date            |
      | 30        | 53           | 0                | unsuccessfully | Maturity Date            |
      | 30        | 54           | 0                | unsuccessfully | Coverage Type            |
      | 30        | 55           | 0                | unsuccessfully | Coverage Amount          |
      | 30        | 56           | 0                | unsuccessfully | Coverage Amount          |
      | 30        | 57           | 0                | unsuccessfully | Coverage Amount          |
      | 30        | 58           | 0                | unsuccessfully | Coverage Amount          |
      | 30        | 59           | 0                | unsuccessfully | Coverage Amount          |
      | 30        | 60           | 0                | unsuccessfully | Coverage Amount          |
      | 30        | 61           | 0                | unsuccessfully | Premium Amount           |
      | 30        | 62           | 0                | unsuccessfully | Premium Amount           |
      | 30        | 63           | 0                | unsuccessfully | Premium Amount           |
      | 30        | 64           | 0                | unsuccessfully | Premium Amount           |
      | 30        | 65           | 0                | unsuccessfully | Premium Amount           |
      | 30        | 66           | 0                | unsuccessfully | Premium Amount           |
      | 30        | 71           | 0                | unsuccessfully | Quantity                 |
      | 30        | 72           | 0                | unsuccessfully | Quantity                 |
      | 30        | 91           | 0                | successfully   | Mandatory                |
      | 30        | 92           | 0                | successfully   | All                      |

