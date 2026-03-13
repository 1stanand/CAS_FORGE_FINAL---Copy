@Epic-Charges_&_FP
@AuthoredBy-Anshu.bhaduri
#@Createdby
#@Reviewedby
#@AuthorBy_Anshu
@ReviewedByDEV
@Reconciled

Feature: Chargesperiodic

  @Release3
  @ImplementedBy-manish.yadav2
  Scenario Outline: ACAUTOCAS-2643:  Default parameters value maintained while creating Periodic Charge Code in Master
    Given user logged in "Common Masters" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user navigates to charge code master to create periodic charge code
    When user selects charge category as "Periodic Charge"
    And user reads data from the excel file "<ChargesWB>" under sheet "<Charges_SheetName>" and row <Charges_rowNum>
    And user enters periodic charge code, description with other details in charge code definition page
    And user maps the transaction type by clicking on transaction mapping button
    Then default value of "<parameters>" parameters will be populated as "<param_value>"
    And user should verify that chargecode nature other than receivable is not acceptable while defining periodic charges
    And user should be able to create the periodic charge code

    Examples:
      | parameters               | param_value                            | ChargesWB    | Charges_SheetName      | Charges_rowNum |
      | Financial Parameter Type | Computation Definiton & Due Generation | charges.xlsx | charge_code_defination | 0              |
      | Charge Code Nature       | Receivable                             | charges.xlsx | charge_code_defination | 0              |
      | MIS Component Mapping    | Periodic Charge Amount                 | charges.xlsx | charge_code_defination | 0              |

  @Release3
  @ImplementedBy-manish.yadav2
  Scenario Outline: ACAUTOCAS-2644:  Default parameters value maintained while creating Periodic Charge in Charge definition Master
    Given user logged in "Common Masters" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user navigates to charge definition master to create periodic charge definition
    And user reads data from the excel file "<ChargesWB>" under sheet "<Charges_SheetName>" and row <Charges_rowNum>
    When user selects transaction type in charge definition page
    And user enters periodic charge code with other details in charge definition page
    Then default value of "<parameters>" parameters will be populated as "<param_value>"
    And user enters the charge computation details in computation details section
    And user should be able to create the periodic charge code

    Examples:
      | parameters       | param_value    | ChargesWB    | Charges_SheetName      | Charges_rowNum |
      | Charge Treatment | Collectible    | charges.xlsx | charge_code_defination | 1              |
      | Charge Nature    | Receivable     | charges.xlsx | charge_code_defination | 1              |
      | Periodic Charge  | already ticked | charges.xlsx | charge_code_defination | 1              |

  @Release3
  @ImplementedBy-manish.yadav2
  Scenario Outline: ACAUTOCAS-2645:  Addition of Periodic Charges in Charge Policy
    Given user logged in "Common Masters" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And Periodic Charges are already maintained in charge code and charge definition master
    When user navigates to charge policies master to create charge policy
    And user reads data from the excel file "<ChargesWB>" under sheet "<Charges_SheetName>" and row <Charges_rowNum>
    And user selects contract type as Loan
    And user selects source system as CAS while adding periodic charges in policy
    And  user adds CAS events "<CAS_Events>" from the event list
    And for Disbursal event only user selects disbursal data entry level as "<CAS1_Events>" with currency as INR
    And user clicks on hyperlink under charges to add charges
    Then user should be able to add the periodic charges from charge to be applied modal screen
    And user saves the charge policy

    Examples:

      | CAS_Events    | CAS1_Events         | Charges_rowNum | ChargesWB    | Charges_SheetName      |
      | Pre-Approval  |                     | 13             | charges.xlsx | charge_code_defination |
      | Post-Approval |                     | 14             | charges.xlsx | charge_code_defination |
      | Disbursal     | Disbursal Entry     | 2              | charges.xlsx | charge_code_defination |
      | Disbursal     | Disbursal Operation | 15             | charges.xlsx | charge_code_defination |
      | Renewal       |                     | 16             | charges.xlsx | charge_code_defination |

  @ImplementedBy-manish.yadav2
  Scenario Outline: ACAUTOCAS-2646:  Execution of Charge Policy at  <Var_Stage> Stage with periodic charges added in charge policy mapped with <Product_Scheme>
    Given user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user opens an application at "<Var_Stage>" stage from application grid
    And user navigate to Charges section of "<Var_Stage>"
    When user clicks on charges section
    Then periodic charge should be available in charges list
    And user can enter "<Field_Name>" amount against periodic charges in grid
    @Release3
    Examples:
      | Var_Stage                     | Product_Scheme | Field_Name       |
      | dde_indiv_pl                  | Product        | effective charge |
      | credit approval_indiv_pl      | Product        | effective charge |
      | post approval_indiv_pl        | Product        | effective charge |
      | disbursal_indiv_pl            | Product        | effective charge |
      | disbursal_indiv_subsequent_pl | Product        | effective charge |
      | dde_indiv_pl                  | Scheme         | effective charge |
      | credit approval_indiv_pl      | Scheme         | effective charge |
      | post approval_indiv_pl        | Scheme         | effective charge |
      | disbursal_indiv_pl            | Scheme         | effective charge |
      | disbursal_indiv_subsequent_pl | Scheme         | effective charge |

@NotImplemented
    Examples:
      | Var_Stage                 | Product_Scheme |
      | Recommendation            | Product        |
      | Reconsideration           | Product        |
      | Tranche Initiation        | Product        |
      | App update recommendation | Product        |
      | Recommendation            | Scheme         |
      | Reconsideration           | Scheme         |
      | Tranche Initiation        | Scheme         |
      | App update recommendation | Scheme         |


  @ImplementedBy-manish.yadav2
  Scenario Outline: ACAUTOCAS-2842:  Mapping Charge policy with product and scheme for contract type as loan or lease in charge policy master
    Given user logged in "Common Masters" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And charge policy is already existing with contract type field maintained as "<Contract_Type>"
    And user navigates to products master to create new product
    And user reads data from the excel file "<ChargesWB>" under sheet "<Charges_SheetName>" and row <Charges_rowNum>
    And "<Product_Scheme>" is made "<Contract_Type>" specific
    When user maps the charge policy with "<Product_Scheme>"
    Then only those charge policies should be visible which have "<Contract_Type>" contract type mapped
#  For example - a product is made lease specific, so while mapping charge policy,
#  only those polices should be displayed which have contract type as lease and same should be for loan.
    @Release3
    Examples:
      | Contract_Type | ChargesWB    | Charges_SheetName      | Charges_rowNum | Product_Scheme |
      | Loan          | charges.xlsx | charge_code_defination | 2              | Product        |
      #| Lease         |

    @NotImplemented #for lease it was discussed they will be removed
    Examples:
      | Contract_Type | Product_Scheme |
      | Lease         | Scheme         |
      | Loan          | Scheme         |


  @ImplementedBy-manish.yadav2
  Scenario Outline: ACAUTOCAS-2647:  Periodic Charges Details editable under Effective Charge Amount details hyperlink against Periodic Charges at <Var_Stage> Stage
    Given user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user opens an application at "<Var_Stage>" stage from application grid
    And user navigate to Charges section of "<Var_Stage>"
    When user clicks on details hyperlink under effective charge amount hyperlink against Periodic Charges
    Then a modal window of application charge details should get opened with fields "<Editable_Fields>" as editable
    And user should be able to edit the "<Editable_Fields>" periodic charges specific fields on application charge details modal window with value as "<Charge_Nature>"
    @Release3
    Examples:
      | Var_Stage                     | Editable_Fields                 | Charge_Nature              |
      | post approval_indiv_pl        | Charge Frequency                | Weekly                     |
      | post approval_indiv_pl        | Charge Frequency                | Monthly                    |
      | post approval_indiv_pl        | Charge Frequency                | Daily                      |
      | post approval_indiv_pl        | Charge Frequency                | Quarterly                  |
      | post approval_indiv_pl        | Charge Frequency                | Half Yearly                |
      | post approval_indiv_pl        | Charge Frequency                | BiWeekly                   |
      | post approval_indiv_pl        | Charge Frequency                | Bi Monthly                 |
      | post approval_indiv_pl        | Charge Adjustment Type          | Collectible                |
      | post approval_indiv_pl        | Charge Adjustment Type          | Collectible and Deductible |
      | post approval_indiv_pl        | Charge Adjustment Type          | Deductible                 |
      | post approval_indiv_pl        | Is Charge Not applicable in CAS | Checked or Unchecked       |
      | post approval_indiv_pl        | Follow Loan Tenure              | Unchecked                  |
      | post approval_indiv_pl        | Start Date                      | business date              |
      | post approval_indiv_pl        | End Date                        |                            |
      | dde_indiv_pl                  | Charge Frequency                | Weekly                     |
      | dde_indiv_pl                  | Charge Frequency                | Monthly                    |
      | dde_indiv_pl                  | Charge Frequency                | Daily                      |
      | dde_indiv_pl                  | Charge Frequency                | Quarterly                  |
      | dde_indiv_pl                  | Charge Frequency                | Half Yearly                |
      | dde_indiv_pl                  | Charge Frequency                | Bi Weekly                  |
      | dde_indiv_pl                  | Charge Frequency                | Bi Monthly                 |
      | dde_indiv_pl                  | Charge Adjustment Type          | Collectible                |
      | dde_indiv_pl                  | Charge Adjustment Type          | Collectible and Deductible |
      | dde_indiv_pl                  | Charge Adjustment Type          | Deductible                 |
      | dde_indiv_pl                  | Is Charge Not applicable in CAS | Checked or Unchecked       |
      | dde_indiv_pl                  | Follow Loan Tenure              | Unchecked                  |
      | dde_indiv_pl                  | Start Date                      | business date              |
      | dde_indiv_pl                  | End Date                        |                            |
      | disbursal_indiv_pl            | Charge Frequency                | Weekly                     |
      | disbursal_indiv_pl            | Charge Frequency                | Monthly                    |
      | disbursal_indiv_pl            | Charge Frequency                | Daily                      |
      | disbursal_indiv_pl            | Charge Frequency                | Quarterly                  |
      | disbursal_indiv_pl            | Charge Frequency                | Half Yearly                |
      | disbursal_indiv_pl            | Charge Frequency                | Bi Weekly                  |
      | disbursal_indiv_pl            | Charge Frequency                | Bi Monthly                 |
      | disbursal_indiv_pl            | Charge Adjustment Type          | Collectible                |
      | disbursal_indiv_pl            | Charge Adjustment Type          | Collectible and Deductible |
      | disbursal_indiv_pl            | Charge Adjustment Type          | Deductible                 |
      | disbursal_indiv_pl            | Is Charge Not applicable in CAS | Checked or Unchecked       |
      | disbursal_indiv_pl            | Follow Loan Tenure              | Unchecked                  |
      | disbursal_indiv_pl            | Start Date                      | business date              |
      | disbursal_indiv_pl            | End Date                        |                            |
      | recommendation_indiv_pl       | Charge Frequency                | Weekly                     |
      | recommendation_indiv_pl       | Charge Frequency                | Monthly                    |
      | recommendation_indiv_pl       | Charge Frequency                | Daily                      |
      | recommendation_indiv_pl       | Charge Frequency                | Quarterly                  |
      | recommendation_indiv_pl       | Charge Frequency                | Half Yearly                |
      | recommendation_indiv_pl       | Charge Frequency                | Bi Weekly                  |
      | recommendation_indiv_pl       | Charge Frequency                | Bi Monthly                 |
      | recommendation_indiv_pl       | Charge Adjustment Type          | Collectible                |
      | recommendation_indiv_pl       | Charge Adjustment Type          | Collectible and Deductible |
      | recommendation_indiv_pl       | Charge Adjustment Type          | Deductible                 |
      | recommendation_indiv_pl       | Is Charge Not applicable in CAS | Checked or Unchecked       |
      | recommendation_indiv_pl       | Follow Loan Tenure              | Unchecked                  |
      | recommendation_indiv_pl       | Start Date                      | business date              |
      | recommendation_indiv_pl       | End Date                        |                            |
      | credit approval_indiv_pl      | Charge Frequency                | Weekly                     |
      | credit approval_indiv_pl      | Charge Frequency                | Monthly                    |
      | credit approval_indiv_pl      | Charge Frequency                | Daily                      |
      | credit approval_indiv_pl      | Charge Frequency                | Quarterly                  |
      | credit approval_indiv_pl      | Charge Frequency                | Half Yearly                |
      | credit approval_indiv_pl      | Charge Frequency                | Bi Weekly                  |
      | credit approval_indiv_pl      | Charge Frequency                | Bi Monthly                 |
      | credit approval_indiv_pl      | Charge Adjustment Type          | Collectible                |
      | credit approval_indiv_pl      | Charge Adjustment Type          | Collectible and Deductible |
      | credit approval_indiv_pl      | Charge Adjustment Type          | Deductible                 |
      | credit approval_indiv_pl      | Is Charge Not applicable in CAS | Checked or Unchecked       |
      | credit approval_indiv_pl      | Follow Loan Tenure              | Unchecked                  |
      | credit approval_indiv_pl      | Start Date                      | business date              |
      | credit approval_indiv_pl      | End Date                        |                            |
      | credit approval_indiv_pl      | Charge Adjustment Type          | Collectible and Deductible |
      | credit approval_indiv_pl      | Charge Adjustment Type          | Deductible                 |
      | disbursal_indiv_subsequent_pl | Charge Frequency                | Weekly                     |
      | disbursal_indiv_subsequent_pl | Charge Frequency                | Monthly                    |
      | disbursal_indiv_subsequent_pl | Charge Frequency                | Daily                      |
      | disbursal_indiv_subsequent_pl | Charge Frequency                | Quarterly                  |
      | disbursal_indiv_subsequent_pl | Charge Frequency                | Half Yearly                |
      | disbursal_indiv_subsequent_pl | Charge Frequency                | Bi Weekly                  |
      | disbursal_indiv_subsequent_pl | Charge Frequency                | Bi Monthly                 |
      | disbursal_indiv_subsequent_pl | Charge Adjustment Type          | Collectible                |
      | disbursal_indiv_subsequent_pl | Is Charge Not applicable in CAS | Checked or Unchecked       |
      | disbursal_indiv_subsequent_pl | Follow Loan Tenure              | Unchecked                  |
      | disbursal_indiv_subsequent_pl | Start Date                      | business date              |
      | disbursal_indiv_subsequent_pl | End Date                        |                            |

@NotImplemented
    Examples:
      | Var_Stage                 | Editable_Fields                 | Charge_Nature              |
      | Reconsideration           | Charge Frequency                | Weekly                     |
      | Reconsideration           | Charge Frequency                | Monthly                    |
      | Reconsideration           | Charge Frequency                | Daily                      |
      | Reconsideration           | Charge Frequency                | Quarterly                  |
      | Reconsideration           | Charge Frequency                | Half Yearly                |
      | Reconsideration           | Charge Frequency                | Bi Weekly                  |
      | Reconsideration           | Charge Frequency                | Bi Monthly                 |
      | Reconsideration           | Charge Adjustment Type          | Collectible                |
      | Reconsideration           | Charge Adjustment Type          | Collectible and Deductible |
      | Reconsideration           | Charge Adjustment Type          | Deductible                 |
      | Reconsideration           | Is Charge Not applicable in CAS | Checked or Unchecked       |
      | Reconsideration           | Follow Loan Tenure              | Unchecked                  |
      | Reconsideration           | Start Date                      | business date              |
      | Reconsideration           | End Date                        |                            |
      | Post Approval             | Charge Frequency                | Weekly                     |
      | Post Approval             | Charge Frequency                | Monthly                    |
      | Post Approval             | Charge Frequency                | Daily                      |
      | Post Approval             | Charge Frequency                | Quarterly                  |
      | Post Approval             | Charge Frequency                | Half Yearly                |
      | Post Approval             | Charge Frequency                | BiWeekly                   |
      | Post Approval             | Charge Frequency                | Bi Monthly                 |
      | Post Approval             | Charge Adjustment Type          | Collectible                |
      | Post Approval             | Charge Adjustment Type          | Collectible and Deductible |
      | Post Approval             | Charge Adjustment Type          | Deductible                 |
      | Post Approval             | Is Charge Not applicable in CAS | Checked or Unchecked       |
      | Post Approval             | Follow Loan Tenure              | Unchecked                  |
      | Post Approval             | Start Date                      | business date              |
      | Post Approval             | End Date                        |                            |
      | Tranche Initiation        | Charge Frequency                | Weekly                     |
      | Tranche Initiation        | Charge Frequency                | Monthly                    |
      | Tranche Initiation        | Charge Frequency                | Daily                      |
      | Tranche Initiation        | Charge Frequency                | Quarterly                  |
      | Tranche Initiation        | Charge Frequency                | Half Yearly                |
      | Tranche Initiation        | Charge Frequency                | BiWeekly                   |
      | Tranche Initiation        | Charge Frequency                | Bi Monthly                 |
      | Tranche Initiation        | Charge Adjustment Type          | Collectible                |
      | Tranche Initiation        | Charge Adjustment Type          | Collectible and Deductible |
      | Tranche Initiation        | Charge Adjustment Type          | Deductible                 |
      | Tranche Initiation        | Is Charge Not applicable in CAS | Checked or Unchecked       |
      | Tranche Initiation        | Follow Loan Tenure              | Unchecked                  |
      | Tranche Initiation        | Start Date                      | business date              |
      | Tranche Initiation        | End Date                        |                            |
      | App Update Recommendation | Charge Frequency                | Weekly                     |
      | App Update Recommendation | Charge Frequency                | Monthly                    |
      | App Update Recommendation | Charge Frequency                | Daily                      |
      | App Update Recommendation | Charge Frequency                | Quarterly                  |
      | App Update Recommendation | Charge Frequency                | Half Yearly                |
      | App Update Recommendation | Charge Frequency                | BiWeekly                   |
      | App Update Recommendation | Charge Frequency                | Bi Monthly                 |
      | App Update Recommendation | Charge Adjustment Type          | Collectible                |
      | App Update Recommendation | Charge Adjustment Type          | Collectible and Deductible |
      | App Update Recommendation | Charge Adjustment Type          | Deductible                 |
      | App Update Recommendation | Is Charge Not applicable in CAS | Checked or Unchecked       |
      | App Update Recommendation | Follow Loan Tenure              | Unchecked                  |
      | App Update Recommendation | Start Date                      | business date              |
      | App Update Recommendation | End Date                        |                            |

  @ImplementedBy-manish.yadav2
  Scenario Outline: ACAUTOCAS-2844:  Slab Based Periodic Charges editable on Charges Screen at  <Var_Stage>  Stage
    Given user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user opens an application at "<Var_Stage>" stage from application grid
    And user navigate to Charges section of "<Var_Stage>"
    When user clicks on details hyperlink under effective charge amount hyperlink against Periodic Charges
    Then a modal window of periodic charges details should get opened with fields "<Editable_Fields>" as editable
    And user should be able to edit the "<Editable_Fields>" field for "<Charge_Definition_Type>" periodic charges
    And user should be able to save the charges
    @Release3
    Examples:
      | Var_Stage                     | Editable_Fields                 | Charge_Definition_Type |
      | dde_indiv_pl                  | Charge Frequency                | Slab Based             |
      | dde_indiv_pl                  | Charge Adjustment Type          | Slab Based             |
      | dde_indiv_pl                  | Effective Amount (Periodic)     | Slab Based             |
      | dde_indiv_pl                  | Start Date                      | Slab Based             |
      | dde_indiv_pl                  | End Date                        | Slab Based             |
      | dde_indiv_pl                  | Follow Loan Tenure              | Slab Based             |
      | dde_indiv_pl                  | Is Charge Not applicable in CAS | Slab Based             |
      | credit approval_indiv_pl      | Charge Frequency                | Slab Based             |
      | credit approval_indiv_pl      | Charge Adjustment Type          | Slab Based             |
      | credit approval_indiv_pl      | Effective Amount (Periodic)     | Slab Based             |
      | credit approval_indiv_pl      | Start Date                      | Slab Based             |
      | credit approval_indiv_pl      | End Date                        | Slab Based             |
      | credit approval_indiv_pl      | Follow Loan Tenure              | Slab Based             |
      | credit approval_indiv_pl      | Is Charge Not applicable in CAS | Slab Based             |
      | post approval_indiv_pl        | Charge Frequency                | Slab Based             |
      | post approval_indiv_pl        | Charge Adjustment Type          | Slab Based             |
      | post approval_indiv_pl        | Effective Amount (Periodic)     | Slab Based             |
      | post approval_indiv_pl        | Start Date                      | Slab Based             |
      | post approval_indiv_pl        | End Date                        | Slab Based             |
      | post approval_indiv_pl        | Follow Loan Tenure              | Slab Based             |
      | post approval_indiv_pl        | Is Charge Not applicable in CAS | Slab Based             |
      | disbursal_indiv_pl            | Charge Frequency                | Slab Based             |
      | disbursal_indiv_pl            | Charge Adjustment Type          | Slab Based             |
      | disbursal_indiv_pl            | Effective Amount (Periodic)     | Slab Based             |
      | disbursal_indiv_pl            | Start Date                      | Slab Based             |
      | disbursal_indiv_pl            | End Date                        | Slab Based             |
      | disbursal_indiv_pl            | Follow Loan Tenure              | Slab Based             |
      | disbursal_indiv_pl            | Is Charge Not applicable in CAS | Slab Based             |
      | disbursal_indiv_subsequent_pl | Charge Frequency                | Slab Based             |
      | disbursal_indiv_subsequent_pl | Charge Adjustment Type          | Slab Based             |
      | disbursal_indiv_subsequent_pl | Effective Amount (Periodic)     | Slab Based             |
      | disbursal_indiv_subsequent_pl | Start Date                      | Slab Based             |
      | disbursal_indiv_subsequent_pl | End Date                        | Slab Based             |
      | disbursal_indiv_subsequent_pl | Follow Loan Tenure              | Slab Based             |
      | disbursal_indiv_subsequent_pl | Is Charge Not applicable in CAS | Slab Based             |

    @NotImplemented
    Examples:
      | Var_Stage                 | Editable_Fields                 | Charge_Definition_Type |
      | Tranche Initiation        | Charge Frequency                | Slab Based             |
      | Tranche Initiation        | Charge Adjustment Type          | Slab Based             |
      | Tranche Initiation        | Effective Amount                | Slab Based             |
      | Tranche Initiation        | Start Date                      | Slab Based             |
      | Tranche Initiation        | End Date                        | Slab Based             |
      | Tranche Initiation        | Follow Loan Tenure              | Slab Based             |
      | Tranche Initiation        | Is Charge Not applicable in CAS | Slab Based             |
      | App Update Recommendation | Charge Frequency                | Slab Based             |
      | App Update Recommendation | Charge Adjustment Type          | Slab Based             |
      | App Update Recommendation | Effective Amount                | Slab Based             |
      | App Update Recommendation | Start Date                      | Slab Based             |
      | App Update Recommendation | End Date                        | Slab Based             |
      | App Update Recommendation | Follow Loan Tenure              | Slab Based             |
      | App Update Recommendation | Is Charge Not applicable in CAS | Slab Based             |

  @NotImplemented
 
    #subtask created for ACAUTOCAS-6481
    #new JIRA created for issue ACAUTOCAS-6482
  Scenario Outline: ACAUTOCAS-6481: Chargecode nature other than receivable should not be allowed while defining periodic charges in Master
    Given user logged in "Common Masters" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user navigates to charge code master to create periodic charge code
    And user creates periodic charge code, description with other details
    And user maps the transaction type by clicking on transaction mapping button
    And user verifes default value of "<parameters>" parameters populated as "<param_value>"
    When user saves periodic charge code
    Then user should verify that chargecode nature other than receivable is not allowed while defining periodic charges
    Examples:

      | parameters               | param_value                               |
      | Financial Parameter Type | Computation Definition and Due Generation |
      | Chargecode Nature        | Receivable                                |
      | MIS Component Mapping    | Periodic Charge Amount                    |

  @NotImplemented
    
#subtask created for ACAUTOCAS-6501
  #new JIRA created for issue ACAUTOCAS-6482
  Scenario Outline: ACAUTOCAS-6501: Editing field values for Periodic Charges on Charges Screen at  "<Var_Stage>"  Stage
    Given user logged in "Common Masters" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And Loan application is at "<Var_Stage>" stage
    And user is already in charge details section post charge policy execution
    And periodic charges modal window is opened with fields "<Editable_Fields>"
    When user edits the field values for periodic charges in grid at "<Var_Stage>" Stage
    Then user should be able to edit the "<Editable_Fields>" field for "<Charge_Nature>"

    Examples:

      | Var_Stage                 | Editable_Fields                 | Charge_Nature              |
      | DDE                       | Charge Frequency                | Weekly                     |
      | DDE                       | Charge Frequency                | Monthly                    |
      | DDE                       | Charge Frequency                | Daily                      |
      | DDE                       | Charge Frequency                | Quarterly                  |
      | DDE                       | Charge Frequency                | Half Yearly                |
      | DDE                       | Charge Frequency                | Bi Weekly                  |
      | DDE                       | Charge Frequency                | Bi Monthly                 |
      | DDE                       | Charge Adjustment Type          | Collectible                |
      | DDE                       | Charge Adjustment Type          | Collectible and Deductible |
      | DDE                       | Charge Adjustment Type          | Deductible                 |
      | DDE                       | Is Charge Not applicable in CAS | Checked or Unchecked       |
      | DDE                       | Follow Loan Tenure              | Unchecked                  |
      | DDE                       | Start Date                      | business date              |
      | DDE                       | End Date                        |                            |
      | Recommendation            | Charge Frequency                | Weekly                     |
      | Recommendation            | Charge Frequency                | Monthly                    |
      | Recommendation            | Charge Frequency                | Daily                      |
      | Recommendation            | Charge Frequency                | Quarterly                  |
      | Recommendation            | Charge Frequency                | Half Yearly                |
      | Recommendation            | Charge Frequency                | Bi Weekly                  |
      | Recommendation            | Charge Frequency                | Bi Monthly                 |
      | Recommendation            | Charge Adjustment Type          | Collectible                |
      | Recommendation            | Charge Adjustment Type          | Collectible and Deductible |
      | Recommendation            | Charge Adjustment Type          | Deductible                 |
      | Recommendation            | Is Charge Not applicable in CAS | Checked or Unchecked       |
      | Recommendation            | Follow Loan Tenure              | Unchecked                  |
      | Recommendation            | Start Date                      | business date              |
      | Recommendation            | End Date                        |                            |
      | Disbursal                 | Charge Frequency                | Weekly                     |
      | Disbursal                 | Charge Frequency                | Monthly                    |
      | Disbursal                 | Charge Frequency                | Daily                      |
      | Disbursal                 | Charge Frequency                | Quarterly                  |
      | Disbursal                 | Charge Frequency                | Half Yearly                |
      | Disbursal                 | Charge Frequency                | Bi Weekly                  |
      | Disbursal                 | Charge Frequency                | Bi Monthly                 |
      | Disbursal                 | Charge Adjustment Type          | Collectible                |
      | Disbursal                 | Charge Adjustment Type          | Collectible and Deductible |
      | Disbursal                 | Charge Adjustment Type          | Deductible                 |
      | Disbursal                 | Is Charge Not applicable in CAS | Checked or Unchecked       |
      | Disbursal                 | Follow Loan Tenure              | Unchecked                  |
      | Disbursal                 | Start Date                      | business date              |
      | Disbursal                 | End Date                        |                            |
      | Credit Approval           | Charge Frequency                | Weekly                     |
      | Credit Approval           | Charge Frequency                | Monthly                    |
      | Credit Approval           | Charge Frequency                | Daily                      |
      | Credit Approval           | Charge Frequency                | Quarterly                  |
      | Credit Approval           | Charge Frequency                | Half Yearly                |
      | Credit Approval           | Charge Frequency                | Bi Weekly                  |
      | Credit Approval           | Charge Frequency                | Bi Monthly                 |
      | Credit Approval           | Charge Adjustment Type          | Collectible                |
      | Credit Approval           | Charge Adjustment Type          | Collectible and Deductible |
      | Credit Approval           | Charge Adjustment Type          | Deductible                 |
      | Credit Approval           | Is Charge Not applicable in CAS | Checked or Unchecked       |
      | Credit Approval           | Follow Loan Tenure              | Unchecked                  |
      | Credit Approval           | Start Date                      | business date              |
      | Credit Approval           | End Date                        |                            |
      | Reconsideration           | Charge Frequency                | Weekly                     |
      | Reconsideration           | Charge Frequency                | Monthly                    |
      | Reconsideration           | Charge Frequency                | Daily                      |
      | Reconsideration           | Charge Frequency                | Quarterly                  |
      | Reconsideration           | Charge Frequency                | Half Yearly                |
      | Reconsideration           | Charge Frequency                | Bi Weekly                  |
      | Reconsideration           | Charge Frequency                | Bi Monthly                 |
      | Reconsideration           | Charge Adjustment Type          | Collectible                |
      | Reconsideration           | Charge Adjustment Type          | Collectible and Deductible |
      | Reconsideration           | Charge Adjustment Type          | Deductible                 |
      | Reconsideration           | Is Charge Not applicable in CAS | Checked or Unchecked       |
      | Reconsideration           | Follow Loan Tenure              | Unchecked                  |
      | Reconsideration           | Start Date                      | business date              |
      | Reconsideration           | End Date                        |                            |
      | Post Approval             | Charge Frequency                | Weekly                     |
      | Post Approval             | Charge Frequency                | Monthly                    |
      | Post Approval             | Charge Frequency                | Daily                      |
      | Post Approval             | Charge Frequency                | Quarterly                  |
      | Post Approval             | Charge Frequency                | Half Yearly                |
      | Post Approval             | Charge Frequency                | BiWeekly                   |
      | Post Approval             | Charge Frequency                | Bi Monthly                 |
      | Post Approval             | Charge Adjustment Type          | Collectible                |
      | Post Approval             | Charge Adjustment Type          | Collectible and Deductible |
      | Post Approval             | Charge Adjustment Type          | Deductible                 |
      | Post Approval             | Is Charge Not applicable in CAS | Checked or Unchecked       |
      | Post Approval             | Follow Loan Tenure              | Unchecked                  |
      | Post Approval             | Start Date                      | business date              |
      | Post Approval             | End Date                        |                            |
      | Tranche Initiation        | Charge Frequency                | Weekly                     |
      | Tranche Initiation        | Charge Frequency                | Monthly                    |
      | Tranche Initiation        | Charge Frequency                | Daily                      |
      | Tranche Initiation        | Charge Frequency                | Quarterly                  |
      | Tranche Initiation        | Charge Frequency                | Half Yearly                |
      | Tranche Initiation        | Charge Frequency                | BiWeekly                   |
      | Tranche Initiation        | Charge Frequency                | Bi Monthly                 |
      | Tranche Initiation        | Charge Adjustment Type          | Collectible                |
      | Tranche Initiation        | Charge Adjustment Type          | Collectible and Deductible |
      | Tranche Initiation        | Charge Adjustment Type          | Deductible                 |
      | Tranche Initiation        | Is Charge Not applicable in CAS | Checked or Unchecked       |
      | Tranche Initiation        | Follow Loan Tenure              | Unchecked                  |
      | Tranche Initiation        | Start Date                      | business date              |
      | Tranche Initiation        | End Date                        |                            |
      | App Update Recommendation | Charge Frequency                | Weekly                     |
      | App Update Recommendation | Charge Frequency                | Monthly                    |
      | App Update Recommendation | Charge Frequency                | Daily                      |
      | App Update Recommendation | Charge Frequency                | Quarterly                  |
      | App Update Recommendation | Charge Frequency                | Half Yearly                |
      | App Update Recommendation | Charge Frequency                | BiWeekly                   |
      | App Update Recommendation | Charge Frequency                | Bi Monthly                 |
      | App Update Recommendation | Charge Adjustment Type          | Collectible                |
      | App Update Recommendation | Charge Adjustment Type          | Collectible and Deductible |
      | App Update Recommendation | Charge Adjustment Type          | Deductible                 |
      | App Update Recommendation | Is Charge Not applicable in CAS | Checked or Unchecked       |
      | App Update Recommendation | Follow Loan Tenure              | Unchecked                  |
      | App Update Recommendation | Start Date                      | business date              |
      | App Update Recommendation | End Date                        |                            |
  @NotImplemented
    
    #  endDate	This refers to end date of periodic charge which can not exceed loan maturity date.
#  It is required if Follow Loan Maturity is N.
  #for issue - ACAUTOCAS-6962
  #CAS-118696
  Scenario Outline: ACAUTOCAS-2843:End Date mandatory while editing periodic Charges Details under Effective Charge Amount details hyperlink against Periodic Charges at  "<Var_Stage>"  Stage
    Given user logged in "Common Masters" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And Loan application is at "<Var_Stage>" stage
    And user clicks on details hyperlink under effective charge amount hyperlink against Periodic Charges at "<Var_Stage>" Stage
    When user checks the "<Flag>" value as "<Flag_Value>"
    And user updates periodic charge end date which is mandatory as greater than loan maturity date
    Then user should get proper error message
    #that end date of periodic charges should not exceed loan maturity date
    Examples:

      | Var_Stage                 | Flag               | Flag_Value |
      | DDE                       | Follow Loan Tenure | Y          |
      | Recommendation            | Follow Loan Tenure | Y          |
      | Credit Approval           | Follow Loan Tenure | Y          |
      | Reconsideration           | Follow Loan Tenure | Y          |
      | Post Approval             | Follow Loan Tenure | Y          |
      | Disbursal                 | Follow Loan Tenure | Y          |
      | App Update Recommendation | Follow Loan Tenure | Y          |
      | Tranche Initiation        | Follow Loan Tenure | Y          |

      #| Post Approval        | Follow Loan Tenure | N          |
      #| DDE                  | Follow Loan Tenure | N          |
      #| Credit Approval      | Follow Loan Tenure | N          |
      # | Disbursal            | Follow Loan Tenure | N          |
      #| Reconsideration      | Follow Loan Tenure | N          |
      #| Recommendation       | Follow Loan Tenure | N          |
  @NotImplemented

  #  #It should be auto populated as loan end date in case follow loan tenure is yes.
 #CAS-118696
  Scenario Outline: ACAUTOCAS-996: End Date should be auto populated as loan end date while editing periodic Charges Details at  "<Var_Stage>"  Stage
    Given user logged in "Common Masters" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And Loan application is at "<Var_Stage>" stage
    And user clicks on details hyperlink under effective charge amount hyperlink against Periodic Charges at "<Var_Stage>" Stage
    When user already selected "<Flag>" flag value as "<Flag_Value>"
    Then end date should get auto populated as loan end date

    Examples:

      | Var_Stage                 | Flag               | Flag_Value |
      | DDE                       | Follow Loan Tenure | Y          |
      | Recommendation            | Follow Loan Tenure | Y          |
      | Credit Approval           | Follow Loan Tenure | Y          |
      | Reconsideration           | Follow Loan Tenure | Y          |
      | Post Approval             | Follow Loan Tenure | Y          |
      | Disbursal                 | Follow Loan Tenure | Y          |
      | App Update Recommendation | Follow Loan Tenure | Y          |
      | Tranche Initiation        | Follow Loan Tenure | Y          |
  @NotImplemented

  #CAS-118696
  Scenario Outline: ACAUTOCAS-997: Validation on Start Date should not be greater than business date and interest start date while editing periodic Charges Details at  "<Var_Stage>"  Stage
    Given user logged in "Common Masters" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And Loan application is at "<Var_Stage>" stage
    And user clicks on details hyperlink under effective charge amount hyperlink against Periodic Charges at "<Var_Stage>" Stage
    And user already selected "<Flag>" flag value as "<Flag_Value>"
    When user updates start date as less than "<int_business_Date>"
    Then user should get proper error message
    #It should be greater than current business date and interest start date.

    Examples:

      | Var_Stage                 | Flag               | Flag_Value | int_business_Date   |
      | Post Approval             | Follow Loan Tenure | Y          | business date       |
      | DDE                       | Follow Loan Tenure | Y          | business date       |
      | Credit Approval           | Follow Loan Tenure | Y          | business date       |
      | Disbursal                 | Follow Loan Tenure | Y          | business date       |
      | Recommendation            | Follow Loan Tenure | Y          | business date       |
      | Reconsideration           | Follow Loan Tenure | Y          | business date       |
      | Tranche Initiation        | Follow Loan Tenure | Y          | business date       |
      | App Update Recommendation | Follow Loan Tenure | Y          | business date       |
      | Post Approval             | Follow Loan Tenure | Y          | interest start date |
      | DDE                       | Follow Loan Tenure | Y          | interest start date |
      | Credit Approval           | Follow Loan Tenure | Y          | interest start date |
      | Disbursal                 | Follow Loan Tenure | Y          | interest start date |
      | Recommendation            | Follow Loan Tenure | Y          | interest start date |
      | Reconsideration           | Follow Loan Tenure | Y          | interest start date |
      | Tranche Initiation        | Follow Loan Tenure | Y          | interest start date |
      | App Update Recommendation | Follow Loan Tenure | Y          | interest start date |
  @NotImplemented
    
    #subtask created for ACAUTOCAS-6502
    #new JIRA created for issue ACAUTOCAS-6482
  Scenario Outline: ACAUTOCAS-6502: Editing field values for Slab Based Periodic Charges on Charges Screen at  "<Var_Stage>"  Stage
    Given user logged in "Common Masters" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And Loan application is at "<Var_Stage>" stage
    And user is already in charge details section post charge policy execution
    And periodic charges modal window is opened with fields "<Editable_Fields>" as editable for "<Charge_Definition_Type>"
    When user edits the field values for periodic charges in grid at "<Var_Stage>" Stage
    Then user should be able to edit the "<Editable_Fields>" field for "<Charge_Definition_Type>" periodic charges

    Examples:

      | Var_Stage                 | Editable_Fields                 | Charge_Definition_Type |
      | DDE                       | Charge Frequency                | Slab Based             |
      | DDE                       | Charge Adjustment Type          | Slab Based             |
      | DDE                       | Effective Amount                | Slab Based             |
      | DDE                       | Start Date                      | Slab Based             |
      | DDE                       | End Date                        | Slab Based             |
      | DDE                       | Follow Loan Tenure              | Slab Based             |
      | DDE                       | Is Charge Not applicable in CAS | Slab Based             |
      | Recommendation            | Charge Frequency                | Slab Based             |
      | Recommendation            | Charge Adjustment Type          | Slab Based             |
      | Recommendation            | Effective Amount                | Slab Based             |
      | Recommendation            | Start Date                      | Slab Based             |
      | Recommendation            | End Date                        | Slab Based             |
      | Recommendation            | Follow Loan Tenure              | Slab Based             |
      | Recommendation            | Is Charge Not applicable in CAS | Slab Based             |
#     | DDE             | Slab From              | Slab Based             |
#     | DDE             | Slab To                | Slab Based             |
      | Credit Approval           | Charge Frequency                | Slab Based             |
      | Credit Approval           | Charge Adjustment Type          | Slab Based             |
      | Credit Approval           | Effective Amount                | Slab Based             |
      | Credit Approval           | Start Date                      | Slab Based             |
      | Credit Approval           | End Date                        | Slab Based             |
      | Credit Approval           | Follow Loan Tenure              | Slab Based             |
      | Credit Approval           | Is Charge Not applicable in CAS | Slab Based             |
      | Reconsideration           | Charge Frequency                | Slab Based             |
      | Reconsideration           | Charge Adjustment Type          | Slab Based             |
      | Reconsideration           | Effective Amount                | Slab Based             |
      | Reconsideration           | Start Date                      | Slab Based             |
      | Reconsideration           | End Date                        | Slab Based             |
      | Reconsideration           | Follow Loan Tenure              | Slab Based             |
      | Reconsideration           | Is Charge Not applicable in CAS | Slab Based             |
      | Post Approval             | Charge Frequency                | Slab Based             |
      | Post Approval             | Charge Adjustment Type          | Slab Based             |
      | Post Approval             | Effective Amount                | Slab Based             |
      | Post Approval             | Start Date                      | Slab Based             |
      | Post Approval             | End Date                        | Slab Based             |
      | Post Approval             | Follow Loan Tenure              | Slab Based             |
      | Post Approval             | Is Charge Not applicable in CAS | Slab Based             |
      | Disbursal                 | Charge Frequency                | Slab Based             |
      | Disbursal                 | Charge Adjustment Type          | Slab Based             |
      | Disbursal                 | Effective Amount                | Slab Based             |
      | Disbursal                 | Start Date                      | Slab Based             |
      | Disbursal                 | End Date                        | Slab Based             |
      | Disbursal                 | Follow Loan Tenure              | Slab Based             |
      | Disbursal                 | Is Charge Not applicable in CAS | Slab Based             |
      | Tranche Initiation        | Charge Frequency                | Slab Based             |
      | Tranche Initiation        | Charge Adjustment Type          | Slab Based             |
      | Tranche Initiation        | Effective Amount                | Slab Based             |
      | Tranche Initiation        | Start Date                      | Slab Based             |
      | Tranche Initiation        | End Date                        | Slab Based             |
      | Tranche Initiation        | Follow Loan Tenure              | Slab Based             |
      | Tranche Initiation        | Is Charge Not applicable in CAS | Slab Based             |
      | App Update Recommendation | Charge Frequency                | Slab Based             |
      | App Update Recommendation | Charge Adjustment Type          | Slab Based             |
      | App Update Recommendation | Effective Amount                | Slab Based             |
      | App Update Recommendation | Start Date                      | Slab Based             |
      | App Update Recommendation | End Date                        | Slab Based             |
      | App Update Recommendation | Follow Loan Tenure              | Slab Based             |
      | App Update Recommendation | Is Charge Not applicable in CAS | Slab Based             |
  @NotImplemented
    
#subtask created for issue ACAUTOCAS-6482
  Scenario Outline: ACAUTOCAS-2648: Effective Charge amount and Effective Rate should not be greater than maximum values defined at charge definition level at  "<Var_Stage>"  Stage
    Given user logged in "Common Masters" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And Loan application is at "<Var_Stage>" stage
    And user is already in periodic charge details section post charge policy execution
    When user edits the "<Editable_Fields>" field with values greater than values defined at charge definition level
    And user saves the record
    Then user verifies that "<Editable_Fields>" is replaced with the maximum amount maintained at charge definition level
    #And there will be no validation message on the screen while saving the record

    Examples:

      | Var_Stage                 | Editable_Fields  |
      | DDE                       | Charge Rate      |
      | DDE                       | Effective Amount |
      | Recommendation            | Charge Rate      |
      | Recommendation            | Effective Amount |
      | Credit Approval           | Charge Rate      |
      | Credit Approval           | Effective Amount |
      | Reconsideration           | Charge Rate      |
      | Reconsideration           | Effective Amount |
      | Post Approval             | Charge Rate      |
      | Post Approval             | Effective Amount |
      | Disbursal                 | Charge Rate      |
      | Disbursal                 | Effective Amount |
      | App Update Recommendation | Charge Rate      |
      | App Update Recommendation | Effective Amount |
      | Tranche Initiation        | Charge Rate      |
      | Tranche Initiation        | Effective Amount |
  @NotImplemented
    
    #new JIRA created ACAUTOCAS-6503
    #subtask created for issue ACAUTOCAS-6482
  Scenario Outline: ACAUTOCAS-6503: No Validation for charge values greater than maximum defined in policy while editing Effective Charge amount and Effective Rate at "<Var_Stage>"  Stage
    Given user logged in "Common Masters" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And Loan application is at "<Var_Stage>" stage
    And user edited the "<Editable_Fields>" field with values greater than values defined at charge definition level
    And user verifies that "<Editable_Fields>" is replaced with the maximum amount maintained at charge definition level
    When user verifies validation message on screen
    Then there will be no validation message while saving the record

    Examples:

      | Var_Stage                 | Editable_Fields  |
      | DDE                       | Charge Rate      |
      | DDE                       | Effective Amount |
      | Recommendation            | Charge Rate      |
      | Recommendation            | Effective Amount |
      | Credit Approval           | Charge Rate      |
      | Credit Approval           | Effective Amount |
      | Reconsideration           | Charge Rate      |
      | Reconsideration           | Effective Amount |
      | Post Approval             | Charge Rate      |
      | Post Approval             | Effective Amount |
      | Disbursal                 | Charge Rate      |
      | Disbursal                 | Effective Amount |
      | App Update Recommendation | Charge Rate      |
      | App Update Recommendation | Effective Amount |
      | Tranche Initiation        | Charge Rate      |
      | Tranche Initiation        | Effective Amount |
  @NotImplemented
    
#subtask created for issue ACAUTOCAS-6482
  Scenario Outline: ACAUTOCAS-2649:  Rules and Assignment Matrix mapping against Periodic Charges in Charge policy
    Given user logged in "Common Masters" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And Charge Policy already existed with periodic charges mapped
    When user checks rule based checkbox on charges details screen
    And user selects rule from rules List drop down for "<Charges_CASLMS>"
    And user selects assignment matrix from drop down for "<Charges_CASLMS>"
    And user maped rule matrix to periodic charges
    #And user should see the periodic charges checkbox already ticked in disabled mode
    And user executes charge policy
    Then periodic charges value should come according to the rule matrix
    Examples:

      | Charges_CASLMS  |
      | periodic charge |
  @NotImplemented

  Scenario Outline: ACAUTOCAS-2650:  Charge policy Execution according to Rules Matrix when all condition is "<True_False>" at "<Var_Stage>" stage
    Given user logged in "Common Masters" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And Charge Policy already existed with periodic charges mapped
    And user mapped rules matrix to periodic charges
    When user executes the charge policy when all condition is "<True_False>" on "<Var_Stage>" stage
    Then user should be able to get the result as "<Result>"

    Examples:

      | Var_Stage                 | True_False | Result                                                          |
      | DDE                       | True       | periodic Charges value should come according to the Rule Matrix |
      | DDE                       | False      | Proper Validation should come on executing the Charge Policy    |
      | Recommendation            | True       | periodic Charges value should come according to the Rule Matrix |
      | Recommendation            | False      | Proper Validation should come on executing the Charge Policy    |
      | Credit Approval           | True       | periodic Charges value should come according to the Rule Matrix |
      | Credit Approval           | False      | Proper Validation should come on executing the Charge Policy    |
      | Reconsideration           | True       | periodic Charges value should come according to the Rule Matrix |
      | Reconsideration           | False      | Proper Validation should come on executing the Charge Policy    |
      | Post Approval             | True       | periodic Charges value should come according to the Rule Matrix |
      | Post Approval             | False      | Proper Validation should come on executing the Charge Policy    |
      | Disbursal                 | True       | periodic Charges value should come according to the Rule Matrix |
      | Disbursal                 | False      | Proper Validation should come on executing the Charge Policy    |
      | App Update Recommendation | True       | periodic Charges value should come according to the Rule Matrix |
      | App Update Approval       | False      | Proper Validation should come on executing the Charge Policy    |
      | Tranche Initiation        | False      | Proper Validation should come on executing the Charge Policy    |
      | Tranche Approval          | False      | Proper Validation should come on executing the Charge Policy    |
  @NotImplemented
    
  Scenario Outline: ACAUTOCAS-2651:  Charge policy Execution at "<Var_Stage>" stage post deleting any periodic charge from policy
    Given user logged in "Common Masters" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And Charge Policy already existed with periodic charges mapped to it
    When user deletes any periodic charge from policy
    And user executes the charge policy at "<Var_Stage>" stage
    Then user should get only mapped charges post applying charges at "<Var_Stage>" stage

    Examples:

      | Var_Stage                 |
      | DDE                       |
      | Recommendation            |
      | Credit Approval           |
      | Reconsideration           |
      | Post Approval             |
      | Disbursal                 |
      | App Update Recommendation |
      | Tranche Initiation        |
  @NotImplemented

  Scenario Outline: ACAUTOCAS-2845:  Charge policy Execution at "<Var_Stage>" stage post updating any periodic charge from policy
    Given user logged in "Common Masters" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And Charge Policy already existed with periodic charges mapped to it
    When user updates any periodic charge from policy
    #And user attaches the charges to policy again post updating charges
    And user executes the charge policy at "<Var_Stage>" stage
    Then user should get updated charges post applying charges at "<Var_Stage>" stage

    Examples:

      | Var_Stage       |
      | DDE             |
      | Recommendation  |
      | Credit Approval |
      | Reconsideration |
      | Post Approval   |
      | Disbursal       |
  @NotImplemented

  Scenario Outline: ACAUTOCAS-2652:  Periodic Charge Details should be available on various Reports and Letters generated by System at  "<Var_Stage>"  Stage
    Given user logged in "Common Masters" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And Loan application is at "<Var_Stage>" stage
    When user clicks on generate "<Reports>" option on "<3dots_moreactions>" at "<Var_Stage>" stage
    Then user should see "<Reports>" with charges section having Periodic charge details operation type, charge name, bptype, bpname, charge amount , effective charge amount, differential amount split id etc. for all charges applied on application

    Examples:

      | Var_Stage                 | Reports                  | 3dots_moreactions |
      | Disbursal                 | Disbursal Report         | 3 dots            |
      | Disbursal                 | Delivery Order           | 3 dots            |
      | Disbursal                 | CAM Report               | 3 dots            |
      | DDE                       | CAM Report               | 3 dots            |
      | Credit Approval           | CAM Report               | 3 dots            |
      | Post Approval             | CAM Report               | 3 dots            |
      | Post Approval             | Generate Sanction Letter | 3 dots            |
      | DDE                       | CAM Report               | more actions      |
      | Recommendation            | CAM Report               | more actions      |
      | Credit Approval           | CAM Report               | more actions      |
      | Reconsideration           | CAM Report               | more actions      |
      | Post Approval             | CAM Report               | more actions      |
      | Post Approval             | Generate Sanction Letter | more actions      |
      | Disbursal                 | Disbursal Report         | more actions      |
      | Disbursal                 | Delivery Order           | more actions      |
      | Disbursal                 | CAM Report               | more actions      |
      | Tranche Initiation        | CAM Report               | more actions      |
      | Tranche Approval          | CAM Report               | more actions      |
      | App Update Recommendation | CAM Report               | more actions      |
      | App Update Approval       | CAM Report               | more actions      |
  @NotImplemented

    #subtask created for issue ACAUTOCAS-6482
    ##CAS-118696 Capability to capture Periodic Charge in CAS and flow to LMS
  Scenario Outline: ACAUTOCAS-2653:  Periodic Charges waiver and execution of charge policy on transaction at  "<Var_Stage>"  Stage
   #Waiver Service task is attached for Consumer Vehicle LOB and mapped with DDE Stage
    Given user logged in "Common Masters" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And Loan application is at "<Var_Stage>" stage
    When user navigates to Waiver "<initiate_approve>" Screen
    And user "<Waiver_Status>" waiver of any periodic charges on Waiver "<initiate_approve>" Screen
    And user completes the Waiver Through,To, seen tasks when user "<Waiver_Status>" Waiver "<initiate_approve>" Screen
    #And user saves record
    And user verifies the Charge value on Transaction at "<Var_Stage>" stage
    Then charges on transaction should be "<Enable_Disable>" post Waiver is "<initiate_approve>"
    #And user verifies the charge value on transaction

    Examples:
      | Var_Stage                 | Waiver_Status | Enable_Disable | initiate_approve |
      | DDE                       | initiates     | disabled       | initiation       |
      | Recommendation            | initiates     | disabled       | initiation       |
      | Credit Approval           | initiates     | disabled       | initiation       |
      | Reconsideration           | initiates     | disabled       | initiation       |
      | Post Approval             | initiates     | disabled       | initiation       |
      | Disbursal                 | initiates     | disabled       | initiation       |
      | Tranche Initiation        | initiates     | disabled       | initiation       |
      | App Update Recommendation | initiates     | disabled       | initiation       |
      | DDE                       | approves      | enabled        | approval         |
      | Recommendation            | approves      | enabled        | approval         |
      | Credit Approval           | approves      | enabled        | approval         |
      | Reconsideration           | approves      | enabled        | approval         |
      | Post Approval             | approves      | enabled        | approval         |
      | Disbursal                 | approves      | enabled        | approval         |
      | Tranche Initiation        | approves      | enabled        | approval         |
      | App Update Recommendation | approves      | enabled        | approval         |
  @NotImplemented

  #Periodic charges frequency should be more than loan frequency.
  #Frequency less than a month ( daily, weekly. biweekly and bi monthly) will not be supported in charges
    #CAS-118696
  Scenario Outline: ACAUTOCAS-2655: Validating Periodic Charges frequency with Loan Frequency
       #CAS-130027   GA 6.0 Cycle 1>>Periodic charge >>DDE>>NO validation for Periodic charge frequency less that Loan frequency
    Given user logged in "Common Masters" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And Loan application is at "<Var_Stage>" stage
    And periodic charges already attached with application
    When user takes loan frequency as "<Loan_Frequency>"
    And user changes the charge frequency to "<Charge_Frequency>"
    And user saves record
    Then user should "<Msg>"

    Examples:

      | Var_Stage                 | Loan_Frequency | Charge_Frequency | Msg                                                                                          |
      | DDE                       | Quarterly      | Monthly          | get validation message that Frequency of periodic charges should be more than loan frequency |
      | Recommendation            | Quarterly      | Monthly          | get validation message that Frequency of periodic charges should be more than loan frequency |
      | Credit Approval           | Quarterly      | Monthly          | get validation message that Frequency of periodic charges should be more than loan frequency |
      | Reconsideration           | Quarterly      | Monthly          | get validation message that Frequency of periodic charges should be more than loan frequency |
      | Disbursal                 | Quarterly      | Monthly          | get validation message that Frequency of periodic charges should be more than loan frequency |
      | Tranche Initiation        | Quarterly      | Monthly          | get validation message that Frequency of periodic charges should be more than loan frequency |
      | App Update Recommendation | Quarterly      | Monthly          | get validation message that Frequency of periodic charges should be more than loan frequency |
      | DDE                       | Quarterly      | Weekly           | get validation message that Frequency of periodic charges should be more than loan frequency |
      | Recommendation            | Quarterly      | Weekly           | get validation message that Frequency of periodic charges should be more than loan frequency |
      | Credit Approval           | Quarterly      | Weekly           | get validation message that Frequency of periodic charges should be more than loan frequency |
      | Reconsideration           | Quarterly      | Weekly           | get validation message that Frequency of periodic charges should be more than loan frequency |
      | Disbursal                 | Quarterly      | Weekly           | get validation message that Frequency of periodic charges should be more than loan frequency |
      | Tranche Initiation        | Quarterly      | Weekly           | get validation message that Frequency of periodic charges should be more than loan frequency |
      | App Update Recommendation | Quarterly      | Weekly           | get validation message that Frequency of periodic charges should be more than loan frequency |
      | DDE                       | Quarterly      | biweekly         | get validation message that Frequency of periodic charges should be more than loan frequency |
      | Recommendation            | Quarterly      | biweekly         | get validation message that Frequency of periodic charges should be more than loan frequency |
      | Credit Approval           | Quarterly      | biweekly         | get validation message that Frequency of periodic charges should be more than loan frequency |
      | Reconsideration           | Quarterly      | biweekly         | get validation message that Frequency of periodic charges should be more than loan frequency |
      | Disbursal                 | Quarterly      | biweekly         | get validation message that Frequency of periodic charges should be more than loan frequency |
      | Tranche Initiation        | Quarterly      | biweekly         | get validation message that Frequency of periodic charges should be more than loan frequency |
      | App Update Recommendation | Quarterly      | biweekly         | get validation message that Frequency of periodic charges should be more than loan frequency |
      | DDE                       | Quarterly      | daily            | get validation message that Frequency of periodic charges should be more than loan frequency |
      | Recommendation            | Quarterly      | daily            | get validation message that Frequency of periodic charges should be more than loan frequency |
      | Credit Approval           | Quarterly      | daily            | get validation message that Frequency of periodic charges should be more than loan frequency |
      | Reconsideration           | Quarterly      | daily            | get validation message that Frequency of periodic charges should be more than loan frequency |
      | Disbursal                 | Quarterly      | daily            | get validation message that Frequency of periodic charges should be more than loan frequency |
      | Tranche Initiation        | Quarterly      | daily            | get validation message that Frequency of periodic charges should be more than loan frequency |
      | App Update Recommendation | Quarterly      | daily            | get validation message that Frequency of periodic charges should be more than loan frequency |
      | DDE                       | Quarterly      | bi monthly       | get validation message that Frequency of periodic charges should be more than loan frequency |
      | Recommendation            | Quarterly      | bi monthly       | get validation message that Frequency of periodic charges should be more than loan frequency |
      | Credit Approval           | Quarterly      | bi monthly       | get validation message that Frequency of periodic charges should be more than loan frequency |
      | Reconsideration           | Quarterly      | bi monthly       | get validation message that Frequency of periodic charges should be more than loan frequency |
      | Disbursal                 | Quarterly      | bi monthly       | get validation message that Frequency of periodic charges should be more than loan frequency |
      | Tranche Initiation        | Quarterly      | bi monthly       | get validation message that Frequency of periodic charges should be more than loan frequency |
      | App Update Recommendation | Quarterly      | bi monthly       | get validation message that Frequency of periodic charges should be more than loan frequency |
      | DDE                       | Monthly        | Weekly           | get validation message that Frequency of periodic charges should be more than loan frequency |
      | Recommendation            | Monthly        | Weekly           | get validation message that Frequency of periodic charges should be more than loan frequency |
      | Credit Approval           | Monthly        | Weekly           | get validation message that Frequency of periodic charges should be more than loan frequency |
      | Reconsideration           | Monthly        | Weekly           | get validation message that Frequency of periodic charges should be more than loan frequency |
      | Disbursal                 | Monthly        | Weekly           | get validation message that Frequency of periodic charges should be more than loan frequency |
      | Tranche Initiation        | Monthly        | Weekly           | get validation message that Frequency of periodic charges should be more than loan frequency |
      | App Update Recommendation | Monthly        | Weekly           | get validation message that Frequency of periodic charges should be more than loan frequency |
      | DDE                       | Monthly        | biweekly         | get validation message that Frequency of periodic charges should be more than loan frequency |
      | Recommendation            | Monthly        | biweekly         | get validation message that Frequency of periodic charges should be more than loan frequency |
      | Credit Approval           | Monthly        | biweekly         | get validation message that Frequency of periodic charges should be more than loan frequency |
      | Reconsideration           | Monthly        | biweekly         | get validation message that Frequency of periodic charges should be more than loan frequency |
      | Disbursal                 | Monthly        | biweekly         | get validation message that Frequency of periodic charges should be more than loan frequency |
      | Tranche Initiation        | Monthly        | biweekly         | get validation message that Frequency of periodic charges should be more than loan frequency |
      | App Update Recommendation | Monthly        | biweekly         | get validation message that Frequency of periodic charges should be more than loan frequency |
      | DDE                       | Monthly        | daily            | get validation message that Frequency of periodic charges should be more than loan frequency |
      | Recommendation            | Monthly        | daily            | get validation message that Frequency of periodic charges should be more than loan frequency |
      | Credit Approval           | Monthly        | daily            | get validation message that Frequency of periodic charges should be more than loan frequency |
      | Reconsideration           | Monthly        | daily            | get validation message that Frequency of periodic charges should be more than loan frequency |
      | Disbursal                 | Monthly        | daily            | get validation message that Frequency of periodic charges should be more than loan frequency |
      | Tranche Initiation        | Monthly        | daily            | get validation message that Frequency of periodic charges should be more than loan frequency |
      | App Update Recommendation | Monthly        | daily            | get validation message that Frequency of periodic charges should be more than loan frequency |
      | DDE                       | Monthly        | bi monthly       | get validation message that Frequency of periodic charges should be more than loan frequency |
      | Recommendation            | Monthly        | bi monthly       | get validation message that Frequency of periodic charges should be more than loan frequency |
      | Credit Approval           | Monthly        | bi monthly       | get validation message that Frequency of periodic charges should be more than loan frequency |
      | Reconsideration           | Monthly        | bi monthly       | get validation message that Frequency of periodic charges should be more than loan frequency |
      | Disbursal                 | Monthly        | bi monthly       | get validation message that Frequency of periodic charges should be more than loan frequency |
      | Tranche Initiation        | Monthly        | bi monthly       | get validation message that Frequency of periodic charges should be more than loan frequency |
      | App Update Recommendation | Monthly        | bi monthly       | get validation message that Frequency of periodic charges should be more than loan frequency |
      | DDE                       | Monthly        | Monthly          | be able to move next stage                                                                   |
      | Recommendation            | Monthly        | Monthly          | be able to move next stage                                                                   |
      | Credit Approval           | Monthly        | Monthly          | be able to move next stage                                                                   |
      | Reconsideration           | Monthly        | Monthly          | be able to move next stage                                                                   |
      | Disbursal                 | Monthly        | Monthly          | be able to move next stage                                                                   |
      | Tranche Initiation        | Monthly        | Monthly          | be able to move next stage                                                                   |
      | App Update Recommendation | Monthly        | Monthly          | be able to move next stage                                                                   |
      | DDE                       | Monthly        | Quarterly        | be able to move next stage                                                                   |
      | Recommendation            | Monthly        | Quarterly        | be able to move next stage                                                                   |
      | Credit Approval           | Monthly        | Quarterly        | be able to move next stage                                                                   |
      | Reconsideration           | Monthly        | Quarterly        | be able to move next stage                                                                   |
      | Disbursal                 | Monthly        | Quarterly        | be able to move next stage                                                                   |
      | Tranche Initiation        | Monthly        | Quarterly        | be able to move next stage                                                                   |
      | App Update Recommendation | Monthly        | Quarterly        | be able to move next stage                                                                   |
      | DDE                       | bi monthly     | bi monthly       | be able to move next stage                                                                   |
      | Recommendation            | bi monthly     | bi monthly       | be able to move next stage                                                                   |
      | Credit Approval           | bi monthly     | bi monthly       | be able to move next stage                                                                   |
      | Reconsideration           | bi monthly     | bi monthly       | be able to move next stage                                                                   |
      | Tranche Initiation        | bi monthly     | bi monthly       | be able to move next stage                                                                   |
      | App Update Recommendation | bi monthly     | bi monthly       | be able to move next stage                                                                   |
      | Disbursal                 | bi monthly     | bi monthly       | be able to move next stage                                                                   |
      | DDE                       | Quarterly      | Quarterly        | be able to move next stage                                                                   |
      | Recommendation            | Quarterly      | Quarterly        | be able to move next stage                                                                   |
      | Credit Approval           | Quarterly      | Quarterly        | be able to move next stage                                                                   |
      | Reconsideration           | Quarterly      | Quarterly        | be able to move next stage                                                                   |
      | Disbursal                 | Quarterly      | Quarterly        | be able to move next stage                                                                   |
      | Tranche Initiation        | Quarterly      | Quarterly        | be able to move next stage                                                                   |
      | App Update Recommendation | Quarterly      | Quarterly        | be able to move next stage                                                                   |
      | DDE                       | Yearly         | Yearly           | be able to move next stage                                                                   |
      | Recommendation            | Yearly         | Yearly           | be able to move next stage                                                                   |
      | Credit Approval           | Yearly         | Yearly           | be able to move next stage                                                                   |
      | Reconsideration           | Yearly         | Yearly           | be able to move next stage                                                                   |
      | Disbursal                 | Yearly         | Yearly           | be able to move next stage                                                                   |
      | Tranche Initiation        | Yearly         | Yearly           | be able to move next stage                                                                   |
      | App Update Recommendation | Yearly         | Yearly           | be able to move next stage                                                                   |
      | DDE                       | Half Yearly    | Half Yearly      | be able to move next stage                                                                   |
      | Recommendation            | Half Yearly    | Half Yearly      | be able to move next stage                                                                   |
      | Credit Approval           | Half Yearly    | Half Yearly      | be able to move next stage                                                                   |
      | Reconsideration           | Half Yearly    | Half Yearly      | be able to move next stage                                                                   |
      | Disbursal                 | Half Yearly    | Half Yearly      | be able to move next stage                                                                   |
      | Tranche Initiation        | Half Yearly    | Half Yearly      | be able to move next stage                                                                   |
      | App Update Recommendation | Half Yearly    | Half Yearly      | be able to move next stage                                                                   |
  @NotImplemented
    
  #7- Periodic charge will not be shown in receipt section.
  #8- Periodic Charge will not be adjusted or received .
    #CAS-118696 Capability to capture Periodic Charge in CAS and flow to LMS
  Scenario Outline: ACAUTOCAS-2846:  Periodic Charges not available in Receipt section for adjustment at  "<Var_Stage>"  Stage
      #Configuration property key is "config.adjust.periodicCharge" to adjust periodic charge in receipt section.
      #Default Value of this property is FALSE and TRUE value is not in scope.
    Given user logged in "Common Masters" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And Loan application is at "<Var_Stage>" stage
    And configuration property key is maintained as "config.adjust.periodicCharge" = FALSE to adjust periodic charge in receipt section
    When user navigates to receipts adjustment screen at "<Var_Stage>" stage
    Then user verifies that periodic charges are not available on receipts adjustment screen for adjustment at "<Var_Stage>" stage
    #And  user verifies that periodic charges cannot be collected as IMD

    Examples:
      | Var_Stage                 |
      | DDE                       |
      | Recommendation            |
      | Credit Approval           |
      | Reconsideration           |
      | Post Approval             |
      | Disbursal                 |
      | Tranche Initiation        |
      | App Update Recommendation |
  @NotImplemented

#IMD check. If periodic charges taken before installment, Periodic Charges Cannot be collected as IMD.
        #CAS-118696 Capability to capture Periodic Charge in CAS and flow to LMS
  Scenario Outline: ACAUTOCAS-998: Periodic Charges should not be collected as IMD in case periodic charges taken before installment at  "<Var_Stage>"  Stage
    Given user logged in "Common Masters" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And Loan application is at "<Var_Stage>" stage
    When user takes periodic charges before instalment at "<Var_Stage>" stage
    Then user should not be able to collect periodic charge as IMD at "<Var_Stage>" stage
    Examples:
      | Var_Stage                 |
      | DDE                       |
      | Recommendation            |
      | Credit Approval           |
      | Reconsideration           |
      | Post Approval             |
      | Disbursal                 |
      | Tranche Initiation        |
      | App Update Recommendation |
  @NotImplemented
    #  Multi Asset Case/ Member Level Split
#  Charges taken as application level can be adjusted tranche wise with the following methods-
#  Method 1 - Whatever charge taken at application level will be divided into number of splits and rounding difference will be added to the primary applicant charges.
#  Method 2- Charge divided equally in all splits
#  Method 3- Whatever charge taken at application level will be applicable with first split only

   ##CAS-118696 Capability to capture Periodic Charge in CAS and flow to LMS
  Scenario Outline: ACAUTOCAS-2847:  Charge Execution Remainder and Re execution Methods while Charge policy Execution at "<Var_Stage>" Stage
    Given user logged in "Common Masters" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And Loan application is at "<Var_Stage>" stage
    And periodic charges already attached with application which can be adjusted tranche wise with "<Charge_Execution>" method
    When user checks the periodic Charges in case of "<Charge_Execution>" method in case of tranche splitting at "<Var_Stage>" stage
    Then periodic Charges should be "<Msg>"

    Examples:

      | Var_Stage | Charge_Execution | Msg                                                                                           |
      | Disbursal | Remainder        | divided into number of splits with rounding difference added to the primary applicant charges |
      | Disbursal | Re-Execution     | divided equally in all splits                                                                 |
  @NotImplemented

 ##CAS-118696 Capability to capture Periodic Charge in CAS and flow to LMS
  Scenario Outline: ACAUTOCAS-2848:  Charge Execution of First Disbursal Method while Charge policy Execution at "<Var_Stage>" Stage
    Given user logged in "Common Masters" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And Loan application is at "<Var_Stage>" stage
    And periodic charges already attached with application
    When user checks the periodic Charges in case of "<Charge_Execution>" method in case of tranche splitting at "<Var_Stage>" stage
    Then both CAS and periodic charges should be applied with first tranche

    Examples:

      | Var_Stage | Charge_Execution       |
      | Disbursal | First Disbursal Method |
  @NotImplemented
    
#subtask created for issue ACAUTOCAS-6482
  Scenario Outline: ACAUTOCAS-2654: Disbursal with Periodic Charges at "<Var_Stage>" and flow to LMS
        ##CAS-118696 Capability to capture Periodic Charge in CAS and flow to LMS
    Given user logged in "Common Masters" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And Loan application is at "<Var_Stage>" stage
    And periodic charges already attached with application
    When user disburse the application with periodic charges
    Then application should be disbursed successfully
    #And user checks in LMS module loan viewer periodic charges link in left panel for respective application
    #And user should be able to see "<Periodic_Details>" tab on periodic charges screen in LMS viewer screen

    Examples:

      | Var_Stage |
      | Disbursal |
      | Disbursal |
  @NotImplemented
    
#subtask created for issue ACAUTOCAS-6482
  #new JIRA created ACAUTOCAS-6504
  #CAS-118696 Capability to capture Periodic Charge in CAS and flow to LMS
  Scenario Outline: ACAUTOCAS-6504: Periodic Charges view in LMS Loan viewer
    Given user logged in "Common Masters" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And Loan application is at "<Var_Stage>" stage
    And periodic charges already attached with application
    And application flown to LMS with periodic charges
    When user verifies in LMS module loan viewer periodic charges link in left panel for respective application
    Then user should be able to see "<Periodic_Details>" tab on periodic charges screen in LMS viewer screen

    Examples:

      | Var_Stage | Periodic_Details   |
      | Disbursal | Basic Details      |
      | Disbursal | Repayment Schedule |
  @NotImplemented

  Scenario Outline: ACAUTOCAS-2849:  Periodic Charge Repayment Schedule in periodic charges section on Loan viewer in LMS
        ##CAS-118696 Capability to capture Periodic Charge in CAS and flow to LMS
    Given user logged in "Common Masters" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And Loan application is disbursed and flown to LMS with periodic charges attached with it
    And periodic charges are "<Amount_Rate_Based>" based having frequency as "<Frequency>"
    And periodic charges have due day "<DueDay>" as loan with tenure as "<Tenure>" as of loan
    When user checks in LMS module loan viewer periodic charges link in left panel for respective application
    And user clicks on "<Periodic_Details>" tab on periodic charges screen in LMS
    Then user should see "<Msg>" as per tenure, frequency, due date

    Examples:

      | Amount_Rate_Based | Frequency   | DueDay    | Tenure    | Periodic_Details   | Msg                                                                                              |
      | Amount            | Monthly     | Same      | Same      | Basic Details      | basic details of periodic charges                                                                |
      | Amount            | Monthly     | Same      | Same      | Repayment Schedule | periodic charges repayment schedule on screen with installment no, due date, amount, tds details |
      | Amount            | Quarterly   | Same      | Same      | Basic Details      | basic details of periodic charges                                                                |
      | Amount            | Quarterly   | Same      | Same      | Repayment Schedule | periodic charges repayment schedule on screen with installment no, due date, amount, tds details |
      | Amount            | Yearly      | Same      | Same      | Basic Details      | basic details of periodic charges                                                                |
      | Amount            | Yearly      | Same      | Same      | Repayment Schedule | periodic charges repayment schedule on screen with installment no, due date, amount, tds details |
      | Amount            | Half Yearly | Same      | Same      | Basic Details      | basic details of periodic charges                                                                |
      | Amount            | Half Yearly | Same      | Same      | Repayment Schedule | periodic charges repayment schedule on screen with installment no, due date, amount, tds details |
      | Rate              | Monthly     | Same      | Same      | Basic Details      | basic details of periodic charges                                                                |
      | Rate              | Monthly     | Same      | Same      | Repayment Schedule | periodic charges repayment schedule on screen with installment no, due date, amount, tds details |
      | Rate              | Quarterly   | Same      | Same      | Basic Details      | basic details of periodic charges                                                                |
      | Rate              | Quarterly   | Same      | Same      | Repayment Schedule | periodic charges repayment schedule on screen with installment no, due date, amount, tds details |
      | Rate              | Yearly      | Same      | Same      | Basic Details      | basic details of periodic charges                                                                |
      | Rate              | Yearly      | Same      | Same      | Repayment Schedule | periodic charges repayment schedule on screen with installment no, due date, amount, tds details |
      | Rate              | Half Yearly | Same      | Same      | Basic Details      | basic details of periodic charges                                                                |
      | Rate              | Half Yearly | Same      | Same      | Repayment Schedule | periodic charges repayment schedule on screen with installment no, due date, amount, tds details |
      | Amount            | Monthly     | Same      | Different | Basic Details      | basic details of periodic charges                                                                |
      | Amount            | Monthly     | Same      | Different | Repayment Schedule | periodic charges repayment schedule on screen with installment no, due date, amount, tds details |
      | Amount            | Quarterly   | Same      | Different | Basic Details      | basic details of periodic charges                                                                |
      | Amount            | Quarterly   | Same      | Different | Repayment Schedule | periodic charges repayment schedule on screen with installment no, due date, amount, tds details |
      | Amount            | Yearly      | Same      | Different | Basic Details      | basic details of periodic charges                                                                |
      | Amount            | Yearly      | Same      | Different | Repayment Schedule | periodic charges repayment schedule on screen with installment no, due date, amount, tds details |
      | Amount            | Half Yearly | Same      | Different | Basic Details      | basic details of periodic charges                                                                |
      | Amount            | Half Yearly | Same      | Different | Repayment Schedule | periodic charges repayment schedule on screen with installment no, due date, amount, tds details |
      | Rate              | Monthly     | Same      | Different | Basic Details      | basic details of periodic charges                                                                |
      | Rate              | Monthly     | Same      | Different | Repayment Schedule | periodic charges repayment schedule on screen with installment no, due date, amount, tds details |
      | Rate              | Quarterly   | Same      | Different | Basic Details      | basic details of periodic charges                                                                |
      | Rate              | Quarterly   | Same      | Different | Repayment Schedule | periodic charges repayment schedule on screen with installment no, due date, amount, tds details |
      | Rate              | Yearly      | Same      | Different | Basic Details      | basic details of periodic charges                                                                |
      | Rate              | Yearly      | Same      | Different | Repayment Schedule | periodic charges repayment schedule on screen with installment no, due date, amount, tds details |
      | Rate              | Half Yearly | Same      | Different | Basic Details      | basic details of periodic charges                                                                |
      | Rate              | Half Yearly | Same      | Different | Repayment Schedule | periodic charges repayment schedule on screen with installment no, due date, amount, tds details |
      | Amount            | Monthly     | Different | Different | Basic Details      | basic details of periodic charges                                                                |
      | Amount            | Monthly     | Different | Different | Repayment Schedule | periodic charges repayment schedule on screen with installment no, due date, amount, tds details |
      | Amount            | Quarterly   | Different | Different | Basic Details      | basic details of periodic charges                                                                |
      | Amount            | Quarterly   | Different | Different | Repayment Schedule | periodic charges repayment schedule on screen with installment no, due date, amount, tds details |
      | Amount            | Yearly      | Different | Different | Basic Details      | basic details of periodic charges                                                                |
      | Amount            | Yearly      | Different | Different | Repayment Schedule | periodic charges repayment schedule on screen with installment no, due date, amount, tds details |
      | Amount            | Half Yearly | Different | Different | Basic Details      | basic details of periodic charges                                                                |
      | Amount            | Half Yearly | Different | Different | Repayment Schedule | periodic charges repayment schedule on screen with installment no, due date, amount, tds details |
      | Rate              | Monthly     | Different | Different | Basic Details      | basic details of periodic charges                                                                |
      | Rate              | Monthly     | Different | Different | Repayment Schedule | periodic charges repayment schedule on screen with installment no, due date, amount, tds details |
      | Rate              | Quarterly   | Different | Different | Basic Details      | basic details of periodic charges                                                                |
      | Rate              | Quarterly   | Different | Different | Repayment Schedule | periodic charges repayment schedule on screen with installment no, due date, amount, tds details |
      | Rate              | Yearly      | Different | Different | Basic Details      | basic details of periodic charges                                                                |
      | Rate              | Yearly      | Different | Different | Repayment Schedule | periodic charges repayment schedule on screen with installment no, due date, amount, tds details |
      | Rate              | Half Yearly | Different | Different | Basic Details      | basic details of periodic charges                                                                |
      | Rate              | Half Yearly | Different | Different | Repayment Schedule | periodic charges repayment schedule on screen with installment no, due date, amount, tds details |
  @NotImplemented
#bi monthly frequency to be added in above scenarios

  Scenario Outline: ACAUTOCAS-2850:  Loan and Consolidated Repayment Schedule Tabs with Periodic Charges on Loan viewer in LMS
        ##CAS-118696 Capability to capture Periodic Charge in CAS and flow to LMS
    Given user logged in "Common Masters" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And Loan application is disbursed and flown to LMS with periodic charges at "<Var_Stage>" stage attached with it
    When user checks in LMS module loan viewer repayment schedule link in left panel for respective application
    Then user should be able to see "<Periodic_Details>" tab on repayment schedule screen in LMS

    Examples:

      | Var_Stage | Periodic_Details |
      | Disbursal | Consolidated     |
      | Disbursal | Loan             |
  @NotImplemented

  Scenario Outline: ACAUTOCAS-2851:  Consolidated Loan Repayment Schedule with Periodic Charges on Loan viewer in LMS
        ##CAS-118696 Capability to capture Periodic Charge in CAS and flow to LMS
    Given user logged in "Common Masters" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And Loan application is disbursed and flown to LMS with periodic charges attached with it
    When user checks in LMS module loan viewer repayment schedule link in left panel for respective application
    And user clicks on "<Periodic_Details>" tab in LMS loan viewer screen under repayment schedule section
    Then user should see "<Msg>" having effect of periodic charges tenure, due date, frequency changes combinations
    #And periodic charges should get added to an installment amount in repay schedule as per due day, tenure of loan

    Examples:

      | Periodic_Details | Msg                                                                                                                                             |
      | Consolidated     | consolidated loan repayment schedule on screen with due date, effective installment, opening balance, principal, interest, effective rate, days |
     # | Loan             | loan repayment schedule on screen with installment no, due date, opening balance, principal, interest, effective rate, days |
  @NotImplemented
  
  #new JIRA created ACAUTOCAS-6505
  #CAS-118696 Capability to capture Periodic Charge in CAS and flow to LMS
  Scenario Outline: ACAUTOCAS-6505: Periodic Charges amount added to an instalment in Consolidated Loan Repayment Schedule in LMS
    Given user logged in "Common Masters" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And Loan application is disbursed and flown to LMS with periodic charges attached with it
    And user checks "<Periodic_Details>" tab in LMS module loan viewer repayment schedule link in left panel for respective application
    #And user clicks on "<Periodic_Details>" tab in LMS loan viewer screen under repayment schedule section
    When user verifies "<Msg>" having effect of periodic charges tenure, due date, frequency changes combinations
    Then periodic charges should get added to an installment amount in repay schedule as per due day, tenure of loan

    Examples:

      | Periodic_Details | Msg                                                                                                                                             |
      | Consolidated     | consolidated loan repayment schedule on screen with due date, effective installment, opening balance, principal, interest, effective rate, days |

  #Example
#  Periodic Charge Repayment Schedule
#  Instl. #	Due Date	Amount
#  1	    01-08-2019	6,000.00
#  2	    01-09-2019	6,000.00
#  3   	    01-10-2019	6,000.00
#  4	    01-11-2019	6,000.00
#  5	    01-12-2019	6,000.00
#  6	    01-01-2020	6,000.00
#  7	    01-02-2020	6,000.00
#  Total	           42,000.00

#  Consolidated Repayment Schedule
#  Serial #	Due Date	Effective Instl	Opening Bal	Instal      Prin	Interest
#  1	      01-06-2019	2,930.00	    30,000.00	2,630.00	2,463.00	167
#  2          01-07-2019	2,930.00	    27,537.00	2,630.00	2,401.00	229
#  3	      01-08-2019	8,930.00	    25,136.00	2,630.00	2,421.00	209
#  4	      01-09-2019	8,930.00	    22,715.00	2,630.00	2,441.00	189
#  5	      01-10-2019	8,930.00	    20,274.00	2,630.00	2,461.00	169
#  6	      01-11-2019	8,930.00	    17,813.00	2,630.00	2,482.00	148
#  7	      01-12-2019	8,930.00	    15,331.00	2,630.00	2,502.00	128
#  8	      01-01-2020	8,930.00	    12,829.00	2,630.00	2,523.00	107
#  9	      01-02-2020	8,930.00	    10,306.00	2,630.00	2,544.00	86
#  10	      01-03-2020	2,930.00	     7,762.00	2,630.00	2,565.00	65
#  11	      01-04-2020	2,930.00	     5,197.00	2,630.00	2,587.00	43
#  12	      01-05-2020	2,932.00	     2,610.00	2,632.00	2,610.00	22
#  Total	               77,162.00        31,562.00   30,000.00	1,562.00
  @NotImplemented
  
#subtask created for issue ACAUTOCAS-6482
  Scenario Outline: ACAUTOCAS-2852:  Consolidated Repayment Schedule with different dueday and different frequency of periodic charges in Loan viewer in LMS
    Given user logged in "Common Masters" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And Loan application is disbursed and flown to LMS with periodic charges attached with it
    And periodic charges are "<Amount_Rate_Based>" based having different due day, different tenure from loan
    #as "<Frequency>"
    #And periodic charges have due day "<DueDay>" as loan with tenure as "<Tenure>" as of loan
    When user checks in LMS module loan viewer periodic charges link in left panel for respective application
    And user clicks on "<Periodic_Details>" tab on periodic charges screen in LMS
    Then user should see "<Msg>" as per tenure, frequency, due date with periodic charges entries
    #And periodic charges entry should be inserted in the consolidated repayment schedule

    Examples:

      | Amount_Rate_Based | Periodic_Details | Msg                                                                                                                                             |
      | Amount            | Consolidated     | consolidated loan repayment schedule on screen with due date, effective installment, opening balance, principal, interest, effective rate, days |
      | Rate              | Consolidated     | consolidated loan repayment schedule on screen with due date, effective installment, opening balance, principal, interest, effective rate, days |

 #Example
#  Periodic Charge 1
#  Due Date	Effective Instl	Install Amt
#  25 Dec 18	 -   	 -
#  25 Jan 19	 -   	 -
#  25 Feb 19	 1,000.00 	    1,000.00
#  25 Mar 19	 -   	 -
#  25 Apr 19	 -   	 -
#  25 May 19	 1,000.00 	    1,000.00
#  25 Jun 19	 -   	 -
#  25 Jul 19	 -   	 -
#  25 Aug 19	 1,000.00 	    1,000.00
#  25 Sep 19	 -   	 -
#  25 Oct 19	 -   	 -
#  25 Nov 19	 1,000.00 	 1,000.00
#  25 Dec 19	 -   	 -
#  25 Jan 20	 -   	 -
#  25 Feb 20	 1,000.00 	 1,000.00
#  25 Mar 20	 -   	 -
#  25 Apr 20	 -   	 -
#  25 May 20	 -   	 -
#  25 Jun 20	 -   	 -
#  25 Jul 20	 -   	 -
#  25 Aug 20	 -   	 -
#  25 Sep 20	 -   	 -
#  25 Oct 20	 -   	 -
#  25 Nov 20	 -   	 -

#
#  Consolidated Repayment Schedule
#  S.No.	Due date	Effective Instl Amt	Instl Amt	Principal	Interest
#  1	    5 Dec 18	 6,838.00 	        6,838.00 	 5,598.00 	 1,240.00
#  2	    5 Jan 19	 6,838.00 	        6,838.00 	 5,643.98 	 1,194.02
#  3	    5 Feb 19	 7,838.00 	        6,838.00 	 5,690.42 	 1,147.58
#  4	    25 Feb 20	 1,000.00
#  5	    5 Mar 19	 6,838.00 	        6,838.00 	 5,737.33 	 1,100.67
#  6	    5 Apr 19	 6,838.00 	        6,838.00 	 5,784.70 	 1,053.30
#  7	    5 May 19	 7,838.00 	        6,838.00 	 5,832.55 	 1,005.45
#  8	    25 May 20	 1,000.00
#  9	    5 Jun 19	 6,838.00 	        6,838.00 	 5,880.87 	 957.13
#  10	    5 Jul 19	 6,838.00 	        6,838.00 	 5,929.68 	 908.32
#  11	    5 Aug 19	 7,838.00 	        6,838.00 	 5,978.97 	 859.03
#  12	    25 Aug 20	 1,000.00
#  13	    5 Sep 19	 6,838.00 	        6,838.00 	 6,028.77 	 809.23
#  14	    5 Oct 19	 6,838.00 	        6,838.00 	 6,079.05 	 758.95
#  15	    5 Nov 19	 6,838.00 	        6,838.00 	 6,129.84 	 708.16
#  16	    25 Nov 20	 1,000.00
#  17	    5 Dec 19	 5,838.00 	        5,838.00 	 5,181.14 	 656.86
#  18	    5 Jan 20	 5,838.00 	        5,838.00 	 5,232.95 	 605.05
#  19	    5 Feb 20	 5,838.00 	        5,838.00 	 5,285.28 	 552.72
#  20	    25 Feb 20	 1,000.00
#  21	    5 Mar 20	 5,838.00 	        5,838.00 	 5,338.13 	 499.87
#  22	    5 Apr 20	 5,838.00 	        5,838.00 	 5,391.51 	 446.49
#  23	    5 May 20	 5,838.00 	        5,838.00 	 5,445.43 	 392.57
#  24	    5 Jun 20	 5,838.00 	        5,838.00 	 5,499.88 	 338.12
#  25	    5 Jul 20	 5,838.00 	        5,838.00 	 5,554.89 	 283.11
#  26	    5 Aug 20	 5,838.00 	        5,838.00 	 5,610.43 	 227.57
#  27	    5 Sep 20	 5,838.00 	        5,838.00 	 5,666.54 	 171.46
#  28	    5 Oct 20	 5,838.00 	        5,838.00 	 5,723.21 	 114.79
#  29	    5 Nov 20	 5,838.00 	        5,838.00 	 5,756.45 	 57.57
  @NotImplemented

  Scenario Outline: ACAUTOCAS-2853:  Impact on IRR Calculation with Periodic Charges flown to LMS
        ##CAS-118696 Capability to capture Periodic Charge in CAS and flow to LMS
    Given user logged in "Common Masters" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And Loan application is disbursed and flown to LMS with periodic charges attached with it
    When user checks for IRR values in repayment schedule in LMS module by clicking on "<Periodic_Details>" tab in LMS
    Then user should see "<Msg>"

    Examples:

      | Periodic_Details   | Msg                                               |
      | Repayment Schedule | change in customer IRR along with bank IRR values |
