@Epic-VAP
@AuthoredBy-sajja.ravikumar
#OriginalAuthor-rajni.gola
@ReviewedBy-
@ImplementedBy-
@TechReviewedBy-

@NotImplemented

Feature: Validate Nominee Details at BDE stage

  Background:
    Given User is logged in CAS with "<SourceDataFile>" under "<SheetName>" and "<RowNumber>"
    And user has configured VAP policy for product mapped in the application in Product master
    And user has configured VAP policy for scheme mapped in the application in Scheme master
    And user has configured VAP Parameter Policy, VAP Amount Computation Policy, VAP Payout Computation Policy, VAP Policy masters under CAS - Common Masters

  #FeatureID-ACAUTOCAS-207
  Scenario Outline: Nominee Data validation on VAP Details page for VAP type Asset Insurance at row number "<NomineeRowNumber>" for "<ValidationField>" field
    And user open an application from workbook "VAPDetailsValidate.xlsx" under sheet "vap_category_insurance" for row number "<RowNumber>"
    When user navigates to VAP details tab under Loan Details tab
    And user selects vap product of vap type "Asset Insurance"
    And user enters data from workbook "VAPDetailsValidate.xlsx" under sheet "vap_details_insurance" for row number "<VAPRowNumber>"
    And user enters data from workbook "VAPDetailsValidate.xlsx" under sheet "nominee_details" for row number "<NomineeRowNumber>"
    And user saves the data
    Then user should be able to "<SuccessFailure>" save data for the field "<ValidationField>" with message
    Examples:
      | RowNumber | NomineeRowNumber | VAPRowNumber | SuccessFailure | ValidationField           |
      | 0         | 0                | 0            | successfully   | Mandatory                 |
      | 0         | 1                | 0            | successfully   | All                       |
      | 0         | 2                | 0            | unsuccessfully | Nominee Name              |
      | 0         | 3                | 0            | unsuccessfully | Nominee Relationship      |
      | 0         | 4                | 0            | unsuccessfully | Date Of Birth             |
      | 0         | 5                | 0            | unsuccessfully | Nominee Name              |
      | 0         | 6                | 0            | unsuccessfully | Nominee Name              |
      | 0         | 7                | 0            | unsuccessfully | Date Of Birth             |
      | 0         | 8                | 0            | unsuccessfully | Appointee Name            |
      | 0         | 9                | 0            | unsuccessfully | Appointee Name            |
      | 0         | 10               | 0            | unsuccessfully | Appointee Name            |
      | 0         | 11               | 0            | unsuccessfully | Appointee Relationship    |
      | 0         | 12               | 0            | unsuccessfully | Appointee DOB             |
      | 0         | 13               | 0            | unsuccessfully | Appointee DOB             |
      | 0         | 14               | 0            | unsuccessfully | Percentage of Entitlement |
      | 0         | 15               | 0            | unsuccessfully | Percentage of Entitlement |
      | 0         | 16               | 0            | unsuccessfully | Percentage of Entitlement |
      | 0         | 17               | 0            | unsuccessfully | Percentage of Entitlement |
      | 0         | 18               | 0            | unsuccessfully | Percentage of Entitlement |
      | 0         | 19               | 0            | successfully   | All                       |
      | 0         | 20               | 0            | successfully   | Mandatory                 |

  #FeatureID-ACAUTOCAS-207
  Scenario Outline: Nominee Data validation on VAP Details page for VAP type GAP Insurance at row number "<NomineeRowNumber>" for "<ValidationField>" field
    And user open an application from workbook "VAPDetailsValidate.xlsx" under sheet "vap_category_insurance" for row number "<RowNumber>"
    When user navigates to VAP details tab under Loan Details tab
    And user selects vap product of vap type "GAP Insurance"
    And user enters data from workbook "VAPDetailsValidate.xlsx" under sheet "vap_details_insurance" for row number "<VAPRowNumber>"
    And user enters data from workbook "VAPDetailsValidate.xlsx" under sheet "nominee_details" for row number "<NomineeRowNumber>"
    And user saves the data
    Then user should be able to "<SuccessFailure>" save data for the field "<ValidationField>" with message
    Examples:
      | RowNumber | NomineeRowNumber | VAPRowNumber | SuccessFailure | ValidationField           |
      | 7         | 0                | 0            | successfully   | Mandatory                 |
      | 7         | 1                | 0            | successfully   | All                       |
      | 7         | 2                | 0            | unsuccessfully | Nominee Name              |
      | 7         | 3                | 0            | unsuccessfully | Nominee Relationship      |
      | 7         | 4                | 0            | unsuccessfully | Date Of Birth             |
      | 7         | 5                | 0            | unsuccessfully | Nominee Name              |
      | 7         | 6                | 0            | unsuccessfully | Nominee Name              |
      | 7         | 7                | 0            | unsuccessfully | Date Of Birth             |
      | 7         | 8                | 0            | unsuccessfully | Appointee Name            |
      | 7         | 9                | 0            | unsuccessfully | Appointee Name            |
      | 7         | 10               | 0            | unsuccessfully | Appointee Name            |
      | 7         | 11               | 0            | unsuccessfully | Appointee Relationship    |
      | 7         | 12               | 0            | unsuccessfully | Appointee DOB             |
      | 7         | 13               | 0            | unsuccessfully | Appointee DOB             |
      | 7         | 14               | 0            | unsuccessfully | Percentage of Entitlement |
      | 7         | 15               | 0            | unsuccessfully | Percentage of Entitlement |
      | 7         | 16               | 0            | unsuccessfully | Percentage of Entitlement |
      | 7         | 17               | 0            | unsuccessfully | Percentage of Entitlement |
      | 7         | 18               | 0            | unsuccessfully | Percentage of Entitlement |
      | 7         | 19               | 0            | successfully   | All                       |
      | 7         | 20               | 0            | successfully   | Mandatory                 |
   #FeatureID-ACAUTOCAS-207
  Scenario Outline: Nominee Data validation on VAP Details page for VAP type Life Insurance at row number "<NomineeRowNumber>" for "<ValidationField>" field
    And user open an application from workbook "VAPDetailsValidate.xlsx" under sheet "vap_category_insurance" for row number "<RowNumber>"
    When user navigates to VAP details tab under Loan Details tab
    And user selects vap product of vap type "Life Insurance"
    And user enters data from workbook "VAPDetailsValidate.xlsx" under sheet "vap_details_insurance" for row number "<VAPRowNumber>"
    And user enters data from workbook "VAPDetailsValidate.xlsx" under sheet "nominee_details" for row number "<NomineeRowNumber>"
    And user saves the data
    Then user should be able to "<SuccessFailure>" save data for the field "<ValidationField>" with message
    Examples:
      | RowNumber | NomineeRowNumber | VAPRowNumber | SuccessFailure | ValidationField           |
      | 14        | 0                | 0            | successfully   | Mandatory                 |
      | 14        | 1                | 0            | successfully   | All                       |
      | 14        | 2                | 0            | unsuccessfully | Nominee Name              |
      | 14        | 3                | 0            | unsuccessfully | Nominee Relationship      |
      | 14        | 4                | 0            | unsuccessfully | Date Of Birth             |
      | 14        | 5                | 0            | unsuccessfully | Nominee Name              |
      | 14        | 6                | 0            | unsuccessfully | Nominee Name              |
      | 14        | 7                | 0            | unsuccessfully | Date Of Birth             |
      | 14        | 8                | 0            | unsuccessfully | Appointee Name            |
      | 14        | 9                | 0            | unsuccessfully | Appointee Name            |
      | 14        | 10               | 0            | unsuccessfully | Appointee Name            |
      | 14        | 11               | 0            | unsuccessfully | Appointee Relationship    |
      | 14        | 12               | 0            | unsuccessfully | Appointee DOB             |
      | 14        | 13               | 0            | unsuccessfully | Appointee DOB             |
      | 14        | 14               | 0            | unsuccessfully | Percentage of Entitlement |
      | 14        | 15               | 0            | unsuccessfully | Percentage of Entitlement |
      | 14        | 16               | 0            | unsuccessfully | Percentage of Entitlement |
      | 14        | 17               | 0            | unsuccessfully | Percentage of Entitlement |
      | 14        | 18               | 0            | unsuccessfully | Percentage of Entitlement |
      | 14        | 19               | 0            | successfully   | All                       |
      | 14        | 20               | 0            | successfully   | Mandatory                 |

  #FeatureID-ACAUTOCAS-207
  Scenario Outline: Nominee Data validation on VAP Details page for VAP type Payment Protection at row number "<NomineeRowNumber>" for "<ValidationField>" field
    And user open an application from workbook "VAPDetailsValidate.xlsx" under sheet "vap_category_insurance" for row number "<RowNumber>"
    When user navigates to VAP details tab under Loan Details tab
    And user selects vap product of vap type "Payment Protection"
    And user enters data from workbook "VAPDetailsValidate.xlsx" under sheet "vap_details_insurance" for row number "<VAPRowNumber>"
    And user enters data from workbook "VAPDetailsValidate.xlsx" under sheet "nominee_details" for row number "<NomineeRowNumber>"
    And user saves the data
    Then user should be able to "<SuccessFailure>" save data for the field "<ValidationField>" with message
    Examples:
      | RowNumber | NomineeRowNumber | VAPRowNumber | SuccessFailure | ValidationField           |
      | 21        | 0                | 0            | successfully   | Mandatory                 |
      | 21        | 1                | 0            | successfully   | All                       |
      | 21        | 2                | 0            | unsuccessfully | Nominee Name              |
      | 21        | 3                | 0            | unsuccessfully | Nominee Relationship      |
      | 21        | 4                | 0            | unsuccessfully | Date Of Birth             |
      | 21        | 5                | 0            | unsuccessfully | Nominee Name              |
      | 21        | 6                | 0            | unsuccessfully | Nominee Name              |
      | 21        | 7                | 0            | unsuccessfully | Date Of Birth             |
      | 21        | 8                | 0            | unsuccessfully | Appointee Name            |
      | 21        | 9                | 0            | unsuccessfully | Appointee Name            |
      | 21        | 10               | 0            | unsuccessfully | Appointee Name            |
      | 21        | 11               | 0            | unsuccessfully | Appointee Relationship    |
      | 21        | 12               | 0            | unsuccessfully | Appointee DOB             |
      | 21        | 13               | 0            | unsuccessfully | Appointee DOB             |
      | 21        | 14               | 0            | unsuccessfully | Percentage of Entitlement |
      | 21        | 15               | 0            | unsuccessfully | Percentage of Entitlement |
      | 21        | 16               | 0            | unsuccessfully | Percentage of Entitlement |
      | 21        | 17               | 0            | unsuccessfully | Percentage of Entitlement |
      | 21        | 18               | 0            | unsuccessfully | Percentage of Entitlement |
      | 21        | 19               | 0            | successfully   | All                       |
      | 21        | 20               | 0            | successfully   | Mandatory                 |

  #FeatureID-ACAUTOCAS-207
  Scenario Outline: Nominee Data validation on VAP Details page for VAP type Credit Protection at row number "<NomineeRowNumber>" for "<ValidationField>" field
    And user open an application from workbook "VAPDetailsValidate.xlsx" under sheet "vap_category_insurance" for row number "<RowNumber>"
    When user navigates to VAP details tab under Loan Details tab
    And user selects vap product of vap type "Credit Protection"
    And user enters data from workbook "VAPDetailsValidate.xlsx" under sheet "vap_details_insurance" for row number "<VAPRowNumber>"
    And user enters data from workbook "VAPDetailsValidate.xlsx" under sheet "nominee_details" for row number "<NomineeRowNumber>"
    And user saves the data
    Then user should be able to "<SuccessFailure>" save data for the field "<ValidationField>" with message
    Examples:
      | RowNumber | NomineeRowNumber | VAPRowNumber | SuccessFailure | ValidationField           |
      | 28        | 0                | 0            | successfully   | Mandatory                 |
      | 28        | 1                | 0            | successfully   | All                       |
      | 28        | 2                | 0            | unsuccessfully | Nominee Name              |
      | 28        | 3                | 0            | unsuccessfully | Nominee Relationship      |
      | 28        | 4                | 0            | unsuccessfully | Date Of Birth             |
      | 28        | 5                | 0            | unsuccessfully | Nominee Name              |
      | 28        | 6                | 0            | unsuccessfully | Nominee Name              |
      | 28        | 7                | 0            | unsuccessfully | Date Of Birth             |
      | 28        | 8                | 0            | unsuccessfully | Appointee Name            |
      | 28        | 9                | 0            | unsuccessfully | Appointee Name            |
      | 28        | 10               | 0            | unsuccessfully | Appointee Name            |
      | 28        | 11               | 0            | unsuccessfully | Appointee Relationship    |
      | 28        | 12               | 0            | unsuccessfully | Appointee DOB             |
      | 28        | 13               | 0            | unsuccessfully | Appointee DOB             |
      | 28        | 14               | 0            | unsuccessfully | Percentage of Entitlement |
      | 28        | 15               | 0            | unsuccessfully | Percentage of Entitlement |
      | 28        | 16               | 0            | unsuccessfully | Percentage of Entitlement |
      | 28        | 17               | 0            | unsuccessfully | Percentage of Entitlement |
      | 28        | 18               | 0            | unsuccessfully | Percentage of Entitlement |
      | 28        | 19               | 0            | successfully   | All                       |
      | 28        | 20               | 0            | successfully   | Mandatory                 |
