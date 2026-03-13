@Epic-Secondary_Collateral
@AuthoredBy-rsurya.kumar
@ReviewedBy-harshprit.kumar
@Reconciled
@ReviewedByDEV
@ReviewedSecCollateral
@ReleaseSecCollateralM5

#${CollateralSubType:["Fixed Deposit"]}
#${applicantType:["indiv","nonindiv"]}
Feature: Addition of Fixed Deposit

#  Pre-Requisites---
#  In this feature we will attach an Deposit Type Collateral-Fixed Deposit to the loan application.
#  Ensure the Product Type Collateral Mapping is available in Collateral_Setup.xlsx using the query Collateral_Setup.sql
#  Ensure the Product Collateral Mapping is available in Prod_Collateral_Setup.xlsx using the query Prod_Collateral_Setup.sql

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0

  #${ProductType:["PF","EDU"]}
  #PF(Secured),EDU(Secured)
  Scenario Outline: ACAUTOCAS-2509: user moves to the next stage without collateral of <applicantType> on <ProductType> on <ApplicationStage>
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    When user moves to the next stage
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_assetDetails>" and row <Collateral_assetDetails_rowNum>
    Then user should get error message without adding collateral
    @ImplementedBy-shivam.gusain
    @Perishable
    @Conventional
    #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE", "Recommendation","Credit Approval", "Recommendation", "Reconsideration", "Disbursal Initiation"]}
    Examples:
      | CollateralWB    | Collateral_assetDetails | Collateral_assetDetails_rowNum | ProductType   | ApplicationStage   | key     | Category | applicantType   |
      | collateral.xlsx | fixed_deposit           | 0                              | <ProductType> | <ApplicationStage> | nocolla |          | <applicantType> |

    @ImplementedBy-pallavi.singh
    @Perishable
    @Islamic
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    Examples:
      | CollateralWB    | Collateral_assetDetails | Collateral_assetDetails_rowNum | ProductType   | ApplicationStage   | key     | Category   | applicantType   |
      | collateral.xlsx | fixed_deposit           | 0                              | <ProductType> | <ApplicationStage> | nocolla | <Category> | <applicantType> |

  Scenario Outline: ACAUTOCAS-3000: User enters mandatory information for Fixed Deposit and saves without checking duplicates of <applicantType> on <ProductType> on <ApplicationStage>
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user selects collateral type along with collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_fixedDeposit>" and row <Collateral_fixedDeposit_rowNum>
    When user fills mandatory fields of collateral details for fixed Deposit
    And user saves the data
    Then user should receive a proper failure message
    @ImplementedBy-shivam.gusain
    @Conventional
    #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE", "Credit Approval", "Recommendation", "Reconsideration", "Disbursal Initiation"]}
    Examples:
      | CollateralWB    | Collateral_fixedDeposit | Collateral_fixedDeposit_rowNum | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | key | Category | applicantType   |
      | collateral.xlsx | fixed_deposit           | 170                            | default            | 16                        | <ProductType> | <ApplicationStage> |     |          | <applicantType> |

    @ImplementedBy-pallavi.singh
    @Islamic
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    Examples:
      | CollateralWB    | Collateral_fixedDeposit | Collateral_fixedDeposit_rowNum | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | key | Category   | applicantType   |
      | collateral.xlsx | fixed_deposit           | 170                            | default            | 16                        | <ProductType> | <ApplicationStage> |     | <Category> | <applicantType> |

    @ImplementedBy-pallavi.singh
    @Islamic
    #${ProductType:["IAF","IHF"]}
    #${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    Examples:
      | CollateralWB    | Collateral_fixedDeposit | Collateral_fixedDeposit_rowNum | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | key | Category | applicantType   |
      | collateral.xlsx | fixed_deposit           | 170                            | default            | 16                        | <ProductType> | <ApplicationStage> |     |          | <applicantType> |

  Scenario Outline: ACAUTOCAS-3001: User misses entering <field> mandatory information for Fixed Deposit and saves of <applicantType> on <ProductType> on <ApplicationStage>
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user selects collateral type along with collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_fixedDeposit>" and row <Collateral_fixedDeposit_rowNum>
    When user misses entering one or more mandatory fields
    And user checks for duplicate collateral
    Then user should receive a proper failure message
    @ImplementedBy-shivam.gusain
    @Conventional
    #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE", "Credit Approval", "Recommendation", "Reconsideration", "Disbursal Initiation"]}
    Examples:
      | CollateralWB    | Collateral_fixedDeposit | Collateral_fixedDeposit_rowNum | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | key | Category | applicantType   | field                |
      | collateral.xlsx | fixed_deposit           | 175                            | default            | 16                        | <ProductType> | <ApplicationStage> |     |          | <applicantType> | Fixed Deposit Number |
      | collateral.xlsx | fixed_deposit           | 176                            | default            | 16                        | <ProductType> | <ApplicationStage> |     |          | <applicantType> | Issuer Bank          |

    @ImplementedBy-pallavi.singh
    @Islamic
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    Examples:
      | CollateralWB    | Collateral_fixedDeposit | Collateral_fixedDeposit_rowNum | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | key | Category   | applicantType   | field                |
      | collateral.xlsx | fixed_deposit           | 175                            | default            | 16                        | <ProductType> | <ApplicationStage> |     | <Category> | <applicantType> | Issuer Bank          |
      | collateral.xlsx | fixed_deposit           | 176                            | default            | 16                        | <ProductType> | <ApplicationStage> |     | <Category> | <applicantType> | Fixed Deposit Number |

    @ImplementedBy-pallavi.singh
    @Islamic
    #${ProductType:["IAF","IHF"]}
    #${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    Examples:
      | CollateralWB    | Collateral_fixedDeposit | Collateral_fixedDeposit_rowNum | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | key | Category | applicantType   | field                |
      | collateral.xlsx | fixed_deposit           | 175                            | default            | 16                        | <ProductType> | <ApplicationStage> |     |          | <applicantType> | Issuer Bank          |
      | collateral.xlsx | fixed_deposit           | 176                            | default            | 16                        | <ProductType> | <ApplicationStage> |     |          | <applicantType> | Fixed Deposit Number |

    #FeatureID-ACAUTOCAS-235
  Scenario Outline: ACAUTOCAS-16797: User misses entering <field> mandatory information for Fixed Deposit and saves of <applicantType> on <ProductType> on <ApplicationStage>
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user selects collateral type along with collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_fixedDeposit>" and row <Collateral_fixedDeposit_rowNum>
    When user misses entering one or more mandatory fields
    And user checks the duplicates on collateral dedupe check
    And user saves the data
    Then "<field>" field throws error message in collateral details
    @ImplementedBy-shivam.gusain
    @Conventional
    #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE", "Credit Approval", "Recommendation", "Reconsideration", "Disbursal Initiation"]}
    Examples:
      | CollateralWB    | Collateral_fixedDeposit | Collateral_fixedDeposit_rowNum | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | key | Category | applicantType   | field                        |
      | collateral.xlsx | fixed_deposit           | 177                            | default            | 16                        | <ProductType> | <ApplicationStage> |     |          | <applicantType> | Name of Fixed Deposit Holder |
      | collateral.xlsx | fixed_deposit           | 178                            | default            | 16                        | <ProductType> | <ApplicationStage> |     |          | <applicantType> | Deposit Amount               |
      | collateral.xlsx | fixed_deposit           | 179                            | default            | 16                        | <ProductType> | <ApplicationStage> |     |          | <applicantType> | Maturity Date(Fixed Deposit) |

    @ImplementedBy-pallavi.singh
    @Islamic
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    Examples:
      | CollateralWB    | Collateral_fixedDeposit | Collateral_fixedDeposit_rowNum | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | key | Category   | applicantType   | field                        |
      | collateral.xlsx | fixed_deposit           | 177                            | default            | 16                        | <ProductType> | <ApplicationStage> |     | <Category> | <applicantType> | Name of Fixed Deposit Holder |
      | collateral.xlsx | fixed_deposit           | 178                            | default            | 16                        | <ProductType> | <ApplicationStage> |     | <Category> | <applicantType> | Deposit Amount               |
      | collateral.xlsx | fixed_deposit           | 179                            | default            | 16                        | <ProductType> | <ApplicationStage> |     | <Category> | <applicantType> | Maturity Date(Fixed Deposit) |

    @ImplementedBy-pallavi.singh
    @Islamic
    #${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    Examples:
      | CollateralWB    | Collateral_fixedDeposit | Collateral_fixedDeposit_rowNum | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | key | Category | applicantType   | field                        |
      | collateral.xlsx | fixed_deposit           | 177                            | default            | 16                        | <ProductType> | <ApplicationStage> |     |          | <applicantType> | Name of Fixed Deposit Holder |
      | collateral.xlsx | fixed_deposit           | 178                            | default            | 16                        | <ProductType> | <ApplicationStage> |     |          | <applicantType> | Deposit Amount               |
      | collateral.xlsx | fixed_deposit           | 179                            | default            | 16                        | <ProductType> | <ApplicationStage> |     |          | <applicantType> | Maturity Date(Fixed Deposit) |

  Scenario Outline: ACAUTOCAS-2510: user moves a new Deposit Type collateral to the loan application in fixed deposit of <applicantType> on <ProductType> on <ApplicationStage>
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user selects collateral type along with collateral sub type
    When user attempts to select a collateral type
    Then application should allow only the collateral type which is linked to the product
    @ImplementedBy-ankit.yadav
    @Conventional
    #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE", "Credit Approval", "Recommendation", "Reconsideration", "Disbursal Initiation"]}
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | key | Category | applicantType   |
      | collateral.xlsx | default            | 16                        | <ProductType> | <ApplicationStage> |     |          | <applicantType> |

    @ImplementedBy-pallavi.singh
    @Islamic
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | key | Category   | applicantType   |
      | collateral.xlsx | default            | 16                        | <ProductType> | <ApplicationStage> |     | <Category> | <applicantType> |

    @ImplementedBy-pallavi.singh
    @Islamic
    #${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | key | Category | applicantType   |
      | collateral.xlsx | default            | 16                        | <ProductType> | <ApplicationStage> |     |          | <applicantType> |


  Scenario Outline: ACAUTOCAS-2511:  user adds a collateral with sub type as Fixed Deposit of <applicantType> on <ProductType> on <ApplicationStage>
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    When user attempts to select a collateral type
    Then user should be able to add sub collateral
    @ImplementedBy-ankit.yadav
    @Conventional
    #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE", "Credit Approval", "Recommendation", "Reconsideration", "Disbursal Initiation"]}
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | key | Category | applicantType   |
      | collateral.xlsx | default            | 16                        | <ProductType> | <ApplicationStage> |     |          | <applicantType> |

    @ImplementedBy-pallavi.singh
    @Islamic
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | key | Category   | applicantType   |
      | collateral.xlsx | default            | 16                        | <ProductType> | <ApplicationStage> |     | <Category> | <applicantType> |

    @ImplementedBy-pallavi.singh
    @Islamic
    #${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | key | Category | applicantType   |
      | collateral.xlsx | default            | 16                        | <ProductType> | <ApplicationStage> |     |          | <applicantType> |


#  ACAUTOCAS-2512: jira id senario from gwt already covered in above secnario having jira id ACAUTOCAS-3001
  Scenario Outline: ACAUTOCAS-3002: CollateralPage Collateral Details validation for fixed deposit of <applicantType> on <ProductType> on <ApplicationStage>
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_fixedDeposit>" and row <Collateral_fixedDeposit_rowNum>
    When user selects collateral type along with collateral sub type
    And user fills all fields of home page of collateral details for Fixed Deposit
    And user checks the duplicates on collateral dedupe check
    And user saves the data
    Then user should receive a proper failure message
    @ImplementedBy-priyanshu.kashyap
    @Conventional
    #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE", "Credit Approval", "Recommendation", "Reconsideration", "Disbursal Initiation"]}
    Examples:
      | CollateralWB    | Collateral_fixedDeposit | Collateral_fixedDeposit_rowNum | ProductType   | ApplicationStage   | key | Category | applicantType   |
      | collateral.xlsx | fixed_deposit           | 193                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> |

    @ImplementedBy-pallavi.singh
    @Islamic
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    Examples:
      | CollateralWB    | Collateral_fixedDeposit | Collateral_fixedDeposit_rowNum | ProductType   | ApplicationStage   | key | Category   | applicantType   |
      | collateral.xlsx | fixed_deposit           | 193                            | <ProductType> | <ApplicationStage> |     | <Category> | <applicantType> |

    @ImplementedBy-pallavi.singh
    @Islamic
    #${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    Examples:
      | CollateralWB    | Collateral_fixedDeposit | Collateral_fixedDeposit_rowNum | ProductType   | ApplicationStage   | key | Category | applicantType   |
      | collateral.xlsx | fixed_deposit           | 193                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> |


###Dedupe Check
  Scenario Outline: ACAUTOCAS-3003: User executes dedupe for Fixed Deposit with <Var> of <applicantType> on <ProductType> on <ApplicationStage>
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_fixedDeposit>" and row <Collateral_fixedDeposit_rowNum>
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    When user selects collateral type along with collateral sub type
    And user fills mandatory fields of collateral details for fixed Deposit
    And checks for duplicate collateral
    Then user gets a notification message
    @ImplementedBy-aditya.tomar
    @Conventional
    #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE", "Credit Approval", "Recommendation", "Reconsideration", "Disbursal Initiation"]}
    Examples:
      | Var         | CollateralWB    | Collateral_fixedDeposit | Collateral_fixedDeposit_rowNum | ProductType   | ApplicationStage   | key | Category | applicantType   |
      | blank data  | collateral.xlsx | fixed_deposit           | 198                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> |
      | fd number   | collateral.xlsx | fixed_deposit           | 199                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> |
      | issuer bank | collateral.xlsx | fixed_deposit           | 200                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> |

    @ImplementedBy-pallavi.singh
    @Islamic
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    Examples:
      | Var         | CollateralWB    | Collateral_fixedDeposit | Collateral_fixedDeposit_rowNum | ProductType   | ApplicationStage   | key | Category   | applicantType   |
      | blank data  | collateral.xlsx | fixed_deposit           | 198                            | <ProductType> | <ApplicationStage> |     | <Category> | <applicantType> |
      | issuer bank | collateral.xlsx | fixed_deposit           | 199                            | <ProductType> | <ApplicationStage> |     | <Category> | <applicantType> |
      | fd number   | collateral.xlsx | fixed_deposit           | 200                            | <ProductType> | <ApplicationStage> |     | <Category> | <applicantType> |

    @ImplementedBy-pallavi.singh
    @Islamic
    #${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    Examples:
      | Var         | CollateralWB    | Collateral_fixedDeposit | Collateral_fixedDeposit_rowNum | ProductType   | ApplicationStage   | key | Category | applicantType   |
      | blank data  | collateral.xlsx | fixed_deposit           | 198                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> |
      | issuer bank | collateral.xlsx | fixed_deposit           | 199                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> |
      | fd number   | collateral.xlsx | fixed_deposit           | 200                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> |


    #FeatureID-ACAUTOCAS-235
  Scenario Outline: ACAUTOCAS-16798: User executes dedupe for Fixed Deposit with <Var> of <applicantType> on <ProductType> on <ApplicationStage>
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_fixedDeposit>" and row <Collateral_fixedDeposit_rowNum>
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    When user selects collateral type along with collateral sub type
    And user fills mandatory fields of collateral details for fixed Deposit
    And checks for duplicate collateral
    Then user should get a proper dedupe message
    @ImplementedBy-aditya.tomar
    @Conventional
    #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE", "Credit Approval", "Recommendation", "Reconsideration", "Disbursal Initiation"]}
    Examples:
      | Var                | CollateralWB    | Collateral_fixedDeposit | Collateral_fixedDeposit_rowNum | ProductType   | ApplicationStage   | key | Category | applicantType   |
      | 0 Duplicates Found | collateral.xlsx | fixed_deposit           | 201                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> |

    @ImplementedBy-pallavi.singh
    @Islamic
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    Examples:
      | Var                | CollateralWB    | Collateral_fixedDeposit | Collateral_fixedDeposit_rowNum | ProductType   | ApplicationStage   | key | Category   | applicantType   |
      | 0 Duplicates Found | collateral.xlsx | fixed_deposit           | 201                            | <ProductType> | <ApplicationStage> |     | <Category> | <applicantType> |

    @ImplementedBy-pallavi.singh
    @Islamic
    #${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    Examples:
      | Var                | CollateralWB    | Collateral_fixedDeposit | Collateral_fixedDeposit_rowNum | ProductType   | ApplicationStage   | key | Category | applicantType   |
      | 0 Duplicates Found | collateral.xlsx | fixed_deposit           | 201                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> |


  #FeatureID-ACAUTOCAS-235
  #Data in CMS required please refer to original gwt
  Scenario Outline: ACAUTOCAS-4357:  Dedupe revalidation to identify duplicate collaterals of <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<SecondaryApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<SecondaryApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_fixedDeposit>" and row <Collateral_fixedDeposit_rowNumber>
    And user selects collateral type along with collateral sub type
    And user fills mandatory fields of collateral details for fixed Deposit
    And user checks the duplicates on collateral dedupe check
    And user clicks on save collateral to save CMS data
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_fixedDeposit>" and row <Collateral_fixedDeposit_rowNumber2>
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user selects collateral type along with collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_fixedDeposit>" and row <Collateral_fixedDeposit_rowNumber3>
    When user fills mandatory fields of collateral details for fixed Deposit
    And checks for duplicate collateral
    And user views the duplicate collateral
    Then user should validate <Number> duplicate "<CollateralSubType>" record for "<SourceSystem>" source system
    @ImplementedBy-aditya.tomar
    @Conventional
    #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE", "Credit Approval", "Recommendation", "Reconsideration", "Disbursal Initiation"]}
    Examples:
      | CollateralWB    | Collateral_fixedDeposit | Collateral_fixedDeposit_rowNumber | Collateral_fixedDeposit_rowNumber2 | Collateral_fixedDeposit_rowNumber3 | ProductType   | ApplicationStage   | SecondaryApplicationStage | Key | Category | ApplicantType   | Number | SourceSystem | CollateralSubType   |
      | collateral.xlsx | fixed_deposit           | 85                                | 337                                | 333                                | <ProductType> | <ApplicationStage> | Post Approval             |     |          | <applicantType> | 1      | CMS          | <CollateralSubType> |
      | collateral.xlsx | fixed_deposit           | 85                                | 337                                | 333                                | <ProductType> | <ApplicationStage> | Post Approval             |     |          | <applicantType> | 1      | CAS          | <CollateralSubType> |


  Scenario Outline:ACAUTOCAS-3004: User checks for duplicate collateral and views the duplicates on Fixed Deposit in collateral of <applicantType> on <ProductType> on <ApplicationStage>
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<SecondaryApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user open collateral page of "<SecondaryApplicationStage>" stage to add new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_fixedDeposit>" and row <Collateral_fixedDeposit_rowNum>
    And user selects collateral type along with collateral sub type
    And user fills mandatory fields of collateral details for fixed Deposit
    And user checks the duplicates on collateral dedupe check
    And user clicks on save collateral to save CMS data
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user open collateral page of "<ApplicationStage>" stage to add new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_fixedDeposit>" and row <Collateral_fixedDeposit_rowNum>
    When user selects collateral type along with collateral sub type
    And user fills mandatory fields of collateral details for fixed Deposit
    And checks for duplicate collateral
    Then User should be able to view the duplicates of "<CollateralSubType>" collateral
    @ImplementedBy-aditya.tomar
    @Conventional
    #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE", "Credit Approval", "Recommendation", "Reconsideration", "Disbursal Initiation"]}
    Examples:
      | CollateralWB    | Collateral_fixedDeposit | Collateral_fixedDeposit_rowNum | ProductType   | SecondaryApplicationStage | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | fixed_deposit           | 0                              | <ProductType> | Post Approval             | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> |


  Scenario Outline:ACAUTOCAS-3005:  User attaches a duplicate Fixed Deposit collateral attached to same application of <applicantType> on <ProductType> on <ApplicationStage>
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_fixedDeposit>" and row <Collateral_fixedDeposit_rowNum>
    And user selects collateral type along with collateral sub type
    And user fills mandatory fields of collateral details for fixed Deposit
    And user checks the duplicates on collateral dedupe check
    And user saves collateral data
    And user clicks on plus icon to add new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_fixedDeposit>" and row <Collateral_fixedDeposit_rowNum>
    When user selects collateral type along with collateral sub type
    And user fills mandatory fields of collateral details for fixed Deposit
    And checks for duplicate collateral
    And user views the duplicate collateral
    And user select the "<CollateralSubType>" collateral from dedupe result which is already attached to the application
    And user saves selected dedupe collateral
    Then user gets a notification message
    @ImplementedBy-aman.verma
    @Conventional
    #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE", "Credit Approval", "Recommendation", "Reconsideration", "Disbursal Initiation"]}
    Examples:
      | CollateralWB    | Collateral_fixedDeposit | Collateral_fixedDeposit_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | fixed_deposit           | 0                              | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> |

    @ImplementedBy-pallavi.singh
    @Islamic
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    Examples:
      | CollateralWB    | Collateral_fixedDeposit | Collateral_fixedDeposit_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | fixed_deposit           | 0                              | <ProductType> | <ApplicationStage> |     | <Category> | <applicantType> | <CollateralSubType> |

    @ImplementedBy-pallavi.singh
    @Islamic
    #${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    Examples:
      | CollateralWB    | Collateral_fixedDeposit | Collateral_fixedDeposit_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | fixed_deposit           | 0                              | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> |


  Scenario Outline: ACAUTOCAS-3006:  user attaches a duplicate Fixed Deposit collateral attached to a different application of <applicantType> on <ProductType> on <ApplicationStage>
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<SecondaryApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<SecondaryApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_fixedDeposit>" and row 0
    And user selects collateral type along with collateral sub type
    And user fills mandatory fields of collateral details for fixed Deposit
    And user checks the duplicates on collateral dedupe check
    And user clicks on save collateral to save CMS data
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_fixedDeposit>" and row 0
    When user selects collateral type along with collateral sub type
    And user fills mandatory fields of collateral details for fixed Deposit
    And checks for duplicate collateral
    And user views the duplicate collateral
    And user select the "<CollateralSubType>" collateral from dedupe result which is not attached to the application
    And user saves selected dedupe collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_fixedDeposit>" and row <Collateral_fixedDeposit_rowNum>
    Then user gets a notification message
    @ImplementedBy-aditya.tomar
    @Conventional
    #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE", "Credit Approval", "Recommendation", "Reconsideration", "Disbursal Initiation"]}
    Examples:
      | CollateralWB    | Collateral_fixedDeposit | Collateral_fixedDeposit_rowNum | ProductType   | SecondaryApplicationStage | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | fixed_deposit           | 2                              | <ProductType> | Post Approval             | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> |

  @LoggedBug
  Scenario Outline: ACAUTOCAS-3007: User modifies Collateral Details after running dedupe for Fixed Deposit and attempts to save of <applicantType> on <ProductType> on <ApplicationStage>
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user selects collateral type along with collateral sub type
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user checks the duplicates on collateral dedupe check
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_fixedDeposit>" and row <Collateral_fixedDeposit_rowNum>
    And user modifies in collateral page "<FieldModified>"
    When saves the data
    Then user should receive a proper failure message
    @ImplementedBy-ankit.yadav
    @Conventional
    #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE", "Credit Approval", "Recommendation", "Reconsideration", "Disbursal Initiation"]}
    Examples:
      | CollateralWB    | Collateral_fixedDeposit | Collateral_fixedDeposit_rowNum | FieldModified                     | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | key | category | applicantType   |
      | collateral.xlsx | fixed_deposit           | 181                            | Issuer Bank                       | default            | 736                       | <ProductType> | <ApplicationStage> |     |          | <applicantType> |
      | collateral.xlsx | fixed_deposit           | 182                            | Fixed Deposit Number              | default            | 736                       | <ProductType> | <ApplicationStage> |     |          | <applicantType> |
      | collateral.xlsx | fixed_deposit           | 183                            | Fixed Deposit Number, Issuer Bank | default            | 736                       | <ProductType> | <ApplicationStage> |     |          | <applicantType> |

    @ImplementedBy-pallavi.singh
    @Islamic
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    Examples:
      | CollateralWB    | Collateral_fixedDeposit | Collateral_fixedDeposit_rowNum | FieldModified                     | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | key | category   | applicantType   |
      | collateral.xlsx | fixed_deposit           | 181                            | Issuer Bank                       | default            | 736                       | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> |
      | collateral.xlsx | fixed_deposit           | 182                            | Fixed Deposit Number              | default            | 736                       | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> |
      | collateral.xlsx | fixed_deposit           | 183                            | Fixed Deposit Number, Issuer Bank | default            | 736                       | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> |

    @ImplementedBy-pallavi.singh
    @Islamic
    #${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    Examples:
      | CollateralWB    | Collateral_fixedDeposit | Collateral_fixedDeposit_rowNum | FieldModified                     | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | key | category | applicantType   |
      | collateral.xlsx | fixed_deposit           | 181                            | Issuer Bank                       | default            | 736                       | <ProductType> | <ApplicationStage> |     |          | <applicantType> |
      | collateral.xlsx | fixed_deposit           | 182                            | Fixed Deposit Number              | default            | 736                       | <ProductType> | <ApplicationStage> |     |          | <applicantType> |
      | collateral.xlsx | fixed_deposit           | 183                            | Fixed Deposit Number, Issuer Bank | default            | 736                       | <ProductType> | <ApplicationStage> |     |          | <applicantType> |


  Scenario Outline: ACAUTOCAS-3008: User checks for duplicate collateral and ignores them to create new collateral of <applicantType> on <ProductType> on <ApplicationStage>
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user selects collateral type along with collateral sub type
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user checks the duplicates on collateral dedupe check
    And user saves collateral data
    And user clicks on plus icon to add new collateral
    And user selects collateral type along with collateral sub type
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And checks for duplicate collateral
    When user ignore the duplicate collaterals found
    And user saves the data
    Then user gets a notification message
    @ImplementedBy-aditya.tomar
    @Conventional
    #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE", "Credit Approval", "Recommendation", "Reconsideration", "Disbursal Initiation"]}
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | key | category | applicantType   |
      | collateral.xlsx | default            | 837                       | <ProductType> | <ApplicationStage> |     |          | <applicantType> |

    @ImplementedBy-pallavi.singh
    @Islamic
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | key | category   | applicantType   |
      | collateral.xlsx | default            | 837                       | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> |

    @ImplementedBy-pallavi.singh
    @Islamic
    #${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | key | category | applicantType   |
      | collateral.xlsx | default            | 837                       | <ProductType> | <ApplicationStage> |     |          | <applicantType> |


  #user able to attach insurance as collateral with Nominee
  Scenario Outline: ACAUTOCAS-3009:  Fixed Deposit as collateral with nominee details of <applicantType> on <ProductType> on <ApplicationStage>
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_fixedDeposit>" and row <Collateral_fixedDeposit_rowNum>
    And user selects collateral type along with collateral sub type
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user checks the duplicates on collateral dedupe check
    And user enters nominee details
    When user saves the data
    Then nominee data should be saved successfully
    @ImplementedBy-aditya.tomar
    @Conventional
    #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE", "Credit Approval", "Recommendation", "Reconsideration", "Disbursal Initiation"]}
    Examples:
      | CollateralWB    | Collateral_fixedDeposit | Collateral_fixedDeposit_rowNum | ProductType   | ApplicationStage   | key | category | applicantType   |
      | collateral.xlsx | fixed_deposit           | 203                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> |
      | collateral.xlsx | fixed_deposit           | 204                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> |

    @ImplementedBy-pallavi.singh
    @Islamic
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    Examples:
      | CollateralWB    | Collateral_fixedDeposit | Collateral_fixedDeposit_rowNum | ProductType   | ApplicationStage   | key | category   | applicantType   |
      | collateral.xlsx | fixed_deposit           | 203                            | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> |
      | collateral.xlsx | fixed_deposit           | 204                            | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> |

    @ImplementedBy-pallavi.singh
    @Islamic
    #${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    Examples:
      | CollateralWB    | Collateral_fixedDeposit | Collateral_fixedDeposit_rowNum | ProductType   | ApplicationStage   | key | category | applicantType   |
      | collateral.xlsx | fixed_deposit           | 203                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> |
      | collateral.xlsx | fixed_deposit           | 204                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> |


  Scenario Outline: ACAUTOCAS-3010:  Fixed Deposit as collateral with joint nominee details of <applicantType> on <ProductType> on <ApplicationStage>
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user selects collateral type along with collateral sub type
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    When user add multiple nominee details
      | collateral.xlsx | fixed_deposit | 184 |
      | collateral.xlsx | fixed_deposit | 185 |
      | collateral.xlsx | fixed_deposit | 186 |
    And user checks the duplicates on collateral dedupe check
    And saves the data
    Then nominee data should be saved successfully
    @ImplementedBy-mohd.aman
    @Conventional
    #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE", "Credit Approval", "Recommendation", "Reconsideration", "Disbursal Initiation"]}
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | key | category | applicantType   |
      | collateral.xlsx | default            | 736                       | <ProductType> | <ApplicationStage> |     |          | <applicantType> |

    @ImplementedBy-pallavi.singh
    @Islamic
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | key | category   | applicantType   |
      | collateral.xlsx | default            | 736                       | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> |

    @ImplementedBy-pallavi.singh
    @Islamic
    #${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | key | category | applicantType   |
      | collateral.xlsx | default            | 736                       | <ProductType> | <ApplicationStage> |     |          | <applicantType> |


  Scenario Outline: ACAUTOCAS-3011:  Fixed Deposit as collateral with joint nominee details high entitlement of <applicantType> on <ProductType> on <ApplicationStage>
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user selects collateral type along with collateral sub type
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user add multiple nominee details
      | collateral.xlsx | fixed_deposit | 187 |
      | collateral.xlsx | fixed_deposit | 188 |
      | collateral.xlsx | fixed_deposit | 189 |
    And user checks the duplicates on collateral dedupe check
    When saves the data
    Then user should receive a proper failure message
    @ImplementedBy-mohd.aman
    @Conventional
    #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE", "Credit Approval", "Recommendation", "Reconsideration", "Disbursal Initiation"]}
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | key | category | applicantType   |
      | collateral.xlsx | default            | 736                       | <ProductType> | <ApplicationStage> |     |          | <applicantType> |

    @ImplementedBy-pallavi.singh
    @Islamic
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | key | category   | applicantType   |
      | collateral.xlsx | default            | 736                       | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> |

    @ImplementedBy-pallavi.singh
    @Islamic
    #${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | key | category | applicantType   |
      | collateral.xlsx | default            | 736                       | <ProductType> | <ApplicationStage> |     |          | <applicantType> |

  @LoggegBug
  Scenario Outline: ACAUTOCAS-3012: Fixed Deposit as collateral with joint nominee details low entitlement of <applicantType> on <ProductType> on <ApplicationStage>
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user selects collateral type along with collateral sub type
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user add multiple nominee details
      | collateral.xlsx | fixed_deposit | 190 |
      | collateral.xlsx | fixed_deposit | 191 |
      | collateral.xlsx | fixed_deposit | 192 |
    And user checks the duplicates on collateral dedupe check
    When saves the data
    Then user should receive a proper failure message
    @ImplementedBy-shivam.gusain
    @Conventional
    #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE", "Credit Approval", "Recommendation", "Reconsideration", "Disbursal Initiation"]}
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | key | category | applicantType   |
      | collateral.xlsx | default            | 736                       | <ProductType> | <ApplicationStage> |     |          | <applicantType> |

    @ImplementedBy-pallavi.singh
    @Islamic
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | key | category   | applicantType   |
      | collateral.xlsx | default            | 736                       | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> |

    @ImplementedBy-pallavi.singh
    @Islamic
    #${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | key | category | applicantType   |
      | collateral.xlsx | default            | 736                       | <ProductType> | <ApplicationStage> |     |          | <applicantType> |


  Scenario Outline: ACAUTOCAS-3013: Fixed Deposit as collateral without <MissingField>  in nominee details of <applicantType> on <ProductType> on <ApplicationStage>
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user selects collateral type along with collateral sub type
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "fixed_deposit" and row <NomineeDetailsRowNumber>
    And user enters nominee details
    And user checks the duplicates on collateral dedupe check
    When saves the data
    Then user gets error around "<MissingField>" field
    @ImplementedBy-shivam.gusain
    @Conventional
    #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE", "Credit Approval", "Recommendation", "Reconsideration", "Disbursal Initiation"]}
    Examples:
      | CollateralWB    | MissingField           | NomineeDetailsRowNumber | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | key | category | applicantType   |
      | collateral.xlsx | Nominee Relationship   | 338                     | default            | 736                       | <ProductType> | <ApplicationStage> |     |          | <applicantType> |
      | collateral.xlsx | Nominee Gender         | 339                     | default            | 736                       | <ProductType> | <ApplicationStage> |     |          | <applicantType> |
      | collateral.xlsx | Nominee Name           | 340                     | default            | 736                       | <ProductType> | <ApplicationStage> |     |          | <applicantType> |
      | collateral.xlsx | Appointee Relationship | 341                     | default            | 736                       | <ProductType> | <ApplicationStage> |     |          | <applicantType> |
      | collateral.xlsx | Appointee DOB          | 342                     | default            | 736                       | <ProductType> | <ApplicationStage> |     |          | <applicantType> |
      | collateral.xlsx | Appointee Name         | 343                     | default            | 736                       | <ProductType> | <ApplicationStage> |     |          | <applicantType> |

    @ImplementedBy-pallavi.singh
    @Islamic
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    Examples:
      | CollateralWB    | MissingField           | NomineeDetailsRowNumber | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | key | category   | applicantType   |
      | collateral.xlsx | Nominee Relationship   | 338                     | default            | 736                       | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> |
      | collateral.xlsx | Nominee Gender         | 339                     | default            | 736                       | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> |
      | collateral.xlsx | Nominee Name           | 340                     | default            | 736                       | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> |
      | collateral.xlsx | Appointee Relationship | 341                     | default            | 736                       | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> |
      | collateral.xlsx | Appointee DOB          | 342                     | default            | 736                       | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> |
      | collateral.xlsx | Appointee Name         | 343                     | default            | 736                       | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> |

    @ImplementedBy-pallavi.singh
    @Islamic
    #${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    Examples:
      | CollateralWB    | MissingField           | NomineeDetailsRowNumber | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | key | category | applicantType   |
      | collateral.xlsx | Nominee Relationship   | 338                     | default            | 736                       | <ProductType> | <ApplicationStage> |     |          | <applicantType> |
      | collateral.xlsx | Nominee Gender         | 339                     | default            | 736                       | <ProductType> | <ApplicationStage> |     |          | <applicantType> |
      | collateral.xlsx | Nominee Name           | 340                     | default            | 736                       | <ProductType> | <ApplicationStage> |     |          | <applicantType> |
      | collateral.xlsx | Appointee Relationship | 341                     | default            | 736                       | <ProductType> | <ApplicationStage> |     |          | <applicantType> |
      | collateral.xlsx | Appointee DOB          | 342                     | default            | 736                       | <ProductType> | <ApplicationStage> |     |          | <applicantType> |
      | collateral.xlsx | Appointee Name         | 343                     | default            | 736                       | <ProductType> | <ApplicationStage> |     |          | <applicantType> |

  #Taluka and Village should be prompted form the seed data once saved, but not prompted.
  @ImplementedBy-pallavi.singh
  Scenario Outline: ACAUTOCAS-3014:  CollateralPage Nominee Address Taluka and Village Validation 1 of <applicantType> on <ProductType> on <ApplicationStage>
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "collateral.xlsx" under sheet "default" and row 736
    And user selects collateral type along with collateral sub type
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user clicks on add nominee on nominee details
    And user add the address on the nominee details
    And user reads data from the excel file "collateral.xlsx" under sheet "nominee_address" and row 12
    And user fills nominee address detail
    When user edits the added nominee address detail
    Then the fields Taluka and Village should accept them as if they are defined in masters
    @Conventional
    #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE", "Credit Approval", "Recommendation", "Reconsideration", "Disbursal Initiation"]}
    Examples:
      | ProductType   | ApplicationStage   | key | category | applicantType   |
      | <ProductType> | <ApplicationStage> |     |          | <applicantType> |

    @Islamic
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    Examples:
      | ProductType   | ApplicationStage   | key | category   | applicantType   |
      | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> |

    @Islamic
    #${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    Examples:
      | ProductType   | ApplicationStage   | key | category | applicantType   |
      | <ProductType> | <ApplicationStage> |     |          | <applicantType> |


  Scenario Outline: ACAUTOCAS-3015:  CollateralPage Nominee Address Taluka and Village Validation 2 of <applicantType> on <ProductType> on <ApplicationStage>
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_fixedDeposit>" and row <Collateral_fixedDeposit_rowNum>
    And user selects collateral type along with collateral sub type
    And user fills mandatory fields of collateral details for fixed Deposit
    And user enters nominee details
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_guarantor_address>" and row <Collateral_guarantor_address_rowNum>
    And user add the address on the nominee details
    When user enters the village and taluka
    Then the fields Taluka and Village should accept them as if they are not defined in masters
    #Field should populate a message saying No Data Found
    @ImplementedBy-aditya.tomar
    @Conventional
    #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE", "Credit Approval", "Recommendation", "Reconsideration", "Disbursal Initiation"]}
    Examples:
      | ProductType   | ApplicationStage   | key | category | applicantType   | Collateral_guarantor_address | Collateral_guarantor_address_rowNum | CollateralWB    | Collateral_fixedDeposit | Collateral_fixedDeposit_rowNum |
      | <ProductType> | <ApplicationStage> |     |          | <applicantType> | guarantor_address            | 47                                  | collateral.xlsx | fixed_deposit           | 203                            |
      | <ProductType> | <ApplicationStage> |     |          | <applicantType> | guarantor_address            | 48                                  | collateral.xlsx | fixed_deposit           | 203                            |
      | <ProductType> | <ApplicationStage> |     |          | <applicantType> | guarantor_address            | 49                                  | collateral.xlsx | fixed_deposit           | 203                            |


  Scenario Outline: ACAUTOCAS-3016:  user is able to add a new collateral as Fixed Deposit application of <applicantType> on <ProductType> on <ApplicationStage> with <Description> is <Validity> value on <Field> for dataset <Collateral_fixedDeposit_rowNum>
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "default" and row 736
    And user selects collateral type along with collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_fixedDeposit>" and row <Collateral_fixedDeposit_rowNum>
    And user adds collateral all fields based on "<CollateralSubType>" subtype of collateral type
    And user checks the duplicates on collateral dedupe check
    When user saves the data of collateral subtype
    Then user is able to validate the addition of new collateral for "<Validity>" data
    @ImplementedBy-aditya.tomar
    @Conventional
    #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE", "Credit Approval", "Recommendation", "Reconsideration", "Disbursal Initiation"]}
    Examples:
      | CollateralWB    | Collateral_fixedDeposit | Collateral_fixedDeposit_rowNum | ProductType   | ApplicationStage   | key | category | applicantType   | CollateralSubType   | Description                                                   | Field                        | Validity |
      | collateral.xlsx | fixed_deposit           | 215                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Alphanumeric characters (letters and numbers) only.           | Collateral Ref No.           | Valid    |
      | collateral.xlsx | fixed_deposit           | 216                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Alphanumeric characters with hyphen.                          | Collateral Ref No.           | Valid    |
      | collateral.xlsx | fixed_deposit           | 217                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Alphanumeric characters with a space.                         | Collateral Ref No.           | Valid    |
      | collateral.xlsx | fixed_deposit           | 218                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Alphanumeric characters with spaces in between.               | Collateral Ref No.           | Valid    |
      | collateral.xlsx | fixed_deposit           | 219                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Alphanumeric characters with hyphen.                          | Collateral Ref No.           | Valid    |
      | collateral.xlsx | fixed_deposit           | 220                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Alphanumeric characters with spaces and hyphen.               | Collateral Ref No.           | Valid    |
      | collateral.xlsx | fixed_deposit           | 221                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Alphanumeric characters with spaces and hyphen.               | Collateral Ref No.           | Valid    |
      | collateral.xlsx | fixed_deposit           | 222                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Alphanumeric characters with hyphen and space.                | Collateral Ref No.           | Valid    |
      | collateral.xlsx | fixed_deposit           | 223                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Alphanumeric characters with space and hyphen.                | Collateral Ref No.           | Valid    |
      | collateral.xlsx | fixed_deposit           | 224                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Alphanumeric characters with hyphen.                          | Collateral Ref No.           | Valid    |
      | collateral.xlsx | fixed_deposit           | 225                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Contains invalid character (@).                               | Collateral Ref No.           | Invalid  |
      | collateral.xlsx | fixed_deposit           | 226                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Contains invalid character (#).                               | Collateral Ref No.           | Invalid  |
      | collateral.xlsx | fixed_deposit           | 227                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Contains invalid character (!).                               | Collateral Ref No.           | Invalid  |
      | collateral.xlsx | fixed_deposit           | 228                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Starts with invalid character (#).                            | Collateral Ref No.           | Invalid  |
      | collateral.xlsx | fixed_deposit           | 229                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Contains invalid character (^).                               | Collateral Ref No.           | Invalid  |
      | collateral.xlsx | fixed_deposit           | 230                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Contains invalid character (@).                               | Collateral Ref No.           | Invalid  |
      | collateral.xlsx | fixed_deposit           | 231                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Contains invalid character (*).                               | Collateral Ref No.           | Invalid  |
      | collateral.xlsx | fixed_deposit           | 232                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Ends with invalid character (#).                              | Collateral Ref No.           | Invalid  |
      | collateral.xlsx | fixed_deposit           | 233                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Starts with invalid characters (!@).                          | Collateral Ref No.           | Invalid  |
      | collateral.xlsx | fixed_deposit           | 234                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Starts with invalid character (#).                            | Collateral Ref No.           | Invalid  |
      | collateral.xlsx | fixed_deposit           | 235                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Any alphanumeric text is allowed, as there's no validation.   | Description                  | Valid    |
      | collateral.xlsx | fixed_deposit           | 236                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Any length of alphanumeric text is allowed.                   | Description                  | Valid    |
      | collateral.xlsx | fixed_deposit           | 237                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Numeric characters are allowed as there are no restrictions.  | Description                  | Valid    |
      | collateral.xlsx | fixed_deposit           | 238                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Special characters are allowed as there is no restriction.    | Description                  | Valid    |
      | collateral.xlsx | fixed_deposit           | 239                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Empty string is allowed.                                      | Description                  | Valid    |
      | collateral.xlsx | fixed_deposit           | 240                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Single word input is allowed.                                 | Description                  | Valid    |
      | collateral.xlsx | fixed_deposit           | 241                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Empty field is allowed.                                       | Description                  | Valid    |
      | collateral.xlsx | fixed_deposit           | 242                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Alphanumeric characters (letters and numbers) only.           | Fixed Deposit Number         | Valid    |
      | collateral.xlsx | fixed_deposit           | 243                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Contains an invalid character (-).                            | Fixed Deposit Number         | Invalid  |
      | collateral.xlsx | fixed_deposit           | 244                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Alphanumeric characters with a /.                             | Fixed Deposit Number         | Valid    |
      | collateral.xlsx | fixed_deposit           | 245                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Alphanumeric characters with a space.                         | Fixed Deposit Number         | Valid    |
      | collateral.xlsx | fixed_deposit           | 246                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Alphanumeric characters with a dot.                           | Fixed Deposit Number         | Valid    |
      | collateral.xlsx | fixed_deposit           | 247                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Alphanumeric characters, space, /, and dot allowed.           | Fixed Deposit Number         | Valid    |
      | collateral.xlsx | fixed_deposit           | 248                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Alphanumeric characters, /, and dot allowed.                  | Fixed Deposit Number         | Valid    |
      | collateral.xlsx | fixed_deposit           | 249                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Alphanumeric characters, space, /, and dot allowed.           | Fixed Deposit Number         | Valid    |
      | collateral.xlsx | fixed_deposit           | 250                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Alphanumeric characters, dot, /, and space allowed.           | Fixed Deposit Number         | Valid    |
      | collateral.xlsx | fixed_deposit           | 251                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Alphanumeric characters with space, dot, and / allowed.       | Fixed Deposit Number         | Valid    |
      | collateral.xlsx | fixed_deposit           | 252                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Contains an invalid character (@).                            | Fixed Deposit Number         | Invalid  |
      | collateral.xlsx | fixed_deposit           | 253                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Contains an invalid character (#).                            | Fixed Deposit Number         | Invalid  |
      | collateral.xlsx | fixed_deposit           | 254                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Contains an invalid character ($).                            | Fixed Deposit Number         | Invalid  |
      | collateral.xlsx | fixed_deposit           | 255                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Contains an invalid character (&).                            | Fixed Deposit Number         | Invalid  |
      | collateral.xlsx | fixed_deposit           | 256                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Contains an invalid character (^).                            | Fixed Deposit Number         | Invalid  |
      | collateral.xlsx | fixed_deposit           | 257                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Contains an invalid character (*).                            | Fixed Deposit Number         | Invalid  |
      | collateral.xlsx | fixed_deposit           | 258                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Starts with an invalid character (#).                         | Fixed Deposit Number         | Invalid  |
      | collateral.xlsx | fixed_deposit           | 259                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Contains an invalid character (_).                            | Fixed Deposit Number         | Invalid  |
      | collateral.xlsx | fixed_deposit           | 260                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Alphanumeric characters, space, and / allowed.                | Fixed Deposit Number         | Valid    |
      | collateral.xlsx | fixed_deposit           | 261                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Alphanumeric characters with space, dot, and / allowed.       | Fixed Deposit Number         | Valid    |
      | collateral.xlsx | fixed_deposit           | 262                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Alphanumeric characters, space, /, and dot allowed.           | Fixed Deposit Number         | Valid    |
      | collateral.xlsx | fixed_deposit           | 263                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Only alphabetic characters and spaces between names allowed.  | Name of Fixed Deposit Holder | Valid    |
      | collateral.xlsx | fixed_deposit           | 264                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Contains numbers, which are not allowed.                      | Name of Fixed Deposit Holder | Invalid  |
      | collateral.xlsx | fixed_deposit           | 265                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Contains a hyphen, which is not allowed.                      | Name of Fixed Deposit Holder | Invalid  |
      | collateral.xlsx | fixed_deposit           | 266                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Contains an invalid character (!).                            | Name of Fixed Deposit Holder | Invalid  |
      | collateral.xlsx | fixed_deposit           | 267                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Contains numbers, which are not allowed.                      | Name of Fixed Deposit Holder | Invalid  |
      | collateral.xlsx | fixed_deposit           | 268                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Contains an invalid character (@).                            | Name of Fixed Deposit Holder | Invalid  |
      | collateral.xlsx | fixed_deposit           | 269                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Contains an invalid character (*).                            | Name of Fixed Deposit Holder | Invalid  |
      | collateral.xlsx | fixed_deposit           | 270                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Contains an apostrophe ('), which is not allowed.             | Name of Fixed Deposit Holder | Invalid  |
      | collateral.xlsx | fixed_deposit           | 271                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Contains a hyphen (-), which is not allowed.                  | Name of Fixed Deposit Holder | Invalid  |
      | collateral.xlsx | fixed_deposit           | 272                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Contains an accent (á), which is allowed.                     | Name of Fixed Deposit Holder | Valid    |
      | collateral.xlsx | fixed_deposit           | 273                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Contains a hyphen (-), which is not allowed.                  | Name of Fixed Deposit Holder | Invalid  |
      | collateral.xlsx | fixed_deposit           | 274                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Only digits allowed, no decimal points or special characters. | Deposit Amount               | Invalid  |
      | collateral.xlsx | fixed_deposit           | 275                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Only digits allowed, no decimal points or special characters. | Deposit Amount               | Invalid  |
      | collateral.xlsx | fixed_deposit           | 276                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | A single digit is allowed.                                    | Deposit Amount               | Valid    |
      | collateral.xlsx | fixed_deposit           | 277                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Only digits allowed, no special characters.                   | Deposit Amount               | Valid    |
      | collateral.xlsx | fixed_deposit           | 278                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Contains a decimal point, which is not allowed.               | Deposit Amount               | Valid    |
      | collateral.xlsx | fixed_deposit           | 279                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Contains a comma (,), which is not allowed.                   | Deposit Amount               | Valid    |
      | collateral.xlsx | fixed_deposit           | 280                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Contains a hyphen (-), which is not allowed.                  | Deposit Amount               | Invalid  |
      | collateral.xlsx | fixed_deposit           | 281                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Contains a dollar sign ($), which is not allowed.             | Deposit Amount               | Invalid  |
      | collateral.xlsx | fixed_deposit           | 282                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Contains letters (abc), which are not allowed.                | Deposit Amount               | Invalid  |
      | collateral.xlsx | fixed_deposit           | 283                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Contains a decimal point, which is not allowed.               | Deposit Amount               | Valid    |
      | collateral.xlsx | fixed_deposit           | 284                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Contains a hyphen (-), which is not allowed.                  | Deposit Amount               | Invalid  |
      | collateral.xlsx | fixed_deposit           | 285                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Contains an underscore (_), which is not allowed.             | Deposit Amount               | Invalid  |
      | collateral.xlsx | fixed_deposit           | 286                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Contains multiple decimal points, which are not allowed.      | Deposit Amount               | Invalid  |
      | collateral.xlsx | fixed_deposit           | 287                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Correct format with valid numbers for day, month, and year.   | Maturity Date                | Valid    |
      | collateral.xlsx | fixed_deposit           | 288                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | The year is incomplete (missing one digit).                   | Maturity Date                | Invalid  |
      | collateral.xlsx | fixed_deposit           | 289                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Day (32) is invalid as it exceeds 31.                         | Maturity Date                | Invalid  |
      | collateral.xlsx | fixed_deposit           | 290                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | The separator is incorrect (- instead of /).                  | Maturity Date                | Invalid  |
      | collateral.xlsx | fixed_deposit           | 291                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Year contains an alphabet (A), which is not allowed.          | Maturity Date                | Invalid  |
      | collateral.xlsx | fixed_deposit           | 292                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Month (13) is invalid as months range from 01 to 12.          | Maturity Date                | Invalid  |
      | collateral.xlsx | fixed_deposit           | 293                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Invalid leap year date (2023 is not a leap year).             | Maturity Date                | Invalid  |
      | collateral.xlsx | fixed_deposit           | 294                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Contains invalid special character (@).                       | Maturity Date                | Invalid  |
      | collateral.xlsx | fixed_deposit           | 295                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Month (April) should be numeric, not alphabetic.              | Maturity Date                | Invalid  |
      | collateral.xlsx | fixed_deposit           | 296                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | The year (X is an alphabet, which is not allowed).            | Maturity Date                | Invalid  |
      | collateral.xlsx | fixed_deposit           | 297                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Contains an extra dot (.), which is not allowed.              | Maturity Date                | Invalid  |
      | collateral.xlsx | fixed_deposit           | 298                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Only digits allowed, no decimal points or special characters. | Maturity Amount              | Valid    |
      | collateral.xlsx | fixed_deposit           | 299                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Only digits allowed, no decimal points or special characters. | Maturity Amount              | Valid    |
      | collateral.xlsx | fixed_deposit           | 300                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | A single digit is allowed.                                    | Maturity Amount              | Invalid  |
      | collateral.xlsx | fixed_deposit           | 301                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Only digits allowed, no special characters.                   | Maturity Amount              | Valid    |
      | collateral.xlsx | fixed_deposit           | 302                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Contains a decimal point, which is not allowed.               | Maturity Amount              | Valid    |
      | collateral.xlsx | fixed_deposit           | 303                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Contains a comma (,), which is not allowed.                   | Maturity Amount              | Valid    |
      | collateral.xlsx | fixed_deposit           | 304                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Contains a hyphen (-), which is not allowed.                  | Maturity Amount              | Invalid  |
      | collateral.xlsx | fixed_deposit           | 305                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Contains a dollar sign ($), which is not allowed.             | Maturity Amount              | Invalid  |
      | collateral.xlsx | fixed_deposit           | 306                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Contains letters (abc), which are not allowed.                | Maturity Amount              | Invalid  |
      | collateral.xlsx | fixed_deposit           | 307                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Contains a decimal point, which is not allowed.               | Maturity Amount              | Valid    |
      | collateral.xlsx | fixed_deposit           | 308                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Contains a hyphen (-), which is not allowed.                  | Maturity Amount              | Invalid  |
      | collateral.xlsx | fixed_deposit           | 309                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Contains an underscore (_), which is not allowed.             | Maturity Amount              | Invalid  |
      | collateral.xlsx | fixed_deposit           | 310                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Contains multiple decimal points, which are not allowed.      | Maturity Amount              | Invalid  |
      | collateral.xlsx | fixed_deposit           | 311                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Value within range (0.00 to 100.00), with 2 decimal places.   | Rate of Interest             | Valid    |
      | collateral.xlsx | fixed_deposit           | 312                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Value within range (0.00 to 100.00), with 2 decimal places.   | Rate of Interest             | Valid    |
      | collateral.xlsx | fixed_deposit           | 313                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Value within range (0.00 to 100.00), with 2 decimal places.   | Rate of Interest             | Valid    |
      | collateral.xlsx | fixed_deposit           | 314                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Value within range (0.00 to 100.00), with 2 decimal places.   | Rate of Interest             | Valid    |
      | collateral.xlsx | fixed_deposit           | 315                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Value within range (0.00 to 100.00), with 2 decimal places.   | Rate of Interest             | Valid    |
      | collateral.xlsx | fixed_deposit           | 316                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Value within range (0.00 to 100.00), no decimal places.       | Rate of Interest             | Valid    |
      | collateral.xlsx | fixed_deposit           | 317                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Value within range (0.00 to 100.00), no decimal places.       | Rate of Interest             | Valid    |
      | collateral.xlsx | fixed_deposit           | 318                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Value exceeds the allowed 2 decimal places.                   | Rate of Interest             | Invalid  |
      | collateral.xlsx | fixed_deposit           | 319                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Value exceeds the maximum limit of 100.00.                    | Rate of Interest             | Invalid  |
      | collateral.xlsx | fixed_deposit           | 320                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Value is below the allowed minimum limit of 0.00.             | Rate of Interest             | Invalid  |
      | collateral.xlsx | fixed_deposit           | 321                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Value exceeds the allowed 2 decimal places.                   | Rate of Interest             | Invalid  |
      | collateral.xlsx | fixed_deposit           | 322                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Only uppercase letters and digits allowed.                    | Account Number               | Valid    |
      | collateral.xlsx | fixed_deposit           | 323                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Valid with spaces between characters.                         | Account Number               | Valid    |
      | collateral.xlsx | fixed_deposit           | 324                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Valid with a forward slash (/).                               | Account Number               | Valid    |
      | collateral.xlsx | fixed_deposit           | 325                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Valid with letters, slash (/), space, and dot (.).            | Account Number               | Valid    |
      | collateral.xlsx | fixed_deposit           | 326                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Valid with numbers, dot (.), and forward slash (/).           | Account Number               | Valid    |
      | collateral.xlsx | fixed_deposit           | 327                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Valid with letters, spaces, and dot (.).                      | Account Number               | Valid    |
      | collateral.xlsx | fixed_deposit           | 328                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Valid with numbers, slashes (/), and spaces.                  | Account Number               | Valid    |
      | collateral.xlsx | fixed_deposit           | 329                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Valid with spaces between numbers.                            | Account Number               | Valid    |
      | collateral.xlsx | fixed_deposit           | 330                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Valid with letters, numbers, forward slash (/), and dot (.).  | Account Number               | Valid    |
      | collateral.xlsx | fixed_deposit           | 331                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Contains an underscore (_), which is not allowed.             | Account Number               | Invalid  |
      | collateral.xlsx | fixed_deposit           | 332                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Contains an invalid character (#).                            | Account Number               | Invalid  |

    @ImplementedBy-pallavi.singh
    @Islamic
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    Examples:
      | CollateralWB    | Collateral_fixedDeposit | Collateral_fixedDeposit_rowNum | ProductType   | ApplicationStage   | key | category   | applicantType   | CollateralSubType   | Description                                                   | Field                        | Validity |
      | collateral.xlsx | fixed_deposit           | 215                            | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | Alphanumeric characters (letters and numbers) only.           | Collateral Ref No.           | Valid    |
      | collateral.xlsx | fixed_deposit           | 216                            | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | Alphanumeric characters with hyphen.                          | Collateral Ref No.           | Valid    |
      | collateral.xlsx | fixed_deposit           | 217                            | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | Alphanumeric characters with a space.                         | Collateral Ref No.           | Valid    |
      | collateral.xlsx | fixed_deposit           | 218                            | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | Alphanumeric characters with spaces in between.               | Collateral Ref No.           | Valid    |
      | collateral.xlsx | fixed_deposit           | 219                            | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | Alphanumeric characters with hyphen.                          | Collateral Ref No.           | Valid    |
      | collateral.xlsx | fixed_deposit           | 220                            | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | Alphanumeric characters with spaces and hyphen.               | Collateral Ref No.           | Valid    |
      | collateral.xlsx | fixed_deposit           | 221                            | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | Alphanumeric characters with spaces and hyphen.               | Collateral Ref No.           | Valid    |
      | collateral.xlsx | fixed_deposit           | 222                            | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | Alphanumeric characters with hyphen and space.                | Collateral Ref No.           | Valid    |
      | collateral.xlsx | fixed_deposit           | 223                            | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | Alphanumeric characters with space and hyphen.                | Collateral Ref No.           | Valid    |
      | collateral.xlsx | fixed_deposit           | 224                            | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | Alphanumeric characters with hyphen.                          | Collateral Ref No.           | Valid    |
      | collateral.xlsx | fixed_deposit           | 225                            | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | Contains invalid character (@).                               | Collateral Ref No.           | Invalid  |
      | collateral.xlsx | fixed_deposit           | 226                            | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | Contains invalid character (#).                               | Collateral Ref No.           | Invalid  |
      | collateral.xlsx | fixed_deposit           | 227                            | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | Contains invalid character (!).                               | Collateral Ref No.           | Invalid  |
      | collateral.xlsx | fixed_deposit           | 228                            | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | Starts with invalid character (#).                            | Collateral Ref No.           | Invalid  |
      | collateral.xlsx | fixed_deposit           | 229                            | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | Contains invalid character (^).                               | Collateral Ref No.           | Invalid  |
      | collateral.xlsx | fixed_deposit           | 230                            | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | Contains invalid character (@).                               | Collateral Ref No.           | Invalid  |
      | collateral.xlsx | fixed_deposit           | 231                            | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | Contains invalid character (*).                               | Collateral Ref No.           | Invalid  |
      | collateral.xlsx | fixed_deposit           | 232                            | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | Ends with invalid character (#).                              | Collateral Ref No.           | Invalid  |
      | collateral.xlsx | fixed_deposit           | 233                            | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | Starts with invalid characters (!@).                          | Collateral Ref No.           | Invalid  |
      | collateral.xlsx | fixed_deposit           | 234                            | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | Starts with invalid character (#).                            | Collateral Ref No.           | Invalid  |
      | collateral.xlsx | fixed_deposit           | 235                            | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | Any alphanumeric text is allowed, as there's no validation.   | Description                  | Valid    |
      | collateral.xlsx | fixed_deposit           | 236                            | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | Any length of alphanumeric text is allowed.                   | Description                  | Valid    |
      | collateral.xlsx | fixed_deposit           | 237                            | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | Numeric characters are allowed as there are no restrictions.  | Description                  | Valid    |
      | collateral.xlsx | fixed_deposit           | 238                            | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | Special characters are allowed as there is no restriction.    | Description                  | Valid    |
      | collateral.xlsx | fixed_deposit           | 239                            | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | Empty string is allowed.                                      | Description                  | Valid    |
      | collateral.xlsx | fixed_deposit           | 240                            | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | Single word input is allowed.                                 | Description                  | Valid    |
      | collateral.xlsx | fixed_deposit           | 241                            | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | Empty field is allowed.                                       | Description                  | Valid    |
      | collateral.xlsx | fixed_deposit           | 242                            | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | Alphanumeric characters (letters and numbers) only.           | Fixed Deposit Number         | Valid    |
      | collateral.xlsx | fixed_deposit           | 243                            | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | Contains an invalid character (-).                            | Fixed Deposit Number         | Invalid  |
      | collateral.xlsx | fixed_deposit           | 244                            | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | Alphanumeric characters with a /.                             | Fixed Deposit Number         | Valid    |
      | collateral.xlsx | fixed_deposit           | 245                            | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | Alphanumeric characters with a space.                         | Fixed Deposit Number         | Valid    |
      | collateral.xlsx | fixed_deposit           | 246                            | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | Alphanumeric characters with a dot.                           | Fixed Deposit Number         | Valid    |
      | collateral.xlsx | fixed_deposit           | 247                            | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | Alphanumeric characters, space, /, and dot allowed.           | Fixed Deposit Number         | Valid    |
      | collateral.xlsx | fixed_deposit           | 248                            | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | Alphanumeric characters, /, and dot allowed.                  | Fixed Deposit Number         | Valid    |
      | collateral.xlsx | fixed_deposit           | 249                            | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | Alphanumeric characters, space, /, and dot allowed.           | Fixed Deposit Number         | Valid    |
      | collateral.xlsx | fixed_deposit           | 250                            | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | Alphanumeric characters, dot, /, and space allowed.           | Fixed Deposit Number         | Valid    |
      | collateral.xlsx | fixed_deposit           | 251                            | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | Alphanumeric characters with space, dot, and / allowed.       | Fixed Deposit Number         | Valid    |
      | collateral.xlsx | fixed_deposit           | 252                            | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | Contains an invalid character (@).                            | Fixed Deposit Number         | Invalid  |
      | collateral.xlsx | fixed_deposit           | 253                            | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | Contains an invalid character (#).                            | Fixed Deposit Number         | Invalid  |
      | collateral.xlsx | fixed_deposit           | 254                            | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | Contains an invalid character ($).                            | Fixed Deposit Number         | Invalid  |
      | collateral.xlsx | fixed_deposit           | 255                            | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | Contains an invalid character (&).                            | Fixed Deposit Number         | Invalid  |
      | collateral.xlsx | fixed_deposit           | 256                            | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | Contains an invalid character (^).                            | Fixed Deposit Number         | Invalid  |
      | collateral.xlsx | fixed_deposit           | 257                            | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | Contains an invalid character (*).                            | Fixed Deposit Number         | Invalid  |
      | collateral.xlsx | fixed_deposit           | 258                            | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | Starts with an invalid character (#).                         | Fixed Deposit Number         | Invalid  |
      | collateral.xlsx | fixed_deposit           | 259                            | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | Contains an invalid character (_).                            | Fixed Deposit Number         | Invalid  |
      | collateral.xlsx | fixed_deposit           | 260                            | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | Alphanumeric characters, space, and / allowed.                | Fixed Deposit Number         | Valid    |
      | collateral.xlsx | fixed_deposit           | 261                            | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | Alphanumeric characters with space, dot, and / allowed.       | Fixed Deposit Number         | Valid    |
      | collateral.xlsx | fixed_deposit           | 262                            | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | Alphanumeric characters, space, /, and dot allowed.           | Fixed Deposit Number         | Valid    |
      | collateral.xlsx | fixed_deposit           | 263                            | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | Only alphabetic characters and spaces between names allowed.  | Name of Fixed Deposit Holder | Valid    |
      | collateral.xlsx | fixed_deposit           | 264                            | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | Contains numbers, which are not allowed.                      | Name of Fixed Deposit Holder | Invalid  |
      | collateral.xlsx | fixed_deposit           | 265                            | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | Contains a hyphen, which is not allowed.                      | Name of Fixed Deposit Holder | Invalid  |
      | collateral.xlsx | fixed_deposit           | 266                            | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | Contains an invalid character (!).                            | Name of Fixed Deposit Holder | Invalid  |
      | collateral.xlsx | fixed_deposit           | 267                            | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | Contains numbers, which are not allowed.                      | Name of Fixed Deposit Holder | Invalid  |
      | collateral.xlsx | fixed_deposit           | 268                            | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | Contains an invalid character (@).                            | Name of Fixed Deposit Holder | Invalid  |
      | collateral.xlsx | fixed_deposit           | 269                            | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | Contains an invalid character (*).                            | Name of Fixed Deposit Holder | Invalid  |
      | collateral.xlsx | fixed_deposit           | 270                            | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | Contains an apostrophe ('), which is not allowed.             | Name of Fixed Deposit Holder | Invalid  |
      | collateral.xlsx | fixed_deposit           | 271                            | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | Contains a hyphen (-), which is not allowed.                  | Name of Fixed Deposit Holder | Invalid  |
      | collateral.xlsx | fixed_deposit           | 272                            | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | Contains an accent (á), which is allowed.                     | Name of Fixed Deposit Holder | Valid    |
      | collateral.xlsx | fixed_deposit           | 273                            | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | Contains a hyphen (-), which is not allowed.                  | Name of Fixed Deposit Holder | Invalid  |
      | collateral.xlsx | fixed_deposit           | 274                            | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | Only digits allowed, no decimal points or special characters. | Deposit Amount               | Invalid  |
      | collateral.xlsx | fixed_deposit           | 275                            | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | Only digits allowed, no decimal points or special characters. | Deposit Amount               | Invalid  |
      | collateral.xlsx | fixed_deposit           | 276                            | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | A single digit is allowed.                                    | Deposit Amount               | Valid    |
      | collateral.xlsx | fixed_deposit           | 277                            | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | Only digits allowed, no special characters.                   | Deposit Amount               | Valid    |
      | collateral.xlsx | fixed_deposit           | 278                            | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | Contains a decimal point, which is not allowed.               | Deposit Amount               | Valid    |
      | collateral.xlsx | fixed_deposit           | 279                            | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | Contains a comma (,), which is not allowed.                   | Deposit Amount               | Valid    |
      | collateral.xlsx | fixed_deposit           | 280                            | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | Contains a hyphen (-), which is not allowed.                  | Deposit Amount               | Invalid  |
      | collateral.xlsx | fixed_deposit           | 281                            | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | Contains a dollar sign ($), which is not allowed.             | Deposit Amount               | Invalid  |
      | collateral.xlsx | fixed_deposit           | 282                            | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | Contains letters (abc), which are not allowed.                | Deposit Amount               | Invalid  |
      | collateral.xlsx | fixed_deposit           | 283                            | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | Contains a decimal point, which is not allowed.               | Deposit Amount               | Valid    |
      | collateral.xlsx | fixed_deposit           | 284                            | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | Contains a hyphen (-), which is not allowed.                  | Deposit Amount               | Invalid  |
      | collateral.xlsx | fixed_deposit           | 285                            | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | Contains an underscore (_), which is not allowed.             | Deposit Amount               | Invalid  |
      | collateral.xlsx | fixed_deposit           | 286                            | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | Contains multiple decimal points, which are not allowed.      | Deposit Amount               | Invalid  |
      | collateral.xlsx | fixed_deposit           | 287                            | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | Correct format with valid numbers for day, month, and year.   | Maturity Date                | Valid    |
      | collateral.xlsx | fixed_deposit           | 288                            | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | The year is incomplete (missing one digit).                   | Maturity Date                | Invalid  |
      | collateral.xlsx | fixed_deposit           | 289                            | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | Day (32) is invalid as it exceeds 31.                         | Maturity Date                | Invalid  |
      | collateral.xlsx | fixed_deposit           | 290                            | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | The separator is incorrect (- instead of /).                  | Maturity Date                | Invalid  |
      | collateral.xlsx | fixed_deposit           | 291                            | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | Year contains an alphabet (A), which is not allowed.          | Maturity Date                | Invalid  |
      | collateral.xlsx | fixed_deposit           | 292                            | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | Month (13) is invalid as months range from 01 to 12.          | Maturity Date                | Invalid  |
      | collateral.xlsx | fixed_deposit           | 293                            | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | Invalid leap year date (2023 is not a leap year).             | Maturity Date                | Invalid  |
      | collateral.xlsx | fixed_deposit           | 294                            | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | Contains invalid special character (@).                       | Maturity Date                | Invalid  |
      | collateral.xlsx | fixed_deposit           | 295                            | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | Month (April) should be numeric, not alphabetic.              | Maturity Date                | Invalid  |
      | collateral.xlsx | fixed_deposit           | 296                            | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | The year (X is an alphabet, which is not allowed).            | Maturity Date                | Invalid  |
      | collateral.xlsx | fixed_deposit           | 297                            | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | Contains an extra dot (.), which is not allowed.              | Maturity Date                | Invalid  |
      | collateral.xlsx | fixed_deposit           | 298                            | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | Only digits allowed, no decimal points or special characters. | Maturity Amount              | Valid    |
      | collateral.xlsx | fixed_deposit           | 299                            | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | Only digits allowed, no decimal points or special characters. | Maturity Amount              | Valid    |
      | collateral.xlsx | fixed_deposit           | 300                            | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | A single digit is allowed.                                    | Maturity Amount              | Invalid  |
      | collateral.xlsx | fixed_deposit           | 301                            | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | Only digits allowed, no special characters.                   | Maturity Amount              | Valid    |
      | collateral.xlsx | fixed_deposit           | 302                            | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | Contains a decimal point, which is not allowed.               | Maturity Amount              | Valid    |
      | collateral.xlsx | fixed_deposit           | 303                            | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | Contains a comma (,), which is not allowed.                   | Maturity Amount              | Valid    |
      | collateral.xlsx | fixed_deposit           | 304                            | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | Contains a hyphen (-), which is not allowed.                  | Maturity Amount              | Invalid  |
      | collateral.xlsx | fixed_deposit           | 305                            | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | Contains a dollar sign ($), which is not allowed.             | Maturity Amount              | Invalid  |
      | collateral.xlsx | fixed_deposit           | 306                            | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | Contains letters (abc), which are not allowed.                | Maturity Amount              | Invalid  |
      | collateral.xlsx | fixed_deposit           | 307                            | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | Contains a decimal point, which is not allowed.               | Maturity Amount              | Valid    |
      | collateral.xlsx | fixed_deposit           | 308                            | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | Contains a hyphen (-), which is not allowed.                  | Maturity Amount              | Invalid  |
      | collateral.xlsx | fixed_deposit           | 309                            | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | Contains an underscore (_), which is not allowed.             | Maturity Amount              | Invalid  |
      | collateral.xlsx | fixed_deposit           | 310                            | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | Contains multiple decimal points, which are not allowed.      | Maturity Amount              | Invalid  |
      | collateral.xlsx | fixed_deposit           | 311                            | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | Value within range (0.00 to 100.00), with 2 decimal places.   | Rate of Interest             | Valid    |
      | collateral.xlsx | fixed_deposit           | 312                            | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | Value within range (0.00 to 100.00), with 2 decimal places.   | Rate of Interest             | Valid    |
      | collateral.xlsx | fixed_deposit           | 313                            | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | Value within range (0.00 to 100.00), with 2 decimal places.   | Rate of Interest             | Valid    |
      | collateral.xlsx | fixed_deposit           | 314                            | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | Value within range (0.00 to 100.00), with 2 decimal places.   | Rate of Interest             | Valid    |
      | collateral.xlsx | fixed_deposit           | 315                            | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | Value within range (0.00 to 100.00), with 2 decimal places.   | Rate of Interest             | Valid    |
      | collateral.xlsx | fixed_deposit           | 316                            | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | Value within range (0.00 to 100.00), no decimal places.       | Rate of Interest             | Valid    |
      | collateral.xlsx | fixed_deposit           | 317                            | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | Value within range (0.00 to 100.00), no decimal places.       | Rate of Interest             | Valid    |
      | collateral.xlsx | fixed_deposit           | 318                            | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | Value exceeds the allowed 2 decimal places.                   | Rate of Interest             | Invalid  |
      | collateral.xlsx | fixed_deposit           | 319                            | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | Value exceeds the maximum limit of 100.00.                    | Rate of Interest             | Invalid  |
      | collateral.xlsx | fixed_deposit           | 320                            | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | Value is below the allowed minimum limit of 0.00.             | Rate of Interest             | Invalid  |
      | collateral.xlsx | fixed_deposit           | 321                            | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | Value exceeds the allowed 2 decimal places.                   | Rate of Interest             | Invalid  |
      | collateral.xlsx | fixed_deposit           | 322                            | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | Only uppercase letters and digits allowed.                    | Account Number               | Valid    |
      | collateral.xlsx | fixed_deposit           | 323                            | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | Valid with spaces between characters.                         | Account Number               | Valid    |
      | collateral.xlsx | fixed_deposit           | 324                            | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | Valid with a forward slash (/).                               | Account Number               | Valid    |
      | collateral.xlsx | fixed_deposit           | 325                            | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | Valid with letters, slash (/), space, and dot (.).            | Account Number               | Valid    |
      | collateral.xlsx | fixed_deposit           | 326                            | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | Valid with numbers, dot (.), and forward slash (/).           | Account Number               | Valid    |
      | collateral.xlsx | fixed_deposit           | 327                            | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | Valid with letters, spaces, and dot (.).                      | Account Number               | Valid    |
      | collateral.xlsx | fixed_deposit           | 328                            | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | Valid with numbers, slashes (/), and spaces.                  | Account Number               | Valid    |
      | collateral.xlsx | fixed_deposit           | 329                            | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | Valid with spaces between numbers.                            | Account Number               | Valid    |
      | collateral.xlsx | fixed_deposit           | 330                            | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | Valid with letters, numbers, forward slash (/), and dot (.).  | Account Number               | Valid    |
      | collateral.xlsx | fixed_deposit           | 331                            | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | Contains an underscore (_), which is not allowed.             | Account Number               | Invalid  |
      | collateral.xlsx | fixed_deposit           | 332                            | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | Contains an invalid character (#).                            | Account Number               | Invalid  |

    @ImplementedBy-pallavi.singh
    @Islamic
    #${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    Examples:
      | CollateralWB    | Collateral_fixedDeposit | Collateral_fixedDeposit_rowNum | ProductType   | ApplicationStage   | key | category | applicantType   | CollateralSubType   | Description                                                   | Field                        | Validity |
      | collateral.xlsx | fixed_deposit           | 215                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Alphanumeric characters (letters and numbers) only.           | Collateral Ref No.           | Valid    |
      | collateral.xlsx | fixed_deposit           | 216                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Alphanumeric characters with hyphen.                          | Collateral Ref No.           | Valid    |
      | collateral.xlsx | fixed_deposit           | 217                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Alphanumeric characters with a space.                         | Collateral Ref No.           | Valid    |
      | collateral.xlsx | fixed_deposit           | 218                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Alphanumeric characters with spaces in between.               | Collateral Ref No.           | Valid    |
      | collateral.xlsx | fixed_deposit           | 219                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Alphanumeric characters with hyphen.                          | Collateral Ref No.           | Valid    |
      | collateral.xlsx | fixed_deposit           | 220                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Alphanumeric characters with spaces and hyphen.               | Collateral Ref No.           | Valid    |
      | collateral.xlsx | fixed_deposit           | 221                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Alphanumeric characters with spaces and hyphen.               | Collateral Ref No.           | Valid    |
      | collateral.xlsx | fixed_deposit           | 222                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Alphanumeric characters with hyphen and space.                | Collateral Ref No.           | Valid    |
      | collateral.xlsx | fixed_deposit           | 223                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Alphanumeric characters with space and hyphen.                | Collateral Ref No.           | Valid    |
      | collateral.xlsx | fixed_deposit           | 224                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Alphanumeric characters with hyphen.                          | Collateral Ref No.           | Valid    |
      | collateral.xlsx | fixed_deposit           | 225                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Contains invalid character (@).                               | Collateral Ref No.           | Invalid  |
      | collateral.xlsx | fixed_deposit           | 226                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Contains invalid character (#).                               | Collateral Ref No.           | Invalid  |
      | collateral.xlsx | fixed_deposit           | 227                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Contains invalid character (!).                               | Collateral Ref No.           | Invalid  |
      | collateral.xlsx | fixed_deposit           | 228                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Starts with invalid character (#).                            | Collateral Ref No.           | Invalid  |
      | collateral.xlsx | fixed_deposit           | 229                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Contains invalid character (^).                               | Collateral Ref No.           | Invalid  |
      | collateral.xlsx | fixed_deposit           | 230                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Contains invalid character (@).                               | Collateral Ref No.           | Invalid  |
      | collateral.xlsx | fixed_deposit           | 231                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Contains invalid character (*).                               | Collateral Ref No.           | Invalid  |
      | collateral.xlsx | fixed_deposit           | 232                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Ends with invalid character (#).                              | Collateral Ref No.           | Invalid  |
      | collateral.xlsx | fixed_deposit           | 233                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Starts with invalid characters (!@).                          | Collateral Ref No.           | Invalid  |
      | collateral.xlsx | fixed_deposit           | 234                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Starts with invalid character (#).                            | Collateral Ref No.           | Invalid  |
      | collateral.xlsx | fixed_deposit           | 235                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Any alphanumeric text is allowed, as there's no validation.   | Description                  | Valid    |
      | collateral.xlsx | fixed_deposit           | 236                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Any length of alphanumeric text is allowed.                   | Description                  | Valid    |
      | collateral.xlsx | fixed_deposit           | 237                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Numeric characters are allowed as there are no restrictions.  | Description                  | Valid    |
      | collateral.xlsx | fixed_deposit           | 238                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Special characters are allowed as there is no restriction.    | Description                  | Valid    |
      | collateral.xlsx | fixed_deposit           | 239                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Empty string is allowed.                                      | Description                  | Valid    |
      | collateral.xlsx | fixed_deposit           | 240                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Single word input is allowed.                                 | Description                  | Valid    |
      | collateral.xlsx | fixed_deposit           | 241                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Empty field is allowed.                                       | Description                  | Valid    |
      | collateral.xlsx | fixed_deposit           | 242                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Alphanumeric characters (letters and numbers) only.           | Fixed Deposit Number         | Valid    |
      | collateral.xlsx | fixed_deposit           | 243                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Contains an invalid character (-).                            | Fixed Deposit Number         | Invalid  |
      | collateral.xlsx | fixed_deposit           | 244                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Alphanumeric characters with a /.                             | Fixed Deposit Number         | Valid    |
      | collateral.xlsx | fixed_deposit           | 245                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Alphanumeric characters with a space.                         | Fixed Deposit Number         | Valid    |
      | collateral.xlsx | fixed_deposit           | 246                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Alphanumeric characters with a dot.                           | Fixed Deposit Number         | Valid    |
      | collateral.xlsx | fixed_deposit           | 247                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Alphanumeric characters, space, /, and dot allowed.           | Fixed Deposit Number         | Valid    |
      | collateral.xlsx | fixed_deposit           | 248                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Alphanumeric characters, /, and dot allowed.                  | Fixed Deposit Number         | Valid    |
      | collateral.xlsx | fixed_deposit           | 249                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Alphanumeric characters, space, /, and dot allowed.           | Fixed Deposit Number         | Valid    |
      | collateral.xlsx | fixed_deposit           | 250                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Alphanumeric characters, dot, /, and space allowed.           | Fixed Deposit Number         | Valid    |
      | collateral.xlsx | fixed_deposit           | 251                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Alphanumeric characters with space, dot, and / allowed.       | Fixed Deposit Number         | Valid    |
      | collateral.xlsx | fixed_deposit           | 252                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Contains an invalid character (@).                            | Fixed Deposit Number         | Invalid  |
      | collateral.xlsx | fixed_deposit           | 253                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Contains an invalid character (#).                            | Fixed Deposit Number         | Invalid  |
      | collateral.xlsx | fixed_deposit           | 254                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Contains an invalid character ($).                            | Fixed Deposit Number         | Invalid  |
      | collateral.xlsx | fixed_deposit           | 255                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Contains an invalid character (&).                            | Fixed Deposit Number         | Invalid  |
      | collateral.xlsx | fixed_deposit           | 256                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Contains an invalid character (^).                            | Fixed Deposit Number         | Invalid  |
      | collateral.xlsx | fixed_deposit           | 257                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Contains an invalid character (*).                            | Fixed Deposit Number         | Invalid  |
      | collateral.xlsx | fixed_deposit           | 258                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Starts with an invalid character (#).                         | Fixed Deposit Number         | Invalid  |
      | collateral.xlsx | fixed_deposit           | 259                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Contains an invalid character (_).                            | Fixed Deposit Number         | Invalid  |
      | collateral.xlsx | fixed_deposit           | 260                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Alphanumeric characters, space, and / allowed.                | Fixed Deposit Number         | Valid    |
      | collateral.xlsx | fixed_deposit           | 261                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Alphanumeric characters with space, dot, and / allowed.       | Fixed Deposit Number         | Valid    |
      | collateral.xlsx | fixed_deposit           | 262                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Alphanumeric characters, space, /, and dot allowed.           | Fixed Deposit Number         | Valid    |
      | collateral.xlsx | fixed_deposit           | 263                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Only alphabetic characters and spaces between names allowed.  | Name of Fixed Deposit Holder | Valid    |
      | collateral.xlsx | fixed_deposit           | 264                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Contains numbers, which are not allowed.                      | Name of Fixed Deposit Holder | Invalid  |
      | collateral.xlsx | fixed_deposit           | 265                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Contains a hyphen, which is not allowed.                      | Name of Fixed Deposit Holder | Invalid  |
      | collateral.xlsx | fixed_deposit           | 266                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Contains an invalid character (!).                            | Name of Fixed Deposit Holder | Invalid  |
      | collateral.xlsx | fixed_deposit           | 267                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Contains numbers, which are not allowed.                      | Name of Fixed Deposit Holder | Invalid  |
      | collateral.xlsx | fixed_deposit           | 268                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Contains an invalid character (@).                            | Name of Fixed Deposit Holder | Invalid  |
      | collateral.xlsx | fixed_deposit           | 269                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Contains an invalid character (*).                            | Name of Fixed Deposit Holder | Invalid  |
      | collateral.xlsx | fixed_deposit           | 270                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Contains an apostrophe ('), which is not allowed.             | Name of Fixed Deposit Holder | Invalid  |
      | collateral.xlsx | fixed_deposit           | 271                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Contains a hyphen (-), which is not allowed.                  | Name of Fixed Deposit Holder | Invalid  |
      | collateral.xlsx | fixed_deposit           | 272                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Contains an accent (á), which is allowed.                     | Name of Fixed Deposit Holder | Valid    |
      | collateral.xlsx | fixed_deposit           | 273                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Contains a hyphen (-), which is not allowed.                  | Name of Fixed Deposit Holder | Invalid  |
      | collateral.xlsx | fixed_deposit           | 274                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Only digits allowed, no decimal points or special characters. | Deposit Amount               | Invalid  |
      | collateral.xlsx | fixed_deposit           | 275                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Only digits allowed, no decimal points or special characters. | Deposit Amount               | Invalid  |
      | collateral.xlsx | fixed_deposit           | 276                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | A single digit is allowed.                                    | Deposit Amount               | Valid    |
      | collateral.xlsx | fixed_deposit           | 277                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Only digits allowed, no special characters.                   | Deposit Amount               | Valid    |
      | collateral.xlsx | fixed_deposit           | 278                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Contains a decimal point, which is not allowed.               | Deposit Amount               | Valid    |
      | collateral.xlsx | fixed_deposit           | 279                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Contains a comma (,), which is not allowed.                   | Deposit Amount               | Valid    |
      | collateral.xlsx | fixed_deposit           | 280                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Contains a hyphen (-), which is not allowed.                  | Deposit Amount               | Invalid  |
      | collateral.xlsx | fixed_deposit           | 281                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Contains a dollar sign ($), which is not allowed.             | Deposit Amount               | Invalid  |
      | collateral.xlsx | fixed_deposit           | 282                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Contains letters (abc), which are not allowed.                | Deposit Amount               | Invalid  |
      | collateral.xlsx | fixed_deposit           | 283                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Contains a decimal point, which is not allowed.               | Deposit Amount               | Valid    |
      | collateral.xlsx | fixed_deposit           | 284                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Contains a hyphen (-), which is not allowed.                  | Deposit Amount               | Invalid  |
      | collateral.xlsx | fixed_deposit           | 285                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Contains an underscore (_), which is not allowed.             | Deposit Amount               | Invalid  |
      | collateral.xlsx | fixed_deposit           | 286                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Contains multiple decimal points, which are not allowed.      | Deposit Amount               | Invalid  |
      | collateral.xlsx | fixed_deposit           | 287                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Correct format with valid numbers for day, month, and year.   | Maturity Date                | Valid    |
      | collateral.xlsx | fixed_deposit           | 288                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | The year is incomplete (missing one digit).                   | Maturity Date                | Invalid  |
      | collateral.xlsx | fixed_deposit           | 289                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Day (32) is invalid as it exceeds 31.                         | Maturity Date                | Invalid  |
      | collateral.xlsx | fixed_deposit           | 290                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | The separator is incorrect (- instead of /).                  | Maturity Date                | Invalid  |
      | collateral.xlsx | fixed_deposit           | 291                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Year contains an alphabet (A), which is not allowed.          | Maturity Date                | Invalid  |
      | collateral.xlsx | fixed_deposit           | 292                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Month (13) is invalid as months range from 01 to 12.          | Maturity Date                | Invalid  |
      | collateral.xlsx | fixed_deposit           | 293                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Invalid leap year date (2023 is not a leap year).             | Maturity Date                | Invalid  |
      | collateral.xlsx | fixed_deposit           | 294                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Contains invalid special character (@).                       | Maturity Date                | Invalid  |
      | collateral.xlsx | fixed_deposit           | 295                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Month (April) should be numeric, not alphabetic.              | Maturity Date                | Invalid  |
      | collateral.xlsx | fixed_deposit           | 296                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | The year (X is an alphabet, which is not allowed).            | Maturity Date                | Invalid  |
      | collateral.xlsx | fixed_deposit           | 297                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Contains an extra dot (.), which is not allowed.              | Maturity Date                | Invalid  |
      | collateral.xlsx | fixed_deposit           | 298                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Only digits allowed, no decimal points or special characters. | Maturity Amount              | Valid    |
      | collateral.xlsx | fixed_deposit           | 299                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Only digits allowed, no decimal points or special characters. | Maturity Amount              | Valid    |
      | collateral.xlsx | fixed_deposit           | 300                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | A single digit is allowed.                                    | Maturity Amount              | Invalid  |
      | collateral.xlsx | fixed_deposit           | 301                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Only digits allowed, no special characters.                   | Maturity Amount              | Valid    |
      | collateral.xlsx | fixed_deposit           | 302                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Contains a decimal point, which is not allowed.               | Maturity Amount              | Valid    |
      | collateral.xlsx | fixed_deposit           | 303                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Contains a comma (,), which is not allowed.                   | Maturity Amount              | Valid    |
      | collateral.xlsx | fixed_deposit           | 304                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Contains a hyphen (-), which is not allowed.                  | Maturity Amount              | Invalid  |
      | collateral.xlsx | fixed_deposit           | 305                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Contains a dollar sign ($), which is not allowed.             | Maturity Amount              | Invalid  |
      | collateral.xlsx | fixed_deposit           | 306                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Contains letters (abc), which are not allowed.                | Maturity Amount              | Invalid  |
      | collateral.xlsx | fixed_deposit           | 307                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Contains a decimal point, which is not allowed.               | Maturity Amount              | Valid    |
      | collateral.xlsx | fixed_deposit           | 308                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Contains a hyphen (-), which is not allowed.                  | Maturity Amount              | Invalid  |
      | collateral.xlsx | fixed_deposit           | 309                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Contains an underscore (_), which is not allowed.             | Maturity Amount              | Invalid  |
      | collateral.xlsx | fixed_deposit           | 310                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Contains multiple decimal points, which are not allowed.      | Maturity Amount              | Invalid  |
      | collateral.xlsx | fixed_deposit           | 311                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Value within range (0.00 to 100.00), with 2 decimal places.   | Rate of Interest             | Valid    |
      | collateral.xlsx | fixed_deposit           | 312                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Value within range (0.00 to 100.00), with 2 decimal places.   | Rate of Interest             | Valid    |
      | collateral.xlsx | fixed_deposit           | 313                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Value within range (0.00 to 100.00), with 2 decimal places.   | Rate of Interest             | Valid    |
      | collateral.xlsx | fixed_deposit           | 314                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Value within range (0.00 to 100.00), with 2 decimal places.   | Rate of Interest             | Valid    |
      | collateral.xlsx | fixed_deposit           | 315                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Value within range (0.00 to 100.00), with 2 decimal places.   | Rate of Interest             | Valid    |
      | collateral.xlsx | fixed_deposit           | 316                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Value within range (0.00 to 100.00), no decimal places.       | Rate of Interest             | Valid    |
      | collateral.xlsx | fixed_deposit           | 317                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Value within range (0.00 to 100.00), no decimal places.       | Rate of Interest             | Valid    |
      | collateral.xlsx | fixed_deposit           | 318                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Value exceeds the allowed 2 decimal places.                   | Rate of Interest             | Invalid  |
      | collateral.xlsx | fixed_deposit           | 319                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Value exceeds the maximum limit of 100.00.                    | Rate of Interest             | Invalid  |
      | collateral.xlsx | fixed_deposit           | 320                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Value is below the allowed minimum limit of 0.00.             | Rate of Interest             | Invalid  |
      | collateral.xlsx | fixed_deposit           | 321                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Value exceeds the allowed 2 decimal places.                   | Rate of Interest             | Invalid  |
      | collateral.xlsx | fixed_deposit           | 322                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Only uppercase letters and digits allowed.                    | Account Number               | Valid    |
      | collateral.xlsx | fixed_deposit           | 323                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Valid with spaces between characters.                         | Account Number               | Valid    |
      | collateral.xlsx | fixed_deposit           | 324                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Valid with a forward slash (/).                               | Account Number               | Valid    |
      | collateral.xlsx | fixed_deposit           | 325                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Valid with letters, slash (/), space, and dot (.).            | Account Number               | Valid    |
      | collateral.xlsx | fixed_deposit           | 326                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Valid with numbers, dot (.), and forward slash (/).           | Account Number               | Valid    |
      | collateral.xlsx | fixed_deposit           | 327                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Valid with letters, spaces, and dot (.).                      | Account Number               | Valid    |
      | collateral.xlsx | fixed_deposit           | 328                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Valid with numbers, slashes (/), and spaces.                  | Account Number               | Valid    |
      | collateral.xlsx | fixed_deposit           | 329                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Valid with spaces between numbers.                            | Account Number               | Valid    |
      | collateral.xlsx | fixed_deposit           | 330                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Valid with letters, numbers, forward slash (/), and dot (.).  | Account Number               | Valid    |
      | collateral.xlsx | fixed_deposit           | 331                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Contains an underscore (_), which is not allowed.             | Account Number               | Invalid  |
      | collateral.xlsx | fixed_deposit           | 332                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Contains an invalid character (#).                            | Account Number               | Invalid  |


  Scenario Outline: ACAUTOCAS-3017:  user is able to add a new collateral as Fixed Deposit with new Global Collateral No of <applicantType> on <ProductType> on <ApplicationStage> with <Description> is <Validity> value on <Field>
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_fixedDeposit>" and row <Collateral_fixedDeposit_rowNum>
    And user selects collateral type along with collateral sub type
    And user adds collateral all fields based on "<CollateralSubType>" subtype of collateral type
    And user checks the duplicates on collateral dedupe check
    When user saves the collateral data
    Then collateral should be attached to the application with new Global Collateral Number on "<Validity>"
    @ImplementedBy-aditya.tomar
    @Conventional
    #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE", "Credit Approval", "Recommendation", "Reconsideration", "Disbursal Initiation"]}
    Examples:
      | CollateralWB    | Collateral_fixedDeposit | Collateral_fixedDeposit_rowNum | ProductType   | ApplicationStage   | key | category | applicantType   | CollateralSubType   | Description                                                   | Field                        | Validity |
      | collateral.xlsx | fixed_deposit           | 215                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Alphanumeric characters (letters and numbers) only.           | Collateral Ref No.           | Valid    |
      | collateral.xlsx | fixed_deposit           | 216                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Alphanumeric characters with hyphen.                          | Collateral Ref No.           | Valid    |
      | collateral.xlsx | fixed_deposit           | 217                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Alphanumeric characters with a space.                         | Collateral Ref No.           | Valid    |
      | collateral.xlsx | fixed_deposit           | 218                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Alphanumeric characters with spaces in between.               | Collateral Ref No.           | Valid    |
      | collateral.xlsx | fixed_deposit           | 219                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Alphanumeric characters with hyphen.                          | Collateral Ref No.           | Valid    |
      | collateral.xlsx | fixed_deposit           | 220                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Alphanumeric characters with spaces and hyphen.               | Collateral Ref No.           | Valid    |
      | collateral.xlsx | fixed_deposit           | 221                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Alphanumeric characters with spaces and hyphen.               | Collateral Ref No.           | Valid    |
      | collateral.xlsx | fixed_deposit           | 222                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Alphanumeric characters with hyphen and space.                | Collateral Ref No.           | Valid    |
      | collateral.xlsx | fixed_deposit           | 223                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Alphanumeric characters with space and hyphen.                | Collateral Ref No.           | Valid    |
      | collateral.xlsx | fixed_deposit           | 224                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Alphanumeric characters with hyphen.                          | Collateral Ref No.           | Valid    |
      | collateral.xlsx | fixed_deposit           | 225                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Contains invalid character (@).                               | Collateral Ref No.           | Invalid  |
      | collateral.xlsx | fixed_deposit           | 226                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Contains invalid character (#).                               | Collateral Ref No.           | Invalid  |
      | collateral.xlsx | fixed_deposit           | 227                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Contains invalid character (!).                               | Collateral Ref No.           | Invalid  |
      | collateral.xlsx | fixed_deposit           | 228                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Starts with invalid character (#).                            | Collateral Ref No.           | Invalid  |
      | collateral.xlsx | fixed_deposit           | 229                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Contains invalid character (^).                               | Collateral Ref No.           | Invalid  |
      | collateral.xlsx | fixed_deposit           | 230                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Contains invalid character (@).                               | Collateral Ref No.           | Invalid  |
      | collateral.xlsx | fixed_deposit           | 231                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Contains invalid character (*).                               | Collateral Ref No.           | Invalid  |
      | collateral.xlsx | fixed_deposit           | 232                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Ends with invalid character (#).                              | Collateral Ref No.           | Invalid  |
      | collateral.xlsx | fixed_deposit           | 233                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Starts with invalid characters (!@).                          | Collateral Ref No.           | Invalid  |
      | collateral.xlsx | fixed_deposit           | 234                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Starts with invalid character (#).                            | Collateral Ref No.           | Invalid  |
      | collateral.xlsx | fixed_deposit           | 235                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Any alphanumeric text is allowed, as there's no validation.   | Description                  | Valid    |
      | collateral.xlsx | fixed_deposit           | 236                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Any length of alphanumeric text is allowed.                   | Description                  | Valid    |
      | collateral.xlsx | fixed_deposit           | 237                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Numeric characters are allowed as there are no restrictions.  | Description                  | Valid    |
      | collateral.xlsx | fixed_deposit           | 238                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Special characters are allowed as there is no restriction.    | Description                  | Valid    |
      | collateral.xlsx | fixed_deposit           | 239                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Empty string is allowed.                                      | Description                  | Valid    |
      | collateral.xlsx | fixed_deposit           | 240                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Single word input is allowed.                                 | Description                  | Valid    |
      | collateral.xlsx | fixed_deposit           | 241                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Empty field is allowed.                                       | Description                  | Valid    |
      | collateral.xlsx | fixed_deposit           | 242                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Alphanumeric characters (letters and numbers) only.           | Fixed Deposit Number         | Valid    |
      | collateral.xlsx | fixed_deposit           | 243                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Contains an invalid character (-).                            | Fixed Deposit Number         | Invalid  |
      | collateral.xlsx | fixed_deposit           | 244                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Alphanumeric characters with a /.                             | Fixed Deposit Number         | Valid    |
      | collateral.xlsx | fixed_deposit           | 245                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Alphanumeric characters with a space.                         | Fixed Deposit Number         | Valid    |
      | collateral.xlsx | fixed_deposit           | 246                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Alphanumeric characters with a dot.                           | Fixed Deposit Number         | Valid    |
      | collateral.xlsx | fixed_deposit           | 247                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Alphanumeric characters, space, /, and dot allowed.           | Fixed Deposit Number         | Valid    |
      | collateral.xlsx | fixed_deposit           | 248                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Alphanumeric characters, /, and dot allowed.                  | Fixed Deposit Number         | Valid    |
      | collateral.xlsx | fixed_deposit           | 249                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Alphanumeric characters, space, /, and dot allowed.           | Fixed Deposit Number         | Valid    |
      | collateral.xlsx | fixed_deposit           | 250                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Alphanumeric characters, dot, /, and space allowed.           | Fixed Deposit Number         | Valid    |
      | collateral.xlsx | fixed_deposit           | 251                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Alphanumeric characters with space, dot, and / allowed.       | Fixed Deposit Number         | Valid    |
      | collateral.xlsx | fixed_deposit           | 252                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Contains an invalid character (@).                            | Fixed Deposit Number         | Invalid  |
      | collateral.xlsx | fixed_deposit           | 253                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Contains an invalid character (#).                            | Fixed Deposit Number         | Invalid  |
      | collateral.xlsx | fixed_deposit           | 254                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Contains an invalid character ($).                            | Fixed Deposit Number         | Invalid  |
      | collateral.xlsx | fixed_deposit           | 255                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Contains an invalid character (&).                            | Fixed Deposit Number         | Invalid  |
      | collateral.xlsx | fixed_deposit           | 256                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Contains an invalid character (^).                            | Fixed Deposit Number         | Invalid  |
      | collateral.xlsx | fixed_deposit           | 257                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Contains an invalid character (*).                            | Fixed Deposit Number         | Invalid  |
      | collateral.xlsx | fixed_deposit           | 258                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Starts with an invalid character (#).                         | Fixed Deposit Number         | Invalid  |
      | collateral.xlsx | fixed_deposit           | 259                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Contains an invalid character (_).                            | Fixed Deposit Number         | Invalid  |
      | collateral.xlsx | fixed_deposit           | 260                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Alphanumeric characters, space, and / allowed.                | Fixed Deposit Number         | Valid    |
      | collateral.xlsx | fixed_deposit           | 261                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Alphanumeric characters with space, dot, and / allowed.       | Fixed Deposit Number         | Valid    |
      | collateral.xlsx | fixed_deposit           | 262                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Alphanumeric characters, space, /, and dot allowed.           | Fixed Deposit Number         | Valid    |
      | collateral.xlsx | fixed_deposit           | 263                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Only alphabetic characters and spaces between names allowed.  | Name of Fixed Deposit Holder | Valid    |
      | collateral.xlsx | fixed_deposit           | 264                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Contains numbers, which are not allowed.                      | Name of Fixed Deposit Holder | Invalid  |
      | collateral.xlsx | fixed_deposit           | 265                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Contains a hyphen, which is not allowed.                      | Name of Fixed Deposit Holder | Invalid  |
      | collateral.xlsx | fixed_deposit           | 266                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Contains an invalid character (!).                            | Name of Fixed Deposit Holder | Invalid  |
      | collateral.xlsx | fixed_deposit           | 267                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Contains numbers, which are not allowed.                      | Name of Fixed Deposit Holder | Invalid  |
      | collateral.xlsx | fixed_deposit           | 268                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Contains an invalid character (@).                            | Name of Fixed Deposit Holder | Invalid  |
      | collateral.xlsx | fixed_deposit           | 269                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Contains an invalid character (*).                            | Name of Fixed Deposit Holder | Invalid  |
      | collateral.xlsx | fixed_deposit           | 270                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Contains an apostrophe ('), which is not allowed.             | Name of Fixed Deposit Holder | Invalid  |
      | collateral.xlsx | fixed_deposit           | 271                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Contains a hyphen (-), which is not allowed.                  | Name of Fixed Deposit Holder | Invalid  |
      | collateral.xlsx | fixed_deposit           | 272                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Contains an accent (á), which is allowed.                     | Name of Fixed Deposit Holder | Valid    |
      | collateral.xlsx | fixed_deposit           | 273                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Contains a hyphen (-), which is not allowed.                  | Name of Fixed Deposit Holder | Invalid  |
      | collateral.xlsx | fixed_deposit           | 274                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Only digits allowed, no decimal points or special characters. | Deposit Amount               | Invalid  |
      | collateral.xlsx | fixed_deposit           | 275                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Only digits allowed, no decimal points or special characters. | Deposit Amount               | Invalid  |
      | collateral.xlsx | fixed_deposit           | 276                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | A single digit is allowed.                                    | Deposit Amount               | Valid    |
      | collateral.xlsx | fixed_deposit           | 277                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Only digits allowed, no special characters.                   | Deposit Amount               | Valid    |
      | collateral.xlsx | fixed_deposit           | 278                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Contains a decimal point, which is not allowed.               | Deposit Amount               | Valid    |
      | collateral.xlsx | fixed_deposit           | 279                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Contains a comma (,), which is not allowed.                   | Deposit Amount               | Valid    |
      | collateral.xlsx | fixed_deposit           | 280                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Contains a hyphen (-), which is not allowed.                  | Deposit Amount               | Invalid  |
      | collateral.xlsx | fixed_deposit           | 281                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Contains a dollar sign ($), which is not allowed.             | Deposit Amount               | Invalid  |
      | collateral.xlsx | fixed_deposit           | 282                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Contains letters (abc), which are not allowed.                | Deposit Amount               | Invalid  |
      | collateral.xlsx | fixed_deposit           | 283                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Contains a decimal point, which is not allowed.               | Deposit Amount               | Valid    |
      | collateral.xlsx | fixed_deposit           | 284                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Contains a hyphen (-), which is not allowed.                  | Deposit Amount               | Invalid  |
      | collateral.xlsx | fixed_deposit           | 285                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Contains an underscore (_), which is not allowed.             | Deposit Amount               | Invalid  |
      | collateral.xlsx | fixed_deposit           | 286                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Contains multiple decimal points, which are not allowed.      | Deposit Amount               | Invalid  |
      | collateral.xlsx | fixed_deposit           | 287                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Correct format with valid numbers for day, month, and year.   | Maturity Date                | Valid    |
      | collateral.xlsx | fixed_deposit           | 288                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | The year is incomplete (missing one digit).                   | Maturity Date                | Invalid  |
      | collateral.xlsx | fixed_deposit           | 289                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Day (32) is invalid as it exceeds 31.                         | Maturity Date                | Invalid  |
      | collateral.xlsx | fixed_deposit           | 290                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | The separator is incorrect (- instead of /).                  | Maturity Date                | Invalid  |
      | collateral.xlsx | fixed_deposit           | 291                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Year contains an alphabet (A), which is not allowed.          | Maturity Date                | Invalid  |
      | collateral.xlsx | fixed_deposit           | 292                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Month (13) is invalid as months range from 01 to 12.          | Maturity Date                | Invalid  |
      | collateral.xlsx | fixed_deposit           | 293                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Invalid leap year date (2023 is not a leap year).             | Maturity Date                | Invalid  |
      | collateral.xlsx | fixed_deposit           | 294                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Contains invalid special character (@).                       | Maturity Date                | Invalid  |
      | collateral.xlsx | fixed_deposit           | 295                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Month (April) should be numeric, not alphabetic.              | Maturity Date                | Invalid  |
      | collateral.xlsx | fixed_deposit           | 296                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | The year (X is an alphabet, which is not allowed).            | Maturity Date                | Invalid  |
      | collateral.xlsx | fixed_deposit           | 297                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Contains an extra dot (.), which is not allowed.              | Maturity Date                | Invalid  |
      | collateral.xlsx | fixed_deposit           | 298                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Only digits allowed, no decimal points or special characters. | Maturity Amount              | Valid    |
      | collateral.xlsx | fixed_deposit           | 299                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Only digits allowed, no decimal points or special characters. | Maturity Amount              | Valid    |
      | collateral.xlsx | fixed_deposit           | 300                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | A single digit is allowed.                                    | Maturity Amount              | Invalid  |
      | collateral.xlsx | fixed_deposit           | 301                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Only digits allowed, no special characters.                   | Maturity Amount              | Valid    |
      | collateral.xlsx | fixed_deposit           | 302                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Contains a decimal point, which is not allowed.               | Maturity Amount              | Valid    |
      | collateral.xlsx | fixed_deposit           | 303                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Contains a comma (,), which is not allowed.                   | Maturity Amount              | Valid    |
      | collateral.xlsx | fixed_deposit           | 304                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Contains a hyphen (-), which is not allowed.                  | Maturity Amount              | Invalid  |
      | collateral.xlsx | fixed_deposit           | 305                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Contains a dollar sign ($), which is not allowed.             | Maturity Amount              | Invalid  |
      | collateral.xlsx | fixed_deposit           | 306                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Contains letters (abc), which are not allowed.                | Maturity Amount              | Invalid  |
      | collateral.xlsx | fixed_deposit           | 307                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Contains a decimal point, which is not allowed.               | Maturity Amount              | Valid    |
      | collateral.xlsx | fixed_deposit           | 308                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Contains a hyphen (-), which is not allowed.                  | Maturity Amount              | Invalid  |
      | collateral.xlsx | fixed_deposit           | 309                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Contains an underscore (_), which is not allowed.             | Maturity Amount              | Invalid  |
      | collateral.xlsx | fixed_deposit           | 310                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Contains multiple decimal points, which are not allowed.      | Maturity Amount              | Invalid  |
      | collateral.xlsx | fixed_deposit           | 311                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Value within range (0.00 to 100.00), with 2 decimal places.   | Rate of Interest             | Valid    |
      | collateral.xlsx | fixed_deposit           | 312                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Value within range (0.00 to 100.00), with 2 decimal places.   | Rate of Interest             | Valid    |
      | collateral.xlsx | fixed_deposit           | 313                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Value within range (0.00 to 100.00), with 2 decimal places.   | Rate of Interest             | Valid    |
      | collateral.xlsx | fixed_deposit           | 314                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Value within range (0.00 to 100.00), with 2 decimal places.   | Rate of Interest             | Valid    |
      | collateral.xlsx | fixed_deposit           | 315                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Value within range (0.00 to 100.00), with 2 decimal places.   | Rate of Interest             | Valid    |
      | collateral.xlsx | fixed_deposit           | 316                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Value within range (0.00 to 100.00), no decimal places.       | Rate of Interest             | Valid    |
      | collateral.xlsx | fixed_deposit           | 317                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Value within range (0.00 to 100.00), no decimal places.       | Rate of Interest             | Valid    |
      | collateral.xlsx | fixed_deposit           | 318                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Value exceeds the allowed 2 decimal places.                   | Rate of Interest             | Invalid  |
      | collateral.xlsx | fixed_deposit           | 319                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Value exceeds the maximum limit of 100.00.                    | Rate of Interest             | Invalid  |
      | collateral.xlsx | fixed_deposit           | 320                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Value is below the allowed minimum limit of 0.00.             | Rate of Interest             | Invalid  |
      | collateral.xlsx | fixed_deposit           | 321                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Value exceeds the allowed 2 decimal places.                   | Rate of Interest             | Invalid  |
      | collateral.xlsx | fixed_deposit           | 322                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Only uppercase letters and digits allowed.                    | Account Number               | Valid    |
      | collateral.xlsx | fixed_deposit           | 323                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Valid with spaces between characters.                         | Account Number               | Valid    |
      | collateral.xlsx | fixed_deposit           | 324                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Valid with a forward slash (/).                               | Account Number               | Valid    |
      | collateral.xlsx | fixed_deposit           | 325                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Valid with letters, slash (/), space, and dot (.).            | Account Number               | Valid    |
      | collateral.xlsx | fixed_deposit           | 326                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Valid with numbers, dot (.), and forward slash (/).           | Account Number               | Valid    |
      | collateral.xlsx | fixed_deposit           | 327                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Valid with letters, spaces, and dot (.).                      | Account Number               | Valid    |
      | collateral.xlsx | fixed_deposit           | 328                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Valid with numbers, slashes (/), and spaces.                  | Account Number               | Valid    |
      | collateral.xlsx | fixed_deposit           | 329                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Valid with spaces between numbers.                            | Account Number               | Valid    |
      | collateral.xlsx | fixed_deposit           | 330                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Valid with letters, numbers, forward slash (/), and dot (.).  | Account Number               | Valid    |
      | collateral.xlsx | fixed_deposit           | 331                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Contains an underscore (_), which is not allowed.             | Account Number               | Invalid  |
      | collateral.xlsx | fixed_deposit           | 332                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Contains an invalid character (#).                            | Account Number               | Invalid  |

    @ImplementedBy-pallavi.singh
    @Islamic
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    Examples:
      | CollateralWB    | Collateral_fixedDeposit | Collateral_fixedDeposit_rowNum | ProductType   | ApplicationStage   | key | category   | applicantType   | CollateralSubType   | Description                                                   | Field                        | Validity |
      | collateral.xlsx | fixed_deposit           | 215                            | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | Alphanumeric characters (letters and numbers) only.           | Collateral Ref No.           | Valid    |
      | collateral.xlsx | fixed_deposit           | 216                            | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | Alphanumeric characters with hyphen.                          | Collateral Ref No.           | Valid    |
      | collateral.xlsx | fixed_deposit           | 217                            | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | Alphanumeric characters with a space.                         | Collateral Ref No.           | Valid    |
      | collateral.xlsx | fixed_deposit           | 218                            | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | Alphanumeric characters with spaces in between.               | Collateral Ref No.           | Valid    |
      | collateral.xlsx | fixed_deposit           | 219                            | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | Alphanumeric characters with hyphen.                          | Collateral Ref No.           | Valid    |
      | collateral.xlsx | fixed_deposit           | 220                            | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | Alphanumeric characters with spaces and hyphen.               | Collateral Ref No.           | Valid    |
      | collateral.xlsx | fixed_deposit           | 221                            | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | Alphanumeric characters with spaces and hyphen.               | Collateral Ref No.           | Valid    |
      | collateral.xlsx | fixed_deposit           | 222                            | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | Alphanumeric characters with hyphen and space.                | Collateral Ref No.           | Valid    |
      | collateral.xlsx | fixed_deposit           | 223                            | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | Alphanumeric characters with space and hyphen.                | Collateral Ref No.           | Valid    |
      | collateral.xlsx | fixed_deposit           | 224                            | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | Alphanumeric characters with hyphen.                          | Collateral Ref No.           | Valid    |
      | collateral.xlsx | fixed_deposit           | 225                            | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | Contains invalid character (@).                               | Collateral Ref No.           | Invalid  |
      | collateral.xlsx | fixed_deposit           | 226                            | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | Contains invalid character (#).                               | Collateral Ref No.           | Invalid  |
      | collateral.xlsx | fixed_deposit           | 227                            | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | Contains invalid character (!).                               | Collateral Ref No.           | Invalid  |
      | collateral.xlsx | fixed_deposit           | 228                            | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | Starts with invalid character (#).                            | Collateral Ref No.           | Invalid  |
      | collateral.xlsx | fixed_deposit           | 229                            | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | Contains invalid character (^).                               | Collateral Ref No.           | Invalid  |
      | collateral.xlsx | fixed_deposit           | 230                            | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | Contains invalid character (@).                               | Collateral Ref No.           | Invalid  |
      | collateral.xlsx | fixed_deposit           | 231                            | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | Contains invalid character (*).                               | Collateral Ref No.           | Invalid  |
      | collateral.xlsx | fixed_deposit           | 232                            | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | Ends with invalid character (#).                              | Collateral Ref No.           | Invalid  |
      | collateral.xlsx | fixed_deposit           | 233                            | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | Starts with invalid characters (!@).                          | Collateral Ref No.           | Invalid  |
      | collateral.xlsx | fixed_deposit           | 234                            | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | Starts with invalid character (#).                            | Collateral Ref No.           | Invalid  |
      | collateral.xlsx | fixed_deposit           | 235                            | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | Any alphanumeric text is allowed, as there's no validation.   | Description                  | Valid    |
      | collateral.xlsx | fixed_deposit           | 236                            | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | Any length of alphanumeric text is allowed.                   | Description                  | Valid    |
      | collateral.xlsx | fixed_deposit           | 237                            | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | Numeric characters are allowed as there are no restrictions.  | Description                  | Valid    |
      | collateral.xlsx | fixed_deposit           | 238                            | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | Special characters are allowed as there is no restriction.    | Description                  | Valid    |
      | collateral.xlsx | fixed_deposit           | 239                            | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | Empty string is allowed.                                      | Description                  | Valid    |
      | collateral.xlsx | fixed_deposit           | 240                            | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | Single word input is allowed.                                 | Description                  | Valid    |
      | collateral.xlsx | fixed_deposit           | 241                            | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | Empty field is allowed.                                       | Description                  | Valid    |
      | collateral.xlsx | fixed_deposit           | 242                            | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | Alphanumeric characters (letters and numbers) only.           | Fixed Deposit Number         | Valid    |
      | collateral.xlsx | fixed_deposit           | 243                            | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | Contains an invalid character (-).                            | Fixed Deposit Number         | Invalid  |
      | collateral.xlsx | fixed_deposit           | 244                            | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | Alphanumeric characters with a /.                             | Fixed Deposit Number         | Valid    |
      | collateral.xlsx | fixed_deposit           | 245                            | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | Alphanumeric characters with a space.                         | Fixed Deposit Number         | Valid    |
      | collateral.xlsx | fixed_deposit           | 246                            | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | Alphanumeric characters with a dot.                           | Fixed Deposit Number         | Valid    |
      | collateral.xlsx | fixed_deposit           | 247                            | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | Alphanumeric characters, space, /, and dot allowed.           | Fixed Deposit Number         | Valid    |
      | collateral.xlsx | fixed_deposit           | 248                            | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | Alphanumeric characters, /, and dot allowed.                  | Fixed Deposit Number         | Valid    |
      | collateral.xlsx | fixed_deposit           | 249                            | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | Alphanumeric characters, space, /, and dot allowed.           | Fixed Deposit Number         | Valid    |
      | collateral.xlsx | fixed_deposit           | 250                            | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | Alphanumeric characters, dot, /, and space allowed.           | Fixed Deposit Number         | Valid    |
      | collateral.xlsx | fixed_deposit           | 251                            | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | Alphanumeric characters with space, dot, and / allowed.       | Fixed Deposit Number         | Valid    |
      | collateral.xlsx | fixed_deposit           | 252                            | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | Contains an invalid character (@).                            | Fixed Deposit Number         | Invalid  |
      | collateral.xlsx | fixed_deposit           | 253                            | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | Contains an invalid character (#).                            | Fixed Deposit Number         | Invalid  |
      | collateral.xlsx | fixed_deposit           | 254                            | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | Contains an invalid character ($).                            | Fixed Deposit Number         | Invalid  |
      | collateral.xlsx | fixed_deposit           | 255                            | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | Contains an invalid character (&).                            | Fixed Deposit Number         | Invalid  |
      | collateral.xlsx | fixed_deposit           | 256                            | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | Contains an invalid character (^).                            | Fixed Deposit Number         | Invalid  |
      | collateral.xlsx | fixed_deposit           | 257                            | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | Contains an invalid character (*).                            | Fixed Deposit Number         | Invalid  |
      | collateral.xlsx | fixed_deposit           | 258                            | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | Starts with an invalid character (#).                         | Fixed Deposit Number         | Invalid  |
      | collateral.xlsx | fixed_deposit           | 259                            | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | Contains an invalid character (_).                            | Fixed Deposit Number         | Invalid  |
      | collateral.xlsx | fixed_deposit           | 260                            | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | Alphanumeric characters, space, and / allowed.                | Fixed Deposit Number         | Valid    |
      | collateral.xlsx | fixed_deposit           | 261                            | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | Alphanumeric characters with space, dot, and / allowed.       | Fixed Deposit Number         | Valid    |
      | collateral.xlsx | fixed_deposit           | 262                            | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | Alphanumeric characters, space, /, and dot allowed.           | Fixed Deposit Number         | Valid    |
      | collateral.xlsx | fixed_deposit           | 263                            | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | Only alphabetic characters and spaces between names allowed.  | Name of Fixed Deposit Holder | Valid    |
      | collateral.xlsx | fixed_deposit           | 264                            | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | Contains numbers, which are not allowed.                      | Name of Fixed Deposit Holder | Invalid  |
      | collateral.xlsx | fixed_deposit           | 265                            | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | Contains a hyphen, which is not allowed.                      | Name of Fixed Deposit Holder | Invalid  |
      | collateral.xlsx | fixed_deposit           | 266                            | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | Contains an invalid character (!).                            | Name of Fixed Deposit Holder | Invalid  |
      | collateral.xlsx | fixed_deposit           | 267                            | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | Contains numbers, which are not allowed.                      | Name of Fixed Deposit Holder | Invalid  |
      | collateral.xlsx | fixed_deposit           | 268                            | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | Contains an invalid character (@).                            | Name of Fixed Deposit Holder | Invalid  |
      | collateral.xlsx | fixed_deposit           | 269                            | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | Contains an invalid character (*).                            | Name of Fixed Deposit Holder | Invalid  |
      | collateral.xlsx | fixed_deposit           | 270                            | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | Contains an apostrophe ('), which is not allowed.             | Name of Fixed Deposit Holder | Invalid  |
      | collateral.xlsx | fixed_deposit           | 271                            | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | Contains a hyphen (-), which is not allowed.                  | Name of Fixed Deposit Holder | Invalid  |
      | collateral.xlsx | fixed_deposit           | 272                            | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | Contains an accent (á), which is allowed.                     | Name of Fixed Deposit Holder | Valid    |
      | collateral.xlsx | fixed_deposit           | 273                            | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | Contains a hyphen (-), which is not allowed.                  | Name of Fixed Deposit Holder | Invalid  |
      | collateral.xlsx | fixed_deposit           | 274                            | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | Only digits allowed, no decimal points or special characters. | Deposit Amount               | Invalid  |
      | collateral.xlsx | fixed_deposit           | 275                            | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | Only digits allowed, no decimal points or special characters. | Deposit Amount               | Invalid  |
      | collateral.xlsx | fixed_deposit           | 276                            | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | A single digit is allowed.                                    | Deposit Amount               | Valid    |
      | collateral.xlsx | fixed_deposit           | 277                            | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | Only digits allowed, no special characters.                   | Deposit Amount               | Valid    |
      | collateral.xlsx | fixed_deposit           | 278                            | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | Contains a decimal point, which is not allowed.               | Deposit Amount               | Valid    |
      | collateral.xlsx | fixed_deposit           | 279                            | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | Contains a comma (,), which is not allowed.                   | Deposit Amount               | Valid    |
      | collateral.xlsx | fixed_deposit           | 280                            | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | Contains a hyphen (-), which is not allowed.                  | Deposit Amount               | Invalid  |
      | collateral.xlsx | fixed_deposit           | 281                            | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | Contains a dollar sign ($), which is not allowed.             | Deposit Amount               | Invalid  |
      | collateral.xlsx | fixed_deposit           | 282                            | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | Contains letters (abc), which are not allowed.                | Deposit Amount               | Invalid  |
      | collateral.xlsx | fixed_deposit           | 283                            | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | Contains a decimal point, which is not allowed.               | Deposit Amount               | Valid    |
      | collateral.xlsx | fixed_deposit           | 284                            | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | Contains a hyphen (-), which is not allowed.                  | Deposit Amount               | Invalid  |
      | collateral.xlsx | fixed_deposit           | 285                            | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | Contains an underscore (_), which is not allowed.             | Deposit Amount               | Invalid  |
      | collateral.xlsx | fixed_deposit           | 286                            | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | Contains multiple decimal points, which are not allowed.      | Deposit Amount               | Invalid  |
      | collateral.xlsx | fixed_deposit           | 287                            | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | Correct format with valid numbers for day, month, and year.   | Maturity Date                | Valid    |
      | collateral.xlsx | fixed_deposit           | 288                            | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | The year is incomplete (missing one digit).                   | Maturity Date                | Invalid  |
      | collateral.xlsx | fixed_deposit           | 289                            | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | Day (32) is invalid as it exceeds 31.                         | Maturity Date                | Invalid  |
      | collateral.xlsx | fixed_deposit           | 290                            | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | The separator is incorrect (- instead of /).                  | Maturity Date                | Invalid  |
      | collateral.xlsx | fixed_deposit           | 291                            | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | Year contains an alphabet (A), which is not allowed.          | Maturity Date                | Invalid  |
      | collateral.xlsx | fixed_deposit           | 292                            | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | Month (13) is invalid as months range from 01 to 12.          | Maturity Date                | Invalid  |
      | collateral.xlsx | fixed_deposit           | 293                            | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | Invalid leap year date (2023 is not a leap year).             | Maturity Date                | Invalid  |
      | collateral.xlsx | fixed_deposit           | 294                            | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | Contains invalid special character (@).                       | Maturity Date                | Invalid  |
      | collateral.xlsx | fixed_deposit           | 295                            | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | Month (April) should be numeric, not alphabetic.              | Maturity Date                | Invalid  |
      | collateral.xlsx | fixed_deposit           | 296                            | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | The year (X is an alphabet, which is not allowed).            | Maturity Date                | Invalid  |
      | collateral.xlsx | fixed_deposit           | 297                            | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | Contains an extra dot (.), which is not allowed.              | Maturity Date                | Invalid  |
      | collateral.xlsx | fixed_deposit           | 298                            | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | Only digits allowed, no decimal points or special characters. | Maturity Amount              | Valid    |
      | collateral.xlsx | fixed_deposit           | 299                            | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | Only digits allowed, no decimal points or special characters. | Maturity Amount              | Valid    |
      | collateral.xlsx | fixed_deposit           | 300                            | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | A single digit is allowed.                                    | Maturity Amount              | Invalid  |
      | collateral.xlsx | fixed_deposit           | 301                            | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | Only digits allowed, no special characters.                   | Maturity Amount              | Valid    |
      | collateral.xlsx | fixed_deposit           | 302                            | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | Contains a decimal point, which is not allowed.               | Maturity Amount              | Valid    |
      | collateral.xlsx | fixed_deposit           | 303                            | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | Contains a comma (,), which is not allowed.                   | Maturity Amount              | Valid    |
      | collateral.xlsx | fixed_deposit           | 304                            | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | Contains a hyphen (-), which is not allowed.                  | Maturity Amount              | Invalid  |
      | collateral.xlsx | fixed_deposit           | 305                            | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | Contains a dollar sign ($), which is not allowed.             | Maturity Amount              | Invalid  |
      | collateral.xlsx | fixed_deposit           | 306                            | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | Contains letters (abc), which are not allowed.                | Maturity Amount              | Invalid  |
      | collateral.xlsx | fixed_deposit           | 307                            | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | Contains a decimal point, which is not allowed.               | Maturity Amount              | Valid    |
      | collateral.xlsx | fixed_deposit           | 308                            | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | Contains a hyphen (-), which is not allowed.                  | Maturity Amount              | Invalid  |
      | collateral.xlsx | fixed_deposit           | 309                            | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | Contains an underscore (_), which is not allowed.             | Maturity Amount              | Invalid  |
      | collateral.xlsx | fixed_deposit           | 310                            | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | Contains multiple decimal points, which are not allowed.      | Maturity Amount              | Invalid  |
      | collateral.xlsx | fixed_deposit           | 311                            | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | Value within range (0.00 to 100.00), with 2 decimal places.   | Rate of Interest             | Valid    |
      | collateral.xlsx | fixed_deposit           | 312                            | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | Value within range (0.00 to 100.00), with 2 decimal places.   | Rate of Interest             | Valid    |
      | collateral.xlsx | fixed_deposit           | 313                            | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | Value within range (0.00 to 100.00), with 2 decimal places.   | Rate of Interest             | Valid    |
      | collateral.xlsx | fixed_deposit           | 314                            | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | Value within range (0.00 to 100.00), with 2 decimal places.   | Rate of Interest             | Valid    |
      | collateral.xlsx | fixed_deposit           | 315                            | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | Value within range (0.00 to 100.00), with 2 decimal places.   | Rate of Interest             | Valid    |
      | collateral.xlsx | fixed_deposit           | 316                            | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | Value within range (0.00 to 100.00), no decimal places.       | Rate of Interest             | Valid    |
      | collateral.xlsx | fixed_deposit           | 317                            | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | Value within range (0.00 to 100.00), no decimal places.       | Rate of Interest             | Valid    |
      | collateral.xlsx | fixed_deposit           | 318                            | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | Value exceeds the allowed 2 decimal places.                   | Rate of Interest             | Invalid  |
      | collateral.xlsx | fixed_deposit           | 319                            | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | Value exceeds the maximum limit of 100.00.                    | Rate of Interest             | Invalid  |
      | collateral.xlsx | fixed_deposit           | 320                            | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | Value is below the allowed minimum limit of 0.00.             | Rate of Interest             | Invalid  |
      | collateral.xlsx | fixed_deposit           | 321                            | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | Value exceeds the allowed 2 decimal places.                   | Rate of Interest             | Invalid  |
      | collateral.xlsx | fixed_deposit           | 322                            | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | Only uppercase letters and digits allowed.                    | Account Number               | Valid    |
      | collateral.xlsx | fixed_deposit           | 323                            | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | Valid with spaces between characters.                         | Account Number               | Valid    |
      | collateral.xlsx | fixed_deposit           | 324                            | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | Valid with a forward slash (/).                               | Account Number               | Valid    |
      | collateral.xlsx | fixed_deposit           | 325                            | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | Valid with letters, slash (/), space, and dot (.).            | Account Number               | Valid    |
      | collateral.xlsx | fixed_deposit           | 326                            | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | Valid with numbers, dot (.), and forward slash (/).           | Account Number               | Valid    |
      | collateral.xlsx | fixed_deposit           | 327                            | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | Valid with letters, spaces, and dot (.).                      | Account Number               | Valid    |
      | collateral.xlsx | fixed_deposit           | 328                            | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | Valid with numbers, slashes (/), and spaces.                  | Account Number               | Valid    |
      | collateral.xlsx | fixed_deposit           | 329                            | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | Valid with spaces between numbers.                            | Account Number               | Valid    |
      | collateral.xlsx | fixed_deposit           | 330                            | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | Valid with letters, numbers, forward slash (/), and dot (.).  | Account Number               | Valid    |
      | collateral.xlsx | fixed_deposit           | 331                            | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | Contains an underscore (_), which is not allowed.             | Account Number               | Invalid  |
      | collateral.xlsx | fixed_deposit           | 332                            | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | Contains an invalid character (#).                            | Account Number               | Invalid  |

    @ImplementedBy-pallavi.singh
    @Islamic
    #${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    Examples:
      | CollateralWB    | Collateral_fixedDeposit | Collateral_fixedDeposit_rowNum | ProductType   | ApplicationStage   | key | category | applicantType   | CollateralSubType   | Description                                                   | Field                        | Validity |
      | collateral.xlsx | fixed_deposit           | 215                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Alphanumeric characters (letters and numbers) only.           | Collateral Ref No.           | Valid    |
      | collateral.xlsx | fixed_deposit           | 216                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Alphanumeric characters with hyphen.                          | Collateral Ref No.           | Valid    |
      | collateral.xlsx | fixed_deposit           | 217                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Alphanumeric characters with a space.                         | Collateral Ref No.           | Valid    |
      | collateral.xlsx | fixed_deposit           | 218                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Alphanumeric characters with spaces in between.               | Collateral Ref No.           | Valid    |
      | collateral.xlsx | fixed_deposit           | 219                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Alphanumeric characters with hyphen.                          | Collateral Ref No.           | Valid    |
      | collateral.xlsx | fixed_deposit           | 220                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Alphanumeric characters with spaces and hyphen.               | Collateral Ref No.           | Valid    |
      | collateral.xlsx | fixed_deposit           | 221                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Alphanumeric characters with spaces and hyphen.               | Collateral Ref No.           | Valid    |
      | collateral.xlsx | fixed_deposit           | 222                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Alphanumeric characters with hyphen and space.                | Collateral Ref No.           | Valid    |
      | collateral.xlsx | fixed_deposit           | 223                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Alphanumeric characters with space and hyphen.                | Collateral Ref No.           | Valid    |
      | collateral.xlsx | fixed_deposit           | 224                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Alphanumeric characters with hyphen.                          | Collateral Ref No.           | Valid    |
      | collateral.xlsx | fixed_deposit           | 225                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Contains invalid character (@).                               | Collateral Ref No.           | Invalid  |
      | collateral.xlsx | fixed_deposit           | 226                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Contains invalid character (#).                               | Collateral Ref No.           | Invalid  |
      | collateral.xlsx | fixed_deposit           | 227                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Contains invalid character (!).                               | Collateral Ref No.           | Invalid  |
      | collateral.xlsx | fixed_deposit           | 228                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Starts with invalid character (#).                            | Collateral Ref No.           | Invalid  |
      | collateral.xlsx | fixed_deposit           | 229                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Contains invalid character (^).                               | Collateral Ref No.           | Invalid  |
      | collateral.xlsx | fixed_deposit           | 230                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Contains invalid character (@).                               | Collateral Ref No.           | Invalid  |
      | collateral.xlsx | fixed_deposit           | 231                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Contains invalid character (*).                               | Collateral Ref No.           | Invalid  |
      | collateral.xlsx | fixed_deposit           | 232                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Ends with invalid character (#).                              | Collateral Ref No.           | Invalid  |
      | collateral.xlsx | fixed_deposit           | 233                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Starts with invalid characters (!@).                          | Collateral Ref No.           | Invalid  |
      | collateral.xlsx | fixed_deposit           | 234                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Starts with invalid character (#).                            | Collateral Ref No.           | Invalid  |
      | collateral.xlsx | fixed_deposit           | 235                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Any alphanumeric text is allowed, as there's no validation.   | Description                  | Valid    |
      | collateral.xlsx | fixed_deposit           | 236                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Any length of alphanumeric text is allowed.                   | Description                  | Valid    |
      | collateral.xlsx | fixed_deposit           | 237                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Numeric characters are allowed as there are no restrictions.  | Description                  | Valid    |
      | collateral.xlsx | fixed_deposit           | 238                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Special characters are allowed as there is no restriction.    | Description                  | Valid    |
      | collateral.xlsx | fixed_deposit           | 239                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Empty string is allowed.                                      | Description                  | Valid    |
      | collateral.xlsx | fixed_deposit           | 240                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Single word input is allowed.                                 | Description                  | Valid    |
      | collateral.xlsx | fixed_deposit           | 241                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Empty field is allowed.                                       | Description                  | Valid    |
      | collateral.xlsx | fixed_deposit           | 242                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Alphanumeric characters (letters and numbers) only.           | Fixed Deposit Number         | Valid    |
      | collateral.xlsx | fixed_deposit           | 243                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Contains an invalid character (-).                            | Fixed Deposit Number         | Invalid  |
      | collateral.xlsx | fixed_deposit           | 244                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Alphanumeric characters with a /.                             | Fixed Deposit Number         | Valid    |
      | collateral.xlsx | fixed_deposit           | 245                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Alphanumeric characters with a space.                         | Fixed Deposit Number         | Valid    |
      | collateral.xlsx | fixed_deposit           | 246                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Alphanumeric characters with a dot.                           | Fixed Deposit Number         | Valid    |
      | collateral.xlsx | fixed_deposit           | 247                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Alphanumeric characters, space, /, and dot allowed.           | Fixed Deposit Number         | Valid    |
      | collateral.xlsx | fixed_deposit           | 248                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Alphanumeric characters, /, and dot allowed.                  | Fixed Deposit Number         | Valid    |
      | collateral.xlsx | fixed_deposit           | 249                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Alphanumeric characters, space, /, and dot allowed.           | Fixed Deposit Number         | Valid    |
      | collateral.xlsx | fixed_deposit           | 250                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Alphanumeric characters, dot, /, and space allowed.           | Fixed Deposit Number         | Valid    |
      | collateral.xlsx | fixed_deposit           | 251                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Alphanumeric characters with space, dot, and / allowed.       | Fixed Deposit Number         | Valid    |
      | collateral.xlsx | fixed_deposit           | 252                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Contains an invalid character (@).                            | Fixed Deposit Number         | Invalid  |
      | collateral.xlsx | fixed_deposit           | 253                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Contains an invalid character (#).                            | Fixed Deposit Number         | Invalid  |
      | collateral.xlsx | fixed_deposit           | 254                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Contains an invalid character ($).                            | Fixed Deposit Number         | Invalid  |
      | collateral.xlsx | fixed_deposit           | 255                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Contains an invalid character (&).                            | Fixed Deposit Number         | Invalid  |
      | collateral.xlsx | fixed_deposit           | 256                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Contains an invalid character (^).                            | Fixed Deposit Number         | Invalid  |
      | collateral.xlsx | fixed_deposit           | 257                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Contains an invalid character (*).                            | Fixed Deposit Number         | Invalid  |
      | collateral.xlsx | fixed_deposit           | 258                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Starts with an invalid character (#).                         | Fixed Deposit Number         | Invalid  |
      | collateral.xlsx | fixed_deposit           | 259                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Contains an invalid character (_).                            | Fixed Deposit Number         | Invalid  |
      | collateral.xlsx | fixed_deposit           | 260                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Alphanumeric characters, space, and / allowed.                | Fixed Deposit Number         | Valid    |
      | collateral.xlsx | fixed_deposit           | 261                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Alphanumeric characters with space, dot, and / allowed.       | Fixed Deposit Number         | Valid    |
      | collateral.xlsx | fixed_deposit           | 262                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Alphanumeric characters, space, /, and dot allowed.           | Fixed Deposit Number         | Valid    |
      | collateral.xlsx | fixed_deposit           | 263                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Only alphabetic characters and spaces between names allowed.  | Name of Fixed Deposit Holder | Valid    |
      | collateral.xlsx | fixed_deposit           | 264                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Contains numbers, which are not allowed.                      | Name of Fixed Deposit Holder | Invalid  |
      | collateral.xlsx | fixed_deposit           | 265                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Contains a hyphen, which is not allowed.                      | Name of Fixed Deposit Holder | Invalid  |
      | collateral.xlsx | fixed_deposit           | 266                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Contains an invalid character (!).                            | Name of Fixed Deposit Holder | Invalid  |
      | collateral.xlsx | fixed_deposit           | 267                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Contains numbers, which are not allowed.                      | Name of Fixed Deposit Holder | Invalid  |
      | collateral.xlsx | fixed_deposit           | 268                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Contains an invalid character (@).                            | Name of Fixed Deposit Holder | Invalid  |
      | collateral.xlsx | fixed_deposit           | 269                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Contains an invalid character (*).                            | Name of Fixed Deposit Holder | Invalid  |
      | collateral.xlsx | fixed_deposit           | 270                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Contains an apostrophe ('), which is not allowed.             | Name of Fixed Deposit Holder | Invalid  |
      | collateral.xlsx | fixed_deposit           | 271                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Contains a hyphen (-), which is not allowed.                  | Name of Fixed Deposit Holder | Invalid  |
      | collateral.xlsx | fixed_deposit           | 272                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Contains an accent (á), which is allowed.                     | Name of Fixed Deposit Holder | Valid    |
      | collateral.xlsx | fixed_deposit           | 273                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Contains a hyphen (-), which is not allowed.                  | Name of Fixed Deposit Holder | Invalid  |
      | collateral.xlsx | fixed_deposit           | 274                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Only digits allowed, no decimal points or special characters. | Deposit Amount               | Invalid  |
      | collateral.xlsx | fixed_deposit           | 275                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Only digits allowed, no decimal points or special characters. | Deposit Amount               | Invalid  |
      | collateral.xlsx | fixed_deposit           | 276                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | A single digit is allowed.                                    | Deposit Amount               | Valid    |
      | collateral.xlsx | fixed_deposit           | 277                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Only digits allowed, no special characters.                   | Deposit Amount               | Valid    |
      | collateral.xlsx | fixed_deposit           | 278                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Contains a decimal point, which is not allowed.               | Deposit Amount               | Valid    |
      | collateral.xlsx | fixed_deposit           | 279                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Contains a comma (,), which is not allowed.                   | Deposit Amount               | Valid    |
      | collateral.xlsx | fixed_deposit           | 280                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Contains a hyphen (-), which is not allowed.                  | Deposit Amount               | Invalid  |
      | collateral.xlsx | fixed_deposit           | 281                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Contains a dollar sign ($), which is not allowed.             | Deposit Amount               | Invalid  |
      | collateral.xlsx | fixed_deposit           | 282                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Contains letters (abc), which are not allowed.                | Deposit Amount               | Invalid  |
      | collateral.xlsx | fixed_deposit           | 283                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Contains a decimal point, which is not allowed.               | Deposit Amount               | Valid    |
      | collateral.xlsx | fixed_deposit           | 284                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Contains a hyphen (-), which is not allowed.                  | Deposit Amount               | Invalid  |
      | collateral.xlsx | fixed_deposit           | 285                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Contains an underscore (_), which is not allowed.             | Deposit Amount               | Invalid  |
      | collateral.xlsx | fixed_deposit           | 286                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Contains multiple decimal points, which are not allowed.      | Deposit Amount               | Invalid  |
      | collateral.xlsx | fixed_deposit           | 287                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Correct format with valid numbers for day, month, and year.   | Maturity Date                | Valid    |
      | collateral.xlsx | fixed_deposit           | 288                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | The year is incomplete (missing one digit).                   | Maturity Date                | Invalid  |
      | collateral.xlsx | fixed_deposit           | 289                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Day (32) is invalid as it exceeds 31.                         | Maturity Date                | Invalid  |
      | collateral.xlsx | fixed_deposit           | 290                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | The separator is incorrect (- instead of /).                  | Maturity Date                | Invalid  |
      | collateral.xlsx | fixed_deposit           | 291                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Year contains an alphabet (A), which is not allowed.          | Maturity Date                | Invalid  |
      | collateral.xlsx | fixed_deposit           | 292                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Month (13) is invalid as months range from 01 to 12.          | Maturity Date                | Invalid  |
      | collateral.xlsx | fixed_deposit           | 293                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Invalid leap year date (2023 is not a leap year).             | Maturity Date                | Invalid  |
      | collateral.xlsx | fixed_deposit           | 294                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Contains invalid special character (@).                       | Maturity Date                | Invalid  |
      | collateral.xlsx | fixed_deposit           | 295                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Month (April) should be numeric, not alphabetic.              | Maturity Date                | Invalid  |
      | collateral.xlsx | fixed_deposit           | 296                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | The year (X is an alphabet, which is not allowed).            | Maturity Date                | Invalid  |
      | collateral.xlsx | fixed_deposit           | 297                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Contains an extra dot (.), which is not allowed.              | Maturity Date                | Invalid  |
      | collateral.xlsx | fixed_deposit           | 298                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Only digits allowed, no decimal points or special characters. | Maturity Amount              | Valid    |
      | collateral.xlsx | fixed_deposit           | 299                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Only digits allowed, no decimal points or special characters. | Maturity Amount              | Valid    |
      | collateral.xlsx | fixed_deposit           | 300                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | A single digit is allowed.                                    | Maturity Amount              | Invalid  |
      | collateral.xlsx | fixed_deposit           | 301                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Only digits allowed, no special characters.                   | Maturity Amount              | Valid    |
      | collateral.xlsx | fixed_deposit           | 302                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Contains a decimal point, which is not allowed.               | Maturity Amount              | Valid    |
      | collateral.xlsx | fixed_deposit           | 303                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Contains a comma (,), which is not allowed.                   | Maturity Amount              | Valid    |
      | collateral.xlsx | fixed_deposit           | 304                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Contains a hyphen (-), which is not allowed.                  | Maturity Amount              | Invalid  |
      | collateral.xlsx | fixed_deposit           | 305                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Contains a dollar sign ($), which is not allowed.             | Maturity Amount              | Invalid  |
      | collateral.xlsx | fixed_deposit           | 306                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Contains letters (abc), which are not allowed.                | Maturity Amount              | Invalid  |
      | collateral.xlsx | fixed_deposit           | 307                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Contains a decimal point, which is not allowed.               | Maturity Amount              | Valid    |
      | collateral.xlsx | fixed_deposit           | 308                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Contains a hyphen (-), which is not allowed.                  | Maturity Amount              | Invalid  |
      | collateral.xlsx | fixed_deposit           | 309                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Contains an underscore (_), which is not allowed.             | Maturity Amount              | Invalid  |
      | collateral.xlsx | fixed_deposit           | 310                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Contains multiple decimal points, which are not allowed.      | Maturity Amount              | Invalid  |
      | collateral.xlsx | fixed_deposit           | 311                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Value within range (0.00 to 100.00), with 2 decimal places.   | Rate of Interest             | Valid    |
      | collateral.xlsx | fixed_deposit           | 312                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Value within range (0.00 to 100.00), with 2 decimal places.   | Rate of Interest             | Valid    |
      | collateral.xlsx | fixed_deposit           | 313                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Value within range (0.00 to 100.00), with 2 decimal places.   | Rate of Interest             | Valid    |
      | collateral.xlsx | fixed_deposit           | 314                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Value within range (0.00 to 100.00), with 2 decimal places.   | Rate of Interest             | Valid    |
      | collateral.xlsx | fixed_deposit           | 315                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Value within range (0.00 to 100.00), with 2 decimal places.   | Rate of Interest             | Valid    |
      | collateral.xlsx | fixed_deposit           | 316                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Value within range (0.00 to 100.00), no decimal places.       | Rate of Interest             | Valid    |
      | collateral.xlsx | fixed_deposit           | 317                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Value within range (0.00 to 100.00), no decimal places.       | Rate of Interest             | Valid    |
      | collateral.xlsx | fixed_deposit           | 318                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Value exceeds the allowed 2 decimal places.                   | Rate of Interest             | Invalid  |
      | collateral.xlsx | fixed_deposit           | 319                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Value exceeds the maximum limit of 100.00.                    | Rate of Interest             | Invalid  |
      | collateral.xlsx | fixed_deposit           | 320                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Value is below the allowed minimum limit of 0.00.             | Rate of Interest             | Invalid  |
      | collateral.xlsx | fixed_deposit           | 321                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Value exceeds the allowed 2 decimal places.                   | Rate of Interest             | Invalid  |
      | collateral.xlsx | fixed_deposit           | 322                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Only uppercase letters and digits allowed.                    | Account Number               | Valid    |
      | collateral.xlsx | fixed_deposit           | 323                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Valid with spaces between characters.                         | Account Number               | Valid    |
      | collateral.xlsx | fixed_deposit           | 324                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Valid with a forward slash (/).                               | Account Number               | Valid    |
      | collateral.xlsx | fixed_deposit           | 325                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Valid with letters, slash (/), space, and dot (.).            | Account Number               | Valid    |
      | collateral.xlsx | fixed_deposit           | 326                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Valid with numbers, dot (.), and forward slash (/).           | Account Number               | Valid    |
      | collateral.xlsx | fixed_deposit           | 327                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Valid with letters, spaces, and dot (.).                      | Account Number               | Valid    |
      | collateral.xlsx | fixed_deposit           | 328                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Valid with numbers, slashes (/), and spaces.                  | Account Number               | Valid    |
      | collateral.xlsx | fixed_deposit           | 329                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Valid with spaces between numbers.                            | Account Number               | Valid    |
      | collateral.xlsx | fixed_deposit           | 330                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Valid with letters, numbers, forward slash (/), and dot (.).  | Account Number               | Valid    |
      | collateral.xlsx | fixed_deposit           | 331                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Contains an underscore (_), which is not allowed.             | Account Number               | Invalid  |
      | collateral.xlsx | fixed_deposit           | 332                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Contains an invalid character (#).                            | Account Number               | Invalid  |


  Scenario Outline: ACAUTOCAS-3018:  Capture Fixed Deposit against an application with create another after this one of <applicantType> on <ProductType> on <ApplicationStage>
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "collateral.xlsx" under sheet "default" and row 736
    And user selects collateral type along with collateral sub type
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user selects create another after this one option
    And user checks the duplicates on collateral dedupe check
    When user saves the data
    Then CollateralPage remains available to create another collateral
    @ImplementedBy-aditya.tomar
    @Conventional
    #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE", "Credit Approval", "Recommendation", "Reconsideration", "Disbursal Initiation"]}
    Examples:
      | ProductType   | ApplicationStage   | key | category | applicantType   |
      | <ProductType> | <ApplicationStage> |     |          | <applicantType> |

    @ImplementedBy-pallavi.singh
    @Islamic
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    Examples:
      | ProductType   | ApplicationStage   | key | category   | applicantType   |
      | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> |

    @ImplementedBy-pallavi.singh
    @Islamic
    #${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    Examples:
      | ProductType   | ApplicationStage   | key | category | applicantType   |
      | <ProductType> | <ApplicationStage> |     |          | <applicantType> |


  ###Squash:137607
  ###Story:CAS-23473
  ###Bug:
  #FeatureID-ACAUTOCAS-235,ACAUTOCAS-2
  Scenario Outline: ACAUTOCAS-16799: user adds multiple collateral to <ProductType> application at <ApplicationStage> stage with sub type as Fixed Deposit
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "collateral.xlsx" under sheet "default" and row 736
    When user adds deposit type collateral of fixed deposit subtype
      | collateral.xlsx | fixed_deposit | 207 |
      | collateral.xlsx | fixed_deposit | 208 |
      | collateral.xlsx | fixed_deposit | 209 |
      | collateral.xlsx | fixed_deposit | 210 |
      | collateral.xlsx | fixed_deposit | 211 |
      | collateral.xlsx | fixed_deposit | 212 |
      | collateral.xlsx | fixed_deposit | 213 |
      | collateral.xlsx | fixed_deposit | 214 |
    Then user check the all added collateral to application
    @ImplementedBy-aditya.tomar
    @Conventional
    # ${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","CC","LAP","CL"]}
    # ${ApplicationStage:["DDE","Credit Approval"]}
    Examples:
      | ProductType   | ApplicationStage   | key | category | applicantType   |
      | <ProductType> | <ApplicationStage> |     |          | <applicantType> |

    @ImplementedBy-pallavi.singh
    @Islamic
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    Examples:
      | ProductType   | ApplicationStage   | key | category   | applicantType   |
      | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> |

    @ImplementedBy-pallavi.singh
    @Islamic
    #${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Credit Approval"]}
    Examples:
      | ProductType   | ApplicationStage   | key | category | applicantType   |
      | <ProductType> | <ApplicationStage> |     |          | <applicantType> |


  ###Squash:137607
  ###Story:CAS-23473
  ###Bug:
  #FeatureID-ACAUTOCAS-235,ACAUTOCAS-2
  Scenario Outline: ACAUTOCAS-16800: user views multiple collateral attached to <ProductType> application at <ApplicationStage> stage with sub type as Fixed Deposit
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user open collateral page of "<ApplicationStage>" stage
    When user fills mandatory fields of collateral details to attach collateral from the excel file "<CollateralWB>":
      | SourceSheet   | SourceSheetRow | CollSubType   |
      | fixed_deposit | 207            | Fixed Deposit |
      | fixed_deposit | 208            | Fixed Deposit |
      | fixed_deposit | 209            | Fixed Deposit |
      | fixed_deposit | 210            | Fixed Deposit |
      | fixed_deposit | 211            | Fixed Deposit |
      | fixed_deposit | 212            | Fixed Deposit |
      | fixed_deposit | 213            | Fixed Deposit |
      | fixed_deposit | 214            | Fixed Deposit |
    Then user should be able to reconcile the data for below mentioned collaterals successfully from the excel file "<CollateralWB>":
      | SourceSheet   | SourceSheetRow | CollSubType   |
      | fixed_deposit | 207            | Fixed Deposit |
      | fixed_deposit | 208            | Fixed Deposit |
      | fixed_deposit | 209            | Fixed Deposit |
      | fixed_deposit | 210            | Fixed Deposit |
      | fixed_deposit | 211            | Fixed Deposit |
      | fixed_deposit | 212            | Fixed Deposit |
      | fixed_deposit | 213            | Fixed Deposit |
      | fixed_deposit | 214            | Fixed Deposit |
    @ImplementedBy-aditya.tomar
    @Conventional
    # ${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","CC","LAP","CL"]}
    # ${ApplicationStage:["DDE","Credit Approval","Disbursal Initiation"]}
    Examples:
      | ProductType   | ApplicationStage   | Key | Category | applicantType   | CollateralWB    |
      | <ProductType> | <ApplicationStage> |     |          | <applicantType> | collateral.xlsx |

    @ImplementedBy-pallavi.singh
    @Islamic
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    Examples:
      | ProductType   | ApplicationStage   | Key | Category   | applicantType   | CollateralWB    |
      | <ProductType> | <ApplicationStage> |     | <Category> | <applicantType> | collateral.xlsx |

    @ImplementedBy-pallavi.singh
    @Islamic
    #${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Credit Approval"]}
    Examples:
      | ProductType   | ApplicationStage   | Key | Category | applicantType   | CollateralWB    |
      | <ProductType> | <ApplicationStage> |     |          | <applicantType> | collateral.xlsx |


  ###Squash:137607
  ###Story:CAS-23473
  #FeatureID-ACAUTOCAS-235,ACAUTOCAS-2
  Scenario Outline: ACAUTOCAS-16801: user views multiple collateral attached to <ProductType> application at <ApplicationStage> stage with sub type as Fixed Deposit at Enquiry
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user open collateral page of "<ApplicationStage>" stage
    And user fills mandatory fields of collateral details to attach collateral from the excel file "<CollateralWB>":
      | SourceSheet   | SourceSheetRow | CollSubType   |
      | fixed_deposit | 207            | Fixed Deposit |
      | fixed_deposit | 208            | Fixed Deposit |
      | fixed_deposit | 209            | Fixed Deposit |
      | fixed_deposit | 210            | Fixed Deposit |
      | fixed_deposit | 211            | Fixed Deposit |
      | fixed_deposit | 212            | Fixed Deposit |
      | fixed_deposit | 213            | Fixed Deposit |
      | fixed_deposit | 214            | Fixed Deposit |
    And user opens application from enquiry menu
    When user opens Collateral Page for viewing attached collaterals at "<ApplicationStage>"
    Then user should be able to reconcile the data for below mentioned collaterals successfully from the excel file "<CollateralWB>":
      | SourceSheet   | SourceSheetRow | CollSubType   |
      | fixed_deposit | 207            | Fixed Deposit |
      | fixed_deposit | 208            | Fixed Deposit |
      | fixed_deposit | 209            | Fixed Deposit |
      | fixed_deposit | 210            | Fixed Deposit |
      | fixed_deposit | 211            | Fixed Deposit |
      | fixed_deposit | 212            | Fixed Deposit |
      | fixed_deposit | 213            | Fixed Deposit |
      | fixed_deposit | 214            | Fixed Deposit |
    @ImplementedBy-aditya.tomar
    @Conventional
    # ${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","CC","LAP","CL"]}
    # ${ApplicationStage:["DDE","Credit Approval","Disbursal Initiation"]}
    Examples:
      | ProductType   | ApplicationStage   | Key | Category | applicantType   | CollateralWB    |
      | <ProductType> | <ApplicationStage> |     |          | <applicantType> | collateral.xlsx |

    @ImplementedBy-pallavi.singh
    @Islamic
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    Examples:
      | ProductType   | ApplicationStage   | Key | Category   | applicantType   | CollateralWB    |
      | <ProductType> | <ApplicationStage> |     | <Category> | <applicantType> | collateral.xlsx |

    @ImplementedBy-pallavi.singh
    @Islamic
    #${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Credit Approval"]}
    Examples:
      | ProductType   | ApplicationStage   | Key | Category | applicantType   | CollateralWB    |
      | <ProductType> | <ApplicationStage> |     |          | <applicantType> | collateral.xlsx |
