@Epic-VAP
@AuthoredBy-sajja.ravikumar
#OriginalAuthor-rajni.gola
@ReviewedBy-
@ImplementedBy-
@TechReviewedBy-

@NotImplemented

Feature: Modify VAP Details Insurance

  Background:
    Given User is logged in CAS with "<SourceDataFile>" under "<SheetName>" and "<RowNumber>"
    And user has configured VAP policy for product mapped in the application in Product master
    And user has configured VAP policy for scheme mapped in the application in Scheme master
    And user has configured VAP Parameter Policy, VAP Amount Computation Policy, VAP Payout Computation Policy, VAP Policy masters under Common Masters

  #FeatureID-ACAUTOCAS-207
  Scenario Outline: Validate VAP grid on VAP details page for vap type "Asset Insurance" when move to next stage is performed on application at "<Var_Stage>"
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
    Then user should be able to view record of vap type "Asset Insurance" under VAP grid
    Examples:
      | Var_Stage            | VAPRowNumber | Opening_Link                           | NomineeRowNumber |
      | DDE                  | 83           | VAP details tab under Loan Details tab | 0                |
      | Recommendation       | 83           | Loan Information option                | 0                |
      | Credit Approval      | 83           | 3 dots option                          | 0                |
      | Reconsideration      | 83           | Loan Information option                | 0                |
      | Post Approval        | 83           | VAP details tab under Loan Details tab | 0                |
      | Disbursal Initiation | 83           | VAP details tab                        | 0                |

  #FeatureID-ACAUTOCAS-207
  Scenario Outline: Validate data for mandatory fields on VAP details page for vap type "Asset Insurance" when move to next stage is performed on application at "<Var_Stage>"
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

  #FeatureID-ACAUTOCAS-207
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
      | DDE                  | 84           | 0                | VAP details tab under Loan Details tab |
      | Recommendation       | 84           | 0                | Loan Information option                |
      | Credit Approval      | 84           | 0                | 3 dots option                          |
      | Reconsideration      | 84           | 0                | Loan Information option                |
      | Post Approval        | 84           | 0                | VAP details tab under Loan Details tab |
      | Disbursal Initiation | 84           | 0                | VAP details tab                        |

  #FeatureID-ACAUTOCAS-207
  Scenario Outline: Validate VAP grid on VAP details page for vap type "GAP Insurance" when move to next stage is performed on application at "<Var_Stage>"
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
    Then user should be able to view record of vap type "GAP Insurance" under VAP grid
    Examples:
      | Var_Stage            | VAPRowNumber | Opening_Link                           | NomineeRowNumber |
      | DDE                  | 85           | VAP details tab under Loan Details tab | 0                |
      | Recommendation       | 85           | Loan Information option                | 0                |
      | Credit Approval      | 85           | 3 dots option                          | 0                |
      | Reconsideration      | 85           | Loan Information option                | 0                |
      | Post Approval        | 85           | VAP details tab under Loan Details tab | 0                |
      | Disbursal Initiation | 85           | VAP details tab                        | 0                |

  #FeatureID-ACAUTOCAS-207
  Scenario Outline: Validate data for mandatory fields on VAP details page for vap type "GAP Insurance" when move to next stage is performed on application at "<Var_Stage>"
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

  #FeatureID-ACAUTOCAS-207
  Scenario Outline: Validate data for all fields on VAP details page for vap type "GAP Insurance" when move to next stage is performed on application at "<Var_Stage>"
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
      | DDE                  | 86           | 0                | VAP details tab under Loan Details tab |
      | Recommendation       | 86           | 0                | Loan Information option                |
      | Credit Approval      | 86           | 0                | 3 dots option                          |
      | Reconsideration      | 86           | 0                | Loan Information option                |
      | Post Approval        | 86           | 0                | VAP details tab under Loan Details tab |
      | Disbursal Initiation | 86           | 0                | VAP details tab                        |

  #FeatureID-ACAUTOCAS-207
  Scenario Outline: Validate VAP grid on VAP details page for vap type "Life Insurance" when move to next stage is performed on application at "<Var_Stage>"
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
    Then user should be able to view record of vap type "Life Insurance" under VAP grid
    Examples:
      | Var_Stage            | VAPRowNumber | Opening_Link                           | NomineeRowNumber |
      | DDE                  | 87           | VAP details tab under Loan Details tab | 0                |
      | Recommendation       | 87           | Loan Information option                | 0                |
      | Credit Approval      | 87           | 3 dots option                          | 0                |
      | Reconsideration      | 87           | Loan Information option                | 0                |
      | Post Approval        | 87           | VAP details tab under Loan Details tab | 0                |
      | Disbursal Initiation | 87           | VAP details tab                        | 0                |

  #FeatureID-ACAUTOCAS-207
  Scenario Outline: Validate data with only mandatory fields on VAP details page for vap type "Life Insurance" when move to next stage is performed on application at "<Var_Stage>"
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
      | DDE                  | 87           | 0                | VAP details tab under Loan Details tab |
      | Recommendation       | 87           | 0                | Loan Information option                |
      | Credit Approval      | 87           | 0                | 3 dots option                          |
      | Reconsideration      | 87           | 0                | Loan Information option                |
      | Post Approval        | 87           | 0                | VAP details tab under Loan Details tab |
      | Disbursal Initiation | 87           | 0                | VAP details tab                        |

  #FeatureID-ACAUTOCAS-207
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
      | DDE                  | 88           | 0                | VAP details tab under Loan Details tab |
      | Recommendation       | 88           | 0                | Loan Information option                |
      | Credit Approval      | 88           | 0                | 3 dots option                          |
      | Reconsideration      | 88           | 0                | Loan Information option                |
      | Post Approval        | 88           | 0                | VAP details tab under Loan Details tab |
      | Disbursal Initiation | 88           | 0                | VAP details tab                        |

  #FeatureID-ACAUTOCAS-207
  Scenario Outline: Validate VAP grid on VAP details page for vap type "Payment Protection" when move to next stage is performed on application at "<Var_Stage>"
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
    Then user should be able to view record of vap type "Payment Protection" under VAP grid
    Examples:
      | Var_Stage            | VAPRowNumber | Opening_Link                           | NomineeRowNumber |
      | Lead Details         | 83           | VAP details tab under Loan Details tab | 0                |
      | Login Acceptance     | 83           | VAP details tab under Loan Details tab | 0                |
      | DDE                  | 83           | VAP details tab under Loan Details tab | 0                |
      | Recommendation       | 83           | Loan Information option                | 0                |
      | Credit Approval      | 83           | 3 dots option                          | 0                |
      | Reconsideration      | 83           | Loan Information option                | 0                |
      | Post Approval        | 83           | VAP details tab under Loan Details tab | 0                |
      | Disbursal Initiation | 83           | VAP details tab                        | 0                |

  #FeatureID-ACAUTOCAS-207
  Scenario Outline: Validate data with only mandatory fields on VAP details page for vap type "Payment Protection" when move to next stage is performed on application at "<Var_Stage>"
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

  #FeatureID-ACAUTOCAS-207
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
      | Lead Details         | 90           | 0                | VAP details tab under Loan Details tab |
      | Login Acceptance     | 90           | 0                | VAP details tab under Loan Details tab |
      | DDE                  | 90           | 0                | VAP details tab under Loan Details tab |
      | Recommendation       | 90           | 0                | Loan Information option                |
      | Credit Approval      | 90           | 0                | 3 dots option                          |
      | Reconsideration      | 90           | 0                | Loan Information option                |
      | Post Approval        | 90           | 0                | VAP details tab under Loan Details tab |
      | Disbursal Initiation | 90           | 0                | VAP details tab                        |

  #FeatureID-ACAUTOCAS-207
  Scenario Outline: Validate VAP grid on VAP details page for vap type "Credit Protection" when move to next stage is performed on application at "<Var_Stage>"
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
    Then user should be able to view record of vap type "Credit Protection" under VAP grid
    Examples:
      | Var_Stage            | VAPRowNumber | Opening_Link                           | NomineeRowNumber |
      | Lead Details         | 91           | VAP details tab under Loan Details tab | 0                |
      | Login Acceptance     | 91           | VAP details tab under Loan Details tab | 0                |
      | DDE                  | 91           | VAP details tab under Loan Details tab | 0                |
      | Recommendation       | 91           | Loan Information option                | 0                |
      | Credit Approval      | 91           | 3 dots option                          | 0                |
      | Reconsideration      | 91           | Loan Information option                | 0                |
      | Post Approval        | 91           | VAP details tab under Loan Details tab | 0                |
      | Disbursal Initiation | 91           | VAP details tab                        | 0                |

  #FeatureID-ACAUTOCAS-207
  Scenario Outline: Validate data with only mandatory fields on VAP details page for vap type "Credit Protection" when move to next stage is performed on application at "<Var_Stage>"
    And user open an application at "<Var_Stage>"
    And user open VAP details from "<Opening_Link>"
    And user selects vap product of vap type "Credit Protection"
    And user enters data from workbook "VAPDetailsValidate.xlsx" under sheet "vap_details_insurance" for row number "<VAPRowNumber>"
    And user enters data from workbook "VAPDetailsValidate.xlsx" under sheet "nominee_details" for row number "<NomineeRowNumber>"
    And user has entered all mandatory details in an application at "<Var_Stage>"
    And user saves all details entered
    When user performs move to next stage operation on application at "<Var_Stage>"
    And user opens an application from application grid after move to next stage
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

  #FeatureID-ACAUTOCAS-207
  Scenario Outline: Validate data with all fields on VAP details page for vap type "Credit Protection" when move to next stage is performed on application at "<Var_Stage>"
    And user open an application at "<Var_Stage>"
    And user open VAP details from "<Opening_Link>"
    And user selects vap product of vap type "Credit Protection"
    And user enters data from workbook "VAPDetailsValidate.xlsx" under sheet "vap_details_insurance" for row number "<VAPRowNumber>"
    And user enters data from workbook "VAPDetailsValidate.xlsx" under sheet "nominee_details" for row number "<NomineeRowNumber>"
    And user has entered all mandatory details in an application at "<Var_Stage>"
    And user saves all details entered
    When user performs move to next stage operation on application at "<Var_Stage>"
    And user opens an application from application grid after move to next stage
    And user open VAP details page
    And user clicks on vap id of vap type "Credit Protection"
    Then user should be able to view data in respective fields on vap details as per workbook "VAPDetailsValidate.xlsx" under sheet "vap_details_insurance" for row number "<VAPRowNumber>"
    And user should be able to view details under nominee section as per workbook "VAPDetailsValidate.xlsx" under sheet "nominee_details" for row number "<NomineeRowNumber>"
    Examples:
      | Var_Stage            | VAPRowNumber | NomineeRowNumber | Opening_Link                           |
      | Lead Details         | 92           | 0                | VAP details tab under Loan Details tab |
      | Login Acceptance     | 92           | 0                | VAP details tab under Loan Details tab |
      | DDE                  | 92           | 0                | VAP details tab under Loan Details tab |
      | Recommendation       | 92           | 0                | Loan Information option                |
      | Credit Approval      | 92           | 0                | 3 dots option                          |
      | Reconsideration      | 92           | 0                | Loan Information option                |
      | Post Approval        | 92           | 0                | VAP details tab under Loan Details tab |
      | Disbursal Initiation | 92           | 0                | VAP details tab                        |

  #FeatureID-ACAUTOCAS-207
  Scenario Outline: Modify VAP product of vap category "Insurance" at "<Var_Stage>" with values autopopulated in "<Fields>" field
    And user open an application at "<Var_Stage>"
    And user open VAP details from "<Opening_Link>"
    And user has already added vap product of vap category "Insurance" that are listed in vap grid
    When user opens existing vap vap category "Insurance" from the vap grid using edit option
    And user modifies value selected in "VAP Product" field to valid value available in LOV
    Then user should be able to view revised values in "<Fields>" field are autopopulated as per value maintained in "VAP Parameter Policy" master
    And user should be able to view all other fields reset
    Examples:
      | Var_Stage       | Fields       | Opening_Link                           |
      | DDE             | VAP Category | VAP details tab under Loan Details tab |
      | DDE             | VAP Type     | VAP details tab under Loan Details tab |
      | Recommendation  | VAP Category | Loan Information option                |
      | Recommendation  | VAP Type     | Loan Information option                |
      | Credit Approval | VAP Category | 3 dots option                          |
      | Credit Approval | VAP Type     | 3 dots option                          |

  #FeatureID-ACAUTOCAS-207
  Scenario Outline: Modify VAP product of vap category "Insurance" at "<Var_Stage>" post "Credit Approval" stage with values autopopulated in "<Fields>" field
    And user has selected "Enable at Post Sanction" flag in "VAP Parameter Policy" master for vap category "Insurance"
    And user open an application at "<Var_Stage>"
    And user open VAP details from "<Opening_Link>"
    And user has already added vap product of vap category "Insurance" that are listed in vap grid
    When user opens existing vap vap category "Insurance" from the vap grid using edit option
    And user modifies value selected in "VAP Product" field to valid value available in LOV
    Then user should be able to view revised values in "<Fields>" field are autopopulated as per value maintained in "VAP Parameter Policy" master
    And user should be able to view all other fields reset
    Examples:
      | Var_Stage            | Fields       | Opening_Link                           |
      | Reconsideration      | VAP Category | Loan Information option                |
      | Reconsideration      | VAP Type     | Loan Information option                |
      | Disbursal Initiation | VAP Category | VAP details tab                        |
      | Disbursal Initiation | VAP Type     | VAP details tab                        |
      | Post Approval        | VAP Category | VAP details tab under Loan Details tab |
      | Post Approval        | VAP Type     | VAP details tab under Loan Details tab |

########################################################################################################
  #FeatureID-ACAUTOCAS-207
  Scenario Outline: Modify data on VAP details page for vap type "Asset Insurance" at "<Var_Stage>" with values autopopulated in "<Fields>" field
    And user open an application at "<Var_Stage>"
    And user open VAP details from "<Opening_Link>"
    And user has already added vap product of vap type "Asset Insurance"
    When user opens vap product of vap type "Asset Insurance" using edit option
    And user modifies value selected in "VAP Treatment" field to valid value
    Then user should be able to view revised values in "<Fields>" field are autopopulated as per value maintained in "VAP Policy" master
    And user should be able to save details successfully
    Examples:
      | Var_Stage       | Fields              | Opening_Link                           |
      | DDE             | VAP Policy Amount   | VAP details tab under Loan Details tab |
      | DDE             | VAP Amount          | VAP details tab under Loan Details tab |
      | DDE             | Differential Amount | VAP details tab under Loan Details tab |
      | Recommendation  | VAP Policy Amount   | Loan Information option                |
      | Recommendation  | VAP Amount          | Loan Information option                |
      | Recommendation  | Differential Amount | Loan Information option                |
      | Credit Approval | VAP Policy Amount   | 3 dots option                          |
      | Credit Approval | VAP Amount          | 3 dots option                          |
      | Credit Approval | Differential Amount | 3 dots option                          |

  #FeatureID-ACAUTOCAS-207
  Scenario Outline: Modify data on VAP details page for vap type "Asset Insurance" at "<Var_Stage>" post "Credit Approval" stage with values autopopulated in "<Fields>" field
    And user has selected "Enable at Post Sanction" flag in "VAP Parameter Policy" master for vap type "Asset Insurance"
    And user open an application at "<Var_Stage>"
    And user open VAP details from "<Opening_Link>"
    And user has already added vap product of vap type "Asset Insurance"
    When user opens vap product of vap type "Asset Insurance" using edit option
    And user modifies value selected in "VAP Treatment" field to valid value
    Then user should be able to view revised values in "<Fields>" field are autopopulated as per value maintained in "VAP Policy" master
    And user should be able to save details successfully
    Examples:
      | Var_Stage            | Fields              | Opening_Link                           |
      | Reconsideration      | VAP Policy Amount   | Loan Information option                |
      | Reconsideration      | VAP Amount          | Loan Information option                |
      | Reconsideration      | Differential Amount | Loan Information option                |
      | Post Approval        | VAP Policy Amount   | VAP details tab under Loan Details tab |
      | Post Approval        | VAP Amount          | VAP details tab under Loan Details tab |
      | Post Approval        | Differential Amount | VAP details tab under Loan Details tab |
      | Disbursal Initiation | VAP Policy Amount   | VAP details tab                        |
      | Disbursal Initiation | VAP Amount          | VAP details tab                        |
      | Disbursal Initiation | Differential Amount | VAP details tab                        |

  #FeatureID-ACAUTOCAS-207
  Scenario Outline: Modify Start date field for vap type "Asset Insurance" at "<Var_Stage>" with values autopopulated in "<Fields>" field
    And user open an application at "<Var_Stage>"
    And user open VAP details from "<Opening_Link>"
    And user has already added vap product of vap type "Asset Insurance"
    When user opens existing vap from the vap grid using edit option
    And user modifies value selected in "Start date" field to valid value
    Then user should be able to view revised values in "<Fields>" field are autocalcualted as per revised value of "Start date" field
    And user should be able to save details successfully
    Examples:
      | Var_Stage       | Fields         | Opening_Link                           |
      | DDE             | Insurance Term | VAP details tab under Loan Details tab |
      | Recommendation  | Insurance Term | Loan Information option                |
      | Credit Approval | Insurance Term | 3 dots option                          |

  #FeatureID-ACAUTOCAS-207
  Scenario Outline: Modify Start date field for vap type "Asset Insurance" at "<Var_Stage>" post "Credit Approval" stage with values autopopulated in "<Fields>" field
    And user has selected "Enable at Post Sanction" flag in "VAP Parameter Policy" master for vap type "Asset Insurance"
    And user open an application at "<Var_Stage>"
    And user open VAP details from "<Opening_Link>"
    And user has already added vap product of vap type "Asset Insurance"
    When user opens existing vap from the vap grid using edit option
    And user modifies value selected in "Start date" field to valid value
    Then user should be able to view revised values in "<Fields>" field are autocalcualted as per revised value of "Start date" field
    And user should be able to save details successfully
    Examples:
      | Var_Stage            | Fields         | Opening_Link                           |
      | Reconsideration      | Insurance Term | Loan Information option                |
      | Post Approval        | Insurance Term | VAP details tab under Loan Details tab |
      | Disbursal Initiation | Insurance Term | VAP details tab                        |

  #FeatureID-ACAUTOCAS-207
  Scenario Outline: Modify Maturity date field for vap type "Asset Insurance" at "<Var_Stage>" with values autopopulated in "<Fields>" field
    And user open an application at "<Var_Stage>"
    And user open VAP details from "<Opening_Link>"
    And user has already added vap product of vap type "Asset Insurance"
    When user opens existing vap from the vap grid using edit option
    And user modifies value selected in "Maturity Date" field to valid value
    Then user should be able to view revised values in "<Fields>" field are autocalcualted as per revised value of "Maturity Date" field
    And user should be able to save details successfully
    Examples:
      | Var_Stage       | Fields         | Opening_Link                           |
      | DDE             | Insurance Term | VAP details tab under Loan Details tab |
      | Recommendation  | Insurance Term | Loan Information option                |
      | Credit Approval | Insurance Term | 3 dots option                          |

 #FeatureID-ACAUTOCAS-207
  Scenario Outline: Modify Maturity date field for vap type "Asset Insurance" at "<Var_Stage>" post "Credit Approval" stage with values autopopulated in "<Fields>" field
    And user has selected "Enable at Post Sanction" flag in "VAP Parameter Policy" master for vap type "Asset Insurance"
    And user open an application at "<Var_Stage>"
    And user open VAP details from "<Opening_Link>"
    And user has already added vap product of vap type "Asset Insurance"
    When user opens existing vap from the vap grid using edit option
    And user modifies value selected in "Maturity Date" field to valid value
    Then user should be able to view revised values in "<Fields>" field are autocalcualted as per revised value of "Maturity Date" field
    And user should be able to save details successfully
    Examples:
      | Var_Stage            | Fields         | Opening_Link                           |
      | Reconsideration      | Insurance Term | Loan Information option                |
      | Post Approval        | Insurance Term | VAP details tab under Loan Details tab |
      | Disbursal Initiation | Insurance Term | VAP details tab                        |

  #FeatureID-ACAUTOCAS-207
  Scenario Outline: Modify data of mandatory fields on VAP details page for vap type "Asset Insurance" on next stage after performing move to next stage at "<Var_Stage>"
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
    And user modifies the data of mandatory fields as per workbook "VAPDetailsValidate.xlsx" under sheet "vap_details_insurance" for row number "<ModifyVAPRowNumber>"
    Then user should be able to save details successfully
    Examples:
      | Var_Stage       | VAPRowNumber | NomineeRowNumber | ModifyVAPRowNumber | Opening_Link                           |
      | DDE             | 83           | 0                | 93                 | VAP details tab under Loan Details tab |
      | Recommendation  | 83           | 0                | 93                 | Loan Information option                |
      | Credit Approval | 83           | 0                | 93                 | 3 dots option                          |

  #FeatureID-ACAUTOCAS-207
  Scenario Outline: Modify data of mandatory fields on VAP details page for vap type "Asset Insurance" on next stage after performing move to next stage at "<Var_Stage>" post "Credit Approval" stage
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
    And user modifies the data of mandatory fields as per workbook "VAPDetailsValidate.xlsx" under sheet "vap_details_insurance" for row number "<ModifyVAPRowNumber>"
    Then user should be able to save details successfully
    Examples:
      | Var_Stage            | VAPRowNumber | NomineeRowNumber | ModifyVAPRowNumber | Opening_Link                           |
      | Reconsideration      | 83           | 0                | 93                 | Loan Information option                |
      | Post Approval        | 83           | 0                | 93                 | VAP details tab under Loan Details tab |
      | Disbursal Initiation | 83           | 0                | 93                 | VAP details tab                        |

  #FeatureID-ACAUTOCAS-207
  Scenario Outline: Modify data of all fields on VAP details page for vap type "Asset Insurance" on next stage after performing move to next stage at "<Var_Stage>"
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
    And user modifies the data of all fields as per workbook "VAPDetailsValidate.xlsx" under sheet "vap_details_insurance" for row number "<ModifyVAPRowNumber>"
    Then user should be able to save details successfully
    Examples:
      | Var_Stage       | VAPRowNumber | NomineeRowNumber | ModifyVAPRowNumber | Opening_Link                           |
      | DDE             | 84           | 0                | 94                 | VAP details tab under Loan Details tab |
      | Recommendation  | 84           | 0                | 94                 | Loan Information option                |
      | Credit Approval | 84           | 0                | 94                 | 3 dots option                          |

  #FeatureID-ACAUTOCAS-207
  Scenario Outline: Modify data of all fields on VAP details page for vap type "Asset Insurance" on next stage after performing move to next stage at "<Var_Stage>" post "Credit Approval" stage
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
    And user modifies the data of all fields as per workbook "VAPDetailsValidate.xlsx" under sheet "vap_details_insurance" for row number "<ModifyVAPRowNumber>"
    Then user should be able to save details successfully
    Examples:
      | Var_Stage            | VAPRowNumber | NomineeRowNumber | ModifyVAPRowNumber | Opening_Link                           |
      | Reconsideration      | 84           | 0                | 94                 | Loan Information option                |
      | Post Approval        | 84           | 0                | 94                 | VAP details tab under Loan Details tab |
      | Disbursal Initiation | 84           | 0                | 94                 | VAP details tab                        |

########################################################################################################
########################################################################################################
 ################################################################################################################
  #FeatureID-ACAUTOCAS-207
  Scenario Outline: Modify data on VAP details page for vap type "GAP Insurance" at "<Var_Stage>" with values autopopulated in "<Fields>" field
    And user open an application at "<Var_Stage>"
    And user open VAP details from "<Opening_Link>"
    And user has already added vap product of vap type "GAP Insurance"
    When user opens vap product of vap type "Asset Insurance" using edit option
    And user modifies value selected in "VAP Treatment" field to valid value
    Then user should be able to view revised values in "<Fields>" field are autopopulated as per value maintained in "VAP Policy" master
    And user should be able to save details successfully
    Examples:
      | Var_Stage       | Fields              | Opening_Link                           |
      | DDE             | VAP Policy Amount   | VAP details tab under Loan Details tab |
      | DDE             | VAP Amount          | VAP details tab under Loan Details tab |
      | DDE             | Differential Amount | VAP details tab under Loan Details tab |
      | Recommendation  | VAP Policy Amount   | Loan Information option                |
      | Recommendation  | VAP Amount          | Loan Information option                |
      | Recommendation  | Differential Amount | Loan Information option                |
      | Credit Approval | VAP Policy Amount   | 3 dots option                          |
      | Credit Approval | VAP Amount          | 3 dots option                          |
      | Credit Approval | Differential Amount | 3 dots option                          |

  #FeatureID-ACAUTOCAS-207
  Scenario Outline: Modify data on VAP details page for vap type "GAP Insurance" at "<Var_Stage>" post "Credit Approval" stage with values autopopulated in "<Fields>" field
    And user has selected "Enable at Post Sanction" flag in "VAP Parameter Policy" master for vap type "GAP Insurance"
    And user open an application at "<Var_Stage>"
    And user open VAP details from "<Opening_Link>"
    And user has already added vap product of vap type "GAP Insurance"
    When user opens vap product of vap type "GAP Insurance" using edit option
    And user modifies value selected in "VAP Treatment" field to valid value
    Then user should be able to view revised values in "<Fields>" field are autopopulated as per value maintained in "VAP Policy" master
    And user should be able to save details successfully
    Examples:
      | Var_Stage            | Fields              | Opening_Link                           |
      | Reconsideration      | VAP Policy Amount   | Loan Information option                |
      | Reconsideration      | VAP Amount          | Loan Information option                |
      | Reconsideration      | Differential Amount | Loan Information option                |
      | Post Approval        | VAP Policy Amount   | VAP details tab under Loan Details tab |
      | Post Approval        | VAP Amount          | VAP details tab under Loan Details tab |
      | Post Approval        | Differential Amount | VAP details tab under Loan Details tab |
      | Disbursal Initiation | VAP Policy Amount   | VAP details tab                        |
      | Disbursal Initiation | VAP Amount          | VAP details tab                        |
      | Disbursal Initiation | Differential Amount | VAP details tab                        |

  #FeatureID-ACAUTOCAS-207
  Scenario Outline: Modify Start date field for vap type "GAP Insurance" at "<Var_Stage>" with values autopopulated in "<Fields>" field
    And user open an application at "<Var_Stage>"
    And user open VAP details from "<Opening_Link>"
    And user has already added vap product of vap type "GAP Insurance"
    When user opens existing vap from the vap grid using edit option
    And user modifies value selected in "Start date" field to valid value
    Then user should be able to view revised values in "<Fields>" field are autocalcualted as per revised value of "Start date" field
    And user should be able to save details successfully
    Examples:
      | Var_Stage       | Fields         | Opening_Link                           |
      | DDE             | Insurance Term | VAP details tab under Loan Details tab |
      | Recommendation  | Insurance Term | Loan Information option                |
      | Credit Approval | Insurance Term | 3 dots option                          |

  #FeatureID-ACAUTOCAS-207
  Scenario Outline: Modify Start date field for vap type "GAP Insurance" at "<Var_Stage>" post "Credit Approval" stage with values autopopulated in "<Fields>" field
    And user has selected "Enable at Post Sanction" flag in "VAP Parameter Policy" master for vap type "GAP Insurance"
    And user open an application at "<Var_Stage>"
    And user open VAP details from "<Opening_Link>"
    And user has already added vap product of vap type "GAP Insurance"
    When user opens existing vap from the vap grid using edit option
    And user modifies value selected in "Start date" field to valid value
    Then user should be able to view revised values in "<Fields>" field are autocalcualted as per revised value of "Start date" field
    And user should be able to save details successfully
    Examples:
      | Var_Stage            | Fields         | Opening_Link                           |
      | Reconsideration      | Insurance Term | Loan Information option                |
      | Post Approval        | Insurance Term | VAP details tab under Loan Details tab |
      | Disbursal Initiation | Insurance Term | VAP details tab                        |

  #FeatureID-ACAUTOCAS-207
  Scenario Outline: Modify Maturity date field for vap type "GAP Insurance" at "<Var_Stage>" with values autopopulated in "<Fields>" field
    And user open an application at "<Var_Stage>"
    And user open VAP details from "<Opening_Link>"
    And user has already added vap product of vap type "GAP Insurance"
    When user opens existing vap from the vap grid using edit option
    And user modifies value selected in "Maturity Date" field to valid value
    Then user should be able to view revised values in "<Fields>" field are autocalcualted as per revised value of "Maturity Date" field
    And user should be able to save details successfully
    Examples:
      | Var_Stage       | Fields         | Opening_Link                           |
      | DDE             | Insurance Term | VAP details tab under Loan Details tab |
      | Recommendation  | Insurance Term | Loan Information option                |
      | Credit Approval | Insurance Term | 3 dots option                          |

 #FeatureID-ACAUTOCAS-207
  Scenario Outline: Modify Maturity date field for vap type "GAP Insurance" at "<Var_Stage>" post "Credit Approval" stage with values autopopulated in "<Fields>" field
    And user has selected "Enable at Post Sanction" flag in "VAP Parameter Policy" master for vap type "GAP Insurance"
    And user open an application at "<Var_Stage>"
    And user open VAP details from "<Opening_Link>"
    And user has already added vap product of vap type "GAP Insurance"
    When user opens existing vap from the vap grid using edit option
    And user modifies value selected in "Maturity Date" field to valid value
    Then user should be able to view revised values in "<Fields>" field are autocalcualted as per revised value of "Maturity Date" field
    And user should be able to save details successfully
    Examples:
      | Var_Stage            | Fields         | Opening_Link                           |
      | Reconsideration      | Insurance Term | Loan Information option                |
      | Post Approval        | Insurance Term | VAP details tab under Loan Details tab |
      | Disbursal Initiation | Insurance Term | VAP details tab                        |

  #FeatureID-ACAUTOCAS-207
  Scenario Outline: Modify "Date Of Delivery" field for vap type "GAP Insurance" at "<Var_Stage>" with values autopopulated in "<Fields>" field
    And user open an application at "<Var_Stage>"
    And user open VAP details from "<Opening_Link>"
    And user has already added vap product of vap type "GAP Insurance"
    When user opens existing vap from the vap grid using edit option
    And user modifies value selected in "Start date" field to valid value
    Then user should be able to view revised values in "<Fields>" field are autocalcualted as per revised value of "Date Of Delivery" field
    And user should be able to save details successfully
    Examples:
      | Var_Stage       | Fields         | Opening_Link                           |
      | DDE             | Age of Vehicle | VAP details tab under Loan Details tab |
      | Recommendation  | Age of Vehicle | Loan Information option                |
      | Credit Approval | Age of Vehicle | 3 dots option                          |

   #FeatureID-ACAUTOCAS-207
  Scenario Outline: Modify "Date Of Delivery" field for vap type "GAP Insurance" at "<Var_Stage>" post "Credit Approval" stage with values autopopulated in "<Fields>" field
    And user has selected "Enable at Post Sanction" flag in "VAP Parameter Policy" master for vap type "GAP Insurance"
    And user open an application at "<Var_Stage>"
    And user open VAP details from "<Opening_Link>"
    And user has already added vap product of vap type "GAP Insurance"
    When user opens existing vap from the vap grid using edit option
    And user modifies value selected in "Start date" field to valid value
    Then user should be able to view revised values in "<Fields>" field are autocalcualted as per revised value of "Date Of Delivery" field
    And user should be able to save details successfully
    Examples:
      | Var_Stage            | Fields         | Opening_Link                           |
      | Reconsideration      | Age of Vehicle | Loan Information option                |
      | Post Approval        | Age of Vehicle | VAP details tab under Loan Details tab |
      | Disbursal Initiation | Age of Vehicle | VAP details tab                        |

  #FeatureID-ACAUTOCAS-207
  Scenario Outline: Modify data of mandatory fields on VAP details page for vap type "GAP Insurance" on next stage after performing move to next stage at "<Var_Stage>"
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
    And user modifies the data of mandatory fields as per workbook "VAPDetailsValidate.xlsx" under sheet "vap_details_insurance" for row number "<ModifyVAPRowNumber>"
    Then user should be able to save details successfully
    Examples:
      | Var_Stage       | VAPRowNumber | NomineeRowNumber | ModifyVAPRowNumber | Opening_Link                           |
      | DDE             | 85           | 0                | 95                 | VAP details tab under Loan Details tab |
      | Recommendation  | 85           | 0                | 95                 | Loan Information option                |
      | Credit Approval | 85           | 0                | 95                 | 3 dots option                          |

  #FeatureID-ACAUTOCAS-207
  Scenario Outline: Modify data of mandatory fields on VAP details page for vap type "GAP Insurance" on next stage after performing move to next stage at "<Var_Stage>" post "Credit Approval" stage
    And user has selected "Enable at Post Sanction" flag in "VAP Parameter Policy" master for vap type "GAP Insurance"
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
    And user modifies the data of mandatory fields as per workbook "VAPDetailsValidate.xlsx" under sheet "vap_details_insurance" for row number "<ModifyVAPRowNumber>"
    Then user should be able to save details successfully
    Examples:
      | Var_Stage            | VAPRowNumber | NomineeRowNumber | ModifyVAPRowNumber | Opening_Link                           |
      | Reconsideration      | 85           | 0                | 95                 | Loan Information option                |
      | Post Approval        | 85           | 0                | 95                 | VAP details tab under Loan Details tab |
      | Disbursal Initiation | 85           | 0                | 95                 | VAP details tab                        |

  #FeatureID-ACAUTOCAS-207
  Scenario Outline: Modify data of all fields on VAP details page for vap type "GAP Insurance" on next stage after performing move to next stage at "<Var_Stage>"
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
    And user modifies the data of all fields as per workbook "VAPDetailsValidate.xlsx" under sheet "vap_details_insurance" for row number "<ModifyVAPRowNumber>"
    Then user should be able to save details successfully
    Examples:
      | Var_Stage       | VAPRowNumber | NomineeRowNumber | ModifyVAPRowNumber | Opening_Link                           |
      | DDE             | 86           | 0                | 96                 | VAP details tab under Loan Details tab |
      | Recommendation  | 86           | 0                | 96                 | Loan Information option                |
      | Credit Approval | 86           | 0                | 96                 | 3 dots option                          |

  #FeatureID-ACAUTOCAS-207
  Scenario Outline: Modify data of all fields on VAP details page for vap type "GAP Insurance" on next stage after performing move to next stage at "<Var_Stage>" post "Credit Approval" stage
    And user has selected "Enable at Post Sanction" flag in "VAP Parameter Policy" master for vap type "GAP Insurance"
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
    And user modifies the data of all fields as per workbook "VAPDetailsValidate.xlsx" under sheet "vap_details_insurance" for row number "<ModifyVAPRowNumber>"
    Then user should be able to save details successfully
    Examples:
      | Var_Stage            | VAPRowNumber | NomineeRowNumber | ModifyVAPRowNumber | Opening_Link                           |
      | Reconsideration      | 86           | 0                | 96                 | Loan Information option                |
      | Post Approval        | 86           | 0                | 96                 | VAP details tab under Loan Details tab |
      | Disbursal Initiation | 86           | 0                | 96                 | VAP details tab                        |

 ################################################################################################################
  #FeatureID-ACAUTOCAS-207
  Scenario Outline: Modify data on VAP details page for vap type "Life Insurance" at "<Var_Stage>" with values autopopulated in "<Fields>" field
    And user open an application at "<Var_Stage>"
    And user open VAP details from "<Opening_Link>"
    And user has already added vap product of vap type "Life Insurance"
    When user opens vap product of vap type "Life Insurance" using edit option
    And user modifies value selected in "VAP Treatment" field to valid value
    Then user should be able to view revised values in "<Fields>" field are autopopulated as per value maintained in "VAP Policy" master
    And user should be able to save details successfully
    Examples:
      | Var_Stage        | Fields              | Opening_Link                           |
      | Lead Details     | VAP Policy Amount   | VAP details tab under Loan Details tab |
      | Lead Details     | VAP Amount          | VAP details tab under Loan Details tab |
      | Lead Details     | Differential Amount | VAP details tab under Loan Details tab |
      | Login Acceptance | VAP Policy Amount   | VAP details tab under Loan Details tab |
      | Login Acceptance | VAP Amount          | VAP details tab under Loan Details tab |
      | Login Acceptance | Differential Amount | VAP details tab under Loan Details tab |
      | DDE              | VAP Policy Amount   | VAP details tab under Loan Details tab |
      | DDE              | VAP Amount          | VAP details tab under Loan Details tab |
      | DDE              | Differential Amount | VAP details tab under Loan Details tab |
      | Recommendation   | VAP Policy Amount   | Loan Information option                |
      | Recommendation   | VAP Amount          | Loan Information option                |
      | Recommendation   | Differential Amount | Loan Information option                |
      | Credit Approval  | VAP Policy Amount   | 3 dots option                          |
      | Credit Approval  | VAP Amount          | 3 dots option                          |
      | Credit Approval  | Differential Amount | 3 dots option                          |

  #FeatureID-ACAUTOCAS-207
  Scenario Outline: Modify data on VAP details page for vap type "Life Insurance" at "<Var_Stage>" post "Credit Approval" stage with values autopopulated in "<Fields>" field
    And user has selected "Enable at Post Sanction" flag in "VAP Parameter Policy" master for vap type "Life Insurance"
    And user open an application at "<Var_Stage>"
    And user open VAP details from "<Opening_Link>"
    And user has already added vap product of vap type "Life Insurance"
    When user opens vap product of vap type "Life Insurance" using edit option
    And user modifies value selected in "VAP Treatment" field to valid value
    Then user should be able to view revised values in "<Fields>" field are autopopulated as per value maintained in "VAP Policy" master
    And user should be able to save details successfully
    Examples:
      | Var_Stage            | Fields              | Opening_Link                           |
      | Reconsideration      | VAP Policy Amount   | Loan Information option                |
      | Reconsideration      | VAP Amount          | Loan Information option                |
      | Reconsideration      | Differential Amount | Loan Information option                |
      | Post Approval        | VAP Policy Amount   | VAP details tab under Loan Details tab |
      | Post Approval        | VAP Amount          | VAP details tab under Loan Details tab |
      | Post Approval        | Differential Amount | VAP details tab under Loan Details tab |
      | Disbursal Initiation | VAP Policy Amount   | VAP details tab                        |
      | Disbursal Initiation | VAP Amount          | VAP details tab                        |
      | Disbursal Initiation | Differential Amount | VAP details tab                        |

  #FeatureID-ACAUTOCAS-207
  Scenario Outline: Modify Start date field for vap type "Life Insurance" at "<Var_Stage>" with values autopopulated in "<Fields>" field
    And user open an application at "<Var_Stage>"
    And user open VAP details from "<Opening_Link>"
    And user has already added vap product of vap type "Life Insurance"
    When user opens existing vap from the vap grid using edit option
    And user modifies value selected in "Start date" field to valid value
    Then user should be able to view revised values in "<Fields>" field are autocalcualted as per revised value of "Start date" field
    And user should be able to save details successfully
    Examples:
      | Var_Stage        | Fields         | Opening_Link                           |
      | Lead Details     | Insurance Term | VAP details tab under Loan Details tab |
      | Login Acceptance | Insurance Term | VAP details tab under Loan Details tab |
      | DDE              | Insurance Term | VAP details tab under Loan Details tab |
      | Recommendation   | Insurance Term | Loan Information option                |
      | Credit Approval  | Insurance Term | 3 dots option                          |

  #FeatureID-ACAUTOCAS-207
  Scenario Outline: Modify Start date field for vap type "Life Insurance" at "<Var_Stage>" post "Credit Approval" stage with values autopopulated in "<Fields>" field
    And user has selected "Enable at Post Sanction" flag in "VAP Parameter Policy" master for vap type "Life Insurance"
    And user open an application at "<Var_Stage>"
    And user open VAP details from "<Opening_Link>"
    And user has already added vap product of vap type "Life Insurance"
    When user opens existing vap from the vap grid using edit option
    And user modifies value selected in "Start date" field to valid value
    Then user should be able to view revised values in "<Fields>" field are autocalcualted as per revised value of "Start date" field
    And user should be able to save details successfully
    Examples:
      | Var_Stage            | Fields         | Opening_Link                           |
      | Reconsideration      | Insurance Term | Loan Information option                |
      | Post Approval        | Insurance Term | VAP details tab under Loan Details tab |
      | Disbursal Initiation | Insurance Term | VAP details tab                        |

  #FeatureID-ACAUTOCAS-207
  Scenario Outline: Modify Maturity date field for vap type "Life Insurance" at "<Var_Stage>" with values autopopulated in "<Fields>" field
    And user open an application at "<Var_Stage>"
    And user open VAP details from "<Opening_Link>"
    And user has already added vap product of vap type "Life Insurance"
    When user opens existing vap from the vap grid using edit option
    And user modifies value selected in "Maturity Date" field to valid value
    Then user should be able to view revised values in "<Fields>" field are autocalcualted as per revised value of "Maturity Date" field
    And user should be able to save details successfully
    Examples:
      | Var_Stage        | Fields         | Opening_Link                           |
      | Lead Details     | Insurance Term | VAP details tab under Loan Details tab |
      | Login Acceptance | Insurance Term | VAP details tab under Loan Details tab |
      | DDE              | Insurance Term | VAP details tab under Loan Details tab |
      | Recommendation   | Insurance Term | Loan Information option                |
      | Credit Approval  | Insurance Term | 3 dots option                          |

 #FeatureID-ACAUTOCAS-207
  Scenario Outline: Modify Maturity date field for vap type "Life Insurance" at "<Var_Stage>" post "Credit Approval" stage with values autopopulated in "<Fields>" field
    And user has selected "Enable at Post Sanction" flag in "VAP Parameter Policy" master for vap type "Life Insurance"
    And user open an application at "<Var_Stage>"
    And user open VAP details from "<Opening_Link>"
    And user has already added vap product of vap type "Life Insurance"
    When user opens existing vap from the vap grid using edit option
    And user modifies value selected in "Maturity Date" field to valid value
    Then user should be able to view revised values in "<Fields>" field are autocalcualted as per revised value of "Maturity Date" field
    And user should be able to save details successfully
    Examples:
      | Var_Stage            | Fields         | Opening_Link                           |
      | Reconsideration      | Insurance Term | Loan Information option                |
      | Post Approval        | Insurance Term | VAP details tab under Loan Details tab |
      | Disbursal Initiation | Insurance Term | VAP details tab                        |

  #FeatureID-ACAUTOCAS-207
  Scenario Outline: Modify data of mandatory fields on VAP details page for vap type "Life Insurance" on next stage after performing move to next stage at "<Var_Stage>"
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
    And user modifies the data of mandatory fields as per workbook "VAPDetailsValidate.xlsx" under sheet "vap_details_insurance" for row number "<ModifyVAPRowNumber>"
    Then user should be able to save details successfully
    Examples:
      | Var_Stage        | VAPRowNumber | NomineeRowNumber | ModifyVAPRowNumber | Opening_Link                           |
      | Lead Details     | 87           | 0                | 97                 | VAP details tab under Loan Details tab |
      | Login Acceptance | 87           | 0                | 97                 | VAP details tab under Loan Details tab |
      | DDE              | 87           | 0                | 97                 | VAP details tab under Loan Details tab |
      | Recommendation   | 87           | 0                | 97                 | Loan Information option                |
      | Credit Approval  | 87           | 0                | 97                 | 3 dots option                          |

  #FeatureID-ACAUTOCAS-207
  Scenario Outline: Modify data of mandatory fields on VAP details page for vap type "Life Insurance" on next stage after performing move to next stage at "<Var_Stage>" post "Credit Approval" stage
    And user has selected "Enable at Post Sanction" flag in "VAP Parameter Policy" master for vap type "Life Insurance"
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
    And user modifies the data of mandatory fields as per workbook "VAPDetailsValidate.xlsx" under sheet "vap_details_insurance" for row number "<ModifyVAPRowNumber>"
    Then user should be able to save details successfully
    Examples:
      | Var_Stage            | VAPRowNumber | NomineeRowNumber | ModifyVAPRowNumber | Opening_Link                           |
      | Reconsideration      | 87           | 0                | 97                 | Loan Information option                |
      | Post Approval        | 87           | 0                | 97                 | VAP details tab under Loan Details tab |
      | Disbursal Initiation | 87           | 0                | 97                 | VAP details tab                        |

  #FeatureID-ACAUTOCAS-207
  Scenario Outline: Modify data of all fields on VAP details page for vap type "Life Insurance" on next stage after performing move to next stage at "<Var_Stage>"
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
    And user modifies the data of all fields as per workbook "VAPDetailsValidate.xlsx" under sheet "vap_details_insurance" for row number "<ModifyVAPRowNumber>"
    Then user should be able to save details successfully
    Examples:
      | Var_Stage        | VAPRowNumber | NomineeRowNumber | ModifyVAPRowNumber | Opening_Link                           |
      | Lead Details     | 88           | 0                | 98                 | VAP details tab under Loan Details tab |
      | Login Acceptance | 88           | 0                | 98                 | VAP details tab under Loan Details tab |
      | DDE              | 88           | 0                | 98                 | VAP details tab under Loan Details tab |
      | Recommendation   | 88           | 0                | 98                 | Loan Information option                |
      | Credit Approval  | 88           | 0                | 98                 | 3 dots option                          |

  #FeatureID-ACAUTOCAS-207
  Scenario Outline: Modify data of all fields on VAP details page for vap type "Life Insurance" on next stage after performing move to next stage at "<Var_Stage>" post "Credit Approval" stage
    And user has selected "Enable at Post Sanction" flag in "VAP Parameter Policy" master for vap type "Life Insurance"
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
    And user modifies the data of all fields as per workbook "VAPDetailsValidate.xlsx" under sheet "vap_details_insurance" for row number "<ModifyVAPRowNumber>"
    Then user should be able to save details successfully
    Examples:
      | Var_Stage            | VAPRowNumber | NomineeRowNumber | ModifyVAPRowNumber | Opening_Link                           |
      | Reconsideration      | 88           | 0                | 98                 | Loan Information option                |
      | Post Approval        | 88           | 0                | 98                 | VAP details tab under Loan Details tab |
      | Disbursal Initiation | 88           | 0                | 98                 | VAP details tab                        |

 ################################################################################################################
  #FeatureID-ACAUTOCAS-207
  Scenario Outline: Modify data on VAP details page for vap type "Payment Protection" at "<Var_Stage>" with values autopopulated in "<Fields>" field
    And user open an application at "<Var_Stage>"
    And user open VAP details from "<Opening_Link>"
    And user has already added vap product of vap type "Payment Protection"
    When user opens vap product of vap type "Payment Protection" using edit option
    And user modifies value selected in "VAP Treatment" field to valid value
    Then user should be able to view revised values in "<Fields>" field are autopopulated as per value maintained in "VAP Policy" master
    And user should be able to save details successfully
    Examples:
      | Var_Stage        | Fields              | Opening_Link                           |
      | Lead Details     | VAP Policy Amount   | VAP details tab under Loan Details tab |
      | Lead Details     | VAP Amount          | VAP details tab under Loan Details tab |
      | Lead Details     | Differential Amount | VAP details tab under Loan Details tab |
      | Login Acceptance | VAP Policy Amount   | VAP details tab under Loan Details tab |
      | Login Acceptance | VAP Amount          | VAP details tab under Loan Details tab |
      | Login Acceptance | Differential Amount | VAP details tab under Loan Details tab |
      | DDE              | VAP Policy Amount   | VAP details tab under Loan Details tab |
      | DDE              | VAP Amount          | VAP details tab under Loan Details tab |
      | DDE              | Differential Amount | VAP details tab under Loan Details tab |
      | Recommendation   | VAP Policy Amount   | Loan Information option                |
      | Recommendation   | VAP Amount          | Loan Information option                |
      | Recommendation   | Differential Amount | Loan Information option                |
      | Credit Approval  | VAP Policy Amount   | 3 dots option                          |
      | Credit Approval  | VAP Amount          | 3 dots option                          |
      | Credit Approval  | Differential Amount | 3 dots option                          |

  #FeatureID-ACAUTOCAS-207
  Scenario Outline: Modify data on VAP details page for vap type "Payment Protection" at "<Var_Stage>" post "Credit Approval" stage with values autopopulated in "<Fields>" field
    And user has selected "Enable at Post Sanction" flag in "VAP Parameter Policy" master for vap type "Payment Protection"
    And user open an application at "<Var_Stage>"
    And user open VAP details from "<Opening_Link>"
    And user has already added vap product of vap type "Payment Protection"
    When user opens vap product of vap type "Payment Protection" using edit option
    And user modifies value selected in "VAP Treatment" field to valid value
    Then user should be able to view revised values in "<Fields>" field are autopopulated as per value maintained in "VAP Policy" master
    And user should be able to save details successfully
    Examples:
      | Var_Stage            | Fields              | Opening_Link                           |
      | Reconsideration      | VAP Policy Amount   | Loan Information option                |
      | Reconsideration      | VAP Amount          | Loan Information option                |
      | Reconsideration      | Differential Amount | Loan Information option                |
      | Post Approval        | VAP Policy Amount   | VAP details tab under Loan Details tab |
      | Post Approval        | VAP Amount          | VAP details tab under Loan Details tab |
      | Post Approval        | Differential Amount | VAP details tab under Loan Details tab |
      | Disbursal Initiation | VAP Policy Amount   | VAP details tab                        |
      | Disbursal Initiation | VAP Amount          | VAP details tab                        |
      | Disbursal Initiation | Differential Amount | VAP details tab                        |

  #FeatureID-ACAUTOCAS-207
  Scenario Outline: Modify Start date field for vap type "Payment Protection" at "<Var_Stage>" with values autopopulated in "<Fields>" field
    And user open an application at "<Var_Stage>"
    And user open VAP details from "<Opening_Link>"
    And user has already added vap product of vap type "Payment Protection"
    When user opens existing vap from the vap grid using edit option
    And user modifies value selected in "Start date" field to valid value
    Then user should be able to view revised values in "<Fields>" field are autocalcualted as per revised value of "Start date" field
    And user should be able to save details successfully
    Examples:
      | Var_Stage        | Fields         | Opening_Link                           |
      | Lead Details     | Insurance Term | VAP details tab under Loan Details tab |
      | Login Acceptance | Insurance Term | VAP details tab under Loan Details tab |
      | DDE              | Insurance Term | VAP details tab under Loan Details tab |
      | Recommendation   | Insurance Term | Loan Information option                |
      | Credit Approval  | Insurance Term | 3 dots option                          |

  #FeatureID-ACAUTOCAS-207
  Scenario Outline: Modify Start date field for vap type "Payment Protection" at "<Var_Stage>" post "Credit Approval" stage with values autopopulated in "<Fields>" field
    And user has selected "Enable at Post Sanction" flag in "VAP Parameter Policy" master for vap type "Payment Protection"
    And user open an application at "<Var_Stage>"
    And user open VAP details from "<Opening_Link>"
    And user has already added vap product of vap type "Payment Protection"
    When user opens existing vap from the vap grid using edit option
    And user modifies value selected in "Start date" field to valid value
    Then user should be able to view revised values in "<Fields>" field are autocalcualted as per revised value of "Start date" field
    And user should be able to save details successfully
    Examples:
      | Var_Stage            | Fields         | Opening_Link                           |
      | Reconsideration      | Insurance Term | Loan Information option                |
      | Post Approval        | Insurance Term | VAP details tab under Loan Details tab |
      | Disbursal Initiation | Insurance Term | VAP details tab                        |

  #FeatureID-ACAUTOCAS-207
  Scenario Outline: Modify Maturity date field for vap type "Payment Protection" at "<Var_Stage>" with values autopopulated in "<Fields>" field
    And user open an application at "<Var_Stage>"
    And user open VAP details from "<Opening_Link>"
    And user has already added vap product of vap type "Payment Protection"
    When user opens existing vap from the vap grid using edit option
    And user modifies value selected in "Maturity Date" field to valid value
    Then user should be able to view revised values in "<Fields>" field are autocalcualted as per revised value of "Maturity Date" field
    And user should be able to save details successfully
    Examples:
      | Var_Stage        | Fields         | Opening_Link                           |
      | Lead Details     | Insurance Term | VAP details tab under Loan Details tab |
      | Login Acceptance | Insurance Term | VAP details tab under Loan Details tab |
      | DDE              | Insurance Term | VAP details tab under Loan Details tab |
      | Recommendation   | Insurance Term | Loan Information option                |
      | Credit Approval  | Insurance Term | 3 dots option                          |

 #FeatureID-ACAUTOCAS-207
  Scenario Outline: Modify Maturity date field for vap type "Payment Protection" at "<Var_Stage>" post "Credit Approval" stage with values autopopulated in "<Fields>" field
    And user has selected "Enable at Post Sanction" flag in "VAP Parameter Policy" master for vap type "Payment Protection"
    And user open an application at "<Var_Stage>"
    And user open VAP details from "<Opening_Link>"
    And user has already added vap product of vap type "Payment Protection"
    When user opens existing vap from the vap grid using edit option
    And user modifies value selected in "Maturity Date" field to valid value
    Then user should be able to view revised values in "<Fields>" field are autocalcualted as per revised value of "Maturity Date" field
    And user should be able to save details successfully
    Examples:
      | Var_Stage            | Fields         | Opening_Link                           |
      | Reconsideration      | Insurance Term | Loan Information option                |
      | Post Approval        | Insurance Term | VAP details tab under Loan Details tab |
      | Disbursal Initiation | Insurance Term | VAP details tab                        |

  #FeatureID-ACAUTOCAS-207
  Scenario Outline: Modify data of mandatory fields on VAP details page for vap type "Payment Protection" on next stage after performing move to next stage at "<Var_Stage>"
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
    And user modifies the data of mandatory fields as per workbook "VAPDetailsValidate.xlsx" under sheet "vap_details_insurance" for row number "<ModifyVAPRowNumber>"
    Then user should be able to save details successfully
    Examples:
      | Var_Stage        | VAPRowNumber | NomineeRowNumber | ModifyVAPRowNumber | Opening_Link                           |
      | Lead Details     | 89           | 0                | 99                 | VAP details tab under Loan Details tab |
      | Login Acceptance | 89           | 0                | 99                 | VAP details tab under Loan Details tab |
      | DDE              | 89           | 0                | 99                 | VAP details tab under Loan Details tab |
      | Recommendation   | 89           | 0                | 99                 | Loan Information option                |
      | Credit Approval  | 89           | 0                | 99                 | 3 dots option                          |

  #FeatureID-ACAUTOCAS-207
  Scenario Outline: Modify data of mandatory fields on VAP details page for vap type "Payment Protection" on next stage after performing move to next stage at "<Var_Stage>" post "Credit Approval" stage
    And user has selected "Enable at Post Sanction" flag in "VAP Parameter Policy" master for vap type "Payment Protection"
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
    And user modifies the data of mandatory fields as per workbook "VAPDetailsValidate.xlsx" under sheet "vap_details_insurance" for row number "<ModifyVAPRowNumber>"
    Then user should be able to save details successfully
    Examples:
      | Var_Stage            | VAPRowNumber | NomineeRowNumber | ModifyVAPRowNumber | Opening_Link                           |
      | Reconsideration      | 89           | 0                | 99                 | Loan Information option                |
      | Post Approval        | 89           | 0                | 99                 | VAP details tab under Loan Details tab |
      | Disbursal Initiation | 89           | 0                | 99                 | VAP details tab                        |

  #FeatureID-ACAUTOCAS-207
  Scenario Outline: Modify data of all fields on VAP details page for vap type "Payment Protection" on next stage after performing move to next stage at "<Var_Stage>"
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
    And user modifies the data of all fields as per workbook "VAPDetailsValidate.xlsx" under sheet "vap_details_insurance" for row number "<ModifyVAPRowNumber>"
    Then user should be able to save details successfully
    Examples:
      | Var_Stage        | VAPRowNumber | NomineeRowNumber | ModifyVAPRowNumber | Opening_Link                           |
      | Lead Details     | 90           | 0                | 100                | VAP details tab under Loan Details tab |
      | Login Acceptance | 90           | 0                | 100                | VAP details tab under Loan Details tab |
      | DDE              | 90           | 0                | 100                | VAP details tab under Loan Details tab |
      | Recommendation   | 90           | 0                | 100                | Loan Information option                |
      | Credit Approval  | 90           | 0                | 100                | 3 dots option                          |

  #FeatureID-ACAUTOCAS-207
  Scenario Outline: Modify data of all fields on VAP details page for vap type "Payment Protection" on next stage after performing move to next stage at "<Var_Stage>" post "Credit Approval" stage
    And user has selected "Enable at Post Sanction" flag in "VAP Parameter Policy" master for vap type "Payment Protection"
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
    And user modifies the data of all fields as per workbook "VAPDetailsValidate.xlsx" under sheet "vap_details_insurance" for row number "<ModifyVAPRowNumber>"
    Then user should be able to save details successfully
    Examples:
      | Var_Stage            | VAPRowNumber | NomineeRowNumber | ModifyVAPRowNumber | Opening_Link                           |
      | Reconsideration      | 90           | 0                | 100                | Loan Information option                |
      | Post Approval        | 90           | 0                | 100                | VAP details tab under Loan Details tab |
      | Disbursal Initiation | 90           | 0                | 100                | VAP details tab                        |

 ################################################################################################################

 #FeatureID-ACAUTOCAS-207
  Scenario Outline: Modify data on VAP details page for vap type "Credit Protection" at "<Var_Stage>" with values autopopulated in "<Fields>" field
    And user open an application at "<Var_Stage>"
    And user open VAP details from "<Opening_Link>"
    And user has already added vap product of vap type "Credit Protection"
    When user opens vap product of vap type "Credit Protection" using edit option
    And user modifies value selected in "VAP Treatment" field to valid value
    Then user should be able to view revised values in "<Fields>" field are autopopulated as per value maintained in "VAP Policy" master
    And user should be able to save details successfully
    Examples:
      | Var_Stage        | Fields              | Opening_Link                           |
      | Lead Details     | VAP Policy Amount   | VAP details tab under Loan Details tab |
      | Lead Details     | VAP Amount          | VAP details tab under Loan Details tab |
      | Lead Details     | Differential Amount | VAP details tab under Loan Details tab |
      | Login Acceptance | VAP Policy Amount   | VAP details tab under Loan Details tab |
      | Login Acceptance | VAP Amount          | VAP details tab under Loan Details tab |
      | Login Acceptance | Differential Amount | VAP details tab under Loan Details tab |
      | DDE              | VAP Policy Amount   | VAP details tab under Loan Details tab |
      | DDE              | VAP Amount          | VAP details tab under Loan Details tab |
      | DDE              | Differential Amount | VAP details tab under Loan Details tab |
      | Recommendation   | VAP Policy Amount   | Loan Information option                |
      | Recommendation   | VAP Amount          | Loan Information option                |
      | Recommendation   | Differential Amount | Loan Information option                |
      | Credit Approval  | VAP Policy Amount   | 3 dots option                          |
      | Credit Approval  | VAP Amount          | 3 dots option                          |
      | Credit Approval  | Differential Amount | 3 dots option                          |

  #FeatureID-ACAUTOCAS-207
  Scenario Outline: Modify data on VAP details page for vap type "Credit Protection" at "<Var_Stage>" post "Credit Approval" stage with values autopopulated in "<Fields>" field
    And user has selected "Enable at Post Sanction" flag in "VAP Parameter Policy" master for vap type "Credit Protection"
    And user open an application at "<Var_Stage>"
    And user open VAP details from "<Opening_Link>"
    And user has already added vap product of vap type "Credit Protection"
    When user opens vap product of vap type "Credit Protection" using edit option
    And user modifies value selected in "VAP Treatment" field to valid value
    Then user should be able to view revised values in "<Fields>" field are autopopulated as per value maintained in "VAP Policy" master
    And user should be able to save details successfully
    Examples:
      | Var_Stage            | Fields              | Opening_Link                           |
      | Reconsideration      | VAP Policy Amount   | Loan Information option                |
      | Reconsideration      | VAP Amount          | Loan Information option                |
      | Reconsideration      | Differential Amount | Loan Information option                |
      | Post Approval        | VAP Policy Amount   | VAP details tab under Loan Details tab |
      | Post Approval        | VAP Amount          | VAP details tab under Loan Details tab |
      | Post Approval        | Differential Amount | VAP details tab under Loan Details tab |
      | Disbursal Initiation | VAP Policy Amount   | VAP details tab                        |
      | Disbursal Initiation | VAP Amount          | VAP details tab                        |
      | Disbursal Initiation | Differential Amount | VAP details tab                        |

  #FeatureID-ACAUTOCAS-207
  Scenario Outline: Modify Start date field for vap type "Credit Protection" at "<Var_Stage>" with values autopopulated in "<Fields>" field
    And user open an application at "<Var_Stage>"
    And user open VAP details from "<Opening_Link>"
    And user has already added vap product of vap type "Credit Protection"
    When user opens existing vap from the vap grid using edit option
    And user modifies value selected in "Start date" field to valid value
    Then user should be able to view revised values in "<Fields>" field are autocalcualted as per revised value of "Start date" field
    And user should be able to save details successfully
    Examples:
      | Var_Stage        | Fields         | Opening_Link                           |
      | Lead Details     | Insurance Term | VAP details tab under Loan Details tab |
      | Login Acceptance | Insurance Term | VAP details tab under Loan Details tab |
      | DDE              | Insurance Term | VAP details tab under Loan Details tab |
      | Recommendation   | Insurance Term | Loan Information option                |
      | Credit Approval  | Insurance Term | 3 dots option                          |

  #FeatureID-ACAUTOCAS-207
  Scenario Outline: Modify Start date field for vap type "Credit Protection" at "<Var_Stage>" post "Credit Approval" stage with values autopopulated in "<Fields>" field
    And user has selected "Enable at Post Sanction" flag in "VAP Parameter Policy" master for vap type "Credit Protection"
    And user open an application at "<Var_Stage>"
    And user open VAP details from "<Opening_Link>"
    And user has already added vap product of vap type "Credit Protection"
    When user opens existing vap from the vap grid using edit option
    And user modifies value selected in "Start date" field to valid value
    Then user should be able to view revised values in "<Fields>" field are autocalcualted as per revised value of "Start date" field
    And user should be able to save details successfully
    Examples:
      | Var_Stage            | Fields         | Opening_Link                           |
      | Reconsideration      | Insurance Term | Loan Information option                |
      | Post Approval        | Insurance Term | VAP details tab under Loan Details tab |
      | Disbursal Initiation | Insurance Term | VAP details tab                        |

  #FeatureID-ACAUTOCAS-207
  Scenario Outline: Modify Maturity date field for vap type "Credit Protection" at "<Var_Stage>" with values autopopulated in "<Fields>" field
    And user open an application at "<Var_Stage>"
    And user open VAP details from "<Opening_Link>"
    And user has already added vap product of vap type "Credit Protection"
    When user opens existing vap from the vap grid using edit option
    And user modifies value selected in "Maturity Date" field to valid value
    Then user should be able to view revised values in "<Fields>" field are autocalcualted as per revised value of "Maturity Date" field
    And user should be able to save details successfully
    Examples:
      | Var_Stage        | Fields         | Opening_Link                           |
      | Lead Details     | Insurance Term | VAP details tab under Loan Details tab |
      | Login Acceptance | Insurance Term | VAP details tab under Loan Details tab |
      | DDE              | Insurance Term | VAP details tab under Loan Details tab |
      | Recommendation   | Insurance Term | Loan Information option                |
      | Credit Approval  | Insurance Term | 3 dots option                          |

 #FeatureID-ACAUTOCAS-207
  Scenario Outline: Modify Maturity date field for vap type "Credit Protection" at "<Var_Stage>" post "Credit Approval" stage with values autopopulated in "<Fields>" field
    And user has selected "Enable at Post Sanction" flag in "VAP Parameter Policy" master for vap type "Credit Protection"
    And user open an application at "<Var_Stage>"
    And user open VAP details from "<Opening_Link>"
    And user has already added vap product of vap type "Credit Protection"
    When user opens existing vap from the vap grid using edit option
    And user modifies value selected in "Maturity Date" field to valid value
    Then user should be able to view revised values in "<Fields>" field are autocalcualted as per revised value of "Maturity Date" field
    And user should be able to save details successfully
    Examples:
      | Var_Stage            | Fields         | Opening_Link                           |
      | Reconsideration      | Insurance Term | Loan Information option                |
      | Post Approval        | Insurance Term | VAP details tab under Loan Details tab |
      | Disbursal Initiation | Insurance Term | VAP details tab                        |

  #FeatureID-ACAUTOCAS-207
  Scenario Outline: Modify data of mandatory fields on VAP details page for vap type "Credit Protection" on next stage after performing move to next stage at "<Var_Stage>"
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
    And user modifies the data of mandatory fields as per workbook "VAPDetailsValidate.xlsx" under sheet "vap_details_insurance" for row number "<ModifyVAPRowNumber>"
    Then user should be able to save details successfully
    Examples:
      | Var_Stage        | VAPRowNumber | NomineeRowNumber | ModifyVAPRowNumber | Opening_Link                           |
      | Lead Details     | 91           | 0                | 101                 | VAP details tab under Loan Details tab |
      | Login Acceptance | 91           | 0                | 101                 | VAP details tab under Loan Details tab |
      | DDE              | 91           | 0                | 101                 | VAP details tab under Loan Details tab |
      | Recommendation   | 91           | 0                | 101                 | Loan Information option                |
      | Credit Approval  | 91           | 0                | 101                 | 3 dots option                          |

  #FeatureID-ACAUTOCAS-207
  Scenario Outline: Modify data of mandatory fields on VAP details page for vap type "Credit Protection" on next stage after performing move to next stage at "<Var_Stage>" post "Credit Approval" stage
    And user has selected "Enable at Post Sanction" flag in "VAP Parameter Policy" master for vap type "Credit Protection"
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
    And user modifies the data of mandatory fields as per workbook "VAPDetailsValidate.xlsx" under sheet "vap_details_insurance" for row number "<ModifyVAPRowNumber>"
    Then user should be able to save details successfully
    Examples:
      | Var_Stage            | VAPRowNumber | NomineeRowNumber | ModifyVAPRowNumber | Opening_Link                           |
      | Reconsideration      | 91           | 0                | 101                 | Loan Information option                |
      | Post Approval        | 91           | 0                | 101                 | VAP details tab under Loan Details tab |
      | Disbursal Initiation | 91           | 0                | 101                 | VAP details tab                        |

  #FeatureID-ACAUTOCAS-207
  Scenario Outline: Modify data of all fields on VAP details page for vap type "Credit Protection" on next stage after performing move to next stage at "<Var_Stage>"
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
    And user modifies the data of all fields as per workbook "VAPDetailsValidate.xlsx" under sheet "vap_details_insurance" for row number "<ModifyVAPRowNumber>"
    Then user should be able to save details successfully
    Examples:
      | Var_Stage        | VAPRowNumber | NomineeRowNumber | ModifyVAPRowNumber | Opening_Link                           |
      | Lead Details     | 92           | 0                | 102                | VAP details tab under Loan Details tab |
      | Login Acceptance | 92           | 0                | 102                | VAP details tab under Loan Details tab |
      | DDE              | 92           | 0                | 102                | VAP details tab under Loan Details tab |
      | Recommendation   | 92           | 0                | 102                | Loan Information option                |
      | Credit Approval  | 92           | 0                | 102                | 3 dots option                          |

  #FeatureID-ACAUTOCAS-207
  Scenario Outline: Modify data of all fields on VAP details page for vap type "Credit Protection" on next stage after performing move to next stage at "<Var_Stage>" post "Credit Approval" stage
    And user has selected "Enable at Post Sanction" flag in "VAP Parameter Policy" master for vap type "Credit Protection"
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
    And user modifies the data of all fields as per workbook "VAPDetailsValidate.xlsx" under sheet "vap_details_insurance" for row number "<ModifyVAPRowNumber>"
    Then user should be able to save details successfully
    Examples:
      | Var_Stage            | VAPRowNumber | NomineeRowNumber | ModifyVAPRowNumber | Opening_Link                           |
      | Reconsideration      | 92           | 0                | 102                | Loan Information option                |
      | Post Approval        | 92           | 0                | 102                | VAP details tab under Loan Details tab |
      | Disbursal Initiation | 92           | 0                | 102                | VAP details tab                        |
