@Epic-Charges_&_FP
#@AuthorBy_Anshu
@AuthoredBy-Anshu.bhaduri
@ReviewedBy-ayush.garg
@Reconciled
@ReviewedByDEV

Feature: ChargesMultipleAssetDealTranche

#PreRequisite - Applicable for Commercial Vehicle, Consumer Vehicle, Tractor  Products
  Background:

    Given user logged in "Common Masters" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And Chargecodes should be maintained in Charge Code Definition Master with all Transaction types mapped
    And Charges should be maintained in Charge Definition Master with computation details maintained

  @ImplementedBy-rishabh.sachan
    @Release3
  Scenario Outline: ACAUTOCAS-2626:  Multi Asset Policy applicable for only <Products>
    #CAS-22809_Multiple Assets Single Application Policy
    And Multi Asset Policy already maintained in masters
    And user opens products grid
    And user edit "<Products>" from products grid
    When user attaches multi asset policy with "<Products>" product
    Then user should be able to "<Attach_Status>" the multi asset policy with "<Products>" product
    Examples:
      | Products             | Attach_Status |
      | Commercial Equipment | Attach        |
      | Farm Equipment       | Attach        |
      | Consumer Vehicle     | Attach        |
      | Consumer Durables    | Attach        |
      | Commercial Vehicle   | Attach        |
      | Multi Facility       | Attach        |

  @ImplementedBy-rishabh.sachan
    @Release3
  Scenario Outline: ACAUTOCAS-2627:  Multi Asset Policy creation and Mapping with Product
    #CAS-22809_Multiple Assets Single Application Policy
    And Multiple Asset Policy already created in system
    And user opens multiple asset single application policy grid
    And user opens new multiple asset single application policy
    And user fills code and name for multiple asset single application policy
    When user selects Application Split Type as "<Application_Split_Type>" with predisbursal split type as "<PreDisbursal_Split_Type>"
    And user selects multiple LAN as "<Multiple_LAN>" with charge execution method as "<Charge_Execution>"
    Then disbursal action is selected by default as "<Action>"
    And user should "<Single_LAN_Checkbox>" single LAN checkbox ticked by default
    And user should be able to save multiple asset policy successfully
    #  1. Dealer wise- If this option is selected, all assets under one dealer will be disbursed under one tranche but separate LAN will be generated for each asset provided single LAN checkbox is not checked.
    #  2. Asset wise- If this option would be selected, each tranche will be created for each asset wise. For each asset a different LAN will be generated.
    Examples:
      | Application_Split_Type | PreDisbursal_Split_Type | Multiple_LAN | Charge_Execution       | Single_LAN_Checkbox | Action |
      | AUTOMATIC SPLIT        | MULTIPLE LAN            | DEALER WISE  | Remainder Method       | see                 | Manual |
      | AUTOMATIC SPLIT        | MULTIPLE LAN            | DEALER WISE  | Re-Execution Method    | see                 | Manual |
      | AUTOMATIC SPLIT        | MULTIPLE LAN            | DEALER WISE  | First Disbursal Method | see                 | Manual |
      | AUTOMATIC SPLIT        | MULTIPLE LAN            | ASSET WISE   | Remainder Method       | not see             | Manual |
      | AUTOMATIC SPLIT        | MULTIPLE LAN            | ASSET WISE   | Re-Execution Method    | not see             | Manual |
      | AUTOMATIC SPLIT        | MULTIPLE LAN            | ASSET WISE   | First Disbursal Method | not see             | Manual |

  @ImplementedBy-rishabh.sachan
  Scenario Outline: ACAUTOCAS-2628:  Deal Tranche Policy with <Charge_Execution> method and Mapping with Product
    #CAS-52825_CAS-56379_CAS-56782 Receipt, Charges and FP Handling for Tranches and Member Level Split
    Given Deal Tranche Policy already created in system
    And user reads data from the excel file "<ChargesWB>" under sheet "<Charges_dealTranchPolicy>" and row <Charges_dealTranchPolicy_rowNum>
    And user opens deal tranch policy grid
    And user opens new deal tranch policy
    And user fills code and name for deal tranch policy
    When user selects split type as "<Split_Type>" with tranche or split type as "<Tranche_Type_Split>"
    Then user sees repayment parameters editable flag as "<Repay_Param_Editable>" with charge execution method as "<Charge_Execution>"
    And user should be able to save deal tranche policy successfully
    #And user should be able to map deal tranche policy with the product or scheme
    @Release3
    Examples:
      | Split_Type   | Tranche_Type_Split | Charge_Execution       | Repay_Param_Editable | ChargesWB                | Charges_dealTranchPolicy | Charges_dealTranchPolicy_rowNum |
      | Limit        | Single             | no charge execution    | disabled             | charges.xlsx             | deal_tranch_policy       | 0                               |
      | Limit        | Multiple           | no charge execution    | enabled              | charges.xlsx             | deal_tranch_policy       | 0                               |
      | Member Level | No                 | no charge execution    | disabled             | charges.xlsx             | deal_tranch_policy       | 0                               |
      | Member Level | Yes                | First Disbursal Method | disabled             | charges.xlsx             | deal_tranch_policy       | 0                               |
      | Member Level | Yes                | Remainder Method       | disabled             | charges.xlsx             | deal_tranch_policy       | 0                               |
      | Member Level | Yes                | Re-Execution Method    | disabled             | charges.xlsx             | deal_tranch_policy       | 0                               |

    @NotImplemented
    Examples:
      | Split_Type   | Tranche_Type_Split | Charge_Execution       | Repay_Param_Editable | member_tagging           | member                   |
      | Member Level | Yes                | First Disbursal        | disabled             | Guarantor Member Tagging | all members              |
      | Member Level | Yes                | Re-Execution           | disabled             | Guarantor Member Tagging | Primary member           |


    #subtask created for issue ACAUTOCAS-6482
  @NotImplemented
  Scenario Outline: ACAUTOCAS-5518:  Multi Asset Policy Mapping with Product and Scheme
    #CAS-22809_Multiple Assets Single Application Policy
    And Multiple Asset Policy already created in system
    When user maps the multi asset "<Dealer_AssetWise>" policy with "<Product_Scheme>"
    Then user should be able to map "<Dealer_AssetWise>" policy with "<Product_Scheme>" successfully

    Examples:

      | Dealer_AssetWise | Product_Scheme |
      | Dealer Wise      | Product        |
      | Asset Wise       | Product        |
      | Dealer Wise      | Scheme         |
      | Asset Wise       | Scheme         |



#subtask created for issue ACAUTOCAS-6482
  @NotImplemented
  Scenario Outline: ACAUTOCAS-5519: Deal Tranche Policy Mapping with Product and Scheme
    #CAS-52825_CAS-56379_CAS-56782 Receipt, Charges and FP Handling for Tranches and Member Level Split
    And Deal Tranche Policy already created in system
    When user maps the deal tranche "<Split_Type>" policy with "<Product_Scheme>"
    Then user should be able to map deal tranche policy with "<Product_Scheme>" successfully

    Examples:
      | Split_Type   | Product_Scheme |
      | Limit Level  | Product        |
      | Member Level | Product        |
      | Limit Level  | Scheme         |
      | Member Level | Scheme         |

#subtask created for issue ACAUTOCAS-6482
  @NotImplemented
  Scenario Outline: ACAUTOCAS-2629:  Charge policy execution on application with member level deal tranche policy
    #CAS-52825, CAS-56379, CAS-56782 Receipt, Charges and FP Handling for Tranches and Member Level Split
    And Deal Tranche Policy with Member Level Split already attached with the Product
    And user captured multiple applicants and single applicant data as application 1 and application 2
    When user moves application to "<Var_Stage>" Stage
    And user executes the charge policy at "<Var_Stage>" stage
    And user adds manual charges
    And user moves application to disbursal stage
    And user navigates to receipts section to collect receipts against charges at "<Var_Stage>" Stage
    And user verifies in disbursal schedule accordian section
    Then user should be able to verify that number of tranches will get created as per number of members in the group
    #And user should be able to verify that for application 2 single tranche will be available under disbursal schedule accordion

    Examples:

      | Var_Stage    |
      | DDE          |
      | DDE or Later |

  @NotImplemented
  Scenario Outline: ACAUTOCAS-2630: Applicable Charges Behaviour as per Charge Execution method "<Charge_Execution>" applied on "<Policy_Type>" loan application
    #CAS-52825, CAS-56379, CAS-56782 Receipt, Charges and FP Handling for Tranches and Member Level Split
    And "<Policy_Type>" already attached with the Product
    And loan application is at Disbursal stage
    When user verifies applicable charges as per charge policy will get "<Remarks>" in "<Charge_Execution>" method
    Then user should be able to verify the applicable charges at "<Var_Stage>" as per "<Charge_Execution>" method
    Examples:

      | Var_Stage | Charge_Execution | Policy_Type                            | Remarks                                                                                             |
      | Disbursal | Remainder        | Member Level Split deal tranche policy | equally divided among members(round-off) with highest charge value allocated with primary applicant |
      | Disbursal | Re-Execution     | Member Level Split deal tranche policy | applied to each tranche                                                                             |
      | Disbursal | First Disbursal  | Member Level Split deal tranche policy | applied to primary applicant of application tranche                                                 |
      | Disbursal | Remainder        | Multi Asset policy                     | equally divided among members(round-off) with highest charge value allocated with primary applicant |
      | Disbursal | Re-Execution     | Multi Asset policy                     | applied to each tranche                                                                             |
      | Disbursal | First Disbursal  | Multi Asset policy                     | applied to primary applicant of application tranche                                                 |


#=========================Member Level Split for SHG JLG Applications Deal Tranche POlicy====================
  #subtask created for issue ACAUTOCAS-6482
  @NotImplemented
  Scenario Outline: ACAUTOCAS-2631:  Charge Execution method "<Charge_Execution>" behaviour on Member Level split SHG JLG loan application
    #CAS-52825_CAS-56379_CAS-56782 Receipt, Charges and FP Handling for Tranches and Member Level Split
    And Deal Tranche Policy with Member Level Split already attached with the Product
    And loan application is at Disbursal with multiple applicant and single applicant data as application 1 and application 2
    And applicable charges as per charge policy will get applied to each tranche as per "<Charge_Execution>" method defined in attached policy
    When user verifies manual charges that were previously applied will get zero in effective charge in the charge grid of each tranche
    And user updates effective charge amount of each tranche at "<Var_Stage>" stage
    Then user should get "<Message>" message for sum of effective charge amount in each tranche "<Equal_NotEqual>" to the manual charge applied initially
    #And user should get "<Message>" message

    Examples:

      | Var_Stage | Charge_Execution    | Equal_NotEqual | Message |
      | Disbursal | Re-Execution Method | Equal          | Success |
      | Disbursal | Re-Execution Method | Not Equal      | Error   |

#subtask created for issue ACAUTOCAS-6482
  @NotImplemented
  Scenario Outline: ACAUTOCAS-2632:Charge Execution method "<Charge_Execution>" applied on Member Level split SHG JLG loan application
    #CAS-52825_CAS-56379_CAS-56782 Receipt, Charges and FP Handling for Tranches and Member Level Split
    And Deal Tranche Policy with Member Level Split already attached with the Product
    And loan application is at Disbursal with multiple applicant and single applicant data as application 1 and application 2
    And user is on receipts section with all charges appeared that are collectible
    And applicable charge that is being "<Applicable_Charges>" will also be available here when collectible in "<Charge_Execution>"  method
    When user "<Receipt_Amount>" amount with "<Applicant>" at "<Var_Stage>" stage
    And user adds manual charges in each tranche
    And user verifies "<Message>" message
    Then user verify that receipts taken corresponding to the member appears in their respective tranche at "<Var_Stage>" stage
    #And user verify charges collected at tranche will get adjusted to respective member only in each tranche

    Examples:

      | Var_Stage | Charge_Execution       | Applicable_Charges            | Receipt_Amount                  | Applicant                                   | Message |
      | Disbursal | Remainder Method       | divided equally among members | allocates highest charge amount | co-applicant receipt                        | Error   |
      | Disbursal | Remainder Method       | divided equally among members | allocates highest charge amount | primary applicant receipt                   | Success |
      | Disbursal | Remainder Method       | divided equally among members | partially allocates             | primary applicant receipt                   | Success |
      | Disbursal | Remainder Method       | divided equally among members | allocates remaining receipt     | other charge                                | Error   |
      | Disbursal | Remainder Method       | divided equally among members | allocates remaining receipt     | charge of the same member primary applicant | Success |
      | Disbursal | Remainder Method       | divided equally among members | allocates remaining receipt     | charge of the same member co-applicant      | Success |
      | Disbursal | Re-execution Method    | applied upon each member      | allocates highest charge amount | co-applicant receipt                        | Error   |
      | Disbursal | Re-execution Method    | applied upon each member      | allocates highest charge amount | primary applicant receipt                   | Success |
      | Disbursal | Re-execution Method    | applied upon each member      | partially allocates             | primary applicant receipt                   | Success |
      | Disbursal | Re-execution Method    | applied upon each member      | allocates remaining receipt     | other charge                                | Error   |
      | Disbursal | Re-execution Method    | applied upon each member      | allocates remaining receipt     | charge of the same member primary applicant | Success |
      | Disbursal | Re-execution Method    | applied upon each member      | allocates remaining receipt     | charge of the same member co-applicant      | Success |
      | Disbursal | First Disbursal Method | divided among members         | allocates highest charge amount | co-applicant receipt                        | Error   |
      | Disbursal | First Disbursal Method | divided among members         | allocates highest charge amount | primary applicant receipt                   | Success |
      | Disbursal | First Disbursal Method | divided among members         | partially allocates             | primary applicant receipt                   | Success |
      | Disbursal | First Disbursal Method | divided among members         | allocates remaining receipt     | other charge                                | Error   |
      | Disbursal | First Disbursal Method | divided among members         | allocates remaining receipt     | charge of the same member primary applicant | Success |
      | Disbursal | First Disbursal Method | divided among members         | allocates remaining receipt     | charge of the same member co-applicant      | Success |

#subtask created for issue ACAUTOCAS-6482
  @NotImplemented
  Scenario Outline: ACAUTOCAS-2633:  Validations on "<Var_Stage>" stage while initiating tranches with "<Member_Level_Split>" for "<App_Type>" applications
    #CAS-52825_CAS-56379_CAS-56782 Receipt, Charges and FP Handling for Tranches and Member Level Split
    And Deal Tranche Policy already attached with the Product
    And "<App_Type>" application is at Disbursal stage with multiple applicant and single applicant data as application 1 and application 2
    When user initiates disbursal with "<Member_Level_Split>" at "<Var_Stage>" stage
    Then user should "<Message>" message
    #And user should be able to "<Edit_Delete>" receipts taken at member level tranche while disbursal with "<Member_Level_Split>" at "<Var_Stage>" stage

    Examples:
      | App_Type                   | Var_Stage | Member_Level_Split                                                 | Message                                                   |
      | SHG JLG Member Level split | Disbursal | pending member level receipts                                      | not be able to do so with proper error message displayed  |
      | SHG JLG Member Level split | Disbursal | partial allocated member level receipts                            | not be able to do so with proper error message  displayed |
      | SHG JLG Member Level split | Disbursal | fully allocated member level receipts but with no receipt authored | not be able to do so with proper error message  displayed |
      | SHG JLG Member Level split | Disbursal | fully allocated authorized member level receipts                   | be able to do so                                          |
      | SHG JLG Member Level split | Disbursal | pending member level receipts                                      | not be able to do so with proper error message displayed  |
      | SHG JLG Member Level split | Disbursal | partial allocated member level receipts                            | not be able to do so with proper error message  displayed |
      | SHG JLG Member Level split | Disbursal | fully allocated member level receipts but with no receipt authored | not be able to do so with proper error message  displayed |
      | SHG JLG Member Level split | Disbursal | fully allocated authorized member level receipts                   | be able to do so                                          | 

# ================Limit Level Split - Deal Tranche POlicy====================

  ###flag enablement for tranche approval stage
  @NotImplemented
  Scenario: ACAUTOCAS-5331:  To enable Tranche Approval stage for loan application having Limit level split in deal tranche policy
    And Deal Tranche Policy with Limit Level Split already attached with the Product
    When user verifies configuration in backend table CAS_prod_type_config set to true to enable tranche approval stage
    #set it true for product type on which working
    Then user should see tranche approval stage after tranche initiation

  @NotImplemented
  Scenario Outline: ACAUTOCAS-2634:  Charge policy execution on loan application having Limit level split in deal tranche policy
    #CAS-52825_CAS-56379_CAS-56782 Receipt, Charges and FP Handling for Tranches and Member Level Split
    And Deal Tranche Policy with Limit Level Split already attached with the Product
    When user executes the charge policy at "<Var_Stage>" stage
    And user adds manual charges
    And user navigates to receipts section to collect receipts against charges at "<Var_Stage>" stage
    Then user should be able to collect receipts corresponding to charges

    Examples:

      | Var_Stage    |
      | DDE          |
      | DDE or later |

  @NotImplemented
  Scenario Outline: ACAUTOCAS-5312:  View Charges and Receipts at  "<Var_Stage>" stage for an application having Limit level split in deal tranche policy
    #CAS-52825_CAS-56379_CAS-56782 Receipt, Charges and FP Handling for Tranches and Member Level Split
    And Deal Tranche Policy with Limit Level Split already attached with the Product
    And tranche approval flag is updated as TRUE
    When user checks "<charges_receipts>" tab enabled at "<Var_Stage>" Stage
    Then user should be able to verify "<charges_receipts>" at "<Var_Stage>" Stage
    Examples:

      | Var_Stage          | charges_receipts |
      | Tranche Initiation | charges          |
      | Tranche Approval   | charges          |
      | Tranche Initiation | receipts         |
      | Tranche Approval   | receipts         |

#subtask created for issue ACAUTOCAS-6482
  @NotImplemented
  Scenario Outline: ACAUTOCAS-2635:  Multiple Tranches creation at Tranche Initiation stage for an application having Limit level split in deal tranche policy
    #CAS-52825_CAS-56379_CAS-56782 Receipt, Charges and FP Handling for Tranches and Member Level Split
    And Deal Tranche Policy with Limit Level Split already attached with the Product
    And tranche approval flag is updated as TRUE
    #And user captured multiple applicants and single applicant data as application 1 and application 2
    When user creates multiple tranches in tranche details section of different loan amount at "<Var_Stage>" stage
    And user initiates tranche creation by clicking on initiate button
    Then tranche should be initiated with application moving to Tranche Approval Stage
    #And application should move to Tranche approval stage
    Examples:

      | Var_Stage          |
      | Tranche Initiation |

    #subtask created for issue ACAUTOCAS-6482
  @NotImplemented
  Scenario Outline: ACAUTOCAS-5313:  Validation of Limits could not be refreshed while initiating tranches at Tranche Initiation stage
    And Deal Tranche Policy with Limit Level Split already attached with the Product
    And tranche approval flag is updated as TRUE
    When user navigates to tranches tab at "<Var_Stage>" stage
    And no limit data is received from LMS system
    Then user will get the message as Limits could not be refreshed No data received from LMS with no tranche initiated
    #And tranche should not be initiated
    Examples:

      | Var_Stage          |
      | Tranche Initiation |

  @NotImplemented
  Scenario Outline: ACAUTOCAS-2636:  Tranches initiation at Tranche Initiation stage for an application having Limit level split "<Single_Multiple>" in deal tranche policy
    #CAS-52825_CAS-56379_CAS-56782 Receipt, Charges and FP Handling for Tranches and Member Level Split
    And Deal Tranche Policy with Limit Level Split "<Single_Multiple>" already attached with the Product
    And user created "<Tranche>" tranches of different loan amount at "<Var_Stage>" stage
    When user initiates tranche with "<partial_fully>" allocated receipts for created "<Tranche>" tranches
    Then tranche should be initiated successfully
    #And user verifies on receipts tab that receipts screen will be in viewable mode after tranche initiation
    Examples:

      | Var_Stage          | Tranche  | Single_Multiple | partial_fully |
      | Tranche Initiation | Single   | Single          | partially     |
      | Tranche Initiation | Multiple | Multiple        | partially     |
      | Tranche Initiation | Single   | Single          | fully         |
      | Tranche Initiation | Multiple | Multiple        | fully         |

#Tranche approval is not mandatory after TI, we can go directly to DI stage and approve the disbursal
  # Tranche approval flow as below:
# Education Loan --> Credit Approval-->Disbursal Initiation
# --> Tranches tab --> Create first tranche--> goto Disbursal deatils screen--> initiate disbursal--> authorize disbursal
# --> Then Tranche initiation screen will be visible --> next tranche then will be initiated by clicking initiate button
# --> Tranche Approval stage will be visible

  #subtask created for issue ACAUTOCAS-6482
  @NotImplemented
  Scenario Outline: ACAUTOCAS-5314:  Tranche Approval for an application having Limit level split in deal tranche policy
    And Deal Tranche Policy with Limit Level Split already attached with the Product
    And tranche approval flag is updated as TRUE
    And tranche is already initiated by user
    When user navigates to tranche approval screen at "<Var_Stage>" stage
    And user approves tranche
    #Then tranche approval should be done
    Then application should move to disbursal initiation stage
    Examples:

      | Var_Stage        |
      | Tranche Approval |

  @NotImplemented
  Scenario Outline: ACAUTOCAS-5315:  Tranche Rejection at Tranche Approval stage for an application having Limit level split in deal tranche policy
    And Deal Tranche Policy with Limit Level Split already attached with the Product
    And tranche approval flag is updated as TRUE
    And tranche is already initiated by user
    When user navigates to tranche approval screen at "<Var_Stage>" stage
    And user rejects tranche
    Then tranche should be send back to tranche initiation stage

    Examples:

      | Var_Stage        |
      | Tranche Approval |


    #check for charges,FP and receipt
  #subtask created for issue ACAUTOCAS-6482
  @NotImplemented
  Scenario Outline: ACAUTOCAS-2637:  Disbursal Initiation for loan application having Limit level split-Multiple in deal tranche policy
    #CAS-52825_CAS-56379_CAS-56782 Receipt, Charges and FP Handling for Tranches and Member Level Split
    And Deal Tranche Policy with Limit Level Split Multiple already attached with the Product
    And user created multiple tranches of different loan amount at "<Var_Stage>" stage
    And user initiated tranches already
    When user navigates to disbursal
    And user checks charges and receipts which were attached with first tranche initiation
    #And charges with receipts taken before at tranche initiation will be visible at all tranche disbursal stages
    And user adds manual charges at disbursal maker stage
    And user adjust the above charge with partially allocated receipt from early tranches
    And user initiates the disbursal of this subsequent tranche
    Then all charges with receipt should be adjusted fully before disbursal of a loan
    #And tranche should be successfully disbursed
#  Receipt taken at TRANCHE_0001 disbursal maker stage can be allocated with a charge taken in TRANCHE_0002 disbursal maker stage
    Examples:

      | Var_Stage          |
      | Tranche Initiation |

#subtask created for issue ACAUTOCAS-6482
  @NotImplemented
  Scenario Outline: ACAUTOCAS-2638:  Disbursal Initiation at Disbursal stage for loan application having Limit level split-Single in deal tranche policy
    #CAS-52825_CAS-56379_CAS-56782 Receipt, Charges and FP Handling for Tranches and Member Level Split
    And Deal Tranche Policy with Limit Level Split Single already attached with the Product
    And user created single tranche of loan amount at "<Var_Stage>" stage
    And user initiated tranches already
    #When user navigates to disbursal stage
    And charges attached with the first disbursal of first tranche
    And receipts taken at tranche initiation are visible at disbursal maker stage
    When user adds manual charges at disbursal maker stage
    And user adjust the above charge with partially allocated receipt from early tranches
    And user initiates the disbursal of this tranche
    Then all charges with receipt should be adjusted fully before disbursal
    #And tranche should be successfully disbursed

    Examples:

      | Var_Stage          |
      | Tranche Initiation |
#=================================================================================================

#=========================Multi Asset Policy for Commercial Vehicle loan applications ====================
  @NotImplemented
  Scenario Outline: ACAUTOCAS-2639:  Multi Asset Policy execution on Multi Asset loan application
    #CAS-52825_CAS-56379_CAS-56782 Receipt, Charges and FP Handling for Tranches and Member Level Split
    And Multi Asset Policy already attached with the Product
    And user is already in disbursal entry section with all the charges listed in charges grid
    And user added manual charges by clicking on + icon
    And user updated charge amount on charges screen against manually added charges
    When user collects receipts corresponding to charges for "<BP_Type>"
    And user allocates the charges of "<BP_Type>" with "<BP_Type1>" at "<Var_Stage>" stage
    Then user should be able to get "<Message>" message

    Examples:

      | Var_Stage | BP_Type         | BP_Type1        | Message |
      | Disbursal | dealer Supplier | customer        | Error   |
      | Disbursal | customer        | dealer Supplier | Error   |
      | Disbursal | customer        | customer        | Success |
      | Disbursal | dealer Supplier | dealer Supplier | Success |

  @NotImplemented
  Scenario Outline: ACAUTOCAS-2640:  Validations on "<Var_Stage>" stage while initiating tranches with "<Member_Level_Split>" for Multi Asset application
    #CAS-52825_CAS-56379_CAS-56782 Receipt, Charges and FP Handling for Tranches and Member Level Split
    And Multi Asset Policy already attached with the Product
    And Multi Asset loan application is at Disbursal stage
    When user initiates disbursal with "<Member_Level_Split>" at "<Var_Stage>" stage
    Then user should "<Message>" message
    Examples:

      | Var_Stage | Member_Level_Split                                                  | Message                                                   |
      | Disbursal | pending tranche level receipts                                      | not be able to do so with proper error message displayed  |
      | Disbursal | partial allocated tranche level receipts                            | not be able to do so with proper error message  displayed |
      | Disbursal | fully allocated tranche level receipts but with no receipt authored | not be able to do so with proper error message  displayed |
      | Disbursal | fully allocated authorized tranche level receipts                   | be able to do so                                          |

#subtask created for issue ACAUTOCAS-6482
  @NotImplemented
  Scenario Outline: ACAUTOCAS-4196:  Charge Execution method "<Charge_Execution>" for Multi Asset application
    #CAS-52825_CAS-56379_CAS-56782 Receipt, Charges and FP Handling for Tranches and Member Level Split
    And Multi Asset Policy already attached with the Product having "<Charge_Execution>" method
    And manual charges already collected at DDE Stage
    And loan application is at Disbursal stage
    And applicable charges as per charge policy will get applied to each tranche as per "<Charge_Execution>" method defined in policy
    When user verifies manual charges that were previously applied will get zero in effective charge in the charge grid of each tranche
    And user updates effective charge amount of each tranche at "<Var_Stage>" stage
    Then user should get "<Message>" message for sum of effective charge amount in each tranche "<Equal_NotEqual>" to the manual charge applied initially
    #And user should get "<Message>" message

    Examples:

      | Var_Stage | Charge_Execution    | Equal_NotEqual | Message |
      | Disbursal | Re-Execution Method | Equal          | Success |
      | Disbursal | Re-Execution Method | Not Equal      | Error   |

  @NotImplemented
  Scenario Outline: ACAUTOCAS-2641:  Charge Execution method with First Disbursal Method for Multi Asset application
    #CAS-52825_CAS-56379_CAS-56782 Receipt, Charges and FP Handling for Tranches and Member Level Split
    And Multi Asset Policy already attached with the Product having "<Charge_Execution>" method
    And manual charges collected at DDE Stage
    And loan application is at First Disbursal stage
    When user verifies all applicable charges "<Remarks>" in "<Charge_Execution>" method
    Then user should be able to verify that all charges can be adjusted to the tranche at "<Var_Stage>" as per "<Charge_Execution>" method
    Examples:
      | Var_Stage | Charge_Execution | Remarks                                |
      | Disbursal | First Disbursal  | should be applied to the First tranche |

  @NotImplemented
  Scenario Outline: ACAUTOCAS-4193: Charge Execution method "<Charge_Execution>" for Multi Asset application with Asset Wise Split
    #CAS-52825_CAS-56379_CAS-56782 Receipt, Charges and FP Handling for Tranches and Member Level Split
    And Multi Asset Policy already attached with the Product having "<Charge_Execution>" method  with "<Dealer_AssetWise>" Split
    And loan application is punched with multiple assets
    And charges already collected in application which is at Disbursal stage with multiple tranches
    When user verifies all applicable charges in each tranche
    Then user should verify that "<Remarks>" at "<Var_Stage>" as per "<Charge_Execution>" method
    Examples:

      | Var_Stage | Charge_Execution | Dealer_AssetWise | Remarks                                                                                                                |
      #| Disbursal | Remainder        | Dealer Wise     |charge will be divided by number of assets and applied. If there is remainder then biggest charge on tranche 001 |
      | Disbursal | Remainder        | Asset Wise       | Charge will be divided by number of assets and applied. when there is remainder then biggest charge on lesser split id |

  @NotImplemented
  Scenario Outline: ACAUTOCAS-2642:  Charge Execution method "<Charge_Execution>" for Multi Asset application with "<Dealer_AssetWise>" Split
    #CAS-52825_CAS-56379_CAS-56782 Receipt, Charges and FP Handling for Tranches and Member Level Split
    And Multi Asset Policy already attached with the Product having "<Charge_Execution>" method  with "<Dealer_AssetWise>" Split
    And loan application is punched with "<Punch_Type>"
    And charges already collected in application which is at Disbursal stage with "<Single_Multiple>" tranches
    When user verifies all applicable charges in each tranches
    Then user should verify that "<Remarks>" at "<Var_Stage>" as per "<Charge_Execution>" method
#  Add assets to same dealer and move the application till disbursal
#  "Application should be moved to disbursal Only one tranche should be there"
#  Check the charge - Whole Charge should be present in tranche
    Examples:

      | Var_Stage | Punch_Type                   | Single_Multiple | Charge_Execution | Dealer_AssetWise | Remarks                                                                                                            |
      | Disbursal | multiple assets and dealers  | Multiple        | Remainder        | Dealer Wise      | charge will be divided by number of assets and applied. when there is remainder then biggest charge on tranche 001 |
      | Disbursal | adding assets to same dealer | Single          | Remainder        | Dealer Wise      | Whole Charge should be present in tranche                                                                          |


######========================================================================############


