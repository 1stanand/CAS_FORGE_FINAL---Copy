@Epic-VAP
@AuthoredBy-sajja.ravikumar
#OriginalAuthor-rajni.gola
@ReviewedBy-
@ImplementedBy-
@TechReviewedBy-

@NotImplemented

Feature: Add VAP Details Insurance

  Background:
    Given User is logged in CAS with "<SourceDataFile>" under "<SheetName>" and "<RowNumber>"
    And user has configured VAP policy for product mapped in the application in Product master
    And user has configured VAP policy for scheme mapped in the application in Scheme master
    And user has configured VAP Parameter Policy, VAP Amount Computation Policy, VAP Payout Computation Policy, VAP Policy masters under CAS - Common Masters

  ####################  VAP Type - Life Insurance #######################################################
  #FeatureID-ACAUTOCAS-207
  Scenario Outline: View VAP Details after selecting VAP product of VAP type "Life Insurance" for application at "<Var_Stage>"
    And user open an application at "<Var_Stage>" Stage
    And user open VAP details from "<Opening_Link>"
    When user selects vap product of vap type "Life Insurance" from VAP Product dropdown
    Then user should be able to view VAP Details section with different fields
    Examples:
      | Var_Stage        | Opening_Link                           |
      | Lead Details     | VAP details tab under Loan Details tab |
      | Login Acceptance | VAP details tab under Loan Details tab |
      | DDE              | VAP details tab under Loan Details tab |
      | Recommendation   | Loan Information option                |
      | Credit Approval  | 3 dots option                          |

  #FeatureID-ACAUTOCAS-207
  Scenario Outline: For post "Credit Approval" stages view VAP Details after selecting VAP product of VAP type "Life Insurance" for application at "<Var_Stage>"
    And user has selected "Enable at Post Sanction" flag in "VAP Parameter Policy" master for vap type "Life Insurance"
    And user open an application at "<Var_Stage>" Stage
    And user open VAP details from "<Opening_Link>"
    When user selects vap product of vap type "Life Insurance" from VAP Product dropdown
    Then user should be able to view VAP Details section with different fields
    Examples:
      | Var_Stage            | Opening_Link                           |
      | Post Approval        | VAP details tab under Loan Details tab |
      | Reconsideration      | Loan Information option                |
      | Disbursal Initiation | VAP details tab                        |

  #FeatureID-ACAUTOCAS-207
  Scenario Outline: View field "<FieldName>" on VAP Details after selecting VAP product of vap type "Life Insurance"
    And user open an application from application grid
    And user open VAP details page
    When user selects vap product of vap type "Life Insurance" from VAP Product dropdown
    Then user should be able to view field "<FieldName>"
    Examples:
      | FieldName                |
      | Applicant Name           |
      | VAP Category             |
      | VAP Type                 |
      | VAP Treatment            |
      | VAP Policy Amount        |
      | VAP Amount               |
      | Differential Amount      |
      | Bought From              |
      | Disburse To              |
      | Policy Number            |
      | Insurance Term           |
      | Cover Note Number        |
      | Cover Note Creation Date |
      | Start Date               |
      | Maturity Date            |
      | Coverage Type            |
      | Coverage Amount          |
      | Premium Amount           |
      | Insured                  |
      | Quantity                 |

  #FeatureID-ACAUTOCAS-207
  Scenario Outline: Auto-populate logic for "<Fields>" field on VAP details after selecting VAP product of VAP Type "Life Insurance"
    And user open an application from application grid
    And user open VAP details page
    When user selects vap product of vap type "Life Insurance" from VAP Product dropdown
    Then user should be able to view "<Fields>" as "<mand_enabled_autopopulate>"
    Examples:
      | Fields                   | mand_enabled_autopopulate               |
      | Applicant Name           | mandatory, user input, enabled          |
      | VAP Category             | mandatory, auto populated, disabled     |
      | VAP Type                 | mandatory, auto populated, disabled     |
      | VAP Treatment            | mandatory,user input, enabled           |
      | VAP Policy Amount        | mandatory, auto populated, disabled     |
      | VAP Amount               | mandatory,auto populated, enabled       |
      | Differential AMount      | non mandatory,auto populated, enabled   |
      | Bought From              | mandatory,user input, enabled           |
      | Disburse To              | mandatory,user input, enabled           |
      | Policy Number            | non mandatory,user input, enabled       |
      | Insurance Term           | non mandatory, auto populated, disabled |
      | Cover Note Number        | non mandatory,user input, enabled       |
      | Cover Note Creation Date | non mandatory,user input, enabled       |
      | Start Date               | non mandatory,user input, enabled       |
      | Maturity Date            | non mandatory,user input, enabled       |
      | Coverage Type            | mandatory,user input, enabled           |
      | Coverage Amount          | mandatory,auto populated, enabled       |
      | Premium Amount           | mandatory,user input, enabled           |
      | Insured                  | non mandatory, auto populated, enabled  |
      | Quantity                 | mandatory,auto populated, enabled       |

  #FeatureID-ACAUTOCAS-207
  Scenario Outline: Auto-populate and auto-calculate logic on "<auto_populated_field>" field on VAP details after selecting VAP product of vap type "Life Insurance"
    And user is on VAP details page
    When user selects vap product of vap type "Life Insurance" from VAP Product dropdown
    And user enters value in "<input_field>"
    Then user should be able to view values auto populated in "<auto_populated_field>" field basis "<logic>"
    Examples:
      | input_field                  | auto_populated_field | logic                                                                                       |
      | VAP Product                  | VAP Category         | configuration maintained in VAP Parameter Policy master for selected vap product            |
      | VAP Product                  | VAP type             | configuration maintained in VAP Parameter Policy master for selected vap product            |
      | VAP Treatment                | VAP Policy Amount    | configuration maintained in VAP Amount Computation Policy master for selected vap treatment |
      | VAP Treatment                | VAP Amount           | configuration maintained in VAP Amount Computation Policy master for selected vap treatment |
      | VAP Treatment                | Differential Amount  | difference between VAP Policy amount and VAP amount                                         |
      | Start Date and Maturity Date | Insurance Term       | difference between start date and maturity date                                             |

  #FeatureID-ACAUTOCAS-207
  Scenario Outline: Add VAP details after selecting VAP product of VAP type "Life Insurance" for application at "<Var_Stage>" stage
    And user open an application at "<Var_Stage>" Stage
    And user open VAP details from "<Opening_Link>"
    When user selects vap product of vap type "Life Insurance" from VAP Product dropdown
    And user enters all mandatory details
    Then user should be able to add vap product to the application successfully
    And user should be able to view the added VAP record in the VAP grid
    Examples:
      | Var_Stage        | Opening_Link                           |
      | Lead Details     | VAP details tab under Loan Details tab |
      | Login Acceptance | VAP details tab under Loan Details tab |
      | DDE              | VAP details tab under Loan Details tab |
      | Recommendation   | Loan Information option                |
      | Credit Approval  | 3 dots option                          |

  #FeatureID-ACAUTOCAS-207
  Scenario Outline: Add VAP details after selecting VAP product of VAP type "Life Insurance" for application at "<Var_Stage>" stage post "Credit Approval"
    And user has selected "Enable at Post Sanction" flag in "VAP Parameter Policy" master for vap type "Life Insurance"
    And user open an application at "<Var_Stage>" Stage
    And user open VAP details from "<Opening_Link>"
    When user selects vap product of vap type "Life Insurance" from VAP Product dropdown
    And user enters all mandatory details
    Then user should be able to add vap product to the application successfully
    And user should be able to view the added VAP record in the VAP grid
    Examples:
      | Var_Stage            | Opening_Link                           |
      | Reconsideration      | Loan Information option                |
      | Post Approval        | VAP details tab under Loan Details tab |
      | Disbursal Initiation | VAP details tab                        |

  #FeatureID-ACAUTOCAS-207
  Scenario Outline: Verify field "<FieldName>" as "<Editable>" on VAP Details after selecting VAP product of vap type "Life Insurance"
    And user open an application from application grid
    And user open VAP details page
    And user has an existing VAP product of VAP Type "Life Insurance" displayed in vap grid
    When user selects record of vap type "Life Insurance" to edit
    Then user should be able to view field "<FieldName>" on the screen in "<Editable>" mode
    Examples:
      | FieldName                | Editable     |
      | Applicant Name           | editable     |
      | VAP Category             | non editable |
      | VAP Type                 | non editable |
      | VAP Treatment            | editable     |
      | VAP Policy Amount        | non editable |
      | VAP Amount               | editable     |
      | Differential Amount      | editable     |
      | Bought From              | editable     |
      | Disburse To              | editable     |
      | Policy Number            | editable     |
      | Insurance Term           | non editable |
      | Cover Note Number        | editable     |
      | Cover Note Creation Date | editable     |
      | Start Date               | editable     |
      | Maturity Date            | editable     |
      | Coverage Type            | editable     |
      | Coverage Amount          | non editable |
      | Premium Amount           | editable     |
      | Insured                  | editable     |

  #FeatureID-ACAUTOCAS-207
  Scenario Outline: Verify field "<FieldName>" for modification "<Allowed>" after selecting VAP product of vap type "Life Insurance"
    And user open an application from application grid
    And user open VAP details page
    And user has an existing VAP product of VAP Type "Life Insurance" displayed in vap grid
    When user open the record of vap type "Life Insurance" in editable mode
    And user modifies "<FieldName>"
    And user clicks on Done button
    Then user should be "<Allowed>" to edit the field value
    And user should be able to save details successfully
    Examples:
      | FieldName                | Allowed     |
      | Applicant Name           | allowed     |
      | VAP Category             | not allowed |
      | VAP Type                 | not allowed |
      | VAP Treatment            | allowed     |
      | VAP Policy Amount        | not allowed |
      | VAP Amount               | allowed     |
      | Differential Amount      | allowed     |
      | Bought From              | allowed     |
      | Disburse To              | allowed     |
      | Policy Number            | allowed     |
      | Insurance Term           | not allowed |
      | Cover Note Number        | allowed     |
      | Cover Note Creation Date | allowed     |
      | Start Date               | allowed     |
      | Maturity Date            | allowed     |
      | Coverage Type            | allowed     |
      | Coverage Amount          | not allowed |
      | Premium Amount           | allowed     |
      | Insured                  | allowed     |

  #FeatureID-ACAUTOCAS-207
  Scenario Outline: Verify availability of field "<FieldName>" on vap details when viewed from vap grid for VAP type "Life Insurance"
    And user open an application from application grid
    And user open VAP details page
    When user clicks on VAP ID hyperlink for vap type "Life Insurance" from VAP Product grid
    Then user should be able to view field "<FieldName>" in view mode
    Examples:
      | FieldName                |
      | Applicant Name           |
      | VAP Category             |
      | VAP Type                 |
      | VAP Treatment            |
      | VAP Policy Amount        |
      | VAP Amount               |
      | Differential Amount      |
      | Bought From              |
      | Disburse To              |
      | Policy Number            |
      | Insurance Term           |
      | Cover Note Number        |
      | Cover Note Creation Date |
      | Start Date               |
      | Maturity Date            |
      | Coverage Type            |
      | Coverage Amount          |
      | Premium Amount           |
      | Insured                  |

 ####################  VAP Type - GAP Insurance #######################################################
  #FeatureID-ACAUTOCAS-207
  Scenario Outline: View VAP Details after selecting VAP product of VAP type "GAP Insurance" for application at "<Var_Stage>"
    And user open an application at "<Var_Stage>" Stage
    And user open VAP details from "<Opening_Link>"
    When user selects vap product of vap type "GAP Insurance" from VAP Product dropdown
    Then user should be able to view VAP Details section with different fields
    Examples:
      | Var_Stage       | Opening_Link                           |
      | DDE             | VAP details tab under Loan Details tab |
      | Recommendation  | Loan Information option                |
      | Credit Approval | 3 dots option                          |

  #FeatureID-ACAUTOCAS-207
  Scenario Outline: For post "Credit Approval" stages view VAP Details after selecting VAP product of VAP type "GAP Insurance" for application at "<Var_Stage>"
    And user has selected "Enable at Post Sanction" flag in "VAP Parameter Policy" master for vap type "GAP Insurance"
    And user open an application at "<Var_Stage>" Stage
    And user open VAP details from "<Opening_Link>"
    When user selects vap product of vap type "GAP Insurance" from VAP Product dropdown
    Then user should be able to view VAP Details section with different fields
    Examples:
      | Var_Stage            | Opening_Link                           |
      | Post Approval        | VAP details tab under Loan Details tab |
      | Reconsideration      | Loan Information option                |
      | Disbursal Initiation | VAP details tab                        |

  #FeatureID-ACAUTOCAS-207
  Scenario Outline: View field "<FieldName>" on VAP Details after selecting VAP product of vap type "GAP Insurance"
    And user open an application from application grid
    And user open VAP details page
    When user selects vap product of vap type "GAP Insurance" from VAP Product dropdown
    Then user should be able to view field "<FieldName>"
    Examples:
      | FieldName                |
      | Collateral ID            |
      | VAP Category             |
      | VAP Type                 |
      | VAP Treatment            |
      | VAP Policy Amount        |
      | VAP Amount               |
      | Differential AMount      |
      | Bought From              |
      | Disburse To              |
      | Policy Number            |
      | Insurance Term           |
      | Cover Note Number        |
      | Cover Note Creation Date |
      | Start Date               |
      | Maturity Date            |
      | Coverage Type            |
      | Coverage Amount          |
      | Premium Amount           |
      | Date of Delivery         |
      | Age of Vehicle           |
      | Distance Covered         |
      | Quantity                 |

  #FeatureID-ACAUTOCAS-207
  Scenario Outline: Auto-populate logic for "<Fields>" field on VAP details after selecting VAP product of VAP Type as "GAP Insurance"
    And user open an application from application grid
    And user open VAP details page
    When user selects vap product of vap type "GAP Insurance" from VAP Product dropdown
    Then user should be able to view "<Fields>" as "<mand_enabled_autopopulate>"
    Examples:
      | Fields                   | mand_enabled_autopopulate               |
      | Collateral ID            | mandatory, user input, enabled          |
      | VAP Category             | mandatory, auto populated, disabled     |
      | VAP Type                 | mandatory, auto populated, disabled     |
      | VAP Treatment            | mandatory,user input, enabled           |
      | VAP Policy Amount        | mandatory, auto populated, disabled     |
      | VAP Amount               | mandatory,auto populated, enabled       |
      | Differential AMount      | non mandatory,auto populated, enabled   |
      | Bought From              | mandatory,user input, enabled           |
      | Disburse To              | mandatory,user input, enabled           |
      | Policy Number            | non mandatory,user input, enabled       |
      | Insurance Term           | non mandatory, auto populated, disabled |
      | Cover Note Number        | non mandatory,user input, enabled       |
      | Cover Note Creation Date | non mandatory,user input, enabled       |
      | Start Date               | non mandatory,user input, enabled       |
      | Maturity Date            | non mandatory,user input, enabled       |
      | Coverage Type            | mandatory,user input, enabled           |
      | Coverage Amount          | mandatory,auto populated, enabled       |
      | Premium Amount           | mandatory,user input, enabled           |
      | Date of Delivery         | non mandatory, user input, enabled      |
      | Age of Vehicle           | non mandatory,user input, disabled      |
      | Distance Covered         | non mandatory, user input, enabled      |
      | Quantity                 | mandatory,auto populated, enabled       |

 #FeatureID-ACAUTOCAS-207
  Scenario Outline: Auto-populate and auto-calculate logic on "<auto_populated_field>" field on VAP details after selecting VAP product of vap type "GAP Insurance"
    And user is on VAP details tab
    When user selects vap product of vap type "GAP Insurance" from VAP Product dropdown
    And user enters value in "<input_field>"
    Then user should be able to view values auto populated in "<auto_populated_field>" field basis "<logic>"
    Examples:
      | input_field                  | auto_populated_field | logic                                                                                       |
      | VAP Product                  | VAP Category         | configuration maintained in VAP Parameter Policy master for selected vap product            |
      | VAP Product                  | VAP type             | configuration maintained in VAP Parameter Policy master for selected vap product            |
      | VAP Treatment                | VAP Policy Amount    | configuration maintained in VAP Amount Computation Policy master for selected vap treatment |
      | VAP Treatment                | VAP Amount           | configuration maintained in VAP Amount Computation Policy master for selected vap treatment |
      | VAP Treatment                | Differential Amount  | difference between VAP Policy amount and VAP amount                                         |
      | Start Date and Maturity Date | Insurance Term       | difference between start date and maturity date                                             |
      | Date Of Delivery             | Age of Vehicle       | difference between current date and date of delivery                                        |
      | Quantity                     | Quantity             | default value set as 1 by system                                                            |

 #FeatureID-ACAUTOCAS-207
  Scenario Outline: Add VAP after selecting VAP product as "GAP Insurance" for application at "<Var_Stage>" stage
    And user open an application at "<Var_Stage>" Stage
    And user open VAP details from "<Opening_Link>"
    When user selects vap product of vap type "GAP Insurance" from VAP Product dropdown
    And user enters all mandatory details
    Then user should be able to add vap product to the application successfully
    And user should be able to view the added VAP record in the VAP grid
    Examples:
      | Var_Stage       | Opening_Link                           |
      | DDE             | VAP details tab under Loan Details tab |
      | Recommendation  | Loan Information option                |
      | Credit Approval | 3 dots option                          |

  #FeatureID-ACAUTOCAS-207
  Scenario Outline: Add VAP after selecting VAP product of VAp type "GAP Insurance" for application at "<Var_Stage>" stage post "Credit Approval"
    And user has selected "Enable at Post Sanction" flag in "VAP Parameter Policy" master for vap type "GAP Insurance"
    And user open an application at "<Var_Stage>" Stage
    And user open VAP details from "<Opening_Link>"
    When user selects vap product of vap type "GAP Insurance" from VAP Product dropdown
    And user enters all mandatory details
    Then user should be able to add vap product to the application successfully
    And user should be able to view the added VAP record in the VAP grid
    Examples:
      | Var_Stage            | Opening_Link                           |
      | Reconsideration      | Loan Information option                |
      | Post Approval        | VAP details tab under Loan Details tab |
      | Disbursal Initiation | VAP details tab                        |

  #FeatureID-ACAUTOCAS-207
  Scenario Outline: Verify field "<FieldName>" as "<Editable>" on VAP Details after selecting VAP product of vap type "GAP Insurance"
    And user open an application from application grid
    And user open VAP details page
    And user has an existing VAP product of VAP Type "GAP Insurance" displayed in vap grid
    When user selects record of vap type "GAP Insurance" to edit
    Then user should be able to view field "<FieldName>" on the screen in "<Editable>" mode
    Examples:
      | FieldName                | Editable     |
      | Collateral ID            | editable     |
      | VAP Category             | non editable |
      | VAP Type                 | non editable |
      | VAP Treatment            | editable     |
      | VAP Policy Amount        | non editable |
      | VAP Amount               | editable     |
      | Differential Amount      | editable     |
      | Bought From              | editable     |
      | Disburse To              | editable     |
      | Policy Number            | editable     |
      | Insurance Term           | non editable |
      | Cover Note Number        | editable     |
      | Cover Note Creation Date | editable     |
      | Start Date               | editable     |
      | Maturity Date            | editable     |
      | Coverage Type            | editable     |
      | Coverage Amount          | not editable |
      | Premium Amount           | editable     |
      | Date of Delivery         | editable     |
      | Age of Vehicle           | non editable |
      | Distance Covered         | editable     |

  #FeatureID-ACAUTOCAS-207
  Scenario Outline: Verify field "<FieldName>" for modification "<Allowed>" after selecting VAP product of vap type "GAP Insurance"
    And user open an application from application grid
    And user open VAP details page
    And user has an existing VAP product of VAP Type "GAP Insurance" displayed in vap grid
    When user open the record of vap type "GAP Insurance" in editable mode
    And user modifies "<FieldName>"
    And user clicks on Done button
    Then user should be "<Allowed>" to edit the field value
    And user should be able to save details successfully
    Examples:
      | FieldName                | Allowed     |
      | Collateral ID            | allowed     |
      | VAP Category             | not allowed |
      | VAP Type                 | not allowed |
      | VAP Treatment            | allowed     |
      | VAP Policy Amount        | not allowed |
      | VAP Amount               | allowed     |
      | Differential Amount      | allowed     |
      | Bought From              | allowed     |
      | Disburse To              | allowed     |
      | Policy Number            | allowed     |
      | Insurance Term           | not allowed |
      | Cover Note Number        | allowed     |
      | Cover Note Creation Date | allowed     |
      | Start Date               | allowed     |
      | Maturity Date            | allowed     |
      | Coverage Type            | allowed     |
      | Coverage Amount          | not allowed |
      | Premium Amount           | allowed     |
      | Date of Delivery         | allowed     |
      | Age of Vehicle           | not allowed |
      | Distance Covered         | allowed     |

  #FeatureID-ACAUTOCAS-207
  Scenario Outline: Verify availability of field "<FieldName>" on vap details when viewed from vap grid for VAP type "GAP Insurance"
    And user open an application from application grid
    And user open VAP details page
    When user clicks on VAP ID hyperlink for vap type "GAP Insurance" from VAP Product grid
    Then user should be able to view field "<FieldName>" in view mode
    Examples:
      | FieldName                |
      | Collateral ID            |
      | VAP Category             |
      | VAP Type                 |
      | VAP Treatment            |
      | VAP Policy Amount        |
      | VAP Amount               |
      | Differential AMount      |
      | Bought From              |
      | Disburse To              |
      | Policy Number            |
      | Insurance Term           |
      | Cover Note Number        |
      | Cover Note Creation Date |
      | Start Date               |
      | Maturity Date            |
      | Coverage Type            |
      | Coverage Amount          |
      | Premium Amount           |
      | Date of Delivery         |
      | Age of Vehicle           |
      | Distance Covered         |


  ####################  VAP Type - Asset Insurance #######################################################
  #FeatureID-ACAUTOCAS-207
  Scenario Outline: View VAP Details after selecting VAP product of VAP type "Asset Insurance" for application at "<Var_Stage>"
    And user open an application at "<Var_Stage>" Stage
    And user open VAP details from "<Opening_Link>"
    When user selects vap product of vap type "Asset Insurance" from VAP Product dropdown
    Then user should be able to view VAP Details section with different fields
    Examples:
      | Var_Stage       | Opening_Link                           |
      | DDE             | VAP details tab under Loan Details tab |
      | Recommendation  | Loan Information option                |
      | Credit Approval | 3 dots option                          |

  #FeatureID-ACAUTOCAS-207
  Scenario Outline: For post "Credit Approval" stages view VAP Details after selecting VAP product of VAP type "Asset Insurance" for application at "<Var_Stage>"
    And user has selected "Enable at Post Sanction" flag in "VAP Parameter Policy" master for vap type "Asset Insurance"
    And user open an application at "<Var_Stage>" Stage
    And user open VAP details from "<Opening_Link>"
    When user selects vap product of vap type "Asset Insurance" from VAP Product dropdown
    Then user should be able to view VAP Details section with different fields
    Examples:
      | Var_Stage            | Opening_Link                           |
      | Post Approval        | VAP details tab under Loan Details tab |
      | Reconsideration      | Loan Information option                |
      | Disbursal Initiation | VAP details tab                        |

  #FeatureID-ACAUTOCAS-207
  Scenario Outline: View field "<FieldName>" on VAP Details after selecting VAP product of vap type "Asset Insurance"
    And user open an application from application grid
    And user open VAP details page
    When user selects vap product of vap type "Asset Insurance" from VAP Product dropdown
    Then user should be able to view field "<FieldName>"
    Examples:
      | FieldName                |
      | Collateral ID            |
      | VAP Category             |
      | VAP Type                 |
      | VAP Treatment            |
      | VAP Policy Amount        |
      | VAP Amount               |
      | Differential AMount      |
      | Bought From              |
      | Disburse To              |
      | Policy Number            |
      | Insurance Term           |
      | Cover Note Number        |
      | Cover Note Creation Date |
      | Start Date               |
      | Maturity Date            |
      | Coverage Type            |
      | Coverage Amount          |
      | Premium Amount           |
      | Loss Payee               |
      | Quantity                 |

  #FeatureID-ACAUTOCAS-207
  Scenario Outline: Auto-populate logic for "<Fields>" field on VAP details after selecting VAP product of VAP Type as "Asset Insurance"
    And user open an application from application grid
    And user open VAP details page
    When user selects vap product of vap type "Asset Insurance" from VAP Product dropdown
    Then user should be able to view "<Fields>" as "<mand_enabled_autopopulate>"
    Examples:
      | Fields                   | mand_enabled_autopopulate               |
      | Collateral ID            | mandatory, user input, enabled          |
      | VAP Category             | mandatory, auto populated, disabled     |
      | VAP Type                 | mandatory, auto populated, disabled     |
      | VAP Treatment            | mandatory,user input, enabled           |
      | VAP Policy Amount        | mandatory, auto populated, disabled     |
      | VAP Amount               | mandatory,auto populated, enabled       |
      | Differential AMount      | non mandatory,auto populated, enabled   |
      | Bought From              | mandatory,user input, enabled           |
      | Disburse To              | mandatory,user input, enabled           |
      | Policy Number            | non mandatory,user input, enabled       |
      | Insurance Term           | non mandatory, auto populated, disabled |
      | Cover Note Number        | non mandatory,user input, enabled       |
      | Cover Note Creation Date | non mandatory,user input, enabled       |
      | Start Date               | non mandatory,user input, enabled       |
      | Maturity Date            | non mandatory,user input, enabled       |
      | Coverage Type            | mandatory,user input, enabled           |
      | Coverage Amount          | mandatory,auto populated, enabled       |
      | Premium Amount           | mandatory,user input, enabled           |
      | Loss Payee               | mandatory, user input, enabled          |
      | Quantity                 | mandatory,auto populated, enabled       |

 #FeatureID-ACAUTOCAS-207
  Scenario Outline: Auto-populate and auto-calculate logic on "<auto_populated_field>" field on VAP details after selecting VAP product of vap type Asset Insurance
    And user is on VAP details tab
    When user selects vap product of vap type "Asset Insurance" from VAP Product dropdown
    And user enters value in "<input_field>"
    Then user should be able to view values auto populated in "<auto_populated_field>" field basis "<logic>"
    Examples:
      | input_field                  | auto_populated_field | logic                                                                                       |
      | VAP Product                  | VAP Category         | configuration maintained in VAP Parameter Policy master for selected vap product            |
      | VAP Product                  | VAP type             | configuration maintained in VAP Parameter Policy master for selected vap product            |
      | VAP Treatment                | VAP Policy Amount    | configuration maintained in VAP Amount Computation Policy master for selected vap treatment |
      | VAP Treatment                | VAP Amount           | configuration maintained in VAP Amount Computation Policy master for selected vap treatment |
      | VAP Treatment                | Differential Amount  | difference between VAP Policy amount and VAP amount                                         |
      | Start Date and Maturity Date | Insurance Term       | difference between start date and maturity date                                             |
      | Quantity                     | Quantity             | default value set as 1 by system                                                            |

 #FeatureID-ACAUTOCAS-207
  Scenario Outline: Add VAP after selecting VAP product of VAP type "Asset Insurance" for application at "<Var_Stage>" stage
    And user open an application at "<Var_Stage>" Stage
    And user open VAP details from "<Opening_Link>"
    When user selects vap product of vap type "Asset Insurance" from VAP Product dropdown
    And user enters all mandatory details
    Then user should be able to add vap product to the application successfully
    And user should be able to view the added VAP record in the VAP grid
    Examples:
      | Var_Stage       | Opening_Link                           |
      | DDE             | VAP details tab under Loan Details tab |
      | Recommendation  | Loan Information option                |
      | Credit Approval | 3 dots option                          |

  #FeatureID-ACAUTOCAS-207
  Scenario Outline: Add VAP after selecting VAP product of VAp type "Asset Insurance" for application at "<Var_Stage>" stage post "Credit Approval"
    And user has selected "Enable at Post Sanction" flag in "VAP Parameter Policy" master for vap type "Asset Insurance"
    And user open an application at "<Var_Stage>" Stage
    And user open VAP details from "<Opening_Link>"
    When user selects vap product of vap type "Asset Insurance" from VAP Product dropdown
    And user enters all mandatory details
    Then user should be able to add vap product to the application successfully
    And user should be able to view the added VAP record in the VAP grid
    Examples:
      | Var_Stage            | Opening_Link                           |
      | Reconsideration      | Loan Information option                |
      | Post Approval        | VAP details tab under Loan Details tab |
      | Disbursal Initiation | VAP details tab                        |

  #FeatureID-ACAUTOCAS-207
  Scenario Outline: Verify field "<FieldName>" as "<Editable>" on VAP Details after selecting VAP product of vap type "Asset Insurance"
    And user open an application from application grid
    And user open VAP details page
    And user has an existing VAP product of VAP Type "Asset Insurance" displayed in vap grid
    When user selects record of vap type "Asset Insurance" to edit
    Then user should be able to view field "<FieldName>" on the screen in "<Editable>" mode
    Examples:
      | FieldName                | Editable     |
      | Collateral ID            | editable     |
      | VAP Category             | non editable |
      | VAP Type                 | non editable |
      | VAP Treatment            | editable     |
      | VAP Policy Amount        | non editable |
      | VAP Amount               | editable     |
      | Differential Amount      | editable     |
      | Bought From              | editable     |
      | Disburse To              | editable     |
      | Policy Number            | editable     |
      | Insurance Term           | non editable |
      | Cover Note Number        | editable     |
      | Cover Note Creation Date | editable     |
      | Start Date               | editable     |
      | Maturity Date            | editable     |
      | Coverage Type            | editable     |
      | Coverage Amount          | not editable |
      | Premium Amount           | editable     |
      | Loss Payee               | editable     |

  #FeatureID-ACAUTOCAS-207
  Scenario Outline: Verify field "<FieldName>" for modification "<Allowed>" after selecting VAP product of vap type "Asset Insurance"
    And user open an application from application grid
    And user open VAP details page
    And user has an existing VAP product of VAP Type "Asset Insurance" displayed in vap grid
    When user open the record of vap type "Asset Insurance" in editable mode
    And user modifies "<FieldName>"
    And user clicks on Done button
    Then user should be "<Allowed>" to edit the field value
    And user should be able to save details successfully
    Examples:
      | FieldName                | Allowed     |
      | Collateral ID            | allowed     |
      | VAP Category             | not allowed |
      | VAP Type                 | not allowed |
      | VAP Treatment            | allowed     |
      | VAP Policy Amount        | not allowed |
      | VAP Amount               | allowed     |
      | Differential Amount      | allowed     |
      | Bought From              | allowed     |
      | Disburse To              | allowed     |
      | Policy Number            | allowed     |
      | Insurance Term           | not allowed |
      | Cover Note Number        | allowed     |
      | Cover Note Creation Date | allowed     |
      | Start Date               | allowed     |
      | Maturity Date            | allowed     |
      | Coverage Type            | allowed     |
      | Coverage Amount          | not allowed |
      | Premium Amount           | allowed     |
      | Loss Payee               | allowed     |

  #FeatureID-ACAUTOCAS-207
  Scenario Outline: Verify availability of field "<FieldName>" on vap details when viewed from vap grid for VAP type "Asset Insurance"
    And user open an application from application grid
    And user open VAP details page
    When user clicks on VAP ID hyperlink for vap type "Asset Insurance" from VAP Product grid
    Then user should be able to view field "<FieldName>" in view mode
    Examples:
      | FieldName                |
      | Collateral ID            |
      | VAP Category             |
      | VAP Type                 |
      | VAP Treatment            |
      | VAP Policy Amount        |
      | VAP Amount               |
      | Differential AMount      |
      | Bought From              |
      | Disburse To              |
      | Policy Number            |
      | Insurance Term           |
      | Cover Note Number        |
      | Cover Note Creation Date |
      | Start Date               |
      | Maturity Date            |
      | Coverage Type            |
      | Coverage Amount          |
      | Premium Amount           |
      | Loss Payee               |

  ####################  VAP Type - Payment Protection #######################################################
  #FeatureID-ACAUTOCAS-207
  Scenario Outline: View VAP Details after selecting VAP product of VAP type "Payment Protection" for application at "<Var_Stage>"
    And user open an application at "<Var_Stage>" Stage
    And user open VAP details from "<Opening_Link>"
    When user selects vap product of vap type "Payment Protection" from VAP Product dropdown
    Then user should be able to view VAP Details section with different fields
    Examples:
      | Var_Stage        | Opening_Link                           |
      | Lead Details     | VAP details tab under Loan Details tab |
      | Login Acceptance | VAP details tab under Loan Details tab |
      | DDE              | VAP details tab under Loan Details tab |
      | Recommendation   | Loan Information option                |
      | Credit Approval  | 3 dots option                          |

  #FeatureID-ACAUTOCAS-207
  Scenario Outline: For post "Credit Approval" stages view VAP Details after selecting VAP product of VAP type "Payment Protection" for application at "<Var_Stage>"
    And user has selected "Enable at Post Sanction" flag in "VAP Parameter Policy" master for vap type "Payment Protection"
    And user open an application at "<Var_Stage>" Stage
    And user open VAP details from "<Opening_Link>"
    When user selects vap product of vap type "Payment Protection" from VAP Product dropdown
    Then user should be able to view VAP Details section with different fields
    Examples:
      | Var_Stage            | Opening_Link                           |
      | Post Approval        | VAP details tab under Loan Details tab |
      | Reconsideration      | Loan Information option                |
      | Disbursal Initiation | VAP details tab                        |

  #FeatureID-ACAUTOCAS-207
  Scenario Outline: View field "<FieldName>" on VAP Details after selecting VAP product of vap type "Payment Protection"
    And user open an application from application grid
    And user open VAP details page
    When user selects vap product of vap type "Payment Protection" from VAP Product dropdown
    Then user should be able to view field "<FieldName>"
    Examples:
      | FieldName                |
      | Applicant Name           |
      | VAP Category             |
      | VAP Type                 |
      | VAP Treatment            |
      | VAP Policy Amount        |
      | VAP Amount               |
      | Differential AMount      |
      | Bought From              |
      | Disburse To              |
      | Policy Number            |
      | Insurance Term           |
      | Cover Note Number        |
      | Cover Note Creation Date |
      | Start Date               |
      | Maturity Date            |
      | Coverage Type            |
      | Coverage Amount          |
      | Premium Amount           |
      | Insured                  |
      | Quantity                 |

  #FeatureID-ACAUTOCAS-207
  Scenario Outline: Auto-populate logic for "<Fields>" field on VAP details after selecting VAP product of VAP Type "Payment Protection"
    And user open an application from application grid
    And user open VAP details page
    When user selects vap product of vap type "Payment Protection" from VAP Product dropdown
    Then user should be able to view "<Fields>" as "<mand_enabled_autopopulate>"
    Examples:
      | Fields                   | mand_enabled_autopopulate               |
      | Applicant Name           | non mandatory, user input, enabled      |
      | VAP Category             | mandatory, auto populated, disabled     |
      | VAP Type                 | mandatory, auto populated, disabled     |
      | VAP Treatment            | mandatory,user input, enabled           |
      | VAP Policy Amount        | mandatory, auto populated, disabled     |
      | VAP Amount               | mandatory,auto populated, enabled       |
      | Differential Amount      | non mandatory,auto populated, enabled   |
      | Bought From              | mandatory,user input, enabled           |
      | Disburse To              | mandatory,user input, enabled           |
      | Policy Number            | non mandatory,user input, enabled       |
      | Insurance Term           | non mandatory, auto populated, disabled |
      | Cover Note Number        | non mandatory,user input, enabled       |
      | Cover Note Creation Date | non mandatory,user input, enabled       |
      | Start Date               | non mandatory,user input, enabled       |
      | Maturity Date            | non mandatory,user input, enabled       |
      | Coverage Type            | mandatory,user input, enabled           |
      | Coverage Amount          | mandatory,auto populated, enabled       |
      | Premium Amount           | mandatory,user input, enabled           |
      | Insured                  | non mandatory, user input, enabled      |
      | Quantity                 | mandatory,auto populated, enabled       |

  #FeatureID-ACAUTOCAS-207
  Scenario Outline: Auto-populate and auto-calculate logic on "<auto_populated_field>" field on VAP details after selecting VAP product od vap type "Payment Protection"
    And user is on VAP details tab
    When user selects vap product of vap type "Payment Protection" from VAP Product dropdown
    And user enters value in "<input_field>"
    Then user should be able to view values auto populated in "<auto_populated_field>" field basis "<logic>"
    Examples:
      | input_field                  | auto_populated_field | logic                                                                                       |
      | VAP Product                  | VAP Category         | configuration maintained in VAP Parameter Policy master for selected vap product            |
      | VAP Product                  | VAP type             | configuration maintained in VAP Parameter Policy master for selected vap product            |
      | VAP Treatment                | VAP Policy Amount    | configuration maintained in VAP Amount Computation Policy master for selected vap treatment |
      | VAP Treatment                | VAP Amount           | configuration maintained in VAP Amount Computation Policy master for selected vap treatment |
      | VAP Treatment                | Differential Amount  | difference between VAP Policy amount and VAP amount                                         |
      | Start Date and Maturity Date | Insurance Term       | difference between start date and maturity date                                             |
      | Quantity                     | Quantity             | default value set as 1 by system                                                            |

  #FeatureID-ACAUTOCAS-207
  Scenario Outline: Add VAP after selecting VAP product of VAP type "Payment Protection" for application at "<Var_Stage>" stage
    And user open an application at "<Var_Stage>" Stage
    And user open VAP details from "<Opening_Link>"
    When user selects vap product of vap type "Payment Protection" from VAP Product dropdown
    And user enters all mandatory details
    Then user should be able to add vap product to the application successfully
    And user should be able to view the added VAP record in the VAP grid
    Examples:
      | Var_Stage        | Opening_Link                           |
      | Lead Details     | VAP details tab under Loan Details tab |
      | Login Acceptance | VAP details tab under Loan Details tab |
      | DDE              | VAP details tab under Loan Details tab |
      | Recommendation   | Loan Information option                |
      | Credit Approval  | 3 dots option                          |

  #FeatureID-ACAUTOCAS-207
  Scenario Outline: Add VAP after selecting VAP product of VAP type "Payment Protection" for application at "<Var_Stage>" stage post "Credit Approval"
    And user has selected "Enable at Post Sanction" flag in "VAP Parameter Policy" master for vap type "Payment Protection"
    And user open an application at "<Var_Stage>" Stage
    And user open VAP details from "<Opening_Link>"
    When user selects vap product of vap type "Payment Protection" from VAP Product dropdown
    And user enters all mandatory details
    Then user should be able to add vap product to the application successfully
    And user should be able to view the added VAP record in the VAP grid
    Examples:
      | Var_Stage            | Opening_Link                           |
      | Reconsideration      | Loan Information option                |
      | Post Approval        | VAP details tab under Loan Details tab |
      | Disbursal Initiation | VAP details tab                        |

  #FeatureID-ACAUTOCAS-207
  Scenario Outline: Verify field "<FieldName>" as "<Editable>" on VAP Details after selecting VAP product of vap type "Payment Protection"
    And user open an application from application grid
    And user open VAP details page
    And user has an existing VAP product of VAP Type "Payment Protection" displayed in vap grid
    When user selects record of vap type "Payment Protection" to edit
    Then user should be able to view field "<FieldName>" on the screen in "<Editable>" mode
    Examples:
      | FieldName                | Editable     |
      | Applicant Name           | editable     |
      | VAP Category             | non editable |
      | VAP Type                 | non editable |
      | VAP Treatment            | editable     |
      | VAP Policy Amount        | non editable |
      | VAP Amount               | editable     |
      | Differential Amount      | editable     |
      | Bought From              | editable     |
      | Disburse To              | editable     |
      | Policy Number            | editable     |
      | Insurance Term           | non editable |
      | Cover Note Number        | editable     |
      | Cover Note Creation Date | editable     |
      | Start Date               | editable     |
      | Maturity Date            | editable     |
      | Coverage Type            | editable     |
      | Coverage Amount          | not editable |
      | Premium Amount           | editable     |
      | Insured                  | editable     |

  #FeatureID-ACAUTOCAS-207
  Scenario Outline: Verify field "<FieldName>" for modification "<Allowed>" after selecting VAP product of vap type "Payment Protection"
    And user open an application from application grid
    And user open VAP details page
    And user has an existing VAP product of VAP Type "Payment Protection" displayed in vap grid
    When user open the record of vap type "Payment Protection" in editable mode
    And user modifies "<FieldName>"
    And user clicks on Done button
    Then user should be "<Allowed>" to edit the field value
    And user should be able to save details successfully
    Examples:
      | FieldName                | Allowed     |
      | Applicant Name           | allowed     |
      | VAP Category             | not allowed |
      | VAP Type                 | not allowed |
      | VAP Treatment            | allowed     |
      | VAP Policy Amount        | not allowed |
      | VAP Amount               | allowed     |
      | Differential Amount      | allowed     |
      | Bought From              | allowed     |
      | Disburse To              | allowed     |
      | Policy Number            | allowed     |
      | Insurance Term           | not allowed |
      | Cover Note Number        | allowed     |
      | Cover Note Creation Date | allowed     |
      | Start Date               | allowed     |
      | Maturity Date            | allowed     |
      | Coverage Type            | allowed     |
      | Coverage Amount          | not allowed |
      | Premium Amount           | allowed     |
      | Insured                  | allowed     |

  #FeatureID-ACAUTOCAS-207
  Scenario Outline: Verify availability of field "<FieldName>" on vap details when viewed from vap grid for VAP type "Payment Protection"
    And user open an application from application grid
    And user open VAP details page
    When user clicks on VAP ID hyperlink for vap type "Payment Protection" from VAP Product grid
    Then user should be able to view field "<FieldName>" in view mode
    Examples:
      | FieldName                |
      | Applicant Name           |
      | VAP Category             |
      | VAP Type                 |
      | VAP Treatment            |
      | VAP Policy Amount        |
      | VAP Amount               |
      | Differential Amount      |
      | Bought From              |
      | Disburse To              |
      | Policy Number            |
      | Insurance Term           |
      | Cover Note Number        |
      | Cover Note Creation Date |
      | Start Date               |
      | Maturity Date            |
      | Coverage Type            |
      | Coverage Amount          |
      | Premium Amount           |
      | Insured                  |

  ####################  VAP Type - Credit Protection #######################################################
  #FeatureID-ACAUTOCAS-207
  Scenario Outline: View VAP Details after selecting VAP product of VAP type "Credit Protection" for application at "<Var_Stage>"
    And user open an application at "<Var_Stage>" Stage
    And user open VAP details from "<Opening_Link>"
    When user selects vap product of vap type "Credit Protection" from VAP Product dropdown
    Then user should be able to view VAP Details section with different fields
    Examples:
      | Var_Stage        | Opening_Link                           |
      | Lead Details     | VAP details tab under Loan Details tab |
      | Login Acceptance | VAP details tab under Loan Details tab |
      | DDE              | VAP details tab under Loan Details tab |
      | Recommendation   | Loan Information option                |
      | Credit Approval  | 3 dots option                          |

  #FeatureID-ACAUTOCAS-207
  Scenario Outline: For post "Credit Approval" stages view VAP Details after selecting VAP product of VAP type "Credit Protection" for application at "<Var_Stage>"
    And user has selected "Enable at Post Sanction" flag in "VAP Parameter Policy" master for vap type "Credit Protection"
    And user open an application at "<Var_Stage>" Stage
    And user open VAP details from "<Opening_Link>"
    When user selects vap product of vap type "Credit Protection" from VAP Product dropdown
    Then user should be able to view VAP Details section with different fields
    Examples:
      | Var_Stage            | Opening_Link                           |
      | Post Approval        | VAP details tab under Loan Details tab |
      | Reconsideration      | Loan Information option                |
      | Disbursal Initiation | VAP details tab                        |

  #FeatureID-ACAUTOCAS-207
  Scenario Outline: View field "<FieldName>" on VAP Details after selecting VAP product of vap type "Credit Protection"
    And user open an application from application grid
    And user open VAP details page
    When user selects vap product of vap type "Credit Protection" from VAP Product dropdown
    Then user should be able to view field "<FieldName>"
    Examples:
      | FieldName                |
      | Applicant Name           |
      | VAP Category             |
      | VAP Type                 |
      | VAP Treatment            |
      | VAP Policy Amount        |
      | VAP Amount               |
      | Differential AMount      |
      | Bought From              |
      | Disburse To              |
      | Policy Number            |
      | Insurance Term           |
      | Cover Note Number        |
      | Cover Note Creation Date |
      | Start Date               |
      | Maturity Date            |
      | Coverage Type            |
      | Coverage Amount          |
      | Premium Amount           |
      | Insured                  |
      | Quantity                 |

  #FeatureID-ACAUTOCAS-207
  Scenario Outline: Auto-populate logic for "<Fields>" field on VAP details after selecting VAP product of VAP Type "Credit Protection"
    And user open an application from application grid
    And user open VAP details page
    When user selects vap product of vap type "Credit Protection" from VAP Product dropdown
    Then user should be able to view "<Fields>" as "<mand_enabled_autopopulate>"
    Examples:
      | Fields                   | mand_enabled_autopopulate               |
      | Applicant Name           | non mandatory, user input, enabled      |
      | VAP Category             | mandatory, auto populated, disabled     |
      | VAP Type                 | mandatory, auto populated, disabled     |
      | VAP Treatment            | mandatory,user input, enabled           |
      | VAP Policy Amount        | mandatory, auto populated, disabled     |
      | VAP Amount               | mandatory,auto populated, enabled       |
      | Differential AMount      | non mandatory,auto populated, enabled   |
      | Bought From              | mandatory,user input, enabled           |
      | Disburse To              | mandatory,user input, enabled           |
      | Policy Number            | non mandatory,user input, enabled       |
      | Insurance Term           | non mandatory, auto populated, disabled |
      | Cover Note Number        | non mandatory,user input, enabled       |
      | Cover Note Creation Date | non mandatory,user input, enabled       |
      | Start Date               | non mandatory,user input, enabled       |
      | Maturity Date            | non mandatory,user input, enabled       |
      | Coverage Type            | mandatory,user input, enabled           |
      | Coverage Amount          | mandatory,auto populated, enabled       |
      | Premium Amount           | mandatory,user input, enabled           |
      | Insured                  | non mandatory, user input, enabled      |
      | Quantity                 | mandatory,auto populated, enabled       |

 #FeatureID-ACAUTOCAS-207
  Scenario Outline: Auto-populate and auto-calculate logic on "<auto_populated_field>" field on VAP details after selecting VAP product of vap type "Credit Protection"
    And user is on VAP details tab
    When user selects vap product of vap type "Credit Protection" from VAP Product dropdown
    And user enters value in "<input_field>"
    Then user should be able to view values auto populated in "<auto_populated_field>" field basis "<logic>"
    Examples:
      | input_field                  | auto_populated_field | logic                                                                                       |
      | VAP Product                  | VAP Category         | configuration maintained in VAP Parameter Policy master for selected vap product            |
      | VAP Product                  | VAP type             | configuration maintained in VAP Parameter Policy master for selected vap product            |
      | VAP Treatment                | VAP Policy Amount    | configuration maintained in VAP Amount Computation Policy master for selected vap treatment |
      | VAP Treatment                | VAP Amount           | configuration maintained in VAP Amount Computation Policy master for selected vap treatment |
      | VAP Treatment                | Differential Amount  | difference between VAP Policy amount and VAP amount                                         |
      | Start Date and Maturity Date | Insurance Term       | difference between start date and maturity date                                             |
      | Quantity                     | Quantity             | default value set as 1 by system                                                            |

   #FeatureID-ACAUTOCAS-207
  Scenario Outline: Add VAP after selecting VAP product of VAp type "Credit Protection" for application at "<Var_Stage>" stage
    And user open an application at "<Var_Stage>" Stage
    And user open VAP details from "<Opening_Link>"
    When user selects vap product of vap type "Credit Protection" from VAP Product dropdown
    And user enters all mandatory details
    Then user should be able to add vap product to the application successfully
    And user should be able to view the added VAP record in the VAP grid
    Examples:
      | Var_Stage        | Opening_Link                           |
      | Lead Details     | VAP details tab under Loan Details tab |
      | Login Acceptance | VAP details tab under Loan Details tab |
      | DDE              | VAP details tab under Loan Details tab |
      | Recommendation   | Loan Information option                |
      | Credit Approval  | 3 dots option                          |

  #FeatureID-ACAUTOCAS-207
  Scenario Outline: Add VAP after selecting VAP product of VAp type "Credit Protection" for application at "<Var_Stage>" stage post "Credit Approval"
    And user has selected "Enable at Post Sanction" flag in "VAP Parameter Policy" master for vap type "Credit Protection"
    And user open an application at "<Var_Stage>" Stage
    And user open VAP details from "<Opening_Link>"
    When user selects vap product of vap type "Credit Protection" from VAP Product dropdown
    And user enters all mandatory details
    Then user should be able to add vap product to the application successfully
    And user should be able to view the added VAP record in the VAP grid
    Examples:
      | Var_Stage            | Opening_Link                           |
      | Post Approval        | VAP details tab under Loan Details tab |
      | Reconsideration      | Loan Information option                |
      | Disbursal Initiation | VAP details tab                        |

  #FeatureID-ACAUTOCAS-207
  Scenario Outline: Verify field "<FieldName>" as "<Editable>" on VAP Details after selecting VAP product of vap type "Credit Protection"
    And user open an application from application grid
    And user open VAP details page
    And user has an existing VAP product of VAP Type "Credit Protection" displayed in vap grid
    When user selects record of vap type "Credit Protection" to edit
    Then user should be able to view field "<FieldName>" on the screen in "<Editable>" mode
    Examples:
      | FieldName                | Editable     |
      | Applicant Name           | editable     |
      | VAP Category             | non editable |
      | VAP Type                 | non editable |
      | VAP Treatment            | editable     |
      | VAP Policy Amount        | non editable |
      | VAP Amount               | editable     |
      | Differential Amount      | editable     |
      | Bought From              | editable     |
      | Disburse To              | editable     |
      | Policy Number            | editable     |
      | Insurance Term           | non editable |
      | Cover Note Number        | editable     |
      | Cover Note Creation Date | editable     |
      | Start Date               | editable     |
      | Maturity Date            | editable     |
      | Coverage Type            | editable     |
      | Coverage Amount          | not editable |
      | Premium Amount           | editable     |
      | Insured                  | editable     |

  #FeatureID-ACAUTOCAS-207
  Scenario Outline: Verify field "<FieldName>" for modification "<Allowed>" after selecting VAP product of vap type "Credit Protection"
    And user open an application from application grid
    And user open VAP details page
    And user has an existing VAP product of VAP Type "Credit Protection" displayed in vap grid
    When user open the record of vap type "Credit Protection" in editable mode
    And user modifies "<FieldName>"
    And user clicks on Done button
    Then user should be "<Allowed>" to edit the field value
    And user should be able to save details successfully
    Examples:
      | FieldName                | Allowed     |
      | Applicant Name           | allowed     |
      | VAP Category             | not allowed |
      | VAP Type                 | not allowed |
      | VAP Treatment            | allowed     |
      | VAP Policy Amount        | not allowed |
      | VAP Amount               | allowed     |
      | Differential Amount      | allowed     |
      | Bought From              | allowed     |
      | Disburse To              | allowed     |
      | Policy Number            | allowed     |
      | Insurance Term           | not allowed |
      | Cover Note Number        | allowed     |
      | Cover Note Creation Date | allowed     |
      | Start Date               | allowed     |
      | Maturity Date            | allowed     |
      | Coverage Type            | allowed     |
      | Coverage Amount          | not allowed |
      | Premium Amount           | allowed     |
      | Insured                  | allowed     |

  #FeatureID-ACAUTOCAS-207
  Scenario Outline: Verify availability of field "<FieldName>" on vap details when viewed from vap grid for VAP type "Credit Protection"
    And user open an application from application grid
    And user open VAP details page
    When user clicks on VAP ID hyperlink for vap type "Credit Protection" from VAP Product grid
    Then user should be able to view field "<FieldName>" in view mode
    Examples:
      | FieldName                |
      | Applicant Name           |
      | VAP Category             |
      | VAP Type                 |
      | VAP Treatment            |
      | VAP Policy Amount        |
      | VAP Amount               |
      | Differential Amount      |
      | Bought From              |
      | Disburse To              |
      | Policy Number            |
      | Insurance Term           |
      | Cover Note Number        |
      | Cover Note Creation Date |
      | Start Date               |
      | Maturity Date            |
      | Coverage Type            |
      | Coverage Amount          |
      | Premium Amount           |
      | Insured                  |


















