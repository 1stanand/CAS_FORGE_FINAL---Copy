@Epic-Secondary_Collateral
@AuthoredBy-rsurya.kumar
@ReviewedBy-tushar.chauhan
@ImplementedBy-piyush.agnihotri
@ReviewedByDEV
@ReviewedSecCollateral
       #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
  #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal Initiation"]}
  #${CollateralSubType:["Mortgage Guarantee"]}
Feature: Addition of Mortgage Guarantee Positive Cases

#  Pre-Requisites---
#  In this feature we will attach an Guarantee Type Collateral-Mortgage Guarantee to the loan application.
#  Ensure the Product Type Collateral Mapping is available in Collateral_Setup.xlsx using the query Collateral_Setup.sql
#  Ensure the Product Collateral Mapping is available in Prod_Collateral_Setup.xlsx using the query Prod_Collateral_Setup.sql

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0

          #${ProductType:["PF","EDU"]}
    #PF(Secured),EDU(Scecured)
  @Perishable
    @Release3
    #FeatureID-ACAUTOCAS-8448
  Scenario Outline: ACAUTOCAS-3712:  user moves to the next stage without collateral
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    When user moves to the next stage
    Then user should get an error message
    Examples:
      | ProductType   | ApplicationStage   | key | category | applicantType |
      | <ProductType> | <ApplicationStage> |     |          | indiv         |

    #PF(Unsecured),EDU(Unsecured)
  @Perishable
    @Release3
    #FeatureID-ACAUTOCAS-8448,ACAUTOCAS-2
Scenario Outline: ACAUTOCAS-16802: user moves to the next stage without collateral
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral
    When user moves to the next stage
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_Default>" and row <Collateral_Default_rowNum>
    Then user should be able to move application to next stage
    Examples:
      | ProductType   | ApplicationStage   | key | category | applicantType | CollateralWB    | Collateral_Default | Collateral_Default_rowNum |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | collateral.xlsx | default            | 252                       |

  @Sanity
    @Release3
    #FeatureID-ACAUTOCAS-8448
  Scenario Outline: ACAUTOCAS-3101:  User misses entering one or more mandatory information for Mortgage Guarantee and saves
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_Default>" and row <Collateral_Default_rowNum>
    When user attempts to select a collateral type
    And user misses entering one or more mandatory information for Mortgage Guarantee
    And user saves the Mortgage Collateral Page
    Then User should receive a error message to fill mandatory details
    Examples:
      | CollateralWB    | Collateral_Default | Collateral_Default_rowNum | ProductType   | ApplicationStage   | key | category | applicantType |
      | collateral.xlsx | default            | 252                       | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | collateral.xlsx | default            | 587                       | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | collateral.xlsx | default            | 588                       | <ProductType> | <ApplicationStage> |     |          | indiv         |


    # As Discussed with Surya Sir, already covered this in ACAUTOCAS-3714
#  Scenario: ACAUTOCAS-3713:  user moves a new Guarantee Type collateral to the loan application
#    When User attempts to attach a new Guarantee Type Collateral to the application
#    Then User should be able to attach the collatoral only if it is linked to the Product against which the application is entered

#create another after this one
  @Release3
    #FeatureID-ACAUTOCAS-8448
  Scenario Outline: ACAUTOCAS-3714:  user adds a collateral with sub type as Mortgage Guarantee
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_Default>" and row <Collateral_Default_rowNum>
    When user attempts to select a collateral type
    Then user should be able to add sub collateral
    Examples:
      | CollateralWB    | Collateral_Default | Collateral_Default_rowNum | ProductType   | ApplicationStage   | key | category | applicantType |
      | collateral.xlsx | default            | 252                       | <ProductType> | <ApplicationStage> |     |          | indiv         |

  @Release3
    #FeatureID-ACAUTOCAS-8448
  Scenario Outline: ACAUTOCAS-3102:  User is able to add a new collateral as Mortgage Guarantee to the personal loan application
      #Test the screen with various test data to identify issues. The dataset carries data to Pass and Fail.
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_Default>" and row <Collateral_Default_rowNum>
    When user selects collateral type along with collateral sub type
    And user enters mandatory fields of collateral details of mortgage guarantee
    And user saves the Mortgage Collateral Page
    Then User should receive a proper "<Result>" message
    Examples:
      | CollateralWB    | Collateral_Default | Collateral_Default_rowNum | ProductType   | ApplicationStage   | key | category | applicantType | Result  |
      | collateral.xlsx | default            | 345                       | <ProductType> | <ApplicationStage> |     |          | indiv         | Success |
      | collateral.xlsx | default            | 683                       | <ProductType> | <ApplicationStage> |     |          | indiv         | Failure |
      | collateral.xlsx | default            | 684                       | <ProductType> | <ApplicationStage> |     |          | indiv         | Failure |
      | collateral.xlsx | default            | 685                       | <ProductType> | <ApplicationStage> |     |          | indiv         | Failure |
      | collateral.xlsx | default            | 686                       | <ProductType> | <ApplicationStage> |     |          | indiv         | Failure |

  @Release3
    #FeatureID-ACAUTOCAS-8448
  Scenario Outline: ACAUTOCAS-3103:  User is able to add a new collateral as Mortgage Guarantee to the personal loan application with new Global Collateral No
  #Test the screen with various test data to identify issues. The dataset carries data to Pass and Fail.
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_Default>" and row <Collateral_Default_rowNum>
    When user selects collateral type along with collateral sub type
    And user enters mandatory fields of collateral details of mortgage guarantee
    And user saves the Mortgage Collateral Page
    Then new collateral should be attached to the application with new "<GlobalCollateralNo>"
    Examples:
      | CollateralWB    | Collateral_Default | Collateral_Default_rowNum | ProductType   | ApplicationStage   | key | category | applicantType |
      | collateral.xlsx | default            | 686                       | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | collateral.xlsx | default            | 687                       | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | collateral.xlsx | default            | 688                       | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | collateral.xlsx | default            | 689                       | <ProductType> | <ApplicationStage> |     |          | indiv         |

  @Sanity
    @Release3
   #FeatureID-ACAUTOCAS-8448
  Scenario Outline: ACAUTOCAS-3104:  Capture Mortgage Guarantee against an application with create another after this one
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_Default>" and row <Collateral_Default_rowNum>
    When user selects collateral type along with collateral sub type
    And user enters mandatory fields of collateral details of mortgage guarantee
    And user selects create another after this one option
    And user saves the Mortgage Collateral Page
    Then CollateralPage remains available to create another collateral
    Examples:
      | CollateralWB    | Collateral_Default | Collateral_Default_rowNum | ProductType   | ApplicationStage   | key | category | applicantType |
      | collateral.xlsx | default            | 345                       | <ProductType> | <ApplicationStage> |     |          | indiv         |


  @Release3
# ${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","CC","LAP","CL"]}
# ${ApplicationStage:["DDE","Credit Approval"]}
# ${CollType:[]}
# ${CollSubType:["Mortgage Guarantee"]}
###Squash:137607
###Story:CAS-23473
###Bug:
    @Sanity
#FeatureID-ACAUTOCAS-8448,ACAUTOCAS-2
Scenario Outline: ACAUTOCAS-16803: user adds multiple collateral to <ProductType> application at <ApplicationStage> stage with sub type as "Mortgage Guarantee"
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    When user adds property type collateral of "<CollateralSubType>" subtype
      | collateral.xlsx | default | 671 |
      | collateral.xlsx | default | 672 |
      | collateral.xlsx | default | 673 |
      | collateral.xlsx | default | 674 |
      | collateral.xlsx | default | 675 |
      | collateral.xlsx | default | 676 |
      | collateral.xlsx | default | 677 |
      | collateral.xlsx | default | 678 |
      | collateral.xlsx | default | 679 |
      | collateral.xlsx | default | 680 |
      | collateral.xlsx | default | 681 |
      | collateral.xlsx | default | 682 |
    Then user check the all added collateral to application
    Examples:
      | ProductType   | ApplicationStage   | key | category | applicantType | CollateralSubType  |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | Mortgage Guarantee |

  @Release3
# ${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","CC","LAP","CL"]}
# ${ApplicationStage:["DDE","Credit Approval","Disbursal Initiation"]}
# ${CollType:[]}
# ${CollSubType:["Mortgage Guarantee"]}
###Squash:137607
###Story:CAS-23473
###Bug:
#FeatureID-ACAUTOCAS-8448,ACAUTOCAS-2
Scenario Outline: ACAUTOCAS-16804: user views multiple collateral attached to <ProductType> application at <ApplicationStage> stage with sub type as "Mortgage Guarantee"
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user selects collateral type along with collateral sub type
    And user enters mandatory fields of collateral details of mortgage guarantee
    And user saves the data
    When user views the saved collateral
    Then user able to sees the data as available in excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | key | category | applicantType |
      | collateral.xlsx | default            | 8                         | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | collateral.xlsx | default            | 347                       | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | collateral.xlsx | default            | 686                       | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | collateral.xlsx | default            | 687                       | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | collateral.xlsx | default            | 688                       | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | collateral.xlsx | default            | 689                       | <ProductType> | <ApplicationStage> |     |          | indiv         |


  @Release3
# ${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","CC","LAP","CL"]}
# ${ApplicationStage:["DDE","Credit Approval","Disbursal Initiation"]}
# ${CollType:[]}
# ${CollSubType:["Mortgage Guarantee"]}
###Squash:137607
###Story:CAS-23473
###Bug:
#FeatureID-ACAUTOCAS-8448,ACAUTOCAS-2
Scenario Outline: ACAUTOCAS-16805: user views multiple collateral attached to <ProductType> application at <ApplicationStage> stage with sub type as <CollateralSubType> at Enquiry
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user selects collateral type along with collateral sub type
    And user opens application from enquiry menu
    And user enters mandatory fields of collateral details of mortgage guarantee
    And user opens Collateral Page for viewing attached collaterals at "<ApplicationStage>"
    When user views the collateral from enquiry menu
    Then user able to sees the data as available in excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | key | category | applicantType | CollateralSubType  |
      | collateral.xlsx | default            | 8                         | <ProductType> | <ApplicationStage> |     |          | indiv         | Mortgage Guarantee |
      | collateral.xlsx | default            | 347                       | <ProductType> | <ApplicationStage> |     |          | indiv         | Mortgage Guarantee |
      | collateral.xlsx | default            | 686                       | <ProductType> | <ApplicationStage> |     |          | indiv         | Mortgage Guarantee |
      | collateral.xlsx | default            | 687                       | <ProductType> | <ApplicationStage> |     |          | indiv         | Mortgage Guarantee |
      | collateral.xlsx | default            | 688                       | <ProductType> | <ApplicationStage> |     |          | indiv         | Mortgage Guarantee |
      | collateral.xlsx | default            | 689                       | <ProductType> | <ApplicationStage> |     |          | indiv         | Mortgage Guarantee |
