@Epic-VAP
@AuthoredBy-sajja.ravikumar
#OriginalAuthor-rajni.gola
@ReviewedBy-
@ImplementedBy-
@TechReviewedBy-

@NotImplemented

Feature: Validate VAP Details Validations for Insurance VAP Category at Recommendation stage

  Background:
    Given User is logged in CAS with "<SourceDataFile>" under "<SheetName>" and "<RowNumber>"
    And user has configured VAP policy for product mapped in the application in Product master
    And user has configured VAP policy for scheme mapped in the application in Scheme master
    And user has configured VAP Parameter Policy, VAP Amount Computation Policy, VAP Payout Computation Policy, VAP Policy masters under CAS - Common Masters

  #FeatureID-ACAUTOCAS-207
  Scenario Outline: Data validation on VAP Details page for VAP type Asset Insurance at row number "<VAPRowNumber>" for "<ValidationField>" field
    And user open an application from workbook "VAPDetailsValidate.xlsx" under sheet "vap_category_insurance" for row number "<RowNumber>"
    When user clicks on "VAP Details" link from "Loan Information" section
    And user selects vap product of vap type "Asset Insurance"
    And user enters data from workbook "VAPDetailsValidate.xlsx" under sheet "vap_details_insurance" for row number "<VAPRowNumber>"
    And user enters data from workbook "VAPDetailsValidate.xlsx" under sheet "nominee_details" for row number "<NomineeRowNumber>"
    And user saves the data
    Then user should be able to "<SuccessFailure>" save data for the field "<ValidationField>" with message
    #"<SuccessFailureReason>" for the field "<ValidationField>"
    Examples:
      | RowNumber | VAPRowNumber | NomineeRowNumber | SuccessFailure | ValidationField          |
      | 1         | 0            | 0                | successfully   | Collateral Id            |
      | 1         | 1            | 0                | successfully   | VAP Treatment            |
      | 1         | 2            | 0                | successfully   | Bought From              |
      | 1         | 3            | 0                | successfully   | Disburse To              |
      | 1         | 4            | 0                | successfully   | Policy Number            |
      | 1         | 5            | 0                | successfully   | VAP Amount               |
      | 1         | 6            | 0                | successfully   | Differential Amount      |
      | 1         | 7            | 0                | successfully   | Cover Note Number        |
      | 1         | 8            | 0                | successfully   | Cover Note Creation Date |
      | 1         | 9            | 0                | successfully   | Start Date               |
      | 1         | 10           | 0                | successfully   | Maturity Date            |
      | 1         | 11           | 0                | successfully   | Coverage Type            |
      | 1         | 12           | 0                | successfully   | Coverage Amount          |
      | 1         | 13           | 0                | successfully   | Premium Amount           |
      | 1         | 14           | 0                | successfully   | Loss Payee               |
      | 1         | 15           | 0                | unsuccessfully | Collateral Id            |
      | 1         | 16           | 0                | unsuccessfully | Collateral Id            |
      | 1         | 17           | 0                | unsuccessfully | VAP Treatment            |
      | 1         | 18           | 0                | unsuccessfully | VAP Treatment            |
      | 1         | 19           | 0                | unsuccessfully | VAP Amount               |
      | 1         | 20           | 0                | unsuccessfully | VAP Amount               |
      | 1         | 21           | 0                | unsuccessfully | VAP Amount               |
      | 1         | 22           | 0                | unsuccessfully | VAP Amount               |
      | 1         | 23           | 0                | unsuccessfully | VAP Amount               |
      | 1         | 24           | 0                | unsuccessfully | Differential Amount      |
      | 1         | 25           | 0                | unsuccessfully | Differential Amount      |
      | 1         | 26           | 0                | unsuccessfully | Differential Amount      |
      | 1         | 27           | 0                | unsuccessfully | Differential Amount      |
      | 1         | 28           | 0                | successfully   | Differential Amount      |
      | 1         | 29           | 0                | unsuccessfully | Cover Note Number        |
      | 1         | 30           | 0                | unsuccessfully | Cover Note Number        |
      | 1         | 31           | 0                | unsuccessfully | Cover Note Number        |
      | 1         | 32           | 0                | unsuccessfully | Cover Note Number        |
      | 1         | 33           | 0                | unsuccessfully | Cover Note Number        |
      | 1         | 34           | 0                | unsuccessfully | Cover Note Number        |
      | 1         | 35           | 0                | successfully   | Cover Note Number        |
      | 1         | 36           | 0                | unsuccessfully | Cover Note Creation Date |
      | 1         | 37           | 0                | unsuccessfully | Cover Note Creation Date |
      | 1         | 38           | 0                | unsuccessfully | Policy Number            |
      | 1         | 39           | 0                | unsuccessfully | Policy Number            |
      | 1         | 40           | 0                | unsuccessfully | Policy Number            |
      | 1         | 41           | 0                | unsuccessfully | Policy Number            |
      | 1         | 42           | 0                | unsuccessfully | Policy Number            |
      | 1         | 43           | 0                | unsuccessfully | Policy Number            |
      | 1         | 44           | 0                | successfully   | Policy Number            |
      | 1         | 45           | 0                | unsuccessfully | Bought From              |
      | 1         | 46           | 0                | unsuccessfully | Disburse To              |
      | 1         | 47           | 0                | unsuccessfully | Disburse To              |
      | 1         | 48           | 0                | unsuccessfully | Start Date               |
      | 1         | 49           | 0                | unsuccessfully | Start Date               |
      | 1         | 50           | 0                | unsuccessfully | Maturity Date            |
      | 1         | 51           | 0                | unsuccessfully | Maturity Date            |
      | 1         | 52           | 0                | unsuccessfully | Maturity Date            |
      | 1         | 52           | 0                | unsuccessfully | Maturity Date            |
      | 1         | 54           | 0                | unsuccessfully | Coverage Type            |
      | 1         | 55           | 0                | unsuccessfully | Coverage Amount          |
      | 1         | 56           | 0                | unsuccessfully | Coverage Amount          |
      | 1         | 57           | 0                | unsuccessfully | Coverage Amount          |
      | 1         | 58           | 0                | unsuccessfully | Coverage Amount          |
      | 1         | 59           | 0                | unsuccessfully | Coverage Amount          |
      | 1         | 60           | 0                | unsuccessfully | Coverage Amount          |
      | 1         | 61           | 0                | unsuccessfully | Premium Amount           |
      | 1         | 62           | 0                | unsuccessfully | Premium Amount           |
      | 1         | 63           | 0                | unsuccessfully | Premium Amount           |
      | 1         | 64           | 0                | unsuccessfully | Premium Amount           |
      | 1         | 65           | 0                | unsuccessfully | Premium Amount           |
      | 1         | 66           | 0                | unsuccessfully | Premium Amount           |
      | 1         | 67           | 0                | unsuccessfully | Loss Payee               |
      | 1         | 68           | 0                | unsuccessfully | Loss Payee               |
      | 1         | 69           | 0                | unsuccessfully | Loss Payee               |
      | 1         | 70           | 0                | unsuccessfully | Loss Payee               |
      | 1         | 71           | 0                | unsuccessfully | Quantity                 |
      | 1         | 72           | 0                | unsuccessfully | Quantity                 |
      | 1         | 73           | 0                | successfully   | All                      |

 #FeatureID-ACAUTOCAS-207
  Scenario Outline: Data validation on VAP Details page for VAP type GAP Insurance at row number "<VAPRowNumber>" for "<ValidationField>" field
    And user open an application from workbook "VAPDetailsValidate.xlsx" under sheet "vap_category_insurance" for row number "<RowNumber>"
    When user clicks on "VAP Details" link from "Loan Information" section
    And user selects vap product of vap type "GAP Insurance"
    And user enters data from workbook "VAPDetailsValidate.xlsx" under sheet "vap_details_insurance" for row number "<VAPRowNumber>"
    And user enters data from workbook "VAPDetailsValidate.xlsx" under sheet "nominee_details" for row number "<NomineeRowNumber>"
    And user saves the data
    Then user should be able to "<SuccessFailure>" save data for the field "<ValidationField>" with message
    #  "<SuccessFailureReason>" for the field "<ValidationField>"
    Examples:
      | RowNumber | VAPRowNumber | NomineeRowNumber | SuccessFailure | ValidationField          |
      | 8         | 15           | 0                | unsuccessfully | Collateral Id            |
      | 8         | 16           | 0                | unsuccessfully | Collateral Id            |
      | 8         | 17           | 0                | unsuccessfully | VAP Treatment            |
      | 8         | 18           | 0                | unsuccessfully | VAP Treatment            |
      | 8         | 19           | 0                | unsuccessfully | VAP Amount               |
      | 8         | 20           | 0                | unsuccessfully | VAP Amount               |
      | 8         | 21           | 0                | unsuccessfully | VAP Amount               |
      | 8         | 22           | 0                | unsuccessfully | VAP Amount               |
      | 8         | 23           | 0                | unsuccessfully | VAP Amount               |
      | 8         | 24           | 0                | unsuccessfully | Differential Amount      |
      | 8         | 25           | 0                | unsuccessfully | Differential Amount      |
      | 8         | 26           | 0                | unsuccessfully | Differential Amount      |
      | 8         | 27           | 0                | unsuccessfully | Differential Amount      |
      | 8         | 29           | 0                | unsuccessfully | Cover Note Number        |
      | 8         | 30           | 0                | unsuccessfully | Cover Note Number        |
      | 8         | 31           | 0                | unsuccessfully | Cover Note Number        |
      | 8         | 32           | 0                | unsuccessfully | Cover Note Number        |
      | 8         | 33           | 0                | unsuccessfully | Cover Note Number        |
      | 8         | 34           | 0                | unsuccessfully | Cover Note Number        |
      | 8         | 36           | 0                | unsuccessfully | Cover Note Creation Date |
      | 8         | 37           | 0                | unsuccessfully | Cover Note Creation Date |
      | 8         | 38           | 0                | unsuccessfully | Policy Number            |
      | 8         | 39           | 0                | unsuccessfully | Policy Number            |
      | 8         | 40           | 0                | unsuccessfully | Policy Number            |
      | 8         | 41           | 0                | unsuccessfully | Policy Number            |
      | 8         | 42           | 0                | unsuccessfully | Policy Number            |
      | 8         | 43           | 0                | unsuccessfully | Policy Number            |
      | 8         | 45           | 0                | unsuccessfully | Bought From              |
      | 8         | 46           | 0                | unsuccessfully | Disburse To              |
      | 8         | 47           | 0                | unsuccessfully | Disburse To              |
      | 8         | 48           | 0                | unsuccessfully | Start Date               |
      | 8         | 49           | 0                | unsuccessfully | Start Date               |
      | 8         | 50           | 0                | unsuccessfully | Maturity Date            |
      | 8         | 51           | 0                | unsuccessfully | Maturity Date            |
      | 8         | 52           | 0                | unsuccessfully | Maturity Date            |
      | 8         | 52           | 0                | unsuccessfully | Maturity Date            |
      | 8         | 54           | 0                | unsuccessfully | Coverage Type            |
      | 8         | 55           | 0                | unsuccessfully | Coverage Amount          |
      | 8         | 56           | 0                | unsuccessfully | Coverage Amount          |
      | 8         | 57           | 0                | unsuccessfully | Coverage Amount          |
      | 8         | 58           | 0                | unsuccessfully | Coverage Amount          |
      | 8         | 59           | 0                | unsuccessfully | Coverage Amount          |
      | 8         | 60           | 0                | unsuccessfully | Coverage Amount          |
      | 8         | 61           | 0                | unsuccessfully | Premium Amount           |
      | 8         | 62           | 0                | unsuccessfully | Premium Amount           |
      | 8         | 63           | 0                | unsuccessfully | Premium Amount           |
      | 8         | 64           | 0                | unsuccessfully | Premium Amount           |
      | 8         | 65           | 0                | unsuccessfully | Premium Amount           |
      | 8         | 66           | 0                | unsuccessfully | Premium Amount           |
      | 8         | 71           | 0                | unsuccessfully | Quantity                 |
      | 8         | 72           | 0                | unsuccessfully | Quantity                 |
      | 8         | 74           | 0                | unsuccessfully | Date Of Delivery         |
      | 8         | 75           | 0                | unsuccessfully | Date Of Delivery         |
      | 8         | 76           | 0                | unsuccessfully | Distance Covered         |
      | 8         | 77           | 0                | unsuccessfully | Distance Covered         |
      | 8         | 78           | 0                | unsuccessfully | Distance Covered         |
      | 8         | 85           | 0                | successfully   | Mandatory                |
      | 8         | 86           | 0                | successfully   | All                      |

 #FeatureID-ACAUTOCAS-207
  Scenario Outline: Data validation on VAP Details page for VAP type Life Insurance at row number "<VAPRowNumber>" for "<ValidationField>" field
    And user open an application from workbook "VAPDetailsValidate.xlsx" under sheet "vap_category_insurance" for row number "<RowNumber>"
    When user clicks on "VAP Details" link from "Loan Information" section
    And user selects vap product of vap type "Life Insurance"
    And user enters data from workbook "VAPDetailsValidate.xlsx" under sheet "vap_details_insurance" for row number "<VAPRowNumber>"
    And user enters data from workbook "VAPDetailsValidate.xlsx" under sheet "nominee_details" for row number "<NomineeRowNumber>"
    And user saves the data
    Then user should be able to "<SuccessFailure>" save data for the field "<ValidationField>" with message
    #"<SuccessFailureReason>" for the field "<ValidationField>"
    Examples:
      | RowNumber | VAPRowNumber | NomineeRowNumber | SuccessFailure | ValidationField          |
      | 15        | 17           | 0                | unsuccessfully | VAP Treatment            |
      | 15        | 18           | 0                | unsuccessfully | VAP Treatment            |
      | 15        | 19           | 0                | unsuccessfully | VAP Amount               |
      | 15        | 20           | 0                | unsuccessfully | VAP Amount               |
      | 15        | 21           | 0                | unsuccessfully | VAP Amount               |
      | 15        | 22           | 0                | unsuccessfully | VAP Amount               |
      | 15        | 23           | 0                | unsuccessfully | VAP Amount               |
      | 15        | 24           | 0                | unsuccessfully | Differential Amount      |
      | 15        | 25           | 0                | unsuccessfully | Differential Amount      |
      | 15        | 26           | 0                | unsuccessfully | Differential Amount      |
      | 15        | 27           | 0                | unsuccessfully | Differential Amount      |
      | 15        | 29           | 0                | unsuccessfully | Cover Note Number        |
      | 15        | 30           | 0                | unsuccessfully | Cover Note Number        |
      | 15        | 31           | 0                | unsuccessfully | Cover Note Number        |
      | 15        | 32           | 0                | unsuccessfully | Cover Note Number        |
      | 15        | 33           | 0                | unsuccessfully | Cover Note Number        |
      | 15        | 34           | 0                | unsuccessfully | Cover Note Number        |
      | 15        | 36           | 0                | unsuccessfully | Cover Note Creation Date |
      | 15        | 37           | 0                | unsuccessfully | Cover Note Creation Date |
      | 15        | 38           | 0                | unsuccessfully | Policy Number            |
      | 15        | 39           | 0                | unsuccessfully | Policy Number            |
      | 15        | 40           | 0                | unsuccessfully | Policy Number            |
      | 15        | 41           | 0                | unsuccessfully | Policy Number            |
      | 15        | 42           | 0                | unsuccessfully | Policy Number            |
      | 15        | 43           | 0                | unsuccessfully | Policy Number            |
      | 15        | 45           | 0                | unsuccessfully | Bought From              |
      | 15        | 46           | 0                | unsuccessfully | Disburse To              |
      | 15        | 47           | 0                | unsuccessfully | Disburse To              |
      | 15        | 48           | 0                | unsuccessfully | Start Date               |
      | 15        | 49           | 0                | unsuccessfully | Start Date               |
      | 15        | 50           | 0                | unsuccessfully | Maturity Date            |
      | 15        | 51           | 0                | unsuccessfully | Maturity Date            |
      | 15        | 52           | 0                | unsuccessfully | Maturity Date            |
      | 15        | 53           | 0                | unsuccessfully | Maturity Date            |
      | 15        | 54           | 0                | unsuccessfully | Coverage Type            |
      | 15        | 55           | 0                | unsuccessfully | Coverage Amount          |
      | 15        | 56           | 0                | unsuccessfully | Coverage Amount          |
      | 15        | 57           | 0                | unsuccessfully | Coverage Amount          |
      | 15        | 58           | 0                | unsuccessfully | Coverage Amount          |
      | 15        | 59           | 0                | unsuccessfully | Coverage Amount          |
      | 15        | 60           | 0                | unsuccessfully | Coverage Amount          |
      | 15        | 61           | 0                | unsuccessfully | Premium Amount           |
      | 15        | 62           | 0                | unsuccessfully | Premium Amount           |
      | 15        | 63           | 0                | unsuccessfully | Premium Amount           |
      | 15        | 64           | 0                | unsuccessfully | Premium Amount           |
      | 15        | 65           | 0                | unsuccessfully | Premium Amount           |
      | 15        | 66           | 0                | unsuccessfully | Premium Amount           |
      | 15        | 71           | 0                | unsuccessfully | Quantity                 |
      | 15        | 72           | 0                | unsuccessfully | Quantity                 |
      | 15        | 87           | 0                | successfully   | Mandatory                |
      | 15        | 88           | 0                | successfully   | All                      |

 #FeatureID-ACAUTOCAS-207
  Scenario Outline: Data validation on VAP Details page for VAP type Payment Protection at row number "<VAPRowNumber>" for "<ValidationField>" field
    And user open an application from workbook "VAPDetailsValidate.xlsx" under sheet "vap_category_insurance" for row number "<RowNumber>"
    When user clicks on "VAP Details" link from "Loan Information" section
    And user selects vap product of vap type "Payment Protection"
    And user enters data from workbook "VAPDetailsValidate.xlsx" under sheet "vap_details_insurance" for row number "<VAPRowNumber>"
    And user enters data from workbook "VAPDetailsValidate.xlsx" under sheet "nominee_details" for row number "<NomineeRowNumber>"
    And user saves the data
    Then user should be able to "<SuccessFailure>" save data for the field "<ValidationField>" with message
    #"<SuccessFailureReason>" for the field "<ValidationField>"
    Examples:
      | RowNumber | VAPRowNumber | NomineeRowNumber | SuccessFailure | ValidationField          |
      | 22        | 17           | 0                | unsuccessfully | VAP Treatment            |
      | 22        | 18           | 0                | unsuccessfully | VAP Treatment            |
      | 22        | 19           | 0                | unsuccessfully | VAP Amount               |
      | 22        | 20           | 0                | unsuccessfully | VAP Amount               |
      | 22        | 21           | 0                | unsuccessfully | VAP Amount               |
      | 22        | 22           | 0                | unsuccessfully | VAP Amount               |
      | 22        | 23           | 0                | unsuccessfully | VAP Amount               |
      | 22        | 24           | 0                | unsuccessfully | Differential Amount      |
      | 22        | 25           | 0                | unsuccessfully | Differential Amount      |
      | 22        | 26           | 0                | unsuccessfully | Differential Amount      |
      | 22        | 27           | 0                | unsuccessfully | Differential Amount      |
      | 22        | 29           | 0                | unsuccessfully | Cover Note Number        |
      | 22        | 30           | 0                | unsuccessfully | Cover Note Number        |
      | 22        | 31           | 0                | unsuccessfully | Cover Note Number        |
      | 22        | 32           | 0                | unsuccessfully | Cover Note Number        |
      | 22        | 33           | 0                | unsuccessfully | Cover Note Number        |
      | 22        | 34           | 0                | unsuccessfully | Cover Note Number        |
      | 22        | 36           | 0                | unsuccessfully | Cover Note Creation Date |
      | 22        | 37           | 0                | unsuccessfully | Cover Note Creation Date |
      | 22        | 38           | 0                | unsuccessfully | Policy Number            |
      | 22        | 39           | 0                | unsuccessfully | Policy Number            |
      | 22        | 40           | 0                | unsuccessfully | Policy Number            |
      | 22        | 41           | 0                | unsuccessfully | Policy Number            |
      | 22        | 42           | 0                | unsuccessfully | Policy Number            |
      | 22        | 43           | 0                | unsuccessfully | Policy Number            |
      | 22        | 45           | 0                | unsuccessfully | Bought From              |
      | 22        | 46           | 0                | unsuccessfully | Disburse To              |
      | 22        | 47           | 0                | unsuccessfully | Disburse To              |
      | 22        | 48           | 0                | unsuccessfully | Start Date               |
      | 22        | 49           | 0                | unsuccessfully | Start Date               |
      | 22        | 50           | 0                | unsuccessfully | Maturity Date            |
      | 22        | 51           | 0                | unsuccessfully | Maturity Date            |
      | 22        | 52           | 0                | unsuccessfully | Maturity Date            |
      | 22        | 53           | 0                | unsuccessfully | Maturity Date            |
      | 22        | 54           | 0                | unsuccessfully | Coverage Type            |
      | 22        | 55           | 0                | unsuccessfully | Coverage Amount          |
      | 22        | 56           | 0                | unsuccessfully | Coverage Amount          |
      | 22        | 57           | 0                | unsuccessfully | Coverage Amount          |
      | 22        | 58           | 0                | unsuccessfully | Coverage Amount          |
      | 22        | 59           | 0                | unsuccessfully | Coverage Amount          |
      | 22        | 60           | 0                | unsuccessfully | Coverage Amount          |
      | 22        | 61           | 0                | unsuccessfully | Premium Amount           |
      | 22        | 62           | 0                | unsuccessfully | Premium Amount           |
      | 22        | 63           | 0                | unsuccessfully | Premium Amount           |
      | 22        | 64           | 0                | unsuccessfully | Premium Amount           |
      | 22        | 65           | 0                | unsuccessfully | Premium Amount           |
      | 22        | 66           | 0                | unsuccessfully | Premium Amount           |
      | 22        | 71           | 0                | unsuccessfully | Quantity                 |
      | 22        | 72           | 0                | unsuccessfully | Quantity                 |
      | 22        | 89           | 0                | successfully   | Mandatory                |
      | 22        | 90           | 0                | successfully   | All                      |

 #FeatureID-ACAUTOCAS-207
  Scenario Outline: Data validation on VAP Details page for VAP type Credit Protection at row number "<VAPRowNumber>" for "<ValidationField>" field
    And user open an application from workbook "VAPDetailsValidate.xlsx" under sheet "vap_category_insurance" for row number "<RowNumber>"
    When user clicks on "VAP Details" link from "Loan Information" section
    And user selects vap product of vap type "Credit Protection"
    And user enters data from workbook "VAPDetailsValidate.xlsx" under sheet "vap_details_insurance" for row number "<VAPRowNumber>"
    And user enters data from workbook "VAPDetailsValidate.xlsx" under sheet "nominee_details" for row number "<NomineeRowNumber>"
    And user saves the data
    Then user should be able to "<SuccessFailure>" save data for the field "<ValidationField>" with message
#"<SuccessFailureReason>" for the field "<ValidationField>"
    Examples:
      | RowNumber | VAPRowNumber | NomineeRowNumber | SuccessFailure | ValidationField          |
      | 29        | 17           | 0                | unsuccessfully | VAP Treatment            |
      | 29        | 18           | 0                | unsuccessfully | VAP Treatment            |
      | 29        | 19           | 0                | unsuccessfully | VAP Amount               |
      | 29        | 20           | 0                | unsuccessfully | VAP Amount               |
      | 29        | 21           | 0                | unsuccessfully | VAP Amount               |
      | 29        | 22           | 0                | unsuccessfully | VAP Amount               |
      | 29        | 23           | 0                | unsuccessfully | VAP Amount               |
      | 29        | 24           | 0                | unsuccessfully | Differential Amount      |
      | 29        | 25           | 0                | unsuccessfully | Differential Amount      |
      | 29        | 26           | 0                | unsuccessfully | Differential Amount      |
      | 29        | 27           | 0                | unsuccessfully | Differential Amount      |
      | 29        | 29           | 0                | unsuccessfully | Cover Note Number        |
      | 29        | 30           | 0                | unsuccessfully | Cover Note Number        |
      | 29        | 31           | 0                | unsuccessfully | Cover Note Number        |
      | 29        | 32           | 0                | unsuccessfully | Cover Note Number        |
      | 29        | 33           | 0                | unsuccessfully | Cover Note Number        |
      | 29        | 34           | 0                | unsuccessfully | Cover Note Number        |
      | 29        | 36           | 0                | unsuccessfully | Cover Note Creation Date |
      | 29        | 37           | 0                | unsuccessfully | Cover Note Creation Date |
      | 29        | 38           | 0                | unsuccessfully | Policy Number            |
      | 29        | 39           | 0                | unsuccessfully | Policy Number            |
      | 29        | 40           | 0                | unsuccessfully | Policy Number            |
      | 29        | 41           | 0                | unsuccessfully | Policy Number            |
      | 29        | 42           | 0                | unsuccessfully | Policy Number            |
      | 29        | 43           | 0                | unsuccessfully | Policy Number            |
      | 29        | 45           | 0                | unsuccessfully | Bought From              |
      | 29        | 46           | 0                | unsuccessfully | Disburse To              |
      | 29        | 47           | 0                | unsuccessfully | Disburse To              |
      | 29        | 48           | 0                | unsuccessfully | Start Date               |
      | 29        | 49           | 0                | unsuccessfully | Start Date               |
      | 29        | 50           | 0                | unsuccessfully | Maturity Date            |
      | 29        | 51           | 0                | unsuccessfully | Maturity Date            |
      | 29        | 52           | 0                | unsuccessfully | Maturity Date            |
      | 29        | 53           | 0                | unsuccessfully | Maturity Date            |
      | 29        | 54           | 0                | unsuccessfully | Coverage Type            |
      | 29        | 55           | 0                | unsuccessfully | Coverage Amount          |
      | 29        | 56           | 0                | unsuccessfully | Coverage Amount          |
      | 29        | 57           | 0                | unsuccessfully | Coverage Amount          |
      | 29        | 58           | 0                | unsuccessfully | Coverage Amount          |
      | 29        | 59           | 0                | unsuccessfully | Coverage Amount          |
      | 29        | 60           | 0                | unsuccessfully | Coverage Amount          |
      | 29        | 61           | 0                | unsuccessfully | Premium Amount           |
      | 29        | 62           | 0                | unsuccessfully | Premium Amount           |
      | 29        | 63           | 0                | unsuccessfully | Premium Amount           |
      | 29        | 64           | 0                | unsuccessfully | Premium Amount           |
      | 29        | 65           | 0                | unsuccessfully | Premium Amount           |
      | 29        | 66           | 0                | unsuccessfully | Premium Amount           |
      | 29        | 71           | 0                | unsuccessfully | Quantity                 |
      | 29        | 72           | 0                | unsuccessfully | Quantity                 |
      | 29        | 91           | 0                | successfully   | Mandatory                |
      | 29        | 92           | 0                | successfully   | All                      |

