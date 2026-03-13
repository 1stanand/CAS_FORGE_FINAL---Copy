@Epic-Secondary_Collateral
@AuthoredBy-rsurya.kumar
@ReviewedBy-None
@ReviewedByDEV
@Sanity
@ReviewedSecCollateral
@Release @Part-2

#${CollateralSubType:["Commercial Vehicle"]}
#${ApplicantType:["indiv","nonindiv"]}
Feature: Commercial Vehicle Modification

#  Pre-Requisites---
#  In this feature we will modify and delete an Asset Commercial Vehicle to the loan application.

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0

  Scenario Outline: ACAUTOCAS-2092: Deleting a <CollateralSubType> attached to the application
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
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
    			#${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
	#${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal Initiation"]}
    @Conventional
    @ImplementedBy-harshprit.kumar
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | ProductType   | applicantType   | ApplicationStage   | Category | Key | CollateralSubType   |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | <ProductType> | <applicantType> | <ApplicationStage> |          |     | <CollateralSubType> |


     # ${ProductType:["IPF"]}
   # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
   # ${Category:["shares","bonds","metals"]}
    @Islamic
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | ProductType   | applicantType   | ApplicationStage   | Category   | Key | CollateralSubType   |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | <ProductType> | <applicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |


  # ${ProductType:["IAF","IHF"]}
   # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | ProductType   | applicantType   | ApplicationStage   | Category | Key | CollateralSubType   |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | <ProductType> | <applicantType> | <ApplicationStage> |          |     | <CollateralSubType> |


  Scenario Outline: ACAUTOCAS-2922: <CollateralSubType> Data Modification of <FieldName> in Asset Details
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
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
#    			${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#	${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal Initiation"]}
    @Conventional
    @ImplementedBy-harshprit.kumar
    Examples:
      | FieldName                    | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | ProductType   | applicantType   | ApplicationStage   | Category   | Key | CollateralSubType   |
      | Collateral Ref No            | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | <ProductType> | <applicantType> | <ApplicationStage> |  |     | <CollateralSubType> |
      | Description                  | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | <ProductType> | <applicantType> | <ApplicationStage> |  |     | <CollateralSubType> |
      | OLV Grid Value               | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | <ProductType> | <applicantType> | <ApplicationStage> |  |     | <CollateralSubType> |
      | Insured Declared Value       | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | <ProductType> | <applicantType> | <ApplicationStage> |  |     | <CollateralSubType> |
      | Overall Evaluated Value Type | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | <ProductType> | <applicantType> | <ApplicationStage> |  |     | <CollateralSubType> |
      | Asset Usage                  | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | <ProductType> | <applicantType> | <ApplicationStage> |  |     | <CollateralSubType> |
      | Asset Location               | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | <ProductType> | <applicantType> | <ApplicationStage> |  |     | <CollateralSubType> |
      | Asset Cost                   | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | <ProductType> | <applicantType> | <ApplicationStage> |  |     | <CollateralSubType> |
      | Asset Category               | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | <ProductType> | <applicantType> | <ApplicationStage> |  |     | <CollateralSubType> |
      | Manufacturer                 | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | <ProductType> | <applicantType> | <ApplicationStage> |  |     | <CollateralSubType> |
      | Asset Model                  | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | <ProductType> | <applicantType> | <ApplicationStage> |  |     | <CollateralSubType> |
      | Asset Variant                | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | <ProductType> | <applicantType> | <ApplicationStage> |  |     | <CollateralSubType> |
      | Asset Level                  | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | <ProductType> | <applicantType> | <ApplicationStage> |  |     | <CollateralSubType> |



#      ${ProductType:["IPF"]}
#    ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
#    ${Category:["shares","bonds","metals"]}
    @Islamic
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | FieldName                    | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | ProductType   | applicantType   | ApplicationStage   | Category   | Key | CollateralSubType   |
      | Collateral Ref No            | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | <ProductType> | <applicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Description                  | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | <ProductType> | <applicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | OLV Grid Value               | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | <ProductType> | <applicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Insured Declared Value       | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | <ProductType> | <applicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Overall Evaluated Value Type | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | <ProductType> | <applicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Asset Usage                  | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | <ProductType> | <applicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Asset Location               | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | <ProductType> | <applicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Asset Cost                   | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | <ProductType> | <applicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Asset Category               | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | <ProductType> | <applicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Manufacturer                 | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | <ProductType> | <applicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Asset Model                  | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | <ProductType> | <applicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Asset Variant                | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | <ProductType> | <applicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Asset Level                  | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | <ProductType> | <applicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |


#   ${ProductType:["IAF","IHF"]}
#    ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | FieldName                    | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | ProductType   | applicantType   | ApplicationStage   | Category   | Key | CollateralSubType   |
      | Collateral Ref No            | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | <ProductType> | <applicantType> | <ApplicationStage> |  |     | <CollateralSubType> |
      | Description                  | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | <ProductType> | <applicantType> | <ApplicationStage> |  |     | <CollateralSubType> |
      | OLV Grid Value               | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | <ProductType> | <applicantType> | <ApplicationStage> |  |     | <CollateralSubType> |
      | Insured Declared Value       | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | <ProductType> | <applicantType> | <ApplicationStage> |  |     | <CollateralSubType> |
      | Overall Evaluated Value Type | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | <ProductType> | <applicantType> | <ApplicationStage> |  |     | <CollateralSubType> |
      | Asset Usage                  | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | <ProductType> | <applicantType> | <ApplicationStage> |  |     | <CollateralSubType> |
      | Asset Location               | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | <ProductType> | <applicantType> | <ApplicationStage> |  |     | <CollateralSubType> |
      | Asset Cost                   | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | <ProductType> | <applicantType> | <ApplicationStage> |  |     | <CollateralSubType> |
      | Asset Category               | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | <ProductType> | <applicantType> | <ApplicationStage> |  |     | <CollateralSubType> |
      | Manufacturer                 | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | <ProductType> | <applicantType> | <ApplicationStage> |  |     | <CollateralSubType> |
      | Asset Model                  | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | <ProductType> | <applicantType> | <ApplicationStage> |  |     | <CollateralSubType> |
      | Asset Variant                | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | <ProductType> | <applicantType> | <ApplicationStage> |  |     | <CollateralSubType> |
      | Asset Level                  | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | <ProductType> | <applicantType> | <ApplicationStage> |  |     | <CollateralSubType> |


  Scenario Outline: ACAUTOCAS-2923: <CollateralSubType> Data Modification of <FieldName> in Vehicle Details
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
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
#  ${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#  ${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal Initiation"]}
    @Conventional
    @ImplementedBy-harshprit.kumar
    Examples:
      | FieldName                     | SectionName     | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | ProductType   | applicantType   | ApplicationStage   | Category | Key | CollateralSubType   |
      | FIP Number                    | Vehicle Details | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | <ProductType> | <applicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Date of Delivery              | Vehicle Details | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | <ProductType> | <applicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | VIN Number                    | Vehicle Details | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | <ProductType> | <applicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Registration Date             | Vehicle Details | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | <ProductType> | <applicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Registration Number           | Vehicle Details | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | <ProductType> | <applicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Registration Transport Office | Vehicle Details | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | <ProductType> | <applicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Registration in Name of       | Vehicle Details | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | <ProductType> | <applicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | RC Received Date              | Vehicle Details | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | <ProductType> | <applicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Vehicle Capacity              | Vehicle Details | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | <ProductType> | <applicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Asset Life (Months)           | Vehicle Details | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | <ProductType> | <applicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Initial Odometer Reading      | Vehicle Details | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | <ProductType> | <applicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Color                         | Vehicle Details | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | <ProductType> | <applicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | State                         | Vehicle Details | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | <ProductType> | <applicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Color Type                    | Vehicle Details | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | <ProductType> | <applicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Engine Number                 | Vehicle Details | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | <ProductType> | <applicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Chassis Number                | Vehicle Details | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | <ProductType> | <applicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Registration Expiry Date      | Vehicle Details | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | <ProductType> | <applicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Year of Manufacture           | Vehicle Details | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | <ProductType> | <applicantType> | <ApplicationStage> |          |     | <CollateralSubType> |

#      ${ProductType:["IPF"]}
#    ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
#    ${Category:["shares","bonds","metals"]}
    @Islamic
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | FieldName                     | SectionName     | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | ProductType   | applicantType   | ApplicationStage   | Category   | Key | CollateralSubType   |
      | FIP Number                    | Vehicle Details | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | <ProductType> | <applicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Date of Delivery              | Vehicle Details | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | <ProductType> | <applicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | VIN Number                    | Vehicle Details | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | <ProductType> | <applicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Registration Date             | Vehicle Details | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | <ProductType> | <applicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Registration Number           | Vehicle Details | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | <ProductType> | <applicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Registration Transport Office | Vehicle Details | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | <ProductType> | <applicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Registration in Name of       | Vehicle Details | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | <ProductType> | <applicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | RC Received Date              | Vehicle Details | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | <ProductType> | <applicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Vehicle Capacity              | Vehicle Details | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | <ProductType> | <applicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Asset Life (Months)           | Vehicle Details | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | <ProductType> | <applicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Initial Odometer Reading      | Vehicle Details | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | <ProductType> | <applicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Color                         | Vehicle Details | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | <ProductType> | <applicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | State                         | Vehicle Details | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | <ProductType> | <applicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Color Type                    | Vehicle Details | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | <ProductType> | <applicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Engine Number                 | Vehicle Details | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | <ProductType> | <applicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Chassis Number                | Vehicle Details | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | <ProductType> | <applicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Registration Expiry Date      | Vehicle Details | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | <ProductType> | <applicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Year of Manufacture           | Vehicle Details | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | <ProductType> | <applicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |

#   ${ProductType:["IAF","IHF"]}
#    ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | FieldName                     | SectionName     | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | ProductType   | applicantType   | ApplicationStage   | Category | Key | CollateralSubType   |
      | FIP Number                    | Vehicle Details | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | <ProductType> | <applicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Date of Delivery              | Vehicle Details | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | <ProductType> | <applicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | VIN Number                    | Vehicle Details | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | <ProductType> | <applicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Registration Date             | Vehicle Details | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | <ProductType> | <applicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Registration Number           | Vehicle Details | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | <ProductType> | <applicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Registration Transport Office | Vehicle Details | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | <ProductType> | <applicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Registration in Name of       | Vehicle Details | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | <ProductType> | <applicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | RC Received Date              | Vehicle Details | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | <ProductType> | <applicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Vehicle Capacity              | Vehicle Details | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | <ProductType> | <applicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Asset Life (Months)           | Vehicle Details | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | <ProductType> | <applicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Initial Odometer Reading      | Vehicle Details | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | <ProductType> | <applicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Color                         | Vehicle Details | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | <ProductType> | <applicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | State                         | Vehicle Details | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | <ProductType> | <applicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Color Type                    | Vehicle Details | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | <ProductType> | <applicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Engine Number                 | Vehicle Details | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | <ProductType> | <applicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Chassis Number                | Vehicle Details | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | <ProductType> | <applicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Registration Expiry Date      | Vehicle Details | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | <ProductType> | <applicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Year of Manufacture           | Vehicle Details | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | <ProductType> | <applicantType> | <ApplicationStage> |          |     | <CollateralSubType> |

  Scenario Outline: ACAUTOCAS-2924: <CollateralSubType> restrictions in Data Modification of <FieldName>
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
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
#    			${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#	${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal Initiation"]}
    @Conventional
    @ImplementedBy-harshprit.kumar
    Examples:
      | FieldName                | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | ProductType   | applicantType   | ApplicationStage   | Category | Key | CollateralSubType   |
      | Collateral ID            | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | <ProductType> | <applicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Global Collateral Number | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | <ProductType> | <applicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Collateral Type          | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | <ProductType> | <applicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Collateral SubType       | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | <ProductType> | <applicantType> | <ApplicationStage> |          |     | <CollateralSubType> |

         # ${ProductType:["IPF"]}
   # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
   # ${Category:["shares","bonds","metals"]}
    @Islamic
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | FieldName                | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | ProductType   | applicantType   | ApplicationStage   | Category   | Key | CollateralSubType   |
      | Collateral ID            | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | <ProductType> | <applicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Global Collateral Number | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | <ProductType> | <applicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Collateral Type          | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | <ProductType> | <applicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Collateral SubType       | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | <ProductType> | <applicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |


#   ${ProductType:["IAF","IHF"]}
#    ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | FieldName                | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | ProductType   | applicantType   | ApplicationStage   | Category | Key | CollateralSubType   |
      | Collateral ID            | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | <ProductType> | <applicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Global Collateral Number | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | <ProductType> | <applicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Collateral Type          | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | <ProductType> | <applicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Collateral SubType       | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | <ProductType> | <applicantType> | <ApplicationStage> |          |     | <CollateralSubType> |

#FeatureID-ACAUTOCAS-231
  Scenario Outline: ACAUTOCAS-4300:  <CollateralSubType> Data Modification in Asset Details
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user selects collateral type along with collateral sub type
    And user fills all fields of home page of collateral details for given collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<CommercialVehicleDetails>" and row <CommercialVehicle_rowNum1>
    And user fills mandatory fields of vehicle details
    And user closes duplicate check result box after checking the duplicates
    And user fills Reason Section
    And user saves the Collateral Details
    When user modifies the saved collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum2>
    And user fills all fields of home page of collateral details for given collateral sub type
    And user saves the Collateral Details
    Then collateral should saved successfully
    			#${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
	#${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal Initiation"]}
    @Conventional
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_default_rowNum2 | CommercialVehicleDetails | CommercialVehicle_rowNum1 | ProductType   | applicantType   | ApplicationStage   | Category | Key | CollateralSubType   |
      | collateral.xlsx | default            | 593                       | 594                        | vehicle_details          | 66                        | <ProductType> | <applicantType> | <ApplicationStage> |          |     | <CollateralSubType> |

         # ${ProductType:["IPF"]}
   # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
   # ${Category:["shares","bonds","metals"]}
    @Islamic
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_default_rowNum2 | CommercialVehicleDetails | CommercialVehicle_rowNum1 | ProductType   | applicantType   | ApplicationStage   | Category   | Key | CollateralSubType   |
      | collateral.xlsx | default            | 593                       | 594                        | vehicle_details          | 66                        | <ProductType> | <applicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |


  # ${ProductType:["IAF","IHF"]}
   # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_default_rowNum2 | CommercialVehicleDetails | CommercialVehicle_rowNum1 | ProductType   | applicantType   | ApplicationStage   | Category | Key | CollateralSubType   |
      | collateral.xlsx | default            | 593                       | 594                        | vehicle_details          | 66                        | <ProductType> | <applicantType> | <ApplicationStage> |          |     | <CollateralSubType> |

#    #FeatureID-ACAUTOCAS-231
  Scenario Outline: ACAUTOCAS-4301:  <CollateralSubType> Data Modification in Vehicle Details
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
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
    			#${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
	#${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal Initiation"]}
    @Conventional
    @ImplementedBy-harshprit.kumar
    @LoggedBug
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | Collateral_vehicleDetails_rowNum2 | ProductType   | applicantType   | ApplicationStage   | Category | Key | CollateralSubType   |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 252                              | 253                               | <ProductType> | <applicantType> | <ApplicationStage> |          |     | <CollateralSubType> |


     # ${ProductType:["IPF"]}
   # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
   # ${Category:["shares","bonds","metals"]}
    @Islamic
    @ImplementedBy-priyanshu.kashyap
    @LoggedBug
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | Collateral_vehicleDetails_rowNum2 | ProductType   | applicantType   | ApplicationStage   | Category   | Key | CollateralSubType   |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 252                              | 253                               | <ProductType> | <applicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |


  # ${ProductType:["IAF","IHF"]}
   # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic
    @ImplementedBy-priyanshu.kashyap
    @LoggedBug
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | Collateral_vehicleDetails_rowNum2 | ProductType   | applicantType   | ApplicationStage   | Category | Key | CollateralSubType   |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 252                              | 253                               | <ProductType> | <applicantType> | <ApplicationStage> |          |     | <CollateralSubType> |

###Dedupe Check
#    #FeatureID-ACAUTOCAS-231,ACAUTOCAS-244
  Scenario Outline: ACAUTOCAS-4302:  <CollateralSubType> Data Modification in Equipment Details for dedupe revalidation
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_vehicleDetails>" and row <Collateral_vehicleDetails_rowNum>
    And user fills mandatory fields of vehicle details
    And user closes duplicate check result box after checking the duplicates
    And user saves the Collateral Details
    When user modifies the saved collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_vehicleDetails>" and row <Collateral_vehicleDetails_rowNum2>
    And user fills mandatory fields of vehicle details
    And user saves the Collateral Details
    Then user gets a proper notification message
			#${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
	#${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal Initiation"]}
    @Conventional
    @ImplementedBy-harshprit.kumar
    @LoggedBug
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | Collateral_vehicleDetails_rowNum2 | ProductType   | applicantType   | ApplicationStage   | Category | Key | CollateralSubType   |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 240                              | 241                               | <ProductType> | <applicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 240                              | 242                               | <ProductType> | <applicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 240                              | 243                               | <ProductType> | <applicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 240                              | 244                               | <ProductType> | <applicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 240                              | 245                               | <ProductType> | <applicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 240                              | 246                               | <ProductType> | <applicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 240                              | 247                               | <ProductType> | <applicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 240                              | 248                               | <ProductType> | <applicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 240                              | 249                               | <ProductType> | <applicantType> | <ApplicationStage> |          |     | <CollateralSubType> |


     # ${ProductType:["IPF"]}
   # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
   # ${Category:["shares","bonds","metals"]}
    @Islamic
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | Collateral_vehicleDetails_rowNum2 | ProductType   | applicantType   | ApplicationStage   | Category   | Key | CollateralSubType   |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 240                              | 241                               | <ProductType> | <applicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 240                              | 242                               | <ProductType> | <applicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 240                              | 243                               | <ProductType> | <applicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 240                              | 244                               | <ProductType> | <applicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 240                              | 245                               | <ProductType> | <applicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 240                              | 246                               | <ProductType> | <applicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 240                              | 247                               | <ProductType> | <applicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 240                              | 248                               | <ProductType> | <applicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 240                              | 249                               | <ProductType> | <applicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |


  # ${ProductType:["IAF","IHF"]}
   # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | Collateral_vehicleDetails_rowNum2 | ProductType   | applicantType   | ApplicationStage   | Category | Key | CollateralSubType   |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 240                              | 241                               | <ProductType> | <applicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 240                              | 242                               | <ProductType> | <applicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 240                              | 243                               | <ProductType> | <applicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 240                              | 244                               | <ProductType> | <applicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 240                              | 245                               | <ProductType> | <applicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 240                              | 246                               | <ProductType> | <applicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 240                              | 247                               | <ProductType> | <applicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 240                              | 248                               | <ProductType> | <applicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 240                              | 249                               | <ProductType> | <applicantType> | <ApplicationStage> |          |     | <CollateralSubType> |


#    #FeatureID-ACAUTOCAS-231,ACAUTOCAS-244
  Scenario Outline: ACAUTOCAS-4303:  Dedupe revalidation to identify duplicate collaterals of <CollateralSubType>
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_vehicleDetails>" and row <Collateral_vehicleDetails_rowNum>
    And user fills mandatory fields of vehicle details
    And user closes duplicate check result box after checking the duplicates
    And user fills Reason Section
    And user saves the Collateral Details
    And user clicks on add new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_vehicleDetails>" and row <Collateral_vehicleDetails_rowNum2>
    When user fills mandatory fields of vehicle details
    And checks for duplicate collateral
    Then user should receive a message saying some duplicates found
    			#${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
	#${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal Initiation"]}
    @Conventional
    @ImplementedBy-richa.singh
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | Collateral_vehicleDetails_rowNum2 | ProductType   | applicantType   | ApplicationStage   | Category | Key | CollateralSubType   |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 136                              | 137                               | <ProductType> | <applicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 136                              | 138                               | <ProductType> | <applicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 136                              | 139                               | <ProductType> | <applicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 136                              | 140                               | <ProductType> | <applicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 136                              | 141                               | <ProductType> | <applicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 136                              | 142                               | <ProductType> | <applicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 136                              | 143                               | <ProductType> | <applicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 136                              | 144                               | <ProductType> | <applicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 136                              | 145                               | <ProductType> | <applicantType> | <ApplicationStage> |          |     | <CollateralSubType> |


     # ${ProductType:["IPF"]}
   # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
   # ${Category:["shares","bonds","metals"]}
    @Islamic
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | Collateral_vehicleDetails_rowNum2 | ProductType   | applicantType   | ApplicationStage   | Category   | Key | CollateralSubType   |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 136                              | 137                               | <ProductType> | <applicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 136                              | 138                               | <ProductType> | <applicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 136                              | 139                               | <ProductType> | <applicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 136                              | 140                               | <ProductType> | <applicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 136                              | 141                               | <ProductType> | <applicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 136                              | 142                               | <ProductType> | <applicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 136                              | 143                               | <ProductType> | <applicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 136                              | 144                               | <ProductType> | <applicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 136                              | 145                               | <ProductType> | <applicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |

  # ${ProductType:["IAF","IHF"]}
   # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | Collateral_vehicleDetails_rowNum2 | ProductType   | applicantType   | ApplicationStage   | Category | Key | CollateralSubType   |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 136                              | 137                               | <ProductType> | <applicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 136                              | 138                               | <ProductType> | <applicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 136                              | 139                               | <ProductType> | <applicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 136                              | 140                               | <ProductType> | <applicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 136                              | 141                               | <ProductType> | <applicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 136                              | 142                               | <ProductType> | <applicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 136                              | 143                               | <ProductType> | <applicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 136                              | 144                               | <ProductType> | <applicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 136                              | 145                               | <ProductType> | <applicantType> | <ApplicationStage> |          |     | <CollateralSubType> |



#    #FeatureID-ACAUTOCAS-231,ACAUTOCAS-244
  Scenario Outline: ACAUTOCAS-4304:  Dedupe revalidation to identify and view duplicate collaterals of <CollateralSubType>
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_vehicleDetails>" and row <Collateral_vehicleDetails_rowNum>
    And user fills mandatory fields of vehicle details
    And user closes duplicate check result box after checking the duplicates
    And user fills Reason Section
    And user saves the Collateral Details
    And user clicks on add new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_vehicleDetails>" and row <Collateral_vehicleDetails_rowNum2>
    When user fills mandatory fields of vehicle details
    And checks for duplicate collateral
    And user click on view details
    Then user should be able to view the duplicates in collateral details page
			#${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
	#${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal Initiation"]}
    @Conventional
    @ImplementedBy-richa.singh
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | Collateral_vehicleDetails_rowNum2 | ProductType   | applicantType   | ApplicationStage   | Category | Key | CollateralSubType   |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 154                              | 155                               | <ProductType> | <applicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 154                              | 156                               | <ProductType> | <applicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 154                              | 157                               | <ProductType> | <applicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 154                              | 158                               | <ProductType> | <applicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 154                              | 159                               | <ProductType> | <applicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 154                              | 160                               | <ProductType> | <applicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 154                              | 161                               | <ProductType> | <applicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 154                              | 162                               | <ProductType> | <applicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 154                              | 163                               | <ProductType> | <applicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 154                              | 164                               | <ProductType> | <applicantType> | <ApplicationStage> |          |     | <CollateralSubType> |


     # ${ProductType:["IPF"]}
   # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
   # ${Category:["shares","bonds","metals"]}
    @Islamic
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | Collateral_vehicleDetails_rowNum2 | ProductType   | applicantType   | ApplicationStage   | Category   | Key | CollateralSubType   |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 154                              | 155                               | <ProductType> | <applicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 154                              | 156                               | <ProductType> | <applicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 154                              | 157                               | <ProductType> | <applicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 154                              | 158                               | <ProductType> | <applicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 154                              | 159                               | <ProductType> | <applicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 154                              | 160                               | <ProductType> | <applicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 154                              | 161                               | <ProductType> | <applicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 154                              | 162                               | <ProductType> | <applicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 154                              | 163                               | <ProductType> | <applicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 154                              | 164                               | <ProductType> | <applicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |


  # ${ProductType:["IAF","IHF"]}
   # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | Collateral_vehicleDetails_rowNum2 | ProductType   | applicantType   | ApplicationStage   | Category | Key | CollateralSubType   |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 154                              | 155                               | <ProductType> | <applicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 154                              | 156                               | <ProductType> | <applicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 154                              | 157                               | <ProductType> | <applicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 154                              | 158                               | <ProductType> | <applicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 154                              | 159                               | <ProductType> | <applicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 154                              | 160                               | <ProductType> | <applicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 154                              | 161                               | <ProductType> | <applicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 154                              | 162                               | <ProductType> | <applicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 154                              | 163                               | <ProductType> | <applicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 154                              | 164                               | <ProductType> | <applicantType> | <ApplicationStage> |          |     | <CollateralSubType> |

#    #FeatureID-ACAUTOCAS-231,ACAUTOCAS-244
  Scenario Outline: ACAUTOCAS-4305:  Dedupe revalidation to identify and attach duplicate collaterals to the same application of <CollateralSubType>
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user adds asset type collateral of "<CollateralSubType>" subtype
      | collateral.xlsx | asset_details | 71 |
      | collateral.xlsx | asset_details | 72 |
    When user modifies the saved collateral
    And user opens vehicle details section
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_vehicleDetails>" and row <Collateral_vehicleDetails_rowNum>
    And user fills mandatory fields of vehicle details
    And checks for duplicate collateral
    And user views the duplicate collateral
    And user selects collateral already attached to the same application
    And user saves the duplicate collateral
    Then user gets a proper notification
			#${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
	#${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal Initiation"]}
    @Conventional
    @ImplementedBy-ankit.yadav
    @LoggedBug
    Examples:
      | CollateralWB    | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | ProductType   | applicantType   | ApplicationStage   | Category | Key | CollateralSubType   |
      | collateral.xlsx | vehicle_details           | 250                              | <ProductType> | <applicantType> | <ApplicationStage> |          |     | <CollateralSubType> |


     # ${ProductType:["IPF"]}
   # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
   # ${Category:["shares","bonds","metals"]}
    @Islamic
    @ImplementedBy-priyanshu.kashyap
    @LoggedBug
    Examples:
      | CollateralWB    | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | ProductType   | applicantType   | ApplicationStage   | Category   | Key | CollateralSubType   |
      | collateral.xlsx | vehicle_details           | 250                              | <ProductType> | <applicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |


  # ${ProductType:["IAF","IHF"]}
   # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic
    @ImplementedBy-priyanshu.kashyap
    @LoggedBug
    Examples:
      | CollateralWB    | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | ProductType   | applicantType   | ApplicationStage   | Category | Key | CollateralSubType   |
      | collateral.xlsx | vehicle_details           | 250                              | <ProductType> | <applicantType> | <ApplicationStage> |          |     | <CollateralSubType> |

      #FeatureID-ACAUTOCAS-231,ACAUTOCAS-244
  Scenario Outline: ACAUTOCAS-4306:  Dedupe revalidation to identify and attach duplicate collaterals to different application of <CollateralSubType>
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    When user fills mandatory fields of home page of collateral details for given collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_vehicleDetails>" and row <Collateral_vehicleDetails_rowNum>
    And user fills mandatory fields of vehicle details
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user checks the duplicates on collateral dedupe check
    And user clicks on save collateral to save CMS data
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_vehicleDetails>" and row <Collateral_vehicleDetails_rowNum>
    And user fills mandatory fields of vehicle details
    And checks for duplicate collateral
    And user views the duplicate collateral
    And user select the "Consumer Vehicle" collateral from dedupe result which is not attached to the application
    And user saves selected dedupe collateral
    Then user is able to save data successfully with existing GlobalCollateralNo
    			#${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
	#${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal Initiation"]}
    @Conventional
    @ImplementedBy-richa.singh
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | ProductType   | applicantType   | ApplicationStage   | Category | Key | CollateralSubType   |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 136                              | <ProductType> | <applicantType> | <ApplicationStage> |          |     | <CollateralSubType> |


     # ${ProductType:["IPF"]}
   # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
   # ${Category:["shares","bonds","metals"]}
    @Islamic
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | ProductType   | applicantType   | ApplicationStage   | Category   | Key | CollateralSubType   |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 136                              | <ProductType> | <applicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |


  # ${ProductType:["IAF","IHF"]}
   # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | ProductType   | applicantType   | ApplicationStage   | Category | Key | CollateralSubType   |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 136                              | <ProductType> | <applicantType> | <ApplicationStage> |          |     | <CollateralSubType> |


#    #FeatureID-ACAUTOCAS-231,ACAUTOCAS-244

## Ignore duplicate and save - Ask for reason
 ##FeatureID-ACAUTOCAS-231,ACAUTOCAS-244
  Scenario Outline: ACAUTOCAS-4307:  Dedupe revalidation to identify and ignore duplicate collaterals of <CollateralSubType>
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_vehicleDetails>" and row <Collateral_vehicleDetails_rowNum>
    And user fills mandatory fields of vehicle details
    And user closes duplicate check result box after checking the duplicates
    And user fills Reason Section
    And user saves the Collateral Details
    And user clicks on add new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_vehicleDetails>" and row <Collateral_vehicleDetails_rowNum>
    When user fills mandatory fields of vehicle details
    And checks for duplicate collateral
    And user ignores the duplicate collaterals found
    Then user is asked to enter the reason of ignoring
    			#${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
	#${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal Initiation"]}
    @Conventional
    @ImplementedBy-richa.singh
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | ProductType   | applicantType   | ApplicationStage   | Category | Key | CollateralSubType   |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 136                              | <ProductType> | <applicantType> | <ApplicationStage> |          |     | <CollateralSubType> |


     # ${ProductType:["IPF"]}
   # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
   # ${Category:["shares","bonds","metals"]}
    @Islamic
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | ProductType   | applicantType   | ApplicationStage   | Category   | Key | CollateralSubType   |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 136                              | <ProductType> | <applicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |


  # ${ProductType:["IAF","IHF"]}
   # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | ProductType   | applicantType   | ApplicationStage   | Category | Key | CollateralSubType   |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 136                              | <ProductType> | <applicantType> | <ApplicationStage> |          |     | <CollateralSubType> |


    #FeatureID-ACAUTOCAS-5077,ACAUTOCAS-234,ACAUTOCAS-232,ACAUTOCAS-233,ACAUTOCAS-231,ACAUTOCAS-230,ACAUTOCAS-8108
  Scenario Outline: ACAUTOCAS-11565:  Collateral page modification validation for "<CollateralSubType>" at Disbursal stage
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_vehicleDetails>" and row <Collateral_vehicleDetails_rowNum>
    And user fills mandatory fields of vehicle details
    And user closes duplicate check result box after checking the duplicates
    And user fills Reason Section
    And user saves the Collateral Details
    And user moves application from "<ProductType>" stage to application of "<ApplicationStage>" product type as "<applicantType>" applicant at "Disbursal Author" for "<Category>" with "<Key>" stage without opening it
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "Disbursal Author" for "<Category>" with "<Key>" from application grid
    And user navigates to the collateral page at disbursal stage
    When user attempts to modify collateral based on "<CollateralSubType>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    Then user should not be able to modify the data of saved collateral
    			#${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
	#${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal Initiation"]}
    @Conventional
    @ImplementedBy-richa.singh
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | ProductType   | applicantType   | ApplicationStage   | Category | Key | CollateralSubType   |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 136                              | <ProductType> | <applicantType> | <ApplicationStage> |          |     | <CollateralSubType> |


     # ${ProductType:["IPF"]}
   # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
   # ${Category:["shares","bonds","metals"]}
    @Islamic
    @ImplementedBy-priyanshu.kashyap
    @Perishable
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | ProductType   | applicantType   | ApplicationStage   | Category   | Key | CollateralSubType   |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 136                              | <ProductType> | <applicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |


  # ${ProductType:["IAF","IHF"]}
   # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | ProductType   | applicantType   | ApplicationStage   | Category | Key | CollateralSubType   |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 136                              | <ProductType> | <applicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
