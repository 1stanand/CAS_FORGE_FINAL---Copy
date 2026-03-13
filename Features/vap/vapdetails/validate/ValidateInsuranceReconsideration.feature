@Epic-VAP
@AuthoredBy-sajja.ravikumar
#OriginalAuthor-rajni.gola
@ReviewedBy-
@ImplementedBy-
@TechReviewedBy-

@NotImplemented

Feature: Validate VAP Details Validations for Insurance VAP Category at Reconsideration stage

  Background:
    Given User is logged in CAS with "<SourceDataFile>" under "<SheetName>" and "<RowNumber>"
    And user has configured VAP policy for product mapped in the application in Product master
    And user has configured VAP policy for scheme mapped in the application in Scheme master
    And user has configured VAP Parameter Policy, VAP Amount Computation Policy, VAP Payout Computation Policy, VAP Policy masters under CAS - Common Masters

  #FeatureID-ACAUTOCAS-207
  Scenario Outline: Data validation on VAP Details page for VAP type "Asset Insurance" at row number "<VAPRowNumber>" for "<ValidationField>" field
    And user has selected "Enable at Post Sanction" flag in "VAP Parameter Policy" master for vap type "Asset Insurance"
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
      | 3         | 0            | 0                | successfully   | Collateral Id            |
      | 3         | 1            | 0                | successfully   | VAP Treatment            |
      | 3         | 2            | 0                | successfully   | Bought From              |
      | 3         | 3            | 0                | successfully   | Disburse To              |
      | 3         | 4            | 0                | successfully   | Policy Number            |
      | 3         | 5            | 0                | successfully   | VAP Amount               |
      | 3         | 6            | 0                | successfully   | Differential Amount      |
      | 3         | 7            | 0                | successfully   | Cover Note Number        |
      | 3         | 8            | 0                | successfully   | Cover Note Creation Date |
      | 3         | 9            | 0                | successfully   | Start Date               |
      | 3         | 10           | 0                | successfully   | Maturity Date            |
      | 3         | 11           | 0                | successfully   | Coverage Type            |
      | 3         | 12           | 0                | successfully   | Coverage Amount          |
      | 3         | 13           | 0                | successfully   | Premium Amount           |
      | 3         | 14           | 0                | successfully   | Loss Payee               |
      | 3         | 15           | 0                | unsuccessfully | Collateral Id            |
      | 3         | 16           | 0                | unsuccessfully | Collateral Id            |
      | 3         | 17           | 0                | unsuccessfully | VAP Treatment            |
      | 3         | 18           | 0                | unsuccessfully | VAP Treatment            |
      | 3         | 19           | 0                | unsuccessfully | VAP Amount               |
      | 3         | 20           | 0                | unsuccessfully | VAP Amount               |
      | 3         | 21           | 0                | unsuccessfully | VAP Amount               |
      | 3         | 22           | 0                | unsuccessfully | VAP Amount               |
      | 3         | 23           | 0                | unsuccessfully | VAP Amount               |
      | 3         | 24           | 0                | unsuccessfully | Differential Amount      |
      | 3         | 25           | 0                | unsuccessfully | Differential Amount      |
      | 3         | 26           | 0                | unsuccessfully | Differential Amount      |
      | 3         | 27           | 0                | unsuccessfully | Differential Amount      |
      | 3         | 28           | 0                | successfully   | Differential Amount      |
      | 3         | 29           | 0                | unsuccessfully | Cover Note Number        |
      | 3         | 30           | 0                | unsuccessfully | Cover Note Number        |
      | 3         | 31           | 0                | unsuccessfully | Cover Note Number        |
      | 3         | 32           | 0                | unsuccessfully | Cover Note Number        |
      | 3         | 33           | 0                | unsuccessfully | Cover Note Number        |
      | 3         | 34           | 0                | unsuccessfully | Cover Note Number        |
      | 3         | 35           | 0                | successfully   | Cover Note Number        |
      | 3         | 36           | 0                | unsuccessfully | Cover Note Creation Date |
      | 3         | 37           | 0                | unsuccessfully | Cover Note Creation Date |
      | 3         | 38           | 0                | unsuccessfully | Policy Number            |
      | 3         | 39           | 0                | unsuccessfully | Policy Number            |
      | 3         | 40           | 0                | unsuccessfully | Policy Number            |
      | 3         | 41           | 0                | unsuccessfully | Policy Number            |
      | 3         | 42           | 0                | unsuccessfully | Policy Number            |
      | 3         | 43           | 0                | unsuccessfully | Policy Number            |
      | 3         | 44           | 0                | successfully   | Policy Number            |
      | 3         | 45           | 0                | unsuccessfully | Bought From              |
      | 3         | 46           | 0                | unsuccessfully | Disburse To              |
      | 3         | 47           | 0                | unsuccessfully | Disburse To              |
      | 3         | 48           | 0                | unsuccessfully | Start Date               |
      | 3         | 49           | 0                | unsuccessfully | Start Date               |
      | 3         | 50           | 0                | unsuccessfully | Maturity Date            |
      | 3         | 51           | 0                | unsuccessfully | Maturity Date            |
      | 3         | 52           | 0                | unsuccessfully | Maturity Date            |
      | 3         | 52           | 0                | unsuccessfully | Maturity Date            |
      | 3         | 54           | 0                | unsuccessfully | Coverage Type            |
      | 3         | 55           | 0                | unsuccessfully | Coverage Amount          |
      | 3         | 56           | 0                | unsuccessfully | Coverage Amount          |
      | 3         | 57           | 0                | unsuccessfully | Coverage Amount          |
      | 3         | 58           | 0                | unsuccessfully | Coverage Amount          |
      | 3         | 59           | 0                | unsuccessfully | Coverage Amount          |
      | 3         | 60           | 0                | unsuccessfully | Coverage Amount          |
      | 3         | 61           | 0                | unsuccessfully | Premium Amount           |
      | 3         | 62           | 0                | unsuccessfully | Premium Amount           |
      | 3         | 63           | 0                | unsuccessfully | Premium Amount           |
      | 3         | 64           | 0                | unsuccessfully | Premium Amount           |
      | 3         | 65           | 0                | unsuccessfully | Premium Amount           |
      | 3         | 66           | 0                | unsuccessfully | Premium Amount           |
      | 3         | 67           | 0                | unsuccessfully | Loss Payee               |
      | 3         | 68           | 0                | unsuccessfully | Loss Payee               |
      | 3         | 69           | 0                | unsuccessfully | Loss Payee               |
      | 3         | 70           | 0                | unsuccessfully | Loss Payee               |
      | 3         | 71           | 0                | unsuccessfully | Quantity                 |
      | 3         | 72           | 0                | unsuccessfully | Quantity                 |
      | 3         | 73           | 0                | successfully   | All                      |

 #FeatureID-ACAUTOCAS-207
  Scenario Outline: Data validation on VAP Details page for VAP type "GAP Insurance" at row number "<VAPRowNumber>" for "<ValidationField>" field
    And user has selected "Enable at Post Sanction" flag in "VAP Parameter Policy" master for vap type "GAP Insurance"
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
      | 10         | 15           | 0                | unsuccessfully | Collateral Id            |
      | 10         | 16           | 0                | unsuccessfully | Collateral Id            |
      | 10         | 17           | 0                | unsuccessfully | VAP Treatment            |
      | 10         | 18           | 0                | unsuccessfully | VAP Treatment            |
      | 10         | 19           | 0                | unsuccessfully | VAP Amount               |
      | 10         | 20           | 0                | unsuccessfully | VAP Amount               |
      | 10         | 21           | 0                | unsuccessfully | VAP Amount               |
      | 10         | 22           | 0                | unsuccessfully | VAP Amount               |
      | 10         | 23           | 0                | unsuccessfully | VAP Amount               |
      | 10         | 24           | 0                | unsuccessfully | Differential Amount      |
      | 10         | 25           | 0                | unsuccessfully | Differential Amount      |
      | 10         | 26           | 0                | unsuccessfully | Differential Amount      |
      | 10         | 27           | 0                | unsuccessfully | Differential Amount      |
      | 10         | 29           | 0                | unsuccessfully | Cover Note Number        |
      | 10         | 30           | 0                | unsuccessfully | Cover Note Number        |
      | 10         | 31           | 0                | unsuccessfully | Cover Note Number        |
      | 10         | 32           | 0                | unsuccessfully | Cover Note Number        |
      | 10         | 33           | 0                | unsuccessfully | Cover Note Number        |
      | 10         | 34           | 0                | unsuccessfully | Cover Note Number        |
      | 10         | 36           | 0                | unsuccessfully | Cover Note Creation Date |
      | 10         | 37           | 0                | unsuccessfully | Cover Note Creation Date |
      | 10         | 38           | 0                | unsuccessfully | Policy Number            |
      | 10         | 39           | 0                | unsuccessfully | Policy Number            |
      | 10         | 40           | 0                | unsuccessfully | Policy Number            |
      | 10         | 41           | 0                | unsuccessfully | Policy Number            |
      | 10         | 42           | 0                | unsuccessfully | Policy Number            |
      | 10         | 43           | 0                | unsuccessfully | Policy Number            |
      | 10         | 45           | 0                | unsuccessfully | Bought From              |
      | 10         | 46           | 0                | unsuccessfully | Disburse To              |
      | 10         | 47           | 0                | unsuccessfully | Disburse To              |
      | 10         | 48           | 0                | unsuccessfully | Start Date               |
      | 10         | 49           | 0                | unsuccessfully | Start Date               |
      | 10         | 50           | 0                | unsuccessfully | Maturity Date            |
      | 10         | 51           | 0                | unsuccessfully | Maturity Date            |
      | 10         | 52           | 0                | unsuccessfully | Maturity Date            |
      | 10         | 52           | 0                | unsuccessfully | Maturity Date            |
      | 10         | 54           | 0                | unsuccessfully | Coverage Type            |
      | 10         | 55           | 0                | unsuccessfully | Coverage Amount          |
      | 10         | 56           | 0                | unsuccessfully | Coverage Amount          |
      | 10         | 57           | 0                | unsuccessfully | Coverage Amount          |
      | 10         | 58           | 0                | unsuccessfully | Coverage Amount          |
      | 10         | 59           | 0                | unsuccessfully | Coverage Amount          |
      | 10         | 60           | 0                | unsuccessfully | Coverage Amount          |
      | 10         | 61           | 0                | unsuccessfully | Premium Amount           |
      | 10         | 62           | 0                | unsuccessfully | Premium Amount           |
      | 10         | 63           | 0                | unsuccessfully | Premium Amount           |
      | 10         | 64           | 0                | unsuccessfully | Premium Amount           |
      | 10         | 65           | 0                | unsuccessfully | Premium Amount           |
      | 10         | 66           | 0                | unsuccessfully | Premium Amount           |
      | 10         | 71           | 0                | unsuccessfully | Quantity                 |
      | 10         | 72           | 0                | unsuccessfully | Quantity                 |
      | 10         | 74           | 0                | unsuccessfully | Date Of Delivery         |
      | 10         | 75           | 0                | unsuccessfully | Date Of Delivery         |
      | 10         | 76           | 0                | unsuccessfully | Distance Covered         |
      | 10         | 77           | 0                | unsuccessfully | Distance Covered         |
      | 10         | 78           | 0                | unsuccessfully | Distance Covered         |
      | 10         | 85           | 0                | successfully   | Mandatory                |
      | 10         | 86           | 0                | successfully   | All                      |

 #FeatureID-ACAUTOCAS-207
  Scenario Outline: Data validation on VAP Details page for VAP type "Life Insurance" at row number "<VAPRowNumber>" for "<ValidationField>" field
    And user has selected "Enable at Post Sanction" flag in "VAP Parameter Policy" master for vap type "Life Insurance"
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
      | 17        | 17           | 0                | unsuccessfully | VAP Treatment            |
      | 17        | 18           | 0                | unsuccessfully | VAP Treatment            |
      | 17        | 19           | 0                | unsuccessfully | VAP Amount               |
      | 17        | 20           | 0                | unsuccessfully | VAP Amount               |
      | 17        | 21           | 0                | unsuccessfully | VAP Amount               |
      | 17        | 22           | 0                | unsuccessfully | VAP Amount               |
      | 17        | 23           | 0                | unsuccessfully | VAP Amount               |
      | 17        | 24           | 0                | unsuccessfully | Differential Amount      |
      | 17        | 25           | 0                | unsuccessfully | Differential Amount      |
      | 17        | 26           | 0                | unsuccessfully | Differential Amount      |
      | 17        | 27           | 0                | unsuccessfully | Differential Amount      |
      | 17        | 29           | 0                | unsuccessfully | Cover Note Number        |
      | 17        | 30           | 0                | unsuccessfully | Cover Note Number        |
      | 17        | 31           | 0                | unsuccessfully | Cover Note Number        |
      | 17        | 32           | 0                | unsuccessfully | Cover Note Number        |
      | 17        | 33           | 0                | unsuccessfully | Cover Note Number        |
      | 17        | 34           | 0                | unsuccessfully | Cover Note Number        |
      | 17        | 36           | 0                | unsuccessfully | Cover Note Creation Date |
      | 17        | 37           | 0                | unsuccessfully | Cover Note Creation Date |
      | 17        | 38           | 0                | unsuccessfully | Policy Number            |
      | 17        | 39           | 0                | unsuccessfully | Policy Number            |
      | 17        | 40           | 0                | unsuccessfully | Policy Number            |
      | 17        | 41           | 0                | unsuccessfully | Policy Number            |
      | 17        | 42           | 0                | unsuccessfully | Policy Number            |
      | 17        | 43           | 0                | unsuccessfully | Policy Number            |
      | 17        | 45           | 0                | unsuccessfully | Bought From              |
      | 17        | 46           | 0                | unsuccessfully | Disburse To              |
      | 17        | 47           | 0                | unsuccessfully | Disburse To              |
      | 17        | 48           | 0                | unsuccessfully | Start Date               |
      | 17        | 49           | 0                | unsuccessfully | Start Date               |
      | 17        | 50           | 0                | unsuccessfully | Maturity Date            |
      | 17        | 51           | 0                | unsuccessfully | Maturity Date            |
      | 17        | 52           | 0                | unsuccessfully | Maturity Date            |
      | 17        | 53           | 0                | unsuccessfully | Maturity Date            |
      | 17        | 54           | 0                | unsuccessfully | Coverage Type            |
      | 17        | 55           | 0                | unsuccessfully | Coverage Amount          |
      | 17        | 56           | 0                | unsuccessfully | Coverage Amount          |
      | 17        | 57           | 0                | unsuccessfully | Coverage Amount          |
      | 17        | 58           | 0                | unsuccessfully | Coverage Amount          |
      | 17        | 59           | 0                | unsuccessfully | Coverage Amount          |
      | 17        | 60           | 0                | unsuccessfully | Coverage Amount          |
      | 17        | 61           | 0                | unsuccessfully | Premium Amount           |
      | 17        | 62           | 0                | unsuccessfully | Premium Amount           |
      | 17        | 63           | 0                | unsuccessfully | Premium Amount           |
      | 17        | 64           | 0                | unsuccessfully | Premium Amount           |
      | 17        | 65           | 0                | unsuccessfully | Premium Amount           |
      | 17        | 66           | 0                | unsuccessfully | Premium Amount           |
      | 17        | 71           | 0                | unsuccessfully | Quantity                 |
      | 17        | 72           | 0                | unsuccessfully | Quantity                 |
      | 17        | 87           | 0                | successfully   | Mandatory                |
      | 17        | 88           | 0                | successfully   | All                      |

 #FeatureID-ACAUTOCAS-207
  Scenario Outline: Data validation on VAP Details page for VAP type "Payment Protection" at row number "<VAPRowNumber>" for "<ValidationField>" field
    And user has selected "Enable at Post Sanction" flag in "VAP Parameter Policy" master for vap type "Payment Protection"
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
      | 24        | 17           | 0                | unsuccessfully | VAP Treatment            |
      | 24        | 18           | 0                | unsuccessfully | VAP Treatment            |
      | 24        | 19           | 0                | unsuccessfully | VAP Amount               |
      | 24        | 20           | 0                | unsuccessfully | VAP Amount               |
      | 24        | 21           | 0                | unsuccessfully | VAP Amount               |
      | 24        | 22           | 0                | unsuccessfully | VAP Amount               |
      | 24        | 23           | 0                | unsuccessfully | VAP Amount               |
      | 24        | 24           | 0                | unsuccessfully | Differential Amount      |
      | 24        | 25           | 0                | unsuccessfully | Differential Amount      |
      | 24        | 26           | 0                | unsuccessfully | Differential Amount      |
      | 24        | 27           | 0                | unsuccessfully | Differential Amount      |
      | 24        | 29           | 0                | unsuccessfully | Cover Note Number        |
      | 24        | 30           | 0                | unsuccessfully | Cover Note Number        |
      | 24        | 31           | 0                | unsuccessfully | Cover Note Number        |
      | 24        | 32           | 0                | unsuccessfully | Cover Note Number        |
      | 24        | 33           | 0                | unsuccessfully | Cover Note Number        |
      | 24        | 34           | 0                | unsuccessfully | Cover Note Number        |
      | 24        | 36           | 0                | unsuccessfully | Cover Note Creation Date |
      | 24        | 37           | 0                | unsuccessfully | Cover Note Creation Date |
      | 24        | 38           | 0                | unsuccessfully | Policy Number            |
      | 24        | 39           | 0                | unsuccessfully | Policy Number            |
      | 24        | 40           | 0                | unsuccessfully | Policy Number            |
      | 24        | 41           | 0                | unsuccessfully | Policy Number            |
      | 24        | 42           | 0                | unsuccessfully | Policy Number            |
      | 24        | 43           | 0                | unsuccessfully | Policy Number            |
      | 24        | 45           | 0                | unsuccessfully | Bought From              |
      | 24        | 46           | 0                | unsuccessfully | Disburse To              |
      | 24        | 47           | 0                | unsuccessfully | Disburse To              |
      | 24        | 48           | 0                | unsuccessfully | Start Date               |
      | 24        | 49           | 0                | unsuccessfully | Start Date               |
      | 24        | 50           | 0                | unsuccessfully | Maturity Date            |
      | 24        | 51           | 0                | unsuccessfully | Maturity Date            |
      | 24        | 52           | 0                | unsuccessfully | Maturity Date            |
      | 24        | 53           | 0                | unsuccessfully | Maturity Date            |
      | 24        | 54           | 0                | unsuccessfully | Coverage Type            |
      | 24        | 55           | 0                | unsuccessfully | Coverage Amount          |
      | 24        | 56           | 0                | unsuccessfully | Coverage Amount          |
      | 24        | 57           | 0                | unsuccessfully | Coverage Amount          |
      | 24        | 58           | 0                | unsuccessfully | Coverage Amount          |
      | 24        | 59           | 0                | unsuccessfully | Coverage Amount          |
      | 24        | 60           | 0                | unsuccessfully | Coverage Amount          |
      | 24        | 61           | 0                | unsuccessfully | Premium Amount           |
      | 24        | 62           | 0                | unsuccessfully | Premium Amount           |
      | 24        | 63           | 0                | unsuccessfully | Premium Amount           |
      | 24        | 64           | 0                | unsuccessfully | Premium Amount           |
      | 24        | 65           | 0                | unsuccessfully | Premium Amount           |
      | 24        | 66           | 0                | unsuccessfully | Premium Amount           |
      | 24        | 71           | 0                | unsuccessfully | Quantity                 |
      | 24        | 72           | 0                | unsuccessfully | Quantity                 |
      | 24        | 89           | 0                | successfully   | Mandatory                |
      | 24        | 90           | 0                | successfully   | All                      |

 #FeatureID-ACAUTOCAS-207
  Scenario Outline: Data validation on VAP Details page for VAP type "Credit Protection" at row number "<VAPRowNumber>" for "<ValidationField>" field
    And user has selected "Enable at Post Sanction" flag in "VAP Parameter Policy" master for vap type "Credit Protection"
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
      | 31        | 17           | 0                | unsuccessfully | VAP Treatment            |
      | 31        | 18           | 0                | unsuccessfully | VAP Treatment            |
      | 31        | 19           | 0                | unsuccessfully | VAP Amount               |
      | 31        | 20           | 0                | unsuccessfully | VAP Amount               |
      | 31        | 21           | 0                | unsuccessfully | VAP Amount               |
      | 31        | 22           | 0                | unsuccessfully | VAP Amount               |
      | 31        | 23           | 0                | unsuccessfully | VAP Amount               |
      | 31        | 24           | 0                | unsuccessfully | Differential Amount      |
      | 31        | 25           | 0                | unsuccessfully | Differential Amount      |
      | 31        | 26           | 0                | unsuccessfully | Differential Amount      |
      | 31        | 27           | 0                | unsuccessfully | Differential Amount      |
      | 31        | 29           | 0                | unsuccessfully | Cover Note Number        |
      | 31        | 30           | 0                | unsuccessfully | Cover Note Number        |
      | 31        | 31           | 0                | unsuccessfully | Cover Note Number        |
      | 31        | 32           | 0                | unsuccessfully | Cover Note Number        |
      | 31        | 33           | 0                | unsuccessfully | Cover Note Number        |
      | 31        | 34           | 0                | unsuccessfully | Cover Note Number        |
      | 31        | 36           | 0                | unsuccessfully | Cover Note Creation Date |
      | 31        | 37           | 0                | unsuccessfully | Cover Note Creation Date |
      | 31        | 38           | 0                | unsuccessfully | Policy Number            |
      | 31        | 39           | 0                | unsuccessfully | Policy Number            |
      | 31        | 40           | 0                | unsuccessfully | Policy Number            |
      | 31        | 41           | 0                | unsuccessfully | Policy Number            |
      | 31        | 42           | 0                | unsuccessfully | Policy Number            |
      | 31        | 43           | 0                | unsuccessfully | Policy Number            |
      | 31        | 45           | 0                | unsuccessfully | Bought From              |
      | 31        | 46           | 0                | unsuccessfully | Disburse To              |
      | 31        | 47           | 0                | unsuccessfully | Disburse To              |
      | 31        | 48           | 0                | unsuccessfully | Start Date               |
      | 31        | 49           | 0                | unsuccessfully | Start Date               |
      | 31        | 50           | 0                | unsuccessfully | Maturity Date            |
      | 31        | 51           | 0                | unsuccessfully | Maturity Date            |
      | 31        | 52           | 0                | unsuccessfully | Maturity Date            |
      | 31        | 53           | 0                | unsuccessfully | Maturity Date            |
      | 31        | 54           | 0                | unsuccessfully | Coverage Type            |
      | 31        | 55           | 0                | unsuccessfully | Coverage Amount          |
      | 31        | 56           | 0                | unsuccessfully | Coverage Amount          |
      | 31        | 57           | 0                | unsuccessfully | Coverage Amount          |
      | 31        | 58           | 0                | unsuccessfully | Coverage Amount          |
      | 31        | 59           | 0                | unsuccessfully | Coverage Amount          |
      | 31        | 60           | 0                | unsuccessfully | Coverage Amount          |
      | 31        | 61           | 0                | unsuccessfully | Premium Amount           |
      | 31        | 62           | 0                | unsuccessfully | Premium Amount           |
      | 31        | 63           | 0                | unsuccessfully | Premium Amount           |
      | 31        | 64           | 0                | unsuccessfully | Premium Amount           |
      | 31        | 65           | 0                | unsuccessfully | Premium Amount           |
      | 31        | 66           | 0                | unsuccessfully | Premium Amount           |
      | 31        | 71           | 0                | unsuccessfully | Quantity                 |
      | 31        | 72           | 0                | unsuccessfully | Quantity                 |
      | 31        | 91           | 0                | successfully   | Mandatory                |
      | 31        | 92           | 0                | successfully   | All                      |

