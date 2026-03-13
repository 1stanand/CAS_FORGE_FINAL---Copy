@Epic-Secondary_Collateral
@AuthoredBy-rsurya.kumar
@ReviewedBy-
@ImplementedBy-
@TechReviewedBy-
@ReviewedByDEV
@CERSAIDataView @TypeProperty
@ReviewedByGWT
@new
  @NotImplemented
@CERSAIDataView @TypeAsset
Feature: CERSAI data addition for Asset type collateral at Application Renewal Recommendation

#COLLATERAL_SUB_TYPE.HIDE_CERSAI_TAB = 0 for COLLATERAL_TYPE_FK = Asset
#COLLATERAL_SUB_TYPE.HIDE_CERSAI_TAB = 0 for COLLATERAL_TYPE_FK = Property

  Background:
    Given User Opens Browser With FinnOneCAS URL
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user opens the Applications page

#FeatureID-ACAUTOCAS-5077,ACAUTOCAS-225,ACAUTOCAS-226,ACAUTOCAS-227,ACAUTOCAS-228,ACAUTOCAS-229
  Scenario Outline: ACAUTOCAS-8967:  CERSAI page should show default data for collateral Property at application renewal recommendation
    And user identifies an application from workbook "<CollDataFile>" under sheet "<SheetName>" and row number <RowNumber>
    And user has already linked collateral "<CollateralSubType>" with the application from workbook "<CollDataFile>" under sheet "<CollSheetName1>" and row number <RowNum>
    And the collateral has no CERSAI data available
    And user has entered "Address Data" from workbook "<CollDataFile>" under sheet "<PropertyAddress>" and row number <AddrRowNumber>
    And user has entered "Property and Registration details" from workbook "<PropRegDataFile>" under sheet "<PropertyRegDetails>" and row number "<PropRegRowNumber>" as:
      | PropRegDataFile   | PropertyRegDetails         | PropRegRowNumber |
      | PropertyFile.xlsx | d_property_and_reg_details | 0                |
      | PropertyFile.xlsx | d_property_and_reg_details | 1                |
    When user views the application at "<ApplicationStage>"
    And user navigates to the "collateral" page
    And user views the collateral "<CollateralSubType>"
    And user navigates to the "CERSAI" page
    Then user should be able to see default data in "SerialNo", "SubRegistrarOffice", "DocumentTaluka", "DocumentDistrict", "DocumentState", "RegistrationDate" from workbook "<CollDataFile>" under sheet "<CERSAIDataFile>" and row number <RowNum2>

    Examples:
      | CollDataFile      | SheetName                  | RowNumber | ApplicationStage                   | CollateralSubType                   | CollSheetName1       | RowNum | PropertyAddress    | AddrRowNumber | CERSAIDataFile | RowNum2 |
      | PropertyFile.xlsx | ReadyProperty              | 10        | Application Renewal Recommendation | Ready Property                      | d_collateral_details | 0      | d_property_address | 0             | d_cersai       | 0       |
      | PropertyFile.xlsx | BuilderPropertyUnderConstr | 10        | Application Renewal Recommendation | Builder Property Under Construction | d_collateral_details | 2      | d_property_address | 1             | d_cersai       | 1       |
      | PropertyFile.xlsx | ConstructionOnLand         | 10        | Application Renewal Recommendation | Construction on Land                | d_collateral_details | 4      | d_property_address | 2             | d_cersai       | 2       |
      | PropertyFile.xlsx | PlotPlusSelfConstruction   | 10        | Application Renewal Recommendation | Plot Plus Self Construction         | d_collateral_details | 6      | d_property_address | 3             | d_cersai       | 3       |

#FeatureID-ACAUTOCAS-5077,ACAUTOCAS-225,ACAUTOCAS-226,ACAUTOCAS-227,ACAUTOCAS-228,ACAUTOCAS-229
  Scenario Outline: ACAUTOCAS-8968:  CERSAI page should show default data at application renewal recommendation for collateral Property without property registration details
    And user identifies an application from workbook "<CollDataFile>" under sheet "<SheetName>" and row number <RowNumber>
    And user has already linked collateral "<CollateralSubType>" with the application from workbook "<CollDataFile>" under sheet "<CollSheetName1>" and row number <RowNum>
    And the collateral has no CERSAI data available
    And user has entered "Address Data" from workbook "<CollDataFile>" under sheet "<PropertyAddress>" and row number <AddrRowNumber>
    And user has not entered "Property and Registration details"
    When user views the application at "<ApplicationStage>"
    And user navigates to the "collateral" page
    And user views the collateral "<CollateralSubType>"
    And user navigates to the "CERSAI" page
    Then user should be able to see default data in "SerialNo", "SubRegistrarOffice", "DocumentTaluka", "DocumentDistrict", "DocumentState", "RegistrationDate" from workbook "<CollDataFile>" under sheet "<CERSAIDataFile>" and row number <RowNum2>

    Examples:
      | CollDataFile      | SheetName                  | RowNumber | ApplicationStage                   | CollateralSubType                   | CollSheetName1       | RowNum | PropertyAddress    | AddrRowNumber | CERSAIDataFile | RowNum2 |
      | PropertyFile.xlsx | ReadyProperty              | 10        | Application Renewal Recommendation | Ready Property                      | d_collateral_details | 1      | d_property_address | 4             | d_cersai       | 4       |
      | PropertyFile.xlsx | BuilderPropertyUnderConstr | 10        | Application Renewal Recommendation | Builder Property Under Construction | d_collateral_details | 3      | d_property_address | 5             | d_cersai       | 5       |
      | PropertyFile.xlsx | ConstructionOnLand         | 10        | Application Renewal Recommendation | Construction on Land                | d_collateral_details | 5      | d_property_address | 6             | d_cersai       | 6       |
      | PropertyFile.xlsx | PlotPlusSelfConstruction   | 10        | Application Renewal Recommendation | Plot Plus Self Construction         | d_collateral_details | 7      | d_property_address | 7             | d_cersai       | 7       |

#FeatureID-ACAUTOCAS-5077,ACAUTOCAS-225,ACAUTOCAS-226,ACAUTOCAS-227,ACAUTOCAS-228,ACAUTOCAS-229
  Scenario Outline: ACAUTOCAS-8969:  CERSAI page should show default data at application renewal recommendation for collateral Property without current property registration details
    And user identifies an application from workbook "<CollDataFile>" under sheet "<SheetName>" and row number <RowNumber>
    And user has already linked collateral "<CollateralSubType>" with the application from workbook "<CollDataFile>" under sheet "<CollSheetName1>" and row number <RowNum>
    And the collateral has no CERSAI data available
    And user has entered "Address Data" from workbook "<CollDataFile>" under sheet "<PropertyAddress>" and row number <AddrRowNumber>
    And user has entered "Property and Registration details" from workbook "<PropRegDataFile>" under sheet "<PropertyRegDetails>" and row number "<PropRegRowNumber>" as:
      | PropRegDataFile   | PropertyRegDetails         | PropRegRowNumber |
      | PropertyFile.xlsx | d_property_and_reg_details | 2                |
    When user views the application at "<ApplicationStage>"
    And user navigates to the "collateral" page
    And user views the collateral "<CollateralSubType>"
    And user navigates to the "CERSAI" page
    Then user should be able to see default data in "SerialNo", "SubRegistrarOffice", "DocumentTaluka", "DocumentDistrict", "DocumentState", "RegistrationDate" from workbook "<CollDataFile>" under sheet "<CERSAIDataFile>" and row number <RowNum2>

    Examples:
      | CollDataFile      | SheetName                  | RowNumber | ApplicationStage                   | CollateralSubType                   | CollSheetName1       | RowNum | PropertyAddress    | AddrRowNumber | CERSAIDataFile | RowNum2 |
      | PropertyFile.xlsx | ReadyProperty              | 10        | Application Renewal Recommendation | Ready Property                      | d_collateral_details | 1      | d_property_address | 8             | d_cersai       | 8       |
      | PropertyFile.xlsx | BuilderPropertyUnderConstr | 10        | Application Renewal Recommendation | Builder Property Under Construction | d_collateral_details | 3      | d_property_address | 9             | d_cersai       | 9       |
      | PropertyFile.xlsx | ConstructionOnLand         | 10        | Application Renewal Recommendation | Construction on Land                | d_collateral_details | 5      | d_property_address | 10            | d_cersai       | 10      |
      | PropertyFile.xlsx | PlotPlusSelfConstruction   | 10        | Application Renewal Recommendation | Plot Plus Self Construction         | d_collateral_details | 7      | d_property_address | 11            | d_cersai       | 11      |

#FeatureID-ACAUTOCAS-5077,ACAUTOCAS-225,ACAUTOCAS-226,ACAUTOCAS-227,ACAUTOCAS-228,ACAUTOCAS-229
  Scenario Outline: ACAUTOCAS-8970:  CERSAI page data validation for "<CollateralSubType>" at "<CERSAIRowNumber>" for "<ValidationField>" at Application Renewal Recommendation stage
    And user identifies an application from workbook "<SourceDataFile>" under sheet "<SheetName>" and row number <RowNumber>
    And user has already added "<CollateralSubType>"
    When user views the application at "Application Renewal Recommendation"
    And user navigates to the "collateral" page
    And user attempts to modify "<CollateralSubType>"
    Then user should not be able to modify "<CollateralSubType>"

    Examples:
      | SourceDataFile    | SheetName                  | RowNumber | CollateralSubType                   |
      | PropertyFile.xlsx | BuilderPropertyUnderConstr | 10        | Builder Property Under Construction |
      | PropertyFile.xlsx | ConstructionOnLand         | 10        | Construction On Land                |
      | PropertyFile.xlsx | PlotPlusSelfConstruction   | 10        | Plot Plus Self Construction         |
      | PropertyFile.xlsx | ReadyProperty              | 10        | Ready Property                      |

#FeatureID-ACAUTOCAS-5077,ACAUTOCAS-225,ACAUTOCAS-226,ACAUTOCAS-227,ACAUTOCAS-228,ACAUTOCAS-229
  Scenario Outline: ACAUTOCAS-8970:  CERSAI page data validation for "<CollateralSubType>" at "<CERSAIRowNumber>" for "<ValidationField>" at Application Renewal Recommendation stage
    And user identifies an application from workbook "<SourceDataFile>" under sheet "<SheetName>" and row number <RowNumber>
    And user has already added "<CollateralSubType>"
    When user views the application at "Application Renewal Recommendation"
    And user navigates to the "collateral" page
    And user views the collateral "<CollateralSubType>"
    And user navigates to the "CERSAI" page
    And user attempts to modify "CERSAI" data
    Then user should not be able to modify "CERSAI" data

    Examples:
      | SourceDataFile    | SheetName                  | RowNumber | CollateralSubType                   |
      | PropertyFile.xlsx | BuilderPropertyUnderConstr | 10        | Builder Property Under Construction |
      | PropertyFile.xlsx | ConstructionOnLand         | 10        | Construction On Land                |
      | PropertyFile.xlsx | PlotPlusSelfConstruction   | 10        | Plot Plus Self Construction         |
      | PropertyFile.xlsx | ReadyProperty              | 10        | Ready Property                      |

#FeatureID-ACAUTOCAS-5077,ACAUTOCAS-225,ACAUTOCAS-226,ACAUTOCAS-227,ACAUTOCAS-228,ACAUTOCAS-229
  Scenario Outline: ACAUTOCAS-8970:  CERSAI page data validation for "<CollateralSubType>" at "<CERSAIRowNumber>" for "<ValidationField>" at Application Renewal Recommendation stage
    And user identifies an application from workbook "<SourceDataFile>" under sheet "<SheetName>" and row number <RowNumber>
    And user has already added "<CollateralSubType>"
    And user has already updated CERSAI details from workbook "<SourceDataFile>" under sheet "<CERSAIDataFile>" and row number <CERSAIRowNumber>
    When user views the application at "Application Renewal Recommendation"
    And user navigates to the "collateral" page
    And user views the collateral "<CollateralSubType>"
    And user navigates to the "CERSAI" page
    And user validates the data on screen with data from workbook "<SourceDataFile>" under sheet "<CERSAIDataFile>" and row number <CERSAIRowNumber>
    Then user should be able to validate the data successfully
    Examples:
      | SourceDataFile    | SheetName                  | RowNumber | CollateralSubType                   | CERSAIDataFile | CERSAIRowNumber |
      | PropertyFile.xlsx | BuilderPropertyUnderConstr | 10        | Builder Property Under Construction | d_cersai       | 26              |
      | PropertyFile.xlsx | ConstructionOnLand         | 10        | Construction On Land                | d_cersai       | 26              |
      | PropertyFile.xlsx | PlotPlusSelfConstruction   | 10        | Plot Plus Self Construction         | d_cersai       | 26              |
      | PropertyFile.xlsx | ReadyProperty              | 10        | Ready Property                      | d_cersai       | 26              |
      | PropertyFile.xlsx | BuilderPropertyUnderConstr | 10        | Builder Property Under Construction | d_cersai       | 32              |
      | PropertyFile.xlsx | ConstructionOnLand         | 10        | Construction On Land                | d_cersai       | 32              |
      | PropertyFile.xlsx | PlotPlusSelfConstruction   | 10        | Plot Plus Self Construction         | d_cersai       | 32              |
      | PropertyFile.xlsx | ReadyProperty              | 10        | Ready Property                      | d_cersai       | 32              |
      | PropertyFile.xlsx | BuilderPropertyUnderConstr | 10        | Builder Property Under Construction | d_cersai       | 33              |
      | PropertyFile.xlsx | ConstructionOnLand         | 10        | Construction On Land                | d_cersai       | 33              |
      | PropertyFile.xlsx | PlotPlusSelfConstruction   | 10        | Plot Plus Self Construction         | d_cersai       | 33              |
      | PropertyFile.xlsx | ReadyProperty              | 10        | Ready Property                      | d_cersai       | 33              |
      | PropertyFile.xlsx | BuilderPropertyUnderConstr | 10        | Builder Property Under Construction | d_cersai       | 34              |
      | PropertyFile.xlsx | ConstructionOnLand         | 10        | Construction On Land                | d_cersai       | 34              |
      | PropertyFile.xlsx | PlotPlusSelfConstruction   | 10        | Plot Plus Self Construction         | d_cersai       | 34              |
      | PropertyFile.xlsx | ReadyProperty              | 10        | Ready Property                      | d_cersai       | 34              |
      | PropertyFile.xlsx | BuilderPropertyUnderConstr | 10        | Builder Property Under Construction | d_cersai       | 35              |
      | PropertyFile.xlsx | ConstructionOnLand         | 10        | Construction On Land                | d_cersai       | 35              |
      | PropertyFile.xlsx | PlotPlusSelfConstruction   | 10        | Plot Plus Self Construction         | d_cersai       | 35              |
      | PropertyFile.xlsx | ReadyProperty              | 10        | Ready Property                      | d_cersai       | 35              |
      | PropertyFile.xlsx | BuilderPropertyUnderConstr | 10        | Builder Property Under Construction | d_cersai       | 36              |
      | PropertyFile.xlsx | ConstructionOnLand         | 10        | Construction On Land                | d_cersai       | 36              |
      | PropertyFile.xlsx | PlotPlusSelfConstruction   | 10        | Plot Plus Self Construction         | d_cersai       | 36              |
      | PropertyFile.xlsx | ReadyProperty              | 10        | Ready Property                      | d_cersai       | 36              |
      | PropertyFile.xlsx | BuilderPropertyUnderConstr | 10        | Builder Property Under Construction | d_cersai       | 37              |
      | PropertyFile.xlsx | ConstructionOnLand         | 10        | Construction On Land                | d_cersai       | 37              |
      | PropertyFile.xlsx | PlotPlusSelfConstruction   | 10        | Plot Plus Self Construction         | d_cersai       | 37              |
      | PropertyFile.xlsx | ReadyProperty              | 10        | Ready Property                      | d_cersai       | 37              |
      | PropertyFile.xlsx | BuilderPropertyUnderConstr | 10        | Builder Property Under Construction | d_cersai       | 38              |
      | PropertyFile.xlsx | ConstructionOnLand         | 10        | Construction On Land                | d_cersai       | 38              |
      | PropertyFile.xlsx | PlotPlusSelfConstruction   | 10        | Plot Plus Self Construction         | d_cersai       | 38              |
      | PropertyFile.xlsx | ReadyProperty              | 10        | Ready Property                      | d_cersai       | 38              |
      | PropertyFile.xlsx | BuilderPropertyUnderConstr | 10        | Builder Property Under Construction | d_cersai       | 39              |
      | PropertyFile.xlsx | ConstructionOnLand         | 10        | Construction On Land                | d_cersai       | 39              |
      | PropertyFile.xlsx | PlotPlusSelfConstruction   | 10        | Plot Plus Self Construction         | d_cersai       | 39              |
      | PropertyFile.xlsx | ReadyProperty              | 10        | Ready Property                      | d_cersai       | 39              |
      | PropertyFile.xlsx | BuilderPropertyUnderConstr | 10        | Builder Property Under Construction | d_cersai       | 42              |
      | PropertyFile.xlsx | ConstructionOnLand         | 10        | Construction On Land                | d_cersai       | 42              |
      | PropertyFile.xlsx | PlotPlusSelfConstruction   | 10        | Plot Plus Self Construction         | d_cersai       | 42              |
      | PropertyFile.xlsx | ReadyProperty              | 10        | Ready Property                      | d_cersai       | 42              |
      | PropertyFile.xlsx | BuilderPropertyUnderConstr | 10        | Builder Property Under Construction | d_cersai       | 43              |
      | PropertyFile.xlsx | ConstructionOnLand         | 10        | Construction On Land                | d_cersai       | 43              |
      | PropertyFile.xlsx | PlotPlusSelfConstruction   | 10        | Plot Plus Self Construction         | d_cersai       | 43              |
      | PropertyFile.xlsx | ReadyProperty              | 10        | Ready Property                      | d_cersai       | 43              |
      | PropertyFile.xlsx | BuilderPropertyUnderConstr | 10        | Builder Property Under Construction | d_cersai       | 44              |
      | PropertyFile.xlsx | ConstructionOnLand         | 10        | Construction On Land                | d_cersai       | 44              |
      | PropertyFile.xlsx | PlotPlusSelfConstruction   | 10        | Plot Plus Self Construction         | d_cersai       | 44              |
      | PropertyFile.xlsx | ReadyProperty              | 10        | Ready Property                      | d_cersai       | 44              |
      | PropertyFile.xlsx | BuilderPropertyUnderConstr | 10        | Builder Property Under Construction | d_cersai       | 45              |
      | PropertyFile.xlsx | ConstructionOnLand         | 10        | Construction On Land                | d_cersai       | 45              |
      | PropertyFile.xlsx | PlotPlusSelfConstruction   | 10        | Plot Plus Self Construction         | d_cersai       | 45              |
      | PropertyFile.xlsx | ReadyProperty              | 10        | Ready Property                      | d_cersai       | 45              |
      | PropertyFile.xlsx | BuilderPropertyUnderConstr | 10        | Builder Property Under Construction | d_cersai       | 48              |
      | PropertyFile.xlsx | ConstructionOnLand         | 10        | Construction On Land                | d_cersai       | 48              |
      | PropertyFile.xlsx | PlotPlusSelfConstruction   | 10        | Plot Plus Self Construction         | d_cersai       | 48              |
      | PropertyFile.xlsx | ReadyProperty              | 10        | Ready Property                      | d_cersai       | 48              |

#FeatureID-ACAUTOCAS-5077,ACAUTOCAS-225,ACAUTOCAS-226,ACAUTOCAS-227,ACAUTOCAS-228,ACAUTOCAS-229
  Scenario Outline: ACAUTOCAS-8971:  CERSAI page security interest details data validation for "<CollateralSubType>" at "<CERSAIRowNumber>" at Application Renewal Recommendation stage
    And user identifies an application from workbook "<SourceDataFile>" under sheet "<SheetName>" and row number <RowNumber>
    And user has already added "<CollateralSubType>"
    And user has updated CERSAI details
    And user has added data in section "Security Interest Details" from workbook "<SourceDataFile>" under sheet "<CERSAISecIntDataFile>" and row number <CERSAISecIntRowNumber>
    When user views the application at "Application Renewal Recommendation"
    And user navigates to the "collateral" page
    And user modifies the collateral "<CollateralSubType>"
    And user navigates to the "CERSAI" page
    And user validates data in section "Security Interest Details" with data from workbook "<SourceDataFile>" under sheet "<CERSAISecIntDataFile>" and row number <CERSAISecIntRowNumber>
    Then user should be able to validate the data successfully

    Examples:
      | SourceDataFile    | SheetName                  | RowNumber | CollateralSubType                   | CERSAISecIntDataFile | CERSAISecIntRowNumber |
      | PropertyFile.xlsx | BuilderPropertyUnderConstr | 10        | Builder Property Under Construction | d_cersai_SecInt      | 0                     |
      | PropertyFile.xlsx | BuilderPropertyUnderConstr | 10        | Builder Property Under Construction | d_cersai_SecInt      | 4                     |
      | PropertyFile.xlsx | BuilderPropertyUnderConstr | 10        | Builder Property Under Construction | d_cersai_SecInt      | 6                     |
      | PropertyFile.xlsx | BuilderPropertyUnderConstr | 10        | Builder Property Under Construction | d_cersai_SecInt      | 7                     |
      | PropertyFile.xlsx | BuilderPropertyUnderConstr | 10        | Builder Property Under Construction | d_cersai_SecInt      | 12                    |
      | PropertyFile.xlsx | BuilderPropertyUnderConstr | 10        | Builder Property Under Construction | d_cersai_SecInt      | 17                    |
      | PropertyFile.xlsx | BuilderPropertyUnderConstr | 10        | Builder Property Under Construction | d_cersai_SecInt      | 22                    |
      | PropertyFile.xlsx | BuilderPropertyUnderConstr | 10        | Builder Property Under Construction | d_cersai_SecInt      | 27                    |
      | PropertyFile.xlsx | BuilderPropertyUnderConstr | 10        | Builder Property Under Construction | d_cersai_SecInt      | 28                    |
      | PropertyFile.xlsx | BuilderPropertyUnderConstr | 10        | Builder Property Under Construction | d_cersai_SecInt      | 30                    |
      | PropertyFile.xlsx | BuilderPropertyUnderConstr | 10        | Builder Property Under Construction | d_cersai_SecInt      | 31                    |
      | PropertyFile.xlsx | BuilderPropertyUnderConstr | 10        | Builder Property Under Construction | d_cersai_SecInt      | 32                    |
      | PropertyFile.xlsx | BuilderPropertyUnderConstr | 10        | Builder Property Under Construction | d_cersai_SecInt      | 36                    |
      | PropertyFile.xlsx | BuilderPropertyUnderConstr | 10        | Builder Property Under Construction | d_cersai_SecInt      | 37                    |
      | PropertyFile.xlsx | ConstructionOnLand         | 10        | Construction On Land                | d_cersai_SecInt      | 0                     |
      | PropertyFile.xlsx | ConstructionOnLand         | 10        | Construction On Land                | d_cersai_SecInt      | 4                     |
      | PropertyFile.xlsx | ConstructionOnLand         | 10        | Construction On Land                | d_cersai_SecInt      | 6                     |
      | PropertyFile.xlsx | ConstructionOnLand         | 10        | Construction On Land                | d_cersai_SecInt      | 7                     |
      | PropertyFile.xlsx | ConstructionOnLand         | 10        | Construction On Land                | d_cersai_SecInt      | 12                    |
      | PropertyFile.xlsx | ConstructionOnLand         | 10        | Construction On Land                | d_cersai_SecInt      | 17                    |
      | PropertyFile.xlsx | ConstructionOnLand         | 10        | Construction On Land                | d_cersai_SecInt      | 22                    |
      | PropertyFile.xlsx | ConstructionOnLand         | 10        | Construction On Land                | d_cersai_SecInt      | 27                    |
      | PropertyFile.xlsx | ConstructionOnLand         | 10        | Construction On Land                | d_cersai_SecInt      | 28                    |
      | PropertyFile.xlsx | ConstructionOnLand         | 10        | Construction On Land                | d_cersai_SecInt      | 30                    |
      | PropertyFile.xlsx | ConstructionOnLand         | 10        | Construction On Land                | d_cersai_SecInt      | 31                    |
      | PropertyFile.xlsx | ConstructionOnLand         | 10        | Construction On Land                | d_cersai_SecInt      | 32                    |
      | PropertyFile.xlsx | ConstructionOnLand         | 10        | Construction On Land                | d_cersai_SecInt      | 36                    |
      | PropertyFile.xlsx | ConstructionOnLand         | 10        | Construction On Land                | d_cersai_SecInt      | 37                    |
      | PropertyFile.xlsx | PlotPlusSelfConstruction   | 10        | Plot Plus Self Construction         | d_cersai_SecInt      | 0                     |
      | PropertyFile.xlsx | PlotPlusSelfConstruction   | 10        | Plot Plus Self Construction         | d_cersai_SecInt      | 4                     |
      | PropertyFile.xlsx | PlotPlusSelfConstruction   | 10        | Plot Plus Self Construction         | d_cersai_SecInt      | 6                     |
      | PropertyFile.xlsx | PlotPlusSelfConstruction   | 10        | Plot Plus Self Construction         | d_cersai_SecInt      | 7                     |
      | PropertyFile.xlsx | PlotPlusSelfConstruction   | 10        | Plot Plus Self Construction         | d_cersai_SecInt      | 12                    |
      | PropertyFile.xlsx | PlotPlusSelfConstruction   | 10        | Plot Plus Self Construction         | d_cersai_SecInt      | 17                    |
      | PropertyFile.xlsx | PlotPlusSelfConstruction   | 10        | Plot Plus Self Construction         | d_cersai_SecInt      | 22                    |
      | PropertyFile.xlsx | PlotPlusSelfConstruction   | 10        | Plot Plus Self Construction         | d_cersai_SecInt      | 27                    |
      | PropertyFile.xlsx | PlotPlusSelfConstruction   | 10        | Plot Plus Self Construction         | d_cersai_SecInt      | 28                    |
      | PropertyFile.xlsx | PlotPlusSelfConstruction   | 10        | Plot Plus Self Construction         | d_cersai_SecInt      | 30                    |
      | PropertyFile.xlsx | PlotPlusSelfConstruction   | 10        | Plot Plus Self Construction         | d_cersai_SecInt      | 31                    |
      | PropertyFile.xlsx | PlotPlusSelfConstruction   | 10        | Plot Plus Self Construction         | d_cersai_SecInt      | 32                    |
      | PropertyFile.xlsx | PlotPlusSelfConstruction   | 10        | Plot Plus Self Construction         | d_cersai_SecInt      | 36                    |
      | PropertyFile.xlsx | PlotPlusSelfConstruction   | 10        | Plot Plus Self Construction         | d_cersai_SecInt      | 37                    |
      | PropertyFile.xlsx | ReadyProperty              | 10        | Ready Property                      | d_cersai_SecInt      | 0                     |
      | PropertyFile.xlsx | ReadyProperty              | 10        | Ready Property                      | d_cersai_SecInt      | 4                     |
      | PropertyFile.xlsx | ReadyProperty              | 10        | Ready Property                      | d_cersai_SecInt      | 6                     |
      | PropertyFile.xlsx | ReadyProperty              | 10        | Ready Property                      | d_cersai_SecInt      | 7                     |
      | PropertyFile.xlsx | ReadyProperty              | 10        | Ready Property                      | d_cersai_SecInt      | 12                    |
      | PropertyFile.xlsx | ReadyProperty              | 10        | Ready Property                      | d_cersai_SecInt      | 17                    |
      | PropertyFile.xlsx | ReadyProperty              | 10        | Ready Property                      | d_cersai_SecInt      | 22                    |
      | PropertyFile.xlsx | ReadyProperty              | 10        | Ready Property                      | d_cersai_SecInt      | 27                    |
      | PropertyFile.xlsx | ReadyProperty              | 10        | Ready Property                      | d_cersai_SecInt      | 28                    |
      | PropertyFile.xlsx | ReadyProperty              | 10        | Ready Property                      | d_cersai_SecInt      | 30                    |
      | PropertyFile.xlsx | ReadyProperty              | 10        | Ready Property                      | d_cersai_SecInt      | 31                    |
      | PropertyFile.xlsx | ReadyProperty              | 10        | Ready Property                      | d_cersai_SecInt      | 32                    |
      | PropertyFile.xlsx | ReadyProperty              | 10        | Ready Property                      | d_cersai_SecInt      | 36                    |
      | PropertyFile.xlsx | ReadyProperty              | 10        | Ready Property                      | d_cersai_SecInt      | 37                    |

#FeatureID-ACAUTOCAS-5077,ACAUTOCAS-225,ACAUTOCAS-226,ACAUTOCAS-227,ACAUTOCAS-228,ACAUTOCAS-229
  Scenario Outline: ACAUTOCAS-8972:  CERSAI page security interest details data should not be deleted at Application Renewal Recommendation stage
    And user identifies an application from workbook "<SourceDataFile>" under sheet "<SheetName>" and row number <RowNumber>
    And user has already added "<CollateralSubType>"
    And user has already updated CERSAI details
    And user has entered data in section "Security Interest Details" from workbook "<SecIntFile>" under sheet "<SecIntSheet>" and row number "<SecIntRowNumber>" as:
      | SecIntFile        | SecIntSheet     | SecIntRowNumber |
      | PropertyFile.xlsx | d_cersai_SecInt | 39              |
    When user views the application at "Application Renewal Recommendation"
    And user navigates to the "collateral" page
    And user views the collateral "<CollateralSubType>"
    And user navigates to the "CERSAI" page
    And user attempts to delete "Security Interest Data"
    Then user should not be able to delete "Security Interest Data"
    Examples:
      | SourceDataFile    | SheetName                  | RowNumber | CollateralSubType                   |
      | PropertyFile.xlsx | BuilderPropertyUnderConstr | 10        | Builder Property Under Construction |
      | PropertyFile.xlsx | ConstructionOnLand         | 10        | Construction On Land                |
      | PropertyFile.xlsx | PlotPlusSelfConstruction   | 10        | Plot Plus Self Construction         |
      | PropertyFile.xlsx | ReadyProperty              | 10        | Ready Property                      |

#FeatureID-ACAUTOCAS-5077,ACAUTOCAS-225,ACAUTOCAS-226,ACAUTOCAS-227,ACAUTOCAS-228,ACAUTOCAS-229
  Scenario Outline: ACAUTOCAS-8973:  CERSAI page security interest details data should not be modified at Application Renewal Recommendation stage
    And user identifies an application from workbook "<SourceDataFile>" under sheet "<SheetName>" and row number <RowNumber>
    And user has already added "<CollateralSubType>"
    And user has already updated CERSAI details
    And user has entered data in section "Security Interest Details" from workbook "<SecIntFile>" under sheet "<SecIntSheet>" and row number "<SecIntRowNumber>" as:
      | SecIntFile        | SecIntSheet     | SecIntRowNumber |
      | PropertyFile.xlsx | d_cersai_SecInt | 39              |
    When user views the application at "Application Renewal Recommendation"
    And user navigates to the "collateral" page
    And user views the collateral "<CollateralSubType>"
    And user navigates to the "CERSAI" page
    And user attempts to modify "Security Interest Data"
    Then user should not be able to modify "Security Interest Data"
    Examples:
      | SourceDataFile    | SheetName                  | RowNumber | CollateralSubType                   |
      | PropertyFile.xlsx | BuilderPropertyUnderConstr | 10        | Builder Property Under Construction |
      | PropertyFile.xlsx | ConstructionOnLand         | 10        | Construction On Land                |
      | PropertyFile.xlsx | PlotPlusSelfConstruction   | 10        | Plot Plus Self Construction         |
      | PropertyFile.xlsx | ReadyProperty              | 10        | Ready Property                      |
