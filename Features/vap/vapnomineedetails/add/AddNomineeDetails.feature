@Epic-VAP
@AuthoredBy-sajja.ravikumar
#OriginalAuthor-rajni.gola
@ReviewedBy-
@ImplementedBy-
@TechReviewedBy-

@NotImplemented

Feature: Add Nominee Details

  Background:
    Given User is logged in CAS with "<SourceDataFile>" under "<SheetName>" and "<RowNumber>"
    And user has configured VAP policy for product mapped in the application in Product master
    And user has configured VAP policy for scheme mapped in the application in Scheme master
    And user has configured VAP Parameter Policy, VAP Amount Computation Policy, VAP Payout Computation Policy, VAP Policy masters under Common Masters

   #FeatureID-ACAUTOCAS-209
  Scenario Outline: Add Nominee details for vap category type "VAP_Type" at "<Var_Stage>"
    And user open an application at "<Var_Stage>" Stage
    And user open VAP details from "<Opening_Link>"
    When user selects vap product of vap type "<VAP_Type>"
    And user goes to nominee section to add nominee details
    And user enters all mandatory details
    Then user should be able to add nominee details successfully
    Examples:
      | VAP_Type           | Var_Stage        | Opening_Link                           |
      | Asset Insurance    | DDE              | VAP details tab under Loan Details tab |
      | Asset Insurance    | Recommendation   | Loan Information option                |
      | Asset Insurance    | Credit Approval  | 3 dots option                          |
      | GAP Insurance      | DDE              | VAP details tab under Loan Details tab |
      | GAP Insurance      | Recommendation   | Loan Information option                |
      | GAP Insurance      | Credit Approval  | 3 dots option                          |
      | Life Insurance     | Lead Details     | VAP details tab under Loan Details tab |
      | Life Insurance     | Login Acceptance | VAP details tab under Loan Details tab |
      | Life Insurance     | DDE              | VAP details tab under Loan Details tab |
      | Life Insurance     | Recommendation   | Loan Information option                |
      | Life Insurance     | Credit Approval  | 3 dots option                          |
      | Payment Protection | Lead Details     | VAP details tab under Loan Details tab |
      | Payment Protection | Login Acceptance | VAP details tab under Loan Details tab |
      | Payment Protection | DDE              | VAP details tab under Loan Details tab |
      | Payment Protection | Recommendation   | Loan Information option                |
      | Payment Protection | Credit Approval  | 3 dots option                          |
      | Credit Protection  | Lead Details     | VAP details tab under Loan Details tab |
      | Credit Protection  | Login Acceptance | VAP details tab under Loan Details tab |
      | Credit Protection  | DDE              | VAP details tab under Loan Details tab |
      | Credit Protection  | Recommendation   | Loan Information option                |
      | Credit Protection  | Credit Approval  | 3 dots option                          |

  #FeatureID-ACAUTOCAS-209
  Scenario Outline: Add Nominee details for vap category type "VAP_Type" at "<Var_Stage>" post "Credit Approval" stage
    And user has selected "Enable at Post Sanction" flag in "VAP Parameter Policy" master for vap type "<VAP_Type>"
    And user open an application at "<Var_Stage>" Stage
    And user open VAP details from "<Opening_Link>"
    When user selects vap product of vap type "<VAP_Type>"
    And user goes to nominee section to add nominee details
    And user enters all mandatory details
    Then user should be able to add nominee details successfully
    Examples:
      | VAP_Type           | Var_Stage            | Opening_Link                           |
      | Asset Insurance    | Reconsideration      | Loan Information option                |
      | Asset Insurance    | Post Approval        | VAP details tab under Loan Details tab |
      | Asset Insurance    | Disbursal Initiation | VAP details tab                        |
      | GAP Insurance      | Reconsideration      | Loan Information option                |
      | GAP Insurance      | Post Approval        | VAP details tab under Loan Details tab |
      | GAP Insurance      | Disbursal Initiation | VAP details tab                        |
      | Life Insurance     | Reconsideration      | Loan Information option                |
      | Life Insurance     | Post Approval        | VAP details tab under Loan Details tab |
      | Life Insurance     | Disbursal Initiation | VAP details tab                        |
      | Payment Protection | Reconsideration      | Loan Information option                |
      | Payment Protection | Post Approval        | VAP details tab under Loan Details tab |
      | Payment Protection | Disbursal Initiation | VAP details tab                        |
      | Credit Protection  | Reconsideration      | Loan Information option                |
      | Credit Protection  | Post Approval        | VAP details tab under Loan Details tab |
      | Credit Protection  | Disbursal Initiation | VAP details tab                        |

  #FeatureID-ACAUTOCAS-209
  Scenario Outline: Add multiple nominee details for vap type "VAP_Type" at "<Var_Stage>"
    And user open an application at "<Var_Stage>" Stage
    And user open VAP details from "<Opening_Link>"
    And user has already added vap product of vap type "<VAP_Type>"
    And user has already added one nominee details
    When user selects vap product of vap type "<VAP_Type>"
    And user clicks on add option to add another nominee details
    And user enters all mandatory details for the new nominee
    Then user should be able to add another nominee details successfully
    Examples:
      | VAP_Type           | Var_Stage        | Opening_Link                           |
      | Asset Insurance    | DDE              | VAP details tab under Loan Details tab |
      | Asset Insurance    | Recommendation   | Loan Information option                |
      | Asset Insurance    | Credit Approval  | 3 dots option                          |
      | GAP Insurance      | DDE              | VAP details tab under Loan Details tab |
      | GAP Insurance      | Recommendation   | Loan Information option                |
      | GAP Insurance      | Credit Approval  | 3 dots option                          |
      | Life Insurance     | Lead Details     | VAP details tab under Loan Details tab |
      | Life Insurance     | Login Acceptance | VAP details tab under Loan Details tab |
      | Life Insurance     | DDE              | VAP details tab under Loan Details tab |
      | Life Insurance     | Recommendation   | Loan Information option                |
      | Life Insurance     | Credit Approval  | 3 dots option                          |
      | Payment Protection | Lead Details     | VAP details tab under Loan Details tab |
      | Payment Protection | Login Acceptance | VAP details tab under Loan Details tab |
      | Payment Protection | DDE              | VAP details tab under Loan Details tab |
      | Payment Protection | Recommendation   | Loan Information option                |
      | Payment Protection | Credit Approval  | 3 dots option                          |
      | Credit Protection  | Lead Details     | VAP details tab under Loan Details tab |
      | Credit Protection  | Login Acceptance | VAP details tab under Loan Details tab |
      | Credit Protection  | DDE              | VAP details tab under Loan Details tab |
      | Credit Protection  | Recommendation   | Loan Information option                |
      | Credit Protection  | Credit Approval  | 3 dots option                          |

  #FeatureID-ACAUTOCAS-209
  Scenario Outline: Add multiple nominee details for vap type "<VAP_Type>" at "<Var_Stage>" post "Credit Approval" stage
    And user has selected "Enable at Post Sanction" flag in "VAP Parameter Policy" master for vap type "<VAP_Type>"
    And user open an application at "<Var_Stage>" Stage
    And user open VAP details from "<Opening_Link>"
    And user has already added vap product of vap type "<VAP_Type>"
    And user has already added one nominee details
    When user clicks on add option to add another nominee details
    And user enters all mandatory details for the new nominee
    Then user should be able to add another nominee details successfully
    Examples:
      | VAP_Type           | Var_Stage            | Opening_Link                           |
      | Asset Insurance    | Reconsideration      | Loan Information option                |
      | Asset Insurance    | Post Approval        | VAP details tab under Loan Details tab |
      | Asset Insurance    | Disbursal Initiation | VAP details tab                        |
      | GAP Insurance      | Reconsideration      | Loan Information option                |
      | GAP Insurance      | Post Approval        | VAP details tab under Loan Details tab |
      | GAP Insurance      | Disbursal Initiation | VAP details tab                        |
      | Life Insurance     | Reconsideration      | Loan Information option                |
      | Life Insurance     | Post Approval        | VAP details tab under Loan Details tab |
      | Life Insurance     | Disbursal Initiation | VAP details tab                        |
      | Payment Protection | Reconsideration      | Loan Information option                |
      | Payment Protection | Post Approval        | VAP details tab under Loan Details tab |
      | Payment Protection | Disbursal Initiation | VAP details tab                        |
      | Credit Protection  | Reconsideration      | Loan Information option                |
      | Credit Protection  | Post Approval        | VAP details tab under Loan Details tab |
      | Credit Protection  | Disbursal Initiation | VAP details tab                        |

  #FeatureID-ACAUTOCAS-209
  Scenario Outline: Add nominee details for vap type "<VAP_Type>" after performing move to next stage at "<Var_Stage>"
    And user open an application at "<Var_Stage>" Stage
    And user open VAP details from "<Opening_Link>"
    And user selects vap product of vap type "<VAP_Type>"
    And user has already added one nominee details
    And user has entered all mandatory details in an application at "<Var_Stage>"
    And user saves all details entered
    When user performs move to next stage operation on application at "<Var_Stage>"
    And user opens same application from application grid after move to next stage
    And user open VAP details page
    And user opens vap product of vap type "<VAP_Type>" using edit option
    And user goes to "Nominee Section"
    And user clicks on add option to add another nominee details
    And user enters all mandatory details for the new nominee
    Then user should be able to add another nominee details successfully
    Examples:
      | VAP_Type           | Var_Stage        | Opening_Link                           |
      | Asset Insurance    | DDE              | VAP details tab under Loan Details tab |
      | Asset Insurance    | Recommendation   | Loan Information option                |
      | Asset Insurance    | Credit Approval  | 3 dots option                          |
      | GAP Insurance      | DDE              | VAP details tab under Loan Details tab |
      | GAP Insurance      | Recommendation   | Loan Information option                |
      | GAP Insurance      | Credit Approval  | 3 dots option                          |
      | Life Insurance     | Lead Details     | VAP details tab under Loan Details tab |
      | Life Insurance     | Login Acceptance | VAP details tab under Loan Details tab |
      | Life Insurance     | DDE              | VAP details tab under Loan Details tab |
      | Life Insurance     | Recommendation   | Loan Information option                |
      | Life Insurance     | Credit Approval  | 3 dots option                          |
      | Payment Protection | Lead Details     | VAP details tab under Loan Details tab |
      | Payment Protection | Login Acceptance | VAP details tab under Loan Details tab |
      | Payment Protection | DDE              | VAP details tab under Loan Details tab |
      | Payment Protection | Recommendation   | Loan Information option                |
      | Payment Protection | Credit Approval  | 3 dots option                          |
      | Credit Protection  | Lead Details     | VAP details tab under Loan Details tab |
      | Credit Protection  | Login Acceptance | VAP details tab under Loan Details tab |
      | Credit Protection  | DDE              | VAP details tab under Loan Details tab |
      | Credit Protection  | Recommendation   | Loan Information option                |
      | Credit Protection  | Credit Approval  | 3 dots option                          |

  #FeatureID-ACAUTOCAS-209
  Scenario Outline: Add nominee details for vap type "<VAP_Type>" after performing move to next stage at "<Var_Stage>" post "Credit Approval" stage
    And user has selected "Enable at Post Sanction" flag in "VAP Parameter Policy" master for vap type "<VAP_Type>"
    And user open an application at "<Var_Stage>" Stage
    And user open VAP details from "<Opening_Link>"
    And user selects vap product of vap type "<VAP_Type>"
    And user has already added one nominee details
    And user has entered all mandatory details in an application at "<Var_Stage>"
    And user saves all details entered
    When user performs move to next stage operation on application at "<Var_Stage>"
    And user opens same application from application grid after move to next stage
    And user open VAP details page
    And user opens vap product of vap type "<VAP_Type>" using edit option
    And user goes to "Nominee Section"
    And user clicks on add option to add another nominee details
    And user enters all mandatory details for the new nominee
    Then user should be able to add another nominee details successfully
    Examples:
      | VAP_Type           | Var_Stage       | Opening_Link                           |
      | Asset Insurance    | Reconsideration | Loan Information option                |
      | Asset Insurance    | Post Approval   | VAP details tab under Loan Details tab |
      | GAP Insurance      | Reconsideration | Loan Information option                |
      | GAP Insurance      | Post Approval   | VAP details tab under Loan Details tab |
      | Life Insurance     | Reconsideration | Loan Information option                |
      | Life Insurance     | Post Approval   | VAP details tab under Loan Details tab |
      | Payment Protection | Reconsideration | Loan Information option                |
      | Payment Protection | Post Approval   | VAP details tab under Loan Details tab |
      | Credit Protection  | Reconsideration | Loan Information option                |
      | Credit Protection  | Post Approval   | VAP details tab under Loan Details tab |

  #FeatureID-ACAUTOCAS-209
  Scenario Outline: Add multiple nominee details for vap category type Insurance for existing VAP product at "<Var_Stage>"
    And user open an application at "<Var_Stage>" Stage
    And user goes to VAP details section under Loan Details option
    And user open an existing VAP product of VAP Category as Insurance from vap grid in edit mode
    When user goes to nominee section
    And user clicks on add option
    And user enters all mandatory details
    And user modifies value for "Percentage of Entitlement" for existing record in such a way to make sum of values of all records under "Percentage of Entitlement" field equal to 100
    Then user should be able to add another nominee details successfully
    Examples:
      | Var_Stage            |
      | DDE                  |
      | Recommendation       |
      | Credit Approval      |
      | Reconsideration      |
      | Disbursal Initiation |

  #FeatureID-ACAUTOCAS-209
  Scenario Outline: Add multiple nominee details for vap category type Insurance for existing VAP product at "<Var_Stage>" with invalid value under "Percentage of Entitlement" field
    And user open an application at "<Var_Stage>" Stage
    And user goes to VAP details section under Loan Details option
    And user open an existing VAP product of VAP Category as Insurance from vap grid in edit mode
    When user goes to nominee section
    And user clicks on add option
    And user enters all mandatory details
    And user enters value for "Percentage of Entitlement" field for new record qual to 100
    Then user should not be able to add another nominee details successfully
    And user should be shown error as "<Error_MSG>"
    Examples:
      | Var_Stage            |Error_MSG|
      | DDE                  |Cumulative Percentage of entitlement should be equal to 100%|
      | Recommendation       |Cumulative Percentage of entitlement should be equal to 100%|
      | Credit Approval      |Cumulative Percentage of entitlement should be equal to 100%|
      | Reconsideration      |Cumulative Percentage of entitlement should be equal to 100%|
      | Disbursal Initiation |Cumulative Percentage of entitlement should be equal to 100%|

  #FeatureID-ACAUTOCAS-209
  Scenario Outline: Validate "<field>" field with two nominee records
    And user open an application from application grid
    And user goes to VAP details tab under Loan Details tab
    And user selects vap product with VAP Category as Insurance
    And user has maintained one record in nominee detail section with value less than 100 under field "<field>"
    When user adds another record with value that makes sum of value in the field "<field>" in previous record along with current record "<value>" 100
    And user saves the data
    Then user should be able to "<message>" save the data with "<error_msg>"
    Examples:
      | field                     | value        | message        |error_msg|
      | Percentage of Entitlement | less than    | unsuccessfully |Cumulative Percentage of entitlement should be equal to 100%|
      | Percentage of Entitlement | greater than | unsuccessfully |Cumulative Percentage of entitlement should be equal to 100%|
      | Percentage of Entitlement | equal to     | successfully   |Cumulative Percentage of entitlement should be equal to 100%|

  #FeatureID-ACAUTOCAS-209
  Scenario Outline: Validate added Nominee details for mandatory fields on VAP details page for vap type "Asset Insurance" on application at "<Var_Stage>"
    And user open an application at "<Var_Stage>"
    And user open VAP details from "<Opening_Link>"
    And user selects vap product of vap type "Asset Insurance"
    And user enters data from workbook "VAPDetailsValidate.xlsx" under sheet "vap_details_insurance" for row number "<VAPRowNumber>"
    And user enters data from workbook "VAPDetailsValidate.xlsx" under sheet "nominee_details" for row number "<NomineeRowNumber>"
    And user saves all details entered
    When user open VAP details page
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
  Scenario Outline: Validate added Nominee details with all fields on VAP details page for vap type "Asset Insurance" on application at "<Var_Stage>"
    And user open an application at "<Var_Stage>"
    And user open VAP details from "<Opening_Link>"
    And user selects vap product of vap type "Asset Insurance"
    And user enters data from workbook "VAPDetailsValidate.xlsx" under sheet "vap_details_insurance" for row number "<VAPRowNumber>"
    And user enters data from workbook "VAPDetailsValidate.xlsx" under sheet "nominee_details" for row number "<NomineeRowNumber>"
    And user saves all details entered
    When user open VAP details page
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
  Scenario Outline: Validate added Nominee details for mandatory fields on VAP details page for vap type "GAP Insurance" on application at "<Var_Stage>"
    And user open an application at "<Var_Stage>"
    And user open VAP details from "<Opening_Link>"
    And user selects vap product of vap type "GAP Insurance"
    And user enters data from workbook "VAPDetailsValidate.xlsx" under sheet "vap_details_insurance" for row number "<VAPRowNumber>"
    And user enters data from workbook "VAPDetailsValidate.xlsx" under sheet "nominee_details" for row number "<NomineeRowNumber>"
    And user saves all details entered
    When user open VAP details page
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
  Scenario Outline: Validate added Nominee details with all fields on VAP details page for vap type "GAP Insurance" on application at "<Var_Stage>"
    And user open an application at "<Var_Stage>"
    And user open VAP details from "<Opening_Link>"
    And user selects vap product of vap type "GAP Insurance"
    And user enters data from workbook "VAPDetailsValidate.xlsx" under sheet "vap_details_insurance" for row number "<VAPRowNumber>"
    And user enters data from workbook "VAPDetailsValidate.xlsx" under sheet "nominee_details" for row number "<NomineeRowNumber>"
    And user saves all details entered
    When user open VAP details page
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
  Scenario Outline: Validate added Nominee details for mandatory fields on VAP details page for vap type "Life Insurance" on application at "<Var_Stage>"
    And user open an application at "<Var_Stage>"
    And user open VAP details from "<Opening_Link>"
    And user selects vap product of vap type "Life Insurance"
    And user enters data from workbook "VAPDetailsValidate.xlsx" under sheet "vap_details_insurance" for row number "<VAPRowNumber>"
    And user enters data from workbook "VAPDetailsValidate.xlsx" under sheet "nominee_details" for row number "<NomineeRowNumber>"
    And user saves all details entered
    When user open VAP details page
    And user clicks on vap id of vap type "Life Insurance"
    Then user should be able to view data in respective fields on vap details as per workbook "VAPDetailsValidate.xlsx" under sheet "vap_details_insurance" for row number "<VAPRowNumber>"
    And user should be able to view details under nominee section as per workbook "VAPDetailsValidate.xlsx" under sheet "nominee_details" for row number "<NomineeRowNumber>"
    Examples:
      | Var_Stage            | VAPRowNumber | NomineeRowNumber | Opening_Link                           |
      | DDE                  | 87           | 0                | VAP details tab under Loan Details tab |
      | Recommendation       | 87           | 0                | Loan Information option                |
      | Credit Approval      | 87           | 0                | 3 dots option                          |
      | Reconsideration      | 87           | 0                | Loan Information option                |
      | Post Approval        | 87           | 0                | VAP details tab under Loan Details tab |
      | Disbursal Initiation | 87           | 0                | VAP details tab                        |
      | DDE                  | 87           | 20               | VAP details tab under Loan Details tab |
      | Recommendation       | 87           | 20               | Loan Information option                |
      | Credit Approval      | 87           | 20               | 3 dots option                          |
      | Reconsideration      | 87           | 20               | Loan Information option                |
      | Post Approval        | 87           | 20               | VAP details tab under Loan Details tab |
      | Disbursal Initiation | 87           | 20               | VAP details tab                        |

  #FeatureID-ACAUTOCAS-209
  Scenario Outline: Validate added Nominee details with all fields on VAP details page for vap type "Life Insurance" on application at "<Var_Stage>"
    And user open an application at "<Var_Stage>"
    And user open VAP details from "<Opening_Link>"
    And user selects vap product of vap type "Life Insurance"
    And user enters data from workbook "VAPDetailsValidate.xlsx" under sheet "vap_details_insurance" for row number "<VAPRowNumber>"
    And user enters data from workbook "VAPDetailsValidate.xlsx" under sheet "nominee_details" for row number "<NomineeRowNumber>"
    And user saves all details entered
    When user open VAP details page
    And user clicks on vap id of vap type "Life Insurance"
    Then user should be able to view data in respective fields on vap details as per workbook "VAPDetailsValidate.xlsx" under sheet "vap_details_insurance" for row number "<VAPRowNumber>"
    And user should be able to view details under nominee section as per workbook "VAPDetailsValidate.xlsx" under sheet "nominee_details" for row number "<NomineeRowNumber>"
    Examples:
      | Var_Stage            | VAPRowNumber | NomineeRowNumber | Opening_Link                           |
      | DDE                  | 88           | 1                | VAP details tab under Loan Details tab |
      | Recommendation       | 88           | 1                | Loan Information option                |
      | Credit Approval      | 88           | 1                | 3 dots option                          |
      | Reconsideration      | 88           | 1                | Loan Information option                |
      | Post Approval        | 88           | 1                | VAP details tab under Loan Details tab |
      | Disbursal Initiation | 88           | 1                | VAP details tab                        |
      | DDE                  | 88           | 19               | VAP details tab under Loan Details tab |
      | Recommendation       | 88           | 19               | Loan Information option                |
      | Credit Approval      | 88           | 19               | 3 dots option                          |
      | Reconsideration      | 88           | 19               | Loan Information option                |
      | Post Approval        | 88           | 19               | VAP details tab under Loan Details tab |
      | Disbursal Initiation | 88           | 19               | VAP details tab                        |

  #FeatureID-ACAUTOCAS-209
  Scenario Outline: Validate added Nominee details for mandatory fields on VAP details page for vap type "Payment Protection" on application at "<Var_Stage>"
    And user open an application at "<Var_Stage>"
    And user open VAP details from "<Opening_Link>"
    And user selects vap product of vap type "Payment Protection"
    And user enters data from workbook "VAPDetailsValidate.xlsx" under sheet "vap_details_insurance" for row number "<VAPRowNumber>"
    And user enters data from workbook "VAPDetailsValidate.xlsx" under sheet "nominee_details" for row number "<NomineeRowNumber>"
    And user saves all details entered
    When user open VAP details page
    And user clicks on vap id of vap type "Payment Protection"
    Then user should be able to view data in respective fields on vap details as per workbook "VAPDetailsValidate.xlsx" under sheet "vap_details_insurance" for row number "<VAPRowNumber>"
    And user should be able to view details under nominee section as per workbook "VAPDetailsValidate.xlsx" under sheet "nominee_details" for row number "<NomineeRowNumber>"
    Examples:
      | Var_Stage            | VAPRowNumber | NomineeRowNumber | Opening_Link                           |
      | DDE                  | 89           | 0                | VAP details tab under Loan Details tab |
      | Recommendation       | 89           | 0                | Loan Information option                |
      | Credit Approval      | 89           | 0                | 3 dots option                          |
      | Reconsideration      | 89           | 0                | Loan Information option                |
      | Post Approval        | 89           | 0                | VAP details tab under Loan Details tab |
      | Disbursal Initiation | 89           | 0                | VAP details tab                        |
      | DDE                  | 89           | 20               | VAP details tab under Loan Details tab |
      | Recommendation       | 89           | 20               | Loan Information option                |
      | Credit Approval      | 89           | 20               | 3 dots option                          |
      | Reconsideration      | 89           | 20               | Loan Information option                |
      | Post Approval        | 89           | 20               | VAP details tab under Loan Details tab |
      | Disbursal Initiation | 89           | 20               | VAP details tab                        |

  #FeatureID-ACAUTOCAS-209
  Scenario Outline: Validate added Nominee details with all fields on VAP details page for vap type "Payment Protection" on application at "<Var_Stage>"
    And user open an application at "<Var_Stage>"
    And user open VAP details from "<Opening_Link>"
    And user selects vap product of vap type "Payment Protection"
    And user enters data from workbook "VAPDetailsValidate.xlsx" under sheet "vap_details_insurance" for row number "<VAPRowNumber>"
    And user enters data from workbook "VAPDetailsValidate.xlsx" under sheet "nominee_details" for row number "<NomineeRowNumber>"
    And user saves all details entered
    When user open VAP details page
    And user clicks on vap id of vap type "Payment Protection"
    Then user should be able to view data in respective fields on vap details as per workbook "VAPDetailsValidate.xlsx" under sheet "vap_details_insurance" for row number "<VAPRowNumber>"
    And user should be able to view details under nominee section as per workbook "VAPDetailsValidate.xlsx" under sheet "nominee_details" for row number "<NomineeRowNumber>"
    Examples:
      | Var_Stage            | VAPRowNumber | NomineeRowNumber | Opening_Link                           |
      | DDE                  | 90           | 1                | VAP details tab under Loan Details tab |
      | Recommendation       | 90           | 1                | Loan Information option                |
      | Credit Approval      | 90           | 1                | 3 dots option                          |
      | Reconsideration      | 90           | 1                | Loan Information option                |
      | Post Approval        | 90           | 1                | VAP details tab under Loan Details tab |
      | Disbursal Initiation | 90           | 1                | VAP details tab                        |
      | DDE                  | 90           | 19               | VAP details tab under Loan Details tab |
      | Recommendation       | 90           | 19               | Loan Information option                |
      | Credit Approval      | 90           | 19               | 3 dots option                          |
      | Reconsideration      | 90           | 19               | Loan Information option                |
      | Post Approval        | 90           | 19               | VAP details tab under Loan Details tab |
      | Disbursal Initiation | 90           | 19               | VAP details tab                        |

  #FeatureID-ACAUTOCAS-209
  Scenario Outline: Validate added Nominee details for mandatory fields on VAP details page for vap type "Credit Protection" on application at "<Var_Stage>"
    And user open an application at "<Var_Stage>"
    And user open VAP details from "<Opening_Link>"
    And user selects vap product of vap type "Credit Protection"
    And user enters data from workbook "VAPDetailsValidate.xlsx" under sheet "vap_details_insurance" for row number "<VAPRowNumber>"
    And user enters data from workbook "VAPDetailsValidate.xlsx" under sheet "nominee_details" for row number "<NomineeRowNumber>"
    And user saves all details entered
    When user open VAP details page
    And user clicks on vap id of vap type "Credit Protection"
    Then user should be able to view data in respective fields on vap details as per workbook "VAPDetailsValidate.xlsx" under sheet "vap_details_insurance" for row number "<VAPRowNumber>"
    And user should be able to view details under nominee section as per workbook "VAPDetailsValidate.xlsx" under sheet "nominee_details" for row number "<NomineeRowNumber>"
    Examples:
      | Var_Stage            | VAPRowNumber | NomineeRowNumber | Opening_Link                           |
      | DDE                  | 91           | 0                | VAP details tab under Loan Details tab |
      | Recommendation       | 91           | 0                | Loan Information option                |
      | Credit Approval      | 91           | 0                | 3 dots option                          |
      | Reconsideration      | 91           | 0                | Loan Information option                |
      | Post Approval        | 91           | 0                | VAP details tab under Loan Details tab |
      | Disbursal Initiation | 91           | 0                | VAP details tab                        |
      | DDE                  | 91           | 20               | VAP details tab under Loan Details tab |
      | Recommendation       | 91           | 20               | Loan Information option                |
      | Credit Approval      | 91           | 20               | 3 dots option                          |
      | Reconsideration      | 91           | 20               | Loan Information option                |
      | Post Approval        | 91           | 20               | VAP details tab under Loan Details tab |
      | Disbursal Initiation | 91           | 20               | VAP details tab                        |

  #FeatureID-ACAUTOCAS-209
  Scenario Outline: Validate added Nominee details with all fields on VAP details page for vap type "Credit Protection" on application at "<Var_Stage>"
    And user open an application at "<Var_Stage>"
    And user open VAP details from "<Opening_Link>"
    And user selects vap product of vap type "Credit Protection"
    And user enters data from workbook "VAPDetailsValidate.xlsx" under sheet "vap_details_insurance" for row number "<VAPRowNumber>"
    And user enters data from workbook "VAPDetailsValidate.xlsx" under sheet "nominee_details" for row number "<NomineeRowNumber>"
    And user saves all details entered
    When user open VAP details page
    And user clicks on vap id of vap type "Credit Protection"
    Then user should be able to view data in respective fields on vap details as per workbook "VAPDetailsValidate.xlsx" under sheet "vap_details_insurance" for row number "<VAPRowNumber>"
    And user should be able to view details under nominee section as per workbook "VAPDetailsValidate.xlsx" under sheet "nominee_details" for row number "<NomineeRowNumber>"
    Examples:
      | Var_Stage            | VAPRowNumber | NomineeRowNumber | Opening_Link                           |
      | DDE                  | 92           | 1                | VAP details tab under Loan Details tab |
      | Recommendation       | 92           | 1                | Loan Information option                |
      | Credit Approval      | 92           | 1                | 3 dots option                          |
      | Reconsideration      | 92           | 1                | Loan Information option                |
      | Post Approval        | 92           | 1                | VAP details tab under Loan Details tab |
      | Disbursal Initiation | 92           | 1                | VAP details tab                        |
      | DDE                  | 92           | 19               | VAP details tab under Loan Details tab |
      | Recommendation       | 92           | 19               | Loan Information option                |
      | Credit Approval      | 92           | 19               | 3 dots option                          |
      | Reconsideration      | 92           | 19               | Loan Information option                |
      | Post Approval        | 92           | 19               | VAP details tab under Loan Details tab |
      | Disbursal Initiation | 92           | 19               | VAP details tab                        |

   #FeatureID-ACAUTOCAS-209
  Scenario Outline: Add nominee details along with nominee address for vap category type "VAP_Type" at "<Var_Stage>"
    And user open an application at "<Var_Stage>" Stage
    And user open VAP details from "<Opening_Link>"
    And user selects vap product of vap type "<VAP_Type>"
    And user goes to nominee section to add nominee details
    When user enters all mandatory details in the nominee record
    And user clicks on Add Address link to add nominee address details
    Then user should be able to add nominee details successfully
    Examples:
      | VAP_Type           | Var_Stage        | Opening_Link                           |
      | Asset Insurance    | DDE              | VAP details tab under Loan Details tab |
      | Asset Insurance    | Recommendation   | Loan Information option                |
      | Asset Insurance    | Credit Approval  | 3 dots option                          |
      | GAP Insurance      | DDE              | VAP details tab under Loan Details tab |
      | GAP Insurance      | Recommendation   | Loan Information option                |
      | GAP Insurance      | Credit Approval  | 3 dots option                          |
      | Life Insurance     | Lead Details     | VAP details tab under Loan Details tab |
      | Life Insurance     | Login Acceptance | VAP details tab under Loan Details tab |
      | Life Insurance     | DDE              | VAP details tab under Loan Details tab |
      | Life Insurance     | Recommendation   | Loan Information option                |
      | Life Insurance     | Credit Approval  | 3 dots option                          |
      | Payment Protection | Lead Details     | VAP details tab under Loan Details tab |
      | Payment Protection | Login Acceptance | VAP details tab under Loan Details tab |
      | Payment Protection | DDE              | VAP details tab under Loan Details tab |
      | Payment Protection | Recommendation   | Loan Information option                |
      | Payment Protection | Credit Approval  | 3 dots option                          |
      | Credit Protection  | Lead Details     | VAP details tab under Loan Details tab |
      | Credit Protection  | Login Acceptance | VAP details tab under Loan Details tab |
      | Credit Protection  | DDE              | VAP details tab under Loan Details tab |
      | Credit Protection  | Recommendation   | Loan Information option                |
      | Credit Protection  | Credit Approval  | 3 dots option                          |

  #FeatureID-ACAUTOCAS-209
  Scenario Outline: Add nominee details along with nominee address for vap category type "VAP_Type" at "<Var_Stage>" post "Credit Approval" stage
    And user has selected "Enable at Post Sanction" flag in "VAP Parameter Policy" master for vap type "<VAP_Type>"
    And user open an application at "<Var_Stage>" Stage
    And user open VAP details from "<Opening_Link>"
    And user selects vap product of vap type "<VAP_Type>"
    And user goes to nominee section to add nominee details
    When user enters all mandatory details in the nominee record
    And user clicks on Add Address link to add nominee address details
    Then user should be able to add nominee details successfully
    Examples:
      | VAP_Type           | Var_Stage            | Opening_Link                           |
      | Asset Insurance    | Reconsideration      | Loan Information option                |
      | Asset Insurance    | Post Approval        | VAP details tab under Loan Details tab |
      | Asset Insurance    | Disbursal Initiation | VAP details tab                        |
      | GAP Insurance      | Reconsideration      | Loan Information option                |
      | GAP Insurance      | Post Approval        | VAP details tab under Loan Details tab |
      | GAP Insurance      | Disbursal Initiation | VAP details tab                        |
      | Life Insurance     | Reconsideration      | Loan Information option                |
      | Life Insurance     | Post Approval        | VAP details tab under Loan Details tab |
      | Life Insurance     | Disbursal Initiation | VAP details tab                        |
      | Payment Protection | Reconsideration      | Loan Information option                |
      | Payment Protection | Post Approval        | VAP details tab under Loan Details tab |
      | Payment Protection | Disbursal Initiation | VAP details tab                        |
      | Credit Protection  | Reconsideration      | Loan Information option                |
      | Credit Protection  | Post Approval        | VAP details tab under Loan Details tab |
      | Credit Protection  | Disbursal Initiation | VAP details tab                        |
