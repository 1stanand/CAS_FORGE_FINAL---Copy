@Epic-VAP
@AuthoredBy-sajja.ravikumar
#OriginalAuthor-rajni.gola
@ReviewedBy-
@ImplementedBy-
@TechReviewedBy-

@NotImplemented

Feature: Validate Nominee Address at BDE stage

  Background:
    Given User is logged in CAS with "<SourceDataFile>" under "<SheetName>" and "<RowNumber>"
    And user has configured VAP policy for product mapped in the application in Product master
    And user has configured VAP policy for scheme mapped in the application in Scheme master
    And user has configured VAP Parameter Policy, VAP Amount Computation Policy, VAP Payout Computation Policy, VAP Policy masters under CAS - Common Masters

  #FeatureID-ACAUTOCAS-209
  Scenario Outline: Nominee Address Data validation on VAP Details page for VAP category Insurance at row number "<NomineeAddressRowNumber>" for "<ValidationField>" field at BDE stage
    And user open an application at "BDE" Stage
    When user navigates to VAP details tab under Loan Details tab
    And user selects vap product of vap category "Insurance"
    And user navigates to nominee section
    And user enters data from workbook "VAPDetailsValidate.xlsx" under sheet "nominee_details" for row number "<NomineeRowNumber>"
    And user enters data from workbook "VAPDetailsValidate.xlsx" under sheet "nominee_details" for row number "<NomineeAddressRowNumber>"
    And user saves the data
    Then user should be able to "<SuccessFailure>" save data for the field "<ValidationField>" with message
    Examples:
      | NomineeRowNumber | NomineeAddressRowNumber | SuccessFailure | ValidationField             |
      | 1                | 0                       | successfully   | None                        |
      | 1                | 1                       | successfully   | None                        |
      | 1                | 2                       | successfully   | None                        |
      | 1                | 3                       | successfully   | None                        |
      | 1                | 4                       | unsuccessfully | Address Type                |
      | 1                | 5                       | unsuccessfully | Flat/Plot Number            |
      | 1                | 6                       | unsuccessfully | PinCode                     |
      | 1                | 7                       | unsuccessfully | State                       |
      | 1                | 8                       | unsuccessfully | Residence Status            |
      | 1                | 9                       | unsuccessfully | Flat/Plot Number            |
      | 1                | 10                      | unsuccessfully | PinCode                     |
      | 1                | 11                      | unsuccessfully | State                       |
      | 1                | 12                      | unsuccessfully | Residence Status            |
      | 1                | 13                      | unsuccessfully | Flat/Plot Number            |
      | 1                | 14                      | unsuccessfully | PinCode                     |
      | 1                | 15                      | unsuccessfully | State                       |
      | 1                | 16                      | unsuccessfully | Flat/Plot Number            |
      | 1                | 17                      | unsuccessfully | PinCode                     |
      | 1                | 18                      | unsuccessfully | State                       |
      | 1                | 19                      | successfully   | None                        |
      | 1                | 20                      | successfully   | None                        |
      | 1                | 21                      | successfully   | None                        |
      | 1                | 22                      | unsuccessfully | Duration at this Address To |
      | 1                | 23                      | unsuccessfully | Duration at this City To    |

  #FeatureID-ACAUTOCAS-209
  Scenario Outline: Nominee Address Data validation on VAP Details page for VAP category Insurance at row number "<NomineeAddressRowNumber>" for "<ValidationField>" field at Recommendation stage
    And user open an application at "Recommendation" Stage
    When user clicks on "VAP Details" link from "Loan Information" section
    And user selects vap product of vap category "Insurance"
    And user navigates to nominee section
    And user enters data from workbook "VAPDetailsValidate.xlsx" under sheet "nominee_details" for row number "<NomineeRowNumber>"
    And user enters data from workbook "VAPDetailsValidate.xlsx" under sheet "nominee_details" for row number "<NomineeAddressRowNumber>"
    And user saves the data
    Then user should be able to "<SuccessFailure>" save data for the field "<ValidationField>" with message
    Examples:
      | NomineeRowNumber | NomineeAddressRowNumber | SuccessFailure | ValidationField             |
      | 1                | 0                       | successfully   | None                        |
      | 1                | 1                       | successfully   | None                        |
      | 1                | 2                       | successfully   | None                        |
      | 1                | 3                       | successfully   | None                        |
      | 1                | 4                       | unsuccessfully | Address Type                |
      | 1                | 5                       | unsuccessfully | Flat/Plot Number            |
      | 1                | 6                       | unsuccessfully | PinCode                     |
      | 1                | 7                       | unsuccessfully | State                       |
      | 1                | 8                       | unsuccessfully | Residence Status            |
      | 1                | 9                       | unsuccessfully | Flat/Plot Number            |
      | 1                | 10                      | unsuccessfully | PinCode                     |
      | 1                | 11                      | unsuccessfully | State                       |
      | 1                | 12                      | unsuccessfully | Residence Status            |
      | 1                | 13                      | unsuccessfully | Flat/Plot Number            |
      | 1                | 14                      | unsuccessfully | PinCode                     |
      | 1                | 15                      | unsuccessfully | State                       |
      | 1                | 16                      | unsuccessfully | Flat/Plot Number            |
      | 1                | 17                      | unsuccessfully | PinCode                     |
      | 1                | 18                      | unsuccessfully | State                       |
      | 1                | 19                      | successfully   | None                        |
      | 1                | 20                      | successfully   | None                        |
      | 1                | 21                      | successfully   | None                        |
      | 1                | 22                      | unsuccessfully | Duration at this Address To |
      | 1                | 23                      | unsuccessfully | Duration at this City To    |

  #FeatureID-ACAUTOCAS-209
  Scenario Outline: Nominee Address Data validation on VAP Details page for VAP category Insurance at row number "<NomineeAddressRowNumber>" for "<ValidationField>" field at Credit Approval stage
    And user open an application at "Credit Approval" Stage
    When user goes to "VAP details" from "3 dots option"
    And user selects vap product of vap category "Insurance"
    And user navigates to nominee section
    And user enters data from workbook "VAPDetailsValidate.xlsx" under sheet "nominee_details" for row number "<NomineeRowNumber>"
    And user enters data from workbook "VAPDetailsValidate.xlsx" under sheet "nominee_details" for row number "<NomineeAddressRowNumber>"
    And user saves the data
    Then user should be able to "<SuccessFailure>" save data for the field "<ValidationField>" with message
    Examples:
      | NomineeRowNumber | NomineeAddressRowNumber | SuccessFailure | ValidationField             |
      | 1                | 0                       | successfully   | None                        |
      | 1                | 1                       | successfully   | None                        |
      | 1                | 2                       | successfully   | None                        |
      | 1                | 3                       | successfully   | None                        |
      | 1                | 4                       | unsuccessfully | Address Type                |
      | 1                | 5                       | unsuccessfully | Flat/Plot Number            |
      | 1                | 6                       | unsuccessfully | PinCode                     |
      | 1                | 7                       | unsuccessfully | State                       |
      | 1                | 8                       | unsuccessfully | Residence Status            |
      | 1                | 9                       | unsuccessfully | Flat/Plot Number            |
      | 1                | 10                      | unsuccessfully | PinCode                     |
      | 1                | 11                      | unsuccessfully | State                       |
      | 1                | 12                      | unsuccessfully | Residence Status            |
      | 1                | 13                      | unsuccessfully | Flat/Plot Number            |
      | 1                | 14                      | unsuccessfully | PinCode                     |
      | 1                | 15                      | unsuccessfully | State                       |
      | 1                | 16                      | unsuccessfully | Flat/Plot Number            |
      | 1                | 17                      | unsuccessfully | PinCode                     |
      | 1                | 18                      | unsuccessfully | State                       |
      | 1                | 19                      | successfully   | None                        |
      | 1                | 20                      | successfully   | None                        |
      | 1                | 21                      | successfully   | None                        |
      | 1                | 22                      | unsuccessfully | Duration at this Address To |
      | 1                | 23                      | unsuccessfully | Duration at this City To    |

  #FeatureID-ACAUTOCAS-209
  Scenario Outline: Nominee Address Data validation on VAP Details page for VAP category Insurance at row number "<NomineeAddressRowNumber>" for "<ValidationField>" field at Reconsideration stage
    And user has selected "Enable at Post Sanction" flag in "VAP Parameter Policy" master for vap type "Asset Insurance"
    And user open an application at "Reconsideration" Stage
    When user clicks on "VAP Details" link from "Loan Information" section
    And user selects vap product of vap category "Insurance"
    And user navigates to nominee section
    And user enters data from workbook "VAPDetailsValidate.xlsx" under sheet "nominee_details" for row number "<NomineeRowNumber>"
    And user enters data from workbook "VAPDetailsValidate.xlsx" under sheet "nominee_details" for row number "<NomineeAddressRowNumber>"
    And user saves the data
    Then user should be able to "<SuccessFailure>" save data for the field "<ValidationField>" with message
    Examples:
      | NomineeRowNumber | NomineeAddressRowNumber | SuccessFailure | ValidationField             |
      | 1                | 0                       | successfully   | None                        |
      | 1                | 1                       | successfully   | None                        |
      | 1                | 2                       | successfully   | None                        |
      | 1                | 3                       | successfully   | None                        |
      | 1                | 4                       | unsuccessfully | Address Type                |
      | 1                | 5                       | unsuccessfully | Flat/Plot Number            |
      | 1                | 6                       | unsuccessfully | PinCode                     |
      | 1                | 7                       | unsuccessfully | State                       |
      | 1                | 8                       | unsuccessfully | Residence Status            |
      | 1                | 9                       | unsuccessfully | Flat/Plot Number            |
      | 1                | 10                      | unsuccessfully | PinCode                     |
      | 1                | 11                      | unsuccessfully | State                       |
      | 1                | 12                      | unsuccessfully | Residence Status            |
      | 1                | 13                      | unsuccessfully | Flat/Plot Number            |
      | 1                | 14                      | unsuccessfully | PinCode                     |
      | 1                | 15                      | unsuccessfully | State                       |
      | 1                | 16                      | unsuccessfully | Flat/Plot Number            |
      | 1                | 17                      | unsuccessfully | PinCode                     |
      | 1                | 18                      | unsuccessfully | State                       |
      | 1                | 19                      | successfully   | None                        |
      | 1                | 20                      | successfully   | None                        |
      | 1                | 21                      | successfully   | None                        |
      | 1                | 22                      | unsuccessfully | Duration at this Address To |
      | 1                | 23                      | unsuccessfully | Duration at this City To    |

  #FeatureID-ACAUTOCAS-209
  Scenario Outline: Nominee Address Data validation on VAP Details page for VAP category Insurance at row number "<NomineeAddressRowNumber>" for "<ValidationField>" field at Post Approval stage
    And user has selected "Enable at Post Sanction" flag in "VAP Parameter Policy" master for vap type "Asset Insurance"
    And user open an application at "Post Approval" Stage
    When user navigates to VAP details tab under Loan Details tab
    And user selects vap product of vap category "Insurance"
    And user navigates to nominee section
    And user enters data from workbook "VAPDetailsValidate.xlsx" under sheet "nominee_details" for row number "<NomineeRowNumber>"
    And user enters data from workbook "VAPDetailsValidate.xlsx" under sheet "nominee_details" for row number "<NomineeAddressRowNumber>"
    And user saves the data
    Then user should be able to "<SuccessFailure>" save data for the field "<ValidationField>" with message
    Examples:
      | NomineeRowNumber | NomineeAddressRowNumber | SuccessFailure | ValidationField             |
      | 1                | 0                       | successfully   | None                        |
      | 1                | 1                       | successfully   | None                        |
      | 1                | 2                       | successfully   | None                        |
      | 1                | 3                       | successfully   | None                        |
      | 1                | 4                       | unsuccessfully | Address Type                |
      | 1                | 5                       | unsuccessfully | Flat/Plot Number            |
      | 1                | 6                       | unsuccessfully | PinCode                     |
      | 1                | 7                       | unsuccessfully | State                       |
      | 1                | 8                       | unsuccessfully | Residence Status            |
      | 1                | 9                       | unsuccessfully | Flat/Plot Number            |
      | 1                | 10                      | unsuccessfully | PinCode                     |
      | 1                | 11                      | unsuccessfully | State                       |
      | 1                | 12                      | unsuccessfully | Residence Status            |
      | 1                | 13                      | unsuccessfully | Flat/Plot Number            |
      | 1                | 14                      | unsuccessfully | PinCode                     |
      | 1                | 15                      | unsuccessfully | State                       |
      | 1                | 16                      | unsuccessfully | Flat/Plot Number            |
      | 1                | 17                      | unsuccessfully | PinCode                     |
      | 1                | 18                      | unsuccessfully | State                       |
      | 1                | 19                      | successfully   | None                        |
      | 1                | 20                      | successfully   | None                        |
      | 1                | 21                      | successfully   | None                        |
      | 1                | 22                      | unsuccessfully | Duration at this Address To |
      | 1                | 23                      | unsuccessfully | Duration at this City To    |

  #FeatureID-ACAUTOCAS-209
  Scenario Outline: Nominee Address Data validation on VAP Details page for VAP category Insurance at row number "<NomineeAddressRowNumber>" for "<ValidationField>" field at Disbursal Initiation stage
    And user has selected "Enable at Post Sanction" flag in "VAP Parameter Policy" master for vap type "Asset Insurance"
    And user open an application at "Disbursal Initiation" Stage
    When user navigates to VAP details tab
    And user selects vap product of vap category "Insurance"
    And user navigates to nominee section
    And user enters data from workbook "VAPDetailsValidate.xlsx" under sheet "nominee_details" for row number "<NomineeRowNumber>"
    And user enters data from workbook "VAPDetailsValidate.xlsx" under sheet "nominee_details" for row number "<NomineeAddressRowNumber>"
    And user saves the data
    Then user should be able to "<SuccessFailure>" save data for the field "<ValidationField>" with message
    Examples:
      | NomineeRowNumber | NomineeAddressRowNumber | SuccessFailure | ValidationField             |
      | 1                | 0                       | successfully   | None                        |
      | 1                | 1                       | successfully   | None                        |
      | 1                | 2                       | successfully   | None                        |
      | 1                | 3                       | successfully   | None                        |
      | 1                | 4                       | unsuccessfully | Address Type                |
      | 1                | 5                       | unsuccessfully | Flat/Plot Number            |
      | 1                | 6                       | unsuccessfully | PinCode                     |
      | 1                | 7                       | unsuccessfully | State                       |
      | 1                | 8                       | unsuccessfully | Residence Status            |
      | 1                | 9                       | unsuccessfully | Flat/Plot Number            |
      | 1                | 10                      | unsuccessfully | PinCode                     |
      | 1                | 11                      | unsuccessfully | State                       |
      | 1                | 12                      | unsuccessfully | Residence Status            |
      | 1                | 13                      | unsuccessfully | Flat/Plot Number            |
      | 1                | 14                      | unsuccessfully | PinCode                     |
      | 1                | 15                      | unsuccessfully | State                       |
      | 1                | 16                      | unsuccessfully | Flat/Plot Number            |
      | 1                | 17                      | unsuccessfully | PinCode                     |
      | 1                | 18                      | unsuccessfully | State                       |
      | 1                | 19                      | successfully   | None                        |
      | 1                | 20                      | successfully   | None                        |
      | 1                | 21                      | successfully   | None                        |
      | 1                | 22                      | unsuccessfully | Duration at this Address To |
      | 1                | 23                      | unsuccessfully | Duration at this City To    |
