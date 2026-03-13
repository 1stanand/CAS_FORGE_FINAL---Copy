@Epic-VAP
@AuthoredBy-sajja.ravikumar
#OriginalAuthor-rajni.gola
@ReviewedBy-
@ImplementedBy-
@TechReviewedBy-

@NotImplemented

Feature: Add VAP Details Common

  Background:
    Given User is logged in CAS with "<SourceDataFile>" under "<SheetName>" and "<RowNumber>"
    And user has configured VAP policy for product mapped in the application in Product master
    And user has configured VAP policy for scheme mapped in the application in Scheme master
    And user has configured VAP Parameter Policy, VAP Amount Computation Policy, VAP Payout Computation Policy, VAP Policy masters under Common Masters

  #FeatureID-ACAUTOCAS-207
  Scenario Outline: Validate authority to view VAP Details at "<Var_Stage>" Stage
    And user verifies that the logged in user has VIEW_VAP_DETAILS authority
    When user open an application at "<Var_Stage>" Stage
#    And user navigates to Loan Details tab
    Then user should be able to view VAP Details under "<Opening_Link>"
    Examples:
      | Var_Stage            | Opening_Link                           |
      | Lead Details         | VAP details tab under Loan Details tab |
      | Login Acceptance     | VAP details tab under Loan Details tab |
      | DDE                  | VAP details tab under Loan Details tab |
      | Post Approval        | VAP details tab under Loan Details tab |
      | Recommendation       | Loan Information option                |
      | Reconsideration      | Loan Information option                |
      | Credit Approval      | 3 dots option                          |
      | Disbursal Initiation | VAP details tab                        |
      | Disbursal Approval   | VAP details tab                        |

  #FeatureID-ACAUTOCAS-207
  Scenario Outline: View VAP Details tab for different <LoanType>
    And user verifies that the logged in user has VIEW_VAP_DETAILS authority
    When user open an application of "<LoanType>"
    Then user should be able to view VAP Details
    Examples:
      | LoanType                    |
      | Consumer Vehicle            |
      | Commercial Vehicle          |
      | Commercial Equipment        |
      | Personal Finance            |
      | Consumer Loans              |
      | Home Loan                   |
      | Loan Against Property       |
      | Micro Housing Finance       |
      #below products are not in scope of atdd phase-1
      | Farm Equipment              |
      | Agriculture Loan            |
      | Self Help Group (SHG)       |
      | Joint Liability Group (SHG) |
      | Kisan Credit Card (KCC)     |
      | Education Loan              |
      | FAS                         |
      | Gold Loan                   |
      | Omni Loan                   |

  #FeatureID-ACAUTOCAS-207
  Scenario Outline: View VAP Details tab at <Var_Stage> Stage
    When user open an application at "<Var_Stage>" Stage
    Then user should be able to view VAP Details under "<Opening_Link>"
    Examples:
      | Var_Stage            | Opening_Link                           |
      | Lead Details         | VAP details tab under Loan Details tab |
      | Login Acceptance     | VAP details tab under Loan Details tab |
      | DDE                  | VAP details tab under Loan Details tab |
      | Post Approval        | VAP details tab under Loan Details tab |
      | Recommendation       | Loan Information option                |
      | Reconsideration      | Loan Information option                |
      | Credit Approval      | 3 dots option                          |
      | Disbursal Initiation | VAP details tab                        |
      | Disbursal Approval   | VAP details tab                        |

  #FeatureID-ACAUTOCAS-207
  Scenario Outline: View VAP Details Page at "<Var_Stage>" Stage to check VAP product dropdown
    And user open an application at "<Var_Stage>" Stage
    When user open VAP details from "<Opening_Link>"
    Then user should be able to view option to select VAP Product
    Examples:
      | Var_Stage            | Opening_Link                           |
      | Lead Details         | VAP details tab under Loan Details tab |
      | Login Acceptance     | VAP details tab under Loan Details tab |
      | DDE                  | VAP details tab under Loan Details tab |
      | Post Approval        | VAP details tab under Loan Details tab |
      | Recommendation       | Loan Information option                |
      | Reconsideration      | Loan Information option                |
      | Credit Approval      | 3 dots option                          |
      | Disbursal Initiation | VAP details tab                        |

  #FeatureID-ACAUTOCAS-207
  Scenario Outline: View VAP Details Page at "<Var_Stage>" Stage to check VAP Grid
    And user open an application at "<Var_Stage>" Stage
    When user open VAP details from "<Opening_Link>"
    Then user should be able to view VAP grid with columns "<Table_Columns>"
    Examples:
      | Var_Stage            | Table_Columns | Opening_Link                           |
      | Lead Details         | VAP ID        | VAP details tab under Loan Details tab |
      | Lead Details         | VAP Product   | VAP details tab under Loan Details tab |
      | Lead Details         | VAP Category  | VAP details tab under Loan Details tab |
      | Lead Details         | VAP Type      | VAP details tab under Loan Details tab |
      | Lead Details         | VAP Treatment | VAP details tab under Loan Details tab |
      | Lead Details         | VAP Amount    | VAP details tab under Loan Details tab |
      | Lead Details         | Collateral ID | VAP details tab under Loan Details tab |
      | Lead Details         | Actions       | VAP details tab under Loan Details tab |
      | Login Acceptance     | VAP ID        | VAP details tab under Loan Details tab |
      | Login Acceptance     | VAP Product   | VAP details tab under Loan Details tab |
      | Login Acceptance     | VAP Category  | VAP details tab under Loan Details tab |
      | Login Acceptance     | VAP Type      | VAP details tab under Loan Details tab |
      | Login Acceptance     | VAP Treatment | VAP details tab under Loan Details tab |
      | Login Acceptance     | VAP Amount    | VAP details tab under Loan Details tab |
      | Login Acceptance     | Collateral ID | VAP details tab under Loan Details tab |
      | Login Acceptance     | Actions       | VAP details tab under Loan Details tab |
      | DDE                  | VAP ID        | VAP details tab under Loan Details tab |
      | DDE                  | VAP Product   | VAP details tab under Loan Details tab |
      | DDE                  | VAP Category  | VAP details tab under Loan Details tab |
      | DDE                  | VAP Type      | VAP details tab under Loan Details tab |
      | DDE                  | VAP Treatment | VAP details tab under Loan Details tab |
      | DDE                  | VAP Amount    | VAP details tab under Loan Details tab |
      | DDE                  | Collateral ID | VAP details tab under Loan Details tab |
      | DDE                  | Actions       | VAP details tab under Loan Details tab |
      | Recommendation       | VAP ID        | Loan Information option                |
      | Recommendation       | VAP Product   | Loan Information option                |
      | Recommendation       | VAP Category  | Loan Information option                |
      | Recommendation       | VAP Type      | Loan Information option                |
      | Recommendation       | VAP Treatment | Loan Information option                |
      | Recommendation       | VAP Amount    | Loan Information option                |
      | Recommendation       | Collateral ID | Loan Information option                |
      | Recommendation       | Actions       | Loan Information option                |
      | Credit Approval      | VAP ID        | 3 dots option                          |
      | Credit Approval      | VAP Product   | 3 dots option                          |
      | Credit Approval      | VAP Category  | 3 dots option                          |
      | Credit Approval      | VAP Type      | 3 dots option                          |
      | Credit Approval      | VAP Treatment | 3 dots option                          |
      | Credit Approval      | VAP Amount    | 3 dots option                          |
      | Credit Approval      | Collateral ID | 3 dots option                          |
      | Credit Approval      | Actions       | 3 dots option                          |
      | Reconsideration      | VAP ID        | Loan Information option                |
      | Reconsideration      | VAP Product   | Loan Information option                |
      | Reconsideration      | VAP Category  | Loan Information option                |
      | Reconsideration      | VAP Type      | Loan Information option                |
      | Reconsideration      | VAP Treatment | Loan Information option                |
      | Reconsideration      | VAP Amount    | Loan Information option                |
      | Reconsideration      | Collateral ID | Loan Information option                |
      | Reconsideration      | Actions       | Loan Information option                |
      | Disbursal Initiation | VAP ID        | VAP details tab                        |
      | Disbursal Initiation | VAP Product   | VAP details tab                        |
      | Disbursal Initiation | VAP Category  | VAP details tab                        |
      | Disbursal Initiation | VAP Type      | VAP details tab                        |
      | Disbursal Initiation | VAP Treatment | VAP details tab                        |
      | Disbursal Initiation | VAP Amount    | VAP details tab                        |
      | Disbursal Initiation | Collateral ID | VAP details tab                        |
      | Disbursal Initiation | Actions       | VAP details tab                        |
      | Post Approval        | VAP ID        | VAP details tab under Loan Details tab |
      | Post Approval        | VAP Product   | VAP details tab under Loan Details tab |
      | Post Approval        | VAP Category  | VAP details tab under Loan Details tab |
      | Post Approval        | VAP Type      | VAP details tab under Loan Details tab |
      | Post Approval        | VAP Treatment | VAP details tab under Loan Details tab |
      | Post Approval        | VAP Amount    | VAP details tab under Loan Details tab |
      | Post Approval        | Collateral ID | VAP details tab under Loan Details tab |
      | Post Approval        | Actions       | VAP details tab under Loan Details tab |
      | Disbursal Approval   | VAP ID        | VAP details tab                        |
      | Disbursal Approval   | VAP Product   | VAP details tab                        |
      | Disbursal Approval   | VAP Category  | VAP details tab                        |
      | Disbursal Approval   | VAP Type      | VAP details tab                        |
      | Disbursal Approval   | VAP Treatment | VAP details tab                        |
      | Disbursal Approval   | VAP Amount    | VAP details tab                        |
      | Disbursal Approval   | Collateral ID | VAP details tab                        |

  #FeatureID-ACAUTOCAS-207
  Scenario Outline: Validate "<Action>" action on VAP Details Page at "<Var_Stage>" Stage for vap products under VAP Grid
    And user has "<Selected>" "Enable at Post Sanction" flag in "VAP Parameter Policy" master for vap type
    And user open an application at "<Var_Stage>" Stage
    And user has already added vap product to the application
    When user open VAP details from "<Opening_Link>"
    Then user should be able to view records of added vap product under VAP grid with "<Action>"
    Examples:
      | Var_Stage            | Action | Opening_Link                           | Selected     |
      | BDE                  | Edit   | VAP details tab under Loan Details tab | selected     |
      | BDE                  | Delete | VAP details tab under Loan Details tab | selected     |
      | BDE                  | Edit   | VAP details tab under Loan Details tab | not selected |
      | BDE                  | Delete | VAP details tab under Loan Details tab | not selected |
      | Recommendation       | Edit   | Loan Information option                | selected     |
      | Recommendation       | Delete | Loan Information option                | selected     |
      | Recommendation       | Edit   | Loan Information option                | not selected |
      | Recommendation       | Delete | Loan Information option                | not selected |
      | Credit Approval      | Edit   | 3 dots option                          | selected     |
      | Credit Approval      | Delete | 3 dots option                          | selected     |
      | Credit Approval      | Edit   | 3 dots option                          | not selected |
      | Credit Approval      | Delete | 3 dots option                          | not selected |
      | Reconsideration      | Edit   | Loan Information option                | selected     |
      | Reconsideration      | Delete | Loan Information option                | selected     |
      | Post Approval        | Edit   | VAP details tab under Loan Details tab | selected     |
      | Post Approval        | Delete | VAP details tab under Loan Details tab | selected     |
      | Disbursal Initiation | Edit   | VAP details tab                        | selected     |
      | Disbursal Initiation | Delete | VAP details tab                        | selected     |

  #FeatureID-ACAUTOCAS-207
  Scenario Outline: View vap details from vap grid at "<Var_Stage>"
    And user open an application at "<Var_Stage>" Stage
    And user open VAP details from "<Opening_Link>"
    And there are existing vap products added in the application
    When user clicks on vap id of any record displayed under vap grid
    Then user should be able to view details above the grid in view mode
    Examples:
      | Var_Stage            | Opening_Link                           |
      | Lead Details         | VAP details tab under Loan Details tab |
      | Login Acceptance     | VAP details tab under Loan Details tab |
      | DDE                  | VAP details tab under Loan Details tab |
      | Post Approval        | VAP details tab under Loan Details tab |
      | Recommendation       | Loan Information option                |
      | Reconsideration      | Loan Information option                |
      | Credit Approval      | 3 dots option                          |
      | Disbursal Initiation | VAP details tab                        |
      | Disbursal Approval   | VAP details tab                        |

  #FeatureID-ACAUTOCAS-207
  Scenario Outline: View vap details from vap grid of vap type "<VAP_Type>"
    And user open an application from application grid
    And user open VAP details page
    And there are existing vap product added in the application for vap type "<VAP_Type>"
    When user clicks on vap id of record with vap type "<VAP_Type>" displayed under vap grid
    Then user should be able to view details above the grid in view mode
    Examples:
      | VAP_Type                   |
      | Asset Insurance            |
      | Life Insurance             |
      | Credit Protection          |
      | Payment Protection         |
      | GAP Insurance              |
      | Crop Insurance             |
      | Mortgage Guarantee         |
      | Extended Warranty          |
      | Service Maintenance        |
      | External Maintenance       |
      | Tyre and Wheel             |
      | Home Furnishing            |
      | Vehicle Accessories        |
      | Implements and Attachments |
      | GPS                        |
      | Fees and Charges           |

  #FeatureID-ACAUTOCAS-207
  Scenario Outline: Validate VAP Product field on VAP Details page
    And user is on VAP details page
    When user clicks on VAP Product dropdown
    Then user should be able to view all the active VAP Parameter Policy names mapped with a "<condition>" of a selected application
    Examples:
      | condition         |
      | product or scheme |

 #FeatureID-ACAUTOCAS-207
  Scenario Outline: Add single VAP product at "<Var_Stage>" Stage
    And user open an application at "<Var_Stage>" Stage
    And user open VAP details from "<Opening_Link>"
    When user selects VAP Product from the dropdwon
    And user enters all mandatory details
    Then user should be able to save Vap details successfully
    Examples:
      | Var_Stage            | Opening_Link                           |
      | Lead Details         | VAP details tab under Loan Details tab |
      | Login Acceptance     | VAP details tab under Loan Details tab |
      | DDE                  | VAP details tab under Loan Details tab |
      | Post Approval        | VAP details tab under Loan Details tab |
      | Recommendation       | Loan Information option                |
      | Reconsideration      | Loan Information option                |
      | Credit Approval      | 3 dots option                          |
      | Disbursal Initiation | VAP details tab                        |

  #FeatureID-ACAUTOCAS-207
  Scenario Outline: Add multiple VAP product at "<Var_Stage>" Stage
    And user open an application at "<Var_Stage>" Stage
    And user open VAP details from "<Opening_Link>"
    And user has already added a VAP product as displayed in the VAP grid
    When user selects another VAP Product from the dropdwon
    And user enters all mandatory details
    Then user should be able to add another vap product to the application successfully
    And user should be able to view 2 records in the VAP grid
    Examples:
      | Var_Stage            | Opening_Link                           |
      | Lead Details         | VAP details tab under Loan Details tab |
      | Login Acceptance     | VAP details tab under Loan Details tab |
      | DDE                  | VAP details tab under Loan Details tab |
      | Post Approval        | VAP details tab under Loan Details tab |
      | Recommendation       | Loan Information option                |
      | Reconsideration      | Loan Information option                |
      | Credit Approval      | 3 dots option                          |
      | Disbursal Initiation | VAP details tab                        |

  #FeatureID-ACAUTOCAS-207
  Scenario Outline: Add VAP product with more than one quantity at "<Var_Stage>" Stage
    And user open an application at "<Var_Stage>" Stage
    And user open VAP details from "<Opening_Link>"
    When user selects VAP Product from the dropdwon
    And user enters all mandatory details
    And user enters value greater than 1 in quantity field
    Then user should be able to add vap product as number of times as mentioned in the quantity field
    And user should be able to view number of records as the number entered in the quantity field in VAP grid
    Examples:
      | Var_Stage            | Opening_Link                           |
      | Lead Details         | VAP details tab under Loan Details tab |
      | Login Acceptance     | VAP details tab under Loan Details tab |
      | DDE                  | VAP details tab under Loan Details tab |
      | Post Approval        | VAP details tab under Loan Details tab |
      | Recommendation       | Loan Information option                |
      | Reconsideration      | Loan Information option                |
      | Credit Approval      | 3 dots option                          |
      | Disbursal Initiation | VAP details tab                        |

  #FeatureID-ACAUTOCAS-207
  Scenario Outline: Add VAP product of same VAP Type at "<Var_Stage>" Stage
    And user open an application at "<Var_Stage>" Stage
    And user open VAP details from "<Opening_Link>"
    And user has already added a VAP product as displayed in the VAP grid
    When user selects another VAP Product of same vap type from the dropdwon
    And user enters all mandatory details
    Then user should be able to add vap product to the application successfully
    And user should be able to view 2 records in the VAP grid
    Examples:
      | Var_Stage            | Opening_Link                           |
      | Lead Details         | VAP details tab under Loan Details tab |
      | Login Acceptance     | VAP details tab under Loan Details tab |
      | DDE                  | VAP details tab under Loan Details tab |
      | Post Approval        | VAP details tab under Loan Details tab |
      | Recommendation       | Loan Information option                |
      | Reconsideration      | Loan Information option                |
      | Credit Approval      | 3 dots option                          |
      | Disbursal Initiation | VAP details tab                        |

  #FeatureID-ACAUTOCAS-207
  Scenario Outline: Add same VAP product at "<Var_Stage>" Stage
    And user open an application at "<Var_Stage>" Stage
    And user open VAP details from "<Opening_Link>"
    And user has already added a VAP product as displayed in the VAP grid
    When user selects same VAP Product from the dropdwon
    And user enters all mandatory details
    Then user should be able to add vap product to the application successfully
    And user should be able to view 2 records in the VAP grid for same VAP product
    Examples:
      | Var_Stage            | Opening_Link                           |
      | Lead Details         | VAP details tab under Loan Details tab |
      | Login Acceptance     | VAP details tab under Loan Details tab |
      | DDE                  | VAP details tab under Loan Details tab |
      | Post Approval        | VAP details tab under Loan Details tab |
      | Recommendation       | Loan Information option                |
      | Reconsideration      | Loan Information option                |
      | Credit Approval      | 3 dots option                          |
      | Disbursal Initiation | VAP details tab                        |

  #FeatureID-ACAUTOCAS-207
  Scenario Outline: Edit an existing VAP details from VAP Grid at "<Var_Stage>" Stage
    And user open an application at "<Var_Stage>" Stage
    And user open VAP details from "<Opening_Link>"
    And user has already added VAP product as displayed in the VAP grid
    When user clicks on edit option
    Then user should be able to view vap details screen
    And user should be able to edit details as required
    Examples:
      | Var_Stage            | Opening_Link                           |
      | Lead Details         | VAP details tab under Loan Details tab |
      | Login Acceptance     | VAP details tab under Loan Details tab |
      | DDE                  | VAP details tab under Loan Details tab |
      | Post Approval        | VAP details tab under Loan Details tab |
      | Recommendation       | Loan Information option                |
      | Reconsideration      | Loan Information option                |
      | Credit Approval      | 3 dots option                          |
      | Disbursal Initiation | VAP details tab                        |

  #FeatureID-ACAUTOCAS-207
  Scenario Outline: Delete an existing VAP details from VAP Grid at "<Var_Stage>" Stage
    And user open an application at "<Var_Stage>" Stage
    And user open VAP details from "<Opening_Link>"
    And user has already added VAP product as displayed in the VAP grid
    When user clicks on delete option
    Then user should be able to delete vap record successfully
    Examples:
      | Var_Stage            | Opening_Link                           |
      | Lead Details         | VAP details tab under Loan Details tab |
      | Login Acceptance     | VAP details tab under Loan Details tab |
      | DDE                  | VAP details tab under Loan Details tab |
      | Post Approval        | VAP details tab under Loan Details tab |
      | Recommendation       | Loan Information option                |
      | Reconsideration      | Loan Information option                |
      | Credit Approval      | 3 dots option                          |
      | Disbursal Initiation | VAP details tab                        |

  #FeatureID-ACAUTOCAS-207
  Scenario Outline: Impact of changing application scheme at "<Var_Stage>" Stage to a non-VAP Scheme
    And user open an application at "<Var_Stage>" Stage
    And user has selected "<flag>" flag as true in product master against VAP Policy
    And user goes to "Sourcing Details" section
    When user modifies the scheme of the application to non vap scheme
    Then user should be able to view that all vap products that are already added shall get deleted
    Examples:
      | Var_Stage       | flag     |
      | DDE             | override |
      | Recommendation  | override |
      | Reconsideration | override |
      | Credit Approval | override |

  #FeatureID-ACAUTOCAS-207
  Scenario Outline: Impact of changing application scheme at "<Var_Stage>" Stage to another VAP Scheme
    And user open an application at "<Var_Stage>" Stage
    And user has selected "<flag>" flag as true in product master against VAP Policy
    And user goes to "Sourcing Details" section
    When user modifies the scheme of the application to another vap scheme
    Then user should be able to view that all vap products that are already added shall get deleted
    Examples:
      | Var_Stage       | flag     |
      | DDE             | override |
      | Recommendation  | override |
      | Reconsideration | override |
      | Credit Approval | override |

  #FeatureID-ACAUTOCAS-207
  Scenario Outline: Saving VAP Product of VAP type "<VAP_Type>" in an application at "<Var_Stage>" Stage
    And user open an application at "<Var_Stage>" Stage
    And user open VAP details from "<Opening_Link>"
    And user adds vap product of vap type "<VAP_Type>" to the application
    And added vap products are visible under vap grid
    When user clicks on "save" option
    Then user should be able to save added vap products successfully
    Examples:
      | Var_Stage       | VAP_Type                   | Opening_Link                           |
      | DDE             | Asset Insurance            | VAP details tab under Loan Details tab |
      | DDE             | Life Insurance             | VAP details tab under Loan Details tab |
      | DDE             | Credit Protection          | VAP details tab under Loan Details tab |
      | DDE             | Payment Protection         | VAP details tab under Loan Details tab |
      | DDE             | GAP Insurance              | VAP details tab under Loan Details tab |
      | DDE             | Crop Insurance             | VAP details tab under Loan Details tab |
      | DDE             | Mortgage Guarantee         | VAP details tab under Loan Details tab |
      | DDE             | Extended Warranty          | VAP details tab under Loan Details tab |
      | DDE             | Service Maintenance        | VAP details tab under Loan Details tab |
      | DDE             | External Maintenance       | VAP details tab under Loan Details tab |
      | DDE             | Tyre and Wheel             | VAP details tab under Loan Details tab |
      | DDE             | Home Furnishing            | VAP details tab under Loan Details tab |
      | DDE             | Vehicle Accessories        | VAP details tab under Loan Details tab |
      | DDE             | Implements and Attachments | VAP details tab under Loan Details tab |
      | DDE             | GPS                        | VAP details tab under Loan Details tab |
      | DDE             | Fees and Charges           | VAP details tab under Loan Details tab |
      | Recommendation  | Asset Insurance            | Loan Information option                |
      | Recommendation  | Life Insurance             | Loan Information option                |
      | Recommendation  | Credit Protection          | Loan Information option                |
      | Recommendation  | Payment Protection         | Loan Information option                |
      | Recommendation  | GAP Insurance              | Loan Information option                |
      | Recommendation  | Crop Insurance             | Loan Information option                |
      | Recommendation  | Mortgage Guarantee         | Loan Information option                |
      | Recommendation  | Extended Warranty          | Loan Information option                |
      | Recommendation  | Service Maintenance        | Loan Information option                |
      | Recommendation  | External Maintenance       | Loan Information option                |
      | Recommendation  | Tyre and Wheel             | Loan Information option                |
      | Recommendation  | Home Furnishing            | Loan Information option                |
      | Recommendation  | Vehicle Accessories        | Loan Information option                |
      | Recommendation  | Implements and Attachments | Loan Information option                |
      | Recommendation  | GPS                        | Loan Information option                |
      | Recommendation  | Fees and Charges           | Loan Information option                |
      | Credit Approval | Asset Insurance            | 3 dots option                          |
      | Credit Approval | Life Insurance             | 3 dots option                          |
      | Credit Approval | Credit Protection          | 3 dots option                          |
      | Credit Approval | Payment Protection         | 3 dots option                          |
      | Credit Approval | GAP Insurance              | 3 dots option                          |
      | Credit Approval | Crop Insurance             | 3 dots option                          |
      | Credit Approval | Mortgage Guarantee         | 3 dots option                          |
      | Credit Approval | Extended Warranty          | 3 dots option                          |
      | Credit Approval | Service Maintenance        | 3 dots option                          |
      | Credit Approval | External Maintenance       | 3 dots option                          |
      | Credit Approval | Tyre and Wheel             | 3 dots option                          |
      | Credit Approval | Home Furnishing            | 3 dots option                          |
      | Credit Approval | Vehicle Accessories        | 3 dots option                          |
      | Credit Approval | Implements and Attachments | 3 dots option                          |
      | Credit Approval | GPS                        | 3 dots option                          |
      | Credit Approval | Fees and Charges           | 3 dots option                          |

  #FeatureID-ACAUTOCAS-207
  Scenario Outline: Saving VAP Product of vap type "<VAP_Type>" in an application at "<Var_Stage>" Stage post "Credit Approval"
    And user has selected "Enable at Post Sanction" flag in "VAP Parameter Policy" master for vap type "<VAP_Type>"
    And user open an application at "<Var_Stage>" Stage
    And user open VAP details from "<Opening_Link>"
    And user adds vap product of vap type "<VAP_Type>" to the application
    And added vap products are visible under vap grid
    When user clicks on "save" option
    Then user should be able to save added vap products successfully
    Examples:
      | Var_Stage            | VAP_Type                   | Opening_Link                           |
      | Reconsideration      | Asset Insurance            | Loan Information option                |
      | Reconsideration      | Life Insurance             | Loan Information option                |
      | Reconsideration      | Credit Protection          | Loan Information option                |
      | Reconsideration      | Payment Protection         | Loan Information option                |
      | Reconsideration      | GAP Insurance              | Loan Information option                |
      | Reconsideration      | Crop Insurance             | Loan Information option                |
      | Reconsideration      | Mortgage Guarantee         | Loan Information option                |
      | Reconsideration      | Extended Warranty          | Loan Information option                |
      | Reconsideration      | Service Maintenance        | Loan Information option                |
      | Reconsideration      | External Maintenance       | Loan Information option                |
      | Reconsideration      | Tyre and Wheel             | Loan Information option                |
      | Reconsideration      | Home Furnishing            | Loan Information option                |
      | Reconsideration      | Vehicle Accessories        | Loan Information option                |
      | Reconsideration      | Implements and Attachments | Loan Information option                |
      | Reconsideration      | GPS                        | Loan Information option                |
      | Reconsideration      | Fees and Charges           | Loan Information option                |
      | Disbursal Initiation | Asset Insurance            | VAP details tab                        |
      | Disbursal Initiation | Life Insurance             | VAP details tab                        |
      | Disbursal Initiation | Credit Protection          | VAP details tab                        |
      | Disbursal Initiation | Payment Protection         | VAP details tab                        |
      | Disbursal Initiation | GAP Insurance              | VAP details tab                        |
      | Disbursal Initiation | Crop Insurance             | VAP details tab                        |
      | Disbursal Initiation | Mortgage Guarantee         | VAP details tab                        |
      | Disbursal Initiation | Extended Warranty          | VAP details tab                        |
      | Disbursal Initiation | Service Maintenance        | VAP details tab                        |
      | Disbursal Initiation | External Maintenance       | VAP details tab                        |
      | Disbursal Initiation | Tyre and Wheel             | VAP details tab                        |
      | Disbursal Initiation | Home Furnishing            | VAP details tab                        |
      | Disbursal Initiation | Vehicle Accessories        | VAP details tab                        |
      | Disbursal Initiation | Implements and Attachments | VAP details tab                        |
      | Disbursal Initiation | GPS                        | VAP details tab                        |
      | Disbursal Initiation | Fees and Charges           | VAP details tab                        |
      | Post Approval        | Asset Insurance            | VAP details tab under Loan Details tab |
      | Post Approval        | Life Insurance             | VAP details tab under Loan Details tab |
      | Post Approval        | Credit Protection          | VAP details tab under Loan Details tab |
      | Post Approval        | Payment Protection         | VAP details tab under Loan Details tab |
      | Post Approval        | GAP Insurance              | VAP details tab under Loan Details tab |
      | Post Approval        | Crop Insurance             | VAP details tab under Loan Details tab |
      | Post Approval        | Mortgage Guarantee         | VAP details tab under Loan Details tab |
      | Post Approval        | Extended Warranty          | VAP details tab under Loan Details tab |
      | Post Approval        | Service Maintenance        | VAP details tab under Loan Details tab |
      | Post Approval        | External Maintenance       | VAP details tab under Loan Details tab |
      | Post Approval        | Tyre and Wheel             | VAP details tab under Loan Details tab |
      | Post Approval        | Home Furnishing            | VAP details tab under Loan Details tab |
      | Post Approval        | Vehicle Accessories        | VAP details tab under Loan Details tab |
      | Post Approval        | Implements and Attachments | VAP details tab under Loan Details tab |
      | Post Approval        | GPS                        | VAP details tab under Loan Details tab |
      | Post Approval        | Fees and Charges           | VAP details tab under Loan Details tab |

  #FeatureID-ACAUTOCAS-207
  Scenario Outline: Saving VAP Product of vap type "<VAP_Type>" in an application at "<Var_Stage>" Stage and moving to next tab simultaneously
    And user open an application at "<Var_Stage>" Stage
    And user open VAP details from "<Opening_Link>"
    And user adds vap product of vap type "<VAP_Type>" to the application
    And added vap products are visible under vap grid
    When user clicks on "save and next" option
    Then user should be able to save added vap products successfully
    And user should be able to view next tab page of the piano bar loaded on the screen
    Examples:
      | Var_Stage       | VAP_Type                   | Opening_Link                           |
      | DDE             | Asset Insurance            | VAP details tab under Loan Details tab |
      | DDE             | Life Insurance             | VAP details tab under Loan Details tab |
      | DDE             | Credit Protection          | VAP details tab under Loan Details tab |
      | DDE             | Payment Protection         | VAP details tab under Loan Details tab |
      | DDE             | GAP Insurance              | VAP details tab under Loan Details tab |
      | DDE             | Crop Insurance             | VAP details tab under Loan Details tab |
      | DDE             | Mortgage Guarantee         | VAP details tab under Loan Details tab |
      | DDE             | Extended Warranty          | VAP details tab under Loan Details tab |
      | DDE             | Service Maintenance        | VAP details tab under Loan Details tab |
      | DDE             | External Maintenance       | VAP details tab under Loan Details tab |
      | DDE             | Tyre and Wheel             | VAP details tab under Loan Details tab |
      | DDE             | Home Furnishing            | VAP details tab under Loan Details tab |
      | DDE             | Vehicle Accessories        | VAP details tab under Loan Details tab |
      | DDE             | Implements and Attachments | VAP details tab under Loan Details tab |
      | DDE             | GPS                        | VAP details tab under Loan Details tab |
      | DDE             | Fees and Charges           | VAP details tab under Loan Details tab |
      | Recommendation  | Asset Insurance            | Loan Information option                |
      | Recommendation  | Life Insurance             | Loan Information option                |
      | Recommendation  | Credit Protection          | Loan Information option                |
      | Recommendation  | Payment Protection         | Loan Information option                |
      | Recommendation  | GAP Insurance              | Loan Information option                |
      | Recommendation  | Crop Insurance             | Loan Information option                |
      | Recommendation  | Mortgage Guarantee         | Loan Information option                |
      | Recommendation  | Extended Warranty          | Loan Information option                |
      | Recommendation  | Service Maintenance        | Loan Information option                |
      | Recommendation  | External Maintenance       | Loan Information option                |
      | Recommendation  | Tyre and Wheel             | Loan Information option                |
      | Recommendation  | Home Furnishing            | Loan Information option                |
      | Recommendation  | Vehicle Accessories        | Loan Information option                |
      | Recommendation  | Implements and Attachments | Loan Information option                |
      | Recommendation  | GPS                        | Loan Information option                |
      | Recommendation  | Fees and Charges           | Loan Information option                |
      | Credit Approval | Asset Insurance            | 3 dots option                          |
      | Credit Approval | Life Insurance             | 3 dots option                          |
      | Credit Approval | Credit Protection          | 3 dots option                          |
      | Credit Approval | Payment Protection         | 3 dots option                          |
      | Credit Approval | GAP Insurance              | 3 dots option                          |
      | Credit Approval | Crop Insurance             | 3 dots option                          |
      | Credit Approval | Mortgage Guarantee         | 3 dots option                          |
      | Credit Approval | Extended Warranty          | 3 dots option                          |
      | Credit Approval | Service Maintenance        | 3 dots option                          |
      | Credit Approval | External Maintenance       | 3 dots option                          |
      | Credit Approval | Tyre and Wheel             | 3 dots option                          |
      | Credit Approval | Home Furnishing            | 3 dots option                          |
      | Credit Approval | Vehicle Accessories        | 3 dots option                          |
      | Credit Approval | Implements and Attachments | 3 dots option                          |
      | Credit Approval | GPS                        | 3 dots option                          |
      | Credit Approval | Fees and Charges           | 3 dots option                          |

  #FeatureID-ACAUTOCAS-207
  Scenario Outline: Saving VAP Product of vap type "<VAP_Type>" in an application at "<Var_Stage>" Stage and moving to next tab simultaneously post "Credit Approval"
    And user has selected "Enable at Post Sanction" flag in "VAP Parameter Policy" master for vap type "<VAP_Type>"
    And user open an application at "<Var_Stage>" Stage
    And user open VAP details from "<Opening_Link>"
    And user adds vap product of vap type "<VAP_Type>" to the application
    And added vap products are visible under vap grid
    When user clicks on "save and next" option
    Then user should be able to save added vap products successfully
    And user should be able to view next tab page of the piano bar loaded on the screen
    Examples:
      | Var_Stage            | VAP_Type                   | Opening_Link                           |
      | Reconsideration      | Asset Insurance            | Loan Information option                |
      | Reconsideration      | Life Insurance             | Loan Information option                |
      | Reconsideration      | Credit Protection          | Loan Information option                |
      | Reconsideration      | Payment Protection         | Loan Information option                |
      | Reconsideration      | GAP Insurance              | Loan Information option                |
      | Reconsideration      | Crop Insurance             | Loan Information option                |
      | Reconsideration      | Mortgage Guarantee         | Loan Information option                |
      | Reconsideration      | Extended Warranty          | Loan Information option                |
      | Reconsideration      | Service Maintenance        | Loan Information option                |
      | Reconsideration      | External Maintenance       | Loan Information option                |
      | Reconsideration      | Tyre and Wheel             | Loan Information option                |
      | Reconsideration      | Home Furnishing            | Loan Information option                |
      | Reconsideration      | Vehicle Accessories        | Loan Information option                |
      | Reconsideration      | Implements and Attachments | Loan Information option                |
      | Reconsideration      | GPS                        | Loan Information option                |
      | Reconsideration      | Fees and Charges           | Loan Information option                |
      | Disbursal Initiation | Asset Insurance            | VAP details tab                        |
      | Disbursal Initiation | Life Insurance             | VAP details tab                        |
      | Disbursal Initiation | Credit Protection          | VAP details tab                        |
      | Disbursal Initiation | Payment Protection         | VAP details tab                        |
      | Disbursal Initiation | GAP Insurance              | VAP details tab                        |
      | Disbursal Initiation | Crop Insurance             | VAP details tab                        |
      | Disbursal Initiation | Mortgage Guarantee         | VAP details tab                        |
      | Disbursal Initiation | Extended Warranty          | VAP details tab                        |
      | Disbursal Initiation | Service Maintenance        | VAP details tab                        |
      | Disbursal Initiation | External Maintenance       | VAP details tab                        |
      | Disbursal Initiation | Tyre and Wheel             | VAP details tab                        |
      | Disbursal Initiation | Home Furnishing            | VAP details tab                        |
      | Disbursal Initiation | Vehicle Accessories        | VAP details tab                        |
      | Disbursal Initiation | Implements and Attachments | VAP details tab                        |
      | Disbursal Initiation | GPS                        | VAP details tab                        |
      | Disbursal Initiation | Fees and Charges           | VAP details tab                        |
      | Post Approval        | Asset Insurance            | VAP details tab under Loan Details tab |
      | Post Approval        | Life Insurance             | VAP details tab under Loan Details tab |
      | Post Approval        | Credit Protection          | VAP details tab under Loan Details tab |
      | Post Approval        | Payment Protection         | VAP details tab under Loan Details tab |
      | Post Approval        | GAP Insurance              | VAP details tab under Loan Details tab |
      | Post Approval        | Crop Insurance             | VAP details tab under Loan Details tab |
      | Post Approval        | Mortgage Guarantee         | VAP details tab under Loan Details tab |
      | Post Approval        | Extended Warranty          | VAP details tab under Loan Details tab |
      | Post Approval        | Service Maintenance        | VAP details tab under Loan Details tab |
      | Post Approval        | External Maintenance       | VAP details tab under Loan Details tab |
      | Post Approval        | Tyre and Wheel             | VAP details tab under Loan Details tab |
      | Post Approval        | Home Furnishing            | VAP details tab under Loan Details tab |
      | Post Approval        | Vehicle Accessories        | VAP details tab under Loan Details tab |
      | Post Approval        | Implements and Attachments | VAP details tab under Loan Details tab |
      | Post Approval        | GPS                        | VAP details tab under Loan Details tab |
      | Post Approval        | Fees and Charges           | VAP details tab under Loan Details tab |

  ################# Field level validations #####################################
  #FeatureID-ACAUTOCAS-207
  Scenario Outline: Display of additional fields on selection of vap treatment as financed at "<Var_Stage>" Stage
    And user open an application at "<Var_Stage>" Stage
    And user open VAP details from "<Opening_Link>"
    When user selects vap product from VAP Product dropdown
    And user selects vap treatment as financed
    Then user should be able to view additional field "<FieldName>"
    Examples:
      | Var_Stage            | FieldName   | Opening_Link                           |
      | Lead Details         | Charge Code | VAP details tab under Loan Details tab |
      | Login Acceptance     | Charge Code | VAP details tab under Loan Details tab |
      | DDE                  | Charge Code | VAP details tab under Loan Details tab |
      | Post Approval        | Charge Code | VAP details tab under Loan Details tab |
      | Recommendation       | Charge Code | Loan Information option                |
      | Reconsideration      | Charge Code | Loan Information option                |
      | Credit Approval      | Charge Code | 3 dots option                          |
      | Disbursal Initiation | Charge Code | VAP details tab                        |

  #FeatureID-ACAUTOCAS-207
  Scenario Outline: Validate VAP Treatment dropdown for availability of value "<Options>" for application at "<Var_Stage>" Stage
    And user open an application at "<Var_Stage>" Stage
    And user open VAP details from "<Opening_Link>"
    When user selects vap product from VAP Product dropdown where all vap treatments are configured in vap amount computation policy master
    And user clicks on VAP treatment LOV
    Then user should be able to view values "<Options>"
    Examples:
      | Var_Stage            | Options            | Opening_Link                           |
      | Lead Details         | Financed           | VAP details tab under Loan Details tab |
      | Lead Details         | Revenue            | VAP details tab under Loan Details tab |
      | Lead Details         | Upfront            | VAP details tab under Loan Details tab |
      | Lead Details         | Collectible        | VAP details tab under Loan Details tab |
      | Lead Details         | Additional Funding | VAP details tab under Loan Details tab |
      | Login Acceptance     | Financed           | VAP details tab under Loan Details tab |
      | Login Acceptance     | Revenue            | VAP details tab under Loan Details tab |
      | Login Acceptance     | Upfront            | VAP details tab under Loan Details tab |
      | Login Acceptance     | Collectible        | VAP details tab under Loan Details tab |
      | Login Acceptance     | Additional Funding | VAP details tab under Loan Details tab |
      | DDE                  | Financed           | VAP details tab under Loan Details tab |
      | DDE                  | Revenue            | VAP details tab under Loan Details tab |
      | DDE                  | Upfront            | VAP details tab under Loan Details tab |
      | DDE                  | Collectible        | VAP details tab under Loan Details tab |
      | DDE                  | Additional Funding | VAP details tab under Loan Details tab |
      | Recommendation       | Financed           | Loan Information option                |
      | Recommendation       | Revenue            | Loan Information option                |
      | Recommendation       | Upfront            | Loan Information option                |
      | Recommendation       | Collectible        | Loan Information option                |
      | Recommendation       | Additional Funding | Loan Information option                |
      | Credit Approval      | Financed           | 3 dots option                          |
      | Credit Approval      | Revenue            | 3 dots option                          |
      | Credit Approval      | Upfront            | 3 dots option                          |
      | Credit Approval      | Collectible        | 3 dots option                          |
      | Credit Approval      | Additional Funding | 3 dots option                          |
      | Reconsideration      | Financed           | Loan Information option                |
      | Reconsideration      | Revenue            | Loan Information option                |
      | Reconsideration      | Upfront            | Loan Information option                |
      | Reconsideration      | Collectible        | Loan Information option                |
      | Reconsideration      | Additional Funding | Loan Information option                |
      | Disbursal Initiation | Financed           | VAP details tab                        |
      | Disbursal Initiation | Revenue            | VAP details tab                        |
      | Disbursal Initiation | Upfront            | VAP details tab                        |
      | Disbursal Initiation | Collectible        | VAP details tab                        |
      | Disbursal Initiation | Additional Funding | VAP details tab                        |
      | Post Approval        | Financed           | VAP details tab under Loan Details tab |
      | Post Approval        | Revenue            | VAP details tab under Loan Details tab |
      | Post Approval        | Upfront            | VAP details tab under Loan Details tab |
      | Post Approval        | Collectible        | VAP details tab under Loan Details tab |
      | Post Approval        | Additional Funding | VAP details tab under Loan Details tab |

  #FeatureID-ACAUTOCAS-207
  Scenario Outline: Validate VAP Product dropdown at "<Var_Stage>" Stage for vap type "<VAP_Type>"
    And user open an application at "<Var_Stage>" Stage
    And user has mapped vap policy with the application that has vap parameter policy type of vap type "<VAP_Type>"
    And user open VAP details from "<Opening_Link>"
    When user selects vap product from VAP Product dropdown
    Then user should be able to view active vap products in the dropdown as maintained in "VAP Parameter Policy" master with vap type "<VAP_Type>"
    Examples:
      | Var_Stage       | VAP_Type                   | Opening_Link                           |
      | DDE             | Asset Insurance            | VAP details tab under Loan Details tab |
      | DDE             | Life Insurance             | VAP details tab under Loan Details tab |
      | DDE             | Credit Protection          | VAP details tab under Loan Details tab |
      | DDE             | Payment Protection         | VAP details tab under Loan Details tab |
      | DDE             | GAP Insurance              | VAP details tab under Loan Details tab |
      | DDE             | Crop Insurance             | VAP details tab under Loan Details tab |
      | DDE             | Mortgage Guarantee         | VAP details tab under Loan Details tab |
      | DDE             | Extended Warranty          | VAP details tab under Loan Details tab |
      | DDE             | Service Maintenance        | VAP details tab under Loan Details tab |
      | DDE             | External Maintenance       | VAP details tab under Loan Details tab |
      | DDE             | Tyre and Wheel             | VAP details tab under Loan Details tab |
      | DDE             | Home Furnishing            | VAP details tab under Loan Details tab |
      | DDE             | Vehicle Accessories        | VAP details tab under Loan Details tab |
      | DDE             | Implements and Attachments | VAP details tab under Loan Details tab |
      | DDE             | GPS                        | VAP details tab under Loan Details tab |
      | DDE             | Fees and Charges           | VAP details tab under Loan Details tab |
      | Recommendation  | Asset Insurance            | Loan Information option                |
      | Recommendation  | Life Insurance             | Loan Information option                |
      | Recommendation  | Credit Protection          | Loan Information option                |
      | Recommendation  | Payment Protection         | Loan Information option                |
      | Recommendation  | GAP Insurance              | Loan Information option                |
      | Recommendation  | Crop Insurance             | Loan Information option                |
      | Recommendation  | Mortgage Guarantee         | Loan Information option                |
      | Recommendation  | Extended Warranty          | Loan Information option                |
      | Recommendation  | Service Maintenance        | Loan Information option                |
      | Recommendation  | External Maintenance       | Loan Information option                |
      | Recommendation  | Tyre and Wheel             | Loan Information option                |
      | Recommendation  | Home Furnishing            | Loan Information option                |
      | Recommendation  | Vehicle Accessories        | Loan Information option                |
      | Recommendation  | Implements and Attachments | Loan Information option                |
      | Recommendation  | GPS                        | Loan Information option                |
      | Recommendation  | Fees and Charges           | Loan Information option                |
      | Credit Approval | Asset Insurance            | 3 dots option                          |
      | Credit Approval | Life Insurance             | 3 dots option                          |
      | Credit Approval | Credit Protection          | 3 dots option                          |
      | Credit Approval | Payment Protection         | 3 dots option                          |
      | Credit Approval | GAP Insurance              | 3 dots option                          |
      | Credit Approval | Crop Insurance             | 3 dots option                          |
      | Credit Approval | Mortgage Guarantee         | 3 dots option                          |
      | Credit Approval | Extended Warranty          | 3 dots option                          |
      | Credit Approval | Service Maintenance        | 3 dots option                          |
      | Credit Approval | External Maintenance       | 3 dots option                          |
      | Credit Approval | Tyre and Wheel             | 3 dots option                          |
      | Credit Approval | Home Furnishing            | 3 dots option                          |
      | Credit Approval | Vehicle Accessories        | 3 dots option                          |
      | Credit Approval | Implements and Attachments | 3 dots option                          |
      | Credit Approval | GPS                        | 3 dots option                          |
      | Credit Approval | Fees and Charges           | 3 dots option                          |

  #FeatureID-ACAUTOCAS-207
  Scenario Outline: Validate VAP Product dropdown for vap type "<VAP_Type>" at "<Var_Stage>" stage post "Credit Approval" stage
    And user has selected "Enable at Post Sanction" flag in "VAP Parameter Policy" master for vap type "<VAP_Type>"
    And user open an application at "<Var_Stage>" Stage
    And user has mapped vap policy with the application that has vap parameter policy type of vap type "<VAP_Type>"
    And user open VAP details from "<Opening_Link>"
    When user selects vap product from VAP Product dropdown
    Then user should be able to view active vap products in the dropdown as maintained in "VAP Parameter Policy" master with vap type "<VAP_Type>"
    Examples:
      | Var_Stage            | VAP_Type                   | Opening_Link                           |
      | Reconsideration      | Asset Insurance            | Loan Information option                |
      | Reconsideration      | Life Insurance             | Loan Information option                |
      | Reconsideration      | Credit Protection          | Loan Information option                |
      | Reconsideration      | Payment Protection         | Loan Information option                |
      | Reconsideration      | GAP Insurance              | Loan Information option                |
      | Reconsideration      | Crop Insurance             | Loan Information option                |
      | Reconsideration      | Mortgage Guarantee         | Loan Information option                |
      | Reconsideration      | Extended Warranty          | Loan Information option                |
      | Reconsideration      | Service Maintenance        | Loan Information option                |
      | Reconsideration      | External Maintenance       | Loan Information option                |
      | Reconsideration      | Tyre and Wheel             | Loan Information option                |
      | Reconsideration      | Home Furnishing            | Loan Information option                |
      | Reconsideration      | Vehicle Accessories        | Loan Information option                |
      | Reconsideration      | Implements and Attachments | Loan Information option                |
      | Reconsideration      | GPS                        | Loan Information option                |
      | Reconsideration      | Fees and Charges           | Loan Information option                |
      | Disbursal Initiation | Asset Insurance            | VAP details tab                        |
      | Disbursal Initiation | Life Insurance             | VAP details tab                        |
      | Disbursal Initiation | Credit Protection          | VAP details tab                        |
      | Disbursal Initiation | Payment Protection         | VAP details tab                        |
      | Disbursal Initiation | GAP Insurance              | VAP details tab                        |
      | Disbursal Initiation | Crop Insurance             | VAP details tab                        |
      | Disbursal Initiation | Mortgage Guarantee         | VAP details tab                        |
      | Disbursal Initiation | Extended Warranty          | VAP details tab                        |
      | Disbursal Initiation | Service Maintenance        | VAP details tab                        |
      | Disbursal Initiation | External Maintenance       | VAP details tab                        |
      | Disbursal Initiation | Tyre and Wheel             | VAP details tab                        |
      | Disbursal Initiation | Home Furnishing            | VAP details tab                        |
      | Disbursal Initiation | Vehicle Accessories        | VAP details tab                        |
      | Disbursal Initiation | Implements and Attachments | VAP details tab                        |
      | Disbursal Initiation | GPS                        | VAP details tab                        |
      | Disbursal Initiation | Fees and Charges           | VAP details tab                        |
      | Post Approval        | Asset Insurance            | VAP details tab under Loan Details tab |
      | Post Approval        | Life Insurance             | VAP details tab under Loan Details tab |
      | Post Approval        | Credit Protection          | VAP details tab under Loan Details tab |
      | Post Approval        | Payment Protection         | VAP details tab under Loan Details tab |
      | Post Approval        | GAP Insurance              | VAP details tab under Loan Details tab |
      | Post Approval        | Crop Insurance             | VAP details tab under Loan Details tab |
      | Post Approval        | Mortgage Guarantee         | VAP details tab under Loan Details tab |
      | Post Approval        | Extended Warranty          | VAP details tab under Loan Details tab |
      | Post Approval        | Service Maintenance        | VAP details tab under Loan Details tab |
      | Post Approval        | External Maintenance       | VAP details tab under Loan Details tab |
      | Post Approval        | Tyre and Wheel             | VAP details tab under Loan Details tab |
      | Post Approval        | Home Furnishing            | VAP details tab under Loan Details tab |
      | Post Approval        | Vehicle Accessories        | VAP details tab under Loan Details tab |
      | Post Approval        | Implements and Attachments | VAP details tab under Loan Details tab |
      | Post Approval        | GPS                        | VAP details tab under Loan Details tab |
      | Post Approval        | Fees and Charges           | VAP details tab under Loan Details tab |
