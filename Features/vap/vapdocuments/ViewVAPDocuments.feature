@Epic-VAP
@AuthoredBy-sajja.ravikumar
#OriginalAuthor-rajni.gola
@ReviewedBy-
@ImplementedBy-
@TechReviewedBy-

@NotImplemented

Feature: View VAP Documents

  Background:
    Given User is logged in CAS with "<SourceDataFile>" under "<SheetName>" and "<RowNumber>"
    And user has configured VAP policy for product mapped in the application in Product master
    And user has configured VAP policy for scheme mapped in the application in Scheme master
    And user has configured VAP Parameter Policy, VAP Amount Computation Policy, VAP Payout Computation Policy, VAP Policy masters under CAS - Common Masters
    And user has selected "Enable at Post Sanction" flag in "VAP Parameter Policy" master under CAS - Common Masters for all vap types

  #FeatureID-ACAUTOCAS-208
  Scenario Outline: Validate Documents tab under VAP Details tab for vap type "<VAP_Type>" when vap details "<Added>" for application on "<Var_Stage>"
    And user open an application at "<Var_Stage>" Stage
    And user has "<Added>" vap details for VAP product of vap type "<VAP_Type>" with the application
    And user has selected document checklist in the field "<Field>" in "<Master>" master for vap type "<VAP_Type>"
    And vap policy is configured vap parameter policy of vap type "<VAP_Type>"
    When user open VAP details from "<Opening_Link>"
    And user selects VAP product of vap type "<VAP_Type>" from vap grid in edit mode
    Then user should be able to view "<Tab>" tab "<View_Mode>" for user input
    Examples:
      | Var_Stage            | Opening_Link                           | VAP_Type                   | Added         | Field                          | Master               | Tab       | View_Mode |
      | DDE                  | VAP details tab under Loan Details tab | Asset Insurance            | already added | VAP Document Mapping Checklist | VAP Parameter Policy | Documents | enabled   |
      | DDE                  | VAP details tab under Loan Details tab | Asset Insurance            | not added     | VAP Document Mapping Checklist | VAP Parameter Policy | Documents | disabled  |
      | DDE                  | VAP details tab under Loan Details tab | Life Insurance             | already added | VAP Document Mapping Checklist | VAP Parameter Policy | Documents | enabled   |
      | DDE                  | VAP details tab under Loan Details tab | Life Insurance             | not added     | VAP Document Mapping Checklist | VAP Parameter Policy | Documents | disabled  |
      | DDE                  | VAP details tab under Loan Details tab | Credit Protection          | already added | VAP Document Mapping Checklist | VAP Parameter Policy | Documents | enabled   |
      | DDE                  | VAP details tab under Loan Details tab | Credit Protection          | not added     | VAP Document Mapping Checklist | VAP Parameter Policy | Documents | disabled  |
      | DDE                  | VAP details tab under Loan Details tab | Payment Protection         | already added | VAP Document Mapping Checklist | VAP Parameter Policy | Documents | enabled   |
      | DDE                  | VAP details tab under Loan Details tab | Payment Protection         | not added     | VAP Document Mapping Checklist | VAP Parameter Policy | Documents | disabled  |
      | DDE                  | VAP details tab under Loan Details tab | GAP Insurance              | already added | VAP Document Mapping Checklist | VAP Parameter Policy | Documents | enabled   |
      | DDE                  | VAP details tab under Loan Details tab | GAP Insurance              | not added     | VAP Document Mapping Checklist | VAP Parameter Policy | Documents | disabled  |
      | DDE                  | VAP details tab under Loan Details tab | Extended Warranty          | already added | VAP Document Mapping Checklist | VAP Parameter Policy | Documents | enabled   |
      | DDE                  | VAP details tab under Loan Details tab | Extended Warranty          | not added     | VAP Document Mapping Checklist | VAP Parameter Policy | Documents | disabled  |
      | DDE                  | VAP details tab under Loan Details tab | Tyre and Wheel             | already added | VAP Document Mapping Checklist | VAP Parameter Policy | Documents | enabled   |
      | DDE                  | VAP details tab under Loan Details tab | Tyre and Wheel             | not added     | VAP Document Mapping Checklist | VAP Parameter Policy | Documents | disabled  |
      | DDE                  | VAP details tab under Loan Details tab | Home Furnishing            | already added | VAP Document Mapping Checklist | VAP Parameter Policy | Documents | enabled   |
      | DDE                  | VAP details tab under Loan Details tab | Home Furnishing            | not added     | VAP Document Mapping Checklist | VAP Parameter Policy | Documents | disabled  |
      | DDE                  | VAP details tab under Loan Details tab | Vehicle Accessories        | already added | VAP Document Mapping Checklist | VAP Parameter Policy | Documents | enabled   |
      | DDE                  | VAP details tab under Loan Details tab | Vehicle Accessories        | not added     | VAP Document Mapping Checklist | VAP Parameter Policy | Documents | disabled  |
      | DDE                  | VAP details tab under Loan Details tab | Implements and Attachments | already added | VAP Document Mapping Checklist | VAP Parameter Policy | Documents | enabled   |
      | DDE                  | VAP details tab under Loan Details tab | Implements and Attachments | not added     | VAP Document Mapping Checklist | VAP Parameter Policy | Documents | disabled  |
      | DDE                  | VAP details tab under Loan Details tab | GPS                        | already added | VAP Document Mapping Checklist | VAP Parameter Policy | Documents | enabled   |
      | DDE                  | VAP details tab under Loan Details tab | GPS                        | not added     | VAP Document Mapping Checklist | VAP Parameter Policy | Documents | disabled  |
      | DDE                  | VAP details tab under Loan Details tab | Fees and Charges           | already added | VAP Document Mapping Checklist | VAP Parameter Policy | Documents | enabled   |
      | DDE                  | VAP details tab under Loan Details tab | Fees and Charges           | not added     | VAP Document Mapping Checklist | VAP Parameter Policy | Documents | disabled  |
      | Recommendation       | Loan Information option                | Asset Insurance            | already added | VAP Document Mapping Checklist | VAP Parameter Policy | Documents | enabled   |
      | Recommendation       | Loan Information option                | Asset Insurance            | not added     | VAP Document Mapping Checklist | VAP Parameter Policy | Documents | disabled  |
      | Recommendation       | Loan Information option                | Life Insurance             | already added | VAP Document Mapping Checklist | VAP Parameter Policy | Documents | enabled   |
      | Recommendation       | Loan Information option                | Life Insurance             | not added     | VAP Document Mapping Checklist | VAP Parameter Policy | Documents | disabled  |
      | Recommendation       | Loan Information option                | Credit Protection          | already added | VAP Document Mapping Checklist | VAP Parameter Policy | Documents | enabled   |
      | Recommendation       | Loan Information option                | Credit Protection          | not added     | VAP Document Mapping Checklist | VAP Parameter Policy | Documents | disabled  |
      | Recommendation       | Loan Information option                | Payment Protection         | already added | VAP Document Mapping Checklist | VAP Parameter Policy | Documents | enabled   |
      | Recommendation       | Loan Information option                | Payment Protection         | not added     | VAP Document Mapping Checklist | VAP Parameter Policy | Documents | disabled  |
      | Recommendation       | Loan Information option                | GAP Insurance              | already added | VAP Document Mapping Checklist | VAP Parameter Policy | Documents | enabled   |
      | Recommendation       | Loan Information option                | GAP Insurance              | not added     | VAP Document Mapping Checklist | VAP Parameter Policy | Documents | disabled  |
      | Recommendation       | Loan Information option                | Extended Warranty          | already added | VAP Document Mapping Checklist | VAP Parameter Policy | Documents | enabled   |
      | Recommendation       | Loan Information option                | Extended Warranty          | not added     | VAP Document Mapping Checklist | VAP Parameter Policy | Documents | disabled  |
      | Recommendation       | Loan Information option                | Tyre and Wheel             | already added | VAP Document Mapping Checklist | VAP Parameter Policy | Documents | enabled   |
      | Recommendation       | Loan Information option                | Tyre and Wheel             | not added     | VAP Document Mapping Checklist | VAP Parameter Policy | Documents | disabled  |
      | Recommendation       | Loan Information option                | Home Furnishing            | already added | VAP Document Mapping Checklist | VAP Parameter Policy | Documents | enabled   |
      | Recommendation       | Loan Information option                | Home Furnishing            | not added     | VAP Document Mapping Checklist | VAP Parameter Policy | Documents | disabled  |
      | Recommendation       | Loan Information option                | Vehicle Accessories        | already added | VAP Document Mapping Checklist | VAP Parameter Policy | Documents | enabled   |
      | Recommendation       | Loan Information option                | Vehicle Accessories        | not added     | VAP Document Mapping Checklist | VAP Parameter Policy | Documents | disabled  |
      | Recommendation       | Loan Information option                | Implements and Attachments | already added | VAP Document Mapping Checklist | VAP Parameter Policy | Documents | enabled   |
      | Recommendation       | Loan Information option                | Implements and Attachments | not added     | VAP Document Mapping Checklist | VAP Parameter Policy | Documents | disabled  |
      | Recommendation       | Loan Information option                | GPS                        | already added | VAP Document Mapping Checklist | VAP Parameter Policy | Documents | enabled   |
      | Recommendation       | Loan Information option                | GPS                        | not added     | VAP Document Mapping Checklist | VAP Parameter Policy | Documents | disabled  |
      | Recommendation       | Loan Information option                | Fees and Charges           | already added | VAP Document Mapping Checklist | VAP Parameter Policy | Documents | enabled   |
      | Recommendation       | Loan Information option                | Fees and Charges           | not added     | VAP Document Mapping Checklist | VAP Parameter Policy | Documents | disabled  |
      | Credit Approval      | 3 dots option                          | Asset Insurance            | already added | VAP Document Mapping Checklist | VAP Parameter Policy | Documents | enabled   |
      | Credit Approval      | 3 dots option                          | Asset Insurance            | not added     | VAP Document Mapping Checklist | VAP Parameter Policy | Documents | disabled  |
      | Credit Approval      | 3 dots option                          | Life Insurance             | already added | VAP Document Mapping Checklist | VAP Parameter Policy | Documents | enabled   |
      | Credit Approval      | 3 dots option                          | Life Insurance             | not added     | VAP Document Mapping Checklist | VAP Parameter Policy | Documents | disabled  |
      | Credit Approval      | 3 dots option                          | Credit Protection          | already added | VAP Document Mapping Checklist | VAP Parameter Policy | Documents | enabled   |
      | Credit Approval      | 3 dots option                          | Credit Protection          | not added     | VAP Document Mapping Checklist | VAP Parameter Policy | Documents | disabled  |
      | Credit Approval      | 3 dots option                          | Payment Protection         | already added | VAP Document Mapping Checklist | VAP Parameter Policy | Documents | enabled   |
      | Credit Approval      | 3 dots option                          | Payment Protection         | not added     | VAP Document Mapping Checklist | VAP Parameter Policy | Documents | disabled  |
      | Credit Approval      | 3 dots option                          | GAP Insurance              | already added | VAP Document Mapping Checklist | VAP Parameter Policy | Documents | enabled   |
      | Credit Approval      | 3 dots option                          | GAP Insurance              | not added     | VAP Document Mapping Checklist | VAP Parameter Policy | Documents | disabled  |
      | Credit Approval      | 3 dots option                          | Extended Warranty          | already added | VAP Document Mapping Checklist | VAP Parameter Policy | Documents | enabled   |
      | Credit Approval      | 3 dots option                          | Extended Warranty          | not added     | VAP Document Mapping Checklist | VAP Parameter Policy | Documents | disabled  |
      | Credit Approval      | 3 dots option                          | Tyre and Wheel             | already added | VAP Document Mapping Checklist | VAP Parameter Policy | Documents | enabled   |
      | Credit Approval      | 3 dots option                          | Tyre and Wheel             | not added     | VAP Document Mapping Checklist | VAP Parameter Policy | Documents | disabled  |
      | Credit Approval      | 3 dots option                          | Home Furnishing            | already added | VAP Document Mapping Checklist | VAP Parameter Policy | Documents | enabled   |
      | Credit Approval      | 3 dots option                          | Home Furnishing            | not added     | VAP Document Mapping Checklist | VAP Parameter Policy | Documents | disabled  |
      | Credit Approval      | 3 dots option                          | Vehicle Accessories        | already added | VAP Document Mapping Checklist | VAP Parameter Policy | Documents | enabled   |
      | Credit Approval      | 3 dots option                          | Vehicle Accessories        | not added     | VAP Document Mapping Checklist | VAP Parameter Policy | Documents | disabled  |
      | Credit Approval      | 3 dots option                          | Implements and Attachments | already added | VAP Document Mapping Checklist | VAP Parameter Policy | Documents | enabled   |
      | Credit Approval      | 3 dots option                          | Implements and Attachments | not added     | VAP Document Mapping Checklist | VAP Parameter Policy | Documents | disabled  |
      | Credit Approval      | 3 dots option                          | GPS                        | already added | VAP Document Mapping Checklist | VAP Parameter Policy | Documents | enabled   |
      | Credit Approval      | 3 dots option                          | GPS                        | not added     | VAP Document Mapping Checklist | VAP Parameter Policy | Documents | disabled  |
      | Credit Approval      | 3 dots option                          | Fees and Charges           | already added | VAP Document Mapping Checklist | VAP Parameter Policy | Documents | enabled   |
      | Credit Approval      | 3 dots option                          | Fees and Charges           | not added     | VAP Document Mapping Checklist | VAP Parameter Policy | Documents | disabled  |
      | Disbursal Initiation | VAP details tab                        | Asset Insurance            | already added | VAP Document Mapping Checklist | VAP Parameter Policy | Documents | enabled   |
      | Disbursal Initiation | VAP details tab                        | Asset Insurance            | not added     | VAP Document Mapping Checklist | VAP Parameter Policy | Documents | disabled  |
      | Disbursal Initiation | VAP details tab                        | Life Insurance             | already added | VAP Document Mapping Checklist | VAP Parameter Policy | Documents | enabled   |
      | Disbursal Initiation | VAP details tab                        | Life Insurance             | not added     | VAP Document Mapping Checklist | VAP Parameter Policy | Documents | disabled  |
      | Disbursal Initiation | VAP details tab                        | Credit Protection          | already added | VAP Document Mapping Checklist | VAP Parameter Policy | Documents | enabled   |
      | Disbursal Initiation | VAP details tab                        | Credit Protection          | not added     | VAP Document Mapping Checklist | VAP Parameter Policy | Documents | disabled  |
      | Disbursal Initiation | VAP details tab                        | Payment Protection         | already added | VAP Document Mapping Checklist | VAP Parameter Policy | Documents | enabled   |
      | Disbursal Initiation | VAP details tab                        | Payment Protection         | not added     | VAP Document Mapping Checklist | VAP Parameter Policy | Documents | disabled  |
      | Disbursal Initiation | VAP details tab                        | GAP Insurance              | already added | VAP Document Mapping Checklist | VAP Parameter Policy | Documents | enabled   |
      | Disbursal Initiation | VAP details tab                        | GAP Insurance              | not added     | VAP Document Mapping Checklist | VAP Parameter Policy | Documents | disabled  |
      | Disbursal Initiation | VAP details tab                        | Extended Warranty          | already added | VAP Document Mapping Checklist | VAP Parameter Policy | Documents | enabled   |
      | Disbursal Initiation | VAP details tab                        | Extended Warranty          | not added     | VAP Document Mapping Checklist | VAP Parameter Policy | Documents | disabled  |
      | Disbursal Initiation | VAP details tab                        | Tyre and Wheel             | already added | VAP Document Mapping Checklist | VAP Parameter Policy | Documents | enabled   |
      | Disbursal Initiation | VAP details tab                        | Tyre and Wheel             | not added     | VAP Document Mapping Checklist | VAP Parameter Policy | Documents | disabled  |
      | Disbursal Initiation | VAP details tab                        | Home Furnishing            | already added | VAP Document Mapping Checklist | VAP Parameter Policy | Documents | enabled   |
      | Disbursal Initiation | VAP details tab                        | Home Furnishing            | not added     | VAP Document Mapping Checklist | VAP Parameter Policy | Documents | disabled  |
      | Disbursal Initiation | VAP details tab                        | Vehicle Accessories        | already added | VAP Document Mapping Checklist | VAP Parameter Policy | Documents | enabled   |
      | Disbursal Initiation | VAP details tab                        | Vehicle Accessories        | not added     | VAP Document Mapping Checklist | VAP Parameter Policy | Documents | disabled  |
      | Disbursal Initiation | VAP details tab                        | Implements and Attachments | already added | VAP Document Mapping Checklist | VAP Parameter Policy | Documents | enabled   |
      | Disbursal Initiation | VAP details tab                        | Implements and Attachments | not added     | VAP Document Mapping Checklist | VAP Parameter Policy | Documents | disabled  |
      | Disbursal Initiation | VAP details tab                        | GPS                        | already added | VAP Document Mapping Checklist | VAP Parameter Policy | Documents | enabled   |
      | Disbursal Initiation | VAP details tab                        | GPS                        | not added     | VAP Document Mapping Checklist | VAP Parameter Policy | Documents | disabled  |
      | Disbursal Initiation | VAP details tab                        | Fees and Charges           | already added | VAP Document Mapping Checklist | VAP Parameter Policy | Documents | enabled   |
      | Disbursal Initiation | VAP details tab                        | Fees and Charges           | not added     | VAP Document Mapping Checklist | VAP Parameter Policy | Documents | disabled  |
      | Reconsideration      | Loan Information option                | Asset Insurance            | already added | VAP Document Mapping Checklist | VAP Parameter Policy | Documents | enabled   |
      | Reconsideration      | Loan Information option                | Asset Insurance            | not added     | VAP Document Mapping Checklist | VAP Parameter Policy | Documents | disabled  |
      | Reconsideration      | Loan Information option                | Life Insurance             | already added | VAP Document Mapping Checklist | VAP Parameter Policy | Documents | enabled   |
      | Reconsideration      | Loan Information option                | Life Insurance             | not added     | VAP Document Mapping Checklist | VAP Parameter Policy | Documents | disabled  |
      | Reconsideration      | Loan Information option                | Credit Protection          | already added | VAP Document Mapping Checklist | VAP Parameter Policy | Documents | enabled   |
      | Reconsideration      | Loan Information option                | Credit Protection          | not added     | VAP Document Mapping Checklist | VAP Parameter Policy | Documents | disabled  |
      | Reconsideration      | Loan Information option                | Payment Protection         | already added | VAP Document Mapping Checklist | VAP Parameter Policy | Documents | enabled   |
      | Reconsideration      | Loan Information option                | Payment Protection         | not added     | VAP Document Mapping Checklist | VAP Parameter Policy | Documents | disabled  |
      | Reconsideration      | Loan Information option                | GAP Insurance              | already added | VAP Document Mapping Checklist | VAP Parameter Policy | Documents | enabled   |
      | Reconsideration      | Loan Information option                | GAP Insurance              | not added     | VAP Document Mapping Checklist | VAP Parameter Policy | Documents | disabled  |
      | Reconsideration      | Loan Information option                | Extended Warranty          | already added | VAP Document Mapping Checklist | VAP Parameter Policy | Documents | enabled   |
      | Reconsideration      | Loan Information option                | Extended Warranty          | not added     | VAP Document Mapping Checklist | VAP Parameter Policy | Documents | disabled  |
      | Reconsideration      | Loan Information option                | Tyre and Wheel             | already added | VAP Document Mapping Checklist | VAP Parameter Policy | Documents | enabled   |
      | Reconsideration      | Loan Information option                | Tyre and Wheel             | not added     | VAP Document Mapping Checklist | VAP Parameter Policy | Documents | disabled  |
      | Reconsideration      | Loan Information option                | Home Furnishing            | already added | VAP Document Mapping Checklist | VAP Parameter Policy | Documents | enabled   |
      | Reconsideration      | Loan Information option                | Home Furnishing            | not added     | VAP Document Mapping Checklist | VAP Parameter Policy | Documents | disabled  |
      | Reconsideration      | Loan Information option                | Vehicle Accessories        | already added | VAP Document Mapping Checklist | VAP Parameter Policy | Documents | enabled   |
      | Reconsideration      | Loan Information option                | Vehicle Accessories        | not added     | VAP Document Mapping Checklist | VAP Parameter Policy | Documents | disabled  |
      | Reconsideration      | Loan Information option                | Implements and Attachments | already added | VAP Document Mapping Checklist | VAP Parameter Policy | Documents | enabled   |
      | Reconsideration      | Loan Information option                | Implements and Attachments | not added     | VAP Document Mapping Checklist | VAP Parameter Policy | Documents | disabled  |
      | Reconsideration      | Loan Information option                | GPS                        | already added | VAP Document Mapping Checklist | VAP Parameter Policy | Documents | enabled   |
      | Reconsideration      | Loan Information option                | GPS                        | not added     | VAP Document Mapping Checklist | VAP Parameter Policy | Documents | disabled  |
      | Reconsideration      | Loan Information option                | Fees and Charges           | already added | VAP Document Mapping Checklist | VAP Parameter Policy | Documents | enabled   |
      | Reconsideration      | Loan Information option                | Fees and Charges           | not added     | VAP Document Mapping Checklist | VAP Parameter Policy | Documents | disabled  |
      | Post Approval        | VAP details tab under Loan Details tab | Asset Insurance            | already added | VAP Document Mapping Checklist | VAP Parameter Policy | Documents | enabled   |
      | Post Approval        | VAP details tab under Loan Details tab | Asset Insurance            | not added     | VAP Document Mapping Checklist | VAP Parameter Policy | Documents | disabled  |
      | Post Approval        | VAP details tab under Loan Details tab | Life Insurance             | already added | VAP Document Mapping Checklist | VAP Parameter Policy | Documents | enabled   |
      | Post Approval        | VAP details tab under Loan Details tab | Life Insurance             | not added     | VAP Document Mapping Checklist | VAP Parameter Policy | Documents | disabled  |
      | Post Approval        | VAP details tab under Loan Details tab | Credit Protection          | already added | VAP Document Mapping Checklist | VAP Parameter Policy | Documents | enabled   |
      | Post Approval        | VAP details tab under Loan Details tab | Credit Protection          | not added     | VAP Document Mapping Checklist | VAP Parameter Policy | Documents | disabled  |
      | Post Approval        | VAP details tab under Loan Details tab | Payment Protection         | already added | VAP Document Mapping Checklist | VAP Parameter Policy | Documents | enabled   |
      | Post Approval        | VAP details tab under Loan Details tab | Payment Protection         | not added     | VAP Document Mapping Checklist | VAP Parameter Policy | Documents | disabled  |
      | Post Approval        | VAP details tab under Loan Details tab | GAP Insurance              | already added | VAP Document Mapping Checklist | VAP Parameter Policy | Documents | enabled   |
      | Post Approval        | VAP details tab under Loan Details tab | GAP Insurance              | not added     | VAP Document Mapping Checklist | VAP Parameter Policy | Documents | disabled  |
      | Post Approval        | VAP details tab under Loan Details tab | Extended Warranty          | already added | VAP Document Mapping Checklist | VAP Parameter Policy | Documents | enabled   |
      | Post Approval        | VAP details tab under Loan Details tab | Extended Warranty          | not added     | VAP Document Mapping Checklist | VAP Parameter Policy | Documents | disabled  |
      | Post Approval        | VAP details tab under Loan Details tab | Tyre and Wheel             | already added | VAP Document Mapping Checklist | VAP Parameter Policy | Documents | enabled   |
      | Post Approval        | VAP details tab under Loan Details tab | Tyre and Wheel             | not added     | VAP Document Mapping Checklist | VAP Parameter Policy | Documents | disabled  |
      | Post Approval        | VAP details tab under Loan Details tab | Home Furnishing            | already added | VAP Document Mapping Checklist | VAP Parameter Policy | Documents | enabled   |
      | Post Approval        | VAP details tab under Loan Details tab | Home Furnishing            | not added     | VAP Document Mapping Checklist | VAP Parameter Policy | Documents | disabled  |
      | Post Approval        | VAP details tab under Loan Details tab | Vehicle Accessories        | already added | VAP Document Mapping Checklist | VAP Parameter Policy | Documents | enabled   |
      | Post Approval        | VAP details tab under Loan Details tab | Vehicle Accessories        | not added     | VAP Document Mapping Checklist | VAP Parameter Policy | Documents | disabled  |
      | Post Approval        | VAP details tab under Loan Details tab | Implements and Attachments | already added | VAP Document Mapping Checklist | VAP Parameter Policy | Documents | enabled   |
      | Post Approval        | VAP details tab under Loan Details tab | Implements and Attachments | not added     | VAP Document Mapping Checklist | VAP Parameter Policy | Documents | disabled  |
      | Post Approval        | VAP details tab under Loan Details tab | GPS                        | already added | VAP Document Mapping Checklist | VAP Parameter Policy | Documents | enabled   |
      | Post Approval        | VAP details tab under Loan Details tab | GPS                        | not added     | VAP Document Mapping Checklist | VAP Parameter Policy | Documents | disabled  |
      | Post Approval        | VAP details tab under Loan Details tab | Fees and Charges           | already added | VAP Document Mapping Checklist | VAP Parameter Policy | Documents | enabled   |
      | Post Approval        | VAP details tab under Loan Details tab | Fees and Charges           | not added     | VAP Document Mapping Checklist | VAP Parameter Policy | Documents | disabled  |

  #FeatureID-ACAUTOCAS-208
  Scenario Outline: Validate Documents tab is "<View_Mode>" for vap type "<VAP_Type>" under VAP Details tab for application on "<Var_Stage>"
    And user open an application at "<Var_Stage>" Stage
    And user has already mapped VAP product of vap type "<VAP_Type>" with the application
    And user has "<Selection_Flag>" document checklist in the field "<Field>" in "<Master>" master for vap type "<VAP_Type>"
    And vap policy is configured vap parameter policy of vap type "<VAP_Type>"
    When user open VAP details from "<Opening_Link>"
    And user selects VAP product of vap type "<VAP_Type>" from vap grid in edit mode
    Then user should be able to view "<Tab>" tab "<View_Mode>" for user input
    Examples:
      | Var_Stage            | Opening_Link                           | VAP_Type                   | Selection_Flag | Field                          | Master               | Tab       | View_Mode |
      | DDE                  | VAP details tab under Loan Details tab | Asset Insurance            | selected       | VAP Document Mapping Checklist | VAP Parameter Policy | Documents | enabled   |
      | DDE                  | VAP details tab under Loan Details tab | Asset Insurance            | not selected   | VAP Document Mapping Checklist | VAP Parameter Policy | Documents | disabled  |
      | DDE                  | VAP details tab under Loan Details tab | Life Insurance             | selected       | VAP Document Mapping Checklist | VAP Parameter Policy | Documents | enabled   |
      | DDE                  | VAP details tab under Loan Details tab | Life Insurance             | not selected   | VAP Document Mapping Checklist | VAP Parameter Policy | Documents | disabled  |
      | DDE                  | VAP details tab under Loan Details tab | Credit Protection          | selected       | VAP Document Mapping Checklist | VAP Parameter Policy | Documents | enabled   |
      | DDE                  | VAP details tab under Loan Details tab | Credit Protection          | not selected   | VAP Document Mapping Checklist | VAP Parameter Policy | Documents | disabled  |
      | DDE                  | VAP details tab under Loan Details tab | Payment Protection         | selected       | VAP Document Mapping Checklist | VAP Parameter Policy | Documents | enabled   |
      | DDE                  | VAP details tab under Loan Details tab | Payment Protection         | not selected   | VAP Document Mapping Checklist | VAP Parameter Policy | Documents | disabled  |
      | DDE                  | VAP details tab under Loan Details tab | GAP Insurance              | selected       | VAP Document Mapping Checklist | VAP Parameter Policy | Documents | enabled   |
      | DDE                  | VAP details tab under Loan Details tab | GAP Insurance              | not selected   | VAP Document Mapping Checklist | VAP Parameter Policy | Documents | disabled  |
      | DDE                  | VAP details tab under Loan Details tab | Extended Warranty          | selected       | VAP Document Mapping Checklist | VAP Parameter Policy | Documents | enabled   |
      | DDE                  | VAP details tab under Loan Details tab | Extended Warranty          | not selected   | VAP Document Mapping Checklist | VAP Parameter Policy | Documents | disabled  |
      | DDE                  | VAP details tab under Loan Details tab | Tyre and Wheel             | selected       | VAP Document Mapping Checklist | VAP Parameter Policy | Documents | enabled   |
      | DDE                  | VAP details tab under Loan Details tab | Tyre and Wheel             | not selected   | VAP Document Mapping Checklist | VAP Parameter Policy | Documents | disabled  |
      | DDE                  | VAP details tab under Loan Details tab | Home Furnishing            | selected       | VAP Document Mapping Checklist | VAP Parameter Policy | Documents | enabled   |
      | DDE                  | VAP details tab under Loan Details tab | Home Furnishing            | not selected   | VAP Document Mapping Checklist | VAP Parameter Policy | Documents | disabled  |
      | DDE                  | VAP details tab under Loan Details tab | Vehicle Accessories        | selected       | VAP Document Mapping Checklist | VAP Parameter Policy | Documents | enabled   |
      | DDE                  | VAP details tab under Loan Details tab | Vehicle Accessories        | not selected   | VAP Document Mapping Checklist | VAP Parameter Policy | Documents | disabled  |
      | DDE                  | VAP details tab under Loan Details tab | Implements and Attachments | selected       | VAP Document Mapping Checklist | VAP Parameter Policy | Documents | enabled   |
      | DDE                  | VAP details tab under Loan Details tab | Implements and Attachments | not selected   | VAP Document Mapping Checklist | VAP Parameter Policy | Documents | disabled  |
      | DDE                  | VAP details tab under Loan Details tab | GPS                        | selected       | VAP Document Mapping Checklist | VAP Parameter Policy | Documents | enabled   |
      | DDE                  | VAP details tab under Loan Details tab | GPS                        | not selected   | VAP Document Mapping Checklist | VAP Parameter Policy | Documents | disabled  |
      | DDE                  | VAP details tab under Loan Details tab | Fees and Charges           | selected       | VAP Document Mapping Checklist | VAP Parameter Policy | Documents | enabled   |
      | DDE                  | VAP details tab under Loan Details tab | Fees and Charges           | not selected   | VAP Document Mapping Checklist | VAP Parameter Policy | Documents | disabled  |
      | Recommendation       | Loan Information option                | Asset Insurance            | selected       | VAP Document Mapping Checklist | VAP Parameter Policy | Documents | enabled   |
      | Recommendation       | Loan Information option                | Asset Insurance            | not selected   | VAP Document Mapping Checklist | VAP Parameter Policy | Documents | disabled  |
      | Recommendation       | Loan Information option                | Life Insurance             | selected       | VAP Document Mapping Checklist | VAP Parameter Policy | Documents | enabled   |
      | Recommendation       | Loan Information option                | Life Insurance             | not selected   | VAP Document Mapping Checklist | VAP Parameter Policy | Documents | disabled  |
      | Recommendation       | Loan Information option                | Credit Protection          | selected       | VAP Document Mapping Checklist | VAP Parameter Policy | Documents | enabled   |
      | Recommendation       | Loan Information option                | Credit Protection          | not selected   | VAP Document Mapping Checklist | VAP Parameter Policy | Documents | disabled  |
      | Recommendation       | Loan Information option                | Payment Protection         | selected       | VAP Document Mapping Checklist | VAP Parameter Policy | Documents | enabled   |
      | Recommendation       | Loan Information option                | Payment Protection         | not selected   | VAP Document Mapping Checklist | VAP Parameter Policy | Documents | disabled  |
      | Recommendation       | Loan Information option                | GAP Insurance              | selected       | VAP Document Mapping Checklist | VAP Parameter Policy | Documents | enabled   |
      | Recommendation       | Loan Information option                | GAP Insurance              | not selected   | VAP Document Mapping Checklist | VAP Parameter Policy | Documents | disabled  |
      | Recommendation       | Loan Information option                | Extended Warranty          | selected       | VAP Document Mapping Checklist | VAP Parameter Policy | Documents | enabled   |
      | Recommendation       | Loan Information option                | Extended Warranty          | not selected   | VAP Document Mapping Checklist | VAP Parameter Policy | Documents | disabled  |
      | Recommendation       | Loan Information option                | Tyre and Wheel             | selected       | VAP Document Mapping Checklist | VAP Parameter Policy | Documents | enabled   |
      | Recommendation       | Loan Information option                | Tyre and Wheel             | not selected   | VAP Document Mapping Checklist | VAP Parameter Policy | Documents | disabled  |
      | Recommendation       | Loan Information option                | Home Furnishing            | selected       | VAP Document Mapping Checklist | VAP Parameter Policy | Documents | enabled   |
      | Recommendation       | Loan Information option                | Home Furnishing            | not selected   | VAP Document Mapping Checklist | VAP Parameter Policy | Documents | disabled  |
      | Recommendation       | Loan Information option                | Vehicle Accessories        | selected       | VAP Document Mapping Checklist | VAP Parameter Policy | Documents | enabled   |
      | Recommendation       | Loan Information option                | Vehicle Accessories        | not selected   | VAP Document Mapping Checklist | VAP Parameter Policy | Documents | disabled  |
      | Recommendation       | Loan Information option                | Implements and Attachments | selected       | VAP Document Mapping Checklist | VAP Parameter Policy | Documents | enabled   |
      | Recommendation       | Loan Information option                | Implements and Attachments | not selected   | VAP Document Mapping Checklist | VAP Parameter Policy | Documents | disabled  |
      | Recommendation       | Loan Information option                | GPS                        | selected       | VAP Document Mapping Checklist | VAP Parameter Policy | Documents | enabled   |
      | Recommendation       | Loan Information option                | GPS                        | not selected   | VAP Document Mapping Checklist | VAP Parameter Policy | Documents | disabled  |
      | Recommendation       | Loan Information option                | Fees and Charges           | selected       | VAP Document Mapping Checklist | VAP Parameter Policy | Documents | enabled   |
      | Recommendation       | Loan Information option                | Fees and Charges           | not selected   | VAP Document Mapping Checklist | VAP Parameter Policy | Documents | disabled  |
      | Credit Approval      | 3 dots option                          | Asset Insurance            | selected       | VAP Document Mapping Checklist | VAP Parameter Policy | Documents | enabled   |
      | Credit Approval      | 3 dots option                          | Asset Insurance            | not selected   | VAP Document Mapping Checklist | VAP Parameter Policy | Documents | disabled  |
      | Credit Approval      | 3 dots option                          | Life Insurance             | selected       | VAP Document Mapping Checklist | VAP Parameter Policy | Documents | enabled   |
      | Credit Approval      | 3 dots option                          | Life Insurance             | not selected   | VAP Document Mapping Checklist | VAP Parameter Policy | Documents | disabled  |
      | Credit Approval      | 3 dots option                          | Credit Protection          | selected       | VAP Document Mapping Checklist | VAP Parameter Policy | Documents | enabled   |
      | Credit Approval      | 3 dots option                          | Credit Protection          | not selected   | VAP Document Mapping Checklist | VAP Parameter Policy | Documents | disabled  |
      | Credit Approval      | 3 dots option                          | Payment Protection         | selected       | VAP Document Mapping Checklist | VAP Parameter Policy | Documents | enabled   |
      | Credit Approval      | 3 dots option                          | Payment Protection         | not selected   | VAP Document Mapping Checklist | VAP Parameter Policy | Documents | disabled  |
      | Credit Approval      | 3 dots option                          | GAP Insurance              | selected       | VAP Document Mapping Checklist | VAP Parameter Policy | Documents | enabled   |
      | Credit Approval      | 3 dots option                          | GAP Insurance              | not selected   | VAP Document Mapping Checklist | VAP Parameter Policy | Documents | disabled  |
      | Credit Approval      | 3 dots option                          | Extended Warranty          | selected       | VAP Document Mapping Checklist | VAP Parameter Policy | Documents | enabled   |
      | Credit Approval      | 3 dots option                          | Extended Warranty          | not selected   | VAP Document Mapping Checklist | VAP Parameter Policy | Documents | disabled  |
      | Credit Approval      | 3 dots option                          | Tyre and Wheel             | selected       | VAP Document Mapping Checklist | VAP Parameter Policy | Documents | enabled   |
      | Credit Approval      | 3 dots option                          | Tyre and Wheel             | not selected   | VAP Document Mapping Checklist | VAP Parameter Policy | Documents | disabled  |
      | Credit Approval      | 3 dots option                          | Home Furnishing            | selected       | VAP Document Mapping Checklist | VAP Parameter Policy | Documents | enabled   |
      | Credit Approval      | 3 dots option                          | Home Furnishing            | not selected   | VAP Document Mapping Checklist | VAP Parameter Policy | Documents | disabled  |
      | Credit Approval      | 3 dots option                          | Vehicle Accessories        | selected       | VAP Document Mapping Checklist | VAP Parameter Policy | Documents | enabled   |
      | Credit Approval      | 3 dots option                          | Vehicle Accessories        | not selected   | VAP Document Mapping Checklist | VAP Parameter Policy | Documents | disabled  |
      | Credit Approval      | 3 dots option                          | Implements and Attachments | selected       | VAP Document Mapping Checklist | VAP Parameter Policy | Documents | enabled   |
      | Credit Approval      | 3 dots option                          | Implements and Attachments | not selected   | VAP Document Mapping Checklist | VAP Parameter Policy | Documents | disabled  |
      | Credit Approval      | 3 dots option                          | GPS                        | selected       | VAP Document Mapping Checklist | VAP Parameter Policy | Documents | enabled   |
      | Credit Approval      | 3 dots option                          | GPS                        | not selected   | VAP Document Mapping Checklist | VAP Parameter Policy | Documents | disabled  |
      | Credit Approval      | 3 dots option                          | Fees and Charges           | selected       | VAP Document Mapping Checklist | VAP Parameter Policy | Documents | enabled   |
      | Credit Approval      | 3 dots option                          | Fees and Charges           | not selected   | VAP Document Mapping Checklist | VAP Parameter Policy | Documents | disabled  |
      | Disbursal Initiation | VAP details tab                        | Asset Insurance            | selected       | VAP Document Mapping Checklist | VAP Parameter Policy | Documents | enabled   |
      | Disbursal Initiation | VAP details tab                        | Asset Insurance            | not selected   | VAP Document Mapping Checklist | VAP Parameter Policy | Documents | disabled  |
      | Disbursal Initiation | VAP details tab                        | Life Insurance             | selected       | VAP Document Mapping Checklist | VAP Parameter Policy | Documents | enabled   |
      | Disbursal Initiation | VAP details tab                        | Life Insurance             | not selected   | VAP Document Mapping Checklist | VAP Parameter Policy | Documents | disabled  |
      | Disbursal Initiation | VAP details tab                        | Credit Protection          | selected       | VAP Document Mapping Checklist | VAP Parameter Policy | Documents | enabled   |
      | Disbursal Initiation | VAP details tab                        | Credit Protection          | not selected   | VAP Document Mapping Checklist | VAP Parameter Policy | Documents | disabled  |
      | Disbursal Initiation | VAP details tab                        | Payment Protection         | selected       | VAP Document Mapping Checklist | VAP Parameter Policy | Documents | enabled   |
      | Disbursal Initiation | VAP details tab                        | Payment Protection         | not selected   | VAP Document Mapping Checklist | VAP Parameter Policy | Documents | disabled  |
      | Disbursal Initiation | VAP details tab                        | GAP Insurance              | selected       | VAP Document Mapping Checklist | VAP Parameter Policy | Documents | enabled   |
      | Disbursal Initiation | VAP details tab                        | GAP Insurance              | not selected   | VAP Document Mapping Checklist | VAP Parameter Policy | Documents | disabled  |
      | Disbursal Initiation | VAP details tab                        | Extended Warranty          | selected       | VAP Document Mapping Checklist | VAP Parameter Policy | Documents | enabled   |
      | Disbursal Initiation | VAP details tab                        | Extended Warranty          | not selected   | VAP Document Mapping Checklist | VAP Parameter Policy | Documents | disabled  |
      | Disbursal Initiation | VAP details tab                        | Tyre and Wheel             | selected       | VAP Document Mapping Checklist | VAP Parameter Policy | Documents | enabled   |
      | Disbursal Initiation | VAP details tab                        | Tyre and Wheel             | not selected   | VAP Document Mapping Checklist | VAP Parameter Policy | Documents | disabled  |
      | Disbursal Initiation | VAP details tab                        | Home Furnishing            | selected       | VAP Document Mapping Checklist | VAP Parameter Policy | Documents | enabled   |
      | Disbursal Initiation | VAP details tab                        | Home Furnishing            | not selected   | VAP Document Mapping Checklist | VAP Parameter Policy | Documents | disabled  |
      | Disbursal Initiation | VAP details tab                        | Vehicle Accessories        | selected       | VAP Document Mapping Checklist | VAP Parameter Policy | Documents | enabled   |
      | Disbursal Initiation | VAP details tab                        | Vehicle Accessories        | not selected   | VAP Document Mapping Checklist | VAP Parameter Policy | Documents | disabled  |
      | Disbursal Initiation | VAP details tab                        | Implements and Attachments | selected       | VAP Document Mapping Checklist | VAP Parameter Policy | Documents | enabled   |
      | Disbursal Initiation | VAP details tab                        | Implements and Attachments | not selected   | VAP Document Mapping Checklist | VAP Parameter Policy | Documents | disabled  |
      | Disbursal Initiation | VAP details tab                        | GPS                        | selected       | VAP Document Mapping Checklist | VAP Parameter Policy | Documents | enabled   |
      | Disbursal Initiation | VAP details tab                        | GPS                        | not selected   | VAP Document Mapping Checklist | VAP Parameter Policy | Documents | disabled  |
      | Disbursal Initiation | VAP details tab                        | Fees and Charges           | selected       | VAP Document Mapping Checklist | VAP Parameter Policy | Documents | enabled   |
      | Disbursal Initiation | VAP details tab                        | Fees and Charges           | not selected   | VAP Document Mapping Checklist | VAP Parameter Policy | Documents | disabled  |
      | Reconsideration      | Loan Information option                | Asset Insurance            | selected       | VAP Document Mapping Checklist | VAP Parameter Policy | Documents | enabled   |
      | Reconsideration      | Loan Information option                | Asset Insurance            | not selected   | VAP Document Mapping Checklist | VAP Parameter Policy | Documents | disabled  |
      | Reconsideration      | Loan Information option                | Life Insurance             | selected       | VAP Document Mapping Checklist | VAP Parameter Policy | Documents | enabled   |
      | Reconsideration      | Loan Information option                | Life Insurance             | not selected   | VAP Document Mapping Checklist | VAP Parameter Policy | Documents | disabled  |
      | Reconsideration      | Loan Information option                | Credit Protection          | selected       | VAP Document Mapping Checklist | VAP Parameter Policy | Documents | enabled   |
      | Reconsideration      | Loan Information option                | Credit Protection          | not selected   | VAP Document Mapping Checklist | VAP Parameter Policy | Documents | disabled  |
      | Reconsideration      | Loan Information option                | Payment Protection         | selected       | VAP Document Mapping Checklist | VAP Parameter Policy | Documents | enabled   |
      | Reconsideration      | Loan Information option                | Payment Protection         | not selected   | VAP Document Mapping Checklist | VAP Parameter Policy | Documents | disabled  |
      | Reconsideration      | Loan Information option                | GAP Insurance              | selected       | VAP Document Mapping Checklist | VAP Parameter Policy | Documents | enabled   |
      | Reconsideration      | Loan Information option                | GAP Insurance              | not selected   | VAP Document Mapping Checklist | VAP Parameter Policy | Documents | disabled  |
      | Reconsideration      | Loan Information option                | Extended Warranty          | selected       | VAP Document Mapping Checklist | VAP Parameter Policy | Documents | enabled   |
      | Reconsideration      | Loan Information option                | Extended Warranty          | not selected   | VAP Document Mapping Checklist | VAP Parameter Policy | Documents | disabled  |
      | Reconsideration      | Loan Information option                | Tyre and Wheel             | selected       | VAP Document Mapping Checklist | VAP Parameter Policy | Documents | enabled   |
      | Reconsideration      | Loan Information option                | Tyre and Wheel             | not selected   | VAP Document Mapping Checklist | VAP Parameter Policy | Documents | disabled  |
      | Reconsideration      | Loan Information option                | Home Furnishing            | selected       | VAP Document Mapping Checklist | VAP Parameter Policy | Documents | enabled   |
      | Reconsideration      | Loan Information option                | Home Furnishing            | not selected   | VAP Document Mapping Checklist | VAP Parameter Policy | Documents | disabled  |
      | Reconsideration      | Loan Information option                | Vehicle Accessories        | selected       | VAP Document Mapping Checklist | VAP Parameter Policy | Documents | enabled   |
      | Reconsideration      | Loan Information option                | Vehicle Accessories        | not selected   | VAP Document Mapping Checklist | VAP Parameter Policy | Documents | disabled  |
      | Reconsideration      | Loan Information option                | Implements and Attachments | selected       | VAP Document Mapping Checklist | VAP Parameter Policy | Documents | enabled   |
      | Reconsideration      | Loan Information option                | Implements and Attachments | not selected   | VAP Document Mapping Checklist | VAP Parameter Policy | Documents | disabled  |
      | Reconsideration      | Loan Information option                | GPS                        | selected       | VAP Document Mapping Checklist | VAP Parameter Policy | Documents | enabled   |
      | Reconsideration      | Loan Information option                | GPS                        | not selected   | VAP Document Mapping Checklist | VAP Parameter Policy | Documents | disabled  |
      | Reconsideration      | Loan Information option                | Fees and Charges           | selected       | VAP Document Mapping Checklist | VAP Parameter Policy | Documents | enabled   |
      | Reconsideration      | Loan Information option                | Fees and Charges           | not selected   | VAP Document Mapping Checklist | VAP Parameter Policy | Documents | disabled  |
      | Post Approval        | VAP details tab under Loan Details tab | Asset Insurance            | selected       | VAP Document Mapping Checklist | VAP Parameter Policy | Documents | enabled   |
      | Post Approval        | VAP details tab under Loan Details tab | Asset Insurance            | not selected   | VAP Document Mapping Checklist | VAP Parameter Policy | Documents | disabled  |
      | Post Approval        | VAP details tab under Loan Details tab | Life Insurance             | selected       | VAP Document Mapping Checklist | VAP Parameter Policy | Documents | enabled   |
      | Post Approval        | VAP details tab under Loan Details tab | Life Insurance             | not selected   | VAP Document Mapping Checklist | VAP Parameter Policy | Documents | disabled  |
      | Post Approval        | VAP details tab under Loan Details tab | Credit Protection          | selected       | VAP Document Mapping Checklist | VAP Parameter Policy | Documents | enabled   |
      | Post Approval        | VAP details tab under Loan Details tab | Credit Protection          | not selected   | VAP Document Mapping Checklist | VAP Parameter Policy | Documents | disabled  |
      | Post Approval        | VAP details tab under Loan Details tab | Payment Protection         | selected       | VAP Document Mapping Checklist | VAP Parameter Policy | Documents | enabled   |
      | Post Approval        | VAP details tab under Loan Details tab | Payment Protection         | not selected   | VAP Document Mapping Checklist | VAP Parameter Policy | Documents | disabled  |
      | Post Approval        | VAP details tab under Loan Details tab | GAP Insurance              | selected       | VAP Document Mapping Checklist | VAP Parameter Policy | Documents | enabled   |
      | Post Approval        | VAP details tab under Loan Details tab | GAP Insurance              | not selected   | VAP Document Mapping Checklist | VAP Parameter Policy | Documents | disabled  |
      | Post Approval        | VAP details tab under Loan Details tab | Extended Warranty          | selected       | VAP Document Mapping Checklist | VAP Parameter Policy | Documents | enabled   |
      | Post Approval        | VAP details tab under Loan Details tab | Extended Warranty          | not selected   | VAP Document Mapping Checklist | VAP Parameter Policy | Documents | disabled  |
      | Post Approval        | VAP details tab under Loan Details tab | Tyre and Wheel             | selected       | VAP Document Mapping Checklist | VAP Parameter Policy | Documents | enabled   |
      | Post Approval        | VAP details tab under Loan Details tab | Tyre and Wheel             | not selected   | VAP Document Mapping Checklist | VAP Parameter Policy | Documents | disabled  |
      | Post Approval        | VAP details tab under Loan Details tab | Home Furnishing            | selected       | VAP Document Mapping Checklist | VAP Parameter Policy | Documents | enabled   |
      | Post Approval        | VAP details tab under Loan Details tab | Home Furnishing            | not selected   | VAP Document Mapping Checklist | VAP Parameter Policy | Documents | disabled  |
      | Post Approval        | VAP details tab under Loan Details tab | Vehicle Accessories        | selected       | VAP Document Mapping Checklist | VAP Parameter Policy | Documents | enabled   |
      | Post Approval        | VAP details tab under Loan Details tab | Vehicle Accessories        | not selected   | VAP Document Mapping Checklist | VAP Parameter Policy | Documents | disabled  |
      | Post Approval        | VAP details tab under Loan Details tab | Implements and Attachments | selected       | VAP Document Mapping Checklist | VAP Parameter Policy | Documents | enabled   |
      | Post Approval        | VAP details tab under Loan Details tab | Implements and Attachments | not selected   | VAP Document Mapping Checklist | VAP Parameter Policy | Documents | disabled  |
      | Post Approval        | VAP details tab under Loan Details tab | GPS                        | selected       | VAP Document Mapping Checklist | VAP Parameter Policy | Documents | enabled   |
      | Post Approval        | VAP details tab under Loan Details tab | GPS                        | not selected   | VAP Document Mapping Checklist | VAP Parameter Policy | Documents | disabled  |
      | Post Approval        | VAP details tab under Loan Details tab | Fees and Charges           | selected       | VAP Document Mapping Checklist | VAP Parameter Policy | Documents | enabled   |
      | Post Approval        | VAP details tab under Loan Details tab | Fees and Charges           | not selected   | VAP Document Mapping Checklist | VAP Parameter Policy | Documents | disabled  |

  #FeatureID-ACAUTOCAS-208
  Scenario Outline: View list of documents under Document tab for vap product of vap type "<VAP_Type>" for application at "<Var_Stage>" stage
    And user open an application at "<Var_Stage>" Stage
    And user has already mapped VAP product of vap type "<VAP_Type>" with the application
    When user open VAP details from "<Opening_Link>"
    And user selects VAP product of vap type "<VAP_Type>" from vap grid in edit mode
    And user navigates to Documents tab
    Then user should be able to view list of documents on left side as per selected document checklist for vap type "<VAP_Type>"
    And user should be able to view asterisk symbol against mandatory documents for collection
    Examples:
      | Var_Stage            | VAP_Type                   | Opening_Link                           |
      | DDE                  | Asset Insurance            | VAP details tab under Loan Details tab |
      | DDE                  | Life Insurance             | VAP details tab under Loan Details tab |
      | DDE                  | Credit Protection          | VAP details tab under Loan Details tab |
      | DDE                  | Payment Protection         | VAP details tab under Loan Details tab |
      | DDE                  | GAP Insurance              | VAP details tab under Loan Details tab |
      | DDE                  | Extended Warranty          | VAP details tab under Loan Details tab |
      | DDE                  | Tyre and Wheel             | VAP details tab under Loan Details tab |
      | DDE                  | Home Furnishing            | VAP details tab under Loan Details tab |
      | DDE                  | Vehicle Accessories        | VAP details tab under Loan Details tab |
      | DDE                  | Implements and Attachments | VAP details tab under Loan Details tab |
      | DDE                  | GPS                        | VAP details tab under Loan Details tab |
      | DDE                  | Fees and Charges           | VAP details tab under Loan Details tab |
      | Recommendation       | Asset Insurance            | Loan Information option                |
      | Recommendation       | Life Insurance             | Loan Information option                |
      | Recommendation       | Credit Protection          | Loan Information option                |
      | Recommendation       | Payment Protection         | Loan Information option                |
      | Recommendation       | GAP Insurance              | Loan Information option                |
      | Recommendation       | Extended Warranty          | Loan Information option                |
      | Recommendation       | Tyre and Wheel             | Loan Information option                |
      | Recommendation       | Home Furnishing            | Loan Information option                |
      | Recommendation       | Vehicle Accessories        | Loan Information option                |
      | Recommendation       | Implements and Attachments | Loan Information option                |
      | Recommendation       | GPS                        | Loan Information option                |
      | Recommendation       | Fees and Charges           | Loan Information option                |
      | Credit Approval      | Asset Insurance            | 3 dots option                          |
      | Credit Approval      | Life Insurance             | 3 dots option                          |
      | Credit Approval      | Credit Protection          | 3 dots option                          |
      | Credit Approval      | Payment Protection         | 3 dots option                          |
      | Credit Approval      | GAP Insurance              | 3 dots option                          |
      | Credit Approval      | Extended Warranty          | 3 dots option                          |
      | Credit Approval      | Tyre and Wheel             | 3 dots option                          |
      | Credit Approval      | Home Furnishing            | 3 dots option                          |
      | Credit Approval      | Vehicle Accessories        | 3 dots option                          |
      | Credit Approval      | Implements and Attachments | 3 dots option                          |
      | Credit Approval      | GPS                        | 3 dots option                          |
      | Credit Approval      | Fees and Charges           | 3 dots option                          |
      | Reconsideration      | Asset Insurance            | Loan Information option                |
      | Reconsideration      | Life Insurance             | Loan Information option                |
      | Reconsideration      | Credit Protection          | Loan Information option                |
      | Reconsideration      | Payment Protection         | Loan Information option                |
      | Reconsideration      | GAP Insurance              | Loan Information option                |
      | Reconsideration      | Extended Warranty          | Loan Information option                |
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
      | Disbursal Initiation | Extended Warranty          | VAP details tab                        |
      | Disbursal Initiation | Tyre and Wheel             | VAP details tab                        |
      | Disbursal Initiation | Home Furnishing            | VAP details tab                        |
      | Disbursal Initiation | Vehicle Accessories        | VAP details tab                        |
      | Disbursal Initiation | Implements and Attachments | VAP details tab                        |
      | Post Approval        | Asset Insurance            | VAP details tab under Loan Details tab |
      | Post Approval        | Life Insurance             | VAP details tab under Loan Details tab |
      | Post Approval        | Credit Protection          | VAP details tab under Loan Details tab |
      | Post Approval        | Payment Protection         | VAP details tab under Loan Details tab |
      | Post Approval        | GAP Insurance              | VAP details tab under Loan Details tab |
      | Post Approval        | Extended Warranty          | VAP details tab under Loan Details tab |
      | Post Approval        | Tyre and Wheel             | VAP details tab under Loan Details tab |
      | Post Approval        | Home Furnishing            | VAP details tab under Loan Details tab |
      | Post Approval        | Vehicle Accessories        | VAP details tab under Loan Details tab |
      | Post Approval        | Implements and Attachments | VAP details tab under Loan Details tab |

 #FeatureID-ACAUTOCAS-208
  Scenario Outline: Select status for documents under Document tab for vap product of vap type "<VAP_Type>" for application at "<Var_Stage>" Stage
    And user open an application at "<Var_Stage>" Stage
    And user has already mapped VAP product of vap type "<VAP_Type>" with the application
    When user open VAP details from "<Opening_Link>"
    And user selects VAP product of vap type "<VAP_Type>" from vap grid in edit mode
    And user navigates to Documents tab
    And user selects any document from the checklist at left side
    Then user should be able to select status from status field at right side for selected documents
    Examples:
      | Var_Stage            | VAP_Type                   | Opening_Link                           |
      | DDE                  | Asset Insurance            | VAP details tab under Loan Details tab |
      | DDE                  | Life Insurance             | VAP details tab under Loan Details tab |
      | DDE                  | Credit Protection          | VAP details tab under Loan Details tab |
      | DDE                  | Payment Protection         | VAP details tab under Loan Details tab |
      | DDE                  | GAP Insurance              | VAP details tab under Loan Details tab |
      | DDE                  | Extended Warranty          | VAP details tab under Loan Details tab |
      | DDE                  | Tyre and Wheel             | VAP details tab under Loan Details tab |
      | DDE                  | Home Furnishing            | VAP details tab under Loan Details tab |
      | DDE                  | Vehicle Accessories        | VAP details tab under Loan Details tab |
      | DDE                  | Implements and Attachments | VAP details tab under Loan Details tab |
      | DDE                  | GPS                        | VAP details tab under Loan Details tab |
      | DDE                  | Fees and Charges           | VAP details tab under Loan Details tab |
      | Recommendation       | Asset Insurance            | Loan Information option                |
      | Recommendation       | Life Insurance             | Loan Information option                |
      | Recommendation       | Credit Protection          | Loan Information option                |
      | Recommendation       | Payment Protection         | Loan Information option                |
      | Recommendation       | GAP Insurance              | Loan Information option                |
      | Recommendation       | Extended Warranty          | Loan Information option                |
      | Recommendation       | Tyre and Wheel             | Loan Information option                |
      | Recommendation       | Home Furnishing            | Loan Information option                |
      | Recommendation       | Vehicle Accessories        | Loan Information option                |
      | Recommendation       | Implements and Attachments | Loan Information option                |
      | Recommendation       | GPS                        | Loan Information option                |
      | Recommendation       | Fees and Charges           | Loan Information option                |
      | Credit Approval      | Asset Insurance            | 3 dots option                          |
      | Credit Approval      | Life Insurance             | 3 dots option                          |
      | Credit Approval      | Credit Protection          | 3 dots option                          |
      | Credit Approval      | Payment Protection         | 3 dots option                          |
      | Credit Approval      | GAP Insurance              | 3 dots option                          |
      | Credit Approval      | Extended Warranty          | 3 dots option                          |
      | Credit Approval      | Tyre and Wheel             | 3 dots option                          |
      | Credit Approval      | Home Furnishing            | 3 dots option                          |
      | Credit Approval      | Vehicle Accessories        | 3 dots option                          |
      | Credit Approval      | Implements and Attachments | 3 dots option                          |
      | Credit Approval      | GPS                        | 3 dots option                          |
      | Credit Approval      | Fees and Charges           | 3 dots option                          |
      | Reconsideration      | Asset Insurance            | Loan Information option                |
      | Reconsideration      | Life Insurance             | Loan Information option                |
      | Reconsideration      | Credit Protection          | Loan Information option                |
      | Reconsideration      | Payment Protection         | Loan Information option                |
      | Reconsideration      | GAP Insurance              | Loan Information option                |
      | Reconsideration      | Extended Warranty          | Loan Information option                |
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
      | Disbursal Initiation | Extended Warranty          | VAP details tab                        |
      | Disbursal Initiation | Tyre and Wheel             | VAP details tab                        |
      | Disbursal Initiation | Home Furnishing            | VAP details tab                        |
      | Disbursal Initiation | Vehicle Accessories        | VAP details tab                        |
      | Disbursal Initiation | Implements and Attachments | VAP details tab                        |
      | Post Approval        | Asset Insurance            | VAP details tab under Loan Details tab |
      | Post Approval        | Life Insurance             | VAP details tab under Loan Details tab |
      | Post Approval        | Credit Protection          | VAP details tab under Loan Details tab |
      | Post Approval        | Payment Protection         | VAP details tab under Loan Details tab |
      | Post Approval        | GAP Insurance              | VAP details tab under Loan Details tab |
      | Post Approval        | Extended Warranty          | VAP details tab under Loan Details tab |
      | Post Approval        | Tyre and Wheel             | VAP details tab under Loan Details tab |
      | Post Approval        | Home Furnishing            | VAP details tab under Loan Details tab |
      | Post Approval        | Vehicle Accessories        | VAP details tab under Loan Details tab |
      | Post Approval        | Implements and Attachments | VAP details tab under Loan Details tab |

 #FeatureID-ACAUTOCAS-208
  Scenario Outline: Availability of "Tab" tab when document status selected as "<Status>" under Document tab within vap details tab for application at "<Var_Stage>" Stage
    And user open an application at "<Var_Stage>" Stage
    And user open VAP details from "<Opening_Link>"
    And user selects VAP product from vap grid in edit mode
    When user navigates to Documents tab
    And user selects any document from the checklist at left side
    Then user should be able to view "<Tab>" tab for status selected as "<Status>"
    Examples:
      | Var_Stage            | Tab              | Status    | Opening_Link                           |
      | DDE                  | Update Checklist | Pending   | VAP details tab under Loan Details tab |
      | DDE                  | Request Status   | Pending   | VAP details tab under Loan Details tab |
      | DDE                  | View Summary     | Pending   | VAP details tab under Loan Details tab |
      | DDE                  | Scan/Rescan      | Pending   | VAP details tab under Loan Details tab |
      | DDE                  | Update Checklist | Received  | VAP details tab under Loan Details tab |
      | DDE                  | Request Status   | Received  | VAP details tab under Loan Details tab |
      | DDE                  | Incomplete Doc   | Received  | VAP details tab under Loan Details tab |
      | DDE                  | View Summary     | Received  | VAP details tab under Loan Details tab |
      | DDE                  | Scan/Rescan      | Received  | VAP details tab under Loan Details tab |
      | DDE                  | Update Checklist | WaivedOff | VAP details tab under Loan Details tab |
      | DDE                  | Request Status   | WaivedOff | VAP details tab under Loan Details tab |
      | DDE                  | View Summary     | WaivedOff | VAP details tab under Loan Details tab |
      | DDE                  | Update Checklist | Deferred  | VAP details tab under Loan Details tab |
      | DDE                  | Request Status   | Deferred  | VAP details tab under Loan Details tab |
      | DDE                  | View Summary     | Deferred  | VAP details tab under Loan Details tab |
      | Recommendation       | Update Checklist | Pending   | Loan Information option                |
      | Recommendation       | Request Status   | Pending   | Loan Information option                |
      | Recommendation       | View Summary     | Pending   | Loan Information option                |
      | Recommendation       | Scan/Rescan      | Pending   | Loan Information option                |
      | Recommendation       | Update Checklist | Received  | Loan Information option                |
      | Recommendation       | Request Status   | Received  | Loan Information option                |
      | Recommendation       | Incomplete Doc   | Received  | Loan Information option                |
      | Recommendation       | View Summary     | Received  | Loan Information option                |
      | Recommendation       | Scan/Rescan      | Received  | Loan Information option                |
      | Recommendation       | Update Checklist | WaivedOff | Loan Information option                |
      | Recommendation       | Request Status   | WaivedOff | Loan Information option                |
      | Recommendation       | View Summary     | WaivedOff | Loan Information option                |
      | Recommendation       | Update Checklist | Deferred  | Loan Information option                |
      | Recommendation       | Request Status   | Deferred  | Loan Information option                |
      | Recommendation       | View Summary     | Deferred  | Loan Information option                |
      | Credit Approval      | Update Checklist | Pending   | 3 dots option                          |
      | Credit Approval      | Request Status   | Pending   | 3 dots option                          |
      | Credit Approval      | View Summary     | Pending   | 3 dots option                          |
      | Credit Approval      | Scan/Rescan      | Pending   | 3 dots option                          |
      | Credit Approval      | Update Checklist | Received  | 3 dots option                          |
      | Credit Approval      | Request Status   | Received  | 3 dots option                          |
      | Credit Approval      | Incomplete Doc   | Received  | 3 dots option                          |
      | Credit Approval      | View Summary     | Received  | 3 dots option                          |
      | Credit Approval      | Scan/Rescan      | Received  | 3 dots option                          |
      | Credit Approval      | Update Checklist | WaivedOff | 3 dots option                          |
      | Credit Approval      | Request Status   | WaivedOff | 3 dots option                          |
      | Credit Approval      | View Summary     | WaivedOff | 3 dots option                          |
      | Credit Approval      | Update Checklist | Deferred  | 3 dots option                          |
      | Credit Approval      | Request Status   | Deferred  | 3 dots option                          |
      | Credit Approval      | View Summary     | Deferred  | 3 dots option                          |
      | Disbursal Initiation | Update Checklist | Pending   | VAP details tab                        |
      | Disbursal Initiation | Request Status   | Pending   | VAP details tab                        |
      | Disbursal Initiation | View Summary     | Pending   | VAP details tab                        |
      | Disbursal Initiation | Scan/Rescan      | Pending   | VAP details tab                        |
      | Disbursal Initiation | Update Checklist | Received  | VAP details tab                        |
      | Disbursal Initiation | Request Status   | Received  | VAP details tab                        |
      | Disbursal Initiation | Incomplete Doc   | Received  | VAP details tab                        |
      | Disbursal Initiation | View Summary     | Received  | VAP details tab                        |
      | Disbursal Initiation | Scan/Rescan      | Received  | VAP details tab                        |
      | Disbursal Initiation | Update Checklist | WaivedOff | VAP details tab                        |
      | Disbursal Initiation | Request Status   | WaivedOff | VAP details tab                        |
      | Disbursal Initiation | View Summary     | WaivedOff | VAP details tab                        |
      | Disbursal Initiation | Update Checklist | Deferred  | VAP details tab                        |
      | Disbursal Initiation | Request Status   | Deferred  | VAP details tab                        |
      | Disbursal Initiation | View Summary     | Deferred  | VAP details tab                        |
      | Disbursal Initiation | Update Checklist | Pending   | VAP details tab                        |
      | Post Approval        | Request Status   | Pending   | VAP details tab under Loan Details tab |
      | Post Approval        | View Summary     | Pending   | VAP details tab under Loan Details tab |
      | Post Approval        | Scan/Rescan      | Pending   | VAP details tab under Loan Details tab |
      | Post Approval        | Update Checklist | Received  | VAP details tab under Loan Details tab |
      | Post Approval        | Request Status   | Received  | VAP details tab under Loan Details tab |
      | Post Approval        | Incomplete Doc   | Received  | VAP details tab under Loan Details tab |
      | Post Approval        | View Summary     | Received  | VAP details tab under Loan Details tab |
      | Post Approval        | Scan/Rescan      | Received  | VAP details tab under Loan Details tab |
      | Post Approval        | Update Checklist | WaivedOff | VAP details tab under Loan Details tab |
      | Post Approval        | Request Status   | WaivedOff | VAP details tab under Loan Details tab |
      | Post Approval        | View Summary     | WaivedOff | VAP details tab under Loan Details tab |
      | Post Approval        | Update Checklist | Deferred  | VAP details tab under Loan Details tab |
      | Post Approval        | Request Status   | Deferred  | VAP details tab under Loan Details tab |
      | Post Approval        | View Summary     | Deferred  | VAP details tab under Loan Details tab |
