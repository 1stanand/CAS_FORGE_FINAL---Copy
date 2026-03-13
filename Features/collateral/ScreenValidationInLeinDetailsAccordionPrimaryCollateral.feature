#@AuthoredBy-vinod.pandey
@Epic-Loan_Application_Details
@AuthoredBy-vipin.kishor
@ReviewedBy-
@ImplementedBy-
@TechReviewedBy-
@Conventional
@Islamic
@count
  @new
Feature:Lien Details Accordion Validation For Primary Collateral

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0

  #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration","Disbursal Initiation"]}
  # ${ApplicantType:["indiv","nonindiv"]}
  #FeatureID:ACAUTOCAS-5079
  Scenario Outline:Open Lien Details accordion for primary collateral <CollSubType> of <ProductType> application at <ApplicationStage>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user is on "<Page>" page of "<ApplicationStage>"
    And user delink the collateral of "<Page>"
    And user reads data from the excel file "property_details.xlsx" under sheet "home" and row <PropertyDetails_home_rowNum>
    And "<Field>" is filled in "<Page>" for "<CollSubType>"
    And user reads data from the excel file "property_details.xlsx" under sheet "other_details" and row 26
    And user fills other details of "<Page>"
    And user saves the details of "<Page>"
    And user opened lien details tab of "<Page>"
    When user open Lien Details accordion of "<Page>"
    Then Lien Details accordion of "<Page>" should be open
    @ImplementedBy-richa.singh
    @Release
    Examples:
      | Page             | Field              | CollSubType                         | ProductType | ApplicationStage   | ApplicantType   | PropertyDetails_home_rowNum |
      | Property Details | Accepted Valuation | ready property                      | HL          | <ApplicationStage> | <ApplicantType> | 136                         |
      | Property Details | Accepted Valuation | builder property under construction | HL          | <ApplicationStage> | <ApplicantType> | 138                         |
      | Property Details | Accepted Valuation | plot plus self construction         | HL          | <ApplicationStage> | <ApplicantType> | 135                         |
      | Property Details | Accepted Valuation | construction on land                | HL          | <ApplicationStage> | <ApplicantType> | 137                         |
      | Property Details | Accepted Valuation | purchase a plot                     | HL          | <ApplicationStage> | <ApplicantType> | 139                         |
      | Asset Details    | Asset Cost         | consumer vehicle                    | MAL         | <ApplicationStage> | <ApplicantType> | 139                         |
    @Deferred
    Examples:
      | Page          | Field      | CollSubType        | ProductType | ApplicationStage   | PropertyDetails_home_rowNum | ApplicantType   |
      | Asset Details | Asset Cost | commercial vehicle | CV          | <ApplicationStage> | 135                         | <ApplicantType> |

  #${ApplicationStage:["Lead Details","Login Acceptance""DDE","Recommendation","Credit Approval","Reconsideration","Disbursal Initiation"]}
   # ${ApplicantType:["indiv","nonindiv"]}
 #FeatureID:ACAUTOCAS-5079
  Scenario Outline:Validate inputs are present under Lien Details accordion in lien details for primary collateral <CollSubType> of <ProductType> application at <ApplicationStage>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user is on "<Page>" page of "<ApplicationStage>"
    And user delink the collateral of "<Page>"
    And user reads data from the excel file "property_details.xlsx" under sheet "home" and row <PropertyDetails_home_rowNum>
    And "<Field>" is filled in "<Page>" for "<CollSubType>"
    And user reads data from the excel file "property_details.xlsx" under sheet "other_details" and row 26
    And user fills other details of "<Page>"
    And user saves the details of "<Page>"
    And user opened lien details tab of "<Page>"
    When user open Lien Details accordion of "<Page>"
    Then fields are present in Lien Details
      | Lien Reference Number      | Input          |
      | Internal/External          | Drop Down      |
      | Institution Name           | List Of Values |
      | Source System              | Drop Down      |
      | Host System                | Drop Down      |
      | Application/Split ID       | Input          |
      | Loan Account Number        | Input          |
      | Customer Name              | Input          |
      | Loan Amount                | Input          |
      | Current Outstanding        | Input          |
      | Lien Applicable On         | Drop Down      |
      | Product Type               | List Of Values |
      | Nature of Collateral       | Drop Down      |
      | Lien Percentage            | Input          |
      | Lien Amount                | Input          |
      | Margin Percentage          | Input          |
      | Secured Amount             | Input          |
      | Value Available for Pledge | Input          |
      | Charge Type                | Drop Down      |
      | Lien Marking Date          | Input          |
      | Lien Expiry Date           | Input          |
      | Lien Priority              | Input          |
      | Reasons                    | Drop Down      |
      | Reason Description         | Input          |
      | Comments                   | Input          |
      | refresh                    | button         |
      | add reason                 | button         |
      | done                       | button         |
      | cancel                     | button         |
    @ImplementedBy-richa.singh
    @Release
    Examples:
      | Page             | Field              | CollSubType                         | ProductType | ApplicationStage   | ApplicantType   | PropertyDetails_home_rowNum |
      | Property Details | Accepted Valuation | ready property                      | HL          | <ApplicationStage> | <ApplicantType> | 136                         |
      | Property Details | Accepted Valuation | builder property under construction | HL          | <ApplicationStage> | <ApplicantType> | 138                         |
      | Property Details | Accepted Valuation | plot plus self construction         | HL          | <ApplicationStage> | <ApplicantType> | 135                         |
      | Property Details | Accepted Valuation | construction on land                | HL          | <ApplicationStage> | <ApplicantType> | 137                         |
      | Property Details | Accepted Valuation | purchase a plot                     | HL          | <ApplicationStage> | <ApplicantType> | 139                         |
      | Asset Details    | Asset Cost         | consumer vehicle                    | MAL         | <ApplicationStage> | <ApplicantType> | 139                         |
    @Deferred
    Examples:
      | Page          | Field      | CollSubType        | ProductType | ApplicationStage   | ApplicantType   | PropertyDetails_home_rowNum |
      | Asset Details | Asset Cost | commercial vehicle | CV          | <ApplicationStage> | <ApplicantType> | 139                         |

#${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration","Disbursal Initiation"]}  #FeatureID:ACAUTOCAS-5079
  # ${ApplicantType:["indiv","nonindiv"]}
  Scenario Outline:Validate fields are non editable under lien details accordion in lien details  for <CollSubType> of <ProductType> application at <ApplicationStage>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user is on "<Page>" page of "<ApplicationStage>"
    And user delink the collateral of "<Page>"
    And user reads data from the excel file "property_details.xlsx" under sheet "home" and row <PropertyDetails_home_rowNum>
    And "<Field>" is filled in "<Page>" for "<CollSubType>"
    And user reads data from the excel file "property_details.xlsx" under sheet "other_details" and row 26
    And user fills other details of "<Page>"
    And user saves the details of "<Page>"
    And user opened lien details tab of "<Page>"
    When user open Lien Details accordion of "<Page>"
    Then fields are non editable in Lien Details
      | Lien Reference Number      |
      | Application/Split ID       |
      | Lien Applicable On         |
      | Value Available for Pledge |
      | Lien Marking Date          |
      | Reason Descriptions        |
    @ImplementedBy-richa.singh
    
    @Release
    Examples:
      | Page             | Field              | CollSubType                         | ProductType | ApplicationStage   | ApplicantType   | PropertyDetails_home_rowNum |
      | Property Details | Accepted Valuation | ready property                      | HL          | <ApplicationStage> | <ApplicantType> | 136                         |
      | Property Details | Accepted Valuation | builder property under construction | HL          | <ApplicationStage> | <ApplicantType> | 138                         |
      | Property Details | Accepted Valuation | plot plus self construction         | HL          | <ApplicationStage> | <ApplicantType> | 135                         |
      | Property Details | Accepted Valuation | construction on land                | HL          | <ApplicationStage> | <ApplicantType> | 137                         |
      | Property Details | Accepted Valuation | purchase a plot                     | HL          | <ApplicationStage> | <ApplicantType> | 139                         |
      | Asset Details    | Asset Cost         | consumer vehicle                    | MAL         | <ApplicationStage> | <ApplicantType> | 139                         |
    @Deferred
    Examples:
      | Page          | Field      | CollSubType        | ProductType | ApplicationStage   | ApplicantType   | PropertyDetails_home_rowNum |
      | Asset Details | Asset Cost | commercial vehicle | CV          | <ApplicationStage> | <ApplicantType> | 139                         |

  #${ApplicationStage:["Lead Details","Login Acceptance",""DDE","Recommendation","Credit Approval","Reconsideration","Disbursal Initiation"]}
   # ${ApplicantType:["indiv","nonindiv"]}
   #${CollSubType:["Ready Property","Builder Property Under Construction","Plot Plus Self Construction","Construction On Land","Purchase a plot"]}
  @ImplementedBy-richa.singh
  
  @Release
  #FeatureID:ACAUTOCAS-5079
  Scenario Outline:Enter <Validity> <Field_Name> <Validity_Reason> in Lien Details Accordion for primary collateral <CollSubType> of home loan application at <ApplicationStage>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user is on "<Page>" page of "<ApplicationStage>"
    And user delink the collateral of "<Page>"
    And user reads property details excel from datatable on the basis of "Construction On Land" type
      | property_details.xlsx | home | 136 | Ready Property                      |
      | property_details.xlsx | home | 138 | Builder Property Under Construction |
      | property_details.xlsx | home | 135 | Plot Plus Self Construction         |
      | property_details.xlsx | home | 137 | Construction On Land                |
      | property_details.xlsx | home | 139 | Purchase a Plot                     |
    And "<Field>" is filled in "<Page>" for "Construction On Land"
    And user reads data from the excel file "property_details.xlsx" under sheet "other_details" and row 26
    And user fills other details of "<Page>"
    And user saves the details of "<Page>"
    And user opened lien details tab of "<Page>"
    And user open Lien Details accordion of "<Page>"
    And user reads data from the excel file "lien_details.xlsx" under sheet "lien_details" and row <Lien_lienDetails_rowNo>
    And user selects internal external
    When user enters "<Field_Name>" in lien details accordian
    Then error message is "<displayed_not_displayed>"
    Examples:
      | Field              | Page             | CollSubType   | Field_Name          | Validity | Validity_Reason                                        | displayed_not_displayed | Lien_lienDetails_rowNo | ProductType | ApplicationStage   | ApplicantType   |
      | Accepted Valuation | Property Details | <CollSubType> | Loan Account Number | valid    |                                                        | not displayed           | 0                      | HL          | <ApplicationStage> | <ApplicantType> |
      | Accepted Valuation | Property Details | <CollSubType> | Loan Account Number | valid    | with maximum length                                    | not displayed           | 1                      | HL          | <ApplicationStage> | <ApplicantType> |
      | Accepted Valuation | Property Details | <CollSubType> | Lien Percentage     | valid    | with value between 0 to 100                            | not displayed           | 2                      | HL          | <ApplicationStage> | <ApplicantType> |
      | Accepted Valuation | Property Details | <CollSubType> | Lien Percentage     | valid    | with value between 0 to 100 upto 2 decimal places      | not displayed           | 3                      | HL          | <ApplicationStage> | <ApplicantType> |
      | Accepted Valuation | Property Details | <CollSubType> | Lien Percentage     | valid    | equal to 100                                           | not displayed           | 4                      | HL          | <ApplicationStage> | <ApplicantType> |
      | Accepted Valuation | Property Details | <CollSubType> | Lien Percentage     | invalid  | with negative values                                   | displayed               | 5                      | HL          | <ApplicationStage> | <ApplicantType> |
      | Accepted Valuation | Property Details | <CollSubType> | Lien Percentage     | invalid  | with value more  than 100                              | displayed               | 6                      | HL          | <ApplicationStage> | <ApplicantType> |
      | Accepted Valuation | Property Details | <CollSubType> | Lien Percentage     | invalid  | with value between 0 to 100 more than 2 decimal places | displayed               | 7                      | HL          | <ApplicationStage> | <ApplicantType> |
      | Accepted Valuation | Property Details | <CollSubType> | Lien Percentage     | invalid  | equal to 0                                             | displayed               | 8                      | HL          | <ApplicationStage> | <ApplicantType> |
      | Accepted Valuation | Property Details | <CollSubType> | Lien Amount         | invalid  | with more than 18 digits                               | displayed               | 9                      | HL          | <ApplicationStage> | <ApplicantType> |
      | Accepted Valuation | Property Details | <CollSubType> | Lien Amount         | valid    | less than realisable value                             | not displayed           | 10                     | HL          | <ApplicationStage> | <ApplicantType> |
      | Accepted Valuation | Property Details | <CollSubType> | Lien Amount         | valid    | equal to realisable value                              | not displayed           | 11                     | HL          | <ApplicationStage> | <ApplicantType> |
      | Accepted Valuation | Property Details | <CollSubType> | Lien Amount         | invalid  | with character                                         | displayed               | 12                     | HL          | <ApplicationStage> | <ApplicantType> |
      | Accepted Valuation | Property Details | <CollSubType> | Lien Amount         | invalid  | with special character                                 | displayed               | 13                     | HL          | <ApplicationStage> | <ApplicantType> |
      | Accepted Valuation | Property Details | <CollSubType> | Lien Amount         | invalid  | with negative values                                   | displayed               | 14                     | HL          | <ApplicationStage> | <ApplicantType> |
      | Accepted Valuation | Property Details | <CollSubType> | Lien Amount         | invalid  | with space                                             | displayed               | 15                     | HL          | <ApplicationStage> | <ApplicantType> |
      | Accepted Valuation | Property Details | <CollSubType> | Lien Amount         | invalid  | more than realisable value                             | displayed               | 16                     | HL          | <ApplicationStage> | <ApplicantType> |
      | Accepted Valuation | Property Details | <CollSubType> | margin percentage   | valid    | with value between 0 to 100                            | not displayed           | 17                     | HL          | <ApplicationStage> | <ApplicantType> |
      | Accepted Valuation | Property Details | <CollSubType> | margin percentage   | valid    | with value between 0 to 100 upto 2 decimal places      | not displayed           | 18                     | HL          | <ApplicationStage> | <ApplicantType> |
      | Accepted Valuation | Property Details | <CollSubType> | margin percentage   | valid    | equal to 100                                           | not displayed           | 19                     | HL          | <ApplicationStage> | <ApplicantType> |
      | Accepted Valuation | Property Details | <CollSubType> | margin percentage   | invalid  | with negative values                                   | displayed               | 20                     | HL          | <ApplicationStage> | <ApplicantType> |
      | Accepted Valuation | Property Details | <CollSubType> | margin percentage   | invalid  | with value more  than 100                              | displayed               | 21                     | HL          | <ApplicationStage> | <ApplicantType> |
      | Accepted Valuation | Property Details | <CollSubType> | margin percentage   | invalid  | with value between 0 to 100 more than 2 decimal places | displayed               | 22                     | HL          | <ApplicationStage> | <ApplicantType> |
      | Accepted Valuation | Property Details | <CollSubType> | margin percentage   | invalid  | equal to 0                                             | displayed               | 23                     | HL          | <ApplicationStage> | <ApplicantType> |
      | Accepted Valuation | Property Details | <CollSubType> | Security Amount     | invalid  | with more than 18 digits                               | displayed               | 24                     | HL          | <ApplicationStage> | <ApplicantType> |
      | Accepted Valuation | Property Details | <CollSubType> | Security Amount     | valid    | less than lien amount                                  | not displayed           | 25                     | HL          | <ApplicationStage> | <ApplicantType> |
      | Accepted Valuation | Property Details | <CollSubType> | Security Amount     | valid    | equal to lien amount                                   | not displayed           | 26                     | HL          | <ApplicationStage> | <ApplicantType> |
      | Accepted Valuation | Property Details | <CollSubType> | Security Amount     | invalid  | more than lien amount                                  | not displayed           | 27                     | HL          | <ApplicationStage> | <ApplicantType> |
      | Accepted Valuation | Property Details | <CollSubType> | Security Amount     | invalid  | with character                                         | displayed               | 28                     | HL          | <ApplicationStage> | <ApplicantType> |
      | Accepted Valuation | Property Details | <CollSubType> | Security Amount     | invalid  | with special character                                 | displayed               | 29                     | HL          | <ApplicationStage> | <ApplicantType> |
      | Accepted Valuation | Property Details | <CollSubType> | Security Amount     | invalid  | with negative values                                   | displayed               | 30                     | HL          | <ApplicationStage> | <ApplicantType> |
      | Accepted Valuation | Property Details | <CollSubType> | Security Amount     | invalid  | with space                                             | displayed               | 31                     | HL          | <ApplicationStage> | <ApplicantType> |
      | Accepted Valuation | Property Details | <CollSubType> | Lien Expiry Date    | invalid  | with invalid date format                               | displayed               | 32                     | HL          | <ApplicationStage> | <ApplicantType> |
      | Accepted Valuation | Property Details | <CollSubType> | Lien Expiry Date    | invalid  | less than lien marking date                            | displayed               | 33                     | HL          | <ApplicationStage> | <ApplicantType> |
      | Accepted Valuation | Property Details | <CollSubType> | Lien Expiry Date    | valid    | equal to lien marking date                             | not displayed           | 34                     | HL          | <ApplicationStage> | <ApplicantType> |
      | Accepted Valuation | Property Details | <CollSubType> | Lien Priority       | invalid  | with character                                         | displayed               | 35                     | HL          | <ApplicationStage> | <ApplicantType> |
      | Accepted Valuation | Property Details | <CollSubType> | Lien Priority       | invalid  | with special character                                 | displayed               | 36                     | HL          | <ApplicationStage> | <ApplicantType> |
      | Accepted Valuation | Property Details | <CollSubType> | Lien Priority       | valid    | with digits                                            | not displayed           | 37                     | HL          | <ApplicationStage> | <ApplicantType> |
      | Accepted Valuation | Property Details | <CollSubType> | Lien Priority       | valid    | with max length 2 digits                               | not displayed           | 38                     | HL          | <ApplicationStage> | <ApplicantType> |
      | Accepted Valuation | Property Details | <CollSubType> | Comments            | valid    | with character                                         | not displayed           | 39                     | HL          | <ApplicationStage> | <ApplicantType> |
      | Accepted Valuation | Property Details | <CollSubType> | Comments            | valid    | with special character                                 | not displayed           | 40                     | HL          | <ApplicationStage> | <ApplicantType> |
      | Accepted Valuation | Property Details | <CollSubType> | Comments            | valid    | with digits                                            | not displayed           | 41                     | HL          | <ApplicationStage> | <ApplicantType> |
      | Accepted Valuation | Property Details | <CollSubType> | Comments            | valid    | with max length 4000 characters                        | not displayed           | 42                     | HL          | <ApplicationStage> | <ApplicantType> |

#${ApplicationStage:["Lead Details","Login Acceptance",""DDE","Recommendation","Credit Approval","Reconsideration","Disbursal Initiation"]}
 # ${ApplicantType:["indiv","nonindiv"]}
  #FeatureID:ACAUTOCAS-5079
  @ImplementedBy-pallavi.singh
  
  @Release
  Scenario Outline:Enter <Validity> <Field_Name> <Validity_Reason> in Lien Details Accordion for primary collateral <CollSubType> of consumer vehicle application at <ApplicationStage>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user is on "<Page>" page of "<ApplicationStage>"
    And user opened lien details tab of "<Page>"
    And user open Lien Details accordion of "<Page>"
    And user reads data from the excel file "lien_details.xlsx" under sheet "lien_details" and row <Lien_lienDetails_rowNo>
    And user selects internal external
    When user enters "<Field_Name>" in lien details accordian
    Then error message is "<displayed_not_displayed>"
    Examples:
      | var        | Page          | CollSubType      | Field_Name          | Validity | Validity_Reason                                        | displayed_not_displayed | Lien_lienDetails_rowNo | ProductType | ApplicationStage   | ApplicantType   |
      | Asset Cost | Asset Details | Consumer Vehicle | Loan Account Number | valid    |                                                        | not displayed           | 0                      | MAL         | <ApplicationStage> | <ApplicantType> |
      | Asset Cost | Asset Details | Consumer Vehicle | Loan Account Number | valid    | with maximum length                                    | not displayed           | 1                      | MAL         | <ApplicationStage> | <ApplicantType> |
      | Asset Cost | Asset Details | Consumer Vehicle | Lien Percentage     | valid    | with value between 0 to 100                            | not displayed           | 2                      | MAL         | <ApplicationStage> | <ApplicantType> |
      | Asset Cost | Asset Details | Consumer Vehicle | Lien Percentage     | valid    | with value between 0 to 100 upto 2 decimal places      | not displayed           | 3                      | MAL         | <ApplicationStage> | <ApplicantType> |
      | Asset Cost | Asset Details | Consumer Vehicle | Lien Percentage     | valid    | equal to 100                                           | not displayed           | 4                      | MAL         | <ApplicationStage> | <ApplicantType> |
      | Asset Cost | Asset Details | Consumer Vehicle | Lien Percentage     | invalid  | with negative values                                   | displayed               | 5                      | MAL         | <ApplicationStage> | <ApplicantType> |
      | Asset Cost | Asset Details | Consumer Vehicle | Lien Percentage     | invalid  | with value more  than 100                              | displayed               | 6                      | MAL         | <ApplicationStage> | <ApplicantType> |
      | Asset Cost | Asset Details | Consumer Vehicle | Lien Percentage     | invalid  | with value between 0 to 100 more than 2 decimal places | displayed               | 7                      | MAL         | <ApplicationStage> | <ApplicantType> |
      | Asset Cost | Asset Details | Consumer Vehicle | Lien Percentage     | invalid  | equal to 0                                             | displayed               | 8                      | MAL         | <ApplicationStage> | <ApplicantType> |
      | Asset Cost | Asset Details | Consumer Vehicle | Lien Amount         | invalid  | with more than 18 digits                               | displayed               | 9                      | MAL         | <ApplicationStage> | <ApplicantType> |
      | Asset Cost | Asset Details | Consumer Vehicle | Lien Amount         | valid    | less than realisable value                             | not displayed           | 10                     | MAL         | <ApplicationStage> | <ApplicantType> |
      | Asset Cost | Asset Details | Consumer Vehicle | Lien Amount         | valid    | equal to realisable value                              | not displayed           | 11                     | MAL         | <ApplicationStage> | <ApplicantType> |
      | Asset Cost | Asset Details | Consumer Vehicle | Lien Amount         | invalid  | with character                                         | displayed               | 12                     | MAL         | <ApplicationStage> | <ApplicantType> |
      | Asset Cost | Asset Details | Consumer Vehicle | Lien Amount         | invalid  | with special character                                 | displayed               | 13                     | MAL         | <ApplicationStage> | <ApplicantType> |
      | Asset Cost | Asset Details | Consumer Vehicle | Lien Amount         | invalid  | with negative values                                   | displayed               | 14                     | MAL         | <ApplicationStage> | <ApplicantType> |
      | Asset Cost | Asset Details | Consumer Vehicle | Lien Amount         | invalid  | with space                                             | displayed               | 15                     | MAL         | <ApplicationStage> | <ApplicantType> |
      | Asset Cost | Asset Details | Consumer Vehicle | Lien Amount         | invalid  | more than realisable value                             | displayed               | 16                     | MAL         | <ApplicationStage> | <ApplicantType> |
      | Asset Cost | Asset Details | Consumer Vehicle | margin percentage   | valid    | with value between 0 to 100                            | not displayed           | 17                     | MAL         | <ApplicationStage> | <ApplicantType> |
      | Asset Cost | Asset Details | Consumer Vehicle | margin percentage   | valid    | with value between 0 to 100 upto 2 decimal places      | not displayed           | 18                     | MAL         | <ApplicationStage> | <ApplicantType> |
      | Asset Cost | Asset Details | Consumer Vehicle | margin percentage   | valid    | equal to 100                                           | not displayed           | 19                     | MAL         | <ApplicationStage> | <ApplicantType> |
      | Asset Cost | Asset Details | Consumer Vehicle | margin percentage   | invalid  | with negative values                                   | displayed               | 20                     | MAL         | <ApplicationStage> | <ApplicantType> |
      | Asset Cost | Asset Details | Consumer Vehicle | margin percentage   | invalid  | with value more  than 100                              | displayed               | 21                     | MAL         | <ApplicationStage> | <ApplicantType> |
      | Asset Cost | Asset Details | Consumer Vehicle | margin percentage   | invalid  | with value between 0 to 100 more than 2 decimal places | displayed               | 22                     | MAL         | <ApplicationStage> | <ApplicantType> |
      | Asset Cost | Asset Details | Consumer Vehicle | margin percentage   | invalid  | equal to 0                                             | displayed               | 23                     | MAL         | <ApplicationStage> | <ApplicantType> |
      | Asset Cost | Asset Details | Consumer Vehicle | Security Amount     | invalid  | with more than 18 digits                               | displayed               | 24                     | MAL         | <ApplicationStage> | <ApplicantType> |
      | Asset Cost | Asset Details | Consumer Vehicle | Security Amount     | valid    | less than lien amount                                  | not displayed           | 25                     | MAL         | <ApplicationStage> | <ApplicantType> |
      | Asset Cost | Asset Details | Consumer Vehicle | Security Amount     | valid    | equal to lien amount                                   | not displayed           | 26                     | MAL         | <ApplicationStage> | <ApplicantType> |
      | Asset Cost | Asset Details | Consumer Vehicle | Security Amount     | invalid  | more than lien amount                                  | not displayed           | 27                     | MAL         | <ApplicationStage> | <ApplicantType> |
      | Asset Cost | Asset Details | Consumer Vehicle | Security Amount     | invalid  | with character                                         | displayed               | 28                     | MAL         | <ApplicationStage> | <ApplicantType> |
      | Asset Cost | Asset Details | Consumer Vehicle | Security Amount     | invalid  | with special character                                 | displayed               | 29                     | MAL         | <ApplicationStage> | <ApplicantType> |
      | Asset Cost | Asset Details | Consumer Vehicle | Security Amount     | invalid  | with negative values                                   | displayed               | 30                     | MAL         | <ApplicationStage> | <ApplicantType> |
      | Asset Cost | Asset Details | Consumer Vehicle | Security Amount     | invalid  | with space                                             | displayed               | 31                     | MAL         | <ApplicationStage> | <ApplicantType> |
      | Asset Cost | Asset Details | Consumer Vehicle | Lien Expiry Date    | invalid  | with invalid date format                               | displayed               | 32                     | MAL         | <ApplicationStage> | <ApplicantType> |
      | Asset Cost | Asset Details | Consumer Vehicle | Lien Expiry Date    | invalid  | less than lien marking date                            | displayed               | 33                     | MAL         | <ApplicationStage> | <ApplicantType> |
      | Asset Cost | Asset Details | Consumer Vehicle | Lien Expiry Date    | valid    | equal to lien marking date                             | not displayed           | 34                     | MAL         | <ApplicationStage> | <ApplicantType> |
      | Asset Cost | Asset Details | Consumer Vehicle | Lien Priority       | invalid  | with character                                         | displayed               | 35                     | MAL         | <ApplicationStage> | <ApplicantType> |
      | Asset Cost | Asset Details | Consumer Vehicle | Lien Priority       | invalid  | with special character                                 | displayed               | 36                     | MAL         | <ApplicationStage> | <ApplicantType> |
      | Asset Cost | Asset Details | Consumer Vehicle | Lien Priority       | valid    | with digits                                            | not displayed           | 37                     | MAL         | <ApplicationStage> | <ApplicantType> |
      | Asset Cost | Asset Details | Consumer Vehicle | Lien Priority       | valid    | with max length 2 digits                               | not displayed           | 38                     | MAL         | <ApplicationStage> | <ApplicantType> |
      | Asset Cost | Asset Details | Consumer Vehicle | Comments            | valid    | with character                                         | not displayed           | 39                     | MAL         | <ApplicationStage> | <ApplicantType> |
      | Asset Cost | Asset Details | Consumer Vehicle | Comments            | valid    | with special character                                 | not displayed           | 40                     | MAL         | <ApplicationStage> | <ApplicantType> |
      | Asset Cost | Asset Details | Consumer Vehicle | Comments            | valid    | with digits                                            | not displayed           | 41                     | MAL         | <ApplicationStage> | <ApplicantType> |
      | Asset Cost | Asset Details | Consumer Vehicle | Comments            | valid    | with max length 4000 characters                        | not displayed           | 42                     | MAL         | <ApplicationStage> | <ApplicantType> |

#${ApplicationStage:["Lead Details","Login Acceptance",""DDE","Recommendation","Credit Approval","Reconsideration","Disbursal Initiation"]}
 #FeatureID:ACAUTOCAS-5079
  @Deferred
  Scenario Outline:Enter <Validity> <Field_Name> <Validity_Reason> in Lien Details Accordion for primary collateral <CollSubType> of commercial vehicle application at <ApplicationStage>
    And "<var>" is filled in "<var1>" for "<CollSubType>"
    And user selected the "<ProductType>" application at "<ApplicationStage>"
    And user navigates to "<var1>"
    And user opened lien details tab
    When user open Lien Details accordion
    And user reads data from excelFile "lien_details.xlsx" under sheet "lien_details" and row <row_num>
    And user selects internal external
    And user enters "<Field_Name>"
    Then error message is "<displayed_not_displayed>"
    Examples:
      | var        | var1          | CollSubType        | Field_Name          | Validity | Validity_Reason                                        | displayed_not_displayed | row_num | ProductType | ApplicationStage   |
      | Asset Cost | Asset Details | Commercial Vehicle | Loan Account Number | valid    |                                                        | not displayed           | 0       | CV          | <ApplicationStage> |
      | Asset Cost | Asset Details | Commercial Vehicle | Loan Account Number | valid    | with maximum length                                    | not displayed           | 1       | CV          | <ApplicationStage> |
      | Asset Cost | Asset Details | Commercial Vehicle | Lien Percentage     | valid    | with value between 0 to 100                            | not displayed           | 2       | CV          | <ApplicationStage> |
      | Asset Cost | Asset Details | Commercial Vehicle | Lien Percentage     | valid    | with value between 0 to 100 upto 2 decimal places      | not displayed           | 3       | CV          | <ApplicationStage> |
      | Asset Cost | Asset Details | Commercial Vehicle | Lien Percentage     | valid    | equal to 100                                           | not displayed           | 4       | CV          | <ApplicationStage> |
      | Asset Cost | Asset Details | Commercial Vehicle | Lien Percentage     | invalid  | with negative values                                   | displayed               | 5       | CV          | <ApplicationStage> |
      | Asset Cost | Asset Details | Commercial Vehicle | Lien Percentage     | invalid  | with value more  than 100                              | displayed               | 6       | CV          | <ApplicationStage> |
      | Asset Cost | Asset Details | Commercial Vehicle | Lien Percentage     | invalid  | with value between 0 to 100 more than 2 decimal places | displayed               | 7       | CV          | <ApplicationStage> |
      | Asset Cost | Asset Details | Commercial Vehicle | Lien Percentage     | invalid  | equal to 0                                             | displayed               | 8       | CV          | <ApplicationStage> |
      | Asset Cost | Asset Details | Commercial Vehicle | Lien Amount         | invalid  | with more than 18 digits                               | displayed               | 9       | CV          | <ApplicationStage> |
      | Asset Cost | Asset Details | Commercial Vehicle | Lien Amount         | valid    | less than realisable value                             | not displayed           | 10      | CV          | <ApplicationStage> |
      | Asset Cost | Asset Details | Commercial Vehicle | Lien Amount         | valid    | equal to realisable value                              | not displayed           | 11      | CV          | <ApplicationStage> |
      | Asset Cost | Asset Details | Commercial Vehicle | Lien Amount         | invalid  | with character                                         | displayed               | 12      | CV          | <ApplicationStage> |
      | Asset Cost | Asset Details | Commercial Vehicle | Lien Amount         | invalid  | with special character                                 | displayed               | 13      | CV          | <ApplicationStage> |
      | Asset Cost | Asset Details | Commercial Vehicle | Lien Amount         | invalid  | with negative values                                   | displayed               | 14      | CV          | <ApplicationStage> |
      | Asset Cost | Asset Details | Commercial Vehicle | Lien Amount         | invalid  | with space                                             | displayed               | 15      | CV          | <ApplicationStage> |
      | Asset Cost | Asset Details | Commercial Vehicle | Lien Amount         | invalid  | more than realisable value                             | displayed               | 16      | CV          | <ApplicationStage> |
      | Asset Cost | Asset Details | Commercial Vehicle | margin Percentage   | valid    | with value between 0 to 100                            | not displayed           | 17      | CV          | <ApplicationStage> |
      | Asset Cost | Asset Details | Commercial Vehicle | margin Percentage   | valid    | with value between 0 to 100 upto 2 decimal places      | not displayed           | 18      | CV          | <ApplicationStage> |
      | Asset Cost | Asset Details | Commercial Vehicle | margin Percentage   | valid    | equal to 100                                           | not displayed           | 19      | CV          | <ApplicationStage> |
      | Asset Cost | Asset Details | Commercial Vehicle | margin Percentage   | invalid  | with negative values                                   | displayed               | 20      | CV          | <ApplicationStage> |
      | Asset Cost | Asset Details | Commercial Vehicle | margin Percentage   | invalid  | with value more  than 100                              | displayed               | 21      | CV          | <ApplicationStage> |
      | Asset Cost | Asset Details | Commercial Vehicle | margin Percentage   | invalid  | with value between 0 to 100 more than 2 decimal places | displayed               | 22      | CV          | <ApplicationStage> |
      | Asset Cost | Asset Details | Commercial Vehicle | margin Percentage   | invalid  | equal to 0                                             | displayed               | 23      | CV          | <ApplicationStage> |
      | Asset Cost | Asset Details | Commercial Vehicle | Security Amount     | invalid  | with more than 18 digits                               | displayed               | 24      | CV          | <ApplicationStage> |
      | Asset Cost | Asset Details | Commercial Vehicle | Security Amount     | valid    | less than lien amount                                  | not displayed           | 25      | CV          | <ApplicationStage> |
      | Asset Cost | Asset Details | Commercial Vehicle | Security Amount     | valid    | equal to lien amount                                   | not displayed           | 26      | CV          | <ApplicationStage> |
      | Asset Cost | Asset Details | Commercial Vehicle | Security Amount     | invalid  | more than lien amount                                  | not displayed           | 27      | CV          | <ApplicationStage> |
      | Asset Cost | Asset Details | Commercial Vehicle | Security Amount     | invalid  | with character                                         | displayed               | 28      | CV          | <ApplicationStage> |
      | Asset Cost | Asset Details | Commercial Vehicle | Security Amount     | invalid  | with special character                                 | displayed               | 29      | CV          | <ApplicationStage> |
      | Asset Cost | Asset Details | Commercial Vehicle | Security Amount     | invalid  | with negative values                                   | displayed               | 30      | CV          | <ApplicationStage> |
      | Asset Cost | Asset Details | Commercial Vehicle | Security Amount     | invalid  | with space                                             | displayed               | 31      | CV          | <ApplicationStage> |
      | Asset Cost | Asset Details | Commercial Vehicle | lien Expiry Date    | invalid  | with invalid date format                               | displayed               | 32      | CV          | <ApplicationStage> |
      | Asset Cost | Asset Details | Commercial Vehicle | lien Expiry Date    | invalid  | less than lien marking date                            | displayed               | 33      | CV          | <ApplicationStage> |
      | Asset Cost | Asset Details | Commercial Vehicle | lien Expiry Date    | valid    | equal to lien marking date                             | not displayed           | 34      | CV          | <ApplicationStage> |
      | Asset Cost | Asset Details | Commercial Vehicle | Lien Priority       | invalid  | with character                                         | displayed               | 35      | CV          | <ApplicationStage> |
      | Asset Cost | Asset Details | Commercial Vehicle | Lien Priority       | invalid  | with special character                                 | displayed               | 36      | CV          | <ApplicationStage> |
      | Asset Cost | Asset Details | Commercial Vehicle | Lien Priority       | valid    | with digits                                            | not displayed           | 37      | CV          | <ApplicationStage> |
      | Asset Cost | Asset Details | Commercial Vehicle | Lien Priority       | valid    | with max length 2 digits                               | not displayed           | 38      | CV          | <ApplicationStage> |
      | Asset Cost | Asset Details | Commercial Vehicle | Comments            | valid    | with character                                         | not displayed           | 39      | CV          | <ApplicationStage> |
      | Asset Cost | Asset Details | Commercial Vehicle | Comments            | valid    | with special character                                 | not displayed           | 40      | CV          | <ApplicationStage> |
      | Asset Cost | Asset Details | Commercial Vehicle | Comments            | valid    | with digits                                            | not displayed           | 41      | CV          | <ApplicationStage> |
      | Asset Cost | Asset Details | Commercial Vehicle | Comments            | valid    | with max length 4000 characters                        | not displayed           | 42      | CV          | <ApplicationStage> |

  #${ApplicationStage:["Lead Details","Login Acceptance""DDE","Recommendation","Credit Approval","Reconsideration","Disbursal Initiation"]}
  #${CollSubType:["Ready Property","Builder Property Under Construction","Plot Plus Self Construction","Construction On Land","Purchase a Plot"]}
 # ${ApplicantType:["indiv","nonindiv"]}
  #FeatureID:ACAUTOCAS-5079
  @ImplementedBy-richa.singh
  
  @Release
  Scenario Outline:Mandatory field validation with data <row_num> in lien details accordion for primary collateral <CollSubType> of home loan application at <ApplicationStage>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user is on "<Page>" page of "<ApplicationStage>"
    And user delink the collateral of "<Page>"
    And user reads property details excel from datatable on the basis of "<CollSubType>" type
      | property_details.xlsx | home | 136 | Ready Property                      |
      | property_details.xlsx | home | 138 | Builder Property Under Construction |
      | property_details.xlsx | home | 135 | Plot Plus Self Construction         |
      | property_details.xlsx | home | 137 | Construction On Land                |
      | property_details.xlsx | home | 139 | Purchase a Plot                     |
    And "<Field>" is filled in "<Page>" for "<CollSubType>"
    And user reads data from the excel file "property_details.xlsx" under sheet "other_details" and row 26
    And user fills other details of "<Page>"
    And user saves the details of "<Page>"
    And user opened lien details tab of "<Page>"
    And user open Lien Details accordion of "<Page>"
    And user reads data from the excel file "<LienWB>" under sheet "<Lien_lienDetails>" and row <Lien_lienDetails_rowNo>
    When user fills fields of lien details accordion
    And user selects done button
    Then error message is "<displayed_not_displayed>" in lien details page
    Examples:
      | Field              | Page             | CollSubType   | ProductType | ApplicationStage   | displayed_not_displayed | ApplicantType   | LienWB            | Lien_lienDetails | Lien_lienDetails_rowNo |
      | Accepted Valuation | Property Details | <CollSubType> | HL          | <ApplicationStage> | displayed               | <ApplicantType> | lien_details.xlsx | lien_details     | 43                     |
      | Accepted Valuation | Property Details | <CollSubType> | HL          | <ApplicationStage> | displayed               | <ApplicantType> | lien_details.xlsx | lien_details     | 44                     |
      | Accepted Valuation | Property Details | <CollSubType> | HL          | <ApplicationStage> | displayed               | <ApplicantType> | lien_details.xlsx | lien_details     | 45                     |
      | Accepted Valuation | Property Details | <CollSubType> | HL          | <ApplicationStage> | displayed               | <ApplicantType> | lien_details.xlsx | lien_details     | 46                     |
      | Accepted Valuation | Property Details | <CollSubType> | HL          | <ApplicationStage> | displayed               | <ApplicantType> | lien_details.xlsx | lien_details     | 47                     |
      | Accepted Valuation | Property Details | <CollSubType> | HL          | <ApplicationStage> | displayed               | <ApplicantType> | lien_details.xlsx | lien_details     | 48                     |
      | Accepted Valuation | Property Details | <CollSubType> | HL          | <ApplicationStage> | not displayed           | <ApplicantType> | lien_details.xlsx | lien_details     | 49                     |
      | Accepted Valuation | Property Details | <CollSubType> | HL          | <ApplicationStage> | not displayed           | <ApplicantType> | lien_details.xlsx | lien_details     | 50                     |
      | Accepted Valuation | Property Details | <CollSubType> | HL          | <ApplicationStage> | not displayed           | <ApplicantType> | lien_details.xlsx | lien_details     | 51                     |
      | Accepted Valuation | Property Details | <CollSubType> | HL          | <ApplicationStage> | displayed               | <ApplicantType> | lien_details.xlsx | lien_details     | 52                     |
      | Accepted Valuation | Property Details | <CollSubType> | HL          | <ApplicationStage> | displayed               | <ApplicantType> | lien_details.xlsx | lien_details     | 53                     |
      | Accepted Valuation | Property Details | <CollSubType> | HL          | <ApplicationStage> | displayed               | <ApplicantType> | lien_details.xlsx | lien_details     | 54                     |

 #${ApplicationStage:["Lead Details","Login Acceptance""DDE","Recommendation","Credit Approval","Reconsideration","Disbursal Initiation"]}
 #FeatureID:ACAUTOCAS-5079
 # ${ApplicantType:["indiv","nonindiv"]}
  @ImplementedBy-richa.singh
  
  @Release
  Scenario Outline:Mandatory field validation with data <row_num> in lien details accordion for primary collateral <CollSubType> of consumer vehicle application at <ApplicationStage>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user is on "<Page>" page of "<ApplicationStage>"
    And user opened lien details tab of "<Page>"
    And user open Lien Details accordion of "<Page>"
    And user reads data from the excel file "<LienWB>" under sheet "<Lien_lienDetails>" and row <Lien_lienDetails_rowNo>
    When user fills fields of lien details accordion
    And user selects done button
    Then error message is "<displayed_not_displayed>" in lien details page
    Examples:
      | Field      | Page          | CollSubType      | ProductType | ApplicationStage   | row_num | displayed_not_displayed | ApplicantType   | LienWB            | Lien_lienDetails | Lien_lienDetails_rowNo |
      | Asset Cost | Asset Details | Consumer Vehicle | MAL         | <ApplicationStage> | 43      | displayed               | <ApplicantType> | lien_details.xlsx | lien_details     | 43                     |
      | Asset Cost | Asset Details | Consumer Vehicle | MAL         | <ApplicationStage> | 44      | displayed               | <ApplicantType> | lien_details.xlsx | lien_details     | 44                     |
      | Asset Cost | Asset Details | Consumer Vehicle | MAL         | <ApplicationStage> | 45      | displayed               | <ApplicantType> | lien_details.xlsx | lien_details     | 45                     |
      | Asset Cost | Asset Details | Consumer Vehicle | MAL         | <ApplicationStage> | 46      | displayed               | <ApplicantType> | lien_details.xlsx | lien_details     | 46                     |
      | Asset Cost | Asset Details | Consumer Vehicle | MAL         | <ApplicationStage> | 47      | displayed               | <ApplicantType> | lien_details.xlsx | lien_details     | 47                     |
      | Asset Cost | Asset Details | Consumer Vehicle | MAL         | <ApplicationStage> | 48      | displayed               | <ApplicantType> | lien_details.xlsx | lien_details     | 48                     |
      | Asset Cost | Asset Details | Consumer Vehicle | MAL         | <ApplicationStage> | 49      | not displayed           | <ApplicantType> | lien_details.xlsx | lien_details     | 49                     |
      | Asset Cost | Asset Details | Consumer Vehicle | MAL         | <ApplicationStage> | 50      | not displayed           | <ApplicantType> | lien_details.xlsx | lien_details     | 50                     |
      | Asset Cost | Asset Details | Consumer Vehicle | MAL         | <ApplicationStage> | 51      | not displayed           | <ApplicantType> | lien_details.xlsx | lien_details     | 51                     |
      | Asset Cost | Asset Details | Consumer Vehicle | MAL         | <ApplicationStage> | 52      | displayed               | <ApplicantType> | lien_details.xlsx | lien_details     | 52                     |
      | Asset Cost | Asset Details | Consumer Vehicle | MAL         | <ApplicationStage> | 53      | displayed               | <ApplicantType> | lien_details.xlsx | lien_details     | 53                     |
      | Asset Cost | Asset Details | Consumer Vehicle | MAL         | <ApplicationStage> | 54      | displayed               | <ApplicantType> | lien_details.xlsx | lien_details     | 54                     |

 #${ApplicationStage:["Lead Details","Login Acceptance""DDE","Recommendation","Credit Approval","Reconsideration","Disbursal Initiation"]}
 #FeatureID:ACAUTOCAS-5079
  @Deferred
  Scenario Outline:Mandatory field validation with data <row_num> in lien details accordion for primary collateral <CollSubType> of commercial vehicle application at <ApplicationStage>
    And "<var>" is filled in "<var1>" for "<CollSubType>"
    And user selected the "<ProductType>" application at "<ApplicationStage>"
    And user navigates to "<var1>"
    And user opened lien details tab
    And user reads data from excelFile "lien_details.xlsx" under sheet "lien_details" and row <row_num>
    When user fills lien details accordion
    And user selects done button
    Then error message is "<displayed_not_displayed>"
    Examples:
      | var        | var1          | CollSubType        | ProductType | ApplicationStage   | row_num | displayed_not_displayed |
      | Asset Cost | Asset Details | Commercial Vehicle | CV          | <ApplicationStage> | 43      | displayed               |
      | Asset Cost | Asset Details | Commercial Vehicle | CV          | <ApplicationStage> | 44      | displayed               |
      | Asset Cost | Asset Details | Commercial Vehicle | CV          | <ApplicationStage> | 45      | displayed               |
      | Asset Cost | Asset Details | Commercial Vehicle | CV          | <ApplicationStage> | 46      | displayed               |
      | Asset Cost | Asset Details | Commercial Vehicle | CV          | <ApplicationStage> | 47      | displayed               |
      | Asset Cost | Asset Details | Commercial Vehicle | CV          | <ApplicationStage> | 48      | displayed               |
      | Asset Cost | Asset Details | Commercial Vehicle | CV          | <ApplicationStage> | 49      | not displayed           |
      | Asset Cost | Asset Details | Commercial Vehicle | CV          | <ApplicationStage> | 50      | not displayed           |
      | Asset Cost | Asset Details | Commercial Vehicle | CV          | <ApplicationStage> | 51      | not displayed           |
      | Asset Cost | Asset Details | Commercial Vehicle | CV          | <ApplicationStage> | 52      | displayed               |
      | Asset Cost | Asset Details | Commercial Vehicle | CV          | <ApplicationStage> | 53      | displayed               |
      | Asset Cost | Asset Details | Commercial Vehicle | CV          | <ApplicationStage> | 54      | displayed               |

  #${ApplicationStage:["Lead Details","Login Acceptance",""DDE","Recommendation","Credit Approval","Reconsideration","Disbursal Initiation"]}
  #${CollSubType:["Ready Property","Builder Property Under Construction","Plot Plus Self Construction","Construction On Land","Purchase a Plot"]}
  # ${ApplicantType:["indiv","nonindiv"]}
  #FeatureID:ACAUTOCAS-5079
  @ImplementedBy-richa.singh
  
  @Release
  Scenario Outline:Validate values are present in <Dropdown> dropdown in lien details accordion for primary collateral <CollSubType> of home loan application at <ApplicationStage>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user is on "<Page>" page of "<ApplicationStage>"
    And user delink the collateral of "<Page>"
    And user reads property details excel from datatable on the basis of "Plot Plus Self Construction" type
      | property_details.xlsx | home | 136 | Ready Property                      |
      | property_details.xlsx | home | 138 | Builder Property Under Construction |
      | property_details.xlsx | home | 135 | Plot Plus Self Construction         |
      | property_details.xlsx | home | 137 | Construction On Land                |
      | property_details.xlsx | home | 139 | Purchase a Plot                     |
    And "<Field>" is filled in "<Page>" for "Plot Plus Self Construction"
    And user reads data from the excel file "property_details.xlsx" under sheet "other_details" and row 26
    And user fills other details of "<Page>"
    And user saves the details of "<Page>"
    And user opened lien details tab of "<Page>"
    When user open Lien Details accordion of "<Page>"
    And user reads data from the excel file "lien_details.xlsx" under sheet "lien_details" and row 62
    Then values are present in "<Dropdown>" dropdown of lien details
    Examples:
      | Field              | Page             | Dropdown             | CollSubType   | ProductType | ApplicationStage   | ApplicantType   |
      | Accepted Valuation | Property Details | Internal External    | <CollSubType> | HL          | <ApplicationStage> | <ApplicantType> |
      | Accepted Valuation | Property Details | Source System        | <CollSubType> | HL          | <ApplicationStage> | <ApplicantType> |
      | Accepted Valuation | Property Details | Host System          | <CollSubType> | HL          | <ApplicationStage> | <ApplicantType> |
      | Accepted Valuation | Property Details | Nature of Collateral | <CollSubType> | HL          | <ApplicationStage> | <ApplicantType> |
      | Accepted Valuation | Property Details | Charge Type          | <CollSubType> | HL          | <ApplicationStage> | <ApplicantType> |

 #${ApplicationStage:["Lead Details","Login Acceptance",""DDE","Recommendation","Credit Approval","Reconsideration","Disbursal Initiation"]}
  # ${ApplicantType:["indiv","nonindiv"]}
  #FeatureID:ACAUTOCAS-5079
  @ImplementedBy-richa.singh
  
  @Release
  Scenario Outline:Validate values are present in <Dropdown> dropdown in lien details accordion for primary collateral <CollSubType> of <ProductType> application at <ApplicationStage>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user is on "<Page>" page of "<ApplicationStage>"
    And user opened lien details tab of "<Page>"
    When user open Lien Details accordion of "<Page>"
    And user reads data from the excel file "lien_details.xlsx" under sheet "lien_details" and row 62
    Then values are present in "<Dropdown>" dropdown of lien details
    Examples:
      | Field      | Page          | Dropdown             | CollSubType      | ProductType | ApplicationStage   | ApplicantType   |
      | Asset Cost | Asset Details | Internal External    | Consumer Vehicle | MAL         | <ApplicationStage> | <ApplicantType> |
      | Asset Cost | Asset Details | Source System        | Consumer Vehicle | MAL         | <ApplicationStage> | <ApplicantType> |
      | Asset Cost | Asset Details | Host System          | Consumer Vehicle | MAL         | <ApplicationStage> | <ApplicantType> |
      | Asset Cost | Asset Details | Nature of Collateral | Consumer Vehicle | MAL         | <ApplicationStage> | <ApplicantType> |
      | Asset Cost | Asset Details | Charge Type          | Consumer Vehicle | MAL         | <ApplicationStage> | <ApplicantType> |
    @Deferred
    Examples:
      | Field      | Page          | Dropdown             | CollSubType        | ProductType | ApplicationStage   | ApplicantType   |
      | Asset Cost | Asset Details | Internal External    | Commercial Vehicle | CV          | <ApplicationStage> | <ApplicantType> |
      | Asset Cost | Asset Details | Source System        | Commercial Vehicle | CV          | <ApplicationStage> | <ApplicantType> |
      | Asset Cost | Asset Details | Host System          | Commercial Vehicle | CV          | <ApplicationStage> | <ApplicantType> |
      | Asset Cost | Asset Details | Nature Of Collateral | Commercial Vehicle | CV          | <ApplicationStage> | <ApplicantType> |
      | Asset Cost | Asset Details | Charge Type          | Commercial Vehicle | CV          | <ApplicationStage> | <ApplicantType> |

#    Squash:01_CAS-47861
  #${ApplicationStage:["Lead Details","Login Acceptance""DDE","Recommendation","Credit Approval","Reconsideration","Disbursal Initiation"]}
  #${CollSubType:["Ready Property","Builder Property Under Construction","Plot Plus Self Construction","Construction On Land",Purchase a Plot]}
  # ${ApplicantType:["indiv","nonindiv"]}
 #FeatureID:ACAUTOCAS-5079
  @ImplementedBy-richa.singh
  
  @Release
  Scenario Outline:Validate on selecting bank type internal under lien details accordion <field_name> is pre populated for <CollSubType> of <ProductType> at <ApplicationStage>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user is on "<Page>" page of "<ApplicationStage>"
    And user delink the collateral of "<Page>"
    And user reads property details excel from datatable on the basis of "<CollSubType>" type
      | property_details.xlsx | home | 136 | Ready Property                      |
      | property_details.xlsx | home | 138 | Builder Property Under Construction |
      | property_details.xlsx | home | 135 | Plot Plus Self Construction         |
      | property_details.xlsx | home | 137 | Construction On Land                |
      | property_details.xlsx | home | 139 | Purchase a Plot                     |
    And "<Field>" is filled in "<Page>" for "<CollSubType>"
    And user reads data from the excel file "property_details.xlsx" under sheet "other_details" and row 26
    And user fills other details of "<Page>"
    And user saves the details of "<Page>"
    And user opened lien details tab of "<Page>"
    When user open Lien Details accordion of "<Page>"
    Then "<field_name>" has pre populated value in lien details
    Examples:
      | Field              | Page             | field_name        | CollSubType   | ProductType | ApplicationStage   | ApplicantType   |
      | Accepted Valuation | Property Details | Institution Name  | <CollSubType> | HL          | <ApplicationStage> | <ApplicantType> |
      | Accepted Valuation | Property Details | Customer Name     | <CollSubType> | HL          | <ApplicationStage> | <ApplicantType> |
      | Accepted Valuation | Property Details | Application ID    | <CollSubType> | HL          | <ApplicationStage> | <ApplicantType> |
      | Accepted Valuation | Property Details | Total Loan Amount | <CollSubType> | HL          | <ApplicationStage> | <ApplicantType> |
      | Accepted Valuation | Property Details | Lien Marking Date | <CollSubType> | HL          | <ApplicationStage> | <ApplicantType> |

#    Squash:01_CAS-47861
  #${ApplicationStage:["Lead Details","Login Acceptance""DDE","Recommendation","Credit Approval","Reconsideration","Disbursal Initiation"]}
 #FeatureID:ACAUTOCAS-5079
   # ${ApplicantType:["indiv","nonindiv"]}
  @ImplementedBy-richa.singh
  
  @Release
  Scenario Outline:Validate on selecting bank type internal under lien details accordion <field_name> is pre populated for primary collateral <CollSubType> of <ProductType> at <ApplicationStage>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user is on "<Page>" page of "<ApplicationStage>"
    And user opened lien details tab of "<Page>"
    When user open Lien Details accordion of "<Page>"
    Then "<field_name>" has pre populated value in lien details
    Examples:
      | Field      | Page          | field_name        | CollSubType      | ProductType | ApplicationStage   | ApplicantType   |
      | Asset Cost | Asset Details | Institution Name  | Consumer Vehicle | MAL         | <ApplicationStage> | <ApplicantType> |
      | Asset Cost | Asset Details | Customer Name     | Consumer Vehicle | MAL         | <ApplicationStage> | <ApplicantType> |
      | Asset Cost | Asset Details | Application ID    | Consumer Vehicle | MAL         | <ApplicationStage> | <ApplicantType> |
      | Asset Cost | Asset Details | Total Loan Amount | Consumer Vehicle | MAL         | <ApplicationStage> | <ApplicantType> |
      | Asset Cost | Asset Details | Lien Marking Date | Consumer Vehicle | MAL         | <ApplicationStage> | <ApplicantType> |
    @Deferred
    Examples:
      | Field      | Page          | field_name        | CollSubType        | ProductType | ApplicationStage   | ApplicantType   |
      | Asset Cost | Asset Details | Institution Name  | Commercial Vehicle | CV          | <ApplicationStage> | <ApplicantType> |
      | Asset Cost | Asset Details | Customer Name     | Commercial Vehicle | CV          | <ApplicationStage> | <ApplicantType> |
      | Asset Cost | Asset Details | Application ID    | Commercial Vehicle | CV          | <ApplicationStage> | <ApplicantType> |
      | Asset Cost | Asset Details | Total Loan Amount | Commercial Vehicle | CV          | <ApplicationStage> | <ApplicantType> |
      | Asset Cost | Asset Details | Lien Marking Date | Commercial Vehicle | CV          | <ApplicationStage> | <ApplicantType> |

  #${ApplicationStage:["Lead Details","Login Acceptance""DDE","Recommendation","Credit Approval","Reconsideration","Disbursal Initiation"]}
  #${CollSubType:["Ready Property","Builder Property Under Construction","Plot Plus Self Construction","Construction On Land","Purchase a Plot"]}
 # ${ApplicantType:["indiv","nonindiv"]}
  @ImplementedBy-richa.singh
  
  @Release
  #FeatureID:ACAUTOCAS-5079
  Scenario Outline:Validate on selecting bank type external under lien details accordion <field_name> become editable for primary collateral <CollSubType> of home loan at <ApplicationStage>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user is on "<Page>" page of "<ApplicationStage>"
    And user delink the collateral of "<Page>"
    And user reads property details excel from datatable on the basis of "<CollSubType>" type
      | property_details.xlsx | home | 136 | Ready Property                      |
      | property_details.xlsx | home | 138 | Builder Property Under Construction |
      | property_details.xlsx | home | 135 | Plot Plus Self Construction         |
      | property_details.xlsx | home | 137 | Construction On Land                |
      | property_details.xlsx | home | 139 | Purchase a Plot                     |
    And "<Field>" is filled in "<Page>" for "<CollSubType>"
    And user reads data from the excel file "property_details.xlsx" under sheet "other_details" and row 26
    And user fills other details of "<Page>"
    And user saves the details of "<Page>"
    And user opened lien details tab of "<Page>"
    When user open Lien Details accordion of "<Page>"
    And user reads data from the excel file "lien_details.xlsx" under sheet "lien_details" and row 0
    And user selects internal external
    Then "<field_name>" is editable in lien details
    Examples:
      | Field               | Page             | field_name          | CollSubType   | ProductType | ApplicationStage   | ApplicantType   |
      | Accepted Valuation` | Property Details | Institution Name    | <CollSubType> | HL          | <ApplicationStage> | <ApplicantType> |
      | Accepted Valuation  | Property Details | Product Type        | <CollSubType> | HL          | <ApplicationStage> | <ApplicantType> |
      | Accepted Valuation  | Property Details | Loan Account Number | <CollSubType> | HL          | <ApplicationStage> | <ApplicantType> |

#${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration","Disbursal Initiation"]}
  # ${ApplicantType:["indiv","nonindiv"]}
  @ImplementedBy-richa.singh
  
  @Release
  #FeatureID:ACAUTOCAS-5079
  Scenario Outline:Validate on selecting bank type external under lien details accordion <field_name> become editable for primary collateral <CollSubType> of <ProductType> at <ApplicationStage>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user is on "<Page>" page of "<ApplicationStage>"
    And user opened lien details tab of "<Page>"
    When user open Lien Details accordion of "<Page>"
    And user reads data from the excel file "lien_details.xlsx" under sheet "lien_details" and row 0
    And user selects internal external
    Then "<field_name>" is editable in lien details
    Examples:
      | Field      | Page          | field_name          | CollSubType      | ProductType | ApplicationStage   | ApplicantType   |
      | Asset Cost | Asset Details | Institution Name    | Consumer Vehicle | MAL         | <ApplicationStage> | <ApplicantType> |
      | Asset Cost | Asset Details | Product Type        | Consumer Vehicle | MAL         | <ApplicationStage> | <ApplicantType> |
      | Asset Cost | Asset Details | Loan Account Number | Consumer Vehicle | MAL         | <ApplicationStage> | <ApplicantType> |
    @Deferred
    Examples:
      | Field      | Page          | field_name          | CollSubType        | ProductType | ApplicationStage   | ApplicantType   |
      | Asset Cost | Asset Details | Institution Name    | Commercial Vehicle | CV          | <ApplicationStage> | <ApplicantType> |
      | Asset Cost | Asset Details | Product Type        | Commercial Vehicle | CV          | <ApplicationStage> | <ApplicantType> |
      | Asset Cost | Asset Details | Loan Account Number | Commercial Vehicle | CV          | <ApplicationStage> | <ApplicantType> |

#${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration","Disbursal Initiation"]}
  #${CollSubType:["Ready Property","Builder Property Under Construction","Plot Plus Self Construction","Construction On Land","Purchase a Plot"]}
  # ${ApplicantType:["indiv","nonindiv"]}
  #FeatureID:ACAUTOCAS-5079
  @ImplementedBy-richa.singh
  
  @Release
  Scenario Outline:Validate on selecting bank type external under lien details accordion refresh button is not displayed for primary collateral <CollSubType> of home loan at <ApplicationStage>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user is on "<Page>" page of "<ApplicationStage>"
    And user delink the collateral of "<Page>"
    And user reads property details excel from datatable on the basis of "<CollSubType>" type
      | property_details.xlsx | home | 136 | Ready Property                      |
      | property_details.xlsx | home | 138 | Builder Property Under Construction |
      | property_details.xlsx | home | 135 | Plot Plus Self Construction         |
      | property_details.xlsx | home | 137 | Construction On Land                |
      | property_details.xlsx | home | 139 | Purchase a Plot                     |
    And "<Field>" is filled in "<Page>" for "<CollSubType>"
    And user reads data from the excel file "property_details.xlsx" under sheet "other_details" and row 26
    And user fills other details of "<Page>"
    And user saves the details of "<Page>"
    And user opened lien details tab of "<Page>"
    And user open Lien Details accordion of "<Page>"
    And user reads data from the excel file "lien_details.xlsx" under sheet "lien_details" and row 0
    When user selects internal external
    Then refresh button is not displayed
    Examples:
      | Field              | Page             | CollSubType   | ProductType | ApplicationStage   | ApplicantType   |
      | Accepted Valuation | Property Details | <CollSubType> | HL          | <ApplicationStage> | <ApplicantType> |

#${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration","Disbursal Initiation"]}
  # ${ApplicantType:["indiv","nonindiv"]}
  @ImplementedBy-richa.singh
  
  @Release
  #FeatureID:ACAUTOCAS-5079
  Scenario Outline:Validate on selecting bank type external under lien details accordion refresh button is not displayed for primary collateral <CollSubType> of <ProductType> at <ApplicationStage>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user is on "<Page>" page of "<ApplicationStage>"
    And user opened lien details tab of "<Page>"
    And user open Lien Details accordion of "<Page>"
    And user reads data from the excel file "lien_details.xlsx" under sheet "lien_details" and row 0
    When user selects internal external
    Then refresh button is not displayed
    Examples:
      | Field      | Page          | CollSubType      | ProductType | ApplicationStage   | ApplicantType   |
      | Asset Cost | Asset Details | Consumer Vehicle | MAL         | <ApplicationStage> | <ApplicantType> |
    @Deferred
    Examples:
      | Field      | Page          | CollSubType        | ProductType | ApplicationStage   | ApplicantType   |
      | Asset Cost | Asset Details | Commercial Vehicle | CV          | <ApplicationStage> | <ApplicantType> |

#${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration","Disbursal Initiation"]}
  #${CollSubType:["Ready Property","Builder Property Under Construction","Plot Plus Self Construction","Construction On Land","Purchase a Plot"]}
 # ${ApplicantType:["indiv","nonindiv"]}
  #FeatureID:ACAUTOCAS-5079
  @ImplementedBy-richa.singh
  
  @Release
  Scenario Outline:Validate cancel button behaviour in lien details accordion for primary collateral <CollSubType> of home loan at <ApplicationStage>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user is on "<Page>" page of "<ApplicationStage>"
    And user delink the collateral of "<Page>"
    And user reads property details excel from datatable on the basis of "<CollSubType>" type
      | property_details.xlsx | home | 136 | Ready Property                      |
      | property_details.xlsx | home | 138 | Builder Property Under Construction |
      | property_details.xlsx | home | 135 | Plot Plus Self Construction         |
      | property_details.xlsx | home | 137 | Construction On Land                |
      | property_details.xlsx | home | 139 | Purchase a Plot                     |
    And "<Field>" is filled in "<Page>" for "<CollSubType>"
    And user reads data from the excel file "property_details.xlsx" under sheet "other_details" and row 26
    And user fills other details of "<Page>"
    And user saves the details of "<Page>"
    And user opened lien details tab of "<Page>"
    And user open Lien Details accordion of "<Page>"
    And user reads data from the excel file "lien_details.xlsx" under sheet "lien_details" and row 55
    When user fills lien details accordion
    And user selects cancel button
    Then newly added data is removed in lien details
    Examples:
      | Field              | Page             | CollSubType   | ProductType | ApplicationStage   | ApplicantType   |
      | Accepted Valuation | Property Details | <CollSubType> | HL          | <ApplicationStage> | <ApplicantType> |

 #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration","Disbursal Initiation"]}
 # ${ApplicantType:["indiv","nonindiv"]}
 #FeatureID:ACAUTOCAS-5079
  @ImplementedBy-richa.singh
  
  @Release
  Scenario Outline:Validate cancel button behaviour in lien details accordion for primary collateral <CollSubType> of <ProductType> at <ApplicationStage>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user is on "<Page>" page of "<ApplicationStage>"
    And user opened lien details tab of "<Page>"
    And user open Lien Details accordion of "<Page>"
    And user reads data from the excel file "lien_details.xlsx" under sheet "lien_details" and row 55
    When user fills lien details accordion
    And user selects cancel button
    Then newly added data is removed in lien details
    Examples:
      | Field      | Page          | CollSubType      | ProductType | ApplicationStage   | ApplicantType   |
      | Asset Cost | Asset Details | Consumer Vehicle | MAL         | <ApplicationStage> | <ApplicantType> |
    @Deferred
    Examples:
      | Field      | Page          | CollSubType        | ProductType | ApplicationStage   | ApplicantType   |
      | Asset Cost | Asset Details | Commercial Vehicle | CV          | <ApplicationStage> | <ApplicantType> |

#${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration","Disbursal Initiation"]}
  #${CollSubType:["Ready Property","Builder Property Under Construction","Plot Plus Self Construction","Construction On Land","Purchase a Plot"]}
 #FeatureID:ACAUTOCAS-5079
  Scenario Outline:Validate cancel button warning pop up in lien details accordion for primary collateral <CollSubType> of home loan at <ApplicationStage>
    And "<var>" is filled in "<var1>" for "<CollSubType>"
    And user selected the "<ProductType>" application at "<ApplicationStage>"
    And user navigates to "<var1>"
    And user opened lien details tab
    And user opens lien details accordion
    And user reads data from excelFile "lien_details.xlsx" under sheet "lien_details" and row 55
    And user fills lien details
    And user selects cancel button
    Then warning pop up is displayed
    Examples:
      | var                | var1             | CollSubType   | ProductType | ApplicationStage   |
      | Accepted Valuation | Property Details | <CollSubType> | HL          | <ApplicationStage> |

#${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration","Disbursal Initiation"]}
 #FeatureID:ACAUTOCAS-5079
  Scenario Outline:Validate cancel button warning pop up in lien details accordion for primary collateral <CollSubType> of <ProductType> at <ApplicationStage>
    And "<var>" is filled in "<var1>" for "<CollSubType>"
    And user selected the "<ProductType>" application at "<ApplicationStage>"
    And user navigates to "<var1>"
    And user opened lien details tab
    And user opens lien details accordion
    And user reads data from excelFile "lien_details.xlsx" under sheet "lien_details" and row 55
    And user fills lien details
    And user selects cancel button
    Then warning pop up is displayed
    Examples:
      | var        | var1          | CollSubType        | ProductType | ApplicationStage   |
      | Asset Cost | Asset Details | Consumer Vehicle   | CON_VEH     | <ApplicationStage> |
      | Asset Cost | Asset Details | Commercial Vehicle | CV          | <ApplicationStage> |


  #${CollSubType:["Ready Property","Builder Property Under Construction","Plot Plus Self Construction","Construction On Land","Purchase a Plot"]}
  #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration","Disbursal Initiation"]}  #${CollSubType:["Ready Property","Builder Property Under Construction","Plot Plus Self Construction","Construction On Land","Consumer Durable","Consumer Vehicle","Commercial Vehicle","Tractor","Implements and Attachments","Insurance","Agricultural Land","Kisan Vikas Patra","fixed deposit","National Saving Certificate"]}
  #${ApplicantType:["indiv","nonindiv"]}
  #FeatureID:ACAUTOCAS-5079
  Scenario Outline:Validate current outstanding is disabled on refreshing the Current Outstanding in Lien Details accordion for primary collateral <CollSubType> of home loan at <ApplicationStage>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user is on "<Page>" page of "<ApplicationStage>"
    And user delink the collateral of "<Page>"
    And user reads property details excel from datatable on the basis of "<CollSubType>" type
      | property_details.xlsx | home | 136 | Ready Property                      |
      | property_details.xlsx | home | 138 | Builder Property Under Construction |
      | property_details.xlsx | home | 135 | Plot Plus Self Construction         |
      | property_details.xlsx | home | 137 | Construction On Land                |
      | property_details.xlsx | home | 139 | Purchase a Plot                     |
    And "<Field>" is filled in "<Page>" for "<CollSubType>"
    And user reads data from the excel file "property_details.xlsx" under sheet "other_details" and row 26
    And user fills other details of "<Page>"
    And user saves the details of "<Page>"
    And user opened lien details tab of "<Page>"
    And user open Lien Details accordion of "<Page>"
    When user refresh the Current Outstanding
    Then current outstanding is disabled
    @ImplementedBy-pallavi.singh
    
    Examples:
      | Field              | Page             | CollSubType   | ProductType | ApplicantType   | ApplicationStage   |
      | Accepted Valuation | Property Details | <CollSubType> | HL          | <ApplicantType> | <ApplicationStage> |

  #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration","Disbursal Initiation"]}  #${CollSubType:["Ready Property","Builder Property Under Construction","Plot Plus Self Construction","Construction On Land","Consumer Durable","Consumer Vehicle","Commercial Vehicle","Tractor","Implements and Attachments","Insurance","Agricultural Land","Kisan Vikas Patra","fixed deposit","National Saving Certificate"]}
  #${ApplicantType:["indiv","nonindiv"]}
  #FeatureID:ACAUTOCAS-5079
  Scenario Outline:Validate current outstanding is disabled on refreshing the Current Outstanding in Lien Details accordion for primary collateral <CollSubType> of <ProductType> at <ApplicationStage>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user is on "<Page>" page of "<ApplicationStage>"
    And "<Field>" is filled in "<Page>" for "<CollSubType>"
    And user opened lien details tab of "<Page>"
    And user open Lien Details accordion of "<Page>"
    When user refresh the Current Outstanding
    Then current outstanding is disabled
    @Deferred
    Examples:
      | Field      | Page          | CollSubType        | ProductType | ApplicantType   | ApplicationStage   |
      | Asset Cost | Asset Details | Commercial Vehicle | CV          | <ApplicantType> | <ApplicationStage> |
    @ImplementedBy-pallavi.singh
    
    Examples:
      | Field      | Page          | CollSubType      | ProductType | ApplicantType   | ApplicationStage   |
      | Asset Cost | Asset Details | Consumer Vehicle | MAL         | <ApplicantType> | <ApplicationStage> |

  #${CollSubType:["Ready Property","Builder Property Under Construction","Plot Plus Self Construction","Construction On Land","Purchase a Plot"]}
  #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration","Disbursal Initiation"]}    #${CollSubType:["Ready Property","Builder Property Under Construction","Plot Plus Self Construction","Construction On Land","Consumer Durable","Consumer Vehicle","Commercial Vehicle","Tractor","Implements and Attachments","Insurance","Agricultural Land","Kisan Vikas Patra","fixed deposit","National Saving Certificate"]}
  #${ApplicantType:["indiv","nonindiv"]}
  #FeatureID:ACAUTOCAS-5079
  Scenario Outline:Validate successfully add lien details with multiple reasons for primary collateral <CollSubType> of home loan at <ApplicationStage>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user is on "<Page>" page of "<ApplicationStage>"
    And user delink the collateral of "<Page>"
    And user reads property details excel from datatable on the basis of "<CollSubType>" type
      | property_details.xlsx | home | 136 | Ready Property                      |
      | property_details.xlsx | home | 138 | Builder Property Under Construction |
      | property_details.xlsx | home | 135 | Plot Plus Self Construction         |
      | property_details.xlsx | home | 137 | Construction On Land                |
      | property_details.xlsx | home | 139 | Purchase a Plot                     |
    And "<Field>" is filled in "<Page>" for "<CollSubType>"
    And user reads data from the excel file "property_details.xlsx" under sheet "other_details" and row 26
    And user fills other details of "<Page>"
    And user saves the details of "<Page>"
    And user opened lien details tab of "<Page>"
    And user open Lien Details accordion of "<Page>"
    And user reads data from the excel file "lien_details.xlsx" under sheet "lien_details" and row 49
    And user fills fields of lien details accordion
    And user reads data from the excel file "lien_details.xlsx" under sheet "lien_details" and row 56
    And user add another reason in lien details
    When user selects done button
    Then multiple lien details added successfully
    @ImplementedBy-pallavi.singh
    
    Examples:
      | Field              | Page             | ProductType | ApplicantType   | ApplicationStage   | CollSubType   |
      | Accepted Valuation | Property Details | HL          | <ApplicantType> | <ApplicationStage> | <CollSubType> |

  #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration","Disbursal Initiation"]}    #${CollSubType:["Ready Property","Builder Property Under Construction","Plot Plus Self Construction","Construction On Land","Consumer Durable","Consumer Vehicle","Commercial Vehicle","Tractor","Implements and Attachments","Insurance","Agricultural Land","Kisan Vikas Patra","fixed deposit","National Saving Certificate"]}
  #${ApplicantType:["indiv","nonindiv"]}
  #FeatureID:ACAUTOCAS-5079
  Scenario Outline:Validate successfully add lien details with multiple reasons for primary collateral <CollSubType> of <ProductType> at <ApplicationStage>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user is on "<Page>" page of "<ApplicationStage>"
    And "<Field>" is filled in "<Page>" for "<CollSubType>"
    And user opened lien details tab of "<Page>"
    And user open Lien Details accordion of "<Page>"
    And user reads data from the excel file "lien_details.xlsx" under sheet "lien_details" and row 49
    And user fills fields of lien details accordion
    And user reads data from the excel file "lien_details.xlsx" under sheet "lien_details" and row 56
    And user add another reason in lien details
    When user selects done button
    Then multiple lien details added successfully
    @ImplementedBy-pallavi.singh
    
    Examples:
      | Field      | Page          | ProductType | ApplicantType   | ApplicationStage   | CollSubType      |
      | Asset Cost | Asset Details | MAL         | <ApplicantType> | <ApplicationStage> | Consumer Vehicle |
    @Deferred
    Examples:
      | Field      | Page          | ProductType | ApplicantType   | ApplicationStage   | CollSubType        |
      | Asset Cost | Asset Details | CV          | <ApplicantType> | <ApplicationStage> | Commercial Vehicle |

  #${CollSubType:["Ready Property","Builder Property Under Construction","Plot Plus Self Construction","Construction On Land","Purchase a Plot"]}
  #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration","Disbursal Initiation"]}    #${CollSubType:["Ready Property","Builder Property Under Construction","Plot Plus Self Construction","Construction On Land","Consumer Durable","Consumer Vehicle","Commercial Vehicle","Tractor","Implements and Attachments","Insurance","Agricultural Land","Kisan Vikas Patra","fixed deposit","National Saving Certificate"]}
  #${ApplicantType:["indiv","nonindiv"]}
  #FeatureID:ACAUTOCAS-5079
  Scenario Outline:Unable to add multiple same reasons in lien details for primary collateral <CollSubType> of home loan at <ApplicationStage>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user is on "<Page>" page of "<ApplicationStage>"
    And user delink the collateral of "<Page>"
    And user reads property details excel from datatable on the basis of "<CollSubType>" type
      | property_details.xlsx | home | 136 | Ready Property                      |
      | property_details.xlsx | home | 138 | Builder Property Under Construction |
      | property_details.xlsx | home | 135 | Plot Plus Self Construction         |
      | property_details.xlsx | home | 137 | Construction On Land                |
      | property_details.xlsx | home | 139 | Purchase a Plot                     |
    And "<Field>" is filled in "<Page>" for "<CollSubType>"
    And user reads data from the excel file "property_details.xlsx" under sheet "other_details" and row 26
    And user fills other details of "<Page>"
    And user saves the details of "<Page>"
    And user opened lien details tab of "<Page>"
    And user open Lien Details accordion of "<Page>"
    And user reads data from the excel file "lien_details.xlsx" under sheet "lien_details" and row 49
    And user fills fields of lien details accordion
    And user reads data from the excel file "lien_details.xlsx" under sheet "lien_details" and row 56
    And user add another reason in lien details
    When user selects done button
    Then lien details added successfully
    @ImplementedBy-pallavi.singh
    
    Examples:
      | Field              | Page             | ProductType | ApplicantType   | ApplicationStage   | CollSubType   |
      | Accepted Valuation | Property Details | HL          | <ApplicantType> | <ApplicationStage> | <CollSubType> |


  #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration","Disbursal Initiation"]}    #${CollSubType:["Ready Property","Builder Property Under Construction","Plot Plus Self Construction","Construction On Land","Consumer Durable","Consumer Vehicle","Commercial Vehicle","Tractor","Implements and Attachments","Insurance","Agricultural Land","Kisan Vikas Patra","fixed deposit","National Saving Certificate"]}
  #${ApplicantType:["indiv","nonindiv"]}
  #FeatureID:ACAUTOCAS-5079
  Scenario Outline:Unable to add multiple same reasons in lien details for primary collateral <CollSubType> of <ProductType> at <ApplicationStage>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user is on "<Page>" page of "<ApplicationStage>"
    And "<Field>" is filled in "<Page>" for "<CollSubType>"
    And user opened lien details tab of "<Page>"
    And user open Lien Details accordion of "<Page>"
    And user reads data from the excel file "lien_details.xlsx" under sheet "lien_details" and row 49
    And user fills fields of lien details accordion
    And user reads data from the excel file "lien_details.xlsx" under sheet "lien_details" and row 56
    And user add another reason in lien details
    When user selects done button
    Then lien details added successfully
    @ImplementedBy-pallavi.singh
    
    Examples:
      | Field      | Page          | ProductType | ApplicantType   | ApplicationStage   | CollSubType      |
      | Asset Cost | Asset Details | MAL         | <ApplicantType> | <ApplicationStage> | Consumer Vehicle |
    @Deferred
    Examples:
      | Field      | Page          | ProductType | ApplicantType   | ApplicationStage   | CollSubType        |
      | Asset Cost | Asset Details | CV          | <ApplicantType> | <ApplicationStage> | Commercial Vehicle |

  #${CollSubType:["Ready Property","Builder Property Under Construction","Plot Plus Self Construction","Construction On Land","Purchase a Plot"]}
  #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration","Disbursal Initiation"]}
  #${ApplicantType:["indiv","nonindiv"]}
  #FeatureID:ACAUTOCAS-5079
  Scenario Outline:Delete the added reasons in Lien Details for primary collateral <CollSubType> of home loan at <ApplicationStage>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user is on "<Page>" page of "<ApplicationStage>"
    And user delink the collateral of "<Page>"
    And user reads property details excel from datatable on the basis of "<CollSubType>" type
      | property_details.xlsx | home | 136 | Ready Property                      |
      | property_details.xlsx | home | 138 | Builder Property Under Construction |
      | property_details.xlsx | home | 135 | Plot Plus Self Construction         |
      | property_details.xlsx | home | 137 | Construction On Land                |
      | property_details.xlsx | home | 139 | Purchase a Plot                     |
    And "<Field>" is filled in "<Page>" for "<CollSubType>"
    And user reads data from the excel file "property_details.xlsx" under sheet "other_details" and row 26
    And user fills other details of "<Page>"
    And user saves the details of "<Page>"
    And user opened lien details tab of "<Page>"
    And user open Lien Details accordion of "<Page>"
    And user reads data from the excel file "lien_details.xlsx" under sheet "lien_details" and row 49
    And user fills fields of lien details accordion
    And user reads data from the excel file "lien_details.xlsx" under sheet "lien_details" and row 49
    And user again adds the same reason
    When user selects done button
    Then error message is "displayed" in lien details page
    @ImplementedBy-pallavi.singh
    
    Examples:
      | Field              | Page             | ProductType | ApplicantType   | ApplicationStage   | CollSubType   |
      | Accepted Valuation | Property Details | HL          | <ApplicantType> | <ApplicationStage> | <CollSubType> |

  #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration","Disbursal Initiation"]}
  #${ApplicantType:["indiv","nonindiv"]}
  #FeatureID:ACAUTOCAS-5079
  Scenario Outline:Delete the added reasons in Lien Details for primary collateral <CollSubType> of <ProductType> at <ApplicationStage>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user is on "<Page>" page of "<ApplicationStage>"
    And "<Field>" is filled in "<Page>" for "<CollSubType>"
    And user opened lien details tab of "<Page>"
    And user open Lien Details accordion of "<Page>"
    And user reads data from the excel file "lien_details.xlsx" under sheet "lien_details" and row 49
    And user fills fields of lien details accordion
    And user reads data from the excel file "lien_details.xlsx" under sheet "lien_details" and row 49
    And user again adds the same reason
    When user selects done button
    Then error message is "displayed" in lien details page
    @ImplementedBy-pallavi.singh
    
    Examples:
      | Field      | Page          | ProductType | ApplicationStage   | ApplicantType   | CollSubType      |
      | Asset Cost | Asset Details | MAL         | <ApplicationStage> | <ApplicantType> | Consumer Vehicle |
    @Deferred
    Examples:
      | Field      | Page          | ProductType | ApplicationStage   | ApplicantType   | CollSubType        |
      | Asset Cost | Asset Details | CV          | <ApplicationStage> | <ApplicantType> | Commercial Vehicle |

  #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration","Disbursal Initiation"]}
  #${CollSubType:["Ready Property","Builder Property Under Construction","Plot Plus Self Construction","Construction On Land","Purchase a Plot"]}
  #${ApplicantType:["indiv","nonindiv"]}
  #FeatureID:ACAUTOCAS-5079
  Scenario Outline:After deleting the reasons add new reason in Lien Details for primary collateral <CollSubType> of home loan at <ApplicationStage>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user is on "<Page>" page of "<ApplicationStage>"
    And user delink the collateral of "<Page>"
    And user reads property details excel from datatable on the basis of "<CollSubType>" type
      | property_details.xlsx | home | 136 | Ready Property                      |
      | property_details.xlsx | home | 138 | Builder Property Under Construction |
      | property_details.xlsx | home | 135 | Plot Plus Self Construction         |
      | property_details.xlsx | home | 137 | Construction On Land                |
      | property_details.xlsx | home | 139 | Purchase a Plot                     |
    And "<Field>" is filled in "<Page>" for "<CollSubType>"
    And user reads data from the excel file "property_details.xlsx" under sheet "other_details" and row 26
    And user fills other details of "<Page>"
    And user saves the details of "<Page>"
    And user opened lien details tab of "<Page>"
    And user open Lien Details accordion of "<Page>"
    And user reads data from the excel file "lien_details.xlsx" under sheet "lien_details" and row 49
    And user fills fields of lien details accordion
    And user reads data from the excel file "lien_details.xlsx" under sheet "lien_details" and row 56
    And user add another reason in lien details
    And user delete reason in lien details
    When user again adds the same reason
    Then same reason is added successfully after deletion
    @ImplementedBy-pallavi.singh
    
    Examples:
      | Field              | Page             | ProductType | ApplicantType   | ApplicationStage   | CollSubType   |
      | Accepted Valuation | Property Details | HL          | <ApplicantType> | <ApplicationStage> | <CollSubType> |

  #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration","Disbursal Initiation"]}
  #${ApplicantType:["indiv","nonindiv"]}
  #FeatureID:ACAUTOCAS-5079
  Scenario Outline:After deleting the reasons add new reason in Lien Details for primary collateral <CollSubType> of <ProductType> at <ApplicationStage>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user is on "<Page>" page of "<ApplicationStage>"
    And "<Field>" is filled in "<Page>" for "<CollSubType>"
    And user opened lien details tab of "<Page>"
    And user open Lien Details accordion of "<Page>"
    And user reads data from the excel file "lien_details.xlsx" under sheet "lien_details" and row 49
    And user fills fields of lien details accordion
    And user reads data from the excel file "lien_details.xlsx" under sheet "lien_details" and row 56
    And user add another reason in lien details
    And user delete reason in lien details
    When user again adds the same reason
    Then same reason is added successfully after deletion
    @ImplementedBy-pallavi.singh
    
    Examples:
      | Field      | Page          | ProductType | ApplicationStage   | ApplicantType   | CollSubType      |
      | Asset Cost | Asset Details | MAL         | <ApplicationStage> | <ApplicantType> | Consumer Vehicle |
    @Deferred
    Examples:
      | Field      | Page          | ProductType | ApplicationStage   | CollSubType        |
      | Asset Cost | Asset Details | CV          | <ApplicationStage> | Commercial Vehicle |

  #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration","Disbursal Initiation"]}
  # ${ApplicantType:["indiv","nonindiv"]}
  # ${CollSubType:["Ready Property","Builder Property Under Construction","Plot Plus Self Construction","Purchase a Plot"]}
  #FeatureID:ACAUTOCAS-5079
  Scenario Outline:Validate <var1> is correctly filled on adding <Field_Name> in lien details accordion for primary collateral <CollSubType> of home loan at <ApplicationStage>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user is on "<Page>" page of "<ApplicationStage>"
    And user delink the collateral of "<Page>"
    And user reads property details excel from datatable on the basis of "<CollSubType>" type
      | property_details.xlsx | home | 136 | Ready Property                      |
      | property_details.xlsx | home | 138 | Builder Property Under Construction |
      | property_details.xlsx | home | 135 | Plot Plus Self Construction         |
      | property_details.xlsx | home | 137 | Construction On Land                |
      | property_details.xlsx | home | 139 | Purchase a Plot                     |
    And "<Field>" is filled in "<Page>" for "<CollSubType>"
    And user reads data from the excel file "property_details.xlsx" under sheet "other_details" and row 26
    And user fills other details of "<Page>"
    And user saves the details of "<Page>"
    And user opened lien details tab of "<Page>"
    And user open Lien Details accordion of "<Page>"
    And user reads data from the excel file "lien_details.xlsx" under sheet "lien_details" and row <row_num>
    When user enters "<Field_Name>" in lien detail
    Then "<var1>" is auto filled correctly
    @ImplementedBy-pallavi.singh
    
    Examples:
      | Field              | Page             | Field_Name        | var1                       | row_num | ProductType | ApplicantType   | CollSubType   | ApplicationStage   |
      | Accepted Valuation | Property Details | Lien Percentage   | Lien Amount                | 57      | HL          | <ApplicantType> | <CollSubType> | <ApplicationStage> |
      | Accepted Valuation | Property Details | Margin Percentage | Secured Amount             | 58      | HL          | <ApplicantType> | <CollSubType> | <ApplicationStage> |
      | Accepted Valuation | Property Details | Lien Amount       | Lien Percentage            | 59      | HL          | <ApplicantType> | <CollSubType> | <ApplicationStage> |
      | Accepted Valuation | Property Details | Secured Amount    | Margin Percentage          | 60      | HL          | <ApplicantType> | <CollSubType> | <ApplicationStage> |
      | Accepted Valuation | Property Details | Lien Amount       | Value Available for Pledge | 61      | HL          | <ApplicantType> | <CollSubType> | <ApplicationStage> |

  #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration","Disbursal Initiation"]}
  # ${ApplicantType:["indiv","nonindiv"]}
  #FeatureID:ACAUTOCAS-5079
  Scenario Outline:Validate <var1> is correctly filled on adding <Field_Name> in lien details accordion for primary collateral <CollSubType> of <ProductType> at <ApplicationStage>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user is on "<Page>" page of "<ApplicationStage>"
    And "<Field>" is filled in "<Page>" for "<CollSubType>"
    And user opened lien details tab of "<Page>"
    And user open Lien Details accordion of "<Page>"
    And user reads data from the excel file "lien_details.xlsx" under sheet "lien_details" and row <row_num>
    When user enters "<Field_Name>" in lien detail
    Then "<var1>" is auto filled correctly
    @ImplementedBy-pallavi.singh
    
    Examples:
      | Field      | Page          | Field_Name        | var1                       | row_num | ProductType | ApplicantType   | CollSubType      | ApplicationStage   |
      | Asset Cost | Asset Details | Lien Percentage   | Lien Amount                | 57      | MAL         | <ApplicantType> | Consumer Vehicle | <ApplicationStage> |
      | Asset Cost | Asset Details | Margin Percentage | Secured Amount             | 58      | MAL         | <ApplicantType> | Consumer Vehicle | <ApplicationStage> |
      | Asset Cost | Asset Details | Lien Amount       | Lien Percentage            | 59      | MAL         | <ApplicantType> | Consumer Vehicle | <ApplicationStage> |
      | Asset Cost | Asset Details | Secured Amount    | Margin Percentage          | 60      | MAL         | <ApplicantType> | Consumer Vehicle | <ApplicationStage> |
      | Asset Cost | Asset Details | Lien Amount       | Value Available for Pledge | 61      | MAL         | <ApplicantType> | Consumer Vehicle | <ApplicationStage> |
    @Deferred
    Examples:
      | Field      | Page          | Field_Name        | var1                       | row_num | ProductType | CollSubType        | ApplicationStage   |
      | Asset Cost | Asset Details | Lien Percentage   | lien amount                | 57      | CV          | Commercial Vehicle | <ApplicationStage> |
      | Asset Cost | Asset Details | Margin Percentage | secured amount             | 58      | CV          | Commercial Vehicle | <ApplicationStage> |
      | Asset Cost | Asset Details | Lien Amount       | Lien Percentage            | 59      | CV          | Commercial Vehicle | <ApplicationStage> |
      | Asset Cost | Asset Details | secured amount    | Margin Percentage          | 60      | CV          | Commercial Vehicle | <ApplicationStage> |
      | Asset Cost | Asset Details | Lien Amount       | Value Available for Pledge | 61      | CV          | Commercial Vehicle | <ApplicationStage> |

  #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration","Disbursal Initiation"]}
  # ${CollSubType:["Ready Property","Builder Property Under Construction","Plot Plus Self Construction","Purchase a Plot"]}
  # ${ApplicantType:["indiv","nonindiv"]}
  # FeatureID:ACAUTOCAS-5079
  Scenario Outline:Validate lien marking date is equal to current system date in lien details accordion for primary collateral <CollSubType> of home loan at <ApplicationStage>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user is on "<Page>" page of "<ApplicationStage>"
    And user delink the collateral of "<Page>"
    And user reads property details excel from datatable on the basis of "<CollSubType>" type
      | property_details.xlsx | home | 136 | Ready Property                      |
      | property_details.xlsx | home | 138 | Builder Property Under Construction |
      | property_details.xlsx | home | 135 | Plot Plus Self Construction         |
      | property_details.xlsx | home | 137 | Construction On Land                |
      | property_details.xlsx | home | 139 | Purchase a Plot                     |
    And "<Field>" is filled in "<Page>" for "<CollSubType>"
    And user reads data from the excel file "property_details.xlsx" under sheet "other_details" and row 26
    And user fills other details of "<Page>"
    And user saves the details of "<Page>"
    And user opened lien details tab of "<Page>"
    When user open Lien Details accordion of "<Page>"
    Then lien marking date is current system date
    @ImplementedBy-richa.singh
    
    Examples:
      | Field              | Page             | ProductType | ApplicationStage   | ApplicantType   | CollSubType   |
      | Accepted Valuation | Property Details | HL          | <ApplicationStage> | <ApplicantType> | <CollSubType> |

  #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration","Disbursal Initiation"]}
  # ${ApplicantType:["indiv","nonindiv"]}
  # FeatureID:ACAUTOCAS-5079
  Scenario Outline:Validate lien marking date is equal to current system date in lien details accordion for primary collateral <CollSubType> of <ProductType> at <ApplicationStage>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user is on "<Page>" page of "<ApplicationStage>"
    And "<Field>" is filled in "<Page>" for "<CollSubType>"
    And user opened lien details tab of "<Page>"
    When user open Lien Details accordion of "<Page>"
    Then lien marking date is current system date
    @ImplementedBy-pallavi.singh
    
    Examples:
      | Field      | Page          | ProductType | ApplicationStage   | ApplicantType   | CollSubType      |
      | Asset Cost | Asset Details | MAL         | <ApplicationStage> | <ApplicantType> | Consumer Vehicle |
    @Deferred
    Examples:
      | Field      | Page          | ProductType | ApplicationStage   | ApplicantType   | CollSubType        |
      | Asset Cost | Asset Details | CV          | <ApplicationStage> | <ApplicantType> | Commercial Vehicle |

