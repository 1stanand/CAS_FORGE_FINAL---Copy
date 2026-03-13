@Epic-Secondary_Collateral
@AuthoredBy-rsurya.kumar
@Reconciled
@ReviewedByDEV
@ReviewedSecCollateral
@Release
@Part-1

#${CollateralSubType:["National Saving Certificate"]}
Feature: Addition of National Saving Certificate

#  Pre-Requisites---
#  In this feature we will attach an Deposit Type Collateral-National Saving Certificate to the loan application.
#  Ensure the Product Type Collateral Mapping is available in Collateral_Setup.xlsx using the query Collateral_Setup.sql
#  Ensure the Product Collateral Mapping is available in Prod_Collateral_Setup.xlsx using the query Prod_Collateral_Setup.sql

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0


  @Perishable
  Scenario Outline: ACAUTOCAS-3678: user moves to the next stage without collateral for National Saving Certificate of <ProductType> application at <ApplicationStage>
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user open collateral page of "<ApplicationStage>" stage
    And user deletes the collateral based on sub type
    And user selects document tab
    And user submits the given document
    When user moves to the next stage
    Then application should be moved to "<NextStage>" stage successfully

    # ${ProductType:["PF","EDU"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal"]}
    #${ApplicantType:["indiv", "nonIndiv"]}
    @ImplementedBy-priyanshu.kashyap
    @Conventional
    Examples:
      | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | NextStage      |
      | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Recommendation |

    # ${ProductType:["IPF"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration"]}
    # ${Category:["shares","bonds","metals"]}
    #${ApplicantType:["indiv"]}
    @ImplementedBy-rishabh.sachan
    @Islamic
    Examples:
      | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | NextStage      |
      | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | Recommendation |


  Scenario Outline: ACAUTOCAS-3047: User enters mandatory information for National Saving Certificate and saves without checking duplicates of <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_national_saving_certificate>" and row <Collateral_national_saving_certificate_rowNum>
    And user selects collateral type along with collateral sub type
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    When saves the data
    Then user should receive a proper failure message

    #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal"]}
    #${ApplicantType:["indiv", "nonIndiv"]}
    @ImplementedBy-aditya.tomar
    @Conventional
    Examples:
      | CollateralWB    | Collateral_national_saving_certificate | Collateral_national_saving_certificate_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | collateral.xlsx | national_saving_certificate            | 367                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    #${ApplicantType:["indiv"]}
    @ImplementedBy-rishabh.sachan
    @Islamic
    Examples:
      | CollateralWB    | Collateral_national_saving_certificate | Collateral_national_saving_certificate_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   |
      | collateral.xlsx | national_saving_certificate            | 367                                           | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |

    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    #${ApplicantType:["indiv"]}
    @ImplementedBy-rishabh.sachan
    @Islamic
    Examples:
      | CollateralWB    | Collateral_national_saving_certificate | Collateral_national_saving_certificate_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | collateral.xlsx | national_saving_certificate            | 367                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |


  Scenario Outline: ACAUTOCAS-3048: User misses entering one or more mandatory information for National Saving Certificate and saves of <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_national_saving_certificate>" and row <Collateral_national_saving_certificate_rowNum>
    And user selects collateral type along with collateral sub type
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    When checks for duplicate collateral
    Then User should receive a failure message as mandatory fields are missing

    #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal"]}
    #${ApplicantType:["indiv", "nonIndiv"]}
    @ImplementedBy-aditya.tomar
    @Conventional
    Examples:
      | CollateralWB    | Collateral_national_saving_certificate | Collateral_national_saving_certificate_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | collateral.xlsx | national_saving_certificate            | 178                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    #${ApplicantType:["indiv"]}
    @ImplementedBy-rishabh.sachan
    @Islamic
    Examples:
      | CollateralWB    | Collateral_national_saving_certificate | Collateral_national_saving_certificate_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   |
      | collateral.xlsx | national_saving_certificate            | 178                                           | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |

    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    #${ApplicantType:["indiv"]}
    @ImplementedBy-rishabh.sachan
    @Islamic
    Examples:
      | CollateralWB    | Collateral_national_saving_certificate | Collateral_national_saving_certificate_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | collateral.xlsx | national_saving_certificate            | 178                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |


  #FeatureID-ACAUTOCAS-237
  Scenario Outline: ACAUTOCAS-16791: User misses entering one or more mandatory information for National Saving Certificate and saves of <ProductType> application at <ApplicationStage> stage with field name deposit no
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_national_saving_certificate>" and row <Collateral_national_saving_certificate_rowNum>
    And user selects collateral type along with collateral sub type
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user closes duplicate check result box after checking the duplicates
    When saves the data
    Then User should receive a failure message as mandatory fields are missing

    #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal"]}
    #${ApplicantType:["indiv", "nonIndiv"]}
    @ImplementedBy-aditya.tomar
    @Conventional
    Examples:
      | CollateralWB    | Collateral_national_saving_certificate | Collateral_national_saving_certificate_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | collateral.xlsx | national_saving_certificate            | 368                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | collateral.xlsx | national_saving_certificate            | 369                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | collateral.xlsx | national_saving_certificate            | 370                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | collateral.xlsx | national_saving_certificate            | 371                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | collateral.xlsx | national_saving_certificate            | 372                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | collateral.xlsx | national_saving_certificate            | 373                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    #${ApplicantType:["indiv"]}
    @ImplementedBy-rishabh.sachan
    @Islamic
    Examples:
      | CollateralWB    | Collateral_national_saving_certificate | Collateral_national_saving_certificate_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   |
      | collateral.xlsx | national_saving_certificate            | 368                                           | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | collateral.xlsx | national_saving_certificate            | 369                                           | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | collateral.xlsx | national_saving_certificate            | 370                                           | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | collateral.xlsx | national_saving_certificate            | 371                                           | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | collateral.xlsx | national_saving_certificate            | 372                                           | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | collateral.xlsx | national_saving_certificate            | 373                                           | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |

    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    #${ApplicantType:["indiv"]}
    @ImplementedBy-rishabh.sachan
    @Islamic
    Examples:
      | CollateralWB    | Collateral_national_saving_certificate | Collateral_national_saving_certificate_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | collateral.xlsx | national_saving_certificate            | 368                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | collateral.xlsx | national_saving_certificate            | 369                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | collateral.xlsx | national_saving_certificate            | 370                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | collateral.xlsx | national_saving_certificate            | 371                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | collateral.xlsx | national_saving_certificate            | 372                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | collateral.xlsx | national_saving_certificate            | 373                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |


  Scenario Outline: ACAUTOCAS-3679: user moves a new Deposit Type collateral to the loan application of <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    When user selects collateral type along with collateral sub type
    Then application should allow only the collateral type which is linked to the product

    #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal"]}
    #${ApplicantType:["indiv", "nonIndiv"]}
    @ImplementedBy-aditya.tomar
    @Conventional
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | collateral.xlsx | default            | 738                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    #${ApplicantType:["indiv"]}
    @ImplementedBy-rishabh.sachan
    @Islamic
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   |
      | collateral.xlsx | default            | 738                       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |

    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    #${ApplicantType:["indiv"]}
    @ImplementedBy-rishabh.sachan
    @Islamic
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | collateral.xlsx | default            | 738                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |


  Scenario Outline: ACAUTOCAS-3680: user adds a collateral with sub type as National Saving Certificate of <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    When user selects collateral type along with collateral sub type
    And user add National Saving Certificate under the dropdown
    Then user should be able to select sub collateral "<CollateralSubType>"

    #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal"]}
    #${ApplicantType:["indiv", "nonIndiv"]}
    @ImplementedBy-aditya.tomar
    @Conventional
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | default            | 738                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    #${ApplicantType:["indiv"]}
    @ImplementedBy-rishabh.sachan
    @Islamic
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | default            | 738                       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |

    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    #${ApplicantType:["indiv"]}
    @ImplementedBy-rishabh.sachan
    @Islamic
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | default            | 738                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |


    #ACAUTOCAS-4752: jira id senario from gwt already covered in above secnario
  #having jira id ACAUTOCAS-3048:


  Scenario Outline: ACAUTOCAS-3049: CollateralPage Collateral Details validation for Addition National Certificate of <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user selects collateral type along with collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_national_saving_certificate>" and row <Collateral_national_saving_certificate_rowNum>
    When user fills mandatory fields of home page of collateral details for given collateral sub type
    And user checks the duplicates on collateral dedupe check
    And user saves the data
    Then user should receive a proper failure message

    #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal"]}
    #${ApplicantType:["indiv", "nonIndiv"]}
    @ImplementedBy-aditya.tomar
    @Conventional
    Examples:
      | CollateralWB    | Collateral_national_saving_certificate | Collateral_national_saving_certificate_rowNum | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | collateral.xlsx | national_saving_certificate            | 374                                           | default            | 347                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | collateral.xlsx | national_saving_certificate            | 375                                           | default            | 347                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    #${ApplicantType:["indiv"]}
    @ImplementedBy-rishabh.sachan
    @Islamic
    Examples:
      | CollateralWB    | Collateral_national_saving_certificate | Collateral_national_saving_certificate_rowNum | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   |
      | collateral.xlsx | national_saving_certificate            | 374                                           | default            | 347                       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | collateral.xlsx | national_saving_certificate            | 375                                           | default            | 347                       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |

    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    #${ApplicantType:["indiv"]}
    @ImplementedBy-rishabh.sachan
    @Islamic
    Examples:
      | CollateralWB    | Collateral_national_saving_certificate | Collateral_national_saving_certificate_rowNum | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | collateral.xlsx | national_saving_certificate            | 374                                           | default            | 347                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | collateral.xlsx | national_saving_certificate            | 375                                           | default            | 347                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |


##Dedupe Check

  Scenario Outline: ACAUTOCAS-3050: User executes dedupe for National Saving Certificate of <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    When user selects collateral type along with collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_national_saving_certificate>" and row <Collateral_national_saving_certificate_rowNum>
    And user fills mandatory fields of national saving certificate
    And user click on checks for duplicates
    Then user should receive a proper failure message

    #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal"]}
    #${ApplicantType:["indiv", "nonIndiv"]}
    @ImplementedBy-priyanshu.kashyap
    @Conventional
    Examples:
      | CollateralWB    | Collateral_national_saving_certificate | Collateral_national_saving_certificate_rowNum | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | collateral.xlsx | national_saving_certificate            | 169                                           | default            | 347                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | collateral.xlsx | national_saving_certificate            | 171                                           | default            | 347                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    #${ApplicantType:["indiv"]}
    @ImplementedBy-rishabh.sachan
    @Islamic
    Examples:
      | CollateralWB    | Collateral_national_saving_certificate | Collateral_national_saving_certificate_rowNum | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   |
      | collateral.xlsx | national_saving_certificate            | 169                                           | default            | 347                       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | collateral.xlsx | national_saving_certificate            | 171                                           | default            | 347                       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |

    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    #${ApplicantType:["indiv"]}
    @ImplementedBy-rishabh.sachan
    @Islamic
    Examples:
      | CollateralWB    | Collateral_national_saving_certificate | Collateral_national_saving_certificate_rowNum | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | collateral.xlsx | national_saving_certificate            | 169                                           | default            | 347                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | collateral.xlsx | national_saving_certificate            | 171                                           | default            | 347                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |


  #FeatureID-ACAUTOCAS-237
  Scenario Outline: ACAUTOCAS-16792: User executes dedupe for National Saving Certificate for the existing collateral with <Var> of <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_national_saving_certificate>" and row <Collateral_national_saving_certificate_rowNum>
    And user selects collateral type along with collateral sub type
    And user fills mandatory fields of national saving certificate
    And user checks the duplicates on collateral dedupe check
    And saves the data in collateral
    And user add new collateral details
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_national_saving_certificate>" and row <Collateral_national_saving_certificate_rowNum2>
    And user selects collateral type along with collateral sub type
    And user fills mandatory fields of national saving certificate
    When user checks for duplicate collateral
    Then user should get a message in collateral dedupe check

    #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal"]}
    #${ApplicantType:["indiv", "nonIndiv"]}
    @ImplementedBy-aman.verma
    @Conventional
    Examples:
      | Var                | CollateralWB    | Collateral_national_saving_certificate | Collateral_national_saving_certificate_rowNum | Collateral_national_saving_certificate_rowNum2 | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | 0 Duplicates Found | collateral.xlsx | national_saving_certificate            | 376                                           | 376                                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | 0 Duplicates Found | collateral.xlsx | national_saving_certificate            | 377                                           | 377                                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | 1 Duplicates Found | collateral.xlsx | national_saving_certificate            | 362                                           | 378                                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | 1 Duplicates Found | collateral.xlsx | national_saving_certificate            | 362                                           | 379                                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    #${ApplicantType:["indiv"]}
    @ImplementedBy-rishabh.sachan
    @Islamic
    Examples:
      | Var                | CollateralWB    | Collateral_national_saving_certificate | Collateral_national_saving_certificate_rowNum | Collateral_national_saving_certificate_rowNum2 | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   |
      | 0 Duplicates Found | collateral.xlsx | national_saving_certificate            | 376                                           | 376                                            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | 0 Duplicates Found | collateral.xlsx | national_saving_certificate            | 377                                           | 377                                            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | 1 Duplicates Found | collateral.xlsx | national_saving_certificate            | 362                                           | 378                                            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | 1 Duplicates Found | collateral.xlsx | national_saving_certificate            | 362                                           | 379                                            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |

    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    #${ApplicantType:["indiv"]}
    @ImplementedBy-rishabh.sachan
    @Islamic
    Examples:
      | Var                | CollateralWB    | Collateral_national_saving_certificate | Collateral_national_saving_certificate_rowNum | Collateral_national_saving_certificate_rowNum2 | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | 0 Duplicates Found | collateral.xlsx | national_saving_certificate            | 376                                           | 376                                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | 0 Duplicates Found | collateral.xlsx | national_saving_certificate            | 377                                           | 377                                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | 1 Duplicates Found | collateral.xlsx | national_saving_certificate            | 362                                           | 378                                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | 1 Duplicates Found | collateral.xlsx | national_saving_certificate            | 362                                           | 379                                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |


##User dedupes for unique collateral number and finds duplicate collaterals and ignore the existing collaterals
  #Data in CMS required please refer to original gwt
  Scenario Outline: ACAUTOCAS-3051: User checks for duplicate collateral and views the duplicates for Addition <CollateralSubType> of <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_national_saving_certificate>" and row <Collateral_national_saving_certificate_rowNum>
    And user selects collateral type along with collateral sub type
    And user fills mandatory fields of national saving certificate
    And user checks the duplicates on collateral dedupe check
    And user clicks on save collateral to save CMS data
    And user add new collateral details
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_national_saving_certificate>" and row <Collateral_national_saving_certificate_rowNum2>
    When user selects collateral type along with collateral sub type
    And user fills mandatory fields of national saving certificate
    And checks for duplicate collateral
    Then User should be able to view the duplicates of "<CollateralSubType>" collateral

    #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal"]}
    #${ApplicantType:["indiv", "nonIndiv"]}
    @ImplementedBy-rishabh.sachan
    @Conventional
    Examples:
      | CollateralWB    | Collateral_national_saving_certificate | Collateral_national_saving_certificate_rowNum | Collateral_national_saving_certificate_rowNum2 | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | national_saving_certificate            | 362                                           | 379                                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    #${ApplicantType:["indiv"]}
    @ImplementedBy-rishabh.sachan
    @Islamic
    Examples:
      | CollateralWB    | Collateral_national_saving_certificate | Collateral_national_saving_certificate_rowNum | Collateral_national_saving_certificate_rowNum2 | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | national_saving_certificate            | 362                                           | 379                                            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |

    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    #${ApplicantType:["indiv"]}
    @ImplementedBy-rishabh.sachan
    @Islamic
    Examples:
      | CollateralWB    | Collateral_national_saving_certificate | Collateral_national_saving_certificate_rowNum | Collateral_national_saving_certificate_rowNum2 | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | national_saving_certificate            | 362                                           | 379                                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |


  #This test scenario should fail
  @LoggedBug-CAS-222947
  Scenario Outline: ACAUTOCAS-3052: User attaches a duplicate <CollateralSubType> collateral attached to same application of <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_national_saving_certificate>" and row <Collateral_national_saving_certificate_rowNum>
    And user selects collateral type along with collateral sub type
    And user fills mandatory fields of national saving certificate
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    And user add new collateral details
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_national_saving_certificate>" and row <Collateral_national_saving_certificate_rowNum2>
    When user selects collateral type along with collateral sub type
    And user fills mandatory fields of national saving certificate
    And checks for duplicate collateral
    And user views the duplicate collateral
    And user select the "<CollateralSubType>" collateral from dedupe result which is already attached to the application
    And user saves selected dedupe collateral
    Then user gets a notification message

    #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal"]}
    #${ApplicantType:["indiv", "nonIndiv"]}
    @ImplementedBy-rishabh.sachan
    @Conventional
    Examples:
      | CollateralWB    | Collateral_national_saving_certificate | Collateral_national_saving_certificate_rowNum | Collateral_national_saving_certificate_rowNum2 | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | national_saving_certificate            | 377                                           | 380                                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    #${ApplicantType:["indiv"]}
    @ImplementedBy-rishabh.sachan
    @Islamic
    Examples:
      | CollateralWB    | Collateral_national_saving_certificate | Collateral_national_saving_certificate_rowNum | Collateral_national_saving_certificate_rowNum2 | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | national_saving_certificate            | 377                                           | 380                                            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |

    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    #${ApplicantType:["indiv"]}
    @ImplementedBy-rishabh.sachan
    @Islamic
    Examples:
      | CollateralWB    | Collateral_national_saving_certificate | Collateral_national_saving_certificate_rowNum | Collateral_national_saving_certificate_rowNum2 | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | national_saving_certificate            | 377                                           | 380                                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |


  Scenario Outline: ACAUTOCAS-3053:  User attaches a duplicate <CollateralSubType> collateral attached to a different application of <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<SecondaryApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<SecondaryApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_national_saving_certificate>" and row <Collateral_national_saving_certificate_rowNum>
    And user selects collateral type along with collateral sub type
    And user fills mandatory fields of national saving certificate
    And user checks the duplicates on collateral dedupe check
    And user clicks on save collateral to save CMS data
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_national_saving_certificate>" and row <Collateral_national_saving_certificate_rowNum2>
    When user selects collateral type along with collateral sub type
    And user fills mandatory fields of national saving certificate
    And checks for duplicate collateral
    And user views the duplicate collateral
    And user select the "<CollateralSubType>" collateral from dedupe result which is not attached to the application
    And user saves selected dedupe collateral
    Then user gets a notification message

    #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal"]}
    #${ApplicantType:["indiv", "nonIndiv"]}
    @ImplementedBy-rishabh.sachan
    @Conventional
    Examples:
      | CollateralWB    | Collateral_national_saving_certificate | Collateral_national_saving_certificate_rowNum | Collateral_national_saving_certificate_rowNum2 | ProductType   | SecondaryApplicationStage | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | national_saving_certificate            | 377                                           | 381                                            | <ProductType> | Post Approval             | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    #${ApplicantType:["indiv"]}
    @ImplementedBy-rishabh.sachan
    @Islamic
    Examples:
      | CollateralWB    | Collateral_national_saving_certificate | Collateral_national_saving_certificate_rowNum | Collateral_national_saving_certificate_rowNum2 | ProductType   | SecondaryApplicationStage | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | national_saving_certificate            | 377                                           | 381                                            | <ProductType> | DDE                       | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | national_saving_certificate            | 377                                           | 381                                            | <ProductType> | Recommendation            | DDE                |     | <Category> | <ApplicantType> | <CollateralSubType> |

    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    #${ApplicantType:["indiv"]}
    @ImplementedBy-rishabh.sachan
    @Islamic
    Examples:
      | CollateralWB    | Collateral_national_saving_certificate | Collateral_national_saving_certificate_rowNum | Collateral_national_saving_certificate_rowNum2 | ProductType   | SecondaryApplicationStage | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | national_saving_certificate            | 377                                           | 381                                            | <ProductType> | DDE                       | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | national_saving_certificate            | 377                                           | 381                                            | <ProductType> | Reconsideration           | DDE                |     |          | <ApplicantType> | <CollateralSubType> |


#Check if dedupe is still valid
  @LoggedBug-ACAUTOCAS-6650
  Scenario Outline:ACAUTOCAS-3054: User modifies Collateral Details after running dedupe for National Saving Certificate and attempts to save of <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_national_saving_certificate>" and row <Collateral_national_saving_certificate_rowNum>
    When user selects collateral type along with collateral sub type
    And user fills mandatory fields of national saving certificate
    And user checks the duplicates on collateral dedupe check
    And user fill "<FieldName>" of collateral details for collateral subtype
    And saves the data
    Then user should receive a proper failure message

    #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal"]}
    #${ApplicantType:["indiv", "nonIndiv"]}
    @ImplementedBy-priyanshu.kashyap
    @Conventional
    Examples:
      | CollateralWB    | Collateral_national_saving_certificate | Collateral_national_saving_certificate_rowNum | FieldName                  | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | collateral.xlsx | national_saving_certificate            | 382                                           | Deposit No                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | collateral.xlsx | national_saving_certificate            | 382                                           | Deposit No, Name Of Holder | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    #${ApplicantType:["indiv"]}
    @ImplementedBy-rishabh.sachan
    @Islamic
    Examples:
      | CollateralWB    | Collateral_national_saving_certificate | Collateral_national_saving_certificate_rowNum | FieldName                  | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   |
      | collateral.xlsx | national_saving_certificate            | 382                                           | Deposit No                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | collateral.xlsx | national_saving_certificate            | 382                                           | Deposit No, Name Of Holder | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |

    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    #${ApplicantType:["indiv"]}
    @ImplementedBy-rishabh.sachan
    @Islamic
    Examples:
      | CollateralWB    | Collateral_national_saving_certificate | Collateral_national_saving_certificate_rowNum | FieldName                  | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | collateral.xlsx | national_saving_certificate            | 382                                           | Deposit No                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | collateral.xlsx | national_saving_certificate            | 382                                           | Deposit No, Name Of Holder | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |


  @Sanity
  # ${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
  # ${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal"]}
  #FeatureID-ACAUTOCAS-237
  Scenario Outline: ACAUTOCAS-16793: User modifies Collateral Details after running dedupe for National Saving Certificate and attempts to save of <ProductType> application at <ApplicationStage> stage for <FieldName>
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_national_saving_certificate>" and row <Collateral_national_saving_certificate_rowNum>
    When user selects collateral type along with collateral sub type
    And user fills mandatory fields of national saving certificate
    And user checks the duplicates on collateral dedupe check
    And user fill "<FieldName>" of collateral details for collateral subtype
    And saves the data
    Then collateral should saved successfully

    #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal"]}
    #${ApplicantType:["indiv", "nonIndiv"]}
    @ImplementedBy-priyanshu.kashyap
    @Conventional
    Examples:
      | CollateralWB    | Collateral_national_saving_certificate | Collateral_national_saving_certificate_rowNum | FieldName      | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | collateral.xlsx | national_saving_certificate            | 382                                           | Name Of Holder | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    #${ApplicantType:["indiv"]}
    @ImplementedBy-rishabh.sachan
    @Islamic
    Examples:
      | CollateralWB    | Collateral_national_saving_certificate | Collateral_national_saving_certificate_rowNum | FieldName      | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   |
      | collateral.xlsx | national_saving_certificate            | 382                                           | Name Of Holder | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |

    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    #${ApplicantType:["indiv"]}
    @ImplementedBy-rishabh.sachan
    @Islamic
    Examples:
      | CollateralWB    | Collateral_national_saving_certificate | Collateral_national_saving_certificate_rowNum | FieldName      | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | collateral.xlsx | national_saving_certificate            | 382                                           | Name Of Holder | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |


##User dedupes for unique collateral number and finds duplicate collaterals to select one with old global coll no
  Scenario Outline: ACAUTOCAS-3055: User checks for duplicate collateral and ignores them to create new for Addition National Certificate of <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_national_saving_certificate>" and row <Collateral_national_saving_certificate_rowNum>
    And user selects collateral type along with collateral sub type
    And user fills mandatory fields of national saving certificate
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    And user add new collateral details
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_national_saving_certificate>" and row <Collateral_national_saving_certificate_rowNum2>
    When user selects collateral type along with collateral sub type
    And user fills mandatory fields of national saving certificate
    And checks for duplicate collateral
    And user views the duplicate Collaterals
    And user ignore the duplicate collaterals found
    And user saves the data
    Then user is asked to enter the reason of ignoring

    #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal"]}
    #${ApplicantType:["indiv", "nonIndiv"]}
    @ImplementedBy-priyanshu.kashyap
    @Conventional
    Examples:
      | CollateralWB    | Collateral_national_saving_certificate | Collateral_national_saving_certificate_rowNum | Collateral_national_saving_certificate_rowNum2 | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | collateral.xlsx | national_saving_certificate            | 377                                           | 380                                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    #${ApplicantType:["indiv"]}
    @ImplementedBy-rishabh.sachan
    @Islamic
    Examples:
      | CollateralWB    | Collateral_national_saving_certificate | Collateral_national_saving_certificate_rowNum | Collateral_national_saving_certificate_rowNum2 | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   |
      | collateral.xlsx | national_saving_certificate            | 377                                           | 380                                            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |

    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    #${ApplicantType:["indiv"]}
    @ImplementedBy-rishabh.sachan
    @Islamic
    Examples:
      | CollateralWB    | Collateral_national_saving_certificate | Collateral_national_saving_certificate_rowNum | Collateral_national_saving_certificate_rowNum2 | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | collateral.xlsx | national_saving_certificate            | 377                                           | 380                                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |


###Dedupe ends here
  #new scenario need to be added based on different data inputs
  Scenario Outline: ACAUTOCAS-3056:  User is able to add a new collateral as <CollateralSubType> of <ProductType> application at <ApplicationStage> stage with <Description> is <Validity> value on <Field>
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_national_saving_certificate>" and row <Collateral_national_saving_certificate_rowNum>
    And user selects collateral type along with collateral sub type
    And user adds collateral all fields based on "<CollateralSubType>" subtype of collateral type
    And user checks the duplicates on collateral dedupe check
    When user saves the Collateral Details
    Then user is able to validate addition of collateral for "<Validity>" data

    #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal"]}
    #${ApplicantType:["indiv", "nonIndiv"]}
    @ImplementedBy-rishabh.sachan
    @Conventional
    Examples:
      | CollateralWB    | Collateral_national_saving_certificate | Collateral_national_saving_certificate_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   | Description                                               | Field             | Validity |
      | collateral.xlsx | national_saving_certificate            | 197                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Alphanumeric characters with hyphens, spaces.             | collateral_ref_no | Valid    |
      | collateral.xlsx | national_saving_certificate            | 198                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains underscores (not allowed).                       | collateral_ref_no | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 199                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains hash symbol (#) (not allowed).                   | collateral_ref_no | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 200                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains dollar symbol ($) (not allowed).                 | collateral_ref_no | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 201                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains at symbol (@) (not allowed).                     | collateral_ref_no | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 203                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains forward slash (/) (not allowed).                 | collateral_ref_no | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 204                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains ampersand symbol (&) (not allowed).              | collateral_ref_no | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 205                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains dollar symbol ($) (not allowed).                 | collateral_ref_no | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 207                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Leading space (not allowed).                              | collateral_ref_no | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 209                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains caret symbol (^) (not allowed).                  | collateral_ref_no | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 210                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains exclamation mark (!) (not allowed).              | collateral_ref_no | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 211                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains asterisk symbol (*) (not allowed).               | collateral_ref_no | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 212                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains double period (..) (not allowed).                | collateral_ref_no | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 206                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains leading and trailing hyphens.                    | collateral_ref_no | Valid    |
      | collateral.xlsx | national_saving_certificate            | 214                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Alphanumeric text with spaces and a hyphen.               | description       | Valid    |
      | collateral.xlsx | national_saving_certificate            | 217                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Only special characters, which are likely inappropriate.  | description       | Valid    |
      | collateral.xlsx | national_saving_certificate            | 224                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | A valid full name with only alphabets.                    | name_of_holder    | Valid    |
      | collateral.xlsx | national_saving_certificate            | 225                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains an underscore (_).                               | name_of_holder    | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 226                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains numbers (123).                                   | name_of_holder    | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 227                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains an exclamation mark (!).                         | name_of_holder    | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 228                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains a hyphen (-).                                    | name_of_holder    | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 230                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains the at symbol (@).                               | name_of_holder    | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 234                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | A valid full name with only alphabets.                    | name_of_holder_2  | Valid    |
      | collateral.xlsx | national_saving_certificate            | 235                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains an underscore (_).                               | name_of_holder_2  | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 236                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains numbers (123).                                   | name_of_holder_2  | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 237                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains an exclamation mark (!).                         | name_of_holder_2  | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 238                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains a hyphen (-).                                    | name_of_holder_2  | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 240                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains the at symbol (@).                               | name_of_holder_2  | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 244                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | A valid full name with only alphabets.                    | name_of_holder_3  | Valid    |
      | collateral.xlsx | national_saving_certificate            | 245                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains an underscore (_).                               | name_of_holder_3  | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 246                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains numbers (123).                                   | name_of_holder_3  | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 247                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains an exclamation mark (!).                         | name_of_holder_3  | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 248                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains a hyphen (-).                                    | name_of_holder_3  | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 250                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains the at symbol (@).                               | name_of_holder_3  | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 254                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Letters, slash, space, dot, and numbers.                  | deposit_no        | Valid    |
      | collateral.xlsx | national_saving_certificate            | 255                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains lowercase letters (abc).                         | deposit_no        | Valid    |
      | collateral.xlsx | national_saving_certificate            | 256                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains special character (@).                           | deposit_no        | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 257                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains special character (#).                           | deposit_no        | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 258                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains underscore (_).                                  | deposit_no        | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 260                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains special character (^).                           | deposit_no        | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 263                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains special character (&).                           | deposit_no        | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 265                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Exactly 18 digits before the decimal.                     | deposit_amount    | Valid    |
      | collateral.xlsx | national_saving_certificate            | 267                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Negative number (not allowed).                            | deposit_amount    | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 270                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | More than 18 digits before the decimal (19 digits).       | deposit_amount    | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 271                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Zero as the integer part (not allowed).                   | deposit_amount    | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 277                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Exactly 18 digits before the decimal.                     | maturity_amount   | Valid    |
      | collateral.xlsx | national_saving_certificate            | 279                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Negative number (not allowed).                            | maturity_amount   | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 281                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | More than 18 digits before the decimal (19 digits).       | maturity_amount   | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 283                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Zero as the integer part (not allowed).                   | maturity_amount   | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 289                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | A valid date in August.                                   | issue_date        | Valid    |
      | collateral.xlsx | national_saving_certificate            | 290                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains letters (ab, cd, efgh) instead of numbers.       | issue_date        | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 291                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains special characters (#) in the month field.       | issue_date        | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 292                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains alphabets (Jan) instead of digits for the month. | issue_date        | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 293                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains special characters (!@) in the month field.      | issue_date        | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 294                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains alphabets (abcd) in the year field.              | issue_date        | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 295                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains special characters ($$$) in the year field.      | issue_date        | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 296                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Special character (!) before the day field.               | issue_date        | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 297                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains alphabets (Feb) for the month.                   | issue_date        | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 298                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Special characters (*&^%$#) in the year field.            | issue_date        | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 299                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Invalid day (33 is not a valid day).                      | issue_date        | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 300                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Invalid month (13 is not a valid month).                  | issue_date        | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 301                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Double slashes (//) instead of the valid date format.     | issue_date        | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 302                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Special character ($) in the year field.                  | issue_date        | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 303                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Special character (#) in the month field.                 | issue_date        | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 304                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Extra special character (*) between the date fields.      | issue_date        | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 305                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Letters (XYZ) in place of the day.                        | issue_date        | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 306                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Special character (#) in the year field.                  | issue_date        | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 307                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Special characters (@@) in the month field.               | issue_date        | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 308                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Letters (A) in the day field.                             | issue_date        | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 309                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | A valid date in August.                                   | maturity_date     | Valid    |
      | collateral.xlsx | national_saving_certificate            | 310                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains letters (ab, cd, efgh) instead of numbers.       | maturity_date     | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 311                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains special characters (#) in the month field.       | maturity_date     | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 312                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains alphabets (Jan) instead of digits for the month. | maturity_date     | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 313                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains special characters (!@) in the month field.      | maturity_date     | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 314                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains alphabets (abcd) in the year field.              | maturity_date     | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 315                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains special characters ($$$) in the year field.      | maturity_date     | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 316                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Special character (!) before the day field.               | maturity_date     | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 317                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains alphabets (Feb) for the month.                   | maturity_date     | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 318                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Special characters (*&^%$#) in the year field.            | maturity_date     | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 319                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Invalid day (33 is not a valid day).                      | maturity_date     | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 320                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Invalid month (13 is not a valid month).                  | maturity_date     | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 321                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Double slashes (//) instead of the valid date format.     | maturity_date     | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 322                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Special character ($) in the year field.                  | maturity_date     | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 323                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Special character (#) in the month field.                 | maturity_date     | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 324                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Extra special character (*) between the date fields.      | maturity_date     | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 325                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Letters (XYZ) in place of the day.                        | maturity_date     | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 326                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Special character (#) in the year field.                  | maturity_date     | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 327                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Special characters (@@) in the month field.               | maturity_date     | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 328                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Letters (A) in the day field.                             | maturity_date     | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 329                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | A valid number with up to 18 digits before decimal.       | face_value        | Valid    |
      | collateral.xlsx | national_saving_certificate            | 331                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Negative number (not allowed).                            | face_value        | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 332                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | More than 18 digits before the decimal (19 digits).       | face_value        | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 340                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | A valid number with up to 18 digits before decimal.       | accrued_value     | Valid    |
      | collateral.xlsx | national_saving_certificate            | 342                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Negative number (not allowed).                            | accrued_value     | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 343                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | More than 18 digits before the decimal (19 digits).       | accrued_value     | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 351                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | A valid number with up to 18 digits before decimal.       | maturity_value    | Valid    |
      | collateral.xlsx | national_saving_certificate            | 353                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Negative number (not allowed).                            | maturity_value    | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 354                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | More than 18 digits before the decimal (19 digits).       | maturity_value    | Invalid  |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    #${ApplicantType:["indiv"]}
    @ImplementedBy-rishabh.sachan
    @Islamic
    Examples:
      | CollateralWB    | Collateral_national_saving_certificate | Collateral_national_saving_certificate_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   | Description                                               | Field             | Validity |
      | collateral.xlsx | national_saving_certificate            | 197                                           | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Alphanumeric characters with hyphens, spaces.             | collateral_ref_no | Valid    |
      | collateral.xlsx | national_saving_certificate            | 198                                           | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Contains underscores (not allowed).                       | collateral_ref_no | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 199                                           | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Contains hash symbol (#) (not allowed).                   | collateral_ref_no | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 200                                           | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Contains dollar symbol ($) (not allowed).                 | collateral_ref_no | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 201                                           | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Contains at symbol (@) (not allowed).                     | collateral_ref_no | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 203                                           | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Contains forward slash (/) (not allowed).                 | collateral_ref_no | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 204                                           | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Contains ampersand symbol (&) (not allowed).              | collateral_ref_no | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 205                                           | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Contains dollar symbol ($) (not allowed).                 | collateral_ref_no | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 207                                           | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Leading space (not allowed).                              | collateral_ref_no | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 209                                           | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Contains caret symbol (^) (not allowed).                  | collateral_ref_no | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 210                                           | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Contains exclamation mark (!) (not allowed).              | collateral_ref_no | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 211                                           | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Contains asterisk symbol (*) (not allowed).               | collateral_ref_no | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 212                                           | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Contains double period (..) (not allowed).                | collateral_ref_no | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 206                                           | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Contains leading and trailing hyphens.                    | collateral_ref_no | Valid    |
      | collateral.xlsx | national_saving_certificate            | 214                                           | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Alphanumeric text with spaces and a hyphen.               | description       | Valid    |
      | collateral.xlsx | national_saving_certificate            | 217                                           | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Only special characters, which are likely inappropriate.  | description       | Valid    |
      | collateral.xlsx | national_saving_certificate            | 224                                           | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | A valid full name with only alphabets.                    | name_of_holder    | Valid    |
      | collateral.xlsx | national_saving_certificate            | 225                                           | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Contains an underscore (_).                               | name_of_holder    | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 226                                           | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Contains numbers (123).                                   | name_of_holder    | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 227                                           | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Contains an exclamation mark (!).                         | name_of_holder    | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 228                                           | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Contains a hyphen (-).                                    | name_of_holder    | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 230                                           | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Contains the at symbol (@).                               | name_of_holder    | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 234                                           | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | A valid full name with only alphabets.                    | name_of_holder_2  | Valid    |
      | collateral.xlsx | national_saving_certificate            | 235                                           | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Contains an underscore (_).                               | name_of_holder_2  | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 236                                           | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Contains numbers (123).                                   | name_of_holder_2  | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 237                                           | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Contains an exclamation mark (!).                         | name_of_holder_2  | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 238                                           | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Contains a hyphen (-).                                    | name_of_holder_2  | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 240                                           | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Contains the at symbol (@).                               | name_of_holder_2  | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 244                                           | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | A valid full name with only alphabets.                    | name_of_holder_3  | Valid    |
      | collateral.xlsx | national_saving_certificate            | 245                                           | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Contains an underscore (_).                               | name_of_holder_3  | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 246                                           | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Contains numbers (123).                                   | name_of_holder_3  | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 247                                           | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Contains an exclamation mark (!).                         | name_of_holder_3  | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 248                                           | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Contains a hyphen (-).                                    | name_of_holder_3  | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 250                                           | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Contains the at symbol (@).                               | name_of_holder_3  | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 254                                           | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Letters, slash, space, dot, and numbers.                  | deposit_no        | Valid    |
      | collateral.xlsx | national_saving_certificate            | 255                                           | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Contains lowercase letters (abc).                         | deposit_no        | Valid    |
      | collateral.xlsx | national_saving_certificate            | 256                                           | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Contains special character (@).                           | deposit_no        | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 257                                           | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Contains special character (#).                           | deposit_no        | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 258                                           | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Contains underscore (_).                                  | deposit_no        | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 260                                           | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Contains special character (^).                           | deposit_no        | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 263                                           | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Contains special character (&).                           | deposit_no        | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 265                                           | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Exactly 18 digits before the decimal.                     | deposit_amount    | Valid    |
      | collateral.xlsx | national_saving_certificate            | 267                                           | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Negative number (not allowed).                            | deposit_amount    | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 270                                           | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | More than 18 digits before the decimal (19 digits).       | deposit_amount    | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 271                                           | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Zero as the integer part (not allowed).                   | deposit_amount    | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 277                                           | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Exactly 18 digits before the decimal.                     | maturity_amount   | Valid    |
      | collateral.xlsx | national_saving_certificate            | 279                                           | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Negative number (not allowed).                            | maturity_amount   | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 281                                           | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | More than 18 digits before the decimal (19 digits).       | maturity_amount   | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 283                                           | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Zero as the integer part (not allowed).                   | maturity_amount   | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 289                                           | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | A valid date in August.                                   | issue_date        | Valid    |
      | collateral.xlsx | national_saving_certificate            | 290                                           | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Contains letters (ab, cd, efgh) instead of numbers.       | issue_date        | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 291                                           | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Contains special characters (#) in the month field.       | issue_date        | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 292                                           | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Contains alphabets (Jan) instead of digits for the month. | issue_date        | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 293                                           | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Contains special characters (!@) in the month field.      | issue_date        | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 294                                           | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Contains alphabets (abcd) in the year field.              | issue_date        | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 295                                           | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Contains special characters ($$$) in the year field.      | issue_date        | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 296                                           | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Special character (!) before the day field.               | issue_date        | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 297                                           | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Contains alphabets (Feb) for the month.                   | issue_date        | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 298                                           | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Special characters (*&^%$#) in the year field.            | issue_date        | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 299                                           | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Invalid day (33 is not a valid day).                      | issue_date        | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 300                                           | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Invalid month (13 is not a valid month).                  | issue_date        | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 301                                           | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Double slashes (//) instead of the valid date format.     | issue_date        | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 302                                           | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Special character ($) in the year field.                  | issue_date        | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 303                                           | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Special character (#) in the month field.                 | issue_date        | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 304                                           | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Extra special character (*) between the date fields.      | issue_date        | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 305                                           | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Letters (XYZ) in place of the day.                        | issue_date        | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 306                                           | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Special character (#) in the year field.                  | issue_date        | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 307                                           | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Special characters (@@) in the month field.               | issue_date        | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 308                                           | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Letters (A) in the day field.                             | issue_date        | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 309                                           | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | A valid date in August.                                   | maturity_date     | Valid    |
      | collateral.xlsx | national_saving_certificate            | 310                                           | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Contains letters (ab, cd, efgh) instead of numbers.       | maturity_date     | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 311                                           | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Contains special characters (#) in the month field.       | maturity_date     | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 312                                           | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Contains alphabets (Jan) instead of digits for the month. | maturity_date     | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 313                                           | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Contains special characters (!@) in the month field.      | maturity_date     | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 314                                           | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Contains alphabets (abcd) in the year field.              | maturity_date     | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 315                                           | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Contains special characters ($$$) in the year field.      | maturity_date     | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 316                                           | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Special character (!) before the day field.               | maturity_date     | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 317                                           | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Contains alphabets (Feb) for the month.                   | maturity_date     | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 318                                           | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Special characters (*&^%$#) in the year field.            | maturity_date     | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 319                                           | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Invalid day (33 is not a valid day).                      | maturity_date     | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 320                                           | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Invalid month (13 is not a valid month).                  | maturity_date     | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 321                                           | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Double slashes (//) instead of the valid date format.     | maturity_date     | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 322                                           | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Special character ($) in the year field.                  | maturity_date     | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 323                                           | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Special character (#) in the month field.                 | maturity_date     | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 324                                           | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Extra special character (*) between the date fields.      | maturity_date     | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 325                                           | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Letters (XYZ) in place of the day.                        | maturity_date     | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 326                                           | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Special character (#) in the year field.                  | maturity_date     | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 327                                           | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Special characters (@@) in the month field.               | maturity_date     | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 328                                           | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Letters (A) in the day field.                             | maturity_date     | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 329                                           | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | A valid number with up to 18 digits before decimal.       | face_value        | Valid    |
      | collateral.xlsx | national_saving_certificate            | 331                                           | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Negative number (not allowed).                            | face_value        | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 332                                           | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | More than 18 digits before the decimal (19 digits).       | face_value        | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 340                                           | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | A valid number with up to 18 digits before decimal.       | accrued_value     | Valid    |
      | collateral.xlsx | national_saving_certificate            | 342                                           | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Negative number (not allowed).                            | accrued_value     | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 343                                           | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | More than 18 digits before the decimal (19 digits).       | accrued_value     | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 351                                           | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | A valid number with up to 18 digits before decimal.       | maturity_value    | Valid    |
      | collateral.xlsx | national_saving_certificate            | 353                                           | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Negative number (not allowed).                            | maturity_value    | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 354                                           | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | More than 18 digits before the decimal (19 digits).       | maturity_value    | Invalid  |

    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    #${ApplicantType:["indiv"]}
    @ImplementedBy-rishabh.sachan
    @Islamic
    Examples:
      | CollateralWB    | Collateral_national_saving_certificate | Collateral_national_saving_certificate_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   | Description                                               | Field             | Validity |
      | collateral.xlsx | national_saving_certificate            | 197                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Alphanumeric characters with hyphens, spaces.             | collateral_ref_no | Valid    |
      | collateral.xlsx | national_saving_certificate            | 198                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains underscores (not allowed).                       | collateral_ref_no | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 199                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains hash symbol (#) (not allowed).                   | collateral_ref_no | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 200                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains dollar symbol ($) (not allowed).                 | collateral_ref_no | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 201                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains at symbol (@) (not allowed).                     | collateral_ref_no | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 203                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains forward slash (/) (not allowed).                 | collateral_ref_no | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 204                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains ampersand symbol (&) (not allowed).              | collateral_ref_no | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 205                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains dollar symbol ($) (not allowed).                 | collateral_ref_no | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 207                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Leading space (not allowed).                              | collateral_ref_no | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 209                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains caret symbol (^) (not allowed).                  | collateral_ref_no | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 210                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains exclamation mark (!) (not allowed).              | collateral_ref_no | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 211                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains asterisk symbol (*) (not allowed).               | collateral_ref_no | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 212                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains double period (..) (not allowed).                | collateral_ref_no | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 206                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains leading and trailing hyphens.                    | collateral_ref_no | Valid    |
      | collateral.xlsx | national_saving_certificate            | 214                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Alphanumeric text with spaces and a hyphen.               | description       | Valid    |
      | collateral.xlsx | national_saving_certificate            | 217                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Only special characters, which are likely inappropriate.  | description       | Valid    |
      | collateral.xlsx | national_saving_certificate            | 224                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | A valid full name with only alphabets.                    | name_of_holder    | Valid    |
      | collateral.xlsx | national_saving_certificate            | 225                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains an underscore (_).                               | name_of_holder    | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 226                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains numbers (123).                                   | name_of_holder    | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 227                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains an exclamation mark (!).                         | name_of_holder    | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 228                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains a hyphen (-).                                    | name_of_holder    | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 230                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains the at symbol (@).                               | name_of_holder    | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 234                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | A valid full name with only alphabets.                    | name_of_holder_2  | Valid    |
      | collateral.xlsx | national_saving_certificate            | 235                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains an underscore (_).                               | name_of_holder_2  | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 236                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains numbers (123).                                   | name_of_holder_2  | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 237                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains an exclamation mark (!).                         | name_of_holder_2  | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 238                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains a hyphen (-).                                    | name_of_holder_2  | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 240                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains the at symbol (@).                               | name_of_holder_2  | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 244                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | A valid full name with only alphabets.                    | name_of_holder_3  | Valid    |
      | collateral.xlsx | national_saving_certificate            | 245                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains an underscore (_).                               | name_of_holder_3  | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 246                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains numbers (123).                                   | name_of_holder_3  | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 247                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains an exclamation mark (!).                         | name_of_holder_3  | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 248                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains a hyphen (-).                                    | name_of_holder_3  | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 250                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains the at symbol (@).                               | name_of_holder_3  | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 254                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Letters, slash, space, dot, and numbers.                  | deposit_no        | Valid    |
      | collateral.xlsx | national_saving_certificate            | 255                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains lowercase letters (abc).                         | deposit_no        | Valid    |
      | collateral.xlsx | national_saving_certificate            | 256                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains special character (@).                           | deposit_no        | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 257                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains special character (#).                           | deposit_no        | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 258                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains underscore (_).                                  | deposit_no        | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 260                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains special character (^).                           | deposit_no        | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 263                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains special character (&).                           | deposit_no        | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 265                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Exactly 18 digits before the decimal.                     | deposit_amount    | Valid    |
      | collateral.xlsx | national_saving_certificate            | 267                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Negative number (not allowed).                            | deposit_amount    | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 270                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | More than 18 digits before the decimal (19 digits).       | deposit_amount    | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 271                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Zero as the integer part (not allowed).                   | deposit_amount    | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 277                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Exactly 18 digits before the decimal.                     | maturity_amount   | Valid    |
      | collateral.xlsx | national_saving_certificate            | 279                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Negative number (not allowed).                            | maturity_amount   | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 281                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | More than 18 digits before the decimal (19 digits).       | maturity_amount   | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 283                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Zero as the integer part (not allowed).                   | maturity_amount   | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 289                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | A valid date in August.                                   | issue_date        | Valid    |
      | collateral.xlsx | national_saving_certificate            | 290                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains letters (ab, cd, efgh) instead of numbers.       | issue_date        | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 291                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains special characters (#) in the month field.       | issue_date        | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 292                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains alphabets (Jan) instead of digits for the month. | issue_date        | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 293                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains special characters (!@) in the month field.      | issue_date        | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 294                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains alphabets (abcd) in the year field.              | issue_date        | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 295                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains special characters ($$$) in the year field.      | issue_date        | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 296                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Special character (!) before the day field.               | issue_date        | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 297                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains alphabets (Feb) for the month.                   | issue_date        | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 298                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Special characters (*&^%$#) in the year field.            | issue_date        | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 299                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Invalid day (33 is not a valid day).                      | issue_date        | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 300                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Invalid month (13 is not a valid month).                  | issue_date        | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 301                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Double slashes (//) instead of the valid date format.     | issue_date        | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 302                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Special character ($) in the year field.                  | issue_date        | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 303                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Special character (#) in the month field.                 | issue_date        | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 304                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Extra special character (*) between the date fields.      | issue_date        | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 305                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Letters (XYZ) in place of the day.                        | issue_date        | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 306                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Special character (#) in the year field.                  | issue_date        | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 307                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Special characters (@@) in the month field.               | issue_date        | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 308                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Letters (A) in the day field.                             | issue_date        | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 309                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | A valid date in August.                                   | maturity_date     | Valid    |
      | collateral.xlsx | national_saving_certificate            | 310                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains letters (ab, cd, efgh) instead of numbers.       | maturity_date     | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 311                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains special characters (#) in the month field.       | maturity_date     | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 312                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains alphabets (Jan) instead of digits for the month. | maturity_date     | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 313                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains special characters (!@) in the month field.      | maturity_date     | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 314                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains alphabets (abcd) in the year field.              | maturity_date     | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 315                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains special characters ($$$) in the year field.      | maturity_date     | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 316                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Special character (!) before the day field.               | maturity_date     | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 317                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains alphabets (Feb) for the month.                   | maturity_date     | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 318                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Special characters (*&^%$#) in the year field.            | maturity_date     | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 319                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Invalid day (33 is not a valid day).                      | maturity_date     | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 320                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Invalid month (13 is not a valid month).                  | maturity_date     | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 321                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Double slashes (//) instead of the valid date format.     | maturity_date     | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 322                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Special character ($) in the year field.                  | maturity_date     | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 323                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Special character (#) in the month field.                 | maturity_date     | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 324                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Extra special character (*) between the date fields.      | maturity_date     | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 325                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Letters (XYZ) in place of the day.                        | maturity_date     | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 326                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Special character (#) in the year field.                  | maturity_date     | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 327                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Special characters (@@) in the month field.               | maturity_date     | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 328                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Letters (A) in the day field.                             | maturity_date     | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 329                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | A valid number with up to 18 digits before decimal.       | face_value        | Valid    |
      | collateral.xlsx | national_saving_certificate            | 331                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Negative number (not allowed).                            | face_value        | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 332                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | More than 18 digits before the decimal (19 digits).       | face_value        | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 340                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | A valid number with up to 18 digits before decimal.       | accrued_value     | Valid    |
      | collateral.xlsx | national_saving_certificate            | 342                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Negative number (not allowed).                            | accrued_value     | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 343                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | More than 18 digits before the decimal (19 digits).       | accrued_value     | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 351                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | A valid number with up to 18 digits before decimal.       | maturity_value    | Valid    |
      | collateral.xlsx | national_saving_certificate            | 353                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Negative number (not allowed).                            | maturity_value    | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 354                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | More than 18 digits before the decimal (19 digits).       | maturity_value    | Invalid  |


  #new scenario need to be added based on different data inputs
  Scenario Outline: ACAUTOCAS-3057: User is able to add a new collateral as <CollateralSubType> of <ProductType> application at <ApplicationStage> stage with <Description> is <Validity> value on <Field> with new Global Collateral No
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_national_saving_certificate>" and row <Collateral_national_saving_certificate_rowNum>
    And user selects collateral type along with collateral sub type
    And user adds collateral all fields based on "<CollateralSubType>" subtype of collateral type
    And user checks the duplicates on collateral dedupe check
    When user saves the Collateral Details
    Then new collateral should be attached to the application with new Global Collateral Number on "<Validity>"

    #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal"]}
    #${ApplicantType:["indiv", "nonIndiv"]}
    @ImplementedBy-rishabh.sachan
    @Conventional
    Examples:
      | CollateralWB    | Collateral_national_saving_certificate | Collateral_national_saving_certificate_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   | Description                                               | Field             | Validity |
      | collateral.xlsx | national_saving_certificate            | 197                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Alphanumeric characters with hyphens, spaces.             | collateral_ref_no | Valid    |
      | collateral.xlsx | national_saving_certificate            | 198                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains underscores (not allowed).                       | collateral_ref_no | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 199                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains hash symbol (#) (not allowed).                   | collateral_ref_no | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 200                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains dollar symbol ($) (not allowed).                 | collateral_ref_no | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 201                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains at symbol (@) (not allowed).                     | collateral_ref_no | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 203                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains forward slash (/) (not allowed).                 | collateral_ref_no | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 204                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains ampersand symbol (&) (not allowed).              | collateral_ref_no | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 205                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains dollar symbol ($) (not allowed).                 | collateral_ref_no | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 207                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Leading space (not allowed).                              | collateral_ref_no | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 209                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains caret symbol (^) (not allowed).                  | collateral_ref_no | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 210                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains exclamation mark (!) (not allowed).              | collateral_ref_no | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 211                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains asterisk symbol (*) (not allowed).               | collateral_ref_no | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 212                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains double period (..) (not allowed).                | collateral_ref_no | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 206                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains leading and trailing hyphens.                    | collateral_ref_no | Valid    |
      | collateral.xlsx | national_saving_certificate            | 214                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Alphanumeric text with spaces and a hyphen.               | description       | Valid    |
      | collateral.xlsx | national_saving_certificate            | 217                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Only special characters, which are likely inappropriate.  | description       | Valid    |
      | collateral.xlsx | national_saving_certificate            | 224                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | A valid full name with only alphabets.                    | name_of_holder    | Valid    |
      | collateral.xlsx | national_saving_certificate            | 225                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains an underscore (_).                               | name_of_holder    | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 226                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains numbers (123).                                   | name_of_holder    | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 227                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains an exclamation mark (!).                         | name_of_holder    | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 228                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains a hyphen (-).                                    | name_of_holder    | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 230                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains the at symbol (@).                               | name_of_holder    | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 234                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | A valid full name with only alphabets.                    | name_of_holder_2  | Valid    |
      | collateral.xlsx | national_saving_certificate            | 235                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains an underscore (_).                               | name_of_holder_2  | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 236                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains numbers (123).                                   | name_of_holder_2  | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 237                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains an exclamation mark (!).                         | name_of_holder_2  | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 238                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains a hyphen (-).                                    | name_of_holder_2  | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 240                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains the at symbol (@).                               | name_of_holder_2  | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 244                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | A valid full name with only alphabets.                    | name_of_holder_3  | Valid    |
      | collateral.xlsx | national_saving_certificate            | 245                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains an underscore (_).                               | name_of_holder_3  | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 246                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains numbers (123).                                   | name_of_holder_3  | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 247                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains an exclamation mark (!).                         | name_of_holder_3  | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 248                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains a hyphen (-).                                    | name_of_holder_3  | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 250                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains the at symbol (@).                               | name_of_holder_3  | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 254                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Letters, slash, space, dot, and numbers.                  | deposit_no        | Valid    |
      | collateral.xlsx | national_saving_certificate            | 255                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains lowercase letters (abc).                         | deposit_no        | Valid    |
      | collateral.xlsx | national_saving_certificate            | 256                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains special character (@).                           | deposit_no        | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 257                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains special character (#).                           | deposit_no        | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 258                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains underscore (_).                                  | deposit_no        | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 260                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains special character (^).                           | deposit_no        | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 263                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains special character (&).                           | deposit_no        | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 265                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Exactly 18 digits before the decimal.                     | deposit_amount    | Valid    |
      | collateral.xlsx | national_saving_certificate            | 267                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Negative number (not allowed).                            | deposit_amount    | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 270                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | More than 18 digits before the decimal (19 digits).       | deposit_amount    | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 271                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Zero as the integer part (not allowed).                   | deposit_amount    | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 277                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Exactly 18 digits before the decimal.                     | maturity_amount   | Valid    |
      | collateral.xlsx | national_saving_certificate            | 279                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Negative number (not allowed).                            | maturity_amount   | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 281                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | More than 18 digits before the decimal (19 digits).       | maturity_amount   | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 283                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Zero as the integer part (not allowed).                   | maturity_amount   | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 289                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | A valid date in August.                                   | issue_date        | Valid    |
      | collateral.xlsx | national_saving_certificate            | 290                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains letters (ab, cd, efgh) instead of numbers.       | issue_date        | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 291                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains special characters (#) in the month field.       | issue_date        | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 292                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains alphabets (Jan) instead of digits for the month. | issue_date        | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 293                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains special characters (!@) in the month field.      | issue_date        | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 294                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains alphabets (abcd) in the year field.              | issue_date        | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 295                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains special characters ($$$) in the year field.      | issue_date        | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 296                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Special character (!) before the day field.               | issue_date        | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 297                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains alphabets (Feb) for the month.                   | issue_date        | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 298                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Special characters (*&^%$#) in the year field.            | issue_date        | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 299                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Invalid day (33 is not a valid day).                      | issue_date        | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 300                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Invalid month (13 is not a valid month).                  | issue_date        | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 301                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Double slashes (//) instead of the valid date format.     | issue_date        | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 302                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Special character ($) in the year field.                  | issue_date        | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 303                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Special character (#) in the month field.                 | issue_date        | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 304                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Extra special character (*) between the date fields.      | issue_date        | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 305                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Letters (XYZ) in place of the day.                        | issue_date        | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 306                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Special character (#) in the year field.                  | issue_date        | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 307                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Special characters (@@) in the month field.               | issue_date        | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 308                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Letters (A) in the day field.                             | issue_date        | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 309                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | A valid date in August.                                   | maturity_date     | Valid    |
      | collateral.xlsx | national_saving_certificate            | 310                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains letters (ab, cd, efgh) instead of numbers.       | maturity_date     | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 311                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains special characters (#) in the month field.       | maturity_date     | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 312                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains alphabets (Jan) instead of digits for the month. | maturity_date     | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 313                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains special characters (!@) in the month field.      | maturity_date     | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 314                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains alphabets (abcd) in the year field.              | maturity_date     | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 315                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains special characters ($$$) in the year field.      | maturity_date     | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 316                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Special character (!) before the day field.               | maturity_date     | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 317                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains alphabets (Feb) for the month.                   | maturity_date     | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 318                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Special characters (*&^%$#) in the year field.            | maturity_date     | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 319                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Invalid day (33 is not a valid day).                      | maturity_date     | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 320                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Invalid month (13 is not a valid month).                  | maturity_date     | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 321                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Double slashes (//) instead of the valid date format.     | maturity_date     | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 322                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Special character ($) in the year field.                  | maturity_date     | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 323                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Special character (#) in the month field.                 | maturity_date     | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 324                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Extra special character (*) between the date fields.      | maturity_date     | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 325                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Letters (XYZ) in place of the day.                        | maturity_date     | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 326                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Special character (#) in the year field.                  | maturity_date     | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 327                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Special characters (@@) in the month field.               | maturity_date     | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 328                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Letters (A) in the day field.                             | maturity_date     | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 329                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | A valid number with up to 18 digits before decimal.       | face_value        | Valid    |
      | collateral.xlsx | national_saving_certificate            | 331                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Negative number (not allowed).                            | face_value        | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 332                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | More than 18 digits before the decimal (19 digits).       | face_value        | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 340                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | A valid number with up to 18 digits before decimal.       | accrued_value     | Valid    |
      | collateral.xlsx | national_saving_certificate            | 342                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Negative number (not allowed).                            | accrued_value     | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 343                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | More than 18 digits before the decimal (19 digits).       | accrued_value     | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 351                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | A valid number with up to 18 digits before decimal.       | maturity_value    | Valid    |
      | collateral.xlsx | national_saving_certificate            | 353                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Negative number (not allowed).                            | maturity_value    | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 354                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | More than 18 digits before the decimal (19 digits).       | maturity_value    | Invalid  |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    #${ApplicantType:["indiv"]}
    @ImplementedBy-rishabh.sachan
    @Islamic
    Examples:
      | CollateralWB    | Collateral_national_saving_certificate | Collateral_national_saving_certificate_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   | Description                                               | Field             | Validity |
      | collateral.xlsx | national_saving_certificate            | 197                                           | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Alphanumeric characters with hyphens, spaces.             | collateral_ref_no | Valid    |
      | collateral.xlsx | national_saving_certificate            | 198                                           | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Contains underscores (not allowed).                       | collateral_ref_no | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 199                                           | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Contains hash symbol (#) (not allowed).                   | collateral_ref_no | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 200                                           | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Contains dollar symbol ($) (not allowed).                 | collateral_ref_no | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 201                                           | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Contains at symbol (@) (not allowed).                     | collateral_ref_no | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 203                                           | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Contains forward slash (/) (not allowed).                 | collateral_ref_no | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 204                                           | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Contains ampersand symbol (&) (not allowed).              | collateral_ref_no | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 205                                           | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Contains dollar symbol ($) (not allowed).                 | collateral_ref_no | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 207                                           | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Leading space (not allowed).                              | collateral_ref_no | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 209                                           | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Contains caret symbol (^) (not allowed).                  | collateral_ref_no | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 210                                           | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Contains exclamation mark (!) (not allowed).              | collateral_ref_no | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 211                                           | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Contains asterisk symbol (*) (not allowed).               | collateral_ref_no | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 212                                           | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Contains double period (..) (not allowed).                | collateral_ref_no | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 206                                           | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Contains leading and trailing hyphens.                    | collateral_ref_no | Valid    |
      | collateral.xlsx | national_saving_certificate            | 214                                           | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Alphanumeric text with spaces and a hyphen.               | description       | Valid    |
      | collateral.xlsx | national_saving_certificate            | 217                                           | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Only special characters, which are likely inappropriate.  | description       | Valid    |
      | collateral.xlsx | national_saving_certificate            | 224                                           | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | A valid full name with only alphabets.                    | name_of_holder    | Valid    |
      | collateral.xlsx | national_saving_certificate            | 225                                           | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Contains an underscore (_).                               | name_of_holder    | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 226                                           | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Contains numbers (123).                                   | name_of_holder    | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 227                                           | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Contains an exclamation mark (!).                         | name_of_holder    | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 228                                           | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Contains a hyphen (-).                                    | name_of_holder    | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 230                                           | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Contains the at symbol (@).                               | name_of_holder    | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 234                                           | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | A valid full name with only alphabets.                    | name_of_holder_2  | Valid    |
      | collateral.xlsx | national_saving_certificate            | 235                                           | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Contains an underscore (_).                               | name_of_holder_2  | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 236                                           | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Contains numbers (123).                                   | name_of_holder_2  | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 237                                           | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Contains an exclamation mark (!).                         | name_of_holder_2  | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 238                                           | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Contains a hyphen (-).                                    | name_of_holder_2  | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 240                                           | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Contains the at symbol (@).                               | name_of_holder_2  | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 244                                           | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | A valid full name with only alphabets.                    | name_of_holder_3  | Valid    |
      | collateral.xlsx | national_saving_certificate            | 245                                           | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Contains an underscore (_).                               | name_of_holder_3  | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 246                                           | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Contains numbers (123).                                   | name_of_holder_3  | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 247                                           | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Contains an exclamation mark (!).                         | name_of_holder_3  | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 248                                           | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Contains a hyphen (-).                                    | name_of_holder_3  | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 250                                           | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Contains the at symbol (@).                               | name_of_holder_3  | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 254                                           | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Letters, slash, space, dot, and numbers.                  | deposit_no        | Valid    |
      | collateral.xlsx | national_saving_certificate            | 255                                           | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Contains lowercase letters (abc).                         | deposit_no        | Valid    |
      | collateral.xlsx | national_saving_certificate            | 256                                           | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Contains special character (@).                           | deposit_no        | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 257                                           | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Contains special character (#).                           | deposit_no        | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 258                                           | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Contains underscore (_).                                  | deposit_no        | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 260                                           | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Contains special character (^).                           | deposit_no        | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 263                                           | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Contains special character (&).                           | deposit_no        | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 265                                           | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Exactly 18 digits before the decimal.                     | deposit_amount    | Valid    |
      | collateral.xlsx | national_saving_certificate            | 267                                           | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Negative number (not allowed).                            | deposit_amount    | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 270                                           | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | More than 18 digits before the decimal (19 digits).       | deposit_amount    | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 271                                           | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Zero as the integer part (not allowed).                   | deposit_amount    | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 277                                           | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Exactly 18 digits before the decimal.                     | maturity_amount   | Valid    |
      | collateral.xlsx | national_saving_certificate            | 279                                           | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Negative number (not allowed).                            | maturity_amount   | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 281                                           | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | More than 18 digits before the decimal (19 digits).       | maturity_amount   | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 283                                           | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Zero as the integer part (not allowed).                   | maturity_amount   | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 289                                           | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | A valid date in August.                                   | issue_date        | Valid    |
      | collateral.xlsx | national_saving_certificate            | 290                                           | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Contains letters (ab, cd, efgh) instead of numbers.       | issue_date        | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 291                                           | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Contains special characters (#) in the month field.       | issue_date        | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 292                                           | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Contains alphabets (Jan) instead of digits for the month. | issue_date        | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 293                                           | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Contains special characters (!@) in the month field.      | issue_date        | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 294                                           | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Contains alphabets (abcd) in the year field.              | issue_date        | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 295                                           | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Contains special characters ($$$) in the year field.      | issue_date        | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 296                                           | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Special character (!) before the day field.               | issue_date        | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 297                                           | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Contains alphabets (Feb) for the month.                   | issue_date        | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 298                                           | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Special characters (*&^%$#) in the year field.            | issue_date        | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 299                                           | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Invalid day (33 is not a valid day).                      | issue_date        | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 300                                           | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Invalid month (13 is not a valid month).                  | issue_date        | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 301                                           | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Double slashes (//) instead of the valid date format.     | issue_date        | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 302                                           | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Special character ($) in the year field.                  | issue_date        | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 303                                           | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Special character (#) in the month field.                 | issue_date        | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 304                                           | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Extra special character (*) between the date fields.      | issue_date        | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 305                                           | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Letters (XYZ) in place of the day.                        | issue_date        | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 306                                           | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Special character (#) in the year field.                  | issue_date        | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 307                                           | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Special characters (@@) in the month field.               | issue_date        | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 308                                           | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Letters (A) in the day field.                             | issue_date        | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 309                                           | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | A valid date in August.                                   | maturity_date     | Valid    |
      | collateral.xlsx | national_saving_certificate            | 310                                           | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Contains letters (ab, cd, efgh) instead of numbers.       | maturity_date     | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 311                                           | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Contains special characters (#) in the month field.       | maturity_date     | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 312                                           | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Contains alphabets (Jan) instead of digits for the month. | maturity_date     | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 313                                           | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Contains special characters (!@) in the month field.      | maturity_date     | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 314                                           | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Contains alphabets (abcd) in the year field.              | maturity_date     | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 315                                           | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Contains special characters ($$$) in the year field.      | maturity_date     | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 316                                           | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Special character (!) before the day field.               | maturity_date     | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 317                                           | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Contains alphabets (Feb) for the month.                   | maturity_date     | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 318                                           | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Special characters (*&^%$#) in the year field.            | maturity_date     | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 319                                           | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Invalid day (33 is not a valid day).                      | maturity_date     | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 320                                           | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Invalid month (13 is not a valid month).                  | maturity_date     | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 321                                           | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Double slashes (//) instead of the valid date format.     | maturity_date     | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 322                                           | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Special character ($) in the year field.                  | maturity_date     | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 323                                           | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Special character (#) in the month field.                 | maturity_date     | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 324                                           | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Extra special character (*) between the date fields.      | maturity_date     | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 325                                           | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Letters (XYZ) in place of the day.                        | maturity_date     | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 326                                           | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Special character (#) in the year field.                  | maturity_date     | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 327                                           | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Special characters (@@) in the month field.               | maturity_date     | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 328                                           | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Letters (A) in the day field.                             | maturity_date     | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 329                                           | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | A valid number with up to 18 digits before decimal.       | face_value        | Valid    |
      | collateral.xlsx | national_saving_certificate            | 331                                           | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Negative number (not allowed).                            | face_value        | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 332                                           | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | More than 18 digits before the decimal (19 digits).       | face_value        | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 340                                           | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | A valid number with up to 18 digits before decimal.       | accrued_value     | Valid    |
      | collateral.xlsx | national_saving_certificate            | 342                                           | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Negative number (not allowed).                            | accrued_value     | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 343                                           | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | More than 18 digits before the decimal (19 digits).       | accrued_value     | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 351                                           | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | A valid number with up to 18 digits before decimal.       | maturity_value    | Valid    |
      | collateral.xlsx | national_saving_certificate            | 353                                           | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Negative number (not allowed).                            | maturity_value    | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 354                                           | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | More than 18 digits before the decimal (19 digits).       | maturity_value    | Invalid  |

    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    #${ApplicantType:["indiv"]}
    @ImplementedBy-rishabh.sachan
    @Islamic
    Examples:
      | CollateralWB    | Collateral_national_saving_certificate | Collateral_national_saving_certificate_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   | Description                                               | Field             | Validity |
      | collateral.xlsx | national_saving_certificate            | 197                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Alphanumeric characters with hyphens, spaces.             | collateral_ref_no | Valid    |
      | collateral.xlsx | national_saving_certificate            | 198                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains underscores (not allowed).                       | collateral_ref_no | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 199                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains hash symbol (#) (not allowed).                   | collateral_ref_no | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 200                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains dollar symbol ($) (not allowed).                 | collateral_ref_no | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 201                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains at symbol (@) (not allowed).                     | collateral_ref_no | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 203                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains forward slash (/) (not allowed).                 | collateral_ref_no | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 204                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains ampersand symbol (&) (not allowed).              | collateral_ref_no | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 205                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains dollar symbol ($) (not allowed).                 | collateral_ref_no | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 207                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Leading space (not allowed).                              | collateral_ref_no | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 209                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains caret symbol (^) (not allowed).                  | collateral_ref_no | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 210                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains exclamation mark (!) (not allowed).              | collateral_ref_no | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 211                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains asterisk symbol (*) (not allowed).               | collateral_ref_no | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 212                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains double period (..) (not allowed).                | collateral_ref_no | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 206                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains leading and trailing hyphens.                    | collateral_ref_no | Valid    |
      | collateral.xlsx | national_saving_certificate            | 214                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Alphanumeric text with spaces and a hyphen.               | description       | Valid    |
      | collateral.xlsx | national_saving_certificate            | 217                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Only special characters, which are likely inappropriate.  | description       | Valid    |
      | collateral.xlsx | national_saving_certificate            | 224                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | A valid full name with only alphabets.                    | name_of_holder    | Valid    |
      | collateral.xlsx | national_saving_certificate            | 225                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains an underscore (_).                               | name_of_holder    | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 226                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains numbers (123).                                   | name_of_holder    | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 227                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains an exclamation mark (!).                         | name_of_holder    | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 228                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains a hyphen (-).                                    | name_of_holder    | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 230                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains the at symbol (@).                               | name_of_holder    | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 234                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | A valid full name with only alphabets.                    | name_of_holder_2  | Valid    |
      | collateral.xlsx | national_saving_certificate            | 235                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains an underscore (_).                               | name_of_holder_2  | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 236                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains numbers (123).                                   | name_of_holder_2  | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 237                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains an exclamation mark (!).                         | name_of_holder_2  | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 238                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains a hyphen (-).                                    | name_of_holder_2  | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 240                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains the at symbol (@).                               | name_of_holder_2  | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 244                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | A valid full name with only alphabets.                    | name_of_holder_3  | Valid    |
      | collateral.xlsx | national_saving_certificate            | 245                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains an underscore (_).                               | name_of_holder_3  | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 246                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains numbers (123).                                   | name_of_holder_3  | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 247                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains an exclamation mark (!).                         | name_of_holder_3  | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 248                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains a hyphen (-).                                    | name_of_holder_3  | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 250                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains the at symbol (@).                               | name_of_holder_3  | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 254                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Letters, slash, space, dot, and numbers.                  | deposit_no        | Valid    |
      | collateral.xlsx | national_saving_certificate            | 255                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains lowercase letters (abc).                         | deposit_no        | Valid    |
      | collateral.xlsx | national_saving_certificate            | 256                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains special character (@).                           | deposit_no        | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 257                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains special character (#).                           | deposit_no        | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 258                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains underscore (_).                                  | deposit_no        | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 260                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains special character (^).                           | deposit_no        | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 263                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains special character (&).                           | deposit_no        | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 265                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Exactly 18 digits before the decimal.                     | deposit_amount    | Valid    |
      | collateral.xlsx | national_saving_certificate            | 267                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Negative number (not allowed).                            | deposit_amount    | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 270                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | More than 18 digits before the decimal (19 digits).       | deposit_amount    | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 271                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Zero as the integer part (not allowed).                   | deposit_amount    | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 277                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Exactly 18 digits before the decimal.                     | maturity_amount   | Valid    |
      | collateral.xlsx | national_saving_certificate            | 279                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Negative number (not allowed).                            | maturity_amount   | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 281                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | More than 18 digits before the decimal (19 digits).       | maturity_amount   | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 283                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Zero as the integer part (not allowed).                   | maturity_amount   | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 289                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | A valid date in August.                                   | issue_date        | Valid    |
      | collateral.xlsx | national_saving_certificate            | 290                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains letters (ab, cd, efgh) instead of numbers.       | issue_date        | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 291                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains special characters (#) in the month field.       | issue_date        | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 292                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains alphabets (Jan) instead of digits for the month. | issue_date        | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 293                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains special characters (!@) in the month field.      | issue_date        | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 294                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains alphabets (abcd) in the year field.              | issue_date        | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 295                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains special characters ($$$) in the year field.      | issue_date        | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 296                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Special character (!) before the day field.               | issue_date        | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 297                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains alphabets (Feb) for the month.                   | issue_date        | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 298                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Special characters (*&^%$#) in the year field.            | issue_date        | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 299                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Invalid day (33 is not a valid day).                      | issue_date        | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 300                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Invalid month (13 is not a valid month).                  | issue_date        | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 301                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Double slashes (//) instead of the valid date format.     | issue_date        | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 302                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Special character ($) in the year field.                  | issue_date        | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 303                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Special character (#) in the month field.                 | issue_date        | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 304                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Extra special character (*) between the date fields.      | issue_date        | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 305                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Letters (XYZ) in place of the day.                        | issue_date        | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 306                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Special character (#) in the year field.                  | issue_date        | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 307                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Special characters (@@) in the month field.               | issue_date        | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 308                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Letters (A) in the day field.                             | issue_date        | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 309                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | A valid date in August.                                   | maturity_date     | Valid    |
      | collateral.xlsx | national_saving_certificate            | 310                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains letters (ab, cd, efgh) instead of numbers.       | maturity_date     | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 311                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains special characters (#) in the month field.       | maturity_date     | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 312                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains alphabets (Jan) instead of digits for the month. | maturity_date     | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 313                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains special characters (!@) in the month field.      | maturity_date     | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 314                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains alphabets (abcd) in the year field.              | maturity_date     | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 315                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains special characters ($$$) in the year field.      | maturity_date     | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 316                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Special character (!) before the day field.               | maturity_date     | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 317                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Contains alphabets (Feb) for the month.                   | maturity_date     | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 318                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Special characters (*&^%$#) in the year field.            | maturity_date     | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 319                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Invalid day (33 is not a valid day).                      | maturity_date     | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 320                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Invalid month (13 is not a valid month).                  | maturity_date     | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 321                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Double slashes (//) instead of the valid date format.     | maturity_date     | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 322                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Special character ($) in the year field.                  | maturity_date     | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 323                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Special character (#) in the month field.                 | maturity_date     | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 324                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Extra special character (*) between the date fields.      | maturity_date     | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 325                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Letters (XYZ) in place of the day.                        | maturity_date     | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 326                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Special character (#) in the year field.                  | maturity_date     | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 327                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Special characters (@@) in the month field.               | maturity_date     | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 328                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Letters (A) in the day field.                             | maturity_date     | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 329                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | A valid number with up to 18 digits before decimal.       | face_value        | Valid    |
      | collateral.xlsx | national_saving_certificate            | 331                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Negative number (not allowed).                            | face_value        | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 332                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | More than 18 digits before the decimal (19 digits).       | face_value        | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 340                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | A valid number with up to 18 digits before decimal.       | accrued_value     | Valid    |
      | collateral.xlsx | national_saving_certificate            | 342                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Negative number (not allowed).                            | accrued_value     | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 343                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | More than 18 digits before the decimal (19 digits).       | accrued_value     | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 351                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | A valid number with up to 18 digits before decimal.       | maturity_value    | Valid    |
      | collateral.xlsx | national_saving_certificate            | 353                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Negative number (not allowed).                            | maturity_value    | Invalid  |
      | collateral.xlsx | national_saving_certificate            | 354                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | More than 18 digits before the decimal (19 digits).       | maturity_value    | Invalid  |


##create another after this one
  Scenario Outline: ACAUTOCAS-3058: Capture National Saving Certificate against an application with create another after this one of <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_national_saving_certificate>" and row <Collateral_national_saving_certificate_rowNum>
    And user selects collateral type along with collateral sub type
    When user fills mandatory fields of national saving certificate
    And user selects create another after this one option
    And user checks the duplicates on collateral dedupe check
    And user saves the data of collateral subtype
    Then CollateralPage remains available to create another collateral

    #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal"]}
    #${ApplicantType:["indiv", "nonIndiv"]}
    @ImplementedBy-priyanshu.kashyap
    @Conventional
    Examples:
      | CollateralWB    | Collateral_national_saving_certificate | Collateral_national_saving_certificate_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | collateral.xlsx | national_saving_certificate            | 0                                             | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    #${ApplicantType:["indiv"]}
    @ImplementedBy-rishabh.sachan
    @Islamic
    Examples:
      | CollateralWB    | Collateral_national_saving_certificate | Collateral_national_saving_certificate_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   |
      | collateral.xlsx | national_saving_certificate            | 0                                             | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |

    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    #${ApplicantType:["indiv"]}
    @ImplementedBy-rishabh.sachan
    @Islamic
    Examples:
      | CollateralWB    | Collateral_national_saving_certificate | Collateral_national_saving_certificate_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | collateral.xlsx | national_saving_certificate            | 0                                             | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |

  # ${CollType:[]}
  ###Squash:137607
  ###Story:CAS-23473
  ###Bug:
  @Sanity
  #FeatureID-ACAUTOCAS-237,ACAUTOCAS-2
  Scenario Outline: ACAUTOCAS-16794: user adds multiple collateral to <ProductType> application at <ApplicationStage> stage with sub type as National Saving Certificate
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user open collateral page of "<ApplicationStage>" stage
    When user fills mandatory fields of collateral details to attach collateral from the excel file "<SourceDataFile>":
      | SourceSheet                 | SourceSheetRow | CollSubType                 |
      | national_saving_certificate | 189            | National Saving Certificate |
      | national_saving_certificate | 190            | National Saving Certificate |
      | national_saving_certificate | 191            | National Saving Certificate |
      | national_saving_certificate | 192            | National Saving Certificate |
      | national_saving_certificate | 193            | National Saving Certificate |
      | national_saving_certificate | 194            | National Saving Certificate |
      | national_saving_certificate | 195            | National Saving Certificate |
      | national_saving_certificate | 196            | National Saving Certificate |
    Then user check the all the added collateral to application

    #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal"]}
    #${ApplicantType:["indiv", "nonIndiv"]}
    @ImplementedBy-rishabh.sachan
    @Conventional
    Examples:
      | SourceDataFile  | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    #${ApplicantType:["indiv"]}
    @ImplementedBy-rishabh.sachan
    @Islamic
    Examples:
      | SourceDataFile  | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   |
      | collateral.xlsx | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |

    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    #${ApplicantType:["indiv"]}
    @ImplementedBy-rishabh.sachan
    @Islamic
    Examples:
      | SourceDataFile  | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |


  @Sanity
  # ${CollType:[]}
  ###Squash:137607
  ###Story:CAS-23473
  ###Bug:
  #FeatureID-ACAUTOCAS-237,ACAUTOCAS-2
  Scenario Outline: ACAUTOCAS-16795: user views multiple collateral attached to <ProductType> application at <ApplicationStage> stage with sub type as National Saving Certificate
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user open collateral page of "<ApplicationStage>" stage
    When user fills mandatory fields of collateral details to attach collateral from the excel file "<CollateralWB>":
      | SourceSheet                 | SourceSheetRow | CollSubType                 |
      | national_saving_certificate | 189            | National Saving Certificate |
      | national_saving_certificate | 190            | National Saving Certificate |
      | national_saving_certificate | 191            | National Saving Certificate |
      | national_saving_certificate | 192            | National Saving Certificate |
      | national_saving_certificate | 193            | National Saving Certificate |
      | national_saving_certificate | 194            | National Saving Certificate |
      | national_saving_certificate | 195            | National Saving Certificate |
      | national_saving_certificate | 196            | National Saving Certificate |
    Then user should be able to reconcile the data for below mentioned collaterals successfully from the excel file "<CollateralWB>":
      | SourceSheet                 | SourceSheetRow | CollSubType                 |
      | national_saving_certificate | 189            | National Saving Certificate |
      | national_saving_certificate | 190            | National Saving Certificate |
      | national_saving_certificate | 191            | National Saving Certificate |
      | national_saving_certificate | 192            | National Saving Certificate |
      | national_saving_certificate | 193            | National Saving Certificate |
      | national_saving_certificate | 194            | National Saving Certificate |
      | national_saving_certificate | 195            | National Saving Certificate |
      | national_saving_certificate | 196            | National Saving Certificate |

    #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal"]}
    #${ApplicantType:["indiv", "nonIndiv"]}
    @ImplementedBy-rishabh.sachan
    @Conventional
    Examples:
      | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralWB    |
      | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | collateral.xlsx |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    #${ApplicantType:["indiv"]}
    @ImplementedBy-rishabh.sachan
    @Islamic
    Examples:
      | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralWB    |
      | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | collateral.xlsx |

    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    #${ApplicantType:["indiv"]}
    @ImplementedBy-rishabh.sachan
    @Islamic
    Examples:
      | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralWB    |
      | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | collateral.xlsx |


  ###Squash:137607
  ###Story:CAS-23473
  ###Bug:
  #FeatureID-ACAUTOCAS-237,ACAUTOCAS-2
  Scenario Outline: ACAUTOCAS-16796: user views multiple collateral attached to <ProductType> application at <ApplicationStage> stage with sub type as National Saving Certificate at Enquiry
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user open collateral page of "<ApplicationStage>" stage
    And user fills mandatory fields of collateral details to attach collateral from the excel file "<CollateralWB>":
      | SourceSheet                 | SourceSheetRow | CollSubType                 |
      | national_saving_certificate | 189            | National Saving Certificate |
      | national_saving_certificate | 190            | National Saving Certificate |
      | national_saving_certificate | 191            | National Saving Certificate |
      | national_saving_certificate | 192            | National Saving Certificate |
      | national_saving_certificate | 193            | National Saving Certificate |
      | national_saving_certificate | 194            | National Saving Certificate |
      | national_saving_certificate | 195            | National Saving Certificate |
      | national_saving_certificate | 196            | National Saving Certificate |
    And user opens application from enquiry menu
    When user opens Collateral Page for viewing attached collaterals at "<ApplicationStage>"
    Then user should be able to reconcile the data for below mentioned collaterals successfully from the excel file "<CollateralWB>":
      | SourceSheet                 | SourceSheetRow | CollSubType                 |
      | national_saving_certificate | 189            | National Saving Certificate |
      | national_saving_certificate | 190            | National Saving Certificate |
      | national_saving_certificate | 191            | National Saving Certificate |
      | national_saving_certificate | 192            | National Saving Certificate |
      | national_saving_certificate | 193            | National Saving Certificate |
      | national_saving_certificate | 194            | National Saving Certificate |
      | national_saving_certificate | 195            | National Saving Certificate |
      | national_saving_certificate | 196            | National Saving Certificate |

    #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal"]}
    #${ApplicantType:["indiv", "nonIndiv"]}
    @ImplementedBy-rishabh.sachan
    @Conventional
    Examples:
      | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralWB    |
      | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | collateral.xlsx |


    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    #${ApplicantType:["indiv"]}
    @ImplementedBy-rishabh.sachan
    @Islamic
    Examples:
      | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralWB    |
      | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | collateral.xlsx |

    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    #${ApplicantType:["indiv"]}
    @ImplementedBy-rishabh.sachan
    @Islamic
    Examples:
      | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralWB    |
      | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | collateral.xlsx |
