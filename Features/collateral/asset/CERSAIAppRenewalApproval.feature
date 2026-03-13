@Epic-Secondary_Collateral
@AuthoredBy-rsurya.kumar
@ReviewedBy-
@ImplementedBy-
@TechReviewedBy-
@new
  @NotImplemeneted
@ReviewedByGWT
@CERSAIDataView @TypeAsset
Feature: CERSAI data addition for Asset type collateral at Application Renewal Approval

#COLLATERAL_SUB_TYPE.HIDE_CERSAI_TAB = 0 for COLLATERAL_TYPE_FK = Asset

  Background:
    Given User Opens Browser With FinnOneCAS URL
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user opens the Applications page

#FeatureID-ACAUTOCAS-5077,ACAUTOCAS-234,ACAUTOCAS-232,ACAUTOCAS-233,ACAUTOCAS-231,ACAUTOCAS-230,ACAUTOCAS-8108
  Scenario Outline: ACAUTOCAS-8709:  CERSAI page data validation for "<CollateralSubType>" at "<CERSAIRowNumber>" for "<ValidationField>" at Application Renewal Approval stage
    And user identifies an application from workbook "<SourceDataFile>" under sheet "<SheetName>" and row number <RowNumber>
    And user has already added "<CollateralSubType>"
    When user views the application at "Application Renewal Approval"
    And user navigates to the "collateral" page
    And user attempts to modify "<CollateralSubType>"
    Then user should not be able to modify "<CollateralSubType>"
    Examples:
      | SourceDataFile | SheetName              | RowNumber | CollateralSubType          |
      | AssetFile.xlsx | CommercialEquipment    | 13        | Commercial Equipment       |
      | AssetFile.xlsx | CommercialVehicle      | 13        | Commercial Vehicle         |
      | AssetFile.xlsx | ConsumerDurable        | 13        | Consumer Durable           |
      | AssetFile.xlsx | ConsumerVehicle        | 13        | Consumer Vehicle           |
      | AssetFile.xlsx | Tractor                | 13        | Tractor                    |
      | AssetFile.xlsx | ImplementsNAttachments | 13        | Implements and Attachments |

#FeatureID-ACAUTOCAS-5077,ACAUTOCAS-234,ACAUTOCAS-232,ACAUTOCAS-233,ACAUTOCAS-231,ACAUTOCAS-230,ACAUTOCAS-8108
  Scenario Outline: ACAUTOCAS-8710:  CERSAI page modification validation for "<CollateralSubType>" at "<CERSAIRowNumber>" for "<ValidationField>" at Application Renewal Approval stage
    And user identifies an application from workbook "<SourceDataFile>" under sheet "<SheetName>" and row number <RowNumber>
    And user has already added "<CollateralSubType>"
    When user views the application at "Application Renewal Approval"
    And user navigates to the "collateral" page
    And user views the collateral "<CollateralSubType>"
    And user navigates to the "CERSAI" page
    And user attempts to modify "CERSAI" data
    Then user should not be able to modify "CERSAI" data
    Examples:
      | SourceDataFile | SheetName              | RowNumber | CollateralSubType          |
      | AssetFile.xlsx | CommercialEquipment    | 13        | Commercial Equipment       |
      | AssetFile.xlsx | CommercialVehicle      | 13        | Commercial Vehicle         |
      | AssetFile.xlsx | ConsumerDurable        | 13        | Consumer Durable           |
      | AssetFile.xlsx | ConsumerVehicle        | 13        | Consumer Vehicle           |
      | AssetFile.xlsx | Tractor                | 13        | Tractor                    |
      | AssetFile.xlsx | ImplementsNAttachments | 13        | Implements and Attachments |

#FeatureID-ACAUTOCAS-5077,ACAUTOCAS-234,ACAUTOCAS-232,ACAUTOCAS-233,ACAUTOCAS-231,ACAUTOCAS-230,ACAUTOCAS-8108
  Scenario Outline: ACAUTOCAS-8711:  CERSAI page data reconciliation for "<CollateralSubType>" at "<CERSAIRowNumber>" for "<ValidationField>" at Application Renewal Approval stage
    And user identifies an application from workbook "<SourceDataFile>" under sheet "<SheetName>" and row number <RowNumber>
    And user has already added "<CollateralSubType>"
    And user has already updated CERSAI details from workbook "<SourceDataFile>" under sheet "<CERSAIDataFile>" and row number <CERSAIRowNumber>
    When user views the application at "Application Renewal Approval"
    And user navigates to the "collateral" page
    And user views the collateral "<CollateralSubType>"
    And user navigates to the "CERSAI" page
    And user validates the data on screen with data from workbook "<SourceDataFile>" under sheet "<CERSAIDataFile>" and row number <CERSAIRowNumber>
    Then user should be able to validate the data successfully
    Examples:
      | SourceDataFile | SheetName              | RowNumber | CollateralSubType          | CERSAIDataFile | CERSAIRowNumber |
      | AssetFile.xlsx | CommercialEquipment    | 13        | Commercial Equipment       | d_cersai       | 61              |
      | AssetFile.xlsx | CommercialVehicle      | 13        | Commercial Vehicle         | d_cersai       | 61              |
      | AssetFile.xlsx | ConsumerDurable        | 13        | Consumer Durable           | d_cersai       | 61              |
      | AssetFile.xlsx | ConsumerVehicle        | 13        | Consumer Vehicle           | d_cersai       | 61              |
      | AssetFile.xlsx | Tractor                | 13        | Tractor                    | d_cersai       | 61              |
      | AssetFile.xlsx | ImplementsNAttachments | 13        | Implements and Attachments | d_cersai       | 61              |
      | AssetFile.xlsx | CommercialEquipment    | 13        | Commercial Equipment       | d_cersai       | 62              |
      | AssetFile.xlsx | CommercialVehicle      | 13        | Commercial Vehicle         | d_cersai       | 62              |
      | AssetFile.xlsx | ConsumerDurable        | 13        | Consumer Durable           | d_cersai       | 62              |
      | AssetFile.xlsx | ConsumerVehicle        | 13        | Consumer Vehicle           | d_cersai       | 62              |
      | AssetFile.xlsx | Tractor                | 13        | Tractor                    | d_cersai       | 62              |
      | AssetFile.xlsx | ImplementsNAttachments | 13        | Implements and Attachments | d_cersai       | 62              |
      | AssetFile.xlsx | CommercialEquipment    | 13        | Commercial Equipment       | d_cersai       | 63              |
      | AssetFile.xlsx | CommercialVehicle      | 13        | Commercial Vehicle         | d_cersai       | 63              |
      | AssetFile.xlsx | ConsumerDurable        | 13        | Consumer Durable           | d_cersai       | 63              |
      | AssetFile.xlsx | ConsumerVehicle        | 13        | Consumer Vehicle           | d_cersai       | 63              |
      | AssetFile.xlsx | Tractor                | 13        | Tractor                    | d_cersai       | 63              |
      | AssetFile.xlsx | ImplementsNAttachments | 13        | Implements and Attachments | d_cersai       | 63              |
      | AssetFile.xlsx | CommercialEquipment    | 13        | Commercial Equipment       | d_cersai       | 65              |
      | AssetFile.xlsx | CommercialVehicle      | 13        | Commercial Vehicle         | d_cersai       | 65              |
      | AssetFile.xlsx | ConsumerDurable        | 13        | Consumer Durable           | d_cersai       | 65              |
      | AssetFile.xlsx | ConsumerVehicle        | 13        | Consumer Vehicle           | d_cersai       | 65              |
      | AssetFile.xlsx | Tractor                | 13        | Tractor                    | d_cersai       | 65              |
      | AssetFile.xlsx | ImplementsNAttachments | 13        | Implements and Attachments | d_cersai       | 65              |
      | AssetFile.xlsx | CommercialEquipment    | 13        | Commercial Equipment       | d_cersai       | 67              |
      | AssetFile.xlsx | CommercialVehicle      | 13        | Commercial Vehicle         | d_cersai       | 67              |
      | AssetFile.xlsx | ConsumerDurable        | 13        | Consumer Durable           | d_cersai       | 67              |
      | AssetFile.xlsx | ConsumerVehicle        | 13        | Consumer Vehicle           | d_cersai       | 67              |
      | AssetFile.xlsx | Tractor                | 13        | Tractor                    | d_cersai       | 67              |
      | AssetFile.xlsx | ImplementsNAttachments | 13        | Implements and Attachments | d_cersai       | 67              |
      | AssetFile.xlsx | CommercialEquipment    | 13        | Commercial Equipment       | d_cersai       | 68              |
      | AssetFile.xlsx | CommercialVehicle      | 13        | Commercial Vehicle         | d_cersai       | 68              |
      | AssetFile.xlsx | ConsumerDurable        | 13        | Consumer Durable           | d_cersai       | 68              |
      | AssetFile.xlsx | ConsumerVehicle        | 13        | Consumer Vehicle           | d_cersai       | 68              |
      | AssetFile.xlsx | Tractor                | 13        | Tractor                    | d_cersai       | 68              |
      | AssetFile.xlsx | ImplementsNAttachments | 13        | Implements and Attachments | d_cersai       | 68              |
      | AssetFile.xlsx | CommercialEquipment    | 13        | Commercial Equipment       | d_cersai       | 69              |
      | AssetFile.xlsx | CommercialVehicle      | 13        | Commercial Vehicle         | d_cersai       | 69              |
      | AssetFile.xlsx | ConsumerDurable        | 13        | Consumer Durable           | d_cersai       | 69              |
      | AssetFile.xlsx | ConsumerVehicle        | 13        | Consumer Vehicle           | d_cersai       | 69              |
      | AssetFile.xlsx | Tractor                | 13        | Tractor                    | d_cersai       | 69              |
      | AssetFile.xlsx | ImplementsNAttachments | 13        | Implements and Attachments | d_cersai       | 69              |
      | AssetFile.xlsx | CommercialEquipment    | 13        | Commercial Equipment       | d_cersai       | 84              |
      | AssetFile.xlsx | CommercialVehicle      | 13        | Commercial Vehicle         | d_cersai       | 84              |
      | AssetFile.xlsx | ConsumerDurable        | 13        | Consumer Durable           | d_cersai       | 84              |
      | AssetFile.xlsx | ConsumerVehicle        | 13        | Consumer Vehicle           | d_cersai       | 84              |
      | AssetFile.xlsx | Tractor                | 13        | Tractor                    | d_cersai       | 84              |
      | AssetFile.xlsx | ImplementsNAttachments | 13        | Implements and Attachments | d_cersai       | 84              |

#FeatureID-ACAUTOCAS-5077,ACAUTOCAS-234,ACAUTOCAS-232,ACAUTOCAS-233,ACAUTOCAS-231,ACAUTOCAS-230,ACAUTOCAS-8108
  Scenario Outline: ACAUTOCAS-8712:  CERSAI page security interest details data validation for "<CollateralSubType>" at "<CERSAIRowNumber>" at Application Renewal Approval stage
    And user identifies an application from workbook "<SourceDataFile>" under sheet "<SheetName>" and row number <RowNumber>
    And user has already added "<CollateralSubType>"
    And user has updated CERSAI details
    And user has added data in section "Security Interest Details" from workbook "<SourceDataFile>" under sheet "<CERSAISecIntDataFile>" and row number <CERSAISecIntRowNumber>
    When user views the application at "Application Renewal Approval"
    And user navigates to the "collateral" page
    And user modifies the collateral "<CollateralSubType>"
    And user navigates to the "CERSAI" page
    And user validates data in section "Security Interest Details" with data from workbook "<SourceDataFile>" under sheet "<CERSAISecIntDataFile>" and row number <CERSAISecIntRowNumber>
    Then user should be able to validate the data successfully
    Examples:
      | SourceDataFile | SheetName              | RowNumber | CollateralSubType          | CERSAISecIntDataFile | CERSAISecIntRowNumber |
      | AssetFile.xlsx | CommercialEquipment    | 13        | Commercial Equipment       | d_cersai_SecInt      | 0                     |
      | AssetFile.xlsx | CommercialEquipment    | 13        | Commercial Equipment       | d_cersai_SecInt      | 4                     |
      | AssetFile.xlsx | CommercialEquipment    | 13        | Commercial Equipment       | d_cersai_SecInt      | 6                     |
      | AssetFile.xlsx | CommercialEquipment    | 13        | Commercial Equipment       | d_cersai_SecInt      | 7                     |
      | AssetFile.xlsx | CommercialEquipment    | 13        | Commercial Equipment       | d_cersai_SecInt      | 12                    |
      | AssetFile.xlsx | CommercialEquipment    | 13        | Commercial Equipment       | d_cersai_SecInt      | 17                    |
      | AssetFile.xlsx | CommercialEquipment    | 13        | Commercial Equipment       | d_cersai_SecInt      | 22                    |
      | AssetFile.xlsx | CommercialEquipment    | 13        | Commercial Equipment       | d_cersai_SecInt      | 27                    |
      | AssetFile.xlsx | CommercialEquipment    | 13        | Commercial Equipment       | d_cersai_SecInt      | 28                    |
      | AssetFile.xlsx | CommercialEquipment    | 13        | Commercial Equipment       | d_cersai_SecInt      | 30                    |
      | AssetFile.xlsx | CommercialEquipment    | 13        | Commercial Equipment       | d_cersai_SecInt      | 31                    |
      | AssetFile.xlsx | CommercialEquipment    | 13        | Commercial Equipment       | d_cersai_SecInt      | 32                    |
      | AssetFile.xlsx | CommercialEquipment    | 13        | Commercial Equipment       | d_cersai_SecInt      | 36                    |
      | AssetFile.xlsx | CommercialEquipment    | 13        | Commercial Equipment       | d_cersai_SecInt      | 37                    |
      | AssetFile.xlsx | CommercialVehicle      | 13        | Commercial Vehicle         | d_cersai_SecInt      | 0                     |
      | AssetFile.xlsx | CommercialVehicle      | 13        | Commercial Vehicle         | d_cersai_SecInt      | 4                     |
      | AssetFile.xlsx | CommercialVehicle      | 13        | Commercial Vehicle         | d_cersai_SecInt      | 6                     |
      | AssetFile.xlsx | CommercialVehicle      | 13        | Commercial Vehicle         | d_cersai_SecInt      | 7                     |
      | AssetFile.xlsx | CommercialVehicle      | 13        | Commercial Vehicle         | d_cersai_SecInt      | 12                    |
      | AssetFile.xlsx | CommercialVehicle      | 13        | Commercial Vehicle         | d_cersai_SecInt      | 17                    |
      | AssetFile.xlsx | CommercialVehicle      | 13        | Commercial Vehicle         | d_cersai_SecInt      | 22                    |
      | AssetFile.xlsx | CommercialVehicle      | 13        | Commercial Vehicle         | d_cersai_SecInt      | 27                    |
      | AssetFile.xlsx | CommercialVehicle      | 13        | Commercial Vehicle         | d_cersai_SecInt      | 28                    |
      | AssetFile.xlsx | CommercialVehicle      | 13        | Commercial Vehicle         | d_cersai_SecInt      | 30                    |
      | AssetFile.xlsx | CommercialVehicle      | 13        | Commercial Vehicle         | d_cersai_SecInt      | 31                    |
      | AssetFile.xlsx | CommercialVehicle      | 13        | Commercial Vehicle         | d_cersai_SecInt      | 32                    |
      | AssetFile.xlsx | CommercialVehicle      | 13        | Commercial Vehicle         | d_cersai_SecInt      | 36                    |
      | AssetFile.xlsx | CommercialVehicle      | 13        | Commercial Vehicle         | d_cersai_SecInt      | 37                    |
      | AssetFile.xlsx | ConsumerDurable        | 13        | Consumer Durable           | d_cersai_SecInt      | 0                     |
      | AssetFile.xlsx | ConsumerDurable        | 13        | Consumer Durable           | d_cersai_SecInt      | 4                     |
      | AssetFile.xlsx | ConsumerDurable        | 13        | Consumer Durable           | d_cersai_SecInt      | 6                     |
      | AssetFile.xlsx | ConsumerDurable        | 13        | Consumer Durable           | d_cersai_SecInt      | 7                     |
      | AssetFile.xlsx | ConsumerDurable        | 13        | Consumer Durable           | d_cersai_SecInt      | 12                    |
      | AssetFile.xlsx | ConsumerDurable        | 13        | Consumer Durable           | d_cersai_SecInt      | 17                    |
      | AssetFile.xlsx | ConsumerDurable        | 13        | Consumer Durable           | d_cersai_SecInt      | 22                    |
      | AssetFile.xlsx | ConsumerDurable        | 13        | Consumer Durable           | d_cersai_SecInt      | 27                    |
      | AssetFile.xlsx | ConsumerDurable        | 13        | Consumer Durable           | d_cersai_SecInt      | 28                    |
      | AssetFile.xlsx | ConsumerDurable        | 13        | Consumer Durable           | d_cersai_SecInt      | 30                    |
      | AssetFile.xlsx | ConsumerDurable        | 13        | Consumer Durable           | d_cersai_SecInt      | 31                    |
      | AssetFile.xlsx | ConsumerDurable        | 13        | Consumer Durable           | d_cersai_SecInt      | 32                    |
      | AssetFile.xlsx | ConsumerDurable        | 13        | Consumer Durable           | d_cersai_SecInt      | 36                    |
      | AssetFile.xlsx | ConsumerDurable        | 13        | Consumer Durable           | d_cersai_SecInt      | 37                    |
      | AssetFile.xlsx | ConsumerVehicle        | 13        | Consumer Vehicle           | d_cersai_SecInt      | 0                     |
      | AssetFile.xlsx | ConsumerVehicle        | 13        | Consumer Vehicle           | d_cersai_SecInt      | 4                     |
      | AssetFile.xlsx | ConsumerVehicle        | 13        | Consumer Vehicle           | d_cersai_SecInt      | 6                     |
      | AssetFile.xlsx | ConsumerVehicle        | 13        | Consumer Vehicle           | d_cersai_SecInt      | 7                     |
      | AssetFile.xlsx | ConsumerVehicle        | 13        | Consumer Vehicle           | d_cersai_SecInt      | 12                    |
      | AssetFile.xlsx | ConsumerVehicle        | 13        | Consumer Vehicle           | d_cersai_SecInt      | 17                    |
      | AssetFile.xlsx | ConsumerVehicle        | 13        | Consumer Vehicle           | d_cersai_SecInt      | 22                    |
      | AssetFile.xlsx | ConsumerVehicle        | 13        | Consumer Vehicle           | d_cersai_SecInt      | 27                    |
      | AssetFile.xlsx | ConsumerVehicle        | 13        | Consumer Vehicle           | d_cersai_SecInt      | 28                    |
      | AssetFile.xlsx | ConsumerVehicle        | 13        | Consumer Vehicle           | d_cersai_SecInt      | 30                    |
      | AssetFile.xlsx | ConsumerVehicle        | 13        | Consumer Vehicle           | d_cersai_SecInt      | 31                    |
      | AssetFile.xlsx | ConsumerVehicle        | 13        | Consumer Vehicle           | d_cersai_SecInt      | 32                    |
      | AssetFile.xlsx | ConsumerVehicle        | 13        | Consumer Vehicle           | d_cersai_SecInt      | 36                    |
      | AssetFile.xlsx | ConsumerVehicle        | 13        | Consumer Vehicle           | d_cersai_SecInt      | 37                    |
      | AssetFile.xlsx | Tractor                | 13        | Tractor                    | d_cersai_SecInt      | 0                     |
      | AssetFile.xlsx | Tractor                | 13        | Tractor                    | d_cersai_SecInt      | 4                     |
      | AssetFile.xlsx | Tractor                | 13        | Tractor                    | d_cersai_SecInt      | 6                     |
      | AssetFile.xlsx | Tractor                | 13        | Tractor                    | d_cersai_SecInt      | 7                     |
      | AssetFile.xlsx | Tractor                | 13        | Tractor                    | d_cersai_SecInt      | 12                    |
      | AssetFile.xlsx | Tractor                | 13        | Tractor                    | d_cersai_SecInt      | 17                    |
      | AssetFile.xlsx | Tractor                | 13        | Tractor                    | d_cersai_SecInt      | 22                    |
      | AssetFile.xlsx | Tractor                | 13        | Tractor                    | d_cersai_SecInt      | 27                    |
      | AssetFile.xlsx | Tractor                | 13        | Tractor                    | d_cersai_SecInt      | 28                    |
      | AssetFile.xlsx | Tractor                | 13        | Tractor                    | d_cersai_SecInt      | 30                    |
      | AssetFile.xlsx | Tractor                | 13        | Tractor                    | d_cersai_SecInt      | 31                    |
      | AssetFile.xlsx | Tractor                | 13        | Tractor                    | d_cersai_SecInt      | 32                    |
      | AssetFile.xlsx | Tractor                | 13        | Tractor                    | d_cersai_SecInt      | 36                    |
      | AssetFile.xlsx | Tractor                | 13        | Tractor                    | d_cersai_SecInt      | 37                    |
      | AssetFile.xlsx | ImplementsNAttachments | 13        | Implements and Attachments | d_cersai_SecInt      | 0                     |
      | AssetFile.xlsx | ImplementsNAttachments | 13        | Implements and Attachments | d_cersai_SecInt      | 4                     |
      | AssetFile.xlsx | ImplementsNAttachments | 13        | Implements and Attachments | d_cersai_SecInt      | 6                     |
      | AssetFile.xlsx | ImplementsNAttachments | 13        | Implements and Attachments | d_cersai_SecInt      | 7                     |
      | AssetFile.xlsx | ImplementsNAttachments | 13        | Implements and Attachments | d_cersai_SecInt      | 12                    |
      | AssetFile.xlsx | ImplementsNAttachments | 13        | Implements and Attachments | d_cersai_SecInt      | 17                    |
      | AssetFile.xlsx | ImplementsNAttachments | 13        | Implements and Attachments | d_cersai_SecInt      | 22                    |
      | AssetFile.xlsx | ImplementsNAttachments | 13        | Implements and Attachments | d_cersai_SecInt      | 27                    |
      | AssetFile.xlsx | ImplementsNAttachments | 13        | Implements and Attachments | d_cersai_SecInt      | 28                    |
      | AssetFile.xlsx | ImplementsNAttachments | 13        | Implements and Attachments | d_cersai_SecInt      | 30                    |
      | AssetFile.xlsx | ImplementsNAttachments | 13        | Implements and Attachments | d_cersai_SecInt      | 31                    |
      | AssetFile.xlsx | ImplementsNAttachments | 13        | Implements and Attachments | d_cersai_SecInt      | 32                    |
      | AssetFile.xlsx | ImplementsNAttachments | 13        | Implements and Attachments | d_cersai_SecInt      | 36                    |
      | AssetFile.xlsx | ImplementsNAttachments | 13        | Implements and Attachments | d_cersai_SecInt      | 37                    |

#FeatureID-ACAUTOCAS-5077,ACAUTOCAS-234,ACAUTOCAS-232,ACAUTOCAS-233,ACAUTOCAS-231,ACAUTOCAS-230,ACAUTOCAS-8108
  Scenario Outline: ACAUTOCAS-8713:  CERSAI page security interest details data should not be deleted at Application Renewal Approval stage
    And user identifies an application from workbook "<SourceDataFile>" under sheet "<SheetName>" and row number <RowNumber>
    And user has already added "<CollateralSubType>"
    And user has already updated CERSAI details
    And user has entered data in section "Security Interest Details" from workbook "SecIntFile" under sheet "SecIntSheet" and row number "SecIntRowNumber" as:
      | SecIntFile     | SecIntSheet     | SecIntRowNumber |
      | AssetFile.xlsx | d_cersai_SecInt | 39              |
    When user views the application at "Application Renewal Approval"
    And user navigates to the "collateral" page
    And user views the collateral "<CollateralSubType>"
    And user navigates to the "CERSAI" page
    And user attempts to delete "Security Interest Data"
    Then user should not be able to delete "Security Interest Data"
    Examples:
      | SourceDataFile | SheetName              | RowNumber | CollateralSubType          |
      | AssetFile.xlsx | CommercialEquipment    | 13        | Commercial Equipment       |
      | AssetFile.xlsx | CommercialVehicle      | 13        | Commercial Vehicle         |
      | AssetFile.xlsx | ConsumerDurable        | 13        | Consumer Durable           |
      | AssetFile.xlsx | ConsumerVehicle        | 13        | Consumer Vehicle           |
      | AssetFile.xlsx | Tractor                | 13        | Tractor                    |
      | AssetFile.xlsx | ImplementsNAttachments | 13        | Implements and Attachments |

#FeatureID-ACAUTOCAS-5077,ACAUTOCAS-234,ACAUTOCAS-232,ACAUTOCAS-233,ACAUTOCAS-231,ACAUTOCAS-230,ACAUTOCAS-8108
  Scenario Outline: ACAUTOCAS-8714:  CERSAI page security interest details data should not be modified at Application Renewal Approval stage
    And user identifies an application from workbook "<SourceDataFile>" under sheet "<SheetName>" and row number <RowNumber>
    And user has already added "<CollateralSubType>"
    And user has already updated CERSAI details
    And user has entered data in section "Security Interest Details" from workbook "SecIntFile" under sheet "SecIntSheet" and row number "SecIntRowNumber" as:
      | SecIntFile     | SecIntSheet     | SecIntRowNumber |
      | AssetFile.xlsx | d_cersai_SecInt | 39              |
    When user views the application at "Application Renewal Approval"
    And user navigates to the "collateral" page
    And user views the collateral "<CollateralSubType>"
    And user navigates to the "CERSAI" page
    And user attempts to modify "Security Interest Data"
    Then user should not be able to modify "Security Interest Data"
    Examples:
      | SourceDataFile | SheetName              | RowNumber | CollateralSubType          |
      | AssetFile.xlsx | CommercialEquipment    | 13        | Commercial Equipment       |
      | AssetFile.xlsx | CommercialVehicle      | 13        | Commercial Vehicle         |
      | AssetFile.xlsx | ConsumerDurable        | 13        | Consumer Durable           |
      | AssetFile.xlsx | ConsumerVehicle        | 13        | Consumer Vehicle           |
      | AssetFile.xlsx | Tractor                | 13        | Tractor                    |
      | AssetFile.xlsx | ImplementsNAttachments | 13        | Implements and Attachments |
