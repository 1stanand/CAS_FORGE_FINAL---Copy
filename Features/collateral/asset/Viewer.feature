@Epic-Secondary_Collateral
@AuthoredBy-rsurya.kumar
@ReviewedBy-
@ImplementedBy-
@TechReviewedBy-
@new
@ReviewedByGWT
@Conventional
@Release

Feature: Secondary collateral on viewer stages

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0

# ${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP"]}
# ${ApplicationStage:["Post Approval","Application Renewal Recommendation","Application Renewal Approval"]}
# ${CollType:["Asset"]}
# ${CollSubType:[]}
#${ApplicantType:["indiv","nonindiv"]}

#FeatureID-ACAUTOCAS-230,ACAUTOCAS-231,ACAUTOCAS-232,ACAUTOCAS-233,ACAUTOCAS-234
  @ImplementedBy-richa.singh
  @Conventional
  Scenario Outline: ACAUTOCAS-8910:  At "<PresentStage>" stage user should not be able to modify security collateral attached to "<ProductType>" application
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "dde" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral for "dde"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNo>
    And user selects collateral type along with collateral sub type
    And user fills mandatory fields for "<CollateralSubType>" collateral
    And user checks the duplicates on collateral dedupe check
    And user saves the Collateral Details
    And user moves application from "dde" stage to application of "<ProductType>" product type as "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" stage without opening it
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page on "<ApplicationStage>" without adding New Collateral
    When user attempts to modify collateral based on "<CollateralSubType>"
    Then user should not be able to modify the data of saved collateral
   Examples:
     | PresentStage       | CollateralSubType    | CollateralWB    | Collateral_default | Collateral_default_rowNo | ProductType   | ApplicationStage   | applicantType   | category | key |
     | <ApplicationStage> | Commercial Equipment | collateral.xlsx | default            | 3                        | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |
     | <ApplicationStage> | Commercial Vehicle   | collateral.xlsx | default            | 2                        | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |
     | <ApplicationStage> | Consumer Durable     | collateral.xlsx | default            | 1                        | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |
     | <ApplicationStage> | Consumer Vehicle     | collateral.xlsx | default            | 0                        | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |
     | <ApplicationStage> | Tractor              | collateral.xlsx | default            | 4                        | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |



# ${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP"]}
# ${ApplicationStage:["Post Approval","Application Renewal Recommendation","Application Renewal Approval"]}
# ${CollType:["Asset"]}
# ${CollSubType:[]}
#FeatureID-ACAUTOCAS-230,ACAUTOCAS-231,ACAUTOCAS-232,ACAUTOCAS-233,ACAUTOCAS-234
  @ImplementedBy-richa.singh
  @Conventional
  Scenario Outline: ACAUTOCAS-8911:  At "<ApplicationStage>" stage user should not be able to delink security collateral attached to "<ProductType>" application
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "dde" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral for "dde"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNo>
    And user selects collateral type along with collateral sub type
    And user fills mandatory fields for "<CollateralSubType>" collateral
    And user checks the duplicates on collateral dedupe check
    And user saves the Collateral Details
    And user moves application from "dde" stage to application of "<ProductType>" product type as "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" stage without opening it
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    When user opens Collateral Page on "<ApplicationStage>" without adding New Collateral
    Then user should not be able to delink collateral
    Examples:
      | PresentStage       | CollateralSubType    | CollateralWB    | Collateral_default | Collateral_default_rowNo | ProductType | ApplicationStage | applicantType | category | key |
      | <ApplicationStage> | Commercial Equipment | collateral.xlsx | default            | 3                        | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |
      | <ApplicationStage> | Commercial Vehicle   | collateral.xlsx | default            | 2                        | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |
      | <ApplicationStage> | Consumer Durable     | collateral.xlsx | default            | 1                        | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |
      | <ApplicationStage> | Consumer Vehicle     | collateral.xlsx | default            | 0                        | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |
      | <ApplicationStage> | Tractor              | collateral.xlsx | default            | 4                        | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |

# ${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP"]}
# ${ApplicationStage:["Post Approval","Application Renewal Recommendation","Application Renewal Approval"]}
# ${CollType:["Asset"]}
# ${CollSubType:[]}

  @ImplementedBy-richa.singh
  @Conventional
#FeatureID-ACAUTOCAS-230,ACAUTOCAS-231,ACAUTOCAS-232,ACAUTOCAS-233,ACAUTOCAS-234
  Scenario Outline: ACAUTOCAS-8912:  At "<ApplicationStage>" stage user should not be able to add security collateral attached to "<ProductType>" application
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "dde" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral for "dde"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNo>
    And user selects collateral type along with collateral sub type
    And user fills mandatory fields for "<CollateralSubType>" collateral
    And user checks the duplicates on collateral dedupe check
    And user saves the Collateral Details
    And user moves application from "dde" stage to application of "<ProductType>" product type as "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" stage without opening it
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page on "<ApplicationStage>" without adding New Collateral
    When user attempts to modify collateral based on "<CollateralSubType>"
    Then user should not be able to add the collateral
    Examples:
      | CollateralSubType    | CollateralWB    | Collateral_default | Collateral_default_rowNo | ProductType   | ApplicationStage   | applicantType   | category | key |
      | Commercial Equipment | collateral.xlsx | default            | 3                        | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |
      | Commercial Vehicle   | collateral.xlsx | default            | 2                        | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |
      | Consumer Durable     | collateral.xlsx | default            | 1                        | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |
      | Consumer Vehicle     | collateral.xlsx | default            | 0                        | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |
      | Tractor              | collateral.xlsx | default            | 4                        | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |

# ${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP"]}
# ${ApplicationStage:["Post Approval","Application Renewal Recommendation","Application Renewal Approval"]}
# ${CollType:["Asset"]}
# ${CollSubType:[]}

  @ImplementedBy-richa.singh
  @Conventional
#FeatureID-ACAUTOCAS-230,ACAUTOCAS-231,ACAUTOCAS-232,ACAUTOCAS-233,ACAUTOCAS-234
  Scenario Outline: ACAUTOCAS-8913:  At "<ApplicationStage>" stage user should be able to view same data of "<CollSubType>" attached to "<ProductType>" application as originally entered
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "dde" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral for "dde"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNo>
    And user selects collateral type along with collateral sub type
    And user fills mandatory fields for "<CollateralSubType>" collateral
    And user checks the duplicates on collateral dedupe check
    And user saves the Collateral Details
    And user moves application from "dde" stage to application of "<ProductType>" product type as "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" stage without opening it
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page on "<ApplicationStage>" without adding New Collateral
    When user views the collateral "<CollateralSubType>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNo>
    Then user should be able to reconcile the data for "<CollateralSubType>" collateral successfully
    Examples:
      | CollateralSubType    | CollateralWB    | Collateral_default | Collateral_default_rowNo | ProductType   | ApplicationStage   | applicantType   | category | key |
      | Commercial Equipment | collateral.xlsx | default            | 3                        | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |
      | Commercial Vehicle   | collateral.xlsx | default            | 2                        | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |
      | Consumer Durable     | collateral.xlsx | default            | 1                        | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |
      | Consumer Vehicle     | collateral.xlsx | default            | 0                        | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |
      | Tractor              | collateral.xlsx | default            | 4                        | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |

############################################################################################################
# ${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP"]}
# ${ApplicationStage:["Disbursal Author"]}
# ${CollType:["Asset"]}
# ${CollSubType:[]}

  @ImplementedBy-richa.singh
  @Conventional
#FeatureID-ACAUTOCAS-230,ACAUTOCAS-231,ACAUTOCAS-232,ACAUTOCAS-233,ACAUTOCAS-234
  Scenario Outline: ACAUTOCAS-8914:  At Disbursal Author stage user should not be able to modify collateral attached to "<ProductType>" application
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "dde" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral for "dde"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNo>
    And user selects collateral type along with collateral sub type
    And user fills mandatory fields for "<CollateralSubType>" collateral
    And user checks the duplicates on collateral dedupe check
    And user saves the Collateral Details
    And user moves application from "dde" stage to application of "<ProductType>" product type as "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" stage without opening it
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    When user navigates to the collateral page at disbursal stage
    Then user should not be able to modify collateral
    Examples:
      | CollateralSubType    | CollateralWB    | Collateral_default | Collateral_default_rowNo | ProductType   | ApplicationStage   | applicantType   | category | key |
      | Commercial Equipment | collateral.xlsx | default            | 3                        | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |
      | Commercial Vehicle   | collateral.xlsx | default            | 2                        | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |
      | Consumer Durable     | collateral.xlsx | default            | 1                        | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |
      | Consumer Vehicle     | collateral.xlsx | default            | 0                        | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |
      | Tractor              | collateral.xlsx | default            | 4                        | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |

# ${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP"]}
# ${ApplicationStage:["Disbursal Author"]}
# ${CollType:["Asset"]}
# ${CollSubType:[]}
#FeatureID-ACAUTOCAS-230,ACAUTOCAS-231,ACAUTOCAS-232,ACAUTOCAS-233,ACAUTOCAS-234
  @ImplementedBy-richa.singh
  @Conventional
  Scenario Outline: ACAUTOCAS-8915:  At Disbursal Author stage user should not be able to delink security collateral attached to "<ProductType>" application
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "dde" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral for "dde"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNo>
    And user selects collateral type along with collateral sub type
    And user fills mandatory fields for "<CollateralSubType>" collateral
    And user checks the duplicates on collateral dedupe check
    And user saves the Collateral Details
    And user moves application from "dde" stage to application of "<ProductType>" product type as "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" stage without opening it
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    When user opens Collateral Page on "<ApplicationStage>" without adding New Collateral
    Then user should not be able to delink collateral
    Examples:
      | CollateralSubType    | CollateralWB    | Collateral_default | Collateral_default_rowNo | ProductType   | ApplicationStage   | applicantType   | category | key |
      | Commercial Equipment | collateral.xlsx | default            | 3                        | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |
      | Commercial Vehicle   | collateral.xlsx | default            | 2                        | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |
      | Consumer Durable     | collateral.xlsx | default            | 1                        | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |
      | Consumer Vehicle     | collateral.xlsx | default            | 0                        | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |
      | Tractor              | collateral.xlsx | default            | 4                        | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |

# ${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP"]}
# ${ApplicationStage:["Disbursal Author"]}
# ${CollType:["Asset"]}
# ${CollSubType:[]}

  @ImplementedBy-richa.singh
  @Conventional
#FeatureID-ACAUTOCAS-230,ACAUTOCAS-231,ACAUTOCAS-232,ACAUTOCAS-233,ACAUTOCAS-234
  Scenario Outline: ACAUTOCAS-8916:  At Disbursal Author stage user should not be able to add security collateral attached to "<ProductType>" application
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "dde" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral for "dde"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNo>
    And user selects collateral type along with collateral sub type
    And user fills mandatory fields for "<CollateralSubType>" collateral
    And user checks the duplicates on collateral dedupe check
    And user saves the Collateral Details
    And user moves application from "dde" stage to application of "<ProductType>" product type as "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" stage without opening it
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    When user navigates to the collateral page at disbursal stage
    Then user should not be able to add the collateral
    Examples:
      | CollateralSubType    | CollateralWB    | Collateral_default | Collateral_default_rowNo | ProductType   | ApplicationStage   | applicantType   | category | key |
      | Commercial Equipment | collateral.xlsx | default            | 3                        | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |
      | Commercial Vehicle   | collateral.xlsx | default            | 2                        | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |
      | Consumer Durable     | collateral.xlsx | default            | 1                        | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |
      | Consumer Vehicle     | collateral.xlsx | default            | 0                        | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |
      | Tractor              | collateral.xlsx | default            | 4                        | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |

# ${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP"]}
# ${ApplicationStage:["Disbursal Author"]}
# ${CollType:["Asset"]}
# ${CollSubType:[]}
  @ImplementedBy-richa.singh
  @Conventional
 #FeatureID-ACAUTOCAS-230,ACAUTOCAS-231,ACAUTOCAS-232,ACAUTOCAS-233,ACAUTOCAS-234
  Scenario Outline: ACAUTOCAS-8917:  At Disbursal Author stage user should be able to view same data of "<CollSubType>" attached to "<ProductType>" application as originally entered
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "dde" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral for "dde"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNo>
    And user selects collateral type along with collateral sub type
    And user fills mandatory fields for "<CollateralSubType>" collateral
    And user checks the duplicates on collateral dedupe check
    And user saves the Collateral Details
    And user moves application from "dde" stage to application of "<ProductType>" product type as "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" stage without opening it
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user navigates to the collateral page at disbursal stage
    When user views the collateral "<CollateralSubType>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNo>
    Then user should be able to reconcile the data for "<CollateralSubType>" collateral successfully
    Examples:
      | CollateralSubType    | CollateralWB    | Collateral_default | Collateral_default_rowNo | ProductType   | ApplicationStage   | applicantType   | category | key |
      | Commercial Equipment | collateral.xlsx | default            | 3                        | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |
      | Commercial Vehicle   | collateral.xlsx | default            | 2                        | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |
      | Consumer Durable     | collateral.xlsx | default            | 1                        | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |
      | Consumer Vehicle     | collateral.xlsx | default            | 0                        | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |
      | Tractor              | collateral.xlsx | default            | 4                        | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |
