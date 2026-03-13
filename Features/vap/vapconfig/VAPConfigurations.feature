@Epic-VAP
@AuthoredBy-sajja.ravikumar
#OriginalAuthor-rajni.gola
@ReviewedBy-
@ImplementedBy-
@TechReviewedBy-
@ReviewedByGWT-

@NotImplemented

Feature: VAP Configurations

  Background:
    Given user is on CAS Login Page
    And user logged in Common Masters with "<SourceDataFile>" under "<SheetName>" and "<RowNumber>"

  ###################### VAP Parameter Policy ##################################################
  #FeatureID-ACAUTOCAS-210
  Scenario Outline: Verify "<Field_name>" is visible on VAP Parameter Policy create page
    And user navigates to Product Management - VAP Policy Setup
    When user clicks on VAP Parameter Policy
    And user attempts to create new record using Create VAP Parameter Policy option
    Then user should be able to view Create VAP Parameter policy page with "<Field_name>" marked as "<Mandatory>"
    Examples:
      | Field_name                   | Mandatory     |
      | Policy Code                  | mandatory     |
      | Policy Name                  | mandatory     |
      | Policy Description           | non-mandatory |
      | VAP Category                 | mandatory     |
      | VAP Type                     | mandatory     |
      | Follow Contract Parameter    | non-mandatory |
      | Enable at Post Sanction      | non-mandatory |
      | Consecutive Year Funding     | non-mandatory |
      | VAP Document Checklist       | non-mandatory |
      | Application Mapping Document | non-mandatory |

  #CAS-22298   VAP-01 Parameter Policy
  #FeatureID-ACAUTOCAS-210
  Scenario Outline: Configure VAP Parameter Policy for "<VAP_Category>" and "<VAP_Type>"
    And user is on Create VAP Parameter Policy
    When user enters all mandatory fields
    And user selects "<VAP_Category>" in VAP Category field
    And user selects "<VAP_Type>" in VAP Type field
    Then user should be able to successfully save record
    Examples:
      | VAP_Category        | VAP_Type                   |
      | Insurance           | Asset Insurance            |
      | Insurance           | Life Insurance             |
      | Insurance           | Credit Protection          |
      | Insurance           | Payment Protection         |
      | Insurance           | GAP Insurance              |
      | Insurance           | Crop Insurance             |
      | Insurance           | Mortgage Guarantee         |
      | Additional Service  | Extended Warranty          |
      | Additional Service  | Service Maintenance        |
      | Additional Service  | External Maintenance       |
      | Additional Service  | Tyre and Wheel             |
      | Additional Purchase | Home Furnishing            |
      | Additional Purchase | Vehicle Accessories        |
      | Additional Purchase | Implements and Attachments |
      | Additional Purchase | GPS                        |
      | Additional Finances | Fees and Charges           |

  ##Follow Contract parameter checkbox can be ticked if the VAP has to follow the repayment parameters of the main loan
  #FeatureID-ACAUTOCAS-210
  Scenario Outline:  Creating VAP product which "<follow>" contract parameters for vap type "<VAP_Type>"
    And user is on Create VAP Parameter Policy
    When user enters all mandatory fields for vap type "<VAP_Type>"
    And user mark field "<field>" as "<check>" to "<follow>" contract parameter
    Then user should be able to create record successfully
    Examples:
      | VAP_Type                   | field                     | check     | follow     |
      | Asset Insurance            | Follow Contract Parameter | checked   | follow     |
      | Asset Insurance            | Follow Contract Parameter | unchecked | not follow |
      | Life Insurance             | Follow Contract Parameter | checked   | follow     |
      | Life Insurance             | Follow Contract Parameter | unchecked | not follow |
      | Credit Protection          | Follow Contract Parameter | checked   | follow     |
      | Credit Protection          | Follow Contract Parameter | unchecked | not follow |
      | Payment Protection         | Follow Contract Parameter | checked   | follow     |
      | Payment Protection         | Follow Contract Parameter | unchecked | not follow |
      | GAP Insurance              | Follow Contract Parameter | checked   | follow     |
      | GAP Insurance              | Follow Contract Parameter | unchecked | not follow |
      | Extended Warranty          | Follow Contract Parameter | checked   | follow     |
      | Extended Warranty          | Follow Contract Parameter | unchecked | not follow |
      | Tyre and Wheel             | Follow Contract Parameter | checked   | follow     |
      | Tyre and Wheel             | Follow Contract Parameter | unchecked | not follow |
      | Home Furnishing            | Follow Contract Parameter | checked   | follow     |
      | Home Furnishing            | Follow Contract Parameter | unchecked | not follow |
      | Vehicle Accessories        | Follow Contract Parameter | checked   | follow     |
      | Vehicle Accessories        | Follow Contract Parameter | unchecked | not follow |
      | Implements and Attachments | Follow Contract Parameter | checked   | follow     |
      | Implements and Attachments | Follow Contract Parameter | unchecked | not follow |
      | GPS                        | Follow Contract Parameter | checked   | follow     |
      | GPS                        | Follow Contract Parameter | unchecked | not follow |
      | Fees and Charges           | Follow Contract Parameter | checked   | follow     |
      | Fees and Charges           | Follow Contract Parameter | unchecked | not follow |

  ##Enable at Post Sanction check box if true enables addition of VAP Product after Credit Approval
  #FeatureID-ACAUTOCAS-210
  Scenario Outline: Creating VAP products which "<option>" added after Credit Approval for vap type "<VAP_Type>"
    And user is on Create VAP Parameter Policy
    When user enters all mandatory fields for vap type "<VAP_Type>"
    And user mark field "<field>" as "<check>" so that it "<option>" added after Credit Approval
    Then user should be able to create record successfully
    Examples:
      | VAP_Type                   | field                  | check     | option    |
      | Asset Insurance            | Enable at PostSanction | checked   | can be    |
      | Asset Insurance            | Enable at PostSanction | unchecked | cannot be |
      | Life Insurance             | Enable at PostSanction | checked   | can be    |
      | Life Insurance             | Enable at PostSanction | unchecked | cannot be |
      | Credit Protection          | Enable at PostSanction | checked   | can be    |
      | Credit Protection          | Enable at PostSanction | unchecked | cannot be |
      | Payment Protection         | Enable at PostSanction | checked   | can be    |
      | Payment Protection         | Enable at PostSanction | unchecked | cannot be |
      | GAP Insurance              | Enable at PostSanction | checked   | can be    |
      | GAP Insurance              | Enable at PostSanction | unchecked | cannot be |
      | Extended Warranty          | Enable at PostSanction | checked   | can be    |
      | Extended Warranty          | Enable at PostSanction | unchecked | cannot be |
      | Tyre and Wheel             | Enable at PostSanction | checked   | can be    |
      | Tyre and Wheel             | Enable at PostSanction | unchecked | cannot be |
      | Home Furnishing            | Enable at PostSanction | checked   | can be    |
      | Home Furnishing            | Enable at PostSanction | unchecked | cannot be |
      | Vehicle Accessories        | Enable at PostSanction | checked   | can be    |
      | Vehicle Accessories        | Enable at PostSanction | unchecked | cannot be |
      | Implements and Attachments | Enable at PostSanction | checked   | can be    |
      | Implements and Attachments | Enable at PostSanction | unchecked | cannot be |
      | GPS                        | Enable at PostSanction | checked   | can be    |
      | GPS                        | Enable at PostSanction | unchecked | cannot be |
      | Fees and Charges           | Enable at PostSanction | checked   | can be    |
      | Fees and Charges           | Enable at PostSanction | unchecked | cannot be |

  ##Consecutive Year Funding check box if true then the VAP product can be applied again in servicing system
  # The impact of this checkbox is in FinnOne Neo LMS
  #FeatureID-ACAUTOCAS-210
  Scenario Outline: Creating VAP products which are "<option>" for Consecutive Year Funding for vap type "<VAP_Type>"
    And user is on Create VAP Parameter Policy
    When user enters all mandatory fields for vap type "<VAP_Type>"
    And user mark field "<field>" as "<check>" to make it "<option>" for Consecutive Year Funding
    Then user should be able to create record successfully
    Examples:
      | VAP_Type                   | field                    | check     | option        |
      | Asset Insurance            | Consecutive Year Funding | checked   | available     |
      | Asset Insurance            | Consecutive Year Funding | unchecked | not available |
      | Life Insurance             | Consecutive Year Funding | checked   | available     |
      | Life Insurance             | Consecutive Year Funding | unchecked | not available |
      | Credit Protection          | Consecutive Year Funding | checked   | available     |
      | Credit Protection          | Consecutive Year Funding | unchecked | not available |
      | Payment Protection         | Consecutive Year Funding | checked   | available     |
      | Payment Protection         | Consecutive Year Funding | unchecked | not available |
      | GAP Insurance              | Consecutive Year Funding | checked   | available     |
      | GAP Insurance              | Consecutive Year Funding | unchecked | not available |
      | Extended Warranty          | Consecutive Year Funding | checked   | available     |
      | Extended Warranty          | Consecutive Year Funding | unchecked | not available |
      | Tyre and Wheel             | Consecutive Year Funding | checked   | available     |
      | Tyre and Wheel             | Consecutive Year Funding | unchecked | not available |
      | Home Furnishing            | Consecutive Year Funding | checked   | available     |
      | Home Furnishing            | Consecutive Year Funding | unchecked | not available |
      | Vehicle Accessories        | Consecutive Year Funding | checked   | available     |
      | Vehicle Accessories        | Consecutive Year Funding | unchecked | not available |
      | Implements and Attachments | Consecutive Year Funding | checked   | available     |
      | Implements and Attachments | Consecutive Year Funding | unchecked | not available |
      | GPS                        | Consecutive Year Funding | checked   | available     |
      | GPS                        | Consecutive Year Funding | unchecked | not available |
      | Fees and Charges           | Consecutive Year Funding | checked   | available     |
      | Fees and Charges           | Consecutive Year Funding | unchecked | not available |

  ##VAP Document Checklist can be maintained in the Document Checklist Master
  ## It can then be mapped in VAP Parameter Policy master basis the product being created
  #FeatureID-ACAUTOCAS-210
  Scenario Outline: Configuration to view VAP Document Checklist
    And user is on Create VAP Parameter Policy
    When user enters all mandatory fields
    And user searches the VAP Document Checklist LoV
    Then user should be able to view checklist that is maintained in "<master>" master with  "<field>" flag as true
    Examples:
      | master             | field                          |
      | Document Checklist | VAP Document Mapping Checklist |

  #FeatureID-ACAUTOCAS-210
  Scenario: Mapping of VAP Document Checklist
    And user is on Create VAP Parameter Policy
    When user enters all mandatory fields
    And user searches the VAP Document Checklist LoV
    And user chooses a checklist from the displayed list
    Then user should be able to create record successfully

  ###################### VAP Amount Computation Policy ##################################################
  #FeatureID-ACAUTOCAS-210
  Scenario Outline:Verify "<Field_name>" is visible on VAP Amount Computation Policy create page
    And user navigates to Product Management - VAP Policy Setup
    When user clicks on VAP Amount Computation Policy
    And user attempts to create new record using Create VAP Amount Computation Policy option
    Then user should be able to view Create VAP Amount Computation Policy page with "<Field_name>" marked as "<Mandatory>"
    Examples:
      | Field_name                 | Mandatory                          |
      | Policy Code                | mandatory                          |
      | Policy Name                | mandatory                          |
      | Policy Description         | non-mandatory                      |
      | Currency                   | mandatory                          |
      | Contract Type              | mandatory                          |
      | VAP Treatment              | mandatory                          |
      | Computation Method         | mandatory                          |
      | Definition Type/Amount     | mandatory                          |
      | Minimum Amount             | non-mandatory                      |
      | Maximum Amount             | non-mandatory                      |
      | Gross Receivable Charge ID | non-mandatory                      |
      | Gross Payable Charge ID    | non-mandatory                      |
      | Rate%                      | mandatory For Rate Definition type |
      | Computed On                | mandatory For Rate Definition type |

  #FeatureID-ACAUTOCAS-210
  Scenario: Selecting currency in Computation Policy master
    And user is on Create VAP Amount Computation Policy
    When user enters all mandatory fields
    And user searches for currency in the auto complete LoV
    Then currencies maintained in the currency master shall be displayed for selection

  ##Contract type loan or lease for which this policy is required to be used
  #FeatureID-ACAUTOCAS-210
  Scenario Outline: Selecting "<ContractType>" in Computation Policy master
    And user is on Create VAP Amount Computation Policy
    When user enters all mandatory fields
    And user clicks on the contract type dropdown
    Then values "<ContractType>" shall be displayed for selection
    Examples:
      | ContractType |
      | Loan         |
      | Lease        |

  #FeatureID-ACAUTOCAS-210
  Scenario Outline: Selection of "<Field>" basis computation method selected as "<Computation_Method>"
    And user is on Create VAP Amount Computation Policy
    When user enters all mandatory fields
    And user selects "<Computation_Method>" as computation method
    Then user should be able to view "<Option>" under "<Field>" field
    Examples:
      | Computation_Method | Option                                                                                                                     | Field                  |
      | Flat Amount Based  | Dynamic Field to capture the amount                                                                                        | Definition Type/Amount |
      | Rate Based         | Rate Definition hyperlink that allows user to input rate% along with computed on parameter                                 | Definition Type/Amount |
      | Rule Based         | all active parameters and assignment matrix which are tagged with VAP Amount Computation Policy                            | Definition Type/Amount |
      | Charge Amount      | Charge Definition hyperlink that will display list of all charge name along with their charge ID receivable from customers | Definition Type/Amount |

   #FeatureID-ACAUTOCAS-210
  Scenario Outline: Configure VAP Amount Computation Policy with VAP treatment as "<VAP_Treatment>" and computation method as "<VAP_Computation>"
    And user is on Create VAP Amount Computation Policy
    When user enters all mandatory fields
    And user selects VAP treatment as "<VAP_Treatment>" from drop down
    And user selects computation method as "<VAP_Computation>" from drop down for VAP treatment as "<VAP_Treatment>"
    Then user should be able to successfully save record
    Examples:
      | VAP_Treatment      | VAP_Computation   |
      | Financed           | API Based         |
      | Financed           | Charge Amount     |
      | Financed           | Flat Amount Based |
      | Financed           | Rate Based        |
      | Financed           | Rule Based        |
      | Revenue            | API Based         |
      | Revenue            | Charge Amount     |
      | Revenue            | Flat Amount Based |
      | Revenue            | Rate Based        |
      | Revenue            | Rule Based        |
      | Upfront            | API Based         |
      | Upfront            | Flat Amount Based |
      | Upfront            | Rate Based        |
      | Upfront            | Rule Based        |
      | Collectible        | API Based         |
      | Collectible        | Flat Amount Based |
      | Collectible        | Rate Based        |
      | Collectible        | Rule Based        |
      | Additional Funding | API Based         |
      | Additional Funding | Charge Amount     |
      | Additional Funding | Flat Amount Based |
      | Additional Funding | Rate Based        |
      | Additional Funding | Rule Based        |

 ###################### VAP Payout Policy ##################################################
  #FeatureID-ACAUTOCAS-210
  Scenario Outline:Verify "<Field_name>" is visible on VAP Payout Policy create page
    And user navigates to Product Management - VAP Policy Setup
    When user clicks on VAP Payout policy
    And user attempts to create new record using Create VAP Payout Policy option
    Then user should be able to view Create VAP Payout Policy page with "<Field_name>" marked as "<Mandatory>"
    Examples:
      | Field_name               | Mandatory                                                 |
      | Policy Code              | mandatory                                                 |
      | Policy Name              | mandatory                                                 |
      | Policy Description       | non-mandatory                                             |
      | Currency                 | mandatory                                                 |
      | Component Code           | mandatory                                                 |
      | Component Name           | mandatory                                                 |
      | Business Partner Type    | mandatory                                                 |
      | Business Partner Name    | mandatory                                                 |
      | Business Partner Details | non-mandatory                                             |
      | Payout Computation       | mandatory if commission computation is not selected       |
      | Commission Computation   | mandatory if payout computation is not selected           |
      | Payout Charge ID         | mandatory when payout computation criteria is entered     |
      | Commission Charge ID     | mandatory when commission computation criteria is entered |
      | Payout Frequency         | mandatory                                                 |
      | Clawback                 | non-mandatory                                             |

 #FeatureID-ACAUTOCAS-210
  Scenario Outline: Configure VAP Payout Policy for business partner "<business_partner>" and "<Payout_Commission_computation>" type
    And user is on VAP payout policy screen
    When user enters component code with name
    And user enters business partner "<business_partner>" from drop down that are applicable for VAP
    And user selects "<Payout_Commission_computation>" hyperlink for business partner "<business_partner>"
    Then "<Payout_Commission_Chargeid>" shall be "<Status>" provided "<Payout_Commission_computation>" is captured with "<Computation>" status as "<Status1>"
#    And Payout Frequency will be mandatory to be captured
#    And system shall display the automated type of LOV in the Payout charge along with Commission charge fields
#    And user shall be able to map the charge ID for VAP Payout or Commission to be paid to each Business Partner
    Examples:
      | business_partner  | Payout_Commission_computation | Payout_Commission_Chargeid | Status  | Computation            | Status1  |
      | Insurance Company | payout computation            | Payout Charge ID           | enabled | Commission computation | disabled |
      | Dealer Supplier   | payout computation            | Payout Charge ID           | enabled | Commission computation | disabled |
      | Agency            | payout computation            | Payout Charge ID           | enabled | Commission computation | disabled |
      | Manufacturer      | payout computation            | Payout Charge ID           | enabled | Commission computation | disabled |
      | DSA               | payout computation            | Payout Charge ID           | enabled | Commission computation | disabled |
      | Builder Company   | payout computation            | Payout Charge ID           | enabled | Commission computation | disabled |
      | Customer          | payout computation            | Payout Charge ID           | enabled | Commission computation | disabled |
      | Financer          | payout computation            | Payout Charge ID           | enabled | Commission computation | disabled |
      | Colending Partner | payout computation            | Payout Charge ID           | enabled | Commission computation | disabled |
      | Insurance Company | Commission computation        | Commission Charge ID       | enabled | payout computation     | disabled |
      | Dealer Supplier   | Commission computation        | Commission Charge ID       | enabled | payout computation     | disabled |
      | Agency            | Commission computation        | Commission Charge ID       | enabled | payout computation     | disabled |
      | Manufacturer      | Commission computation        | Commission Charge ID       | enabled | payout computation     | disabled |
      | DSA               | Commission computation        | Commission Charge ID       | enabled | payout computation     | disabled |
      | Builder Company   | Commission computation        | Commission Charge ID       | enabled | payout computation     | disabled |
      | Customer          | Commission computation        | Commission Charge ID       | enabled | payout computation     | disabled |
      | Financer          | Commission computation        | Commission Charge ID       | enabled | payout computation     | disabled |
      | Colending Partner | Commission computation        | Commission Charge ID       | enabled | payout computation     | disabled |

 #FeatureID-ACAUTOCAS-210
  Scenario Outline: Configure VAP Payout Policy for "<Payout_Frequency>"
    And user is on Create VAP Payout Policy
    When user configure a new VAP Payout policy for different business partners
    And user enters all mandatory fields
    And user selects "<Payout_Frequency>" in Payout Frequency field
    Then user should be able to successfully save record
    Examples:
      | Payout_Frequency       |
      | Immediate              |
      | No Payout              |
      | Payout Every Month End |
      | Payout First Month End |

  ###################### VAP Policy ##################################################

  #FeatureID-ACAUTOCAS-210
  Scenario Outline:Verify "<Field_name>" is visible on VAP Policy create page
    And user navigates to Product Management - VAP Policy Setup
    When user clicks on VAP Policy
    And user attempts to create new record using Create VAP Policy option
    Then user should be able to view Create VAP Policy page with "<Field_name>" marked as "<Mandatory>"
    Examples:
      | Field_name                    | Mandatory     |
      | Policy Code                   | mandatory     |
      | Policy Name                   | mandatory     |
      | Policy Description            | non-mandatory |
      | VAP Percentage                | non-mandatory |
      | VAP Amount                    | non-mandatory |
      | VAP Criteria                  | non-mandatory |
      | Contract Type                 | mandatory     |
      | Currency                      | mandatory     |
      | VAP Parameter Policy          | mandatory     |
      | VAP Amount Computation Policy | mandatory     |
      | VAP Payout Computation Policy | mandatory     |
      | Rule                          | non-mandatory |
      | Actions                       | non-mandatory |

  #FeatureID-ACAUTOCAS-210
  Scenario Outline: Configuring VAP Policy by Mapping "<VAP_Policy>" in master
    Given "<VAP_Policy>" already existing
    When user maps "<VAP_Policy>" under VAP Policy details
    And user saves the record
    Then VAP policy should be saved successfully
    Examples:
      | VAP_Policy                    |
      | VAP Parameter Policy          |
      | VAP Amount Computation Policy |
      | VAP Payout Computation Policy |

  #FeatureID-ACAUTOCAS-210
  Scenario Outline: Configure VAP Policy for various "<VAP_Type>" and "<VAP_Treatment>" combination
    And user is on Create VAP Policy
    When user configure a new VAP policy
    And user selects VAP Parameter Policy maintained for "<VAP_Type>" in VAP Parameter Policy field
    And user selects VAP Amount Computation Policy maintained for "<VAP_Treatment>" in VAP Amount Computation Policy field
    And user enters all other mandatory fields
    Then user should be able to successfully save record
    Examples:
      | VAP_Type                   | VAP_Treatment      |
      | Asset Insurance            | Financed           |
      | Asset Insurance            | Revenue            |
      | Asset Insurance            | Upfront            |
      | Asset Insurance            | Collectible        |
      | Asset Insurance            | Additional Funding |
      | Life Insurance             | Financed           |
      | Life Insurance             | Revenue            |
      | Life Insurance             | Upfront            |
      | Life Insurance             | Collectible        |
      | Life Insurance             | Additional Funding |
      | Credit Protection          | Financed           |
      | Credit Protection          | Revenue            |
      | Credit Protection          | Upfront            |
      | Credit Protection          | Collectible        |
      | Credit Protection          | Additional Funding |
      | Payment Protection         | Financed           |
      | Payment Protection         | Revenue            |
      | Payment Protection         | Upfront            |
      | Payment Protection         | Collectible        |
      | Payment Protection         | Additional Funding |
      | GAP Insurance              | Financed           |
      | GAP Insurance              | Revenue            |
      | GAP Insurance              | Upfront            |
      | GAP Insurance              | Collectible        |
      | GAP Insurance              | Additional Funding |
      | Crop Insurance             | Financed           |
      | Crop Insurance             | Revenue            |
      | Crop Insurance             | Upfront            |
      | Crop Insurance             | Collectible        |
      | Crop Insurance             | Additional Funding |
      | Mortgage Guarantee         | Financed           |
      | Mortgage Guarantee         | Revenue            |
      | Mortgage Guarantee         | Upfront            |
      | Mortgage Guarantee         | Collectible        |
      | Mortgage Guarantee         | Additional Funding |
      | Extended Warranty          | Financed           |
      | Extended Warranty          | Revenue            |
      | Extended Warranty          | Upfront            |
      | Extended Warranty          | Collectible        |
      | Extended Warranty          | Additional Funding |
      | Service Maintenance        | Financed           |
      | Service Maintenance        | Revenue            |
      | Service Maintenance        | Upfront            |
      | Service Maintenance        | Collectible        |
      | Service Maintenance        | Additional Funding |
      | External Maintenance       | Financed           |
      | Extended Maintenance       | Revenue            |
      | Extended Maintenance       | Upfront            |
      | Extended Maintenance       | Collectible        |
      | Extended Maintenance       | Additional Funding |
      | Tyre and Wheel             | Financed           |
      | Tyre and Wheel             | Revenue            |
      | Tyre and Wheel             | Upfront            |
      | Tyre and Wheel             | Collectible        |
      | Tyre and Wheel             | Additional Funding |
      | Home Furnishing            | Financed           |
      | Home Furnishing            | Revenue            |
      | Home Furnishing            | Upfront            |
      | Home Furnishing            | Collectible        |
      | Home Furnishing            | Additional Funding |
      | Vehicle Accessories        | Financed           |
      | Vehicle Accessories        | Revenue            |
      | Vehicle Accessories        | Upfront            |
      | Vehicle Accessories        | Collectible        |
      | Vehicle Accessories        | Additional Funding |
      | Implements and Attachments | Financed           |
      | Implements and Attachments | Revenue            |
      | Implements and Attachments | Upfront            |
      | Implements and Attachments | Collectible        |
      | Implements and Attachments | Additional Funding |
      | GPS                        | Financed           |
      | GPS                        | Revenue            |
      | GPS                        | Upfront            |
      | GPS                        | Collectible        |
      | GPS                        | Additional Funding |
      | Fees and Charges           | Financed           |
      | Fees and Charges           | Revenue            |
      | Fees and Charges           | Upfront            |
      | Fees and Charges           | Collectible        |
      | Fees and Charges           | Additional Funding |

  #FeatureID-ACAUTOCAS-210
  Scenario Outline: Configure VAP Policy for various "<business_partner>" and "<Payout_Commission_computation>" combination
    And user is on Create VAP Policy
    When user configure a new VAP policy
    And user selects VAP Parameter Policy in VAP Parameter Policy field
    And user selects VAP Amount Computation Policy in VAP Amount Computation Policy field
    And user selects Business partner as "<business_partner>"
    And user enters computation crieria under field "<Payout_Commission_computation>"
    And user enters all other mandatory fields
    Then user should be able to successfully save record
    Examples:
      | business_partner  | Payout_Commission_computation |
      | Insurance Company | payout computation            |
      | Dealer Supplier   | payout computation            |
      | Agency            | payout computation            |
      | Manufacturer      | payout computation            |
      | DSA               | payout computation            |
      | Builder Company   | payout computation            |
      | Customer          | payout computation            |
      | Financer          | payout computation            |
      | Colending Partner | payout computation            |
      | Insurance Company | Commission computation        |
      | Dealer Supplier   | Commission computation        |
      | Agency            | Commission computation        |
      | Manufacturer      | Commission computation        |
      | DSA               | Commission computation        |
      | Builder Company   | Commission computation        |
      | Customer          | Commission computation        |
      | Financer          | Commission computation        |
      | Colending Partner | Commission computation        |

  #config.vap.applicable
  #FeatureID-ACAUTOCAS-210
  Scenario: Check products for which VAP is applicable
    Given configuration config.vap.applicable exists in system
    When user verifies that configuration config.vap.applicable exists in system
    Then user should be able to check products for which vap is applicable

  #If the user has a license of even a single VAP Category,then system shall display VAP Policy at Policies tab at Product and Scheme master.
  #Licensing shall be governed on the basis of VAP Category.
  #FeatureID-ACAUTOCAS-210
  Scenario Outline: Availability of VAP Policy mapping under policy tab for VAP category "<VAP_Category>" with "<Product>" product
    Given VAP Type Licensed values already existing through seed masters
    And Products already existing in product master
    When user verifies VAP category "<VAP_Category>" with "<Product>"
    And user verifies that there is a license of atleast one VAP Category
    Then system shall display the VAP policy at policies tab at Product and Scheme master
    Examples:
      | VAP_Category        | Product               |
      | Insurance           | Consumer Vehicle      |
      | Insurance           | Commercial Vehicle    |
      | Insurance           | Commercial Equipment  |
      | Insurance           | Personal Finance      |
      | Insurance           | Consumer Loans        |
      | Insurance           | Home Loan             |
      | Insurance           | Loan Against Property |
      | Insurance           | Micro Housing Finance |
      | Additional Finance  | Consumer Vehicle      |
      | Additional Finance  | Commercial Vehicle    |
      | Additional Finance  | Commercial Equipment  |
      | Additional Finance  | Personal Finance      |
      | Additional Finance  | Consumer Loans        |
      | Additional Finance  | Home Loan             |
      | Additional Finance  | Loan Against Property |
      | Additional Finance  | Micro Housing Finance |
      | Additional Purchase | Consumer Vehicle      |
      | Additional Purchase | Commercial Vehicle    |
      | Additional Purchase | Commercial Equipment  |
      | Additional Purchase | Personal Finance      |
      | Additional Purchase | Consumer Loans        |
      | Additional Purchase | Home Loan             |
      | Additional Purchase | Loan Against Property |
      | Additional Purchase | Micro Housing Finance |
      | Additional Service  | Consumer Vehicle      |
      | Additional Service  | Commercial Vehicle    |
      | Additional Service  | Commercial Equipment  |
      | Additional Service  | Personal Finance      |
      | Additional Service  | Consumer Loans        |
      | Additional Service  | Home Loan             |
      | Additional Service  | Loan Against Property |
      | Additional Service  | Micro Housing Finance |

  #FeatureID-ACAUTOCAS-210
  Scenario Outline: Mapping of Product and VAP Policy for <Products>
    And user is on Products master
    When user map VAP policy with "<Products>" under Policy tab
    Then user should be able to successfully map VAP policy with the "<Products>"
    Examples:
      | Products                    |
      | Consumer Vehicle            |
      | Commercial Vehicle          |
      | Commercial Equipment        |
      | Personal Finance            |
      | Consumer Loans              |
      | Home Loan                   |
      | Loan Against Property       |
      | Micro Housing Finance       |
# Below products are Out of scope for phase 1
      | Farm Equipment              |
      | Agriculture Loan            |
      | Self Help Group (SHG)       |
      | Joint Liability Group (SHG) |
      | Kisan Credit Card (KCC)     |
      | Education Loan              |
      | FAS                         |
      | Gold Loan                   |
      | Omni Loan                   |




