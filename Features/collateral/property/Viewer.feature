@Epic-Secondary_Collateral
@AuthoredBy-rsurya.kumar
@Reconciled
@ReviewedByDEV
@CERSAIDataView
@TypeProperty
@ImplementedBy-ankit.yadav
@Release3
@ReviewedSecCollateral
@Perishable
@Conventional
@ReleaseSecCollateralM5
Feature: Secondary collateral on viewer stages

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0

#${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#${ApplicationStage:["Post Approval"]}
  @LoggedBug
#FeatureID-ACAUTOCAS-225,ACAUTOCAS-226,ACAUTOCAS-227,ACAUTOCAS-228
  Scenario Outline: ACAUTOCAS-11652:  At Post Approval stage user should not be able to modify security collateral <CollateralSubType> attached to <ProductType> application as originally entered at <Collateral_propertyDetails_rowNum>
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<Var_Stage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral for "<Var_Stage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_propertyDetails>" and row <Collateral_propertyDetails_rowNum>
    And user adds property type collateral based on "<CollateralSubType>" subtype
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    When user moves from "<Var_Stage>" to application of "<ProductType>" product type as "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" stage
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user open collateral page of "<ApplicationStage>" stage
    Then user should not be able to modify collateral
    Examples:
      | ProductType   | ApplicationStage   | key | category | applicantType | CollateralSubType                   | Var_Stage | CollateralWB    | Collateral_propertyDetails | Collateral_propertyDetails_rowNum |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Builder Property Under Construction | DDE       | collateral.xlsx | property_details           | 0                                 |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Construction On Land                | DDE       | collateral.xlsx | property_details           | 12                                |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Plot + Self Construction            | DDE       | collateral.xlsx | property_details           | 24                                |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Ready Property                      | DDE       | collateral.xlsx | property_details           | 36                                |

#${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#${ApplicationStage:["APP UPDATE RECOMMENDATION"]}
#FeatureID-ACAUTOCAS-225,ACAUTOCAS-226,ACAUTOCAS-227,ACAUTOCAS-228
Scenario Outline: ACAUTOCAS-17056: At App Update Recommendation stage user should not be able to modify security collateral <CollateralSubType> attached to <ProductType> application as originally entered at <Collateral_propertyDetails_rowNum>
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<Var_Stage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral for "<Var_Stage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_propertyDetails>" and row <Collateral_propertyDetails_rowNum>
    And user adds property type collateral based on "<CollateralSubType>" subtype
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    When user moves from "<Var_Stage>" to application of "<ProductType>" product type as "<applicantType>" applicant at "<Subsequent_Stage>" for "<category>" with "<key>" stage
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<Subsequent_Stage>" for "<category>" with "appupdate" from application grid
    And user open collateral page of "<ApplicationStage>" stage
    Then user should not be able to modify collateral
    Examples:
      | ProductType   | ApplicationStage   | key | category | applicantType | CollateralSubType                   | Var_Stage | Subsequent_Stage | CollateralWB    | Collateral_propertyDetails | Collateral_propertyDetails_rowNum |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Builder Property Under Construction | DDE       | Disbursal Author | collateral.xlsx | property_details           | 0                                 |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Construction On Land                | DDE       | Disbursal Author | collateral.xlsx | property_details           | 12                                |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Plot + Self Construction            | DDE       | Disbursal Author | collateral.xlsx | property_details           | 24                                |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Ready Property                      | DDE       | Disbursal Author | collateral.xlsx | property_details           | 36                                |

#${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#${ApplicationStage:["APP UPDATE APPROVAL"]}
#FeatureID-ACAUTOCAS-225,ACAUTOCAS-226,ACAUTOCAS-227,ACAUTOCAS-228
Scenario Outline: ACAUTOCAS-17057: At App update Approval stage user should not be able to modify security collateral <CollateralSubType> attached to <ProductType> application as originally entered at <Collateral_propertyDetails_rowNum>
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<Var_Stage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral for "<Var_Stage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_propertyDetails>" and row <Collateral_propertyDetails_rowNum>
    And user adds property type collateral based on "<CollateralSubType>" subtype
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    When user moves from "<Var_Stage>" to application of "<ProductType>" product type as "<applicantType>" applicant at "<Subsequent_Stage>" for "<category>" with "<key>" stage
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<Subsequent_Stage>" for "<category>" with "approval" from application grid
    And user open collateral page of "<ApplicationStage>" stage
    Then user should not be able to modify collateral
    Examples:
      | ProductType   | ApplicationStage   | key | category | applicantType | CollateralSubType                   | Var_Stage | Subsequent_Stage | CollateralWB    | Collateral_propertyDetails | Collateral_propertyDetails_rowNum |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Builder Property Under Construction | DDE       | Disbursal Author | collateral.xlsx | property_details           | 0                                 |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Construction On Land                | DDE       | Disbursal Author | collateral.xlsx | property_details           | 12                                |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Plot + Self Construction            | DDE       | Disbursal Author | collateral.xlsx | property_details           | 24                                |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Ready Property                      | DDE       | Disbursal Author | collateral.xlsx | property_details           | 36                                |

#${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#${ApplicationStage:["Post Approval"]}
  @LoggedBug
#FeatureID-ACAUTOCAS-225,ACAUTOCAS-226,ACAUTOCAS-227,ACAUTOCAS-228
  Scenario Outline: ACAUTOCAS-11653:  At Post Approval stage user should not be able to delink security collateral <CollateralSubType> attached to <ProductType> application at <Collateral_propertyDetails_rowNum>
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<Var_Stage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral for "<Var_Stage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_propertyDetails>" and row <Collateral_propertyDetails_rowNum>
    And user adds property type collateral based on "<CollateralSubType>" subtype
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    When user moves from "<Var_Stage>" to application of "<ProductType>" product type as "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" stage
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user open collateral page of "<ApplicationStage>" stage
    Then user should not be able to delink collateral
    Examples:
      | ProductType   | ApplicationStage   | key | category | applicantType | CollateralSubType                   | Var_Stage | CollateralWB    | Collateral_propertyDetails | Collateral_propertyDetails_rowNum |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Builder Property Under Construction | DDE       | collateral.xlsx | property_details           | 0                                 |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Construction On Land                | DDE       | collateral.xlsx | property_details           | 12                                |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Plot + Self Construction            | DDE       | collateral.xlsx | property_details           | 24                                |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Ready Property                      | DDE       | collateral.xlsx | property_details           | 36                                |

#${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#${ApplicationStage:["APP UPDATE RECOMMENDATION"]}
#FeatureID-ACAUTOCAS-225,ACAUTOCAS-226,ACAUTOCAS-227,ACAUTOCAS-228
Scenario Outline: ACAUTOCAS-17058: At App update Recommendation stage user should not be able to delink security collateral <CollateralSubType> attached to <ProductType> application at <Collateral_propertyDetails_rowNum>
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<Var_Stage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral for "<Var_Stage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_propertyDetails>" and row <Collateral_propertyDetails_rowNum>
    And user adds property type collateral based on "<CollateralSubType>" subtype
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    When user moves from "<Var_Stage>" to application of "<ProductType>" product type as "<applicantType>" applicant at "<Subsequent_Stage>" for "<category>" with "<key>" stage
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<Subsequent_Stage>" for "<category>" with "appupdate" from application grid
    And user open collateral page of "<ApplicationStage>" stage
    Then user should not be able to delink collateral
    Examples:
      | ProductType   | ApplicationStage   | key | category | applicantType | CollateralSubType                   | Var_Stage | Subsequent_Stage | CollateralWB    | Collateral_propertyDetails | Collateral_propertyDetails_rowNum |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Builder Property Under Construction | DDE       | Disbursal Author | collateral.xlsx | property_details           | 0                                 |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Construction On Land                | DDE       | Disbursal Author | collateral.xlsx | property_details           | 12                                |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Plot + Self Construction            | DDE       | Disbursal Author | collateral.xlsx | property_details           | 24                                |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Ready Property                      | DDE       | Disbursal Author | collateral.xlsx | property_details           | 36                                |

#${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#${ApplicationStage:["APP UPDATE APPROVAL"]}
#FeatureID-ACAUTOCAS-225,ACAUTOCAS-226,ACAUTOCAS-227,ACAUTOCAS-228
Scenario Outline: ACAUTOCAS-17059: At App Update Approval stage user should not be able to delink security collateral <CollateralSubType> attached to <ProductType> application at <Collateral_propertyDetails_rowNum>
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<Var_Stage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral for "<Var_Stage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_propertyDetails>" and row <Collateral_propertyDetails_rowNum>
    And user adds property type collateral based on "<CollateralSubType>" subtype
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    When user moves from "<Var_Stage>" to application of "<ProductType>" product type as "<applicantType>" applicant at "<Subsequent_Stage>" for "<category>" with "<key>" stage
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<Subsequent_Stage>" for "<category>" with "approval" from application grid
    And user open collateral page of "<ApplicationStage>" stage
    Then user should not be able to delink collateral
    Examples:
      | ProductType   | ApplicationStage   | key | category | applicantType | CollateralSubType                   | Var_Stage | Subsequent_Stage | CollateralWB    | Collateral_propertyDetails | Collateral_propertyDetails_rowNum |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Builder Property Under Construction | DDE       | Disbursal Author | collateral.xlsx | property_details           | 0                                 |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Construction On Land                | DDE       | Disbursal Author | collateral.xlsx | property_details           | 12                                |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Plot + Self Construction            | DDE       | Disbursal Author | collateral.xlsx | property_details           | 24                                |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Ready Property                      | DDE       | Disbursal Author | collateral.xlsx | property_details           | 36                                |

#${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#${ApplicationStage:["APP UPDATE RECOMMENDATION"]}
#FeatureID-ACAUTOCAS-225,ACAUTOCAS-226,ACAUTOCAS-227,ACAUTOCAS-228
  Scenario Outline: ACAUTOCAS-11654:  At App update Recommendation stage user should not be able to add security collateral <CollateralSubType> attached to <ProductType> application as <Collateral_propertyDetails_rowNum>
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<Var_Stage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral for "<Var_Stage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_propertyDetails>" and row <Collateral_propertyDetails_rowNum>
    And user adds property type collateral based on "<CollateralSubType>" subtype
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    When user moves from "<Var_Stage>" to application of "<ProductType>" product type as "<applicantType>" applicant at "<Subsequent_Stage>" for "<category>" with "<key>" stage
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<Subsequent_Stage>" for "<category>" with "appupdate" from application grid
    And user open collateral page of "<ApplicationStage>" stage
    Then user should not be able to add the collateral
    Examples:
      | ProductType   | ApplicationStage   | key | category | applicantType | CollateralSubType                   | Var_Stage | Subsequent_Stage | CollateralWB    | Collateral_propertyDetails | Collateral_propertyDetails_rowNum |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Builder Property Under Construction | DDE       | Disbursal Author | collateral.xlsx | property_details           | 0                                 |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Construction On Land                | DDE       | Disbursal Author | collateral.xlsx | property_details           | 12                                |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Plot + Self Construction            | DDE       | Disbursal Author | collateral.xlsx | property_details           | 24                                |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Ready Property                      | DDE       | Disbursal Author | collateral.xlsx | property_details           | 36                                |

#${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#${ApplicationStage:["APP UPDATE APPROVAL"]}
#FeatureID-ACAUTOCAS-225,ACAUTOCAS-226,ACAUTOCAS-227,ACAUTOCAS-228
Scenario Outline: ACAUTOCAS-17060: At App Update Approval stage user should not be able to add security collateral <CollateralSubType> attached to <ProductType> application as <Collateral_propertyDetails_rowNum>
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<Var_Stage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral for "<Var_Stage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_propertyDetails>" and row <Collateral_propertyDetails_rowNum>
    And user adds property type collateral based on "<CollateralSubType>" subtype
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    When user moves from "<Var_Stage>" to application of "<ProductType>" product type as "<applicantType>" applicant at "<Subsequent_Stage>" for "<category>" with "<key>" stage
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<Subsequent_Stage>" for "<category>" with "approval" from application grid
    And user open collateral page of "<ApplicationStage>" stage
    Then user should not be able to add the collateral
    Examples:
      | ProductType   | ApplicationStage   | key | category | applicantType | CollateralSubType                   | Var_Stage | Subsequent_Stage | CollateralWB    | Collateral_propertyDetails | Collateral_propertyDetails_rowNum |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Builder Property Under Construction | DDE       | Disbursal Author | collateral.xlsx | property_details           | 0                                 |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Construction On Land                | DDE       | Disbursal Author | collateral.xlsx | property_details           | 12                                |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Plot + Self Construction            | DDE       | Disbursal Author | collateral.xlsx | property_details           | 24                                |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Ready Property                      | DDE       | Disbursal Author | collateral.xlsx | property_details           | 36                                |

#${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#${ApplicationStage:["Post Approval"]}
#FeatureID-ACAUTOCAS-225,ACAUTOCAS-226,ACAUTOCAS-227,ACAUTOCAS-228
  Scenario Outline: ACAUTOCAS-11655: At Post Approval stage user should be able to view same data of <CollateralSubType> attached to <ProductType> application as originally entered at <Collateral_propertyDetails_rowNum>
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<Var_Stage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral for "<Var_Stage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_propertyDetails>" and row <Collateral_propertyDetails_rowNum>
    And user adds property type collateral based on "<CollateralSubType>" subtype
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    When user moves from "<Var_Stage>" to application of "<ProductType>" product type as "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" stage
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user open collateral page of "<ApplicationStage>" stage
    And user views the already added collateral
    Then user should be able to reconcile the "<CollateralSubType>" data successfully
    Examples:
      | ProductType   | ApplicationStage   | key | category | applicantType | CollateralSubType                   | Var_Stage | CollateralWB    | Collateral_propertyDetails | Collateral_propertyDetails_rowNum |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Builder Property Under Construction | DDE       | collateral.xlsx | property_details           | 0                                 |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Construction On Land                | DDE       | collateral.xlsx | property_details           | 12                                |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Plot + Self Construction            | DDE       | collateral.xlsx | property_details           | 24                                |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Ready Property                      | DDE       | collateral.xlsx | property_details           | 36                                |

#${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#${ApplicationStage:["APP UPDATE RECOMMENDATION"]}
#FeatureID-ACAUTOCAS-225,ACAUTOCAS-226,ACAUTOCAS-227,ACAUTOCAS-228
Scenario Outline: ACAUTOCAS-17061: At App update Recommendation stage user should be able to view same data of <CollateralSubType> attached to <ProductType> application as originally entered at <Collateral_propertyDetails>
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<Var_Stage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral for "<Var_Stage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_propertyDetails>" and row <Collateral_propertyDetails_rowNum>
    And user adds property type collateral based on "<CollateralSubType>" subtype
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    When user moves from "<Var_Stage>" to application of "<ProductType>" product type as "<applicantType>" applicant at "<Subsequent_Stage>" for "<category>" with "<key>" stage
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<Subsequent_Stage>" for "<category>" with "appupdate" from application grid
    And user open collateral page of "<ApplicationStage>" stage
    And user views the already added collateral
    Then user should be able to reconcile the "<CollateralSubType>" data successfully
    Examples:
      | ProductType   | ApplicationStage   | key | category | applicantType | CollateralSubType                   | Var_Stage | Subsequent_Stage | CollateralWB    | Collateral_propertyDetails | Collateral_propertyDetails_rowNum |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Builder Property Under Construction | DDE       | Disbursal Author | collateral.xlsx | property_details           | 0                                 |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Construction On Land                | DDE       | Disbursal Author | collateral.xlsx | property_details           | 12                                |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Plot + Self Construction            | DDE       | Disbursal Author | collateral.xlsx | property_details           | 24                                |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Ready Property                      | DDE       | Disbursal Author | collateral.xlsx | property_details           | 36                                |

#${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#${ApplicationStage:["APP UPDATE APPROVAL"]}
#FeatureID-ACAUTOCAS-225,ACAUTOCAS-226,ACAUTOCAS-227,ACAUTOCAS-228
Scenario Outline: ACAUTOCAS-17062: At App update Approval stage user should be able to view same data of <CollateralSubType> attached to <ProductType> application as originally entered at <Collateral_propertyDetails_rowNum>
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<Var_Stage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral for "<Var_Stage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_propertyDetails>" and row <Collateral_propertyDetails_rowNum>
    And user adds property type collateral based on "<CollateralSubType>" subtype
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    When user moves from "<Var_Stage>" to application of "<ProductType>" product type as "<applicantType>" applicant at "<Subsequent_Stage>" for "<category>" with "<key>" stage
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<Subsequent_Stage>" for "<category>" with "approval" from application grid
    And user open collateral page of "<ApplicationStage>" stage
    And user views the already added collateral
    Then user should be able to reconcile the "<CollateralSubType>" data successfully
    Examples:
      | ProductType   | ApplicationStage   | key | category | applicantType | CollateralSubType                   | Var_Stage | Subsequent_Stage | CollateralWB    | Collateral_propertyDetails | Collateral_propertyDetails_rowNum |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Builder Property Under Construction | DDE       | Disbursal Author | collateral.xlsx | property_details           | 0                                 |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Construction On Land                | DDE       | Disbursal Author | collateral.xlsx | property_details           | 12                                |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Plot + Self Construction            | DDE       | Disbursal Author | collateral.xlsx | property_details           | 24                                |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Ready Property                      | DDE       | Disbursal Author | collateral.xlsx | property_details           | 36                                |

############################################################################################################
  @LoggedBug
#${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#${ApplicationStage:["Disbursal Author"]}
#FeatureID-ACAUTOCAS-225,ACAUTOCAS-226,ACAUTOCAS-227,ACAUTOCAS-228
  Scenario Outline: ACAUTOCAS-11656:  At Disbursal Author stage user should not be able to modify security collateral attached to <ProductType> application
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<Var_Stage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral for "<Var_Stage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_propertyDetails>" and row <Collateral_propertyDetails_rowNum>
    And user adds property type collateral based on "<CollateralSubType>" subtype
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    When user moves from "<Var_Stage>" to application of "<ProductType>" product type as "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" stage
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user open collateral page of "<ApplicationStage>" stage
    Then user should not be able to modify collateral
    Examples:
      | ProductType   | ApplicationStage   | key | category | applicantType | CollateralSubType                   | Var_Stage | CollateralWB    | Collateral_propertyDetails | Collateral_propertyDetails_rowNum |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Builder Property Under Construction | DDE       | collateral.xlsx | property_details           | 0                                 |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Construction On Land                | DDE       | collateral.xlsx | property_details           | 12                                |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Plot + Self Construction            | DDE       | collateral.xlsx | property_details           | 24                                |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Ready Property                      | DDE       | collateral.xlsx | property_details           | 36                                |

  @LoggedBug
#${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#${ApplicationStage:["Disbursal Author"]}
#FeatureID-ACAUTOCAS-225,ACAUTOCAS-226,ACAUTOCAS-227,ACAUTOCAS-228
  Scenario Outline: ACAUTOCAS-11657:  At Disbursal Author stage user should not be able to delink security collateral attached to <ProductType> application
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<Var_Stage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral for "<Var_Stage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_propertyDetails>" and row <Collateral_propertyDetails_rowNum>
    And user adds property type collateral based on "<CollateralSubType>" subtype
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    When user moves from "<Var_Stage>" to application of "<ProductType>" product type as "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" stage
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user open collateral page of "<ApplicationStage>" stage
    Then user should not be able to delink collateral
    Examples:
      | ProductType   | ApplicationStage   | key | category | applicantType | CollateralSubType                   | Var_Stage | CollateralWB    | Collateral_propertyDetails | Collateral_propertyDetails_rowNum |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Builder Property Under Construction | DDE       | collateral.xlsx | property_details           | 0                                 |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Construction On Land                | DDE       | collateral.xlsx | property_details           | 12                                |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Plot + Self Construction            | DDE       | collateral.xlsx | property_details           | 24                                |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Ready Property                      | DDE       | collateral.xlsx | property_details           | 36                                |

#${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#${ApplicationStage:["Disbursal Author"]}
#FeatureID-ACAUTOCAS-225,ACAUTOCAS-226,ACAUTOCAS-227,ACAUTOCAS-228
  Scenario Outline: ACAUTOCAS-11659:  At Disbursal Author stage user should be able to view same data of <CollateralSubType> attached to <ProductType> application as originally entered
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<Var_Stage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral for "<Var_Stage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_propertyDetails>" and row <Collateral_propertyDetails_rowNum>
    And user adds property type collateral based on "<CollateralSubType>" subtype
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    When user moves from "<Var_Stage>" to application of "<ProductType>" product type as "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" stage
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user open collateral page of "<ApplicationStage>" stage
    And user views the already added collateral
    Then user should be able to reconcile the "<CollateralSubType>" data successfully
    Examples:
      | ProductType   | ApplicationStage   | key | category | applicantType | CollateralSubType                   | Var_Stage | CollateralWB    | Collateral_propertyDetails | Collateral_propertyDetails_rowNum |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Builder Property Under Construction | DDE       | collateral.xlsx | property_details           | 0                                 |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Construction On Land                | DDE       | collateral.xlsx | property_details           | 12                                |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Plot + Self Construction            | DDE       | collateral.xlsx | property_details           | 24                                |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Ready Property                      | DDE       | collateral.xlsx | property_details           | 36                                |
