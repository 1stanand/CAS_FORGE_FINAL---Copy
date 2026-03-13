@Epic-Secondary_Collateral
@AuthoredBy-rsurya.kumar
@ImplementedBy-ankit.yadav
@ReviewedSecCollateral
@ReviewedByGWT
@ReviewedByDEV
@CERSAIDataCapture
@Reconciled
@TypeLand

#${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal"]}
#${CollateralSubType:["Agricultural Land"]}

Feature: CERSAI screen validation for Land type collateral

#COLLATERAL_SUB_TYPE.HIDE_CERSAI_TAB = 0 for COLLATERAL_TYPE_FK = Land

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0

#FeatureID-ACAUTOCAS-5077,ACAUTOCAS-239
  @Release3
  Scenario Outline: ACAUTOCAS-11627:  CERSAI page should have proper <SectionName> for collateral Land of <CollateralSubType> at <ProductType> application
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_agricultureDetails>" and row <Collateral_agricultureDetails_rowNum>
    When user adds land type collateral based on "<CollateralSubType>" subtype
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    And user attempts to modify collateral based on "<CollateralSubType>"
    And user navigates to the CERSAI page
    Then user should be able to see the data section "<SectionName>"
    Examples:
      | ProductType   | ApplicationStage   | key | category | applicantType | CollateralSubType | CollateralWB    | Collateral_agricultureDetails | Collateral_agricultureDetails_rowNum | SectionName               |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Agricultural Land | collateral.xlsx | agriculture_details           | 0                                    | CERSAI Data               |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Agricultural Land | collateral.xlsx | agriculture_details           | 1                                    | Security Interest Details |

#FeatureID-ACAUTOCAS-5077,ACAUTOCAS-239
  @Release3
  Scenario Outline: ACAUTOCAS-11628:  CERSAI page should have <Mandatory> <FieldName> for collateral Land of <CollateralSubType> at <ProductType> application
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_agricultureDetails>" and row <Collateral_agricultureDetails_rowNum>
    When user adds land type collateral based on "<CollateralSubType>" subtype
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    And user attempts to modify collateral based on "<CollateralSubType>"
    And user navigates to the CERSAI page
    Then user should be able to see the "<FieldName>" marked "<Mandatory>"
    Examples:
      | ProductType   | ApplicationStage   | key | category | applicantType | CollateralSubType | FieldName            | Mandatory     | CollateralWB    | Collateral_agricultureDetails | Collateral_agricultureDetails_rowNum |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Agricultural Land | Serial No.           | mandatory     | collateral.xlsx | agriculture_details           | 0                                    |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Agricultural Land | No. of Documents     | mandatory     | collateral.xlsx | agriculture_details           | 1                                    |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Agricultural Land | Document Type        | mandatory     | collateral.xlsx | agriculture_details           | 2                                    |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Agricultural Land | Locality             | non mandatory | collateral.xlsx | agriculture_details           | 3                                    |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Agricultural Land | Title Document No    | mandatory     | collateral.xlsx | agriculture_details           | 4                                    |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Agricultural Land | Survey No            | non mandatory | collateral.xlsx | agriculture_details           | 5                                    |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Agricultural Land | Sub Registrar Office | mandatory     | collateral.xlsx | agriculture_details           | 6                                    |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Agricultural Land | Document Taluka      | non mandatory | collateral.xlsx | agriculture_details           | 7                                    |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Agricultural Land | Document Pincode     | mandatory     | collateral.xlsx | agriculture_details           | 8                                    |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Agricultural Land | Document District    | non mandatory | collateral.xlsx | agriculture_details           | 9                                    |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Agricultural Land | Document State       | mandatory     | collateral.xlsx | agriculture_details           | 10                                   |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Agricultural Land | Registration Date    | non mandatory | collateral.xlsx | agriculture_details           | 11                                   |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Agricultural Land | Remarks              | non mandatory | collateral.xlsx | agriculture_details           | 12                                   |

#FeatureID-ACAUTOCAS-5077,ACAUTOCAS-239
  @Release3
  Scenario Outline: ACAUTOCAS-11629:  CERSAI page should have enabled fields for collateral Land of <CollateralSubType> at <ProductType> application
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_agricultureDetails>" and row <Collateral_agricultureDetails_rowNum>
    When user adds land type collateral based on "<CollateralSubType>" subtype
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    And user attempts to modify collateral based on "<CollateralSubType>"
    And user navigates to the CERSAI page
    Then user should be able to see "<FieldName>" field in "<Status>" state
    Examples:
      | ProductType   | ApplicationStage   | key | category | applicantType | CollateralSubType | FieldName            | Status  | CollateralWB    | Collateral_agricultureDetails | Collateral_agricultureDetails_rowNum |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Agricultural Land | Serial No.           | Enabled | collateral.xlsx | agriculture_details           | 0                                    |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Agricultural Land | No. of Documents     | Enabled | collateral.xlsx | agriculture_details           | 1                                    |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Agricultural Land | Document Type        | Enabled | collateral.xlsx | agriculture_details           | 2                                    |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Agricultural Land | Locality             | Enabled | collateral.xlsx | agriculture_details           | 3                                    |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Agricultural Land | Title Document No    | Enabled | collateral.xlsx | agriculture_details           | 4                                    |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Agricultural Land | Survey No            | Enabled | collateral.xlsx | agriculture_details           | 5                                    |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Agricultural Land | Sub Registrar Office | Enabled | collateral.xlsx | agriculture_details           | 6                                    |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Agricultural Land | Document Taluka      | Enabled | collateral.xlsx | agriculture_details           | 7                                    |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Agricultural Land | Document Pincode     | Enabled | collateral.xlsx | agriculture_details           | 8                                    |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Agricultural Land | Document District    | Enabled | collateral.xlsx | agriculture_details           | 9                                    |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Agricultural Land | Registration Date    | Enabled | collateral.xlsx | agriculture_details           | 11                                   |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Agricultural Land | Remarks              | Enabled | collateral.xlsx | agriculture_details           | 12                                   |

#FeatureID-ACAUTOCAS-5077,ACAUTOCAS-239
  @Release3
  Scenario Outline: ACAUTOCAS-11630:  CERSAI page should have disabled fields for collateral Land of <CollateralSubType> at <ProductType> application
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_agricultureDetails>" and row <Collateral_agricultureDetails_rowNum>
    When user adds land type collateral based on "<CollateralSubType>" subtype
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    And user attempts to modify collateral based on "<CollateralSubType>"
    And user navigates to the CERSAI page
    Then user should be able to see "<FieldName>" field in "<Status>" state
    Examples:
      | ProductType   | ApplicationStage   | key | category | applicantType | CollateralSubType | FieldName      | Status   | CollateralWB    | Collateral_agricultureDetails | Collateral_agricultureDetails_rowNum |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Agricultural Land | Document State | Disabled | collateral.xlsx | agriculture_details           | 10                                   |

#FeatureID-ACAUTOCAS-5077,ACAUTOCAS-239
  @Release3
  Scenario Outline: ACAUTOCAS-11631:  Security Interest Details should have <Mandatory> <FieldName> for collateral Land of <CollateralSubType> at <ProductType> application
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_agricultureDetails>" and row <Collateral_agricultureDetails_rowNum>
    When user adds land type collateral based on "<CollateralSubType>" subtype
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    And user attempts to modify collateral based on "<CollateralSubType>"
    And user navigates to the CERSAI page
    And user views the section Security Interest Details
    Then user should be able to see the "<FieldName>" marked "<Mandatory>"
    Examples:
      | ProductType   | ApplicationStage   | key | category | applicantType | CollateralSubType | FieldName                       | Mandatory     | CollateralWB    | Collateral_agricultureDetails | Collateral_agricultureDetails_rowNum |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Agricultural Land | Transaction Reference Number    | non mandatory | collateral.xlsx | agriculture_details           | 0                                    |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Agricultural Land | Security Interest ID            | non mandatory | collateral.xlsx | agriculture_details           | 1                                    |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Agricultural Land | No. of Borrowers                | non mandatory | collateral.xlsx | agriculture_details           | 2                                    |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Agricultural Land | No. of Third Parties            | non mandatory | collateral.xlsx | agriculture_details           | 3                                    |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Agricultural Land | No of Documents                 | non mandatory | collateral.xlsx | agriculture_details           | 4                                    |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Agricultural Land | No. of Loans                    | non mandatory | collateral.xlsx | agriculture_details           | 5                                    |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Agricultural Land | Security Interest Creation Date | non mandatory | collateral.xlsx | agriculture_details           | 6                                    |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Agricultural Land | Asset Amount                    | non mandatory | collateral.xlsx | agriculture_details           | 7                                    |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Agricultural Land | Token Field                     | non mandatory | collateral.xlsx | agriculture_details           | 8                                    |

#DB_parameter cas.collateral.assetid.enable is set to False
#\by default: cas.collateral.assetid.enable = False
#FeatureID-ACAUTOCAS-5077,ACAUTOCAS-239
  @Release3
  Scenario Outline: ACAUTOCAS-11632:  Security Interest Details fields enabled disabled for collateral Land of <CollateralSubType> at <ProductType> application with False flag
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_agricultureDetails>" and row <Collateral_agricultureDetails_rowNum>
    When user adds land type collateral based on "<CollateralSubType>" subtype
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    And user attempts to modify collateral based on "<CollateralSubType>"
    And user navigates to the CERSAI page
    And user views the section Security Interest Details
    Then user should be able to see "<FieldName>" field in "<Status>" state
    Examples:
      | ProductType   | ApplicationStage   | key | category | applicantType | CollateralSubType | FieldName                       | Status   | CollateralWB    | Collateral_agricultureDetails | Collateral_agricultureDetails_rowNum |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Agricultural Land | Security Interest Asset Id      | Disabled | collateral.xlsx | agriculture_details           | 0                                    |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Agricultural Land | Transaction Reference Number    | Enabled  | collateral.xlsx | agriculture_details           | 1                                    |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Agricultural Land | Security Interest ID            | Enabled  | collateral.xlsx | agriculture_details           | 2                                    |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Agricultural Land | No. of Borrowers                | Enabled  | collateral.xlsx | agriculture_details           | 3                                    |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Agricultural Land | No. of Third Parties            | Enabled  | collateral.xlsx | agriculture_details           | 4                                    |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Agricultural Land | No. of Documents                | Enabled  | collateral.xlsx | agriculture_details           | 5                                    |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Agricultural Land | No. of Loans                    | Enabled  | collateral.xlsx | agriculture_details           | 6                                    |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Agricultural Land | Security Interest Creation Date | Enabled  | collateral.xlsx | agriculture_details           | 7                                    |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Agricultural Land | Asset Amount                    | Enabled  | collateral.xlsx | agriculture_details           | 8                                    |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Agricultural Land | Token Field                     | Enabled  | collateral.xlsx | agriculture_details           | 9                                    |

  @NotImplemented
#DB_parameter cas.collateral.assetid.enable is set to True
#FeatureID-ACAUTOCAS-5077,ACAUTOCAS-239
  Scenario Outline: ACAUTOCAS-11633:  Security Interest Details fields enabled disabled for collateral Land of <CollateralSubType> at <ProductType> application with True flag
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_agricultureDetails>" and row <Collateral_agricultureDetails_rowNum>
    When user adds land type collateral based on "<CollateralSubType>" subtype
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    And user attempts to modify collateral based on "<CollateralSubType>"
    And user navigates to the CERSAI page
    And user views the section Security Interest Details
    Then user should be able to see "<FieldName>" field in "<Status>" state
    Examples:
      | ProductType   | ApplicationStage   | key | category | applicantType | CollateralSubType | FieldName                       | Status   | CollateralWB    | Collateral_agricultureDetails | Collateral_agricultureDetails_rowNum |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Agricultural Land | Security Interest Asset Id      | Disabled | collateral.xlsx | agriculture_details           | 0                                    |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Agricultural Land | Transaction Reference Number    | Enabled  | collateral.xlsx | agriculture_details           | 1                                    |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Agricultural Land | Security Interest ID            | Enabled  | collateral.xlsx | agriculture_details           | 2                                    |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Agricultural Land | No. of Borrowers                | Enabled  | collateral.xlsx | agriculture_details           | 3                                    |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Agricultural Land | No. of Third Parties            | Enabled  | collateral.xlsx | agriculture_details           | 4                                    |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Agricultural Land | No. of Documents                | Enabled  | collateral.xlsx | agriculture_details           | 5                                    |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Agricultural Land | No. of Loans                    | Enabled  | collateral.xlsx | agriculture_details           | 6                                    |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Agricultural Land | Security Interest Creation Date | Enabled  | collateral.xlsx | agriculture_details           | 7                                    |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Agricultural Land | Asset Amount                    | Enabled  | collateral.xlsx | agriculture_details           | 8                                    |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Agricultural Land | Token Field                     | Enabled  | collateral.xlsx | agriculture_details           | 9                                    |

#FeatureID-ACAUTOCAS-5077,ACAUTOCAS-239
  @Release3
  Scenario Outline: ACAUTOCAS-11634:  CERSAI page data validation at <Collateral_cersaiDetails_rowNum> for <FieldName> with <SuccessFailure> for collateral Land of <CollateralSubType> at <ProductType> application
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_agricultureDetails>" and row <Collateral_agricultureDetails_rowNum>
    When user adds land type collateral based on "<CollateralSubType>" subtype
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    And user attempts to modify collateral based on "<CollateralSubType>"
    And user navigates to the CERSAI page
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_cersaiDetails>" and row <Collateral_cersaiDetails_rowNum>
    And user enters data in section CERSAI Data
    And user saves the CERSAI data
    Then user should be able to save "<SuccessFailure>" for field "<FieldName>"
    Examples:
      | ProductType   | ApplicationStage   | key | category | applicantType | CollateralSubType | FieldName         | CollateralWB    | Collateral_agricultureDetails | Collateral_agricultureDetails_rowNum | SuccessFailure | Collateral_cersaiDetails_rowNum | Collateral_cersaiDetails |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Agricultural Land | Serial No.        | collateral.xlsx | agriculture_details           | 0                                    | Unsuccessfully | 4                               | cersai_details           |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Agricultural Land | Serial No.        | collateral.xlsx | agriculture_details           | 1                                    | Unsuccessfully | 5                               | cersai_details           |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Agricultural Land | Serial No.        | collateral.xlsx | agriculture_details           | 2                                    | Unsuccessfully | 7                               | cersai_details           |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Agricultural Land | Serial No.        | collateral.xlsx | agriculture_details           | 3                                    | Unsuccessfully | 8                               | cersai_details           |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Agricultural Land | Serial No.        | collateral.xlsx | agriculture_details           | 4                                    | Unsuccessfully | 9                               | cersai_details           |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Agricultural Land | Serial No.        | collateral.xlsx | agriculture_details           | 5                                    | Unsuccessfully | 10                              | cersai_details           |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Agricultural Land | Serial No.        | collateral.xlsx | agriculture_details           | 6                                    | Unsuccessfully | 11                              | cersai_details           |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Agricultural Land | No. of Documents  | collateral.xlsx | agriculture_details           | 7                                    | Unsuccessfully | 12                              | cersai_details           |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Agricultural Land | No. of Documents  | collateral.xlsx | agriculture_details           | 8                                    | Unsuccessfully | 13                              | cersai_details           |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Agricultural Land | No. of Documents  | collateral.xlsx | agriculture_details           | 9                                    | Unsuccessfully | 15                              | cersai_details           |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Agricultural Land | No. of Documents  | collateral.xlsx | agriculture_details           | 10                                   | Unsuccessfully | 16                              | cersai_details           |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Agricultural Land | No. of Documents  | collateral.xlsx | agriculture_details           | 11                                   | Unsuccessfully | 17                              | cersai_details           |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Agricultural Land | No. of Documents  | collateral.xlsx | agriculture_details           | 12                                   | Unsuccessfully | 18                              | cersai_details           |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Agricultural Land | Document Type     | collateral.xlsx | agriculture_details           | 13                                   | Successfully   | 19                              | cersai_details           |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Agricultural Land | Document Type     | collateral.xlsx | agriculture_details           | 14                                   | Unsuccessfully | 20                              | cersai_details           |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Agricultural Land | Document Type     | collateral.xlsx | agriculture_details           | 15                                   | Unsuccessfully | 21                              | cersai_details           |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Agricultural Land | No. of Documents  | collateral.xlsx | agriculture_details           | 0                                    | Unsuccessfully | 22                              | cersai_details           |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Agricultural Land | Locality          | collateral.xlsx | agriculture_details           | 1                                    | Unsuccessfully | 23                              | cersai_details           |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Agricultural Land | Locality          | collateral.xlsx | agriculture_details           | 2                                    | Unsuccessfully | 24                              | cersai_details           |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Agricultural Land | Locality          | collateral.xlsx | agriculture_details           | 3                                    | Unsuccessfully | 25                              | cersai_details           |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Agricultural Land | Locality          | collateral.xlsx | agriculture_details           | 4                                    | Successfully   | 26                              | cersai_details           |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Agricultural Land | Locality          | collateral.xlsx | agriculture_details           | 5                                    | Successfully   | 27                              | cersai_details           |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Agricultural Land | Title Document No | collateral.xlsx | agriculture_details           | 6                                    | Successfully   | 28                              | cersai_details           |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Agricultural Land | Title Document No | collateral.xlsx | agriculture_details           | 7                                    | Successfully   | 29                              | cersai_details           |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Agricultural Land | Title Document No | collateral.xlsx | agriculture_details           | 8                                    | Successfully   | 30                              | cersai_details           |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Agricultural Land | Title Document No | collateral.xlsx | agriculture_details           | 9                                    | Successfully   | 31                              | cersai_details           |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Agricultural Land | Title Document No | collateral.xlsx | agriculture_details           | 10                                   | Successfully   | 32                              | cersai_details           |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Agricultural Land | Title Document No | collateral.xlsx | agriculture_details           | 11                                   | Successfully   | 33                              | cersai_details           |

    @LoggedBug
    Examples:
      | ProductType   | ApplicationStage   | key | category | applicantType | CollateralSubType | FieldName        | CollateralWB    | Collateral_agricultureDetails | Collateral_agricultureDetails_rowNum | SuccessFailure | Collateral_cersaiDetails_rowNum | Collateral_cersaiDetails |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Agricultural Land | Serial No.       | collateral.xlsx | agriculture_details           | 12                                   | Unsuccessfully | 6                               | cersai_details           |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Agricultural Land | No. of Documents | collateral.xlsx | agriculture_details           | 13                                   | Unsuccessfully | 14                              | cersai_details           |

#FeatureID-ACAUTOCAS-5077,ACAUTOCAS-239
  @Release3
  Scenario Outline: ACAUTOCAS-11638:  CERSAI page security interest details data validation at <Collateral_cersaiDetails_rowNum> for <FieldName> with <SuccessFailure> for collateral Land of <CollateralSubType> at <ProductType> application
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_agricultureDetails>" and row <Collateral_agricultureDetails_rowNum>
    When user adds land type collateral based on "<CollateralSubType>" subtype
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    And user attempts to modify collateral based on "<CollateralSubType>"
    And user navigates to the CERSAI page
    And user views the section Security Interest Details
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_cersaiDetails>" and row <Collateral_cersaiDetails_rowNum>
    And user enters data in section CERSAI Data
    And user enters Security Interest Details
    And user saves the CERSAI data
    Then user should be able to save "<SuccessFailure>" for field "<ValidationField>"
    Examples:
      | ProductType   | ApplicationStage   | key | category | applicantType | CollateralSubType | SuccessFailure | FieldName                       | CollateralWB    | Collateral_cersaiDetails | Collateral_cersaiDetails_rowNum | Collateral_agricultureDetails | Collateral_agricultureDetails_rowNum | key | category | applicantType |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Agricultural Land | Successfully   |                                 | collateral.xlsx | cersai_details           | 54                              | agriculture_details           | 0                                    |     |          | indiv         |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Agricultural Land | Unsuccessfully | Transaction Reference Number    | collateral.xlsx | cersai_details           | 55                              | agriculture_details           | 1                                    |     |          | indiv         |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Agricultural Land | Unsuccessfully | Transaction Reference Number    | collateral.xlsx | cersai_details           | 56                              | agriculture_details           | 2                                    |     |          | indiv         |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Agricultural Land | Unsuccessfully | Transaction Reference Number    | collateral.xlsx | cersai_details           | 57                              | agriculture_details           | 3                                    |     |          | indiv         |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Agricultural Land | Successfully   | Transaction Reference Number    | collateral.xlsx | cersai_details           | 58                              | agriculture_details           | 4                                    |     |          | indiv         |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Agricultural Land | Unsuccessfully | Security Interest ID            | collateral.xlsx | cersai_details           | 59                              | agriculture_details           | 5                                    |     |          | indiv         |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Agricultural Land | Successfully   | Security Interest ID            | collateral.xlsx | cersai_details           | 60                              | agriculture_details           | 6                                    |     |          | indiv         |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Agricultural Land | Successfully   | No. of Borrowers                | collateral.xlsx | cersai_details           | 61                              | agriculture_details           | 7                                    |     |          | indiv         |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Agricultural Land | Unsuccessfully | No. of Borrowers                | collateral.xlsx | cersai_details           | 62                              | agriculture_details           | 8                                    |     |          | indiv         |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Agricultural Land | Unsuccessfully | No. of Borrowers                | collateral.xlsx | cersai_details           | 63                              | agriculture_details           | 9                                    |     |          | indiv         |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Agricultural Land | Unsuccessfully | No. of Borrowers                | collateral.xlsx | cersai_details           | 64                              | agriculture_details           | 10                                   |     |          | indiv         |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Agricultural Land | Unsuccessfully | No. of Borrowers                | collateral.xlsx | cersai_details           | 65                              | agriculture_details           | 11                                   |     |          | indiv         |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Agricultural Land | Successfully   | No. of Third Parties            | collateral.xlsx | cersai_details           | 66                              | agriculture_details           | 12                                   |     |          | indiv         |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Agricultural Land | Unsuccessfully | No. of Third Parties            | collateral.xlsx | cersai_details           | 67                              | agriculture_details           | 13                                   |     |          | indiv         |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Agricultural Land | Unsuccessfully | No. of Third Parties            | collateral.xlsx | cersai_details           | 68                              | agriculture_details           | 14                                   |     |          | indiv         |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Agricultural Land | Unsuccessfully | No. of Third Parties            | collateral.xlsx | cersai_details           | 69                              | agriculture_details           | 15                                   |     |          | indiv         |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Agricultural Land | Unsuccessfully | No. of Third Parties            | collateral.xlsx | cersai_details           | 70                              | agriculture_details           | 0                                    |     |          | indiv         |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Agricultural Land | Successfully   | No. of Documents                | collateral.xlsx | cersai_details           | 71                              | agriculture_details           | 1                                    |     |          | indiv         |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Agricultural Land | Unsuccessfully | No. of Documents                | collateral.xlsx | cersai_details           | 72                              | agriculture_details           | 2                                    |     |          | indiv         |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Agricultural Land | Unsuccessfully | No. of Documents                | collateral.xlsx | cersai_details           | 73                              | agriculture_details           | 3                                    |     |          | indiv         |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Agricultural Land | Unsuccessfully | No. of Documents                | collateral.xlsx | cersai_details           | 74                              | agriculture_details           | 4                                    |     |          | indiv         |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Agricultural Land | Unsuccessfully | No. of Documents                | collateral.xlsx | cersai_details           | 75                              | agriculture_details           | 5                                    |     |          | indiv         |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Agricultural Land | Successfully   | No. of Loans                    | collateral.xlsx | cersai_details           | 76                              | agriculture_details           | 6                                    |     |          | indiv         |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Agricultural Land | Unsuccessfully | No. of Loans                    | collateral.xlsx | cersai_details           | 77                              | agriculture_details           | 7                                    |     |          | indiv         |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Agricultural Land | Unsuccessfully | No. of Loans                    | collateral.xlsx | cersai_details           | 78                              | agriculture_details           | 8                                    |     |          | indiv         |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Agricultural Land | Unsuccessfully | No. of Loans                    | collateral.xlsx | cersai_details           | 79                              | agriculture_details           | 9                                    |     |          | indiv         |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Agricultural Land | Unsuccessfully | No. of Loans                    | collateral.xlsx | cersai_details           | 80                              | agriculture_details           | 10                                   |     |          | indiv         |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Agricultural Land | Successfully   | Security Interest Creation Date | collateral.xlsx | cersai_details           | 81                              | agriculture_details           | 11                                   |     |          | indiv         |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Agricultural Land | Successfully   | Security Interest Creation Date | collateral.xlsx | cersai_details           | 82                              | agriculture_details           | 12                                   |     |          | indiv         |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Agricultural Land | Unsuccessfully | Security Interest Creation Date | collateral.xlsx | cersai_details           | 83                              | agriculture_details           | 13                                   |     |          | indiv         |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Agricultural Land | Successfully   | Asset Amount                    | collateral.xlsx | cersai_details           | 84                              | agriculture_details           | 14                                   |     |          | indiv         |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Agricultural Land | Successfully   | Asset Amount                    | collateral.xlsx | cersai_details           | 85                              | agriculture_details           | 15                                   |     |          | indiv         |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Agricultural Land | Successfully   | Asset Amount                    | collateral.xlsx | cersai_details           | 86                              | agriculture_details           | 0                                    |     |          | indiv         |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Agricultural Land | Unsuccessfully | Asset Amount                    | collateral.xlsx | cersai_details           | 87                              | agriculture_details           | 1                                    |     |          | indiv         |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Agricultural Land | Unsuccessfully | Asset Amount                    | collateral.xlsx | cersai_details           | 88                              | agriculture_details           | 2                                    |     |          | indiv         |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Agricultural Land | Unsuccessfully | Asset Amount                    | collateral.xlsx | cersai_details           | 89                              | agriculture_details           | 3                                    |     |          | indiv         |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Agricultural Land | Successfully   | Token Field                     | collateral.xlsx | cersai_details           | 90                              | agriculture_details           | 4                                    |     |          | indiv         |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Agricultural Land | Successfully   | Token Field                     | collateral.xlsx | cersai_details           | 91                              | agriculture_details           | 5                                    |     |          | indiv         |

  @NotImplemented
#FeatureID-ACAUTOCAS-5077,ACAUTOCAS-239
  Scenario Outline: ACAUTOCAS-11639:  CERSAI page security interest details data validation for multi record
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_agricultureDetails>" and row <Collateral_agricultureDetails_rowNum>
    When user adds land type collateral based on "<CollateralSubType>" subtype
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    And user attempts to modify collateral based on "<CollateralSubType>"
    And user navigates to the CERSAI page
    And user views the section Security Interest Details
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_cersaiDetails>" and row <Collateral_cersaiDetails_rowNum>
    And user enters data in section CERSAI Data
    And user enters Security Interest Details
    And user saves the CERSAI data
    Then user should be able to save "<SuccessFailure>" for field "<ValidationField>"
    Examples:
      | SourceDataFile | SheetName       | RowNumber | CollateralSubType | CERSAISecIntDataFile | CERSAISecIntRowNumber | SuccessFailure | SuccessFailureReason                                               | ValidationField                           |
      | LandFile.xlsx  | agricultureland | 0         | Agriculture Land  | d_cersai_SecInt      | 0                     | Unsuccessfully | Duplicate transaction reference number and token field not allowed | Transaction Reference Number, token field |
      | LandFile.xlsx  | agricultureland | 0         | Agriculture Land  | d_cersai_SecInt      | 4                     | Unsuccessfully | Duplicate token field not allowed                                  | Token Field                               |
      | LandFile.xlsx  | agricultureland | 0         | Agriculture Land  | d_cersai_SecInt      | 38                    | Unsuccessfully | Duplicate transaction reference number not allowed                 | Transaction Reference Number              |
      | LandFile.xlsx  | agricultureland | 0         | Agriculture Land  | d_cersai_SecInt      | 39                    | Successfully   | None                                                               |                                           |

#FeatureID-ACAUTOCAS-5077,ACAUTOCAS-239
  @Release3
  Scenario Outline: ACAUTOCAS-11640:  CERSAI page security interest details data should not be deleted
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_agricultureDetails>" and row <Collateral_agricultureDetails_rowNum>
    And user adds land type collateral based on "<CollateralSubType>" subtype
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    And user navigates to the CERSAI page
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_cersaiDetails>" and row <Collateral_cersaiDetails_rowNum>
    And user fills all fields in CERSAI section
    And user saves the CERSAI data
    When user opens Collateral Page
    And user attempts to modify collateral based on "<CollateralSubType>"
    And user navigates to the CERSAI page
    And user attempts to delete Security Interest Data
    Then user should not be able to delete Security Interest Data
    Examples:
      | ProductType   | ApplicationStage   | key | category | applicantType | CollateralSubType | CollateralWB    | Collateral_agricultureDetails | Collateral_agricultureDetails_rowNum | Collateral_cersaiDetails | Collateral_cersaiDetails_rowNum |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Agricultural Land | collateral.xlsx | agriculture_details           | 0                                    | cersai_details           | 250                             |

#FeatureID-ACAUTOCAS-5077,ACAUTOCAS-239
  @Release3
  Scenario Outline: ACAUTOCAS-11641:  CERSAI page security interest details data should not be modified
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_agricultureDetails>" and row <Collateral_agricultureDetails_rowNum>
    And user adds land type collateral based on "<CollateralSubType>" subtype
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    And user navigates to the CERSAI page
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_cersaiDetails>" and row <Collateral_cersaiDetails_rowNum>
    And user fills all fields in CERSAI section
    And user saves the CERSAI data
    When user opens Collateral Page
    And user attempts to modify collateral based on "<CollateralSubType>"
    And user navigates to the CERSAI page
    And user attempts to modify Security Interest Data
    Then user should not be able to modify Security Interest Data
    Examples:
      | ProductType   | ApplicationStage   | key | category | applicantType | CollateralSubType | CollateralWB    | Collateral_agricultureDetails | Collateral_agricultureDetails_rowNum | Collateral_cersaiDetails | Collateral_cersaiDetails_rowNum |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Agricultural Land | collateral.xlsx | agriculture_details           | 0                                    | cersai_details           | 250                             |
