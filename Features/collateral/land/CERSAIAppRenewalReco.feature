@Epic-Secondary_Collateral
@AuthoredBy-rsurya.kumar
@ImplementedBy-ankit.yadav
@ReviewedSecCollateral
@CERSAIDataView
@ReviewedByDEV
@Reconciled
@Perishable
@TypeLand
@Conventional

#${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#${ApplicationStage:["APP UPDATE RECOMMENDATION"]}
#${CollateralSubType:["Agricultural Land"]}

Feature: CERSAI data addition for Land type collateral at Application Renewal Recommendation

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0

  @Release
#FeatureID-ACAUTOCAS-5077,ACAUTOCAS-239
  Scenario Outline: ACAUTOCAS-8936: CERSAI page data validation for collateral Land for <CollateralSubType> of <ProductType> at <ApplicationStage> stage with <Collateral_agricultureDetails_rowNum>
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<Var_Stage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral for "<Var_Stage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_agricultureDetails>" and row <Collateral_agricultureDetails_rowNum>
    And user adds collateral based on "<CollateralSubType>" subtype
    When user moves from "<Var_Stage>" to application of "<ProductType>" product type as "<applicantType>" applicant at "<Subsequent_Stage>" for "<category>" with "<key>" stage
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<Subsequent_Stage>" for "<category>" with "appupdate" from application grid
    And user open collateral page of "<ApplicationStage>" stage
    And user views the already added collateral
    Then user should not be able to modify "<CollateralSubType>"
      | collateral_type     |
      | collateral_sub_type |
      | country             |
      | plot_number         |
      | pincode             |
      | mobile_phone        |
    Examples:
      | ProductType   | ApplicationStage   | key | category | applicantType | CollateralSubType | Var_Stage | Subsequent_Stage | CollateralWB    | Collateral_agricultureDetails | Collateral_agricultureDetails_rowNum |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Agricultural Land | DDE       | Disbursal Author | collateral.xlsx | agriculture_details           | 0                                    |

  @Release
#FeatureID-ACAUTOCAS-5077,ACAUTOCAS-239
  Scenario Outline: ACAUTOCAS-8937: CERSAI page modification validation <FieldName> data for collateral Land for <CollateralSubType> of <ProductType> at <ApplicationStage> stage with <Collateral_agricultureDetails_rowNum>
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
    And user navigates to the CERSAI page
    Then user should be able to see "<FieldName>" field in "<Status>" state
    Examples:
      | ProductType   | ApplicationStage   | key | category | applicantType | CollateralSubType | Var_Stage | Subsequent_Stage | FieldName            | CollateralWB    | Collateral_agricultureDetails | Collateral_agricultureDetails_rowNum | Status   |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Agricultural Land | DDE       | Disbursal Author | Document State       | collateral.xlsx | agriculture_details           | 0                                    | Disabled |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Agricultural Land | DDE       | Disbursal Author | Sub Registrar Office | collateral.xlsx | agriculture_details           | 1                                    | Disabled |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Agricultural Land | DDE       | Disbursal Author | Document Taluka      | collateral.xlsx | agriculture_details           | 2                                    | Disabled |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Agricultural Land | DDE       | Disbursal Author | Document Pincode     | collateral.xlsx | agriculture_details           | 3                                    | Disabled |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Agricultural Land | DDE       | Disbursal Author | Document District    | collateral.xlsx | agriculture_details           | 4                                    | Disabled |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Agricultural Land | DDE       | Disbursal Author | Registration Date    | collateral.xlsx | agriculture_details           | 5                                    | Disabled |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Agricultural Land | DDE       | Disbursal Author | Serial No.           | collateral.xlsx | agriculture_details           | 6                                    | Disabled |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Agricultural Land | DDE       | Disbursal Author | No. of Documents     | collateral.xlsx | agriculture_details           | 7                                    | Disabled |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Agricultural Land | DDE       | Disbursal Author | Document Type        | collateral.xlsx | agriculture_details           | 8                                    | Disabled |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Agricultural Land | DDE       | Disbursal Author | Locality             | collateral.xlsx | agriculture_details           | 9                                    | Disabled |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Agricultural Land | DDE       | Disbursal Author | Title Document No    | collateral.xlsx | agriculture_details           | 10                                   | Disabled |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Agricultural Land | DDE       | Disbursal Author | Survey No            | collateral.xlsx | agriculture_details           | 11                                   | Disabled |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Agricultural Land | DDE       | Disbursal Author | Remarks              | collateral.xlsx | agriculture_details           | 12                                   | Disabled |

  @Release
#FeatureID-ACAUTOCAS-5077,ACAUTOCAS-239
  Scenario Outline: ACAUTOCAS-8938:  CERSAI page data reconciliation data for collateral Land for <CollateralSubType> of <ProductType> at <ApplicationStage> stage with <Collateral_agricultureDetails_rowNum>
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<Var_Stage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral for "<Var_Stage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_agricultureDetails>" and row <Collateral_agricultureDetails_rowNum>
    And user adds land type collateral based on "<CollateralSubType>" subtype
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    And user navigates to the CERSAI page
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_cersaiDetails>" and row <Collateral_cersaiDetails_rowNum>
    And user fills all fields in CERSAI section
    And user saves the CERSAI data
    When user moves from "<Var_Stage>" to application of "<ProductType>" product type as "<applicantType>" applicant at "<Subsequent_Stage>" for "<category>" with "<key>" stage
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<Subsequent_Stage>" for "<category>" with "appupdate" from application grid
    And user open collateral page of "<ApplicationStage>" stage
    And user views the already added collateral
    And user navigates to the CERSAI page
    Then user should be able to reconcile the cersai data successfully
    Examples:
      | ProductType   | ApplicationStage   | key | category | applicantType | CollateralSubType | Var_Stage | Subsequent_Stage | CollateralWB    | Collateral_agricultureDetails | Collateral_agricultureDetails_rowNum | Collateral_cersaiDetails | Collateral_cersaiDetails_rowNum |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Agricultural Land | DDE       | Disbursal Author | collateral.xlsx | agriculture_details           | 0                                    | cersai_details           | 250                             |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Agricultural Land | DDE       | Disbursal Author | collateral.xlsx | agriculture_details           | 1                                    | cersai_details           | 251                             |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Agricultural Land | DDE       | Disbursal Author | collateral.xlsx | agriculture_details           | 2                                    | cersai_details           | 252                             |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Agricultural Land | DDE       | Disbursal Author | collateral.xlsx | agriculture_details           | 3                                    | cersai_details           | 253                             |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Agricultural Land | DDE       | Disbursal Author | collateral.xlsx | agriculture_details           | 4                                    | cersai_details           | 254                             |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Agricultural Land | DDE       | Disbursal Author | collateral.xlsx | agriculture_details           | 5                                    | cersai_details           | 255                             |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Agricultural Land | DDE       | Disbursal Author | collateral.xlsx | agriculture_details           | 6                                    | cersai_details           | 256                             |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Agricultural Land | DDE       | Disbursal Author | collateral.xlsx | agriculture_details           | 7                                    | cersai_details           | 257                             |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Agricultural Land | DDE       | Disbursal Author | collateral.xlsx | agriculture_details           | 8                                    | cersai_details           | 258                             |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Agricultural Land | DDE       | Disbursal Author | collateral.xlsx | agriculture_details           | 9                                    | cersai_details           | 259                             |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Agricultural Land | DDE       | Disbursal Author | collateral.xlsx | agriculture_details           | 10                                   | cersai_details           | 260                             |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Agricultural Land | DDE       | Disbursal Author | collateral.xlsx | agriculture_details           | 11                                   | cersai_details           | 261                             |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Agricultural Land | DDE       | Disbursal Author | collateral.xlsx | agriculture_details           | 12                                   | cersai_details           | 262                             |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Agricultural Land | DDE       | Disbursal Author | collateral.xlsx | agriculture_details           | 13                                   | cersai_details           | 263                             |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Agricultural Land | DDE       | Disbursal Author | collateral.xlsx | agriculture_details           | 14                                   | cersai_details           | 264                             |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Agricultural Land | DDE       | Disbursal Author | collateral.xlsx | agriculture_details           | 15                                   | cersai_details           | 265                             |

  @Release
#FeatureID-ACAUTOCAS-5077,ACAUTOCAS-239
  Scenario Outline: ACAUTOCAS-8939:  CERSAI page security interest details validation data for collateral Property for <CollateralSubType> of <ProductType> at <ApplicationStage> stage with <Collateral_agricultureDetails_rowNum>
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<Var_Stage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral for "<Var_Stage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_agricultureDetails>" and row <Collateral_agricultureDetails_rowNum>
    And user adds land type collateral based on "<CollateralSubType>" subtype
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    And user navigates to the CERSAI page
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_cersaiDetails>" and row <Collateral_cersaiDetails_rowNum>
    And user fills all fields in CERSAI section
    And user fills all fields in section Security Interest section
    And user saves the CERSAI data
    When user moves from "<Var_Stage>" to application of "<ProductType>" product type as "<applicantType>" applicant at "<Subsequent_Stage>" for "<category>" with "<key>" stage
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<Subsequent_Stage>" for "<category>" with "appupdate" from application grid
    And user open collateral page of "<ApplicationStage>" stage
    And user views the already added collateral
    And user navigates to the CERSAI page
    Then user should be able to reconcile the security interest data successfully
    Examples:
      | ProductType   | ApplicationStage   | key | category | applicantType | CollateralSubType | Var_Stage | Subsequent_Stage | CollateralWB    | Collateral_agricultureDetails | Collateral_agricultureDetails_rowNum | Collateral_cersaiDetails | Collateral_cersaiDetails_rowNum |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Agricultural Land | DDE       | Disbursal Author | collateral.xlsx | agriculture_details           | 0                                    | cersai_details           | 250                             |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Agricultural Land | DDE       | Disbursal Author | collateral.xlsx | agriculture_details           | 1                                    | cersai_details           | 251                             |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Agricultural Land | DDE       | Disbursal Author | collateral.xlsx | agriculture_details           | 2                                    | cersai_details           | 252                             |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Agricultural Land | DDE       | Disbursal Author | collateral.xlsx | agriculture_details           | 3                                    | cersai_details           | 253                             |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Agricultural Land | DDE       | Disbursal Author | collateral.xlsx | agriculture_details           | 4                                    | cersai_details           | 254                             |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Agricultural Land | DDE       | Disbursal Author | collateral.xlsx | agriculture_details           | 5                                    | cersai_details           | 255                             |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Agricultural Land | DDE       | Disbursal Author | collateral.xlsx | agriculture_details           | 6                                    | cersai_details           | 256                             |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Agricultural Land | DDE       | Disbursal Author | collateral.xlsx | agriculture_details           | 7                                    | cersai_details           | 257                             |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Agricultural Land | DDE       | Disbursal Author | collateral.xlsx | agriculture_details           | 8                                    | cersai_details           | 258                             |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Agricultural Land | DDE       | Disbursal Author | collateral.xlsx | agriculture_details           | 9                                    | cersai_details           | 259                             |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Agricultural Land | DDE       | Disbursal Author | collateral.xlsx | agriculture_details           | 10                                   | cersai_details           | 260                             |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Agricultural Land | DDE       | Disbursal Author | collateral.xlsx | agriculture_details           | 11                                   | cersai_details           | 261                             |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Agricultural Land | DDE       | Disbursal Author | collateral.xlsx | agriculture_details           | 12                                   | cersai_details           | 262                             |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Agricultural Land | DDE       | Disbursal Author | collateral.xlsx | agriculture_details           | 13                                   | cersai_details           | 263                             |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Agricultural Land | DDE       | Disbursal Author | collateral.xlsx | agriculture_details           | 14                                   | cersai_details           | 264                             |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Agricultural Land | DDE       | Disbursal Author | collateral.xlsx | agriculture_details           | 15                                   | cersai_details           | 265                             |

  @Release
#FeatureID-ACAUTOCAS-5077,ACAUTOCAS-239
  Scenario Outline: ACAUTOCAS-8940: CERSAI page security interest details data should not be deleted at collateral Property for <CollateralSubType> of <ProductType> at <ApplicationStage> stage with <Collateral_agricultureDetails_rowNum>
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<Var_Stage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral for "<Var_Stage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_agricultureDetails>" and row <Collateral_agricultureDetails_rowNum>
    And user adds land type collateral based on "<CollateralSubType>" subtype
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    And user navigates to the CERSAI page
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_cersaiDetails>" and row <Collateral_cersaiDetails_rowNum>
    And user fills all fields in CERSAI section
    And user fills all fields in section Security Interest section
    And user saves the CERSAI data
    When user moves from "<Var_Stage>" to application of "<ProductType>" product type as "<applicantType>" applicant at "<Subsequent_Stage>" for "<category>" with "<key>" stage
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<Subsequent_Stage>" for "<category>" with "appupdate" from application grid
    And user open collateral page of "<ApplicationStage>" stage
    And user views the already added collateral
    And user navigates to the CERSAI page
    And user attempts to delete Security Interest Data
    Then user should not be able to delete Security Interest Data
    Examples:
      | ProductType   | ApplicationStage   | key | category | applicantType | CollateralSubType | Var_Stage | Subsequent_Stage | CollateralWB    | Collateral_agricultureDetails | Collateral_agricultureDetails_rowNum | Collateral_cersaiDetails | Collateral_cersaiDetails_rowNum |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Agricultural Land | DDE       | Disbursal Author | collateral.xlsx | agriculture_details           | 0                                    | cersai_details           | 250                             |

  @Release
#FeatureID-ACAUTOCAS-5077,ACAUTOCAS-239
  Scenario Outline: ACAUTOCAS-8941: CERSAI page security interest details data should not be modified at collateral Property for <CollateralSubType> of <ProductType> at <ApplicationStage> stage with <Collateral_agricultureDetails_rowNum>
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<Var_Stage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral for "<Var_Stage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_agricultureDetails>" and row <Collateral_agricultureDetails_rowNum>
    And user adds land type collateral based on "<CollateralSubType>" subtype
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    And user navigates to the CERSAI page
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_cersaiDetails>" and row <Collateral_cersaiDetails_rowNum>
    And user fills all fields in CERSAI section
    And user fills all fields in section Security Interest section
    And user saves the CERSAI data
    When user moves from "<Var_Stage>" to application of "<ProductType>" product type as "<applicantType>" applicant at "<Subsequent_Stage>" for "<category>" with "<key>" stage
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<Subsequent_Stage>" for "<category>" with "appupdate" from application grid
    And user open collateral page of "<ApplicationStage>" stage
    And user views the already added collateral
    And user navigates to the CERSAI page
    And user attempts to modify Security Interest Data
    Then user should not be able to modify Security Interest Data
    Examples:
      | ProductType   | ApplicationStage   | key | category | applicantType | CollateralSubType | Var_Stage | Subsequent_Stage | CollateralWB    | Collateral_agricultureDetails | Collateral_agricultureDetails_rowNum | Collateral_cersaiDetails | Collateral_cersaiDetails_rowNum |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Agricultural Land | DDE       | Disbursal Author | collateral.xlsx | agriculture_details           | 0                                    | cersai_details           | 250                             |

  @NotImplemented
#FeatureID-ACAUTOCAS-5077,ACAUTOCAS-239
Scenario Outline: ACAUTOCAS-16914:  CERSAI page data validation for collateral Land for <CollateralSubType> of <ProductType> at <ApplicationStage> stage with <Collateral_agricultureDetails_rowNum>
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<Var_Stage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral for "<Var_Stage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_agricultureDetails>" and row <Collateral_agricultureDetails_rowNum>
    And user adds collateral based on "<CollateralSubType>" subtype
    When user moves from "<Var_Stage>" to application of "<ProductType>" product type as "<applicantType>" applicant at "<Subsequent_Stage>" for "<category>" with "<key>" stage
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<Subsequent_Stage>" for "<category>" with "appupdate" from application grid
    And user open collateral page of "<ApplicationStage>" stage
    Then user should not be able to perform "<Action>"
    Examples:
      | ProductType   | ApplicationStage   | key | category | applicantType | CollateralSubType | Var_Stage | Subsequent_Stage | CollateralWB    | Collateral_agricultureDetails | Collateral_agricultureDetails_rowNum | Action |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Agricultural Land | DDE       | Disbursal Author | collateral.xlsx | agriculture_details           | 0                                    | Modify |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Agricultural Land | DDE       | Disbursal Author | collateral.xlsx | agriculture_details           | 0                                    | Delete |
