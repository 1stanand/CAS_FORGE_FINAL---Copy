@Epic-VAP
@AuthoredBy-sajja.ravikumar
#OriginalAuthor-rajni.gola
@ReviewedBy-
@ImplementedBy-
@TechReviewedBy-

@NotImplemented

Feature: Modify Nominee Details

  Background:
    Given User is logged in CAS with "<SourceDataFile>" under "<SheetName>" and "<RowNumber>"
    And user has configured VAP policy for product mapped in the application in Product master
    And user has configured VAP policy for scheme mapped in the application in Scheme master
    And user has configured VAP Parameter Policy, VAP Amount Computation Policy, VAP Payout Computation Policy, VAP Policy masters under Common Masters

  #FeatureID-ACAUTOCAS-209
  Scenario Outline: Validate Nominee details for mandatory fields on VAP details page for vap type "Asset Insurance" when move to next stage is performed on application at "<Var_Stage>"
    And user open an application at "<Var_Stage>"
    And user open VAP details from "<Opening_Link>"
    And user selects vap product of vap type "Asset Insurance"
    And user enters data from workbook "VAPDetailsValidate.xlsx" under sheet "vap_details_insurance" for row number "<VAPRowNumber>"
    And user enters data from workbook "VAPDetailsValidate.xlsx" under sheet "nominee_details" for row number "<NomineeRowNumber>"
    And user has entered all mandatory details in an application at "<Var_Stage>"
    And user saves all details entered
    When user performs move to next stage operation on application at "<Var_Stage>"
    And user opens same application from application grid after move to next stage
    And user open VAP details page
    And user clicks on vap id of vap type "Asset Insurance"
    Then user should be able to view data in respective fields on vap details as per workbook "VAPDetailsValidate.xlsx" under sheet "vap_details_insurance" for row number "<VAPRowNumber>"
    And user should be able to view details under nominee section as per workbook "VAPDetailsValidate.xlsx" under sheet "nominee_details" for row number "<NomineeRowNumber>"
    Examples:
      | Var_Stage            | VAPRowNumber | NomineeRowNumber | Opening_Link                           |
      | DDE                  | 83           | 0                | VAP details tab under Loan Details tab |
      | Recommendation       | 83           | 0                | Loan Information option                |
      | Credit Approval      | 83           | 0                | 3 dots option                          |
      | Reconsideration      | 83           | 0                | Loan Information option                |
      | Post Approval        | 83           | 0                | VAP details tab under Loan Details tab |
      | Disbursal Initiation | 83           | 0                | VAP details tab                        |
      | DDE                  | 83           | 20               | VAP details tab under Loan Details tab |
      | Recommendation       | 83           | 20               | Loan Information option                |
      | Credit Approval      | 83           | 20               | 3 dots option                          |
      | Reconsideration      | 83           | 20               | Loan Information option                |
      | Post Approval        | 83           | 20               | VAP details tab under Loan Details tab |
      | Disbursal Initiation | 83           | 20               | VAP details tab                        |

  #FeatureID-ACAUTOCAS-209
  Scenario Outline: Validate data with all fields on VAP details page for vap type "Asset Insurance" when move to next stage is performed on application at "<Var_Stage>"
    And user open an application at "<Var_Stage>"
    And user open VAP details from "<Opening_Link>"
    And user selects vap product of vap type "Asset Insurance"
    And user enters data from workbook "VAPDetailsValidate.xlsx" under sheet "vap_details_insurance" for row number "<VAPRowNumber>"
    And user enters data from workbook "VAPDetailsValidate.xlsx" under sheet "nominee_details" for row number "<NomineeRowNumber>"
    And user has entered all mandatory details in an application at "<Var_Stage>"
    And user saves all details entered
    When user performs move to next stage operation on application at "<Var_Stage>"
    And user opens same application from application grid after move to next stage
    And user open VAP details page
    And user clicks on vap id of vap type "Asset Insurance"
    Then user should be able to view data in respective fields on vap details as per workbook "VAPDetailsValidate.xlsx" under sheet "vap_details_insurance" for row number "<VAPRowNumber>"
    And user should be able to view details under nominee section as per workbook "VAPDetailsValidate.xlsx" under sheet "nominee_details" for row number "<NomineeRowNumber>"
    Examples:
      | Var_Stage            | VAPRowNumber | NomineeRowNumber | Opening_Link                           |
      | DDE                  | 84           | 1                | VAP details tab under Loan Details tab |
      | Recommendation       | 84           | 1                | Loan Information option                |
      | Credit Approval      | 84           | 1                | 3 dots option                          |
      | Reconsideration      | 84           | 1                | Loan Information option                |
      | Post Approval        | 84           | 1                | VAP details tab under Loan Details tab |
      | Disbursal Initiation | 84           | 1                | VAP details tab                        |
      | DDE                  | 84           | 19               | VAP details tab under Loan Details tab |
      | Recommendation       | 84           | 19               | Loan Information option                |
      | Credit Approval      | 84           | 19               | 3 dots option                          |
      | Reconsideration      | 84           | 19               | Loan Information option                |
      | Post Approval        | 84           | 19               | VAP details tab under Loan Details tab |
      | Disbursal Initiation | 84           | 19               | VAP details tab                        |

  #FeatureID-ACAUTOCAS-209
  Scenario Outline: Validate Nominee details for mandatory fields on VAP details page for vap type "GAP Insurance" when move to next stage is performed on application at "<Var_Stage>"
    And user open an application at "<Var_Stage>"
    And user open VAP details from "<Opening_Link>"
    And user selects vap product of vap type "GAP Insurance"
    And user enters data from workbook "VAPDetailsValidate.xlsx" under sheet "vap_details_insurance" for row number "<VAPRowNumber>"
    And user enters data from workbook "VAPDetailsValidate.xlsx" under sheet "nominee_details" for row number "<NomineeRowNumber>"
    And user has entered all mandatory details in an application at "<Var_Stage>"
    And user saves all details entered
    When user performs move to next stage operation on application at "<Var_Stage>"
    And user opens same application from application grid after move to next stage
    And user open VAP details page
    And user clicks on vap id of vap type "GAP Insurance"
    Then user should be able to view data in respective fields on vap details as per workbook "VAPDetailsValidate.xlsx" under sheet "vap_details_insurance" for row number "<VAPRowNumber>"
    And user should be able to view details under nominee section as per workbook "VAPDetailsValidate.xlsx" under sheet "nominee_details" for row number "<NomineeRowNumber>"
    Examples:
      | Var_Stage            | VAPRowNumber | NomineeRowNumber | Opening_Link                           |
      | DDE                  | 85           | 0                | VAP details tab under Loan Details tab |
      | Recommendation       | 85           | 0                | Loan Information option                |
      | Credit Approval      | 85           | 0                | 3 dots option                          |
      | Reconsideration      | 85           | 0                | Loan Information option                |
      | Post Approval        | 85           | 0                | VAP details tab under Loan Details tab |
      | Disbursal Initiation | 85           | 0                | VAP details tab                        |
      | DDE                  | 85           | 20               | VAP details tab under Loan Details tab |
      | Recommendation       | 85           | 20               | Loan Information option                |
      | Credit Approval      | 85           | 20               | 3 dots option                          |
      | Reconsideration      | 85           | 20               | Loan Information option                |
      | Post Approval        | 85           | 20               | VAP details tab under Loan Details tab |
      | Disbursal Initiation | 85           | 20               | VAP details tab                        |

  #FeatureID-ACAUTOCAS-209
  Scenario Outline: Validate data with all fields on VAP details page for vap type "GAP Insurance" when move to next stage is performed on application at "<Var_Stage>"
    And user open an application at "<Var_Stage>"
    And user open VAP details from "<Opening_Link>"
    And user selects vap product of vap type "GAP Insurance"
    And user enters data from workbook "VAPDetailsValidate.xlsx" under sheet "vap_details_insurance" for row number "<VAPRowNumber>"
    And user enters data from workbook "VAPDetailsValidate.xlsx" under sheet "nominee_details" for row number "<NomineeRowNumber>"
    And user has entered all mandatory details in an application at "<Var_Stage>"
    And user saves all details entered
    When user performs move to next stage operation on application at "<Var_Stage>"
    And user opens same application from application grid after move to next stage
    And user open VAP details page
    And user clicks on vap id of vap type "GAP Insurance"
    Then user should be able to view data in respective fields on vap details as per workbook "VAPDetailsValidate.xlsx" under sheet "vap_details_insurance" for row number "<VAPRowNumber>"
    And user should be able to view details under nominee section as per workbook "VAPDetailsValidate.xlsx" under sheet "nominee_details" for row number "<NomineeRowNumber>"
    Examples:
      | Var_Stage            | VAPRowNumber | NomineeRowNumber | Opening_Link                           |
      | DDE                  | 86           | 1                | VAP details tab under Loan Details tab |
      | Recommendation       | 86           | 1                | Loan Information option                |
      | Credit Approval      | 86           | 1                | 3 dots option                          |
      | Reconsideration      | 86           | 1                | Loan Information option                |
      | Post Approval        | 86           | 1                | VAP details tab under Loan Details tab |
      | Disbursal Initiation | 86           | 1                | VAP details tab                        |
      | DDE                  | 86           | 19               | VAP details tab under Loan Details tab |
      | Recommendation       | 86           | 19               | Loan Information option                |
      | Credit Approval      | 86           | 19               | 3 dots option                          |
      | Reconsideration      | 86           | 19               | Loan Information option                |
      | Post Approval        | 86           | 19               | VAP details tab under Loan Details tab |
      | Disbursal Initiation | 86           | 19               | VAP details tab                        |

  #FeatureID-ACAUTOCAS-209
  Scenario Outline: Validate Nominee details for mandatory fields on VAP details page for vap type "Life Insurance" when move to next stage is performed on application at "<Var_Stage>"
    And user open an application at "<Var_Stage>"
    And user open VAP details from "<Opening_Link>"
    And user selects vap product of vap type "Life Insurance"
    And user enters data from workbook "VAPDetailsValidate.xlsx" under sheet "vap_details_insurance" for row number "<VAPRowNumber>"
    And user enters data from workbook "VAPDetailsValidate.xlsx" under sheet "nominee_details" for row number "<NomineeRowNumber>"
    And user has entered all mandatory details in an application at "<Var_Stage>"
    And user saves all details entered
    When user performs move to next stage operation on application at "<Var_Stage>"
    And user opens same application from application grid after move to next stage
    And user open VAP details page
    And user clicks on vap id of vap type "Life Insurance"
    Then user should be able to view data in respective fields on vap details as per workbook "VAPDetailsValidate.xlsx" under sheet "vap_details_insurance" for row number "<VAPRowNumber>"
    And user should be able to view details under nominee section as per workbook "VAPDetailsValidate.xlsx" under sheet "nominee_details" for row number "<NomineeRowNumber>"
    Examples:
      | Var_Stage            | VAPRowNumber | NomineeRowNumber | Opening_Link                           |
      | Lead Details         | 87           | 0                | VAP details tab under Loan Details tab |
      | Login Acceptance     | 87           | 0                | VAP details tab under Loan Details tab |
      | DDE                  | 87           | 0                | VAP details tab under Loan Details tab |
      | Recommendation       | 87           | 0                | Loan Information option                |
      | Credit Approval      | 87           | 0                | 3 dots option                          |
      | Reconsideration      | 87           | 0                | Loan Information option                |
      | Post Approval        | 87           | 0                | VAP details tab under Loan Details tab |
      | Disbursal Initiation | 87           | 0                | VAP details tab                        |
      | Lead Details         | 87           | 20               | VAP details tab under Loan Details tab |
      | Login Acceptance     | 87           | 20               | VAP details tab under Loan Details tab |
      | DDE                  | 87           | 20               | VAP details tab under Loan Details tab |
      | Recommendation       | 87           | 20               | Loan Information option                |
      | Credit Approval      | 87           | 20               | 3 dots option                          |
      | Reconsideration      | 87           | 20               | Loan Information option                |
      | Post Approval        | 87           | 20               | VAP details tab under Loan Details tab |
      | Disbursal Initiation | 87           | 20               | VAP details tab                        |

  #FeatureID-ACAUTOCAS-209
  Scenario Outline: Validate data with all fields on VAP details page for vap type "Life Insurance" when move to next stage is performed on application at "<Var_Stage>"
    And user open an application at "<Var_Stage>"
    And user open VAP details from "<Opening_Link>"
    And user selects vap product of vap type "Life Insurance"
    And user enters data from workbook "VAPDetailsValidate.xlsx" under sheet "vap_details_insurance" for row number "<VAPRowNumber>"
    And user enters data from workbook "VAPDetailsValidate.xlsx" under sheet "nominee_details" for row number "<NomineeRowNumber>"
    And user has entered all mandatory details in an application at "<Var_Stage>"
    And user saves all details entered
    When user performs move to next stage operation on application at "<Var_Stage>"
    And user opens same application from application grid after move to next stage
    And user open VAP details page
    And user clicks on vap id of vap type "Life Insurance"
    Then user should be able to view data in respective fields on vap details as per workbook "VAPDetailsValidate.xlsx" under sheet "vap_details_insurance" for row number "<VAPRowNumber>"
    And user should be able to view details under nominee section as per workbook "VAPDetailsValidate.xlsx" under sheet "nominee_details" for row number "<NomineeRowNumber>"
    Examples:
      | Var_Stage            | VAPRowNumber | NomineeRowNumber | Opening_Link                           |
      | Lead Details         | 88           | 1                | VAP details tab under Loan Details tab |
      | Login Acceptance     | 88           | 1                | VAP details tab under Loan Details tab |
      | DDE                  | 88           | 1                | VAP details tab under Loan Details tab |
      | Recommendation       | 88           | 1                | Loan Information option                |
      | Credit Approval      | 88           | 1                | 3 dots option                          |
      | Reconsideration      | 88           | 1                | Loan Information option                |
      | Post Approval        | 88           | 1                | VAP details tab under Loan Details tab |
      | Disbursal Initiation | 88           | 1                | VAP details tab                        |
      | Lead Details         | 88           | 19               | VAP details tab under Loan Details tab |
      | Login Acceptance     | 88           | 19               | VAP details tab under Loan Details tab |
      | DDE                  | 88           | 19               | VAP details tab under Loan Details tab |
      | Recommendation       | 88           | 19               | Loan Information option                |
      | Credit Approval      | 88           | 19               | 3 dots option                          |
      | Reconsideration      | 88           | 19               | Loan Information option                |
      | Post Approval        | 88           | 19               | VAP details tab under Loan Details tab |
      | Disbursal Initiation | 88           | 19               | VAP details tab                        |

  #FeatureID-ACAUTOCAS-209
  Scenario Outline: Validate Nominee details for mandatory fields on VAP details page for vap type "Payment Protection" when move to next stage is performed on application at "<Var_Stage>"
    And user open an application at "<Var_Stage>"
    And user open VAP details from "<Opening_Link>"
    And user selects vap product of vap type "Payment Protection"
    And user enters data from workbook "VAPDetailsValidate.xlsx" under sheet "vap_details_insurance" for row number "<VAPRowNumber>"
    And user enters data from workbook "VAPDetailsValidate.xlsx" under sheet "nominee_details" for row number "<NomineeRowNumber>"
    And user has entered all mandatory details in an application at "<Var_Stage>"
    And user saves all details entered
    When user performs move to next stage operation on application at "<Var_Stage>"
    And user opens same application from application grid after move to next stage
    And user open VAP details page
    And user clicks on vap id of vap type "Payment Protection"
    Then user should be able to view data in respective fields on vap details as per workbook "VAPDetailsValidate.xlsx" under sheet "vap_details_insurance" for row number "<VAPRowNumber>"
    And user should be able to view details under nominee section as per workbook "VAPDetailsValidate.xlsx" under sheet "nominee_details" for row number "<NomineeRowNumber>"
    Examples:
      | Var_Stage            | VAPRowNumber | NomineeRowNumber | Opening_Link                           |
      | Lead Details         | 89           | 0                | VAP details tab under Loan Details tab |
      | Login Acceptance     | 89           | 0                | VAP details tab under Loan Details tab |
      | DDE                  | 89           | 0                | VAP details tab under Loan Details tab |
      | Recommendation       | 89           | 0                | Loan Information option                |
      | Credit Approval      | 89           | 0                | 3 dots option                          |
      | Reconsideration      | 89           | 0                | Loan Information option                |
      | Post Approval        | 89           | 0                | VAP details tab under Loan Details tab |
      | Disbursal Initiation | 89           | 0                | VAP details tab                        |
      | Lead Details         | 89           | 20               | VAP details tab under Loan Details tab |
      | Login Acceptance     | 89           | 20               | VAP details tab under Loan Details tab |
      | DDE                  | 89           | 20               | VAP details tab under Loan Details tab |
      | Recommendation       | 89           | 20               | Loan Information option                |
      | Credit Approval      | 89           | 20               | 3 dots option                          |
      | Reconsideration      | 89           | 20               | Loan Information option                |
      | Post Approval        | 89           | 20               | VAP details tab under Loan Details tab |
      | Disbursal Initiation | 89           | 20               | VAP details tab                        |

  #FeatureID-ACAUTOCAS-209
  Scenario Outline: Validate data with all fields on VAP details page for vap type "Payment Protection" when move to next stage is performed on application at "<Var_Stage>"
    And user open an application at "<Var_Stage>"
    And user open VAP details from "<Opening_Link>"
    And user selects vap product of vap type "Payment Protection"
    And user enters data from workbook "VAPDetailsValidate.xlsx" under sheet "vap_details_insurance" for row number "<VAPRowNumber>"
    And user enters data from workbook "VAPDetailsValidate.xlsx" under sheet "nominee_details" for row number "<NomineeRowNumber>"
    And user has entered all mandatory details in an application at "<Var_Stage>"
    And user saves all details entered
    When user performs move to next stage operation on application at "<Var_Stage>"
    And user opens same application from application grid after move to next stage
    And user open VAP details page
    And user clicks on vap id of vap type "Payment Protection"
    Then user should be able to view data in respective fields on vap details as per workbook "VAPDetailsValidate.xlsx" under sheet "vap_details_insurance" for row number "<VAPRowNumber>"
    And user should be able to view details under nominee section as per workbook "VAPDetailsValidate.xlsx" under sheet "nominee_details" for row number "<NomineeRowNumber>"
    Examples:
      | Var_Stage            | VAPRowNumber | NomineeRowNumber | Opening_Link                           |
      | Lead Details         | 90           | 1                | VAP details tab under Loan Details tab |
      | Login Acceptance     | 90           | 1                | VAP details tab under Loan Details tab |
      | DDE                  | 90           | 1                | VAP details tab under Loan Details tab |
      | Recommendation       | 90           | 1                | Loan Information option                |
      | Credit Approval      | 90           | 1                | 3 dots option                          |
      | Reconsideration      | 90           | 1                | Loan Information option                |
      | Post Approval        | 90           | 1                | VAP details tab under Loan Details tab |
      | Disbursal Initiation | 90           | 1                | VAP details tab                        |
      | Lead Details         | 90           | 19               | VAP details tab under Loan Details tab |
      | Login Acceptance     | 90           | 19               | VAP details tab under Loan Details tab |
      | DDE                  | 90           | 19               | VAP details tab under Loan Details tab |
      | Recommendation       | 90           | 19               | Loan Information option                |
      | Credit Approval      | 90           | 19               | 3 dots option                          |
      | Reconsideration      | 90           | 19               | Loan Information option                |
      | Post Approval        | 90           | 19               | VAP details tab under Loan Details tab |
      | Disbursal Initiation | 90           | 19               | VAP details tab                        |

  #FeatureID-ACAUTOCAS-209
  Scenario Outline: Validate Nominee details for mandatory fields on VAP details page for vap type "Credit Protection" when move to next stage is performed on application at "<Var_Stage>"
    And user open an application at "<Var_Stage>"
    And user open VAP details from "<Opening_Link>"
    And user selects vap product of vap type "Credit Protection"
    And user enters data from workbook "VAPDetailsValidate.xlsx" under sheet "vap_details_insurance" for row number "<VAPRowNumber>"
    And user enters data from workbook "VAPDetailsValidate.xlsx" under sheet "nominee_details" for row number "<NomineeRowNumber>"
    And user has entered all mandatory details in an application at "<Var_Stage>"
    And user saves all details entered
    When user performs move to next stage operation on application at "<Var_Stage>"
    And user opens same application from application grid after move to next stage
    And user open VAP details page
    And user clicks on vap id of vap type "Credit Protection"
    Then user should be able to view data in respective fields on vap details as per workbook "VAPDetailsValidate.xlsx" under sheet "vap_details_insurance" for row number "<VAPRowNumber>"
    And user should be able to view details under nominee section as per workbook "VAPDetailsValidate.xlsx" under sheet "nominee_details" for row number "<NomineeRowNumber>"
    Examples:
      | Var_Stage            | VAPRowNumber | NomineeRowNumber | Opening_Link                           |
      | Lead Details         | 91           | 0                | VAP details tab under Loan Details tab |
      | Login Acceptance     | 91           | 0                | VAP details tab under Loan Details tab |
      | DDE                  | 91           | 0                | VAP details tab under Loan Details tab |
      | Recommendation       | 91           | 0                | Loan Information option                |
      | Credit Approval      | 91           | 0                | 3 dots option                          |
      | Reconsideration      | 91           | 0                | Loan Information option                |
      | Post Approval        | 91           | 0                | VAP details tab under Loan Details tab |
      | Disbursal Initiation | 91           | 0                | VAP details tab                        |
      | Lead Details         | 91           | 20               | VAP details tab under Loan Details tab |
      | Login Acceptance     | 91           | 20               | VAP details tab under Loan Details tab |
      | DDE                  | 91           | 20               | VAP details tab under Loan Details tab |
      | Recommendation       | 91           | 20               | Loan Information option                |
      | Credit Approval      | 91           | 20               | 3 dots option                          |
      | Reconsideration      | 91           | 20               | Loan Information option                |
      | Post Approval        | 91           | 20               | VAP details tab under Loan Details tab |
      | Disbursal Initiation | 91           | 20               | VAP details tab                        |

  #FeatureID-ACAUTOCAS-209
  Scenario Outline: Validate data with all fields on VAP details page for vap type "Credit Protection" when move to next stage is performed on application at "<Var_Stage>"
    And user open an application at "<Var_Stage>"
    And user open VAP details from "<Opening_Link>"
    And user selects vap product of vap type "Credit Protection"
    And user enters data from workbook "VAPDetailsValidate.xlsx" under sheet "vap_details_insurance" for row number "<VAPRowNumber>"
    And user enters data from workbook "VAPDetailsValidate.xlsx" under sheet "nominee_details" for row number "<NomineeRowNumber>"
    And user has entered all mandatory details in an application at "<Var_Stage>"
    And user saves all details entered
    When user performs move to next stage operation on application at "<Var_Stage>"
    And user opens same application from application grid after move to next stage
    And user open VAP details page
    And user clicks on vap id of vap type "Credit Protection"
    Then user should be able to view data in respective fields on vap details as per workbook "VAPDetailsValidate.xlsx" under sheet "vap_details_insurance" for row number "<VAPRowNumber>"
    And user should be able to view details under nominee section as per workbook "VAPDetailsValidate.xlsx" under sheet "nominee_details" for row number "<NomineeRowNumber>"
    Examples:
      | Var_Stage            | VAPRowNumber | NomineeRowNumber | Opening_Link                           |
      | Lead Details         | 92           | 1                | VAP details tab under Loan Details tab |
      | Login Acceptance     | 92           | 1                | VAP details tab under Loan Details tab |
      | DDE                  | 92           | 1                | VAP details tab under Loan Details tab |
      | Recommendation       | 92           | 1                | Loan Information option                |
      | Credit Approval      | 92           | 1                | 3 dots option                          |
      | Reconsideration      | 92           | 1                | Loan Information option                |
      | Post Approval        | 92           | 1                | VAP details tab under Loan Details tab |
      | Disbursal Initiation | 92           | 1                | VAP details tab                        |
      | Lead Details         | 92           | 19               | VAP details tab under Loan Details tab |
      | Login Acceptance     | 92           | 19               | VAP details tab under Loan Details tab |
      | DDE                  | 92           | 19               | VAP details tab under Loan Details tab |
      | Recommendation       | 92           | 19               | Loan Information option                |
      | Credit Approval      | 92           | 19               | 3 dots option                          |
      | Reconsideration      | 92           | 19               | Loan Information option                |
      | Post Approval        | 92           | 19               | VAP details tab under Loan Details tab |
      | Disbursal Initiation | 92           | 19               | VAP details tab                        |

 #FeatureID-ACAUTOCAS-209
  Scenario Outline: Modify VAP product of vap category "Insurance" at "<Var_Stage>"
    And user open an application at "<Var_Stage>"
    And user open VAP details from "<Opening_Link>"
    And user has already added vap product of vap category "Insurance" that are listed in vap grid
    When user opens existing record of vap category "Insurance" from the vap grid using edit option
    And user modifies value selected in "VAP Product" field to other value with vap category as "Insurance"
    Then user should be able to view records under nominee section are reset to default values
    Examples:
      | Var_Stage       | Opening_Link                           |
      | DDE             | VAP details tab under Loan Details tab |
      | Recommendation  | Loan Information option                |
      | Credit Approval | 3 dots option                          |

 #FeatureID-ACAUTOCAS-209
  Scenario Outline: Modify VAP product of vap category "Insurance" at "<Var_Stage>" post "Credit Approval" stage
    And user has selected "Enable at Post Sanction" flag in "VAP Parameter Policy" master for vap category "Insurance"
    And user open an application at "<Var_Stage>"
    And user open VAP details from "<Opening_Link>"
    And user has already added vap product of vap category "Insurance" that are listed in vap grid
    When user opens existing record of vap category "Insurance" from the vap grid using edit option
    And user modifies value selected in "VAP Product" field to other value with vap category as "Insurance"
    Then user should be able to view records under nominee section are reset to default values
    Examples:
      | Var_Stage            | Opening_Link                           |
      | Reconsideration      | Loan Information option                |
      | Disbursal Initiation | VAP details tab                        |
      | Post Approval        | VAP details tab under Loan Details tab |

  #FeatureID-ACAUTOCAS-209
  Scenario Outline: Modify VAP product of vap category "Insurance" at "<Var_Stage>" to value with vap category other than "Insurance"
    And user open an application at "<Var_Stage>"
    And user open VAP details from "<Opening_Link>"
    And user has already added vap product of vap category "Insurance" that are listed in vap grid
    When user opens existing record of vap category "Insurance" from the vap grid using edit option
    And user modifies value selected in "VAP Product" field to value with vap category other than "Insurance"
    Then user should not be able to view nominee section
    Examples:
      | Var_Stage       | Opening_Link                           |
      | DDE             | VAP details tab under Loan Details tab |
      | Recommendation  | Loan Information option                |
      | Credit Approval | 3 dots option                          |

  #FeatureID-ACAUTOCAS-209
  Scenario Outline: Modify VAP product of vap category "Insurance" at "<Var_Stage>" post "Credit Approval" stage to value with vap category other than "Insurance"
    And user has selected "Enable at Post Sanction" flag in "VAP Parameter Policy" master for vap category "Insurance"
    And user open an application at "<Var_Stage>"
    And user open VAP details from "<Opening_Link>"
    And user has already added vap product of vap category "Insurance" that are listed in vap grid
    When user opens existing record of vap category "Insurance" from the vap grid using edit option
    And user modifies value selected in "VAP Product" field to value with vap category other than "Insurance"
    Then user should not be able to view nominee section
    Examples:
      | Var_Stage            | Opening_Link                           |
      | Reconsideration      | Loan Information option                |
      | Disbursal Initiation | VAP details tab                        |
      | Post Approval        | VAP details tab under Loan Details tab |

  #FeatureID-ACAUTOCAS-209
  Scenario Outline: Modify "Date of Birth" field for added nominee under vap type "<VAP_type>" at "<Var_Stage>" with "<Fields>" field getting enabled
    And user open an application at "<Var_Stage>"
    And user open VAP details from "<Opening_Link>"
    And user has already added vap product of vap type "<VAP_type>"
    And user has already added nominee with "Is Minor" flag as false
    When user opens existing vap of vap type "<VAP_type>" from the vap grid using edit option
    And user modifies value selected in "Date Of Birth" field to valid value so that current data minus date of birth is less than 18 years
    Then user should be able to view "Is Minor" flag selected
    And user should be able to view "<Fields>" field enabled
    Examples:
      | Var_Stage        | VAP_type           | Fields                 | Opening_Link                           |
      | DDE              | Asset Insurance    | Appointee Name         | VAP details tab under Loan Details tab |
      | DDE              | Asset Insurance    | Appointee Relationship | VAP details tab under Loan Details tab |
      | DDE              | Asset Insurance    | Appointee DOB          | VAP details tab under Loan Details tab |
      | DDE              | GAP Insurance      | Appointee Name         | VAP details tab under Loan Details tab |
      | DDE              | GAP Insurance      | Appointee Relationship | VAP details tab under Loan Details tab |
      | DDE              | GAP Insurance      | Appointee DOB          | VAP details tab under Loan Details tab |
      | DDE              | Life Insurance     | Appointee Name         | VAP details tab under Loan Details tab |
      | DDE              | Life Insurance     | Appointee Relationship | VAP details tab under Loan Details tab |
      | DDE              | Life Insurance     | Appointee DOB          | VAP details tab under Loan Details tab |
      | Lead Details     | Life Insurance     | Appointee Name         | VAP details tab under Loan Details tab |
      | Lead Details     | Life Insurance     | Appointee Relationship | VAP details tab under Loan Details tab |
      | Lead Details     | Life Insurance     | Appointee DOB          | VAP details tab under Loan Details tab |
      | Login Acceptance | Life Insurance     | Appointee Name         | VAP details tab under Loan Details tab |
      | Login Acceptance | Life Insurance     | Appointee Relationship | VAP details tab under Loan Details tab |
      | Login Acceptance | Life Insurance     | Appointee DOB          | VAP details tab under Loan Details tab |
      | DDE              | Payment Protection | Appointee Name         | VAP details tab under Loan Details tab |
      | DDE              | Payment Protection | Appointee Relationship | VAP details tab under Loan Details tab |
      | DDE              | Payment Protection | Appointee DOB          | VAP details tab under Loan Details tab |
      | Lead Details     | Payment Protection | Appointee Name         | VAP details tab under Loan Details tab |
      | Lead Details     | Payment Protection | Appointee Relationship | VAP details tab under Loan Details tab |
      | Lead Details     | Payment Protection | Appointee DOB          | VAP details tab under Loan Details tab |
      | Login Acceptance | Payment Protection | Appointee Name         | VAP details tab under Loan Details tab |
      | Login Acceptance | Payment Protection | Appointee Relationship | VAP details tab under Loan Details tab |
      | Login Acceptance | Payment Protection | Appointee DOB          | VAP details tab under Loan Details tab |
      | DDE              | Credit Protection  | Appointee Name         | VAP details tab under Loan Details tab |
      | DDE              | Credit Protection  | Appointee Relationship | VAP details tab under Loan Details tab |
      | DDE              | Credit Protection  | Appointee DOB          | VAP details tab under Loan Details tab |
      | Lead Details     | Credit Protection  | Appointee Name         | VAP details tab under Loan Details tab |
      | Lead Details     | Credit Protection  | Appointee Relationship | VAP details tab under Loan Details tab |
      | Lead Details     | Credit Protection  | Appointee DOB          | VAP details tab under Loan Details tab |
      | Login Acceptance | Credit Protection  | Appointee Name         | VAP details tab under Loan Details tab |
      | Login Acceptance | Credit Protection  | Appointee Relationship | VAP details tab under Loan Details tab |
      | Login Acceptance | Credit Protection  | Appointee DOB          | VAP details tab under Loan Details tab |
      | Recommendation   | Asset Insurance    | Appointee Name         | Loan Information option                |
      | Recommendation   | Asset Insurance    | Appointee Relationship | Loan Information option                |
      | Recommendation   | Asset Insurance    | Appointee DOB          | Loan Information option                |
      | Recommendation   | GAP Insurance      | Appointee Name         | Loan Information option                |
      | Recommendation   | GAP Insurance      | Appointee Relationship | Loan Information option                |
      | Recommendation   | GAP Insurance      | Appointee DOB          | Loan Information option                |
      | Recommendation   | Life Insurance     | Appointee Name         | Loan Information option                |
      | Recommendation   | Life Insurance     | Appointee Relationship | Loan Information option                |
      | Recommendation   | Life Insurance     | Appointee DOB          | Loan Information option                |
      | Recommendation   | Payment Protection | Appointee Name         | Loan Information option                |
      | Recommendation   | Payment Protection | Appointee Relationship | Loan Information option                |
      | Recommendation   | Payment Protection | Appointee DOB          | Loan Information option                |
      | Recommendation   | Credit Protection  | Appointee Name         | Loan Information option                |
      | Recommendation   | Credit Protection  | Appointee Relationship | Loan Information option                |
      | Recommendation   | Credit Protection  | Appointee DOB          | Loan Information option                |
      | Credit Approval  | Asset Insurance    | Appointee Name         | 3 dots option                          |
      | Credit Approval  | Asset Insurance    | Appointee Relationship | 3 dots option                          |
      | Credit Approval  | Asset Insurance    | Appointee DOB          | 3 dots option                          |
      | Credit Approval  | GAP Insurance      | Appointee Name         | 3 dots option                          |
      | Credit Approval  | GAP Insurance      | Appointee Relationship | 3 dots option                          |
      | Credit Approval  | GAP Insurance      | Appointee DOB          | 3 dots option                          |
      | Credit Approval  | Life Insurance     | Appointee Name         | 3 dots option                          |
      | Credit Approval  | Life Insurance     | Appointee Relationship | 3 dots option                          |
      | Credit Approval  | Life Insurance     | Appointee DOB          | 3 dots option                          |
      | Credit Approval  | Payment Protection | Appointee Name         | 3 dots option                          |
      | Credit Approval  | Payment Protection | Appointee Relationship | 3 dots option                          |
      | Credit Approval  | Payment Protection | Appointee DOB          | 3 dots option                          |
      | Credit Approval  | Credit Protection  | Appointee Name         | 3 dots option                          |
      | Credit Approval  | Credit Protection  | Appointee Relationship | 3 dots option                          |
      | Credit Approval  | Credit Protection  | Appointee DOB          | 3 dots option                          |

 #FeatureID-ACAUTOCAS-209
  Scenario Outline: Modify "Date of Birth" field for added nominee under vap type "<VAP_type>" at "<Var_Stage>" post "Credit Approval" with "<Fields>" field getting enabled
    And user has selected "Enable at Post Sanction" flag in "VAP Parameter Policy" master for vap type "Asset Insurance"
    And user open an application at "<Var_Stage>"
    And user open VAP details from "<Opening_Link>"
    And user has already added vap product of vap type "<VAP_type>"
    And user has already added nominee with "Is Minor" flag as false
    When user opens existing vap of vap type "<VAP_type>" from the vap grid using edit option
    And user modifies value selected in "Date Of Birth" field to valid value so that current data minus date of birth is less than 18 years
    Then user should be able to view "Is Minor" flag selected
    And user should be able to view "<Fields>" field enabled
    Examples:
      | Var_Stage            | VAP_type           | Fields                 | Opening_Link                           |
      | Reconsideration      | Asset Insurance    | Appointee Name         | Loan Information option                |
      | Reconsideration      | Asset Insurance    | Appointee Relationship | Loan Information option                |
      | Reconsideration      | Asset Insurance    | Appointee DOB          | Loan Information option                |
      | Reconsideration      | GAP Insurance      | Appointee Name         | Loan Information option                |
      | Reconsideration      | GAP Insurance      | Appointee Relationship | Loan Information option                |
      | Reconsideration      | GAP Insurance      | Appointee DOB          | Loan Information option                |
      | Reconsideration      | Life Insurance     | Appointee Name         | Loan Information option                |
      | Reconsideration      | Life Insurance     | Appointee Relationship | Loan Information option                |
      | Reconsideration      | Life Insurance     | Appointee DOB          | Loan Information option                |
      | Reconsideration      | Payment Protection | Appointee Name         | Loan Information option                |
      | Reconsideration      | Payment Protection | Appointee Relationship | Loan Information option                |
      | Reconsideration      | Payment Protection | Appointee DOB          | Loan Information option                |
      | Reconsideration      | Credit Protection  | Appointee Name         | Loan Information option                |
      | Reconsideration      | Credit Protection  | Appointee Relationship | Loan Information option                |
      | Reconsideration      | Credit Protection  | Appointee DOB          | Loan Information option                |
      | Post Approval        | Asset Insurance    | Appointee Name         | VAP details tab under Loan Details tab |
      | Post Approval        | Asset Insurance    | Appointee Relationship | VAP details tab under Loan Details tab |
      | Post Approval        | Asset Insurance    | Appointee DOB          | VAP details tab under Loan Details tab |
      | Post Approval        | GAP Insurance      | Appointee Name         | VAP details tab under Loan Details tab |
      | Post Approval        | GAP Insurance      | Appointee Relationship | VAP details tab under Loan Details tab |
      | Post Approval        | GAP Insurance      | Appointee DOB          | VAP details tab under Loan Details tab |
      | Post Approval        | Life Insurance     | Appointee Name         | VAP details tab under Loan Details tab |
      | Post Approval        | Life Insurance     | Appointee Relationship | VAP details tab under Loan Details tab |
      | Post Approval        | Life Insurance     | Appointee DOB          | VAP details tab under Loan Details tab |
      | Post Approval        | Payment Protection | Appointee Name         | VAP details tab under Loan Details tab |
      | Post Approval        | Payment Protection | Appointee Relationship | VAP details tab under Loan Details tab |
      | Post Approval        | Payment Protection | Appointee DOB          | VAP details tab under Loan Details tab |
      | Post Approval        | Credit Protection  | Appointee Name         | VAP details tab under Loan Details tab |
      | Post Approval        | Credit Protection  | Appointee Relationship | VAP details tab under Loan Details tab |
      | Post Approval        | Credit Protection  | Appointee DOB          | VAP details tab under Loan Details tab |
      | Disbursal Initiation | Asset Insurance    | Appointee Name         | VAP details tab                        |
      | Disbursal Initiation | Asset Insurance    | Appointee Relationship | VAP details tab                        |
      | Disbursal Initiation | Asset Insurance    | Appointee DOB          | VAP details tab                        |
      | Disbursal Initiation | GAP Insurance      | Appointee Name         | VAP details tab                        |
      | Disbursal Initiation | GAP Insurance      | Appointee Relationship | VAP details tab                        |
      | Disbursal Initiation | GAP Insurance      | Appointee DOB          | VAP details tab                        |
      | Disbursal Initiation | Life Insurance     | Appointee Name         | VAP details tab                        |
      | Disbursal Initiation | Life Insurance     | Appointee Relationship | VAP details tab                        |
      | Disbursal Initiation | Life Insurance     | Appointee DOB          | VAP details tab                        |
      | Disbursal Initiation | Payment Protection | Appointee Name         | VAP details tab                        |
      | Disbursal Initiation | Payment Protection | Appointee Relationship | VAP details tab                        |
      | Disbursal Initiation | Payment Protection | Appointee DOB          | VAP details tab                        |
      | Disbursal Initiation | Credit Protection  | Appointee Name         | VAP details tab                        |
      | Disbursal Initiation | Credit Protection  | Appointee Relationship | VAP details tab                        |
      | Disbursal Initiation | Credit Protection  | Appointee DOB          | VAP details tab                        |

  #FeatureID-ACAUTOCAS-209
  Scenario Outline: Modify data of mandatory fields in Nominee details section for vap type "Asset Insurance" on next stage after performing move to next stage at "<Var_Stage>"
    And user open an application at "<Var_Stage>"
    And user open VAP details from "<Opening_Link>"
    And user selects vap product of vap type "Asset Insurance"
    And user enters data from workbook "VAPDetailsValidate.xlsx" under sheet "vap_details_insurance" for row number "<VAPRowNumber>"
    And user enters data from workbook "VAPDetailsValidate.xlsx" under sheet "nominee_details" for row number "<NomineeRowNumber>"
    And user has entered all mandatory details in an application at "<Var_Stage>"
    And user saves all details entered
    When user performs move to next stage operation on application at "<Var_Stage>"
    And user opens same application from application grid after move to next stage
    And user open VAP details page
    And user opens vap product of vap type "Asset Insurance" using edit option
    And user modifies the data of mandatory fields as per workbook "VAPDetailsValidate.xlsx" under sheet "nominee_details" for row number "<ModifyNomineeRowNumber>"
    Then user should be able to save details successfully
    Examples:
      | Var_Stage       | VAPRowNumber | NomineeRowNumber | ModifyNomineeRowNumber | Opening_Link                           |
      | DDE             | 83           | 0                | 21                     | VAP details tab under Loan Details tab |
      | Recommendation  | 83           | 0                | 21                     | Loan Information option                |
      | Credit Approval | 83           | 0                | 21                     | 3 dots option                          |
      | DDE             | 83           | 20               | 24                     | VAP details tab under Loan Details tab |
      | Recommendation  | 83           | 20               | 24                     | Loan Information option                |
      | Credit Approval | 83           | 20               | 24                     | 3 dots option                          |

  #FeatureID-ACAUTOCAS-209
  Scenario Outline: Modify data of mandatory fields in Nominee details section for vap type "Asset Insurance" on next stage after performing move to next stage at "<Var_Stage>" post "Credit Approval" stage
    And user has selected "Enable at Post Sanction" flag in "VAP Parameter Policy" master for vap type "Asset Insurance"
    And user open an application at "<Var_Stage>"
    And user open VAP details from "<Opening_Link>"
    And user selects vap product of vap type "Asset Insurance"
    And user enters data from workbook "VAPDetailsValidate.xlsx" under sheet "vap_details_insurance" for row number "<VAPRowNumber>"
    And user enters data from workbook "VAPDetailsValidate.xlsx" under sheet "nominee_details" for row number "<NomineeRowNumber>"
    And user has entered all mandatory details in an application at "<Var_Stage>"
    And user saves all details entered
    When user performs move to next stage operation on application at "<Var_Stage>"
    And user opens same application from application grid after move to next stage
    And user open VAP details page
    And user opens vap product of vap type "Asset Insurance" using edit option
    And user modifies the data of mandatory fields as per workbook "VAPDetailsValidate.xlsx" under sheet "nominee_details" for row number "<ModifyNomineeRowNumber>"
    Then user should be able to save details successfully
    Examples:
      | Var_Stage            | VAPRowNumber | NomineeRowNumber | ModifyNomineeRowNumber | Opening_Link                           |
      | Reconsideration      | 83           | 0                | 21                     | Loan Information option                |
      | Post Approval        | 83           | 0                | 21                     | VAP details tab under Loan Details tab |
      | Disbursal Initiation | 83           | 0                | 21                     | VAP details tab                        |
      | Reconsideration      | 83           | 20               | 24                     | Loan Information option                |
      | Post Approval        | 83           | 20               | 24                     | VAP details tab under Loan Details tab |
      | Disbursal Initiation | 83           | 20               | 24                     | VAP details tab                        |

  #FeatureID-ACAUTOCAS-209
  Scenario Outline: Modify data of all fields in Nominee details section for vap type "Asset Insurance" on next stage after performing move to next stage at "<Var_Stage>"
    And user open an application at "<Var_Stage>"
    And user open VAP details from "<Opening_Link>"
    And user selects vap product of vap type "Asset Insurance"
    And user enters data from workbook "VAPDetailsValidate.xlsx" under sheet "vap_details_insurance" for row number "<VAPRowNumber>"
    And user enters data from workbook "VAPDetailsValidate.xlsx" under sheet "nominee_details" for row number "<NomineeRowNumber>"
    And user has entered all mandatory details in an application at "<Var_Stage>"
    And user saves all details entered
    When user performs move to next stage operation on application at "<Var_Stage>"
    And user opens same application from application grid after move to next stage
    And user open VAP details page
    And user opens vap product of vap type "Asset Insurance" using edit option
    And user modifies the data of all fields as per workbook "VAPDetailsValidate.xlsx" under sheet "nominee_details" for row number "<ModifyNomineeRowNumber>"
    Then user should be able to save details successfully
    Examples:
      | Var_Stage       | VAPRowNumber | NomineeRowNumber | ModifyNomineeRowNumber | Opening_Link                           |
      | DDE             | 84           | 1                | 22                     | VAP details tab under Loan Details tab |
      | Recommendation  | 84           | 1                | 22                     | Loan Information option                |
      | Credit Approval | 84           | 1                | 22                     | 3 dots option                          |
      | DDE             | 84           | 19               | 23                     | VAP details tab under Loan Details tab |
      | Recommendation  | 84           | 19               | 23                     | Loan Information option                |
      | Credit Approval | 84           | 19               | 23                     | 3 dots option                          |

  #FeatureID-ACAUTOCAS-209
  Scenario Outline: Modify data of all fields in Nominee details section for vap type "Asset Insurance" on next stage after performing move to next stage at "<Var_Stage>" post "Credit Approval" stage
    And user has selected "Enable at Post Sanction" flag in "VAP Parameter Policy" master for vap type "Asset Insurance"
    And user open an application at "<Var_Stage>"
    And user open VAP details from "<Opening_Link>"
    And user selects vap product of vap type "Asset Insurance"
    And user enters data from workbook "VAPDetailsValidate.xlsx" under sheet "vap_details_insurance" for row number "<VAPRowNumber>"
    And user enters data from workbook "VAPDetailsValidate.xlsx" under sheet "nominee_details" for row number "<NomineeRowNumber>"
    And user has entered all mandatory details in an application at "<Var_Stage>"
    And user saves all details entered
    When user performs move to next stage operation on application at "<Var_Stage>"
    And user opens same application from application grid after move to next stage
    And user open VAP details page
    And user opens vap product of vap type "Asset Insurance" using edit option
    And user modifies the data of all fields as per workbook "VAPDetailsValidate.xlsx" under sheet "nominee_details" for row number "<ModifyNomineeRowNumber>"
    Then user should be able to save details successfully
    Examples:
      | Var_Stage            | VAPRowNumber | NomineeRowNumber | ModifyNomineeRowNumber | Opening_Link                           |
      | Reconsideration      | 84           | 1                | 22                     | Loan Information option                |
      | Post Approval        | 84           | 1                | 22                     | VAP details tab under Loan Details tab |
      | Disbursal Initiation | 84           | 1                | 22                     | VAP details tab                        |
      | Reconsideration      | 84           | 19               | 23                     | Loan Information option                |
      | Post Approval        | 84           | 19               | 23                     | VAP details tab under Loan Details tab |
      | Disbursal Initiation | 84           | 19               | 23                     | VAP details tab                        |

  #FeatureID-ACAUTOCAS-209
  Scenario Outline: Modify data of mandatory fields in Nominee details section for vap type "GAP Insurance" on next stage after performing move to next stage at "<Var_Stage>"
    And user open an application at "<Var_Stage>"
    And user open VAP details from "<Opening_Link>"
    And user selects vap product of vap type "GAP Insurance"
    And user enters data from workbook "VAPDetailsValidate.xlsx" under sheet "vap_details_insurance" for row number "<VAPRowNumber>"
    And user enters data from workbook "VAPDetailsValidate.xlsx" under sheet "nominee_details" for row number "<NomineeRowNumber>"
    And user has entered all mandatory details in an application at "<Var_Stage>"
    And user saves all details entered
    When user performs move to next stage operation on application at "<Var_Stage>"
    And user opens same application from application grid after move to next stage
    And user open VAP details page
    And user opens vap product of vap type "GAP Insurance" using edit option
    And user modifies the data of mandatory fields as per workbook "VAPDetailsValidate.xlsx" under sheet "nominee_details" for row number "<ModifyNomineeRowNumber>"
    Then user should be able to save details successfully
    Examples:
      | Var_Stage       | VAPRowNumber | NomineeRowNumber | ModifyNomineeRowNumber | Opening_Link                           |
      | DDE             | 85           | 0                | 21                     | VAP details tab under Loan Details tab |
      | Recommendation  | 85           | 0                | 21                     | Loan Information option                |
      | Credit Approval | 85           | 0                | 21                     | 3 dots option                          |
      | DDE             | 85           | 20               | 24                     | VAP details tab under Loan Details tab |
      | Recommendation  | 85           | 20               | 24                     | Loan Information option                |
      | Credit Approval | 85           | 20               | 24                     | 3 dots option                          |

  #FeatureID-ACAUTOCAS-209
  Scenario Outline: Modify data of mandatory fields in Nominee details section for vap type "GAP Insurance" on next stage after performing move to next stage at "<Var_Stage>" post "Credit Approval" stage
    And user has selected "Enable at Post Sanction" flag in "VAP Parameter Policy" master for vap type "Asset Insurance"
    And user open an application at "<Var_Stage>"
    And user open VAP details from "<Opening_Link>"
    And user selects vap product of vap type "GAP Insurance"
    And user enters data from workbook "VAPDetailsValidate.xlsx" under sheet "vap_details_insurance" for row number "<VAPRowNumber>"
    And user enters data from workbook "VAPDetailsValidate.xlsx" under sheet "nominee_details" for row number "<NomineeRowNumber>"
    And user has entered all mandatory details in an application at "<Var_Stage>"
    And user saves all details entered
    When user performs move to next stage operation on application at "<Var_Stage>"
    And user opens same application from application grid after move to next stage
    And user open VAP details page
    And user opens vap product of vap type "GAP Insurance" using edit option
    And user modifies the data of mandatory fields as per workbook "VAPDetailsValidate.xlsx" under sheet "nominee_details" for row number "<ModifyNomineeRowNumber>"
    Then user should be able to save details successfully
    Examples:
      | Var_Stage            | VAPRowNumber | NomineeRowNumber | ModifyNomineeRowNumber | Opening_Link                           |
      | Reconsideration      | 85           | 0                | 21                     | Loan Information option                |
      | Post Approval        | 85           | 0                | 21                     | VAP details tab under Loan Details tab |
      | Disbursal Initiation | 85           | 0                | 21                     | VAP details tab                        |
      | Reconsideration      | 85           | 20               | 24                     | Loan Information option                |
      | Post Approval        | 85           | 20               | 24                     | VAP details tab under Loan Details tab |
      | Disbursal Initiation | 85           | 20               | 24                     | VAP details tab                        |

  #FeatureID-ACAUTOCAS-209
  Scenario Outline: Modify data of all fields in Nominee details section for vap type "GAP Insurance" on next stage after performing move to next stage at "<Var_Stage>"
    And user open an application at "<Var_Stage>"
    And user open VAP details from "<Opening_Link>"
    And user selects vap product of vap type "GAP Insurance"
    And user enters data from workbook "VAPDetailsValidate.xlsx" under sheet "vap_details_insurance" for row number "<VAPRowNumber>"
    And user enters data from workbook "VAPDetailsValidate.xlsx" under sheet "nominee_details" for row number "<NomineeRowNumber>"
    And user has entered all mandatory details in an application at "<Var_Stage>"
    And user saves all details entered
    When user performs move to next stage operation on application at "<Var_Stage>"
    And user opens same application from application grid after move to next stage
    And user open VAP details page
    And user opens vap product of vap type "GAP Insurance" using edit option
    And user modifies the data of all fields as per workbook "VAPDetailsValidate.xlsx" under sheet "nominee_details" for row number "<ModifyNomineeRowNumber>"
    Then user should be able to save details successfully
    Examples:
      | Var_Stage       | VAPRowNumber | NomineeRowNumber | ModifyNomineeRowNumber | Opening_Link                           |
      | DDE             | 86           | 1                | 22                     | VAP details tab under Loan Details tab |
      | Recommendation  | 86           | 1                | 22                     | Loan Information option                |
      | Credit Approval | 86           | 1                | 22                     | 3 dots option                          |
      | DDE             | 86           | 19               | 23                     | VAP details tab under Loan Details tab |
      | Recommendation  | 86           | 19               | 23                     | Loan Information option                |
      | Credit Approval | 86           | 19               | 23                     | 3 dots option                          |

  #FeatureID-ACAUTOCAS-209
  Scenario Outline: Modify data of all fields in Nominee details section for vap type "GAP Insurance" on next stage after performing move to next stage at "<Var_Stage>" post "Credit Approval" stage
    And user has selected "Enable at Post Sanction" flag in "VAP Parameter Policy" master for vap type "Asset Insurance"
    And user open an application at "<Var_Stage>"
    And user open VAP details from "<Opening_Link>"
    And user selects vap product of vap type "GAP Insurance"
    And user enters data from workbook "VAPDetailsValidate.xlsx" under sheet "vap_details_insurance" for row number "<VAPRowNumber>"
    And user enters data from workbook "VAPDetailsValidate.xlsx" under sheet "nominee_details" for row number "<NomineeRowNumber>"
    And user has entered all mandatory details in an application at "<Var_Stage>"
    And user saves all details entered
    When user performs move to next stage operation on application at "<Var_Stage>"
    And user opens same application from application grid after move to next stage
    And user open VAP details page
    And user opens vap product of vap type "GAP Insurance" using edit option
    And user modifies the data of all fields as per workbook "VAPDetailsValidate.xlsx" under sheet "nominee_details" for row number "<ModifyNomineeRowNumber>"
    Then user should be able to save details successfully
    Examples:
      | Var_Stage            | VAPRowNumber | NomineeRowNumber | ModifyNomineeRowNumber | Opening_Link                           |
      | Reconsideration      | 86           | 1                | 22                     | Loan Information option                |
      | Post Approval        | 86           | 1                | 22                     | VAP details tab under Loan Details tab |
      | Disbursal Initiation | 86           | 1                | 22                     | VAP details tab                        |
      | Reconsideration      | 86           | 19               | 23                     | Loan Information option                |
      | Post Approval        | 86           | 19               | 23                     | VAP details tab under Loan Details tab |
      | Disbursal Initiation | 86           | 19               | 23                     | VAP details tab                        |

  #FeatureID-ACAUTOCAS-209
  Scenario Outline: Modify data of mandatory fields in Nominee details section for vap type "Life Insurance" on next stage after performing move to next stage at "<Var_Stage>"
    And user open an application at "<Var_Stage>"
    And user open VAP details from "<Opening_Link>"
    And user selects vap product of vap type "Life Insurance"
    And user enters data from workbook "VAPDetailsValidate.xlsx" under sheet "vap_details_insurance" for row number "<VAPRowNumber>"
    And user enters data from workbook "VAPDetailsValidate.xlsx" under sheet "nominee_details" for row number "<NomineeRowNumber>"
    And user has entered all mandatory details in an application at "<Var_Stage>"
    And user saves all details entered
    When user performs move to next stage operation on application at "<Var_Stage>"
    And user opens same application from application grid after move to next stage
    And user open VAP details page
    And user opens vap product of vap type "Life Insurance" using edit option
    And user modifies the data of mandatory fields as per workbook "VAPDetailsValidate.xlsx" under sheet "nominee_details" for row number "<ModifyNomineeRowNumber>"
    Then user should be able to save details successfully
    Examples:
      | Var_Stage        | VAPRowNumber | NomineeRowNumber | ModifyNomineeRowNumber | Opening_Link                           |
      | Login Acceptance | 87           | 0                | 21                     | VAP details tab under Loan Details tab |
      | Lead Details     | 87           | 0                | 21                     | VAP details tab under Loan Details tab |
      | DDE              | 87           | 0                | 21                     | VAP details tab under Loan Details tab |
      | Recommendation   | 87           | 0                | 21                     | Loan Information option                |
      | Credit Approval  | 87           | 0                | 21                     | 3 dots option                          |
      | Login Acceptance | 87           | 0                | 24                     | VAP details tab under Loan Details tab |
      | Lead Details     | 87           | 0                | 24                     | VAP details tab under Loan Details tab |
      | DDE              | 87           | 20               | 24                     | VAP details tab under Loan Details tab |
      | Recommendation   | 87           | 20               | 24                     | Loan Information option                |
      | Credit Approval  | 87           | 20               | 24                     | 3 dots option                          |

  #FeatureID-ACAUTOCAS-209
  Scenario Outline: Modify data of mandatory fields in Nominee details section for vap type "Life Insurance" on next stage after performing move to next stage at "<Var_Stage>" post "Credit Approval" stage
    And user has selected "Enable at Post Sanction" flag in "VAP Parameter Policy" master for vap type "Asset Insurance"
    And user open an application at "<Var_Stage>"
    And user open VAP details from "<Opening_Link>"
    And user selects vap product of vap type "Life Insurance"
    And user enters data from workbook "VAPDetailsValidate.xlsx" under sheet "vap_details_insurance" for row number "<VAPRowNumber>"
    And user enters data from workbook "VAPDetailsValidate.xlsx" under sheet "nominee_details" for row number "<NomineeRowNumber>"
    And user has entered all mandatory details in an application at "<Var_Stage>"
    And user saves all details entered
    When user performs move to next stage operation on application at "<Var_Stage>"
    And user opens same application from application grid after move to next stage
    And user open VAP details page
    And user opens vap product of vap type "Life Insurance" using edit option
    And user modifies the data of mandatory fields as per workbook "VAPDetailsValidate.xlsx" under sheet "nominee_details" for row number "<ModifyNomineeRowNumber>"
    Then user should be able to save details successfully
    Examples:
      | Var_Stage            | VAPRowNumber | NomineeRowNumber | ModifyNomineeRowNumber | Opening_Link                           |
      | Reconsideration      | 87           | 0                | 21                     | Loan Information option                |
      | Post Approval        | 87           | 0                | 21                     | VAP details tab under Loan Details tab |
      | Disbursal Initiation | 87           | 0                | 21                     | VAP details tab                        |
      | Reconsideration      | 87           | 20               | 24                     | Loan Information option                |
      | Post Approval        | 87           | 20               | 24                     | VAP details tab under Loan Details tab |
      | Disbursal Initiation | 87           | 20               | 24                     | VAP details tab                        |

  #FeatureID-ACAUTOCAS-209
  Scenario Outline: Modify data of all fields in Nominee details section for vap type "Life Insurance" on next stage after performing move to next stage at "<Var_Stage>"
    And user open an application at "<Var_Stage>"
    And user open VAP details from "<Opening_Link>"
    And user selects vap product of vap type "Life Insurance"
    And user enters data from workbook "VAPDetailsValidate.xlsx" under sheet "vap_details_insurance" for row number "<VAPRowNumber>"
    And user enters data from workbook "VAPDetailsValidate.xlsx" under sheet "nominee_details" for row number "<NomineeRowNumber>"
    And user has entered all mandatory details in an application at "<Var_Stage>"
    And user saves all details entered
    When user performs move to next stage operation on application at "<Var_Stage>"
    And user opens same application from application grid after move to next stage
    And user open VAP details page
    And user opens vap product of vap type "Life Insurance" using edit option
    And user modifies the data of all fields as per workbook "VAPDetailsValidate.xlsx" under sheet "nominee_details" for row number "<ModifyNomineeRowNumber>"
    Then user should be able to save details successfully
    Examples:
      | Var_Stage        | VAPRowNumber | NomineeRowNumber | ModifyNomineeRowNumber | Opening_Link                           |
      | Login Acceptance | 88           | 1                | 22                     | VAP details tab under Loan Details tab |
      | Lead Details     | 88           | 1                | 22                     | VAP details tab under Loan Details tab |
      | DDE              | 88           | 1                | 22                     | VAP details tab under Loan Details tab |
      | Recommendation   | 88           | 1                | 22                     | Loan Information option                |
      | Credit Approval  | 88           | 1                | 22                     | 3 dots option                          |
      | Login Acceptance | 88           | 1                | 23                     | VAP details tab under Loan Details tab |
      | Lead Details     | 88           | 1                | 23                     | VAP details tab under Loan Details tab |
      | DDE              | 88           | 19               | 23                     | VAP details tab under Loan Details tab |
      | Recommendation   | 88           | 19               | 23                     | Loan Information option                |
      | Credit Approval  | 88           | 19               | 23                     | 3 dots option                          |

  #FeatureID-ACAUTOCAS-209
  Scenario Outline: Modify data of all fields in Nominee details section for vap type "Life Insurance" on next stage after performing move to next stage at "<Var_Stage>" post "Credit Approval" stage
    And user has selected "Enable at Post Sanction" flag in "VAP Parameter Policy" master for vap type "Asset Insurance"
    And user open an application at "<Var_Stage>"
    And user open VAP details from "<Opening_Link>"
    And user selects vap product of vap type "Life Insurance"
    And user enters data from workbook "VAPDetailsValidate.xlsx" under sheet "vap_details_insurance" for row number "<VAPRowNumber>"
    And user enters data from workbook "VAPDetailsValidate.xlsx" under sheet "nominee_details" for row number "<NomineeRowNumber>"
    And user has entered all mandatory details in an application at "<Var_Stage>"
    And user saves all details entered
    When user performs move to next stage operation on application at "<Var_Stage>"
    And user opens same application from application grid after move to next stage
    And user open VAP details page
    And user opens vap product of vap type "Life Insurance" using edit option
    And user modifies the data of all fields as per workbook "VAPDetailsValidate.xlsx" under sheet "nominee_details" for row number "<ModifyNomineeRowNumber>"
    Then user should be able to save details successfully
    Examples:
      | Var_Stage            | VAPRowNumber | NomineeRowNumber | ModifyNomineeRowNumber | Opening_Link                           |
      | Reconsideration      | 88           | 1                | 22                     | Loan Information option                |
      | Post Approval        | 88           | 1                | 22                     | VAP details tab under Loan Details tab |
      | Disbursal Initiation | 88           | 1                | 22                     | VAP details tab                        |
      | Reconsideration      | 88           | 19               | 23                     | Loan Information option                |
      | Post Approval        | 88           | 19               | 23                     | VAP details tab under Loan Details tab |
      | Disbursal Initiation | 88           | 19               | 23                     | VAP details tab                        |

  #FeatureID-ACAUTOCAS-209
  Scenario Outline: Modify data of mandatory fields in Nominee details section for vap type "Payment Protection" on next stage after performing move to next stage at "<Var_Stage>"
    And user open an application at "<Var_Stage>"
    And user open VAP details from "<Opening_Link>"
    And user selects vap product of vap type "Payment Protection"
    And user enters data from workbook "VAPDetailsValidate.xlsx" under sheet "vap_details_insurance" for row number "<VAPRowNumber>"
    And user enters data from workbook "VAPDetailsValidate.xlsx" under sheet "nominee_details" for row number "<NomineeRowNumber>"
    And user has entered all mandatory details in an application at "<Var_Stage>"
    And user saves all details entered
    When user performs move to next stage operation on application at "<Var_Stage>"
    And user opens same application from application grid after move to next stage
    And user open VAP details page
    And user opens vap product of vap type "Payment Protection" using edit option
    And user modifies the data of mandatory fields as per workbook "VAPDetailsValidate.xlsx" under sheet "nominee_details" for row number "<ModifyNomineeRowNumber>"
    Then user should be able to save details successfully
    Examples:
      | Var_Stage        | VAPRowNumber | NomineeRowNumber | ModifyNomineeRowNumber | Opening_Link                           |
      | Login Acceptance | 89           | 0                | 21                     | VAP details tab under Loan Details tab |
      | Lead Details     | 89           | 0                | 21                     | VAP details tab under Loan Details tab |
      | DDE              | 89           | 0                | 21                     | VAP details tab under Loan Details tab |
      | Recommendation   | 89           | 0                | 21                     | Loan Information option                |
      | Credit Approval  | 89           | 0                | 21                     | 3 dots option                          |
      | Login Acceptance | 89           | 0                | 24                     | VAP details tab under Loan Details tab |
      | Lead Details     | 89           | 0                | 24                     | VAP details tab under Loan Details tab |
      | DDE              | 89           | 20               | 24                     | VAP details tab under Loan Details tab |
      | Recommendation   | 89           | 20               | 24                     | Loan Information option                |
      | Credit Approval  | 89           | 20               | 24                     | 3 dots option                          |

  #FeatureID-ACAUTOCAS-209
  Scenario Outline: Modify data of mandatory fields in Nominee details section for vap type "Payment Protection" on next stage after performing move to next stage at "<Var_Stage>" post "Credit Approval" stage
    And user has selected "Enable at Post Sanction" flag in "VAP Parameter Policy" master for vap type "Asset Insurance"
    And user open an application at "<Var_Stage>"
    And user open VAP details from "<Opening_Link>"
    And user selects vap product of vap type "Payment Protection"
    And user enters data from workbook "VAPDetailsValidate.xlsx" under sheet "vap_details_insurance" for row number "<VAPRowNumber>"
    And user enters data from workbook "VAPDetailsValidate.xlsx" under sheet "nominee_details" for row number "<NomineeRowNumber>"
    And user has entered all mandatory details in an application at "<Var_Stage>"
    And user saves all details entered
    When user performs move to next stage operation on application at "<Var_Stage>"
    And user opens same application from application grid after move to next stage
    And user open VAP details page
    And user opens vap product of vap type "Payment Protection" using edit option
    And user modifies the data of mandatory fields as per workbook "VAPDetailsValidate.xlsx" under sheet "nominee_details" for row number "<ModifyNomineeRowNumber>"
    Then user should be able to save details successfully
    Examples:
      | Var_Stage            | VAPRowNumber | NomineeRowNumber | ModifyNomineeRowNumber | Opening_Link                           |
      | Reconsideration      | 89           | 0                | 21                     | Loan Information option                |
      | Post Approval        | 89           | 0                | 21                     | VAP details tab under Loan Details tab |
      | Disbursal Initiation | 89           | 0                | 21                     | VAP details tab                        |
      | Reconsideration      | 89           | 20               | 24                     | Loan Information option                |
      | Post Approval        | 89           | 20               | 24                     | VAP details tab under Loan Details tab |
      | Disbursal Initiation | 89           | 20               | 24                     | VAP details tab                        |

  #FeatureID-ACAUTOCAS-209
  Scenario Outline: Modify data of all fields in Nominee details section for vap type "Payment Protection" on next stage after performing move to next stage at "<Var_Stage>"
    And user open an application at "<Var_Stage>"
    And user open VAP details from "<Opening_Link>"
    And user selects vap product of vap type "Payment Protection"
    And user enters data from workbook "VAPDetailsValidate.xlsx" under sheet "vap_details_insurance" for row number "<VAPRowNumber>"
    And user enters data from workbook "VAPDetailsValidate.xlsx" under sheet "nominee_details" for row number "<NomineeRowNumber>"
    And user has entered all mandatory details in an application at "<Var_Stage>"
    And user saves all details entered
    When user performs move to next stage operation on application at "<Var_Stage>"
    And user opens same application from application grid after move to next stage
    And user open VAP details page
    And user opens vap product of vap type "Payment Protection" using edit option
    And user modifies the data of all fields as per workbook "VAPDetailsValidate.xlsx" under sheet "nominee_details" for row number "<ModifyNomineeRowNumber>"
    Then user should be able to save details successfully
    Examples:
      | Var_Stage        | VAPRowNumber | NomineeRowNumber | ModifyNomineeRowNumber | Opening_Link                           |
      | Login Acceptance | 90           | 1                | 22                     | VAP details tab under Loan Details tab |
      | Lead Details     | 90           | 1                | 22                     | VAP details tab under Loan Details tab |
      | DDE              | 90           | 1                | 22                     | VAP details tab under Loan Details tab |
      | Recommendation   | 90           | 1                | 22                     | Loan Information option                |
      | Credit Approval  | 90           | 1                | 22                     | 3 dots option                          |
      | Login Acceptance | 90           | 1                | 23                     | VAP details tab under Loan Details tab |
      | Lead Details     | 90           | 1                | 23                     | VAP details tab under Loan Details tab |
      | DDE              | 90           | 19               | 23                     | VAP details tab under Loan Details tab |
      | Recommendation   | 90           | 19               | 23                     | Loan Information option                |
      | Credit Approval  | 90           | 19               | 23                     | 3 dots option                          |

  #FeatureID-ACAUTOCAS-209
  Scenario Outline: Modify data of all fields in Nominee details section for vap type "Payment Protection" on next stage after performing move to next stage at "<Var_Stage>" post "Credit Approval" stage
    And user has selected "Enable at Post Sanction" flag in "VAP Parameter Policy" master for vap type "Asset Insurance"
    And user open an application at "<Var_Stage>"
    And user open VAP details from "<Opening_Link>"
    And user selects vap product of vap type "Payment Protection"
    And user enters data from workbook "VAPDetailsValidate.xlsx" under sheet "vap_details_insurance" for row number "<VAPRowNumber>"
    And user enters data from workbook "VAPDetailsValidate.xlsx" under sheet "nominee_details" for row number "<NomineeRowNumber>"
    And user has entered all mandatory details in an application at "<Var_Stage>"
    And user saves all details entered
    When user performs move to next stage operation on application at "<Var_Stage>"
    And user opens same application from application grid after move to next stage
    And user open VAP details page
    And user opens vap product of vap type "Payment Protection" using edit option
    And user modifies the data of all fields as per workbook "VAPDetailsValidate.xlsx" under sheet "nominee_details" for row number "<ModifyNomineeRowNumber>"
    Then user should be able to save details successfully
    Examples:
      | Var_Stage            | VAPRowNumber | NomineeRowNumber | ModifyNomineeRowNumber | Opening_Link                           |
      | Reconsideration      | 90           | 1                | 22                     | Loan Information option                |
      | Post Approval        | 90           | 1                | 22                     | VAP details tab under Loan Details tab |
      | Disbursal Initiation | 90           | 1                | 22                     | VAP details tab                        |
      | Reconsideration      | 90           | 19               | 23                     | Loan Information option                |
      | Post Approval        | 90           | 19               | 23                     | VAP details tab under Loan Details tab |
      | Disbursal Initiation | 90           | 19               | 23                     | VAP details tab                        |

##
  #FeatureID-ACAUTOCAS-209
  Scenario Outline: Modify data of mandatory fields in Nominee details section for vap type "Credit Protection" on next stage after performing move to next stage at "<Var_Stage>"
    And user open an application at "<Var_Stage>"
    And user open VAP details from "<Opening_Link>"
    And user selects vap product of vap type "Credit Protection"
    And user enters data from workbook "VAPDetailsValidate.xlsx" under sheet "vap_details_insurance" for row number "<VAPRowNumber>"
    And user enters data from workbook "VAPDetailsValidate.xlsx" under sheet "nominee_details" for row number "<NomineeRowNumber>"
    And user has entered all mandatory details in an application at "<Var_Stage>"
    And user saves all details entered
    When user performs move to next stage operation on application at "<Var_Stage>"
    And user opens same application from application grid after move to next stage
    And user open VAP details page
    And user opens vap product of vap type "Credit Protection" using edit option
    And user modifies the data of mandatory fields as per workbook "VAPDetailsValidate.xlsx" under sheet "nominee_details" for row number "<ModifyNomineeRowNumber>"
    Then user should be able to save details successfully
    Examples:
      | Var_Stage        | VAPRowNumber | NomineeRowNumber | ModifyNomineeRowNumber | Opening_Link                           |
      | Login Acceptance | 91           | 0                | 21                     | VAP details tab under Loan Details tab |
      | Lead Details     | 91           | 0                | 21                     | VAP details tab under Loan Details tab |
      | DDE              | 91           | 0                | 21                     | VAP details tab under Loan Details tab |
      | Recommendation   | 91           | 0                | 21                     | Loan Information option                |
      | Credit Approval  | 91           | 0                | 21                     | 3 dots option                          |
      | Login Acceptance | 91           | 0                | 24                     | VAP details tab under Loan Details tab |
      | Lead Details     | 91           | 0                | 24                     | VAP details tab under Loan Details tab |
      | DDE              | 91           | 20               | 24                     | VAP details tab under Loan Details tab |
      | Recommendation   | 91           | 20               | 24                     | Loan Information option                |
      | Credit Approval  | 91           | 20               | 24                     | 3 dots option                          |

  #FeatureID-ACAUTOCAS-209
  Scenario Outline: Modify data of mandatory fields in Nominee details section for vap type "Credit Protection" on next stage after performing move to next stage at "<Var_Stage>" post "Credit Approval" stage
    And user has selected "Enable at Post Sanction" flag in "VAP Parameter Policy" master for vap type "Asset Insurance"
    And user open an application at "<Var_Stage>"
    And user open VAP details from "<Opening_Link>"
    And user selects vap product of vap type "Credit Protection"
    And user enters data from workbook "VAPDetailsValidate.xlsx" under sheet "vap_details_insurance" for row number "<VAPRowNumber>"
    And user enters data from workbook "VAPDetailsValidate.xlsx" under sheet "nominee_details" for row number "<NomineeRowNumber>"
    And user has entered all mandatory details in an application at "<Var_Stage>"
    And user saves all details entered
    When user performs move to next stage operation on application at "<Var_Stage>"
    And user opens same application from application grid after move to next stage
    And user open VAP details page
    And user opens vap product of vap type "Credit Protection" using edit option
    And user modifies the data of mandatory fields as per workbook "VAPDetailsValidate.xlsx" under sheet "nominee_details" for row number "<ModifyNomineeRowNumber>"
    Then user should be able to save details successfully
    Examples:
      | Var_Stage            | VAPRowNumber | NomineeRowNumber | ModifyNomineeRowNumber | Opening_Link                           |
      | Reconsideration      | 91           | 0                | 21                     | Loan Information option                |
      | Post Approval        | 91           | 0                | 21                     | VAP details tab under Loan Details tab |
      | Disbursal Initiation | 91           | 0                | 21                     | VAP details tab                        |
      | Reconsideration      | 91           | 20               | 24                     | Loan Information option                |
      | Post Approval        | 91           | 20               | 24                     | VAP details tab under Loan Details tab |
      | Disbursal Initiation | 91           | 20               | 24                     | VAP details tab                        |

  #FeatureID-ACAUTOCAS-209
  Scenario Outline: Modify data of all fields in Nominee details section for vap type "Credit Protection" on next stage after performing move to next stage at "<Var_Stage>"
    And user open an application at "<Var_Stage>"
    And user open VAP details from "<Opening_Link>"
    And user selects vap product of vap type "Credit Protection"
    And user enters data from workbook "VAPDetailsValidate.xlsx" under sheet "vap_details_insurance" for row number "<VAPRowNumber>"
    And user enters data from workbook "VAPDetailsValidate.xlsx" under sheet "nominee_details" for row number "<NomineeRowNumber>"
    And user has entered all mandatory details in an application at "<Var_Stage>"
    And user saves all details entered
    When user performs move to next stage operation on application at "<Var_Stage>"
    And user opens same application from application grid after move to next stage
    And user open VAP details page
    And user opens vap product of vap type "Credit Protection" using edit option
    And user modifies the data of all fields as per workbook "VAPDetailsValidate.xlsx" under sheet "nominee_details" for row number "<ModifyNomineeRowNumber>"
    Then user should be able to save details successfully
    Examples:
      | Var_Stage        | VAPRowNumber | NomineeRowNumber | ModifyNomineeRowNumber | Opening_Link                           |
      | Login Acceptance | 92           | 1                | 22                     | VAP details tab under Loan Details tab |
      | Lead Details     | 92           | 1                | 22                     | VAP details tab under Loan Details tab |
      | DDE              | 92           | 1                | 22                     | VAP details tab under Loan Details tab |
      | Recommendation   | 92           | 1                | 22                     | Loan Information option                |
      | Credit Approval  | 92           | 1                | 22                     | 3 dots option                          |
      | Login Acceptance | 92           | 1                | 23                     | VAP details tab under Loan Details tab |
      | Lead Details     | 92           | 1                | 23                     | VAP details tab under Loan Details tab |
      | DDE              | 92           | 19               | 23                     | VAP details tab under Loan Details tab |
      | Recommendation   | 92           | 19               | 23                     | Loan Information option                |
      | Credit Approval  | 92           | 19               | 23                     | 3 dots option                          |

  #FeatureID-ACAUTOCAS-209
  Scenario Outline: Modify data of all fields in Nominee details section for vap type "Credit Protection" on next stage after performing move to next stage at "<Var_Stage>" post "Credit Approval" stage
    And user has selected "Enable at Post Sanction" flag in "VAP Parameter Policy" master for vap type "Asset Insurance"
    And user open an application at "<Var_Stage>"
    And user open VAP details from "<Opening_Link>"
    And user selects vap product of vap type "Credit Protection"
    And user enters data from workbook "VAPDetailsValidate.xlsx" under sheet "vap_details_insurance" for row number "<VAPRowNumber>"
    And user enters data from workbook "VAPDetailsValidate.xlsx" under sheet "nominee_details" for row number "<NomineeRowNumber>"
    And user has entered all mandatory details in an application at "<Var_Stage>"
    And user saves all details entered
    When user performs move to next stage operation on application at "<Var_Stage>"
    And user opens same application from application grid after move to next stage
    And user open VAP details page
    And user opens vap product of vap type "Credit Protection" using edit option
    And user modifies the data of all fields as per workbook "VAPDetailsValidate.xlsx" under sheet "nominee_details" for row number "<ModifyNomineeRowNumber>"
    Then user should be able to save details successfully
    Examples:
      | Var_Stage            | VAPRowNumber | NomineeRowNumber | ModifyNomineeRowNumber | Opening_Link                           |
      | Reconsideration      | 92           | 1                | 22                     | Loan Information option                |
      | Post Approval        | 92           | 1                | 22                     | VAP details tab under Loan Details tab |
      | Disbursal Initiation | 92           | 1                | 22                     | VAP details tab                        |
      | Reconsideration      | 92           | 19               | 23                     | Loan Information option                |
      | Post Approval        | 92           | 19               | 23                     | VAP details tab under Loan Details tab |
      | Disbursal Initiation | 92           | 19               | 23                     | VAP details tab                        |

  #FeatureID-
  Scenario: Delete Nominee details for vap category type Insurance
    And user open an application at DDE Stage
    And user goes to VAP details tab under Loan Details tab
    And user open an existing VAP product of VAP Category as Insurance from vap grid
    When user goes to nominee section
    And user clicks on delete option
    Then user should be able to delete nominee details successfully

   #FeatureID-
  Scenario Outline: Edit Nominee Details after selecting VAP product of vap category Insurance
    And user open an application from application grid
    And user goes to VAP details tab under Loan Details tab
    And user has an existing VAP product with VAP Category as Insurance
    When user selects record of vap category Insurance for edit
    Then user should be able to view field "<FieldName>" on the screen in "<Editable>" mode
    Examples:
      | FieldName                 | Editable                              |
      | Nominee Name              | editable                              |
      | Nominee Relationship      | editable                              |
      | Date of Birth             | editable                              |
      | Gender                    | editable                              |
      | Is Minor?                 | non editable                          |
      | Appointee Name            | conditional editable in case of minor |
      | Appointee Relationship    | conditional editable in case of minor |
      | Appointee DOB             | conditional editable in case of minor |
      | Nominee address           | editable                              |
      | Percentage of Entitlement | non editable                          |

  #FeatureID-
  Scenario Outline: Modify and save VAP Details after selecting VAP product of vap category Insurance
    And user open an application from application grid
    And user goes to VAP details tab under Loan Details tab
    And user has an existing VAP product with VAP Category as Insurance
    When user open the record of vap category Insurance in editable mode
    And user modifies "<FieldName>"
    And user clicks on Done button
    Then user should be "<Allowed>" to successfully save details
    Examples:
      | FieldName                 | Allowed                              |
      | Nominee Name              | allowed                              |
      | Nominee Relationship      | allowed                              |
      | Date of Birth             | allowed                              |
      | Gender                    | allowed                              |
      | Is Minor?                 | not allowed                          |
      | Appointee Name            | conditional allowed in case of minor |
      | Appointee Relationship    | conditional allowed in case of minor |
      | Appointee DOB             | conditional allowed in case of minor |
      | Nominee address           | allowed                              |
      | Percentage of Entitlement | allowed                              |

