@Epic-Loan_Application_Details
@ReviewedBy-None
#@AuthoredBy-vinod.pandey
@AuthoredBy-vipin.kishor
@Conventional
@Islamic
@count
@new


#${ ApplicantType:["indiv","nonindiv"]}
Feature:Screen Validation In Lien Details Home Page Primary Collateral

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 7

  #In database Lien details Lien details is enabled for following ApplicationStages

  #FeatureID-ACAUTOCAS-5079
  @ImplementedBy-pallavi.singh
  Scenario Outline:Lien details tab is displayed for primary collateral <CollSubType> of <ProductType> application at <ApplicationStage>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user is on "<Page>" page of "<ApplicationStage>"
    And user delink the collateral of "<Page>"
    And user reads data from the excel file "property_details.xlsx" under sheet "home" and row <PropertyDetails_home_rowNum>
    When "<Field>" is filled in "<Page>" for "<CollSubType>"
    And user reads data from the excel file "property_details.xlsx" under sheet "other_details" and row 26
    And user fills other details of "<Page>"
    And user saves the details of "<Page>"
    Then lien details tab of "<Page>" is displayed
    #${ApplicationStage:["Lead Details",Login Acceptanace","DDE","Recommendation","Credit Approval","Reconsideration","Disbursal Initiation"]}
    @Conventional @Release
    Examples:
      | Page             | Field              | CollSubType                         | ProductType | ApplicantType   | ApplicationStage   | PropertyDetails_home_rowNum |
      | Property Details | Accepted Valuation | plot plus self construction         | HL          | <ApplicantType> | <ApplicationStage> | 135                         |
      | Property Details | Accepted Valuation | ready property                      | HL          | <ApplicantType> | <ApplicationStage> | 136                         |
      | Property Details | Accepted Valuation | construction on land                | HL          | <ApplicantType> | <ApplicationStage> | 137                         |
      | Property Details | Accepted Valuation | builder property under construction | HL          | <ApplicantType> | <ApplicationStage> | 138                         |
      | Property Details | Accepted Valuation | purchase a plot                     | HL          | <ApplicantType> | <ApplicationStage> | 139                         |
      | Asset Details    | Asset Cost         | consumer vehicle                    | MAL         | <ApplicantType> | <ApplicationStage> | 0                           |

    @Islamic @Release
    # ${ProductType:["IHF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    Examples:
      | Page             | Field              | CollSubType                         | ProductType   | ApplicantType   | ApplicationStage   | PropertyDetails_home_rowNum |
      | Property Details | Accepted Valuation | plot plus self construction         | <ProductType> | <ApplicantType> | <ApplicationStage> | 135                         |
      | Property Details | Accepted Valuation | ready property                      | <ProductType> | <ApplicantType> | <ApplicationStage> | 136                         |
      | Property Details | Accepted Valuation | construction on land                | <ProductType> | <ApplicantType> | <ApplicationStage> | 137                         |
      | Property Details | Accepted Valuation | builder property under construction | <ProductType> | <ApplicantType> | <ApplicationStage> | 138                         |
      | Property Details | Accepted Valuation | purchase a plot                     | <ProductType> | <ApplicantType> | <ApplicationStage> | 139                         |

    @Islamic @Release
    # ${ProductType:["IAF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    Examples:
      | Page          | Field      | CollSubType      | ProductType   | ApplicantType   | ApplicationStage   | PropertyDetails_home_rowNum |
      | Asset Details | Asset Cost | consumer vehicle | <ProductType> | <ApplicantType> | <ApplicationStage> | 0                           |

    @Deferred
    Examples:
      | Page          | Field      | CollSubType        | ProductType | ApplicantType   | ApplicationStage   |
      | Asset Details | Asset Cost | commercial vehicle | CV          | <ApplicantType> | <ApplicationStage> |

  #${ApplicationStage:["Lead Details",Login Acceptanace","DDE","Recommendation","Credit Approval","Reconsideration","Disbursal Initiation"]}
  #${ ApplicantType:["indiv","nonindiv"]}
  #FeatureID-ACAUTOCAS-5079
  Scenario Outline:Lien details tab is not displayed for primary collateral <CollSubType> of <ProductType> application at <ApplicationStage>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user is on "<Page>" page of "<ApplicationStage>"
    When user delink the collateral of "<Page>"
    Then lien details tab of "<Page>" is not displayed
    @ImplementedBy-pallavi.singh
    @Release
    Examples:
      | Page             | var                | CollSubType                         | ProductType | ApplicationStage   | ApplicantType   |
      | Property Details | Accepted Valuation | plot plus self construction         | HL          | <ApplicationStage> | <ApplicantType> |
      | Property Details | Accepted Valuation | ready property                      | HL          | <ApplicationStage> | <ApplicantType> |
      | Property Details | Accepted Valuation | construction on land                | HL          | <ApplicationStage> | <ApplicantType> |
      | Property Details | Accepted Valuation | builder property under construction | HL          | <ApplicationStage> | <ApplicantType> |
      | Property Details | Accepted Valuation | purchase a plot                     | HL          | <ApplicationStage> | <ApplicantType> |
      | Asset Details    | Asset Cost         | consumer vehicle                    | MAL         | <ApplicationStage> | <ApplicantType> |
    @Deferred
    Examples:
      | Page          | var        | CollSubType        | ProductType | ApplicationStage   | ApplicantType   |
      | Asset Details | Asset Cost | commercial vehicle | CV          | <ApplicationStage> | <ApplicantType> |

  #${ApplicationStage:["Lead Details",Login Acceptanace","DDE","Recommendation","Credit Approval","Reconsideration","Disbursal Initiation"]}
  #${ ApplicantType:["indiv","nonindiv"]}
  #FeatureID-ACAUTOCAS-5079
  Scenario Outline:Inputs are displayed in lien details page for primary collateral <CollSubType> of <ProductType> at <ApplicationApplicationStage>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user is on "<Page>" page of "<ApplicationStage>"
    And user delink the collateral of "<Page>"
    And user reads data from the excel file "property_details.xlsx" under sheet "home" and row <PropertyDetails_home_rowNum>
    And "<Field>" is filled in "<Page>" for "<CollSubType>"
    And user reads data from the excel file "property_details.xlsx" under sheet "other_details" and row 26
    And user fills other details of "<Page>"
    And user saves the details of "<Page>"
    When user opened lien details tab of "<Page>"
    Then fields are displayed in lien details
      | Collateral Number             | input     |
      | Collateral Reference Number   | input     |
      | Collateral type               | input     |
      | Collateral SubType            | input     |
      | Hair Cut (%)                  | input     |
      | Extension Ratio (%)           | input     |
      | Collateral Value              | input     |
      | Realisable Value              | input     |
      | Collateral Coverage Ratio (%) | input     |
      | Collateral Level LTV (%)      | input     |
      | Last Valuation Date           | input     |
      | Value Available for Pledge    | input     |
      | Lien Details                  | accordion |
      | Security Details              | accordion |
      | Refresh                       | button    |
      | Lien Details History          | button    |
      | Save                          | button    |
      | Save & Request Approval       | button    |
    @ImplementedBy-pallavi.singh
    @Release
    Examples:
      | Page             | Field              | CollSubType                         | ProductType | ApplicantType   | ApplicationStage   | PropertyDetails_home_rowNum |
      | Property Details | Accepted Valuation | plot plus self construction         | HL          | <ApplicantType> | <ApplicationStage> | 135                         |
      | Property Details | Accepted Valuation | ready property                      | HL          | <ApplicantType> | <ApplicationStage> | 136                         |
      | Property Details | Accepted Valuation | construction on land                | HL          | <ApplicantType> | <ApplicationStage> | 137                         |
      | Property Details | Accepted Valuation | builder property under construction | HL          | <ApplicantType> | <ApplicationStage> | 138                         |
      | Property Details | Accepted Valuation | purchase a plot                     | HL          | <ApplicantType> | <ApplicationStage> | 139                         |
      | Asset Details    | Asset Cost         | consumer vehicle                    | MAL         | <ApplicantType> | <ApplicationStage> | 0                           |
    @Deferred
    Examples:
      | Page          | Field      | CollSubType        | ProductType | ApplicationStage   |
      | Asset Details | Asset Cost | commercial vehicle | CV          | <ApplicationStage> |

  #${ApplicationStage:["Lead Details",Login Acceptanace","DDE","Recommendation","Credit Approval","Reconsideration","Disbursal Initiation"]}
  #${ ApplicantType:["indiv","nonindiv"]}
  #FeatureID-ACAUTOCAS-5079
  Scenario Outline:Fields are non editable in lien details page for primary collateral <CollSubType> of <ProductType> at <ApplicationStage>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user is on "<Page>" page of "<ApplicationStage>"
    And user delink the collateral of "<Page>"
    And user reads data from the excel file "property_details.xlsx" under sheet "home" and row <PropertyDetails_home_rowNum>
    And "<Field>" is filled in "<Page>" for "<CollSubType>"
    And user reads data from the excel file "property_details.xlsx" under sheet "other_details" and row 26
    And user fills other details of "<Page>"
    And user saves the details of "<Page>"
    When user opened lien details tab of "<Page>"
    Then fields are non editable in lien detail
      | Collateral Number             |
      | Collateral Reference Number   |
      | Collateral type               |
      | Collateral SubType            |
      | Collateral Value              |
      | Realisable Value              |
      | Collateral Coverage Ratio (%) |
      | Collateral Level LTV (%)      |
      | Last Valuation Date           |
      | Value Available for Pledge    |
    @ImplementedBy-pallavi.singh
    @Release
    Examples:
      | Page             | Field              | CollSubType                         | ProductType | ApplicantType   | ApplicationStage   | PropertyDetails_home_rowNum |
      | Property Details | Accepted Valuation | plot plus self construction         | HL          | <ApplicantType> | <ApplicationStage> | 135                         |
      | Property Details | Accepted Valuation | ready property                      | HL          | <ApplicantType> | <ApplicationStage> | 136                         |
      | Property Details | Accepted Valuation | construction on land                | HL          | <ApplicantType> | <ApplicationStage> | 137                         |
      | Property Details | Accepted Valuation | builder property under construction | HL          | <ApplicantType> | <ApplicationStage> | 138                         |
      | Property Details | Accepted Valuation | purchase a plot                     | HL          | <ApplicantType> | <ApplicationStage> | 139                         |
      | Asset Details    | Asset Cost         | consumer vehicle                    | MAL         | <ApplicantType> | <ApplicationStage> | 0                           |
    @Deferred
    Examples:
      | Page          | Field      | CollSubType        | ProductType | ApplicationStage   |
      | Asset Details | Asset Cost | commercial vehicle | CV          | <ApplicationStage> |

  #${ApplicationStage:["Lead Details",Login Acceptanace","DDE","Recommendation","Credit Approval","Reconsideration","Disbursal Initiation"]}
  #${ ApplicantType:["indiv","nonindiv"]}
  #{CollSubType:["Ready Property","Builder Property Under Construction","Plot Plus Self Construction","Construction On Land","Purchase a Plot"]}
  #FeatureID-ACAUTOCAS-5079
  Scenario Outline:Mandatory field validation with data <LienDetails_home_rowNum> in lien details for primary collateral <CollSubType> of home loan at <ApplicationStage>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user is on "<Page>" page of "<ApplicationStage>"
    And user delink the collateral of "<Page>"
    And user reads data from the excel file "property_details.xlsx" under sheet "home" and row <PropertyDetails_home_rowNum>
    And "<Field>" is filled in "<Page>" for "<CollSubType>"
    And user reads data from the excel file "property_details.xlsx" under sheet "other_details" and row 26
    And user fills other details of "<Page>"
    And user saves the details of "<Page>"
    And user opened lien details tab of "<Page>"
    And user reads data from the excel file "lien_details.xlsx" under sheet "lien_details_home" and row <LienDetails_home_rowNum>
    When user fills lien details home page
    And user saves lien details
    Then error message is "<displayed_not_displayed>" in lien details
    @ImplementedBy-pallavi.singh
    @Release
    Examples:
      | Field              | Page             | ProductType | ApplicantType   | CollSubType                         | ApplicationStage   | LienDetails_home_rowNum | displayed_not_displayed | PropertyDetails_home_rowNum |
      | Accepted Valuation | Property Details | HL          | <ApplicantType> | Plot Plus Self Construction         | <ApplicationStage> | 17                      | not displayed           | 135                         |
      | Accepted Valuation | Property Details | HL          | <ApplicantType> | Plot Plus Self Construction         | <ApplicationStage> | 18                      | displayed               | 135                         |
      | Accepted Valuation | Property Details | HL          | <ApplicantType> | Plot Plus Self Construction         | <ApplicationStage> | 19                      | displayed               | 135                         |
      | Accepted Valuation | Property Details | HL          | <ApplicantType> | Plot Plus Self Construction         | <ApplicationStage> | 20                      | not displayed           | 135                         |
      | Accepted Valuation | Property Details | HL          | <ApplicantType> | Ready Property                      | <ApplicationStage> | 17                      | not displayed           | 136                         |
      | Accepted Valuation | Property Details | HL          | <ApplicantType> | Ready Property                      | <ApplicationStage> | 18                      | displayed               | 136                         |
      | Accepted Valuation | Property Details | HL          | <ApplicantType> | Ready Property                      | <ApplicationStage> | 19                      | displayed               | 136                         |
      | Accepted Valuation | Property Details | HL          | <ApplicantType> | Ready Property                      | <ApplicationStage> | 20                      | not displayed           | 136                         |
      | Accepted Valuation | Property Details | HL          | <ApplicantType> | Construction On Land                | <ApplicationStage> | 17                      | not displayed           | 137                         |
      | Accepted Valuation | Property Details | HL          | <ApplicantType> | Construction On Land                | <ApplicationStage> | 18                      | displayed               | 137                         |
      | Accepted Valuation | Property Details | HL          | <ApplicantType> | Construction On Land                | <ApplicationStage> | 19                      | displayed               | 137                         |
      | Accepted Valuation | Property Details | HL          | <ApplicantType> | Construction On Land                | <ApplicationStage> | 20                      | not displayed           | 137                         |
      | Accepted Valuation | Property Details | HL          | <ApplicantType> | Builder Property Under Construction | <ApplicationStage> | 17                      | not displayed           | 138                         |
      | Accepted Valuation | Property Details | HL          | <ApplicantType> | Builder Property Under Construction | <ApplicationStage> | 18                      | displayed               | 138                         |
      | Accepted Valuation | Property Details | HL          | <ApplicantType> | Builder Property Under Construction | <ApplicationStage> | 19                      | displayed               | 138                         |
      | Accepted Valuation | Property Details | HL          | <ApplicantType> | Builder Property Under Construction | <ApplicationStage> | 20                      | not displayed           | 138                         |
      | Accepted Valuation | Property Details | HL          | <ApplicantType> | Purchase a Plot                     | <ApplicationStage> | 17                      | not displayed           | 139                         |
      | Accepted Valuation | Property Details | HL          | <ApplicantType> | Purchase a Plot                     | <ApplicationStage> | 18                      | displayed               | 139                         |
      | Accepted Valuation | Property Details | HL          | <ApplicantType> | Purchase a Plot                     | <ApplicationStage> | 19                      | displayed               | 139                         |
      | Accepted Valuation | Property Details | HL          | <ApplicantType> | Purchase a Plot                     | <ApplicationStage> | 20                      | not displayed           | 139                         |

  #${ApplicationStage:["Lead Details",Login Acceptanace","DDE","Recommendation","Credit Approval","Reconsideration","Disbursal Initiation"]}
  #${ ApplicantType:["indiv","nonindiv"]}
  #{CollSubType:["Ready Property","Builder Property Under Construction","Plot Plus Self Construction","Construction On Land","Consumer Durable","Consumer Vehicle","Commercial Vehicle","Tractor","Implements and Attachments","Insurance","Agricultural Land","Kisan Vikas Patra","fixed deposit","National Saving Certificate"]}
  #FeatureID-ACAUTOCAS-5079
  Scenario Outline:Mandatory field validation with data <LienDetails_home_rowNum> in lien details for primary collateral <CollSubType> of <ProductType> at <ApplicationStage>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user is on "<Page>" page of "<ApplicationStage>"
    And user delink the collateral of "<Page>"
    And "<Field>" is filled in "<Page>" for "<CollSubType>"
    And user saves the details of "<Page>"
    And user opened lien details tab of "<Page>"
    And user reads data from the excel file "lien_details.xlsx" under sheet "lien_details_home" and row <LienDetails_home_rowNum>
    When user fills lien details home page
    And user saves lien details
    Then error message is "<displayed_not_displayed>" in lien details
    @ImplementedBy-pallavi.singh
    @Release
    Examples:
      | Field      | Page          | ProductType | ApplicantType   | CollSubType      | ApplicationStage   | LienDetails_home_rowNum | displayed_not_displayed |
      | Asset Cost | Asset Details | MAL         | <ApplicantType> | Consumer Vehicle | <ApplicationStage> | 17                      | not displayed           |
      | Asset Cost | Asset Details | MAL         | <ApplicantType> | Consumer Vehicle | <ApplicationStage> | 18                      | displayed               |
      | Asset Cost | Asset Details | MAL         | <ApplicantType> | Consumer Vehicle | <ApplicationStage> | 19                      | displayed               |
      | Asset Cost | Asset Details | MAL         | <ApplicantType> | Consumer Vehicle | <ApplicationStage> | 20                      | not displayed           |
    @Deferred
    Examples:
      | Field      | Page          | ProductType | CollSubType        | ApplicationStage   | LienDetails_home_rowNum | displayed_not_displayed |
      | Asset Cost | Asset Details | CV          | Commercial vehicle | <ApplicationStage> | 17                      | displayed               |
      | Asset Cost | Asset Details | CV          | Commercial vehicle | <ApplicationStage> | 18                      | displayed               |
      | Asset Cost | Asset Details | CV          | Commercial vehicle | <ApplicationStage> | 19                      | displayed               |
      | Asset Cost | Asset Details | CV          | Commercial vehicle | <ApplicationStage> | 20                      | displayed               |

  #${ApplicationStage:["Lead Details",Login Acceptanace","DDE","Recommendation","Credit Approval","Reconsideration","Disbursal Initiation"]}
  #${CollSubType:["Ready Property","Builder Property Under Construction","Plot Plus Self Construction","Construction On Land","Purchase a Plot"]}
  #${ApplicantType:["indiv","nonindiv"]}
  #FeatureID-ACAUTOCAS-5079
  Scenario Outline:Enter <Validity> <Field_Name> <Validity_reason> in lien details for <CollSubType> of home loan at <ApplicationStage>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user is on "<Page>" page of "<ApplicationStage>"
    And user delink the collateral of "<Page>"
    And user reads property details excel from datatable on the basis of "<CollSubType>" type
      | property_details.xlsx | home | 136 | Ready Property                      |
      | property_details.xlsx | home | 138 | Builder Property Under Construction |
      | property_details.xlsx | home | 135 | Plot Plus Self Construction         |
      | property_details.xlsx | home | 137 | Construction On Land                |
      | property_details.xlsx | home | 139 | Purchase a Plot                     |
    And "Accepted Valuation" is filled in "<Page>" for "<CollSubType>"
    And user reads data from the excel file "property_details.xlsx" under sheet "other_details" and row 26
    And user fills other details of "<Page>"
    And user saves the details of "<Page>"
    And user opened lien details tab of "<Page>"
    And user reads data from the excel file "lien_details.xlsx" under sheet "lien_details_home" and row <row_num>
    When user enters "<Validity>" "<Field_Name>" "<Validity_reason>" in lien details
    Then error message is "<displayed_not_displayed>" in lien details page
    @ImplementedBy-pallavi.singh
    @Release
    Examples:
      | Page             | Validity | Field_Name          | Validity_reason                 | displayed_not_displayed | CollSubType   | ProductType | ApplicantType   | ApplicationStage   | row_num |
      | Property Details | valid    | Hair Cut (%)        |                                 | not displayed           | <CollSubType> | HL          | <ApplicantType> | <ApplicationStage> | 0       |
      | Property Details | valid    | Hair Cut (%)        | with 2 decimal places           | not displayed           | <CollSubType> | HL          | <ApplicantType> | <ApplicationStage> | 1       |
      | Property Details | invalid  | Hair Cut (%)        | with characters                 | displayed               | <CollSubType> | HL          | <ApplicantType> | <ApplicationStage> | 2       |
      | Property Details | invalid  | Hair Cut (%)        | with alphanumeric characters    | displayed               | <CollSubType> | HL          | <ApplicantType> | <ApplicationStage> | 3       |
      | Property Details | invalid  | Hair Cut (%)        | with space                      | displayed               | <CollSubType> | HL          | <ApplicantType> | <ApplicationStage> | 4       |
      | Property Details | invalid  | Hair Cut (%)        | with special characters         | displayed               | <CollSubType> | HL          | <ApplicantType> | <ApplicationStage> | 5       |
      | Property Details | invalid  | Hair Cut (%)        | with more than 100 value        | displayed               | <CollSubType> | HL          | <ApplicantType> | <ApplicationStage> | 6       |
      | Property Details | invalid  | Hair Cut (%)        | with more than 2 decimal places | displayed               | <CollSubType> | HL          | <ApplicantType> | <ApplicationStage> | 7       |
      | Property Details | valid    | Extension Ratio (%) |                                 | not displayed           | <CollSubType> | HL          | <ApplicantType> | <ApplicationStage> | 0       |
      | Property Details | valid    | Extension Ratio (%) | with 2 decimal places           | not displayed           | <CollSubType> | HL          | <ApplicantType> | <ApplicationStage> | 1       |
      | Property Details | invalid  | Extension Ratio (%) | with characters                 | displayed               | <CollSubType> | HL          | <ApplicantType> | <ApplicationStage> | 2       |
      | Property Details | invalid  | Extension Ratio (%) | with alphanumeric characters    | displayed               | <CollSubType> | HL          | <ApplicantType> | <ApplicationStage> | 3       |
      | Property Details | invalid  | Extension Ratio (%) | with space                      | displayed               | <CollSubType> | HL          | <ApplicantType> | <ApplicationStage> | 4       |
      | Property Details | invalid  | Extension Ratio (%) | with special characters         | displayed               | <CollSubType> | HL          | <ApplicantType> | <ApplicationStage> | 5       |
      | Property Details | invalid  | Extension Ratio (%) | with more than 100 value        | displayed               | <CollSubType> | HL          | <ApplicantType> | <ApplicationStage> | 6       |
      | Property Details | invalid  | Extension Ratio (%) | with more than 2 decimal places | displayed               | <CollSubType> | HL          | <ApplicantType> | <ApplicationStage> | 7       |

  #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration","Disbursal Initiation"]}
  #${ApplicantType:["indiv","nonindiv"]}
  #${CollSubType:["Consumer Vehicle"]}
  #FeatureID-ACAUTOCAS-5079
  Scenario Outline:Enter <Validity> <Field_Name> <Validity_reason> in lien details for <CollSubType> of <ProductType> at <ApplicationStage>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user is on "<Page>" page of "<ApplicationStage>"
    And user opened lien details tab of "<Page>"
    And user reads data from the excel file "lien_details.xlsx" under sheet "lien_details_home" and row <row_num>
    When user enters "<Validity>" "<Field_Name>" "<Validity_reason>" in lien details
    Then error message is "<displayed_not_displayed>" in lien details page
    @ImplementedBy-pallavi.singh
    @Release
    Examples:
      | Page          | Validity | Field_Name          | Validity_reason                 | displayed_not_displayed | ProductType | ApplicantType   | ApplicationStage   | row_num | CollSubType   |
      | Asset Details | valid    | Hair Cut (%)        |                                 | not displayed           | MAL         | <ApplicantType> | <ApplicationStage> | 0       | <CollSubType> |
      | Asset Details | valid    | Hair Cut (%)        | with 2 decimal places           | not displayed           | MAL         | <ApplicantType> | <ApplicationStage> | 1       | <CollSubType> |
      | Asset Details | invalid  | Hair Cut (%)        | with characters                 | displayed               | MAL         | <ApplicantType> | <ApplicationStage> | 2       | <CollSubType> |
      | Asset Details | invalid  | Hair Cut (%)        | with alphanumeric characters    | displayed               | MAL         | <ApplicantType> | <ApplicationStage> | 3       | <CollSubType> |
      | Asset Details | invalid  | Hair Cut (%)        | with space                      | displayed               | MAL         | <ApplicantType> | <ApplicationStage> | 4       | <CollSubType> |
      | Asset Details | invalid  | Hair Cut (%)        | with special characters         | displayed               | MAL         | <ApplicantType> | <ApplicationStage> | 5       | <CollSubType> |
      | Asset Details | invalid  | Hair Cut (%)        | with more than 100 value        | displayed               | MAL         | <ApplicantType> | <ApplicationStage> | 6       | <CollSubType> |
      | Asset Details | invalid  | Hair Cut (%)        | with more than 2 decimal places | displayed               | MAL         | <ApplicantType> | <ApplicationStage> | 7       | <CollSubType> |
      | Asset Details | valid    | Extension Ratio (%) |                                 | not displayed           | MAL         | <ApplicantType> | <ApplicationStage> | 0       | <CollSubType> |
      | Asset Details | valid    | Extension Ratio (%) | with 2 decimal places           | not displayed           | MAL         | <ApplicantType> | <ApplicationStage> | 1       | <CollSubType> |
      | Asset Details | invalid  | Extension Ratio (%) | with characters                 | displayed               | MAL         | <ApplicantType> | <ApplicationStage> | 2       | <CollSubType> |
      | Asset Details | invalid  | Extension Ratio (%) | with alphanumeric characters    | displayed               | MAL         | <ApplicantType> | <ApplicationStage> | 3       | <CollSubType> |
      | Asset Details | invalid  | Extension Ratio (%) | with space                      | displayed               | MAL         | <ApplicantType> | <ApplicationStage> | 4       | <CollSubType> |
      | Asset Details | invalid  | Extension Ratio (%) | with special characters         | displayed               | MAL         | <ApplicantType> | <ApplicationStage> | 5       | <CollSubType> |
      | Asset Details | invalid  | Extension Ratio (%) | with more than 100 value        | displayed               | MAL         | <ApplicantType> | <ApplicationStage> | 6       | <CollSubType> |
      | Asset Details | invalid  | Extension Ratio (%) | with more than 2 decimal places | displayed               | MAL         | <ApplicantType> | <ApplicationStage> | 7       | <CollSubType> |


  #${ApplicationStage:["Lead Details",Login Acceptanace","DDE","Recommendation","Credit Approval","Reconsideration","Disbursal Initiation"]}
  #${CollSubType:["Ready Property","Builder Property Under Construction","Plot Plus Self Construction","Construction On Land","Purchase a Plot"]}
  #${ApplicantType:["indiv","nonindiv"]}
  #FeatureID-ACAUTOCAS-5079
  Scenario Outline:Validate values are present in mortgage type dropdown in lien details for <CollSubType> of <ProductType> at <ApplicationStage>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user is on "<Page>" page of "<ApplicationStage>"
    And user delink the collateral of "<Page>"
    And user reads property details excel from datatable on the basis of "<CollSubType>" type
      | property_details.xlsx | home | 136 | Ready Property                      |
      | property_details.xlsx | home | 138 | Builder Property Under Construction |
      | property_details.xlsx | home | 135 | Plot Plus Self Construction         |
      | property_details.xlsx | home | 137 | Construction On Land                |
      | property_details.xlsx | home | 139 | Purchase a Plot                     |
    And "Accepted Valuation" is filled in "<Page>" for "<CollSubType>"
    And user reads data from the excel file "property_details.xlsx" under sheet "other_details" and row 26
    And user fills other details of "<Page>"
    And user saves the details of "<Page>"
    When user opened lien details tab of "<Page>"
    And user reads data from the excel file "lien_details.xlsx" under sheet "lien_details_home" and row 25
    Then values are present in mortgage type dropdown
    @ImplementedBy-pallavi.singh
    @Release
    Examples:
      | Page             | CollSubType   | ProductType | ApplicationStage   | ApplicantType   |
      | Property Details | <CollSubType> | HL          | <ApplicationStage> | <ApplicantType> |

  #${ApplicationStage:["Lead Details",Login Acceptanace","DDE","Recommendation","Credit Approval","Reconsideration","Disbursal Initiation"]}
  #${CollSubType:["Ready Property","Builder Property Under Construction","Plot Plus Self Construction","Construction On Land","Purchase a Plot"]}
  #${ApplicantType:["indiv","nonindiv"]}
  # FeatureID-ACAUTOCAS-5079
  Scenario Outline:Validate lien details history button in lien details for <CollSubType> of home loan at <ApplicationStage>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user is on "<Page>" page of "<ApplicationStage>"
    And user delink the collateral of "<Page>"
    And user reads property details excel from datatable on the basis of "<CollSubType>" type
      | property_details.xlsx | home | 136 | Ready Property                      |
      | property_details.xlsx | home | 138 | Builder Property Under Construction |
      | property_details.xlsx | home | 135 | Plot Plus Self Construction         |
      | property_details.xlsx | home | 137 | Construction On Land                |
      | property_details.xlsx | home | 139 | Purchase a Plot                     |
    And "Accepted Valuation" is filled in "<Page>" for "<CollSubType>"
    And user reads data from the excel file "property_details.xlsx" under sheet "other_details" and row 26
    And user fills other details of "<Page>"
    And user saves the details of "<Page>"
    And user opened lien details tab of "<Page>"
    When user selects lien details history button
    Then lien details history pop up displayed
    @ImplementedBy-pallavi.singh
    @Release
    Examples:
      | Page             | CollSubType   | ProductType | ApplicationStage   | ApplicantType   |
      | Property Details | <CollSubType> | HL          | <ApplicationStage> | <ApplicantType> |

  #${ApplicationStage:["Lead Details",Login Acceptanace","DDE","Recommendation","Credit Approval","Reconsideration","Disbursal Initiation"]}
  #${CollSubType:["Consumer Vehicle"]}
  #${ProductType:["MAL"]}
  #${ApplicantType:["indiv","nonindiv"]}
  # FeatureID-ACAUTOCAS-5079
  Scenario Outline:Validate lien details history button in lien details for <CollSubType> of <ProductType> at <ApplicationStage>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user is on "<Page>" page of "<ApplicationStage>"
    And user opened lien details tab of "<Page>"
    When user selects lien details history button
    Then lien details history pop up displayed
    @ImplementedBy-pallavi.singh
    @Release
    Examples:
      | Page          | ProductType   | ApplicationStage   | ApplicantType   | CollSubType   |
      | Asset Details | <ProductType> | <ApplicationStage> | <ApplicantType> | <CollSubType> |



  #${ProductType:["IPF","IAF","OMNI",HF","PF","HL","LAP","CV","MHL","CEQ"]}
  #${ApplicationStage:["Lead Details",Login Acceptanace","DDE","Recommendation","Credit Approval","Reconsideration","Disbursal Initiation"]}
  #${CollSubType:["Ready Property","Builder Property Under Construction","Plot Plus Self Construction","Construction On Land","Purchase a Plot"]}
  #${ApplicantType:["indiv","nonindiv"]}
  @ImplementedBy-richa.singh
    @Release
    @Perishable
  Scenario Outline:Validate data is present in the lien history page for <approved_rejected> lien for <CollSubType> of <ProductType> at <ApplicationStage>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "" with "" from application grid
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
    And user saves collateral number
    And user reads data from the excel file "lien_details.xlsx" under sheet "lien_details" and row <LienDetails_sheet_rowNum>
    And user open Lien Details accordion of "<Page>"
    And user fills lien details accordion
    When user selects done button
    And user save & request for approval the lien
    And user logout from CAS
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "ChildBrowserSheet" and 7
    And user navigates to lien author screen
    And user open the recently added collateral in lien author screen
    And user fills decision section of lien details
    And user "<approved_rejected>" the lien
    And user logout from CAS
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 7
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user is on "<Page>" page of "<ApplicationStage>"
    And user opened lien details tab of "<Page>"
    And user selects lien details history button
    Then lien history details are displayed
    Examples:
      | Field              | Page             | approved_rejected | CollSubType   | ProductType   | ApplicationStage   | ApplicantType   | LienDetails_sheet_rowNum |
      | Accepted Valuation | Property Details | approved          | <CollSubType> | <ProductType> | <ApplicationStage> | <ApplicantType> | 49                       |
      | Accepted Valuation | Property Details | rejected          | <CollSubType> | <ProductType> | <ApplicationStage> | <ApplicantType> | 66                       |

 #${ProductType:["IPF","IAF","OMNI",HF","PF","HL","LAP","CV","MHL","CEQ"]}
  #${ApplicationStage:["Lead Details",Login Acceptanace","DDE","Recommendation","Credit Approval","Reconsideration","Disbursal Initiation"]}
  #${CollSubType:["Ready Property","Builder Property Under Construction","Plot Plus Self Construction","Construction On Land","Purchase a Plot"]}
 #${ApplicantType:["indiv","nonindiv"]}
  @ImplementedBy-richa.singh
    @Release
  #FeatureID-ACAUTOCAS-5079
  Scenario Outline:Validation of successfully <close_minimize> lien details history pop up in lien details for <CollSubType> of home loan at <ApplicationStage>
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
    And user selects lien details history button
    When user "<close_minimize>" the lien details history
    Then lien details history page should "<close_minimize>" successfully
    Examples:
      | Field              | Page             | close_minimize | CollSubType   | ProductType   | ApplicationStage   | ApplicantType   |
      | Accepted Valuation | Property Details | close          | <CollSubType> | <ProductType> | <ApplicationStage> | <ApplicantType> |
      | Accepted Valuation | Property Details | minimize       | <CollSubType> | <ProductType> | <ApplicationStage> | <ApplicantType> |

#${ProductType:["MAL"]}
  #${ApplicationStage:["Lead Details",Login Acceptanace","DDE","Recommendation","Credit Approval","Reconsideration","Disbursal Initiation"]}
  #${CollSubType:["Consumer Vehicle"]}
  #${ApplicantType:["indiv","nonindiv"]}
  @ImplementedBy-richa.singh
    @Release
  Scenario Outline:Validation of successfully <close_minimize> lien details history pop up in lien details for <CollSubType> of <ProductType> at <ApplicationStage>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user is on "<Page>" page of "<ApplicationStage>"
    And user opened lien details tab of "<Page>"
    And user selects lien details history button
    When user "<close_minimize>" the lien details history
    Then lien details history page should "<close_minimize>" successfully
    Examples:
      | Page          | close_minimize | CollSubType   | ProductType   | ApplicationStage   | ApplicantType   |
      | Asset Details | close          | <CollSubType> | <ProductType> | <ApplicationStage> | <ApplicantType> |
      | Asset Details | minimize       | <CollSubType> | <ProductType> | <ApplicationStage> | <ApplicantType> |

  #${ProductType:["IPF","IAF","OMNI",HF","PF","HL","LAP","CV","MHL","CEQ"]}
  #${ApplicationStage:["Lead Details",Login Acceptanace","DDE","Recommendation","Credit Approval","Reconsideration","Disbursal Initiation"]}
  #${CollSubType:["Ready Property","Builder Property Under Construction","Plot Plus Self Construction","Construction On Land","Purchase a Plot"]}
 #${ApplicantType:["indiv","nonindiv"]}
  @ImplementedBy-richa.singh
    @Release
  #FeatureID-ACAUTOCAS-5079
  Scenario Outline:Validation of successfully maximize lien details history pop up in lien details for <CollSubType> of <ProductType> at <ApplicationStage>
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
    And user selects lien details history button
    And user minimize the lien details history popup
    When user maximize the lien details history popup
    Then lien details history page should maximize successfully
    Examples:
      | Field              | Page             | CollSubType   | ProductType   | ApplicationStage   | ApplicantType   |
      | Accepted Valuation | Property Details | <CollSubType> | <ProductType> | <ApplicationStage> | <ApplicantType> |

  #${ProductType:["MAL"]}
  #${ApplicationStage:["Lead Details",Login Acceptanace","DDE","Recommendation","Credit Approval","Reconsideration","Disbursal Initiation"]}
  #${CollSubType:["Consumer Vehicle"]}
  #${ApplicantType:["indiv","nonindiv"]}
  @ImplementedBy-richa.singh
    @Release
  Scenario Outline:Validation of successfully maximize lien details history pop up in lien details for <CollSubType> of <ProductType> at <ApplicationStage>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user is on "<Page>" page of "<ApplicationStage>"
    And user opened lien details tab of "<Page>"
    And user selects lien details history button
    And user minimize the lien details history popup
    When user maximize the lien details history popup
    Then lien details history page should maximize successfully
    Examples:
      | Page          | CollSubType   | ProductType   | ApplicationStage   | ApplicantType   |
      | Asset Details | <CollSubType> | <ProductType> | <ApplicationStage> | <ApplicantType> |


  #${ProductType:["IPF","IAF","OMNI",HF","PF","HL","LAP","CV","MHL","CEQ"]}
  #${ApplicationStage:["Lead Details",Login Acceptanace","DDE","Recommendation","Credit Approval","Reconsideration","Disbursal Initiation"]}
  #${CollSubType:["Ready Property","Builder Property Under Construction","Plot Plus Self Construction","Construction On Land","Purchase a Plot"]}
 #${ApplicantType:["indiv","nonindiv"]}
  @ImplementedBy-richa.singh
    @Release
   #FeatureID-ACAUTOCAS-5079
  Scenario Outline:Validate refresh button in lien details for <CollSubType> of home loan at <ApplicationStage>
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
    And user reads data from the excel file "lien_details.xlsx" under sheet "lien_details_home" and row 1
    And user enters hair cut percentage
    And user selects refresh button
    When user selects ok on warning pop up
    Then unsaved data is removed from lien details home page
    Examples:
      | Field              | Page             | ProductType   | ApplicationStage   | CollSubType   | ApplicantType   |
      | Accepted Valuation | Property Details | <ProductType> | <ApplicationStage> | <CollSubType> | <ApplicantType> |

  #${ProductType:["MAL"]}
  #${ApplicationStage:["Lead Details",Login Acceptanace","DDE","Recommendation","Credit Approval","Reconsideration","Disbursal Initiation"]}
  #${CollSubType:["Consumer Vehicle"]}
  #${ApplicantType:["indiv","nonindiv"]}
  @ImplementedBy-richa.singh
    @Release
  Scenario Outline:Validate refresh button in lien details for <CollSubType> of <ProductType> at <ApplicationStage>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user is on "<Page>" page of "<ApplicationStage>"
    And user opened lien details tab of "<Page>"
    And user reads data from the excel file "lien_details.xlsx" under sheet "lien_details_home" and row 1
    And user enters hair cut percentage
    When user selects refresh button
    Then unsaved data is removed from lien detail home page
    Examples:
      | Page          | ProductType   | ApplicationStage   | CollSubType   | ApplicantType   |
      | Asset Details | <ProductType> | <ApplicationStage> | <CollSubType> | <ApplicantType> |

  #${ProductType:["IPF","IAF","OMNI",HF","PF","HL","LAP","CV","MHL","CEQ"]}
  #${ApplicationStage:["Lead Details",Login Acceptanace","DDE","Recommendation","Credit Approval","Reconsideration","Disbursal Initiation"]}
  #${CollSubType:["Ready Property","Builder Property Under Construction","Plot Plus Self Construction","Construction On Land","Purchase a Plot"]}
  #${ApplicantType:["indiv","nonindiv"]}
  @ImplementedBy-richa.singh
    @Release
  #FeatureID-ACAUTOCAS-5079
  Scenario Outline:Validation of successfully <close_minimize> warning pop up of refresh button in lien details for <CollSubType> of home at <ApplicationStage>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user is on "<Page>" page of "<ApplicationStage>"
    And user delink the collateral of "<Page>"
    And user reads property details excel from datatable on the basis of "Builder Property Under Construction" type
      | property_details.xlsx | home | 136 | Ready Property                      |
      | property_details.xlsx | home | 138 | Builder Property Under Construction |
      | property_details.xlsx | home | 135 | Plot Plus Self Construction         |
      | property_details.xlsx | home | 137 | Construction On Land                |
      | property_details.xlsx | home | 139 | Purchase a Plot                     |
    And "<Field>" is filled in "<Page>" for "Builder Property Under Construction"
    And user reads data from the excel file "property_details.xlsx" under sheet "other_details" and row 26
    And user fills other details of "<Page>"
    And user saves the details of "<Page>"
    And user opened lien details tab of "<Page>"
    And user reads data from the excel file "lien_details.xlsx" under sheet "lien_details_home" and row 16
    And user enters hair cut percentage
    When user selects refresh button
    And user "<close_minimize>" the warning pop up
    Then waring pop up "<close_minimize>" successfully
    Examples:
      | Field              | Page             | close_minimize | CollSubType   | ProductType   | ApplicationStage   | ApplicantType   |
      | Accepted Valuation | Property Details | close          | <CollSubType> | <ProductType> | <ApplicationStage> | <ApplicantType> |
      | Accepted Valuation | Property Details | minimize       | <CollSubType> | <ProductType> | <ApplicationStage> | <ApplicantType> |

  #${ProductType:["MAL"]}
  #${ApplicationStage:["Lead Details",Login Acceptanace","DDE","Recommendation","Credit Approval","Reconsideration","Disbursal Initiation"]}
  #${CollSubType:["Consumer Vehicle"]}
  #${ApplicantType:["indiv","nonindiv"]}
  @ImplementedBy-richa.singh
    @Release
  Scenario Outline:Validation of successfully <close_minimize> warning pop up of refresh button in lien details for <CollSubType> of <ProductType> at <ApplicationStage>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user is on "<Page>" page of "<ApplicationStage>"
    And user opened lien details tab of "<Page>"
    And user reads data from the excel file "lien_details.xlsx" under sheet "lien_details_home" and row 16
    And user enters hair cut percentage
    When user selects refresh button
    And user "<close_minimize>" the warning pop up
    Then waring pop up "<close_minimize>" successfully
    Examples:
      | Page          | close_minimize | CollSubType   | ProductType   | ApplicationStage   | ApplicantType   |
      | Asset Details | close          | <CollSubType> | <ProductType> | <ApplicationStage> | <ApplicantType> |
      | Asset Details | minimize       | <CollSubType> | <ProductType> | <ApplicationStage> | <ApplicantType> |

  #${ProductType:["IPF","IAF","OMNI",HF","PF","HL","LAP","CV","MHL","CEQ"]}
  #${ApplicationStage:["Lead Details",Login Acceptanace","DDE","Recommendation","Credit Approval","Reconsideration","Disbursal Initiation"]}
  #${CollSubType:["Ready Property","Builder Property Under Construction","Plot Plus Self Construction","Construction On Land","Purchase a Plot"]}
  #${ApplicantType:["indiv","nonindiv"]}
  @ImplementedBy-richa.singh
    @Release
  #FeatureID-ACAUTOCAS-5079
  Scenario Outline:Validation of successfully maximize warning pop up of refresh button in lien details for <CollSubType> of home loan at <ApplicationStage>
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
    And user reads data from the excel file "lien_details.xlsx" under sheet "lien_details_home" and row 16
    And user enters hair cut percentage
    And user selects refresh button
    And user minimize the warning pop up
    When user maximize the warning pop up
    Then warning pop up is maximized successfully
    Examples:
      | Field              | Page             | CollSubType   | ProductType   | ApplicationStage   | ApplicantType   |
      | Accepted Valuation | Property Details | <CollSubType> | <ProductType> | <ApplicationStage> | <ApplicantType> |

   #${ProductType:["MAL"]}
 #${ApplicationStage:["Lead Details",Login Acceptanace","DDE","Recommendation","Credit Approval","Reconsideration","Disbursal Initiation"]}
  #${CollSubType:["Consumer Vehicle"]}
  #${ApplicantType:["indiv","nonindiv"]}
  @ImplementedBy-richa.singh
    @Release
  Scenario Outline:Validation of successfully maximize warning pop up of refresh button in lien details for <CollSubType> of <ProductType> at <ApplicationStage>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user is on "<Page>" page of "<ApplicationStage>"
    And user is on "<Page>" page of "<ApplicationStage>"
    And user opened lien details tab of "<Page>"
    And user reads data from the excel file "lien_details.xlsx" under sheet "lien_details_home" and row 16
    And user enters hair cut percentage
    And user selects refresh button
    And user minimize the warning pop up
    When user maximize the warning pop up
    Then warning pop up is maximized successfully
    Examples:
      | Page          | ProductType   | ApplicationStage   | ApplicantType   | CollSubType   |
      | Asset Details | <ProductType> | <ApplicationStage> | <ApplicantType> | <CollSubType> |

      #${ProductType:["IPF","IAF","OMNI",HF","PF","HL","LAP","CV","MHL","CEQ"]}
    #${ApplicationStage:["Lead Details",Login Acceptanace","DDE","Recommendation","Credit Approval","Reconsideration","Disbursal Initiation"]}
  #${CollSubType:["Ready Property","Builder Property Under Construction","Plot Plus Self Construction","Construction On Land","Purchase a Plot"]}
  #${ApplicantType:["indiv","nonindiv"]}
  @ImplementedBy-richa.singh
    @Release
  #FeatureID-ACAUTOCAS-5079
  Scenario Outline:Validate <Field_Name> automatically come based on collateral details in lien details for <CollSubType> of home loan at <ApplicationStage>
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
    And user is on "<Page>" page of "<ApplicationStage>"
    And user read data of "<Page>"
    When user opened lien details tab of "<Page>"
    Then "<Field_Name>" is filled correctly based on collateral details of "<Page>"
    Examples:
      | Field              | Page             | Field_Name          | CollSubType   | ProductType   | ApplicationStage   | ApplicantType   |
      | Accepted Valuation | Property Details | Collateral Number   | <CollSubType> | <ProductType> | <ApplicationStage> | <ApplicantType> |
      | Accepted Valuation | Property Details | Collateral type     | <CollSubType> | <ProductType> | <ApplicationStage> | <ApplicantType> |
      | Accepted Valuation | Property Details | Collateral SubType  | <CollSubType> | <ProductType> | <ApplicationStage> | <ApplicantType> |
      | Accepted Valuation | Property Details | Collateral Value    | <CollSubType> | <ProductType> | <ApplicationStage> | <ApplicantType> |
      | Accepted Valuation | Property Details | Last Valuation Date | <CollSubType> | <ProductType> | <ApplicationStage> | <ApplicantType> |


  #${ProductType:["MAL"]}
 #${ApplicationStage:["Lead Details",Login Acceptanace","DDE","Recommendation","Credit Approval","Reconsideration","Disbursal Initiation"]}
  #${CollSubType:["Consumer Vehicle"]}
  #${ApplicantType:["indiv","nonindiv"]}
  @ImplementedBy-richa.singh
    @Release
  Scenario Outline:Validate <Field_Name> automatically come based on collateral details in lien details for <CollSubType> of <ProductType> at <ApplicationStage>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user is on "<Page>" page of "<ApplicationStage>"
    And user is on "<Page>" page of "<ApplicationStage>"
    And user read data of "<Page>"
    When user opened lien details tab of "<Page>"
    Then "<Field_Name>" is filled correctly based on collateral details of "<Page>"
    Examples:
      | Page          | Field_Name         | ProductType   | ApplicationStage   | ApplicantType   | CollSubType   |
      | Asset Details | Collateral Number  | <ProductType> | <ApplicationStage> | <ApplicantType> | <CollSubType> |
      | Asset Details | Collateral SubType | <ProductType> | <ApplicationStage> | <ApplicantType> | <CollSubType> |
      | Asset Details | Collateral Value   | <ProductType> | <ApplicationStage> | <ApplicantType> | <CollSubType> |


 #${ProductType:["IPF","IAF","OMNI",HF","PF","HL","LAP","CV","MHL","CEQ"]}
 #${ApplicationStage:["Lead Details",Login Acceptanace","DDE","Recommendation","Credit Approval","Reconsideration","Disbursal Initiation"]}
 #${ApplicantType:["indiv","nonindiv"]}
 #${CollSubType:["Ready Property","Builder Property Under Construction","Plot Plus Self Construction","Construction On Land","Purchase a Plot"]}
  @ImplementedBy-richa.singh
    @Release
  #FeatureID-ACAUTOCAS-5079
  Scenario Outline:Validate <Fields> is correctly filled on adding <Field_Name> in lien details for <CollSubType> of home loan at <ApplicationStage>
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
    And user reads data from the excel file "lien_details.xlsx" under sheet "lien_details_home" and row <Lien_lienDetails_rowNo>
    When user fills "<Field_Name>" in lien details home page
    Then "<Fields>" is autofilled correctly
    Examples:
      | Field              | Page             | Field_Name          | Fields                     | Lien_lienDetails_rowNo | CollSubType   | ProductType   | ApplicationStage   | ApplicantType   |
      | Accepted Valuation | Property Details | Hair Cut (%)        | Extension Ratio (%)        | 21                     | <CollSubType> | <ProductType> | <ApplicationStage> | <ApplicantType> |
      | Accepted Valuation | Property Details | Extension Ratio (%) | Hair Cut (%)               | 22                     | <CollSubType> | <ProductType> | <ApplicationStage> | <ApplicantType> |
      | Accepted Valuation | Property Details | Hair Cut (%)        | Relisable Value            | 23                     | <CollSubType> | <ProductType> | <ApplicationStage> | <ApplicantType> |
      | Accepted Valuation | Property Details | Hair Cut (%)        | Value Available for Pledge | 24                     | <CollSubType> | <ProductType> | <ApplicationStage> | <ApplicantType> |

 #${ProductType:["MAL"]}
 #${ApplicationStage:["Lead Details",Login Acceptanace","DDE","Recommendation","Credit Approval","Reconsideration","Disbursal Initiation"]}
 #${ApplicantType:["indiv","nonindiv"]}
 #${CollSubType:["Consumer Vehicle"]}
  @ImplementedBy-richa.singh
    @Release
  Scenario Outline:Validate <Fields> is correctly filled on adding <Field_Name> in lien details for <CollSubType> of <ProductType> at <ApplicationStage>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user is on "<Page>" page of "<ApplicationStage>"
    And user opened lien details tab of "<Page>"
    And user reads data from the excel file "lien_details.xlsx" under sheet "lien_details_home" and row <Lien_lienDetails_rowNo>
    When user fills "<Field_Name>" in lien details home page
    Then "<Fields>" is autofilled correctly
    Examples:
      | Page          | Field_Name          | Fields                     | Lien_lienDetails_rowNo | ProductType   | ApplicationStage   | ApplicantType   | CollSubType   |
      | Asset Details | Hair Cut (%)        | Extension Ratio (%)        | 21                     | <ProductType> | <ApplicationStage> | <ApplicantType> | <CollSubType> |
      | Asset Details | Extension Ratio (%) | Hair Cut (%)               | 22                     | <ProductType> | <ApplicationStage> | <ApplicantType> | <CollSubType> |
      | Asset Details | Hair Cut (%)        | Relisable Value            | 23                     | <ProductType> | <ApplicationStage> | <ApplicantType> | <CollSubType> |
      | Asset Details | Hair Cut (%)        | Value Available for Pledge | 24                     | <ProductType> | <ApplicationStage> | <ApplicantType> | <CollSubType> |

