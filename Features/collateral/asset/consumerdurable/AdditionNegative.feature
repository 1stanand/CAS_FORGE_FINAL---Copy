@Epic-Secondary_Collateral
@AuthoredBy-rsurya.kumar
@ReviewedBy-None
@ReviewedByDEV

@ReviewedSecCollateral
@Release
  @Part-2

Feature: Consumer Durable Addition Negative

#  Pre-Requisites---
#  In this feature we will attach an Asset Consumer Durable to the loan application.

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0


  Scenario Outline: ACAUTOCAS-1116: Capture <CollateralSubType> against an application without dedupe for <ProductType> at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user selects collateral type along with collateral sub type
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    When user saves the Collateral Details
    Then user gets a proper notification
    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal"]}
    #${CollateralSubType:["Consumer Durable"]}
        #${ApplicantType:["indiv","nonIndiv"]}

    @ImplementedBy-harshprit.kumar
    @Conventional
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | applicantType | ApplicationStage   | category | key | CollateralSubType   |
      | collateral.xlsx | default            | 1                         | <ProductType> | indiv         | <ApplicationStage> |          |     | <CollateralSubType> |

    #${ProductType:["IPF"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration"]}
    #${CollateralSubType:["Consumer Durable"]}
    # ${Category:["SHARES","BONDS","METALS"]}
        #${ApplicantType:["indiv"]}

    @ImplementedBy-ashutosh.kumar2
    @Islamic
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | applicantType | ApplicationStage   | category   | key | CollateralSubType   |
      | collateral.xlsx | default            | 1                         | <ProductType> | indiv         | <ApplicationStage> | <Category> |     | <CollateralSubType> |

        #${ProductType:["IHF,IAF"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration"]}
    #${CollateralSubType:["Consumer Durable"]}
        #${ApplicantType:["indiv"]}

    @ImplementedBy-ashutosh.kumar2
    @Islamic
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | applicantType | ApplicationStage   | category | key | CollateralSubType   |
      | collateral.xlsx | default            | 1                         | <ProductType> | indiv         | <ApplicationStage> |          |     | <CollateralSubType> |



  Scenario Outline: ACAUTOCAS-1117: Dedupe for <CollateralSubType> with already saved Collateral for <ProductType> at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user closes duplicate check result box after checking the duplicates
    And user fills Reason Section
    When user saves the Collateral Details
    And user clicks on plus icon to add new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum2>
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And checks for duplicate collateral
    Then user should receive a proper popup message

    #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal Initiation"]}
    #${CollateralSubType:["Consumer Durable"]}
    @ImplementedBy-harshprit.kumar
    @Conventional
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_default_rowNum2 | ProductType   | applicantType | ApplicationStage   | category | key | CollateralSubType   |
      | collateral.xlsx | default            | 1                         | 623                        | <ProductType> | indiv         | <ApplicationStage> |          |     | <CollateralSubType> |

        #${ProductType:["IPF"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration"]}
    #${CollateralSubType:["Consumer Durable"]}
    # ${Category:["SHARES","BONDS","METALS"]}
    @ImplementedBy-ashutosh.kumar2
    @Islamic
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_default_rowNum2 | ProductType   | applicantType | ApplicationStage   | category   | key | CollateralSubType   |
      | collateral.xlsx | default            | 1                         | 623                        | <ProductType> | indiv         | <ApplicationStage> | <Category> |     | <CollateralSubType> |

        #${ProductType:["IHF,IAF"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration"]}
    #${CollateralSubType:["Consumer Durable"]}
    @ImplementedBy-ashutosh.kumar2
    @Islamic
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_default_rowNum2 | ProductType   | applicantType | ApplicationStage   | category | key | CollateralSubType   |
      | collateral.xlsx | default            | 1                         | 623                        | <ProductType> | indiv         | <ApplicationStage> |          |     | <CollateralSubType> |

