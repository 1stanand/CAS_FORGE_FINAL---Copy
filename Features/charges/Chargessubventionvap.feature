@Epic-Charges_&_FP
@AuthoredBy-Anshu.bhaduri
#@AuthorBy_Anshu
#@ImplementedBy-deep.maurya
@Release

Feature: Chargessubventionvap

  Background:
    Given user logged in "Common Masters" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0

  @ImplementedBy-deep.maurya
  Scenario Outline: ACAUTOCAS-4238:VAP Charge code maintenance in Charge Code Master
    Given user logged in "Common Masters" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And Charge Code Master already exists in system
    And user reads data from the excel file "<ChargesWB>" under sheet "<Charge_Code_Definition>" and row <row_num>
    When user creates new charge code "<Charge_Code>" with transaction mapped to "<Transaction_Event>" in charge code master
    Then user should be able to map different transaction events to it
    And user should be able to create VAP Charge code in masters
    Examples:
      | Charge_Code                     | Transaction_Event             | Charge_Code_Definition | ChargesWB    | row_num |
      | Customer (Upfront) - Payable    | VAP Transaction               | charge_code_defination | charges.xlsx | 3       |
      | Customer (Upfront) - Receivable | VAP Transaction               | charge_code_defination | charges.xlsx | 4       |
      | Customer (Upfront) - Payable    | Collectible VAP Addition      | charge_code_defination | charges.xlsx | 5       |
      | Customer (Upfront) - Receivable | Collectible VAP Addition      | charge_code_defination | charges.xlsx | 6       |
      | Customer (Upfront) - Payable    | VAP Closure                   | charge_code_defination | charges.xlsx | 7       |
      | Customer (Upfront) - Receivable | VAP Closure                   | charge_code_defination | charges.xlsx | 8       |
      | Customer (Upfront) - Payable    | VAP Cancellation              | charge_code_defination | charges.xlsx | 9       |
      | Customer (Upfront) - Receivable | VAP Cancellation              | charge_code_defination | charges.xlsx | 10      |
      | Customer (Upfront) - Payable    | Revenue Financed VAP Addition | charge_code_defination | charges.xlsx | 11      |
      | Customer (Upfront) - Receivable | Revenue Financed VAP Addition | charge_code_defination | charges.xlsx | 12      |

  @ImplementedBy-deep.maurya
  Scenario Outline: ACAUTOCAS-4239:VAP Charge definition maintenance in Charge definition Master
    Given user logged in "Common Masters" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And Charge Code Master already exists in system
    And user reads data from the excel file "<ChargesWB>" under sheet "<Charge_Code_Definition>" and row <row_num>
    When user creates new charge by selecting "<Charge_Code>" with transaction event as "<Transaction_Event>" in charge definition master
    And user enters other required details
    Then user should be able to create VAP Charge definition
    Examples:
      | Charge_Code                     | Transaction_Event | Charge_Code_Definition | ChargesWB    | row_num |
      | Customer (Upfront) - Payable    | VAP Transaction   | charge_code_defination | charges.xlsx | 1       |
      | Customer (Upfront) - Receivable | VAP Transaction   | charge_code_defination | charges.xlsx | 1       |


  #CAS-22298   VAP-01 Parameter Policy
  @ImplementedBy-deep.maurya
  Scenario Outline: ACAUTOCAS-4240:Creating VAP Parameter Policy for "<VAPCategory>" and "<VAPType>"
    Given user logged in "Common Masters" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user navigate to VAP Parameter Policy master
    When user creates VAP Parameter Policy
    And user reads data from the excel file "<ChargesWB>" under sheet "<Charges_Subvention>" and row <row_num>
    And user selects VAP Category as "<VAPCategory>" from drop down
    And user selects VAP Type as "<VAPType>" from drop down
    Then user should be able to create VAP parameter policy
    Examples:
      | VAPCategory         | VAPType                    | ChargesWB    | Charges_Subvention            | row_num |
      | Insurance           | Asset Insurance            | charges.xlsx | charges_subvention_vap_policy | 0       |
      | Insurance           | Life Insurance             | charges.xlsx | charges_subvention_vap_policy | 1       |
      | Insurance           | Credit Protection          | charges.xlsx | charges_subvention_vap_policy | 2       |
      | Insurance           | Payment Protection         | charges.xlsx | charges_subvention_vap_policy | 3       |
      | Insurance           | GAP Insurance              | charges.xlsx | charges_subvention_vap_policy | 4       |
      | Insurance           | Crop Insurance             | charges.xlsx | charges_subvention_vap_policy | 5       |
      | Insurance           | Mortgage Guarantee         | charges.xlsx | charges_subvention_vap_policy | 6       |
      | Additional Service  | Extended Warranty          | charges.xlsx | charges_subvention_vap_policy | 7       |
      | Additional Service  | Tyre and Wheel             | charges.xlsx | charges_subvention_vap_policy | 8       |
      | Additional Purchase | Vehicle Accessories        | charges.xlsx | charges_subvention_vap_policy | 9       |
      | Additional Purchase | Home Furnishing            | charges.xlsx | charges_subvention_vap_policy | 10      |
      | Additional Purchase | Implements and Attachments | charges.xlsx | charges_subvention_vap_policy | 11      |
      | Additional Purchase | GPS                        | charges.xlsx | charges_subvention_vap_policy | 12      |
      | Additional Finance  | Fees and Charges           | charges.xlsx | charges_subvention_vap_policy | 13      |

  @ImplementedBy-deep.maurya
  Scenario Outline: ACAUTOCAS-4241:VAP Policy creation in system
    Given user logged in "Common Masters" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user navigate to VAP Policy page in common master
    When user maps "<VAP_Policy>" under VAP Policy details
    And user save the record
    Then VAP policy should be saved successfully
    Examples:
      | VAP_Policy                    |
      | VAP Parameter Policy          |
      | VAP Amount Computation Policy |
      | VAP Payout Computation Policy |


  #CAS-22303	VAP-02 VAP Amount Computation Policy
  @ImplementedBy-deep.maurya
  Scenario Outline: ACAUTOCAS-4244:Mapping of VAP Treatment with Computation method in VAP Amount computation policy
    Given user logged in "Common Masters" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And VAP Parameter Policy, VAP Amount Computation Policy, VAP Payout Computation Policy already maintained
    And user is already on VAP Amount computation policy screen in mapping section
    When user fills mandatory fields in VAP Amount computation policy screen
    And user reads data from the excel file "<ChargesWB>" under sheet "<Charges_Subvention>" and row <row_num>
    And user selects VAP treatment as "<VAP_treatment>" from drop down
    And user selects computation method as "<VAP_Computation>" from drop down for VAP treatment as "<VAP_treatment>"
    Then user should be able to define charge as "<VAP_Computation>" for VAP treatment "<VAP_treatment>"
    Examples:
      | VAP_Computation   | VAP_treatment      | ChargesWB    | Charges_Subvention            | row_num |
      | API based         | Financed           | charges.xlsx | charges_subvention_vap_policy | 36      |
      | Rate based        | Financed           | charges.xlsx | charges_subvention_vap_policy | 37      |
      | Rule based        | Financed           | charges.xlsx | charges_subvention_vap_policy | 38      |
      | Charge amount     | Financed           | charges.xlsx | charges_subvention_vap_policy | 39      |
      | Flat amount based | Financed           | charges.xlsx | charges_subvention_vap_policy | 40      |
      | API based         | Revenue            | charges.xlsx | charges_subvention_vap_policy | 41      |
      | Rate based        | Revenue            | charges.xlsx | charges_subvention_vap_policy | 42      |
      | Rule based        | Revenue            | charges.xlsx | charges_subvention_vap_policy | 43      |
      | Charge amount     | Revenue            | charges.xlsx | charges_subvention_vap_policy | 44      |
      | Flat amount based | Revenue            | charges.xlsx | charges_subvention_vap_policy | 45      |
      | API based         | Collectible        | charges.xlsx | charges_subvention_vap_policy | 46      |
      | Rate based        | Collectible        | charges.xlsx | charges_subvention_vap_policy | 47      |
      | Flat amount based | Collectible        | charges.xlsx | charges_subvention_vap_policy | 48      |
      | API based         | Upfront            | charges.xlsx | charges_subvention_vap_policy | 49      |
      | Rate based        | Upfront            | charges.xlsx | charges_subvention_vap_policy | 50      |
      | Rule based        | Upfront            | charges.xlsx | charges_subvention_vap_policy | 51      |
      | Flat amount based | Upfront            | charges.xlsx | charges_subvention_vap_policy | 52      |
      | API based         | Additional Funding | charges.xlsx | charges_subvention_vap_policy | 53      |
      | Rate based        | Additional Funding | charges.xlsx | charges_subvention_vap_policy | 54      |
      | Rule based        | Additional Funding | charges.xlsx | charges_subvention_vap_policy | 55      |
      | Charge amount     | Additional Funding | charges.xlsx | charges_subvention_vap_policy | 56      |
      | Flat amount based | Additional Funding | charges.xlsx | charges_subvention_vap_policy | 57      |

    #CAS-22303	VAP-02 VAP Amount Computation Policy
  @ImplementedBy-deep.maurya
  Scenario Outline: ACAUTOCAS-4245:Capturing Charge Definition basis Computation Method selected in VAP Amount computation policy against vap treatment
    Given user logged in "Common Masters" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And VAP Parameter Policy, VAP Amount Computation Policy, VAP Payout Computation Policy already maintained
    And user is already on VAP Amount computation policy screen in mapping section
    And user reads data from the excel file "<ChargesWB>" under sheet "<Charges_Subvention>" and row <row_num>
    When user selects VAP treatment "<VAP_treatment>" with computation method as "<VAP_Computation>"
    And charge definition hyperlink becomes active which further opens charges list to be selected for VAP treatment "<VAP_treatment>"
    And user selects receivable or payable charges from list to be mapped with VAP treatment
    Then field "<Gross_Charge>" are visible in "<Status>" status for VAP treatment "<VAP_treatment>" with computation method as "<VAP_Computation>"
    Examples:
      | VAP_Computation | VAP_treatment | Gross_Charge               | Status   | ChargesWB    | Charges_Subvention            | row_num |
      | Charge amount   | Financed      | Gross Receivable Charge ID | disabled | charges.xlsx | charges_subvention_vap_policy | 32      |
      | Charge amount   | Financed      | Gross Payable Charge ID    | enabled  | charges.xlsx | charges_subvention_vap_policy | 33      |
      | Charge amount   | Revenue       | Gross Receivable Charge ID | disabled | charges.xlsx | charges_subvention_vap_policy | 34      |
      | Charge amount   | Revenue       | Gross Payable Charge ID    | enabled  | charges.xlsx | charges_subvention_vap_policy | 35      |


       #CAS-22303	VAP-02 VAP Amount Computation Policy
  @ImplementedBy-deep.maurya
  Scenario Outline: ACAUTOCAS-4246:Capturing Charges basis Computation Method selected in VAP Amount computation policy against vap treatment
    Given user logged in "Common Masters" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And VAP Parameter Policy, VAP Amount Computation Policy, VAP Payout Computation Policy already maintained
    And user reads data from the excel file "<ChargesWB>" under sheet "<Charges_Subvention>" and row <row_num>
    And user is already on VAP Amount computation policy screen in mapping section
    And user fills mandatory fields in VAP Amount computation policy screen
    When user selects VAP treatment as "<VAP_treatment>" from drop down
    And user selects computation method as "<VAP_Computation>" from drop down for VAP treatment as "<VAP_treatment>"
    Then field "<Gross_Charge>" are visible in "<Status>" status for VAP treatment "<VAP_treatment>" with computation method as "<VAP_Computation>"
    Examples:
      | VAP_Computation   | VAP_treatment      | Gross_Charge               | Status   | ChargesWB    | Charges_Subvention            | row_num |
      | Rate based        | Upfront            | Gross Receivable Charge ID | enabled  | charges.xlsx | charges_subvention_vap_policy | 58      |
      | Rate based        | Upfront            | Gross Payable Charge ID    | enabled  | charges.xlsx | charges_subvention_vap_policy | 59      |
      | Flat amount based | Upfront            | Gross Receivable Charge ID | enabled  | charges.xlsx | charges_subvention_vap_policy | 60      |
      | Flat amount based | Upfront            | Gross Payable Charge ID    | enabled  | charges.xlsx | charges_subvention_vap_policy | 61      |
      | API based         | Upfront            | Gross Receivable Charge ID | enabled  | charges.xlsx | charges_subvention_vap_policy | 62      |
      | API based         | Upfront            | Gross Payable Charge ID    | enabled  | charges.xlsx | charges_subvention_vap_policy | 63      |
      | Rule based        | Upfront            | Gross Receivable Charge ID | enabled  | charges.xlsx | charges_subvention_vap_policy | 64      |
      | Rule based        | Upfront            | Gross Payable Charge ID    | enabled  | charges.xlsx | charges_subvention_vap_policy | 65      |
      | Rate based        | Collectible        | Gross Receivable Charge ID | disabled | charges.xlsx | charges_subvention_vap_policy | 66      |
      | Rate based        | Collectible        | Gross Payable Charge ID    | enabled  | charges.xlsx | charges_subvention_vap_policy | 67      |
      | Flat amount based | Collectible        | Gross Receivable Charge ID | disabled | charges.xlsx | charges_subvention_vap_policy | 68      |
      | Flat amount based | Collectible        | Gross Payable Charge ID    | enabled  | charges.xlsx | charges_subvention_vap_policy | 69      |
      | API based         | Collectible        | Gross Receivable Charge ID | disabled | charges.xlsx | charges_subvention_vap_policy | 70      |
      | API based         | Collectible        | Gross Payable Charge ID    | enabled  | charges.xlsx | charges_subvention_vap_policy | 71      |
      | Rule based        | Collectible        | Gross Receivable Charge ID | disabled | charges.xlsx | charges_subvention_vap_policy | 72      |
      | Rule based        | Collectible        | Gross Payable Charge ID    | enabled  | charges.xlsx | charges_subvention_vap_policy | 73      |
      | Rate based        | Additional Funding | Gross Receivable Charge ID | disabled | charges.xlsx | charges_subvention_vap_policy | 74      |
      | Rate based        | Additional Funding | Gross Payable Charge ID    | disabled | charges.xlsx | charges_subvention_vap_policy | 75      |
      | Flat amount based | Additional Funding | Gross Receivable Charge ID | disabled | charges.xlsx | charges_subvention_vap_policy | 76      |
      | Flat amount based | Additional Funding | Gross Payable Charge ID    | disabled | charges.xlsx | charges_subvention_vap_policy | 77      |
      | API based         | Additional Funding | Gross Receivable Charge ID | disabled | charges.xlsx | charges_subvention_vap_policy | 78      |
      | API based         | Additional Funding | Gross Payable Charge ID    | disabled | charges.xlsx | charges_subvention_vap_policy | 79      |
      | Rule based        | Additional Funding | Gross Receivable Charge ID | disabled | charges.xlsx | charges_subvention_vap_policy | 80      |
      | Rule based        | Additional Funding | Gross Payable Charge ID    | disabled | charges.xlsx | charges_subvention_vap_policy | 81      |
      | Rate based        | Financed           | Gross Receivable Charge ID | disabled | charges.xlsx | charges_subvention_vap_policy | 82      |
      | Rate based        | Financed           | Gross Payable Charge ID    | enabled  | charges.xlsx | charges_subvention_vap_policy | 83      |
      | Flat amount based | Financed           | Gross Receivable Charge ID | disabled | charges.xlsx | charges_subvention_vap_policy | 84      |
      | Flat amount based | Financed           | Gross Payable Charge ID    | enabled  | charges.xlsx | charges_subvention_vap_policy | 85      |
      | API based         | Financed           | Gross Receivable Charge ID | disabled | charges.xlsx | charges_subvention_vap_policy | 86      |
      | API based         | Financed           | Gross Payable Charge ID    | enabled  | charges.xlsx | charges_subvention_vap_policy | 87      |
      | Rule based        | Financed           | Gross Receivable Charge ID | disabled | charges.xlsx | charges_subvention_vap_policy | 88      |
      | Rule based        | Financed           | Gross Payable Charge ID    | enabled  | charges.xlsx | charges_subvention_vap_policy | 89      |


 #CAS-22343   VAP-06 VAP Product Type (VAP Details Capturing)
    #FeatureID-ACAUTOCAS-4173,CAS-22343
  @ImplementedBy-deep.maurya
  Scenario Outline: ACAUTOCAS-4249:VAP policy amount population on VAP details screen while selecting VAP product "<VAP_Product>" with VAP Treatment as "<VAP_treatment>"
    Given VAP Parameter Policy, VAP Amount Computation Policy, VAP Payout Computation Policy already maintained
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user opens an application at "<Stage>" stage from application grid
    And user reads data from the excel file "<VAPWB>" under sheet "<VAP_SheetName>" and row <VAP_SheetName_RowNumber>
    When user navigates to VAP details tab
    And user selects VAP product from drop down
    And user enters VAP treatment
    And user enters other field values on screen related to VAP product selected
    Then there will be "<fields>" which are auto populated as per the VAP Parameter Policy attached with the product
    Examples:
      | VAP_Product          | fields            | VAP_treatment | Stage        | VAPWB    | VAP_SheetName        | VAP_SheetName_RowNumber |
      | ICICI Life Insurance | VAP Type          | Upfront       | dde_indiv_hl | vap.xlsx | vap_parameter_policy | 5                       |
      | ICICI Life Insurance | VAP Category      | Upfront       | dde_indiv_hl | vap.xlsx | vap_parameter_policy | 6                       |
      | ICICI Life Insurance | VAP Policy Amount | Upfront       | dde_indiv_hl | vap.xlsx | vap_parameter_policy | 7                       |
      | ICICI Life Insurance | VAP Type          | Collectible   | dde_indiv_hl | vap.xlsx | vap_parameter_policy | 8                       |
      | ICICI Life Insurance | VAP Category      | Collectible   | dde_indiv_hl | vap.xlsx | vap_parameter_policy | 9                       |
      | ICICI Life Insurance | VAP Policy Amount | Collectible   | dde_indiv_hl | vap.xlsx | vap_parameter_policy | 10                      |
      | Finance              | VAP Type          | Revenue       | dde_indiv_hl | vap.xlsx | vap_parameter_policy | 11                      |
      | Finance              | VAP Category      | Revenue       | dde_indiv_hl | vap.xlsx | vap_parameter_policy | 12                      |
      | Finance              | VAP Policy Amount | Revenue       | dde_indiv_hl | vap.xlsx | vap_parameter_policy | 13                      |
      | Type and Wheel       | VAP Type          | Upfront       | dde_indiv_hl | vap.xlsx | vap_parameter_policy | 14                      |
      | Type and Wheel       | VAP Category      | Upfront       | dde_indiv_hl | vap.xlsx | vap_parameter_policy | 15                      |
      | Type and Wheel       | VAP Policy Amount | Upfront       | dde_indiv_hl | vap.xlsx | vap_parameter_policy | 16                      |






  #FeatureID-ACAUTOCAS-427,ACAUTOCAS-428
  Scenario Outline: ACAUTOCAS-4233:  Subvention Charges maintenance in charge master and execution of charge policy at "<Var_Stage>" stage
    And Chargecode and Charge definition already maintained in masters
    When user creates "<Subvention>" charges in charge definition master with charge adjustment type as "<Charge_Adjust>"
    And user maps the charges with policy
    And user attaches the charge policy with "<Product_Scheme>"
    Then user should be able to see the subvention charges in charges fees section of an application at "<Var_Stage>" stage

    Examples:

      | Subvention              | Charge_Adjust                      | Var_Stage       | Product_Scheme |
      | Dealer Subvention       | Deductible                         | Disbursal       | product        |
      | Dealer Subvention       | Collectable + Deductible           | Disbursal       | product        |
      | Dealer Subvention       | Neither Collectable nor Deductible | Disbursal       | product        |
      | Manufacturer Subvention | Neither Collectable nor Deductible | Disbursal       | product        |
      | Dealer Subvention       | Deductible                         | DDE             | product        |
      | Dealer Subvention       | Collectable + Deductible           | DDE             | product        |
      | Dealer Subvention       | Neither Collectable nor Deductible | DDE             | product        |
      | Manufacturer Subvention | Neither Collectable nor Deductible | DDE             | product        |
      | Dealer Subvention       | Deductible                         | Credit Approval | product        |
      | Dealer Subvention       | Collectable + Deductible           | Credit Approval | product        |
      | Dealer Subvention       | Neither Collectable nor Deductible | Credit Approval | product        |
      | Manufacturer Subvention | Neither Collectable nor Deductible | Credit Approval | product        |
      | Dealer Subvention       | Deductible                         | Post Approval   | product        |
      | Dealer Subvention       | Collectable + Deductible           | Post Approval   | product        |
      | Dealer Subvention       | Neither Collectable nor Deductible | Post Approval   | product        |
      | Manufacturer Subvention | Neither Collectable nor Deductible | Post Approval   | product        |
      | Dealer Subvention       | Deductible                         | Recommendation  | product        |
      | Dealer Subvention       | Collectable + Deductible           | Recommendation  | product        |
      | Dealer Subvention       | Neither Collectable nor Deductible | Recommendation  | product        |
      | Manufacturer Subvention | Neither Collectable nor Deductible | Recommendation  | product        |
      | Dealer Subvention       | Deductible                         | Reconsideration | product        |
      | Dealer Subvention       | Collectable + Deductible           | Reconsideration | product        |
      | Dealer Subvention       | Deductible                         | Reconsideration | product        |
      | Manufacturer Subvention | Neither Collectable nor Deductible | Reconsideration | product        |
      | Dealer Subvention       | Deductible                         | Disbursal       | scheme         |
      | Dealer Subvention       | Collectable + Deductible           | Disbursal       | scheme         |
      | Dealer Subvention       | Neither Collectable nor Deductible | Disbursal       | scheme         |
      | Manufacturer Subvention | Neither Collectable nor Deductible | Disbursal       | scheme         |
      | Dealer Subvention       | Deductible                         | DDE             | scheme         |
      | Dealer Subvention       | Collectable + Deductible           | DDE             | scheme         |
      | Dealer Subvention       | Neither Collectable nor Deductible | DDE             | scheme         |
      | Manufacturer Subvention | Neither Collectable nor Deductible | DDE             | scheme         |
      | Dealer Subvention       | Deductible                         | Credit Approval | scheme         |
      | Dealer Subvention       | Collectable + Deductible           | Credit Approval | scheme         |
      | Dealer Subvention       | Neither Collectable nor Deductible | Credit Approval | scheme         |
      | Manufacturer Subvention | Neither Collectable nor Deductible | Credit Approval | scheme         |
      | Dealer Subvention       | Deductible                         | Post Approval   | scheme         |
      | Dealer Subvention       | Collectable + Deductible           | Post Approval   | scheme         |
      | Dealer Subvention       | Neither Collectable nor Deductible | Post Approval   | scheme         |
      | Manufacturer Subvention | Neither Collectable nor Deductible | Post Approval   | scheme         |
      | Dealer Subvention       | Deductible                         | Recommendation  | scheme         |
      | Dealer Subvention       | Collectable + Deductible           | Recommendation  | scheme         |
      | Dealer Subvention       | Neither Collectable nor Deductible | Recommendation  | scheme         |
      | Manufacturer Subvention | Neither Collectable nor Deductible | Recommendation  | scheme         |
      | Dealer Subvention       | Deductible                         | Reconsideration | scheme         |
      | Dealer Subvention       | Collectable + Deductible           | Reconsideration | scheme         |
      | Dealer Subvention       | Deductible                         | Reconsideration | scheme         |
      | Manufacturer Subvention | Neither Collectable nor Deductible | Reconsideration | scheme         |


#  CAS-133528 GA6.0 >> Charge >> Dealer Subvention charge not shown in Disbursal and Charge Policy
  #FeatureID-ACAUTOCAS-427,ACAUTOCAS-428,CAS-133528
  Scenario Outline: ACAUTOCAS-4234:  Subvention Charges maintenance in Financial Parameter Setup
    Given user logged in "Common Masters" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And Subvention Chargecode and Charge definition already maintained in masters with financial parameter type as due generation only
    When user creates financial parameter setup with "<Subvention>" charges by selecting charge adjustment type as "<Charge_Adjust>"
    And user maps "<Event>" event with "<Disb_Entry_Type>" disbursal entry type for selected "<Subvention>" charge
    Then user should be able to see the subvention charges in financial parameter section of an application at various stages
#  In case of �Collectible� type of charge, system would allow to short received from the Loan Amount
  #  or collect the IMD from this charge. This type of charge system is displaying in Receipt screen.
#  In case of �Collectible and Deductible� type of charge, system would only allow to short received from the Loan Amount.
#  This type of charge system is not displaying in Receipt screen and automatically is adjusted
  # while disbursement and shown in Adjustment amount
#
    Examples:

      | Subvention              | Charge_Adjust                      | Event         | Disb_Entry_Type      |
      | Dealer Subvention       | Deductible                         | Pre approval  |                      |
      | Dealer Subvention       | Collectable + Deductible           | Pre approval  |                      |
      | Dealer Subvention       | Neither Collectable nor Deductible | Pre approval  |                      |
      | Manufacturer Subvention | Neither Collectable nor Deductible | Pre approval  |                      |
      | Dealer Subvention       | Deductible                         | Post approval |                      |
      | Dealer Subvention       | Collectable + Deductible           | Post approval |                      |
      | Dealer Subvention       | Neither Collectable nor Deductible | Post approval |                      |
      | Manufacturer Subvention | Neither Collectable nor Deductible | Post approval |                      |
      | Dealer Subvention       | Deductible                         | Disbursal     | Disbursal Entry      |
      | Dealer Subvention       | Collectable + Deductible           | Disbursal     | Disbursal Entry      |
      | Dealer Subvention       | Neither Collectable nor Deductible | Disbursal     | Disbursal Entry      |
      | Manufacturer Subvention | Neither Collectable nor Deductible | Disbursal     | Disbursal Entry      |
      | Dealer Subvention       | Deductible                         | Disbursal     | Disbursal Operations |
      | Dealer Subvention       | Collectable + Deductible           | Disbursal     | Disbursal Operations |
      | Dealer Subvention       | Neither Collectable nor Deductible | Disbursal     | Disbursal Operations |
      | Manufacturer Subvention | Neither Collectable nor Deductible | Disbursal     | Disbursal Operations |

  #CAS-31481
  # FeatureID-ACAUTOCAS-427,ACAUTOCAS-428,CAS-31481
  Scenario Outline: ACAUTOCAS-4235:  Collect additional Subvention Charges at "<Var_Stage>" stage and disburse the loan without any error
    Given user logged in "Common Masters" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And Loan application is at "<Var_Stage>" stage
    And Subvention Charges already maintained in master
      #user see all charges list in the grid which are mapped with charge policy at "<Var_Stage>"  Stage
    When user adds "<Subvention>" charges manually by clicking on + icon of nature "<Charge_Adjust>"
    And user update charge amount on charges screen against manually added charges
    Then user should be able to disburse the loan successfully
    And user verifies the subvention charge amount should get adjusted from disbursal amount for charge nature "<Charge_Adjust>"

    Examples:

      | Subvention              | Charge_Adjust            | Var_Stage |
      | Dealer Subvention       | Deductible               | Disbursal |
      | Dealer Subvention       | Collectable + Deductible | Disbursal |
      | Manufacturer Subvention | Deductible               | Disbursal |
      | Manufacturer Subvention | Collectable + Deductible | Disbursal |


  #CAS-74697  GA3.5 >> Dealer Subvention >> Error in loan booking: Total short receipt amount 1000 is left unadjusted.
  #  CAS-31481
  #FeatureID-ACAUTOCAS-427,ACAUTOCAS-428,CAS-74697,CAS-31481
  Scenario Outline: ACAUTOCAS-4236:  Loan should be disbursed successfully and flow to LMS without any validation for "<Charge_Adjust>"
    Given user logged in "Common Masters" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And Loan application is at "<Var_Stage>" stage
    And Subvention Charges already maintained in master
      #user see all charges list in the grid which are mapped with charge policy at "<Var_Stage>"  Stage
    When user disburse the loan with "<Subvention>" charges having "<Charge_Adjust>" charge adjustment type
    Then subvention charges should be flown to LMS as open charges from CAS
    #And loan should be flown to LMS successfully without any error message
    And user verifies these charges in LMS in loan booking
#  According to LMS comments, the NCND dealer payable charge added to the application must be sent in loan breakup details.
#  But in CAS, NCND charges, be it payable or receivable, are neither received nor short-received.
#  They are sent as open charges and only the charge details are provided in loan booking or disbursal request.
  # NCND charges are send as open charges from CAS to LMS
#  There is a Charge of Dealer Subvention whose Charge Treatment is 'Neither Collectable Nor Deductable',
#  which means this Charge will not be collected in CAS and will be handled in LMS.

    Examples:

      | Subvention              | Charge_Adjust                      | Var_Stage |
      | Dealer Subvention       | Neither Collectable nor Deductible | Disbursal |
      | Manufacturer Subvention | Neither Collectable nor Deductible | Disbursal |


  #  LMSODOTONE-67197
  #On GA 4.0, Internal IRR (Customer IRR) is not calculating correctly, in case any charge is mapped in IRR Charge Mapping.
    #FeatureID-ACAUTOCAS-390,LMSODOTONE-67197
  Scenario: ACAUTOCAS-4748: IRR Charge Mapping Master maintenance for considering charges while calculation of Customer IRR
    Given user logged in "Common Masters" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And IRR Charge mapping master for Customer IRR already existing with charges list in the grid
    When user includes the charges from charge list by selecting radio button
    And user saves the record
    Then charges should be mapped with IRR mapping
    And user should verify customer irr calculation in repay schedule screen

##############===============================================#####################################

  ##############==========VAP Charges =====================================#####################################

  #please refer below JIRA stories for VAP related Masters and Policies
#  CAS-21033	Product Master and Scheme Master related changes for VAP
#  CAS-22298	VAP-01 Parameter Policy
#  CAS-22303	VAP-02 VAP Amount Computation Policy
#  CAS-22310	VAP-03 Pay-out Computation Policy
  #  CAS-22301	VAP-05 Product Maintenance
#  CAS-22343	VAP-06 VAP Product Type (VAP Details Capturing)
#  CAS-22345	VAP-07 VAP Loan Parameters
#  CAS-22346	VAP-08 Payout Commission (Loan Parameter)


  #FeatureID-ACAUTOCAS-4172
  Scenario: ACAUTOCAS-4749: To Check products for which VAP is applicable
    And configuration config.vap.applicable should exists in system
    #config.vap.applicable
    When user verifies that configuration config.vap.applicable exists in system
    Then user should be able to check products for which vap is applicable

  #CAS-21033   Product Master and Scheme Master related changes for VAP
  #CAS-22301   VAP-05 Product Maintenance
  #FeatureID-ACAUTOCAS-4172,CAS-21033,CAS-22301
  Scenario Outline: ACAUTOCAS-4237:  VAP Licensing based Line of Business should be governed basis VAP category
    Given user logged in "Common Masters" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And VAP Type Licensed values already existing through seed masters
    And Products already existing in masters
    When user verifies VAP category "<VAP_Category>" with "<Product>"
    Then user verifies that user has a licensed of even a single VAP Category
    And system shall display the VAP policy at policies tab in Product Scheme master

      #  Licensing and Screen Display
#  � Licensed shall be governed on the basis of VAP Category.
#  � If the user has a licensed of even a single VAP Category then system shall display the VAP Policy at Policies tab at Product and Scheme master.
#    The policies can be mapped as per below:
    Examples:

      | VAP_Category        | Product               |
      | Insurance           | Consumer Vehicle      |
      | Insurance           | Home Loan             |
      | Insurance           | Loan Against Property |
      | Additional Finance  | Home Loan             |
      | Additional Purchase | Home Loan             |
      | Additional Service  | Commercial Vehicle    |


  #CAS-22301   VAP-05 Product Maintenance
   #FeatureID-ACAUTOCAS-4172,CAS-22301
  Scenario: ACAUTOCAS-4750: Mapping of VAP Policy with Product
    And VAP policy already existing in masters
    And Product masters already existing
    When user maps the VAP policy with product
    And user saves the record
    Then VAP policy should be attached with product

  Scenario: ACAUTOCAS-5611:  Mapping of VAP Policy with Scheme
    Given user logged in "Common Masters" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And VAP policy already existing in masters
    And Scheme masters already existing
    When user maps the VAP policy with scheme
    And user saves the record
    Then VAP policy should be attached with Scheme


  #CAS-22343   VAP-06 VAP Product Type (VAP Details Capturing)
  #FeatureID-ACAUTOCAS-4172,CAS-22343
  Scenario Outline: ACAUTOCAS-4242:  VAP details capturing on screen
    Given user logged in "Common Masters" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And VAP Parameter Policy, VAP Amount Computation Policy, VAP Payout Computation Policy already maintained
    And user is on Loan Details Page
    And user sees in VAP Product field all the active VAP Parameter Policy names mapped with "<product_scheme>"
    When user navigates to VAP details tab
    And user selects VAP product from drop down which are maintained in VAP parameter policy
    And user enters the VAP treatment as "<VAP_treatment>"
    And user enters other values on screen
    Then there will be "<fields>" which are auto populated as per the VAP product selected maintained in VAP parameter policy mapped with "<product_scheme>"
    #And user sees VAP details screen as per VAP Type of the Product selected
    And there are additional fields displayed on the screen on the basis of VAP product selected

    Examples:

      | fields            | VAP_treatment | product_scheme |
      | VAP Category      | Finance       | product        |
      | VAP Type          | Finance       | product        |
      | VAP Policy Amount | Finance       | product        |
      | VAP Category      | Revenue       | product        |
      | VAP Type          | Revenue       | product        |
      | VAP Policy Amount | Revenue       | product        |
      | VAP Category      | Collectible   | product        |
      | VAP Type          | Collectible   | product        |
      | VAP Policy Amount | Collectible   | product        |
      | VAP Category      | Upfront       | product        |
      | VAP Type          | Upfront       | product        |
      | VAP Policy Amount | Upfront       | product        |
      | VAP Category      | Finance       | scheme         |
      | VAP Type          | Finance       | scheme         |
      | VAP Policy Amount | Finance       | scheme         |
      | VAP Category      | Revenue       | scheme         |
      | VAP Type          | Revenue       | scheme         |
      | VAP Policy Amount | Revenue       | scheme         |
      | VAP Category      | Collectible   | scheme         |
      | VAP Type          | Collectible   | scheme         |
      | VAP Policy Amount | Collectible   | scheme         |
      | VAP Category      | Upfront       | scheme         |
      | VAP Type          | Upfront       | scheme         |
      | VAP Policy Amount | Upfront       | scheme         |



  #CAS-22343   VAP-06 VAP Product Type (VAP Details Capturing)
  #FeatureID-ACAUTOCAS-4172,CAS-22343
  Scenario Outline: ACAUTOCAS-4243:  Multiple VAP Product details capturing on Loan details screen
    And VAP Parameter Policy, VAP Amount Computation Policy, VAP Payout Computation Policy already maintained
    And one VAP product is already maintained on screen
    When user navigates to VAP details tab
    And user selects another VAP product from drop down which are maintained in VAP parameter policy
    And user enters VAP treatment as "<VAP_treatment>"
    And user enters other values on screen
    And user enters multiple VAP of same VAP Type
    And user saves the vap details
    Then there will be "<fields>" which are auto populated as per the VAP product selected
    And system shall allow capturing of multiple VAP Product details along with contract booking

    Examples:

      | fields            | VAP_treatment |
      | VAP Category      | Finance       |
      | VAP Type          | Finance       |
      | VAP Policy Amount | Finance       |
      | VAP Category      | Revenue       |
      | VAP Type          | Revenue       |
      | VAP Policy Amount | Revenue       |
      | VAP Category      | Collectible   |
      | VAP Type          | Collectible   |
      | VAP Policy Amount | Collectible   |
      | VAP Category      | Upfront       |
      | VAP Type          | Upfront       |
      | VAP Policy Amount | Upfront       |


  #o In case Computation Method defined as Charge Amount in VAP Amount Computation Policy mapped with VAP Product,
  # the VAP Amount shall be computed for the charges funded and the amount shall be taken
  # from the Charges and Fees Section at Loan Parameter Screen.
  #  � For VAP Type Fees and Charges the VAP Treatment Upfront and Collectible should not be displayed.


#CAS-22310	VAP-03 Pay-out Computation Policy
    #CAS-22303	VAP-02 VAP Amount Computation Policy
  #CAS-25519	Improvement for VAP Payout Computation Policy
    #FeatureID-ACAUTOCAS-4172,CAS-22303,CAS-25519,CAS-22310
  Scenario Outline: ACAUTOCAS-4247:  Mapping of Charge ID for VAP payout to be paid to each business partner in VAP payout computation policy
    And VAP Parameter Policy, VAP Amount Computation Policy, VAP Payout Computation Policy already maintained
    And user is already on VAP payout policy screen
    When user enters component code with name
    And user enters business partner "<business_partner>" from drop down that are applicable for VAP
    And user selects either "<Payout_Commission_computation>" hyperlink for business partner "<business_partner>"
    And user enters payout frequency as a mandatory field
      # The changes shall be done at backend for mapping of Business Partner Type with VAP Applicability.
    Then "<Payout_Commission_Chargeid>" shall be "<Status>" when "<Payout_Commission_computation>" is captured with "<Computation>" status as "<Status1>"
    #And system shall display the automated type of LOV in the Payout charge along with Commission charge fields
    And user shall be able to map the charge ID for VAP "<Payout_Commission_Chargeid>" amount to be paid to each Business Partner

# In case Commission Computation or Payout Computation is deleted, then the Payout Charge ID or Commission Charge Id
# In case Commission Computation or Payout Computation is deleted, then the Payout Charge ID or Commission Charge Id
  #  shall be enabled/disabled accordingly.
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


     #CAS-22343   VAP-06 VAP Product Type (VAP Details Capturing)
   #FeatureID-ACAUTOCAS-4173,CAS-22343
  Scenario Outline: ACAUTOCAS-4248:  VAP policy amount population with VAP Type as Fees and Charges details on VAP details screen while selecting VAP product "<VAP_Product>" with VAP Treatment as "<VAP_treatment>"
    And VAP Parameter Policy, VAP Amount Computation Policy, VAP Payout Computation Policy already maintained
    When user navigates to VAP details tab
    And user selects VAP product as "<VAP_Product>" from drop down with VAP treatment as "<VAP_treatment>"
    And there will be "<fields>" which are auto populated as per the VAP Parameter Policy attached with the product
    And user verifies new field of charge code which display all customer receivable charges that are mapped to the contract
    And these charges are mapped under VAP Amount Computation Policy in charges definition screen which are subset of charges levied on loan
    Then user selects the charge code from list
    And VAP Policy Amount field will be auto populated with the charge amount defined with the respective charge code
    #And charge amount gets added to loan amount at receipt details screen

    Examples:

      | VAP_Product | fields            | VAP_treatment |
      | Finance     | VAP Type          | Finance       |
      | Finance     | VAP Category      | Finance       |
      | Finance     | VAP Policy Amount | Finance       |



  #FeatureID-ACAUTOCAS-4173
  Scenario Outline: ACAUTOCAS-4250:  VAP Details editable under repayment parameters section on Loan parameter screen at  "<Var_Stage>"  Stage
    #hyperlink against Periodic Charges
    And Loan application is at "<Var_Stage>" stage
    And user is in VAP details section in repayment parameter section
    And VAP details already captured with respective VAP product, VAP Type, VAP treatment
    When user navigates to VAP details section of an application at "<Var_Stage>" stage
    #on details hyperlink under effective charge amount hyperlink against Periodic Charges at "<Var_Stage>" Stage
    Then user sees screen with all VAP details as in VAP number, VAP category, VAP Type, VAP treatment, chargecode, vap amount, follow contract parameters, payout commission, repay schedule etc.
    And user views hyperlinks available for "<hyperlink>" under column "<Column>"
    #a modal window of application charge details should get opened with fields "<Editable_Fields>" as editable
    #And user should be able to save the record

    Examples:

      | Var_Stage       | hyperlink         | Column                     |
      | DDE             | Add Edit Details  | Follow Contract Parameters |
      | DDE             | Payout Commission | Payout Commission          |
      | DDE             | View              | Repayment Schedule         |
      | Credit Approval | Add Edit Details  | Follow Contract Parameters |
      | Credit Approval | Payout Commission | Payout Commission          |
      | Credit Approval | View              | Repayment Schedule         |
      | Post Approval   | Add Edit Details  | Follow Contract Parameters |
      | Post Approval   | Payout Commission | Payout Commission          |
      | Post Approval   | View              | Repayment Schedule         |
      | Disbursal       | Add Edit Details  | Follow Contract Parameters |
      | Disbursal       | Payout Commission | Payout Commission          |
      | Disbursal       | View              | Repayment Schedule         |
      | Recommendation  | Add Edit Details  | Follow Contract Parameters |
      | Recommendation  | Payout Commission | Payout Commission          |
      | Recommendation  | View              | Repayment Schedule         |
      | Reconsideration | Add Edit Details  | Follow Contract Parameters |
      | Reconsideration | Payout Commission | Payout Commission          |
      | Reconsideration | View              | Repayment Schedule         |

#  The VAP Amount shall be displayed post updation of charges/FP at Charges screen
#  In case the charge amount is updates till Credit Approval, the VAP Amount shall be updated respectively


     #CAS-22345	VAP-07 VAP Loan Parameters
   #FeatureID-ACAUTOCAS-4173,CAS-22345
  Scenario Outline: ACAUTOCAS-4251:  Loan Amount, Capital Funded Computation as per VAP Treatment as "<VAP_treatment>" on VAP details screen at "<Var_Stage>"  Stage
    And Loan application is at "<Var_Stage>" stage
    And user is in VAP details section on loan parameter screen
    And VAP details already captured with respective VAP product, VAP Type, VAP treatment
    When user navigates to VAP details tab on loan parameter screen at "<Var_Stage>"  Stage
    And user enters VAP treatment as "<VAP_treatment>"
    Then "<Remarks>" into the capital funded field at loan parameter screen

    Examples:

      | Var_Stage       | Remarks                                        | VAP_treatment |
      | DDE             | VAP Amount will be added in Capital Funded     | Financed      |
      | DDE             | VAP Amount will be added in Capital Funded     | Revenue       |
      | DDE             | VAP Amount will not be added in Capital Funded | Upfront       |
      | DDE             | VAP Amount will not be added in Capital Funded | Collectible   |
      | Credit Approval | VAP Amount will be added in Capital Funded     | Financed      |
      | Credit Approval | VAP Amount will be added in Capital Funded     | Revenue       |
      | Credit Approval | VAP Amount will not be added in Capital Funded | Upfront       |
      | Credit Approval | VAP Amount will not be added in Capital Funded | Collectible   |
      | Post Approval   | VAP Amount will be added in Capital Funded     | Financed      |
      | Post Approval   | VAP Amount will be added in Capital Funded     | Revenue       |
      | Post Approval   | VAP Amount will not be added in Capital Funded | Upfront       |
      | Post Approval   | VAP Amount will not be added in Capital Funded | Collectible   |
      | Disbursal       | VAP Amount will be added in Capital Funded     | Financed      |
      | Disbursal       | VAP Amount will be added in Capital Funded     | Revenue       |
      | Disbursal       | VAP Amount will not be added in Capital Funded | Upfront       |
      | Disbursal       | VAP Amount will not be added in Capital Funded | Collectible   |
      | Recommendation  | VAP Amount will be added in Capital Funded     | Financed      |
      | Recommendation  | VAP Amount will be added in Capital Funded     | Revenue       |
      | Recommendation  | VAP Amount will not be added in Capital Funded | Upfront       |
      | Recommendation  | VAP Amount will not be added in Capital Funded | Collectible   |
      | Reconsideration | VAP Amount will be added in Capital Funded     | Financed      |
      | Reconsideration | VAP Amount will be added in Capital Funded     | Revenue       |
      | Reconsideration | VAP Amount will not be added in Capital Funded | Upfront       |
      | Reconsideration | VAP Amount will not be added in Capital Funded | Collectible   |


#  CAS-22734	Repayment Schedules - VAP
    #FeatureID-ACAUTOCAS-4173,CAS-22734
  Scenario Outline: ACAUTOCAS-4252:  VAP Repayment Schedule on VAP Details section in CAS under repayment parameters for an application at "<Var_Stage>" stage
    And at "<Var_Stage>" stage
    And user is in VAP details section in repayment parameter section
    And VAP details already captured with respective VAP product, VAP Type, VAP treatment
    And VAP repayment schedule hyperlink shall be enabled as per "<VAP_treatment>" VAP treatment selected
    When user clicks on hyperlinks available for "<hyperlink>" under column "<Column>"
    Then user should see "<Msg>" having effect of captured VAP details
    #repay schedule will exists for Financed, Revenue and Collectible VAP treatment
    Examples:

      | Var_Stage       | hyperlink | Column             | VAP_treatment | Msg                                                                                                                                                                  |
      | DDE             | view      | Repayment Schedule | Financed      | VAP repayment schedule on screen with Installment no, due date, effective installment, Installment Amount, opening principal, principal, interest, Closing Principal |
      | Credit Approval | view      | Repayment Schedule | Financed      | VAP repayment schedule on screen with Installment no, due date, effective installment, Installment Amount, opening principal, principal, interest, Closing Principal |
      | Post Approval   | view      | Repayment Schedule | Financed      | VAP repayment schedule on screen with Installment no, due date, effective installment, Installment Amount, opening principal, principal, interest, Closing Principal |
      | Disbursal       | view      | Repayment Schedule | Financed      | VAP repayment schedule on screen with Installment no, due date, effective installment, Installment Amount, opening principal, principal, interest, Closing Principal |
      | Recommendation  | view      | Repayment Schedule | Financed      | VAP repayment schedule on screen with Installment no, due date, effective installment, Installment Amount, opening principal, principal, interest, Closing Principal |
      | Reconsideration | view      | Repayment Schedule | Financed      | VAP repayment schedule on screen with Installment no, due date, effective installment, Installment Amount, opening principal, principal, interest, Closing Principal |
      | DDE             | view      | Repayment Schedule | Revenue       | VAP repayment schedule on screen with Installment no, due date, effective installment, Installment Amount, opening principal, principal, interest, Closing Principal |
      | Credit Approval | view      | Repayment Schedule | Revenue       | VAP repayment schedule on screen with Installment no, due date, effective installment, Installment Amount, opening principal, principal, interest, Closing Principal |
      | Post Approval   | view      | Repayment Schedule | Revenue       | VAP repayment schedule on screen with Installment no, due date, effective installment, Installment Amount, opening principal, principal, interest, Closing Principal |
      | Disbursal       | view      | Repayment Schedule | Revenue       | VAP repayment schedule on screen with Installment no, due date, effective installment, Installment Amount, opening principal, principal, interest, Closing Principal |
      | Recommendation  | view      | Repayment Schedule | Revenue       | VAP repayment schedule on screen with Installment no, due date, effective installment, Installment Amount, opening principal, principal, interest, Closing Principal |
      | Reconsideration | view      | Repayment Schedule | Revenue       | VAP repayment schedule on screen with Installment no, due date, effective installment, Installment Amount, opening principal, principal, interest, Closing Principal |
      | DDE             | view      | Repayment Schedule | Collectible   | VAP repayment schedule on screen with Installment no, due date, effective installment, Installment Amount, opening principal, principal, interest, Closing Principal |
      | Credit Approval | view      | Repayment Schedule | Collectible   | VAP repayment schedule on screen with Installment no, due date, effective installment, Installment Amount, opening principal, principal, interest, Closing Principal |
      | Post Approval   | view      | Repayment Schedule | Collectible   | VAP repayment schedule on screen with Installment no, due date, effective installment, Installment Amount, opening principal, principal, interest, Closing Principal |
      | Disbursal       | view      | Repayment Schedule | Collectible   | VAP repayment schedule on screen with Installment no, due date, effective installment, Installment Amount, opening principal, principal, interest, Closing Principal |
      | Recommendation  | view      | Repayment Schedule | Collectible   | VAP repayment schedule on screen with Installment no, due date, effective installment, Installment Amount, opening principal, principal, interest, Closing Principal |
      | Reconsideration | view      | Repayment Schedule | Collectible   | VAP repayment schedule on screen with Installment no, due date, effective installment, Installment Amount, opening principal, principal, interest, Closing Principal |


#  CAS-22734	Repayment Schedules - VAP
  #FeatureID-ACAUTOCAS-4173,CAS-22734
  Scenario Outline: ACAUTOCAS-4253:  Consolidated Repayment Schedule on VAP Details section in CAS under repayment parameters for an application at "<Var_Stage>" stage
    And at "<Var_Stage>" stage
    And user is in VAP details section in repayment parameter section
    And VAP details already captured with respective VAP product, VAP Type, VAP treatment
    And VAP repayment schedule hyperlink shall be enabled as per "<VAP_treatment>" VAP treatment selected
    When user clicks on consolidated repayment schedule "<hyperlink>" on repayment parameters screen
    Then user should see "<Msg>" having effect of captured VAP details along with contract repay schedule
    #repay schedule will exists for Financed, Revenue and Collectible VAP treatment
    Examples:

      | Var_Stage                 | hyperlink                       | VAP_treatment | Msg                                                                                                                                                                                                |
      | DDE                       | consolidated repayment schedule | Financed      | consolidated repayment schedule of VAP with contract on screen with Installment no, due date, effective installment, Installment Amount, opening principal, principal, interest, Closing Principal |
      | Credit Approval           | consolidated repayment schedule | Financed      | consolidated repayment schedule of VAP with contract on screen with Installment no, due date, effective installment, Installment Amount, opening principal, principal, interest, Closing Principal |
      | Post Approval             | consolidated repayment schedule | Financed      | consolidated repayment schedule of VAP with contract on screen with Installment no, due date, effective installment, Installment Amount, opening principal, principal, interest, Closing Principal |
      | Disbursal                 | consolidated repayment schedule | Financed      | consolidated repayment schedule of VAP with contract on screen with Installment no, due date, effective installment, Installment Amount, opening principal, principal, interest, Closing Principal |
      | Reconsideration           | consolidated repayment schedule | Financed      | consolidated repayment schedule of VAP with contract on screen with Installment no, due date, effective installment, Installment Amount, opening principal, principal, interest, Closing Principal |
      | Recommendation            | consolidated repayment schedule | Financed      | consolidated repayment schedule of VAP with contract on screen with Installment no, due date, effective installment, Installment Amount, opening principal, principal, interest, Closing Principal |
      | Tranche Initiation        | consolidated repayment schedule | Financed      | consolidated repayment schedule of VAP with contract on screen with Installment no, due date, effective installment, Installment Amount, opening principal, principal, interest, Closing Principal |
      | App update Recommendation | consolidated repayment schedule | Financed      | consolidated repayment schedule of VAP with contract on screen with Installment no, due date, effective installment, Installment Amount, opening principal, principal, interest, Closing Principal |
      | DDE                       | consolidated repayment schedule | Revenue       | consolidated repayment schedule of VAP with contract on screen with Installment no, due date, effective installment, Installment Amount, opening principal, principal, interest, Closing Principal |
      | Credit Approval           | consolidated repayment schedule | Revenue       | consolidated repayment schedule of VAP with contract on screen with Installment no, due date, effective installment, Installment Amount, opening principal, principal, interest, Closing Principal |
      | Post Approval             | consolidated repayment schedule | Revenue       | consolidated repayment schedule of VAP with contract on screen with Installment no, due date, effective installment, Installment Amount, opening principal, principal, interest, Closing Principal |
      | Disbursal                 | consolidated repayment schedule | Revenue       | consolidated repayment schedule of VAP with contract on screen with Installment no, due date, effective installment, Installment Amount, opening principal, principal, interest, Closing Principal |
      | Reconsideration           | consolidated repayment schedule | Revenue       | consolidated repayment schedule of VAP with contract on screen with Installment no, due date, effective installment, Installment Amount, opening principal, principal, interest, Closing Principal |
      | Recommendation            | consolidated repayment schedule | Revenue       | consolidated repayment schedule of VAP with contract on screen with Installment no, due date, effective installment, Installment Amount, opening principal, principal, interest, Closing Principal |
      | Tranche Initiation        | consolidated repayment schedule | Revenue       | consolidated repayment schedule of VAP with contract on screen with Installment no, due date, effective installment, Installment Amount, opening principal, principal, interest, Closing Principal |
      | App Update Recommendation | consolidated repayment schedule | Revenue       | consolidated repayment schedule of VAP with contract on screen with Installment no, due date, effective installment, Installment Amount, opening principal, principal, interest, Closing Principal |
      | DDE                       | consolidated repayment schedule | Collectible   | consolidated repayment schedule of VAP with contract on screen with Installment no, due date, effective installment, Installment Amount, opening principal, principal, interest, Closing Principal |
      | Credit Approval           | consolidated repayment schedule | Collectible   | consolidated repayment schedule of VAP with contract on screen with Installment no, due date, effective installment, Installment Amount, opening principal, principal, interest, Closing Principal |
      | Post Approval             | consolidated repayment schedule | Collectible   | consolidated repayment schedule of VAP with contract on screen with Installment no, due date, effective installment, Installment Amount, opening principal, principal, interest, Closing Principal |
      | Disbursal                 | consolidated repayment schedule | Collectible   | consolidated repayment schedule of VAP with contract on screen with Installment no, due date, effective installment, Installment Amount, opening principal, principal, interest, Closing Principal |
      | Reconsideration           | consolidated repayment schedule | Collectible   | consolidated repayment schedule of VAP with contract on screen with Installment no, due date, effective installment, Installment Amount, opening principal, principal, interest, Closing Principal |
      | Recommendation            | consolidated repayment schedule | Collectible   | consolidated repayment schedule of VAP with contract on screen with Installment no, due date, effective installment, Installment Amount, opening principal, principal, interest, Closing Principal |
      | Tranche Initiation        | consolidated repayment schedule | Collectible   | consolidated repayment schedule of VAP with contract on screen with Installment no, due date, effective installment, Installment Amount, opening principal, principal, interest, Closing Principal |
      | App Update Recommendation | consolidated repayment schedule | Collectible   | consolidated repayment schedule of VAP with contract on screen with Installment no, due date, effective installment, Installment Amount, opening principal, principal, interest, Closing Principal |


#  CAS-22776	Loan Booking with VAP Charges
    #FeatureID-ACAUTOCAS-4173,ACAUTOCAS-425,ACAUTOCAS-426,CAS-22776
  Scenario Outline: ACAUTOCAS-4254:  VAP Charges on Receipt section for adjustment at  "<Var_Stage>"  Stage
    And Loan application is at "<Var_Stage>" stage
    And user selected VAP Type as "<VAP_Type>" with VAP treatment as "<VAP_Treatment>" on VAP details screen
    And charge code which are customer receivable are added in vap details screen
    And this VAP treatment is mapped as charge amount in VAP amount computation policy
    When user navigates to receipts details section at "<Var_Stage>" stage
    Then VAP charges are also visible along with all other charges on receipts screen for VAP Type selected as "<VAP_Type>" with VAP treatment as "<VAP_Treatment>"
    And user verifies that "<msg>" for VAP treatment as "<VAP_Treatment>" on receipt details screen
    #And loan amount shall be increased by the charge amount that are funded for VAP treatment as "<VAP_Treatment>"

    Examples:

      | Var_Stage                 | VAP_Treatment | VAP_Type     | msg                                                                                                                   |
      | Disbursal                 | Financed      | Fees Charges | charges are automatically marked as received with loan amount shall be increased by the charge amount that are funded |
      | DDE                       | Financed      | Fees Charges | charges are automatically marked as received with loan amount shall be increased by the charge amount that are funded |
      | Credit Approval           | Financed      | Fees Charges | charges are automatically marked as received with loan amount shall be increased by the charge amount that are funded |
      | Post Approval             | Financed      | Fees Charges | charges are automatically marked as received with loan amount shall be increased by the charge amount that are funded |
      | Tranche Initiation        | Financed      | Fees Charges | charges are automatically marked as received with loan amount shall be increased by the charge amount that are funded |
      | App update recommendation | Financed      | Fees Charges | charges are automatically marked as received with loan amount shall be increased by the charge amount that are funded |
      | Disbursal                 | Upfront       |              | charges are present as receivables to be collected for adjustment with pending amount                                 |
      | DDE                       | Upfront       |              | charges are present as receivables to be collected for adjustment with pending amount                                 |
      | Credit Approval           | Upfront       |              | charges are present as receivables to be collected for adjustment with pending amount                                 |
      | Post Approval             | Upfront       |              | charges are present as receivables to be collected for adjustment with pending amount                                 |
      | Subsequent Disbursal      | Upfront       |              | charges are present as receivables to be collected for adjustment with pending amount                                 |
      | Disbursal                 | Revenue       | Fees Charges | loan amount shall be increased by the charge amount that are funded                                                   |
      | DDE                       | Revenue       | Fees Charges | loan amount shall be increased by the charge amount that are funded                                                   |
      | Credit Approval           | Revenue       | Fees Charges | loan amount shall be increased by the charge amount that are funded                                                   |
      | Post Approval             | Revenue       | Fees Charges | loan amount shall be increased by the charge amount that are funded                                                   |
      | Tranche Initiation        | Revenue       | Fees Charges | loan amount shall be increased by the charge amount that are funded                                                   |
      | App update recommendation | Revenue       | Fees Charges | loan amount shall be increased by the charge amount that are funded                                                   |


# CAS-60719	Re-execution of VAP Policy in case of Data Change
    #FeatureID-ACAUTOCAS-4173,ACAUTOCAS-425,ACAUTOCAS-426,CAS-60719
  Scenario Outline: ACAUTOCAS-4255:     Re-execution Tab should be available as per configuration at "<Var_Stage>"  Stage
    And Loan application is at "<Var_Stage>" stage
    When user maintains the configuration as YES in CAS_PROD_TYPE_CONFIG table Column RE_EXECUTE_VAP_ENABLE product type wise for enabling reexecute tab button at "<Var_Stage>" stage
    Then Re-Execute VAP button should be available below the VAP Grid

    Examples:

      | Var_Stage                 |
      | Disbursal                 |
      | DDE                       |
      | Credit Approval           |
      | Post Approval             |
      | Tranche Initiation        |
      | App update recommendation |
      | Recommendation            |
      | Reconsideration           |


#  # CAS-60719	Re-execution of VAP Policy in case of Data Change
    #FeatureID-ACAUTOCAS-4173,ACAUTOCAS-425,ACAUTOCAS-426,CAS-60719
  Scenario Outline: ACAUTOCAS-4256:  Re-execution Tab while "<vap_differential>" amount gets changed at "<Var_Stage>" Stage
    And Loan application is at "<Var_Stage>" stage
    And configuration is maintained as YES in CAS_PROD_TYPE_CONFIG table for enabling Re-execution Tab
    When user updates the "<vap_differential>" amount at "<Var_Stage>" stage
    And user clicks on Re-execute VAP button
    Then VAP Policy will be re-executed on latest Data at "<Var_Stage>" stage
    And differential amount will be intact with VAP Amount after re-execution

    Examples:

      | Var_Stage                 | vap_differential |
      | Disbursal                 | vap              |
      | DDE                       | vap              |
      | Credit Approval           | vap              |
      | Disbursal Initiation      | vap              |
      #| Disbursal Author          | vap              |
      | Tranche Initiation        | vap              |
      | App update recommendation | vap              |
      | Recommendation            | vap              |
      | Reconsideration           | vap              |
      | Disbursal                 | differential     |
      | DDE                       | differential     |
      | Credit Approval           | differential     |
      | Disbursal Initiation      | differential     |
      #| Disbursal Author          | differential     |
      | Tranche Initiation        | differential     |
      | App update recommendation | differential     |
      | Recommendation            | differential     |
      | Reconsideration           | differential     |


# CAS-60719	Re-execution of VAP Policy in case of Data Change
    #FeatureID-ACAUTOCAS-4173,ACAUTOCAS-425,ACAUTOCAS-426,CAS-60719
  Scenario Outline: ACAUTOCAS-4257:  Re-execution of VAP Policy in case of Data changes on transaction at "<Var_Stage>" Stage
    And Loan application is at "<Var_Stage>" stage
    And user add the VAP Details and parameter is mapped for audit in AUDIT_LOG_PARAMETER_MAPPING table
    And VAP_DETAILS interface is mapped in INTERFACE_AUDIT_EVENT_MAPPING table
    When user changes any parameter value on transaction
    And user moves to next stage
    Then re-execution of VAP Policy should automatically happens at "<Var_Stage>" events
    #And data is compared with last saved value
    And system should throw an error message for re-execution of vap details in case data is mismatched with last saved value
      #    When user add the VAP Details and parameter is mapped for audit in AUDIT_LOG_PARAMETER_MAPPING table
#    then parameter value will be saved. And if We mapped the VAP_DETAILS  interface
#    in INTERFACE_AUDIT_EVENT_MAPPING table data will compare with the latest data
#    and saved data at mapped event if data is mismatched than it should through error for re-execution.

    Examples:

      | Var_Stage                 |
      | DDE                       |
      | Disbursal Initiation      |
      #| Disbursal Author     |
      | Credit Approval Save      |
      | Tranche Initiation        |
      | App update recommendation |
      | Recommendation            |
      | Reconsideration           |

#VAP Charges --Waiver
  #FeatureID-ACAUTOCAS-410
  Scenario: ACAUTOCAS-4751: Waiver Initiation for VAP Charges attached with an application
    And Eligible loan applications already visible on Waiver Initiation Screen
    When user navigates to Waiver initiation Screen
    And user verifies VAP charges in application charges section
    And user enters all details of charge amount to be waived in waiver amount fields
    And user enters waiver initiation reasons from drop down
    And user completes the Waiver Through,To, seen tasks while initiating waiver
    And user saves the record
    Then user will be able to initiate waiver of VAP charges attached with an application

  #FeatureID-ACAUTOCAS-410
  Scenario Outline: ACAUTOCAS-4258:  Waiver Approval for VAP Charges attached with an application
    And Eligible loan applications already visible on Waiver Initiation Screen
    And user initiated the waiver from Waiver Initiation Screen
    When user navigates to Waiver Approval Screen
    And user enters decision details as "<Waiver_Decision>"
    And user selects the reason which is populated basis decision value selected
    And user enters reason description with comments on screen
    And user "<Save>" the record
    Then user will be able to approve waiver of VAP charges

    Examples:

      | Waiver_Decision | Save             |
      | Approve         | Save and Forward |
      | Approve         | Save and Submit  |
      | Approve         | Save             |
      | Reject          | Save and Forward |
      | Reject          | Save and Submit  |
      | Reject          | Save             |

  #FeatureID-ACAUTOCAS-410
  Scenario Outline: ACAUTOCAS-4259:  VAP Charges waiver and execution of charge policy on transaction at  "<Var_Stage>"  Stage
   #Waiver Service task is attached for Consumer Vehicle LOB and mapped with DDE Stage
    And Loan application is at "<Var_Stage>" stage
    When user navigates to Waiver "<initiated_approved>" Screen
    And user "<Waiver_Status>" waiver of any VAP charges on "<initiated_approved>" Screen
    And user completes the Waiver Through,To, seen tasks when user "<Waiver_Status>"
    And user saves record
    And user verifies the Charge on Transaction at "<Var_Stage>" stage
    Then charges on transaction should be "<Enable_Disable>" as per Waiver "<initiated_approved>"
    And user verifies the charge value on transaction

    Examples:

      | Var_Stage       | Waiver_Status | Enable_Disable | initiated_approved |
      | Disbursal       | initiates     | disabled       | inititaion         |
      | DDE             | initiates     | disabled       | inititaion         |
      | Credit Approval | initiates     | disabled       | inititaion         |
      | Post Approval   | initiates     | disabled       | inititaion         |
      | Disbursal       | approves      | enabled        | approval           |
      | DDE             | approves      | enabled        | approval           |
      | Credit Approval | approves      | enabled        | approval           |
      | Post Approval   | approves      | enabled        | approval           |

  ####################===============================================#####################################



