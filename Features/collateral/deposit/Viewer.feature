@Epic-Secondary_Collateral
@AuthoredBy-rsurya.kumar
@ReviewedBy-
@TechReviewedBy-
@new
@ReviewedByGWT
@Conventional
@ImplementedBy-priyanshu.kashyap
@ReleaseSecCollateralM5
@Perishable
@Sanity
Feature: Secondary collateral on viewer stages

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0

# ${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
# ${CollType:["Deposit"]}
# ${CollSubType:[]}
#FeatureID-ACAUTOCAS-235,ACAUTOCAS-236,ACAUTOCAS-237

  Scenario Outline: ACAUTOCAS-11578:  At "<ApplicationStage>" stage user should not be able to modify security collateral attached to "<ProductType>" application with "<CollSubType>"
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "DDE" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user selects collateral type along with collateral sub type
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    And user moves application from "DDE" stage to application of "<ProductType>" product type as "<applicantType>" applicant at "<ApplicationStage>" for "" with "" stage without opening it
    And user opens an application of "<ProductType>" product type as "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user navigates to collateral tab
    When user modifies the saved collateral
    Then user should not be able to modify the data of saved collateral
    Examples:
      | CollSubType                 | CollateralWB    | Collateral_default          | Collateral_default_rowNum | ProductType   | ApplicationStage | key | category  | applicantType |
      | Fixed Deposit               | collateral.xlsx | fixed_deposit               | 0                         | <ProductType> | Post Approval    |     |           | indiv         |
      | Kisan Vikas Patra           | collateral.xlsx | kisan_vikas_patra           | 0                         | <ProductType> | Post Approval    |     |           | indiv         |
      | National Saving Certificate | collateral.xlsx | national_saving_certificate | 0                         | <ProductType> | Post Approval    |     |           | indiv         |
      | Fixed Deposit               | collateral.xlsx | fixed_deposit               | 0                         | <ProductType> | Disbursal Author |     | appupdate | indiv         |
      | Kisan Vikas Patra           | collateral.xlsx | kisan_vikas_patra           | 0                         | <ProductType> | Disbursal Author |     | appupdate | indiv         |
      | National Saving Certificate | collateral.xlsx | national_saving_certificate | 0                         | <ProductType> | Disbursal Author |     | appupdate | indiv         |
      | Fixed Deposit               | collateral.xlsx | fixed_deposit               | 0                         | <ProductType> | Disbursal Author |     | approve   | indiv         |
      | Kisan Vikas Patra           | collateral.xlsx | kisan_vikas_patra           | 0                         | <ProductType> | Disbursal Author |     | approve   | indiv         |
      | National Saving Certificate | collateral.xlsx | national_saving_certificate | 0                         | <ProductType> | Disbursal Author |     | approve   | indiv         |


# ${ProductType:["PF","HL","MAL","IHF","IPF","BG" ,"LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
# ${CollType:["Deposit"]}
# ${CollSubType:[]}
#FeatureID-ACAUTOCAS-235,ACAUTOCAS-236,ACAUTOCAS-237
  @LoggedBug
  Scenario Outline: ACAUTOCAS-11579:  At "<ApplicationStage>" stage user should not be able to delink security collateral attached to "<ProductType>" application
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "DDE" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user selects collateral type along with collateral sub type
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user checks the duplicates on collateral dedupe check
    When user saves the collateral data
    And user opens Collateral Page
    And user moves application from "DDE" stage to application of "<ProductType>" product type as "<applicantType>" applicant at "<ApplicationStage>" for "" with "" stage without opening it
    And user opens an application of "<ProductType>" product type as "<applicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user navigates to collateral tab
    Then user should not be able to delete the saved collateral
    Examples:
      | CollSubType                 | CollateralWB    | Collateral_default          | Collateral_default_rowNum | ProductType   | ApplicationStage | Key | Category  | applicantType |
      | Fixed Deposit               | collateral.xlsx | fixed_deposit               | 0                         | <ProductType> | Post Approval    |     |           | indiv         |
      | Kisan Vikas Patra           | collateral.xlsx | kisan_vikas_patra           | 0                         | <ProductType> | Post Approval    |     |           | indiv         |
      | National Saving Certificate | collateral.xlsx | national_saving_certificate | 0                         | <ProductType> | Post Approval    |     |           | indiv         |
      | Fixed Deposit               | collateral.xlsx | fixed_deposit               | 0                         | <ProductType> | Disbursal Author |     | appupdate | indiv         |
      | Kisan Vikas Patra           | collateral.xlsx | kisan_vikas_patra           | 0                         | <ProductType> | Disbursal Author |     | appupdate | indiv         |
      | National Saving Certificate | collateral.xlsx | national_saving_certificate | 0                         | <ProductType> | Disbursal Author |     | appupdate | indiv         |
      | Fixed Deposit               | collateral.xlsx | fixed_deposit               | 0                         | <ProductType> | Disbursal Author |     | approve   | indiv         |
      | Kisan Vikas Patra           | collateral.xlsx | kisan_vikas_patra           | 0                         | <ProductType> | Disbursal Author |     | approve   | indiv         |
      | National Saving Certificate | collateral.xlsx | national_saving_certificate | 0                         | <ProductType> | Disbursal Author |     | approve   | indiv         |

# ${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
# ${CollType:["Deposit"]}
# ${CollSubType:[]}
#FeatureID-ACAUTOCAS-235,ACAUTOCAS-236,ACAUTOCAS-237
  @LoggedBug
  Scenario Outline: ACAUTOCAS-11580:  At "<ApplicationStage>" stage user should not be able to add security collateral attached to "<ProductType>" application
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "DDE" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user selects collateral type along with collateral sub type
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user checks the duplicates on collateral dedupe check
    When user saves the collateral data
    And user opens Collateral Page
    And user moves application from "DDE" stage to application of "<ProductType>" product type as "<applicantType>" applicant at "<ApplicationStage>" for "" with "" stage without opening it
    And user opens an application of "<ProductType>" product type as "<applicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user navigates to collateral tab
    Then user should not be able to add the collateral
    Examples:
      | CollSubType                 | CollateralWB    | Collateral_default          | Collateral_default_rowNum | ProductType   | ApplicationStage | Key | Category  | applicantType |
      | Fixed Deposit               | collateral.xlsx | fixed_deposit               | 0                         | <ProductType> | Post Approval    |     |           | indiv         |
      | Kisan Vikas Patra           | collateral.xlsx | kisan_vikas_patra           | 0                         | <ProductType> | Post Approval    |     |           | indiv         |
      | National Saving Certificate | collateral.xlsx | national_saving_certificate | 0                         | <ProductType> | Post Approval    |     |           | indiv         |
      | Fixed Deposit               | collateral.xlsx | fixed_deposit               | 0                         | <ProductType> | Disbursal Author |     | appupdate | indiv         |
      | Kisan Vikas Patra           | collateral.xlsx | kisan_vikas_patra           | 0                         | <ProductType> | Disbursal Author |     | appupdate | indiv         |
      | National Saving Certificate | collateral.xlsx | national_saving_certificate | 0                         | <ProductType> | Disbursal Author |     | appupdate | indiv         |
      | Fixed Deposit               | collateral.xlsx | fixed_deposit               | 0                         | <ProductType> | Disbursal Author |     | approve   | indiv         |
      | Kisan Vikas Patra           | collateral.xlsx | kisan_vikas_patra           | 0                         | <ProductType> | Disbursal Author |     | approve   | indiv         |
      | National Saving Certificate | collateral.xlsx | national_saving_certificate | 0                         | <ProductType> | Disbursal Author |     | approve   | indiv         |

  @Sanity
# ${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
# ${CollType:["Deposit"]}
# ${CollSubType:[]}
#FeatureID-ACAUTOCAS-235,ACAUTOCAS-236,ACAUTOCAS-237
    @LoggedBug
  Scenario Outline: ACAUTOCAS-11581:  At "<ApplicationStage>" stage user should be able to view same data of "<CollSubType>" attached to "<ProductType>" application as originally entered
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "DDE" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user selects collateral type along with collateral sub type
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user checks the duplicates on collateral dedupe check
    When user saves the collateral data
    And user opens Collateral Page
    And user moves application from "DDE" stage to application of "<ProductType>" product type as "<applicantType>" applicant at "<ApplicationStage>" for "" with "" stage without opening it
    And user opens an application of "<ProductType>" product type as "<applicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user navigates to collateral tab
    And user views the saved collateral
    Then user should be able to see the same data as entered earlier for deposit "<CollSubType>"
    Examples:
      | CollSubType                 | CollateralWB    | Collateral_default          | Collateral_default_rowNum | ProductType   | ApplicationStage | key | category  | applicantType |
      | Fixed Deposit               | collateral.xlsx | fixed_deposit               | 0                         | <ProductType> | Post Approval    |     |           | indiv         |
      | Kisan Vikas Patra           | collateral.xlsx | kisan_vikas_patra           | 0                         | <ProductType> | Post Approval    |     |           | indiv         |
      | National Saving Certificate | collateral.xlsx | national_saving_certificate | 0                         | <ProductType> | Post Approval    |     |           | indiv         |
      | Fixed Deposit               | collateral.xlsx | fixed_deposit               | 0                         | <ProductType> | Disbursal Author |     | appupdate | indiv         |
      | Kisan Vikas Patra           | collateral.xlsx | kisan_vikas_patra           | 0                         | <ProductType> | Disbursal Author |     | appupdate | indiv         |
      | National Saving Certificate | collateral.xlsx | national_saving_certificate | 0                         | <ProductType> | Disbursal Author |     | appupdate | indiv         |
      | Fixed Deposit               | collateral.xlsx | fixed_deposit               | 0                         | <ProductType> | Disbursal Author |     | approve   | indiv         |
      | Kisan Vikas Patra           | collateral.xlsx | kisan_vikas_patra           | 0                         | <ProductType> | Disbursal Author |     | approve   | indiv         |
      | National Saving Certificate | collateral.xlsx | national_saving_certificate | 0                         | <ProductType> | Disbursal Author |     | approve   | indiv         |

############################################################################################################
# ${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
# ${CollType:["Deposit"]}
# ${CollSubType:[]}
#FeatureID-ACAUTOCAS-235,ACAUTOCAS-236,ACAUTOCAS-237
  Scenario Outline: ACAUTOCAS-11582:  At Disbursal Author stage user should not be able to modify security collateral attached to "<ProductType>" application
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user selects collateral type along with collateral sub type
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    When user modifies the saved collateral
    Then user should not be able to modify the data of saved collateral
    Examples:
      | CollSubType                 | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage | key | category | applicantType |
      | Fixed Deposit               | collateral.xlsx | default            | 16                        | <ProductType> | Disbursal Author |     |          | indiv         |
      | Kisan Vikas Patra           | collateral.xlsx | default            | 334                       | <ProductType> | Disbursal Author |     |          | indiv         |
      | National Saving Certificate | collateral.xlsx | default            | 347                       | <ProductType> | Disbursal Author |     |          | indiv         |

# ${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
# ${CollType:["Deposit"]}
# ${CollSubType:[]}
#FeatureID-ACAUTOCAS-235,ACAUTOCAS-236,ACAUTOCAS-237
  Scenario Outline: ACAUTOCAS-11583:  At Disbursal Author stage user should not be able to delink security collateral attached to "<ProductType>" application
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user selects collateral type along with collateral sub type
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user checks the duplicates on collateral dedupe check
    When user saves the data of collateral subtype
    Then user should not be able to delete the saved collateral
    Examples:
      | CollSubType                 | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage | key | category | applicantType |
      | Fixed Deposit               | collateral.xlsx | default            | 16                        | <ProductType> | Disbursal Author |     |          | indiv         |
      | Kisan Vikas Patra           | collateral.xlsx | default            | 334                       | <ProductType> | Disbursal Author |     |          | indiv         |
      | National Saving Certificate | collateral.xlsx | default            | 347                       | <ProductType> | Disbursal Author |     |          | indiv         |

# ${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
# ${CollType:["Deposit"]}
# ${CollSubType:[]}
#FeatureID-ACAUTOCAS-235,ACAUTOCAS-236,ACAUTOCAS-237
  Scenario Outline: ACAUTOCAS-11584:  At Disbursal Author stage user should not be able to add security collateral attached to "<ProductType>" application
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user selects collateral type along with collateral sub type
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user checks the duplicates on collateral dedupe check
    When user saves the data of collateral subtype
    Then user should not be able to add the collateral
    Examples:
      | CollSubType                 | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage | key | category | applicantType |
      | Fixed Deposit               | collateral.xlsx | default            | 16                        | <ProductType> | Disbursal Author |     |          | indiv         |
      | Kisan Vikas Patra           | collateral.xlsx | default            | 334                       | <ProductType> | Disbursal Author |     |          | indiv         |
      | National Saving Certificate | collateral.xlsx | default            | 347                       | <ProductType> | Disbursal Author |     |          | indiv         |

  @Sanity
# ${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
# ${CollType:["Deposit"]}
# ${CollSubType:[]}
#FeatureID-ACAUTOCAS-235,ACAUTOCAS-236,ACAUTOCAS-237
  Scenario Outline: ACAUTOCAS-11585:  At Disbursal Author stage user should be able to view same data of "<CollSubType>" attached to "<ProductType>" application as originally entered
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user selects collateral type along with collateral sub type
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user checks the duplicates on collateral dedupe check
    When user saves the data of collateral subtype
    And user views the saved collateral
    Then user should be able to see the same data as entered earlier for deposit "<CollSubType>"
    Examples:
      | CollSubType                 | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage | key | category | applicantType |
      | Fixed Deposit               | collateral.xlsx | default            | 16                        | <ProductType> | Disbursal Author |     |          | indiv         |
      | Kisan Vikas Patra           | collateral.xlsx | default            | 334                       | <ProductType> | Disbursal Author |     |          | indiv         |
      | National Saving Certificate | collateral.xlsx | default            | 347                       | <ProductType> | Disbursal Author |     |          | indiv         |

  #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
  #PF(Un-Secured),EDU(Un-Secured)
  @ImplementedBy-priyanshu.kashyap
  Scenario Outline: ACAUTOCAS-16757: user successfully moves to the next stage without collateral of "<ProductType>" application at "<ApplicationStage>" stage
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral
    When user moves to the next stage
    Then application should successfully move to next stage
    Examples:
      | ProductType   | ApplicationStage   | key | category | applicantType |
      | <ProductType> | <ApplicationStage> |     |          | indiv         |

