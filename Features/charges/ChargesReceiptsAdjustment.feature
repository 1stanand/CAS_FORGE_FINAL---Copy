@Epic-Charges_&_FP
@AuthoredBy-Anshu.bhaduri
#@AuthorBy_Anshu
@ImplementedBy-ayush.garg
@ReviewedByDev
Feature: ChargesReceiptsAdjustment

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And Chargecodes should be maintained in Charge Code Definition Master with all Transaction types mapped
    And Charges should be maintained in Charge Definition Master with computation details maintained

  @Release2
  Scenario Outline: ACAUTOCAS-2656:  Execution of Charge Policy on Transaction at  <Var_Stage> Stage in case policy is modified
    When user opens an application of "<Var_Stage>" stage variant from "<GridName>" grid
    And user reads data from the excel file "<DisbursalInfoWB>" under sheet "<DisbursalInfoWB_home>" and row <DisbursalInfoWB_home_rowNum>
    And user fills mandatory field in disbursal entry
    And user executes charge policy at "<Var_Stage>" stage
    And then user clicks on apply charges button on disbursal entry screen
    And user adds a charge
    Then user can enter effective charge amount against additional charges in grid
    Examples:
      | Var_Stage                     | DisbursalInfoWB | DisbursalInfoWB_home | DisbursalInfoWB_home_rowNum | GridName    |
      | disbursal                     | disbursal.xlsx  | disbursal_entry      | 0                           | APPLICATION |
      | disbursal_indiv_subsequent_pl | disbursal.xlsx  | disbursal_entry      | 0                           | APPLICATION |

  @Release2
  Scenario Outline: ACAUTOCAS-2657:  Execution of Charge Policy on Transaction at <Var_Stage>  Stage in case policy is attached with Loan
    When user opens an application of "<Var_Stage>" stage variant from "<GridName>" grid
    And user opens charge tab at "<Var_Stage>"
    Then Charge policy should be successfully executed
    And user should see all receivable charges list which are mapped with charge policy on charges screen
    Examples:
      | Var_Stage                     | GridName        |
      | dde                           | APPLICATION     |
      | credit approval               | CREDIT_APPROVAL |
      | disbursal                     | APPLICATION     |
      | disbursal_indiv_subsequent_pl | APPLICATION     |
      | post approval                 | APPLICATION     |
      | recommendation                | APPLICATION     |

  @Release2
  Scenario Outline: ACAUTOCAS-2658:  Charges and Receipt Details Tab on Transaction at <Var_Stage> Stage
    And user opens an application at "<Var_Stage>" stage from application grid
    And user reads data from the excel file "<DisbursalInfoWB>" under sheet "<DisbursalInfoWB_home>" and row <DisbursalInfoWB_home_rowNum>
    When user fills mandatory field in disbursal entry
    And user clicks on add entry details icon in disbursal entry section of disbursal details tab at "<Var_Stage>" Stage
    And user adds a charge
    Then user should see disbursal entry screen with disbursal no with tabs as "<Disbursal_Charge_Tabs>"
    And user sees "<Var_Charges>" option under "<Disbursal_Charge_Tabs>" tab on disbursal entry screen at "<Var_Stage>"  Stage
    Examples:
      | Var_Stage                     | Disbursal_Charge_Tabs | Var_Charges                                    | DisbursalInfoWB | DisbursalInfoWB_home | DisbursalInfoWB_home_rowNum |
      | disbursal                     | Charges               | Apply Charges                                  | disbursal.xlsx  | disbursal_entry      | 0                           |
      | disbursal                     | Charges               | Execute operation level charge policy checkbox | disbursal.xlsx  | disbursal_entry      | 0                           |
      | disbursal                     | Receipts              | No                                             | disbursal.xlsx  | disbursal_entry      | 0                           |
      | disbursal_indiv_subsequent_pl | Charges               | Apply Charges                                  | disbursal.xlsx  | disbursal_entry      | 0                           |
      | disbursal_indiv_subsequent_pl | Charges               | Execute operation level charge policy checkbox | disbursal.xlsx  | disbursal_entry      | 0                           |
      | disbursal_indiv_subsequent_pl | Receipts              | No                                             | disbursal.xlsx  | disbursal_entry      | 0                           |


  @Release2
  Scenario Outline: ACAUTOCAS-2659:  Application Charges Details editable under Effective Charge Amount details hyperlink on Charges Screen at <Var_Stage> Stage
    When user opens an application of "<Var_Stage>" stage variant from "<GridName>" grid
    And user reads data from the excel file "<ChargesWB>" under sheet "<ChargesWB_home>" and row <ChargesWB_home_rowNum>
    And user clicks on details hyperlink under effective charge amount on charges grid at "<Var_Stage>" Stage of a periodic charge
    Then a modal window of application charge details should get opened with fields "<Editable_Fields>"
    And user should be able to edit the "<Editable_Fields>" field on application charge details modal window with value as "<Charge_Nature>"
    Examples:
      | Var_Stage                     | Editable_Fields                        | Charge_Nature              | ChargesWB    | ChargesWB_home         | ChargesWB_home_rowNum | GridName        |
      | post approval                 | Rate Amount                            |                            | charges.xlsx | charge_code_defination | 17                    | APPLICATION     |
      | post approval                 | Effective Amount                       |                            | charges.xlsx | charge_code_defination | 17                    | APPLICATION     |
      | post approval                 | Charge Rate                            |                            | charges.xlsx | charge_code_defination | 17                    | APPLICATION     |
      | post approval                 | Charge Adjustment Type                 | Collectible                | charges.xlsx | charge_code_defination | 17                    | APPLICATION     |
      | post approval                 | Charge Adjustment Type                 | Collectible And Deductible | charges.xlsx | charge_code_defination | 17                    | APPLICATION     |
      | post approval                 | Charge Adjustment Type                 | Deductible                 | charges.xlsx | charge_code_defination | 17                    | APPLICATION     |
      | post approval                 | Is Charge Not Applicable in CAS        | Unchecked                  | charges.xlsx | charge_code_defination | 17                    | APPLICATION     |
      | post approval                 | Charge Frequency for Periodic Charges  | Weekly                     | charges.xlsx | charge_code_defination | 17                    | APPLICATION     |
      | post approval                 | Charge Frequency for Periodic Charges  | Monthly                    | charges.xlsx | charge_code_defination | 17                    | APPLICATION     |
      | post approval                 | Charge Frequency for Periodic Charges  | Daily                      | charges.xlsx | charge_code_defination | 17                    | APPLICATION     |
      | post approval                 | Charge Frequency for Periodic Charges  | Quarterly                  | charges.xlsx | charge_code_defination | 17                    | APPLICATION     |
      | post approval                 | Charge Frequency for Periodic Charges  | Half Yearly                | charges.xlsx | charge_code_defination | 17                    | APPLICATION     |
      | post approval                 | Charge Frequency for Periodic Charges  | Bi Weekly                  | charges.xlsx | charge_code_defination | 17                    | APPLICATION     |
      | post approval                 | Charge Frequency for Periodic Charges  | Bi Monthly                 | charges.xlsx | charge_code_defination | 17                    | APPLICATION     |
      | post approval                 | Follow Loan Tenure for Periodic Charge | Unchecked                  | charges.xlsx | charge_code_defination | 17                    | APPLICATION     |
      | post approval                 | Start Date for Periodic Charge         | business date              | charges.xlsx | charge_code_defination | 17                    | APPLICATION     |
      | post approval                 | End Date for Periodic Charge           |                            | charges.xlsx | charge_code_defination | 17                    | APPLICATION     |
      | dde                           | Rate Amount                            |                            | charges.xlsx | charge_code_defination | 17                    | APPLICATION     |
      | dde                           | Charge Rate                            |                            | charges.xlsx | charge_code_defination | 17                    | APPLICATION     |
      | dde                           | Effective Amount                       |                            | charges.xlsx | charge_code_defination | 17                    | APPLICATION     |
      | dde                           | Charge Adjustment Type                 | Collectable                | charges.xlsx | charge_code_defination | 17                    | APPLICATION     |
      | dde                           | Charge Adjustment Type                 | Collectible And Deductible | charges.xlsx | charge_code_defination | 17                    | APPLICATION     |
      | dde                           | Charge Adjustment Type                 | Deductible                 | charges.xlsx | charge_code_defination | 17                    | APPLICATION     |
      | dde                           | Is Charge Not Applicable in CAS        | Unchecked                  | charges.xlsx | charge_code_defination | 17                    | APPLICATION     |
      | dde                           | Charge Frequency for Periodic Charges  | Weekly                     | charges.xlsx | charge_code_defination | 17                    | APPLICATION     |
      | dde                           | Charge Frequency for Periodic Charges  | Monthly                    | charges.xlsx | charge_code_defination | 17                    | APPLICATION     |
      | dde                           | Charge Frequency for Periodic Charges  | Daily                      | charges.xlsx | charge_code_defination | 17                    | APPLICATION     |
      | dde                           | Charge Frequency for Periodic Charges  | Quarterly                  | charges.xlsx | charge_code_defination | 17                    | APPLICATION     |
      | dde                           | Charge Frequency for Periodic Charges  | Half Yearly                | charges.xlsx | charge_code_defination | 17                    | APPLICATION     |
      | dde                           | Charge Frequency for Periodic Charges  | Bi Weekly                  | charges.xlsx | charge_code_defination | 17                    | APPLICATION     |
      | dde                           | Charge Frequency for Periodic Charges  | Bi Monthly                 | charges.xlsx | charge_code_defination | 17                    | APPLICATION     |
      | dde                           | Follow Loan Tenure for Periodic Charge | Unchecked                  | charges.xlsx | charge_code_defination | 17                    | APPLICATION     |
      | dde                           | Start Date for Periodic Charge         | business date              | charges.xlsx | charge_code_defination | 17                    | APPLICATION     |
      | dde                           | End Date for Periodic Charge           |                            | charges.xlsx | charge_code_defination | 17                    | APPLICATION     |
      | disbursal                     | Rate Amount                            |                            | charges.xlsx | charge_code_defination | 17                    | APPLICATION     |
      | disbursal                     | Charge Rate                            |                            | charges.xlsx | charge_code_defination | 17                    | APPLICATION     |
      | disbursal                     | Effective Amount                       |                            | charges.xlsx | charge_code_defination | 17                    | APPLICATION     |
      | disbursal                     | Charge Adjustment Type                 | Collectable                | charges.xlsx | charge_code_defination | 17                    | APPLICATION     |
      | disbursal                     | Charge Adjustment Type                 | Collectible And Deductible | charges.xlsx | charge_code_defination | 17                    | APPLICATION     |
      | disbursal                     | Charge Adjustment Type                 | Deductible                 | charges.xlsx | charge_code_defination | 17                    | APPLICATION     |
      | disbursal                     | Is Charge Not Applicable in CAS        | Unchecked                  | charges.xlsx | charge_code_defination | 17                    | APPLICATION     |
      | disbursal                     | Charge Frequency for Periodic Charges  | Weekly                     | charges.xlsx | charge_code_defination | 17                    | APPLICATION     |
      | disbursal                     | Charge Frequency for Periodic Charges  | Monthly                    | charges.xlsx | charge_code_defination | 17                    | APPLICATION     |
      | disbursal                     | Charge Frequency for Periodic Charges  | Daily                      | charges.xlsx | charge_code_defination | 17                    | APPLICATION     |
      | disbursal                     | Charge Frequency for Periodic Charges  | Quarterly                  | charges.xlsx | charge_code_defination | 17                    | APPLICATION     |
      | disbursal                     | Charge Frequency for Periodic Charges  | Half Yearly                | charges.xlsx | charge_code_defination | 17                    | APPLICATION     |
      | disbursal                     | Charge Frequency for Periodic Charges  | Bi Weekly                  | charges.xlsx | charge_code_defination | 17                    | APPLICATION     |
      | disbursal                     | Charge Frequency for Periodic Charges  | Bi Monthly                 | charges.xlsx | charge_code_defination | 17                    | APPLICATION     |
      | disbursal                     | Follow Loan Tenure for Periodic Charge | Unchecked                  | charges.xlsx | charge_code_defination | 17                    | APPLICATION     |
      | disbursal                     | Start Date for Periodic Charge         |                            | charges.xlsx | charge_code_defination | 17                    | APPLICATION     |
      | disbursal                     | End Date for Periodic Charge           |                            | charges.xlsx | charge_code_defination | 17                    | APPLICATION     |
      | recommendation                | Charge Rate                            |                            | charges.xlsx | charge_code_defination | 17                    | APPLICATION     |
      | recommendation                | Effective Amount                       |                            | charges.xlsx | charge_code_defination | 17                    | APPLICATION     |
      | recommendation                | Charge Adjustment Type                 | Collectable                | charges.xlsx | charge_code_defination | 17                    | APPLICATION     |
      | recommendation                | Charge Adjustment Type                 | Collectible And Deductible | charges.xlsx | charge_code_defination | 17                    | APPLICATION     |
      | recommendation                | Charge Adjustment Type                 | Deductible                 | charges.xlsx | charge_code_defination | 17                    | APPLICATION     |
      | recommendation                | Is Charge Not Applicable in CAS        | Unchecked                  | charges.xlsx | charge_code_defination | 17                    | APPLICATION     |
      | recommendation                | Charge Frequency for Periodic Charges  | Weekly                     | charges.xlsx | charge_code_defination | 17                    | APPLICATION     |
      | recommendation                | Charge Frequency for Periodic Charges  | Monthly                    | charges.xlsx | charge_code_defination | 17                    | APPLICATION     |
      | recommendation                | Charge Frequency for Periodic Charges  | Daily                      | charges.xlsx | charge_code_defination | 17                    | APPLICATION     |
      | recommendation                | Charge Frequency for Periodic Charges  | Quarterly                  | charges.xlsx | charge_code_defination | 17                    | APPLICATION     |
      | recommendation                | Charge Frequency for Periodic Charges  | Half Yearly                | charges.xlsx | charge_code_defination | 17                    | APPLICATION     |
      | recommendation                | Charge Frequency for Periodic Charges  | Bi Weekly                  | charges.xlsx | charge_code_defination | 17                    | APPLICATION     |
      | recommendation                | Charge Frequency for Periodic Charges  | Bi Monthly                 | charges.xlsx | charge_code_defination | 17                    | APPLICATION     |
      | recommendation                | Follow Loan Tenure for Periodic Charge | Unchecked                  | charges.xlsx | charge_code_defination | 17                    | APPLICATION     |
      | recommendation                | Start Date for Periodic Charge         | business date              | charges.xlsx | charge_code_defination | 17                    | APPLICATION     |
      | recommendation                | End Date for Periodic Charge           |                            | charges.xlsx | charge_code_defination | 17                    | APPLICATION     |
      | credit approval               | Charge Rate                            |                            | charges.xlsx | charge_code_defination | 17                    | CREDIT_APPROVAL |
      | credit approval               | Effective Amount                       |                            | charges.xlsx | charge_code_defination | 17                    | CREDIT_APPROVAL |
      | credit approval               | Charge Adjustment Type                 | Collectable                | charges.xlsx | charge_code_defination | 17                    | CREDIT_APPROVAL |
      | credit approval               | Charge Adjustment Type                 | Collectible And Deductible | charges.xlsx | charge_code_defination | 17                    | CREDIT_APPROVAL |
      | credit approval               | Charge Adjustment Type                 | Deductible                 | charges.xlsx | charge_code_defination | 17                    | CREDIT_APPROVAL |
      | credit approval               | Is Charge Not Applicable in CAS        | Unchecked                  | charges.xlsx | charge_code_defination | 17                    | CREDIT_APPROVAL |
      | credit approval               | Charge Frequency for Periodic Charges  | Weekly                     | charges.xlsx | charge_code_defination | 17                    | CREDIT_APPROVAL |
      | credit approval               | Charge Frequency for Periodic Charges  | Monthly                    | charges.xlsx | charge_code_defination | 17                    | CREDIT_APPROVAL |
      | credit approval               | Charge Frequency for Periodic Charges  | Daily                      | charges.xlsx | charge_code_defination | 17                    | CREDIT_APPROVAL |
      | credit approval               | Charge Frequency for Periodic Charges  | Quarterly                  | charges.xlsx | charge_code_defination | 17                    | CREDIT_APPROVAL |
      | credit approval               | Charge Frequency for Periodic Charges  | Half Yearly                | charges.xlsx | charge_code_defination | 17                    | CREDIT_APPROVAL |
      | credit approval               | Charge Frequency for Periodic Charges  | Bi Weekly                  | charges.xlsx | charge_code_defination | 17                    | CREDIT_APPROVAL |
      | credit approval               | Charge Frequency for Periodic Charges  | Bi Monthly                 | charges.xlsx | charge_code_defination | 17                    | CREDIT_APPROVAL |
      | credit approval               | Follow Loan Tenure for Periodic Charge | Unchecked                  | charges.xlsx | charge_code_defination | 17                    | CREDIT_APPROVAL |
      | credit approval               | Start Date for Periodic Charge         | business date              | charges.xlsx | charge_code_defination | 17                    | CREDIT_APPROVAL |
      | credit approval               | End Date for Periodic Charge           |                            | charges.xlsx | charge_code_defination | 17                    | CREDIT_APPROVAL |
      | disbursal_indiv_subsequent_pl | Rate Amount                            |                            | charges.xlsx | charge_code_defination | 17                    | APPLICATION     |
      | disbursal_indiv_subsequent_pl | Charge Rate                            |                            | charges.xlsx | charge_code_defination | 17                    | APPLICATION     |
      | disbursal_indiv_subsequent_pl | Effective Amount                       |                            | charges.xlsx | charge_code_defination | 17                    | APPLICATION     |
      | disbursal_indiv_subsequent_pl | Charge Adjustment Type                 | Collectable                | charges.xlsx | charge_code_defination | 17                    | APPLICATION     |
      | disbursal_indiv_subsequent_pl | Charge Adjustment Type                 | Collectible And Deductible | charges.xlsx | charge_code_defination | 17                    | APPLICATION     |
      | disbursal_indiv_subsequent_pl | Charge Adjustment Type                 | Deductible                 | charges.xlsx | charge_code_defination | 17                    | APPLICATION     |
      | disbursal_indiv_subsequent_pl | Is Charge Not Applicable in CAS        | Unchecked                  | charges.xlsx | charge_code_defination | 17                    | APPLICATION     |
      | disbursal_indiv_subsequent_pl | Charge Frequency for Periodic Charges  | Weekly                     | charges.xlsx | charge_code_defination | 17                    | APPLICATION     |
      | disbursal_indiv_subsequent_pl | Charge Frequency for Periodic Charges  | Monthly                    | charges.xlsx | charge_code_defination | 17                    | APPLICATION     |
      | disbursal_indiv_subsequent_pl | Charge Frequency for Periodic Charges  | Daily                      | charges.xlsx | charge_code_defination | 17                    | APPLICATION     |
      | disbursal_indiv_subsequent_pl | Charge Frequency for Periodic Charges  | Quarterly                  | charges.xlsx | charge_code_defination | 17                    | APPLICATION     |
      | disbursal_indiv_subsequent_pl | Charge Frequency for Periodic Charges  | Half Yearly                | charges.xlsx | charge_code_defination | 17                    | APPLICATION     |
      | disbursal_indiv_subsequent_pl | Charge Frequency for Periodic Charges  | Bi Weekly                  | charges.xlsx | charge_code_defination | 17                    | APPLICATION     |
      | disbursal_indiv_subsequent_pl | Charge Frequency for Periodic Charges  | Bi Monthly                 | charges.xlsx | charge_code_defination | 17                    | APPLICATION     |
      | disbursal_indiv_subsequent_pl | Follow Loan Tenure for Periodic Charge | Unchecked                  | charges.xlsx | charge_code_defination | 17                    | APPLICATION     |

  @Release2
  Scenario Outline: ACAUTOCAS-2660:  Charge Not Applicable flag Enabling and Disabling on Application Charges Details under Effective Charge Amount details hyperlink on Charges Screen at  <Var_Stage>  Stage
    When user opens an application of "<Var_Stage>" stage variant from "<GridName>" grid
    And user reads data from the excel file "<DisbursalInfoWB>" under sheet "<DisbursalInfoWB_home>" and row <DisbursalInfoWB_home_rowNum>
    And user opens charge tab at "<Var_Stage>"
    And user adds a charge
    And user clicks on details hyperlink under effective charge amount on charges grid at "<Var_Stage>" Stage
    Then user should see field "<Editable_Fields>" with value as "<Charge_Nature>" for "<Charge_Type>"
    Examples:
      | Var_Stage                     | Editable_Fields                 | Charge_Nature            | Charge_Type                        | DisbursalInfoWB | DisbursalInfoWB_home | DisbursalInfoWB_home_rowNum | GridName        |
      | post approval                 | Is Charge Not Applicable in CAS | Non Editable and Checked | Neither Collectible Nor Deductible | disbursal.xlsx  | disbursal_entry      | 0                           | APPLICATION     |
      | post approval                 | Is Charge Not Applicable in CAS | Editable and UnChecked   | Collectible + Deductible           | disbursal.xlsx  | disbursal_entry      | 0                           | APPLICATION     |
      | post approval                 | Is Charge Not Applicable in CAS | Editable and UnChecked   | Collectible                        | disbursal.xlsx  | disbursal_entry      | 0                           | APPLICATION     |
      | post approval                 | Is Charge Not Applicable in CAS | Editable and UnChecked   | Deductible                         | disbursal.xlsx  | disbursal_entry      | 0                           | APPLICATION     |
      | dde                           | Is Charge Not Applicable in CAS | Non Editable and Checked | Neither Collectible Nor Deductible | disbursal.xlsx  | disbursal_entry      | 0                           | APPLICATION     |
      | dde                           | Is Charge Not Applicable in CAS | Editable and UnChecked   | Collectible + Deductible           | disbursal.xlsx  | disbursal_entry      | 0                           | APPLICATION     |
      | dde                           | Is Charge Not Applicable in CAS | Editable and UnChecked   | Collectible                        | disbursal.xlsx  | disbursal_entry      | 0                           | APPLICATION     |
      | dde                           | Is Charge Not Applicable in CAS | Editable and UnChecked   | Deductible                         | disbursal.xlsx  | disbursal_entry      | 0                           | APPLICATION     |
      | disbursal                     | Is Charge Not Applicable in CAS | Non Editable and Checked | Neither Collectible Nor Deductible | disbursal.xlsx  | disbursal_entry      | 0                           | APPLICATION     |
      | disbursal                     | Is Charge Not Applicable in CAS | Editable and UnChecked   | Collectible + Deductible           | disbursal.xlsx  | disbursal_entry      | 0                           | APPLICATION     |
      | disbursal                     | Is Charge Not Applicable in CAS | Editable and UnChecked   | Collectible                        | disbursal.xlsx  | disbursal_entry      | 0                           | APPLICATION     |
      | disbursal                     | Is Charge Not Applicable in CAS | Editable and UnChecked   | Deductible                         | disbursal.xlsx  | disbursal_entry      | 0                           | APPLICATION     |
      | recommendation                | Is Charge Not Applicable in CAS | Non Editable and Checked | Neither Collectible Nor Deductible | disbursal.xlsx  | disbursal_entry      | 0                           | APPLICATION     |
      | recommendation                | Is Charge Not Applicable in CAS | Editable and UnChecked   | Collectible + Deductible           | disbursal.xlsx  | disbursal_entry      | 0                           | APPLICATION     |
      | recommendation                | Is Charge Not Applicable in CAS | Editable and UnChecked   | Collectible                        | disbursal.xlsx  | disbursal_entry      | 0                           | APPLICATION     |
      | recommendation                | Is Charge Not Applicable in CAS | Editable and UnChecked   | Deductible                         | disbursal.xlsx  | disbursal_entry      | 0                           | APPLICATION     |
      | credit approval               | Is Charge Not Applicable in CAS | Non Editable and Checked | Neither Collectible Nor Deductible | disbursal.xlsx  | disbursal_entry      | 0                           | CREDIT_APPROVAL |
      | credit approval               | Is Charge Not Applicable in CAS | Editable and UnChecked   | Collectible + Deductible           | disbursal.xlsx  | disbursal_entry      | 0                           | CREDIT_APPROVAL |
      | credit approval               | Is Charge Not Applicable in CAS | Editable and UnChecked   | Collectible                        | disbursal.xlsx  | disbursal_entry      | 0                           | CREDIT_APPROVAL |
      | credit approval               | Is Charge Not Applicable in CAS | Editable and UnChecked   | Deductible                         | disbursal.xlsx  | disbursal_entry      | 0                           | CREDIT_APPROVAL |
      | disbursal_indiv_subsequent_pl | Is Charge Not Applicable in CAS | Non Editable and Checked | Neither Collectible Nor Deductible | disbursal.xlsx  | disbursal_entry      | 0                           | APPLICATION     |
      | disbursal_indiv_subsequent_pl | Is Charge Not Applicable in CAS | Editable and UnChecked   | Collectible + Deductible           | disbursal.xlsx  | disbursal_entry      | 0                           | APPLICATION     |
      | disbursal_indiv_subsequent_pl | Is Charge Not Applicable in CAS | Editable and UnChecked   | Collectible                        | disbursal.xlsx  | disbursal_entry      | 0                           | APPLICATION     |
      | disbursal_indiv_subsequent_pl | Is Charge Not Applicable in CAS | Editable and UnChecked   | Deductible                         | disbursal.xlsx  | disbursal_entry      | 0                           | APPLICATION     |


  @Release2
    #CAS-100321	Disbursal Revamp : Charges, receipts & adjustment handling in new charges design
  Scenario Outline: ACAUTOCAS-2661:  Previous and Current Charges enabled and disabled on Transaction at <Var_Stage>  Stage
    And user opens an application at "<Var_Stage>" stage from application grid
    And user reads data from the excel file "<DisbursalInfoWB>" under sheet "<DisbursalInfoWB_home>" and row <DisbursalInfoWB_home_rowNum>
    When user fills mandatory field in disbursal entry
    And user is already in disbursal entry section with all the charges listed in charges grid
    And user adds a charge
    Then user should see all the charges list in the grid with "<Var_Charges>" in "<Charge_Mode>" mode

    Examples:

      | Var_Stage                     | Charge_Mode | Var_Charges      | DisbursalInfoWB | DisbursalInfoWB_home | DisbursalInfoWB_home_rowNum |
      | disbursal                     | disabled    | previous charges | disbursal.xlsx  | disbursal_entry      | 0                           |
      | disbursal                     | enabled     | current charges  | disbursal.xlsx  | disbursal_entry      | 0                           |
      | disbursal_indiv_subsequent_pl | disabled    | previous charges | disbursal.xlsx  | disbursal_entry      | 0                           |
      | disbursal_indiv_subsequent_pl | enabled     | current charges  | disbursal.xlsx  | disbursal_entry      | 0                           |

  @Release2
  Scenario Outline: ACAUTOCAS-2662:  Charges should be searched on Disbursal Entry Screen under Charges Tab at <Var_Stage> Stage
    When user opens an application of "<Var_Stage>" stage variant from "<GridName>" grid
    And user reads data from the excel file "<DisbursalInfoWB>" under sheet "<DisbursalInfoWB_home>" and row <DisbursalInfoWB_home_rowNum>
    And user opens charge tab at "<Var_Stage>"
    And user adds a charge
    And user enters "<Data>" of charge description in search text box above charges grid in disbursal entry section at "<Var_Stage>" stage
    Then user should see all the charges in the grid which were searched
    Examples:
      | Var_Stage                     | Data | DisbursalInfoWB | DisbursalInfoWB_home | DisbursalInfoWB_home_rowNum | GridName    |
      | disbursal                     | abc  | disbursal.xlsx  | disbursal_entry      | 0                           | APPLICATION |
      | disbursal_indiv_subsequent_pl | abc  | disbursal.xlsx  | disbursal_entry      | 0                           | APPLICATION |

     #CAS-13157 Adjustment Amount Details hyperlink to be provided on the Disbursal Screen.
  @Release2
  Scenario Outline: ACAUTOCAS-2665:  Adjustment Amount Details hyperlink to be provided on the Disbursal Screen at <Var_Stage>  Stage
    When user opens an application at "<Var_Stage>" stage from application grid
    Then user should see the hyperlink along with the Adjustment amount field on "<Var_Stage>" stage under the disbursal entry details
    And the hyperlink should be named as "<Hyperlink_Name>" in default settings
    Examples:
      | Var_Stage                     | Hyperlink_Name |
      | disbursal                     | Details        |
      | disbursal_indiv_subsequent_pl | Details        |


    #CAS-13157 Adjustment Amount Details hyperlink to be provided on the Disbursal Screen.
  @Release2
  Scenario Outline: ACAUTOCAS-2666:  Modal window containing charge details should be visible on clicking hyperink on the Disbursal Screen at  "<Var_Stage>"  Stage
    And user opens an application at "<Var_Stage>" stage from application grid
    When user clicks on the details hyperlink under adjustment amount field on individual disbursal entry section at "<Var_Stage>" stage
    Then user should see the modal window with "<Field>"
    Examples:
      | Var_Stage                     | Field                   |
      | disbursal                     | Data Observation Level  |
      | disbursal                     | Data Entry Level        |
      | disbursal                     | Operation No            |
      | disbursal                     | Entry No                |
      | disbursal                     | Charge Name             |
      | disbursal                     | Charge Adjustment Type  |
      | disbursal                     | Charge Amount           |
      | disbursal                     | Effective Charge Amount |
      | disbursal                     | Received Amount         |
      | disbursal                     | Adjustment Amount       |
      | disbursal                     | Overdue Amount          |
      | disbursal                     | Disbursal Date          |
      | disbursal                     | Disbursal Amount        |
      | disbursal                     | Actual Payment Amount   |
      | disbursal_indiv_subsequent_pl | Data Observation Level  |
      | disbursal_indiv_subsequent_pl | Data Entry Level        |
      | disbursal_indiv_subsequent_pl | Operation No            |
      | disbursal_indiv_subsequent_pl | Entry No                |
      | disbursal_indiv_subsequent_pl | Charge Name             |
      | disbursal_indiv_subsequent_pl | Charge Adjustment Type  |
      | disbursal_indiv_subsequent_pl | Charge Amount           |
      | disbursal_indiv_subsequent_pl | Effective Charge Amount |
      | disbursal_indiv_subsequent_pl | Received Amount         |
      | disbursal_indiv_subsequent_pl | Adjustment Amount       |
      | disbursal_indiv_subsequent_pl | Overdue Amount          |
      | disbursal_indiv_subsequent_pl | Actual Payment Amount   |


#  In Charges tab, as per the operations the receipt and adjust functionalities will work as mentioned below ?
#  Collectable & C+D, the Receipt will be editable for all the entries.
#  If C+D, has been marked adjusted and can be marked receipt on that entry only, user can mark it unadjusted and then can mark receipt at any entry.
#  Similarly for Deductible, can be marked receipt where Adjusted has been marked. If user un-adjust the entry then can mark receipt for any other entry.

  Scenario Outline: ACAUTOCAS-2663:  Adjustment Amount should not be changed in Disbursal payee details when charge amount is updated and receipts are not adjusted at "<Var_Stage>" stage
    And Loan application is at "<Var_Stage>" stage
    And disbursal payee details are saved with correct adjustment of charges
    When user adds any other charges "<screen_policy>" at "<Var_Stage>" stage
    And user updates the effective charge amount
    And user saves the record
    And user does not adjust the receipts
    Then adjustment amount in disbursal payee details should not get changed at "<Var_Stage>" stage

    Examples:

      | Var_Stage | screen_policy           |
      | Disbursal | from transaction screen |
      | Disbursal | from charge policy      |


     #CAS-13157 Adjustment Amount Details hyperlink to be provided on the Disbursal Screen.
  Scenario Outline: ACAUTOCAS-2664:  Adjustment Amount Details hyperlink on the Disbursal Screen at  "<Var_Stage>"  Stage
        #Config : config.cas.adjustmentAmount , default : TRUE
    And Loan application is at "<Var_Stage>" stage
    And user maintained configuration as "<Hyperlink_Config>" in file config.cas.adjustmentAmount
    When user checks for the configuration at "<Var_Stage>" stage
    Then user "<hyperlink>" containing the details of the charges adjusted with disbursal adjustment amount at "<Var_Stage>" stage in case configuration is "<Hyperlink_Config>"
    Examples:

      | Var_Stage | Hyperlink_Config | hyperlink                |
      | Disbursal | TRUE             | should see hyperlink     |
      | Disbursal | FALSE            | should not see hyperlink |


  #CAS-13157 Adjustment Amount Details hyperlink to be provided on the Disbursal Screen.
  Scenario Outline: ACAUTOCAS-2667:  The Adjustment Amount column along with the amount of the charges should include a color indicator
    And Loan application is at "<Var_Stage>" stage
    And user is already in modal window of with all charge details on disbursal entry section
    When user clicks on the details hyperlink under adjustment amount field on disbursal entry section at "<Var_Stage>" stage
    And user selects charge as "<Charge_Type>" charge at "<Var_Stage>" stage
    Then user sees a color indicator specifying "<Color>" color

    Examples:

      | Var_Stage            | Color | Charge_Type |
      | Disbursal            | green | Receivable  |
      | Disbursal            | red   | Payable     |
      | Subsequent Disbursal | green | Receivable  |
      | Subsequent Disbursal | red   | Payable     |


     #CAS-13157 Adjustment Amount Details hyperlink to be provided on the Disbursal Screen.
  Scenario Outline: ACAUTOCAS-2668:  Adjustment Amount automatically changed on Disbursal Payee details for policy executed charges at "<Var_Stage>" Stage
    And Loan application is at "<Var_Stage>" stage
    And user is already in disbursal entry section with all the charges listed in charges grid
    And user update the effective charge amount on charges screen against all charges
    When user checks adjust charge checkbox on receipt details screen against "<Charge_Nature>" charges
    And user verifies that receipt should not be allocated against the charge selected
    And user selects bptype "<Bptype>" from drop down
    And user clicks on adjust unadjust charge done button on receipt screen
    Then user verifies the adjustment amount populated on disbursal entry screen along with on payee details
    And user should verify that the changed charge amount should be auto adjusted with the disbursal amount
    Examples:

      | Var_Stage            | Charge_Nature            | Bptype          |
      | Disbursal            | Deductible               | Customer        |
      | Disbursal            | Deductible               | Dealer Supplier |
      | Disbursal            | Deductible               | Manufacturer    |
      | Disbursal            | Collectable + Deductible | Customer        |
      | Disbursal            | Collectable + Deductible | Dealer Supplier |
      | Disbursal            | Collectable + Deductible | Manufacturer    |
      | Disbursal            | Collectable              | Customer        |
      | Disbursal            | Collectable              | Dealer Supplier |
      | Disbursal            | Collectable              | Manufacturer    |
      | Subsequent Disbursal | Deductible               | Customer        |
      | Subsequent Disbursal | Deductible               | Dealer Supplier |
      | Subsequent Disbursal | Deductible               | Manufacturer    |
      | Subsequent Disbursal | Collectable + Deductible | Dealer Supplier |
      | Subsequent Disbursal | Collectable + Deductible | Customer        |
      | Subsequent Disbursal | Collectable + Deductible | Manufacturer    |
      | Subsequent Disbursal | Collectable              | Dealer Supplier |
      | Subsequent Disbursal | Collectable              | Customer        |
      | Subsequent Disbursal | Collectable              | Manufacturer    |

     # CAS-75260_GA3.5>Disbursal Maker>>After changing the charge amount in Disbursal payee details against BP adjustment amount is not getting changed automatically
  Scenario Outline: ACAUTOCAS-2669:  Adjustment Amount automatically changed for manually added charges on Receipt Screen and should be auto adjusted with the Disbursal Amount at "<Var_Stage>" Stage
    And Loan application is at "<Var_Stage>" stage
    And user is already in disbursal entry section with all the charges listed in charges grid
    When user adds manual "<Charge_Nature>" charges by clicking on + icon
    And user update charge amount on charges screen against manually added charges
    And user verifies that "<Charge_Nature>" charges are "<Receipt_Charge_Visible>" on receipt screen
    And user verifies that receipt should not be allocated against the charge added
    And user selects bptype "<Bptype>" from drop down to adjust the charges for which charges are "<Receipt_Charge_Visible>" on receipt screen
    And user clicks on adjust unadjust charge done button in last column on receipt screen
    Then user verifies the adjustment amount populated on disbursal entry screen along with on payee details
    And user should verify that the changed charge amount should be auto adjusted with the disbursal amount

    Examples:
      | Var_Stage            | Charge_Nature            | Bptype          | Receipt_Charge_Visible |
      | Disbursal            | Deductible               | Customer        | Not Visible            |
      | Disbursal            | Deductible               | Dealer Supplier | Not Visible            |
      | Disbursal            | Deductible               | Manufacturer    | Not Visible            |
      | Disbursal            | Collectable              | Customer        | Visible                |
      | Disbursal            | Collectable              | Dealer Supplier | Visible                |
      | Disbursal            | Collectable              | Manufacturer    | Visible                |
      | Disbursal            | Collectable + Deductible | Customer        | Visible                |
      | Disbursal            | Collectable + Deductible | Dealer Supplier | Visible                |
      | Disbursal            | Collectable + Deductible | Manufacturer    | Visible                |
      | Subsequent Disbursal | Deductible               | Customer        | Not Visible            |
      | Subsequent Disbursal | Deductible               | Dealer Supplier | Not Visible            |
      | Subsequent Disbursal | Deductible               | Manufacturer    | Not Visible            |
      | Subsequent Disbursal | Collectable              | Customer        | Visible                |
      | Subsequent Disbursal | Collectable              | Dealer Supplier | Visible                |
      | Subsequent Disbursal | Collectable              | Manufacturer    | Visible                |
      | Subsequent Disbursal | Collectable + Deductible | Dealer Supplier | Visible                |
      | Subsequent Disbursal | Collectable + Deductible | Customer        | Visible                |
      | Subsequent Disbursal | Collectable + Deductible | Manufacturer    | Visible                |


            # CAS-75260_GA3.5>Disbursal Maker>>After changing the charge amount in Disbursal payee details against BP adjustment amount is not getting changed automatically
  Scenario Outline: ACAUTOCAS-2670:  Receipts adjustment to different BPType for BT Cases on Receipt Screen at "<Var_Stage>" Stage
    And Loan application is at "<Var_Stage>" stage
    And user is already in charges section with all the charges listed in charges grid
    When user adds manual "<Charge_Nature>" charges by clicking on + icon
    And user update charge amount on charges screen
    And user navigates to receipt screen to select bptype "<Bptype>" from drop down to adjust the charges of "<Charge_Type>" type on receipt screen for BT Type "<BT_Disbursal_Type>"
    And user clicks on adjust unadjust charge done button in last column on receipt screen for BPType "<Bptype>"
    And user done receipt adjustment for BPType "<Bptype>"
    Then user should not be able to adjust the "<Charge_Type>" charge for BT Type "<BT_Disbursal_Type>"
    And user gets message as <Error_Msg>

    Examples:
      | Var_Stage                   | Charge_Nature            | Bptype          | Charge_Type | BT_Disbursal_Type | Error_Msg                                                                    |
      | Lead Details                | Collectable + Deductible | Customer        | Payable     | Internal          | "Charge can be adjusted to same Business Partner only."                      |
      | Lead Details                | Collectable + Deductible | Dealer Supplier | Payable     | Internal          | "For balance transfer entry, charge amount can only be adjusted on customer" |
      | Lead Details                | Collectable + Deductible | Manufacturer    | Payable     | Internal          | "For balance transfer entry, charge amount can only be adjusted on customer" |
      | DDE                         | Collectable + Deductible | Customer        | Payable     | Internal          | "Charge can be adjusted to same Business Partner only."                      |
      | DDE                         | Collectable + Deductible | Dealer Supplier | Payable     | Internal          | "For balance transfer entry, charge amount can only be adjusted on customer" |
      | DDE                         | Collectable + Deductible | Manufacturer    | Payable     | Internal          | "For balance transfer entry, charge amount can only be adjusted on customer" |
      | Post Approval               | Collectable + Deductible | Customer        | Payable     | Internal          | "Charge can be adjusted to same Business Partner only."                      |
      | Post Approval               | Collectable + Deductible | Dealer Supplier | Payable     | Internal          | "For balance transfer entry, charge amount can only be adjusted on customer" |
      | Post Approval               | Collectable + Deductible | Manufacturer    | Payable     | Internal          | "For balance transfer entry, charge amount can only be adjusted on customer" |
      | Credit Approval             | Collectable + Deductible | Customer        | Payable     | Internal          | "Charge can be adjusted to same Business Partner only."                      |
      | Credit Approval             | Collectable + Deductible | Dealer Supplier | Payable     | Internal          | "For balance transfer entry, charge amount can only be adjusted on customer" |
      | Credit Approval             | Collectable + Deductible | Manufacturer    | Payable     | Internal          | "For balance transfer entry, charge amount can only be adjusted on customer" |
      | Disbursal                   | Collectable + Deductible | Customer        | Payable     | Internal          | "Charge can be adjusted to same Business Partner only."                      |
      | Disbursal                   | Collectable + Deductible | Dealer Supplier | Payable     | Internal          | "For balance transfer entry, charge amount can only be adjusted on customer" |
      | Disbursal                   | Collectable + Deductible | Manufacturer    | Payable     | Internal          | "For balance transfer entry, charge amount can only be adjusted on customer" |
      | Subsequent Disbursal        | Collectable + Deductible | Customer        | Payable     | Internal          | "Charge can be adjusted to same Business Partner only."                      |
      | Subsequent Disbursal        | Collectable + Deductible | Dealer Supplier | Payable     | Internal          | "For balance transfer entry, charge amount can only be adjusted on customer" |
      | Subsequent Disbursal        | Collectable + Deductible | Manufacturer    | Payable     | Internal          | "For balance transfer entry, charge amount can only be adjusted on customer" |
      | App Update Recommendation   | Collectable + Deductible | Customer        | Payable     | Internal          | "Charge can be adjusted to same Business Partner only."                      |
      | App Update Recommendation l | Collectable + Deductible | Dealer Supplier | Payable     | Internal          | "For balance transfer entry, charge amount can only be adjusted on customer" |
      | App Update Recommendation   | Collectable + Deductible | Manufacturer    | Payable     | Internal          | "For balance transfer entry, charge amount can only be adjusted on customer" |
      | App Update Approval         | Collectable + Deductible | Customer        | Payable     | Internal          | "Charge can be adjusted to same Business Partner only."                      |
      | App Update Approval         | Collectable + Deductible | Dealer Supplier | Payable     | Internal          | "For balance transfer entry, charge amount can only be adjusted on customer" |
      | App Update Approval         | Collectable + Deductible | Manufacturer    | Payable     | Internal          | "For balance transfer entry, charge amount can only be adjusted on customer" |
      | Tranche Initiation          | Collectable + Deductible | Customer        | Payable     | Internal          | "Charge can be adjusted to same Business Partner only."                      |
      | Tranche Initiation          | Collectable + Deductible | Dealer Supplier | Payable     | Internal          | "For balance transfer entry, charge amount can only be adjusted on customer" |
      | Tranche Initiation          | Collectable + Deductible | Manufacturer    | Payable     | Internal          | "For balance transfer entry, charge amount can only be adjusted on customer" |
      | Tranche Approval            | Collectable + Deductible | Customer        | Payable     | Internal          | "Charge can be adjusted to same Business Partner only."                      |
      | Tranche Approval            | Collectable + Deductible | Dealer Supplier | Payable     | Internal          | "For balance transfer entry, charge amount can only be adjusted on customer" |
      | Tranche Approval            | Collectable + Deductible | Manufacturer    | Payable     | Internal          | "For balance transfer entry, charge amount can only be adjusted on customer" |


  Scenario Outline: ACAUTOCAS-2671:  System should give error in case business partners are not applicable in application while adding Manual Charges from Disbursal Entry Charges Screen at "<Var_Stage>"  Stage
    And Loan application is at "<Var_Stage>" stage
    And user is already in charges section with all the charges listed in charges grid with effective amount entered against all charges
    When user adds manual charge by clicking on + icon on charges grid
    And user selects business partner charges from grid which are not applicable for an application
    And user saves the record
    Then user gets a message "Can not Apply Charges. Business Partner does not exist for charges"

    Examples:

      | Var_Stage                 |
      | Lead Details              |
      | DDE                       |
      | Credit Approval           |
      | Post Approval             |
      | Disbursal                 |
      | Recommendation            |
      | Reconsideration           |
      | App Update Recommendation |
      | App Update Approval       |
      | Tranche Initiation        |
      | Tranche Approval          |


  Scenario Outline: ACAUTOCAS-2672:  Adding Manual Charges in Charges grid on Charges Screen at "<Var_Stage>"  Stage
    And Loan application is at "<Var_Stage>" stage
    And user is already in charges section with all the charges listed in charges grid post policy execution
    When user adds manual charge by clicking on + icon on charges grid
    And user verifies charges list in charges grid
    Then user should not see those charges in the list for addition, which were already populated in list post policy execution
    And user should not be able to modify currency other than INR
    Examples:

      | Var_Stage                 |
      | Lead Details              |
      | DDE                       |
      | Credit Approval           |
      | Post Approval             |
      | Disbursal                 |
      | Recommendation            |
      | Reconsideration           |
      | App Update Recommendation |
      | App Update Approval       |
      | Tranche Initiation        |
      | Tranche Approval          |


    #CAS-100321	Disbursal Revamp : Charges, receipts & adjustment handling in new charges design
  Scenario Outline: ACAUTOCAS-2673:  Viewing Charge Nature in Charges Tab at  "<Var_Stage>"  Stage
    And Loan application is at "<Var_Stage>" stage
    And user is already in charges with Charges Tab available
    When user checks "<Entry_Operation>" charges with charge nature as "<Charge_Nature>" at "<Var_Stage>" Stage
    Then user should see charges with charge nature as "<Charge_Nature>" in charges grid
    Examples:

      | Var_Stage                 | Entry_Operation     | Charge_Nature                      |
      | DDE                       |                     | Collectable                        |
      | DDE                       |                     | Deductible                         |
      | DDE                       |                     | Collectable + Deductible           |
      | DDE                       |                     | Neither Collectable Nor Deductible |
      | Credit Approval           |                     | Collectable                        |
      | Credit Approval           |                     | Deductible                         |
      | Credit Approval           |                     | Collectable + Deductible           |
      | Credit Approval           |                     | Neither Collectable Nor Deductible |
      | Post Approval             |                     | Collectable                        |
      | Post Approval             |                     | Deductible                         |
      | Post Approval             |                     | Collectable + Deductible           |
      | Post Approval             |                     | Neither Collectable Nor Deductible |
      | Disbursal                 | for Entry level     | Collectable                        |
      | Disbursal                 | for Entry level     | Deductible                         |
      | Disbursal                 | for Entry level     | Collectable + Deductible           |
      | Disbursal                 | for Entry level     | Neither Collectable Nor Deductible |
      | Disbursal                 | for Operation level | Collectable                        |
      | Disbursal                 | for Operation level | Deductible                         |
      | Disbursal                 | for Operation level | Collectable + Deductible           |
      | Disbursal                 | for Operation level | Neither Collectable Nor Deductible |
      | App update Recommendation |                     | Collectable                        |
      | App update Recommendation |                     | Collectable + Deductible           |
      | App update Recommendation |                     | Deductible                         |
      | App update Recommendation |                     | Neither Collectable Nor Deductible |
      | App update Approval       |                     | Collectable                        |
      | App update Approval       |                     | Collectable + Deductible           |
      | App update Approval       |                     | Deductible                         |
      | App update Approval       |                     | Neither Collectable Nor Deductible |
      | Tranche Initiation        |                     | Collectable                        |
      | Tranche Initiation        |                     | Collectable + Deductible           |
      | Tranche Initiation        |                     | Deductible                         |
      | Tranche Initiation        |                     | Neither Collectable Nor Deductible |
      | Tranche Approval          |                     | Collectable                        |
      | Tranche Approval          |                     | Collectable + Deductible           |
      | Tranche Approval          |                     | Deductible                         |
      | Tranche Approval          |                     | Neither Collectable Nor Deductible |
      | Recommendation            |                     | Collectable                        |
      | Recommendation            |                     | Collectable + Deductible           |
      | Recommendation            |                     | Deductible                         |
      | Recommendation            |                     | Neither Collectable Nor Deductible |
      | Reconsideration           |                     | Collectable                        |
      | Reconsideration           |                     | Collectable + Deductible           |
      | Reconsideration           |                     | Deductible                         |
      | Reconsideration           |                     | Neither Collectable Nor Deductible |


  #  CAS-100321	Disbursal Revamp : Charges, receipts & adjustment handling in new charges design
  Scenario Outline: ACAUTOCAS-2674:  Viewing Charges Nature in Receipts Tab at  "<Var_Stage>"  Stage
    And Loan application is at "<Var_Stage>" stage
    And user is already in disbursal entry section with Receipt Tab available
    When user checks "<Entry_Operation>" charges with charge nature as "<Charge_Nature>" in receipts tab at "<Var_Stage>" Stage
    Then user should see charges of "<Charge_Type>" type with charge nature as "<Charge_Nature>" in receipts grid
    Examples:

      | Var_Stage                 | Entry_Operation     | Charge_Nature            | Charge_Type |
      | DDE                       |                     | Collectable              | Receivable  |
      | DDE                       |                     | Collectable + Deductible | Receivable  |
      | DDE                       |                     | Collectable              | Payable     |
      | DDE                       |                     | Collectable + Deductible | Payable     |
      | DDE                       |                     | Deductible               | Receivable  |
      | Credit Approval           |                     | Collectable              | Receivable  |
      | Credit Approval           |                     | Collectable + Deductible | Receivable  |
      | Credit Approval           |                     | Collectable              | Payable     |
      | Credit Approval           |                     | Collectable + Deductible | Payable     |
      | Credit Approval           |                     | Deductible               | Receivable  |
      | Post Approval             |                     | Collectable              | Receivable  |
      | Post Approval             |                     | Collectable + Deductible | Receivable  |
      | Post Approval             |                     | Collectable              | Payable     |
      | Post Approval             |                     | Collectable + Deductible | Payable     |
      | Post Approval             |                     | Deductible               | Receivable  |
      | Disbursal                 | for Entry level     | Collectable              | Receivable  |
      | Disbursal                 | for Entry level     | Collectable + Deductible | Receivable  |
      | Disbursal                 | for Entry level     | Collectable              | Payable     |
      | Disbursal                 | for Entry level     | Collectable + Deductible | Payable     |
      | Disbursal                 | for Entry level     | Deductible               | Receivable  |
      | Disbursal                 | for Operation level | Collectable              | Receivable  |
      | Disbursal                 | for Operation level | Collectable + Deductible | Receivable  |
      | Disbursal                 | for Operation level | Collectable              | Payable     |
      | Disbursal                 | for Operation level | Collectable + Deductible | Payable     |
      | Disbursal                 | for Operation level | Deductible               | Receivable  |
      | App update Recommendation |                     | Collectable              | Receivable  |
      | App update Recommendation |                     | Collectable + Deductible | Receivable  |
      | App update Recommendation |                     | Collectable              | Payable     |
      | App update Recommendation |                     | Collectable + Deductible | Payable     |
      | App update Recommendation |                     | Deductible               | Receivable  |
      | App update Approval       |                     | Collectable              | Receivable  |
      | App update Approval       |                     | Collectable + Deductible | Receivable  |
      | App update Approval       |                     | Collectable              | Payable     |
      | App update Approval       |                     | Collectable + Deductible | Payable     |
      | App update Approval       |                     | Deductible               | Receivable  |
      | Tranche Initiation        |                     | Collectable              | Receivable  |
      | Tranche Initiation        |                     | Collectable + Deductible | Receivable  |
      | Tranche Initiation        |                     | Collectable              | Payable     |
      | Tranche Initiation        |                     | Collectable + Deductible | Payable     |
      | Tranche Initiation        |                     | Deductible               | Receivable  |
      | Tranche Approval          |                     | Collectable              | Receivable  |
      | Tranche Approval          |                     | Collectable + Deductible | Receivable  |
      | Tranche Approval          |                     | Collectable              | Payable     |
      | Tranche Approval          |                     | Collectable + Deductible | Payable     |
      | Tranche Approval          |                     | Deductible               | Receivable  |
      | Recommendation            |                     | Collectable              | Receivable  |
      | Recommendation            |                     | Collectable + Deductible | Receivable  |
      | Recommendation            |                     | Collectable              | Payable     |
      | Recommendation            |                     | Collectable + Deductible | Payable     |
      | Recommendation            |                     | Deductible               | Receivable  |
      | Reconsideration           |                     | Collectable              | Receivable  |
      | Reconsideration           |                     | Collectable + Deductible | Receivable  |
      | Reconsideration           |                     | Collectable              | Payable     |
      | Reconsideration           |                     | Collectable + Deductible | Payable     |
      | Reconsideration           |                     | Deductible               | Receivable  |


  Scenario Outline: ACAUTOCAS-2680:  Receipt Details Tab should be available at "<Var_Stage>" stage with all Receivable Charges captured on loan details and charge details screen as per the charge policy definition
    And Loan application is at "<Var_Stage>" stage with charge policy already executed
    When user clicks on receipt details tab at "<Var_Stage>"
    Then user should see all charges to be collected along with manual charges added in receipt details section at "<Var_Stage>"
    And user should see all charges to be adjusted along with manual charges added in receipt details section at "<Var_Stage>"
    #Receipt screen should be available for receiving charges with subsequent disbursal's,
      # however, the previously collected receipts should be non-editable
    Examples:

      | Var_Stage                 |
      | Lead Details              |
      | DDE                       |
      | Credit Approval           |
      | Post-Approval             |
      | Disbursal                 |
      | Recommendation            |
      | Reconsideration           |
      | App Update Recommendation |
      | App Update Approval       |
      | Tranche Initiation        |
      | Tranche Approval          |

  Scenario Outline: ACAUTOCAS-2675:  Receipt details for adjusting any receivable charges at "<Var_Stage>"  Stage
    And Loan application is at "<Var_Stage>" stage
    And charges policy already executed
    When user checks the "<Login_Preapproval>" charge be available at "<Var_Stage>" Stage
    Then user should be able to see receivable charges as per charge policy

    Examples:

      | Var_Stage    | Login_Preapproval       |
      | Lead Details | Login                   |
      | Lead Details | any Pre approval charge |

  #  CAS-100321	Disbursal Revamp : Charges, receipts & adjustment handling in new charges design
#  CAS-50662	Subsequent disbursal-receiving charges and FP changes
  Scenario Outline: ACAUTOCAS-2676:  Receipt and Adjustment as per the Charge Nature "<Charge_Nature>"  at  "<Var_Stage>"  Stage
    And Loan application is at "<Var_Stage>" stage
    And Receipt Tab is available
    When user checks for charge nature as "<Charge_Nature>"
    Then user should be able to take "<Receipt_Adjust>" as per charge nature as "<Charge_Nature>"
    Examples:

      | Var_Stage                 | Receipt_Adjust | Charge_Nature            |
      | Lead Details              | Receipt        | Collectible              |
      | Lead Details              | Receipt+Adjust | Collectible + Deductible |
      | Lead Details              | Adjust         | Deductible               |
      | Lead Details              | Adjust         | Collectible + Deductible |
      | Lead Details              | Adjust         | Collectible              |
      | DDE                       | Receipt        | Collectible              |
      | DDE                       | Receipt+Adjust | Collectible + Deductible |
      | DDE                       | Adjust         | Deductible               |
      | DDE                       | Adjust         | Collectible + Deductible |
      | DDE                       | Adjust         | Collectible              |
      | Credit Approval           | Receipt        | Collectible              |
      | Credit Approval           | Receipt+Adjust | Collectible + Deductible |
      | Credit Approval           | Adjust         | Deductible               |
      | Credit Approval           | Adjust         | Collectible + Deductible |
      | Credit Approval           | Adjust         | Collectible              |
      | Post Approval             | Receipt        | Collectible              |
      | Post Approval             | Receipt+Adjust | Collectible + Deductible |
      | Post Approval             | Adjust         | Deductible               |
      | Post Approval             | Adjust         | Collectible + Deductible |
      | Post Approval             | Adjust         | Collectible              |
      | Disbursal                 | Receipt        | Collectible              |
      | Disbursal                 | Receipt+Adjust | Collectible + Deductible |
      | Disbursal                 | Adjust         | Deductible               |
      | Disbursal                 | Adjust         | Collectible + Deductible |
      | Disbursal                 | Adjust         | Collectible              |
      | Reconsideration           | Receipt        | Collectible              |
      | Reconsideration           | Receipt+Adjust | Collectible + Deductible |
      | Reconsideration           | Adjust         | Deductible               |
      | Reconsideration           | Adjust         | Collectible + Deductible |
      | Reconsideration           | Adjust         | Collectible              |
      | App Update Recommendation | Receipt        | Collectible              |
      | App Update Recommendation | Receipt+Adjust | Collectible + Deductible |
      | App Update Recommendation | Adjust         | Deductible               |
      | App Update Recommendation | Adjust         | Collectible + Deductible |
      | App Update Recommendation | Adjust         | Collectible              |
      | App Update Approval       | Receipt        | Collectible              |
      | App Update Approval       | Receipt+Adjust | Collectible + Deductible |
      | App Update Approval       | Adjust         | Deductible               |
      | App Update Approval       | Adjust         | Collectible + Deductible |
      | App Update Approval       | Adjust         | Collectible              |
      | Tranche Initiation        | Receipt        | Collectable              |
      | Tranche Initiation        | Receipt+Adjust | Collectable + Deductible |
      | Tranche Initiation        | Adjust         | Deductible               |
      | Tranche Initiation        | Adjust         | Collectable + Deductible |
      | Tranche Initiation        | Adjust         | Collectable              |
      | Tranche Approval          | Receipt        | Collectable              |
      | Tranche Approval          | Receipt+Adjust | Collectable + Deductible |
      | Tranche Approval          | Adjust         | Deductible               |
      | Tranche Approval          | Adjust         | Collectable + Deductible |
      | Tranche Approval          | Adjust         | Collectable              |
      | Recommendation            | Receipt        | Collectible              |
      | Recommendation            | Receipt+Adjust | Collectible + Deductible |
      | Recommendation            | Adjust         | Deductible               |
      | Recommendation            | Adjust         | Collectible + Deductible |
      | Recommendation            | Adjust         | Collectible              |

  Scenario Outline: ACAUTOCAS-2677:  BPType drop down should have values as per business partner attached with an application on Receipt Details screen at  "<Var_Stage>"  Stage
    And Loan application is at "<Var_Stage>" stage
    And user is already in charges section with receipt details having all receivable charges details
    When user checks adjust charge checkbox on receipt details screen against charges
    And user verifies bptype drop down on receipt details screen
    Then user should be able to see business partner as "<BPType>" which are applicable in application

    Examples:

      | Var_Stage                 | BPType          |
      | Lead Details              | Customer        |
      | Lead Details              | Dealer Supplier |
      | Lead Details              | Manufacturer    |
      | DDE                       | Customer        |
      | DDE                       | Dealer Supplier |
      | DDE                       | Manufacturer    |
      | Credit Approval           | Customer        |
      | Credit Approval           | Dealer Supplier |
      | Credit Approval           | Manufacturer    |
      | Post Approval             | Customer        |
      | Post Approval             | Dealer Supplier |
      | Post Approval             | Manufacturer    |
      | Disbursal                 | Customer        |
      | Disbursal                 | Dealer Supplier |
      | Disbursal                 | Manufacturer    |
      | Recommendation            | Customer        |
      | Recommendation            | Dealer Supplier |
      | Recommendation            | Manufacturer    |
      | Reconsideration           | Customer        |
      | Reconsideration           | Dealer Supplier |
      | Reconsideration           | Manufacturer    |
      | App Update Recommendation | Customer        |
      | App Update Recommendation | Dealer Supplier |
      | App Update Recommendation | Manufacturer    |
      | App Update Approval       | Customer        |
      | App Update Approval       | Dealer Supplier |
      | App Update Approval       | Manufacturer    |
      | Tranche Initiation        | Customer        |
      | Tranche Initiation        | Dealer Supplier |
      | Tranche Initiation        | Manufacturer    |
      | Tranche Approval          | Customer        |
      | Tranche Approval          | Dealer Supplier |
      | Tranche Approval          | Manufacturer    |


  #  CAS-100321	Disbursal Revamp : Charges, receipts & adjustment handling in new charges design
  Scenario Outline: ACAUTOCAS-2678:  Adjust Option enabling and disabling in Receipts Tab at  "<Var_Stage>"  Stage
    And Loan application is at "<Var_Stage>" stage
    And user is already in Receipt Tab available
    When user checks for adjust option in receipts tab against all listed charges at "<Var_Stage>" Stage
    Then user should see "<Charge_Nature>" charge with "<Adjust_Option>" in receipts grid for which disbursal tranche is already initiated and disbursed
    Examples:

      | Var_Stage                 | Adjust_Option          | Charge_Nature            |
      | Lead Details              | Adjust option disabled | Collectible              |
      | Lead Details              | Adjust option disabled | Collectible + Deductible |
      | Lead Details              | Adjust option disabled | Deductible               |
      | DDE                       | Adjust option disabled | Collectible              |
      | DDE                       | Adjust option disabled | Collectible + Deductible |
      | DDE                       | Adjust option disabled | Deductible               |
      | Credit Approval           | Adjust option disabled | Collectible              |
      | Credit Approval           | Adjust option disabled | Collectible + Deductible |
      | Credit Approval           | Adjust option disabled | Deductible               |
      | Post Approval             | Adjust option disabled | Collectible              |
      | Post Approval             | Adjust option disabled | Collectible + Deductible |
      | Post Approval             | Adjust option disabled | Deductible               |
      | Disbursal                 | Adjust option disabled | Collectible              |
      | Disbursal                 | Adjust option disabled | Collectible + Deductible |
      | Disbursal                 | Adjust option disabled | Deductible               |
      | Reconsideration           | Adjust option disabled | Collectable              |
      | Reconsideration           | Adjust option disabled | Collectible + Deductible |
      | Reconsideration           | Adjust option disabled | Deductible               |
      | App Update Recommendation | Adjust option disabled | Collectable              |
      | App Update Recommendation | Adjust option disabled | Collectible + Deductible |
      | App Update Recommendation | Adjust option disabled | Deductible               |
      | App Update Approval       | Adjust option disabled | Collectable              |
      | App Update Approval       | Adjust option disabled | Collectible + Deductible |
      | App Update Approval       | Adjust option disabled | Deductible               |
      | Tranche Initiation        | Adjust option disabled | Collectable              |
      | Tranche Initiation        | Adjust option disabled | Collectible + Deductible |
      | Tranche Initiation        | Adjust option disabled | Deductible               |
      | Tranche Approval          | Adjust option disabled | Collectable              |
      | Tranche Approval          | Adjust option disabled | Collectible + Deductible |
      | Tranche Approval          | Adjust option disabled | Deductible               |

  Scenario Outline: ACAUTOCAS-2679:  Disbursal Initiation should give error in case receipts are left unadjusted on receipt details screen at save of loan parameter not mandatory at "<Var_Stage>" stage
    And Loan application is at "<Var_Stage>" stage
    And user is already on receipt details grid with all receivable charge on disbursal entry section
    When user leaves charges unadjusted with receipts in the grid
    And user initiates disbursal entry
    Then user should get message as "Charge Adjustment is Pending" while initiating disbursal event in case all charges are not adjusted
    Examples:

      | Var_Stage            |
      | Disbursal            |
      | Subsequent Disbursal |


      #FeatureID-ACAUTOCAS-404,ACAUTOCAS-406,ACAUTOCAS-407,CAS-50662
  #CAS-50662   Subsequent disbursal-receiving charges and FP changes
  Scenario Outline: ACAUTOCAS-4207:  Subsequent disbursal with receiving, payable charges and FP charges
    And Loan application is at "<Var_Stage>" stage
    When user maps the financial parameter at "<Var_Stage>" stage
    And user adds receivable payable charges at "<Var_Stage>"
    And user verifies previously collected charges on receipt details tab at "<Var_Stage>"
    And allocates charges against the receipt
    And user authorize receipt in LMS
    Then user verifies that the previously collected receipts should be non-editable
    #receipt screen should be available for receiving charges with subsequent disbursal
    #And receipt should be authorized in LMS
    And subsequent disbursal should be done successfully
    Examples:

      | Var_Stage |
      | Disbursal |

  #FeatureID-ACAUTOCAS-405
    #CAS-50662   Subsequent disbursal-receiving charges and FP changes
  Scenario Outline: ACAUTOCAS-4208:  Subsequent disbursal with short receipt charges
    And Loan application is at "<Var_Stage>" stage
    When user adds short receipt charges with "<Var_Stage>"
    And user receive short receipt charges
    Then user should be able to short receive a receivable charge with "<Var_Stage>"
    And user should be able to do the subsequent disbursal
    Examples:

      | Var_Stage |
      | Disbursal |

  Scenario Outline: ACAUTOCAS-2037:  Receivable amount collection by capturing instrument details in Receipts detail section at at "<Var_Stage>" stage
    And User gets all receivable charges on receipt details screen of CAS module post charge policy execution
    And user clicked on collect add instrument details button
    And user gets modal window to capture instrument details for receivable amount at "<Var_Stage>" stage
    When user checks the record for which allocation is required at "<Var_Stage>" stage
    And user adds the receipt amount details in the grid with receipt no field should be mandatory
    And user enters receipt date should be equal to LMS business date
    Then user should see total receiving amount in instrument details outside grid which was all checked in receipt grid above at "<Var_Stage>" stage
    And user saves the record
    #And user shall be able to increase the total receiving amount
        #and shall not be able to decrease it.
    Examples:

      | Var_Stage                 |
      | Lead Details              |
      | DDE                       |
      | Credit Approval           |
      | Post-Approval             |
      | Disbursal                 |
      | Recommendation            |
      | Reconsideration           |
      | App Update Recommendation |
      | App Update Approval       |
      | Tranche Initiation        |
      | Tranche Approval          |


  Scenario Outline: ACAUTOCAS-2681:  Receipt ID shall be generated in LMS and sent back to CAS on instrument details section of Receipts details at "<Var_Stage>" stage
    And User entered the receiving amount details on instrument details section of receipt details screen of CAS module
    When user saves the receivable amount details from instrument details section at "<Var_Stage>" stage
    And user "<entered_authorized>" receipt in LMS
    Then user should see Receipt ID generated in LMS
    #or Reference ID
    And user should see receipt status received from LMS as "<Receipt_Status>"
  #at "<Var_Stage>" stage

    Examples:

      | Var_Stage                 | Receipt_Status     | entered_authorized |
      | Lead Details              | Receipt entered    | enters             |
      | DDE                       | Receipt entered    | enters             |
      | Credit Approval           | Receipt entered    | enters             |
      | Post-Approval             | Receipt entered    | enters             |
      | Disbursal                 | Receipt entered    | enters             |
      | Recommendation            | Receipt entered    | enters             |
      | Reconsideration           | Receipt entered    | enters             |
      | Lead Details              | Realization Author | authorizes         |
      | DDE                       | Realization Author | authorizes         |
      | Credit Approval           | Realization Author | authorizes         |
      | Post-Approval             | Realization Author | authorizes         |
      | Disbursal                 | Realization Author | authorizes         |
      | Recommendation            | Realization Author | authorizes         |
      | Reconsideration           | Realization Author | authorizes         |
      | App Update Recommendation | Receipt entered    | enters             |
      | App Update Recommendation | Realization Author | authorizes         |
      | App Update Approval       | Receipt entered    | entered            |
      | App Update Approval       | Realization Author | authorizes         |
      | Tranche Initiation        | Receipt entered    | entered            |
      | Tranche Initiation        | Realization Author | authorizes         |
      | Tranche Approval          | Receipt entered    | entered            |
      | Tranche Approval          | Realization Author | authorizes         |


  Scenario Outline: ACAUTOCAS-2682:  Receivables Allocated flag should be non editable post receipt ID generation in LMS on instrument details section when receivables are fully allocated at "<Var_Stage>" stage
    And Receipt ID generated in LMS and is visible on instrument details section with status as "<Receipt_Status>"
    #And receivables allocated column indicates when receivables are fully or partially or non allocated to the instrument
    When user checks for receivables allocated flag in instrument details grid at "<Var_Stage>" stage
    Then receivables allocated flag shall be "<Edit_Non_Edit>" for "<Actions>" receipts at "<Var_Stage>" stage
    Examples:

      | Var_Stage                 | Receipt_Status     | Actions             | Edit_Non_Edit |
      | Lead Details              | Receipt Entered    | Partially Allocated | Editable      |
      | Lead Details              | Receipt Entered    | Not Allocated       | Editable      |
      | Lead Details              | Receipt Entered    | Fully Allocated     | Non Editable  |
      | Lead Details              | Realization Author | Partially Allocated | Editable      |
      | Lead Details              | Realization Author | Not Allocated       | Editable      |
      | Lead Details              | Realization Author | Fully Allocated     | Non Editable  |
      | DDE                       | Receipt Entered    | Partially Allocated | Editable      |
      | DDE                       | Receipt Entered    | Not Allocated       | Editable      |
      | DDE                       | Receipt Entered    | Fully Allocated     | Non Editable  |
      | DDE                       | Realization Author | Partially Allocated | Editable      |
      | DDE                       | Realization Author | Not Allocated       | Editable      |
      | DDE                       | Realization Author | Fully Allocated     | Non Editable  |
      | Disbursal                 | Receipt Entered    | Partially Allocated | Editable      |
      | Disbursal                 | Receipt Entered    | Not Allocated       | Editable      |
      | Disbursal                 | Receipt Entered    | Fully Allocated     | Non Editable  |
      | Disbursal                 | Realization Author | Partially Allocated | Editable      |
      | Disbursal                 | Realization Author | Not Allocated       | Editable      |
      | Disbursal                 | Realization Author | Fully Allocated     | Non Editable  |
      | Credit Approval           | Receipt Entered    | Partially Allocated | Editable      |
      | Credit Approval           | Receipt Entered    | Not Allocated       | Editable      |
      | Credit Approval           | Receipt Entered    | Fully Allocated     | Non Editable  |
      | Credit Approval           | Realization Author | Partially Allocated | Editable      |
      | Credit Approval           | Realization Author | Not Allocated       | Editable      |
      | Credit Approval           | Realization Author | Fully Allocated     | Non Editable  |
      | Post Approval             | Receipt Entered    | Partially Allocated | Editable      |
      | Post Approval             | Receipt Entered    | Not Allocated       | Editable      |
      | Post Approval             | Receipt Entered    | Fully Allocated     | Non Editable  |
      | Post Approval             | Realization Author | Partially Allocated | Editable      |
      | Post Approval             | Realization Author | Not Allocated       | Editable      |
      | Post Approval             | Realization Author | Fully Allocated     | Non Editable  |
      | Recommendation            | Receipt Entered    | Partially Allocated | Editable      |
      | Recommendation            | Receipt Entered    | Not Allocated       | Editable      |
      | Recommendation            | Receipt Entered    | Fully Allocated     | Non Editable  |
      | Recommendation            | Realization Author | Partially Allocated | Editable      |
      | Recommendation            | Realization Author | Not Allocated       | Editable      |
      | Recommendation            | Realization Author | Fully Allocated     | Non Editable  |
      | Reconsideration           | Receipt Entered    | Partially Allocated | Editable      |
      | Reconsideration           | Receipt Entered    | Not Allocated       | Editable      |
      | Reconsideration           | Receipt Entered    | Fully Allocated     | Non Editable  |
      | Reconsideration           | Realization Author | Partially Allocated | Editable      |
      | Reconsideration           | Realization Author | Not Allocated       | Editable      |
      | Reconsideration           | Realization Author | Fully Allocated     | Non Editable  |
      | App Update Recommendation | Receipt Entered    | Partially Allocated | Editable      |
      | App Update Recommendation | Receipt Entered    | Not Allocated       | Editable      |
      | App Update Recommendation | Receipt Entered    | Fully Allocated     | Non Editable  |
      | App Update Recommendation | Realization Author | Partially Allocated | Editable      |
      | App Update Recommendation | Realization Author | Not Allocated       | Editable      |
      | App Update Recommendation | Realization Author | Fully Allocated     | Non Editable  |
      | App Update Approval       | Receipt Entered    | Partially Allocated | Editable      |
      | App Update Approval       | Receipt Entered    | Not Allocated       | Editable      |
      | App Update Approval       | Receipt Entered    | Fully Allocated     | Non Editable  |
      | App Update Approval       | Realization Author | Partially Allocated | Editable      |
      | App Update Approval       | Realization Author | Not Allocated       | Editable      |
      | App Update Approval       | Realization Author | Fully Allocated     | Non Editable  |
      | Tranche Initiation        | Receipt Entered    | Partially Allocated | Editable      |
      | Tranche Initiation        | Receipt Entered    | Not Allocated       | Editable      |
      | Tranche Initiation        | Receipt Entered    | Fully Allocated     | Non Editable  |
      | Tranche Initiation        | Realization Author | Partially Allocated | Editable      |
      | Tranche Initiation        | Realization Author | Not Allocated       | Editable      |
      | Tranche Initiation        | Realization Author | Fully Allocated     | Non Editable  |
      | Tranche Approval          | Receipt Entered    | Partially Allocated | Editable      |
      | Tranche Approval          | Receipt Entered    | Not Allocated       | Editable      |
      | Tranche Approval          | Receipt Entered    | Fully Allocated     | Non Editable  |
      | Tranche Approval          | Realization Author | Partially Allocated | Editable      |
      | Tranche Approval          | Realization Author | Not Allocated       | Editable      |
      | Tranche Approval          | Realization Author | Fully Allocated     | Non Editable  |


  Scenario Outline: ACAUTOCAS-2683:  Actions column value changes in instrument details section as per Receivables Allocated flag depending on receipts allocation  at "<Var_Stage>" stage
    And Receipt details section is visible with receivable charges and receipt details entered
    When user checks for receivables allocated flag as "<Receipt_Status>" in instrument details grid at "<Var_Stage>" stage
    And receivables are "<Receipt_Status>" at "<Var_Stage>" stage
    And receipts details are "<saved_unsaved>"
    Then user gets links on actions column of "<Actions>"
    And not allocated radio button shall be "<button_enable>"

    Examples:

      | Var_Stage                 | Receipt_Status      | Actions          | saved_unsaved | button_enable |
      | Lead Details              | Partially Allocated | View             | saved         | editable      |
      | Lead Details              | Not Allocated       | View/Delete      | saved         | editable      |
      | Lead Details              | Not Allocated       | View/Edit/Delete | not saved     | editable      |
      | Lead Details              | Fully Allocated     | View             | saved         | disabled      |
      | DDE                       | Partially Allocated | View             | saved         | editable      |
      | DDE                       | Not ALlocated       | View/Delete      | saved         | editable      |
      | DDE                       | Not Allocated       | View/Edit/Delete | not saved     | editable      |
      | DDE                       | Fully Allocated     | View             | saved         | disabled      |
      | Credit Approval           | Partially Allocated | View             | saved         | editable      |
      | Credit Approval           | Not Allocated       | View/Delete      | saved         | editable      |
      | Credit Approval           | Not Allocated       | View/Edit/Delete | not saved     | editable      |
      | Credit Approval           | Fully Allocated     | View             | saved         | disabled      |
      | Post Approval             | Partially Allocated | View             | saved         | editable      |
      | Post Approval             | Not Allocated       | View/Delete      | saved         | editable      |
      | Post Approval             | Not Allocated       | View/Edit/Delete | not saved     | editable      |
      | Post Approval             | Fully Allocated     | View             | saved         | disabled      |
      | Disbursal                 | Partially Allocated | View             | saved         | editable      |
      | Disbursal                 | Not Allocated       | View/Delete      | saved         | editable      |
      | Disbursal                 | Not Allocated       | View/Edit/Delete | not saved     | editable      |
      | Disbursal                 | Fully Allocated     | View             | saved         | disabled      |
      | Recommendation            | Partially Allocated | View             | saved         | editable      |
      | Recommendation            | Not Allocated       | View/Delete      | saved         | editable      |
      | Recommendation            | Not Allocated       | View/Edit/Delete | not saved     | editable      |
      | Recommendation            | Fully Allocated     | View             | saved         | disabled      |
      | Reconsideration           | Partially Allocated | View             | saved         | editable      |
      | Reconsideration           | Not Allocated       | View/Delete      | saved         | editable      |
      | Reconsideration           | Not Allocated       | View/Edit/Delete | not saved     | editable      |
      | Reconsideration           | Fully Allocated     | View             | saved         | disabled      |
      | App Update Recommendation | Partially Allocated | View             | saved         | editable      |
      | App Update Recommendation | Not Allocated       | View/Delete      | saved         | editable      |
      | App Update Recommendation | Not Allocated       | View/Edit/Delete | not saved     | editable      |
      | App Update Recommendation | Fully Allocated     | View             | saved         | disabled      |
      | App Update Approval       | Partially Allocated | View             | saved         | editable      |
      | App Update Approval       | Not Allocated       | View/Delete      | saved         | editable      |
      | App Update Approval       | Not Allocated       | View/Edit/Delete | not saved     | editable      |
      | App Update Approval       | Fully Allocated     | View             | saved         | disabled      |
      | Tranche Initiation        | Partially Allocated | View             | saved         | editable      |
      | Tranche Initiation        | Not Allocated       | View/Delete      | saved         | editable      |
      | Tranche Initiation        | Not Allocated       | View/Edit/Delete | not saved     | editable      |
      | Tranche Initiation        | Fully Allocated     | View             | saved         | disabled      |
      | Tranche Approval          | Partially Allocated | View             | saved         | editable      |
      | Tranche Approval          | Not Allocated       | View/Delete      | saved         | editable      |
      | Tranche Approval          | Not Allocated       | View/Edit/Delete | not saved     | editable      |
      | Tranche Approval          | Fully Allocated     | View             | saved         | disabled      |


  Scenario Outline: ACAUTOCAS-2684:  Allocate Receipt button should be available and allocate all receivables with the receipt available in instrument details section at "<Var_Stage>" stage
    And Receipts generated in instrument details section with status as "<Receipt_Status>"
    And user is already on receipt details grid with all receivable charges
    When user clicks on allocate receipts button on receipt details screen  at "<Var_Stage>" stage
    Then all receivable charges will be allocated against the receipt amount taken in instrument details section  at "<Var_Stage>" stage
    And receivables allocated flag will become fully allocated
    Examples:

      | Var_Stage                 | Receipt_Status     |
      | DDE                       | Receipt Entered    |
      | DDE                       | Realization Author |
      | Credit Approval           | Receipt Entered    |
      | Credit Approval           | Realization Author |
      | Post Approval             | Receipt Entered    |
      | Post Approval             | Realization Author |
      | Disbursal                 | Receipt Entered    |
      | Disbursal                 | Realization Author |
      | Reconsideration           | Receipt Entered    |
      | Reconsideration           | Realization Author |
      | Recommendation            | Receipt Entered    |
      | Recommendation            | Realization Author |
      | App Update Recommendation | Receipt Entered    |
      | App Update Recommendation | Realization Author |
      | App Update Approval       | Receipt Entered    |
      | App Update Approval       | Realization Author |
      | Tranche Initiation        | Receipt Entered    |
      | Tranche Initiation        | Realization Author |
      | Tranche Approval          | Receipt Entered    |
      | Tranche Approval          | Realization Author |


  Scenario Outline: ACAUTOCAS-2854: Auto allocation of Receipts and Charges, basis charges priority on Charges screen at "<Var_Stage>" stage
    And Priorities are defined in charge policy for different charges
    And user already collected charges at "<Var_Stage>" stage
    And Allocate Receipt button should be available at "<Var_Stage>" Stage
    When user verifies allocation of charges on "<Var_Stage>" stage
    #allocate receipts button on receipt details screen
    Then auto allocation of charges should be done on the basis of priority maintained in policy
    Examples:
      | Var_Stage                 |
      | Lead Details              |
      | DDE                       |
      | Credit Approval           |
      | Post-Approval             |
      | Disbursal                 |
      | Recommendation            |
      | Reconsideration           |
      | App Update Recommendation |
      | App Update Approval       |
      | Tranche Initiation        |
      | Tranche Approval          |

  Scenario Outline: ACAUTOCAS-2686: Receivable allocated flag status changed from Fully Allocated to "<partial_notallocated>" post adding manual charges at "<Var_Stage>"  Stage
    And Loan application is at "<Var_Stage>" stage
    And user is already on charges section with all the charges listed post policy execution
    And receivable allocated flag status on receipt screen is fully allocated for receipt already taken
    When user adds manual charge by clicking on + icon on charges grid
    And user saves the record
    And user navigates to receipt screen
    Then receivable allocated flag should get updated to "<partial_notallocated>" on receipt screen

    Examples:

      | Var_Stage                 | partial_notallocated |
      | Lead Details              | partially allocated  |
      | DDE                       | partially allocated  |
      | Credit Approval           | partially allocated  |
      | Post Approval             | partially allocated  |
      | Recommendation            | partially allocated  |
      | Disbursal                 | partially allocated  |
      | Recnsideration            | partially allocated  |
      | App Update Recommendation | partially allocated  |
      | App Update Approval       | partially allocated  |
      | Tranche Initiation        | partially allocated  |
      | Tranche Approval          | partially allocated  |
      | Lead Details              | not allocated        |
      | DDE                       | not allocated        |
      | Credit Approval           | not allocated        |
      | Post Approval             | not allocated        |
      | Recommendation            | not allocated        |
      | Disbursal                 | not allocated        |
      | Recnsideration            | not allocated        |
      | App Update Recommendation | not allocated        |
      | App Update Approval       | not allocated        |
      | Tranche Initiation        | not allocated        |
      | Tranche Approval          | not allocated        |


  Scenario Outline: ACAUTOCAS-2687:  User shall be able to partially allocate receivables to the instrument already collected against which receivable are not allocated at "<Var_Stage>" stage
    And Receipt ID generated in LMS with instrument details section with status as "<Receipt_Status>"
    And receivables allocated radio button is not allocated by default
    And action column is available with view, edit, delete links
    When user enters receiving amount in receipt details section
    And user check the checkbox against the charge which needs to be allocated at "<Var_Stage>" stage
    And user marks not allocated radio button
    And user saves the record
    And user gets message to confirm to allocate these charges to the instrument collected
    Then user should continue to allocate charge amount
    And receivable allocated column status should get changed to partially allocated
    #when only one receivable is allocated out of multiples at "<Var_Stage>" stage
    #And receiving amount updated in receipt details section

    Examples:

      | Var_Stage                 | Receipt_Status     |
      | Lead Details              | Receipt Entered    |
      | Lead Details              | Realization Author |
      | DDE                       | Receipt Entered    |
      | DDE                       | Realization Author |
      | Disbursal                 | Receipt Entered    |
      | Disbursal                 | Realization Author |
      | Credit Approval           | Receipt Entered    |
      | Credit Approval           | Realization Author |
      | Post Approval             | Receipt Entered    |
      | Post Approval             | Realization Author |
      | Recommendation            | Receipt Entered    |
      | Recommendation            | Realization Author |
      | Reconsideration           | Receipt Entered    |
      | Reconsideration           | Realization Author |
      | App Update Recommendation | Receipt Entered    |
      | App Update Recommendation | Realization Author |
      | App Update Approval       | Receipt Entered    |
      | App Update Approval       | Realization Author |
      | Tranche Initiation        | Receipt Entered    |
      | Tranche Initiation        | Realization Author |
      | Tranche Approval          | Receipt Entered    |
      | Tranche Approval          | Realization Author |

  Scenario Outline: ACAUTOCAS-2688:  User shall be able to fully allocate receivables to the instrument already collected for which receivable are partially allocated at "<Var_Stage>" stage
    And Receipt ID generated in LMS and is visible on instrument details section with status as "<Receipt_Status>"
    And user sees receivables allocated radio button as partially allocated
    When user enters receiving amount in receipt details section
    And checks the checkbox against all remaining charges which needs to be allocated at "<Var_Stage>" stage
    And user marks partially allocated radio button
    And user saves the record
    And user gets message to confirm to allocate these charges to the instrument
    Then user should continue to allocate charge amount
    And all receivables are allocated at "<Var_Stage>" stage with receivable allocated column changed to fully allocated
    #And receiving amount becomes 0 with pending amount also updated to 0 in receipt details section
    #And receivable charge row becomes disabled

    Examples:

      | Var_Stage                 | Receipt_Status     |
      | Lead Details              | Receipt Entered    |
      | Lead Details              | Realization Author |
      | DDE                       | Receipt Entered    |
      | DDE                       | Realization Author |
      | Disbursal                 | Receipt Entered    |
      | Disbursal                 | Realization Author |
      | Credit Approval           | Receipt Entered    |
      | Credit Approval           | Realization Author |
      | Post Approval             | Receipt Entered    |
      | Post Approval             | Realization Author |
      | Recommendation            | Receipt Entered    |
      | Recommendation            | Realization Author |
      | Reconsideration           | Receipt Entered    |
      | Reconsideration           | Realization Author |
      | App Update Recommendation | Receipt Entered    |
      | App Update Recommendation | Realization Author |
      | App Update Approval       | Receipt Entered    |
      | App Update Approval       | Realization Author |
      | Tranche Initiation        | Receipt Entered    |
      | Tranche Initiation        | Realization Author |
      | Tranche Approval          | Receipt Entered    |
      | Tranche Approval          | Realization Author |


  Scenario Outline: ACAUTOCAS-990: Receiving amount should get updated to 0 in case receivables are fully allocated with receipt collected at "<Var_Stage>" stage
    And Receipt ID generated in LMS and is visible on instrument details section with status as "<Receipt_Status>"
    And user sees receivables allocated radio button as partially allocated
    And receivables are fully allocated with receipt collected at "<Var_Stage>" stage
    When user verifies receiving amount with pending amount on receipt screen at "<Var_Stage>" stage
    Then receiving amount with pending amount should get updated to 0
    And receivable charge row should be disabled

    Examples:

      | Var_Stage                 | Receipt_Status     |
      | Lead Details              | Receipt Entered    |
      | Lead Details              | Realization Author |
      | DDE                       | Receipt Entered    |
      | DDE                       | Realization Author |
      | Disbursal                 | Receipt Entered    |
      | Disbursal                 | Realization Author |
      | Credit Approval           | Receipt Entered    |
      | Credit Approval           | Realization Author |
      | Post Approval             | Receipt Entered    |
      | Post Approval             | Realization Author |
      | Recommendation            | Receipt Entered    |
      | Recommendation            | Realization Author |
      | Reconsideration           | Receipt Entered    |
      | Reconsideration           | Realization Author |
      | App Update Recommendation | Receipt Entered    |
      | App Update Recommendation | Realization Author |
      | App Update Approval       | Receipt Entered    |
      | App Update Approval       | Realization Author |
      | Tranche Initiation        | Receipt Entered    |
      | Tranche Initiation        | Realization Author |
      | Tranche Approval          | Receipt Entered    |
      | Tranche Approval          | Realization Author |


  Scenario Outline: ACAUTOCAS-2038: User shall be able to view the total received amount and allocation details in case receivables are fully allocated at "<Var_Stage>" stage
    And Receivables are fully allocated with status as fully allocated in instrument details section
    When user clicks on details hyperlink
    Then new modal window gets open with receiving amount and allocation details at "<Var_Stage>" stage
    #Validation: The sum of receiving amounts of receivables allocated shall not exceed the total receiving amount.
    Examples:

      | Var_Stage                 |
      | Lead Details              |
      | DDE                       |
      | Credit Approval           |
      | Post Approval             |
      | Disbursal                 |
      | Reconsideration           |
      | Recommendation            |
      | App Update Recommendation |
      | App Update Approval       |
      | Tranche Initiation        |
      | Tranche Approval          |

  Scenario Outline: ACAUTOCAS-2689:  Receipt ID "<Bounce_Cancel>" from LMS post generation in LMS at "<Var_Stage>" stage
    And receipt already authorized in LMS
    When user "<Bounce_Cancel>"  the receipt in LMS
    Then user should see Receipt status in cas application as "<Receipt_Status>" at "<Var_Stage>" stage
    Examples:

      | Var_Stage                 | Bounce_Cancel | Receipt_Status |
      | Lead Details              | Bounce        | Bounce Author  |
      | Lead Details              | Cancel        | Cancel Author  |
      | DDE                       | Bounce        | Bounce Author  |
      | DDE                       | Cancel        | Cancel Author  |
      | Credit Approval           | Bounce        | Bounce Author  |
      | Credit Approval           | Cancel        | Cancel Author  |
      | Post Approval             | Bounce        | Bounce Author  |
      | Post Approval             | Cancel        | Cancel Author  |
      | Disbursal                 | Bounce        | Bounce Author  |
      | Disbursal                 | Cancel        | Cancel Author  |
      | Recommendation            | Bounce        | Bounce Author  |
      | Recommendation            | Cancel        | Cancel Author  |
      | Reconsideration           | Bounce        | Bounce Author  |
      | Reconsideration           | Cancel        | Cancel Author  |
      | App Update Recommendation | Bounce        | Bounce Author  |
      | App Update Approval       | Cancel        | Cancel Author  |
      | Tranche Initiation        | Bounce        | Bounce Author  |
      | Tranche Initiation        | Cancel        | Cancel Author  |
      | Tranche Approval          | Bounce        | Bounce Author  |
      | Tranche Approval          | Cancel        | Cancel Author  |


  Scenario Outline: ACAUTOCAS-2690: Receipt allocation reversal on instrument details section post receipt is marked as "<Actions>" in LMS at "<Var_Stage>" stage
    And Receipt ID generated in LMS and is visible on instrument details section as fully allocated with receivable charges
    And receipt status is visible as received in receipt details section with pending amount as zero against the charges
    When user marks the receipt in LMS as "<Actions>"
    Then receipt status should be updated as "<Receipt_Status>" on instrument details section in CAS  at "<Var_Stage>" stage
    And receipt status will become pending with pending amount shown for adjustment
    #And receivables allocated flag shall be "<Edit_Non_Edit>" for "<Actions>" receipts at "<Var_Stage>" stage

    Examples:

      | Var_Stage                 | Receipt_Status | Actions   |
      | Lead Details              | Cancel Author  | cancelled |
      | Lead Details              | Bounce Author  | bounced   |
      | DDE                       | Cancel Author  | cancelled |
      | DDE                       | Bounce Author  | bounced   |
      | Disbursal                 | Cancel Author  | cancelled |
      | Disbursal                 | Bounce Author  | bounced   |
      | Credit Approval           | Cancel Author  | cancelled |
      | Credit Approval           | Bounce Author  | bounced   |
      | Post Approval             | Cancel Author  | cancelled |
      | Post Approval             | Bounce Author  | bounced   |
      | Recommendation            | Cancel Author  | cancelled |
      | Recommendation            | Bounce Author  | bounced   |
      | Reconsideration           | Cancel Author  | cancelled |
      | Reconsideration           | Bounce Author  | bounced   |
      | App Update Recommendation | Cancel Author  | cancelled |
      | App Update Recommendation | Bounce Author  | bounced   |
      | App Update Approval       | Cancel Author  | cancelled |
      | App Update Approval       | Bounce Author  | bounced   |
      | Tranche Initiation        | Cancel Author  | cancelled |
      | Tranche Initiation        | Bounce Author  | bounced   |
      | Tranche Approval          | Cancel Author  | cancelled |
      | Tranche Approval          | Bounce Author  | bounced   |


  Scenario Outline: ACAUTOCAS-992:Receivables Allocated flag value on instrument details section post receipt is marked as "<Actions>" in LMS at "<Var_Stage>" stage
    And Receipt ID generated in LMS and is visible on instrument details section as fully allocated with receivable charges
    And receipt status is visible as received in receipt details section with pending amount as zero against the charges
    When user marks the receipt in LMS as "<Actions>"
    Then receipt status should be updated as "<Receipt_Status>" on instrument details section in CAS at "<Var_Stage>" stage
    #And receipt status will become pending with pending amount shown for adjustment
    #And receivables allocated flag shall be "<Edit_Non_Edit>" for "<Actions>" receipts at "<Var_S tage>" stage

    Examples:

      | Var_Stage                 | Receipt_Status | Actions   |
      | Lead Details              | Cancel Author  | cancelled |
      | Lead Details              | Bounce Author  | bounced   |
      | DDE                       | Cancel Author  | cancelled |
      | DDE                       | Bounce Author  | bounced   |
      | Disbursal                 | Cancel Author  | cancelled |
      | Disbursal                 | Bounce Author  | bounced   |
      | Credit Approval           | Cancel Author  | cancelled |
      | Credit Approval           | Bounce Author  | bounced   |
      | Post Approval             | Cancel Author  | cancelled |
      | Post Approval             | Bounce Author  | bounced   |
      | Recommendation            | Cancel Author  | cancelled |
      | Recommendation            | Bounce Author  | bounced   |
      | Reconsideration           | Cancel Author  | cancelled |
      | Reconsideration           | Bounce Author  | bounced   |
      | App Update Recommendation | Cancel Author  | cancelled |
      | App Update Recommendation | Bounce Author  | bounced   |
      | App Update Approval       | Cancel Author  | cancelled |
      | App Update Approval       | Bounce Author  | bounced   |
      | Tranche Initiation        | Cancel Author  | cancelled |
      | Tranche Initiation        | Bounce Author  | bounced   |
      | Tranche Approval          | Cancel Author  | cancelled |
      | Tranche Approval          | Bounce Author  | bounced   |


  Scenario: ACAUTOCAS-2587:  Receipt allocation reversal on Disbursal cancellation
    And Receipt ID generated in LMS with disbursal is cancelled in LMS
    When user checks transaction log in LMS against the respective loan application
    Then user should be able to see the receipt reversal entry in transaction log in LMS


  Scenario Outline: ACAUTOCAS-2691:  Receipt entries on instrument details with different Payment modes at "<Var_Stage>" stage
    And Loan application is at "<Var_Stage>" stage
    And user is on charges and receipt screen
    When user clicks on payment mode drop down on instrument details
    And user sees the list of different payment modes as "<Payment_Modes>"
    And user selects payment modes as "<Payment_Modes>"
    And user enters the "<Field_Details>" on receipt screen
    And user saves the record
    Then receipt should be created with status as "<Receipt_Status>" on instrument details section at "<Var_Stage>" stage
    Examples:

      | Var_Stage                 | Receipt_Status  | Payment_Modes            | Field_Details                                                           |
      | Lead Details              | Receipt Entered | Cash                     | details in fields                                                       |
      | Lead Details              | Receipt Entered | Draft                    | details in additional fields populated as per Draft payment mode        |
      | Lead Details              | Receipt Entered | Cheque                   | details in additional fields populated as per Cheque payment mode       |
      | Lead Details              | Receipt Entered | Demand Draft             | details in additional fields populated as per Demand Draft payment mode |
      | Lead Details              | Receipt Entered | Electronic Fund Transfer | value in sub payment mode drop down as per EFT payment mode             |
      | DDE                       | Receipt Entered | Cash                     | details in fields                                                       |
      | DDE                       | Receipt Entered | Draft                    | details in additional fields populated as per Draft payment mode        |
      | DDE                       | Receipt Entered | Cheque                   | details in additional fields populated as per Cheque payment mode       |
      | DDE                       | Receipt Entered | Demand Draft             | details in additional fields populated as per Demand Draft payment mode |
      | DDE                       | Receipt Entered | Electronic Fund Transfer | value in sub payment mode drop down as per EFT payment mode             |
      | Credit Approval           | Receipt Entered | Cash                     | details in fields                                                       |
      | Credit Approval           | Receipt Entered | Draft                    | details in additional fields populated as per Draft payment mode        |
      | Credit Approval           | Receipt Entered | Cheque                   | details in additional fields populated as per Cheque payment mode       |
      | Credit Approval           | Receipt Entered | Demand Draft             | details in additional fields populated as per Demand Draft payment mode |
      | Credit Approval           | Receipt Entered | Electronic Fund Transfer | value in sub payment mode drop down as per EFT payment mode             |
      | Post Approval             | Receipt Entered | Cash                     | details in fields                                                       |
      | Post Approval             | Receipt Entered | Draft                    | details in additional fields populated as per Draft payment mode        |
      | Post Approval             | Receipt Entered | Cheque                   | details in additional fields populated as per Cheque payment mode       |
      | Post Approval             | Receipt Entered | Demand Draft             | details in additional fields populated as per Demand Draft payment mode |
      | Post Approval             | Receipt Entered | Electronic Fund Transfer | value in sub payment mode drop down as per EFT payment mode             |
      | Disbursal                 | Receipt Entered | Cash                     | details in fields                                                       |
      | Disbursal                 | Receipt Entered | Draft                    | details in additional fields populated as per Draft payment mode        |
      | Disbursal                 | Receipt Entered | Cheque                   | details in additional fields populated as per Cheque payment mode       |
      | Disbursal                 | Receipt Entered | Demand Draft             | details in additional fields populated as per Demand Draft payment mode |
      | Disbursal                 | Receipt Entered | Electronic Fund Transfer | value in sub payment mode drop down as per EFT payment mode             |
      | Reconsideration           | Receipt Entered | Cash                     | details in fields                                                       |
      | Reconsideration           | Receipt Entered | Draft                    | details in additional fields populated as per Draft payment mode        |
      | Reconsideration           | Receipt Entered | Cheque                   | details in additional fields populated as per Cheque payment mode       |
      | Reconsideration           | Receipt Entered | Demand Draft             | details in additional fields populated as per Demand Draft payment mode |
      | Reconsideration           | Receipt Entered | Electronic Fund Transfer | value in sub payment mode drop down as per EFT payment mode             |
      | Recommendation            | Receipt Entered | Cash                     | details in fields                                                       |
      | Recommendation            | Receipt Entered | Draft                    | details in additional fields populated as per Draft payment mode        |
      | Recommendation            | Receipt Entered | Cheque                   | details in additional fields populated as per Cheque payment mode       |
      | Recommendation            | Receipt Entered | Demand Draft             | details in additional fields populated as per Demand Draft payment mode |
      | Recommendation            | Receipt Entered | Electronic Fund Transfer | value in sub payment mode drop down as per EFT payment mode             |
      | App Update Recommendation | Receipt Entered | Cash                     | details in fields                                                       |
      | App Update Recommendation | Receipt Entered | Draft                    | details in additional fields populated as per Draft payment mode        |
      | App Update Recommendation | Receipt Entered | Cheque                   | details in additional fields populated as per Cheque payment mode       |
      | App Update Recommendation | Receipt Entered | Demand Draft             | details in additional fields populated as per Demand Draft payment mode |
      | App Update Recommendation | Receipt Entered | Electronic Fund Transfer | value in sub payment mode drop down as per EFT payment mode             |
      | App Update Approval       | Receipt Entered | Cash                     | details in fields                                                       |
      | App Update Approval       | Receipt Entered | Draft                    | details in additional fields populated as per Draft payment mode        |
      | App Update Approval       | Receipt Entered | Cheque                   | details in additional fields populated as per Cheque payment mode       |
      | App Update Approval       | Receipt Entered | Demand Draft             | details in additional fields populated as per Demand Draft payment mode |
      | App Update Approval       | Receipt Entered | Electronic Fund Transfer | value in sub payment mode drop down as per EFT payment mode             |
      | Tranche Initiation        | Receipt Entered | Cash                     | details in fields                                                       |
      | Tranche Initiation        | Receipt Entered | Draft                    | details in additional fields populated as per Draft payment mode        |
      | Tranche Initiation        | Receipt Entered | Cheque                   | details in additional fields populated as per Cheque payment mode       |
      | Tranche Initiation        | Receipt Entered | Demand Draft             | details in additional fields populated as per Demand Draft payment mode |
      | Tranche Initiation        | Receipt Entered | Electronic Fund Transfer | value in sub payment mode drop down as per EFT payment mode             |
      | Tranche Approval          | Receipt Entered | Cash                     | details in fields                                                       |
      | Tranche Approval          | Receipt Entered | Draft                    | details in additional fields populated as per Draft payment mode        |
      | Tranche Approval          | Receipt Entered | Cheque                   | details in additional fields populated as per Cheque payment mode       |
      | Tranche Approval          | Receipt Entered | Demand Draft             | details in additional fields populated as per Demand Draft payment mode |
      | Tranche Approval          | Receipt Entered | Electronic Fund Transfer | value in sub payment mode drop down as per EFT payment mode             |


  Scenario Outline: ACAUTOCAS-2692:  Receipt details on instrument details for Electronic Fund Transfer Payment and sub payment modes at "<Var_Stage>" stage
    And Loan application is at "<Var_Stage>" stage
    When user clicks on "<Payment_Modes>" payment mode from payment mode drop down on instrument details
    And  user sees additional field of sub payment mode which is enabled having values as "<Sub_Payment_Modes>"
    And user selects sub payment modes as "<Sub_Payment_Modes>"
    And user enters values in additional fields which are visible on screen as per "<Sub_Payment_Modes>"
    #And user enters the details in these additional fields on receipt screen
    Then user saves the record
    And receipt should be created with status as receipt entered on instrument details section

    Examples:

      | Var_Stage                 | Payment_Modes            | Sub_Payment_Modes |
      | Lead Details              | Electronic Fund Transfer | Auto Debit        |
      | Lead Details              | Electronic Fund Transfer | Credit Debit Card |
      | Lead Details              | Electronic Fund Transfer | IMPS              |
      | Lead Details              | Electronic Fund Transfer | NEFT              |
      | Lead Details              | Electronic Fund Transfer | Internal Transfer |
      | Lead Details              | Electronic Fund Transfer | RTGS              |
      | DDE                       | Electronic Fund Transfer | Auto Debit        |
      | DDE                       | Electronic Fund Transfer | Credit Debit Card |
      | DDE                       | Electronic Fund Transfer | IMPS              |
      | DDE                       | Electronic Fund Transfer | NEFT              |
      | DDE                       | Electronic Fund Transfer | Internal Transfer |
      | DDE                       | Electronic Fund Transfer | RTGS              |
      | Credit Approval           | Electronic Fund Transfer | Auto Debit        |
      | Credit Approval           | Electronic Fund Transfer | Credit Debit Card |
      | Credit Approval           | Electronic Fund Transfer | IMPS              |
      | Credit Approval           | Electronic Fund Transfer | NEFT              |
      | Credit Approval           | Electronic Fund Transfer | Internal Transfer |
      | Credit Approval           | Electronic Fund Transfer | RTGS              |
      | Post Approval             | Electronic Fund Transfer | Auto Debit        |
      | Post Approval             | Electronic Fund Transfer | Credit Debit Card |
      | Post Approval             | Electronic Fund Transfer | IMPS              |
      | Post Approval             | Electronic Fund Transfer | NEFT              |
      | Post Approval             | Electronic Fund Transfer | Internal Transfer |
      | Post Approval             | Electronic Fund Transfer | RTGS              |
      | Disbursal                 | Electronic Fund Transfer | Auto Debit        |
      | Disbursal                 | Electronic Fund Transfer | Credit Debit Card |
      | Disbursal                 | Electronic Fund Transfer | IMPS              |
      | Disbursal                 | Electronic Fund Transfer | NEFT              |
      | Disbursal                 | Electronic Fund Transfer | Internal Transfer |
      | Disbursal                 | Electronic Fund Transfer | RTGS              |
      | Reconsideration           | Electronic Fund Transfer | Auto Debit        |
      | Reconsideration           | Electronic Fund Transfer | Credit Debit Card |
      | Reconsideration           | Electronic Fund Transfer | IMPS              |
      | Reconsideration           | Electronic Fund Transfer | NEFT              |
      | Reconsideration           | Electronic Fund Transfer | Internal Transfer |
      | Reconsideration           | Electronic Fund Transfer | RTGS              |
      | Recommendation            | Electronic Fund Transfer | Auto Debit        |
      | Recommendation            | Electronic Fund Transfer | Credit Debit Card |
      | Recommendation            | Electronic Fund Transfer | IMPS              |
      | Recommendation            | Electronic Fund Transfer | NEFT              |
      | Recommendation            | Electronic Fund Transfer | Internal Transfer |
      | Recommendation            | Electronic Fund Transfer | RTGS              |
      | App Update Recommendation | Electronic Fund Transfer | Auto Debit        |
      | App Update Recommendation | Electronic Fund Transfer | Credit Debit Card |
      | App Update Recommendation | Electronic Fund Transfer | IMPS              |
      | App Update Recommendation | Electronic Fund Transfer | NEFT              |
      | App Update Recommendation | Electronic Fund Transfer | Internal Transfer |
      | App Update Recommendation | Electronic Fund Transfer | RTGS              |
      | App Update Approval       | Electronic Fund Transfer | Auto Debit        |
      | App Update Approval       | Electronic Fund Transfer | Credit Debit Card |
      | App Update Approval       | Electronic Fund Transfer | IMPS              |
      | App Update Approval       | Electronic Fund Transfer | NEFT              |
      | App Update Approval       | Electronic Fund Transfer | Internal Transfer |
      | App Update Approval       | Electronic Fund Transfer | RTGS              |
      | Tranche Initiation        | Electronic Fund Transfer | Auto Debit        |
      | Tranche Initiation        | Electronic Fund Transfer | Credit Debit Card |
      | Tranche Initiation        | Electronic Fund Transfer | IMPS              |
      | Tranche Initiation        | Electronic Fund Transfer | NEFT              |
      | Tranche Initiation        | Electronic Fund Transfer | Internal Transfer |
      | Tranche Initiation        | Electronic Fund Transfer | RTGS              |
      | Tranche Approval          | Electronic Fund Transfer | Auto Debit        |
      | Tranche Approval          | Electronic Fund Transfer | Credit Debit Card |
      | Tranche Approval          | Electronic Fund Transfer | IMPS              |
      | Tranche Approval          | Electronic Fund Transfer | NEFT              |
      | Tranche Approval          | Electronic Fund Transfer | Internal Transfer |
      | Tranche Approval          | Electronic Fund Transfer | RTGS              |


  Scenario Outline: ACAUTOCAS-2693:  Charge receipt adjustment Details should be available on various Reports and Letters generated by System at  "<Var_Stage>"  Stage
    And Loan application is at "<Var_Stage>" stage
    When user clicks on generate "<Reports>" option on "<3dots_moreactions>" at "<Var_Stage>" stage
    Then user should see "<Reports>" with charges section
    And user verifies charge receipt adjustment details with fields "<details>"
    Examples:

      | Var_Stage                 | Reports          | 3dots_moreactions | details                                                                                                                  |
      | Disbursal                 | Disbursal Report | 3 dots            | Total Adjustment amount                                                                                                  |
      | Disbursal                 | Disbursal Report | 3 dots            | Total Received Pay                                                                                                       |
      | Disbursal                 | CAM Report       | 3 dots            | Charge Type, charge name, charge amount, receipt id, receiving amount, receivable description, mode of payment, split id |
      | DDE                       | CAM Report       | 3 dots            | Charge Type, charge name, charge amount, receipt id, receiving amount, receivable description, mode of payment, split id |
      | Credit Approval           | CAM Report       | 3 dots            | Charge Type, charge name, charge amount, receipt id, receiving amount, receivable description, mode of payment, split id |
      | Post Approval             | CAM Report       | 3 dots            | Charge Type, charge name, charge amount, receipt id, receiving amount, receivable description, mode of payment, split id |
      | App Update Recommendation | CAM Report       | 3 dots            | Charge Type, charge name, charge amount, receipt id, receiving amount, receivable description, mode of payment, split id |
      | App Update Approval       | CAM Report       | 3 dots            | Charge Type, charge name, charge amount, receipt id, receiving amount, receivable description, mode of payment, split id |
      | Tranche Initiation        | CAM Report       | 3 dots            | Charge Type, charge name, charge amount, receipt id, receiving amount, receivable description, mode of payment, split id |
      | Tranche Approval          | CAM Report       | 3 dots            | Charge Type, charge name, charge amount, receipt id, receiving amount, receivable description, mode of payment, split id |
      | Disbursal                 | Disbursal Report | more actions      | Total Adjustment amount                                                                                                  |
      | Disbursal                 | Disbursal Report | more actions      | Total Received Pay                                                                                                       |
      | Disbursal                 | CAM Report       | more actions      | Charge Type, charge name, charge amount, receipt id, receiving amount, receivable description, mode of payment, split id |
      | DDE                       | CAM Report       | more actions      | Charge Type, charge name, charge amount, receipt id, receiving amount, receivable description, mode of payment, split id |
      | Credit Approval           | CAM Report       | more actions      | Charge Type, charge name, charge amount, receipt id, receiving amount, receivable description, mode of payment, split id |
      | Post Approval             | CAM Report       | more actions      | Charge Type, charge name, charge amount, receipt id, receiving amount, receivable description, mode of payment, split id |
      | App Update Recommendation | CAM Report       | more actions      | Charge Type, charge name, charge amount, receipt id, receiving amount, receivable description, mode of payment, split id |
      | App Update Approval       | CAM Report       | more actions      | Charge Type, charge name, charge amount, receipt id, receiving amount, receivable description, mode of payment, split id |
      | Tranche Initiation        | CAM Report       | more actions      | Charge Type, charge name, charge amount, receipt id, receiving amount, receivable description, mode of payment, split id |
      | Tranche Approval          | CAM Report       | more actions      | Charge Type, charge name, charge amount, receipt id, receiving amount, receivable description, mode of payment, split id |
      | Recommendation            | CAM Report       | more actions      | Charge Type, charge name, charge amount, receipt id, receiving amount, receivable description, mode of payment, split id |
      | Reconsideration           | CAM Report       | more actions      | Charge Type, charge name, charge amount, receipt id, receiving amount, receivable description, mode of payment, split id |



    ###### ==============Receipt Handling on Loan Cancellation in LMS ===============#####

  Scenario Outline: ACAUTOCAS-2855: Receipt Handling on Loan Cancellation in LMS and its impact in CAS
    And Loan is flown in LMS with charges and authorized receipts fully allocated in system
    #as "<Receipt_Status>"
    When user marks the loan as cancelled maker in LMS by selecting cancellation type as "<Cancel_Type>"
    And receipt handling is populated as "<Receipt_Handling>" which is coming from transaction policy maintained in LMS for loan cancellation
    And user selects the cancellation reason from drop down
    And user saves the maker record
    And user authorizes the loan cancellation
    Then loan should be cancelled
    #s "<Receipt_Status>" on instrument details section in CAS receipts section

    Examples:

      | Cancel_Type           | Receipt_Handling                  |
      | cancel with rebook    | reverse only                      |
      | cancel without rebook | booking income and partial refund |
      | customer request      | reverse and refund                |


  #LMSODOTONE-99111   Cancel and Rebook with Same LAN - Process, Treatment and Validations
   #FeatureID-ACAUTOCAS-448,LMSODOTONE-99111
  Scenario Outline: ACAUTOCAS-4209:Receipt Handling - Reverse only while Loan Cancellation in LMS and its impact in CAS
    And Loan is flown in LMS with charges and receipts
    And loan has all the transaction which were happened in LMS on the Loans like Bounce Charge, Adhoc Charge, Billing, Accrual, Rescheduling, FRR, Subsequent Disbursal, Receipts, Payments etc
    And parameter STATUS_UPDATE_TO_ORIGINATION_SYSTEM_FOR_LOAN_CANCELLATION is maintained with values as Yes_No
    #And all the receivables and payables exists in loan with IMD receipts taken
    When user marks the loan as cancelled maker in LMS by selecting cancellation type as "<Cancel_Type>" with receipt handling option as  "<Receipt_Handling>"
    And user authorizes the loan cancellation
    And user verify the loan status in activity section of CAS
    Then all the transaction which were happened on the Loans will be reversed like Bounce Charge, Adhoc Charge, Billing, Accrual, Rescheduling, FRR, Subsequent Disbursals, Receipts, Payments, voucher entries etc
    And all payables should be left unadjusted with "<Response>" sent to CAS basis parameter value as "<Parameter_Value>"
    #STATUS_UPDATE_TO_ORIGINATION_SYSTEM_FOR_LOAN_CANCELLATION value as Y or N
    #And cancellation type shall also be sent to CAS basis above configuration
    #"<Receipt_Status>" on instrument details section in CAS receipts section

    Examples:

      | Cancel_Type        | Receipt_Handling | Parameter_Value | Response    |
      | cancel with rebook | reverse only     | Y               | Response    |
      | cancel with rebook | reverse only     | N               | No Response |


     #FeatureID-ACAUTOCAS-448,LMSODOTONE-99111
  Scenario Outline: ACAUTOCAS-991:Cancellation Type and Receipt Status flow to CAS for Loan Cancelled in LMS
    And Loan is cancelled in LMS by selecting cancellation type as "<Cancel_Type>" with receipt handling option as  "<Receipt_Handling>"
    And parameter STATUS_UPDATE_TO_ORIGINATION_SYSTEM_FOR_LOAN_CANCELLATION is maintained with values as Yes_No
    When user verifies the loan details in CAS
    And all the transactions which were happened on the Loans are reversed
    And all payables should be left unadjusted with "<Response>" sent to CAS basis parameter value as "<Parameter_Value>"
    #STATUS_UPDATE_TO_ORIGINATION_SYSTEM_FOR_LOAN_CANCELLATION value as Y or N
    Then user should verify that cancellation type is sent to CAS basis above configuration
    And user should verify Receipt_Status sent to CAS on instrument details section in CAS receipts section

    Examples:

      | Cancel_Type        | Receipt_Handling | Parameter_Value | Response    |
      | cancel with rebook | reverse only     | Y               | Response    |
      | cancel with rebook | reverse only     | N               | No Response |


  #LMSODOTONE-99111   Cancel and Rebook with Same LAN - Process, Treatment and Validations
  #FeatureID-ACAUTOCAS-448,LMSODOTONE-99111
  Scenario Outline: ACAUTOCAS-4210:  Loan Cancellation restricted in LMS for loan with active receipts with purpose as Loan Closure, Asset Sale, Deliverable Charge, Moratorium Interest
    And Loan is flown in LMS with charges and receipts
    And loan has active receipts in system
    When user marks the loan as cancelled maker in LMS by selecting cancellation type as "<Cancel_Type>" with receipt handling option as  "<Receipt_Handling>"
    And loan has active receipts with purpose as Loan Closure, Asset Sale, Deliverable Charge, Moratorium Interest
    And user authorizes the loan cancellation
    Then loan cancellation should not be allowed
    And error message should be displayed as Loan Cancellation with Rebook with Same LAN is restricted in case loan has active receipt with purpose

    Examples:

      | Cancel_Type        | Receipt_Handling |
      | cancel with rebook | reverse only     |


  #LMSODOTONE-99111   Cancel and Rebook with Same LAN - Process, Treatment and Validations
    #FeatureID-ACAUTOCAS-448,LMSODOTONE-99111
  Scenario Outline: ACAUTOCAS-4211:  Loan Cancellation in LMS for loan with authorized, active and partially allocated receipts
    And Loan is flown in LMS with charges and receipts
    And loan has authorized, active, partially allocated receipts
    When user marks the loan as cancelled maker in LMS by selecting cancellation type as "<Cancel_Type>" with receipt handling option as  "<Receipt_Handling>"
    And loan has authorized, active and partially allocated receipts
    And user authorizes the loan cancellation
    Then loan cancellation should not be allowed
    And error message should be displayed

    Examples:

      | Cancel_Type        | Receipt_Handling |
      | cancel with rebook | reverse only     |


 #LMSODOTONE-99111   Cancel and Rebook with Same LAN - Process, Treatment and Validations
  #FeatureID-ACAUTOCAS-550,LMSODOTONE-99111
  Scenario Outline: ACAUTOCAS-4212:  IMD receipt will not be cancelled while Loan Cancellation in LMS
    And Loan is flown in LMS with charges and IMD receipts
    #And loan has authorized, active, partially allocated receipts
    When user marks the loan as cancelled maker in LMS by selecting cancellation type as "<Cancel_Type>" with receipt handling option as  "<Receipt_Handling>"
    And user authorizes the loan cancellation
    Then all the receipts except IMD Receipt will be Cancelled
    And all the IMD receipts will be unallocated with unadjusted status

    Examples:

      | Cancel_Type        | Receipt_Handling |
      | cancel with rebook | reverse only     |

  #FeatureID-ACAUTOCAS-550
  Scenario Outline: ACAUTOCAS-4213:  IMD receipt allocation will be reversed while Loan Cancellation in LMS
    And Loan is flown in LMS with charges and IMD receipts
    When user marks the loan as cancelled maker in LMS by selecting cancellation type as "<Cancel_Type>" with receipt handling option as  "<Receipt_Handling>"
    And user authorizes the loan cancellation
    Then user verifies the transaction IMD receipt allocation in receipt viewer in LMS
    And IMD receipt allocation will be reversed corresponding to this Loan

    Examples:

      | Cancel_Type        | Receipt_Handling |
      | cancel with rebook | reverse only     |

  #FeatureID-ACAUTOCAS-448
  Scenario Outline: ACAUTOCAS-4214:  Loan Cancellation Transaction policy in LMS for Receipt Handling
    And Loan Cancellation transaction policy already maintained having "<Parameters>" parameters
    When user verifies the "<Parameters>" maintained in loan cancellation policy
    And user maintains "<Cancel_Type>" option with "<Receipt_Handling>" option in "<Parameters>"
    And user maintains the "<Cancel_Type>" within "<Parameters>" option of transaction policy
    And user enters the details "<percentage>" in "<Cancel_Type>" section within "<Parameters>" option of transaction policy
    Then user should be able to verify all parameters maintained in transaction policy

    Examples:

      | Cancel_Type            | Receipt_Handling                  | Parameters       | percentage       |
      | cancel without rebook  | booking income and partial refund | Receipt Handling |                  |
      | cancel with rebook     | reverse only                      | Receipt Handling |                  |
      | customer request       | reverse and refund                | Receipt Handling |                  |
      | Charges to be refunded |                                   | Charge Refund    | income booking % |
      | Charges to be refunded |                                   | Charge Refund    | refund %         |


   #LMSODOTONE-99111   Cancel and Rebook with Same LAN - Process, Treatment and Validations
    #FeatureID-ACAUTOCAS-448
  Scenario Outline: ACAUTOCAS-4215:  Receipt Handling option as "<Receipt_Handling>" while Loan Cancellation in LMS and its impact in CAS
    And Loan is flown in LMS with charges and receipts
    And parameter is maintained in system for updating status in CAS
     #parameter= STATUS_UPDATE_TO_ORIGINATION_SYSTEM_FOR_LOAN_CANCELLATION value as Y or N
    When user marks the loan as cancelled maker in LMS by selecting cancellation type as "<Cancel_Type>" with receipt handling option as  "<Receipt_Handling>"
    And user authorizes the loan cancellation
    And user verify the loan status in activity section of CAS
    Then loan should be cancelled for "<Cancel_Type>" option with "<Receipt_Handling>"  with "<Response>" sent to CAS as per the parameter value as "<Parameter_Value>"
    #all the transaction which were happened on the Loans for "<Cancel_Type>" option with "<Receipt_Handling>" option will be reversed or refunded as per loan cancellation transaction policy
    And user verifies the "<Receipt_Handling>" details with transaction journal with accounting entries

    Examples:

      | Cancel_Type           | Receipt_Handling                  | Parameter_Value | Response    |
      | cancel without rebook | booking income and partial refund | Y               | Response    |
      | cancel without rebook | booking income and partial refund | N               | No Response |
      | customer request      | reverse and refund                | Y               | Response    |
      | customer request      | reverse and refund                | N               | No Response |


 #LMSODOTONE-93748 Loan Cancellation - Cancel IMD where handling is maintained as "Reverse and Refund"
  #FeatureID-ACAUTOCAS-448,LMSODOTONE-93748
  Scenario Outline: ACAUTOCAS-4216:  IMD Receipt cancellation with cancellation type as "<Cancel_Type>" for receipt handling as "<Receipt_Handling>" while Loan Cancellation in LMS
    And Loan is flown in LMS with charges and receipts
    And complete IMD receipt is fully allocated to Single loan with receipt handling option maintained as "<Receipt_Handling>"
    When user marks the loan as cancelled maker in LMS by selecting cancellation type as "<Cancel_Type>" with receipt handling option as  "<Receipt_Handling>"
    And complete IMD amount is allocated to single loan
    And user authorizes the loan cancellation
    Then IMD receipt will automatically get cancelled

    Examples:

      | Cancel_Type      | Receipt_Handling   |
      | customer request | reverse and refund |
      | customer request | reverse and refund |


  #LMSODOTONE-93748 Loan Cancellation - Cancel IMD where handling is maintained as "Reverse and Refund"
    #FeatureID-ACAUTOCAS-448,LMSODOTONE-93748
  Scenario Outline: ACAUTOCAS-4217: IMD Receipt cancellation with cancellation type as "<Cancel_Type>" for receipt handling as "<Receipt_Handling>" as per Configuration for IMD Receipt when allocated to multiple loans
    And Loan is flown in LMS with charges and receipts
    And complete IMD receipt is allocated to more than one loan with receipt handling option maintained as "<Receipt_Handling>"
    And parameter is maintained as "<Parameter_Value>"
    #Parameter= ALLOW_LOAN_CANCEL_IF_IMD_MAPPED_WITH_MULTIPLE_APPL   #  Values= Y/N
    When user marks the loan as cancelled maker in LMS by selecting cancellation type as "<Cancel_Type>" with receipt handling option as  "<Receipt_Handling>"
    And user authorizes the loan cancellation
    Then user verifies that "<Response>" post getting warning message

    Examples:

      | Cancel_Type      | Receipt_Handling   | Parameter_Value | Response                             |
      | customer request | reverse and refund | Y               | Loan cancellation will be allowed    |
      | customer request | reverse and refund | N               | Loan cancellation will be restricted |

  #LMSODOTONE-32308  Issue in Loan Cancellation with Reverse and Refund>>Payable Amount not displayed
  # when Loan Cancelled with refund
#  -Identify a Loan having IMD.
#  -perform Loan Cancellation with Reverse and Refund.
#  Expected:after Loan Cancellation Refund amount should be displayed as Payable in Loan Summary.
#  Actual Result:Refund amount is displayed as 'Receivable' in Loan Summary
#  -same issue with Booking Income and Partial Refund.


#  Scenario Outline: Payable Amount for IMD receipt should get displayed in LMS while loan cancellation with "<Cancel_Type>" option with receipt handling as  "<Receipt_Handling>"
#    And Loan is flown in LMS with charges as IMD receipts
#    #Payable chargecode 382 should be opened
#    When user marks the loan as cancelled maker in LMS by selecting cancellation type as "<Cancel_Type>" with receipt handling option as  "<Receipt_Handling>"
#    And user authorizes the loan cancellation
#    Then after loan cancellation refund amount should be displayed as payable in LMS
#
#    Examples:
#
#      | Cancel_Type           | Receipt_Handling                  |
#      | customer request      | reverse and refund                |
#      #| cancel without rebook | booking income and partial refund |


#LMSODOTONE-32308  Issue in Loan Cancellation with Reverse and Refund>>Payable Amount not displayed when Loan Cancelled with refund
  #FeatureID-ACAUTOCAS-448,LMSODOTONE-32308
  Scenario Outline: ACAUTOCAS-4218:Payable Charge Amount should get displayed as payable in LMS while loan cancellation with "<Cancel_Type>" option with receipt handling as  "<Receipt_Handling>"
    And Loan is flown in LMS with charges as IMD receipts
    And charge is knocked off with chargecode 56 payable due while loan booking
    #Payable chargecode 382 should be opened
    When user marks the loan as cancelled maker in LMS by selecting cancellation type as "<Cancel_Type>" with receipt handling option as  "<Receipt_Handling>"
    And user authorizes the loan cancellation
    Then after loan cancellation IMD refund amount should be displayed as payable in LMS
    And knock off entry in LMS should get reversed with payable due for chargecode 56 should be opened
    #And receipt status should flow back to CAS

    Examples:

      | Cancel_Type      | Receipt_Handling   |
      | customer request | reverse and refund |


  #LMSODOTONE-24988   #IMD Income Booking & Refund behavior
    #FeatureID-ACAUTOCAS-448,LMSODOTONE-24988
  Scenario Outline: ACAUTOCAS-4219:  Payable Charge Amount refund should be done with payment basis as IMD refund in LMS
    #while loan cancellation
    And Loan is flown in LMS with charges as IMD receipts
    And loan is cancelled with "<Cancel_Type>" option with receipt handling as  "<Receipt_Handling>"
    When user enters payment basis as IMD Refund in drop down on payment screen while refunding charge amount
    And user tag the payment against "<source_application_LAN>"
    And user authorizes the IMD refund payment
    Then payable charge amount refund should be done in LMS to respective bptype

    Examples:

      | Cancel_Type           | Receipt_Handling                  | source_application_LAN    |
      | customer request      | reverse and refund                | source application number |
      | cancel without rebook | booking income and partial refund | source application number |
      | customer request      | reverse and refund                | loan application number   |
      | cancel without rebook | booking income and partial refund | loan application number   |

      #LMSODOTONE-13693 IMD Receipt Cancellation Issue
  #FeatureID-ACAUTOCAS-448,LMSODOTONE-13693
  Scenario: ACAUTOCAS-4746:  Payable dues for chargecode should get cancelled while IMD Receipt cancellation in LMS
    And Loan is flown in LMS with processing fees charges as IMD
    And charge is knocked off with chargecode 56 payable due while loan booking
    When user cancels the IMD receipt in LMS
    Then payable due for chargecode 56 should also get cancelled in LMS with knock off entry reversed in LMS
    And receipt status should flow back to CAS


  #LMSODOTONE-41864  Issue in Loan Cancellation>> IMD Receipt Amount displayed as 'Refund' when Loan Cancelled with Income booking and partially refund
#  Cases where IMD has been taken against an application and same is cancelled or rejected during the
#  loan origination cycle then some business requires IMD amount to be partially booked as income and
#  part to be paid to the customer as refund. As refund needs to be paid to the customer, need arises
#  that a payable in favor of the business partner shall be created.
    #FeatureID-ACAUTOCAS-448,LMSODOTONE-41864
  Scenario Outline: ACAUTOCAS-4220:  IMD receipt handling while loan cancellation with "<Cancel_Type>" option with receipt handling as  "<Receipt_Handling>"
    And Loan is flown in LMS with charges as IMD receipts
    And loan cancellation policy already maintained with income booking percentage, refund amount parameters etc.
    And income booking accounting entries should be maintained accordingly
    When user marks the loan as cancelled maker in LMS by selecting cancellation type as "<Cancel_Type>" with receipt handling option as  "<Receipt_Handling>"
    And user authorizes the loan cancellation
    Then after loan cancellation refund amount should be displayed as payable in LMS having chargecode as 382
    And user verifies the transaction journal report for income booking amount accounting entries

    Examples:

      | Cancel_Type           | Receipt_Handling                  |
      | cancel without rebook | booking income and partial refund |
#
#
# # CAS-13667	Receipts Cancellation Handling
#  Scenario Outline:Validations at "<Var_Stage>" while receivables are pending
#    And Loan is already on Disbursal Stage
#    When user verifies that receivables are pending in loan application at "<Var_Stage>"
#    And user initiates disbursement with pending receivables
#    Then user should get proper validation
#    And disbursal will not be initiated when any receivables are pending in loan application
#
#    Examples:
#
#      | Var_Stage           |
#      | Disbursal Initiation|
#      | Disbursal Author    |


 # CAS-13667	Receipts Cancellation Handling
    #FeatureID-ACAUTOCAS-395,ACAUTOCAS-396,ACAUTOCAS-551,CAS-13667
  Scenario Outline: ACAUTOCAS-4221:  Validations at "<Var_Stage>" while receivables are pending
    And Loan is already on Disbursal Author Stage
    When user verifies any receipts have status "<Status>" at "<Var_Stage>"
    #Any receipts with status Realization Author and not fully allocated.
    And user authorizes disbursement
    Then user should get proper validation
    And disbursal will not be accepted at disbursal author in loan application

    Examples:

      | Var_Stage                 | Status                                     |
      | DDE                       | other than Cancel Author                   |
      | DDE                       | other than Realization Author              |
      | DDE                       | realization Author and not fully allocated |
      | Credit Approval           | other than Cancel Author                   |
      | Credit Approval           | other than Realization Author              |
      | Credit Approval           | realization Author and not fully allocated |
      | Post Approval             | other than Cancel Author                   |
      | Post Approval             | other than Realization Author              |
      | Post Approval             | realization Author and not fully allocated |
      | Disbursal Author          | other than Cancel Author                   |
      | Disbursal Author          | other than Realization Author              |
      | Disbursal Author          | realization Author and not fully allocated |
      | Disbursal Initiation      | other than Cancel Author                   |
      | Disbursal Initiation      | other than Realization Author              |
      | Disbursal Initiation      | realization Author and not fully allocated |
      | App Update Recommendation | other than Cancel Author                   |
      | App Update Recommendation | other than Realization Author              |
      | App Update Recommendation | realization Author and not fully allocated |
      | App Update Approval       | other than Cancel Author                   |
      | App Update Approval       | other than Realization Author              |
      | App Update Approval       | realization Author and not fully allocated |
      | Tranche Initiation        | other than Cancel Author                   |
      | Tranche Initiation        | other than Realization Author              |
      | Tranche Initiation        | realization Author and not fully allocated |
      | Tranche Approval          | other than Cancel Author                   |
      | Tranche Approval          | other than Realization Author              |
      | Tranche Approval          | realization Author and not fully allocated |
      | Recommendation            | other than Cancel Author                   |
      | Recommendation            | other than Realization Author              |
      | Recommendation            | realization Author and not fully allocated |
      | Reconsideration           | other than Cancel Author                   |
      | Reconsideration           | other than Realization Author              |
      | Reconsideration           | realization Author and not fully allocated |

 # CAS-13667	Receipts Cancellation Handling
  #On disbursal Author -  if receivables charges are not adjusted with receipts system will throw below error #APPL00007813  -- disbursal author of 1st tranche
  #There are some pending receivables which are neither adjusted nor collected.
    #FeatureID-ACAUTOCAS-560,CAS-13667,ACAUTOCAS-549,ACAUTOCAS-551,ACAUTOCAS-552
  Scenario Outline: ACAUTOCAS-4222:  Disbursal should be done successfully for allocated receipts are deleted before "<Var_Stage>"
    And Loan is already moved till Disbursal
    When user authorize the receipt which is allocated with the charges before "<Var_Stage>"
    And user deletes the allocated receipt
    And user de allocates the charges
    And user authorizes new receipt, allocates with charges
    Then disbursal should be done successfully

    Examples:

      | Var_Stage |
      | Disbursal |


  #CAS-177517	Subsequent Disbursal Cancellation Send Back from Sent to OPS
    #FeatureID-ACAUTOCAS-565,CAS-177517
  Scenario Outline: ACAUTOCAS-4223:  Receipts and Charges to be retained in case of subsequent disbursal cancellation and application to be sent back to Disbursal from "<Var_Stage>"
    And Loan is already moved to "<Var_Stage>" stage having "<Single_Multiple>" entries in single operation
    And there are charges and receipts allocated existing in the system
    When user initiates subsequent disbursal cancellation in LMS
    Then application should be sent back to Disbursal Maker with tentative schedule entries which are cancelled
    And user should verify that "<charges_receipt_disbentry>"
    #And receipt should be unallocated for the charges for entries operations which are cancelled
    #And same disbursal entry can be reinitiated

    Examples:

      | Var_Stage   | Single_Multiple | charges_receipt_disbentry                                                                |
      | Sent to Ops | single          | charges should be retained                                                               |
      | Sent to Ops | single          | receipt should be unallocated for the charges for entries operations which are cancelled |
      | Sent to Ops | single          | same disbursal entry can be reinitiated                                                  |
      | Sent to Ops | multiple        | charges should be retained                                                               |
      | Sent to Ops | multiple        | receipt should be unallocated for the charges for entries operations which are cancelled |
      | Sent to Ops | multiple        | same disbursal entry can be reinitiated                                                  |

  #CAS-90493	Overdue Charge handling in Disbursal
    #FeatureID-ACAUTOCAS-423,CAS-90493
  Scenario Outline: ACAUTOCAS-4224:  Overdue Charges handling for CV Loans funded for both body and Chasis at "<Var_Stage>" while doing multiple disbursals
    And Loan is already moved to "<Var_Stage>" stage having "<Single_Multiple>" entries in single disbursal operation
    #And there are charges and receipts allocated existing in the system
    When user clicks on application tranches in grid
    And user clicks overdue hyperlink in disbursal details section
    And user verifies overdue amount in disbursal details section which is fetched from first disbursed application from LMS
    And user clicks on Adjust Overdue icon for adjusting this overdue amount with disbursal amount
    Then system will give message that overdue amount adjusted successfully
    And user should be able to disburse the loan successfully with LAN no generated in LMS
#    And initiates subsequent disbursal

    Examples:
      | Var_Stage | Single_Multiple |
      | Disbursal | multiple        |


#CAS-167890	Provision to handle charges and receipts when first disbursal cancellation is requested
  #when first disbursal cancellation is called then Charges and Receipts can be retained for further processing.
    #FeatureID-ACAUTOCAS-565,CAS-167890
  Scenario Outline: ACAUTOCAS-4225: Provision to handle charges and receipts for first disbursal cancellation is requested in LMS
    And Loan is already moved to "<Var_Stage>" stage having "<Single_Multiple>" disbursal
    And there are all entry and operation level charges mapped with application
    And user adjust some charges to the entry so that its adjustment amount should be visible in entry adjustment amount
    And user creates receipt in system
    And user allocates some charges to created receipt
    And user adjusts all pending charges to entry to disburse the application
    When user cancels first disbursement in LMS
    And user verifies charges and receipts on charges and details section in CAS which should be non editable
    Then user should be able to disburse the loan application successfully with LAN no generated in LMS
    And all adjusted charges along with allocated charges should be disabled

    Examples:
      | Var_Stage | Single_Multiple |
      | Disbursal | multiple        |

        #FeatureID-ACAUTOCAS-565,CAS-167890
  Scenario Outline: ACAUTOCAS-994:Charges adjusted with FP should get de allocated while first disbursal cancellation is requested in LMS
    And Loan is already moved to "<Var_Stage>" stage having "<Single_Multiple>" disbursal
    And there are all entry and operation level charges mapped with application
    When user adjust charges against FP
    And user already cancelled first disbursement in LMS
    #And user should be able to disburse the loan application successfully with LAN no generated in LMS
    Then any charge adjusted with FP will get deallocated
    And charges will be available in editable mode
  # If any charge is adjusted against receipt then charge will not be available in editable mode.

    Examples:
      | Var_Stage | Single_Multiple |
      | Disbursal | multiple        |


    #CAS-167890	Provision to handle charges and receipts when first disbursal cancellation is requested
    #FeatureID-ACAUTOCAS-565,CAS-167890
  Scenario Outline: ACAUTOCAS-4226: Loan Disbursement with New charges and receipts post first disbursal cancellation is requested in LMS
    And Loan is already moved to "<Var_Stage>" stage having "<Single_Multiple>" disbursal
    And there are all entry and operation level charges mapped with application adjusted with receipts
    And first disbursal cancellation is initiated in LMS
    When user executes charges policy post adding new charges
    And user adjust these new charges with new receipts
    And user verifies that cancelled charges should not be available for adjustment with receipt
    And user verifies that auto allocation should work on newly charges which are editable
    Then user should be able to disburse the loan application successfully with new charges allocated with receipts
    Examples:
      | Var_Stage | Single_Multiple |
      | Disbursal | multiple        |


#    #CAS-167890	Provision to handle charges and receipts when first disbursal cancellation is requested
#FeatureID-ACAUTOCAS-392,ACAUTOCAS-394,ACAUTOCAS-395,ACAUTOCAS-396,ACAUTOCAS-397,CAS-167890
  Scenario Outline: ACAUTOCAS-4227: Validation on new Disbursal for charge amount is increased post executing charge policy
    And Loan is already moved to "<Var_Stage>" stage having "<Single_Multiple>" disbursal
    And there are all entry and operation level charges mapped with application adjusted with receipts
    And first disbursal cancellation is authorized in LMS
    And there are charges which are non editable
    When user modifies charges policy in a way that some charges amount is changed
    And user executes charges policy
    And user verifies that system will not refresh the non editable charge data
    Then system should throw validation message stating that charge amount for already adjusted charges has been increased, so add manual charge for same
    #And user adds manual charges of differential amount of non editable charge
    #And user should be able to disburse the loan application successfully with new manual charges allocated with receipts

#  The charges which are non editable and if their data gets refreshed by the policy execution
#  then system will not refresh the non editable charge data, if the charge amount is increased
#  then system should throw message stating - 'The charge amount for already adjusted charges
#  has been increased, so add manual charge for same.'

    Examples:
      | Var_Stage | Single_Multiple |
      | Disbursal | multiple        |



#    #CAS-167890	Provision to handle charges and receipts when first disbursal cancellation is requested
   #FeatureID-ACAUTOCAS-448,CAS-167890
  Scenario Outline: ACAUTOCAS-4228: Charges and Receipts are editable while Loan Cancellation with Rebook option in LMS
    And Loan is already moved to "<Var_Stage>" stage having "<Single_Multiple>" disbursal
    And first disbursal cancellation is authorized in LMS
    And new disbursal is done with new charges and receipts
    When user cancels the loan in LMS with rebook option
    And user navigates to disbursal Details in CAS
    And all the entries of charges, receipts, FP should be in editable mode
    Then user should be able to adjust all the charges
    And user should be able to allocate all the charges

    Examples:
      | Var_Stage | Single_Multiple |
      | Disbursal | multiple        |

##########=================Copy application - Charges copy ===================#####################
    #FeatureID-ACAUTOCAS-4164
  Scenario: ACAUTOCAS-4747:  Charges not copied while copy application functionality
    And Applications should be available for copying
    When user searches an individual application using application id in copy application screen
    And user copies the application
    And user navigates to charges fees section of copied application
    Then charges should not get copied in new copied application

#########====================================================================###############

  ###### ==============Miscellaneous Policy - Auto realization of receipts ===============#####

 # CAS-67071	CLONE - Receipt ID Generation non-mandatory and Auto Realization of Receipt.
    #FeatureID-ACAUTOCAS-547,CAS-67071
  Scenario Outline: ACAUTOCAS-4229:  Miscellaneous Policy maintenance with Auto Realization Receipt Flag
    And Miscellaneous Policy master already existing with different parameters
    When user checks "<Flag>" in miscellaneous policy master
    And user saves the record
    Then miscellaneous policy should support auto realization of receipt

    Examples:

      | Flag                     |
      | is receipt realized flag |


     # CAS-67071	CLONE - Receipt ID Generation non-mandatory and Auto Realization of Receipt.
   #FeatureID-ACAUTOCAS-547,CAS-67071
  Scenario Outline: ACAUTOCAS-4230:  Execution of Miscellaneous Policy for auto realization of receipts
    And Miscellaneous Policy maintained with "<Flag>" checked
    When user attaches miscellaneous policy with "<product_scheme>"
    Then user should be able to attach miscellaneous policy with "<product_scheme>"

    Examples:

      | Flag                     | product_scheme |
      | is receipt realized flag | product        |
      | is receipt realized flag | scheme         |

  #FeatureID-ACAUTOCAS-547,CAS-67071
  Scenario Outline: ACAUTOCAS-4231:  Auto Realization of receipts on transaction screens as per Miscellaneous Policy attached with product
    # CAS-67071	CLONE - Receipt ID Generation non-mandatory and Auto Realization of Receipt.
    And Loan application is at "<Var_Stage>" stage
    And Miscellaneous Policy already attached with product for which loan is punched
    When user allocates the receipt against the charges in receipt details section
    And user verifies the receipt status
    Then status of receipt should be realized author at "<Var_Stage>" stage
    And user will check the receipt status in LMS which should be realized author
    Examples:

      | Var_Stage                 |
      | Lead Details              |
      | DDE                       |
      | Disbursal                 |
      | Credit Approval           |
      | Post Approval             |
      | Recommendation            |
      | Reconsideration           |
      | App Update Recommendation |
      | App Update Approval       |
      | Tranche Initiation        |
      | Tranche Approval          |


  ##examples updated and And commented for issue ACAUTOCAS-6482 by anshu on 03-Jun-24 as per review comments by Richa
  Scenario Outline: ACAUTOCAS-993:Charges list on Transaction at  "<Var_Stage>"  Stage
    And Loan application is at "<Var_Stage>" stage
    And user is already on add entry details icon in disbursal entry section of disbursal details tab at "<Var_Stage>" Stage
    When user verifies disbursal entry screen with disbursal no with tabs as "<Disbursal_Charge_Tabs>"
    Then user should see all charges list in the grid which are mapped with charge policy with charge amount on disbursal entry screen with "<Var_Charges>" options at "<Var_Stage>"  Stage
    #And user sees "<Var_Charges>" option under "<Disbursal_Charge_Tabs>" tab on disbursal entry screen at "<Var_Stage>"  Stage
    Examples:

      | Var_Stage       | Disbursal_Charge_Tabs | Var_Charges                                    |
      | DDE             | Charges               | Apply Charges                                  |
      | DDE             | Charges               | Execute operation level charge policy checkbox |
      | DDE             | Receipts              | No                                             |
      | Disbursal       | Charges               | Apply Charges                                  |
      | Disbursal       | Charges               | Execute operation level charge policy checkbox |
      | Disbursal       | Receipts              | No                                             |
      | Recommendation  | Charges               | Apply Charges                                  |
      | Recommendation  | Charges               | Execute operation level charge policy checkbox |
      | Recommendation  | Receipts              | NO                                             |
      | Reconsideration | Charges               | Apply Charges                                  |
      | Reconsideration | Charges               | Execute operation level charge policy checkbox |
      | Reconsideration | Receipts              | NO                                             |

    ###===========================================#############################
