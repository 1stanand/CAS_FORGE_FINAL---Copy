@Epic-Secondary_Collateral
@AuthoredBy-rsurya.kumar
@ReviewedBy-None
@ReviewedByDEV
@ReviewedSecCollateral
@Release
@Part-2

# ${CollateralSubType:["Consumer Durable"]}
# ${ApplicantType:["indiv","nonindiv"]}

Feature: Consumer Durable Addition Positive

#  Pre-Requisites---
#  In this feature we will attach an Asset Consumer Durable to the loan application.

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0

  Scenario Outline: ACAUTOCAS-2101: user moves a new Asset Type collateral to the loan application of <ProductType> at <ApplicationStage> stage
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    When user selects collateral type
    Then User should be able to attach it only if it is linked to the Product against which the application is entered

    # ${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    # ${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal"]}
    @Conventional
    @ImplementedBy-harshprit.kumar
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | collateral.xlsx | default            | 1                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration"]}
    # ${Category:["shares","bonds","metals"]}
    @Islamic
    @ImplementedBy-tanya
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   |
      | collateral.xlsx | default            | 1                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |

    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Credit Approval","Reconsideration"]}
    @Islamic
    @ImplementedBy-tanya
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | collateral.xlsx | default            | 1                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |


  Scenario Outline: ACAUTOCAS-2102: user adds a collateral with sub type as <CollateralSubType> of <ProductType> at <ApplicationStage> stage
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    When user selects collateral type
    Then user should be able to capture the sub collateral

    # ${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    # ${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal"]}
    @Conventional
    @ImplementedBy-harshprit.kumar
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | default            | 1                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration"]}
    # ${Category:["shares","bonds","metals"]}
    @Islamic
    @ImplementedBy-tanya
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | default            | 1                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |

    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Credit Approval","Reconsideration"]}
    @Islamic
    @ImplementedBy-tanya
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | default            | 1                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |

#Save Asset-Consumer Durable with all data
  @Sanity
  Scenario Outline: ACAUTOCAS-1118: Capture <CollateralSubType> against an application of <ProductType> at <ApplicationStage> stage
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user selects collateral type along with collateral sub type
    And user fills all fields of home page of collateral details for given collateral sub type
    And user closes duplicate check result box after checking the duplicates
    And user fills Reason Section
    When user saves the Collateral Details
    Then collateral should saved successfully

    # ${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    # ${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal"]}
    @Conventional
    @ImplementedBy-harshprit.kumar
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | default            | 1                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration"]}
    # ${Category:["shares","bonds","metals"]}
    @Islamic
    @ImplementedBy-tanya
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | default            | 1                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |

    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Credit Approval","Reconsideration"]}
    @Islamic
    @ImplementedBy-tanya
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | default            | 1                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |

#User dedupes for unique collateral number
  Scenario Outline: ACAUTOCAS-1119: User checks for duplicate collateral on Asset Number for <CollateralSubType> of <ProductType> at <ApplicationStage> stage
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    When user fills mandatory fields of home page of collateral details for given collateral sub type
    And checks for duplicate collateral
    Then user should receive a proper popup message

    # ${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    # ${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal"]}
    @Conventional
    @ImplementedBy-harshprit.kumar
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | default            | 333                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration"]}
    # ${Category:["shares","bonds","metals"]}
    @Islamic
    @ImplementedBy-tanya
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | default            | 333                       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |

    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Credit Approval","Reconsideration"]}
    @Islamic
    @ImplementedBy-tanya
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | default            | 333                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |

#User dedupes for unique collateral number and saves
  Scenario Outline: ACAUTOCAS-1120: User checks for duplicate collateral on Asset Number and saves data of <CollateralSubType> of <ProductType> at <ApplicationStage> stage
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    When user fills mandatory fields of home page of collateral details for given collateral sub type
    And user closes duplicate check result box after checking the duplicates
    And user fills Reason Section
    When user saves the Collateral Details
    Then collateral should saved successfully

    # ${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    # ${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal"]}
    @Conventional
    @ImplementedBy-harshprit.kumar
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | default            | 1                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration"]}
    # ${Category:["shares","bonds","metals"]}
    @Islamic
    @ImplementedBy-tanya
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | default            | 1                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |

    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Credit Approval","Reconsideration"]}
    @Islamic
    @ImplementedBy-tanya
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | default            | 1                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |

#User dedupes for unique collateral number and finds duplicate collaterals
  @LoggedBug-CAS-228413
  @Sanity
  Scenario Outline: ACAUTOCAS-1121: User checks for duplicate collateral on Asset Number and finds them of <CollateralSubType> of <ProductType> at <ApplicationStage> stage
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user closes duplicate check result box after checking the duplicates
    And user fills Reason Section
    And user saves the Collateral Details
    And user clicks on plus icon to add new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    When user fills mandatory fields of home page of collateral details for given collateral sub type
    And checks for duplicate collateral
    Then user should receive a message saying some duplicates found

    # ${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    # ${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal"]}
    @Conventional
    @ImplementedBy-harshprit.kumar
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | default            | 1                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration"]}
    # ${Category:["shares","bonds","metals"]}
    @Islamic
    @ImplementedBy-tanya
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | default            | 1                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |

    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Credit Approval","Reconsideration"]}
    @Islamic
    @ImplementedBy-tanya
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | default            | 1                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |

#User dedupes for unique collateral number and finds duplicate collaterals to view
  @LoggedBug-CAS-228413
  @Sanity
  Scenario Outline: ACAUTOCAS-2928: User checks for duplicate collateral on Asset Number and view them of <CollateralSubType> of <ProductType> at <ApplicationStage> stage
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user closes duplicate check result box after checking the duplicates
    And user fills Reason Section
    And user saves the Collateral Details
    And user clicks on plus icon to add new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    When user fills mandatory fields of home page of collateral details for given collateral sub type
    And checks for duplicate collateral
    And user gets a message saying some duplicates found
    Then User should be able to view the duplicates

    # ${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    # ${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal"]}
    @Conventional
    @ImplementedBy-harshprit.kumar
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | default            | 1                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration"]}
    # ${Category:["shares","bonds","metals"]}
    @Islamic
    @ImplementedBy-tanya
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | default            | 1                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |

    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Credit Approval","Reconsideration"]}
    @Islamic
    @ImplementedBy-tanya
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | default            | 1                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |

#    unable to find the collateral number to select
#User dedupes for unique collateral number and finds duplicate collaterals to select one
  #FeatureID-ACAUTOCAS-232
  @LoggedBug-CAS-228413
  Scenario Outline: ACAUTOCAS-16644: User checks for duplicate collateral on Asset Number and finds them in <CollateralSubType> of <ProductType> at <ApplicationStage> stage
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_assetDetails>" and row <Collateral_assetDetails_rowNum>
    And user selects collateral type along with collateral sub type
    And user fills mandatory fields for "<CollateralSubType>" collateral
    And user checks the duplicates on collateral dedupe check
    And user clicks on save collateral to save CMS data
    And user add new collateral details
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_assetDetails>" and row <Collateral_assetDetails_rowNum2>
    When user selects collateral type along with collateral sub type
    And user fills mandatory fields for "<CollateralSubType>" collateral
    And checks for duplicate collateral
    Then User should be able to view the duplicates of "<CollateralSubType>" collateral

    # ${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    # ${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal"]}
    @Conventional
    @ImplementedBy-rishabh.sachan
    Examples:
      | CollateralWB    | Collateral_assetDetails | Collateral_assetDetails_rowNum | Collateral_assetDetails_rowNum2 | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | asset_details           | 130                            | 131                             | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration"]}
    # ${Category:["shares","bonds","metals"]}
    @Islamic
    @ImplementedBy-tanya
    Examples:
      | CollateralWB    | Collateral_assetDetails | Collateral_assetDetails_rowNum | Collateral_assetDetails_rowNum2 | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | asset_details           | 130                            | 131                             | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |

    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Credit Approval","Reconsideration"]}
    @Islamic
    @ImplementedBy-tanya
    Examples:
      | CollateralWB    | Collateral_assetDetails | Collateral_assetDetails_rowNum | Collateral_assetDetails_rowNum2 | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | asset_details           | 130                            | 131                             | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |

#User dedupes for unique collateral number and finds duplicate collaterals to select one with old global coll no
  #FeatureID-ACAUTOCAS-232
  @LoggedBug-CAS-228413
  Scenario Outline: ACAUTOCAS-16645: User checks for duplicate collateral on Asset Number and selects one of them of <CollateralSubType> of <ProductType> at <ApplicationStage> stage
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_assetDetails>" and row <Collateral_assetDetails_rowNum>
    And user selects collateral type along with collateral sub type
    And user fills mandatory fields for "<CollateralSubType>" collateral
    And user checks the duplicates on collateral dedupe check
    And user clicks on save collateral to save CMS data
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_assetDetails>" and row <Collateral_assetDetails_rowNum2>
    When user selects collateral type along with collateral sub type
    And user fills mandatory fields for "<CollateralSubType>" collateral
    And checks for duplicate collateral
    And user views the duplicate collateral
    And user select the "<CollateralSubType>" collateral from dedupe result which is not attached to the application
    And user saves selected dedupe collateral
    Then user gets a notification message

    # ${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    # ${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal"]}
    @Conventional
    @ImplementedBy-rishabh.sachan
    Examples:
      | CollateralWB    | Collateral_assetDetails | Collateral_assetDetails_rowNum | Collateral_assetDetails_rowNum2 | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | asset_details           | 130                            | 132                             | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration"]}
    # ${Category:["shares","bonds","metals"]}
    @Islamic
    @ImplementedBy-tanya
    Examples:
      | CollateralWB    | Collateral_assetDetails | Collateral_assetDetails_rowNum | Collateral_assetDetails_rowNum2 | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | asset_details           | 130                            | 132                             | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |

    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Credit Approval","Reconsideration"]}
    @Islamic
    @ImplementedBy-tanya
    Examples:
      | CollateralWB    | Collateral_assetDetails | Collateral_assetDetails_rowNum | Collateral_assetDetails_rowNum2 | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | asset_details           | 130                            | 132                             | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |


##User dedupes for unique collateral number and finds duplicate collaterals to select one with old global coll no and in the same application
  #FeatureID-ACAUTOCAS-232
  @LoggedBug-CAS-228413
  Scenario Outline: ACAUTOCAS-16646: user checks for duplicate collateral on Asset Number and finds one already attached to the current application of <CollateralSubType> of <ProductType> at <ApplicationStage> stage
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
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

    # ${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    # ${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal"]}
    @Conventional
    @ImplementedBy-rishabh.sachan
    Examples:
      | CollateralWB    | Collateral_assetDetails | Collateral_assetDetails_rowNum | Collateral_assetDetails_rowNum2 | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | asset_details           | 130                            | 131                             | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration"]}
    # ${Category:["shares","bonds","metals"]}
    @Islamic
    @ImplementedBy-tanya
    Examples:
      | CollateralWB    | Collateral_assetDetails | Collateral_assetDetails_rowNum | Collateral_assetDetails_rowNum2 | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | asset_details           | 130                            | 131                             | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |

    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Credit Approval","Reconsideration"]}
    @Islamic
    @ImplementedBy-tanya
    Examples:
      | CollateralWB    | Collateral_assetDetails | Collateral_assetDetails_rowNum | Collateral_assetDetails_rowNum2 | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | asset_details           | 130                            | 131                             | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |


##User dedupes for unique collateral number and finds duplicate collaterals to select one with old global coll no
  @LoggedBug-CAS-228413
    @Sanity
  Scenario Outline: ACAUTOCAS-1126: User checks for duplicate collateral and ignores them to create new in <CollateralSubType> of <ProductType> at <ApplicationStage> stage
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user closes duplicate check result box after checking the duplicates
    And user fills Reason Section
    And user saves the Collateral Details
    And user clicks on plus icon to add new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And checks for duplicate collateral
    And user gets a message saying some duplicates found
    And user ignores the duplicate collaterals found
    When user saves the Collateral Details
    Then user gets a proper notification

    # ${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    # ${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal"]}
    @Conventional
    @ImplementedBy-harshprit.kumar
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | default            | 652                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration"]}
    # ${Category:["shares","bonds","metals"]}
    @Islamic
    @ImplementedBy-tanya
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | default            | 652                       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |

    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Credit Approval","Reconsideration"]}
    @Islamic
    @ImplementedBy-tanya
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | default            | 652                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |

#create another after this one
  @Sanity
  Scenario Outline: ACAUTOCAS-1127: Capture <CollateralSubType> against an application with create another after this one of <ProductType> at <ApplicationStage> stage
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    When user selects create another after this one option
    And user closes duplicate check result box after checking the duplicates
    And user fills Reason Section
    And user saves the Collateral Details
    And user gets saved successfully message
    Then CollateralPage remains available to create another collateral

    # ${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    # ${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal"]}
    @Conventional
    @ImplementedBy-harshprit.kumar
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | default            | 1                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration"]}
    # ${Category:["shares","bonds","metals"]}
    @Islamic
    @ImplementedBy-tanya
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | default            | 1                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |

    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Credit Approval","Reconsideration"]}
    @Islamic
    @ImplementedBy-tanya
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | default            | 1                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |

###Squash:137607
###Story:CAS-23473
###Bug:
#FeatureID-ACAUTOCAS-232,ACAUTOCAS-2
  @Sanity
  @Perishable
  Scenario Outline: ACAUTOCAS-16647: user adds multiple collateral to <ProductType> application at <ApplicationStage> stage with sub type as Consumer Durable
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user open collateral page of "<ApplicationStage>" stage
    When user fills mandatory fields of collateral details to attach collateral from the excel file "<SourceDataFile>":
      | SourceSheet   | SourceSheetRow | CollSubType      |
      | asset_details | 130            | Consumer Durable |
      | asset_details | 133            | Consumer Durable |
      | asset_details | 134            | Consumer Durable |
      | asset_details | 135            | Consumer Durable |
      | asset_details | 136            | Consumer Durable |
      | asset_details | 137            | Consumer Durable |
      | asset_details | 138            | Consumer Durable |
      | asset_details | 139            | Consumer Durable |
    Then user check the all the added collateral to application

    # ${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    # ${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal"]}
    @Conventional
    @ImplementedBy-rishabh.sachan
    Examples:
      | SourceDataFile  | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration"]}
    # ${Category:["shares","bonds","metals"]}
    @Islamic
    @ImplementedBy-tanya
    Examples:
      | SourceDataFile  | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   |
      | collateral.xlsx | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |

    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Credit Approval","Reconsideration"]}
    @Islamic
    @ImplementedBy-tanya
    Examples:
      | SourceDataFile  | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |

###Squash:137607
###Story:CAS-23473
###Bug:
#FeatureID-ACAUTOCAS-232,ACAUTOCAS-2
  @Perishable
  Scenario Outline: ACAUTOCAS-16648: user views multiple collateral attached to <ProductType> application at <ApplicationStage> stage with sub type as Consumer Durable
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user open collateral page of "<ApplicationStage>" stage
    When user fills mandatory fields of collateral details to attach collateral from the excel file "<CollateralWB>":
      | SourceSheet   | SourceSheetRow | CollSubType      |
      | asset_details | 130            | Consumer Durable |
      | asset_details | 133            | Consumer Durable |
      | asset_details | 134            | Consumer Durable |
      | asset_details | 135            | Consumer Durable |
      | asset_details | 136            | Consumer Durable |
      | asset_details | 137            | Consumer Durable |
      | asset_details | 138            | Consumer Durable |
      | asset_details | 139            | Consumer Durable |
    Then user should be able to reconcile the data for below mentioned collaterals successfully from the excel file "<CollateralWB>":
      | SourceSheet   | SourceSheetRow | CollSubType      |
      | asset_details | 130            | Consumer Durable |
      | asset_details | 133            | Consumer Durable |
      | asset_details | 134            | Consumer Durable |
      | asset_details | 135            | Consumer Durable |
      | asset_details | 136            | Consumer Durable |
      | asset_details | 137            | Consumer Durable |
      | asset_details | 138            | Consumer Durable |
      | asset_details | 139            | Consumer Durable |

    # ${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    # ${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal"]}
    @Conventional
    @ImplementedBy-rishabh.sachan
    Examples:
      | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralWB    |
      | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | collateral.xlsx |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration"]}
    # ${Category:["shares","bonds","metals"]}
    @Islamic
    @ImplementedBy-tanya
    Examples:
      | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralWB    |
      | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | collateral.xlsx |

    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Credit Approval","Reconsideration"]}
    @Islamic
    @ImplementedBy-tanya
    Examples:
      | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralWB    |
      | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | collateral.xlsx |

###Squash:137607
###Story:CAS-23473
###Bug:
#FeatureID-ACAUTOCAS-232,ACAUTOCAS-2
  @Perishable
  Scenario Outline: ACAUTOCAS-16649: user views multiple collateral attached to <ProductType> application at <ApplicationStage> stage with sub type as Consumer Durable at Enquiry
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user open collateral page of "<ApplicationStage>" stage
    And user fills mandatory fields of collateral details to attach collateral from the excel file "<CollateralWB>":
      | SourceSheet   | SourceSheetRow | CollSubType      |
      | asset_details | 130            | Consumer Durable |
      | asset_details | 133            | Consumer Durable |
      | asset_details | 134            | Consumer Durable |
      | asset_details | 135            | Consumer Durable |
      | asset_details | 136            | Consumer Durable |
      | asset_details | 137            | Consumer Durable |
      | asset_details | 138            | Consumer Durable |
      | asset_details | 139            | Consumer Durable |
    And user opens application from enquiry menu
    When user opens Collateral Page for viewing attached collaterals at "<ApplicationStage>"
    Then user should be able to reconcile the data for below mentioned collaterals successfully from the excel file "<CollateralWB>":
      | SourceSheet   | SourceSheetRow | CollSubType      |
      | asset_details | 130            | Consumer Durable |
      | asset_details | 133            | Consumer Durable |
      | asset_details | 134            | Consumer Durable |
      | asset_details | 135            | Consumer Durable |
      | asset_details | 136            | Consumer Durable |
      | asset_details | 137            | Consumer Durable |
      | asset_details | 138            | Consumer Durable |
      | asset_details | 139            | Consumer Durable |

    # ${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    # ${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal"]}
    @Conventional
    @ImplementedBy-rishabh.sachan
    Examples:
      | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralWB    |
      | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | collateral.xlsx |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration"]}
    # ${Category:["shares","bonds","metals"]}
    @Islamic
    @ImplementedBy-tanya
    Examples:
      | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralWB    |
      | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | collateral.xlsx |

    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Credit Approval","Reconsideration"]}
    @Islamic
    @ImplementedBy-tanya
    Examples:
      | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralWB    |
      | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | collateral.xlsx |
