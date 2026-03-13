@Epic-E2E
@AuthoredBy-anshika.gupta
@ImplementedBy-rishabh.garg
@Conventional
@E2EOrder
@Release
@FII
@Order
  #FeatureID-ACAUTOCAS-17204
Feature: End to end work flow for All LOB Order Wise

############################################ STAGE- FII ################################################################################


  Scenario Outline: ACAUTOCAS-19819:[LogicalID-<LogicalID>] Initiate <VerificationType> at FII stage for <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>" with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user opens an application of "FII" stage present in context from application grid
    When user reads data from the excel file "<Fii_Details_WB>" under sheet "<Fii_Details_Sheet>" and row <Fii_Details_RowNum>
    And user initiate "<VerificationType>" of application at FII
#    And user initiates the application at FII
    Then verification should be initiated successfully

    Examples:
      | LogicalID | Fii_Details_WB            | Fii_Details_Sheet | Fii_Details_RowNum | ProductType             | VerificationType       |
      | EDU00001  | fii_details_end_flow.xlsx | initiation        | 1                  | Education Loan          | Residence Verification |
      | EDU00002  | fii_details_end_flow.xlsx | initiation        | 1                  | Education Loan          | Residence Verification |
      | AL00001   | fii_details_end_flow.xlsx | initiation        | 1                  | Auto Loan               | Residence Verification |
      | GL00001   | fii_details_end_flow.xlsx | initiation        | 1                  | Gold Loan               | Residence Verification |
      | AGRL00001 | fii_details_end_flow.xlsx | initiation        | 1                  | Agriculture Loan        | Residence Verification |
      | PL00001   | fii_details_end_flow.xlsx | initiation        | 1                  | Personal Loan           | Personal Verification  |
      | HL00001   | fii_details_end_flow.xlsx | initiation        | 1                  | Home Loan               | Residence Verification |
      | PL00002   | fii_details_end_flow.xlsx | initiation        | 1                  | Personal Loan           | Personal Verification  |
      | CC00002   | fii_details_end_flow.xlsx | initiation        | 2                  | Credit Card Application | Business Verification  |
      | OL00001   | fii_details_end_flow.xlsx | initiation        | 1                  | Omni Loan               | Residence Verification |
      | AL00003   | fii_details_end_flow.xlsx | initiation        | 1                  | Auto Loan               | Personal Verification  |
      | AL00002   | fii_details_end_flow.xlsx | initiation        | 1                  | Auto Loan               | Residence Verification |


  Scenario Outline: ACAUTOCAS-19820:[LogicalID-<LogicalID>] <verification_status> the <applicant_type> at FII stage for <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>" with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user opens an application of "FII" stage present in context from application grid
    When user reads data from the excel file "<Fii_Details_WB>" under sheet "<Fii_Details_Sheet>" and row <Fii_Details_RowNum>
    And user "<verification_status>" the "<applicant_type>" at FII stage
    Then "<applicant_type>" should "<verification_status>" successfully
    Examples:
      | LogicalID     | Fii_Details_WB            | Fii_Details_Sheet | Fii_Details_RowNum | ProductType                | verification_status    | applicant_type    |
      | CV00001       | fii_details_end_flow.xlsx | initiation        | 3                  | Commercial Vehicle Loan    | Initiate Verification  | Primary Applicant |
      | CV00001       | fii_details_end_flow.xlsx | initiation        | 2                  | Commercial Vehicle Loan    | Waive Off Verification | Co-Applicant      |
      | FE00001       | fii_details_end_flow.xlsx | initiation        | 2                  | Farm Equipment             | Waive Off Verification | Primary Applicant |
      | CEQ00001      | fii_details_end_flow.xlsx | initiation        | 3                  | Commercial Equipment       | Initiate Verification  | Primary Applicant |
      | CEQ00001      | fii_details_end_flow.xlsx | initiation        | 2                  | Commercial Equipment       | Waive Off Verification | Co-Applicant      |
      | CC00001       | fii_details_end_flow.xlsx | initiation        | 2                  | Credit Card Application    | Initiate Verification  | Primary Applicant |
      | KCC00001      | fii_details_end_flow.xlsx | initiation        | 4                  | Kisan Credit Card          | Initiate Verification  | Primary Applicant |
      | KCC00001      | fii_details_end_flow.xlsx | initiation        | 5                  | Kisan Credit Card          | Waive Off Verification | Co-Applicant      |
      | KCC00001      | fii_details_end_flow.xlsx | initiation        | 5                  | Kisan Credit Card          | Waive Off Verification | Guarantor         |
      | LAP00001      | fii_details_end_flow.xlsx | initiation        | 3                  | Loan Against Property      | Initiate Verification  | Primary Applicant |
      | CV00003       | fii_details_end_flow.xlsx | initiation        | 2                  | Commercial Vehicle Loan    | Initiate Verification  | Primary Applicant |
      | CV00004       | fii_details_end_flow.xlsx | initiation        | 4                  | Commercial Vehicle Loan    | Initiate Verification  | Primary Applicant |
      | CV00004       | fii_details_end_flow.xlsx | initiation        | 2                  | Commercial Vehicle Loan    | Waive Off Verification | Co-Applicant      |
      | CV00002       | fii_details_end_flow.xlsx | initiation        | 3                  | Commercial Vehicle Loan    | Initiate Verification  | Primary Applicant |
      | CV00002       | fii_details_end_flow.xlsx | initiation        | 5                  | Commercial Vehicle Loan    | Waive Off Verification | Guarantor         |
      | KCC00002      | fii_details_end_flow.xlsx | initiation        | 4                  | Kisan Credit Card          | Initiate Verification  | Primary Applicant |
      | KCC00002      | fii_details_end_flow.xlsx | initiation        | 5                  | Kisan Credit Card          | Waive Off Verification | Co-Applicant      |
      | KCC00002      | fii_details_end_flow.xlsx | initiation        | 5                  | Kisan Credit Card          | Waive Off Verification | Guarantor         |
      | PL00001       | fii_details_end_flow.xlsx | initiation        | 6                  | Personal Loan              | Waive Off Verification | Co-Applicant      |
      | PL00001       | fii_details_end_flow.xlsx | initiation        | 7                  | Personal Loan              | Waive Off Verification | Co-Applicant      |
      | PL00002       | fii_details_end_flow.xlsx | initiation        | 6                  | Personal Loan              | Waive Off Verification | Co-Applicant      |
      | PL00002       | fii_details_end_flow.xlsx | initiation        | 7                  | Personal Loan              | Waive Off Verification | Co-Applicant      |
      | AL00003       | fii_details_end_flow.xlsx | initiation        | 3                  | Auto Loan                  | Initiate Verification  | Primary Applicant |
      | AL00003       | fii_details_end_flow.xlsx | initiation        | 2                  | Auto Loan                  | Waive Off Verification | Co-Applicant      |
      | AL00002       | fii_details_end_flow.xlsx | initiation        | 5                  | Auto Loan                  | Waive Off Verification | Co-Applicant      |
      | CC00003       | fii_details_end_flow.xlsx | initiation        | 2                  | Credit Card Application    | Initiate Verification  | Primary Applicant |
      | CV00005       | fii_details_end_flow.xlsx | initiation        | 3                  | Commercial Vehicle Loan    | Initiate Verification  | Primary Applicant |
      | CV00005       | fii_details_end_flow.xlsx | initiation        | 2                  | Commercial Vehicle Loan    | Waive Off Verification | Co-Applicant      |
      | FAS00001      | fii_details_end_flow.xlsx | initiation        | 10                 | Finance Against Securities | Initiate Verification  | Primary Applicant |
      | MULF_BD_00001 | fii_details_end_flow.xlsx | initiation        | 10                 | Multi Facility             | Initiate Verification  | Primary Applicant |

    @PQMStory
    Examples:
      | LogicalID                            | Fii_Details_WB            | Fii_Details_Sheet | Fii_Details_RowNum | ProductType             | verification_status    | applicant_type    |
      | EDU_CAS_60813_ContractualIndiv01     | fii_details_end_flow.xlsx | initiation        | 5                  | Education Loan          | Waive Off Verification | Primary Applicant |
      | EDU_CAS_60813_ContractualIndiv02     | fii_details_end_flow.xlsx | initiation        | 5                  | Education Loan          | Waive Off Verification | Primary Applicant |
      | EDU_CAS_60813_ContractualIndiv03     | fii_details_end_flow.xlsx | initiation        | 5                  | Education Loan          | Waive Off Verification | Primary Applicant |
      | EDU_CAS_60813_ContractualIndiv04     | fii_details_end_flow.xlsx | initiation        | 5                  | Education Loan          | Waive Off Verification | Primary Applicant |
      | EDU_CAS_60813_ContractualIndiv05     | fii_details_end_flow.xlsx | initiation        | 5                  | Education Loan          | Waive Off Verification | Primary Applicant |
      | PL_CAS_60813_ContractualIndiv03      | fii_details_end_flow.xlsx | initiation        | 6                  | Personal Loan           | Waive Off Verification | Primary Applicant |
      | PL_CAS_60813_ContractualIndiv03      | fii_details_end_flow.xlsx | initiation        | 7                  | Personal Loan           | Waive Off Verification | Primary Applicant |
      | MAL_CAS_60813_ContractualIndiv03     | fii_details_end_flow.xlsx | initiation        | 5                  | Auto Loan               | Waive Off Verification | Primary Applicant |
      | MAL_CAS_60813_ContractualIndiv03     | fii_details_end_flow.xlsx | initiation        | 7                  | Auto Loan               | Waive Off Verification | Primary Applicant |
      | HL_CAS_60813_ContractualIndiv03      | fii_details_end_flow.xlsx | initiation        | 7                  | Home Loan               | Waive Off Verification | Primary Applicant |
      | HL_CAS_60813_ContractualIndiv03      | fii_details_end_flow.xlsx | initiation        | 5                  | Home Loan               | Waive Off Verification | Primary Applicant |
      | HL_CAS_60813_ContractualIndiv03      | fii_details_end_flow.xlsx | initiation        | 8                  | Home Loan               | Waive Off Verification | Primary Applicant |
      | HL_CAS_60813_ContractualIndiv03      | fii_details_end_flow.xlsx | initiation        | 9                  | Home Loan               | Waive Off Verification | Primary Applicant |
      | CV00CAS_88943_01                     | fii_details_end_flow.xlsx | initiation        | 3                  | Commercial Vehicle Loan | Initiate Verification  | Primary Applicant |
      | CV00CAS_88943_01                     | fii_details_end_flow.xlsx | initiation        | 5                  | Commercial Vehicle Loan | Waive Off Verification | Guarantor         |
      | CV00CAS_88943_02                     | fii_details_end_flow.xlsx | initiation        | 3                  | Commercial Vehicle Loan | Initiate Verification  | Primary Applicant |
      | CV00CAS_88943_02                     | fii_details_end_flow.xlsx | initiation        | 5                  | Commercial Vehicle Loan | Waive Off Verification | Guarantor         |
      | CV00CAS_80273_01                     | fii_details_end_flow.xlsx | initiation        | 3                  | Commercial Vehicle Loan | Initiate Verification  | Primary Applicant |
      | CV00CAS_80273_01                     | fii_details_end_flow.xlsx | initiation        | 5                  | Commercial Vehicle Loan | Waive Off Verification | Guarantor         |
      | CV00CAS_90456_01                     | fii_details_end_flow.xlsx | initiation        | 3                  | Commercial Vehicle Loan | Initiate Verification  | Primary Applicant |
      | CV00CAS_90456_01                     | fii_details_end_flow.xlsx | initiation        | 5                  | Commercial Vehicle Loan | Waive Off Verification | Guarantor         |
      | CV00CAS_90456_02                     | fii_details_end_flow.xlsx | initiation        | 3                  | Commercial Vehicle Loan | Initiate Verification  | Primary Applicant |
      | CV00CAS_90456_02                     | fii_details_end_flow.xlsx | initiation        | 5                  | Commercial Vehicle Loan | Waive Off Verification | Guarantor         |
      | CV00CAS_88946_01                     | fii_details_end_flow.xlsx | initiation        | 3                  | Commercial Vehicle Loan | Initiate Verification  | Primary Applicant |
      | CV00CAS_88946_01                     | fii_details_end_flow.xlsx | initiation        | 5                  | Commercial Vehicle Loan | Waive Off Verification | Guarantor         |
      | CV00CAS_206825_01                    | fii_details_end_flow.xlsx | initiation        | 3                  | Commercial Vehicle Loan | Initiate Verification  | Primary Applicant |
      | CV00CAS_206825_01                    | fii_details_end_flow.xlsx | initiation        | 5                  | Commercial Vehicle Loan | Waive Off Verification | Guarantor         |
      | AL_CAS_60813_ContractualIndiv01      | fii_details_end_flow.xlsx | initiation        | 5                  | Auto Loan               | Waive Off Verification | Primary Applicant |
      | AL_CAS_60813_ContractualIndiv02      | fii_details_end_flow.xlsx | initiation        | 5                  | Auto Loan               | Waive Off Verification | Primary Applicant |
      | AL_CAS_60813_ContractualIndiv03      | fii_details_end_flow.xlsx | initiation        | 5                  | Auto Loan               | Waive Off Verification | Primary Applicant |
      | AL_CAS_60813_ContractualIndiv04      | fii_details_end_flow.xlsx | initiation        | 5                  | Auto Loan               | Waive Off Verification | Primary Applicant |
      | AL_CAS_60813_ContractualIndiv05      | fii_details_end_flow.xlsx | initiation        | 5                  | Auto Loan               | Waive Off Verification | Primary Applicant |
      | AL_CAS_60813_ContractualIndiv01      | fii_details_end_flow.xlsx | initiation        | 7                  | Auto Loan               | Waive Off Verification | Primary Applicant |
      | AL_CAS_60813_ContractualIndiv02      | fii_details_end_flow.xlsx | initiation        | 7                  | Auto Loan               | Waive Off Verification | Primary Applicant |
      | AL_CAS_60813_ContractualIndiv03      | fii_details_end_flow.xlsx | initiation        | 7                  | Auto Loan               | Waive Off Verification | Primary Applicant |
      | AL_CAS_60813_ContractualIndiv04      | fii_details_end_flow.xlsx | initiation        | 7                  | Auto Loan               | Waive Off Verification | Primary Applicant |
      | AL_CAS_60813_ContractualIndiv05      | fii_details_end_flow.xlsx | initiation        | 7                  | Auto Loan               | Waive Off Verification | Primary Applicant |
      | CV_CAS_60813_ContractualIndiv01      | fii_details_end_flow.xlsx | initiation        | 3                  | Commercial Vehicle Loan | Initiate Verification  | Primary Applicant |
      | CV_CAS_60813_ContractualIndiv02      | fii_details_end_flow.xlsx | initiation        | 3                  | Commercial Vehicle Loan | Initiate Verification  | Primary Applicant |
      | CV_CAS_60813_ContractualIndiv03      | fii_details_end_flow.xlsx | initiation        | 3                  | Commercial Vehicle Loan | Initiate Verification  | Primary Applicant |
      | CV_CAS_60813_ContractualIndiv04      | fii_details_end_flow.xlsx | initiation        | 3                  | Commercial Vehicle Loan | Initiate Verification  | Primary Applicant |
      | CV_CAS_60813_ContractualIndiv05      | fii_details_end_flow.xlsx | initiation        | 3                  | Commercial Vehicle Loan | Initiate Verification  | Primary Applicant |
      | HL_CAS_71126_ChargePrioritization02  | fii_details_end_flow.xlsx | initiation        | 5                  | Home Loan               | Waive Off Verification | Primary Applicant |
      | HL_CAS_71126_ChargePrioritization02  | fii_details_end_flow.xlsx | initiation        | 7                  | Home Loan               | Waive Off Verification | Primary Applicant |
      | HL_CAS_71126_ChargePrioritization02  | fii_details_end_flow.xlsx | initiation        | 8                  | Home Loan               | Waive Off Verification | Primary Applicant |
      | HL_CAS_71126_ChargePrioritization02  | fii_details_end_flow.xlsx | initiation        | 9                  | Home Loan               | Waive Off Verification | Primary Applicant |
      | PL_CAS_71126_ChargePrioritization02  | fii_details_end_flow.xlsx | initiation        | 6                  | Personal Loan           | Waive Off Verification | Primary Applicant |
      | PL_CAS_71126_ChargePrioritization02  | fii_details_end_flow.xlsx | initiation        | 7                  | Personal Loan           | Waive Off Verification | Primary Applicant |
      | MAL_CAS_71126_ChargePrioritization02 | fii_details_end_flow.xlsx | initiation        | 5                  | Auto Loan               | Waive Off Verification | Primary Applicant |
      | MAL_CAS_71126_ChargePrioritization02 | fii_details_end_flow.xlsx | initiation        | 7                  | Auto Loan               | Waive Off Verification | Primary Applicant |


