@Epic-Secondary_Collateral
@AuthoredBy-rsurya.kumar
@ReviewedBy-none
@ImplementedBy-aniket.tripathi
@ReviewedByDEV
@ReviewedSecCollateral
  #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#${ApplicationStage:["DDE", "Credit", "Approval", "Recommendation", "Reconsideration", "Disbursal Initiation"]}
#${CollateralSubType:["Corporate Guarantee"]}
Feature: Addition of Corporate Guarantee Positive Cases

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0

     #${ProductType:["PF","EDU"]}
  #PF(Secured),EDU(Scecured)
  @Perishable
    @Release3
    #FeatureID-ACAUTOCAS-8447
  Scenario Outline: ACAUTOCAS-3691:  user is not able to move to next stage without collateral
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral
    When user moves to the next stage
    And user enters all mandatory information from "<GuaranteeCorporateGuaranteeDataFile>" under "<GuaranteeCorporateGuaranteeDataSheet>" row <GuaranteeCorporateGuaranteeRowNumber>
    Then user should get error message without adding collateral
    Examples:
      | ProductType   | ApplicationStage   | key | category | applicantType | GuaranteeCorporateGuaranteeDataFile | GuaranteeCorporateGuaranteeDataSheet | GuaranteeCorporateGuaranteeRowNumber |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | GuaranteeCorporateGuarantee.xlsx    | GuaranteeCorporateGuarantee          | 0                                    |

    #PF(Unsecured),EDU(Unsecured)
  @Perishable
    @Release3
  #FeatureID-ACAUTOCAS-8447,ACAUTOCAS-5080
Scenario Outline: ACAUTOCAS-16825: user moves to the next stage without collateral
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral
    When user moves to the next stage
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    Then user should be able to move application to next stage
    Examples:
      | ProductType   | ApplicationStage   | key | category | applicantType | CollateralWB    | Collateral_default | Collateral_default_rowNum |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | collateral.xlsx | default            | 670                       |


  @Release3
  #FeatureID-ACAUTOCAS-8447
  Scenario Outline: ACAUTOCAS-3080:  User enters mandatory information for Corporate Guarantee and saves without checking duplicates of "<ProductType>" application at "<ApplicationStage>" stage
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user selects collateral type along with collateral sub type
    And user enters mandatory fields for Collateral subtype Corporate Guarantee
    And user reads data from the excel file "collateral.xlsx" under sheet "guarantor_identification" and row 7
    And user enters the identification details for Collateral subtype corporate guarantee
    And user reads data from the excel file "collateral.xlsx" under sheet "guarantor_address" and row 7
    And user enters the address details under corporate guarantee
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    When user saves the data
    Then user gets a proper notification

    Examples:
      | ProductType   | ApplicationStage   | key | category | applicantType | CollateralWB    | Collateral_default | Collateral_default_rowNum |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | collateral.xlsx | default            | 349                       |

  @Release3
    #FeatureID-ACAUTOCAS-8447
  Scenario Outline: ACAUTOCAS-3081:  User misses entering one or more mandatory information for Corporate Guarantee and saves
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user selects collateral type along with collateral sub type
    And user enters mandatory fields for Collateral subtype Corporate Guarantee
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_guarantor_identification>" and row <Collateral_guarantor_identification_rowNum>
    And user enters the identification details for Collateral subtype corporate guarantee
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_guarantor_address>" and row <Collateral_guarantor_address_rowNum>
    And user enters the address details under corporate guarantee
    When user saves the data
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    Then user gets a proper notification

    Examples:
      | ProductType   | ApplicationStage   | key | category | applicantType | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_guarantor_identification | Collateral_guarantor_identification_rowNum | Collateral_guarantor_address | Collateral_guarantor_address_rowNum |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | collateral.xlsx | default            | 653                       | guarantor_identification            | 7                                          | guarantor_address            | 7                                   |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | collateral.xlsx | default            | 654                       | guarantor_identification            | 7                                          | guarantor_address            | 7                                   |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | collateral.xlsx | default            | 655                       | guarantor_identification            | 7                                          | guarantor_address            | 7                                   |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | collateral.xlsx | default            | 653                       | guarantor_identification            | 9                                          | guarantor_address            | 7                                   |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | collateral.xlsx | default            | 654                       | guarantor_identification            | 10                                         | guarantor_address            | 7                                   |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | collateral.xlsx | default            | 655                       | guarantor_identification            | 11                                         | guarantor_address            | 7                                   |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | collateral.xlsx | default            | 653                       | guarantor_identification            | 9                                          | guarantor_address            | 39                                  |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | collateral.xlsx | default            | 654                       | guarantor_identification            | 10                                         | guarantor_address            | 40                                  |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | collateral.xlsx | default            | 655                       | guarantor_identification            | 11                                         | guarantor_address            | 41                                  |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | collateral.xlsx | default            | 653                       | guarantor_identification            | 11                                         | guarantor_address            | 42                                  |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | collateral.xlsx | default            | 654                       | guarantor_identification            | 11                                         | guarantor_address            | 43                                  |

  @Release3
    #FeatureID-ACAUTOCAS-8447
  Scenario Outline: ACAUTOCAS-3692:  user moves a new Guarantee Type collateral to the loan application
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral
    When User attempts to attach a new Corporate Guarantee Type Collateral to the application
    Then User should be able to attach the collateral only if it is linked to the Product against which the application is entered
    Examples:
      | ProductType   | ApplicationStage   | key | category | applicantType |
      | <ProductType> | <ApplicationStage> |     |          | indiv         |

  @Release3
    #FeatureID-ACAUTOCAS-8447
  Scenario Outline: ACAUTOCAS-3693:  user adds a collateral with sub type as Corporate Guarantee
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    When user adds collateral type
    And user attempts to select a collateral type
    Then user should be able to add sub collateral
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | key | category | applicantType |
      | collateral.xlsx | default            | 251                       | <ProductType> | <ApplicationStage> |     |          | indiv         |

  @Release3
    #FeatureID-ACAUTOCAS-8447
  Scenario Outline: ACAUTOCAS-3694:  CollateralPage Collateral Details is mandatory
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    When user selects collateral type along with collateral sub type
    And user saves the collateral data without collateral details
    Then Required Collateral Details should be mandatorily entered
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | key | category | applicantType |
      | collateral.xlsx | default            | 251                       | <ProductType> | <ApplicationStage> |     |          | indiv         |

  @Release3
    @Sanity
    #FeatureID-ACAUTOCAS-8447
  Scenario Outline: ACAUTOCAS-3695:  CollateralPage Guarantor Identification is mandatory
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user selects collateral type along with collateral sub type
    When user saves the collateral data without identification details
    Then Required "<SectionName>" should be mandatorily entered
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | SectionName              | ProductType   | ApplicationStage   | key | category | applicantType |
      | collateral.xlsx | default            | 251                       | Guarantor Identification | <ProductType> | <ApplicationStage> |     |          | indiv         |

  @Release3
    @Sanity
    #FeatureID-ACAUTOCAS-8447
  Scenario Outline: ACAUTOCAS-3696:  CollateralPage Guarantor Address is mandatory
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    When user selects collateral type along with collateral sub type
    And user saves the collateral data without address details
    Then Required "<SectionName>" should be mandatorily entered
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | SectionName       | ProductType   | ApplicationStage   | key | category | applicantType |
      | collateral.xlsx | default            | 251                       | Guarantor Address | <ProductType> | <ApplicationStage> |     |          | indiv         |

  @Release3
    #FeatureID-ACAUTOCAS-8447
  Scenario Outline: ACAUTOCAS-3082:  CollateralPage Guarantor Address Taluka and Village Validation 1
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "collateral.xlsx" under sheet "default" and row 348
    And user selects collateral type along with collateral sub type
    And user enters mandatory fields for Collateral subtype Corporate Guarantee
    And user reads data from the excel file "collateral.xlsx" under sheet "guarantor_identification" and row 7
    And user enters the identification details for Collateral subtype corporate guarantee
    And user reads data from the excel file "collateral.xlsx" under sheet "guarantor_address" and row 7
    And user enters the address details under corporate guarantee collateral subType
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "collateral.xlsx" under sheet "default" and row 348
    And user selects collateral type along with collateral sub type
    And user enters mandatory fields for Collateral subtype Corporate Guarantee
    And user reads data from the excel file "collateral.xlsx" under sheet "guarantor_identification" and row 7
    And user enters the identification details for Collateral subtype corporate guarantee
    And user reads data from the excel file "collateral.xlsx" under sheet "<Collateral_guarantor_address>" and row <Collateral_guarantor_address_rowNum>
    When user enters the address details under corporate guarantee without save
    Then the fields Taluka and Village should accept them as if they are defined in masters
    Examples:
      | ProductType   | ApplicationStage   | key | category | applicantType | Collateral_guarantor_address | Collateral_guarantor_address_rowNum |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | guarantor_address            | 44                                  |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | guarantor_address            | 45                                  |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | guarantor_address            | 46                                  |

  @Release3
    #FeatureID-ACAUTOCAS-8447
  Scenario Outline: ACAUTOCAS-3083:  CollateralPage Guarantor Address Taluka and Village Validation 2
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "collateral.xlsx" under sheet "default" and row 348
    And user selects collateral type along with collateral sub type
    And user enters mandatory fields for Collateral subtype Corporate Guarantee
    And user reads data from the excel file "collateral.xlsx" under sheet "guarantor_identification" and row 7
    And user enters the identification details for Collateral subtype corporate guarantee
    And user reads data from the excel file "collateral.xlsx" under sheet "<Collateral_guarantor_address>" and row <Collateral_guarantor_address_rowNum>
    When user enters the address details under corporate guarantee without save
    Then the fields Taluka and Village should accept them as if they are not defined in masters
    #Field should populate a message saying No Data Found
    Examples:
      | ProductType   | ApplicationStage   | key | category | applicantType | Collateral_guarantor_address | Collateral_guarantor_address_rowNum |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | guarantor_address            | 49                                  |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | guarantor_address            | 50                                  |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | guarantor_address            | 51                                  |

  @Release3
# ${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","CC","LAP","CL"]}
# ${ApplicationStage:["DDE","Credit Approval"]}
# ${CollType:[]}
# ${CollSubType:["Corporate Guarantee"]}
###Squash:137607
###Story:CAS-23473
###Bug:
    @Sanity
#FeatureID-ACAUTOCAS-8447,ACAUTOCAS-2
Scenario Outline: ACAUTOCAS-16826: user adds multiple collateral to "<ProductType>" application at "<ApplicationStage>" stage with sub type as "Corporate Guarantee"
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    When user adds property type collateral of "<CollateralSubType>" subtype
      | collateral.xlsx | default | 659 |
      | collateral.xlsx | default | 660 |
      | collateral.xlsx | default | 661 |
      | collateral.xlsx | default | 662 |
      | collateral.xlsx | default | 663 |
      | collateral.xlsx | default | 664 |
      | collateral.xlsx | default | 665 |
      | collateral.xlsx | default | 666 |
      | collateral.xlsx | default | 667 |
      | collateral.xlsx | default | 668 |
      | collateral.xlsx | default | 669 |
      | collateral.xlsx | default | 670 |
    Then user check the all added collateral to application
    Examples:
      | ProductType   | ApplicationStage   | key | category | applicantType | CollateralSubType   |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |

  @Release3
# ${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","CC","LAP","CL"]}
# ${ApplicationStage:["DDE","Credit Approval","Disbursal Initiation"]}
# ${CollType:[]}
# ${CollSubType:["Corporate Guarantee"]}
###Squash:137607
###Story:CAS-23473
###Bug:
#FeatureID-ACAUTOCAS-8447,ACAUTOCAS-2
Scenario Outline: ACAUTOCAS-16827: user views multiple collateral attached to "<ProductType>" application at "<ApplicationStage>" stage with sub type as "Corporate Guarantee"
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user selects collateral type along with collateral sub type
    And user enters mandatory fields for Collateral subtype Corporate Guarantee
    And user enters the identification details for Collateral subtype corporate guarantee
    And user enters the address details under corporate guarantee
    And user saves the data
    When user opens newly added Collateral
    Then user should be able to sees the data as available in excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | key | category | applicantType |
      | collateral.xlsx | default            | 671                       | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | collateral.xlsx | default            | 672                       | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | collateral.xlsx | default            | 673                       | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | collateral.xlsx | default            | 674                       | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | collateral.xlsx | default            | 675                       | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | collateral.xlsx | default            | 676                       | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | collateral.xlsx | default            | 677                       | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | collateral.xlsx | default            | 678                       | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | collateral.xlsx | default            | 679                       | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | collateral.xlsx | default            | 680                       | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | collateral.xlsx | default            | 681                       | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | collateral.xlsx | default            | 682                       | <ProductType> | <ApplicationStage> |     |          | indiv         |


  @Release3
# ${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","CC","LAP","CL"]}
# ${ApplicationStage:["DDE","Credit Approval","Disbursal Initiation"]}
# ${CollType:[]}
# ${CollSubType:["Corporate Guarantee"]}
###Squash:137607
###Story:CAS-23473
###Bug:
#FeatureID-ACAUTOCAS-8447,ACAUTOCAS-2
Scenario Outline: ACAUTOCAS-16828: user views multiple collateral attached to "<ProductType>" application at "<ApplicationStage>" stage with sub type as "Corporate Guarantee" at Enquiry
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user selects collateral type along with collateral sub type
    And user opens application from enquiry menu
    And user opens Collateral Page for viewing attached collaterals at "<ApplicationStage>"
    When user views the collateral from enquiry menu
    Then user should be able to sees the data as available in excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | key | category | applicantType |
      | collateral.xlsx | default            | 671                       | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | collateral.xlsx | default            | 672                       | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | collateral.xlsx | default            | 673                       | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | collateral.xlsx | default            | 674                       | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | collateral.xlsx | default            | 675                       | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | collateral.xlsx | default            | 676                       | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | collateral.xlsx | default            | 677                       | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | collateral.xlsx | default            | 678                       | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | collateral.xlsx | default            | 679                       | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | collateral.xlsx | default            | 680                       | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | collateral.xlsx | default            | 681                       | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | collateral.xlsx | default            | 682                       | <ProductType> | <ApplicationStage> |     |          | indiv         |
