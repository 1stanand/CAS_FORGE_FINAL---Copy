@Epic-VAP
@AuthoredBy-sajja.ravikumar
#OriginalAuthor-rajni.gola
@ReviewedBy-
@ImplementedBy-
@TechReviewedBy-

@NotImplemented

Feature: Validate VAP Details Validations for Insurance VAP Category at BDE stage

  Background:
    Given User is logged in CAS with "<SourceDataFile>" under "<SheetName>" and "<RowNumber>"
    And user has configured VAP policy for product mapped in the application in Product master
    And user has configured VAP policy for scheme mapped in the application in Scheme master
    And user has configured VAP Parameter Policy, VAP Amount Computation Policy, VAP Payout Computation Policy, VAP Policy masters under CAS - Common Masters

  #FeatureID-ACAUTOCAS-207
  Scenario Outline: Data validation on VAP Details page for VAP type Asset Insurance at row number "<VAPRowNumber>" for "<ValidationField>" field
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
      | 0         | 0            | 0                | successfully   | Collateral Id            |
      | 0         | 1            | 0                | successfully   | VAP Treatment            |
      | 0         | 2            | 0                | successfully   | Bought From              |
      | 0         | 3            | 0                | successfully   | Disburse To              |
      | 0         | 4            | 0                | successfully   | Policy Number            |
      | 0         | 5            | 0                | successfully   | VAP Amount               |
      | 0         | 6            | 0                | successfully   | Differential Amount      |
      | 0         | 7            | 0                | successfully   | Cover Note Number        |
      | 0         | 8            | 0                | successfully   | Cover Note Creation Date |
      | 0         | 9            | 0                | successfully   | Start Date               |
      | 0         | 10           | 0                | successfully   | Maturity Date            |
      | 0         | 11           | 0                | successfully   | Coverage Type            |
      | 0         | 12           | 0                | successfully   | Coverage Amount          |
      | 0         | 13           | 0                | successfully   | Premium Amount           |
      | 0         | 14           | 0                | successfully   | Loss Payee               |
      | 0         | 15           | 0                | unsuccessfully | Collateral Id            |
      | 0         | 16           | 0                | unsuccessfully | Collateral Id            |
      | 0         | 17           | 0                | unsuccessfully | VAP Treatment            |
      | 0         | 18           | 0                | unsuccessfully | VAP Treatment            |
      | 0         | 19           | 0                | unsuccessfully | VAP Amount               |
      | 0         | 20           | 0                | unsuccessfully | VAP Amount               |
      | 0         | 21           | 0                | unsuccessfully | VAP Amount               |
      | 0         | 22           | 0                | unsuccessfully | VAP Amount               |
      | 0         | 23           | 0                | unsuccessfully | VAP Amount               |
      | 0         | 24           | 0                | unsuccessfully | Differential Amount      |
      | 0         | 25           | 0                | unsuccessfully | Differential Amount      |
      | 0         | 26           | 0                | unsuccessfully | Differential Amount      |
      | 0         | 27           | 0                | unsuccessfully | Differential Amount      |
      | 0         | 28           | 0                | successfully   | Differential Amount      |
      | 0         | 29           | 0                | unsuccessfully | Cover Note Number        |
      | 0         | 30           | 0                | unsuccessfully | Cover Note Number        |
      | 0         | 31           | 0                | unsuccessfully | Cover Note Number        |
      | 0         | 32           | 0                | unsuccessfully | Cover Note Number        |
      | 0         | 33           | 0                | unsuccessfully | Cover Note Number        |
      | 0         | 34           | 0                | unsuccessfully | Cover Note Number        |
      | 0         | 35           | 0                | successfully   | Cover Note Number        |
      | 0         | 36           | 0                | unsuccessfully | Cover Note Creation Date |
      | 0         | 37           | 0                | unsuccessfully | Cover Note Creation Date |
      | 0         | 38           | 0                | unsuccessfully | Policy Number            |
      | 0         | 39           | 0                | unsuccessfully | Policy Number            |
      | 0         | 40           | 0                | unsuccessfully | Policy Number            |
      | 0         | 41           | 0                | unsuccessfully | Policy Number            |
      | 0         | 42           | 0                | unsuccessfully | Policy Number            |
      | 0         | 43           | 0                | unsuccessfully | Policy Number            |
      | 0         | 44           | 0                | successfully   | Policy Number            |
      | 0         | 45           | 0                | unsuccessfully | Bought From              |
      | 0         | 46           | 0                | unsuccessfully | Disburse To              |
      | 0         | 47           | 0                | unsuccessfully | Disburse To              |
      | 0         | 48           | 0                | unsuccessfully | Start Date               |
      | 0         | 49           | 0                | unsuccessfully | Start Date               |
      | 0         | 50           | 0                | unsuccessfully | Maturity Date            |
      | 0         | 51           | 0                | unsuccessfully | Maturity Date            |
      | 0         | 52           | 0                | unsuccessfully | Maturity Date            |
      | 0         | 52           | 0                | unsuccessfully | Maturity Date            |
      | 0         | 54           | 0                | unsuccessfully | Coverage Type            |
      | 0         | 55           | 0                | unsuccessfully | Coverage Amount          |
      | 0         | 56           | 0                | unsuccessfully | Coverage Amount          |
      | 0         | 57           | 0                | unsuccessfully | Coverage Amount          |
      | 0         | 58           | 0                | unsuccessfully | Coverage Amount          |
      | 0         | 59           | 0                | unsuccessfully | Coverage Amount          |
      | 0         | 60           | 0                | unsuccessfully | Coverage Amount          |
      | 0         | 61           | 0                | unsuccessfully | Premium Amount           |
      | 0         | 62           | 0                | unsuccessfully | Premium Amount           |
      | 0         | 63           | 0                | unsuccessfully | Premium Amount           |
      | 0         | 64           | 0                | unsuccessfully | Premium Amount           |
      | 0         | 65           | 0                | unsuccessfully | Premium Amount           |
      | 0         | 66           | 0                | unsuccessfully | Premium Amount           |
      | 0         | 67           | 0                | unsuccessfully | Loss Payee               |
      | 0         | 68           | 0                | unsuccessfully | Loss Payee               |
      | 0         | 69           | 0                | unsuccessfully | Loss Payee               |
      | 0         | 70           | 0                | unsuccessfully | Loss Payee               |
      | 0         | 71           | 0                | unsuccessfully | Quantity                 |
      | 0         | 72           | 0                | unsuccessfully | Quantity                 |
      | 0         | 73           | 0                | successfully   | All                      |

 #FeatureID-ACAUTOCAS-207
  Scenario Outline: Data validation on VAP Details page for VAP type GAP Insurance at row number "<VAPRowNumber>" for "<ValidationField>" field
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
      | 7         | 15           | 0                | unsuccessfully | Collateral Id            |
      | 7         | 16           | 0                | unsuccessfully | Collateral Id            |
      | 7         | 17           | 0                | unsuccessfully | VAP Treatment            |
      | 7         | 18           | 0                | unsuccessfully | VAP Treatment            |
      | 7         | 19           | 0                | unsuccessfully | VAP Amount               |
      | 7         | 20           | 0                | unsuccessfully | VAP Amount               |
      | 7         | 21           | 0                | unsuccessfully | VAP Amount               |
      | 7         | 22           | 0                | unsuccessfully | VAP Amount               |
      | 7         | 23           | 0                | unsuccessfully | VAP Amount               |
      | 7         | 24           | 0                | unsuccessfully | Differential Amount      |
      | 7         | 25           | 0                | unsuccessfully | Differential Amount      |
      | 7         | 26           | 0                | unsuccessfully | Differential Amount      |
      | 7         | 27           | 0                | unsuccessfully | Differential Amount      |
      | 7         | 29           | 0                | unsuccessfully | Cover Note Number        |
      | 7         | 30           | 0                | unsuccessfully | Cover Note Number        |
      | 7         | 31           | 0                | unsuccessfully | Cover Note Number        |
      | 7         | 32           | 0                | unsuccessfully | Cover Note Number        |
      | 7         | 33           | 0                | unsuccessfully | Cover Note Number        |
      | 7         | 34           | 0                | unsuccessfully | Cover Note Number        |
      | 7         | 36           | 0                | unsuccessfully | Cover Note Creation Date |
      | 7         | 37           | 0                | unsuccessfully | Cover Note Creation Date |
      | 7         | 38           | 0                | unsuccessfully | Policy Number            |
      | 7         | 39           | 0                | unsuccessfully | Policy Number            |
      | 7         | 40           | 0                | unsuccessfully | Policy Number            |
      | 7         | 41           | 0                | unsuccessfully | Policy Number            |
      | 7         | 42           | 0                | unsuccessfully | Policy Number            |
      | 7         | 43           | 0                | unsuccessfully | Policy Number            |
      | 7         | 45           | 0                | unsuccessfully | Bought From              |
      | 7         | 46           | 0                | unsuccessfully | Disburse To              |
      | 7         | 47           | 0                | unsuccessfully | Disburse To              |
      | 7         | 48           | 0                | unsuccessfully | Start Date               |
      | 7         | 49           | 0                | unsuccessfully | Start Date               |
      | 7         | 50           | 0                | unsuccessfully | Maturity Date            |
      | 7         | 51           | 0                | unsuccessfully | Maturity Date            |
      | 7         | 52           | 0                | unsuccessfully | Maturity Date            |
      | 7         | 52           | 0                | unsuccessfully | Maturity Date            |
      | 7         | 54           | 0                | unsuccessfully | Coverage Type            |
      | 7         | 55           | 0                | unsuccessfully | Coverage Amount          |
      | 7         | 56           | 0                | unsuccessfully | Coverage Amount          |
      | 7         | 57           | 0                | unsuccessfully | Coverage Amount          |
      | 7         | 58           | 0                | unsuccessfully | Coverage Amount          |
      | 7         | 59           | 0                | unsuccessfully | Coverage Amount          |
      | 7         | 60           | 0                | unsuccessfully | Coverage Amount          |
      | 7         | 61           | 0                | unsuccessfully | Premium Amount           |
      | 7         | 62           | 0                | unsuccessfully | Premium Amount           |
      | 7         | 63           | 0                | unsuccessfully | Premium Amount           |
      | 7         | 64           | 0                | unsuccessfully | Premium Amount           |
      | 7         | 65           | 0                | unsuccessfully | Premium Amount           |
      | 7         | 66           | 0                | unsuccessfully | Premium Amount           |
      | 7         | 71           | 0                | unsuccessfully | Quantity                 |
      | 7         | 72           | 0                | unsuccessfully | Quantity                 |
      | 7         | 74           | 0                | unsuccessfully | Date Of Delivery         |
      | 7         | 75           | 0                | unsuccessfully | Date Of Delivery         |
      | 7         | 76           | 0                | unsuccessfully | Distance Covered         |
      | 7         | 77           | 0                | unsuccessfully | Distance Covered         |
      | 7         | 78           | 0                | unsuccessfully | Distance Covered         |
      | 7         | 85           | 0                | successfully   | Mandatory                |
      | 7         | 86           | 0                | successfully   | All                      |

 #FeatureID-ACAUTOCAS-207
  Scenario Outline: Data validation on VAP Details page for VAP type Life Insurance at row number "<VAPRowNumber>" for "<ValidationField>" field
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
      | 14        | 17           | 0                | unsuccessfully | VAP Treatment            |
      | 14        | 18           | 0                | unsuccessfully | VAP Treatment            |
      | 14        | 19           | 0                | unsuccessfully | VAP Amount               |
      | 14        | 20           | 0                | unsuccessfully | VAP Amount               |
      | 14        | 21           | 0                | unsuccessfully | VAP Amount               |
      | 14        | 22           | 0                | unsuccessfully | VAP Amount               |
      | 14        | 23           | 0                | unsuccessfully | VAP Amount               |
      | 14        | 24           | 0                | unsuccessfully | Differential Amount      |
      | 14        | 25           | 0                | unsuccessfully | Differential Amount      |
      | 14        | 26           | 0                | unsuccessfully | Differential Amount      |
      | 14        | 27           | 0                | unsuccessfully | Differential Amount      |
      | 14        | 29           | 0                | unsuccessfully | Cover Note Number        |
      | 14        | 30           | 0                | unsuccessfully | Cover Note Number        |
      | 14        | 31           | 0                | unsuccessfully | Cover Note Number        |
      | 14        | 32           | 0                | unsuccessfully | Cover Note Number        |
      | 14        | 33           | 0                | unsuccessfully | Cover Note Number        |
      | 14        | 34           | 0                | unsuccessfully | Cover Note Number        |
      | 14        | 36           | 0                | unsuccessfully | Cover Note Creation Date |
      | 14        | 37           | 0                | unsuccessfully | Cover Note Creation Date |
      | 14        | 38           | 0                | unsuccessfully | Policy Number            |
      | 14        | 39           | 0                | unsuccessfully | Policy Number            |
      | 14        | 40           | 0                | unsuccessfully | Policy Number            |
      | 14        | 41           | 0                | unsuccessfully | Policy Number            |
      | 14        | 42           | 0                | unsuccessfully | Policy Number            |
      | 14        | 43           | 0                | unsuccessfully | Policy Number            |
      | 14        | 45           | 0                | unsuccessfully | Bought From              |
      | 14        | 46           | 0                | unsuccessfully | Disburse To              |
      | 14        | 47           | 0                | unsuccessfully | Disburse To              |
      | 14        | 48           | 0                | unsuccessfully | Start Date               |
      | 14        | 49           | 0                | unsuccessfully | Start Date               |
      | 14        | 50           | 0                | unsuccessfully | Maturity Date            |
      | 14        | 51           | 0                | unsuccessfully | Maturity Date            |
      | 14        | 52           | 0                | unsuccessfully | Maturity Date            |
      | 14        | 53           | 0                | unsuccessfully | Maturity Date            |
      | 14        | 54           | 0                | unsuccessfully | Coverage Type            |
      | 14        | 55           | 0                | unsuccessfully | Coverage Amount          |
      | 14        | 56           | 0                | unsuccessfully | Coverage Amount          |
      | 14        | 57           | 0                | unsuccessfully | Coverage Amount          |
      | 14        | 58           | 0                | unsuccessfully | Coverage Amount          |
      | 14        | 59           | 0                | unsuccessfully | Coverage Amount          |
      | 14        | 60           | 0                | unsuccessfully | Coverage Amount          |
      | 14        | 61           | 0                | unsuccessfully | Premium Amount           |
      | 14        | 62           | 0                | unsuccessfully | Premium Amount           |
      | 14        | 63           | 0                | unsuccessfully | Premium Amount           |
      | 14        | 64           | 0                | unsuccessfully | Premium Amount           |
      | 14        | 65           | 0                | unsuccessfully | Premium Amount           |
      | 14        | 66           | 0                | unsuccessfully | Premium Amount           |
      | 14        | 71           | 0                | unsuccessfully | Quantity                 |
      | 14        | 72           | 0                | unsuccessfully | Quantity                 |
      | 14        | 87           | 0                | successfully   | Mandatory                |
      | 14        | 88           | 0                | successfully   | All                      |

 #FeatureID-ACAUTOCAS-207
  Scenario Outline: Data validation on VAP Details page for VAP type Payment Protection at row number "<VAPRowNumber>" for "<ValidationField>" field
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
      | 21        | 17           | 0                | unsuccessfully | VAP Treatment            |
      | 21        | 18           | 0                | unsuccessfully | VAP Treatment            |
      | 21        | 19           | 0                | unsuccessfully | VAP Amount               |
      | 21        | 20           | 0                | unsuccessfully | VAP Amount               |
      | 21        | 21           | 0                | unsuccessfully | VAP Amount               |
      | 21        | 22           | 0                | unsuccessfully | VAP Amount               |
      | 21        | 23           | 0                | unsuccessfully | VAP Amount               |
      | 21        | 24           | 0                | unsuccessfully | Differential Amount      |
      | 21        | 25           | 0                | unsuccessfully | Differential Amount      |
      | 21        | 26           | 0                | unsuccessfully | Differential Amount      |
      | 21        | 27           | 0                | unsuccessfully | Differential Amount      |
      | 21        | 29           | 0                | unsuccessfully | Cover Note Number        |
      | 21        | 30           | 0                | unsuccessfully | Cover Note Number        |
      | 21        | 31           | 0                | unsuccessfully | Cover Note Number        |
      | 21        | 32           | 0                | unsuccessfully | Cover Note Number        |
      | 21        | 33           | 0                | unsuccessfully | Cover Note Number        |
      | 21        | 34           | 0                | unsuccessfully | Cover Note Number        |
      | 21        | 36           | 0                | unsuccessfully | Cover Note Creation Date |
      | 21        | 37           | 0                | unsuccessfully | Cover Note Creation Date |
      | 21        | 38           | 0                | unsuccessfully | Policy Number            |
      | 21        | 39           | 0                | unsuccessfully | Policy Number            |
      | 21        | 40           | 0                | unsuccessfully | Policy Number            |
      | 21        | 41           | 0                | unsuccessfully | Policy Number            |
      | 21        | 42           | 0                | unsuccessfully | Policy Number            |
      | 21        | 43           | 0                | unsuccessfully | Policy Number            |
      | 21        | 45           | 0                | unsuccessfully | Bought From              |
      | 21        | 46           | 0                | unsuccessfully | Disburse To              |
      | 21        | 47           | 0                | unsuccessfully | Disburse To              |
      | 21        | 48           | 0                | unsuccessfully | Start Date               |
      | 21        | 49           | 0                | unsuccessfully | Start Date               |
      | 21        | 50           | 0                | unsuccessfully | Maturity Date            |
      | 21        | 51           | 0                | unsuccessfully | Maturity Date            |
      | 21        | 52           | 0                | unsuccessfully | Maturity Date            |
      | 21        | 53           | 0                | unsuccessfully | Maturity Date            |
      | 21        | 54           | 0                | unsuccessfully | Coverage Type            |
      | 21        | 55           | 0                | unsuccessfully | Coverage Amount          |
      | 21        | 56           | 0                | unsuccessfully | Coverage Amount          |
      | 21        | 57           | 0                | unsuccessfully | Coverage Amount          |
      | 21        | 58           | 0                | unsuccessfully | Coverage Amount          |
      | 21        | 59           | 0                | unsuccessfully | Coverage Amount          |
      | 21        | 60           | 0                | unsuccessfully | Coverage Amount          |
      | 21        | 61           | 0                | unsuccessfully | Premium Amount           |
      | 21        | 62           | 0                | unsuccessfully | Premium Amount           |
      | 21        | 63           | 0                | unsuccessfully | Premium Amount           |
      | 21        | 64           | 0                | unsuccessfully | Premium Amount           |
      | 21        | 65           | 0                | unsuccessfully | Premium Amount           |
      | 21        | 66           | 0                | unsuccessfully | Premium Amount           |
      | 21        | 71           | 0                | unsuccessfully | Quantity                 |
      | 21        | 72           | 0                | unsuccessfully | Quantity                 |
      | 21        | 89           | 0                | successfully   | Mandatory                |
      | 21        | 90           | 0                | successfully   | All                      |

 #FeatureID-ACAUTOCAS-207
  Scenario Outline: Data validation on VAP Details page for VAP type Credit Protection at row number "<VAPRowNumber>" for "<ValidationField>" field
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
      | 28        | 17           | 0                | unsuccessfully | VAP Treatment            |
      | 28        | 18           | 0                | unsuccessfully | VAP Treatment            |
      | 28        | 19           | 0                | unsuccessfully | VAP Amount               |
      | 28        | 20           | 0                | unsuccessfully | VAP Amount               |
      | 28        | 21           | 0                | unsuccessfully | VAP Amount               |
      | 28        | 22           | 0                | unsuccessfully | VAP Amount               |
      | 28        | 23           | 0                | unsuccessfully | VAP Amount               |
      | 28        | 24           | 0                | unsuccessfully | Differential Amount      |
      | 28        | 25           | 0                | unsuccessfully | Differential Amount      |
      | 28        | 26           | 0                | unsuccessfully | Differential Amount      |
      | 28        | 27           | 0                | unsuccessfully | Differential Amount      |
      | 28        | 29           | 0                | unsuccessfully | Cover Note Number        |
      | 28        | 30           | 0                | unsuccessfully | Cover Note Number        |
      | 28        | 31           | 0                | unsuccessfully | Cover Note Number        |
      | 28        | 32           | 0                | unsuccessfully | Cover Note Number        |
      | 28        | 33           | 0                | unsuccessfully | Cover Note Number        |
      | 28        | 34           | 0                | unsuccessfully | Cover Note Number        |
      | 28        | 36           | 0                | unsuccessfully | Cover Note Creation Date |
      | 28        | 37           | 0                | unsuccessfully | Cover Note Creation Date |
      | 28        | 38           | 0                | unsuccessfully | Policy Number            |
      | 28        | 39           | 0                | unsuccessfully | Policy Number            |
      | 28        | 40           | 0                | unsuccessfully | Policy Number            |
      | 28        | 41           | 0                | unsuccessfully | Policy Number            |
      | 28        | 42           | 0                | unsuccessfully | Policy Number            |
      | 28        | 43           | 0                | unsuccessfully | Policy Number            |
      | 28        | 45           | 0                | unsuccessfully | Bought From              |
      | 28        | 46           | 0                | unsuccessfully | Disburse To              |
      | 28        | 47           | 0                | unsuccessfully | Disburse To              |
      | 28        | 48           | 0                | unsuccessfully | Start Date               |
      | 28        | 49           | 0                | unsuccessfully | Start Date               |
      | 28        | 50           | 0                | unsuccessfully | Maturity Date            |
      | 28        | 51           | 0                | unsuccessfully | Maturity Date            |
      | 28        | 52           | 0                | unsuccessfully | Maturity Date            |
      | 28        | 53           | 0                | unsuccessfully | Maturity Date            |
      | 28        | 54           | 0                | unsuccessfully | Coverage Type            |
      | 28        | 55           | 0                | unsuccessfully | Coverage Amount          |
      | 28        | 56           | 0                | unsuccessfully | Coverage Amount          |
      | 28        | 57           | 0                | unsuccessfully | Coverage Amount          |
      | 28        | 58           | 0                | unsuccessfully | Coverage Amount          |
      | 28        | 59           | 0                | unsuccessfully | Coverage Amount          |
      | 28        | 60           | 0                | unsuccessfully | Coverage Amount          |
      | 28        | 61           | 0                | unsuccessfully | Premium Amount           |
      | 28        | 62           | 0                | unsuccessfully | Premium Amount           |
      | 28        | 63           | 0                | unsuccessfully | Premium Amount           |
      | 28        | 64           | 0                | unsuccessfully | Premium Amount           |
      | 28        | 65           | 0                | unsuccessfully | Premium Amount           |
      | 28        | 66           | 0                | unsuccessfully | Premium Amount           |
      | 28        | 71           | 0                | unsuccessfully | Quantity                 |
      | 28        | 72           | 0                | unsuccessfully | Quantity                 |
      | 28        | 91           | 0                | successfully   | Mandatory                |
      | 28        | 92           | 0                | successfully   | All                      |

