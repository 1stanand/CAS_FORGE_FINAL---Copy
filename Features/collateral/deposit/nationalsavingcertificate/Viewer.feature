@Epic-Secondary_Collateral
#Author: rsurya.kumar
#CreateDate: 03rd Oct 2023
#ScriptedBy:
#ReviewedBy:
#Scenarios: = 2
@AuthoredBy-rsurya.kumar
@Viewer
@Reconciled
@ReviewedByDEV
@ReviewedSecCollateral
@ReleaseSecCollateralM5

#${CollateralSubType:["National Saving Certificate"]}
#${ApplicantType:["indiv","nonindiv"]}

Feature: National Saving Certificate Viewer

#  Pre-Requisites---
#  In this feature we will attach an Deposit National Saving Certificate to the loan application.


  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0

  #FeatureID-ACAUTOCAS-237
  Scenario Outline: ACAUTOCAS-3064:  "National Saving Certificate" data reconcile to validate if data was saved properly of "<ProductType>" application at "<ApplicationStage>" stage
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_national_saving_certificate>" and row <Collateral_national_saving_certificate_rowNum>
    And user selects collateral type along with collateral sub type
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    When user views the saved collateral
    Then user should be able to view the data of saved collateral as filled earlier
    @ImplementedBy-priyanshu.kashyap
    @Conventional
    #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal Initiation"]}
    Examples:
      | CollateralWB    | Collateral_national_saving_certificate | Collateral_national_saving_certificate_rowNum | ProductType   | ApplicationStage   | key | Category | ApplicantType   |
      | collateral.xlsx | national_saving_certificate            | 191                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |

    @ImplementedBy-pallavi.singh
    @Islamic
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    Examples:
      | CollateralWB    | Collateral_national_saving_certificate | Collateral_national_saving_certificate_rowNum | ProductType   | ApplicationStage   | key | Category   | ApplicantType   |
      | collateral.xlsx | national_saving_certificate            | 191                                           | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |

    @ImplementedBy-pallavi.singh
    @Islamic
    #${ProductType:["IAF","IHF"]}
    #${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    Examples:
      | CollateralWB    | Collateral_national_saving_certificate | Collateral_national_saving_certificate_rowNum | ProductType   | ApplicationStage   | key | Category | ApplicantType   |
      | collateral.xlsx | national_saving_certificate            | 191                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |

  #FeatureID-ACAUTOCAS-237
  Scenario Outline: ACAUTOCAS-3065:  CollateralPage should not allow to modify data in viewer mode of "<ProductType>" application at "<ApplicationStage>" stage
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_national_saving_certificate>" and row <Collateral_national_saving_certificate_rowNum>
    And user selects collateral type along with collateral sub type
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    When user views the saved collateral
    Then user should not be able to modify the data of saved collateral
    @ImplementedBy-priyanshu.kashyap
    @Conventional
    #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal Initiation"]}
    Examples:
      | CollateralWB    | Collateral_national_saving_certificate | Collateral_national_saving_certificate_rowNum | ProductType   | ApplicationStage   | key | Category | ApplicantType   |
      | collateral.xlsx | national_saving_certificate            | 191                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |

    @ImplementedBy-pallavi.singh
    @Islamic
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    Examples:
      | CollateralWB    | Collateral_national_saving_certificate | Collateral_national_saving_certificate_rowNum | ProductType   | ApplicationStage   | key | Category   | ApplicantType   |
      | collateral.xlsx | national_saving_certificate            | 191                                           | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |

    @ImplementedBy-pallavi.singh
    @Islamic
    #${ProductType:["IAF","IHF"]}
    #${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    Examples:
      | CollateralWB    | Collateral_national_saving_certificate | Collateral_national_saving_certificate_rowNum | ProductType   | ApplicationStage   | key | Category | ApplicantType   |
      | collateral.xlsx | national_saving_certificate            | 191                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |

    
  #FeatureID-ACAUTOCAS-237
  Scenario Outline: ACAUTOCAS-16756: "National Saving Certificate" data reconcile to validate if data was saved properly of <ProductType> application at <ApplicationStage> stage from enquiry
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_national_saving_certificate>" and row <Collateral_national_saving_certificate_rowNum>
    And user selects collateral type along with collateral sub type
    And user fills mandatory fields of national saving certificate
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    And user opens application from enquiry menu
    And user opens Collateral Page for viewing attached collaterals at "<ApplicationStage>"
    When user views the recently added collateral
    Then user should be able to reconcile the data for "<CollateralSubType>" collateral successfully
    @ImplementedBy-rishabh.sachan
    @Conventional
    #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal Initiation"]}
    Examples:
      | CollateralWB    | Collateral_national_saving_certificate | Collateral_national_saving_certificate_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | national_saving_certificate            | 191                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |

    @ImplementedBy-pallavi.singh
    @Islamic
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    Examples:
      | CollateralWB    | Collateral_national_saving_certificate | Collateral_national_saving_certificate_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | national_saving_certificate            | 191                                           | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |

    @ImplementedBy-pallavi.singh
    @Islamic
    #${ProductType:["IAF","IHF"]}
    #${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    Examples:
      | CollateralWB    | Collateral_national_saving_certificate | Collateral_national_saving_certificate_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | national_saving_certificate            | 191                                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
