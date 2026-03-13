@Epic-E2E
@AuthoredBy-anshika.gupta
@ImplementedBy-anshika.gupta
@Conventional
@E2EOrder
@Release
@CII
@Order
  #FeatureID-ACAUTOCAS-17388

Feature: End to end work flow for All LOB Order Wise


############################## STAGE : COLLATERAL INVESTIGATION INITIATION #################################################################################

  Scenario Outline: ACAUTOCAS-19800: Waive off verification at COLLATERAL INVESTIGATION INITIATION stage for <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>" with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user opens an application of "COLLATERAL INVESTIGATION INITIATION" stage present in context from application grid
    And user reads data from the excel file "<CII_details_WB>" under sheet "<CII_Sheet>" and row <CII_RowNum>
    When user waive off verification in CII
    Then waive off should initiate successfully for CII

    Examples:
      | LogicalID | ProductType             | CII_details_WB                           | CII_Sheet | CII_RowNum |
      | EDU00001  | Education Loan          | collateral_investigation_initiation.xlsx | home      | 0          |
      | EDU00002  | Education Loan          | collateral_investigation_initiation.xlsx | home      | 0          |
      | AL00001   | Auto Loan               | collateral_investigation_initiation.xlsx | home      | 0          |
      | MHF00001  | Micro Housing Finance   | collateral_investigation_initiation.xlsx | home      | 0          |
      | CV00002   | Commercial Vehicle Loan | collateral_investigation_initiation.xlsx | home      | 0          |

    @PQMStory
    Examples:
      | LogicalID                            | ProductType             | CII_details_WB                           | CII_Sheet | CII_RowNum |
      | EDU_CAS_60813_ContractualIndiv01     | Education Loan          | collateral_investigation_initiation.xlsx | home      | 0          |
      | EDU_CAS_60813_ContractualIndiv02     | Education Loan          | collateral_investigation_initiation.xlsx | home      | 0          |
      | EDU_CAS_60813_ContractualIndiv03     | Education Loan          | collateral_investigation_initiation.xlsx | home      | 0          |
      | EDU_CAS_60813_ContractualIndiv04     | Education Loan          | collateral_investigation_initiation.xlsx | home      | 0          |
      | EDU_CAS_60813_ContractualIndiv05     | Education Loan          | collateral_investigation_initiation.xlsx | home      | 0          |
      | PL_CAS_60813_ContractualIndiv03      | Personal Loan           | collateral_investigation_initiation.xlsx | home      | 0          |
      | MAL_CAS_60813_ContractualIndiv03     | Auto Loan               | collateral_investigation_initiation.xlsx | home      | 0          |
      | HL_CAS_60813_ContractualIndiv03      | Home Loan               | collateral_investigation_initiation.xlsx | home      | 0          |
      | CV00CAS_88943_01                     | Commercial Vehicle Loan | collateral_investigation_initiation.xlsx | home      | 0          |
      | CV00CAS_88943_02                     | Commercial Vehicle Loan | collateral_investigation_initiation.xlsx | home      | 0          |
      | CV00CAS_88946_01                     | Commercial Vehicle Loan | collateral_investigation_initiation.xlsx | home      | 0          |
      | CV00CAS_206825_01                    | Commercial Vehicle Loan | collateral_investigation_initiation.xlsx | home      | 0          |
      | CV00CAS_80273_01                     | Commercial Vehicle Loan | collateral_investigation_initiation.xlsx | home      | 0          |
      | CV00CAS_90456_01                     | Commercial Vehicle Loan | collateral_investigation_initiation.xlsx | home      | 0          |
      | CV00CAS_90456_02                     | Commercial Vehicle Loan | collateral_investigation_initiation.xlsx | home      | 0          |
      | PL_CAS_71126_ChargePrioritization02  | Personal Loan           | collateral_investigation_initiation.xlsx | home      | 0          |
      | MAL_CAS_71126_ChargePrioritization02 | Auto Loan               | collateral_investigation_initiation.xlsx | home      | 0          |
      | HL_CAS_71126_ChargePrioritization02  | Home Loan               | collateral_investigation_initiation.xlsx | home      | 0          |


  Scenario Outline: ACAUTOCAS-20894: Initiate collateral investigation at CII stage for <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>" with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    When user opens an application of "COLLATERAL INVESTIGATION INITIATION" stage present in context from application grid
    And user reads data from the excel file "<CII_details_WB>" under sheet "<CII_Sheet>" and row <CII_RowNum>
    And user initiates collateral verification
    Then collateral verification should be initiated successfully

    Examples:
      | LogicalID | ProductType           | CII_details_WB                           | CII_Sheet                | CII_RowNum |
      | CEQ00001  | Commercial Equipment  | collateral_investigation_initiation.xlsx | collateral_investigation | 0          |
      | LAP00001  | Loan Against Property | collateral_investigation_initiation.xlsx | collateral_investigation | 0          |
      | HL00001   | Home Loan             | collateral_investigation_initiation.xlsx | collateral_investigation | 0          |
      | OL00001   | Omni Loan             | collateral_investigation_initiation.xlsx | collateral_investigation | 0          |
      | OL00001   | Omni Loan             | collateral_investigation_initiation.xlsx | collateral_investigation | 0          |
      | AL00003   | Auto Loan             | collateral_investigation_initiation.xlsx | collateral_investigation | 0          |


  Scenario Outline: ACAUTOCAS-19801: Move application from CII stage to next stage for <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>" with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    When user clicks on move to next stage
    Then application should successfully move to next stage from CII stage

    Examples:
      | LogicalID | ProductType             |
      | EDU00001  | Education Loan          |
      | EDU00002  | Education Loan          |
      | AL00001   | Auto Loan               |
      | CEQ00001  | Commercial Equipment    |
      | MHF00001  | Micro Housing Finance   |
      | CV00002   | Commercial Vehicle Loan |
      | LAP00001  | Loan Against Property   |
      | HL00001   | Home Loan               |
      | OL00001   | Omni Loan               |
      | AL00003   | Auto Loan               |


    @PQMStory
    Examples:
      | LogicalID                            | ProductType             |
      | EDU_CAS_60813_ContractualIndiv01     | Education Loan          |
      | EDU_CAS_60813_ContractualIndiv02     | Education Loan          |
      | EDU_CAS_60813_ContractualIndiv03     | Education Loan          |
      | EDU_CAS_60813_ContractualIndiv04     | Education Loan          |
      | EDU_CAS_60813_ContractualIndiv05     | Education Loan          |
      | PL_CAS_60813_ContractualIndiv03      | Personal Loan           |
      | MAL_CAS_60813_ContractualIndiv03     | Auto Loan               |
      | HL_CAS_60813_ContractualIndiv03      | Home Loan               |
      | CV00CAS_88943_01                     | Commercial Vehicle Loan |
      | CV00CAS_88943_02                     | Commercial Vehicle Loan |
      | CV00CAS_88946_01                     | Commercial Vehicle Loan |
      | CV00CAS_206825_01                    | Commercial Vehicle Loan |
      | CV00CAS_80273_01                     | Commercial Vehicle Loan |
      | CV00CAS_90456_01                     | Commercial Vehicle Loan |
      | CV00CAS_90456_02                     | Commercial Vehicle Loan |
      | PL_CAS_71126_ChargePrioritization02  | Personal Loan           |
      | MAL_CAS_71126_ChargePrioritization02 | Auto Loan               |
      | HL_CAS_71126_ChargePrioritization02  | Home Loan               |