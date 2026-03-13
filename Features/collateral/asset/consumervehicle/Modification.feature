@Epic-Secondary_Collateral
@AuthoredBy-rsurya.kumar
@ReviewedBy-None
@ReviewedByDEV
@Sanity
@ReviewedSecCollateral
@Release @Part-2
#${CollateralSubType:["Consumer Vehicle"]}
#${ApplicantType:["indiv","nonindiv"]}
Feature: Consumer Vehicle Modification

#  Pre-Requisites---
#  In this feature we will attach an Asset Consumer Vehicle to the loan application.
# Work in Progress
  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0

  Scenario Outline: ACAUTOCAS-2152: Deleting a <CollateralSubType> attached to the application
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
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
    #    			${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#	${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal"]}
    @Conventional
    @ImplementedBy-harshprit.kumar
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | CollateralSubType   |
      | collateral.xlsx | default            | 0                         | vehicle_details           | 1                                | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |


 # ${ProductType:["IPF"]}
#  ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
#  ${Category:["shares","bonds","metals"]}
    @Islamic
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | ProductType   | ApplicantType   | ApplicationStage   | Category   | Key | CollateralSubType   |
      | collateral.xlsx | default            | 0                         | vehicle_details           | 1                                | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |

  # ${ProductType:["IAF","IHF"]}
   # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | CollateralSubType   |
      | collateral.xlsx | default            | 0                         | vehicle_details           | 1                                | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |

  Scenario Outline: ACAUTOCAS-2949: <CollateralSubType> Data Modification of <FieldName> in Asset Details
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
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
#	${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal"]}
    @Conventional
    @ImplementedBy-harshprit.kumar
    Examples:
      | FieldName                    | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | CollateralSubType   |
      | Collateral Ref No            | collateral.xlsx | default            | 0                         | vehicle_details           | 1                                | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Description                  | collateral.xlsx | default            | 0                         | vehicle_details           | 1                                | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | OLV Grid Value               | collateral.xlsx | default            | 0                         | vehicle_details           | 1                                | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Insured Declared Value       | collateral.xlsx | default            | 0                         | vehicle_details           | 1                                | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Overall Evaluated Value Type | collateral.xlsx | default            | 0                         | vehicle_details           | 1                                | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Asset Usage                  | collateral.xlsx | default            | 0                         | vehicle_details           | 1                                | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Asset Location               | collateral.xlsx | default            | 0                         | vehicle_details           | 1                                | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Asset Cost                   | collateral.xlsx | default            | 0                         | vehicle_details           | 1                                | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Asset Category               | collateral.xlsx | default            | 0                         | vehicle_details           | 1                                | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Manufacturer                 | collateral.xlsx | default            | 0                         | vehicle_details           | 1                                | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Asset Model                  | collateral.xlsx | default            | 0                         | vehicle_details           | 1                                | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Asset Variant                | collateral.xlsx | default            | 0                         | vehicle_details           | 1                                | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Asset Level                  | collateral.xlsx | default            | 0                         | vehicle_details           | 1                                | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |

 # ${ProductType:["IPF"]}
#  ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
#  ${Category:["shares","bonds","metals"]}
    @Islamic
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | FieldName                    | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | ProductType   | ApplicantType   | ApplicationStage   | Category   | Key | CollateralSubType   |
      | Collateral Ref No            | collateral.xlsx | default            | 0                         | vehicle_details           | 1                                | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Description                  | collateral.xlsx | default            | 0                         | vehicle_details           | 1                                | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | OLV Grid Value               | collateral.xlsx | default            | 0                         | vehicle_details           | 1                                | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Insured Declared Value       | collateral.xlsx | default            | 0                         | vehicle_details           | 1                                | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Overall Evaluated Value Type | collateral.xlsx | default            | 0                         | vehicle_details           | 1                                | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Asset Usage                  | collateral.xlsx | default            | 0                         | vehicle_details           | 1                                | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Asset Location               | collateral.xlsx | default            | 0                         | vehicle_details           | 1                                | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Asset Cost                   | collateral.xlsx | default            | 0                         | vehicle_details           | 1                                | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Asset Category               | collateral.xlsx | default            | 0                         | vehicle_details           | 1                                | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Manufacturer                 | collateral.xlsx | default            | 0                         | vehicle_details           | 1                                | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Asset Model                  | collateral.xlsx | default            | 0                         | vehicle_details           | 1                                | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Asset Variant                | collateral.xlsx | default            | 0                         | vehicle_details           | 1                                | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Asset Level                  | collateral.xlsx | default            | 0                         | vehicle_details           | 1                                | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |


#  # ${ProductType:["IAF","IHF"]}
#   # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | FieldName                    | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | CollateralSubType   |
      | Collateral Ref No            | collateral.xlsx | default            | 0                         | vehicle_details           | 1                                | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Description                  | collateral.xlsx | default            | 0                         | vehicle_details           | 1                                | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | OLV Grid Value               | collateral.xlsx | default            | 0                         | vehicle_details           | 1                                | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Insured Declared Value       | collateral.xlsx | default            | 0                         | vehicle_details           | 1                                | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Overall Evaluated Value Type | collateral.xlsx | default            | 0                         | vehicle_details           | 1                                | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Asset Usage                  | collateral.xlsx | default            | 0                         | vehicle_details           | 1                                | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Asset Location               | collateral.xlsx | default            | 0                         | vehicle_details           | 1                                | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Asset Cost                   | collateral.xlsx | default            | 0                         | vehicle_details           | 1                                | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Asset Category               | collateral.xlsx | default            | 0                         | vehicle_details           | 1                                | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Manufacturer                 | collateral.xlsx | default            | 0                         | vehicle_details           | 1                                | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Asset Model                  | collateral.xlsx | default            | 0                         | vehicle_details           | 1                                | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Asset Variant                | collateral.xlsx | default            | 0                         | vehicle_details           | 1                                | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Asset Level                  | collateral.xlsx | default            | 0                         | vehicle_details           | 1                                | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |

  Scenario Outline: ACAUTOCAS-2950: <CollateralSubType> Data Modification of <FieldName> in Vehicle Details
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
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
    #    			${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#	${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal"]}
    @Conventional
    @ImplementedBy-harshprit.kumar
    Examples:
      | FieldName                     | SectionName     | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | CollateralSubType   |
      | FIP Number                    | Vehicle Details | collateral.xlsx | default            | 0                         | vehicle_details           | 1                                | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Date of Delivery              | Vehicle Details | collateral.xlsx | default            | 0                         | vehicle_details           | 1                                | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | VIN Number                    | Vehicle Details | collateral.xlsx | default            | 0                         | vehicle_details           | 1                                | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Registration Date             | Vehicle Details | collateral.xlsx | default            | 0                         | vehicle_details           | 1                                | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Registration Number           | Vehicle Details | collateral.xlsx | default            | 0                         | vehicle_details           | 1                                | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Registration Transport Office | Vehicle Details | collateral.xlsx | default            | 0                         | vehicle_details           | 1                                | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Registration in Name of       | Vehicle Details | collateral.xlsx | default            | 0                         | vehicle_details           | 1                                | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | RC Received Date              | Vehicle Details | collateral.xlsx | default            | 0                         | vehicle_details           | 1                                | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Vehicle Capacity              | Vehicle Details | collateral.xlsx | default            | 0                         | vehicle_details           | 1                                | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Asset Life (Months)           | Vehicle Details | collateral.xlsx | default            | 0                         | vehicle_details           | 1                                | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Initial Odometer Reading      | Vehicle Details | collateral.xlsx | default            | 0                         | vehicle_details           | 1                                | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Color                         | Vehicle Details | collateral.xlsx | default            | 0                         | vehicle_details           | 1                                | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | State                         | Vehicle Details | collateral.xlsx | default            | 0                         | vehicle_details           | 1                                | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Color Type                    | Vehicle Details | collateral.xlsx | default            | 0                         | vehicle_details           | 1                                | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Engine Number                 | Vehicle Details | collateral.xlsx | default            | 0                         | vehicle_details           | 1                                | <ProductType> | <ProductType>   | <ApplicationStage> |          |     | <CollateralSubType> |
      | Chassis Number                | Vehicle Details | collateral.xlsx | default            | 0                         | vehicle_details           | 1                                | <ProductType> | <ProductType>   | <ApplicationStage> |          |     | <CollateralSubType> |
      | Registration Expiry Date      | Vehicle Details | collateral.xlsx | default            | 0                         | vehicle_details           | 1                                | <ProductType> | <ProductType>   | <ApplicationStage> |          |     | <CollateralSubType> |
      | Year of Manufacture           | Vehicle Details | collateral.xlsx | default            | 0                         | vehicle_details           | 1                                | <ProductType> | <ProductType>   | <ApplicationStage> |          |     | <CollateralSubType> |



 # ${ProductType:["IPF"]}
#  ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
#  ${Category:["shares","bonds","metals"]}
    @Islamic
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | FieldName                     | SectionName     | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | ProductType   | ApplicantType   | ApplicationStage   | Category   | Key | CollateralSubType   |
      | FIP Number                    | Vehicle Details | collateral.xlsx | default            | 0                         | vehicle_details           | 1                                | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Date of Delivery              | Vehicle Details | collateral.xlsx | default            | 0                         | vehicle_details           | 1                                | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | VIN Number                    | Vehicle Details | collateral.xlsx | default            | 0                         | vehicle_details           | 1                                | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Registration Date             | Vehicle Details | collateral.xlsx | default            | 0                         | vehicle_details           | 1                                | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Registration Number           | Vehicle Details | collateral.xlsx | default            | 0                         | vehicle_details           | 1                                | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Registration Transport Office | Vehicle Details | collateral.xlsx | default            | 0                         | vehicle_details           | 1                                | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Registration in Name of       | Vehicle Details | collateral.xlsx | default            | 0                         | vehicle_details           | 1                                | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | RC Received Date              | Vehicle Details | collateral.xlsx | default            | 0                         | vehicle_details           | 1                                | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Vehicle Capacity              | Vehicle Details | collateral.xlsx | default            | 0                         | vehicle_details           | 1                                | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Asset Life (Months)           | Vehicle Details | collateral.xlsx | default            | 0                         | vehicle_details           | 1                                | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Initial Odometer Reading      | Vehicle Details | collateral.xlsx | default            | 0                         | vehicle_details           | 1                                | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Color                         | Vehicle Details | collateral.xlsx | default            | 0                         | vehicle_details           | 1                                | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | State                         | Vehicle Details | collateral.xlsx | default            | 0                         | vehicle_details           | 1                                | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Color Type                    | Vehicle Details | collateral.xlsx | default            | 0                         | vehicle_details           | 1                                | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Engine Number                 | Vehicle Details | collateral.xlsx | default            | 0                         | vehicle_details           | 1                                | <ProductType> | <ProductType>   | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Chassis Number                | Vehicle Details | collateral.xlsx | default            | 0                         | vehicle_details           | 1                                | <ProductType> | <ProductType>   | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Registration Expiry Date      | Vehicle Details | collateral.xlsx | default            | 0                         | vehicle_details           | 1                                | <ProductType> | <ProductType>   | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Year of Manufacture           | Vehicle Details | collateral.xlsx | default            | 0                         | vehicle_details           | 1                                | <ProductType> | <ProductType>   | <ApplicationStage> | <Category> |     | <CollateralSubType> |


  # ${ProductType:["IAF","IHF"]}
   # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | FieldName                     | SectionName     | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | CollateralSubType   |
      | FIP Number                    | Vehicle Details | collateral.xlsx | default            | 0                         | vehicle_details           | 1                                | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Date of Delivery              | Vehicle Details | collateral.xlsx | default            | 0                         | vehicle_details           | 1                                | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | VIN Number                    | Vehicle Details | collateral.xlsx | default            | 0                         | vehicle_details           | 1                                | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Registration Date             | Vehicle Details | collateral.xlsx | default            | 0                         | vehicle_details           | 1                                | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Registration Number           | Vehicle Details | collateral.xlsx | default            | 0                         | vehicle_details           | 1                                | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Registration Transport Office | Vehicle Details | collateral.xlsx | default            | 0                         | vehicle_details           | 1                                | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Registration in Name of       | Vehicle Details | collateral.xlsx | default            | 0                         | vehicle_details           | 1                                | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | RC Received Date              | Vehicle Details | collateral.xlsx | default            | 0                         | vehicle_details           | 1                                | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Vehicle Capacity              | Vehicle Details | collateral.xlsx | default            | 0                         | vehicle_details           | 1                                | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Asset Life (Months)           | Vehicle Details | collateral.xlsx | default            | 0                         | vehicle_details           | 1                                | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Initial Odometer Reading      | Vehicle Details | collateral.xlsx | default            | 0                         | vehicle_details           | 1                                | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Color                         | Vehicle Details | collateral.xlsx | default            | 0                         | vehicle_details           | 1                                | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | State                         | Vehicle Details | collateral.xlsx | default            | 0                         | vehicle_details           | 1                                | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Color Type                    | Vehicle Details | collateral.xlsx | default            | 0                         | vehicle_details           | 1                                | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Engine Number                 | Vehicle Details | collateral.xlsx | default            | 0                         | vehicle_details           | 1                                | <ProductType> | <ProductType>   | <ApplicationStage> |          |     | <CollateralSubType> |
      | Chassis Number                | Vehicle Details | collateral.xlsx | default            | 0                         | vehicle_details           | 1                                | <ProductType> | <ProductType>   | <ApplicationStage> |          |     | <CollateralSubType> |
      | Registration Expiry Date      | Vehicle Details | collateral.xlsx | default            | 0                         | vehicle_details           | 1                                | <ProductType> | <ProductType>   | <ApplicationStage> |          |     | <CollateralSubType> |
      | Year of Manufacture           | Vehicle Details | collateral.xlsx | default            | 0                         | vehicle_details           | 1                                | <ProductType> | <ProductType>   | <ApplicationStage> |          |     | <CollateralSubType> |


  Scenario Outline: ACAUTOCAS-2951: <CollateralSubType> restrictions in Data Modification of <FieldName>
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
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
#	${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal"]}
    @Conventional
    @ImplementedBy-harshprit.kumar
    Examples:
      | FieldName                | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | CollateralSubType   |
      | Collateral ID            | collateral.xlsx | default            | 0                         | vehicle_details           | 1                                | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Global Collateral Number | collateral.xlsx | default            | 0                         | vehicle_details           | 1                                | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Collateral Type          | collateral.xlsx | default            | 0                         | vehicle_details           | 1                                | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Collateral SubType       | collateral.xlsx | default            | 0                         | vehicle_details           | 1                                | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |


 # ${ProductType:["IPF"]}
#  ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
#  ${Category:["shares","bonds","metals"]}
    @Islamic
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | FieldName                | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | ProductType   | ApplicantType | ApplicationStage   | Category   | Key | CollateralSubType   |
      | Collateral ID            | collateral.xlsx | default            | 0                         | vehicle_details           | 1                                | <ProductType> | <ProductType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Global Collateral Number | collateral.xlsx | default            | 0                         | vehicle_details           | 1                                | <ProductType> | <ProductType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Collateral Type          | collateral.xlsx | default            | 0                         | vehicle_details           | 1                                | <ProductType> | <ProductType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Collateral SubType       | collateral.xlsx | default            | 0                         | vehicle_details           | 1                                | <ProductType> | <ProductType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |


  # ${ProductType:["IAF","IHF"]}
   # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | FieldName                | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | CollateralSubType   |
      | Collateral ID            | collateral.xlsx | default            | 0                         | vehicle_details           | 1                                | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Global Collateral Number | collateral.xlsx | default            | 0                         | vehicle_details           | 1                                | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Collateral Type          | collateral.xlsx | default            | 0                         | vehicle_details           | 1                                | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Collateral SubType       | collateral.xlsx | default            | 0                         | vehicle_details           | 1                                | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |


#FeatureID-ACAUTOCAS-230
  @ImplementedBy-priyanshu.kashyap
  Scenario Outline: ACAUTOCAS-4317:  <CollateralSubType> Data Modification in Asset Details
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
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
    #    			${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#	${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal"]}
    @Conventional
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_default_rowNum2 | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | CollateralSubType   |
      | collateral.xlsx | default            | 595                       | 596                        | vehicle_details           | 1                                | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |


 # ${ProductType:["IPF"]}
#  ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
#  ${Category:["shares","bonds","metals"]}
    @Islamic
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_default_rowNum2 | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | ProductType   | ApplicantType   | ApplicationStage   | Category   | Key | CollateralSubType   |
      | collateral.xlsx | default            | 595                       | 596                        | vehicle_details           | 1                                | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |


  # ${ProductType:["IAF","IHF"]}
   # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_default_rowNum2 | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | CollateralSubType   |
      | collateral.xlsx | default            | 595                       | 596                        | vehicle_details           | 1                                | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |


#  #FeatureID-ACAUTOCAS-230
  Scenario Outline: ACAUTOCAS-4318:  <CollateralSubType> Data Modification in Vehicle Details
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
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
    #    			${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#	${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal"]}
    @Conventional
    @ImplementedBy-aman.verma
    @LoggedBug
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | Collateral_vehicleDetails_rowNum2 | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | CollateralSubType   |
      | collateral.xlsx | default            | 0                         | vehicle_details           | 252                              | 253                               | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |


 # ${ProductType:["IPF"]}
#  ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
#  ${Category:["shares","bonds","metals"]}
    @Islamic
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | Collateral_vehicleDetails_rowNum2 | ProductType   | ApplicantType | ApplicationStage   | Category   | Key | CollateralSubType   |
      | collateral.xlsx | default            | 0                         | vehicle_details           | 252                              | 253                               | <ProductType> | <ProductType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |

  # ${ProductType:["IAF","IHF"]}
   # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | Collateral_vehicleDetails_rowNum2 | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | CollateralSubType   |
      | collateral.xlsx | default            | 0                         | vehicle_details           | 252                              | 253                               | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |

###Dedupe Check
#  #FeatureID-ACAUTOCAS-230,ACAUTOCAS-244
  Scenario Outline: ACAUTOCAS-4319:  <CollateralSubType> Data Modification in Equipment Details for dedupe revalidation
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_sheetName>" and row <Collateral_sheet_rowNum>
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_vehicleDetails>" and row <Collateral_vehicleDetails_rowNum>
    And user fills mandatory fields of vehicle details
    And user closes duplicate check result box after checking the duplicates
    And user fills Reason Section
    And user saves the Collateral Details
    When user modifies the saved collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_vehicleDetails>" and row <Collateral_vehicleDetails_rowNum2>
    And user fills mandatory fields of vehicle details
    And user saves the Collateral Details
    Then user gets a proper notification message
    #    			${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#	${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal"]}
    @Conventional
    @ImplementedBy-aman.verma
    Examples:
      | CollateralWB    | Collateral_sheetName | Collateral_sheet_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | Collateral_vehicleDetails_rowNum2 | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | CollateralSubType   |
      | collateral.xlsx | asset_details        | 73                      | vehicle_details           | 205                              | 241                               | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | collateral.xlsx | asset_details        | 73                      | vehicle_details           | 205                              | 242                               | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | collateral.xlsx | asset_details        | 73                      | vehicle_details           | 205                              | 243                               | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | collateral.xlsx | asset_details        | 73                      | vehicle_details           | 205                              | 244                               | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | collateral.xlsx | asset_details        | 73                      | vehicle_details           | 205                              | 245                               | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | collateral.xlsx | asset_details        | 73                      | vehicle_details           | 205                              | 246                               | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | collateral.xlsx | asset_details        | 73                      | vehicle_details           | 205                              | 247                               | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | collateral.xlsx | asset_details        | 73                      | vehicle_details           | 205                              | 248                               | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | collateral.xlsx | asset_details        | 73                      | vehicle_details           | 205                              | 249                               | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |


 # ${ProductType:["IPF"]}
#  ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
#  ${Category:["shares","bonds","metals"]}
    @Islamic
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | CollateralWB    | Collateral_sheetName | Collateral_sheet_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | Collateral_vehicleDetails_rowNum2 | ProductType   | ApplicantType   | ApplicationStage   | Category   | Key | CollateralSubType   |
      | collateral.xlsx | asset_details        | 73                      | vehicle_details           | 205                              | 241                               | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | collateral.xlsx | asset_details        | 73                      | vehicle_details           | 205                              | 242                               | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | collateral.xlsx | asset_details        | 73                      | vehicle_details           | 205                              | 243                               | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | collateral.xlsx | asset_details        | 73                      | vehicle_details           | 205                              | 244                               | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | collateral.xlsx | asset_details        | 73                      | vehicle_details           | 205                              | 245                               | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | collateral.xlsx | asset_details        | 73                      | vehicle_details           | 205                              | 246                               | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | collateral.xlsx | asset_details        | 73                      | vehicle_details           | 205                              | 247                               | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | collateral.xlsx | asset_details        | 73                      | vehicle_details           | 205                              | 248                               | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | collateral.xlsx | asset_details        | 73                      | vehicle_details           | 205                              | 249                               | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |


  # ${ProductType:["IAF","IHF"]}
   # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | CollateralWB    | Collateral_sheetName | Collateral_sheet_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | Collateral_vehicleDetails_rowNum2 | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | CollateralSubType   |
      | collateral.xlsx | asset_details        | 73                      | vehicle_details           | 205                              | 241                               | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | collateral.xlsx | asset_details        | 73                      | vehicle_details           | 205                              | 242                               | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | collateral.xlsx | asset_details        | 73                      | vehicle_details           | 205                              | 243                               | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | collateral.xlsx | asset_details        | 73                      | vehicle_details           | 205                              | 244                               | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | collateral.xlsx | asset_details        | 73                      | vehicle_details           | 205                              | 245                               | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | collateral.xlsx | asset_details        | 73                      | vehicle_details           | 205                              | 246                               | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | collateral.xlsx | asset_details        | 73                      | vehicle_details           | 205                              | 247                               | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | collateral.xlsx | asset_details        | 73                      | vehicle_details           | 205                              | 248                               | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | collateral.xlsx | asset_details        | 73                      | vehicle_details           | 205                              | 249                               | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |

#  #FeatureID-ACAUTOCAS-230,ACAUTOCAS-244
  @ImplementedBy-aditya.tomar
  Scenario Outline: ACAUTOCAS-4320:  Dedupe revalidation to identify duplicate collaterals of <CollateralSubType>
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<SecondaryApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<SecondaryApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user fills mandatory fields of  consumer vehicle
    And user checks the duplicates on collateral dedupe check
    And user clicks on save collateral to save CMS data
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum1>
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user fills mandatory fields of  consumer vehicle
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    And user edits the recently added collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum2>
    When user fills mandatory fields of  consumer vehicle
    And checks for duplicate collateral
    And user views the duplicate collateral
    Then user should validate <Number> duplicate "<CollateralSubType>" record for "<SourceSystem>" source system
    #    			${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#	${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal"]}
    @Conventional
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_default_rowNum1 | Collateral_default_rowNum2 | ProductType   | ApplicationStage   | SecondaryApplicationStage | Key | Category | ApplicantType   | Number | SourceSystem | CollateralSubType   |
      | collateral.xlsx | default            | 832                       | 833                        | 834                        | <ProductType> | <ApplicationStage> | Post Approval             |     |          | <ApplicantType> | 1      | CMS          | <CollateralSubType> |
      | collateral.xlsx | default            | 832                       | 833                        | 834                        | <ProductType> | <ApplicationStage> | Post Approval             |     |          | <ApplicantType> | 1      | CAS          | <CollateralSubType> |


 # ${ProductType:["IPF"]}
#  ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
#  ${Category:["shares","bonds","metals"]}
    @Islamic
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_default_rowNum1 | Collateral_default_rowNum2 | ProductType   | ApplicationStage   | SecondaryApplicationStage | Category   | Key | ApplicantType   | Number | SourceSystem | CollateralSubType   |
      | collateral.xlsx | default            | 832                       | 833                        | 834                        | <ProductType> | <ApplicationStage> | Post Approval             | <Category> |     | <ApplicantType> | 1      | CMS          | <CollateralSubType> |
      | collateral.xlsx | default            | 832                       | 833                        | 834                        | <ProductType> | <ApplicationStage> | Post Approval             | <Category> |     | <ApplicantType> | 1      | CAS          | <CollateralSubType> |

  # ${ProductType:["IAF","IHF"]}
   # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_default_rowNum1 | Collateral_default_rowNum2 | ProductType   | ApplicationStage   | SecondaryApplicationStage | Key | Category | ApplicantType   | Number | SourceSystem | CollateralSubType   |
      | collateral.xlsx | default            | 832                       | 833                        | 834                        | <ProductType> | <ApplicationStage> | Post Approval             |     |          | <ApplicantType> | 1      | CMS          | <CollateralSubType> |
      | collateral.xlsx | default            | 832                       | 833                        | 834                        | <ProductType> | <ApplicationStage> | Post Approval             |     |          | <ApplicantType> | 1      | CAS          | <CollateralSubType> |

#  #FeatureID-ACAUTOCAS-230,ACAUTOCAS-244
  @ImplementedBy-aditya.tomar
  Scenario Outline: ACAUTOCAS-4321:  Dedupe revalidation to identify and view duplicate collaterals of <CollateralSubType>
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<SecondaryApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<SecondaryApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user fills mandatory fields of  consumer vehicle
    And user checks the duplicates on collateral dedupe check
    And user clicks on save collateral to save CMS data
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum1>
    And user fills mandatory fields of  consumer vehicle
    And user checks the duplicates on collateral dedupe check
    And save the collateral data for modification
    And user edits the recently added collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum2>
    When user fills mandatory fields of  consumer vehicle
    And checks for duplicate collateral
    Then User should be able to view the duplicates of "<CollateralSubType>" collateral
    #    			${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#	${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal"]}
    @Conventional
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_default_rowNum1 | Collateral_default_rowNum2 | ProductType   | ApplicationStage   | SecondaryApplicationStage | Key | Category | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | default            | 832                       | 833                        | 834                        | <ProductType> | <ApplicationStage> | Post Approval             |     |          | <ApplicantType> | <CollateralSubType> |

 # ${ProductType:["IPF"]}
#  ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
#  ${Category:["shares","bonds","metals"]}
    @Islamic
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_default_rowNum1 | Collateral_default_rowNum2 | ProductType   | ApplicationStage   | SecondaryApplicationStage | Category   | Key | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | default            | 832                       | 833                        | 834                        | <ProductType> | <ApplicationStage> | Post Approval             | <Category> |     | <ApplicantType> | <CollateralSubType> |

  # ${ProductType:["IAF","IHF"]}
   # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_default_rowNum1 | Collateral_default_rowNum2 | ProductType   | ApplicationStage   | SecondaryApplicationStage | Key | Category | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | default            | 832                       | 833                        | 834                        | <ProductType> | <ApplicationStage> | Post Approval             |     |          | <ApplicantType> | <CollateralSubType> |

#  #FeatureID-ACAUTOCAS-230,ACAUTOCAS-244
  Scenario Outline: ACAUTOCAS-4322:  Dedupe revalidation to identify and attach duplicate collaterals of <CollateralSubType> to the same application
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user adds asset type collateral of "<CollateralSubType>" subtype
      | collateral.xlsx | asset_details | 73 |
      | collateral.xlsx | asset_details | 74 |
    When user modifies the saved collateral
    And user opens vehicle details section
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_vehicleDetails>" and row <Collateral_vehicleDetails_rowNum>
    And user fills mandatory fields of vehicle details
    And checks for duplicate collateral
    And user views the duplicate collateral
    And user selects collateral already attached to the same application
    And user saves the duplicate collateral
    Then user gets a proper notification
    #    			${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#	${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal"]}
    @Conventional
    @ImplementedBy-harshprit.kumar
    Examples:
      | CollateralWB    | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | CollateralSubType   |
      | collateral.xlsx | vehicle_details           | 250                              | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |

 # ${ProductType:["IPF"]}
#  ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
#  ${Category:["shares","bonds","metals"]}
    @Islamic
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | CollateralWB    | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | ProductType   | ApplicantType   | ApplicationStage   | Category   | Key | CollateralSubType   |
      | collateral.xlsx | vehicle_details           | 250                              | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |

  # ${ProductType:["IAF","IHF"]}
   # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | CollateralWB    | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | CollateralSubType   |
      | collateral.xlsx | vehicle_details           | 250                              | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |


    #FeatureID-ACAUTOCAS-230,ACAUTOCAS-244
  @ImplementedBy-aditya.tomar
    @Release
  Scenario Outline: ACAUTOCAS-4323:  Dedupe revalidation to identify and attach duplicate collaterals to different application
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<SecondaryApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<SecondaryApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user fills mandatory fields of  consumer vehicle
    And user checks the duplicates on collateral dedupe check
    And user clicks on save collateral to save CMS data
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum1>
    And user fills mandatory fields of  consumer vehicle
    And user checks the duplicates on collateral dedupe check
    And save the collateral data for modification
    And user edits the recently added collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    When user fills mandatory fields of  consumer vehicle
    And checks for duplicate collateral
    And user views the duplicate collateral
    And user select the "<CollateralSubType>" collateral from dedupe result which is not attached to the application
    And user saves selected dedupe collateral
    Then user gets a notification message
    #    			${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#	${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal"]}
    @Conventional
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_default_rowNum1 | ProductType   | ApplicationStage   | SecondaryApplicationStage | Key | Category | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | default            | 835                       | 832                        | <ProductType> | <ApplicationStage> | Post Approval             |     |          | <ApplicantType> | <CollateralSubType> |


 # ${ProductType:["IPF"]}
#  ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
#  ${Category:["shares","bonds","metals"]}
    @Islamic
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_default_rowNum1 | ProductType   | ApplicationStage   | SecondaryApplicationStage | Category   | Key | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | default            | 835                       | 832                        | <ProductType> | <ApplicationStage> | Post Approval             | <Category> |     | <ApplicantType> | <CollateralSubType> |

  # ${ProductType:["IAF","IHF"]}
   # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_default_rowNum1 | ProductType   | ApplicationStage   | SecondaryApplicationStage | Key | Category | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | default            | 835                       | 832                        | <ProductType> | <ApplicationStage> | Post Approval             |     |          | <ApplicantType> | <CollateralSubType> |


## Ignore duplicate and save - Ask for reason
#  #FeatureID-ACAUTOCAS-230,ACAUTOCAS-244
  Scenario Outline: ACAUTOCAS-4324:  Dedupe revalidation to identify and ignore duplicate collaterals of <CollateralSubType>
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<SecondaryApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<SecondaryApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user fills mandatory fields of  consumer vehicle
    And user checks the duplicates on collateral dedupe check
    And user clicks on save collateral to save CMS data
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum1>
    And user fills mandatory fields of  consumer vehicle
    And user checks the duplicates on collateral dedupe check
    And save the collateral data for modification
    And user edits the recently added collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    When user fills mandatory fields of  consumer vehicle
    And checks for duplicate collateral
    And user ignores the duplicate collaterals found
    And user clicks on save collateral
    Then user gets a notification message
    #    			${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#	${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal"]}
    @Conventional
    @ImplementedBy-aditya.tomar
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_default_rowNum1 | ProductType   | ApplicationStage   | SecondaryApplicationStage | Key | Category | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | default            | 836                       | 0                          | <ProductType> | <ApplicationStage> | Post Approval             |     |          | <ApplicantType> | <CollateralSubType> |


 # ${ProductType:["IPF"]}
#  ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
#  ${Category:["shares","bonds","metals"]}
    @Islamic
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_default_rowNum1 | ProductType   | ApplicationStage   | SecondaryApplicationStage | Category   | Key | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | default            | 836                       | 0                          | <ProductType> | <ApplicationStage> | Post Approval             | <Category> |     | <ApplicantType> | <CollateralSubType> |

  # ${ProductType:["IAF","IHF"]}
   # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_default_rowNum1 | ProductType   | ApplicationStage   | SecondaryApplicationStage | Key | Category | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | default            | 836                       | 0                          | <ProductType> | <ApplicationStage> | Post Approval             |     |          | <ApplicantType> | <CollateralSubType> |


