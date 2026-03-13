@Epic-Secondary_Collateral
@AuthoredBy-rsurya.kumar
@Reconciled
@ReviewedByDEV
@CERSAIDataView
@TypeProperty
@ImplementedBy-ankit.yadav
@ReviewedSecCollateral
@Release
#${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#${ApplicationStage:["Disbursal"]}

Feature: CERSAI data addition for Property type collateral at disbursal author

#COLLATERAL_SUB_TYPE.HIDE_CERSAI_TAB = 0 for COLLATERAL_TYPE_FK = Property

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0

#FeatureID-ACAUTOCAS-5077,ACAUTOCAS-225,ACAUTOCAS-226,ACAUTOCAS-227,ACAUTOCAS-228,ACAUTOCAS-229
  @Release
  Scenario Outline: ACAUTOCAS-8988: CERSAI page should see <FieldName> data for collateral Property for <CollateralSubType> of <ProductType> at <ApplicationStage> stage with <Collateral_propertyDetails_rowNum>
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_propertyDetails>" and row <Collateral_propertyDetails_rowNum>
    When user adds property type collateral based on "<CollateralSubType>" subtype
    And user fills the property registration details as
      | collateral.xlsx | agreement_details | 6 |
      | collateral.xlsx | agreement_details | 7 |
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    And user views the already added collateral
    And user navigates to the CERSAI page
    Then user should be able to see "<FieldName>" data on cersai page
    Examples:
      | ProductType   | ApplicationStage   | key | category | applicantType | CollateralSubType                   | FieldName         | CollateralWB    | Collateral_propertyDetails | Collateral_propertyDetails_rowNum |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Builder Property Under Construction | Document State    | collateral.xlsx | property_details           | 0                                 |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Builder Property Under Construction | Serial No.        | collateral.xlsx | property_details           | 1                                 |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Builder Property Under Construction | Document Taluka   | collateral.xlsx | property_details           | 2                                 |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Builder Property Under Construction | Document Pincode  | collateral.xlsx | property_details           | 3                                 |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Builder Property Under Construction | Document District | collateral.xlsx | property_details           | 4                                 |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Builder Property Under Construction | Registration Date | collateral.xlsx | property_details           | 5                                 |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Construction On Land                | Document State    | collateral.xlsx | property_details           | 12                                |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Construction On Land                | Serial No.        | collateral.xlsx | property_details           | 13                                |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Construction On Land                | Document Taluka   | collateral.xlsx | property_details           | 14                                |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Construction On Land                | Document Pincode  | collateral.xlsx | property_details           | 15                                |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Construction On Land                | Document District | collateral.xlsx | property_details           | 16                                |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Construction On Land                | Registration Date | collateral.xlsx | property_details           | 17                                |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Plot + Self Construction            | Document State    | collateral.xlsx | property_details           | 24                                |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Plot + Self Construction            | Serial No.        | collateral.xlsx | property_details           | 25                                |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Plot + Self Construction            | Document Taluka   | collateral.xlsx | property_details           | 26                                |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Plot + Self Construction            | Document Pincode  | collateral.xlsx | property_details           | 27                                |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Plot + Self Construction            | Document District | collateral.xlsx | property_details           | 28                                |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Plot + Self Construction            | Registration Date | collateral.xlsx | property_details           | 29                                |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Ready Property                      | Document State    | collateral.xlsx | property_details           | 36                                |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Ready Property                      | Serial No.        | collateral.xlsx | property_details           | 37                                |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Ready Property                      | Document Taluka   | collateral.xlsx | property_details           | 38                                |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Ready Property                      | Document Pincode  | collateral.xlsx | property_details           | 39                                |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Ready Property                      | Document District | collateral.xlsx | property_details           | 40                                |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Ready Property                      | Registration Date | collateral.xlsx | property_details           | 41                                |

    @LoggedBug
    Examples:
      | ProductType   | ApplicationStage   | key | category | applicantType | CollateralSubType                   | FieldName            | CollateralWB    | Collateral_propertyDetails | Collateral_propertyDetails_rowNum |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Builder Property Under Construction | Sub Registrar Office | collateral.xlsx | property_details           | 6                                 |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Construction On Land                | Sub Registrar Office | collateral.xlsx | property_details           | 18                                |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Plot + Self Construction            | Sub Registrar Office | collateral.xlsx | property_details           | 30                                |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Ready Property                      | Sub Registrar Office | collateral.xlsx | property_details           | 42                                |

#FeatureID-ACAUTOCAS-5077,ACAUTOCAS-225,ACAUTOCAS-226,ACAUTOCAS-227,ACAUTOCAS-228,ACAUTOCAS-229
  @Release
  Scenario Outline: ACAUTOCAS-8989:  CERSAI page should get <FieldName> data for collateral Property for <CollateralSubType> of <ProductType> at <ApplicationStage> stage with <Collateral_propertyDetails_rowNum> without property registration details
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_propertyDetails>" and row <Collateral_propertyDetails_rowNum>
    When user adds property type collateral based on "<CollateralSubType>" subtype
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    And user views the already added collateral
    And user navigates to the CERSAI page
    Then user should be able to see "<FieldName>" data without property registration details
    Examples:
      | ProductType   | ApplicationStage   | key | category | applicantType | CollateralSubType                   | FieldName            | CollateralWB    | Collateral_propertyDetails | Collateral_propertyDetails_rowNum |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Builder Property Under Construction | Document State       | collateral.xlsx | property_details           | 0                                 |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Builder Property Under Construction | Serial No.           | collateral.xlsx | property_details           | 1                                 |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Builder Property Under Construction | Document Taluka      | collateral.xlsx | property_details           | 2                                 |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Builder Property Under Construction | Document Pincode     | collateral.xlsx | property_details           | 3                                 |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Builder Property Under Construction | Document District    | collateral.xlsx | property_details           | 4                                 |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Builder Property Under Construction | Registration Date    | collateral.xlsx | property_details           | 5                                 |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Construction On Land                | Document State       | collateral.xlsx | property_details           | 12                                |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Construction On Land                | Serial No.           | collateral.xlsx | property_details           | 13                                |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Construction On Land                | Document Taluka      | collateral.xlsx | property_details           | 14                                |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Construction On Land                | Document Pincode     | collateral.xlsx | property_details           | 15                                |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Construction On Land                | Document District    | collateral.xlsx | property_details           | 16                                |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Construction On Land                | Registration Date    | collateral.xlsx | property_details           | 17                                |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Plot + Self Construction            | Document State       | collateral.xlsx | property_details           | 24                                |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Plot + Self Construction            | Serial No.           | collateral.xlsx | property_details           | 25                                |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Plot + Self Construction            | Document Taluka      | collateral.xlsx | property_details           | 26                                |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Plot + Self Construction            | Document Pincode     | collateral.xlsx | property_details           | 27                                |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Plot + Self Construction            | Document District    | collateral.xlsx | property_details           | 28                                |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Plot + Self Construction            | Registration Date    | collateral.xlsx | property_details           | 29                                |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Ready Property                      | Document State       | collateral.xlsx | property_details           | 36                                |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Ready Property                      | Serial No.           | collateral.xlsx | property_details           | 37                                |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Ready Property                      | Document Taluka      | collateral.xlsx | property_details           | 38                                |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Ready Property                      | Document Pincode     | collateral.xlsx | property_details           | 39                                |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Ready Property                      | Document District    | collateral.xlsx | property_details           | 40                                |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Ready Property                      | Registration Date    | collateral.xlsx | property_details           | 41                                |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Builder Property Under Construction | Sub Registrar Office | collateral.xlsx | property_details           | 6                                 |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Construction On Land                | Sub Registrar Office | collateral.xlsx | property_details           | 18                                |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Plot + Self Construction            | Sub Registrar Office | collateral.xlsx | property_details           | 30                                |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Ready Property                      | Sub Registrar Office | collateral.xlsx | property_details           | 42                                |

#FeatureID-ACAUTOCAS-5077,ACAUTOCAS-225,ACAUTOCAS-226,ACAUTOCAS-227,ACAUTOCAS-228,ACAUTOCAS-229
  @Release
  Scenario Outline: ACAUTOCAS-8990:  CERSAI page should get <FieldName> data for collateral Property for <CollateralSubType> of <ProductType> at <ApplicationStage> stage with <Collateral_propertyDetails_rowNum> without current property registration details
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_propertyDetails>" and row <Collateral_propertyDetails_rowNum>
    When user adds property type collateral based on "<CollateralSubType>" subtype
    And user fills the property registration details as
      | collateral.xlsx | agreement_details | 6 |
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    And user views the already added collateral
    And user navigates to the CERSAI page
    Then user should be able to see "<FieldName>" data without current property registration details
    Examples:
      | ProductType   | ApplicationStage   | key | category | applicantType | CollateralSubType                   | FieldName            | CollateralWB    | Collateral_propertyDetails | Collateral_propertyDetails_rowNum |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Builder Property Under Construction | Document State       | collateral.xlsx | property_details           | 0                                 |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Builder Property Under Construction | Serial No.           | collateral.xlsx | property_details           | 1                                 |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Builder Property Under Construction | Document Taluka      | collateral.xlsx | property_details           | 2                                 |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Builder Property Under Construction | Document Pincode     | collateral.xlsx | property_details           | 3                                 |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Builder Property Under Construction | Document District    | collateral.xlsx | property_details           | 4                                 |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Builder Property Under Construction | Registration Date    | collateral.xlsx | property_details           | 5                                 |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Construction On Land                | Document State       | collateral.xlsx | property_details           | 12                                |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Construction On Land                | Serial No.           | collateral.xlsx | property_details           | 13                                |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Construction On Land                | Document Taluka      | collateral.xlsx | property_details           | 14                                |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Construction On Land                | Document Pincode     | collateral.xlsx | property_details           | 15                                |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Construction On Land                | Document District    | collateral.xlsx | property_details           | 16                                |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Construction On Land                | Registration Date    | collateral.xlsx | property_details           | 17                                |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Plot + Self Construction            | Document State       | collateral.xlsx | property_details           | 24                                |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Plot + Self Construction            | Serial No.           | collateral.xlsx | property_details           | 25                                |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Plot + Self Construction            | Document Taluka      | collateral.xlsx | property_details           | 26                                |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Plot + Self Construction            | Document Pincode     | collateral.xlsx | property_details           | 27                                |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Plot + Self Construction            | Document District    | collateral.xlsx | property_details           | 28                                |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Plot + Self Construction            | Registration Date    | collateral.xlsx | property_details           | 29                                |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Ready Property                      | Document State       | collateral.xlsx | property_details           | 36                                |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Ready Property                      | Serial No.           | collateral.xlsx | property_details           | 37                                |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Ready Property                      | Document Taluka      | collateral.xlsx | property_details           | 38                                |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Ready Property                      | Document Pincode     | collateral.xlsx | property_details           | 39                                |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Ready Property                      | Document District    | collateral.xlsx | property_details           | 40                                |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Ready Property                      | Registration Date    | collateral.xlsx | property_details           | 41                                |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Builder Property Under Construction | Sub Registrar Office | collateral.xlsx | property_details           | 6                                 |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Construction On Land                | Sub Registrar Office | collateral.xlsx | property_details           | 18                                |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Plot + Self Construction            | Sub Registrar Office | collateral.xlsx | property_details           | 30                                |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Ready Property                      | Sub Registrar Office | collateral.xlsx | property_details           | 42                                |

#FeatureID-ACAUTOCAS-5077,ACAUTOCAS-225,ACAUTOCAS-226,ACAUTOCAS-227,ACAUTOCAS-228,ACAUTOCAS-229
  @Release
  Scenario Outline: ACAUTOCAS-8991:  CERSAI page data validation for collateral Property for <CollateralSubType> of <ProductType> at <ApplicationStage> stage with <Collateral_propertyDetails_rowNum>
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_propertyDetails>" and row <Collateral_propertyDetails_rowNum>
    When user adds collateral based on "<CollateralSubType>" subtype
    And user views the already added collateral
    Then user should not be able to modify "<CollateralSubType>"
      | collateral_type          |
      | collateral_sub_type      |
      | company_name             |
      | project_name             |
      | building_name            |
      | flat_shop_number         |
      | floor_number             |
      | country                  |
      | plot_number              |
      | pincode                  |
      | mobile_phone             |
      | property_type            |
      | property_classification  |
      | property_ownership       |
      | built_up_area            |
      | carpet_area              |
      | property_purpose         |
      | age_of_property          |
      | residual_age_of_property |
      | Plan Number              |
      | Plan Type                |
      | Property Lot Number      |
    Examples:
      | ProductType   | ApplicationStage   | key | category | applicantType | CollateralSubType                   | CollateralWB    | Collateral_propertyDetails | Collateral_propertyDetails_rowNum |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Builder Property Under Construction | collateral.xlsx | property_details           | 0                                 |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Construction On Land                | collateral.xlsx | property_details           | 12                                |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Plot + Self Construction            | collateral.xlsx | property_details           | 24                                |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Ready Property                      | collateral.xlsx | property_details           | 36                                |

#FeatureID-ACAUTOCAS-5077,ACAUTOCAS-225,ACAUTOCAS-226,ACAUTOCAS-227,ACAUTOCAS-228,ACAUTOCAS-229
  @Release
  Scenario Outline: ACAUTOCAS-8992: CERSAI page modification validation <FieldName> data for collateral Property for <CollateralSubType> of <ProductType> at <ApplicationStage> stage with <Collateral_propertyDetails_rowNum>
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_propertyDetails>" and row <Collateral_propertyDetails_rowNum>
    When user adds property type collateral based on "<CollateralSubType>" subtype
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    And user views the already added collateral
    And user navigates to the CERSAI page
    Then user should be able to see "<FieldName>" field in "<Status>" state
    Examples:
      | ProductType   | ApplicationStage   | key | category | applicantType | CollateralSubType                   | FieldName            | CollateralWB    | Collateral_propertyDetails | Collateral_propertyDetails_rowNum | Status   |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Builder Property Under Construction | Document State       | collateral.xlsx | property_details           | 0                                 | Disabled |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Builder Property Under Construction | Sub Registrar Office | collateral.xlsx | property_details           | 1                                 | Disabled |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Builder Property Under Construction | Document Taluka      | collateral.xlsx | property_details           | 2                                 | Disabled |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Builder Property Under Construction | Document Pincode     | collateral.xlsx | property_details           | 3                                 | Disabled |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Builder Property Under Construction | Document District    | collateral.xlsx | property_details           | 4                                 | Disabled |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Builder Property Under Construction | Registration Date    | collateral.xlsx | property_details           | 5                                 | Disabled |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Builder Property Under Construction | Serial No.           | collateral.xlsx | property_details           | 6                                 | Disabled |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Builder Property Under Construction | No. of Documents     | collateral.xlsx | property_details           | 7                                 | Disabled |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Builder Property Under Construction | Document Type        | collateral.xlsx | property_details           | 8                                 | Disabled |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Builder Property Under Construction | Locality             | collateral.xlsx | property_details           | 9                                 | Disabled |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Builder Property Under Construction | Title Document No    | collateral.xlsx | property_details           | 10                                | Disabled |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Builder Property Under Construction | Survey No            | collateral.xlsx | property_details           | 11                                | Disabled |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Builder Property Under Construction | Remarks              | collateral.xlsx | property_details           | 0                                 | Disabled |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Construction On Land                | Document State       | collateral.xlsx | property_details           | 12                                | Disabled |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Construction On Land                | Sub Registrar Office | collateral.xlsx | property_details           | 13                                | Disabled |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Construction On Land                | Document Taluka      | collateral.xlsx | property_details           | 14                                | Disabled |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Construction On Land                | Document Pincode     | collateral.xlsx | property_details           | 15                                | Disabled |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Construction On Land                | Document District    | collateral.xlsx | property_details           | 16                                | Disabled |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Construction On Land                | Registration Date    | collateral.xlsx | property_details           | 17                                | Disabled |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Construction On Land                | Serial No.           | collateral.xlsx | property_details           | 18                                | Disabled |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Construction On Land                | No. of Documents     | collateral.xlsx | property_details           | 19                                | Disabled |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Construction On Land                | Document Type        | collateral.xlsx | property_details           | 20                                | Disabled |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Construction On Land                | Locality             | collateral.xlsx | property_details           | 21                                | Disabled |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Construction On Land                | Title Document No    | collateral.xlsx | property_details           | 22                                | Disabled |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Construction On Land                | Survey No            | collateral.xlsx | property_details           | 23                                | Disabled |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Construction On Land                | Remarks              | collateral.xlsx | property_details           | 12                                | Disabled |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Plot + Self Construction            | Document State       | collateral.xlsx | property_details           | 24                                | Disabled |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Plot + Self Construction            | Sub Registrar Office | collateral.xlsx | property_details           | 25                                | Disabled |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Plot + Self Construction            | Document Taluka      | collateral.xlsx | property_details           | 26                                | Disabled |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Plot + Self Construction            | Document Pincode     | collateral.xlsx | property_details           | 27                                | Disabled |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Plot + Self Construction            | Document District    | collateral.xlsx | property_details           | 28                                | Disabled |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Plot + Self Construction            | Registration Date    | collateral.xlsx | property_details           | 29                                | Disabled |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Plot + Self Construction            | Serial No.           | collateral.xlsx | property_details           | 30                                | Disabled |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Plot + Self Construction            | No. of Documents     | collateral.xlsx | property_details           | 31                                | Disabled |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Plot + Self Construction            | Document Type        | collateral.xlsx | property_details           | 32                                | Disabled |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Plot + Self Construction            | Locality             | collateral.xlsx | property_details           | 33                                | Disabled |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Plot + Self Construction            | Title Document No    | collateral.xlsx | property_details           | 34                                | Disabled |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Plot + Self Construction            | Survey No            | collateral.xlsx | property_details           | 35                                | Disabled |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Plot + Self Construction            | Remarks              | collateral.xlsx | property_details           | 24                                | Disabled |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Ready Property                      | Document State       | collateral.xlsx | property_details           | 36                                | Disabled |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Ready Property                      | Sub Registrar Office | collateral.xlsx | property_details           | 37                                | Disabled |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Ready Property                      | Document Taluka      | collateral.xlsx | property_details           | 38                                | Disabled |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Ready Property                      | Document Pincode     | collateral.xlsx | property_details           | 39                                | Disabled |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Ready Property                      | Document District    | collateral.xlsx | property_details           | 40                                | Disabled |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Ready Property                      | Registration Date    | collateral.xlsx | property_details           | 41                                | Disabled |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Ready Property                      | Serial No.           | collateral.xlsx | property_details           | 42                                | Disabled |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Ready Property                      | No. of Documents     | collateral.xlsx | property_details           | 43                                | Disabled |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Ready Property                      | Document Type        | collateral.xlsx | property_details           | 44                                | Disabled |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Ready Property                      | Locality             | collateral.xlsx | property_details           | 45                                | Disabled |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Ready Property                      | Title Document No    | collateral.xlsx | property_details           | 46                                | Disabled |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Ready Property                      | Survey No            | collateral.xlsx | property_details           | 47                                | Disabled |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Ready Property                      | Remarks              | collateral.xlsx | property_details           | 36                                | Disabled |

  @Perishable
    @Release
#FeatureID-ACAUTOCAS-5077,ACAUTOCAS-225,ACAUTOCAS-226,ACAUTOCAS-227,ACAUTOCAS-228,ACAUTOCAS-229
  Scenario Outline: ACAUTOCAS-8993: CERSAI page data reconciliation data for collateral Property for <CollateralSubType> of <ProductType> at <ApplicationStage> stage with <Collateral_propertyDetails_rowNum>
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<Var_Stage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral for "<Var_Stage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_propertyDetails>" and row <Collateral_propertyDetails_rowNum>
    And user adds property type collateral based on "<CollateralSubType>" subtype
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    And user navigates to the CERSAI page
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_cersaiDetails>" and row <Collateral_cersaiDetails_rowNum>
    And user fills all fields in CERSAI section
    And user saves the CERSAI data
    When user moves from "<Var_Stage>" to application of "<ProductType>" product type as "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" stage
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user open collateral page of "<ApplicationStage>" stage
    And user views the already added collateral
    And user navigates to the CERSAI page
    Then user should be able to reconcile the cersai data successfully
    Examples:
      | ProductType   | ApplicationStage   | key | category | applicantType | CollateralSubType                   | Var_Stage | CollateralWB    | Collateral_propertyDetails | Collateral_propertyDetails_rowNum | Collateral_cersaiDetails | Collateral_cersaiDetails_rowNum |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Builder Property Under Construction | DDE       | collateral.xlsx | property_details           | 0                                 | cersai_details           | 250                             |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Builder Property Under Construction | DDE       | collateral.xlsx | property_details           | 1                                 | cersai_details           | 251                             |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Builder Property Under Construction | DDE       | collateral.xlsx | property_details           | 2                                 | cersai_details           | 252                             |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Builder Property Under Construction | DDE       | collateral.xlsx | property_details           | 3                                 | cersai_details           | 253                             |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Builder Property Under Construction | DDE       | collateral.xlsx | property_details           | 4                                 | cersai_details           | 254                             |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Builder Property Under Construction | DDE       | collateral.xlsx | property_details           | 5                                 | cersai_details           | 255                             |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Builder Property Under Construction | DDE       | collateral.xlsx | property_details           | 6                                 | cersai_details           | 256                             |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Builder Property Under Construction | DDE       | collateral.xlsx | property_details           | 7                                 | cersai_details           | 257                             |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Builder Property Under Construction | DDE       | collateral.xlsx | property_details           | 8                                 | cersai_details           | 258                             |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Builder Property Under Construction | DDE       | collateral.xlsx | property_details           | 9                                 | cersai_details           | 259                             |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Builder Property Under Construction | DDE       | collateral.xlsx | property_details           | 10                                | cersai_details           | 260                             |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Builder Property Under Construction | DDE       | collateral.xlsx | property_details           | 11                                | cersai_details           | 261                             |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Builder Property Under Construction | DDE       | collateral.xlsx | property_details           | 0                                 | cersai_details           | 262                             |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Builder Property Under Construction | DDE       | collateral.xlsx | property_details           | 1                                 | cersai_details           | 263                             |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Builder Property Under Construction | DDE       | collateral.xlsx | property_details           | 2                                 | cersai_details           | 264                             |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Builder Property Under Construction | DDE       | collateral.xlsx | property_details           | 3                                 | cersai_details           | 265                             |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Construction On Land                | DDE       | collateral.xlsx | property_details           | 12                                | cersai_details           | 250                             |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Construction On Land                | DDE       | collateral.xlsx | property_details           | 13                                | cersai_details           | 251                             |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Construction On Land                | DDE       | collateral.xlsx | property_details           | 14                                | cersai_details           | 252                             |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Construction On Land                | DDE       | collateral.xlsx | property_details           | 15                                | cersai_details           | 253                             |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Construction On Land                | DDE       | collateral.xlsx | property_details           | 16                                | cersai_details           | 254                             |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Construction On Land                | DDE       | collateral.xlsx | property_details           | 17                                | cersai_details           | 255                             |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Construction On Land                | DDE       | collateral.xlsx | property_details           | 18                                | cersai_details           | 256                             |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Construction On Land                | DDE       | collateral.xlsx | property_details           | 19                                | cersai_details           | 257                             |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Construction On Land                | DDE       | collateral.xlsx | property_details           | 20                                | cersai_details           | 258                             |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Construction On Land                | DDE       | collateral.xlsx | property_details           | 21                                | cersai_details           | 259                             |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Construction On Land                | DDE       | collateral.xlsx | property_details           | 22                                | cersai_details           | 260                             |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Construction On Land                | DDE       | collateral.xlsx | property_details           | 23                                | cersai_details           | 261                             |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Construction On Land                | DDE       | collateral.xlsx | property_details           | 12                                | cersai_details           | 262                             |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Construction On Land                | DDE       | collateral.xlsx | property_details           | 13                                | cersai_details           | 263                             |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Construction On Land                | DDE       | collateral.xlsx | property_details           | 14                                | cersai_details           | 264                             |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Construction On Land                | DDE       | collateral.xlsx | property_details           | 15                                | cersai_details           | 265                             |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Plot + Self Construction            | DDE       | collateral.xlsx | property_details           | 24                                | cersai_details           | 250                             |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Plot + Self Construction            | DDE       | collateral.xlsx | property_details           | 25                                | cersai_details           | 251                             |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Plot + Self Construction            | DDE       | collateral.xlsx | property_details           | 26                                | cersai_details           | 252                             |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Plot + Self Construction            | DDE       | collateral.xlsx | property_details           | 27                                | cersai_details           | 253                             |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Plot + Self Construction            | DDE       | collateral.xlsx | property_details           | 28                                | cersai_details           | 254                             |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Plot + Self Construction            | DDE       | collateral.xlsx | property_details           | 29                                | cersai_details           | 255                             |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Plot + Self Construction            | DDE       | collateral.xlsx | property_details           | 30                                | cersai_details           | 256                             |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Plot + Self Construction            | DDE       | collateral.xlsx | property_details           | 31                                | cersai_details           | 257                             |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Plot + Self Construction            | DDE       | collateral.xlsx | property_details           | 32                                | cersai_details           | 258                             |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Plot + Self Construction            | DDE       | collateral.xlsx | property_details           | 33                                | cersai_details           | 259                             |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Plot + Self Construction            | DDE       | collateral.xlsx | property_details           | 34                                | cersai_details           | 260                             |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Plot + Self Construction            | DDE       | collateral.xlsx | property_details           | 35                                | cersai_details           | 261                             |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Plot + Self Construction            | DDE       | collateral.xlsx | property_details           | 24                                | cersai_details           | 262                             |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Plot + Self Construction            | DDE       | collateral.xlsx | property_details           | 26                                | cersai_details           | 263                             |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Plot + Self Construction            | DDE       | collateral.xlsx | property_details           | 27                                | cersai_details           | 264                             |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Plot + Self Construction            | DDE       | collateral.xlsx | property_details           | 28                                | cersai_details           | 265                             |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Ready Property                      | DDE       | collateral.xlsx | property_details           | 36                                | cersai_details           | 250                             |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Ready Property                      | DDE       | collateral.xlsx | property_details           | 37                                | cersai_details           | 251                             |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Ready Property                      | DDE       | collateral.xlsx | property_details           | 38                                | cersai_details           | 252                             |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Ready Property                      | DDE       | collateral.xlsx | property_details           | 39                                | cersai_details           | 253                             |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Ready Property                      | DDE       | collateral.xlsx | property_details           | 40                                | cersai_details           | 254                             |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Ready Property                      | DDE       | collateral.xlsx | property_details           | 41                                | cersai_details           | 255                             |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Ready Property                      | DDE       | collateral.xlsx | property_details           | 42                                | cersai_details           | 256                             |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Ready Property                      | DDE       | collateral.xlsx | property_details           | 43                                | cersai_details           | 257                             |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Ready Property                      | DDE       | collateral.xlsx | property_details           | 44                                | cersai_details           | 258                             |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Ready Property                      | DDE       | collateral.xlsx | property_details           | 45                                | cersai_details           | 259                             |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Ready Property                      | DDE       | collateral.xlsx | property_details           | 46                                | cersai_details           | 260                             |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Ready Property                      | DDE       | collateral.xlsx | property_details           | 47                                | cersai_details           | 261                             |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Ready Property                      | DDE       | collateral.xlsx | property_details           | 36                                | cersai_details           | 262                             |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Ready Property                      | DDE       | collateral.xlsx | property_details           | 38                                | cersai_details           | 263                             |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Ready Property                      | DDE       | collateral.xlsx | property_details           | 39                                | cersai_details           | 264                             |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Ready Property                      | DDE       | collateral.xlsx | property_details           | 40                                | cersai_details           | 265                             |

  @Perishable
    @Release
#FeatureID-ACAUTOCAS-5077,ACAUTOCAS-225,ACAUTOCAS-226,ACAUTOCAS-227,ACAUTOCAS-228,ACAUTOCAS-229
  Scenario Outline: ACAUTOCAS-8994:  CERSAI page security interest details validation data for collateral Property for <CollateralSubType> of <ProductType> at <ApplicationStage> stage with <Collateral_propertyDetails_rowNum>
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<Var_Stage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral for "<Var_Stage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_propertyDetails>" and row <Collateral_propertyDetails_rowNum>
    And user adds property type collateral based on "<CollateralSubType>" subtype
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    And user navigates to the CERSAI page
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_cersaiDetails>" and row <Collateral_cersaiDetails_rowNum>
    And user fills all fields in CERSAI section
    And user fills all fields in section Security Interest section
    And user saves the CERSAI data
    When user moves from "<Var_Stage>" to application of "<ProductType>" product type as "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" stage
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user open collateral page of "<ApplicationStage>" stage
    And user views the already added collateral
    And user navigates to the CERSAI page
    Then user should be able to reconcile the security interest data successfully
    Examples:
      | ProductType   | ApplicationStage   | key | category | applicantType | CollateralSubType                   | Var_Stage | CollateralWB    | Collateral_propertyDetails | Collateral_propertyDetails_rowNum | Collateral_cersaiDetails | Collateral_cersaiDetails_rowNum |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Builder Property Under Construction | DDE       | collateral.xlsx | property_details           | 0                                 | cersai_details           | 250                             |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Builder Property Under Construction | DDE       | collateral.xlsx | property_details           | 1                                 | cersai_details           | 251                             |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Builder Property Under Construction | DDE       | collateral.xlsx | property_details           | 2                                 | cersai_details           | 252                             |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Builder Property Under Construction | DDE       | collateral.xlsx | property_details           | 3                                 | cersai_details           | 253                             |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Builder Property Under Construction | DDE       | collateral.xlsx | property_details           | 4                                 | cersai_details           | 254                             |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Builder Property Under Construction | DDE       | collateral.xlsx | property_details           | 5                                 | cersai_details           | 255                             |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Builder Property Under Construction | DDE       | collateral.xlsx | property_details           | 6                                 | cersai_details           | 256                             |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Builder Property Under Construction | DDE       | collateral.xlsx | property_details           | 7                                 | cersai_details           | 257                             |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Builder Property Under Construction | DDE       | collateral.xlsx | property_details           | 8                                 | cersai_details           | 258                             |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Builder Property Under Construction | DDE       | collateral.xlsx | property_details           | 9                                 | cersai_details           | 259                             |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Builder Property Under Construction | DDE       | collateral.xlsx | property_details           | 10                                | cersai_details           | 260                             |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Builder Property Under Construction | DDE       | collateral.xlsx | property_details           | 11                                | cersai_details           | 261                             |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Builder Property Under Construction | DDE       | collateral.xlsx | property_details           | 0                                 | cersai_details           | 262                             |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Builder Property Under Construction | DDE       | collateral.xlsx | property_details           | 1                                 | cersai_details           | 263                             |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Builder Property Under Construction | DDE       | collateral.xlsx | property_details           | 2                                 | cersai_details           | 264                             |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Builder Property Under Construction | DDE       | collateral.xlsx | property_details           | 3                                 | cersai_details           | 265                             |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Construction On Land                | DDE       | collateral.xlsx | property_details           | 12                                | cersai_details           | 250                             |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Construction On Land                | DDE       | collateral.xlsx | property_details           | 13                                | cersai_details           | 251                             |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Construction On Land                | DDE       | collateral.xlsx | property_details           | 14                                | cersai_details           | 252                             |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Construction On Land                | DDE       | collateral.xlsx | property_details           | 15                                | cersai_details           | 253                             |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Construction On Land                | DDE       | collateral.xlsx | property_details           | 16                                | cersai_details           | 254                             |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Construction On Land                | DDE       | collateral.xlsx | property_details           | 17                                | cersai_details           | 255                             |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Construction On Land                | DDE       | collateral.xlsx | property_details           | 18                                | cersai_details           | 256                             |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Construction On Land                | DDE       | collateral.xlsx | property_details           | 19                                | cersai_details           | 257                             |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Construction On Land                | DDE       | collateral.xlsx | property_details           | 20                                | cersai_details           | 258                             |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Construction On Land                | DDE       | collateral.xlsx | property_details           | 21                                | cersai_details           | 259                             |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Construction On Land                | DDE       | collateral.xlsx | property_details           | 22                                | cersai_details           | 260                             |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Construction On Land                | DDE       | collateral.xlsx | property_details           | 23                                | cersai_details           | 261                             |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Construction On Land                | DDE       | collateral.xlsx | property_details           | 12                                | cersai_details           | 262                             |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Construction On Land                | DDE       | collateral.xlsx | property_details           | 13                                | cersai_details           | 263                             |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Construction On Land                | DDE       | collateral.xlsx | property_details           | 14                                | cersai_details           | 264                             |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Construction On Land                | DDE       | collateral.xlsx | property_details           | 15                                | cersai_details           | 265                             |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Plot + Self Construction            | DDE       | collateral.xlsx | property_details           | 24                                | cersai_details           | 250                             |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Plot + Self Construction            | DDE       | collateral.xlsx | property_details           | 25                                | cersai_details           | 251                             |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Plot + Self Construction            | DDE       | collateral.xlsx | property_details           | 26                                | cersai_details           | 252                             |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Plot + Self Construction            | DDE       | collateral.xlsx | property_details           | 27                                | cersai_details           | 253                             |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Plot + Self Construction            | DDE       | collateral.xlsx | property_details           | 28                                | cersai_details           | 254                             |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Plot + Self Construction            | DDE       | collateral.xlsx | property_details           | 29                                | cersai_details           | 255                             |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Plot + Self Construction            | DDE       | collateral.xlsx | property_details           | 30                                | cersai_details           | 256                             |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Plot + Self Construction            | DDE       | collateral.xlsx | property_details           | 31                                | cersai_details           | 257                             |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Plot + Self Construction            | DDE       | collateral.xlsx | property_details           | 32                                | cersai_details           | 258                             |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Plot + Self Construction            | DDE       | collateral.xlsx | property_details           | 33                                | cersai_details           | 259                             |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Plot + Self Construction            | DDE       | collateral.xlsx | property_details           | 34                                | cersai_details           | 260                             |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Plot + Self Construction            | DDE       | collateral.xlsx | property_details           | 35                                | cersai_details           | 261                             |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Plot + Self Construction            | DDE       | collateral.xlsx | property_details           | 24                                | cersai_details           | 262                             |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Plot + Self Construction            | DDE       | collateral.xlsx | property_details           | 26                                | cersai_details           | 263                             |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Plot + Self Construction            | DDE       | collateral.xlsx | property_details           | 27                                | cersai_details           | 264                             |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Plot + Self Construction            | DDE       | collateral.xlsx | property_details           | 28                                | cersai_details           | 265                             |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Ready Property                      | DDE       | collateral.xlsx | property_details           | 36                                | cersai_details           | 250                             |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Ready Property                      | DDE       | collateral.xlsx | property_details           | 37                                | cersai_details           | 251                             |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Ready Property                      | DDE       | collateral.xlsx | property_details           | 38                                | cersai_details           | 252                             |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Ready Property                      | DDE       | collateral.xlsx | property_details           | 39                                | cersai_details           | 253                             |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Ready Property                      | DDE       | collateral.xlsx | property_details           | 40                                | cersai_details           | 254                             |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Ready Property                      | DDE       | collateral.xlsx | property_details           | 41                                | cersai_details           | 255                             |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Ready Property                      | DDE       | collateral.xlsx | property_details           | 42                                | cersai_details           | 256                             |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Ready Property                      | DDE       | collateral.xlsx | property_details           | 43                                | cersai_details           | 257                             |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Ready Property                      | DDE       | collateral.xlsx | property_details           | 44                                | cersai_details           | 258                             |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Ready Property                      | DDE       | collateral.xlsx | property_details           | 45                                | cersai_details           | 259                             |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Ready Property                      | DDE       | collateral.xlsx | property_details           | 46                                | cersai_details           | 260                             |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Ready Property                      | DDE       | collateral.xlsx | property_details           | 47                                | cersai_details           | 261                             |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Ready Property                      | DDE       | collateral.xlsx | property_details           | 36                                | cersai_details           | 262                             |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Ready Property                      | DDE       | collateral.xlsx | property_details           | 38                                | cersai_details           | 263                             |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Ready Property                      | DDE       | collateral.xlsx | property_details           | 39                                | cersai_details           | 264                             |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Ready Property                      | DDE       | collateral.xlsx | property_details           | 40                                | cersai_details           | 265                             |

  @Perishable
    @Release
#FeatureID-ACAUTOCAS-5077,ACAUTOCAS-225,ACAUTOCAS-226,ACAUTOCAS-227,ACAUTOCAS-228,ACAUTOCAS-229
  Scenario Outline: ACAUTOCAS-8995:  CERSAI page security interest details data should not be deleted at collateral Property for <CollateralSubType> of <ProductType> at <ApplicationStage> stage with <Collateral_propertyDetails_rowNum>
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<Var_Stage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral for "<Var_Stage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_propertyDetails>" and row <Collateral_propertyDetails_rowNum>
    And user adds property type collateral based on "<CollateralSubType>" subtype
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    And user navigates to the CERSAI page
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_cersaiDetails>" and row <Collateral_cersaiDetails_rowNum>
    And user fills all fields in CERSAI section
    And user fills all fields in section Security Interest section
    And user saves the CERSAI data
    When user moves from "<Var_Stage>" to application of "<ProductType>" product type as "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" stage
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user open collateral page of "<ApplicationStage>" stage
    And user views the already added collateral
    And user navigates to the CERSAI page
    And user attempts to delete Security Interest Data
    Then user should not be able to delete Security Interest Data
    Examples:
      | ProductType   | ApplicationStage   | key | category | applicantType | CollateralSubType                   | Var_Stage | CollateralWB    | Collateral_propertyDetails | Collateral_propertyDetails_rowNum | Collateral_cersaiDetails | Collateral_cersaiDetails_rowNum |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Builder Property Under Construction | DDE       | collateral.xlsx | property_details           | 0                                 | cersai_details           | 250                             |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Construction On Land                | DDE       | collateral.xlsx | property_details           | 12                                | cersai_details           | 250                             |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Plot + Self Construction            | DDE       | collateral.xlsx | property_details           | 24                                | cersai_details           | 250                             |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Ready Property                      | DDE       | collateral.xlsx | property_details           | 36                                | cersai_details           | 250                             |

  @Perishable
    @Release
#FeatureID-ACAUTOCAS-5077,ACAUTOCAS-225,ACAUTOCAS-226,ACAUTOCAS-227,ACAUTOCAS-228,ACAUTOCAS-229
  Scenario Outline: ACAUTOCAS-8996:  CERSAI page security interest details data should not be modified at collateral Property for <CollateralSubType> of <ProductType> at <ApplicationStage> stage with <Collateral_propertyDetails_rowNum>
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<Var_Stage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral for "<Var_Stage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_propertyDetails>" and row <Collateral_propertyDetails_rowNum>
    And user adds property type collateral based on "<CollateralSubType>" subtype
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    And user navigates to the CERSAI page
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_cersaiDetails>" and row <Collateral_cersaiDetails_rowNum>
    And user fills all fields in CERSAI section
    And user fills all fields in section Security Interest section
    And user saves the CERSAI data
    When user moves from "<Var_Stage>" to application of "<ProductType>" product type as "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" stage
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user open collateral page of "<ApplicationStage>" stage
    And user views the already added collateral
    And user navigates to the CERSAI page
    And user attempts to modify Security Interest Data
    Then user should not be able to modify Security Interest Data
    Examples:
      | ProductType   | ApplicationStage   | key | category | applicantType | CollateralSubType                   | Var_Stage | CollateralWB    | Collateral_propertyDetails | Collateral_propertyDetails_rowNum | Collateral_cersaiDetails | Collateral_cersaiDetails_rowNum |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Builder Property Under Construction | DDE       | collateral.xlsx | property_details           | 0                                 | cersai_details           | 250                             |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Construction On Land                | DDE       | collateral.xlsx | property_details           | 12                                | cersai_details           | 250                             |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Plot + Self Construction            | DDE       | collateral.xlsx | property_details           | 24                                | cersai_details           | 250                             |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Ready Property                      | DDE       | collateral.xlsx | property_details           | 36                                | cersai_details           | 250                             |

 #  @NotImplemented
#E2E
#FeatureID-ACAUTOCAS-5077,ACAUTOCAS-225,ACAUTOCAS-226,ACAUTOCAS-227,ACAUTOCAS-228,ACAUTOCAS-229
  Scenario Outline: ACAUTOCAS-8997:  CERSAI data validation for "<CollateralSubType>" at LMS Module
    And user identifies an application from workbook "<SourceDataFile>" under sheet "<SheetName>" and row number <RowNumber>
    And user has already added "<CollateralSubType>"
    And user has already added CERSAI data for the security collateral
    And user has already added Security Interest Details data
    When user disburse the application
    And user logs into LMS module
    And user views the application
    Then user should be able to view the same CERSAI data for security collateral
    Examples:
      | ProductType   | ApplicationStage   | key | cat egory | applicantType | CollateralSubType                   | Var_Stage | CollateralWB    | Collateral_propertyDetails | Collateral_propertyDetails_rowNum | Collateral_cersaiDetails | Collateral_cersaiDetails_rowNum | LoanType   |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Builder Property Under Construction | DDE       | collateral.xlsx | property_details           | 0                                 | cersai_details           | 250                             | <LoanType> |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Construction On Land                | DDE       | collateral.xlsx | property_details           | 12                                | cersai_details           | 250                             | <LoanType> |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Plot + Self Construction            | DDE       | collateral.xlsx | property_details           | 24                                | cersai_details           | 250                             | <LoanType> |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Ready Property                      | DDE       | collateral.xlsx | property_details           | 36                                | cersai_details           | 250                             | <LoanType> |

#  @NotImplemented
#E2E
#FeatureID-ACAUTOCAS-5077,ACAUTOCAS-225,ACAUTOCAS-226,ACAUTOCAS-227,ACAUTOCAS-228,ACAUTOCAS-229
  Scenario Outline: ACAUTOCAS-8998:  CERSAI Security Interest Details data validation for "<CollateralSubType>" at LMS Module
    And user identifies an application from workbook "<SourceDataFile>" under sheet "<SheetName>" and row number <RowNumber>
    And user has already added "<CollateralSubType>"
    And user has already added CERSAI data for the security collateral
    And user has already added Security Interest Details data
    When user disburse the application
    And user logs into LMS module
    And user views the application
    Then user should be able to view the same CERSAI Security Interest Details data for security collateral
    Examples:
      | ProductType   | ApplicationStage   | key | category | applicantType | CollateralSubType                   | Var_Stage | CollateralWB    | Collateral_propertyDetails | Collateral_propertyDetails_rowNum | Collateral_cersaiDetails | Collateral_cersaiDetails_rowNum |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Builder Property Under Construction | DDE       | collateral.xlsx | property_details           | 0                                 | cersai_details           | 250                             |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Construction On Land                | DDE       | collateral.xlsx | property_details           | 12                                | cersai_details           | 251                             |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Plot + Self Construction            | DDE       | collateral.xlsx | property_details           | 24                                | cersai_details           | 252                             |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Ready Property                      | DDE       | collateral.xlsx | property_details           | 36                                | cersai_details           | 253                             |

  @ImplementedBy-priyanshu.kashyap
    @Release
    @Perishable
#FeatureID-ACAUTOCAS-5077,ACAUTOCAS-225,ACAUTOCAS-226,ACAUTOCAS-227,ACAUTOCAS-228,ACAUTOCAS-229
Scenario Outline: ACAUTOCAS-17009: CERSAI page data validation for collateral Property for <CollateralSubType> of <ProductType> at <ApplicationStage> stage with <Collateral_propertyDetails_rowNum>
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "DDE" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral for "DDE"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_propertyDetails>" and row <Collateral_propertyDetails_rowNum>
    And user adds collateral based on "<CollateralSubType>" subtype
    When user moves application from "DDE" stage to application of "<ProductType>" product type as "<applicantType>" applicant at "<ApplicationStage>" for "" with "" stage without opening it
    And user opens an application of "<ProductType>" product type as "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user open collateral page of "<ApplicationStage>" stage
    And user modifies the saved collateral
    Then user should not be able to perform "<Action>"
    Examples:
      | ProductType   | ApplicationStage   | key | category | applicantType | CollateralSubType                   | ApplicationStage | CollateralWB    | Collateral_propertyDetails | Collateral_propertyDetails_rowNum | Action |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Builder Property Under Construction | Disbursal Author | collateral.xlsx | property_details           | 0                                 | Modify |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Construction On Land                | Disbursal Author | collateral.xlsx | property_details           | 12                                | Modify |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Plot + Self Construction            | Disbursal Author | collateral.xlsx | property_details           | 24                                | Modify |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Ready Property                      | Disbursal Author | collateral.xlsx | property_details           | 36                                | Modify |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Builder Property Under Construction | Disbursal Author | collateral.xlsx | property_details           | 0                                 | Delete |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Construction On Land                | Disbursal Author | collateral.xlsx | property_details           | 12                                | Delete |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Plot + Self Construction            | Disbursal Author | collateral.xlsx | property_details           | 24                                | Delete |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Ready Property                      | Disbursal Author | collateral.xlsx | property_details           | 36                                | Delete |


