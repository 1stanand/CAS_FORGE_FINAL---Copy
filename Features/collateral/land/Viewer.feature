@Epic-Secondary_Collateral
@AuthoredBy-rsurya.kumar
@ImplementedBy-ankit.yadav
@ReviewedSecCollateral
@Release3
@Reconciled
@ReviewedByDEV
@CERSAIDataView
@Perishable
@Conventional

#${CollateralSubType:["Agricultural Land"]}

Feature: Secondary collateral on viewer stages

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0

  @LoggedBug
#${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#${ApplicationStage:["Post Approval"]}
#FeatureID-ACAUTOCAS-239
  Scenario Outline: ACAUTOCAS-11642:  At Post Approval stage user should not be able to modify security collateral <CollateralSubType> attached to <ProductType> application as originally entered at <Collateral_agricultureDetails_rowNum>
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<Var_Stage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral for "<Var_Stage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_agricultureDetails>" and row <Collateral_agricultureDetails_rowNum>
    And user adds land type collateral based on "<CollateralSubType>" subtype
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    When user moves from "<Var_Stage>" to application of "<ProductType>" product type as "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" stage
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user open collateral page of "<ApplicationStage>" stage
    Then user should not be able to modify collateral
    Examples:
      | ProductType   | ApplicationStage   | key | category | applicantType | CollateralSubType | Var_Stage | CollateralWB    | Collateral_agricultureDetails | Collateral_agricultureDetails_rowNum |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Agricultural Land | DDE       | collateral.xlsx | agriculture_details           | 0                                    |

#${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#${ApplicationStage:["APP UPDATE RECOMMENDATION"]}
#FeatureID-ACAUTOCAS-239
Scenario Outline: ACAUTOCAS-16929: At App Update Recommendation stage user should not be able to modify security collateral <CollateralSubType> attached to <ProductType> application as originally entered at <Collateral_agricultureDetails_rowNum>
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<Var_Stage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral for "<Var_Stage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_agricultureDetails>" and row <Collateral_agricultureDetails_rowNum>
    And user adds land type collateral based on "<CollateralSubType>" subtype
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    When user moves from "<Var_Stage>" to application of "<ProductType>" product type as "<applicantType>" applicant at "<Subsequent_Stage>" for "<category>" with "<key>" stage
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<Subsequent_Stage>" for "<category>" with "appupdate" from application grid
    And user open collateral page of "<ApplicationStage>" stage
    Then user should not be able to modify collateral
    Examples:
      | ProductType   | ApplicationStage   | key | category | applicantType | CollateralSubType | Var_Stage | Subsequent_Stage | CollateralWB    | Collateral_agricultureDetails | Collateral_agricultureDetails_rowNum |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Agricultural Land | DDE       | Disbursal Author | collateral.xlsx | agriculture_details           | 0                                    |

#${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#${ApplicationStage:["APP UPDATE APPROVAL"]}
#FeatureID-ACAUTOCAS-239
Scenario Outline: ACAUTOCAS-16930: At App update Approval stage user should not be able to modify security collateral <CollateralSubType> attached to <ProductType> application as originally entered at <Collateral_agricultureDetails_rowNum>
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<Var_Stage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral for "<Var_Stage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_agricultureDetails>" and row <Collateral_agricultureDetails_rowNum>
    And user adds land type collateral based on "<CollateralSubType>" subtype
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    When user moves from "<Var_Stage>" to application of "<ProductType>" product type as "<applicantType>" applicant at "<Subsequent_Stage>" for "<category>" with "<key>" stage
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<Subsequent_Stage>" for "<category>" with "approval" from application grid
    And user open collateral page of "<ApplicationStage>" stage
    Then user should not be able to modify collateral
    Examples:
      | ProductType   | ApplicationStage   | key | category | applicantType | CollateralSubType | Var_Stage | Subsequent_Stage | CollateralWB    | Collateral_agricultureDetails | Collateral_agricultureDetails_rowNum |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Agricultural Land | DDE       | Disbursal Author | collateral.xlsx | agriculture_details           | 0                                    |

  @LoggedBug
#${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#${ApplicationStage:["Post Approval"]}
#FeatureID-ACAUTOCAS-239
  Scenario Outline: ACAUTOCAS-11643:  At Post Approval stage user should not be able to delink security collateral attached to <ProductType> application
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<Var_Stage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral for "<Var_Stage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_agricultureDetails>" and row <Collateral_agricultureDetails_rowNum>
    And user adds land type collateral based on "<CollateralSubType>" subtype
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    When user moves from "<Var_Stage>" to application of "<ProductType>" product type as "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" stage
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user open collateral page of "<ApplicationStage>" stage
    Then user should not be able to delink collateral
    Examples:
      | ProductType   | ApplicationStage   | key | category | applicantType | CollateralSubType | Var_Stage | CollateralWB    | Collateral_agricultureDetails | Collateral_agricultureDetails_rowNum |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Agricultural Land | DDE       | collateral.xlsx | agriculture_details           | 0                                    |

#${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#${ApplicationStage:["APP UPDATE RECOMMENDATION"]}
#FeatureID-ACAUTOCAS-239
Scenario Outline: ACAUTOCAS-16931: At App update Recommendation stage user should not be able to delink security collateral <CollateralSubType> attached to <ProductType> application at <Collateral_agricultureDetails_rowNum>
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<Var_Stage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral for "<Var_Stage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_agricultureDetails>" and row <Collateral_agricultureDetails_rowNum>
    And user adds land type collateral based on "<CollateralSubType>" subtype
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    When user moves from "<Var_Stage>" to application of "<ProductType>" product type as "<applicantType>" applicant at "<Subsequent_Stage>" for "<category>" with "<key>" stage
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<Subsequent_Stage>" for "<category>" with "appupdate" from application grid
    And user open collateral page of "<ApplicationStage>" stage
    Then user should not be able to delink collateral
    Examples:
      | ProductType   | ApplicationStage   | key | category | applicantType | CollateralSubType | Var_Stage | Subsequent_Stage | CollateralWB    | Collateral_agricultureDetails | Collateral_agricultureDetails_rowNum |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Agricultural Land | DDE       | Disbursal Author | collateral.xlsx | agriculture_details           | 0                                    |

#${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#${ApplicationStage:["APP UPDATE APPROVAL"]}
#FeatureID-ACAUTOCAS-239
Scenario Outline: ACAUTOCAS-16932: At App Update Approval stage user should not be able to delink security collateral <CollateralSubType> attached to <ProductType> application at <Collateral_agricultureDetails_rowNum>
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<Var_Stage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral for "<Var_Stage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_agricultureDetails>" and row <Collateral_agricultureDetails_rowNum>
    And user adds land type collateral based on "<CollateralSubType>" subtype
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    When user moves from "<Var_Stage>" to application of "<ProductType>" product type as "<applicantType>" applicant at "<Subsequent_Stage>" for "<category>" with "<key>" stage
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<Subsequent_Stage>" for "<category>" with "approval" from application grid
    And user open collateral page of "<ApplicationStage>" stage
    Then user should not be able to delink collateral
    Examples:
      | ProductType   | ApplicationStage   | key | category | applicantType | CollateralSubType | Var_Stage | Subsequent_Stage | CollateralWB    | Collateral_agricultureDetails | Collateral_agricultureDetails_rowNum |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Agricultural Land | DDE       | Disbursal Author | collateral.xlsx | agriculture_details           | 0                                    |

#${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#${ApplicationStage:["APP UPDATE RECOMMENDATION"]}
#FeatureID-ACAUTOCAS-239
  Scenario Outline: ACAUTOCAS-11644:  At App update Recommendation stage user should not be able to add security collateral <CollateralSubType> attached to <ProductType> application as <Collateral_agricultureDetails_rowNum>
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<Var_Stage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral for "<Var_Stage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_agricultureDetails>" and row <Collateral_agricultureDetails_rowNum>
    And user adds land type collateral based on "<CollateralSubType>" subtype
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    When user moves from "<Var_Stage>" to application of "<ProductType>" product type as "<applicantType>" applicant at "<Subsequent_Stage>" for "<category>" with "<key>" stage
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<Subsequent_Stage>" for "<category>" with "appupdate" from application grid
    And user open collateral page of "<ApplicationStage>" stage
    Then user should not be able to add the collateral
    Examples:
      | ProductType   | ApplicationStage   | key | category | applicantType | CollateralSubType | Var_Stage | Subsequent_Stage | CollateralWB    | Collateral_agricultureDetails | Collateral_agricultureDetails_rowNum |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Agricultural Land | DDE       | Disbursal Author | collateral.xlsx | agriculture_details           | 0                                    |

#${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#${ApplicationStage:["APP UPDATE APPROVAL"]}
#FeatureID-ACAUTOCAS-239
Scenario Outline: ACAUTOCAS-16933: At App Update Approval stage user should not be able to add security collateral <CollateralSubType> attached to <ProductType> application as <Collateral_agricultureDetails_rowNum>
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<Var_Stage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral for "<Var_Stage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_agricultureDetails>" and row <Collateral_agricultureDetails_rowNum>
    And user adds land type collateral based on "<CollateralSubType>" subtype
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    When user moves from "<Var_Stage>" to application of "<ProductType>" product type as "<applicantType>" applicant at "<Subsequent_Stage>" for "<category>" with "<key>" stage
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<Subsequent_Stage>" for "<category>" with "approval" from application grid
    And user open collateral page of "<ApplicationStage>" stage
    Then user should not be able to add the collateral
    Examples:
      | ProductType   | ApplicationStage   | key | category | applicantType | CollateralSubType | Var_Stage | Subsequent_Stage | CollateralWB    | Collateral_agricultureDetails | Collateral_agricultureDetails_rowNum |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Agricultural Land | DDE       | Disbursal Author | collateral.xlsx | agriculture_details           | 0                                    |

#${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#${ApplicationStage:["Post Approval"]}
#FeatureID-ACAUTOCAS-239
  Scenario Outline: ACAUTOCAS-11645: At Post Approval stage user should be able to view same data of <CollateralSubType> attached to <ProductType> application as originally entered at <Collateral_agricultureDetails_rowNum>
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<Var_Stage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral for "<Var_Stage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_agricultureDetails>" and row <Collateral_agricultureDetails_rowNum>
    And user adds land type collateral based on "<CollateralSubType>" subtype
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    When user moves from "<Var_Stage>" to application of "<ProductType>" product type as "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" stage
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user open collateral page of "<ApplicationStage>" stage
    And user views the already added collateral
    Then user should be able to reconcile the "<CollateralSubType>" data successfully
    Examples:
      | ProductType   | ApplicationStage   | key | category | applicantType | CollateralSubType | Var_Stage | CollateralWB    | Collateral_agricultureDetails | Collateral_agricultureDetails_rowNum |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Agricultural Land | DDE       | collateral.xlsx | agriculture_details           | 0                                    |

#${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#${ApplicationStage:["APP UPDATE RECOMMENDATION"]}
#FeatureID-ACAUTOCAS-239
Scenario Outline: ACAUTOCAS-16934: At App update Recommendation stage user should be able to view same data of <CollateralSubType> attached to <ProductType> application as originally entered at <Collateral_agricultureDetails>
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<Var_Stage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral for "<Var_Stage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_agricultureDetails>" and row <Collateral_agricultureDetails_rowNum>
    And user adds land type collateral based on "<CollateralSubType>" subtype
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    When user moves from "<Var_Stage>" to application of "<ProductType>" product type as "<applicantType>" applicant at "<Subsequent_Stage>" for "<category>" with "<key>" stage
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<Subsequent_Stage>" for "<category>" with "appupdate" from application grid
    And user open collateral page of "<ApplicationStage>" stage
    And user views the already added collateral
    Then user should be able to reconcile the "<CollateralSubType>" data successfully
    Examples:
      | ProductType   | ApplicationStage   | key | category | applicantType | CollateralSubType | Var_Stage | Subsequent_Stage | CollateralWB    | Collateral_agricultureDetails | Collateral_agricultureDetails_rowNum |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Agricultural Land | DDE       | Disbursal Author | collateral.xlsx | agriculture_details           | 0                                    |

#${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#${ApplicationStage:["APP UPDATE APPROVAL"]}
#FeatureID-ACAUTOCAS-239
Scenario Outline: ACAUTOCAS-16935: At App update Approval stage user should be able to view same data of <CollateralSubType> attached to <ProductType> application as originally entered at <Collateral_agricultureDetails_rowNum>
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<Var_Stage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral for "<Var_Stage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_agricultureDetails>" and row <Collateral_agricultureDetails_rowNum>
    And user adds land type collateral based on "<CollateralSubType>" subtype
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    When user moves from "<Var_Stage>" to application of "<ProductType>" product type as "<applicantType>" applicant at "<Subsequent_Stage>" for "<category>" with "<key>" stage
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<Subsequent_Stage>" for "<category>" with "approval" from application grid
    And user open collateral page of "<ApplicationStage>" stage
    And user views the already added collateral
    Then user should be able to reconcile the "<CollateralSubType>" data successfully
    Examples:
      | ProductType   | ApplicationStage   | key | category | applicantType | CollateralSubType | Var_Stage | Subsequent_Stage | CollateralWB    | Collateral_agricultureDetails | Collateral_agricultureDetails_rowNum |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Agricultural Land | DDE       | Disbursal Author | collateral.xlsx | agriculture_details           | 0                                    |

######################################################################################################################################################################
#${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#${ApplicationStage:["Disbursal Author"]}
#FeatureID-ACAUTOCAS-239
  Scenario Outline: ACAUTOCAS-11646:  At Disbursal Author stage user should not be able to modify security collateral attached to <ProductType> application
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<Var_Stage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral for "<Var_Stage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_agricultureDetails>" and row <Collateral_agricultureDetails_rowNum>
    And user adds land type collateral based on "<CollateralSubType>" subtype
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    When user moves from "<Var_Stage>" to application of "<ProductType>" product type as "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" stage
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user open collateral page of "<ApplicationStage>" stage
    Then user should not be able to modify collateral
    Examples:
      | ProductType   | ApplicationStage   | key | category | applicantType | CollateralSubType | Var_Stage | CollateralWB    | Collateral_agricultureDetails | Collateral_agricultureDetails_rowNum |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Agricultural Land | DDE       | collateral.xlsx | agriculture_details           | 0                                    |

  @LoggedBug
#${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#${ApplicationStage:["Disbursal Author"]}
#FeatureID-ACAUTOCAS-239
  Scenario Outline: ACAUTOCAS-11647:  At Disbursal Author stage user should not be able to delink security collateral attached to <ProductType> application
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<Var_Stage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral for "<Var_Stage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_agricultureDetails>" and row <Collateral_agricultureDetails_rowNum>
    And user adds land type collateral based on "<CollateralSubType>" subtype
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    When user moves from "<Var_Stage>" to application of "<ProductType>" product type as "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" stage
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user open collateral page of "<ApplicationStage>" stage
    Then user should not be able to delink collateral
    Examples:
      | ProductType   | ApplicationStage   | key | category | applicantType | CollateralSubType | Var_Stage | CollateralWB    | Collateral_agricultureDetails | Collateral_agricultureDetails_rowNum |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Agricultural Land | DDE       | collateral.xlsx | agriculture_details           | 0                                    |

#${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#${ApplicationStage:["Disbursal Author"]}
#FeatureID-ACAUTOCAS-239
  Scenario Outline: ACAUTOCAS-11649:  At Disbursal Author stage user should be able to view same data of "<CollateralSubType>" attached to <ProductType> application as originally entered
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<Var_Stage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral for "<Var_Stage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_agricultureDetails>" and row <Collateral_agricultureDetails_rowNum>
    And user adds land type collateral based on "<CollateralSubType>" subtype
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    When user moves from "<Var_Stage>" to application of "<ProductType>" product type as "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" stage
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user open collateral page of "<ApplicationStage>" stage
    And user views the already added collateral
    Then user should be able to reconcile the "<CollateralSubType>" data successfully
    Examples:
      | ProductType   | ApplicationStage   | key | category | applicantType | CollateralSubType | Var_Stage | CollateralWB    | Collateral_agricultureDetails | Collateral_agricultureDetails_rowNum |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Agricultural Land | DDE       | collateral.xlsx | agriculture_details           | 0                                    |
