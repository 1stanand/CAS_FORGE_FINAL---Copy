@Epic-VAP
@AuthoredBy-sajja.ravikumar
#OriginalAuthor-rajni.gola
@ReviewedBy-
@ImplementedBy-
@TechReviewedBy-

@NotImplemented

Feature: VAP Repayment Parameters for Insurance Category

  Background:
    Given User is logged in CAS with "<SourceDataFile>" under "<SheetName>" and "<RowNumber>"

  #FeatureID-ACAUTOCAS-211
  Scenario Outline: Check visibility of "VAP Applicable" flag on Repayment Parameter page at "<Var_Stage>" if vap product is "<added>" in the application
    And user open an application at "<Var_Stage>" Stage
    And user has "<added>" vap product to the application
    When user navigates to "<Opening_Link>"
    Then user should "<view>" "VAP Applicable" flag as selected
    Examples:
      | Var_Stage            | Opening_Link                                             | added         | view                |
      | BDE                  | Repayment Parameters tab under Loan Details tab          | already added | be able to view     |
      | BDE                  | Repayment Parameters tab under Loan Details tab          | not added     | not be able to view |
      | Recommendation       | Repayment Parameters link under Loan Information section | already added | be able to view     |
      | Recommendation       | Repayment Parameters link under Loan Information section | not added     | not be able to view |
      | Credit Approval      | Repayment Parameters option under 3 dots option          | already added | be able to view     |
      | Credit Approval      | Repayment Parameters option under 3 dots option          | not added     | not be able to view |
      | Reconsideration      | Repayment Parameters link under Loan Information section | already added | be able to view     |
      | Reconsideration      | Repayment Parameters link under Loan Information section | not added     | not be able to view |
      | Post Approval        | Repayment Parameters tab under Loan Details tab          | already added | be able to view     |
      | Post Approval        | Repayment Parameters tab under Loan Details tab          | not added     | not be able to view |
      | Disbursal Initiation | Repayment Parameters tab                                 | already added | be able to view     |
      | Disbursal Initiation | Repayment Parameters tab                                 | not added     | not be able to view |

  #FeatureID-ACAUTOCAS-211
  Scenario Outline: Check visibility of VAP grid on Repayment Parameter details page for vap type "Asset Insurance" at "<Var_Stage>"
    And user open an application at "<Var_Stage>" Stage
    And user has already added vap product of vap type "Asset Insurance"
    When user navigates to "<Opening_Link>"
    Then user should be able to view "VAP Details grid"
    Examples:
      | Var_Stage            | Opening_Link                                             |
      | BDE                  | Repayment Parameters tab under Loan Details tab          |
      | Recommendation       | Repayment Parameters link under Loan Information section |
      | Credit Approval      | Repayment Parameters option under 3 dots option          |
      | Reconsideration      | Repayment Parameters link under Loan Information section |
      | Post Approval        | Repayment Parameters tab under Loan Details tab          |
      | Disbursal Initiation | Repayment Parameters tab                                 |

  #FeatureID-ACAUTOCAS-211
  Scenario Outline: View VAP grid on Repayment Parameter details page at "<Var_Stage>" for "<table_columns>" column
    And user open an application at "<Var_Stage>" Stage
    And user has already added vap product of vap type "Asset Insurance"
    When user navigates to "<Opening_Link>"
    Then user should be able to view "VAP Details grid" with "<table_columns>" column
    Examples:
      | Var_Stage            | Opening_Link                                             | table_columns              |
      | BDE                  | Repayment Parameters tab under Loan Details tab          | VAP Number                 |
      | BDE                  | Repayment Parameters tab under Loan Details tab          | VAP Category               |
      | BDE                  | Repayment Parameters tab under Loan Details tab          | VAP Type                   |
      | BDE                  | Repayment Parameters tab under Loan Details tab          | VAP Treatment              |
      | BDE                  | Repayment Parameters tab under Loan Details tab          | Charge Code                |
      | BDE                  | Repayment Parameters tab under Loan Details tab          | VAP Amount                 |
      | BDE                  | Repayment Parameters tab under Loan Details tab          | Follow Contract Parameters |
      | BDE                  | Repayment Parameters tab under Loan Details tab          | Payout / Commission        |
      | BDE                  | Repayment Parameters tab under Loan Details tab          | Repayment Schedule         |
      | Recommendation       | Repayment Parameters link under Loan Information section | VAP Number                 |
      | Recommendation       | Repayment Parameters link under Loan Information section | VAP Category               |
      | Recommendation       | Repayment Parameters link under Loan Information section | VAP Type                   |
      | Recommendation       | Repayment Parameters link under Loan Information section | VAP Treatment              |
      | Recommendation       | Repayment Parameters link under Loan Information section | Charge Code                |
      | Recommendation       | Repayment Parameters link under Loan Information section | VAP Amount                 |
      | Recommendation       | Repayment Parameters link under Loan Information section | Follow Contract Parameters |
      | Recommendation       | Repayment Parameters link under Loan Information section | Payout / Commission        |
      | Recommendation       | Repayment Parameters link under Loan Information section | Repayment Schedule         |
      | Credit Approval      | Repayment Parameters option under 3 dots option          | VAP Number                 |
      | Credit Approval      | Repayment Parameters option under 3 dots option          | VAP Category               |
      | Credit Approval      | Repayment Parameters option under 3 dots option          | VAP Type                   |
      | Credit Approval      | Repayment Parameters option under 3 dots option          | VAP Treatment              |
      | Credit Approval      | Repayment Parameters option under 3 dots option          | Charge Code                |
      | Credit Approval      | Repayment Parameters option under 3 dots option          | VAP Amount                 |
      | Credit Approval      | Repayment Parameters option under 3 dots option          | Follow Contract Parameters |
      | Credit Approval      | Repayment Parameters option under 3 dots option          | Payout / Commission        |
      | Credit Approval      | Repayment Parameters option under 3 dots option          | Repayment Schedule         |
      | Reconsideration      | Repayment Parameters link under Loan Information section | VAP Number                 |
      | Reconsideration      | Repayment Parameters link under Loan Information section | VAP Category               |
      | Reconsideration      | Repayment Parameters link under Loan Information section | VAP Type                   |
      | Reconsideration      | Repayment Parameters link under Loan Information section | VAP Treatment              |
      | Reconsideration      | Repayment Parameters link under Loan Information section | Charge Code                |
      | Reconsideration      | Repayment Parameters link under Loan Information section | VAP Amount                 |
      | Reconsideration      | Repayment Parameters link under Loan Information section | Follow Contract Parameters |
      | Reconsideration      | Repayment Parameters link under Loan Information section | Payout / Commission        |
      | Reconsideration      | Repayment Parameters link under Loan Information section | Repayment Schedule         |
      | Post Approval        | Repayment Parameters tab under Loan Details tab          | VAP Number                 |
      | Post Approval        | Repayment Parameters tab under Loan Details tab          | VAP Category               |
      | Post Approval        | Repayment Parameters tab under Loan Details tab          | VAP Type                   |
      | Post Approval        | Repayment Parameters tab under Loan Details tab          | VAP Treatment              |
      | Post Approval        | Repayment Parameters tab under Loan Details tab          | Charge Code                |
      | Post Approval        | Repayment Parameters tab under Loan Details tab          | VAP Amount                 |
      | Post Approval        | Repayment Parameters tab under Loan Details tab          | Follow Contract Parameters |
      | Post Approval        | Repayment Parameters tab under Loan Details tab          | Payout / Commission        |
      | Post Approval        | Repayment Parameters tab under Loan Details tab          | Repayment Schedule         |
      | Disbursal Initiation | Repayment Parameters tab                                 | VAP Number                 |
      | Disbursal Initiation | Repayment Parameters tab                                 | VAP Category               |
      | Disbursal Initiation | Repayment Parameters tab                                 | VAP Type                   |
      | Disbursal Initiation | Repayment Parameters tab                                 | VAP Treatment              |
      | Disbursal Initiation | Repayment Parameters tab                                 | Charge Code                |
      | Disbursal Initiation | Repayment Parameters tab                                 | VAP Amount                 |
      | Disbursal Initiation | Repayment Parameters tab                                 | Follow Contract Parameters |
      | Disbursal Initiation | Repayment Parameters tab                                 | Payout / Commission        |
      | Disbursal Initiation | Repayment Parameters tab                                 | Repayment Schedule         |

  #FeatureID-ACAUTOCAS-211
  Scenario Outline: Validate VAP grid on Repayment Parameter details page for column "<table_columns>" as "<check>"
    And user open an application from application grid
    And user has already added vap product to the application
    When user navigates to "Repayment Parameters page"
    And user expands "VAP Details" accordion
    Then user should be able to view "VAP Details grid" with "<table_columns>" with "<check>"
    Examples:
      | table_columns              | check                                                                       |
      | VAP Number                 | field value visible as readonly                                             |
      | VAP Category               | field value visible as readonly                                             |
      | VAP Type                   | field value visible as readonly                                             |
      | VAP Treatment              | field value visible as readonly                                             |
      | Charge Code                | field value visible as readonly                                             |
      | VAP Amount                 | field value visible as readonly                                             |
      | Follow Contract Parameters | field value visible as readonly along with link to Add/Edit details enabled |
      | Payout / Commission        | Payout/Commission link enabled for input                                    |
      | Repayment Schedule         | View link enabled for viewing Repayment schedule                            |

  #FeatureID-ACAUTOCAS-211
  Scenario Outline: Check hyperlink under Repayment Schedule column under VAP grid on Repayment Parameter details page on "<Var_stage>" for vap type "<VAP_type>" with vap treatment "<Vap_treatment>"
    And user open an application at "<Var_stage>" Stage
    And user has already added vap product of vap type "<VAP_type>"
    And user has selected vap treatments as "<Vap_treatment>"
    When user navigates to "<Opening_Link>"
    Then user should "<view>" hyperlink under "Repayment Schedule column"
    Examples:
      | Var_stage            | Opening_Link                                             | VAP_type           | Vap_treatment      | view                 |
      | BDE                  | Repayment Parameters tab under Loan Details tab          | Asset Insurance    | Financed           | be able to view      |
      | BDE                  | Repayment Parameters tab under Loan Details tab          | Asset Insurance    | Revenue            | be able to view      |
      | BDE                  | Repayment Parameters tab under Loan Details tab          | Asset Insurance    | Collectible        | be able to view      |
      | BDE                  | Repayment Parameters tab under Loan Details tab          | Asset Insurance    | Additional Funding | be able to view      |
      | BDE                  | Repayment Parameters tab under Loan Details tab          | Asset Insurance    | Upfront            | not abe able to view |
      | BDE                  | Repayment Parameters tab under Loan Details tab          | Gap Insurance      | Financed           | be able to view      |
      | BDE                  | Repayment Parameters tab under Loan Details tab          | Gap Insurance      | Revenue            | be able to view      |
      | BDE                  | Repayment Parameters tab under Loan Details tab          | Gap Insurance      | Collectible        | be able to view      |
      | BDE                  | Repayment Parameters tab under Loan Details tab          | Gap Insurance      | Additional Funding | be able to view      |
      | BDE                  | Repayment Parameters tab under Loan Details tab          | Gap Insurance      | Upfront            | not abe able to view |
      | BDE                  | Repayment Parameters tab under Loan Details tab          | Life Insurance     | Financed           | be able to view      |
      | BDE                  | Repayment Parameters tab under Loan Details tab          | Life Insurance     | Revenue            | be able to view      |
      | BDE                  | Repayment Parameters tab under Loan Details tab          | Life Insurance     | Collectible        | be able to view      |
      | BDE                  | Repayment Parameters tab under Loan Details tab          | Life Insurance     | Additional Funding | be able to view      |
      | BDE                  | Repayment Parameters tab under Loan Details tab          | Life Insurance     | Upfront            | not abe able to view |
      | BDE                  | Repayment Parameters tab under Loan Details tab          | Payment Protection | Financed           | be able to view      |
      | BDE                  | Repayment Parameters tab under Loan Details tab          | Payment Protection | Revenue            | be able to view      |
      | BDE                  | Repayment Parameters tab under Loan Details tab          | Payment Protection | Collectible        | be able to view      |
      | BDE                  | Repayment Parameters tab under Loan Details tab          | Payment Protection | Additional Funding | be able to view      |
      | BDE                  | Repayment Parameters tab under Loan Details tab          | Payment Protection | Upfront            | not abe able to view |
      | BDE                  | Repayment Parameters tab under Loan Details tab          | Credit Protection  | Financed           | be able to view      |
      | BDE                  | Repayment Parameters tab under Loan Details tab          | Credit Protection  | Revenue            | be able to view      |
      | BDE                  | Repayment Parameters tab under Loan Details tab          | Credit Protection  | Collectible        | be able to view      |
      | BDE                  | Repayment Parameters tab under Loan Details tab          | Credit Protection  | Additional Funding | be able to view      |
      | BDE                  | Repayment Parameters tab under Loan Details tab          | Credit Protection  | Upfront            | not abe able to view |
      | Recommendation       | Repayment Parameters link under Loan Information section | Asset Insurance    | Financed           | be able to view      |
      | Recommendation       | Repayment Parameters link under Loan Information section | Asset Insurance    | Revenue            | be able to view      |
      | Recommendation       | Repayment Parameters link under Loan Information section | Asset Insurance    | Collectible        | be able to view      |
      | Recommendation       | Repayment Parameters link under Loan Information section | Asset Insurance    | Additional Funding | be able to view      |
      | Recommendation       | Repayment Parameters link under Loan Information section | Asset Insurance    | Upfront            | not abe able to view |
      | Recommendation       | Repayment Parameters link under Loan Information section | Gap Insurance      | Financed           | be able to view      |
      | Recommendation       | Repayment Parameters link under Loan Information section | Gap Insurance      | Revenue            | be able to view      |
      | Recommendation       | Repayment Parameters link under Loan Information section | Gap Insurance      | Collectible        | be able to view      |
      | Recommendation       | Repayment Parameters link under Loan Information section | Gap Insurance      | Additional Funding | be able to view      |
      | Recommendation       | Repayment Parameters link under Loan Information section | Gap Insurance      | Upfront            | not abe able to view |
      | Recommendation       | Repayment Parameters link under Loan Information section | Life Insurance     | Financed           | be able to view      |
      | Recommendation       | Repayment Parameters link under Loan Information section | Life Insurance     | Revenue            | be able to view      |
      | Recommendation       | Repayment Parameters link under Loan Information section | Life Insurance     | Collectible        | be able to view      |
      | Recommendation       | Repayment Parameters link under Loan Information section | Life Insurance     | Additional Funding | be able to view      |
      | Recommendation       | Repayment Parameters link under Loan Information section | Life Insurance     | Upfront            | not abe able to view |
      | Recommendation       | Repayment Parameters link under Loan Information section | Payment Protection | Financed           | be able to view      |
      | Recommendation       | Repayment Parameters link under Loan Information section | Payment Protection | Revenue            | be able to view      |
      | Recommendation       | Repayment Parameters link under Loan Information section | Payment Protection | Collectible        | be able to view      |
      | Recommendation       | Repayment Parameters link under Loan Information section | Payment Protection | Additional Funding | be able to view      |
      | Recommendation       | Repayment Parameters link under Loan Information section | Payment Protection | Upfront            | not abe able to view |
      | Recommendation       | Repayment Parameters link under Loan Information section | Credit Protection  | Financed           | be able to view      |
      | Recommendation       | Repayment Parameters link under Loan Information section | Credit Protection  | Revenue            | be able to view      |
      | Recommendation       | Repayment Parameters link under Loan Information section | Credit Protection  | Collectible        | be able to view      |
      | Recommendation       | Repayment Parameters link under Loan Information section | Credit Protection  | Additional Funding | be able to view      |
      | Recommendation       | Repayment Parameters link under Loan Information section | Credit Protection  | Upfront            | not abe able to view |
      | Credit Approval      | Repayment Parameters option under 3 dots option          | Asset Insurance    | Financed           | be able to view      |
      | Credit Approval      | Repayment Parameters option under 3 dots option          | Asset Insurance    | Revenue            | be able to view      |
      | Credit Approval      | Repayment Parameters option under 3 dots option          | Asset Insurance    | Collectible        | be able to view      |
      | Credit Approval      | Repayment Parameters option under 3 dots option          | Asset Insurance    | Additional Funding | be able to view      |
      | Credit Approval      | Repayment Parameters option under 3 dots option          | Asset Insurance    | Upfront            | not abe able to view |
      | Credit Approval      | Repayment Parameters option under 3 dots option          | Gap Insurance      | Financed           | be able to view      |
      | Credit Approval      | Repayment Parameters option under 3 dots option          | Gap Insurance      | Revenue            | be able to view      |
      | Credit Approval      | Repayment Parameters option under 3 dots option          | Gap Insurance      | Collectible        | be able to view      |
      | Credit Approval      | Repayment Parameters option under 3 dots option          | Gap Insurance      | Additional Funding | be able to view      |
      | Credit Approval      | Repayment Parameters option under 3 dots option          | Gap Insurance      | Upfront            | not abe able to view |
      | Credit Approval      | Repayment Parameters option under 3 dots option          | Life Insurance     | Financed           | be able to view      |
      | Credit Approval      | Repayment Parameters option under 3 dots option          | Life Insurance     | Revenue            | be able to view      |
      | Credit Approval      | Repayment Parameters option under 3 dots option          | Life Insurance     | Collectible        | be able to view      |
      | Credit Approval      | Repayment Parameters option under 3 dots option          | Life Insurance     | Additional Funding | be able to view      |
      | Credit Approval      | Repayment Parameters option under 3 dots option          | Life Insurance     | Upfront            | not abe able to view |
      | Credit Approval      | Repayment Parameters option under 3 dots option          | Payment Protection | Financed           | be able to view      |
      | Credit Approval      | Repayment Parameters option under 3 dots option          | Payment Protection | Revenue            | be able to view      |
      | Credit Approval      | Repayment Parameters option under 3 dots option          | Payment Protection | Collectible        | be able to view      |
      | Credit Approval      | Repayment Parameters option under 3 dots option          | Payment Protection | Additional Funding | be able to view      |
      | Credit Approval      | Repayment Parameters option under 3 dots option          | Payment Protection | Upfront            | not abe able to view |
      | Credit Approval      | Repayment Parameters option under 3 dots option          | Credit Protection  | Financed           | be able to view      |
      | Credit Approval      | Repayment Parameters option under 3 dots option          | Credit Protection  | Revenue            | be able to view      |
      | Credit Approval      | Repayment Parameters option under 3 dots option          | Credit Protection  | Collectible        | be able to view      |
      | Credit Approval      | Repayment Parameters option under 3 dots option          | Credit Protection  | Additional Funding | be able to view      |
      | Credit Approval      | Repayment Parameters option under 3 dots option          | Credit Protection  | Upfront            | not abe able to view |
      | Reconsideration      | Repayment Parameters link under Loan Information section | Asset Insurance    | Financed           | be able to view      |
      | Reconsideration      | Repayment Parameters link under Loan Information section | Asset Insurance    | Revenue            | be able to view      |
      | Reconsideration      | Repayment Parameters link under Loan Information section | Asset Insurance    | Collectible        | be able to view      |
      | Reconsideration      | Repayment Parameters link under Loan Information section | Asset Insurance    | Additional Funding | be able to view      |
      | Reconsideration      | Repayment Parameters link under Loan Information section | Asset Insurance    | Upfront            | not abe able to view |
      | Reconsideration      | Repayment Parameters link under Loan Information section | Gap Insurance      | Financed           | be able to view      |
      | Reconsideration      | Repayment Parameters link under Loan Information section | Gap Insurance      | Revenue            | be able to view      |
      | Reconsideration      | Repayment Parameters link under Loan Information section | Gap Insurance      | Collectible        | be able to view      |
      | Reconsideration      | Repayment Parameters link under Loan Information section | Gap Insurance      | Additional Funding | be able to view      |
      | Reconsideration      | Repayment Parameters link under Loan Information section | Gap Insurance      | Upfront            | not abe able to view |
      | Reconsideration      | Repayment Parameters link under Loan Information section | Life Insurance     | Financed           | be able to view      |
      | Reconsideration      | Repayment Parameters link under Loan Information section | Life Insurance     | Revenue            | be able to view      |
      | Reconsideration      | Repayment Parameters link under Loan Information section | Life Insurance     | Collectible        | be able to view      |
      | Reconsideration      | Repayment Parameters link under Loan Information section | Life Insurance     | Additional Funding | be able to view      |
      | Reconsideration      | Repayment Parameters link under Loan Information section | Life Insurance     | Upfront            | not abe able to view |
      | Reconsideration      | Repayment Parameters link under Loan Information section | Payment Protection | Financed           | be able to view      |
      | Reconsideration      | Repayment Parameters link under Loan Information section | Payment Protection | Revenue            | be able to view      |
      | Reconsideration      | Repayment Parameters link under Loan Information section | Payment Protection | Collectible        | be able to view      |
      | Reconsideration      | Repayment Parameters link under Loan Information section | Payment Protection | Additional Funding | be able to view      |
      | Reconsideration      | Repayment Parameters link under Loan Information section | Payment Protection | Upfront            | not abe able to view |
      | Reconsideration      | Repayment Parameters link under Loan Information section | Credit Protection  | Financed           | be able to view      |
      | Reconsideration      | Repayment Parameters link under Loan Information section | Credit Protection  | Revenue            | be able to view      |
      | Reconsideration      | Repayment Parameters link under Loan Information section | Credit Protection  | Collectible        | be able to view      |
      | Reconsideration      | Repayment Parameters link under Loan Information section | Credit Protection  | Additional Funding | be able to view      |
      | Reconsideration      | Repayment Parameters link under Loan Information section | Credit Protection  | Upfront            | not abe able to view |
      | Post Approval        | Repayment Parameters tab under Loan Details tab          | Asset Insurance    | Financed           | be able to view      |
      | Post Approval        | Repayment Parameters tab under Loan Details tab          | Asset Insurance    | Revenue            | be able to view      |
      | Post Approval        | Repayment Parameters tab under Loan Details tab          | Asset Insurance    | Collectible        | be able to view      |
      | Post Approval        | Repayment Parameters tab under Loan Details tab          | Asset Insurance    | Additional Funding | be able to view      |
      | Post Approval        | Repayment Parameters tab under Loan Details tab          | Asset Insurance    | Upfront            | not abe able to view |
      | Post Approval        | Repayment Parameters tab under Loan Details tab          | Gap Insurance      | Financed           | be able to view      |
      | Post Approval        | Repayment Parameters tab under Loan Details tab          | Gap Insurance      | Revenue            | be able to view      |
      | Post Approval        | Repayment Parameters tab under Loan Details tab          | Gap Insurance      | Collectible        | be able to view      |
      | Post Approval        | Repayment Parameters tab under Loan Details tab          | Gap Insurance      | Additional Funding | be able to view      |
      | Post Approval        | Repayment Parameters tab under Loan Details tab          | Gap Insurance      | Upfront            | not abe able to view |
      | Post Approval        | Repayment Parameters tab under Loan Details tab          | Life Insurance     | Financed           | be able to view      |
      | Post Approval        | Repayment Parameters tab under Loan Details tab          | Life Insurance     | Revenue            | be able to view      |
      | Post Approval        | Repayment Parameters tab under Loan Details tab          | Life Insurance     | Collectible        | be able to view      |
      | Post Approval        | Repayment Parameters tab under Loan Details tab          | Life Insurance     | Additional Funding | be able to view      |
      | Post Approval        | Repayment Parameters tab under Loan Details tab          | Life Insurance     | Upfront            | not abe able to view |
      | Post Approval        | Repayment Parameters tab under Loan Details tab          | Payment Protection | Financed           | be able to view      |
      | Post Approval        | Repayment Parameters tab under Loan Details tab          | Payment Protection | Revenue            | be able to view      |
      | Post Approval        | Repayment Parameters tab under Loan Details tab          | Payment Protection | Collectible        | be able to view      |
      | Post Approval        | Repayment Parameters tab under Loan Details tab          | Payment Protection | Additional Funding | be able to view      |
      | Post Approval        | Repayment Parameters tab under Loan Details tab          | Payment Protection | Upfront            | not abe able to view |
      | Post Approval        | Repayment Parameters tab under Loan Details tab          | Credit Protection  | Financed           | be able to view      |
      | Post Approval        | Repayment Parameters tab under Loan Details tab          | Credit Protection  | Revenue            | be able to view      |
      | Post Approval        | Repayment Parameters tab under Loan Details tab          | Credit Protection  | Collectible        | be able to view      |
      | Post Approval        | Repayment Parameters tab under Loan Details tab          | Credit Protection  | Additional Funding | be able to view      |
      | Post Approval        | Repayment Parameters tab under Loan Details tab          | Credit Protection  | Upfront            | not abe able to view |
      | Disbursal Initiation | Repayment Parameters tab                                 | Asset Insurance    | Financed           | be able to view      |
      | Disbursal Initiation | Repayment Parameters tab                                 | Asset Insurance    | Revenue            | be able to view      |
      | Disbursal Initiation | Repayment Parameters tab                                 | Asset Insurance    | Collectible        | be able to view      |
      | Disbursal Initiation | Repayment Parameters tab                                 | Asset Insurance    | Additional Funding | be able to view      |
      | Disbursal Initiation | Repayment Parameters tab                                 | Asset Insurance    | Upfront            | not abe able to view |
      | Disbursal Initiation | Repayment Parameters tab                                 | Gap Insurance      | Financed           | be able to view      |
      | Disbursal Initiation | Repayment Parameters tab                                 | Gap Insurance      | Revenue            | be able to view      |
      | Disbursal Initiation | Repayment Parameters tab                                 | Gap Insurance      | Collectible        | be able to view      |
      | Disbursal Initiation | Repayment Parameters tab                                 | Gap Insurance      | Additional Funding | be able to view      |
      | Disbursal Initiation | Repayment Parameters tab                                 | Gap Insurance      | Upfront            | not abe able to view |
      | Disbursal Initiation | Repayment Parameters tab                                 | Life Insurance     | Financed           | be able to view      |
      | Disbursal Initiation | Repayment Parameters tab                                 | Life Insurance     | Revenue            | be able to view      |
      | Disbursal Initiation | Repayment Parameters tab                                 | Life Insurance     | Collectible        | be able to view      |
      | Disbursal Initiation | Repayment Parameters tab                                 | Life Insurance     | Additional Funding | be able to view      |
      | Disbursal Initiation | Repayment Parameters tab                                 | Life Insurance     | Upfront            | not abe able to view |
      | Disbursal Initiation | Repayment Parameters tab                                 | Payment Protection | Financed           | be able to view      |
      | Disbursal Initiation | Repayment Parameters tab                                 | Payment Protection | Revenue            | be able to view      |
      | Disbursal Initiation | Repayment Parameters tab                                 | Payment Protection | Collectible        | be able to view      |
      | Disbursal Initiation | Repayment Parameters tab                                 | Payment Protection | Additional Funding | be able to view      |
      | Disbursal Initiation | Repayment Parameters tab                                 | Payment Protection | Upfront            | not abe able to view |
      | Disbursal Initiation | Repayment Parameters tab                                 | Credit Protection  | Financed           | be able to view      |
      | Disbursal Initiation | Repayment Parameters tab                                 | Credit Protection  | Revenue            | be able to view      |
      | Disbursal Initiation | Repayment Parameters tab                                 | Credit Protection  | Collectible        | be able to view      |
      | Disbursal Initiation | Repayment Parameters tab                                 | Credit Protection  | Additional Funding | be able to view      |
      | Disbursal Initiation | Repayment Parameters tab                                 | Credit Protection  | Upfront            | not abe able to view |

  #FeatureID-ACAUTOCAS-211
  Scenario Outline: View hyperlink under "Payout Commission" column under VAP grid on Repayment Parameter details page on "<Var_stage>" for vap type "<VAP_type>"
    And user open an application at "<Var_stage>" Stage
    And user has already added vap product of vap type "<VAP_type>"
    When user navigates to "<Opening_Link>"
    Then user should be able to view hyperlink under "Payout Commission column"
    Examples:
      | Var_stage            | Opening_Link                                             | VAP_type           |
      | BDE                  | Repayment Parameters tab under Loan Details tab          | Asset Insurance    |
      | BDE                  | Repayment Parameters tab under Loan Details tab          | Gap Insurance      |
      | BDE                  | Repayment Parameters tab under Loan Details tab          | Gap Insurance      |
      | BDE                  | Repayment Parameters tab under Loan Details tab          | Life Insurance     |
      | BDE                  | Repayment Parameters tab under Loan Details tab          | Payment Protection |
      | BDE                  | Repayment Parameters tab under Loan Details tab          | Credit Protection  |
      | Recommendation       | Repayment Parameters link under Loan Information section | Asset Insurance    |
      | Recommendation       | Repayment Parameters link under Loan Information section | Gap Insurance      |
      | Recommendation       | Repayment Parameters link under Loan Information section | Gap Insurance      |
      | Recommendation       | Repayment Parameters link under Loan Information section | Life Insurance     |
      | Recommendation       | Repayment Parameters link under Loan Information section | Payment Protection |
      | Recommendation       | Repayment Parameters link under Loan Information section | Credit Protection  |
      | Credit Approval      | Repayment Parameters option under 3 dots option          | Asset Insurance    |
      | Credit Approval      | Repayment Parameters option under 3 dots option          | Gap Insurance      |
      | Credit Approval      | Repayment Parameters option under 3 dots option          | Gap Insurance      |
      | Credit Approval      | Repayment Parameters option under 3 dots option          | Life Insurance     |
      | Credit Approval      | Repayment Parameters option under 3 dots option          | Payment Protection |
      | Credit Approval      | Repayment Parameters option under 3 dots option          | Credit Protection  |
      | Reconsideration      | Repayment Parameters link under Loan Information section | Asset Insurance    |
      | Reconsideration      | Repayment Parameters link under Loan Information section | Gap Insurance      |
      | Reconsideration      | Repayment Parameters link under Loan Information section | Gap Insurance      |
      | Reconsideration      | Repayment Parameters link under Loan Information section | Life Insurance     |
      | Reconsideration      | Repayment Parameters link under Loan Information section | Payment Protection |
      | Reconsideration      | Repayment Parameters link under Loan Information section | Credit Protection  |
      | Post Approval        | Repayment Parameters tab under Loan Details tab          | Asset Insurance    |
      | Post Approval        | Repayment Parameters tab under Loan Details tab          | Gap Insurance      |
      | Post Approval        | Repayment Parameters tab under Loan Details tab          | Gap Insurance      |
      | Post Approval        | Repayment Parameters tab under Loan Details tab          | Life Insurance     |
      | Post Approval        | Repayment Parameters tab under Loan Details tab          | Payment Protection |
      | Post Approval        | Repayment Parameters tab under Loan Details tab          | Credit Protection  |
      | Disbursal Initiation | Repayment Parameters tab                                 | Asset Insurance    |
      | Disbursal Initiation | Repayment Parameters tab                                 | Gap Insurance      |
      | Disbursal Initiation | Repayment Parameters tab                                 | Gap Insurance      |
      | Disbursal Initiation | Repayment Parameters tab                                 | Life Insurance     |
      | Disbursal Initiation | Repayment Parameters tab                                 | Payment Protection |
      | Disbursal Initiation | Repayment Parameters tab                                 | Credit Protection  |

  #FeatureID-ACAUTOCAS-211
  Scenario Outline: Open and validate data at hyperlink under "Payout Commission" column under VAP grid on Repayment Parameter details page on "<Var_stage>" for vap type "<VAP_type>"
    And user open an application at "<Var_stage>" Stage
    And user has already added vap product of vap type "<VAP_type>"
    When user navigates to "<Opening_Link>"
    And user clicks on "hyperlink under Payout Commission column"
    Then user should be able to view Payout Commission Details that are maintained in "VAP Payout policy master" as well as mapped to vap type "<VAP_type>" under "VAP Policy master"
    Examples:
      | Var_stage            | Opening_Link                                             | VAP_type           |
      | BDE                  | Repayment Parameters tab under Loan Details tab          | Asset Insurance    |
      | BDE                  | Repayment Parameters tab under Loan Details tab          | Gap Insurance      |
      | BDE                  | Repayment Parameters tab under Loan Details tab          | Gap Insurance      |
      | BDE                  | Repayment Parameters tab under Loan Details tab          | Life Insurance     |
      | BDE                  | Repayment Parameters tab under Loan Details tab          | Payment Protection |
      | BDE                  | Repayment Parameters tab under Loan Details tab          | Credit Protection  |
      | Recommendation       | Repayment Parameters link under Loan Information section | Asset Insurance    |
      | Recommendation       | Repayment Parameters link under Loan Information section | Gap Insurance      |
      | Recommendation       | Repayment Parameters link under Loan Information section | Gap Insurance      |
      | Recommendation       | Repayment Parameters link under Loan Information section | Life Insurance     |
      | Recommendation       | Repayment Parameters link under Loan Information section | Payment Protection |
      | Recommendation       | Repayment Parameters link under Loan Information section | Credit Protection  |
      | Credit Approval      | Repayment Parameters option under 3 dots option          | Asset Insurance    |
      | Credit Approval      | Repayment Parameters option under 3 dots option          | Gap Insurance      |
      | Credit Approval      | Repayment Parameters option under 3 dots option          | Gap Insurance      |
      | Credit Approval      | Repayment Parameters option under 3 dots option          | Life Insurance     |
      | Credit Approval      | Repayment Parameters option under 3 dots option          | Payment Protection |
      | Credit Approval      | Repayment Parameters option under 3 dots option          | Credit Protection  |
      | Reconsideration      | Repayment Parameters link under Loan Information section | Asset Insurance    |
      | Reconsideration      | Repayment Parameters link under Loan Information section | Gap Insurance      |
      | Reconsideration      | Repayment Parameters link under Loan Information section | Gap Insurance      |
      | Reconsideration      | Repayment Parameters link under Loan Information section | Life Insurance     |
      | Reconsideration      | Repayment Parameters link under Loan Information section | Payment Protection |
      | Reconsideration      | Repayment Parameters link under Loan Information section | Credit Protection  |
      | Post Approval        | Repayment Parameters tab under Loan Details tab          | Asset Insurance    |
      | Post Approval        | Repayment Parameters tab under Loan Details tab          | Gap Insurance      |
      | Post Approval        | Repayment Parameters tab under Loan Details tab          | Gap Insurance      |
      | Post Approval        | Repayment Parameters tab under Loan Details tab          | Life Insurance     |
      | Post Approval        | Repayment Parameters tab under Loan Details tab          | Payment Protection |
      | Post Approval        | Repayment Parameters tab under Loan Details tab          | Credit Protection  |
      | Disbursal Initiation | Repayment Parameters tab                                 | Asset Insurance    |
      | Disbursal Initiation | Repayment Parameters tab                                 | Gap Insurance      |
      | Disbursal Initiation | Repayment Parameters tab                                 | Gap Insurance      |
      | Disbursal Initiation | Repayment Parameters tab                                 | Life Insurance     |
      | Disbursal Initiation | Repayment Parameters tab                                 | Payment Protection |
      | Disbursal Initiation | Repayment Parameters tab                                 | Credit Protection  |
