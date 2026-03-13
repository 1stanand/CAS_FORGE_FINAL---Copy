@Epic-VAP
@AuthoredBy-sajja.ravikumar
#OriginalAuthor-rajni.gola
@ReviewedBy-
@ImplementedBy-
@TechReviewedBy-

@NotImplemented

Feature: VAP Insurance Nominee Details

  Background:
    Given User is logged in CAS with "<SourceDataFile>" under "<SheetName>" and "<RowNumber>"
    And user has configured VAP policy for product mapped in the application in Product master
    And user has configured VAP policy for scheme mapped in the application in Scheme master
    And user has configured VAP Parameter Policy, VAP Amount Computation Policy, VAP Payout Computation Policy, VAP Policy masters under CAS - Common Masters

  #FeatureID-ACAUTOCAS-209
  Scenario Outline: View Nominee section for vap type "Asset Insurance" at "<Var_Stage>"
    And user open an application at "<Var_Stage>" Stage
    And user open VAP details from "<Opening_Link>"
    When user selects vap product of vap type "Asset Insurance"
    Then user should be able to view nominee section along with other fields on VAP Details section
    Examples:
      | Var_Stage            | Opening_Link                           |
      | DDE                  | VAP details tab under Loan Details tab |
      | Recommendation       | Loan Information option                |
      | Credit Approval      | 3 dots option                          |
      | Reconsideration      | Loan Information option                |
      | Post Approval        | VAP details tab under Loan Details tab |
      | Disbursal Initiation | VAP details tab                        |

  #FeatureID-ACAUTOCAS-209
  Scenario Outline: View Nominee section for vap type "GAP Insurance" at "<Var_Stage>"
    And user open an application at "<Var_Stage>" Stage
    And user open VAP details from "<Opening_Link>"
    When user selects vap product of vap type "GAP Insurance"
    Then user should be able to view nominee section along with other fields on VAP Details section
    Examples:
      | Var_Stage            | Opening_Link                           |
      | DDE                  | VAP details tab under Loan Details tab |
      | Recommendation       | Loan Information option                |
      | Credit Approval      | 3 dots option                          |
      | Reconsideration      | Loan Information option                |
      | Post Approval        | VAP details tab under Loan Details tab |
      | Disbursal Initiation | VAP details tab                        |

  #FeatureID-ACAUTOCAS-209
  Scenario Outline: View Nominee section for vap type "Life Insurance" at "<Var_Stage>"
    And user open an application at "<Var_Stage>" Stage
    And user open VAP details from "<Opening_Link>"
    When user selects vap product of vap type "Life Insurance"
    Then user should be able to view nominee section along with other fields on VAP Details section
    Examples:
      | Var_Stage            | Opening_Link                           |
      | Lead Details         | VAP details tab under Loan Details tab |
      | Login Acceptance     | VAP details tab under Loan Details tab |
      | DDE                  | VAP details tab under Loan Details tab |
      | Recommendation       | Loan Information option                |
      | Credit Approval      | 3 dots option                          |
      | Reconsideration      | Loan Information option                |
      | Post Approval        | VAP details tab under Loan Details tab |
      | Disbursal Initiation | VAP details tab                        |

  #FeatureID-ACAUTOCAS-209
  Scenario Outline: View Nominee section for vap type "Payment Protection" at "<Var_Stage>"
    And user open an application at "<Var_Stage>" Stage
    And user open VAP details from "<Opening_Link>"
    When user selects vap product of vap type "Payment Protection"
    Then user should be able to view nominee section along with other fields on VAP Details section
    Examples:
      | Var_Stage            | Opening_Link                           |
      | Lead Details         | VAP details tab under Loan Details tab |
      | Login Acceptance     | VAP details tab under Loan Details tab |
      | DDE                  | VAP details tab under Loan Details tab |
      | Recommendation       | Loan Information option                |
      | Credit Approval      | 3 dots option                          |
      | Reconsideration      | Loan Information option                |
      | Post Approval        | VAP details tab under Loan Details tab |
      | Disbursal Initiation | VAP details tab                        |

  #FeatureID-ACAUTOCAS-209
  Scenario Outline: View Nominee section for vap type "Credit Protection" at "<Var_Stage>"
    And user open an application at "<Var_Stage>" Stage
    And user open VAP details from "<Opening_Link>"
    When user selects vap product of vap type "Credit Protection"
    Then user should be able to view nominee section along with other fields on VAP Details section
    Examples:
      | Var_Stage            | Opening_Link                           |
      | Lead Details         | VAP details tab under Loan Details tab |
      | Login Acceptance     | VAP details tab under Loan Details tab |
      | DDE                  | VAP details tab under Loan Details tab |
      | Recommendation       | Loan Information option                |
      | Credit Approval      | 3 dots option                          |
      | Reconsideration      | Loan Information option                |
      | Post Approval        | VAP details tab under Loan Details tab |
      | Disbursal Initiation | VAP details tab                        |

  #FeatureID-ACAUTOCAS-209
  Scenario Outline: View "<Table_Columns>" column in Nominee section for vap type "Asset Insurance"
    And user open an application from application grid
    And user open VAP details page
    When user selects vap product of vap type "Asset Insurance"
    And user goes to "Nominee Section"
    Then user should be able to view Nominee section with "<Table_Columns>" column
    Examples:
      | Table_Columns             |
      | Nominee Name              |
      | Nominee Relationship      |
      | Date of Birth             |
      | Gender                    |
      | Is Minor?                 |
      | Appointee Name            |
      | Appointee Relationship    |
      | Appointee DOB             |
      | Nominee address           |
      | Percentage of Entitlement |

  #FeatureID-ACAUTOCAS-209
  Scenario Outline: View "<Table_Columns>" column in Nominee section for vap type "GAP Insurance"
    And user open an application from application grid
    And user open VAP details page
    When user selects vap product of vap type "GAP Insurance"
    And user goes to "Nominee Section"
    Then user should be able to view Nominee section with "<Table_Columns>" column
    Examples:
      | Table_Columns             |
      | Nominee Name              |
      | Nominee Relationship      |
      | Date of Birth             |
      | Gender                    |
      | Is Minor?                 |
      | Appointee Name            |
      | Appointee Relationship    |
      | Appointee DOB             |
      | Nominee address           |
      | Percentage of Entitlement |

  #FeatureID-ACAUTOCAS-209
  Scenario Outline: View "<Table_Columns>" column in Nominee section for vap type "Life Insurance"
    And user open an application from application grid
    And user open VAP details page
    When user selects vap product of vap type "Life Insurance"
    And user goes to "Nominee Section"
    Then user should be able to view Nominee section with "<Table_Columns>" column
    Examples:
      | Table_Columns             |
      | Nominee Name              |
      | Nominee Relationship      |
      | Date of Birth             |
      | Gender                    |
      | Is Minor?                 |
      | Appointee Name            |
      | Appointee Relationship    |
      | Appointee DOB             |
      | Nominee address           |
      | Percentage of Entitlement |

  #FeatureID-ACAUTOCAS-209
  Scenario Outline: View "<Table_Columns>" column in Nominee section for vap type "Payment Protection"
    And user open an application from application grid
    And user open VAP details page
    When user selects vap product of vap type "Payment Protection"
    And user goes to "Nominee Section"
    Then user should be able to view Nominee section with "<Table_Columns>" column
    Examples:
      | Table_Columns             |
      | Nominee Name              |
      | Nominee Relationship      |
      | Date of Birth             |
      | Gender                    |
      | Is Minor?                 |
      | Appointee Name            |
      | Appointee Relationship    |
      | Appointee DOB             |
      | Nominee address           |
      | Percentage of Entitlement |

  #FeatureID-ACAUTOCAS-209
  Scenario Outline: View "<Table_Columns>" column in Nominee section for vap type "Credit Protection"
    And user open an application from application grid
    And user open VAP details page
    When user selects vap product of vap type "Credit Protection"
    And user goes to "Nominee Section"
    Then user should be able to view Nominee section with "<Table_Columns>" column
    Examples:
      | Table_Columns             |
      | Nominee Name              |
      | Nominee Relationship      |
      | Date of Birth             |
      | Gender                    |
      | Is Minor?                 |
      | Appointee Name            |
      | Appointee Relationship    |
      | Appointee DOB             |
      | Nominee address           |
      | Percentage of Entitlement |

  #FeatureID-ACAUTOCAS-209
  Scenario Outline: Mandatory check for "<Fields>" field on Nominee details
    And user open an application from application grid
    And user open VAP details page
    When user selects vap product with VAP Category as Insurance
    And user goes to "Nominee Section"
    Then user should be able to view "<Fields>" as "<mand_enabled_autopopulate>"
    Examples:
      | Fields                    | mand_enabled_autopopulate                                  |
      | Nominee Name              | mandatory, user input, enabled                             |
      | Nominee Relationship      | mandatory, user input, enabled                             |
      | Date of Birth             | mandatory, user input, enabled                             |
      | Gender                    | non mandatory,user input, enabled                          |
      | Is Minor?                 | non mandatory, auto populated, disabled                    |
      | Appointee Name            | conditional mandatory,user input, enabled on mandate check |
      | Appointee Relationship    | conditional mandatory,user input, enabled on mandate check |
      | Appointee DOB             | conditional mandatory,user input, enabled on mandate check |
      | Nominee address           | non mandatory,user input, enabled                          |
      | Percentage of Entitlement | mandatory, user input, enabled                             |

## Field level validations for Nominee section are covered in separate feature files

##############@@@@@@@@@@@@@@@@@@@@@@ Address Block - START  @@@@@@@@@@@@@@@#####################################
  #FeatureID-ACAUTOCAS-209
  Scenario Outline: View "<FieldName>" field on Nominee Address page under Nominee section for vap category type Insurance
    And user open an application at DDE Stage
    And user goes to Loan Details tab
    And user is on VAP details tab
    When user selects vap product with VAP Category as Insurance
    And user goes to "Nominee Section"
    And user clicks on Add Address link to add nominee address details
    Then user should be able to view a new address window with "<FieldName>"
    Examples:
      | FieldName                |
      | Address Type             |
      | Full Address             |
      | Country                  |
      | Flat/Plot Number         |
      | Address Line 2           |
      | Address Line 3           |
      | PinCode                  |
      | Region                   |
      | State                    |
      | City                     |
      | District                 |
      | Taluka                   |
      | Village                  |
      | Residence Status         |
      | Residence Type           |
      | Address In Document      |
      | Current Address          |
      | Duration at this Address |
      | Duration at this City    |
      | Phone Number             |
      | Mobile Phone             |

  #FeatureID-ACAUTOCAS-209
  Scenario Outline: Mandatory check for "<Fields>" field on Nominee Address details
    And user open an application at DDE Stage
    And user goes to Loan Details tab
    And user is on VAP details tab
    When user selects vap product with VAP Category as Insurance
    And user goes to "Nominee Section"
    And user clicks on Add Address link to add nominee address details
    Then user should be able to view "<Fields>" as "<mand_enabled_autopopulate>"
    Examples:
      | Fields                   | mand_enabled_autopopulate             |
      | Address Type             | mandatory, user input, enabled        |
      | Full Address             | non mandatory, user input, enabled    |
      | Country                  | mandatory, auto populated,enabled     |
      | Flat/Plot Number         | mandatory, user input, enabled        |
      | Address Line 2           | non mandatory, user input, enabled    |
      | Address Line 3           | non mandatory, user input, enabled    |
      | PinCode                  | mandatory, user input, enabled        |
      | Region                   | non mandatory, auto populated,enabled |
      | State                    | mandatory, auto populated,enabled     |
      | City                     | non mandatory, auto populated,enabled |
      | District                 | non mandatory, user input, enabled    |
      | Taluka                   | non mandatory, user input, enabled    |
      | Village                  | non mandatory, user input, enabled    |
      | Residence Status         | mandatory, user input, enabled        |
      | Residence Type           | conditional, non mandatory, user input, enabled    |
      | Address In Document      | conditional, non mandatory, user input, enabled    |
      | Current Address          | non mandatory, user input, enabled    |
      | Duration at this Address | non mandatory, user input, enabled    |
      | Duration at this City    | non mandatory, user input, enabled    |
      | Phone Number             | non mandatory, user input, enabled    |
      | Mobile Phone             | non mandatory, user input, enabled    |

## Field level validations for Nominee Address section are covered in separate feature files
##############@@@@@@@@@@@@@@@@@@@@@@ Address Block - END  @@@@@@@@@@@@@@@#####################################
  #FeatureID-ACAUTOCAS-209
  Scenario Outline: View nominee details for already added VAP Product of VAP type "Asset Insurance" at "<Var_Stage>" in "<mode>" mode
    And user open an application at "<Var_Stage>" Stage
    And user open VAP details from "<Opening_Link>"
    And user has already added vap product of vap type "Asset Insurance"
    When user clicks on VAP ID hyperlink for vap type "Asset Insurance" from VAP Product grid
    Then user should be able to view nominee section along with other fields on VAP Details section in "<mode>" mode
    Examples:
      | Var_Stage            | Opening_Link                           |mode|
      | DDE                  | VAP details tab under Loan Details tab |view|
      | Recommendation       | Loan Information option                |view|
      | Credit Approval      | 3 dots option                          |view|
      | Reconsideration      | Loan Information option                |view|
      | Post Approval        | VAP details tab under Loan Details tab |view|
      | Disbursal Initiation | VAP details tab                        |view|
      | DDE                  | VAP details tab under Loan Details tab |edit|
      | Recommendation       | Loan Information option                |edit|
      | Credit Approval      | 3 dots option                          |edit|
      | Reconsideration      | Loan Information option                |edit|
      | Post Approval        | VAP details tab under Loan Details tab |edit|
      | Disbursal Initiation | VAP details tab                        |edit|

  #FeatureID-ACAUTOCAS-209
  Scenario Outline: View nominee details for already added VAP Product of VAP type "GAP Insurance" at "<Var_Stage>" in "<mode>" mode
    And user open an application at "<Var_Stage>" Stage
    And user open VAP details from "<Opening_Link>"
    And user has already added vap product of vap type "GAP Insurance"
    When user clicks on VAP ID hyperlink for vap type "GAP Insurance" from VAP Product grid
    Then user should be able to view nominee section along with other fields on VAP Details section in "<mode>" mode
    Examples:
      | Var_Stage            | Opening_Link                           |mode|
      | DDE                  | VAP details tab under Loan Details tab |view|
      | Recommendation       | Loan Information option                |view|
      | Credit Approval      | 3 dots option                          |view|
      | Reconsideration      | Loan Information option                |view|
      | Post Approval        | VAP details tab under Loan Details tab |view|
      | Disbursal Initiation | VAP details tab                        |view|
      | DDE                  | VAP details tab under Loan Details tab |edit|
      | Recommendation       | Loan Information option                |edit|
      | Credit Approval      | 3 dots option                          |edit|
      | Reconsideration      | Loan Information option                |edit|
      | Post Approval        | VAP details tab under Loan Details tab |edit|
      | Disbursal Initiation | VAP details tab                        |edit|

  #FeatureID-ACAUTOCAS-209
  Scenario Outline: View nominee details for already added VAP Product of VAP type "Life Insurance" at "<Var_Stage>" in "<mode>" mode
    And user open an application at "<Var_Stage>" Stage
    And user open VAP details from "<Opening_Link>"
    And user has already added vap product of vap type "Life Insurance"
    When user clicks on VAP ID hyperlink for vap type "Life Insurance" from VAP Product grid
    Then user should be able to view nominee section along with other fields on VAP Details section in "<mode>" mode
    Examples:
      | Var_Stage            | Opening_Link                           |mode|
      | Lead Details         | VAP details tab under Loan Details tab |view|
      | Login Acceptance     | VAP details tab under Loan Details tab |view|
      | DDE                  | VAP details tab under Loan Details tab |view|
      | Recommendation       | Loan Information option                |view|
      | Credit Approval      | 3 dots option                          |view|
      | Reconsideration      | Loan Information option                |view|
      | Post Approval        | VAP details tab under Loan Details tab |view|
      | Disbursal Initiation | VAP details tab                        |view|
      | Lead Details         | VAP details tab under Loan Details tab |edit|
      | Login Acceptance     | VAP details tab under Loan Details tab |edit|
      | DDE                  | VAP details tab under Loan Details tab |edit|
      | Recommendation       | Loan Information option                |edit|
      | Credit Approval      | 3 dots option                          |edit|
      | Reconsideration      | Loan Information option                |edit|
      | Post Approval        | VAP details tab under Loan Details tab |edit|
      | Disbursal Initiation | VAP details tab                        |edit|

  #FeatureID-ACAUTOCAS-209
  Scenario Outline: View nominee details for already added VAP Product of VAP type "Payment Protection" at "<Var_Stage>" in "<mode>" mode
    And user open an application at "<Var_Stage>" Stage
    And user open VAP details from "<Opening_Link>"
    And user has already added vap product of vap type "Payment Protection"
    When user clicks on VAP ID hyperlink for vap type "Payment Protection" from VAP Product grid
    Then user should be able to view nominee section along with other fields on VAP Details section in "<mode>" mode
    Examples:
      | Var_Stage            | Opening_Link                           |mode|
      | Lead Details         | VAP details tab under Loan Details tab |view|
      | Login Acceptance     | VAP details tab under Loan Details tab |view|
      | DDE                  | VAP details tab under Loan Details tab |view|
      | Recommendation       | Loan Information option                |view|
      | Credit Approval      | 3 dots option                          |view|
      | Reconsideration      | Loan Information option                |view|
      | Post Approval        | VAP details tab under Loan Details tab |view|
      | Disbursal Initiation | VAP details tab                        |view|
      | Lead Details         | VAP details tab under Loan Details tab |edit|
      | Login Acceptance     | VAP details tab under Loan Details tab |edit|
      | DDE                  | VAP details tab under Loan Details tab |edit|
      | Recommendation       | Loan Information option                |edit|
      | Credit Approval      | 3 dots option                          |edit|
      | Reconsideration      | Loan Information option                |edit|
      | Post Approval        | VAP details tab under Loan Details tab |edit|
      | Disbursal Initiation | VAP details tab                        |edit|

  #FeatureID-ACAUTOCAS-209
  Scenario Outline: View nominee details for already added VAP Product of VAP type "Credit Protection" at "<Var_Stage>" in "<mode>" mode
    And user open an application at "<Var_Stage>" Stage
    And user open VAP details from "<Opening_Link>"
    And user has already added vap product of vap type "Credit Protection"
    When user clicks on VAP ID hyperlink for vap type "Credit Protection" from VAP Product grid
    Then user should be able to view nominee section along with other fields on VAP Details section in "<mode>" mode
    Examples:
      | Var_Stage            | Opening_Link                           |mode|
      | Lead Details         | VAP details tab under Loan Details tab |view|
      | Login Acceptance     | VAP details tab under Loan Details tab |view|
      | DDE                  | VAP details tab under Loan Details tab |view|
      | Recommendation       | Loan Information option                |view|
      | Credit Approval      | 3 dots option                          |view|
      | Reconsideration      | Loan Information option                |view|
      | Post Approval        | VAP details tab under Loan Details tab |view|
      | Disbursal Initiation | VAP details tab                        |view|
      | Lead Details         | VAP details tab under Loan Details tab |edit|
      | Login Acceptance     | VAP details tab under Loan Details tab |edit|
      | DDE                  | VAP details tab under Loan Details tab |edit|
      | Recommendation       | Loan Information option                |edit|
      | Credit Approval      | 3 dots option                          |edit|
      | Reconsideration      | Loan Information option                |edit|
      | Post Approval        | VAP details tab under Loan Details tab |edit|
      | Disbursal Initiation | VAP details tab                        |edit|

 #FeatureID-ACAUTOCAS-209
  Scenario Outline: Mandatory validation with selection of "<field>" field
    And user open an application from application grid
    And user goes to VAP details tab under Loan Details tab
    And user selects vap product with VAP Category as Insurance
    When user adds record in nominee section with date of birth that makes the total age of nominee less than 18
    Then user should be able to see "<field>" field as checked along with "<mandatory_fields>" as mandatory
    Examples:
      | field    | mandatory_fields       |
      | Is Minor | Appointee Name         |
      | Is Minor | Appointee Relationship |
      | Is Minor | Appointee DOB          |

 #FeatureID-ACAUTOCAS-209
  Scenario Outline: Validate "<field>" field
    And user open an application from application grid
    And user goes to VAP details tab under Loan Details tab
    And user selects vap product with VAP Category as Insurance
    When user attempts to add nominee details
    And user verifies "<field>" field
    Then user should be able to view "<link>" link
    Examples:
      | field           | link        |
      | Nominee Address | Add Address |
