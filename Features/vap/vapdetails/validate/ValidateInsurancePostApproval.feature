@Epic-VAP
@AuthoredBy-sajja.ravikumar
#OriginalAuthor-rajni.gola
@ReviewedBy-
@ImplementedBy-
@TechReviewedBy-

@NotImplemented

Feature: Validate VAP Details Validations for Insurance VAP Category at Post Approval stage

  Background:
    Given User is logged in CAS with "<SourceDataFile>" under "<SheetName>" and "<RowNumber>"
    And user has configured VAP policy for product mapped in the application in Product master
    And user has configured VAP policy for scheme mapped in the application in Scheme master
    And user has configured VAP Parameter Policy, VAP Amount Computation Policy, VAP Payout Computation Policy, VAP Policy masters under CAS - Common Masters

  #FeatureID-ACAUTOCAS-207
  Scenario Outline: Data validation on VAP Details page for VAP type "Asset Insurance" at row number "<VAPRowNumber>" for "<ValidationField>" field
    And user has selected "Enable at Post Sanction" flag in "VAP Parameter Policy" master for vap type "Asset Insurance"
    And user open an application from workbook "VAPDetailsValidate.xlsx" under sheet "vap_category_insurance" for row number "<RowNumber>"
    When user navigates to VAP details tab under Loan Details tab
    And user selects vap product of vap type "Asset Insurance"
    And user enters data from workbook "VAPDetailsValidate.xlsx" under sheet "vap_details_insurance" for row number "<VAPRowNumber>"
    And user enters data from workbook "VAPDetailsValidate.xlsx" under sheet "nominee_details" for row number "<NomineeRowNumber>"
    And user saves the data
    Then user should be able to "<SuccessFailure>" save data for the field "<ValidationField>" with message
    #"<SuccessFailureReason>" for the field "<ValidationField>"
    Examples:
      | RowNumber | VAPRowNumber | NomineeRowNumber | SuccessFailure | ValidationField          |
      | 4         | 0            | 0                | successfully   | Collateral Id            |
      | 4         | 1            | 0                | successfully   | VAP Treatment            |
      | 4         | 2            | 0                | successfully   | Bought From              |
      | 4         | 3            | 0                | successfully   | Disburse To              |
      | 4         | 4            | 0                | successfully   | Policy Number            |
      | 4         | 5            | 0                | successfully   | VAP Amount               |
      | 4         | 6            | 0                | successfully   | Differential Amount      |
      | 4         | 7            | 0                | successfully   | Cover Note Number        |
      | 4         | 8            | 0                | successfully   | Cover Note Creation Date |
      | 4         | 9            | 0                | successfully   | Start Date               |
      | 4         | 10           | 0                | successfully   | Maturity Date            |
      | 4         | 11           | 0                | successfully   | Coverage Type            |
      | 4         | 12           | 0                | successfully   | Coverage Amount          |
      | 4         | 13           | 0                | successfully   | Premium Amount           |
      | 4         | 14           | 0                | successfully   | Loss Payee               |
      | 4         | 15           | 0                | unsuccessfully | Collateral Id            |
      | 4         | 16           | 0                | unsuccessfully | Collateral Id            |
      | 4         | 17           | 0                | unsuccessfully | VAP Treatment            |
      | 4         | 18           | 0                | unsuccessfully | VAP Treatment            |
      | 4         | 19           | 0                | unsuccessfully | VAP Amount               |
      | 4         | 20           | 0                | unsuccessfully | VAP Amount               |
      | 4         | 21           | 0                | unsuccessfully | VAP Amount               |
      | 4         | 22           | 0                | unsuccessfully | VAP Amount               |
      | 4         | 23           | 0                | unsuccessfully | VAP Amount               |
      | 4         | 24           | 0                | unsuccessfully | Differential Amount      |
      | 4         | 25           | 0                | unsuccessfully | Differential Amount      |
      | 4         | 26           | 0                | unsuccessfully | Differential Amount      |
      | 4         | 27           | 0                | unsuccessfully | Differential Amount      |
      | 4         | 28           | 0                | successfully   | Differential Amount      |
      | 4         | 29           | 0                | unsuccessfully | Cover Note Number        |
      | 4         | 30           | 0                | unsuccessfully | Cover Note Number        |
      | 4         | 31           | 0                | unsuccessfully | Cover Note Number        |
      | 4         | 32           | 0                | unsuccessfully | Cover Note Number        |
      | 4         | 33           | 0                | unsuccessfully | Cover Note Number        |
      | 4         | 34           | 0                | unsuccessfully | Cover Note Number        |
      | 4         | 35           | 0                | successfully   | Cover Note Number        |
      | 4         | 36           | 0                | unsuccessfully | Cover Note Creation Date |
      | 4         | 37           | 0                | unsuccessfully | Cover Note Creation Date |
      | 4         | 38           | 0                | unsuccessfully | Policy Number            |
      | 4         | 39           | 0                | unsuccessfully | Policy Number            |
      | 4         | 40           | 0                | unsuccessfully | Policy Number            |
      | 4         | 41           | 0                | unsuccessfully | Policy Number            |
      | 4         | 42           | 0                | unsuccessfully | Policy Number            |
      | 4         | 43           | 0                | unsuccessfully | Policy Number            |
      | 4         | 44           | 0                | successfully   | Policy Number            |
      | 4         | 45           | 0                | unsuccessfully | Bought From              |
      | 4         | 46           | 0                | unsuccessfully | Disburse To              |
      | 4         | 47           | 0                | unsuccessfully | Disburse To              |
      | 4         | 48           | 0                | unsuccessfully | Start Date               |
      | 4         | 49           | 0                | unsuccessfully | Start Date               |
      | 4         | 50           | 0                | unsuccessfully | Maturity Date            |
      | 4         | 51           | 0                | unsuccessfully | Maturity Date            |
      | 4         | 52           | 0                | unsuccessfully | Maturity Date            |
      | 4         | 52           | 0                | unsuccessfully | Maturity Date            |
      | 4         | 54           | 0                | unsuccessfully | Coverage Type            |
      | 4         | 55           | 0                | unsuccessfully | Coverage Amount          |
      | 4         | 56           | 0                | unsuccessfully | Coverage Amount          |
      | 4         | 57           | 0                | unsuccessfully | Coverage Amount          |
      | 4         | 58           | 0                | unsuccessfully | Coverage Amount          |
      | 4         | 59           | 0                | unsuccessfully | Coverage Amount          |
      | 4         | 60           | 0                | unsuccessfully | Coverage Amount          |
      | 4         | 61           | 0                | unsuccessfully | Premium Amount           |
      | 4         | 62           | 0                | unsuccessfully | Premium Amount           |
      | 4         | 63           | 0                | unsuccessfully | Premium Amount           |
      | 4         | 64           | 0                | unsuccessfully | Premium Amount           |
      | 4         | 65           | 0                | unsuccessfully | Premium Amount           |
      | 4         | 66           | 0                | unsuccessfully | Premium Amount           |
      | 4         | 67           | 0                | unsuccessfully | Loss Payee               |
      | 4         | 68           | 0                | unsuccessfully | Loss Payee               |
      | 4         | 69           | 0                | unsuccessfully | Loss Payee               |
      | 4         | 70           | 0                | unsuccessfully | Loss Payee               |
      | 4         | 71           | 0                | unsuccessfully | Quantity                 |
      | 4         | 72           | 0                | unsuccessfully | Quantity                 |
      | 4         | 73           | 0                | successfully   | All                      |

 #FeatureID-ACAUTOCAS-207
  Scenario Outline: Data validation on VAP Details page for VAP type "GAP Insurance" at row number "<VAPRowNumber>" for "<ValidationField>" field
    And user has selected "Enable at Post Sanction" flag in "VAP Parameter Policy" master for vap type "GAP Insurance"
    And user open an application from workbook "VAPDetailsValidate.xlsx" under sheet "vap_category_insurance" for row number "<RowNumber>"
    When user navigates to VAP details tab under Loan Details tab
    And user selects vap product of vap type "GAP Insurance"
    And user enters data from workbook "VAPDetailsValidate.xlsx" under sheet "vap_details_insurance" for row number "<VAPRowNumber>"
    And user enters data from workbook "VAPDetailsValidate.xlsx" under sheet "nominee_details" for row number "<NomineeRowNumber>"
    And user saves the data
    Then user should be able to "<SuccessFailure>" save data for the field "<ValidationField>" with message
    #  "<SuccessFailureReason>" for the field "<ValidationField>"
    Examples:
      | RowNumber | VAPRowNumber | NomineeRowNumber | SuccessFailure | ValidationField          |
      | 11         | 15           | 0                | unsuccessfully | Collateral Id            |
      | 11         | 16           | 0                | unsuccessfully | Collateral Id            |
      | 11         | 17           | 0                | unsuccessfully | VAP Treatment            |
      | 11         | 18           | 0                | unsuccessfully | VAP Treatment            |
      | 11         | 19           | 0                | unsuccessfully | VAP Amount               |
      | 11         | 20           | 0                | unsuccessfully | VAP Amount               |
      | 11         | 21           | 0                | unsuccessfully | VAP Amount               |
      | 11         | 22           | 0                | unsuccessfully | VAP Amount               |
      | 11         | 23           | 0                | unsuccessfully | VAP Amount               |
      | 11         | 24           | 0                | unsuccessfully | Differential Amount      |
      | 11         | 25           | 0                | unsuccessfully | Differential Amount      |
      | 11         | 26           | 0                | unsuccessfully | Differential Amount      |
      | 11         | 27           | 0                | unsuccessfully | Differential Amount      |
      | 11         | 29           | 0                | unsuccessfully | Cover Note Number        |
      | 11         | 30           | 0                | unsuccessfully | Cover Note Number        |
      | 11         | 31           | 0                | unsuccessfully | Cover Note Number        |
      | 11         | 32           | 0                | unsuccessfully | Cover Note Number        |
      | 11         | 33           | 0                | unsuccessfully | Cover Note Number        |
      | 11         | 34           | 0                | unsuccessfully | Cover Note Number        |
      | 11         | 36           | 0                | unsuccessfully | Cover Note Creation Date |
      | 11         | 37           | 0                | unsuccessfully | Cover Note Creation Date |
      | 11         | 38           | 0                | unsuccessfully | Policy Number            |
      | 11         | 39           | 0                | unsuccessfully | Policy Number            |
      | 11         | 40           | 0                | unsuccessfully | Policy Number            |
      | 11         | 41           | 0                | unsuccessfully | Policy Number            |
      | 11         | 42           | 0                | unsuccessfully | Policy Number            |
      | 11         | 43           | 0                | unsuccessfully | Policy Number            |
      | 11         | 45           | 0                | unsuccessfully | Bought From              |
      | 11         | 46           | 0                | unsuccessfully | Disburse To              |
      | 11         | 47           | 0                | unsuccessfully | Disburse To              |
      | 11         | 48           | 0                | unsuccessfully | Start Date               |
      | 11         | 49           | 0                | unsuccessfully | Start Date               |
      | 11         | 50           | 0                | unsuccessfully | Maturity Date            |
      | 11         | 51           | 0                | unsuccessfully | Maturity Date            |
      | 11         | 52           | 0                | unsuccessfully | Maturity Date            |
      | 11         | 52           | 0                | unsuccessfully | Maturity Date            |
      | 11         | 54           | 0                | unsuccessfully | Coverage Type            |
      | 11         | 55           | 0                | unsuccessfully | Coverage Amount          |
      | 11         | 56           | 0                | unsuccessfully | Coverage Amount          |
      | 11         | 57           | 0                | unsuccessfully | Coverage Amount          |
      | 11         | 58           | 0                | unsuccessfully | Coverage Amount          |
      | 11         | 59           | 0                | unsuccessfully | Coverage Amount          |
      | 11         | 60           | 0                | unsuccessfully | Coverage Amount          |
      | 11         | 61           | 0                | unsuccessfully | Premium Amount           |
      | 11         | 62           | 0                | unsuccessfully | Premium Amount           |
      | 11         | 63           | 0                | unsuccessfully | Premium Amount           |
      | 11         | 64           | 0                | unsuccessfully | Premium Amount           |
      | 11         | 65           | 0                | unsuccessfully | Premium Amount           |
      | 11         | 66           | 0                | unsuccessfully | Premium Amount           |
      | 11         | 71           | 0                | unsuccessfully | Quantity                 |
      | 11         | 72           | 0                | unsuccessfully | Quantity                 |
      | 11         | 74           | 0                | unsuccessfully | Date Of Delivery         |
      | 11         | 75           | 0                | unsuccessfully | Date Of Delivery         |
      | 11         | 76           | 0                | unsuccessfully | Distance Covered         |
      | 11         | 77           | 0                | unsuccessfully | Distance Covered         |
      | 11         | 78           | 0                | unsuccessfully | Distance Covered         |
      | 11         | 85           | 0                | successfully   | Mandatory                |
      | 11         | 86           | 0                | successfully   | All                      |

 #FeatureID-ACAUTOCAS-207
  Scenario Outline: Data validation on VAP Details page for VAP type "Life Insurance" at row number "<VAPRowNumber>" for "<ValidationField>" field
    And user has selected "Enable at Post Sanction" flag in "VAP Parameter Policy" master for vap type "Life Insurance"
    And user open an application from workbook "VAPDetailsValidate.xlsx" under sheet "vap_category_insurance" for row number "<RowNumber>"
    When user navigates to VAP details tab under Loan Details tab
    And user selects vap product of vap type "Life Insurance"
    And user enters data from workbook "VAPDetailsValidate.xlsx" under sheet "vap_details_insurance" for row number "<VAPRowNumber>"
    And user enters data from workbook "VAPDetailsValidate.xlsx" under sheet "nominee_details" for row number "<NomineeRowNumber>"
    And user saves the data
    Then user should be able to "<SuccessFailure>" save data for the field "<ValidationField>" with message
    #"<SuccessFailureReason>" for the field "<ValidationField>"
    Examples:
      | RowNumber | VAPRowNumber | NomineeRowNumber | SuccessFailure | ValidationField          |
      | 18        | 17           | 0                | unsuccessfully | VAP Treatment            |
      | 18        | 18           | 0                | unsuccessfully | VAP Treatment            |
      | 18        | 19           | 0                | unsuccessfully | VAP Amount               |
      | 18        | 20           | 0                | unsuccessfully | VAP Amount               |
      | 18        | 21           | 0                | unsuccessfully | VAP Amount               |
      | 18        | 22           | 0                | unsuccessfully | VAP Amount               |
      | 18        | 23           | 0                | unsuccessfully | VAP Amount               |
      | 18        | 24           | 0                | unsuccessfully | Differential Amount      |
      | 18        | 25           | 0                | unsuccessfully | Differential Amount      |
      | 18        | 26           | 0                | unsuccessfully | Differential Amount      |
      | 18        | 27           | 0                | unsuccessfully | Differential Amount      |
      | 18        | 29           | 0                | unsuccessfully | Cover Note Number        |
      | 18        | 30           | 0                | unsuccessfully | Cover Note Number        |
      | 18        | 31           | 0                | unsuccessfully | Cover Note Number        |
      | 18        | 32           | 0                | unsuccessfully | Cover Note Number        |
      | 18        | 33           | 0                | unsuccessfully | Cover Note Number        |
      | 18        | 34           | 0                | unsuccessfully | Cover Note Number        |
      | 18        | 36           | 0                | unsuccessfully | Cover Note Creation Date |
      | 18        | 37           | 0                | unsuccessfully | Cover Note Creation Date |
      | 18        | 38           | 0                | unsuccessfully | Policy Number            |
      | 18        | 39           | 0                | unsuccessfully | Policy Number            |
      | 18        | 40           | 0                | unsuccessfully | Policy Number            |
      | 18        | 41           | 0                | unsuccessfully | Policy Number            |
      | 18        | 42           | 0                | unsuccessfully | Policy Number            |
      | 18        | 43           | 0                | unsuccessfully | Policy Number            |
      | 18        | 45           | 0                | unsuccessfully | Bought From              |
      | 18        | 46           | 0                | unsuccessfully | Disburse To              |
      | 18        | 47           | 0                | unsuccessfully | Disburse To              |
      | 18        | 48           | 0                | unsuccessfully | Start Date               |
      | 18        | 49           | 0                | unsuccessfully | Start Date               |
      | 18        | 50           | 0                | unsuccessfully | Maturity Date            |
      | 18        | 51           | 0                | unsuccessfully | Maturity Date            |
      | 18        | 52           | 0                | unsuccessfully | Maturity Date            |
      | 18        | 53           | 0                | unsuccessfully | Maturity Date            |
      | 18        | 54           | 0                | unsuccessfully | Coverage Type            |
      | 18        | 55           | 0                | unsuccessfully | Coverage Amount          |
      | 18        | 56           | 0                | unsuccessfully | Coverage Amount          |
      | 18        | 57           | 0                | unsuccessfully | Coverage Amount          |
      | 18        | 58           | 0                | unsuccessfully | Coverage Amount          |
      | 18        | 59           | 0                | unsuccessfully | Coverage Amount          |
      | 18        | 60           | 0                | unsuccessfully | Coverage Amount          |
      | 18        | 61           | 0                | unsuccessfully | Premium Amount           |
      | 18        | 62           | 0                | unsuccessfully | Premium Amount           |
      | 18        | 63           | 0                | unsuccessfully | Premium Amount           |
      | 18        | 64           | 0                | unsuccessfully | Premium Amount           |
      | 18        | 65           | 0                | unsuccessfully | Premium Amount           |
      | 18        | 66           | 0                | unsuccessfully | Premium Amount           |
      | 18        | 71           | 0                | unsuccessfully | Quantity                 |
      | 18        | 72           | 0                | unsuccessfully | Quantity                 |
      | 18        | 87           | 0                | successfully   | Mandatory                |
      | 18        | 88           | 0                | successfully   | All                      |

 #FeatureID-ACAUTOCAS-207
  Scenario Outline: Data validation on VAP Details page for VAP type "Payment Protection" at row number "<VAPRowNumber>" for "<ValidationField>" field
    And user has selected "Enable at Post Sanction" flag in "VAP Parameter Policy" master for vap type "Payment Protection"
    And user open an application from workbook "VAPDetailsValidate.xlsx" under sheet "vap_category_insurance" for row number "<RowNumber>"
    When user navigates to VAP details tab under Loan Details tab
    And user selects vap product of vap type "Payment Protection"
    And user enters data from workbook "VAPDetailsValidate.xlsx" under sheet "vap_details_insurance" for row number "<VAPRowNumber>"
    And user enters data from workbook "VAPDetailsValidate.xlsx" under sheet "nominee_details" for row number "<NomineeRowNumber>"
    And user saves the data
    Then user should be able to "<SuccessFailure>" save data for the field "<ValidationField>" with message
    #"<SuccessFailureReason>" for the field "<ValidationField>"
    Examples:
      | RowNumber | VAPRowNumber | NomineeRowNumber | SuccessFailure | ValidationField          |
      | 25        | 17           | 0                | unsuccessfully | VAP Treatment            |
      | 25        | 18           | 0                | unsuccessfully | VAP Treatment            |
      | 25        | 19           | 0                | unsuccessfully | VAP Amount               |
      | 25        | 20           | 0                | unsuccessfully | VAP Amount               |
      | 25        | 21           | 0                | unsuccessfully | VAP Amount               |
      | 25        | 22           | 0                | unsuccessfully | VAP Amount               |
      | 25        | 23           | 0                | unsuccessfully | VAP Amount               |
      | 25        | 24           | 0                | unsuccessfully | Differential Amount      |
      | 25        | 25           | 0                | unsuccessfully | Differential Amount      |
      | 25        | 26           | 0                | unsuccessfully | Differential Amount      |
      | 25        | 27           | 0                | unsuccessfully | Differential Amount      |
      | 25        | 29           | 0                | unsuccessfully | Cover Note Number        |
      | 25        | 30           | 0                | unsuccessfully | Cover Note Number        |
      | 25        | 31           | 0                | unsuccessfully | Cover Note Number        |
      | 25        | 32           | 0                | unsuccessfully | Cover Note Number        |
      | 25        | 33           | 0                | unsuccessfully | Cover Note Number        |
      | 25        | 34           | 0                | unsuccessfully | Cover Note Number        |
      | 25        | 36           | 0                | unsuccessfully | Cover Note Creation Date |
      | 25        | 37           | 0                | unsuccessfully | Cover Note Creation Date |
      | 25        | 38           | 0                | unsuccessfully | Policy Number            |
      | 25        | 39           | 0                | unsuccessfully | Policy Number            |
      | 25        | 40           | 0                | unsuccessfully | Policy Number            |
      | 25        | 41           | 0                | unsuccessfully | Policy Number            |
      | 25        | 42           | 0                | unsuccessfully | Policy Number            |
      | 25        | 43           | 0                | unsuccessfully | Policy Number            |
      | 25        | 45           | 0                | unsuccessfully | Bought From              |
      | 25        | 46           | 0                | unsuccessfully | Disburse To              |
      | 25        | 47           | 0                | unsuccessfully | Disburse To              |
      | 25        | 48           | 0                | unsuccessfully | Start Date               |
      | 25        | 49           | 0                | unsuccessfully | Start Date               |
      | 25        | 50           | 0                | unsuccessfully | Maturity Date            |
      | 25        | 51           | 0                | unsuccessfully | Maturity Date            |
      | 25        | 52           | 0                | unsuccessfully | Maturity Date            |
      | 25        | 53           | 0                | unsuccessfully | Maturity Date            |
      | 25        | 54           | 0                | unsuccessfully | Coverage Type            |
      | 25        | 55           | 0                | unsuccessfully | Coverage Amount          |
      | 25        | 56           | 0                | unsuccessfully | Coverage Amount          |
      | 25        | 57           | 0                | unsuccessfully | Coverage Amount          |
      | 25        | 58           | 0                | unsuccessfully | Coverage Amount          |
      | 25        | 59           | 0                | unsuccessfully | Coverage Amount          |
      | 25        | 60           | 0                | unsuccessfully | Coverage Amount          |
      | 25        | 61           | 0                | unsuccessfully | Premium Amount           |
      | 25        | 62           | 0                | unsuccessfully | Premium Amount           |
      | 25        | 63           | 0                | unsuccessfully | Premium Amount           |
      | 25        | 64           | 0                | unsuccessfully | Premium Amount           |
      | 25        | 65           | 0                | unsuccessfully | Premium Amount           |
      | 25        | 66           | 0                | unsuccessfully | Premium Amount           |
      | 25        | 71           | 0                | unsuccessfully | Quantity                 |
      | 25        | 72           | 0                | unsuccessfully | Quantity                 |
      | 25        | 89           | 0                | successfully   | Mandatory                |
      | 25        | 90           | 0                | successfully   | All                      |

 #FeatureID-ACAUTOCAS-207
  Scenario Outline: Data validation on VAP Details page for VAP type "Credit Protection" at row number "<VAPRowNumber>" for "<ValidationField>" field
    And user has selected "Enable at Post Sanction" flag in "VAP Parameter Policy" master for vap type "Credit Protection"
    And user open an application from workbook "VAPDetailsValidate.xlsx" under sheet "vap_category_insurance" for row number "<RowNumber>"
    When user navigates to VAP details tab under Loan Details tab
    And user selects vap product of vap type "Credit Protection"
    And user enters data from workbook "VAPDetailsValidate.xlsx" under sheet "vap_details_insurance" for row number "<VAPRowNumber>"
    And user enters data from workbook "VAPDetailsValidate.xlsx" under sheet "nominee_details" for row number "<NomineeRowNumber>"
    And user saves the data
    Then user should be able to "<SuccessFailure>" save data for the field "<ValidationField>" with message
#"<SuccessFailureReason>" for the field "<ValidationField>"
    Examples:
      | RowNumber | VAPRowNumber | NomineeRowNumber | SuccessFailure | ValidationField          |
      | 32        | 17           | 0                | unsuccessfully | VAP Treatment            |
      | 32        | 18           | 0                | unsuccessfully | VAP Treatment            |
      | 32        | 19           | 0                | unsuccessfully | VAP Amount               |
      | 32        | 20           | 0                | unsuccessfully | VAP Amount               |
      | 32        | 21           | 0                | unsuccessfully | VAP Amount               |
      | 32        | 22           | 0                | unsuccessfully | VAP Amount               |
      | 32        | 23           | 0                | unsuccessfully | VAP Amount               |
      | 32        | 24           | 0                | unsuccessfully | Differential Amount      |
      | 32        | 25           | 0                | unsuccessfully | Differential Amount      |
      | 32        | 26           | 0                | unsuccessfully | Differential Amount      |
      | 32        | 27           | 0                | unsuccessfully | Differential Amount      |
      | 32        | 29           | 0                | unsuccessfully | Cover Note Number        |
      | 32        | 30           | 0                | unsuccessfully | Cover Note Number        |
      | 32        | 31           | 0                | unsuccessfully | Cover Note Number        |
      | 32        | 32           | 0                | unsuccessfully | Cover Note Number        |
      | 32        | 33           | 0                | unsuccessfully | Cover Note Number        |
      | 32        | 34           | 0                | unsuccessfully | Cover Note Number        |
      | 32        | 36           | 0                | unsuccessfully | Cover Note Creation Date |
      | 32        | 37           | 0                | unsuccessfully | Cover Note Creation Date |
      | 32        | 38           | 0                | unsuccessfully | Policy Number            |
      | 32        | 39           | 0                | unsuccessfully | Policy Number            |
      | 32        | 40           | 0                | unsuccessfully | Policy Number            |
      | 32        | 41           | 0                | unsuccessfully | Policy Number            |
      | 32        | 42           | 0                | unsuccessfully | Policy Number            |
      | 32        | 43           | 0                | unsuccessfully | Policy Number            |
      | 32        | 45           | 0                | unsuccessfully | Bought From              |
      | 32        | 46           | 0                | unsuccessfully | Disburse To              |
      | 32        | 47           | 0                | unsuccessfully | Disburse To              |
      | 32        | 48           | 0                | unsuccessfully | Start Date               |
      | 32        | 49           | 0                | unsuccessfully | Start Date               |
      | 32        | 50           | 0                | unsuccessfully | Maturity Date            |
      | 32        | 51           | 0                | unsuccessfully | Maturity Date            |
      | 32        | 52           | 0                | unsuccessfully | Maturity Date            |
      | 32        | 53           | 0                | unsuccessfully | Maturity Date            |
      | 32        | 54           | 0                | unsuccessfully | Coverage Type            |
      | 32        | 55           | 0                | unsuccessfully | Coverage Amount          |
      | 32        | 56           | 0                | unsuccessfully | Coverage Amount          |
      | 32        | 57           | 0                | unsuccessfully | Coverage Amount          |
      | 32        | 58           | 0                | unsuccessfully | Coverage Amount          |
      | 32        | 59           | 0                | unsuccessfully | Coverage Amount          |
      | 32        | 60           | 0                | unsuccessfully | Coverage Amount          |
      | 32        | 61           | 0                | unsuccessfully | Premium Amount           |
      | 32        | 62           | 0                | unsuccessfully | Premium Amount           |
      | 32        | 63           | 0                | unsuccessfully | Premium Amount           |
      | 32        | 64           | 0                | unsuccessfully | Premium Amount           |
      | 32        | 65           | 0                | unsuccessfully | Premium Amount           |
      | 32        | 66           | 0                | unsuccessfully | Premium Amount           |
      | 32        | 71           | 0                | unsuccessfully | Quantity                 |
      | 32        | 72           | 0                | unsuccessfully | Quantity                 |
      | 32        | 91           | 0                | successfully   | Mandatory                |
      | 32        | 92           | 0                | successfully   | All                      |

