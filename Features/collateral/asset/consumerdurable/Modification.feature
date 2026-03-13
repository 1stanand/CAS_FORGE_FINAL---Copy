@Epic-Secondary_Collateral
@AuthoredBy-rsurya.kumar
@ReviewedBy-None
@ReviewedByDEV
@Sanity
@ReviewedSecCollateral
@Part-2 @Release

  #${CollateralSubType:["Consumer Durable"]}
#${ApplicantType:["indiv","nonindiv"]}
Feature: Consumer Durable Modification

#  Pre-Requisites---
#  In this feature we will attach an Asset Consumer Durable to the loan application.

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0

  Scenario Outline: ACAUTOCAS-2122: Deleting a <CollateralSubType> attached to the application
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user closes duplicate check result box after checking the duplicates
    And user fills Reason Section
    And user saves the Collateral Details
    When user deletes the saved collateral
    Then user should be able to successfully delete the collateral
#    			${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#	${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal"]}
    @Conventional
    @ImplementedBy-harshprit.singh
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | CollateralSubType   |
      | collateral.xlsx | default            | 1                         | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |

       # ${ProductType:["IPF"]}
   # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
   # ${Category:["shares","bonds","metals"]}
    @Islamic
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicantType   | ApplicationStage   | Category   | Key | CollateralSubType   |
      | collateral.xlsx | default            | 1                         | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |


  # ${ProductType:["IAF","IHF"]}
   # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | CollateralSubType   |
      | collateral.xlsx | default            | 1                         | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |


  Scenario Outline: ACAUTOCAS-2937: <CollateralSubType> Data Modification of <FieldName> in Asset Details
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user closes duplicate check result box after checking the duplicates
    And user fills Reason Section
    And user saves the Collateral Details
    When user modifies the saved collateral
    Then user should be able to modify the data in field "<FieldName>"
      			#${ProductType:["PF","HL","MAL","BG","LC","BLldName","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
	#${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal"]}
    @Conventional
    @ImplementedBy-harshprit.kumar
    Examples:
      | FieldName                    | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | CollateralSubType   |
      | OLV Grid Value               | collateral.xlsx | default            | 1                         | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Insured Declared Value       | collateral.xlsx | default            | 1                         | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Overall Accepted Type        | collateral.xlsx | default            | 1                         | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Asset Usage                  | collateral.xlsx | default            | 1                         | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Asset Location               | collateral.xlsx | default            | 1                         | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Asset Serial Number          | collateral.xlsx | default            | 1                         | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Asset Number                 | collateral.xlsx | default            | 1                         | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Year of Manufacture of Asset | collateral.xlsx | default            | 1                         | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Color of Asset               | collateral.xlsx | default            | 1                         | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Asset Capacity               | collateral.xlsx | default            | 1                         | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Asset Cost                   | collateral.xlsx | default            | 1                         | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Asset Category               | collateral.xlsx | default            | 1                         | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Manufacturer                 | collateral.xlsx | default            | 1                         | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Asset Model                  | collateral.xlsx | default            | 1                         | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Asset Variant                | collateral.xlsx | default            | 1                         | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Asset Level                  | collateral.xlsx | default            | 1                         | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Accepted Value               | collateral.xlsx | default            | 1                         | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Overall Evaluated Value Type | collateral.xlsx | default            | 1                         | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |


     # ${ProductType:["IPF"]}
   # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
   # ${Category:["shares","bonds","metals"]}
    @Islamic
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | FieldName                    | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicantType   | ApplicationStage   | Category   | Key | CollateralSubType   |
      | OLV Grid Value               | collateral.xlsx | default            | 1                         | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Insured Declared Value       | collateral.xlsx | default            | 1                         | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Overall Accepted Type        | collateral.xlsx | default            | 1                         | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Asset Usage                  | collateral.xlsx | default            | 1                         | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Asset Location               | collateral.xlsx | default            | 1                         | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Asset Serial Number          | collateral.xlsx | default            | 1                         | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Asset Number                 | collateral.xlsx | default            | 1                         | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Year of Manufacture of Asset | collateral.xlsx | default            | 1                         | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Color of Asset               | collateral.xlsx | default            | 1                         | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Asset Capacity               | collateral.xlsx | default            | 1                         | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Asset Cost                   | collateral.xlsx | default            | 1                         | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Asset Category               | collateral.xlsx | default            | 1                         | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Manufacturer                 | collateral.xlsx | default            | 1                         | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Asset Model                  | collateral.xlsx | default            | 1                         | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Asset Variant                | collateral.xlsx | default            | 1                         | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Asset Level                  | collateral.xlsx | default            | 1                         | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Accepted Value               | collateral.xlsx | default            | 1                         | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Overall Evaluated Value Type | collateral.xlsx | default            | 1                         | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |


  # ${ProductType:["IAF","IHF"]}
   # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | FieldName                    | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | CollateralSubType   |
      | OLV Grid Value               | collateral.xlsx | default            | 1                         | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Insured Declared Value       | collateral.xlsx | default            | 1                         | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Overall Accepted Type        | collateral.xlsx | default            | 1                         | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Asset Usage                  | collateral.xlsx | default            | 1                         | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Asset Location               | collateral.xlsx | default            | 1                         | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Asset Serial Number          | collateral.xlsx | default            | 1                         | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Asset Number                 | collateral.xlsx | default            | 1                         | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Year of Manufacture of Asset | collateral.xlsx | default            | 1                         | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Color of Asset               | collateral.xlsx | default            | 1                         | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Asset Capacity               | collateral.xlsx | default            | 1                         | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Asset Cost                   | collateral.xlsx | default            | 1                         | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Asset Category               | collateral.xlsx | default            | 1                         | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Manufacturer                 | collateral.xlsx | default            | 1                         | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Asset Model                  | collateral.xlsx | default            | 1                         | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Asset Variant                | collateral.xlsx | default            | 1                         | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Asset Level                  | collateral.xlsx | default            | 1                         | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Accepted Value               | collateral.xlsx | default            | 1                         | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Overall Evaluated Value Type | collateral.xlsx | default            | 1                         | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |


  Scenario Outline: ACAUTOCAS-2938: <CollateralSubType> restrictions in Data Modification of <FieldName>
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user closes duplicate check result box after checking the duplicates
    And user fills Reason Section
    And user saves the Collateral Details
    When user modifies the saved collateral
    Then user should not be able to modify the data in "<FieldName>" field
      			#${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
	#${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal"]}
    @Conventional
    @ImplementedBy-harshprit.kumar
    Examples:
      | FieldName                | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | CollateralSubType   |
      | Collateral ID            | collateral.xlsx | default            | 1                         | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Global Collateral Number | collateral.xlsx | default            | 1                         | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Collateral Type          | collateral.xlsx | default            | 1                         | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Collateral SubType       | collateral.xlsx | default            | 1                         | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |


     # ${ProductType:["IPF"]}
   # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
   # ${Category:["shares","bonds","metals"]}
    @Islamic
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | FieldName                | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicantType   | ApplicationStage   | Category   | Key | CollateralSubType   |
      | Collateral ID            | collateral.xlsx | default            | 1                         | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Global Collateral Number | collateral.xlsx | default            | 1                         | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Collateral Type          | collateral.xlsx | default            | 1                         | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |
      | Collateral SubType       | collateral.xlsx | default            | 1                         | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |


  # ${ProductType:["IAF","IHF"]}
   # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | FieldName                | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | CollateralSubType   |
      | Collateral ID            | collateral.xlsx | default            | 1                         | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Global Collateral Number | collateral.xlsx | default            | 1                         | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Collateral Type          | collateral.xlsx | default            | 1                         | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |
      | Collateral SubType       | collateral.xlsx | default            | 1                         | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |


#FeatureID-ACAUTOCAS-232
  Scenario Outline: ACAUTOCAS-4308:  <CollateralSubType> Data Modification in Asset Details
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user selects collateral type along with collateral sub type
    And user fills all fields of home page of collateral details for given collateral sub type
    And user closes duplicate check result box after checking the duplicates
    And user fills Reason Section
    And user saves the Collateral Details
    When user modifies the saved collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum2>
    And user fills all fields of home page of collateral details for given collateral sub type
    And user saves the Collateral Details
    Then user gets a proper notification message
#    			#${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#	#${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal"]}
    @Conventional
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_default_rowNum2 | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | CollateralSubType   |
      | collateral.xlsx | default            | 597                       | 598                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |


     # ${ProductType:["IPF"]}
   # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
   # ${Category:["shares","bonds","metals"]}
    @Islamic
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_default_rowNum2 | ProductType   | ApplicantType   | ApplicationStage   | Category   | Key | CollateralSubType   |
      | collateral.xlsx | default            | 597                       | 598                        | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |


#  # ${ProductType:["IAF","IHF"]}
#   # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_default_rowNum2 | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | CollateralSubType   |
      | collateral.xlsx | default            | 597                       | 598                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |

###Dedupe Check
#  #FeatureID-ACAUTOCAS-232,ACAUTOCAS-244
  Scenario Outline: ACAUTOCAS-4309:  <CollateralSubType> Data Modification in Asset Details for dedupe revalidation
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user closes duplicate check result box after checking the duplicates
    And user fills Reason Section
    And user saves the Collateral Details
    When user modifies the saved collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum2>
    And user modify the Asset Number in asset details
    And user saves the data
    Then User should get a proper message
    			#${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
	#${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal"]}
    @Conventional
    @ImplementedBy-harshprit.kumar
    @LoggedBug
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_default_rowNum2 | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | CollateralSubType   |
      | collateral.xlsx | default            | 1                         | 1                          | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |


     # ${ProductType:["IPF"]}
   # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
   # ${Category:["shares","bonds","metals"]}
    @Islamic
    @ImplementedBy-priyanshu.kashyap
    @LoggedBug
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_default_rowNum2 | ProductType | ApplicantType | ApplicationStage | Category   | Key | CollateralSubType   |
      | collateral.xlsx | default            | 130                       | 296                        | IPF         | indiv         | DDE              | <Category> |     | <CollateralSubType> |


  # ${ProductType:["IAF","IHF"]}
   # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic
    @ImplementedBy-priyanshu.kashyap
    @LoggedBug
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_default_rowNum2 | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | CollateralSubType   |
      | collateral.xlsx | default            | 1                         | 1                          | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |


#  #FeatureID-ACAUTOCAS-232,ACAUTOCAS-244
  Scenario Outline: ACAUTOCAS-4310:  Dedupe revalidation to identify duplicate collaterals of Consumer Durable
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user checks the duplicates on collateral dedupe check
    And user saves the Collateral Details
    When user attempts to modify collateral based on "Consumer Durable"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum2>
    And user modify the Asset Number in asset details
    And checks for duplicate collateral
    Then user should get message saying "<ErrorMessage>"
    			#${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
	#${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal"]}
    @Conventional
    @ImplementedBy-pallavi.singh
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_default_rowNum2 | ErrorMessage       | ProductType   | ApplicantType   | ApplicationStage   | Category | Key |
      | collateral.xlsx | default            | 349                       | 350                        | 1 Duplicates Found | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |

     # ${ProductType:["IPF"]}
   # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
   # ${Category:["shares","bonds","metals"]}
    @Islamic
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_default_rowNum2 | ErrorMessage       | ProductType   | ApplicantType   | ApplicationStage   | Category   | Key |
      | collateral.xlsx | default            | 349                       | 350                        | 1 Duplicates Found | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     |


  # ${ProductType:["IAF","IHF"]}
   # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_default_rowNum2 | ErrorMessage       | ProductType   | ApplicantType   | ApplicationStage   | Category | Key |
      | collateral.xlsx | default            | 349                       | 350                        | 1 Duplicates Found | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |


#  #FeatureID-ACAUTOCAS-232,ACAUTOCAS-244
  Scenario Outline: ACAUTOCAS-4312:  Dedupe revalidation to identify and attach duplicate collaterals to the same application
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user adds asset type collateral of "<CollateralSubType>" subtype
      | collateral.xlsx | asset_details | 77 |
      | collateral.xlsx | asset_details | 78 |
    When user modifies the saved collateral
    And user modify the Asset Number in asset details
    And checks for duplicate collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user views the duplicate collateral
    And user selects collateral already attached to the same application
    And user saves the duplicate collateral
    Then user gets a proper notification
    			#${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
	#${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal"]}
    @Conventional
    @ImplementedBy-harshprit.kumar
    @LoggedBug
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | CollateralSubType   |
      | collateral.xlsx | default            | 601                       | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |


     # ${ProductType:["IPF"]}
   # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
   # ${Category:["shares","bonds","metals"]}
    @Islamic
    @ImplementedBy-priyanshu.kashyap
    @LoggedBug
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicantType   | ApplicationStage   | Category   | Key | CollateralSubType   |
      | collateral.xlsx | default            | 601                       | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |


  # ${ProductType:["IAF","IHF"]}
   # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic
    @ImplementedBy-priyanshu.kashyap
    @LoggedBug
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | CollateralSubType   |
      | collateral.xlsx | default            | 601                       | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |



        #FeatureID-ACAUTOCAS-232,ACAUTOCAS-244
  Scenario Outline: ACAUTOCAS-4313:  Dedupe revalidation to identify and attach duplicate collaterals to different application
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "collateral.xlsx" under sheet "default" and row 761
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user checks the duplicates on collateral dedupe check
    And user clicks on save collateral to save CMS data
    When user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "collateral.xlsx" under sheet "default" and row 762
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And checks for duplicate collateral
    And user views the duplicate collateral
    And user select the "Consumer Durable" collateral from dedupe result which is not attached to the application
    And user saves selected dedupe collateral
    Then user is able to save data successfully with "<Orig Global Collateral No>"
    			#${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
	#${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal"]}
    @Conventional
    @ImplementedBy-pallavi.singh
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |


     # ${ProductType:["IPF"]}
   # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
   # ${Category:["shares","bonds","metals"]}
    @Islamic
    @ImplementedBy-priyanshu.kashyap
    @Perishable
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     |


  # ${ProductType:["IAF","IHF"]}
   # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |


#
## Ignore duplicate and save - Ask for reason
#  #FeatureID-ACAUTOCAS-232,ACAUTOCAS-244
  Scenario Outline: ACAUTOCAS-4314:  Dedupe revalidation to identify and ignore duplicate collaterals of <CollateralSubType>
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user checks the duplicates on collateral dedupe check
    And user saves the Collateral Details
    When user attempts to modify collateral based on "<CollateralSubType>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum2>
    And user modify the Asset Number in asset details
    And checks for duplicate collateral
    And user checks ok button in dedupe
    Then user is asked to enter the reason of ignoring duplicates
    			#${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
	#${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal"]}
    @Conventional
    @ImplementedBy-pallavi.singh
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_default_rowNum2 | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | CollateralSubType   |
      | collateral.xlsx | default            | 349                       | 350                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |


     # ${ProductType:["IPF"]}
   # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
   # ${Category:["shares","bonds","metals"]}
    @Islamic
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_default_rowNum2 | ProductType   | ApplicantType   | ApplicationStage   | Category   | Key | CollateralSubType   |
      | collateral.xlsx | default            | 349                       | 350                        | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | <CollateralSubType> |


  # ${ProductType:["IAF","IHF"]}
   # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_default_rowNum2 | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | CollateralSubType   |
      | collateral.xlsx | default            | 349                       | 350                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <CollateralSubType> |

    #FeatureID-ACAUTOCAS-5077,ACAUTOCAS-234,ACAUTOCAS-232,ACAUTOCAS-233,ACAUTOCAS-231,ACAUTOCAS-230,ACAUTOCAS-8108
  Scenario Outline: ACAUTOCAS-11566:  Collateral page modification validation for "<CollateralSubType>" at "<CERSAIRowNumber>" for "<ValidationField>" at Disbursal Author stage
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "collateral.xlsx" under sheet "default" and row 349
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user checks the duplicates on collateral dedupe check
    And user saves the Collateral Details
    And user moves from "<ApplicationStage>" to application of "<ProductType>" product type as "<ApplicantType>" applicant at "Disbursal Author" for "<Category>" with "<Key>" stage
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "Disbursal Author" for "<Category>" with "<Key>" from application grid
    When user navigates to the collateral page at disbursal stage
    Then user should not be able to modify collateral
    			#${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
	#${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal"]}
    @Conventional
    @ImplementedBy-pallavi.singh
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |


     # ${ProductType:["IPF"]}
   # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
   # ${Category:["shares","bonds","metals"]}
    @Islamic
    @ImplementedBy-priyanshu.kashyap
    @Perishable
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     |


  # ${ProductType:["IAF","IHF"]}
   # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |

