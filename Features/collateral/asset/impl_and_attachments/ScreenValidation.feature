@Epic-Secondary_Collateral
@AuthoredBy-rsurya.kumar
#CreateDate: 11th Apr 2024
#ScriptedBy:
#ReviewedBy:
#Scenarios: =
@Reconciled
@ReviewedSecCollateral
@Part-2

# ${CollSubType:["Implements and Attachments"]}
  #${CollateralSubType:["Ready Property"]}
Feature: Implements and Attachments Screen Validation

#  Pre-Requisites---
#  In this feature we will validate the screen layout when an Asset Implements and Attachments is attached to the loan application.
# PRODUCT_TYPE where secured_flag = 'Y'
#  PF	    Personal Finance
#  CL	    Consumer Loans
#  HL	    Home Loan
#  LAP	    Loan Against Property
#  CC	    Credit Card
#  CV	    Commercial Vehicle
#  EQUIPMNT	Equipment
#  MHL	    Micro Housing Finance
#  FE	    Farm Equipment
#  EDU	    Education Loan
#  AGRL	    Agriculture Loan
#  KCC	    Kisan Credit Card
#  JLG	    Joint Liability Group
#  CEQ	    Commercial Equipment
#  GL	    Gold Loan
#  FAS	    Finance Against Security
#  MULF	    Multi Facility
#  BD	    Bill Discounting
#  CashCred	Cash Credit
#  BL	    Business Loans
#  LC	    Letter of Credit
#  BG	    Bank Guarantee
  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0


#FeatureID-ACAUTOCAS-8108,CAS-22950
  Scenario Outline: ACAUTOCAS-8809: user validates <CollSubType> mapping with loan product at <ApplicationStage> for a <ProductType> application
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral
    When user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user selects collateral type along with collateral sub type
    Then application should allow values "FieldValues" in field "<FieldName>"
       #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal Initiation"]}
    # ${CollType:["Asset"]}
    @Conventional @Release
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | FieldName          | ProductType   | ApplicationStage   | CollSubType   | Key | Category | ApplicantType   |
      | collateral.xlsx | default            | 576                       | Collateral Type    | <ProductType> | <ApplicationStage> | <CollSubType> |     |          | <ApplicantType> |
      | collateral.xlsx | default            | 576                       | Collateral SubType | <ProductType> | <ApplicationStage> | <CollSubType> |     |          | <ApplicantType> |


     # ${ProductType:["IPF"]}
   # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
   # ${Category:["SHARES","BONDS","METALS"]}
    
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | FieldName          | ProductType   | ApplicationStage   | CollSubType   | Key | Category   |
      | collateral.xlsx | default            | 576                       | Collateral Type    | <ProductType> | <ApplicationStage> | <CollSubType> |     | <Category> |
      | collateral.xlsx | default            | 576                       | Collateral SubType | <ProductType> | <ApplicationStage> | <CollSubType> |     | <Category> |

#  # ${ProductType:["IAF","IHF"]}
#   # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | FieldName          | ProductType   | ApplicationStage   | CollSubType   | Key | Category | ApplicantType   |
      | collateral.xlsx | default            | 576                       | Collateral Type    | <ProductType> | <ApplicationStage> | <CollSubType> |     |          | <ApplicantType> |
      | collateral.xlsx | default            | 576                       | Collateral SubType | <ProductType> | <ApplicationStage> | <CollSubType> |     |          | <ApplicantType> |


#FeatureID-ACAUTOCAS-8108,CAS-22950
  Scenario Outline: ACAUTOCAS-8811:  screen validation for sections at <ApplicationStage> for a <ProductType> application
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral
    When user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user selects collateral type along with collateral sub type
    Then user should be able to see sections as below:
      | Collateral Details                 |
      | Asset Details                      |
      | Implements and Attachments Details |
      | Invoice Details                    |
      | Reason                             |
            #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal Initiation"]}
    # ${CollType:["Asset"]}
    @Conventional @Release
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | collateral.xlsx | default            | 576                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |


     # ${ProductType:["IPF"]}
   # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
   # ${Category:["SHARES","BONDS","METALS"]}
    
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   |
      | collateral.xlsx | default            | 576                       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |


  # ${ProductType:["IAF","IHF"]}
   # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | collateral.xlsx | default            | 576                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
    
#FeatureID-ACAUTOCAS-8108,CAS-22950,ACAUTOCAS-5615,CAS-97030
  Scenario Outline: ACAUTOCAS-8812:  screen validation for PPSR section at <ApplicationStage> for a <ProductType> application
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral
    When user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user selects collateral type along with collateral sub type
    Then user should not be able to see section:
      | PPSR Registration Details |
    			#${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
	#${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal Initiation"]}
    # PPSR accordion should be visible for ANZ region only
# config.ppsr.region.flag = True to Enable PPSR
    @Conventional @Release
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | collateral.xlsx | default            | 576                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |

     # ${ProductType:["IPF"]}
   # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
   # ${Category:["SHARES","BONDS","METALS"]}
    
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   |
      | collateral.xlsx | default            | 576                       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |

  # ${ProductType:["IAF","IHF"]}
   # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | collateral.xlsx | default            | 576                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |


#FeatureID-ACAUTOCAS-8108,CAS-22950
  Scenario Outline: ACAUTOCAS-8814:  collateral page field validation for new collateral entry at <ApplicationStage> for a <ProductType> application
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral
    When user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user selects collateral type along with collateral sub type
    Then user should be able to see fields with enabled status in collateral details:
      | Fields                   | Enabled |
      | Collateral ID            | No      |
      | Global Collateral Number | No      |
      | Collateral Type          | Yes     |
      | Collateral SubType       | Yes     |
      | Collateral Ref No        | Yes     |
      | Description              | Yes     |
    		#${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
	#${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal Initiation"]}
    # ${CollType:["Asset"]}
    @Conventional @Release
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | collateral.xlsx | default            | 576                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |


     # ${ProductType:["IPF"]}
   # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
   # ${Category:["SHARES","BONDS","METALS"]}
    
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   |
      | collateral.xlsx | default            | 576                       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |


  # ${ProductType:["IAF","IHF"]}
   # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | collateral.xlsx | default            | 576                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |


#FeatureID-ACAUTOCAS-8108,CAS-22950
  Scenario Outline: ACAUTOCAS-8815:  collateral page mandatory field validation for new collateral entry at <ApplicationStage> for a <ProductType> application
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral
    When user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user selects collateral type along with collateral sub type
    Then user should be able to see mandatory field tagging in collateral details:
      | Fields                   | Mandatory |
      | Collateral ID            | No        |
      | Global Collateral Number | No        |
      | Collateral Type          | Yes       |
      | Collateral SubType       | Yes       |
      | Collateral Ref No        | No        |
      | Description              | No        |
      			#${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
	#${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal Initiation"]}
      # ${CollType:["Asset"]}
    @Conventional @Release
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | collateral.xlsx | default            | 576                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |

     # ${ProductType:["IPF"]}
   # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
   # ${Category:["SHARES","BONDS","METALS"]}
    
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   |
      | collateral.xlsx | default            | 576                       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |


  # ${ProductType:["IAF","IHF"]}
   # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | collateral.xlsx | default            | 576                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |


#FeatureID-ACAUTOCAS-8108,CAS-22950
  Scenario Outline: ACAUTOCAS-8816:  collateral page field data type validation for new collateral entry at <ApplicationStage> for a <ProductType> application
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral
    When user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user selects collateral type along with collateral sub type
    Then user should be able to see fields with given data type in collateral details:
      | Fields                   | DataType |
      | Collateral ID            | Text     |
      | Global Collateral Number | Text     |
      | Collateral Type          | DropDown |
      | Collateral SubType       | DropDown |
      | Collateral Ref No        | Text     |
      | Description              | Text     |
      			#${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
	#${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal Initiation"]}
      # ${CollType:["Asset"]}
    @Conventional @Release
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | collateral.xlsx | default            | 576                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |


     # ${ProductType:["IPF"]}
   # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
   # ${Category:["SHARES","BONDS","METALS"]}
    
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   |
      | collateral.xlsx | default            | 576                       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |


  # ${ProductType:["IAF","IHF"]}
   # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | collateral.xlsx | default            | 576                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |

#FeatureID-ACAUTOCAS-8108,CAS-22950
  Scenario Outline: ACAUTOCAS-8817:  collateral page field label validation for new collateral entry at <ApplicationStage> for a <ProductType> application
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral
    When user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user selects collateral type along with collateral sub type
    Then user should be able to see collateral details fields with label as in workbook:
      | Collateral ID            | collateral.xlsx | implements_and_attachments | 0 |
      | Global Collateral Number | collateral.xlsx | implements_and_attachments | 1 |
      | Collateral Type          | collateral.xlsx | implements_and_attachments | 2 |
      | Collateral SubType       | collateral.xlsx | implements_and_attachments | 3 |
      | Collateral Ref No        | collateral.xlsx | implements_and_attachments | 4 |
      | Description              | collateral.xlsx | implements_and_attachments | 5 |
      			#${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
	#${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal Initiation"]}
      # ${CollType:["Asset"]}
    @Conventional @Release
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | collateral.xlsx | default            | 576                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |


     # ${ProductType:["IPF"]}
   # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
   # ${Category:["SHARES","BONDS","METALS"]}
    
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   |
      | collateral.xlsx | default            | 576                       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |


  # ${ProductType:["IAF","IHF"]}
   # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | collateral.xlsx | default            | 576                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |


#FeatureID-ACAUTOCAS-8108,CAS-22950
  Scenario Outline: ACAUTOCAS-8821:  collateral page field validation for section Collateral Details at <ApplicationStage> for a <ProductType> application
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user selects collateral type along with collateral sub type
    Then user should be able to see fields with enabled status in asset details:
      | Fields                       | Enabled |
      | Asset Category               | Yes     |
      | Manufacturer                 | Yes     |
      | Asset Model                  | Yes     |
      | Asset Variant                | Yes     |
      | Asset Level                  | Yes     |
      | OLV Grid Value               | Yes     |
      | Insured Declared Value       | Yes     |
      | Accepted Value               | No      |
      | Overall Evaluated Value Type | Yes     |
      | Overall Accepted Value       | No      |
      | Asset Usage                  | Yes     |
      | Asset Location               | Yes     |
      | Asset Cost                   | Yes     |
      | Revaluation Date             | No      |
      | Reverification Date          | No      |
    			#${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
	#${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal Initiation"]}
    # ${CollType:["Asset"]}
    @Conventional @Release
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | collateral.xlsx | default            | 576                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |


     # ${ProductType:["IPF"]}
   # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
   # ${Category:["SHARES","BONDS","METALS"]}
    
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   |
      | collateral.xlsx | default            | 576                       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |


  # ${ProductType:["IAF","IHF"]}
   # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | collateral.xlsx | default            | 576                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |


#FeatureID-ACAUTOCAS-8108,CAS-22950
  Scenario Outline: ACAUTOCAS-8822:  collateral page field data type validation for section Collateral Details at <ApplicationStage> for a <ProductType> application
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral
    When user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user selects collateral type along with collateral sub type
    Then user should be able to see fields with given data type in asset details:
      | Fields                       | DataType |
      | Asset Category               | DropDown |
      | Manufacturer                 | DropDown |
      | Asset Model                  | DropDown |
      | Asset Variant                | DropDown |
      | Asset Level                  | DropDown |
      | OLV Grid Value               | Text     |
      | Insured Declared Value       | Text     |
      | Accepted Value               | Text     |
      | Overall Evaluated Value Type | DropDown |
      | Overall Accepted Value       | Text     |
      | Asset Usage                  | Text     |
      | Asset Location               | Text     |
      | Asset Cost                   | Text     |
      | Revaluation Date             | Text     |
      | Reverification Date          | Text     |
      			#${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
	#${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal Initiation"]}
      # ${CollType:["Asset"]}
    @Conventional @Release
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | collateral.xlsx | default            | 576                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |



     # ${ProductType:["IPF"]}
   # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
   # ${Category:["SHARES","BONDS","METALS"]}
    
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   |
      | collateral.xlsx | default            | 576                       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |


  # ${ProductType:["IAF","IHF"]}
   # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | collateral.xlsx | default            | 576                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |


#FeatureID-ACAUTOCAS-8108,CAS-22950
  Scenario Outline: ACAUTOCAS-8823:  collateral page field label validation for section Collateral Details at <ApplicationStage> for a <ProductType> application
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral
    When user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user selects collateral type along with collateral sub type
    Then user should be able to see asset details fields with label
      | Asset Category               | collateral.xlsx | implements_and_attachments | 6  |
      | Manufacturer                 | collateral.xlsx | implements_and_attachments | 7  |
      | Asset Model                  | collateral.xlsx | implements_and_attachments | 8  |
      | Asset Variant                | collateral.xlsx | implements_and_attachments | 9  |
      | Asset Level                  | collateral.xlsx | implements_and_attachments | 10 |
      | OLV Grid Value               | collateral.xlsx | implements_and_attachments | 11 |
      | Insured Declared Value       | collateral.xlsx | implements_and_attachments | 12 |
      | Accepted Value               | collateral.xlsx | implements_and_attachments | 13 |
      | Overall Evaluated Value Type | collateral.xlsx | implements_and_attachments | 14 |
      | Overall Accepted Value       | collateral.xlsx | implements_and_attachments | 15 |
      | Asset Usage                  | collateral.xlsx | implements_and_attachments | 16 |
      | Asset Location               | collateral.xlsx | implements_and_attachments | 17 |
      | Asset Cost                   | collateral.xlsx | implements_and_attachments | 18 |
      | Revaluation Date             | collateral.xlsx | implements_and_attachments | 19 |
      | Reverification Date          | collateral.xlsx | implements_and_attachments | 20 |
      			#${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
	#${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal Initiation"]}
    # ${CollType:["Asset"]}
    @Conventional @Release
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | collateral.xlsx | default            | 576                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |


     # ${ProductType:["IPF"]}
   # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
   # ${Category:["SHARES","BONDS","METALS"]}
    
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   |
      | collateral.xlsx | default            | 576                       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |


  # ${ProductType:["IAF","IHF"]}
   # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | collateral.xlsx | default            | 576                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |


#FeatureID-ACAUTOCAS-8108,CAS-22950
  Scenario Outline: ACAUTOCAS-8824:  collateral page mandatory field validation for section Collateral Details at <ApplicationStage> for a <ProductType> application
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral
    When user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user selects collateral type along with collateral sub type
    Then user should be able to see mandatory field tagging in asset details:
      | Fields                       | Mandatory |
      | Asset Category               | Yes       |
      | Manufacturer                 | Yes       |
      | Asset Model                  | Yes       |
      | Asset Variant                | No        |
      | Asset Level                  | No        |
      | OLV Grid Value               | No        |
      | Insured Declared Value       | No        |
      | Accepted Value               | No        |
      | Overall Evaluated Value Type | No        |
      | Overall Accepted Value       | No        |
      | Asset Usage                  | No        |
      | Asset Location               | No        |
      | Asset Cost                   | Yes       |
      | Revaluation Date             | No        |
      | Reverification Date          | No        |
    			#${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
	#${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal Initiation"]}
    # ${CollType:["Asset"]}
    @Conventional @Release
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | collateral.xlsx | default            | 576                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |


     # ${ProductType:["IPF"]}
   # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
   # ${Category:["SHARES","BONDS","METALS"]}
    
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   |
      | collateral.xlsx | default            | 576                       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |


  # ${ProductType:["IAF","IHF"]}
   # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | collateral.xlsx | default            | 576                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |


  @SkippedFormatValidation
# ${ ProductType : ["PF","MAL","HL","LAP","CV","MHL","FE","EDU","AGRL","JLG","CEQ","MULF","BD","CashCred","BL","LC","BG"]}
# ${ApplicationStage:["DDE","Recommendation"]}
# ${CollType:["Asset"]}
# ${CollSubType:["Implements and Attachments"]}
#FeatureID-ACAUTOCAS-8108,CAS-22950
  Scenario Outline: ACAUTOCAS-8825:  collateral page field data format validation for section Collateral Details at <ApplicationStage> for a <ProductType> application
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral
    When user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user selects collateral type along with collateral sub type
    Then user should be able to see fields with given data format in asset details:
      | Fields              | DataFormat   |
      | Revaluation Date    | "DateFormat" |
      | Reverification Date | "DateFormat" |
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | collateral.xlsx | default            | 576                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |

  @SkippedFormatValidation
    @NotImplementable
# ${ ProductType : ["PF","MAL","HL","LAP","CV","MHL","FE","EDU","AGRL","JLG","CEQ","MULF","BD","CashCred","BL","LC","BG"]}
# ${ApplicationStage:["Credit Approval"]}
# ${CollType:["Asset"]}
# ${CollSubType:["Implements and Attachments"]}
#FeatureID-ACAUTOCAS-8108,CAS-22950
  Scenario Outline:  ACAUTOCAS-8829: collateral page field data format validation for section Collateral Details at credit approval for a <ProductType> application
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral
    When user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user selects collateral type along with collateral sub type
    Then user should be able to see fields with given data format in asset details:
      | Fields              | DataFormat   |
      | Revaluation Date    | "DateFormat" |
      | Reverification Date | "DateFormat" |
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | collateral.xlsx | default            | 576                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |

############################################################################################################
#FeatureID-ACAUTOCAS-8108,CAS-22950
  Scenario Outline:  ACAUTOCAS-8830: collateral page field validation for section Implements and Attachments Details at <ApplicationStage> for a <ProductType> application
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral
    When user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user selects collateral type along with collateral sub type
    And user navigates to Implements and Attachments Details
    Then user should be able to see fields with enabled status in implements and attachments details:
      | Fields                                     | Enabled |
      | VIN Number                                 | Yes     |
      | Registration Number                        | Yes     |
      | Registration Date                          | Yes     |
      | Registration Transport Office              | Yes     |
      | Registration in Name of                    | Yes     |
      | Registration Expiry Date                   | Yes     |
      | Remarks Implements and Attachments Details | Yes     |
      | Color                                      | Yes     |
      | Year of Manufacture (Month)                | Yes     |
      | Year of Manufacture (Year)                 | Yes     |
      | State                                      | Yes     |
      | Color Type                                 | Yes     |
    		#${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
	#${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal Initiation"]}
    # ${CollType:["Asset"]}
    @Conventional @Release
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | collateral.xlsx | default            | 576                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |


     # ${ProductType:["IPF"]}
   # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
   # ${Category:["SHARES","BONDS","METALS"]}
    
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   |
      | collateral.xlsx | default            | 576                       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |


  # ${ProductType:["IAF","IHF"]}
   # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | collateral.xlsx | default            | 576                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |


#FeatureID-ACAUTOCAS-8108,CAS-22950
  Scenario Outline:  ACAUTOCAS-8831: collateral page field data type validation for section Implements and Attachments Details at credit approval for a <ProductType> application
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral
    When user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user selects collateral type along with collateral sub type
    And user navigates to Implements and Attachments Details
    Then user should be able to see fields with given data type in implements and attachments details:
      | Fields                                     | DataType |
      | VIN Number                                 | Text     |
      | Registration Number                        | Text     |
      | Registration Date                          | Text     |
      | Registration Transport Office              | Text     |
      | Registration in Name of                    | Text     |
      | Registration Expiry Date                   | Text     |
      | Remarks Implements and Attachments Details | TextArea |
      | Color                                      | Text     |
      | Year of Manufacture (Month)                | Text     |
      | Year of Manufacture (Year)                 | Text     |
      | State                                      | Text     |
      | Color Type                                 | DropDown |
      		#${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
	#${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal Initiation"]}
      # ${CollType:["Asset"]}
    @Conventional @Release
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | collateral.xlsx | default            | 576                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |


     # ${ProductType:["IPF"]}
   # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
   # ${Category:["SHARES","BONDS","METALS"]}
    
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   |
      | collateral.xlsx | default            | 576                       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |


  # ${ProductType:["IAF","IHF"]}
   # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | collateral.xlsx | default            | 576                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |


#FeatureID-ACAUTOCAS-8108,CAS-22950
  Scenario Outline:  ACAUTOCAS-8832: collateral page field label validation for section Implements and Attachments Details at <ApplicationStage> for a <ProductType> application
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral
    When user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user selects collateral type along with collateral sub type
    And user navigates to Implements and Attachments Details
    Then user should be able to see implements and attachments details fields with label:
      | VIN Number                    | collateral.xlsx | implements_and_attachments | 21 |
      | Registration Number           | collateral.xlsx | implements_and_attachments | 22 |
      | Registration Date             | collateral.xlsx | implements_and_attachments | 23 |
      | Registration Transport Office | collateral.xlsx | implements_and_attachments | 24 |
      | Registration in Name of       | collateral.xlsx | implements_and_attachments | 25 |
      | Registration Expiry Date      | collateral.xlsx | implements_and_attachments | 26 |
      | Remarks                       | collateral.xlsx | implements_and_attachments | 27 |
      | Color                         | collateral.xlsx | implements_and_attachments | 28 |
      | Year of Manufacture (Month)   | collateral.xlsx | implements_and_attachments | 29 |
      | State                         | collateral.xlsx | implements_and_attachments | 30 |
      | Color Type                    | collateral.xlsx | implements_and_attachments | 31 |
      			#${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
	#${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal Initiation"]}
      # ${CollType:["Asset"]}
    @Conventional @Release
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | collateral.xlsx | default            | 576                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |


     # ${ProductType:["IPF"]}
   # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
   # ${Category:["SHARES","BONDS","METALS"]}
    
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   |
      | collateral.xlsx | default            | 576                       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |


  # ${ProductType:["IAF","IHF"]}
   # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | collateral.xlsx | default            | 576                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |


#FeatureID-ACAUTOCAS-8108,CAS-22950
  Scenario Outline:  ACAUTOCAS-8833: collateral page mandatory field validation for section Implements and Attachments Details at <ApplicationStage> for a <ProductType> application
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral
    When user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user selects collateral type along with collateral sub type
    And user navigates to Implements and Attachments Details
    Then user should be able to see mandatory field tagging in implements and attachments details:
      | Fields                        | Mandatory |
      | VIN Number                    | No        |
      | Registration Number           | No        |
      | Registration Date             | No        |
      | Registration Transport Office | No        |
      | Registration in Name of       | No        |
      | Registration Expiry Date      | No        |
      | Remarks                       | No        |
      | Color                         | No        |
      | Year of Manufacture (Month)   | No        |
      | Year of Manufacture (Year)    | No        |
      | State                         | No        |
      | Color Type                    | No        |
    			#${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
	#${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal Initiation"]}
    # ${CollType:["Asset"]}
    @Conventional @Release
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | collateral.xlsx | default            | 576                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |


     # ${ProductType:["IPF"]}
   # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
   # ${Category:["SHARES","BONDS","METALS"]}
    
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   |
      | collateral.xlsx | default            | 576                       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |


  # ${ProductType:["IAF","IHF"]}
   # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | collateral.xlsx | default            | 576                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |

  @SkippedFormatValidation
    @NotImplementable
# ${ ProductType : ["PF","MAL","HL","LAP","CV","MHL","FE","EDU","AGRL","JLG","CEQ","MULF","BD","CashCred","BL","LC","BG"]}
# ${ApplicationStage:["DDE","Recommendation"]}
# ${CollType:["Asset"]}
# ${CollSubType:["Implements and Attachments"]}
#FeatureID-ACAUTOCAS-8108,CAS-22950
  Scenario Outline: ACAUTOCAS-8834: collateral page field data format validation for section Implements and Attachments Details at <ApplicationStage> for a <ProductType> application
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral
    When user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user selects collateral type along with collateral sub type
    And user navigates to Implements and Attachments Details
    Then user should be able to see fields with given data format in implements and attachments details:
      | Fields                   | DataFormat   |
      | Registration Date        | "DateFormat" |
      | Registration Expiry Date | "DateFormat" |
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | collateral.xlsx | default            | 576                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |


#FeatureID-ACAUTOCAS-8108,CAS-22950,ACAUTOCAS-5615,CAS-86272
  Scenario Outline: ACAUTOCAS-8835: screen validation for RC Authentication button at <ApplicationStage> for a <ProductType> application
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral
    When user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user selects collateral type along with collateral sub type
    Then user should not be able to see button:
      | Button            |
      | RC Authentication |
    			#${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
	#${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal Initiation"]}
    @Conventional @Release
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | collateral.xlsx | default            | 576                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |


     # ${ProductType:["IPF"]}
   # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
   # ${Category:["SHARES","BONDS","METALS"]}
    
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   |
      | collateral.xlsx | default            | 576                       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |


  # ${ProductType:["IAF","IHF"]}
   # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | collateral.xlsx | default            | 576                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |


#FeatureID-ACAUTOCAS-8108,CAS-22950,ACAUTOCAS-5615,CAS-86272
  Scenario Outline: ACAUTOCAS-8836: screen validation for RC Authentication section at <ApplicationStage> for a <ProductType> application
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral
    When user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user selects collateral type along with collateral sub type
    Then user should not be able to see section:
      | Sections                  |
      | RC Authentication Details |
    			#${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
	#${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal Initiation"]}
    # ${CollType:["Asset"]}
    @Conventional @Release
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | collateral.xlsx | default            | 576                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |


     # ${ProductType:["IPF"]}
   # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
   # ${Category:["SHARES","BONDS","METALS"]}
    
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   |
      | collateral.xlsx | default            | 576                       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |


  # ${ProductType:["IAF","IHF"]}
   # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | collateral.xlsx | default            | 576                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |



#FeatureID-ACAUTOCAS-8108,CAS-22950
  Scenario Outline: ACAUTOCAS-8843: collateral page field validation for section Reason at <ApplicationStage> for a <ProductType> application
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral
    When user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user selects collateral type along with collateral sub type
    Then user should be able to see fields with enabled status in Reason:
      | Fields             | Enabled |
      | Reason Code        | No      |
      | Reason Description | No      |
      | Remarks            | No      |
    			#${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
	#${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal Initiation"]}
    @Conventional @Release
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | collateral.xlsx | default            | 576                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |



     # ${ProductType:["IPF"]}
   # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
   # ${Category:["SHARES","BONDS","METALS"]}
    
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   |
      | collateral.xlsx | default            | 576                       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |


  # ${ProductType:["IAF","IHF"]}
   # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | collateral.xlsx | default            | 576                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |


#FeatureID-ACAUTOCAS-8108,CAS-22950
  Scenario Outline: ACAUTOCAS-8844: collateral page field data type validation for section Reason at <ApplicationStage> for a <ProductType> application
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral
    When user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user selects collateral type along with collateral sub type
    Then user should be able to see fields with given data type in Reason:
      | Fields             | DataType |
      | Reason Code        | DropDown |
      | Reason Description | Text     |
      | Remarks            | TextArea |
      			#${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
	#${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal Initiation"]}
    @Conventional @Release
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | collateral.xlsx | default            | 576                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |


     # ${ProductType:["IPF"]}
   # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
   # ${Category:["SHARES","BONDS","METALS"]}
    
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   |
      | collateral.xlsx | default            | 576                       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |


  # ${ProductType:["IAF","IHF"]}
   # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | collateral.xlsx | default            | 576                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |


#FeatureID-ACAUTOCAS-8108,CAS-22950
  Scenario Outline: ACAUTOCAS-8845: collateral page field label validation for section Reason at <ApplicationStage> for a <ProductType> application
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral
    When user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user selects collateral type along with collateral sub type
    Then user should be able to see Reason fields with label:
      | Reason Code        | collateral.xlsx | implements_and_attachments | 39 |
      | Reason Description | collateral.xlsx | implements_and_attachments | 40 |
      | Remarks            | collateral.xlsx | implements_and_attachments | 41 |
      		#${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
	#${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal Initiation"]}
    @Conventional @Release
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | collateral.xlsx | default            | 576                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |

     # ${ProductType:["IPF"]}
   # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
   # ${Category:["SHARES","BONDS","METALS"]}
    
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   |
      | collateral.xlsx | default            | 576                       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |

  # ${ProductType:["IAF","IHF"]}
   # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | collateral.xlsx | default            | 576                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |


#FeatureID-ACAUTOCAS-8108,CAS-22950
  Scenario Outline: ACAUTOCAS-8846: collateral page mandatory field validation for section Reason at <ApplicationStage> for a <ProductType> application
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral
    When user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user selects collateral type along with collateral sub type
    Then user should be able to see mandatory field tagging in Reason section:
      | Fields             | Mandatory |
      | Reason Code        | No        |
      | Reason Description | No        |
      | Remarks            | No        |
    			#${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
	#${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal Initiation"]}
    @Conventional @Release
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | collateral.xlsx | default            | 576                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |

    
     # ${ProductType:["IPF"]}
   # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
   # ${Category:["SHARES","BONDS","METALS"]}
    
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   |
      | collateral.xlsx | default            | 576                       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |


  # ${ProductType:["IAF","IHF"]}
   # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | collateral.xlsx | default            | 576                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
    
    