@Epic-E2E
@Conventional
@E2EOrder
@Release
@DDE
@Order
  #FeatureID-ACAUTOCAS-17204
Feature: End to end work flow for All LOB Order Wise

############################################# STAGE 5: DDE ####################################################################################

############################################### DDE- SOURCING DETAILS TAB ##################################################################################


  @AuthoredBy-rishabh.sachan
    @ImplementedBy-rishabh.sachan
  Scenario Outline: ACAUTOCAS-19902: Save sourcing details in loan details for <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>" with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
#    And user opens an application of "DDE" stage present in context from application grid
    And user navigates to Loan Details Tab
    When user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_sheet>" and row <SourcingDetails_rowNum>
    And user fills "<Mandatory_All>" details on sourcing details screen
    And user saves the sourcing details
    Then sourcing details should saved successfully
    Examples:
      | LogicalID | SourcingDetailsWB              | SourcingDetails_sheet | SourcingDetails_rowNum | ProductType           | Mandatory_All |
      | FE00001   | sourcing_details_end_flow.xlsx | home                  | 17                     | Farm Equipment        | all           |
      | JLG00001  | sourcing_details_end_flow.xlsx | home                  | 26                     | Joint Liability Group | all           |
      | SHG00001  | sourcing_details_end_flow.xlsx | home                  | 18                     | Self Help Group       | all           |
      | KCC00001  | sourcing_details_end_flow.xlsx | home                  | 19                     | Kisan Credit Card     | all           |
      | CEQ00001  | sourcing_details_end_flow.xlsx | home                  | 22                     | Commercial Equipment  | mandatory     |
      | GL00001   | sourcing_details_end_flow.xlsx | home                  | 20                     | Gold Loan             | all           |
      | MHF00001  | sourcing_details_end_flow.xlsx | home                  | 23                     | Micro Housing Finance | all           |
      | AGRL00001 | sourcing_details_end_flow.xlsx | home                  | 25                     | Agriculture Loan      | all           |
      | LAP00001  | sourcing_details_end_flow.xlsx | home                  | 23                     | Loan Against Property | all           |
      | KCC00002  | sourcing_details_end_flow.xlsx | home                  | 33                     | Kisan Credit Card     | all           |
      | MHF00002  | sourcing_details_end_flow.xlsx | home                  | 43                     | Micro Housing Finance | all           |

################################################ DDE- ASSET DETAILS TAB ##################################################################################

  @AuthoredBy-harshita.nayak
    @ImplementedBy-harshita.nayak
  Scenario Outline: ACAUTOCAS-19903: Update asset cost in asset details at DDE stage for <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>" with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user opens an application at "DDE" stage from application grid
    And user navigates to Loan Details Tab
    And user opens asset details tab
    And user reads data from the excel file "<AssetDetailsWB>" under sheet "<AssetDetails_sheet>" and row <Asset_Details_multi_asset_rowNum>
    When user update the asset cost in asset details
    And user checks for the duplicates
    And user saves asset details home page
    Then asset details page should be save successfully

    Examples:
      | LogicalID | ProductType             | AssetDetailsWB     | AssetDetails_sheet | Asset_Details_multi_asset_rowNum |
      | CV00001   | Commercial Vehicle Loan | asset_details.xlsx | home               | 82                               |
      | CV00004   | Commercial Vehicle Loan | asset_details.xlsx | home               | 82                               |
      | AL00003   | Auto Loan               | asset_details.xlsx | home               | 82                               |
      | AL00002   | Auto Loan               | asset_details.xlsx | home               | 88                               |
      | CV00005   | Commercial Vehicle Loan | asset_details.xlsx | home               | 82                               |


  @ImplementedBy-rishabh.sachan
    @AuthoredBy-rishabh.sachan
  Scenario Outline: ACAUTOCAS-19904: Update Tractor details for Farm Equipment at Lead Details stage for <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>" with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
#    And user opens an application of "lead details" stage present in context from application grid
#    And user navigates to Loan Details Tab
    And user opens asset details tab
    And user reads data from the excel file "asset_details.xlsx" under sheet "tractor_details" and row 1
    When user fills tractor details
    And user checks for the duplicates
    And user saves asset details home page
    Then asset details page should be save successfully
    Examples:
      | LogicalID | ProductType    |
      | FE00001   | Farm Equipment |

    ################################################### PROPERTY DETAILS TAB ###############################################################################################################

  @ImplementedBy-kanika.mahal
    @AuthoredBy-kanika.mahal
  Scenario Outline: ACAUTOCAS-20920: Capture property cost breakup at DDE stage for <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>" with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user opens an application of "DDE" stage present in context from application grid
    And user navigates to Loan Details Tab
    And user open property details tab
    And user reads data from the excel file "<PropertyDetailsWB>" under sheet "<PropertyDetailsWB_sheet>" and row <PropertyDetailsWB_sheet_rowNum>
    When user capture property cost breakup
    And user capture source of fund
    When user saves the property details
    Then property details home page saved successfully
    Examples:
      | LogicalID | ProductType           | PropertyDetailsWB     | PropertyDetailsWB_sheet | PropertyDetailsWB_sheet_rowNum |
      | MHF00001  | Micro Housing Finance | property_details.xlsx | home                    | 141                            |
      | LAP00001  | Loan Against Property | property_details.xlsx | home                    | 141                            |


################################################### ASSET REQUESTED TAB ###############################################################################################################

  @ImplementedBy-anshika.gupta
    @AuthoredBy-anshika.gupta
  Scenario Outline: ACAUTOCAS-19905: Update Asset Requested details at DDE stage for <ProductType> multi asset LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>" with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user opens an application of "DDE" stage present in context from application grid
    And user navigates to Loan Details Tab
    And user navigates to asset requested page at "DDE" stage
    And user reads data from the excel file "<AssetDetailsWB>" under sheet "<AssetDetails_sheet>" and row <Asset_Details_multi_asset_rowNum>
    And user adds another asset with asset type as "New Asset"
    When user selects Funding For as "<FundingFor>"
    And user select Finance Mode as "<FinanceMode>"
    And user fills all asset requested details with asset type as "New Asset"
    And user save the asset requested data
    Then asset requested details should be saved successfully

    Examples:
      | LogicalID | AssetDetailsWB     | AssetDetails_sheet  | Asset_Details_multi_asset_rowNum | FundingFor | FinanceMode | ProductType          |
      | CEQ00001  | asset_details.xlsx | multi_asset_details | 57                               | FBV        | Refinance   | Commercial Equipment |


################################################ GROUP INFORMATION TAB ##################################################################################

  @AuthoredBy-akash.bansal
    @ImplementedBy-akash.bansal
  Scenario Outline: ACAUTOCAS-19882: Add group information details in application at DDE stage for <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>" with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user opens an application of "DDE" stage present in context from application grid
    And user navigates to group information tab
    And user reads data from the excel file "<GroupInfoWB>" under sheet "<GroupInfo_home>" and row <GroupInfo_home_rowNum>
    When user fills group information details of "<ProductType>"
    Then group information should be added successfully
    Examples:
      | LogicalID | ProductType           | GroupInfoWB                     | GroupInfo_home | GroupInfo_home_rowNum |
      | JLG00001  | Joint Liability Group | group_information_end_flow.xlsx | home           | 0                     |
      | SHG00001  | Self Help Group       | group_information_end_flow.xlsx | home           | 1                     |

  @AuthoredBy-akash.bansal
    @ImplementedBy-akash.bansal
  Scenario Outline: ACAUTOCAS-19882: Add member information under group information in application at DDE stage for <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>" with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
#    And user opens an application of "DDE" stage present in context from application grid
#    And user navigates to group information tab
    And user reads data from the excel file "<GroupInfoWB>" under sheet "<GroupInfo_home>" and row <GroupInfo_home_rowNum>
    When user fills member information
    Then member information should be added successfully
    Examples:
      | LogicalID | ProductType           | GroupInfoWB                     | GroupInfo_home | GroupInfo_home_rowNum |
      | JLG00001  | Joint Liability Group | group_information_end_flow.xlsx | home           | 3                     |
      | JLG00001  | Joint Liability Group | group_information_end_flow.xlsx | home           | 4                     |
      | JLG00001  | Joint Liability Group | group_information_end_flow.xlsx | home           | 5                     |
      | JLG00001  | Joint Liability Group | group_information_end_flow.xlsx | home           | 6                     |
      | SHG00001  | Self Help Group       | group_information_end_flow.xlsx | home           | 11                    |
      | SHG00001  | Self Help Group       | group_information_end_flow.xlsx | home           | 12                    |
      | SHG00001  | Self Help Group       | group_information_end_flow.xlsx | home           | 13                    |
      | SHG00001  | Self Help Group       | group_information_end_flow.xlsx | home           | 14                    |
      | SHG00001  | Self Help Group       | group_information_end_flow.xlsx | home           | 15                    |
      | SHG00001  | Self Help Group       | group_information_end_flow.xlsx | home           | 16                    |

  @AuthoredBy-akash.bansal
    @ImplementedBy-akash.bansal
  Scenario Outline: ACAUTOCAS-19882: Save group information in application at DDE stage for <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>" with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
#    And user opens an application of "DDE" stage present in context from application grid
#    And user navigates to group information tab
    And user reads data from the excel file "<GroupInfoWB>" under sheet "<GroupInfo_home>" and row <GroupInfo_home_rowNum>
    When user save the group information
    Then group information should be saved successfully
    Examples:
      | LogicalID | ProductType           | GroupInfoWB                     | GroupInfo_home | GroupInfo_home_rowNum |
      | JLG00001  | Joint Liability Group | group_information_end_flow.xlsx | home           | 3                     |
      | SHG00001  | Self Help Group       | group_information_end_flow.xlsx | home           | 1                     |



#------------------------------------------- REPAYMENT PARAMETERS---------------------------------------------------------------------------------------
  @AuthoredBy-anshika.gupta
    @ImplementedBy-rishabh.garg
  Scenario Outline: ACAUTOCAS-19906:[LogicalID-<LogicalID>][SendBack-<SendBack>] Save repayment parameters on loan details tab at DDE stage for <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>" with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user opens an application of "DDE" stage present in context from application grid
    When user navigates to Loan Details Tab
    And user opens repayment parameter screen
    And user reads data from the excel file "<RepaymentParameters_WB>" under sheet "<RepaymentParameters_Sheet>" and row <RepaymentParameters_RowNum>
    And user fills repayment parameter details
    And user save repayment parameters
    Then repayment parameters should be saved successfully

    Examples:
      | LogicalID  | RepaymentParameters_WB    | RepaymentParameters_Sheet | RepaymentParameters_RowNum | ProductType             | SendBack |
      | EDU00001   | repayment_parameters.xlsx | repayment_parameters      | 2976                       | Education Loan          |          |
      | EDU00002   | repayment_parameters.xlsx | repayment_parameters      | 2978                       | Education Loan          |          |
      | AL00001    | repayment_parameters.xlsx | repayment_parameters      | 2977                       | Auto Loan               |          |
      | CV00001    | repayment_parameters.xlsx | repayment_parameters      | 2977                       | Commercial Vehicle Loan |          |
      | SB_AL00003 | repayment_parameters.xlsx | repayment_parameters      | 2984                       | Auto Loan               |          |
      | SB_AL00003 | repayment_parameters.xlsx | repayment_parameters      | 2983                       | Auto Loan               | yes      |
      | SB_AL00004 | repayment_parameters.xlsx | repayment_parameters      | 2969                       | Auto Loan               |          |
      | EDU00004   | repayment_parameters.xlsx | repayment_parameters      | 2976                       | Education Loan          |          |

    @PQMStory
    Examples:
      | LogicalID                        | RepaymentParameters_WB    | RepaymentParameters_Sheet | RepaymentParameters_RowNum | ProductType    |
      | EDU_CAS_60813_ContractualIndiv01 | repayment_parameters.xlsx | repayment_parameters      | 2978                       | Education Loan |
      | EDU_CAS_60813_ContractualIndiv02 | repayment_parameters.xlsx | repayment_parameters      | 2978                       | Education Loan |
      | EDU_CAS_60813_ContractualIndiv03 | repayment_parameters.xlsx | repayment_parameters      | 2978                       | Education Loan |
      | EDU_CAS_60813_ContractualIndiv04 | repayment_parameters.xlsx | repayment_parameters      | 2978                       | Education Loan |
      | EDU_CAS_60813_ContractualIndiv05 | repayment_parameters.xlsx | repayment_parameters      | 2978                       | Education Loan |
      | AL_CAS_60813_ContractualIndiv01  | repayment_parameters.xlsx | repayment_parameters      | 2977                       | Auto Loan      |
      | AL_CAS_60813_ContractualIndiv02  | repayment_parameters.xlsx | repayment_parameters      | 2977                       | Auto Loan      |
      | AL_CAS_60813_ContractualIndiv03  | repayment_parameters.xlsx | repayment_parameters      | 2977                       | Auto Loan      |
      | AL_CAS_60813_ContractualIndiv04  | repayment_parameters.xlsx | repayment_parameters      | 2977                       | Auto Loan      |
      | AL_CAS_60813_ContractualIndiv05  | repayment_parameters.xlsx | repayment_parameters      | 2977                       | Auto Loan      |


  @AuthoredBy-richa.singh
    @ImplementedBy-richa.singh
  Scenario Outline: ACAUTOCAS-19907: Capture repayment parameters on loan details tab at DDE stage for <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>" with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user opens an application of "DDE" stage present in context from application grid
    When user navigates to Loan Details Tab
    And user opens repayment parameter screen
    And user reads data from the excel file "<RepaymentParameters_WB>" under sheet "<RepaymentParameters_Sheet>" and row <RepaymentParameters_RowNum>
    And user enters fields of repayment parameters
    And user save repayment parameters
    Then repayment parameters should be saved successfully
    Examples:
      | LogicalID | RepaymentParameters_WB             | RepaymentParameters_Sheet | RepaymentParameters_RowNum | ProductType             |
      | KCC00001  | repayment_parameters_end_flow.xlsx | repayment_parameters      | 0                          | Kisan Credit Card       |
      | FE00001   | repayment_parameters_end_flow.xlsx | repayment_parameters      | 1                          | Farm Equipment          |
      | SHG00001  | repayment_parameters_end_flow.xlsx | repayment_parameters      | 7                          | Self Help Group         |
      | GL00001   | repayment_parameters_end_flow.xlsx | repayment_parameters      | 4                          | Gold Loan               |
      | JLG00001  | repayment_parameters_end_flow.xlsx | repayment_parameters      | 2                          | Joint Liability Group   |
      | MHF00001  | repayment_parameters_end_flow.xlsx | repayment_parameters      | 5                          | Micro Housing Finance   |
      | CEQ00001  | repayment_parameters_end_flow.xlsx | repayment_parameters      | 3                          | Commercial Equipment    |
      | AGRL00001 | repayment_parameters_end_flow.xlsx | repayment_parameters      | 6                          | Agriculture Loan        |
      | PL00001   | repayment_parameters_end_flow.xlsx | repayment_parameters      | 8                          | Personal Loan           |
      | HL00001   | repayment_parameters_end_flow.xlsx | repayment_parameters      | 9                          | Home Loan               |
      | CV00003   | repayment_parameters_end_flow.xlsx | repayment_parameters      | 24                         | Commercial Vehicle Loan |
      | LAP00001  | repayment_parameters_end_flow.xlsx | repayment_parameters      | 15                         | Loan Against Property   |
      | CV00002   | repayment_parameters_end_flow.xlsx | repayment_parameters      | 11                         | Commercial Vehicle Loan |
      | KCC00002  | repayment_parameters_end_flow.xlsx | repayment_parameters      | 12                         | Kisan Credit Card       |
      | CV00004   | repayment_parameters_end_flow.xlsx | repayment_parameters      | 14                         | Commercial Vehicle Loan |
      | PL00002   | repayment_parameters_end_flow.xlsx | repayment_parameters      | 17                         | Personal Loan           |
      | AL00003   | repayment_parameters_end_flow.xlsx | repayment_parameters      | 21                         | Auto Loan               |
      | AL00002   | repayment_parameters_end_flow.xlsx | repayment_parameters      | 16                         | Auto Loan               |
      | MHF00002  | repayment_parameters_end_flow.xlsx | repayment_parameters      | 22                         | Micro Housing Finance   |
      | CV00005   | repayment_parameters_end_flow.xlsx | repayment_parameters      | 23                         | Commercial Vehicle Loan |

    @PQMStory
    Examples:
      | LogicalID                       | RepaymentParameters_WB             | RepaymentParameters_Sheet | RepaymentParameters_RowNum | ProductType             |
      | CV00CAS_88943_01                | repayment_parameters_end_flow.xlsx | repayment_parameters      | 11                         | Commercial Vehicle Loan |
      | CV00CAS_88943_02                | repayment_parameters_end_flow.xlsx | repayment_parameters      | 11                         | Commercial Vehicle Loan |
      | CV00CAS_88946_01                | repayment_parameters_end_flow.xlsx | repayment_parameters      | 11                         | Commercial Vehicle Loan |
      | CV00CAS_206825_01               | repayment_parameters_end_flow.xlsx | repayment_parameters      | 11                         | Commercial Vehicle Loan |
      | CV00CAS_80273_01                | repayment_parameters_end_flow.xlsx | repayment_parameters      | 11                         | Commercial Vehicle Loan |
      | CV00CAS_90456_01                | repayment_parameters_end_flow.xlsx | repayment_parameters      | 11                         | Commercial Vehicle Loan |
      | CV00CAS_90456_02                | repayment_parameters_end_flow.xlsx | repayment_parameters      | 11                         | Commercial Vehicle Loan |
      | CV_CAS_60813_ContractualIndiv01 | repayment_parameters_end_flow.xlsx | repayment_parameters      | 14                         | Commercial Vehicle Loan |
      | CV_CAS_60813_ContractualIndiv02 | repayment_parameters_end_flow.xlsx | repayment_parameters      | 14                         | Commercial Vehicle Loan |
      | CV_CAS_60813_ContractualIndiv03 | repayment_parameters_end_flow.xlsx | repayment_parameters      | 14                         | Commercial Vehicle Loan |
      | CV_CAS_60813_ContractualIndiv04 | repayment_parameters_end_flow.xlsx | repayment_parameters      | 14                         | Commercial Vehicle Loan |
      | CV_CAS_60813_ContractualIndiv05 | repayment_parameters_end_flow.xlsx | repayment_parameters      | 14                         | Commercial Vehicle Loan |

#---------------------------------------------------------Omni Loan---------------------------------------------------------------------------------------------------------------------------------------
  @AuthoredBy-vipin.kishor
    @ImplementedBy-vipin.kishor
  Scenario Outline: Capture repayment parameters on loan details tab at DDE stage for <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>" with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user opens an application of "DDE" stage present in context from application grid
    When user navigates to Loan Details Tab
    And user opens repayment parameter screen
    Then repayment parameters screen should be opened successfully
    Examples:
      | LogicalID |  | ProductType |
      | OL00001   |  | Omni Loan   |


  @AuthoredBy-vipin.kishor
    @ImplementedBy-vipin.kishor
  Scenario Outline: Capture repayments parameters on loan details tab at DDE stage for <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>"
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user opens an application of "DDE" stage present in context from application grid
    And user navigates to Loan Details Tab
    When user opens repayment parameter screen
    And user reads data from the excel file "<RepaymentParameters_WB>" under sheet "<RepaymentParameters_Sheet>" and row <RepaymentParameters_RowNum>
    And user enters fields of repayment parameters of omni loan
    And user save repayment parameters of omni loan
    Then repayment parameters details should be saved successfully
    Examples:
      | LogicalID | RepaymentParameters_WB             | RepaymentParameters_Sheet | RepaymentParameters_RowNum | ProductType |
      | OL00001   | repayment_parameters_end_flow.xlsx | repayment_parameters      | 18                         | Omni Loan   |
      | OL00001   | repayment_parameters_end_flow.xlsx | repayment_parameters      | 19                         | Omni Loan   |
      | OL00001   | repayment_parameters_end_flow.xlsx | repayment_parameters      | 20                         | Omni Loan   |


  @AuthoredBy-vipin.kishor
    @ImplementedBy-vipin.kishor
  Scenario Outline:Save repayments parameters on loan details tab at DDE stage for <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>" with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
#    And user opens an application of "DDE" stage present in context from application grid
    When user navigates to Loan Details Tab
    And user opens repayment parameter screen
    And user fills repayment parameters of omni loan
    And user save repayment parameters of omni loan
    Then repayment parameters details should be saved successfully
    Examples:
      | LogicalID | ProductType |
      | OL00001   | Omni Loan   |




#------------------------------------------- Gold Valuation---------------------------------------------------------------------------------------
  @AuthoredBy-vipin.kishor
    @ImplementedBy-vipin.kishor
  Scenario Outline: ACAUTOCAS-19908: Save gold valuation in gold valuation for <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>" with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
#    And user opens an application of "dde" stage present in context from application grid
    When user reads data from the excel file "<GoldValuationWB>" under sheet "<GoldValuation_sheet>" and row <GoldValuation_rowNum>
    And user open gold valuation tab
    And user fills all Gold valuation details
    And user fills packet weight in packet details
    And user save gold valuation details
    Then gold valuation details should be saved successfully
    Examples:
      | LogicalID | ProductType | GoldValuationWB                      | GoldValuation_sheet | GoldValuation_rowNum |
      | GL00001   | Gold Loan   | gold_valuation_details_end_flow.xlsx | gold_valuation      | 1                    |

    #------------------------------------------- Insurance Funded --------------------------------------------#

  @AuthoredBy-vaishnavi.agrawal
    @ImplementedBy-vaishnavi.agrawal
  Scenario Outline: Save insurance funded details at DDE stage for <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>" with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
#       And user opens an application of "DDE" stage present in context from application grid
#       When user navigates to Loan Details Tab
#       And user opens repayment parameter screen
    When user reads data from the excel file "<RepaymentParameters_WB>" under sheet "<RepaymentParameters_Sheet>" and row <RepaymentParameters_RowNum>
    And user fills insurance funded details
    And user saves repayment parameters
    Then repayment parameters should save successfully
    Examples:
      | LogicalID | RepaymentParameters_WB    | RepaymentParameters_Sheet | RepaymentParameters_RowNum | ProductType |
      | AL00002   | repayment_parameters.xlsx | insurance_details         | 120                        | Auto Loan   |


################################################## MULTI ASSET DETAILS ####################################################################################################

#  @AuthoredBy-anshika.gupta
#    @ImplementedBy-anshika.gupta
#  Scenario Outline: Validate data in multiple asset details accordion on repayment parameters page at DDE stage for <ProductType> LogicalID <LogicalID>
#    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>"
#    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
##    And user opens an application of "DDE" stage present in context from application grid
##    And user navigates to Loan Details Tab
##    And user opens repayment parameter screen
#    And user saves repayment parameter details in context
#    When user opens multiple asset details accordion on repayment parameters page
#    And user opens multi asset repayment parameters details
#    Then user should be able to validate repayment parameter details in multiple asset details successfully
#
#    Examples:
#      | LogicalID | ProductType |
#      | AL00001   | Auto Loan   |



#------------------------------------------------ PERSONAL DISCUSSION ----------------------------------------------------------------------------------------------------------------------
#----------------------------------------------------------------------------------------------------------------------------------------------------------

############################################### PERSONAL DISCUSSION SALES #########################################################################################################

  @AuthoredBy-anshika.gupta
    @ImplementedBy-anshika.gupta
  Scenario Outline: ACAUTOCAS-19909: Save customer details on personal discussion sales page at DDE stage for <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>" with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user opens an application of "DDE" stage present in context from application grid
    And user opens personal discussion tab
    And user reads data from the excel file "<PersonalDiscussionWB>" under sheet "<PersonalDiscussion_home>" and row <PersonalDiscussion_rowNum>
    When user fills the customer details in personal discussion sales page
#    And user saves the customer details
    Then customer details should be saved successfully

    Examples:
      | LogicalID | PersonalDiscussionWB     | PersonalDiscussion_home | PersonalDiscussion_rowNum | ProductType             |
      | AL00001   | personal_discussion.xlsx | customers_detail        | 0                         | Auto Loan               |
      | CV00001   | personal_discussion.xlsx | customers_detail        | 0                         | Commercial Vehicle Loan |
      | FE00001   | personal_discussion.xlsx | customers_detail        | 0                         | Farm Equipment          |
      | CEQ00001  | personal_discussion.xlsx | customers_detail        | 8                         | Commercial Equipment    |
      | CV00003   | personal_discussion.xlsx | customers_detail        | 0                         | Commercial Vehicle Loan |
      | CV00004   | personal_discussion.xlsx | customers_detail        | 0                         | Commercial Vehicle Loan |
      | CV00002   | personal_discussion.xlsx | customers_detail        | 8                         | Commercial Vehicle Loan |
      | AL00003   | personal_discussion.xlsx | customers_detail        | 0                         | Auto Loan               |
      | AL00002   | personal_discussion.xlsx | customers_detail        | 0                         | Auto Loan               |

    @PQMStory
    Examples:
      | LogicalID         | PersonalDiscussionWB     | PersonalDiscussion_home | PersonalDiscussion_rowNum | ProductType             |
      | CV00CAS_88943_01  | personal_discussion.xlsx | customers_detail        | 8                         | Commercial Vehicle Loan |
      | CV00CAS_88943_02  | personal_discussion.xlsx | customers_detail        | 8                         | Commercial Vehicle Loan |
      | CV00CAS_88946_01  | personal_discussion.xlsx | customers_detail        | 8                         | Commercial Vehicle Loan |
      | CV00CAS_206825_01 | personal_discussion.xlsx | customers_detail        | 8                         | Commercial Vehicle Loan |
      | CV00CAS_80273_01  | personal_discussion.xlsx | customers_detail        | 8                         | Commercial Vehicle Loan |
      | CV00CAS_90456_01  | personal_discussion.xlsx | customers_detail        | 8                         | Commercial Vehicle Loan |
      | CV00CAS_90456_02  | personal_discussion.xlsx | customers_detail        | 8                         | Commercial Vehicle Loan |

  @AuthoredBy-anshika.gupta
    @ImplementedBy-anshika.gupta
  Scenario Outline: ACAUTOCAS-19910: Save office address details on personal discussion sales page at DDE stage for <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>" with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
#    And user opens an application of "DDE" stage present in context from application grid
#    And user opens personal discussion tab
    And user reads data from the excel file "<PersonalDiscussionWB>" under sheet "<PersonalDiscussion_home>" and row <PersonalDiscussion_rowNum>
    When user fills the office address details in personal discussion sales page
    Then office address details should be saved successfully

    Examples:
      | LogicalID | ProductType             | PersonalDiscussionWB     | PersonalDiscussion_home | PersonalDiscussion_rowNum |
      | AL00001   | Auto Loan               | personal_discussion.xlsx | office_address_details  | 0                         |
      | CV00001   | Commercial Vehicle Loan | personal_discussion.xlsx | office_address_details  | 0                         |
      | FE00001   | Farm Equipment          | personal_discussion.xlsx | office_address_details  | 0                         |
      | CEQ00001  | Commercial Equipment    | personal_discussion.xlsx | office_address_details  | 0                         |
      | CV00003   | Commercial Vehicle Loan | personal_discussion.xlsx | office_address_details  | 0                         |
      | CV00004   | Commercial Vehicle Loan | personal_discussion.xlsx | office_address_details  | 0                         |
      | CV00002   | Commercial Vehicle Loan | personal_discussion.xlsx | office_address_details  | 0                         |
      | AL00002   | Auto Loan               | personal_discussion.xlsx | office_address_details  | 0                         |

    @PQMStory
    Examples:
      | LogicalID         | ProductType             | PersonalDiscussionWB     | PersonalDiscussion_home | PersonalDiscussion_rowNum |
      | CV00CAS_88943_01  | Commercial Vehicle Loan | personal_discussion.xlsx | office_address_details  | 0                         |
      | CV00CAS_88943_02  | Commercial Vehicle Loan | personal_discussion.xlsx | office_address_details  | 0                         |
      | CV00CAS_88946_01  | Commercial Vehicle Loan | personal_discussion.xlsx | office_address_details  | 0                         |
      | CV00CAS_206825_01 | Commercial Vehicle Loan | personal_discussion.xlsx | office_address_details  | 0                         |
      | CV00CAS_80273_01  | Commercial Vehicle Loan | personal_discussion.xlsx | office_address_details  | 0                         |
      | CV00CAS_90456_01  | Commercial Vehicle Loan | personal_discussion.xlsx | office_address_details  | 0                         |
      | CV00CAS_90456_02  | Commercial Vehicle Loan | personal_discussion.xlsx | office_address_details  | 0                         |

  @AuthoredBy-anshika.gupta
    @ImplementedBy-anshika.gupta
  Scenario Outline: ACAUTOCAS-19911: Save customer office business details on personal discussion sales page at DDE stage for <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>" with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
#    And user opens an application of "DDE" stage present in context from application grid
#    And user opens personal discussion tab
    And user reads data from the excel file "<PersonalDiscussionWB>" under sheet "<PersonalDiscussion_customersofficebusiness>" and row <PersonalDiscussion_rowNum>
    When user fills the customers office business details in personal discussion sales page
    Then customers office business details should be saved successfully
    Examples:
      | LogicalID | ProductType             | PersonalDiscussionWB     | PersonalDiscussion_customersofficebusiness | PersonalDiscussion_rowNum |
      | AL00001   | Auto Loan               | personal_discussion.xlsx | customers_officebusinessdetails            | 82                        |
      | CV00001   | Commercial Vehicle Loan | personal_discussion.xlsx | customers_officebusinessdetails            | 82                        |
      | FE00001   | Farm Equipment          | personal_discussion.xlsx | customers_officebusinessdetails            | 82                        |
      | CEQ00001  | Commercial Equipment    | personal_discussion.xlsx | customers_officebusinessdetails            | 82                        |
      | CV00003   | Commercial Vehicle Loan | personal_discussion.xlsx | customers_officebusinessdetails            | 82                        |
      | CV00004   | Commercial Vehicle Loan | personal_discussion.xlsx | customers_officebusinessdetails            | 82                        |
      | CV00002   | Commercial Vehicle Loan | personal_discussion.xlsx | customers_officebusinessdetails            | 82                        |
      | AL00002   | Auto Loan               | personal_discussion.xlsx | customers_officebusinessdetails            | 82                        |

    @PQMStory
    Examples:
      | LogicalID         | ProductType             | PersonalDiscussionWB     | PersonalDiscussion_customersofficebusiness | PersonalDiscussion_rowNum |
      | CV00CAS_88943_01  | Commercial Vehicle Loan | personal_discussion.xlsx | customers_officebusinessdetails            | 82                        |
      | CV00CAS_88943_02  | Commercial Vehicle Loan | personal_discussion.xlsx | customers_officebusinessdetails            | 82                        |
      | CV00CAS_88946_01  | Commercial Vehicle Loan | personal_discussion.xlsx | customers_officebusinessdetails            | 82                        |
      | CV00CAS_206825_01 | Commercial Vehicle Loan | personal_discussion.xlsx | customers_officebusinessdetails            | 82                        |
      | CV00CAS_80273_01  | Commercial Vehicle Loan | personal_discussion.xlsx | customers_officebusinessdetails            | 82                        |
      | CV00CAS_90456_01  | Commercial Vehicle Loan | personal_discussion.xlsx | customers_officebusinessdetails            | 82                        |
      | CV00CAS_90456_02  | Commercial Vehicle Loan | personal_discussion.xlsx | customers_officebusinessdetails            | 82                        |

  @AuthoredBy-anshika.gupta
    @ImplementedBy-anshika.gupta
  Scenario Outline: ACAUTOCAS-19912: Save residential address details on personal discussion sales page at DDE stage for <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>" with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
#    And user opens an application of "DDE" stage present in context from application grid
#    And user opens personal discussion tab
    And user reads data from the excel file "<PersonalDiscussionWB>" under sheet "<PersonalDiscussion_residentaddress>" and row <PersonalDiscussion_rowNum>
    When user fills the residential address details in personal discussion sales page
    Then residential address details should be saved successfully
    Examples:
      | LogicalID | ProductType             | PersonalDiscussionWB     | PersonalDiscussion_residentaddress | PersonalDiscussion_rowNum |
      | AL00001   | Auto Loan               | personal_discussion.xlsx | residential_address                | 0                         |
      | CV00001   | Commercial Vehicle Loan | personal_discussion.xlsx | residential_address                | 0                         |
      | FE00001   | Farm Equipment          | personal_discussion.xlsx | residential_address                | 0                         |
      | CEQ00001  | Commercial Equipment    | personal_discussion.xlsx | residential_address                | 2                         |
      | CV00003   | Commercial Vehicle Loan | personal_discussion.xlsx | residential_address                | 0                         |
      | CV00004   | Commercial Vehicle Loan | personal_discussion.xlsx | residential_address                | 0                         |
      | CV00002   | Commercial Vehicle Loan | personal_discussion.xlsx | residential_address                | 0                         |
      | AL00002   | Auto Loan               | personal_discussion.xlsx | residential_address                | 0                         |

    @PQMStory
    Examples:
      | LogicalID         | ProductType             | PersonalDiscussionWB     | PersonalDiscussion_residentaddress | PersonalDiscussion_rowNum |
      | CV00CAS_88943_01  | Commercial Vehicle Loan | personal_discussion.xlsx | residential_address                | 0                         |
      | CV00CAS_88943_02  | Commercial Vehicle Loan | personal_discussion.xlsx | residential_address                | 0                         |
      | CV00CAS_88946_01  | Commercial Vehicle Loan | personal_discussion.xlsx | residential_address                | 0                         |
      | CV00CAS_206825_01 | Commercial Vehicle Loan | personal_discussion.xlsx | residential_address                | 0                         |
      | CV00CAS_80273_01  | Commercial Vehicle Loan | personal_discussion.xlsx | residential_address                | 0                         |
      | CV00CAS_90456_01  | Commercial Vehicle Loan | personal_discussion.xlsx | residential_address                | 0                         |
      | CV00CAS_90456_02  | Commercial Vehicle Loan | personal_discussion.xlsx | residential_address                | 0                         |

  @AuthoredBy-anshika.gupta
    @ImplementedBy-anshika.gupta
  Scenario Outline: ACAUTOCAS-19913: Save current loan requirement details on personal discussion sales page at DDE stage for <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>" with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
#    And user opens an application of "DDE" stage present in context from application grid
#    And user opens personal discussion tab
    And user reads data from the excel file "<PersonalDiscussionWB>" under sheet "<PersonalDiscussion_current_loan_requirement>" and row <PersonalDiscussion_rowNum>
    When user fills the current loan requirement details in personal discussion sales page
    Then current loan requirement details should be saved successfully
    Examples:
      | LogicalID | ProductType             | PersonalDiscussionWB     | PersonalDiscussion_current_loan_requirement | PersonalDiscussion_rowNum |
      | AL00001   | Auto Loan               | personal_discussion.xlsx | current_loan_requirement                    | 0                         |
      | CV00001   | Commercial Vehicle Loan | personal_discussion.xlsx | current_loan_requirement                    | 0                         |
      | FE00001   | Farm Equipment          | personal_discussion.xlsx | current_loan_requirement                    | 0                         |
      | CEQ00001  | Commercial Equipment    | personal_discussion.xlsx | current_loan_requirement                    | 2                         |
      | CV00003   | Commercial Vehicle Loan | personal_discussion.xlsx | current_loan_requirement                    | 0                         |
      | CV00004   | Commercial Vehicle Loan | personal_discussion.xlsx | current_loan_requirement                    | 0                         |
      | CV00002   | Commercial Vehicle Loan | personal_discussion.xlsx | current_loan_requirement                    | 0                         |
      | AL00002   | Auto Loan               | personal_discussion.xlsx | current_loan_requirement                    | 0                         |

    @PQMStory
    Examples:
      | LogicalID         | ProductType             | PersonalDiscussionWB     | PersonalDiscussion_current_loan_requirement | PersonalDiscussion_rowNum |
      | CV00CAS_88943_01  | Commercial Vehicle Loan | personal_discussion.xlsx | current_loan_requirement                    | 0                         |
      | CV00CAS_88943_02  | Commercial Vehicle Loan | personal_discussion.xlsx | current_loan_requirement                    | 0                         |
      | CV00CAS_88946_01  | Commercial Vehicle Loan | personal_discussion.xlsx | current_loan_requirement                    | 0                         |
      | CV00CAS_206825_01 | Commercial Vehicle Loan | personal_discussion.xlsx | current_loan_requirement                    | 0                         |
      | CV00CAS_80273_01  | Commercial Vehicle Loan | personal_discussion.xlsx | current_loan_requirement                    | 0                         |
      | CV00CAS_90456_01  | Commercial Vehicle Loan | personal_discussion.xlsx | current_loan_requirement                    | 0                         |
      | CV00CAS_90456_02  | Commercial Vehicle Loan | personal_discussion.xlsx | current_loan_requirement                    | 0                         |


  @AuthoredBy-anshika.gupta
    @ImplementedBy-anshika.gupta
  Scenario Outline: ACAUTOCAS-19914: Save parent contractor details on personal discussion sales page at DDE stage for <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>" with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
#    And user opens an application of "DDE" stage present in context from application grid
#    And user opens personal discussion tab
    And user reads data from the excel file "<PersonalDiscussionWB>" under sheet "<PersonalDiscussion_parent_contractor_details>" and row <PersonalDiscussion_rowNum>
    When user fills the parent contractor details in personal discussion sales page
    Then parent contractor details should save successfully
    Examples:
      | LogicalID | ProductType             | PersonalDiscussionWB     | PersonalDiscussion_parent_contractor_details | PersonalDiscussion_rowNum |
      | AL00001   | Auto Loan               | personal_discussion.xlsx | parent_contractor_details                    | 0                         |
      | CV00001   | Commercial Vehicle Loan | personal_discussion.xlsx | parent_contractor_details                    | 0                         |
      | FE00001   | Farm Equipment          | personal_discussion.xlsx | parent_contractor_details                    | 0                         |
      | CEQ00001  | Commercial Equipment    | personal_discussion.xlsx | parent_contractor_details                    | 1                         |
      | CV00003   | Commercial Vehicle Loan | personal_discussion.xlsx | parent_contractor_details                    | 0                         |
      | CV00004   | Commercial Vehicle Loan | personal_discussion.xlsx | parent_contractor_details                    | 0                         |
      | CV00002   | Commercial Vehicle Loan | personal_discussion.xlsx | parent_contractor_details                    | 0                         |
      | AL00002   | Auto Loan               | personal_discussion.xlsx | parent_contractor_details                    | 0                         |

    @PQMStory
    Examples:
      | LogicalID         | ProductType             | PersonalDiscussionWB     | PersonalDiscussion_parent_contractor_details | PersonalDiscussion_rowNum |
      | CV00CAS_88943_01  | Commercial Vehicle Loan | personal_discussion.xlsx | parent_contractor_details                    | 0                         |
      | CV00CAS_88943_02  | Commercial Vehicle Loan | personal_discussion.xlsx | parent_contractor_details                    | 0                         |
      | CV00CAS_88946_01  | Commercial Vehicle Loan | personal_discussion.xlsx | parent_contractor_details                    | 0                         |
      | CV00CAS_206825_01 | Commercial Vehicle Loan | personal_discussion.xlsx | parent_contractor_details                    | 0                         |
      | CV00CAS_80273_01  | Commercial Vehicle Loan | personal_discussion.xlsx | parent_contractor_details                    | 0                         |
      | CV00CAS_90456_01  | Commercial Vehicle Loan | personal_discussion.xlsx | parent_contractor_details                    | 0                         |
      | CV00CAS_90456_02  | Commercial Vehicle Loan | personal_discussion.xlsx | parent_contractor_details                    | 0                         |

  @AuthoredBy-anshika.gupta
    @ImplementedBy-anshika.gupta
  Scenario Outline: ACAUTOCAS-19915: Save Other Business details on personal discussion sales page at DDE stage for <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>" with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
#    And user opens an application of "DDE" stage present in context from application grid
#    And user opens personal discussion tab
    And user reads data from the excel file "<PersonalDiscussionWB>" under sheet "<PersonalDiscussion_otherbusiness>" and row <PersonalDiscussion_rowNum>
    When user fills the other business details in personal discussion sales page
    Then Other business details should be saved successfully

    Examples:
      | LogicalID | ProductType             | PersonalDiscussionWB     | PersonalDiscussion_otherbusiness | PersonalDiscussion_rowNum |
      | AL00001   | Auto Loan               | personal_discussion.xlsx | other_business_details           | 0                         |
      | CV00001   | Commercial Vehicle Loan | personal_discussion.xlsx | other_business_details           | 0                         |
      | FE00001   | Farm Equipment          | personal_discussion.xlsx | other_business_details           | 0                         |
      | CEQ00001  | Commercial Equipment    | personal_discussion.xlsx | other_business_details           | 5                         |
      | CV00003   | Commercial Vehicle Loan | personal_discussion.xlsx | other_business_details           | 0                         |
      | CV00004   | Commercial Vehicle Loan | personal_discussion.xlsx | other_business_details           | 0                         |
      | CV00002   | Commercial Vehicle Loan | personal_discussion.xlsx | other_business_details           | 0                         |
      | AL00002   | Auto Loan               | personal_discussion.xlsx | other_business_details           | 0                         |

    @PQMStory
    Examples:
      | LogicalID         | ProductType             | PersonalDiscussionWB     | PersonalDiscussion_otherbusiness | PersonalDiscussion_rowNum |
      | CV00CAS_88943_01  | Commercial Vehicle Loan | personal_discussion.xlsx | other_business_details           | 0                         |
      | CV00CAS_88943_02  | Commercial Vehicle Loan | personal_discussion.xlsx | other_business_details           | 0                         |
      | CV00CAS_88946_01  | Commercial Vehicle Loan | personal_discussion.xlsx | other_business_details           | 0                         |
      | CV00CAS_206825_01 | Commercial Vehicle Loan | personal_discussion.xlsx | other_business_details           | 0                         |
      | CV00CAS_80273_01  | Commercial Vehicle Loan | personal_discussion.xlsx | other_business_details           | 0                         |
      | CV00CAS_90456_01  | Commercial Vehicle Loan | personal_discussion.xlsx | other_business_details           | 0                         |
      | CV00CAS_90456_02  | Commercial Vehicle Loan | personal_discussion.xlsx | other_business_details           | 0                         |

  @AuthoredBy-anshika.gupta
    @ImplementedBy-anshika.gupta
  Scenario Outline: ACAUTOCAS-19916: Save interviewer comments on personal discussion sales page at DDE stage for <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>" with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
#    And user opens an application of "DDE" stage present in context from application grid
#    And user opens personal discussion tab
    And user reads data from the excel file "<PersonalDiscussionWB>" under sheet "<PersonalDiscussion_interviewercomments>" and row <PersonalDiscussion_rowNum>
    When user fills the interviewers comments in personal discussion sales page
    Then interviewer comments should be saved successfully
    Examples:
      | LogicalID | ProductType             | PersonalDiscussionWB     | PersonalDiscussion_interviewercomments | PersonalDiscussion_rowNum |
      | AL00001   | Auto Loan               | personal_discussion.xlsx | interviewer_comments                   | 0                         |
      | CV00001   | Commercial Vehicle Loan | personal_discussion.xlsx | interviewer_comments                   | 0                         |
      | FE00001   | Farm Equipment          | personal_discussion.xlsx | interviewer_comments                   | 0                         |
      | CEQ00001  | Commercial Equipment    | personal_discussion.xlsx | interviewer_comments                   | 6                         |
      | CV00003   | Commercial Vehicle Loan | personal_discussion.xlsx | interviewer_comments                   | 0                         |
      | CV00004   | Commercial Vehicle Loan | personal_discussion.xlsx | interviewer_comments                   | 0                         |
      | CV00002   | Commercial Vehicle Loan | personal_discussion.xlsx | interviewer_comments                   | 0                         |
      | AL00002   | Auto Loan               | personal_discussion.xlsx | interviewer_comments                   | 6                         |

    @PQMStory
    Examples:
      | LogicalID         | ProductType             | PersonalDiscussionWB     | PersonalDiscussion_interviewercomments | PersonalDiscussion_rowNum |
      | CV00CAS_88943_01  | Commercial Vehicle Loan | personal_discussion.xlsx | interviewer_comments                   | 0                         |
      | CV00CAS_88943_02  | Commercial Vehicle Loan | personal_discussion.xlsx | interviewer_comments                   | 0                         |
      | CV00CAS_88946_01  | Commercial Vehicle Loan | personal_discussion.xlsx | interviewer_comments                   | 0                         |
      | CV00CAS_206825_01 | Commercial Vehicle Loan | personal_discussion.xlsx | interviewer_comments                   | 0                         |
      | CV00CAS_80273_01  | Commercial Vehicle Loan | personal_discussion.xlsx | interviewer_comments                   | 0                         |
      | CV00CAS_90456_01  | Commercial Vehicle Loan | personal_discussion.xlsx | interviewer_comments                   | 0                         |
      | CV00CAS_90456_02  | Commercial Vehicle Loan | personal_discussion.xlsx | interviewer_comments                   | 0                         |

#------------------------------------------------ COLLATERAL TAB --------------------------------------------------------------------------------------------------------------
#--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

  @AuthoredBy-anshika.gupta
    @ImplementedBy-anshika.gupta
  Scenario Outline: ACAUTOCAS-19917: Save collateral at DDE stage for <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>" with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
#    And user opens an application of "DDE" stage present in context from application grid
    When user opens Collateral Page for adding new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_sheet>" and row <Collateral_rowNum>
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "vehicle_details" and row 1
    And user fills mandatory fields of vehicle details
    And user reads data from the excel file "<CollateralWB>" under sheet "invoice_details" and row 62
    And user fill Invoice Details
    And user checks the duplicates on collateral dedupe check
    And user saves the Collateral Details
    Then collateral details should be saved successfully

    Examples:
      | LogicalID | ProductType    | CollateralWB    | Collateral_sheet | Collateral_rowNum |
      | EDU00001  | Education Loan | collateral.xlsx | default          | 616               |
      | EDU00002  | Education Loan | collateral.xlsx | default          | 616               |
      | AL00001   | Auto Loan      | collateral.xlsx | default          | 616               |
      | EDU00004  | Education Loan | collateral.xlsx | default          | 616               |

    @PQMStory
    Examples:
      | LogicalID                        | ProductType    | CollateralWB    | Collateral_sheet | Collateral_rowNum |
      | EDU_CAS_60813_ContractualIndiv01 | Education Loan | collateral.xlsx | default          | 616               |
      | EDU_CAS_60813_ContractualIndiv02 | Education Loan | collateral.xlsx | default          | 616               |
      | EDU_CAS_60813_ContractualIndiv03 | Education Loan | collateral.xlsx | default          | 616               |
      | EDU_CAS_60813_ContractualIndiv04 | Education Loan | collateral.xlsx | default          | 616               |
      | EDU_CAS_60813_ContractualIndiv05 | Education Loan | collateral.xlsx | default          | 616               |

  @AuthoredBy-richa.singh
    @ImplementedBy-richa.singh
  Scenario Outline: ACAUTOCAS-19918: user captures data of Ready Property at DDE stage for <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>" with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
#    And user opens an application of "DDE" stage present in context from application grid
    When user opens Collateral Page for adding new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user selects collateral type along with collateral sub type
    And user fills all fields of Ready Property
    And user checks the duplicates on collateral dedupe check
    And user saves the data of collateral subtype
    Then collateral details should be saved successfully
    Examples:
      | LogicalID | ProductType       | CollateralWB    | Collateral_default | Collateral_default_rowNum |
      | KCC00001  | Kisan Credit Card | collateral.xlsx | property_details   | 200                       |
      | KCC00002  | Kisan Credit Card | collateral.xlsx | property_details   | 200                       |


  @ImplementedBy-rishabh.sachan
    @AuthoredBy-rishabh.sachan
  Scenario Outline: ACAUTOCAS-19919: Save Gold Collateral details for Farm Equipment at DDE stage for <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>" with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
#    And user opens an application of "DDE" stage present in context from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "collateral.xlsx" under sheet "gold_details" and row 1
    When user fills gold collateral details
    And user saves the Collateral Details
    Then collateral details should be saved successfully
    Examples:
      | LogicalID | ProductType      |
      | FE00001   | Farm Equipment   |
      | AGRL00001 | Agriculture Loan |

  @AuthoredBy-kanika.mahal
    @ImplementedBy-kanika.mahal
  Scenario Outline: ACAUTOCAS-20921: Save secondary collateral for fixed deposit at DDE stage for <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>" with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user opens an application of "DDE" stage present in context from application grid
    When user opens Collateral Page for adding new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "default" and row 736
    And user selects collateral type along with collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_fixedDeposit>" and row <Collateral_fixedDeposit_rowNum>
    And user adds collateral all fields based on "<CollateralSubType>" subtype of collateral type
    And user checks the duplicates on collateral dedupe check
    When user saves the data of collateral subtype
    Then collateral details should be saved successfully

    Examples:
      | LogicalID | ProductType           | CollateralWB    | Collateral_fixedDeposit | Collateral_fixedDeposit_rowNum | CollateralSubType |
      | MHF00001  | Micro Housing Finance | collateral.xlsx | fixed_deposit           | 215                            | Fixed Deposit     |
      | LAP00001  | Micro Housing Finance | collateral.xlsx | fixed_deposit           | 215                            | Fixed Deposit     |
      | MHF00002  | Micro Housing Finance | collateral.xlsx | fixed_deposit           | 215                            | Fixed Deposit     |

  #------------------------------------------ DOCUMENT ------------------------------------------------------------------------------------------------

############################################ DOCUMENT TAB #######################################################################################################

  @AuthoredBy-richa.singh
    @ImplementedBy-richa.singh
  Scenario Outline: ACAUTOCAS-19920: Update documents at DDE stage for <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>" with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
#    And user opens an application of "DDE" stage present in context from application grid
    And user selects document tab
    And user reads data from the excel file "<DocumentWB>" under sheet "<Document_home>" and row <Document_home_rowNum>
    And user selects the document
    And user selects document status as "<Status>"
    When user submit the document
    Then documents should be submitted successfully
    Examples:
      | LogicalID | ProductType                | DocumentWB    | Document_home | Document_home_rowNum | Status              |
      | KCC00001  | Kisan Credit Card          | document.xlsx | home          | 518                  | Received & Uploaded |
      | FE00001   | Farm Equipment             | document.xlsx | home          | 511                  | Deferred            |
      | FE00001   | Farm Equipment             | document.xlsx | home          | 512                  | Deferred            |
      | GL00001   | Gold Loan                  | document.xlsx | home          | 491                  | Received & Uploaded |
      | SHG00001  | Self Help Group            | document.xlsx | home          | 492                  | Deferred            |
      | SHG00001  | Self Help Group            | document.xlsx | home          | 490                  | Received & Uploaded |
      | SHG00001  | Self Help Group            | document.xlsx | home          | 491                  | Pending             |
      | SHG00001  | Self Help Group            | document.xlsx | home          | 493                  | Waived off          |
      | SHG00001  | Self Help Group            | document.xlsx | home          | 529                  | Waived off          |
      | SHG00001  | Self Help Group            | document.xlsx | home          | 530                  | Waived off          |
      | SHG00001  | Self Help Group            | document.xlsx | home          | 531                  | Waived off          |
      | SHG00001  | Self Help Group            | document.xlsx | home          | 537                  | Waived off          |
      | SHG00001  | Self Help Group            | document.xlsx | home          | 538                  | Waived off          |
      | SHG00001  | Self Help Group            | document.xlsx | home          | 528                  | Waived off          |
      | JLG00001  | Joint Liability Group      | document.xlsx | home          | 490                  | Deferred            |
      | JLG00001  | Joint Liability Group      | document.xlsx | home          | 491                  | Received & Uploaded |
      | JLG00001  | Joint Liability Group      | document.xlsx | home          | 492                  | Pending             |
      | JLG00001  | Joint Liability Group      | document.xlsx | home          | 493                  | Waived off          |
      | JLG00001  | Joint Liability Group      | document.xlsx | home          | 529                  | Waived off          |
      | JLG00001  | Joint Liability Group      | document.xlsx | home          | 530                  | Waived off          |
      | JLG00001  | Joint Liability Group      | document.xlsx | home          | 531                  | Waived off          |
      | JLG00001  | Joint Liability Group      | document.xlsx | home          | 528                  | Waived off          |
      | CEQ00001  | Commercial Equipment       | document.xlsx | home          | 525                  | Waived off          |
      | CEQ00001  | Commercial Equipment       | document.xlsx | home          | 526                  | Waived off          |
      | MHF00001  | Micro Housing Finance      | document.xlsx | home          | 534                  | Received & Uploaded |
      | AGRL00001 | Agriculture Loan           | document.xlsx | home          | 511                  | Pending             |
      | AGRL00001 | Agriculture Loan           | document.xlsx | home          | 512                  | Pending             |
      | PL00001   | Personal Loan              | document.xlsx | home          | 540                  | Received & Uploaded |
      | HL00001   | Home Loan                  | document.xlsx | home          | 544                  | Pending             |
      | LAP00001  | Micro Housing Finance      | document.xlsx | home          | 534                  | Received & Uploaded |
      | CV00002   | Commercial Vehicle Loan    | document.xlsx | home          | 534                  | Received & Uploaded |
      | KCC00002  | Kisan Credit Card          | document.xlsx | home          | 518                  | Received & Uploaded |
      | PL00002   | Personal Loan              | document.xlsx | home          | 546                  | Received & Uploaded |
      | AL00003   | Auto Loan                  | document.xlsx | home          | 516                  | Received & Uploaded |
      | FAS00001  | Finance Against Securities | document.xlsx | home          | 490                  | Deferred            |
      | FAS00001  | Finance Against Securities | document.xlsx | home          | 491                  | Received & Uploaded |
      | FAS00001  | Finance Against Securities | document.xlsx | home          | 492                  | Pending             |
      | FAS00001  | Finance Against Securities | document.xlsx | home          | 493                  | Waived off          |

      | AL00002   | Auto Loan                  | document.xlsx | home          | 562                  | Received & Uploaded |
      | MHF00002  | Micro Housing Finance      | document.xlsx | home          | 562                  | Received & Uploaded |

    @PQMStory
    Examples:
      | LogicalID         | ProductType             | DocumentWB    | Document_home | Document_home_rowNum | Status              |
      | CV00CAS_88943_01  | Commercial Vehicle Loan | document.xlsx | home          | 534                  | Received & Uploaded |
      | CV00CAS_88943_02  | Commercial Vehicle Loan | document.xlsx | home          | 534                  | Received & Uploaded |
      | CV00CAS_88946_01  | Commercial Vehicle Loan | document.xlsx | home          | 534                  | Received & Uploaded |
      | CV00CAS_206825_01 | Commercial Vehicle Loan | document.xlsx | home          | 534                  | Received & Uploaded |
      | CV00CAS_80273_01  | Commercial Vehicle Loan | document.xlsx | home          | 534                  | Received & Uploaded |
      | CV00CAS_90456_01  | Commercial Vehicle Loan | document.xlsx | home          | 534                  | Received & Uploaded |
      | CV00CAS_90456_02  | Commercial Vehicle Loan | document.xlsx | home          | 534                  | Received & Uploaded |
      | OL00001   | Omni Loan               | document.xlsx | home          | 491                  | Received & Uploaded |
################################################ SELF HELP GROUP TAB ##################################################################################

  @AuthoredBy-tanya
    @ImplementedBy-tanya
  Scenario Outline: ACAUTOCAS-19921: Save Self Help Group at DDE stage for <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>" with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
#    And user opens an application of "DDE" stage present in context from application grid
    And user navigates to SHG Details Tab
    And user reads data from the excel file "<SHGDetailsWB>" under sheet "<SHGDetails_sheet>" and row <SHGDetails_rowNum>
    And user fills all the fields of SHG Details
    When user saves the SHG Details
    Then SHG Details should be saved successfully
    Examples:
      | LogicalID | ProductType     | SHGDetailsWB     | SHGDetails_sheet | SHGDetails_rowNum |
      | SHG00001  | Self Help Group | shg_details.xlsx | home             | 0                 |

################################################ ECM- CASE SEARCH ##################################################################################

  @ImplementedBy-akash.bansal
    @AuthoredBy-akash.bansal
  Scenario Outline: ACAUTOCAS-19922: Check uploaded document present in ECM for <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>" with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user logout from CAS
    And user logged in "ECM" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user navigates to Case Search of ECM
    And user search for an application in Case Search from context in ECM
    When user opens first task assigned in Case Search to application in ECM
    And user reads data from the excel file "<DocumentWB>" under sheet "<Document_home>" and row <Document_home_rowNum>
    Then uploaded document should be present in ECM
    Examples:
      | LogicalID | ProductType           | DocumentWB    | Document_home | Document_home_rowNum |
      | JLG00001  | Joint Liability Group | document.xlsx | home          | 491                  |
      | SHG00001  | Self Help Group       | document.xlsx | home          | 490                  |
