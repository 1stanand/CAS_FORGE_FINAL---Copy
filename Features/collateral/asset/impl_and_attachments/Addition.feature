@Epic-Secondary_Collateral
@AuthoredBy-rsurya.kumar
#CreateDate: 29th Apr 2024
#ScriptedBy:
#ReviewedBy:
#Scenarios: =
@ReviewedByGWT
@Regression @CAS @Collateral @TypeAsset @SubTypeImplementsAndAttachments
@new
@Release
@Part-2

# ${CollateralType:["Asset"]}
# ${CollateralSubType:["Implements and Attachments"]}
#${ApplicantType:["indiv", "nonindiv"]}

Feature: Addition of Implements and Attachments as secondary collateral

#  Pre-Requisites---
#  In this feature we will attach an Asset Type Collateral-Implements and Attachments to the loan application.
#  Ensure the Product Type Collateral Mapping is available in Collateral_Setup.xlsx using the query Collateral_Setup.sql
#  Ensure the Product Collateral Mapping is available in Prod_Collateral_Setup.xlsx using the query Prod_Collateral_Setup.sql

# property_value column in configuration table for property_key = "config.allow.vehicle.fourBlock.registrationNumber" is set to TRUE
# in case the vehicle registration no breakup is to be captured.

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0


  @Perishable
  #FeatureID-ACAUTOCAS-8108,CAS-22950
  Scenario Outline: ACAUTOCAS-8772:  At <ApplicationStage> stage user moves secured <ProductType> application to the next stage without collateral
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user open collateral page of "<ApplicationStage>" stage
    And user deletes the collateral based on sub type
    And user selects document tab
    And user submits the given document
    When user moves to the next stage
    Then application should be moved to "<NextStage>" stage successfully
    @ImplementedBy-rishabh.sachan
    @Conventional
    # ${ProductType:["PF"]}
    # ${ApplicationStage:["DDE"]}
    Examples:
      | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | NextStage      |
      | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Recommendation |

    @ImplementedBy-pallavi.singh
    @Islamic
    # ${ProductType:["IPF"]}
    # ${Category:["shares","bonds","metals"]}
    # ${ApplicationStage:["DDE"]}
    Examples:
      | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | NextStage      |
      | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | Recommendation |

  @Perishable
  #FeatureID-ACAUTOCAS-8108,CAS-22950
  Scenario Outline: ACAUTOCAS-8773:  At post approval stage user moves secured <ProductType> application to the next stage without collateral
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user open collateral page of "<ApplicationStage>" stage
    And user deletes the collateral based on sub type
    When user moves to the next stage in collateral
    Then user gets a notification message
    @ImplementedBy-rishabh.sachan
    @Conventional
    # ${ProductType:["PF"]}
    # ${ApplicationStage:["Post Approval"]}
    Examples:
      | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralWB    | Collateral_default | Collateral_default_rowNum |
      | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | collateral.xlsx | default            | 576                       |

    @ImplementedBy-pallavi.singh
    @Islamic
    # ${ProductType:["IPF"]}
    # ${Category:["shares","bonds","metals"]}
    # ${ApplicationStage:["Post Approval"]}
    Examples:
      | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralWB    | Collateral_default | Collateral_default_rowNum |
      | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | collateral.xlsx | default            | 576                       |


  @Perishable
  #FeatureID-ACAUTOCAS-8108,CAS-22950
  Scenario Outline: ACAUTOCAS-8774:  At <ApplicationStage> stage user deletes and moves secured <ProductType> application to the next stage without collateral
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user open collateral page of "<ApplicationStage>" stage
    And user deletes the collateral based on sub type
    When user moves to the next stage in collateral
    Then user should not get collateral details not saved error message
    @ImplementedBy-rishabh.sachan
    @Conventional
    # ${ProductType:["PF"]}
    # ${ApplicationStage:["Recommendation","Credit Approval","Reconsideration","Disbursal"]}
    Examples:
      | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralWB    | Collateral_default | Collateral_default_rowNum |
      | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | collateral.xlsx | default            | 576                       |

    @ImplementedBy-pallavi.singh
    @Islamic
    # ${ProductType:["IPF"]}
    # ${Category:["shares","bonds","metals"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    Examples:
      | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralWB    | Collateral_default | Collateral_default_rowNum |
      | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | collateral.xlsx | default            | 576                       |


  @Perishable
  #FeatureID-ACAUTOCAS-8108,CAS-22950
  Scenario Outline: ACAUTOCAS-8775:  user moves <ProductType> application to the next stage with collateral at <ApplicationStage>
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user open collateral page of "<ApplicationStage>" stage
    And user deletes the collateral based on sub type
    And user add new collateral details
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_assetDetails>" and row <Collateral_assetDetails_rowNum>
    And user selects collateral type along with collateral sub type
    And user fills mandatory fields for "<CollateralSubType>" collateral
    And user checks the duplicates on collateral dedupe check
    And user saves the Collateral Details
    When user moves to the next stage in collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    Then user should not get collateral details not saved error message
    @ImplementedBy-rishabh.sachan
    @Conventional
    # ${ProductType:["PF"]}
    # ${ApplicationStage:["Recommendation","Reconsideration","Disbursal"]}
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Category | Key | CollateralWB    | Collateral_assetDetails | Collateral_assetDetails_rowNum | Collateral_default | Collateral_default_rowNum | CollateralSubType   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | collateral.xlsx | asset_details           | 252                            | default            | 576                       | <CollateralSubType> |

    @ImplementedBy-pallavi.singh
    @Islamic
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["Recommendation","Reconsideration"]}
    # ${Category:["shares","bonds","metals"]}
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Category   | Key | CollateralWB    | Collateral_assetDetails | Collateral_assetDetails_rowNum | Collateral_default | Collateral_default_rowNum | CollateralSubType   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | collateral.xlsx | asset_details           | 252                            | default            | 576                       | <CollateralSubType> |


###Story:CAS-22950
###Bug:
#FeatureID-ACAUTOCAS-8108,CAS-22950
  Scenario Outline: ACAUTOCAS-8776:  User enters mandatory information in Collateral Details for <CollateralSubType> for <ProductType> application at <ApplicationStage> stage and saves without dedupe
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_assetDetails>" and row <Collateral_assetDetails_rowNum>
    And user selects collateral type along with collateral sub type
    And user fills mandatory fields for "<CollateralSubType>" collateral
    When user checks for duplicate collateral
    Then user gets a notification message
    @ImplementedBy-rishabh.sachan
    @Conventional
    # ${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration","Disbursal"]}
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Category | Key | CollateralWB    | Collateral_assetDetails | Collateral_assetDetails_rowNum | CollateralSubType   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | collateral.xlsx | asset_details           | 254                            | <CollateralSubType> |

    @ImplementedBy-pallavi.singh
    @Islamic
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Category   | Key | CollateralWB    | Collateral_assetDetails | Collateral_assetDetails_rowNum | CollateralSubType   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | collateral.xlsx | asset_details           | 254                            | <CollateralSubType> |

    @ImplementedBy-pallavi.singh
    @Islamic
    #${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Category | Key | CollateralWB    | Collateral_assetDetails | Collateral_assetDetails_rowNum | CollateralSubType   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | collateral.xlsx | asset_details           | 254                            | <CollateralSubType> |


###Story:CAS-22950
###Bug:
# FeatureID-ACAUTOCAS-8108,CAS-22950
  Scenario Outline: ACAUTOCAS-8778:  User enters mandatory information in Collateral Details for <CollateralSubType> for <ProductType> application at <ApplicationStage> stage and dedupes
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_assetDetails>" and row <Collateral_assetDetails_rowNum>
    And user selects collateral type along with collateral sub type
    And user fills mandatory fields for "<CollateralSubType>" collateral
    When user checks for duplicate collateral
    Then user gets a notification message
    @ImplementedBy-rishabh.sachan
    @Conventional
    # ${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration","Disbursal"]}
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Category | Key | CollateralWB    | Collateral_assetDetails | Collateral_assetDetails_rowNum | CollateralSubType   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | collateral.xlsx | asset_details           | 254                            | <CollateralSubType> |

    @ImplementedBy-pallavi.singh
    @Islamic
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Category   | Key | CollateralWB    | Collateral_assetDetails | Collateral_assetDetails_rowNum | CollateralSubType   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | collateral.xlsx | asset_details           | 254                            | <CollateralSubType> |

    @ImplementedBy-pallavi.singh
    @Islamic
    #${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Category | Key | CollateralWB    | Collateral_assetDetails | Collateral_assetDetails_rowNum | CollateralSubType   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | collateral.xlsx | asset_details           | 254                            | <CollateralSubType> |


###Story:CAS-22950
###Bug:
# FeatureID-ACAUTOCAS-8108,CAS-22950
  Scenario Outline: ACAUTOCAS-8780:  User enters mandatory information for <CollateralSubType> for <ProductType> application at <ApplicationStage> stage and saves without dedupe
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_assetDetails>" and row <Collateral_assetDetails_rowNum>
    And user selects collateral type along with collateral sub type
    And user fills mandatory fields for "<CollateralSubType>" collateral
    When user saves the Collateral Details
    Then user gets a notification message
    @ImplementedBy-rishabh.sachan
    @Conventional
    # ${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration","Disbursal"]}
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Category | Key | CollateralWB    | Collateral_assetDetails | Collateral_assetDetails_rowNum | CollateralSubType   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | collateral.xlsx | asset_details           | 253                            | <CollateralSubType> |

    @ImplementedBy-pallavi.singh
    @Islamic
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Category   | Key | CollateralWB    | Collateral_assetDetails | Collateral_assetDetails_rowNum | CollateralSubType   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | collateral.xlsx | asset_details           | 253                            | <CollateralSubType> |

    @ImplementedBy-pallavi.singh
    @Islamic
    #${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Category | Key | CollateralWB    | Collateral_assetDetails | Collateral_assetDetails_rowNum | CollateralSubType   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | collateral.xlsx | asset_details           | 253                            | <CollateralSubType> |


###Story:CAS-22950
###Bug:
#FeatureID-ACAUTOCAS-8108,CAS-22950
  Scenario Outline: ACAUTOCAS-8782:  User enters mandatory information for <CollateralSubType> for <ProductType> application at <ApplicationStage> stage with <Description> is <Validity> value on <Field>
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_assetDetails>" and row <Collateral_assetDetails_rowNum>
    And user selects collateral type along with collateral sub type
    And user fills mandatory fields for "<CollateralSubType>" collateral
    And user fill "<Field>" of collateral details for collateral subtype
    And user checks the duplicates on collateral dedupe check
    When user saves the Collateral Details
    Then user is able to validate addition of collateral for "<Validity>" data
    @ImplementedBy-rishabh.sachan
    @Conventional
    # ${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration","Disbursal"]}
    Examples:
      | Validity | Field                  | Description                      | CollateralWB    | Collateral_assetDetails | Collateral_assetDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | valid    | Collateral Ref No      | positive digits                  | collateral.xlsx | asset_details           | 255                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | Collateral Ref No      | characters                       | collateral.xlsx | asset_details           | 256                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | Collateral Ref No      | both digits and characters       | collateral.xlsx | asset_details           | 257                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | Collateral Ref No      | negative                         | collateral.xlsx | asset_details           | 258                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | Collateral Ref No      | hyphen                           | collateral.xlsx | asset_details           | 259                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | Collateral Ref No      | space                            | collateral.xlsx | asset_details           | 260                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Collateral Ref No      | special characters               | collateral.xlsx | asset_details           | 261                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | Description            | positive digits                  | collateral.xlsx | asset_details           | 262                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | Description            | characters                       | collateral.xlsx | asset_details           | 263                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | Description            | both digits and characters       | collateral.xlsx | asset_details           | 264                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | Description            | negative                         | collateral.xlsx | asset_details           | 265                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | Description            | space                            | collateral.xlsx | asset_details           | 266                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | Description            | special characters except hyphen | collateral.xlsx | asset_details           | 267                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | OLV Grid Value         | positive digits                  | collateral.xlsx | asset_details           | 268                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | OLV Grid Value         | characters                       | collateral.xlsx | asset_details           | 269                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | OLV Grid Value         | both digits and characters       | collateral.xlsx | asset_details           | 270                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | OLV Grid Value         | negative                         | collateral.xlsx | asset_details           | 271                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | OLV Grid Value         | hyphen                           | collateral.xlsx | asset_details           | 272                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | OLV Grid Value         | space                            | collateral.xlsx | asset_details           | 273                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | OLV Grid Value         | special characters               | collateral.xlsx | asset_details           | 274                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | Insured Declared Value | positive digits                  | collateral.xlsx | asset_details           | 275                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Insured Declared Value | characters                       | collateral.xlsx | asset_details           | 276                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Insured Declared Value | both digits and characters       | collateral.xlsx | asset_details           | 277                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Insured Declared Value | negative                         | collateral.xlsx | asset_details           | 278                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Insured Declared Value | hyphen                           | collateral.xlsx | asset_details           | 279                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Insured Declared Value | space                            | collateral.xlsx | asset_details           | 280                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Insured Declared Value | special characters               | collateral.xlsx | asset_details           | 281                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | Asset Cost             | positive digits                  | collateral.xlsx | asset_details           | 282                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Asset Cost             | characters                       | collateral.xlsx | asset_details           | 283                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Asset Cost             | both digits and characters       | collateral.xlsx | asset_details           | 284                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Asset Cost             | negative                         | collateral.xlsx | asset_details           | 285                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Asset Cost             | hyphen                           | collateral.xlsx | asset_details           | 286                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Asset Cost             | space                            | collateral.xlsx | asset_details           | 287                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Asset Cost             | special characters               | collateral.xlsx | asset_details           | 288                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |

    @ImplementedBy-pallavi.singh
    @Islamic
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    Examples:
      | Validity | Field                  | Description                      | CollateralWB    | Collateral_assetDetails | Collateral_assetDetails_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   |
      | valid    | Collateral Ref No      | positive digits                  | collateral.xlsx | asset_details           | 255                            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | valid    | Collateral Ref No      | characters                       | collateral.xlsx | asset_details           | 256                            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | valid    | Collateral Ref No      | both digits and characters       | collateral.xlsx | asset_details           | 257                            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | valid    | Collateral Ref No      | negative                         | collateral.xlsx | asset_details           | 258                            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | valid    | Collateral Ref No      | hyphen                           | collateral.xlsx | asset_details           | 259                            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | valid    | Collateral Ref No      | space                            | collateral.xlsx | asset_details           | 260                            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | invalid  | Collateral Ref No      | special characters               | collateral.xlsx | asset_details           | 261                            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | valid    | Description            | positive digits                  | collateral.xlsx | asset_details           | 262                            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | valid    | Description            | characters                       | collateral.xlsx | asset_details           | 263                            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | valid    | Description            | both digits and characters       | collateral.xlsx | asset_details           | 264                            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | valid    | Description            | negative                         | collateral.xlsx | asset_details           | 265                            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | valid    | Description            | space                            | collateral.xlsx | asset_details           | 266                            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | valid    | Description            | special characters except hyphen | collateral.xlsx | asset_details           | 267                            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | valid    | OLV Grid Value         | positive digits                  | collateral.xlsx | asset_details           | 268                            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | invalid  | OLV Grid Value         | characters                       | collateral.xlsx | asset_details           | 269                            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | invalid  | OLV Grid Value         | both digits and characters       | collateral.xlsx | asset_details           | 270                            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | invalid  | OLV Grid Value         | negative                         | collateral.xlsx | asset_details           | 271                            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | invalid  | OLV Grid Value         | hyphen                           | collateral.xlsx | asset_details           | 272                            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | invalid  | OLV Grid Value         | space                            | collateral.xlsx | asset_details           | 273                            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | invalid  | OLV Grid Value         | special characters               | collateral.xlsx | asset_details           | 274                            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | valid    | Insured Declared Value | positive digits                  | collateral.xlsx | asset_details           | 275                            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | invalid  | Insured Declared Value | characters                       | collateral.xlsx | asset_details           | 276                            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | invalid  | Insured Declared Value | both digits and characters       | collateral.xlsx | asset_details           | 277                            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | invalid  | Insured Declared Value | negative                         | collateral.xlsx | asset_details           | 278                            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | invalid  | Insured Declared Value | hyphen                           | collateral.xlsx | asset_details           | 279                            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | invalid  | Insured Declared Value | space                            | collateral.xlsx | asset_details           | 280                            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | invalid  | Insured Declared Value | special characters               | collateral.xlsx | asset_details           | 281                            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | valid    | Asset Cost             | positive digits                  | collateral.xlsx | asset_details           | 282                            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | invalid  | Asset Cost             | characters                       | collateral.xlsx | asset_details           | 283                            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | invalid  | Asset Cost             | both digits and characters       | collateral.xlsx | asset_details           | 284                            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | invalid  | Asset Cost             | negative                         | collateral.xlsx | asset_details           | 285                            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | invalid  | Asset Cost             | hyphen                           | collateral.xlsx | asset_details           | 286                            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | invalid  | Asset Cost             | space                            | collateral.xlsx | asset_details           | 287                            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | invalid  | Asset Cost             | special characters               | collateral.xlsx | asset_details           | 288                            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |

    @ImplementedBy-pallavi.singh
    @Islamic
    #${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    Examples:
      | Validity | Field                  | Description                      | CollateralWB    | Collateral_assetDetails | Collateral_assetDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | valid    | Collateral Ref No      | positive digits                  | collateral.xlsx | asset_details           | 255                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | Collateral Ref No      | characters                       | collateral.xlsx | asset_details           | 256                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | Collateral Ref No      | both digits and characters       | collateral.xlsx | asset_details           | 257                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | Collateral Ref No      | negative                         | collateral.xlsx | asset_details           | 258                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | Collateral Ref No      | hyphen                           | collateral.xlsx | asset_details           | 259                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | Collateral Ref No      | space                            | collateral.xlsx | asset_details           | 260                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Collateral Ref No      | special characters               | collateral.xlsx | asset_details           | 261                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | Description            | positive digits                  | collateral.xlsx | asset_details           | 262                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | Description            | characters                       | collateral.xlsx | asset_details           | 263                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | Description            | both digits and characters       | collateral.xlsx | asset_details           | 264                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | Description            | negative                         | collateral.xlsx | asset_details           | 265                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | Description            | space                            | collateral.xlsx | asset_details           | 266                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | Description            | special characters except hyphen | collateral.xlsx | asset_details           | 267                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | OLV Grid Value         | positive digits                  | collateral.xlsx | asset_details           | 268                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | OLV Grid Value         | characters                       | collateral.xlsx | asset_details           | 269                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | OLV Grid Value         | both digits and characters       | collateral.xlsx | asset_details           | 270                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | OLV Grid Value         | negative                         | collateral.xlsx | asset_details           | 271                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | OLV Grid Value         | hyphen                           | collateral.xlsx | asset_details           | 272                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | OLV Grid Value         | space                            | collateral.xlsx | asset_details           | 273                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | OLV Grid Value         | special characters               | collateral.xlsx | asset_details           | 274                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | Insured Declared Value | positive digits                  | collateral.xlsx | asset_details           | 275                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Insured Declared Value | characters                       | collateral.xlsx | asset_details           | 276                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Insured Declared Value | both digits and characters       | collateral.xlsx | asset_details           | 277                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Insured Declared Value | negative                         | collateral.xlsx | asset_details           | 278                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Insured Declared Value | hyphen                           | collateral.xlsx | asset_details           | 279                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Insured Declared Value | space                            | collateral.xlsx | asset_details           | 280                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Insured Declared Value | special characters               | collateral.xlsx | asset_details           | 281                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | Asset Cost             | positive digits                  | collateral.xlsx | asset_details           | 282                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Asset Cost             | characters                       | collateral.xlsx | asset_details           | 283                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Asset Cost             | both digits and characters       | collateral.xlsx | asset_details           | 284                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Asset Cost             | negative                         | collateral.xlsx | asset_details           | 285                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Asset Cost             | hyphen                           | collateral.xlsx | asset_details           | 286                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Asset Cost             | space                            | collateral.xlsx | asset_details           | 287                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Asset Cost             | special characters               | collateral.xlsx | asset_details           | 288                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |


###Story:CAS-22950
#FeatureID-ACAUTOCAS-8108,CAS-22950
  Scenario Outline: ACAUTOCAS-8784:  User enters mandatory information in <CollateralSubType> for <ProductType> application at <ApplicationStage> stage with <Description> is <Validity> value on <Field> with new Global Collateral No
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_assetDetails>" and row <Collateral_assetDetails_rowNum>
    And user selects collateral type along with collateral sub type
    And user fills mandatory fields for "<CollateralSubType>" collateral
    And user fill "<Field>" of collateral details for collateral subtype
    And user checks the duplicates on collateral dedupe check
    When user saves the Collateral Details
    Then new collateral should be attached to the application with new Global Collateral Number on "<Validity>"
    @ImplementedBy-rishabh.sachan
    @Conventional
    # ${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration","Disbursal"]}
    Examples:
      | Validity | Field                  | Description                      | CollateralWB    | Collateral_assetDetails | Collateral_assetDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | valid    | Collateral Ref No      | positive digits                  | collateral.xlsx | asset_details           | 255                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | Collateral Ref No      | characters                       | collateral.xlsx | asset_details           | 256                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | Collateral Ref No      | both digits and characters       | collateral.xlsx | asset_details           | 257                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | Collateral Ref No      | negative                         | collateral.xlsx | asset_details           | 258                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | Collateral Ref No      | hyphen                           | collateral.xlsx | asset_details           | 259                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | Collateral Ref No      | space                            | collateral.xlsx | asset_details           | 260                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Collateral Ref No      | special characters               | collateral.xlsx | asset_details           | 261                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | Description            | positive digits                  | collateral.xlsx | asset_details           | 262                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | Description            | characters                       | collateral.xlsx | asset_details           | 263                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | Description            | both digits and characters       | collateral.xlsx | asset_details           | 264                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | Description            | negative                         | collateral.xlsx | asset_details           | 265                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | Description            | space                            | collateral.xlsx | asset_details           | 266                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | Description            | special characters except hyphen | collateral.xlsx | asset_details           | 267                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | OLV Grid Value         | positive digits                  | collateral.xlsx | asset_details           | 268                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | OLV Grid Value         | characters                       | collateral.xlsx | asset_details           | 269                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | OLV Grid Value         | both digits and characters       | collateral.xlsx | asset_details           | 270                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | OLV Grid Value         | negative                         | collateral.xlsx | asset_details           | 271                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | OLV Grid Value         | hyphen                           | collateral.xlsx | asset_details           | 272                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | OLV Grid Value         | space                            | collateral.xlsx | asset_details           | 273                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | OLV Grid Value         | special characters               | collateral.xlsx | asset_details           | 274                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | Insured Declared Value | positive digits                  | collateral.xlsx | asset_details           | 275                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Insured Declared Value | characters                       | collateral.xlsx | asset_details           | 276                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Insured Declared Value | both digits and characters       | collateral.xlsx | asset_details           | 277                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Insured Declared Value | negative                         | collateral.xlsx | asset_details           | 278                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Insured Declared Value | hyphen                           | collateral.xlsx | asset_details           | 279                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Insured Declared Value | space                            | collateral.xlsx | asset_details           | 280                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Insured Declared Value | special characters               | collateral.xlsx | asset_details           | 281                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | Asset Cost             | positive digits                  | collateral.xlsx | asset_details           | 282                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Asset Cost             | characters                       | collateral.xlsx | asset_details           | 283                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Asset Cost             | both digits and characters       | collateral.xlsx | asset_details           | 284                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Asset Cost             | negative                         | collateral.xlsx | asset_details           | 285                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Asset Cost             | hyphen                           | collateral.xlsx | asset_details           | 286                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Asset Cost             | space                            | collateral.xlsx | asset_details           | 287                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Asset Cost             | special characters               | collateral.xlsx | asset_details           | 288                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |

    @ImplementedBy-pallavi.singh
    @Islamic
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    Examples:
      | Validity | Field                  | Description                      | CollateralWB    | Collateral_assetDetails | Collateral_assetDetails_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   |
      | valid    | Collateral Ref No      | positive digits                  | collateral.xlsx | asset_details           | 255                            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | valid    | Collateral Ref No      | characters                       | collateral.xlsx | asset_details           | 256                            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | valid    | Collateral Ref No      | both digits and characters       | collateral.xlsx | asset_details           | 257                            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | valid    | Collateral Ref No      | negative                         | collateral.xlsx | asset_details           | 258                            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | valid    | Collateral Ref No      | hyphen                           | collateral.xlsx | asset_details           | 259                            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | valid    | Collateral Ref No      | space                            | collateral.xlsx | asset_details           | 260                            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | invalid  | Collateral Ref No      | special characters               | collateral.xlsx | asset_details           | 261                            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | valid    | Description            | positive digits                  | collateral.xlsx | asset_details           | 262                            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | valid    | Description            | characters                       | collateral.xlsx | asset_details           | 263                            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | valid    | Description            | both digits and characters       | collateral.xlsx | asset_details           | 264                            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | valid    | Description            | negative                         | collateral.xlsx | asset_details           | 265                            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | valid    | Description            | space                            | collateral.xlsx | asset_details           | 266                            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | valid    | Description            | special characters except hyphen | collateral.xlsx | asset_details           | 267                            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | valid    | OLV Grid Value         | positive digits                  | collateral.xlsx | asset_details           | 268                            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | invalid  | OLV Grid Value         | characters                       | collateral.xlsx | asset_details           | 269                            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | invalid  | OLV Grid Value         | both digits and characters       | collateral.xlsx | asset_details           | 270                            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | invalid  | OLV Grid Value         | negative                         | collateral.xlsx | asset_details           | 271                            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | invalid  | OLV Grid Value         | hyphen                           | collateral.xlsx | asset_details           | 272                            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | invalid  | OLV Grid Value         | space                            | collateral.xlsx | asset_details           | 273                            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | invalid  | OLV Grid Value         | special characters               | collateral.xlsx | asset_details           | 274                            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | valid    | Insured Declared Value | positive digits                  | collateral.xlsx | asset_details           | 275                            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | invalid  | Insured Declared Value | characters                       | collateral.xlsx | asset_details           | 276                            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | invalid  | Insured Declared Value | both digits and characters       | collateral.xlsx | asset_details           | 277                            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | invalid  | Insured Declared Value | negative                         | collateral.xlsx | asset_details           | 278                            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | invalid  | Insured Declared Value | hyphen                           | collateral.xlsx | asset_details           | 279                            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | invalid  | Insured Declared Value | space                            | collateral.xlsx | asset_details           | 280                            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | invalid  | Insured Declared Value | special characters               | collateral.xlsx | asset_details           | 281                            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | valid    | Asset Cost             | positive digits                  | collateral.xlsx | asset_details           | 282                            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | invalid  | Asset Cost             | characters                       | collateral.xlsx | asset_details           | 283                            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | invalid  | Asset Cost             | both digits and characters       | collateral.xlsx | asset_details           | 284                            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | invalid  | Asset Cost             | negative                         | collateral.xlsx | asset_details           | 285                            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | invalid  | Asset Cost             | hyphen                           | collateral.xlsx | asset_details           | 286                            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | invalid  | Asset Cost             | space                            | collateral.xlsx | asset_details           | 287                            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | invalid  | Asset Cost             | special characters               | collateral.xlsx | asset_details           | 288                            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |

    @ImplementedBy-pallavi.singh
    @Islamic
    #${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    Examples:
      | Validity | Field                  | Description                      | CollateralWB    | Collateral_assetDetails | Collateral_assetDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | valid    | Collateral Ref No      | positive digits                  | collateral.xlsx | asset_details           | 255                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | Collateral Ref No      | characters                       | collateral.xlsx | asset_details           | 256                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | Collateral Ref No      | both digits and characters       | collateral.xlsx | asset_details           | 257                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | Collateral Ref No      | negative                         | collateral.xlsx | asset_details           | 258                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | Collateral Ref No      | hyphen                           | collateral.xlsx | asset_details           | 259                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | Collateral Ref No      | space                            | collateral.xlsx | asset_details           | 260                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Collateral Ref No      | special characters               | collateral.xlsx | asset_details           | 261                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | Description            | positive digits                  | collateral.xlsx | asset_details           | 262                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | Description            | characters                       | collateral.xlsx | asset_details           | 263                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | Description            | both digits and characters       | collateral.xlsx | asset_details           | 264                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | Description            | negative                         | collateral.xlsx | asset_details           | 265                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | Description            | space                            | collateral.xlsx | asset_details           | 266                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | Description            | special characters except hyphen | collateral.xlsx | asset_details           | 267                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | OLV Grid Value         | positive digits                  | collateral.xlsx | asset_details           | 268                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | OLV Grid Value         | characters                       | collateral.xlsx | asset_details           | 269                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | OLV Grid Value         | both digits and characters       | collateral.xlsx | asset_details           | 270                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | OLV Grid Value         | negative                         | collateral.xlsx | asset_details           | 271                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | OLV Grid Value         | hyphen                           | collateral.xlsx | asset_details           | 272                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | OLV Grid Value         | space                            | collateral.xlsx | asset_details           | 273                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | OLV Grid Value         | special characters               | collateral.xlsx | asset_details           | 274                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | Insured Declared Value | positive digits                  | collateral.xlsx | asset_details           | 275                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Insured Declared Value | characters                       | collateral.xlsx | asset_details           | 276                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Insured Declared Value | both digits and characters       | collateral.xlsx | asset_details           | 277                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Insured Declared Value | negative                         | collateral.xlsx | asset_details           | 278                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Insured Declared Value | hyphen                           | collateral.xlsx | asset_details           | 279                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Insured Declared Value | space                            | collateral.xlsx | asset_details           | 280                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Insured Declared Value | special characters               | collateral.xlsx | asset_details           | 281                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | Asset Cost             | positive digits                  | collateral.xlsx | asset_details           | 282                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Asset Cost             | characters                       | collateral.xlsx | asset_details           | 283                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Asset Cost             | both digits and characters       | collateral.xlsx | asset_details           | 284                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Asset Cost             | negative                         | collateral.xlsx | asset_details           | 285                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Asset Cost             | hyphen                           | collateral.xlsx | asset_details           | 286                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Asset Cost             | space                            | collateral.xlsx | asset_details           | 287                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Asset Cost             | special characters               | collateral.xlsx | asset_details           | 288                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |


###Story:CAS-22950
###Bug:
#FeatureID-ACAUTOCAS-8108,CAS-22950
  Scenario Outline: ACAUTOCAS-8786:  User enters information for <CollateralSubType> for <ProductType> application at <ApplicationStage> stage and saves
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_assetDetails>" and row <Collateral_assetDetails_rowNum>
    And user selects collateral type along with collateral sub type
    And user fills all fields of home page of collateral details for given collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_implementsAndAttachmentDetails>" and row <Collateral_implementsAndAttachmentDetails_rowNum>
    And user fill all fields of implements and attachment details section
    And user checks the duplicates on collateral dedupe check
    When user saves the Collateral Details
    Then collateral should saved successfully
    @ImplementedBy-rishabh.sachan
    @Conventional
    # ${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration","Disbursal"]}
    Examples:
      | CollateralWB    | Collateral_assetDetails | Collateral_assetDetails_rowNum | Collateral_implementsAndAttachmentDetails | Collateral_implementsAndAttachmentDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | asset_details           | 289                            | implements_and_attachments                | 124                                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |

    @ImplementedBy-pallavi.singh
    @Islamic
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    Examples:
      | CollateralWB    | Collateral_assetDetails | Collateral_assetDetails_rowNum | Collateral_implementsAndAttachmentDetails | Collateral_implementsAndAttachmentDetails_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | asset_details           | 289                            | implements_and_attachments                | 124                                              | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |

    @ImplementedBy-pallavi.singh
    @Islamic
    #${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    Examples:
      | CollateralWB    | Collateral_assetDetails | Collateral_assetDetails_rowNum | Collateral_implementsAndAttachmentDetails | Collateral_implementsAndAttachmentDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | asset_details           | 289                            | implements_and_attachments                | 124                                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |


###Story:CAS-22950
#FeatureID-ACAUTOCAS-8108,CAS-22950
  Scenario Outline: ACAUTOCAS-8788:  User enters information in <CollateralSubType> for <ProductType> application at <ApplicationStage> stage and saves
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_assetDetails>" and row <Collateral_assetDetails_rowNum>
    And user selects collateral type along with collateral sub type
    And user fills all fields of home page of collateral details for given collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_implementsAndAttachmentDetails>" and row <Collateral_implementsAndAttachmentDetails_rowNum>
    And user fill all fields of implements and attachment details section
    And user checks the duplicates on collateral dedupe check
    When user saves the Collateral Details
    Then new collateral should be attached to the application with new Global Collateral Number on "<Validity>"
    @ImplementedBy-rishabh.sachan
    @Conventional
    # ${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration","Disbursal"]}
    Examples:
      | Validity | CollateralWB    | Collateral_assetDetails | Collateral_assetDetails_rowNum | Collateral_implementsAndAttachmentDetails | Collateral_implementsAndAttachmentDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | valid    | collateral.xlsx | asset_details           | 289                            | implements_and_attachments                | 124                                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |

    @ImplementedBy-pallavi.singh
    @Islamic
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    Examples:
      | Validity | CollateralWB    | Collateral_assetDetails | Collateral_assetDetails_rowNum | Collateral_implementsAndAttachmentDetails | Collateral_implementsAndAttachmentDetails_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   |
      | valid    | collateral.xlsx | asset_details           | 289                            | implements_and_attachments                | 124                                              | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |

    @ImplementedBy-pallavi.singh
    @Islamic
    #${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    Examples:
      | Validity | CollateralWB    | Collateral_assetDetails | Collateral_assetDetails_rowNum | Collateral_implementsAndAttachmentDetails | Collateral_implementsAndAttachmentDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | valid    | collateral.xlsx | asset_details           | 289                            | implements_and_attachments                | 124                                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |


###Story:CAS-22950
###Bug:
#FeatureID-ACAUTOCAS-8108,CAS-22950
  Scenario Outline: ACAUTOCAS-8790:  User modifies registration no after dedupe for <CollateralSubType> for <ProductType> application at <ApplicationStage> stage and saves
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_assetDetails>" and row <Collateral_assetDetails_rowNum>
    And user selects collateral type along with collateral sub type
    And user fills mandatory fields for "<CollateralSubType>" collateral
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    And user edits the recently added collateral
    And user navigates to Implements and Attachments Details
    And user fill "<Field>" of collateral details for collateral subtype
    When user saves the Collateral Details
    Then user gets a notification message
    @ImplementedBy-rishabh.sachan
    @Conventional
    # ${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration","Disbursal"]}
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Category | Key | CollateralWB    | Collateral_assetDetails | Collateral_assetDetails_rowNum | CollateralSubType   | Field     |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | collateral.xlsx | asset_details           | 290                            | <CollateralSubType> | RC Number |

    @ImplementedBy-pallavi.singh
    @Islamic
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Category   | Key | CollateralWB    | Collateral_assetDetails | Collateral_assetDetails_rowNum | CollateralSubType   | Field     |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | collateral.xlsx | asset_details           | 290                            | <CollateralSubType> | RC Number |

    @ImplementedBy-pallavi.singh
    @Islamic
    #${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Category | Key | CollateralWB    | Collateral_assetDetails | Collateral_assetDetails_rowNum | CollateralSubType   | Field     |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | collateral.xlsx | asset_details           | 290                            | <CollateralSubType> | RC Number |


#FeatureID-ACAUTOCAS-8108,CAS-22950
  Scenario Outline: ACAUTOCAS-8792:  User attaches a duplicate <CollateralSubType> collateral attached to same <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_assetDetails>" and row <Collateral_assetDetails_rowNum>
    And user selects collateral type along with collateral sub type
    And user fills mandatory fields for "<CollateralSubType>" collateral
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    And user add new collateral details
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_assetDetails>" and row <Collateral_assetDetails_rowNum2>
    When user selects collateral type along with collateral sub type
    And user fills mandatory fields for "<CollateralSubType>" collateral
    And checks for duplicate collateral
    And user views the duplicate collateral
    And user select the "<CollateralSubType>" collateral from dedupe result which is already attached to the application
    And user saves selected dedupe collateral
    Then user gets a notification message
    @ImplementedBy-rishabh.sachan
    @Conventional
    # ${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration","Disbursal"]}
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Category | Key | CollateralWB    | Collateral_assetDetails | Collateral_assetDetails_rowNum | Collateral_assetDetails_rowNum2 | CollateralSubType   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | collateral.xlsx | asset_details           | 290                            | 291                             | <CollateralSubType> |

    @ImplementedBy-pallavi.singh
    @Islamic
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Category   | Key | CollateralWB    | Collateral_assetDetails | Collateral_assetDetails_rowNum | Collateral_assetDetails_rowNum2 | CollateralSubType   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | collateral.xlsx | asset_details           | 290                            | 291                             | <CollateralSubType> |

    @ImplementedBy-pallavi.singh
    @Islamic
    #${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Category | Key | CollateralWB    | Collateral_assetDetails | Collateral_assetDetails_rowNum | Collateral_assetDetails_rowNum2 | CollateralSubType   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | collateral.xlsx | asset_details           | 290                            | 291                             | <CollateralSubType> |


#FeatureID-ACAUTOCAS-8108,CAS-22950
  Scenario Outline: ACAUTOCAS-8794:  At <ApplicationStage> user enters invalid data in Collateral Details field <Field> with <Description> for <CollateralSubType> attached to <ProductType> application and saves
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_assetDetails>" and row <Collateral_assetDetails_rowNum>
    And user selects collateral type along with collateral sub type
    When user fill "<Field>" of collateral details for collateral subtype
    Then "<Field>" field "<Throws_NotThrows>" error message in collateral details
    @ImplementedBy-rishabh.sachan
    @Conventional
    # ${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration","Disbursal"]}
    Examples:
      | Field                  | Description                | Throws_NotThrows                | CollateralWB    | Collateral_assetDetails | Collateral_assetDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | Collateral Ref No      | special characters         | throws error with error message | collateral.xlsx | asset_details           | 261                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | OLV Grid Value         | characters                 | throws error with error message | collateral.xlsx | asset_details           | 269                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | OLV Grid Value         | both digits and characters | throws error with error message | collateral.xlsx | asset_details           | 270                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | OLV Grid Value         | negative                   | throws error with error message | collateral.xlsx | asset_details           | 271                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | OLV Grid Value         | hyphen                     | throws error with error message | collateral.xlsx | asset_details           | 272                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | OLV Grid Value         | space                      | throws error with error message | collateral.xlsx | asset_details           | 273                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | OLV Grid Value         | special characters         | throws error with error message | collateral.xlsx | asset_details           | 274                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Insured Declared Value | characters                 | throws error with error message | collateral.xlsx | asset_details           | 276                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Insured Declared Value | both digits and characters | throws error with error message | collateral.xlsx | asset_details           | 277                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Insured Declared Value | negative                   | throws error with error message | collateral.xlsx | asset_details           | 278                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Insured Declared Value | hyphen                     | throws error with error message | collateral.xlsx | asset_details           | 279                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Insured Declared Value | space                      | throws error with error message | collateral.xlsx | asset_details           | 280                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Insured Declared Value | special characters         | throws error with error message | collateral.xlsx | asset_details           | 281                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Asset Cost             | characters                 | throws error with error message | collateral.xlsx | asset_details           | 283                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Asset Cost             | both digits and characters | throws error with error message | collateral.xlsx | asset_details           | 284                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Asset Cost             | negative                   | throws error with error message | collateral.xlsx | asset_details           | 285                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Asset Cost             | hyphen                     | throws error with error message | collateral.xlsx | asset_details           | 286                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Asset Cost             | space                      | throws error with error message | collateral.xlsx | asset_details           | 287                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Asset Cost             | special characters         | throws error with error message | collateral.xlsx | asset_details           | 288                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |

    @ImplementedBy-pallavi.singh
    @Islamic
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    Examples:
      | Field                  | Description                | Throws_NotThrows                | CollateralWB    | Collateral_assetDetails | Collateral_assetDetails_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   |
      | Collateral Ref No      | special characters         | throws error with error message | collateral.xlsx | asset_details           | 261                            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | OLV Grid Value         | characters                 | throws error with error message | collateral.xlsx | asset_details           | 269                            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | OLV Grid Value         | both digits and characters | throws error with error message | collateral.xlsx | asset_details           | 270                            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | OLV Grid Value         | negative                   | throws error with error message | collateral.xlsx | asset_details           | 271                            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | OLV Grid Value         | hyphen                     | throws error with error message | collateral.xlsx | asset_details           | 272                            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | OLV Grid Value         | space                      | throws error with error message | collateral.xlsx | asset_details           | 273                            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | OLV Grid Value         | special characters         | throws error with error message | collateral.xlsx | asset_details           | 274                            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Insured Declared Value | characters                 | throws error with error message | collateral.xlsx | asset_details           | 276                            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Insured Declared Value | both digits and characters | throws error with error message | collateral.xlsx | asset_details           | 277                            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Insured Declared Value | negative                   | throws error with error message | collateral.xlsx | asset_details           | 278                            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Insured Declared Value | hyphen                     | throws error with error message | collateral.xlsx | asset_details           | 279                            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Insured Declared Value | space                      | throws error with error message | collateral.xlsx | asset_details           | 280                            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Insured Declared Value | special characters         | throws error with error message | collateral.xlsx | asset_details           | 281                            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Asset Cost             | characters                 | throws error with error message | collateral.xlsx | asset_details           | 283                            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Asset Cost             | both digits and characters | throws error with error message | collateral.xlsx | asset_details           | 284                            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Asset Cost             | negative                   | throws error with error message | collateral.xlsx | asset_details           | 285                            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Asset Cost             | hyphen                     | throws error with error message | collateral.xlsx | asset_details           | 286                            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Asset Cost             | space                      | throws error with error message | collateral.xlsx | asset_details           | 287                            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Asset Cost             | special characters         | throws error with error message | collateral.xlsx | asset_details           | 288                            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |

    @ImplementedBy-pallavi.singh
    @Islamic
    #${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    Examples:
      | Field                  | Description                | Throws_NotThrows                | CollateralWB    | Collateral_assetDetails | Collateral_assetDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | Collateral Ref No      | special characters         | throws error with error message | collateral.xlsx | asset_details           | 261                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | OLV Grid Value         | characters                 | throws error with error message | collateral.xlsx | asset_details           | 269                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | OLV Grid Value         | both digits and characters | throws error with error message | collateral.xlsx | asset_details           | 270                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | OLV Grid Value         | negative                   | throws error with error message | collateral.xlsx | asset_details           | 271                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | OLV Grid Value         | hyphen                     | throws error with error message | collateral.xlsx | asset_details           | 272                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | OLV Grid Value         | space                      | throws error with error message | collateral.xlsx | asset_details           | 273                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | OLV Grid Value         | special characters         | throws error with error message | collateral.xlsx | asset_details           | 274                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Insured Declared Value | characters                 | throws error with error message | collateral.xlsx | asset_details           | 276                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Insured Declared Value | both digits and characters | throws error with error message | collateral.xlsx | asset_details           | 277                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Insured Declared Value | negative                   | throws error with error message | collateral.xlsx | asset_details           | 278                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Insured Declared Value | hyphen                     | throws error with error message | collateral.xlsx | asset_details           | 279                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Insured Declared Value | space                      | throws error with error message | collateral.xlsx | asset_details           | 280                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Insured Declared Value | special characters         | throws error with error message | collateral.xlsx | asset_details           | 281                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Asset Cost             | characters                 | throws error with error message | collateral.xlsx | asset_details           | 283                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Asset Cost             | both digits and characters | throws error with error message | collateral.xlsx | asset_details           | 284                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Asset Cost             | negative                   | throws error with error message | collateral.xlsx | asset_details           | 285                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Asset Cost             | hyphen                     | throws error with error message | collateral.xlsx | asset_details           | 286                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Asset Cost             | space                      | throws error with error message | collateral.xlsx | asset_details           | 287                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Asset Cost             | special characters         | throws error with error message | collateral.xlsx | asset_details           | 288                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |


#FeatureID-ACAUTOCAS-8108,CAS-22950
  Scenario Outline: ACAUTOCAS-8796:  At <ApplicationStage> user enters invalid data in Implements and Attachments Details field <Field> with <Description> for <CollateralSubType> attached to <ProductType> application and saves
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_implementsAndAttachmentDetails>" and row <Collateral_implementsAndAttachmentDetails_rowNum>
    And user attempts to select a collateral type
    And user navigates to Implements and Attachments Details
    When user fill "<Field>" of collateral details for collateral subtype
    Then "<Field>" field "<Throws_NotThrows>" error message in collateral details
    @ImplementedBy-rishabh.sachan
    @Conventional
    # ${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration","Disbursal"]}
    Examples:
      | Field                          | Description         | Throws_NotThrows                | CollateralWB    | Collateral_implementsAndAttachmentDetails | Collateral_implementsAndAttachmentDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | Registration Date              | invalid date format | throws error with error message | collateral.xlsx | implements_and_attachments                | 125                                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Registration Date              | special characters  | throws error with error message | collateral.xlsx | implements_and_attachments                | 126                                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Registration Date              | year less than 1942 | throws error with error message | collateral.xlsx | implements_and_attachments                | 127                                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Registration Expiry Date       | invalid date format | throws error with error message | collateral.xlsx | implements_and_attachments                | 128                                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Registration Expiry Date       | special characters  | throws error with error message | collateral.xlsx | implements_and_attachments                | 129                                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Registration Expiry Date       | year less than 1942 | throws error with error message | collateral.xlsx | implements_and_attachments                | 130                                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Month of Manufacture           | special characters  | throws error with error message | collateral.xlsx | implements_and_attachments                | 131                                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Month of Manufacture           | negative            | throws error with error message | collateral.xlsx | implements_and_attachments                | 132                                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Month of Manufacture           | characters          | throws error with error message | collateral.xlsx | implements_and_attachments                | 133                                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Year of Manufacture            | special characters  | throws error with error message | collateral.xlsx | implements_and_attachments                | 134                                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Year of Manufacture (Negative) | negative            | throws error with error message | collateral.xlsx | implements_and_attachments                | 135                                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Year of Manufacture            | characters          | throws error with error message | collateral.xlsx | implements_and_attachments                | 136                                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |

    @ImplementedBy-pallavi.singh
    @Islamic
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    Examples:
      | Field                          | Description         | Throws_NotThrows                | CollateralWB    | Collateral_implementsAndAttachmentDetails | Collateral_implementsAndAttachmentDetails_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   |
      | Registration Date              | invalid date format | throws error with error message | collateral.xlsx | implements_and_attachments                | 125                                              | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Registration Date              | special characters  | throws error with error message | collateral.xlsx | implements_and_attachments                | 126                                              | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Registration Date              | year less than 1942 | throws error with error message | collateral.xlsx | implements_and_attachments                | 127                                              | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Registration Expiry Date       | invalid date format | throws error with error message | collateral.xlsx | implements_and_attachments                | 128                                              | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Registration Expiry Date       | special characters  | throws error with error message | collateral.xlsx | implements_and_attachments                | 129                                              | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Registration Expiry Date       | year less than 1942 | throws error with error message | collateral.xlsx | implements_and_attachments                | 130                                              | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Month of Manufacture           | special characters  | throws error with error message | collateral.xlsx | implements_and_attachments                | 131                                              | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Month of Manufacture           | negative            | throws error with error message | collateral.xlsx | implements_and_attachments                | 132                                              | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Month of Manufacture           | characters          | throws error with error message | collateral.xlsx | implements_and_attachments                | 133                                              | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Year of Manufacture            | special characters  | throws error with error message | collateral.xlsx | implements_and_attachments                | 134                                              | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Year of Manufacture (Negative) | negative            | throws error with error message | collateral.xlsx | implements_and_attachments                | 135                                              | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Year of Manufacture            | characters          | throws error with error message | collateral.xlsx | implements_and_attachments                | 136                                              | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |

    @ImplementedBy-pallavi.singh
    @Islamic
    #${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    Examples:
      | Field                          | Description         | Throws_NotThrows                | CollateralWB    | Collateral_implementsAndAttachmentDetails | Collateral_implementsAndAttachmentDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | Registration Date              | invalid date format | throws error with error message | collateral.xlsx | implements_and_attachments                | 125                                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Registration Date              | special characters  | throws error with error message | collateral.xlsx | implements_and_attachments                | 126                                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Registration Date              | year less than 1942 | throws error with error message | collateral.xlsx | implements_and_attachments                | 127                                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Registration Expiry Date       | invalid date format | throws error with error message | collateral.xlsx | implements_and_attachments                | 128                                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Registration Expiry Date       | special characters  | throws error with error message | collateral.xlsx | implements_and_attachments                | 129                                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Registration Expiry Date       | year less than 1942 | throws error with error message | collateral.xlsx | implements_and_attachments                | 130                                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Month of Manufacture           | special characters  | throws error with error message | collateral.xlsx | implements_and_attachments                | 131                                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Month of Manufacture           | negative            | throws error with error message | collateral.xlsx | implements_and_attachments                | 132                                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Month of Manufacture           | characters          | throws error with error message | collateral.xlsx | implements_and_attachments                | 133                                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Year of Manufacture            | special characters  | throws error with error message | collateral.xlsx | implements_and_attachments                | 134                                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Year of Manufacture (Negative) | negative            | throws error with error message | collateral.xlsx | implements_and_attachments                | 135                                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Year of Manufacture            | characters          | throws error with error message | collateral.xlsx | implements_and_attachments                | 136                                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |


###Squash:137607
###Story:CAS-23473
###Bug:
#FeatureID-ACAUTOCAS-8108,ACAUTOCAS-2
  Scenario Outline: ACAUTOCAS-16691: user adds multiple collateral to <ProductType> application at <ApplicationStage> stage with sub type as Implements and Attachments
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user open collateral page of "<ApplicationStage>" stage
    When user fills mandatory fields of collateral details to attach collateral from the excel file "<SourceDataFile>":
      | SourceSheet   | SourceSheetRow | CollSubType                |
      | asset_details | 252            | Implements and Attachments |
      | asset_details | 253            | Implements and Attachments |
      | asset_details | 282            | Implements and Attachments |
      | asset_details | 289            | Implements and Attachments |
      | asset_details | 290            | Implements and Attachments |
    Then user check the all the added collateral to application
    @ImplementedBy-rishabh.sachan
    @Conventional
    # ${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","CC","LAP","CL"]}
    # ${ApplicationStage:["DDE","Credit Approval"]}
    Examples:
      | SourceDataFile  | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |

    @ImplementedBy-pallavi.singh
    @Islamic
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    Examples:
      | SourceDataFile  | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   |
      | collateral.xlsx | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |

    @ImplementedBy-pallavi.singh
    @Islamic
    #${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Credit Approval"]}
    Examples:
      | SourceDataFile  | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |


###Squash:137607
###Story:CAS-23473
###Bug:
#FeatureID-ACAUTOCAS-8108,ACAUTOCAS-2
  Scenario Outline: ACAUTOCAS-16692: user views multiple collateral attached to <ProductType> application at <ApplicationStage> stage with sub type as Implements and Attachments
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user open collateral page of "<ApplicationStage>" stage
    When user fills mandatory fields of collateral details to attach collateral from the excel file "<CollateralWB>":
      | SourceSheet   | SourceSheetRow | CollSubType                |
      | asset_details | 252            | Implements and Attachments |
      | asset_details | 253            | Implements and Attachments |
      | asset_details | 282            | Implements and Attachments |
      | asset_details | 289            | Implements and Attachments |
      | asset_details | 290            | Implements and Attachments |
    Then user should be able to reconcile the data for below mentioned collaterals successfully from the excel file "<CollateralWB>":
      | SourceSheet   | SourceSheetRow | CollSubType                |
      | asset_details | 252            | Implements and Attachments |
      | asset_details | 253            | Implements and Attachments |
      | asset_details | 282            | Implements and Attachments |
      | asset_details | 289            | Implements and Attachments |
      | asset_details | 290            | Implements and Attachments |
    @ImplementedBy-rishabh.sachan
    @Conventional
    # ${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","CC","LAP","CL"]}
    # ${ApplicationStage:["DDE","Credit Approval","Disbursal"]}
    Examples:
      | CollateralWB    | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |

    @ImplementedBy-pallavi.singh
    @Islamic
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    Examples:
      | CollateralWB    | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   |
      | collateral.xlsx | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |

    @ImplementedBy-pallavi.singh
    @Islamic
    #${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Credit Approval"]}
    Examples:
      | CollateralWB    | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |


###Squash:137607
###Story:CAS-23473
###Bug:
#FeatureID-ACAUTOCAS-8108,ACAUTOCAS-2
  Scenario Outline: ACAUTOCAS-16693: user views multiple collateral attached to <ProductType> application at <ApplicationStage> stage with sub type as Implements and Attachments at Enquiry
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user open collateral page of "<ApplicationStage>" stage
    And user fills mandatory fields of collateral details to attach collateral from the excel file "<CollateralWB>":
      | SourceSheet   | SourceSheetRow | CollSubType                |
      | asset_details | 252            | Implements and Attachments |
      | asset_details | 253            | Implements and Attachments |
      | asset_details | 282            | Implements and Attachments |
      | asset_details | 289            | Implements and Attachments |
      | asset_details | 290            | Implements and Attachments |
    And user opens application from enquiry menu
    When user opens Collateral Page for viewing attached collaterals at "<ApplicationStage>"
    Then user should be able to reconcile the data for below mentioned collaterals successfully from the excel file "<CollateralWB>":
      | SourceSheet   | SourceSheetRow | CollSubType                |
      | asset_details | 252            | Implements and Attachments |
      | asset_details | 253            | Implements and Attachments |
      | asset_details | 282            | Implements and Attachments |
      | asset_details | 289            | Implements and Attachments |
      | asset_details | 290            | Implements and Attachments |
    @ImplementedBy-rishabh.sachan
    @Conventional
    # ${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","CC","LAP","CL"]}
    # ${ApplicationStage:["DDE","Credit Approval","Disbursal"]}
    Examples:
      | CollateralWB    | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |

    @ImplementedBy-pallavi.singh
    @Islamic
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    Examples:
      | CollateralWB    | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   |
      | collateral.xlsx | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |

    @ImplementedBy-pallavi.singh
    @Islamic
    #${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Credit Approval"]}
    Examples:
      | CollateralWB    | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |

