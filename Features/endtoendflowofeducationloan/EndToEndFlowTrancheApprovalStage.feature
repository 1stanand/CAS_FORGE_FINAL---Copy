@Epic-E2E
@Conventional
@TrancheApproval
@E2EOrder
@Order
@Release
  #FeatureID-ACAUTOCAS-17204
Feature: End to end work flow for All LOB Order Wise

########################################## STAGE 11: TRANCHE_APPROVAL #################################################################################

  # decision - approve
  @AuthoredBy-anshika.gupta
    @ImplementedBy-rishabh.garg
  Scenario Outline: ACAUTOCAS-19872:[LogicalID-<LogicalID>][RevisitCount-<RevisitCount>] Save tranche approval decision at Tranche Approval stage for <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>" with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user opens an application of "Tranche_Approval" stage present in context from application grid
    And user opens tranche approval underwriter decision
    And user opens tranche approval decision tab
    When user reads data from the excel file "<TrancheInitiationWB>" under sheet "<TrancheInitiation_Sheet>" and row <TrancheInitiation_RowNum>
    And user fills tranche approval decision details
    And user submits the tranche approval decision
    Then tranche approval decision should be saved successfully

    Examples:
      | LogicalID | TrancheInitiationWB  | TrancheInitiation_Sheet | TrancheInitiation_RowNum | ProductType    | RevisitCount |
      | EDU00002  | tranche_details.xlsx | tranche_approval        | 2                        | Education Loan |              |
    @PQMStory
    Examples:
      | LogicalID                        | TrancheInitiationWB  | TrancheInitiation_Sheet | TrancheInitiation_RowNum | ProductType    | RevisitCount |
      | EDU_CAS_60813_ContractualIndiv01 | tranche_details.xlsx | tranche_approval        | 2                        | Education Loan | 1            |
      | EDU_CAS_60813_ContractualIndiv02 | tranche_details.xlsx | tranche_approval        | 2                        | Education Loan | 1            |
      | EDU_CAS_60813_ContractualIndiv03 | tranche_details.xlsx | tranche_approval        | 2                        | Education Loan | 1            |
      | EDU_CAS_60813_ContractualIndiv04 | tranche_details.xlsx | tranche_approval        | 2                        | Education Loan | 1            |
      | EDU_CAS_60813_ContractualIndiv05 | tranche_details.xlsx | tranche_approval        | 2                        | Education Loan | 1            |






