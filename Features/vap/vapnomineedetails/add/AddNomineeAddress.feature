@Epic-VAP
@AuthoredBy-sajja.ravikumar
#OriginalAuthor-rajni.gola
@ReviewedBy-
@ImplementedBy-
@TechReviewedBy-

@NotImplemented

Feature: Add Nominee Address

  Background:
    Given User is logged in CAS with "<SourceDataFile>" under "<SheetName>" and "<RowNumber>"
    And user has configured VAP policy for product mapped in the application in Product master
    And user has configured VAP policy for scheme mapped in the application in Scheme master
    And user has configured VAP Parameter Policy, VAP Amount Computation Policy, VAP Payout Computation Policy, VAP Policy masters under CAS - Common Masters

  #FeatureID-ACAUTOCAS-209
  Scenario Outline: Add Nominee Address of address type "Residential Address" for added nominee details for VAP type "Asset Insurance" at "<Var_Stage>"
    And user open an application at "<Var_Stage>" Stage
    And user open VAP details from "<Opening_Link>"
    And user selects vap product of vap type "Asset Insurance"
    When user goes to nominee section to add nominee details
    And user enters data from workbook "VAPDetailsValidate.xlsx" under sheet "nominee_details" for row number "<NomineeRowNumber>"
    And user enters data from workbook "VAPDetailsValidate.xlsx" under sheet "v_nominee_address" for row number "<NomineeAddressRowNumber>"
    And user clicks on "Done button"
    Then user should be able to add nominee address
    Examples:
      | Var_Stage            | NomineeRowNumber | NomineeAddressRowNumber | Opening_Link                           |
      | DDE                  | 1                | 19                      | VAP details tab under Loan Details tab |
      | Recommendation       | 1                | 19                      | Loan Information option                |
      | Credit Approval      | 1                | 19                      | 3 dots option                          |
      | Reconsideration      | 1                | 19                      | Loan Information option                |
      | Post Approval        | 1                | 19                      | VAP details tab under Loan Details tab |
      | Disbursal Initiation | 1                | 19                      | VAP details tab                        |

  #FeatureID-ACAUTOCAS-209
  Scenario Outline: Add Nominee Address of address type "Permanent Address" for added nominee details for VAP type "Asset Insurance" at "<Var_Stage>"
    And user open an application at "<Var_Stage>" Stage
    And user open VAP details from "<Opening_Link>"
    And user selects vap product of vap type "Asset Insurance"
    When user goes to nominee section to add nominee details
    And user enters data from workbook "VAPDetailsValidate.xlsx" under sheet "nominee_details" for row number "<NomineeRowNumber>"
    And user enters data from workbook "VAPDetailsValidate.xlsx" under sheet "v_nominee_address" for row number "<NomineeAddressRowNumber>"
    And user clicks on "Done button"
    Then user should be able to add nominee address
    Examples:
      | Var_Stage            | NomineeRowNumber | NomineeAddressRowNumber | Opening_Link                           |
      | DDE                  | 1                | 20                      | VAP details tab under Loan Details tab |
      | Recommendation       | 1                | 20                      | Loan Information option                |
      | Credit Approval      | 1                | 20                      | 3 dots option                          |
      | Reconsideration      | 1                | 20                      | Loan Information option                |
      | Post Approval        | 1                | 20                      | VAP details tab under Loan Details tab |
      | Disbursal Initiation | 1                | 20                      | VAP details tab                        |

  #FeatureID-ACAUTOCAS-209
  Scenario Outline: Add Nominee Address of address type "Office-Business Address" for added nominee details for VAP type "Asset Insurance" at "<Var_Stage>"
    And user open an application at "<Var_Stage>" Stage
    And user open VAP details from "<Opening_Link>"
    And user selects vap product of vap type "Asset Insurance"
    When user goes to nominee section to add nominee details
    And user enters data from workbook "VAPDetailsValidate.xlsx" under sheet "nominee_details" for row number "<NomineeRowNumber>"
    And user enters data from workbook "VAPDetailsValidate.xlsx" under sheet "v_nominee_address" for row number "<NomineeAddressRowNumber>"
    And user clicks on "Done button"
    Then user should be able to add nominee address
    Examples:
      | Var_Stage            | NomineeRowNumber | NomineeAddressRowNumber | Opening_Link                           |
      | DDE                  | 1                | 21                      | VAP details tab under Loan Details tab |
      | Recommendation       | 1                | 21                      | Loan Information option                |
      | Credit Approval      | 1                | 21                      | 3 dots option                          |
      | Reconsideration      | 1                | 21                      | Loan Information option                |
      | Post Approval        | 1                | 21                      | VAP details tab under Loan Details tab |
      | Disbursal Initiation | 1                | 21                      | VAP details tab                        |

  #FeatureID-ACAUTOCAS-209
  Scenario Outline: Add Nominee Address of address type "Residential Address" for added nominee details for VAP type "GAP Insurance" at "<Var_Stage>"
    And user open an application at "<Var_Stage>" Stage
    And user open VAP details from "<Opening_Link>"
    And user selects vap product of vap type "GAP Insurance"
    When user goes to nominee section to add nominee details
    And user enters data from workbook "VAPDetailsValidate.xlsx" under sheet "nominee_details" for row number "<NomineeRowNumber>"
    And user enters data from workbook "VAPDetailsValidate.xlsx" under sheet "v_nominee_address" for row number "<NomineeAddressRowNumber>"
    And user clicks on "Done button"
    Then user should be able to add nominee address
    Examples:
      | Var_Stage            | NomineeRowNumber | NomineeAddressRowNumber | Opening_Link                           |
      | DDE                  | 1                | 19                      | VAP details tab under Loan Details tab |
      | Recommendation       | 1                | 19                      | Loan Information option                |
      | Credit Approval      | 1                | 19                      | 3 dots option                          |
      | Reconsideration      | 1                | 19                      | Loan Information option                |
      | Post Approval        | 1                | 19                      | VAP details tab under Loan Details tab |
      | Disbursal Initiation | 1                | 19                      | VAP details tab                        |

  #FeatureID-ACAUTOCAS-209
  Scenario Outline: Add Nominee Address of address type "Permanent Address" for added nominee details for VAP type "GAP Insurance" at "<Var_Stage>"
    And user open an application at "<Var_Stage>" Stage
    And user open VAP details from "<Opening_Link>"
    And user selects vap product of vap type "GAP Insurance"
    When user goes to nominee section to add nominee details
    And user enters data from workbook "VAPDetailsValidate.xlsx" under sheet "nominee_details" for row number "<NomineeRowNumber>"
    And user enters data from workbook "VAPDetailsValidate.xlsx" under sheet "v_nominee_address" for row number "<NomineeAddressRowNumber>"
    And user clicks on "Done button"
    Then user should be able to add nominee address
    Examples:
      | Var_Stage            | NomineeRowNumber | NomineeAddressRowNumber | Opening_Link                           |
      | DDE                  | 1                | 20                      | VAP details tab under Loan Details tab |
      | Recommendation       | 1                | 20                      | Loan Information option                |
      | Credit Approval      | 1                | 20                      | 3 dots option                          |
      | Reconsideration      | 1                | 20                      | Loan Information option                |
      | Post Approval        | 1                | 20                      | VAP details tab under Loan Details tab |
      | Disbursal Initiation | 1                | 20                      | VAP details tab                        |

  #FeatureID-ACAUTOCAS-209
  Scenario Outline: Add Nominee Address of address type "Office-Business Address" for added nominee details for VAP type "GAP Insurance" at "<Var_Stage>"
    And user open an application at "<Var_Stage>" Stage
    And user open VAP details from "<Opening_Link>"
    And user selects vap product of vap type "GAP Insurance"
    When user goes to nominee section to add nominee details
    And user enters data from workbook "VAPDetailsValidate.xlsx" under sheet "nominee_details" for row number "<NomineeRowNumber>"
    And user enters data from workbook "VAPDetailsValidate.xlsx" under sheet "v_nominee_address" for row number "<NomineeAddressRowNumber>"
    And user clicks on "Done button"
    Then user should be able to add nominee address
    Examples:
      | Var_Stage            | NomineeRowNumber | NomineeAddressRowNumber | Opening_Link                           |
      | DDE                  | 1                | 21                      | VAP details tab under Loan Details tab |
      | Recommendation       | 1                | 21                      | Loan Information option                |
      | Credit Approval      | 1                | 21                      | 3 dots option                          |
      | Reconsideration      | 1                | 21                      | Loan Information option                |
      | Post Approval        | 1                | 21                      | VAP details tab under Loan Details tab |
      | Disbursal Initiation | 1                | 21                      | VAP details tab                        |

  #FeatureID-ACAUTOCAS-209
  Scenario Outline: Add Nominee Address of address type "Residential Address" for added nominee details for VAP type "Life Insurance" at "<Var_Stage>"
    And user open an application at "<Var_Stage>" Stage
    And user open VAP details from "<Opening_Link>"
    And user selects vap product of vap type "Life Insurance"
    When user goes to nominee section to add nominee details
    And user enters data from workbook "VAPDetailsValidate.xlsx" under sheet "nominee_details" for row number "<NomineeRowNumber>"
    And user enters data from workbook "VAPDetailsValidate.xlsx" under sheet "v_nominee_address" for row number "<NomineeAddressRowNumber>"
    And user clicks on "Done button"
    Then user should be able to add nominee address
    Examples:
      | Var_Stage            | NomineeRowNumber | NomineeAddressRowNumber | Opening_Link                           |
      | Lead Details         | 1                | 19                      | VAP details tab under Loan Details tab |
      | Login Acceptance     | 1                | 19                      | VAP details tab under Loan Details tab |
      | DDE                  | 1                | 19                      | VAP details tab under Loan Details tab |
      | Recommendation       | 1                | 19                      | Loan Information option                |
      | Credit Approval      | 1                | 19                      | 3 dots option                          |
      | Reconsideration      | 1                | 19                      | Loan Information option                |
      | Post Approval        | 1                | 19                      | VAP details tab under Loan Details tab |
      | Disbursal Initiation | 1                | 19                      | VAP details tab                        |

  #FeatureID-ACAUTOCAS-209
  Scenario Outline: Add Nominee Address of address type "Permanent Address" for added nominee details for VAP type "Life Insurance" at "<Var_Stage>"
    And user open an application at "<Var_Stage>" Stage
    And user open VAP details from "<Opening_Link>"
    And user selects vap product of vap type "Life Insurance"
    When user goes to nominee section to add nominee details
    And user enters data from workbook "VAPDetailsValidate.xlsx" under sheet "nominee_details" for row number "<NomineeRowNumber>"
    And user enters data from workbook "VAPDetailsValidate.xlsx" under sheet "v_nominee_address" for row number "<NomineeAddressRowNumber>"
    And user clicks on "Done button"
    Then user should be able to add nominee address
    Examples:
      | Var_Stage            | NomineeRowNumber | NomineeAddressRowNumber | Opening_Link                           |
      | Lead Details         | 1                | 20                      | VAP details tab under Loan Details tab |
      | Login Acceptance     | 1                | 20                      | VAP details tab under Loan Details tab |
      | DDE                  | 1                | 20                      | VAP details tab under Loan Details tab |
      | Recommendation       | 1                | 20                      | Loan Information option                |
      | Credit Approval      | 1                | 20                      | 3 dots option                          |
      | Reconsideration      | 1                | 20                      | Loan Information option                |
      | Post Approval        | 1                | 20                      | VAP details tab under Loan Details tab |
      | Disbursal Initiation | 1                | 20                      | VAP details tab                        |

  #FeatureID-ACAUTOCAS-209
  Scenario Outline: Add Nominee Address of address type "Office-Business Address" for added nominee details for VAP type "Life Insurance" at "<Var_Stage>"
    And user open an application at "<Var_Stage>" Stage
    And user open VAP details from "<Opening_Link>"
    And user selects vap product of vap type "Life Insurance"
    When user goes to nominee section to add nominee details
    And user enters data from workbook "VAPDetailsValidate.xlsx" under sheet "nominee_details" for row number "<NomineeRowNumber>"
    And user enters data from workbook "VAPDetailsValidate.xlsx" under sheet "v_nominee_address" for row number "<NomineeAddressRowNumber>"
    And user clicks on "Done button"
    Then user should be able to add nominee address
    Examples:
      | Var_Stage            | NomineeRowNumber | NomineeAddressRowNumber | Opening_Link                           |
      | Lead Details         | 1                | 21                      | VAP details tab under Loan Details tab |
      | Login Acceptance     | 1                | 21                      | VAP details tab under Loan Details tab |
      | DDE                  | 1                | 21                      | VAP details tab under Loan Details tab |
      | Recommendation       | 1                | 21                      | Loan Information option                |
      | Credit Approval      | 1                | 21                      | 3 dots option                          |
      | Reconsideration      | 1                | 21                      | Loan Information option                |
      | Post Approval        | 1                | 21                      | VAP details tab under Loan Details tab |
      | Disbursal Initiation | 1                | 21                      | VAP details tab                        |

  #FeatureID-ACAUTOCAS-209
  Scenario Outline: Add Nominee Address of address type "Residential Address" for added nominee details for VAP type "Payment Protection" at "<Var_Stage>"
    And user open an application at "<Var_Stage>" Stage
    And user open VAP details from "<Opening_Link>"
    And user selects vap product of vap type "Payment Protection"
    When user goes to nominee section to add nominee details
    And user enters data from workbook "VAPDetailsValidate.xlsx" under sheet "nominee_details" for row number "<NomineeRowNumber>"
    And user enters data from workbook "VAPDetailsValidate.xlsx" under sheet "v_nominee_address" for row number "<NomineeAddressRowNumber>"
    And user clicks on "Done button"
    Then user should be able to add nominee address
    Examples:
      | Var_Stage            | NomineeRowNumber | NomineeAddressRowNumber | Opening_Link                           |
      | Lead Details         | 1                | 19                      | VAP details tab under Loan Details tab |
      | Login Acceptance     | 1                | 19                      | VAP details tab under Loan Details tab |
      | DDE                  | 1                | 19                      | VAP details tab under Loan Details tab |
      | Recommendation       | 1                | 19                      | Loan Information option                |
      | Credit Approval      | 1                | 19                      | 3 dots option                          |
      | Reconsideration      | 1                | 19                      | Loan Information option                |
      | Post Approval        | 1                | 19                      | VAP details tab under Loan Details tab |
      | Disbursal Initiation | 1                | 19                      | VAP details tab                        |

  #FeatureID-ACAUTOCAS-209
  Scenario Outline: Add Nominee Address of address type "Permanent Address" for added nominee details for VAP type "Payment Protection" at "<Var_Stage>"
    And user open an application at "<Var_Stage>" Stage
    And user open VAP details from "<Opening_Link>"
    And user selects vap product of vap type "Payment Protection"
    When user goes to nominee section to add nominee details
    And user enters data from workbook "VAPDetailsValidate.xlsx" under sheet "nominee_details" for row number "<NomineeRowNumber>"
    And user enters data from workbook "VAPDetailsValidate.xlsx" under sheet "v_nominee_address" for row number "<NomineeAddressRowNumber>"
    And user clicks on "Done button"
    Then user should be able to add nominee address
    Examples:
      | Var_Stage            | NomineeRowNumber | NomineeAddressRowNumber | Opening_Link                           |
      | Lead Details         | 1                | 20                      | VAP details tab under Loan Details tab |
      | Login Acceptance     | 1                | 20                      | VAP details tab under Loan Details tab |
      | DDE                  | 1                | 20                      | VAP details tab under Loan Details tab |
      | Recommendation       | 1                | 20                      | Loan Information option                |
      | Credit Approval      | 1                | 20                      | 3 dots option                          |
      | Reconsideration      | 1                | 20                      | Loan Information option                |
      | Post Approval        | 1                | 20                      | VAP details tab under Loan Details tab |
      | Disbursal Initiation | 1                | 20                      | VAP details tab                        |

  #FeatureID-ACAUTOCAS-209
  Scenario Outline: Add Nominee Address of address type "Office-Business Address" for added nominee details for VAP type "Payment Protection" at "<Var_Stage>"
    And user open an application at "<Var_Stage>" Stage
    And user open VAP details from "<Opening_Link>"
    And user selects vap product of vap type "Payment Protection"
    When user goes to nominee section to add nominee details
    And user enters data from workbook "VAPDetailsValidate.xlsx" under sheet "nominee_details" for row number "<NomineeRowNumber>"
    And user enters data from workbook "VAPDetailsValidate.xlsx" under sheet "v_nominee_address" for row number "<NomineeAddressRowNumber>"
    And user clicks on "Done button"
    Then user should be able to add nominee address
    Examples:
      | Var_Stage            | NomineeRowNumber | NomineeAddressRowNumber | Opening_Link                           |
      | Lead Details         | 1                | 21                      | VAP details tab under Loan Details tab |
      | Login Acceptance     | 1                | 21                      | VAP details tab under Loan Details tab |
      | DDE                  | 1                | 21                      | VAP details tab under Loan Details tab |
      | Recommendation       | 1                | 21                      | Loan Information option                |
      | Credit Approval      | 1                | 21                      | 3 dots option                          |
      | Reconsideration      | 1                | 21                      | Loan Information option                |
      | Post Approval        | 1                | 21                      | VAP details tab under Loan Details tab |
      | Disbursal Initiation | 1                | 21                      | VAP details tab                        |

  #FeatureID-ACAUTOCAS-209
  Scenario Outline: Add Nominee Address of address type "Residential Address" for added nominee details for VAP type "Credit Protection" at "<Var_Stage>"
    And user open an application at "<Var_Stage>" Stage
    And user open VAP details from "<Opening_Link>"
    And user selects vap product of vap type "Credit Protection"
    When user goes to nominee section to add nominee details
    And user enters data from workbook "VAPDetailsValidate.xlsx" under sheet "nominee_details" for row number "<NomineeRowNumber>"
    And user enters data from workbook "VAPDetailsValidate.xlsx" under sheet "v_nominee_address" for row number "<NomineeAddressRowNumber>"
    And user clicks on "Done button"
    Then user should be able to add nominee address
    Examples:
      | Var_Stage            | NomineeRowNumber | NomineeAddressRowNumber | Opening_Link                           |
      | Lead Details         | 1                | 19                      | VAP details tab under Loan Details tab |
      | Login Acceptance     | 1                | 19                      | VAP details tab under Loan Details tab |
      | DDE                  | 1                | 19                      | VAP details tab under Loan Details tab |
      | Recommendation       | 1                | 19                      | Loan Information option                |
      | Credit Approval      | 1                | 19                      | 3 dots option                          |
      | Reconsideration      | 1                | 19                      | Loan Information option                |
      | Post Approval        | 1                | 19                      | VAP details tab under Loan Details tab |
      | Disbursal Initiation | 1                | 19                      | VAP details tab                        |

  #FeatureID-ACAUTOCAS-209
  Scenario Outline: Add Nominee Address of address type "Permanent Address" for added nominee details for VAP type "Credit Protection" at "<Var_Stage>"
    And user open an application at "<Var_Stage>" Stage
    And user open VAP details from "<Opening_Link>"
    And user selects vap product of vap type "Credit Protection"
    When user goes to nominee section to add nominee details
    And user enters data from workbook "VAPDetailsValidate.xlsx" under sheet "nominee_details" for row number "<NomineeRowNumber>"
    And user enters data from workbook "VAPDetailsValidate.xlsx" under sheet "v_nominee_address" for row number "<NomineeAddressRowNumber>"
    And user clicks on "Done button"
    Then user should be able to add nominee address
    Examples:
      | Var_Stage            | NomineeRowNumber | NomineeAddressRowNumber | Opening_Link                           |
      | Lead Details         | 1                | 20                      | VAP details tab under Loan Details tab |
      | Login Acceptance     | 1                | 20                      | VAP details tab under Loan Details tab |
      | DDE                  | 1                | 20                      | VAP details tab under Loan Details tab |
      | Recommendation       | 1                | 20                      | Loan Information option                |
      | Credit Approval      | 1                | 20                      | 3 dots option                          |
      | Reconsideration      | 1                | 20                      | Loan Information option                |
      | Post Approval        | 1                | 20                      | VAP details tab under Loan Details tab |
      | Disbursal Initiation | 1                | 20                      | VAP details tab                        |

  #FeatureID-ACAUTOCAS-209
  Scenario Outline: Add Nominee Address of address type "Office-Business Address" for added nominee details for VAP type "Credit Protection" at "<Var_Stage>"
    And user open an application at "<Var_Stage>" Stage
    And user open VAP details from "<Opening_Link>"
    And user selects vap product of vap type "Credit Protection"
    When user goes to nominee section to add nominee details
    And user enters data from workbook "VAPDetailsValidate.xlsx" under sheet "nominee_details" for row number "<NomineeRowNumber>"
    And user enters data from workbook "VAPDetailsValidate.xlsx" under sheet "v_nominee_address" for row number "<NomineeAddressRowNumber>"
    And user clicks on "Done button"
    Then user should be able to add nominee address
    Examples:
      | Var_Stage            | NomineeRowNumber | NomineeAddressRowNumber | Opening_Link                           |
      | Lead Details         | 1                | 21                      | VAP details tab under Loan Details tab |
      | Login Acceptance     | 1                | 21                      | VAP details tab under Loan Details tab |
      | DDE                  | 1                | 21                      | VAP details tab under Loan Details tab |
      | Recommendation       | 1                | 21                      | Loan Information option                |
      | Credit Approval      | 1                | 21                      | 3 dots option                          |
      | Reconsideration      | 1                | 21                      | Loan Information option                |
      | Post Approval        | 1                | 21                      | VAP details tab under Loan Details tab |
      | Disbursal Initiation | 1                | 21                      | VAP details tab                        |

  #FeatureID-ACAUTOCAS-209
  Scenario Outline: Validate added Nominee address details for mandatory fields on VAP details page for vap type "Asset Insurance" on application at "<Var_Stage>" for row number "<NomineeAddressRowNumber>"
    And user open an application at "<Var_Stage>"
    And user open VAP details from "<Opening_Link>"
    And user selects vap product of vap type "Asset Insurance"
    And user enters data from workbook "VAPDetailsValidate.xlsx" under sheet "vap_details_insurance" for row number "<VAPRowNumber>"
    And user enters data from workbook "VAPDetailsValidate.xlsx" under sheet "nominee_details" for row number "<NomineeRowNumber>"
    And user enters data from workbook "VAPDetailsValidate.xlsx" under sheet "v_nominee_address" for row number "<NomineeAddressRowNumber>"
    And user saves all details entered
    When user open VAP details page
    And user clicks on vap id of vap type "Asset Insurance" from vap grid
    And user navigates to nominee section
    And user clicks on "Add Address link"
    Then user should be able to view address details as per workbook "VAPDetailsValidate.xlsx" under sheet "v_nominee_address" for row number "<NomineeAddressRowNumber>"
    Examples:
      | Var_Stage            | VAPRowNumber | NomineeRowNumber | NomineeAddressRowNumber | Opening_Link                           |
      | DDE                  | 83           | 1                | 19                      | VAP details tab under Loan Details tab |
      | Recommendation       | 83           | 1                | 19                      | Loan Information option                |
      | Credit Approval      | 83           | 1                | 19                      | 3 dots option                          |
      | Reconsideration      | 83           | 1                | 19                      | Loan Information option                |
      | Post Approval        | 83           | 1                | 19                      | VAP details tab under Loan Details tab |
      | Disbursal Initiation | 83           | 1                | 19                      | VAP details tab                        |
      | DDE                  | 83           | 1                | 20                      | VAP details tab under Loan Details tab |
      | Recommendation       | 83           | 1                | 20                      | Loan Information option                |
      | Credit Approval      | 83           | 1                | 20                      | 3 dots option                          |
      | Reconsideration      | 83           | 1                | 20                      | Loan Information option                |
      | Post Approval        | 83           | 1                | 20                      | VAP details tab under Loan Details tab |
      | Disbursal Initiation | 83           | 1                | 20                      | VAP details tab                        |
      | DDE                  | 83           | 1                | 21                      | VAP details tab under Loan Details tab |
      | Recommendation       | 83           | 1                | 21                      | Loan Information option                |
      | Credit Approval      | 83           | 1                | 21                      | 3 dots option                          |
      | Reconsideration      | 83           | 1                | 21                      | Loan Information option                |
      | Post Approval        | 83           | 1                | 21                      | VAP details tab under Loan Details tab |
      | Disbursal Initiation | 83           | 1                | 21                      | VAP details tab                        |

  #FeatureID-ACAUTOCAS-209
  Scenario Outline: Validate added Nominee address details for mandatory fields on VAP details page for vap type "Gap Insurance" on application at "<Var_Stage>" for row number "<NomineeAddressRowNumber>"
    And user open an application at "<Var_Stage>"
    And user open VAP details from "<Opening_Link>"
    And user selects vap product of vap type "Gap Insurance"
    And user enters data from workbook "VAPDetailsValidate.xlsx" under sheet "vap_details_insurance" for row number "<VAPRowNumber>"
    And user enters data from workbook "VAPDetailsValidate.xlsx" under sheet "nominee_details" for row number "<NomineeRowNumber>"
    And user enters data from workbook "VAPDetailsValidate.xlsx" under sheet "v_nominee_address" for row number "<NomineeAddressRowNumber>"
    And user saves all details entered
    When user open VAP details page
    And user clicks on vap id of vap type "Gap Insurance" from vap grid
    And user navigates to nominee section
    And user clicks on "Add Address link"
    Then user should be able to view address details as per workbook "VAPDetailsValidate.xlsx" under sheet "v_nominee_address" for row number "<NomineeAddressRowNumber>"
    Examples:
      | Var_Stage            | VAPRowNumber | NomineeRowNumber | NomineeAddressRowNumber | Opening_Link                           |
      | DDE                  | 85           | 1                | 19                      | VAP details tab under Loan Details tab |
      | Recommendation       | 85           | 1                | 19                      | Loan Information option                |
      | Credit Approval      | 85           | 1                | 19                      | 3 dots option                          |
      | Reconsideration      | 85           | 1                | 19                      | Loan Information option                |
      | Post Approval        | 85           | 1                | 19                      | VAP details tab under Loan Details tab |
      | Disbursal Initiation | 85           | 1                | 19                      | VAP details tab                        |
      | DDE                  | 85           | 1                | 20                      | VAP details tab under Loan Details tab |
      | Recommendation       | 85           | 1                | 20                      | Loan Information option                |
      | Credit Approval      | 85           | 1                | 20                      | 3 dots option                          |
      | Reconsideration      | 85           | 1                | 20                      | Loan Information option                |
      | Post Approval        | 85           | 1                | 20                      | VAP details tab under Loan Details tab |
      | Disbursal Initiation | 85           | 1                | 20                      | VAP details tab                        |
      | DDE                  | 85           | 1                | 21                      | VAP details tab under Loan Details tab |
      | Recommendation       | 85           | 1                | 21                      | Loan Information option                |
      | Credit Approval      | 85           | 1                | 21                      | 3 dots option                          |
      | Reconsideration      | 85           | 1                | 21                      | Loan Information option                |
      | Post Approval        | 85           | 1                | 21                      | VAP details tab under Loan Details tab |
      | Disbursal Initiation | 85           | 1                | 21                      | VAP details tab                        |

  #FeatureID-ACAUTOCAS-209
  Scenario Outline: Validate added Nominee address details for mandatory fields on VAP details page for vap type "Life Insurance" on application at "<Var_Stage>" for row number "<NomineeAddressRowNumber>"
    And user open an application at "<Var_Stage>"
    And user open VAP details from "<Opening_Link>"
    And user selects vap product of vap type "Life Insurance"
    And user enters data from workbook "VAPDetailsValidate.xlsx" under sheet "vap_details_insurance" for row number "<VAPRowNumber>"
    And user enters data from workbook "VAPDetailsValidate.xlsx" under sheet "nominee_details" for row number "<NomineeRowNumber>"
    And user enters data from workbook "VAPDetailsValidate.xlsx" under sheet "v_nominee_address" for row number "<NomineeAddressRowNumber>"
    And user saves all details entered
    When user open VAP details page
    And user clicks on vap id of vap type "Life Insurance" from vap grid
    And user navigates to nominee section
    And user clicks on "Add Address link"
    Then user should be able to view address details as per workbook "VAPDetailsValidate.xlsx" under sheet "v_nominee_address" for row number "<NomineeAddressRowNumber>"
    Examples:
      | Var_Stage            | VAPRowNumber | NomineeRowNumber | NomineeAddressRowNumber | Opening_Link                           |
      | Lead Details         | 87           | 1                | 19                      | VAP details tab under Loan Details tab |
      | Login Acceptance     | 87           | 1                | 19                      | VAP details tab under Loan Details tab |
      | DDE                  | 87           | 1                | 19                      | VAP details tab under Loan Details tab |
      | Recommendation       | 87           | 1                | 19                      | Loan Information option                |
      | Credit Approval      | 87           | 1                | 19                      | 3 dots option                          |
      | Reconsideration      | 87           | 1                | 19                      | Loan Information option                |
      | Post Approval        | 87           | 1                | 19                      | VAP details tab under Loan Details tab |
      | Disbursal Initiation | 87           | 1                | 19                      | VAP details tab                        |
      | Lead Details         | 87           | 1                | 20                      | VAP details tab under Loan Details tab |
      | Login Acceptance     | 87           | 1                | 20                      | VAP details tab under Loan Details tab |
      | DDE                  | 87           | 1                | 20                      | VAP details tab under Loan Details tab |
      | Recommendation       | 87           | 1                | 20                      | Loan Information option                |
      | Credit Approval      | 87           | 1                | 20                      | 3 dots option                          |
      | Reconsideration      | 87           | 1                | 20                      | Loan Information option                |
      | Post Approval        | 87           | 1                | 20                      | VAP details tab under Loan Details tab |
      | Disbursal Initiation | 87           | 1                | 20                      | VAP details tab                        |
      | Lead Details         | 87           | 1                | 21                      | VAP details tab under Loan Details tab |
      | Login Acceptance     | 87           | 1                | 21                      | VAP details tab under Loan Details tab |
      | DDE                  | 87           | 1                | 21                      | VAP details tab under Loan Details tab |
      | Recommendation       | 87           | 1                | 21                      | Loan Information option                |
      | Credit Approval      | 87           | 1                | 21                      | 3 dots option                          |
      | Reconsideration      | 87           | 1                | 21                      | Loan Information option                |
      | Post Approval        | 87           | 1                | 21                      | VAP details tab under Loan Details tab |
      | Disbursal Initiation | 87           | 1                | 21                      | VAP details tab                        |

  #FeatureID-ACAUTOCAS-209
  Scenario Outline: Validate added Nominee address details for mandatory fields on VAP details page for vap type "Payment Protection" on application at "<Var_Stage>" for row number "<NomineeAddressRowNumber>"
    And user open an application at "<Var_Stage>"
    And user open VAP details from "<Opening_Link>"
    And user selects vap product of vap type "Payment Protection"
    And user enters data from workbook "VAPDetailsValidate.xlsx" under sheet "vap_details_insurance" for row number "<VAPRowNumber>"
    And user enters data from workbook "VAPDetailsValidate.xlsx" under sheet "nominee_details" for row number "<NomineeRowNumber>"
    And user enters data from workbook "VAPDetailsValidate.xlsx" under sheet "v_nominee_address" for row number "<NomineeAddressRowNumber>"
    And user saves all details entered
    When user open VAP details page
    And user clicks on vap id of vap type "Payment Protection" from vap grid
    And user navigates to nominee section
    And user clicks on "Add Address link"
    Then user should be able to view address details as per workbook "VAPDetailsValidate.xlsx" under sheet "v_nominee_address" for row number "<NomineeAddressRowNumber>"
    Examples:
      | Var_Stage            | VAPRowNumber | NomineeRowNumber | NomineeAddressRowNumber | Opening_Link                           |
      | Lead Details         | 89           | 1                | 19                      | VAP details tab under Loan Details tab |
      | Login Acceptance     | 89           | 1                | 19                      | VAP details tab under Loan Details tab |
      | DDE                  | 89           | 1                | 19                      | VAP details tab under Loan Details tab |
      | Recommendation       | 89           | 1                | 19                      | Loan Information option                |
      | Credit Approval      | 89           | 1                | 19                      | 3 dots option                          |
      | Reconsideration      | 89           | 1                | 19                      | Loan Information option                |
      | Post Approval        | 89           | 1                | 19                      | VAP details tab under Loan Details tab |
      | Disbursal Initiation | 89           | 1                | 19                      | VAP details tab                        |
      | Lead Details         | 89           | 1                | 20                      | VAP details tab under Loan Details tab |
      | Login Acceptance     | 89           | 1                | 20                      | VAP details tab under Loan Details tab |
      | DDE                  | 89           | 1                | 20                      | VAP details tab under Loan Details tab |
      | Recommendation       | 89           | 1                | 20                      | Loan Information option                |
      | Credit Approval      | 89           | 1                | 20                      | 3 dots option                          |
      | Reconsideration      | 89           | 1                | 20                      | Loan Information option                |
      | Post Approval        | 89           | 1                | 20                      | VAP details tab under Loan Details tab |
      | Disbursal Initiation | 89           | 1                | 20                      | VAP details tab                        |
      | Lead Details         | 89           | 1                | 21                      | VAP details tab under Loan Details tab |
      | Login Acceptance     | 89           | 1                | 21                      | VAP details tab under Loan Details tab |
      | DDE                  | 89           | 1                | 21                      | VAP details tab under Loan Details tab |
      | Recommendation       | 89           | 1                | 21                      | Loan Information option                |
      | Credit Approval      | 89           | 1                | 21                      | 3 dots option                          |
      | Reconsideration      | 89           | 1                | 21                      | Loan Information option                |
      | Post Approval        | 89           | 1                | 21                      | VAP details tab under Loan Details tab |
      | Disbursal Initiation | 89           | 1                | 21                      | VAP details tab                        |

  #FeatureID-ACAUTOCAS-209
  Scenario Outline: Validate added Nominee address details for mandatory fields on VAP details page for vap type "Credit Protection" on application at "<Var_Stage>" for row number "<NomineeAddressRowNumber>"
    And user open an application at "<Var_Stage>"
    And user open VAP details from "<Opening_Link>"
    And user selects vap product of vap type "Credit Protection"
    And user enters data from workbook "VAPDetailsValidate.xlsx" under sheet "vap_details_insurance" for row number "<VAPRowNumber>"
    And user enters data from workbook "VAPDetailsValidate.xlsx" under sheet "nominee_details" for row number "<NomineeRowNumber>"
    And user enters data from workbook "VAPDetailsValidate.xlsx" under sheet "v_nominee_address" for row number "<NomineeAddressRowNumber>"
    And user saves all details entered
    When user open VAP details page
    And user clicks on vap id of vap type "Credit Protection" from vap grid
    And user navigates to nominee section
    And user clicks on "Add Address link"
    Then user should be able to view address details as per workbook "VAPDetailsValidate.xlsx" under sheet "v_nominee_address" for row number "<NomineeAddressRowNumber>"
    Examples:
      | Var_Stage            | VAPRowNumber | NomineeRowNumber | NomineeAddressRowNumber | Opening_Link                           |
      | Lead Details         | 91           | 1                | 19                      | VAP details tab under Loan Details tab |
      | Login Acceptance     | 91           | 1                | 19                      | VAP details tab under Loan Details tab |
      | DDE                  | 91           | 1                | 19                      | VAP details tab under Loan Details tab |
      | Recommendation       | 91           | 1                | 19                      | Loan Information option                |
      | Credit Approval      | 91           | 1                | 19                      | 3 dots option                          |
      | Reconsideration      | 91           | 1                | 19                      | Loan Information option                |
      | Post Approval        | 91           | 1                | 19                      | VAP details tab under Loan Details tab |
      | Disbursal Initiation | 91           | 1                | 19                      | VAP details tab                        |
      | Lead Details         | 91           | 1                | 20                      | VAP details tab under Loan Details tab |
      | Login Acceptance     | 91           | 1                | 20                      | VAP details tab under Loan Details tab |
      | DDE                  | 91           | 1                | 20                      | VAP details tab under Loan Details tab |
      | Recommendation       | 91           | 1                | 20                      | Loan Information option                |
      | Credit Approval      | 91           | 1                | 20                      | 3 dots option                          |
      | Reconsideration      | 91           | 1                | 20                      | Loan Information option                |
      | Post Approval        | 91           | 1                | 20                      | VAP details tab under Loan Details tab |
      | Disbursal Initiation | 91           | 1                | 20                      | VAP details tab                        |
      | Lead Details         | 91           | 1                | 21                      | VAP details tab under Loan Details tab |
      | Login Acceptance     | 91           | 1                | 21                      | VAP details tab under Loan Details tab |
      | DDE                  | 91           | 1                | 21                      | VAP details tab under Loan Details tab |
      | Recommendation       | 91           | 1                | 21                      | Loan Information option                |
      | Credit Approval      | 91           | 1                | 21                      | 3 dots option                          |
      | Reconsideration      | 91           | 1                | 21                      | Loan Information option                |
      | Post Approval        | 91           | 1                | 21                      | VAP details tab under Loan Details tab |
      | Disbursal Initiation | 91           | 1                | 21                      | VAP details tab                        |

