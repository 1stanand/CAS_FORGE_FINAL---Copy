@Epic-Secondary_Collateral
@AuthoredBy-rsurya.kumar
@ReviewedBy-None
@Reconciled
@ReviewedByDEV
@Sanity
@ReviewedSecCollateral

#${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal Initiation"]}
#${CollateralSubType:["Commercial Equipment"]}

Feature: Commercial Equipment Modification

#  Pre-Requisites---
#  In this feature we will modify and delete an Asset Commercial Equipment to the loan application.

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0

  @ImplementedBy-harshprit.kumar
    @Release2
  Scenario Outline: ACAUTOCAS-2063: Deleting a <CollateralSubType> attached to the application
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_vehicleDetails>" and row <Collateral_vehicleDetails_rowNum>
    And user fills mandatory fields of vehicle details
    And user closes duplicate check result box after checking the duplicates
    And user fills Reason Section
    And user saves the Collateral Details
    When user deletes the saved collateral
    Then user should be able to successfully delete the collateral
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | ProductType   | applicantType | ApplicationStage   | category | key | CollateralSubType   |
      | collateral.xlsx | default            | 3                         | vehicle_details           | 1                                | <ProductType> | indiv         | <ApplicationStage> |          |     | <CollateralSubType> |


  @ImplementedBy-harshprit.kumar
    @Release2
  Scenario Outline: ACAUTOCAS-2895: <CollateralSubType> Data Modification of <FieldName> in Asset Details
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_vehicleDetails>" and row <Collateral_vehicleDetails_rowNum>
    And user fills mandatory fields of vehicle details
    And user closes duplicate check result box after checking the duplicates
    And user fills Reason Section
    And user saves the Collateral Details
    When user modifies the saved collateral
    Then user should be able to modify the data in field "<FieldName>"
    Examples:
      | FieldName                    | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | ProductType   | applicantType | ApplicationStage   | category | key | CollateralSubType   |
      | Collateral Ref No            | collateral.xlsx | default            | 3                         | vehicle_details           | 1                                | <ProductType> | indiv         | <ApplicationStage> |          |     | <CollateralSubType> |
      | Description                  | collateral.xlsx | default            | 3                         | vehicle_details           | 1                                | <ProductType> | indiv         | <ApplicationStage> |          |     | <CollateralSubType> |
      | OLV Grid Value               | collateral.xlsx | default            | 3                         | vehicle_details           | 1                                | <ProductType> | indiv         | <ApplicationStage> |          |     | <CollateralSubType> |
      | Insured Declared Value       | collateral.xlsx | default            | 3                         | vehicle_details           | 1                                | <ProductType> | indiv         | <ApplicationStage> |          |     | <CollateralSubType> |
      | Overall Evaluated Value Type | collateral.xlsx | default            | 3                         | vehicle_details           | 1                                | <ProductType> | indiv         | <ApplicationStage> |          |     | <CollateralSubType> |
      | Asset Usage                  | collateral.xlsx | default            | 3                         | vehicle_details           | 1                                | <ProductType> | indiv         | <ApplicationStage> |          |     | <CollateralSubType> |
      | Asset Location               | collateral.xlsx | default            | 3                         | vehicle_details           | 1                                | <ProductType> | indiv         | <ApplicationStage> |          |     | <CollateralSubType> |
      | Asset Cost                   | collateral.xlsx | default            | 3                         | vehicle_details           | 1                                | <ProductType> | indiv         | <ApplicationStage> |          |     | <CollateralSubType> |

    @LoggedBug
    Examples:
      | FieldName      | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | ProductType   | applicantType | ApplicationStage   | category | key | CollateralSubType   |
      | Asset Category | collateral.xlsx | default            | 3                         | vehicle_details           | 1                                | <ProductType> | indiv         | <ApplicationStage> |          |     | <CollateralSubType> |
      | Manufacturer   | collateral.xlsx | default            | 3                         | vehicle_details           | 1                                | <ProductType> | indiv         | <ApplicationStage> |          |     | <CollateralSubType> |
      | Asset Model    | collateral.xlsx | default            | 3                         | vehicle_details           | 1                                | <ProductType> | indiv         | <ApplicationStage> |          |     | <CollateralSubType> |
      | Asset Variant  | collateral.xlsx | default            | 3                         | vehicle_details           | 1                                | <ProductType> | indiv         | <ApplicationStage> |          |     | <CollateralSubType> |
      | Asset Level    | collateral.xlsx | default            | 3                         | vehicle_details           | 1                                | <ProductType> | indiv         | <ApplicationStage> |          |     | <CollateralSubType> |


  @ImplementedBy-harshprit.kumar
    @Release2
  Scenario Outline: ACAUTOCAS-2896: <CollateralSubType> Data Modification of <FieldName> in Equipment Details
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_vehicleDetails>" and row <Collateral_vehicleDetails_rowNum>
    And user fills mandatory fields of vehicle details
    And user closes duplicate check result box after checking the duplicates
    And user fills Reason Section
    And user saves the Collateral Details
    When user modifies the saved collateral
    And user sees the "<SectionName>"
    Then user should be able to modify the data in field "<FieldName>"
    Examples:
      | FieldName                     | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | SectionName       | ProductType   | applicantType | ApplicationStage   | category | key | CollateralSubType   |
      | FIP Number                    | collateral.xlsx | default            | 3                         | vehicle_details           | 1                                | Equipment Details | <ProductType> | indiv         | <ApplicationStage> |          |     | <CollateralSubType> |
      | Date of Delivery              | collateral.xlsx | default            | 3                         | vehicle_details           | 1                                | Equipment Details | <ProductType> | indiv         | <ApplicationStage> |          |     | <CollateralSubType> |
      | VIN Number                    | collateral.xlsx | default            | 3                         | vehicle_details           | 1                                | Equipment Details | <ProductType> | indiv         | <ApplicationStage> |          |     | <CollateralSubType> |
      | Registration Transport Office | collateral.xlsx | default            | 3                         | vehicle_details           | 1                                | Equipment Details | <ProductType> | indiv         | <ApplicationStage> |          |     | <CollateralSubType> |
      | Registration in Name of       | collateral.xlsx | default            | 3                         | vehicle_details           | 1                                | Equipment Details | <ProductType> | indiv         | <ApplicationStage> |          |     | <CollateralSubType> |
      | RC Received Date              | collateral.xlsx | default            | 3                         | vehicle_details           | 1                                | Equipment Details | <ProductType> | indiv         | <ApplicationStage> |          |     | <CollateralSubType> |
      | Vehicle Capacity              | collateral.xlsx | default            | 3                         | vehicle_details           | 1                                | Equipment Details | <ProductType> | indiv         | <ApplicationStage> |          |     | <CollateralSubType> |
      | Asset Life (Months)           | collateral.xlsx | default            | 3                         | vehicle_details           | 1                                | Equipment Details | <ProductType> | indiv         | <ApplicationStage> |          |     | <CollateralSubType> |
      | Initial Odometer Reading      | collateral.xlsx | default            | 3                         | vehicle_details           | 1                                | Equipment Details | <ProductType> | indiv         | <ApplicationStage> |          |     | <CollateralSubType> |
      | Color                         | collateral.xlsx | default            | 3                         | vehicle_details           | 1                                | Equipment Details | <ProductType> | indiv         | <ApplicationStage> |          |     | <CollateralSubType> |
      | State                         | collateral.xlsx | default            | 3                         | vehicle_details           | 1                                | Equipment Details | <ProductType> | indiv         | <ApplicationStage> |          |     | <CollateralSubType> |
      | Color Type                    | collateral.xlsx | default            | 3                         | vehicle_details           | 1                                | Equipment Details | <ProductType> | indiv         | <ApplicationStage> |          |     | <CollateralSubType> |

    @LoggedBug
    Examples:
      | FieldName                                 | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | SectionName       | ProductType   | applicantType | ApplicationStage   | category | key | CollateralSubType   |
      | Engine Number                             | collateral.xlsx | default            | 3                         | vehicle_details           | 1                                | Equipment Details | <ProductType> | indiv         | <ApplicationStage> |          |     | <CollateralSubType> |
      | Chassis Number                            | collateral.xlsx | default            | 3                         | vehicle_details           | 1                                | Equipment Details | <ProductType> | indiv         | <ApplicationStage> |          |     | <CollateralSubType> |
      | Registration Number for RC Authentication | collateral.xlsx | default            | 3                         | vehicle_details           | 1                                | Equipment Details | <ProductType> | indiv         | <ApplicationStage> |          |     | <CollateralSubType> |
      | Registration Date                         | collateral.xlsx | default            | 3                         | vehicle_details           | 1                                | Equipment Details | <ProductType> | indiv         | <ApplicationStage> |          |     | <CollateralSubType> |
      | Registration Expiry Date                  | collateral.xlsx | default            | 3                         | vehicle_details           | 1                                | Equipment Details | <ProductType> | indiv         | <ApplicationStage> |          |     | <CollateralSubType> |
      | Year of Manufacture                       | collateral.xlsx | default            | 3                         | vehicle_details           | 1                                | Equipment Details | <ProductType> | indiv         | <ApplicationStage> |          |     | <CollateralSubType> |


  @ImplementedBy-harshprit.kumar
    @Release2
  Scenario Outline: ACAUTOCAS-2897: <CollateralSubType> restrictions in Data Modification of <FieldName>
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_vehicleDetails>" and row <Collateral_vehicleDetails_rowNum>
    And user fills mandatory fields of vehicle details
    And user closes duplicate check result box after checking the duplicates
    And user fills Reason Section
    And user saves the Collateral Details
    When user modifies the saved collateral
    Then user should not be able to modify the data in "<FieldName>" field
    Examples:
      | FieldName                | CollateralWB    | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | ProductType   | applicantType | ApplicationStage   | category | key | CollateralSubType   |
      | Collateral ID            | collateral.xlsx | collateral.xlsx | default            | 3                         | vehicle_details           | 1                                | <ProductType> | indiv         | <ApplicationStage> |          |     | <CollateralSubType> |
      | Global Collateral Number | collateral.xlsx | collateral.xlsx | default            | 3                         | vehicle_details           | 1                                | <ProductType> | indiv         | <ApplicationStage> |          |     | <CollateralSubType> |
      | Collateral Type          | collateral.xlsx | collateral.xlsx | default            | 3                         | vehicle_details           | 1                                | <ProductType> | indiv         | <ApplicationStage> |          |     | <CollateralSubType> |
      | Collateral SubType       | collateral.xlsx | collateral.xlsx | default            | 3                         | vehicle_details           | 1                                | <ProductType> | indiv         | <ApplicationStage> |          |     | <CollateralSubType> |

#FeatureID-ACAUTOCAS-234

  @ImplementedBy-priyanshu.kashyap
    @Release2
    @LoggedBug
  Scenario Outline: ACAUTOCAS-4290: <CollateralSubType> Data Modification in Asset Details
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user selects collateral type along with collateral sub type
    And user fills all fields of home page of collateral details for given collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_vehicleDetails>" and row <Collateral_vehicleDetails_rowNum>
    And user fills mandatory fields of vehicle details
    And user closes duplicate check result box after checking the duplicates
    And user fills Reason Section
    And user saves the Collateral Details
    When user modifies the saved collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum2>
    And user fills all fields of home page of collateral details for given collateral sub type
    And user saves the Collateral Details
    Then collateral should saved successfully
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_default_rowNum2 | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | ProductType   | applicantType | ApplicationStage   | category | key | CollateralSubType   |
      | collateral.xlsx | default            | 591                       | 592                        | vehicle_details           | 1                                | <ProductType> | indiv         | <ApplicationStage> |          |     | <CollateralSubType> |


#    FeatureID-ACAUTOCAS-234
  @ImplementedBy-aman.verma
    @Release2
    @LoggedBug
  Scenario Outline: ACAUTOCAS-4291:  <CollateralSubType> Data Modification in Equipment Details
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_vehicleDetails>" and row <Collateral_vehicleDetails_rowNum>
    And user fills all fields of vehicle details of collateral sub type
    And user closes duplicate check result box after checking the duplicates
    And user fills Reason Section
    And user saves the Collateral Details
    When user modifies the saved collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_vehicleDetails>" and row <Collateral_vehicleDetails_rowNum2>
    And user fills all fields of vehicle details of collateral sub type
    And user saves the Collateral Details
    Then collateral should saved successfully
    Examples:
      | CollateralWB    | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | Collateral_vehicleDetails_rowNum2 | ProductType   | applicantType | ApplicationStage   | category | key | CollateralSubType   |
      | collateral.xlsx | collateral.xlsx | default            | 3                         | vehicle_details           | 238                              | 239                               | <ProductType> | indiv         | <ApplicationStage> |          |     | <CollateralSubType> |

###Dedupe Check
#    #FeatureID-ACAUTOCAS-234,ACAUTOCAS-244
  @ImplementedBy-aman.verma
    @Release2
    @LoggedBug
  Scenario Outline: ACAUTOCAS-4292:  <CollateralSubType> Data Modification in Equipment Details for dedupe revalidation
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_vehicleDetails>" and row <Collateral_vehicleDetails_rowNum>
    And user fills mandatory fields of vehicle details
    And user enters registration number for rc authentication
    And user closes duplicate check result box after checking the duplicates
    And user saves the Collateral Details
    When user modifies the saved collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_vehicleDetails>" and row <Collateral_vehicleDetails_rowNum2>
    And user fills mandatory fields of vehicle details
    And user enters registration number for rc authentication
    And user saves the Collateral Details
    Then user gets a proper notification message
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | Collateral_vehicleDetails_rowNum2 | ProductType   | applicantType | ApplicationStage   | category | key | CollateralSubType   |
      | collateral.xlsx | default            | 3                         | vehicle_details           | 240                              | 241                               | <ProductType> | indiv         | <ApplicationStage> |          |     | <CollateralSubType> |
      | collateral.xlsx | default            | 3                         | vehicle_details           | 240                              | 242                               | <ProductType> | indiv         | <ApplicationStage> |          |     | <CollateralSubType> |
      | collateral.xlsx | default            | 3                         | vehicle_details           | 240                              | 243                               | <ProductType> | indiv         | <ApplicationStage> |          |     | <CollateralSubType> |
      | collateral.xlsx | default            | 3                         | vehicle_details           | 240                              | 244                               | <ProductType> | indiv         | <ApplicationStage> |          |     | <CollateralSubType> |
      | collateral.xlsx | default            | 3                         | vehicle_details           | 240                              | 245                               | <ProductType> | indiv         | <ApplicationStage> |          |     | <CollateralSubType> |
      | collateral.xlsx | default            | 3                         | vehicle_details           | 240                              | 246                               | <ProductType> | indiv         | <ApplicationStage> |          |     | <CollateralSubType> |
      | collateral.xlsx | default            | 3                         | vehicle_details           | 240                              | 247                               | <ProductType> | indiv         | <ApplicationStage> |          |     | <CollateralSubType> |
      | collateral.xlsx | default            | 3                         | vehicle_details           | 240                              | 248                               | <ProductType> | indiv         | <ApplicationStage> |          |     | <CollateralSubType> |
      | collateral.xlsx | default            | 3                         | vehicle_details           | 240                              | 249                               | <ProductType> | indiv         | <ApplicationStage> |          |     | <CollateralSubType> |
#
#    #FeatureID-ACAUTOCAS-234,ACAUTOCAS-244
#  This scenario needs some changes in CMS
  @NotImplemented
  Scenario Outline: ACAUTOCAS-4293:  Dedupe revalidation to identify duplicate collaterals of <CollateralSubType>
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_vehicleDetails>" and row <Collateral_vehicleDetails_rowNum>
    And user fills mandatory fields of vehicle details
    And user closes duplicate check result box after checking the duplicates
    And user saves the Collateral Details
    And user modifies the saved collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_vehicleDetails>" and row <Collateral_vehicleDetails_rowNum2>
    When user fills mandatory fields of vehicle details
    And enters registration number for commercial equipment
    And checks for duplicate collateral
    Then user should get message saying "<ErrorMessage>"
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | Collateral_vehicleDetails_rowNum2 | ErrorMessage       | ProductType   | applicantType | ApplicationStage   | category | key | CollateralSubType   |
      | collateral.xlsx | default            | 3                         | vehicle_details           | 136                              | 137                               | 1 duplicates found | <ProductType> | indiv         | <ApplicationStage> |          |     | <CollateralSubType> |
      | collateral.xlsx | default            | 3                         | vehicle_details           | 136                              | 138                               | 1 duplicates found | <ProductType> | indiv         | <ApplicationStage> |          |     | <CollateralSubType> |
      | collateral.xlsx | default            | 3                         | vehicle_details           | 136                              | 139                               | 1 duplicates found | <ProductType> | indiv         | <ApplicationStage> |          |     | <CollateralSubType> |
      | collateral.xlsx | default            | 3                         | vehicle_details           | 136                              | 140                               | 1 duplicates found | <ProductType> | indiv         | <ApplicationStage> |          |     | <CollateralSubType> |
      | collateral.xlsx | default            | 3                         | vehicle_details           | 136                              | 141                               | 1 duplicates found | <ProductType> | indiv         | <ApplicationStage> |          |     | <CollateralSubType> |
      | collateral.xlsx | default            | 3                         | vehicle_details           | 136                              | 142                               | 1 duplicates found | <ProductType> | indiv         | <ApplicationStage> |          |     | <CollateralSubType> |
      | collateral.xlsx | default            | 3                         | vehicle_details           | 136                              | 143                               | 1 duplicates found | <ProductType> | indiv         | <ApplicationStage> |          |     | <CollateralSubType> |
      | collateral.xlsx | default            | 3                         | vehicle_details           | 136                              | 144                               | 1 duplicates found | <ProductType> | indiv         | <ApplicationStage> |          |     | <CollateralSubType> |
      | collateral.xlsx | default            | 3                         | vehicle_details           | 136                              | 145                               | 1 duplicates found | <ProductType> | indiv         | <ApplicationStage> |          |     | <CollateralSubType> |
      | collateral.xlsx | default            | 3                         | vehicle_details           | 136                              | 146                               | 1 duplicates found | <ProductType> | indiv         | <ApplicationStage> |          |     | <CollateralSubType> |

#    #FeatureID-ACAUTOCAS-234,ACAUTOCAS-244
#  This scenario needs some changes in CMS
  @NotImplemented
  Scenario Outline: ACAUTOCAS-4294:  Dedupe revalidation to identify and view duplicate collaterals of <CollateralSubType>
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user fills mandatory fields of vehicle details
    And user closes duplicate check result box after checking the duplicates
    And user saves the Collateral Details
    When user modifies the saved collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_vehicleDetails>" and row <Collateral_vehicleDetails_rowNum>
    And user fills mandatory fields of vehicle details
    And enters registration number for commercial equipment
    And checks for duplicate collateral
    Then User should be able to view the duplicates on the collateral page
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | ProductType   | applicantType | ApplicationStage   | category | key | CollateralSubType   |
      | collateral.xlsx | default            | 3                         | vehicle_details           | 76                               | <ProductType> | indiv         | <ApplicationStage> |          |     | <CollateralSubType> |
      | collateral.xlsx | default            | 3                         | vehicle_details           | 76                               | <ProductType> | indiv         | <ApplicationStage> |          |     | <CollateralSubType> |
      | collateral.xlsx | default            | 3                         | vehicle_details           | 76                               | <ProductType> | indiv         | <ApplicationStage> |          |     | <CollateralSubType> |
      | collateral.xlsx | default            | 3                         | vehicle_details           | 76                               | <ProductType> | indiv         | <ApplicationStage> |          |     | <CollateralSubType> |
      | collateral.xlsx | default            | 3                         | vehicle_details           | 76                               | <ProductType> | indiv         | <ApplicationStage> |          |     | <CollateralSubType> |
      | collateral.xlsx | default            | 3                         | vehicle_details           | 76                               | <ProductType> | indiv         | <ApplicationStage> |          |     | <CollateralSubType> |
      | collateral.xlsx | default            | 3                         | vehicle_details           | 76                               | <ProductType> | indiv         | <ApplicationStage> |          |     | <CollateralSubType> |
      | collateral.xlsx | default            | 3                         | vehicle_details           | 76                               | <ProductType> | indiv         | <ApplicationStage> |          |     | <CollateralSubType> |
      | collateral.xlsx | default            | 3                         | vehicle_details           | 76                               | <ProductType> | indiv         | <ApplicationStage> |          |     | <CollateralSubType> |
      | collateral.xlsx | default            | 3                         | vehicle_details           | 76                               | <ProductType> | indiv         | <ApplicationStage> |          |     | <CollateralSubType> |

  @ImplementedBy-ankit.yadav
    @Release2
    @LoggedBug
  Scenario Outline: ACAUTOCAS-4295:  Dedupe revalidation to identify and attach duplicate collaterals to the same application of <CollateralSubType>
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user adds asset type collateral of "<CollateralSubType>" subtype
      | collateral.xlsx | asset_details | 69 |
      | collateral.xlsx | asset_details | 70 |
    When user modifies the saved collateral
    And user opens vehicle details section
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_vehicleDetails>" and row <Collateral_vehicleDetails_rowNum>
    And user fills mandatory fields of vehicle details
    And user enters registration number for rc authentication
    And checks for duplicate collateral
    And user views the duplicate collateral
    And user selects collateral already attached to the same application
    And user saves the duplicate collateral
    Then user gets a proper notification
    Examples:
      | CollateralWB    | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | ProductType   | applicantType | ApplicationStage   | category | key | CollateralSubType   |
      | collateral.xlsx | vehicle_details           | 250                              | <ProductType> | indiv         | <ApplicationStage> |          |     | <CollateralSubType> |

      #FeatureID-ACAUTOCAS-234,ACAUTOCAS-244
  @NotImplemented
  Scenario Outline: ACAUTOCAS-4296:  Dedupe revalidation to identify and attach duplicate collaterals to different application of <CollateralSubType>
    Given user has captured "Commercial Equipment" against an application
    And commercial equipment with values of "GlobalCollateralNo", "EngineNumber", "ChassisNumber", "RegistrationNumber" is already attached to application:
      | GlobalCollateralNo | EngineNumber | ChassisNumber | RegistrationNumber |
      | CMS00030033        | ENNABCD1233  | CHNABCD1233   | DL3CBB1233         |
    And commercial equipment with values of "GlobalCollateralNo", "EngineNumber", "ChassisNumber", "RegistrationNumber" is already available in CMS:
      | GlobalCollateralNo | EngineNumber | ChassisNumber | RegistrationNumber |
      | CMS00030034        | ENNABCD1234  | CHNABCD1234   | DL3CBB1234         |
    When user modifies "Commercial Equipment" "<Global Collateral No>" using "<CollateralWB>" under sheet "<CommercialEquipmentDetails>" row <CommercialEquipment_rowNum>
    And user modifies data of "<Engine Number>", "<Chassis Number>", "<Registration Number>"
    And checks for duplicate collateral
    And user gets a message saying "<ErrorMessage>"
    And user views the duplicate "Commercial Equipment"
    And user selects collateral not attached to the same application
    And saves the data
    Then user is able to save data successfully with "<Orig Global Collateral No>"
    Examples:
      | CollateralWB                  | CommercialEquipmentDetails | CommercialEquipment_rowNum | Global Collateral No | Engine Number | Chassis Number | Registration Number | Orig Global Collateral No | ErrorMessage       | CollateralSubType   |
      | AssetCommercialEquipment.xlsx | AssetCommercialEquipment   | 0                          | CMS00030033          | ENNABCD1234   | CHNABCD1234    | DL3CBB1234          | CMS00030034               | 1 duplicates found | <CollateralSubType> |

#  This scenario needs some changes in CMS
  @NotImplemented
  Scenario Outline: ACAUTOCAS-4297:  Dedupe revalidation to identify and ignore duplicate collaterals of <CollateralSubType>
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_vehicleDetails>" and row <Collateral_vehicleDetails_rowNum>
    And user fills mandatory fields of vehicle details
    And user closes duplicate check result box after checking the duplicates
    And user saves the Collateral Details
    When user modifies the saved collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<CommercialEquipmentDetailsDetails>" and row <CommercialEquipment_rowNum>
    And user fills mandatory fields of vehicle details
    And checks for duplicate collateral
    And user ignores the duplicate collaterals found
    Then user is asked to enter the reason of ignoring
    Examples:
      | CollateralWB    | CollateralWB    | Collateral_default | Collateral_default_rowNum | CommercialEquipmentDetailsDetails | CommercialEquipment_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | ProductType   | applicantType | ApplicationStage   | category | key | CollateralSubType   |
      | collateral.xlsx | collateral.xlsx | default            | 3                         | vehicle_details                   | 76                         | vehicle_details           | 0                                | <ProductType> | indiv         | <ApplicationStage> |          |     | <CollateralSubType> |

    #FeatureID-ACAUTOCAS-5077,ACAUTOCAS-234,ACAUTOCAS-232,ACAUTOCAS-233,ACAUTOCAS-231,ACAUTOCAS-230,ACAUTOCAS-8108
  @NotImplemented
  Scenario Outline: ACAUTOCAS-11564:  Collateral page modification validation for "<CollateralSubType>" at "<CERSAIRowNumber>" for "<ValidationField>" at Disbursal Author stage
    And user identifies an application from workbook "<SourceDataFile>" under sheet "<SheetName>" and row number <RowNumber>
    And user has already added "<CollateralSubType>"
    When user views the application at "Disbursal Author"
    And user navigates to the "collateral" page
    And user attempts to modify "<CollateralSubType>"
    Then user should not be able to modify "<CollateralSubType>"
    Examples:
      | SourceDataFile | SheetName           | RowNumber | CollateralSubType    |
      | AssetFile.xlsx | CommercialEquipment | 9         | Commercial Equipment |
