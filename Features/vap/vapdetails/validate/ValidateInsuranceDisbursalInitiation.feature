@Epic-VAP
@AuthoredBy-sajja.ravikumar
#OriginalAuthor-rajni.gola
@ReviewedBy-
@ImplementedBy-
@TechReviewedBy-

@NotImplemented

Feature: Validate VAP Details Validations for Insurance VAP Category at Disbursal Initiation stage

  Background:
    Given User is logged in CAS with "<SourceDataFile>" under "<SheetName>" and "<RowNumber>"
    And user has configured VAP policy for product mapped in the application in Product master
    And user has configured VAP policy for scheme mapped in the application in Scheme master
    And user has configured VAP Parameter Policy, VAP Amount Computation Policy, VAP Payout Computation Policy, VAP Policy masters under CAS - Common Masters

  #FeatureID-ACAUTOCAS-207
  Scenario Outline: Data validation on VAP Details page for VAP type Asset Insurance at row number "<VAPRowNumber>" for "<ValidationField>" field
    And user has selected "Enable at Post Sanction" flag in "VAP Parameter Policy" master for vap type "Asset Insurance"
    And user open an application from workbook "VAPDetailsValidate.xlsx" under sheet "vap_category_insurance" for row number "<RowNumber>"
    When user navigates to VAP details tab
    And user selects vap product of vap type "Asset Insurance"
    And user enters data from workbook "VAPDetailsValidate.xlsx" under sheet "vap_details_insurance" for row number "<VAPRowNumber>"
    And user enters data from workbook "VAPDetailsValidate.xlsx" under sheet "nominee_details" for row number "<NomineeRowNumber>"
    And user saves the data
    Then user should be able to "<SuccessFailure>" save data for the field "<ValidationField>" with message
    #"<SuccessFailureReason>" for the field "<ValidationField>"
    Examples:
      | RowNumber | VAPRowNumber | NomineeRowNumber | SuccessFailure | ValidationField          |
      | 5         | 0            | 0                | successfully   | Collateral Id            |
      | 5         | 1            | 0                | successfully   | VAP Treatment            |
      | 5         | 2            | 0                | successfully   | Bought From              |
      | 5         | 3            | 0                | successfully   | Disburse To              |
      | 5         | 4            | 0                | successfully   | Policy Number            |
      | 5         | 5            | 0                | successfully   | VAP Amount               |
      | 5         | 6            | 0                | successfully   | Differential Amount      |
      | 5         | 7            | 0                | successfully   | Cover Note Number        |
      | 5         | 8            | 0                | successfully   | Cover Note Creation Date |
      | 5         | 9            | 0                | successfully   | Start Date               |
      | 5         | 10           | 0                | successfully   | Maturity Date            |
      | 5         | 11           | 0                | successfully   | Coverage Type            |
      | 5         | 12           | 0                | successfully   | Coverage Amount          |
      | 5         | 13           | 0                | successfully   | Premium Amount           |
      | 5         | 14           | 0                | successfully   | Loss Payee               |
      | 5         | 15           | 0                | unsuccessfully | Collateral Id            |
      | 5         | 16           | 0                | unsuccessfully | Collateral Id            |
      | 5         | 17           | 0                | unsuccessfully | VAP Treatment            |
      | 5         | 18           | 0                | unsuccessfully | VAP Treatment            |
      | 5         | 19           | 0                | unsuccessfully | VAP Amount               |
      | 5         | 20           | 0                | unsuccessfully | VAP Amount               |
      | 5         | 21           | 0                | unsuccessfully | VAP Amount               |
      | 5         | 22           | 0                | unsuccessfully | VAP Amount               |
      | 5         | 23           | 0                | unsuccessfully | VAP Amount               |
      | 5         | 24           | 0                | unsuccessfully | Differential Amount      |
      | 5         | 25           | 0                | unsuccessfully | Differential Amount      |
      | 5         | 26           | 0                | unsuccessfully | Differential Amount      |
      | 5         | 27           | 0                | unsuccessfully | Differential Amount      |
      | 5         | 28           | 0                | successfully   | Differential Amount      |
      | 5         | 29           | 0                | unsuccessfully | Cover Note Number        |
      | 5         | 30           | 0                | unsuccessfully | Cover Note Number        |
      | 5         | 31           | 0                | unsuccessfully | Cover Note Number        |
      | 5         | 32           | 0                | unsuccessfully | Cover Note Number        |
      | 5         | 33           | 0                | unsuccessfully | Cover Note Number        |
      | 5         | 34           | 0                | unsuccessfully | Cover Note Number        |
      | 5         | 35           | 0                | successfully   | Cover Note Number        |
      | 5         | 36           | 0                | unsuccessfully | Cover Note Creation Date |
      | 5         | 37           | 0                | unsuccessfully | Cover Note Creation Date |
      | 5         | 38           | 0                | unsuccessfully | Policy Number            |
      | 5         | 39           | 0                | unsuccessfully | Policy Number            |
      | 5         | 40           | 0                | unsuccessfully | Policy Number            |
      | 5         | 41           | 0                | unsuccessfully | Policy Number            |
      | 5         | 42           | 0                | unsuccessfully | Policy Number            |
      | 5         | 43           | 0                | unsuccessfully | Policy Number            |
      | 5         | 44           | 0                | successfully   | Policy Number            |
      | 5         | 45           | 0                | unsuccessfully | Bought From              |
      | 5         | 46           | 0                | unsuccessfully | Disburse To              |
      | 5         | 47           | 0                | unsuccessfully | Disburse To              |
      | 5         | 48           | 0                | unsuccessfully | Start Date               |
      | 5         | 49           | 0                | unsuccessfully | Start Date               |
      | 5         | 50           | 0                | unsuccessfully | Maturity Date            |
      | 5         | 51           | 0                | unsuccessfully | Maturity Date            |
      | 5         | 52           | 0                | unsuccessfully | Maturity Date            |
      | 5         | 52           | 0                | unsuccessfully | Maturity Date            |
      | 5         | 54           | 0                | unsuccessfully | Coverage Type            |
      | 5         | 55           | 0                | unsuccessfully | Coverage Amount          |
      | 5         | 56           | 0                | unsuccessfully | Coverage Amount          |
      | 5         | 57           | 0                | unsuccessfully | Coverage Amount          |
      | 5         | 58           | 0                | unsuccessfully | Coverage Amount          |
      | 5         | 59           | 0                | unsuccessfully | Coverage Amount          |
      | 5         | 60           | 0                | unsuccessfully | Coverage Amount          |
      | 5         | 61           | 0                | unsuccessfully | Premium Amount           |
      | 5         | 62           | 0                | unsuccessfully | Premium Amount           |
      | 5         | 63           | 0                | unsuccessfully | Premium Amount           |
      | 5         | 64           | 0                | unsuccessfully | Premium Amount           |
      | 5         | 65           | 0                | unsuccessfully | Premium Amount           |
      | 5         | 66           | 0                | unsuccessfully | Premium Amount           |
      | 5         | 67           | 0                | unsuccessfully | Loss Payee               |
      | 5         | 68           | 0                | unsuccessfully | Loss Payee               |
      | 5         | 69           | 0                | unsuccessfully | Loss Payee               |
      | 5         | 70           | 0                | unsuccessfully | Loss Payee               |
      | 5         | 71           | 0                | unsuccessfully | Quantity                 |
      | 5         | 72           | 0                | unsuccessfully | Quantity                 |
      | 5         | 73           | 0                | successfully   | All                      |

 #FeatureID-ACAUTOCAS-207
  Scenario Outline: Data validation on VAP Details page for VAP type GAP Insurance at row number "<VAPRowNumber>" for "<ValidationField>" field
    And user has selected "Enable at Post Sanction" flag in "VAP Parameter Policy" master for vap type "GAP Insurance"
    And user open an application from workbook "VAPDetailsValidate.xlsx" under sheet "vap_category_insurance" for row number "<RowNumber>"
    When user navigates to VAP details tab
    And user selects vap product of vap type "GAP Insurance"
    And user enters data from workbook "VAPDetailsValidate.xlsx" under sheet "vap_details_insurance" for row number "<VAPRowNumber>"
    And user enters data from workbook "VAPDetailsValidate.xlsx" under sheet "nominee_details" for row number "<NomineeRowNumber>"
    And user saves the data
    Then user should be able to "<SuccessFailure>" save data for the field "<ValidationField>" with message
    #  "<SuccessFailureReason>" for the field "<ValidationField>"
    Examples:
      | RowNumber | VAPRowNumber | NomineeRowNumber | SuccessFailure | ValidationField          |
      | 12         | 15           | 0                | unsuccessfully | Collateral Id            |
      | 12         | 16           | 0                | unsuccessfully | Collateral Id            |
      | 12         | 17           | 0                | unsuccessfully | VAP Treatment            |
      | 12         | 18           | 0                | unsuccessfully | VAP Treatment            |
      | 12         | 19           | 0                | unsuccessfully | VAP Amount               |
      | 12         | 20           | 0                | unsuccessfully | VAP Amount               |
      | 12         | 21           | 0                | unsuccessfully | VAP Amount               |
      | 12         | 22           | 0                | unsuccessfully | VAP Amount               |
      | 12         | 23           | 0                | unsuccessfully | VAP Amount               |
      | 12         | 24           | 0                | unsuccessfully | Differential Amount      |
      | 12         | 25           | 0                | unsuccessfully | Differential Amount      |
      | 12         | 26           | 0                | unsuccessfully | Differential Amount      |
      | 12         | 27           | 0                | unsuccessfully | Differential Amount      |
      | 12         | 29           | 0                | unsuccessfully | Cover Note Number        |
      | 12         | 30           | 0                | unsuccessfully | Cover Note Number        |
      | 12         | 31           | 0                | unsuccessfully | Cover Note Number        |
      | 12         | 32           | 0                | unsuccessfully | Cover Note Number        |
      | 12         | 33           | 0                | unsuccessfully | Cover Note Number        |
      | 12         | 34           | 0                | unsuccessfully | Cover Note Number        |
      | 12         | 36           | 0                | unsuccessfully | Cover Note Creation Date |
      | 12         | 37           | 0                | unsuccessfully | Cover Note Creation Date |
      | 12         | 38           | 0                | unsuccessfully | Policy Number            |
      | 12         | 39           | 0                | unsuccessfully | Policy Number            |
      | 12         | 40           | 0                | unsuccessfully | Policy Number            |
      | 12         | 41           | 0                | unsuccessfully | Policy Number            |
      | 12         | 42           | 0                | unsuccessfully | Policy Number            |
      | 12         | 43           | 0                | unsuccessfully | Policy Number            |
      | 12         | 45           | 0                | unsuccessfully | Bought From              |
      | 12         | 46           | 0                | unsuccessfully | Disburse To              |
      | 12         | 47           | 0                | unsuccessfully | Disburse To              |
      | 12         | 48           | 0                | unsuccessfully | Start Date               |
      | 12         | 49           | 0                | unsuccessfully | Start Date               |
      | 12         | 50           | 0                | unsuccessfully | Maturity Date            |
      | 12         | 51           | 0                | unsuccessfully | Maturity Date            |
      | 12         | 52           | 0                | unsuccessfully | Maturity Date            |
      | 12         | 52           | 0                | unsuccessfully | Maturity Date            |
      | 12         | 54           | 0                | unsuccessfully | Coverage Type            |
      | 12         | 55           | 0                | unsuccessfully | Coverage Amount          |
      | 12         | 56           | 0                | unsuccessfully | Coverage Amount          |
      | 12         | 57           | 0                | unsuccessfully | Coverage Amount          |
      | 12         | 58           | 0                | unsuccessfully | Coverage Amount          |
      | 12         | 59           | 0                | unsuccessfully | Coverage Amount          |
      | 12         | 60           | 0                | unsuccessfully | Coverage Amount          |
      | 12         | 61           | 0                | unsuccessfully | Premium Amount           |
      | 12         | 62           | 0                | unsuccessfully | Premium Amount           |
      | 12         | 63           | 0                | unsuccessfully | Premium Amount           |
      | 12         | 64           | 0                | unsuccessfully | Premium Amount           |
      | 12         | 65           | 0                | unsuccessfully | Premium Amount           |
      | 12         | 66           | 0                | unsuccessfully | Premium Amount           |
      | 12         | 71           | 0                | unsuccessfully | Quantity                 |
      | 12         | 72           | 0                | unsuccessfully | Quantity                 |
      | 12         | 74           | 0                | unsuccessfully | Date Of Delivery         |
      | 12         | 75           | 0                | unsuccessfully | Date Of Delivery         |
      | 12         | 76           | 0                | unsuccessfully | Distance Covered         |
      | 12         | 77           | 0                | unsuccessfully | Distance Covered         |
      | 12         | 78           | 0                | unsuccessfully | Distance Covered         |
      | 12         | 85           | 0                | successfully   | Mandatory                |
      | 12         | 86           | 0                | successfully   | All                      |

 #FeatureID-ACAUTOCAS-207
  Scenario Outline: Data validation on VAP Details page for VAP type Life Insurance at row number "<VAPRowNumber>" for "<ValidationField>" field
    And user has selected "Enable at Post Sanction" flag in "VAP Parameter Policy" master for vap type "Life Insurance"
    And user open an application from workbook "VAPDetailsValidate.xlsx" under sheet "vap_category_insurance" for row number "<RowNumber>"
    When user navigates to VAP details tab
    And user selects vap product of vap type "Life Insurance"
    And user enters data from workbook "VAPDetailsValidate.xlsx" under sheet "vap_details_insurance" for row number "<VAPRowNumber>"
    And user enters data from workbook "VAPDetailsValidate.xlsx" under sheet "nominee_details" for row number "<NomineeRowNumber>"
    And user saves the data
    Then user should be able to "<SuccessFailure>" save data for the field "<ValidationField>" with message
    #"<SuccessFailureReason>" for the field "<ValidationField>"
    Examples:
      | RowNumber | VAPRowNumber | NomineeRowNumber | SuccessFailure | ValidationField          |
      | 19        | 17           | 0                | unsuccessfully | VAP Treatment            |
      | 19        | 18           | 0                | unsuccessfully | VAP Treatment            |
      | 19        | 19           | 0                | unsuccessfully | VAP Amount               |
      | 19        | 20           | 0                | unsuccessfully | VAP Amount               |
      | 19        | 21           | 0                | unsuccessfully | VAP Amount               |
      | 19        | 22           | 0                | unsuccessfully | VAP Amount               |
      | 19        | 23           | 0                | unsuccessfully | VAP Amount               |
      | 19        | 24           | 0                | unsuccessfully | Differential Amount      |
      | 19        | 25           | 0                | unsuccessfully | Differential Amount      |
      | 19        | 26           | 0                | unsuccessfully | Differential Amount      |
      | 19        | 27           | 0                | unsuccessfully | Differential Amount      |
      | 19        | 29           | 0                | unsuccessfully | Cover Note Number        |
      | 19        | 30           | 0                | unsuccessfully | Cover Note Number        |
      | 19        | 31           | 0                | unsuccessfully | Cover Note Number        |
      | 19        | 32           | 0                | unsuccessfully | Cover Note Number        |
      | 19        | 33           | 0                | unsuccessfully | Cover Note Number        |
      | 19        | 34           | 0                | unsuccessfully | Cover Note Number        |
      | 19        | 36           | 0                | unsuccessfully | Cover Note Creation Date |
      | 19        | 37           | 0                | unsuccessfully | Cover Note Creation Date |
      | 19        | 38           | 0                | unsuccessfully | Policy Number            |
      | 19        | 39           | 0                | unsuccessfully | Policy Number            |
      | 19        | 40           | 0                | unsuccessfully | Policy Number            |
      | 19        | 41           | 0                | unsuccessfully | Policy Number            |
      | 19        | 42           | 0                | unsuccessfully | Policy Number            |
      | 19        | 43           | 0                | unsuccessfully | Policy Number            |
      | 19        | 45           | 0                | unsuccessfully | Bought From              |
      | 19        | 46           | 0                | unsuccessfully | Disburse To              |
      | 19        | 47           | 0                | unsuccessfully | Disburse To              |
      | 19        | 48           | 0                | unsuccessfully | Start Date               |
      | 19        | 49           | 0                | unsuccessfully | Start Date               |
      | 19        | 50           | 0                | unsuccessfully | Maturity Date            |
      | 19        | 51           | 0                | unsuccessfully | Maturity Date            |
      | 19        | 52           | 0                | unsuccessfully | Maturity Date            |
      | 19        | 53           | 0                | unsuccessfully | Maturity Date            |
      | 19        | 54           | 0                | unsuccessfully | Coverage Type            |
      | 19        | 55           | 0                | unsuccessfully | Coverage Amount          |
      | 19        | 56           | 0                | unsuccessfully | Coverage Amount          |
      | 19        | 57           | 0                | unsuccessfully | Coverage Amount          |
      | 19        | 58           | 0                | unsuccessfully | Coverage Amount          |
      | 19        | 59           | 0                | unsuccessfully | Coverage Amount          |
      | 19        | 60           | 0                | unsuccessfully | Coverage Amount          |
      | 19        | 61           | 0                | unsuccessfully | Premium Amount           |
      | 19        | 62           | 0                | unsuccessfully | Premium Amount           |
      | 19        | 63           | 0                | unsuccessfully | Premium Amount           |
      | 19        | 64           | 0                | unsuccessfully | Premium Amount           |
      | 19        | 65           | 0                | unsuccessfully | Premium Amount           |
      | 19        | 66           | 0                | unsuccessfully | Premium Amount           |
      | 19        | 71           | 0                | unsuccessfully | Quantity                 |
      | 19        | 72           | 0                | unsuccessfully | Quantity                 |
      | 19        | 87           | 0                | successfully   | Mandatory                |
      | 19        | 88           | 0                | successfully   | All                      |

 #FeatureID-ACAUTOCAS-207
  Scenario Outline: Data validation on VAP Details page for VAP type Payment Protection at row number "<VAPRowNumber>" for "<ValidationField>" field
    And user has selected "Enable at Post Sanction" flag in "VAP Parameter Policy" master for vap type "Payment Protection"
    And user open an application from workbook "VAPDetailsValidate.xlsx" under sheet "vap_category_insurance" for row number "<RowNumber>"
    When user navigates to VAP details tab
    And user selects vap product of vap type "Payment Protection"
    And user enters data from workbook "VAPDetailsValidate.xlsx" under sheet "vap_details_insurance" for row number "<VAPRowNumber>"
    And user enters data from workbook "VAPDetailsValidate.xlsx" under sheet "nominee_details" for row number "<NomineeRowNumber>"
    And user saves the data
    Then user should be able to "<SuccessFailure>" save data for the field "<ValidationField>" with message
    #"<SuccessFailureReason>" for the field "<ValidationField>"
    Examples:
      | RowNumber | VAPRowNumber | NomineeRowNumber | SuccessFailure | ValidationField          |
      | 26        | 17           | 0                | unsuccessfully | VAP Treatment            |
      | 26        | 18           | 0                | unsuccessfully | VAP Treatment            |
      | 26        | 19           | 0                | unsuccessfully | VAP Amount               |
      | 26        | 20           | 0                | unsuccessfully | VAP Amount               |
      | 26        | 21           | 0                | unsuccessfully | VAP Amount               |
      | 26        | 22           | 0                | unsuccessfully | VAP Amount               |
      | 26        | 23           | 0                | unsuccessfully | VAP Amount               |
      | 26        | 24           | 0                | unsuccessfully | Differential Amount      |
      | 26        | 25           | 0                | unsuccessfully | Differential Amount      |
      | 26        | 26           | 0                | unsuccessfully | Differential Amount      |
      | 26        | 27           | 0                | unsuccessfully | Differential Amount      |
      | 26        | 29           | 0                | unsuccessfully | Cover Note Number        |
      | 26        | 30           | 0                | unsuccessfully | Cover Note Number        |
      | 26        | 31           | 0                | unsuccessfully | Cover Note Number        |
      | 26        | 32           | 0                | unsuccessfully | Cover Note Number        |
      | 26        | 33           | 0                | unsuccessfully | Cover Note Number        |
      | 26        | 34           | 0                | unsuccessfully | Cover Note Number        |
      | 26        | 36           | 0                | unsuccessfully | Cover Note Creation Date |
      | 26        | 37           | 0                | unsuccessfully | Cover Note Creation Date |
      | 26        | 38           | 0                | unsuccessfully | Policy Number            |
      | 26        | 39           | 0                | unsuccessfully | Policy Number            |
      | 26        | 40           | 0                | unsuccessfully | Policy Number            |
      | 26        | 41           | 0                | unsuccessfully | Policy Number            |
      | 26        | 42           | 0                | unsuccessfully | Policy Number            |
      | 26        | 43           | 0                | unsuccessfully | Policy Number            |
      | 26        | 45           | 0                | unsuccessfully | Bought From              |
      | 26        | 46           | 0                | unsuccessfully | Disburse To              |
      | 26        | 47           | 0                | unsuccessfully | Disburse To              |
      | 26        | 48           | 0                | unsuccessfully | Start Date               |
      | 26        | 49           | 0                | unsuccessfully | Start Date               |
      | 26        | 50           | 0                | unsuccessfully | Maturity Date            |
      | 26        | 51           | 0                | unsuccessfully | Maturity Date            |
      | 26        | 52           | 0                | unsuccessfully | Maturity Date            |
      | 26        | 53           | 0                | unsuccessfully | Maturity Date            |
      | 26        | 54           | 0                | unsuccessfully | Coverage Type            |
      | 26        | 55           | 0                | unsuccessfully | Coverage Amount          |
      | 26        | 56           | 0                | unsuccessfully | Coverage Amount          |
      | 26        | 57           | 0                | unsuccessfully | Coverage Amount          |
      | 26        | 58           | 0                | unsuccessfully | Coverage Amount          |
      | 26        | 59           | 0                | unsuccessfully | Coverage Amount          |
      | 26        | 60           | 0                | unsuccessfully | Coverage Amount          |
      | 26        | 61           | 0                | unsuccessfully | Premium Amount           |
      | 26        | 62           | 0                | unsuccessfully | Premium Amount           |
      | 26        | 63           | 0                | unsuccessfully | Premium Amount           |
      | 26        | 64           | 0                | unsuccessfully | Premium Amount           |
      | 26        | 65           | 0                | unsuccessfully | Premium Amount           |
      | 26        | 66           | 0                | unsuccessfully | Premium Amount           |
      | 26        | 71           | 0                | unsuccessfully | Quantity                 |
      | 26        | 72           | 0                | unsuccessfully | Quantity                 |
      | 26        | 89           | 0                | successfully   | Mandatory                |
      | 26        | 90           | 0                | successfully   | All                      |

 #FeatureID-ACAUTOCAS-207
  Scenario Outline: Data validation on VAP Details page for VAP type Credit Protection at row number "<VAPRowNumber>" for "<ValidationField>" field
    And user has selected "Enable at Post Sanction" flag in "VAP Parameter Policy" master for vap type "Credit Protection"
    And user open an application from workbook "VAPDetailsValidate.xlsx" under sheet "vap_category_insurance" for row number "<RowNumber>"
    When user navigates to VAP details tab
    And user selects vap product of vap type "Credit Protection"
    And user enters data from workbook "VAPDetailsValidate.xlsx" under sheet "vap_details_insurance" for row number "<VAPRowNumber>"
    And user enters data from workbook "VAPDetailsValidate.xlsx" under sheet "nominee_details" for row number "<NomineeRowNumber>"
    And user saves the data
    Then user should be able to "<SuccessFailure>" save data for the field "<ValidationField>" with message
#"<SuccessFailureReason>" for the field "<ValidationField>"
    Examples:
      | RowNumber | VAPRowNumber | NomineeRowNumber | SuccessFailure | ValidationField          |
      | 33        | 17           | 0                | unsuccessfully | VAP Treatment            |
      | 33        | 18           | 0                | unsuccessfully | VAP Treatment            |
      | 33        | 19           | 0                | unsuccessfully | VAP Amount               |
      | 33        | 20           | 0                | unsuccessfully | VAP Amount               |
      | 33        | 21           | 0                | unsuccessfully | VAP Amount               |
      | 33        | 22           | 0                | unsuccessfully | VAP Amount               |
      | 33        | 23           | 0                | unsuccessfully | VAP Amount               |
      | 33        | 24           | 0                | unsuccessfully | Differential Amount      |
      | 33        | 25           | 0                | unsuccessfully | Differential Amount      |
      | 33        | 26           | 0                | unsuccessfully | Differential Amount      |
      | 33        | 27           | 0                | unsuccessfully | Differential Amount      |
      | 33        | 29           | 0                | unsuccessfully | Cover Note Number        |
      | 33        | 30           | 0                | unsuccessfully | Cover Note Number        |
      | 33        | 31           | 0                | unsuccessfully | Cover Note Number        |
      | 33        | 32           | 0                | unsuccessfully | Cover Note Number        |
      | 33        | 33           | 0                | unsuccessfully | Cover Note Number        |
      | 33        | 34           | 0                | unsuccessfully | Cover Note Number        |
      | 33        | 36           | 0                | unsuccessfully | Cover Note Creation Date |
      | 33        | 37           | 0                | unsuccessfully | Cover Note Creation Date |
      | 33        | 38           | 0                | unsuccessfully | Policy Number            |
      | 33        | 39           | 0                | unsuccessfully | Policy Number            |
      | 33        | 40           | 0                | unsuccessfully | Policy Number            |
      | 33        | 41           | 0                | unsuccessfully | Policy Number            |
      | 33        | 42           | 0                | unsuccessfully | Policy Number            |
      | 33        | 43           | 0                | unsuccessfully | Policy Number            |
      | 33        | 45           | 0                | unsuccessfully | Bought From              |
      | 33        | 46           | 0                | unsuccessfully | Disburse To              |
      | 33        | 47           | 0                | unsuccessfully | Disburse To              |
      | 33        | 48           | 0                | unsuccessfully | Start Date               |
      | 33        | 49           | 0                | unsuccessfully | Start Date               |
      | 33        | 50           | 0                | unsuccessfully | Maturity Date            |
      | 33        | 51           | 0                | unsuccessfully | Maturity Date            |
      | 33        | 52           | 0                | unsuccessfully | Maturity Date            |
      | 33        | 53           | 0                | unsuccessfully | Maturity Date            |
      | 33        | 54           | 0                | unsuccessfully | Coverage Type            |
      | 33        | 55           | 0                | unsuccessfully | Coverage Amount          |
      | 33        | 56           | 0                | unsuccessfully | Coverage Amount          |
      | 33        | 57           | 0                | unsuccessfully | Coverage Amount          |
      | 33        | 58           | 0                | unsuccessfully | Coverage Amount          |
      | 33        | 59           | 0                | unsuccessfully | Coverage Amount          |
      | 33        | 60           | 0                | unsuccessfully | Coverage Amount          |
      | 33        | 61           | 0                | unsuccessfully | Premium Amount           |
      | 33        | 62           | 0                | unsuccessfully | Premium Amount           |
      | 33        | 63           | 0                | unsuccessfully | Premium Amount           |
      | 33        | 64           | 0                | unsuccessfully | Premium Amount           |
      | 33        | 65           | 0                | unsuccessfully | Premium Amount           |
      | 33        | 66           | 0                | unsuccessfully | Premium Amount           |
      | 33        | 71           | 0                | unsuccessfully | Quantity                 |
      | 33        | 72           | 0                | unsuccessfully | Quantity                 |
      | 33        | 91           | 0                | successfully   | Mandatory                |
      | 33        | 92           | 0                | successfully   | All                      |

