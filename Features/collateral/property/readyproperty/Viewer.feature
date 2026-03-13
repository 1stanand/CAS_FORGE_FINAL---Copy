@Epic-Secondary_Collateral
@AuthoredBy-rsurya.kumar
@ReviewedBy-harshprit.kumar
@Release3
@ReviewedByDEV
@ReviewedSecCollateral
@ReleaseSecCollateralM5

      #${ApplicantType:["indiv","nonindiv"]}
#${CollateralSubType:["Ready Property"]}

Feature: Ready Property Viewer

#  Pre-Requisites---
#  In this feature we will view a Ready Property attached to the loan application.

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0

  Scenario Outline: ACAUTOCAS-1437: <CollateralSubType> to <ProductType> application at <ApplicationStage> stage data reconcile to validate if data was saved properly
    And user opens an application of "<ProductType>" product type as "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_propertyDetails>" and row <Collateral_propertyDetails_rowNum>
    When user adds collateral based on "<CollateralSubType>" subtype
    And user views the already added collateral
    Then user should be able to reconcile the "<CollateralSubType>" data successfully
           #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal Initiation"]}
    @Conventional
    @ImplementedBy-piyush.agnihotri
    Examples:
      | ProductType   | ApplicationStage   | key | category | applicantType | CollateralSubType   | CollateralWB    | Collateral_propertyDetails | Collateral_propertyDetails_rowNum |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> | collateral.xlsx | property_details           | 36                                |

 # ${ProductType:["IPF"]}
   # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
   # ${Category:["shares","bonds","metals"]}
    @Islamic
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | ProductType   | ApplicationStage   | key | category   | applicantType | CollateralSubType   | CollateralWB    | Collateral_propertyDetails | Collateral_propertyDetails_rowNum |
      | <ProductType> | <ApplicationStage> |     | <category> | indiv         | <CollateralSubType> | collateral.xlsx | property_details           | 36                                |

  # ${ProductType:["IAF","IHF"]}
   # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | ProductType   | ApplicationStage   | key | category | applicantType | CollateralSubType   | CollateralWB    | Collateral_propertyDetails | Collateral_propertyDetails_rowNum |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> | collateral.xlsx | property_details           | 36                                |

  Scenario Outline: ACAUTOCAS-1438: CollateralPage should not be allowed to modify data in viewer mode for <CollateralSubType> to <ProductType> application at <ApplicationStage> stage
    And user opens an application of "<ProductType>" product type as "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_propertyDetails>" and row <Collateral_propertyDetails_rowNum>
    When user adds collateral based on "<CollateralSubType>" subtype
    And user attempts to modify collateral based on "<CollateralSubType>"
    Then user should not be able to modify "<CollateralSubType>"
      | collateral_type          |
      | collateral_sub_type      |
      | address_type             |
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
            #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal Initiation"]}
    @Conventional
    @ImplementedBy-piyush.agnihotri
    Examples:
      | ProductType   | ApplicationStage   | key | category | applicantType | CollateralSubType   | CollateralWB    | Collateral_propertyDetails | Collateral_propertyDetails_rowNum |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> | collateral.xlsx | property_details           | 36                                |


     # ${ProductType:["IPF"]}
   # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
   # ${Category:["shares","bonds","metals"]}
    @Islamic
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | ProductType   | ApplicationStage   | key | category   | applicantType | CollateralSubType   | CollateralWB    | Collateral_propertyDetails | Collateral_propertyDetails_rowNum |
      | <ProductType> | <ApplicationStage> |     | <category> | indiv         | <CollateralSubType> | collateral.xlsx | property_details           | 36                                |

  # ${ProductType:["IAF","IHF"]}
   # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | ProductType   | ApplicationStage   | key | category | applicantType | CollateralSubType   | CollateralWB    | Collateral_propertyDetails | Collateral_propertyDetails_rowNum |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> | collateral.xlsx | property_details           | 36                                |

#FeatureID-ACAUTOCAS-225,ACAUTOCAS-5078
  Scenario Outline: ACAUTOCAS-5307:  CollateralPage should not show tab for Title Search for <CollateralSubType> to <ProductType> application at <ApplicationStage> stage
    And user opens an application of "<ProductType>" product type as "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_propertyDetails>" and row <Collateral_propertyDetails_rowNum>
    When user adds collateral based on "<CollateralSubType>" subtype
    And user attempts to modify collateral based on "<CollateralSubType>"
    Then user should not see the Title Search tab
           #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal Initiation"]}
    @Conventional
    @ImplementedBy-piyush.agnihotri
    Examples:
      | ProductType   | ApplicationStage   | key | category | applicantType | CollateralSubType   | CollateralWB    | Collateral_propertyDetails | Collateral_propertyDetails_rowNum |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> | collateral.xlsx | property_details           | 36                                |

     # ${ProductType:["IPF"]}
   # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
   # ${Category:["shares","bonds","metals"]}
    @Islamic
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | ProductType   | ApplicationStage   | key | category   | applicantType | CollateralSubType   | CollateralWB    | Collateral_propertyDetails | Collateral_propertyDetails_rowNum |
      | <ProductType> | <ApplicationStage> |     | <category> | indiv         | <CollateralSubType> | collateral.xlsx | property_details           | 36                                |

  # ${ProductType:["IAF","IHF"]}
   # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | ProductType   | ApplicationStage   | key | category | applicantType | CollateralSubType   | CollateralWB    | Collateral_propertyDetails | Collateral_propertyDetails_rowNum |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> | collateral.xlsx | property_details           | 36                                |
