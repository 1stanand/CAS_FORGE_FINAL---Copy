@Epic-Charges_&_FP
@Reviewedby
#@AuthorBy_Anshu
@AuthoredBy-Anshu.bhaduri
@ImplementedBy-yash.sharma
@Release3
@ReviewedByDEV


Feature: ChargesContractual

  Background:
    Given user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And Chargecodes should be maintained in Charge Code Definition Master with all Transaction types mapped
    And Charges should be maintained in Charge Definition Master with computation details maintained


    #And Charge Policy not attached with product at "<Var_Stage>" stage
  Scenario Outline: ACAUTOCAS-2610:  Validation when Charges are not applied on loan application at <Var_Stage> stage
    And user reads data from the excel file "<ChargesWB>" under sheet "<Charges_SheetName>" and row <Charges_rowNum>
    And user opens an application at "<Var_Stage>" stage from application grid
    When user saves the charges screen without executing charge policy at "<Var_Stage>"
    Then user should get an error message after charges execution
    Examples:

      | Var_Stage                | ChargesWB    | Charges_SheetName   | Charges_rowNum |
      | dde_indiv_hl             | charges.xlsx | contractual_charges | 0              |
      | credit approval_indiv_hl | charges.xlsx | contractual_charges | 0              |
      | recommendation_indiv_hl  | charges.xlsx | contractual_charges | 0              |
      | post approval_indiv_hl   | charges.xlsx | contractual_charges | 0              |
      | disbursal_indiv_hl       | charges.xlsx | contractual_charges | 0              |


    #And charge policy is already mapped with "<Product_Scheme>" with contractual charges added
    #And user already executed the contractual charge policy at "<Var_Stage>" stage
  Scenario Outline: ACAUTOCAS-2614:  Edit both CAS and LMS Charges post Execution of Charge Policy at  <Var_Stage> Stage with contractual charges
    And user reads data from the excel file "<ChargesWB>" under sheet "<Charges_SheetName>" and row <Charges_rowNum>
    And user opens an application at "<Var_Stage>" stage from application grid
    And user saves the charges screen without executing charge policy at "<Var_Stage>"
    When user edits CAS and LMS charges on application charge details modal window
    And user saves record in contractual charges
    Then charges should be successfully edited at "<Var_Stage>" stage

    Examples:

      | Var_Stage                     | Product_Scheme | ChargesWB    | Charges_SheetName   | Charges_rowNum |
      | dde_indiv_mal                  | Product        | charges.xlsx | contractual_charges | 0              |
      | credit approval_indiv_mal      | Product        | charges.xlsx | contractual_charges | 0              |
      | post approval_indiv_mal        | Product        | charges.xlsx | contractual_charges | 0              |
      | disbursal_indiv_mal            | Product        | charges.xlsx | contractual_charges | 0              |
      | disbursal_indiv_subsequent_mal | Product        | charges.xlsx | contractual_charges | 0              |
      | dde_indiv_pl                  | Scheme         | charges.xlsx | contractual_charges | 0              |
      | credit approval_indiv_pl      | Scheme         | charges.xlsx | contractual_charges | 0              |
      | post approval_indiv_pl        | Scheme         | charges.xlsx | contractual_charges | 0              |
      | disbursal_indiv_pl            | Scheme         | charges.xlsx | contractual_charges | 0              |
      | disbursal_indiv_subsequent_pl | Scheme         | charges.xlsx | contractual_charges | 0              |



  #subtask created for issue ACAUTOCAS-6482
  Scenario Outline: ACAUTOCAS-2611:  With Charge policy having only CAS related charges Collect Contractual charges button is not visible at "<Var_Stage>" stage
    And Charge Policy attached with product at "<Var_Stage>" stage
    When charge policy includes only CAS related "<CAS_Events>" charges
    And user saves the charge policy
    Then collect contractual charges button will not be shown on contractual charges section at "<Var_Stage>" stage
    #And user will get a message as No suitable contractual charge returned from Charge Policy
    Examples:

      | Var_Stage                 | CAS_Events    |
      | DDE                       | Pre-Approval  |
      | DDE                       | Post-Approval |
      | DDE                       | Disbursal     |
      | DDE                       | Renewal       |
      | Credit Approval           | Pre-Approval  |
      | Credit Approval           | Post-Approval |
      | Credit Approval           | Disbursal     |
      | Credit Approval           | Renewal       |
      | Recommendation            | Pre-Approval  |
      | Recommendation            | Post-Approval |
      | Recommendation            | Disbursal     |
      | Recommendation            | Renewal       |
      | Post-Approval             | Pre-Approval  |
      | Post-Approval             | Post-Approval |
      | Post-Approval             | Disbursal     |
      | Post-Approval             | Renewal       |
      | Disbursal                 | Pre-Approval  |
      | Disbursal                 | Post-Approval |
      | Disbursal                 | Disbursal     |
      | Disbursal                 | Renewal       |
      | Reconsideration           | Pre-Approval  |
      | Reconsideration           | Post-Approval |
      | Reconsideration           | Disbursal     |
      | Reconsideration           | Renewal       |
      | Tranche Initiation        | Pre-Approval  |
      | Tranche Initiation        | Post-Approval |
      | Tranche Initiation        | Disbursal     |
      | Tranche Initiation        | Renewal       |
      | App Update Recommendation | Pre-Approval  |
      | App Update Recommendation | Post-Approval |
      | App Update Recommendation | Disbursal     |
      | App Update Recommendation | Renewal       |


    #subtask created for issue ACAUTOCAS-6482
  Scenario Outline: ACAUTOCAS-2612:  Addition of Contractual Charges in Charge Policy
    And All LMS Transaction Types already maintained
    When user selects source system as LMS while adding contractual charges in policy
    And  user adds LMS events "<LMS_Events>" from the event list with currency as INR
    And user clicks on hyperlink to add charges from charges to be applied screen
    And user saves the charge policy
    Then user should be able to add the "<Charge_Type>" charges
    #And user will be able to save the charge policy

    Examples:

      | LMS_Events                   | Charge_Type  |
      | Loan Closure/Early Closure   | Rate Based   |
      | Loan Closure/Early Closure   | Amount Based |
      | Loan Closure/Early Closure   | Slab Based   |
      | Rescheduling Part Prepayment | Rate Based   |
      | Rescheduling Part Prepayment | Amount Based |
      | Rescheduling Part Prepayment | Slab Based   |

#subtask created for issue ACAUTOCAS-6482
  Scenario Outline: ACAUTOCAS-2613:  Execution of Charge Policy at  "<Var_Stage>" Stage with contractual charges added in charge policy
    And Loan application is at "<Var_Stage>" stage
    And charge policy is already mapped with "<Product_Scheme>" with contractual charges added
    When user clicks on collect contractual charges button at "<Var_Stage>" stage
    And user verifies new section for contractual charge in charge fees acccordion
    Then user will see contractual charges attached with charge policy in the grid at "<Var_Stage>" stage
    #And user can enter effective charge amount against contractual charges in grid

    Examples:

      | Var_Stage                 | Product_Scheme |
      | DDE                       | Product        |
      | Recommendation            | Product        |
      | Credit Approval           | Product        |
      | Reconsideration           | Product        |
      | Post-Approval             | Product        |
      | Disbursal                 | Product        |
      | Tranche Initiation        | Product        |
      | App Update Recommendation | Product        |
      | DDE                       | Scheme         |
      | Recommendation            | Scheme         |
      | Credit Approval           | Scheme         |
      | Reconsideration           | Scheme         |
      | Post-Approval             | Scheme         |
      | Disbursal                 | Scheme         |
      | Tranche Initiation        | Scheme         |
      | App Update Recommendation | Scheme         |




    #subtask created for issue ACAUTOCAS-6482
#CAS-75790  Editable Slab Based Contractual charges
  Scenario Outline: ACAUTOCAS-2615:  Contractual Charges editable on Contractual Charges Screen at  "<Var_Stage>"  Stage
    And Loan application is at "<Var_Stage>" stage
    And user is already in charge details section post charge policy execution
    When user clicks on details hyperlink under effective charge amount on charges grid at "<Var_Stage>" Stage
    And modal window appears for contractual charges details with fields "<Editable_Fields>" as editable for "<Charge_Definition_Type>"
    Then user should be able to edit the "<Editable_Fields>" field for "<Charge_Definition_Type>" on contractual charge details modal window
    #And user should be able to save the charges

#Slabs , from to charge definition type is editable at transaction.
#Slab applied on is non editable.
# Amount based , rate based and slab based - all the contractual charges will be editable at transaction.
#All the columns of slab are editable . It is editable till CA.
#Deviation will be raised in case definition is modified from Master at Credit approval.
#At transaction if no editing is done for slabs, than waiver will be retained, but if anything is modified at transaction then waiver will not be retained.
#At the time once it is saved with modified definition and rerun of contractual charged is happening then one confirmation box will open , to take consent from user if he wants to go with the resetting of contractual charges.
#
    Examples:
      | Var_Stage                  | Editable_Fields        | Charge_Definition_Type |
      | DDE                        | Charge Definition Type | Amount Based           |
      | DDE                        | Charge Amount          | Amount Based           |
      | DDE                        | Effective Amount       | Amount Based           |
      | DDE                        | Charge Definition Type | Rate Based             |
      | DDE                        | Charge Rate            | Rate Based             |
      | DDE                        | Effective Rate         | Rate Based             |
      | DDE                        | Slab From              | Slab Based             |
      | DDE                        | Slab To                | Slab Based             |
      | DDE                        | Charge Definition Type | Slab Based             |
      | DDE                        | Actual Rate/Amount     | Slab Based             |
      | DDE                        | Effective Rate/Amount  | Slab Based             |
      | Recommendation             | Charge Definition Type | Amount Based           |
      | Recommendation             | Charge Amount          | Amount Based           |
      | Recommendation             | Effective Amount       | Amount Based           |
      | Recommendation             | Charge Definition Type | Rate Based             |
      | Recommendation             | Charge Rate            | Rate Based             |
      | Recommendation             | Effective Rate         | Rate Based             |
      | Recommendation             | Slab From              | Slab Based             |
      | Recommendation             | Slab To                | Slab Based             |
      | Recommendation             | Charge Definition Type | Slab Based             |
      | Recommendation             | Actual Rate/Amount     | Slab Based             |
      | Recommendation             | Effective Rate/Amount  | Slab Based             |
      | Credit Approval            | Charge Definition Type | Amount Based           |
      | Credit Approval            | Charge Amount          | Amount Based           |
      | Credit Approval            | Effective Amount       | Amount Based           |
      | Credit Approval            | Charge Definition Type | Rate Based             |
      | Credit Approval            | Charge Rate            | Rate Based             |
      | Credit Approval            | Effective Rate         | Rate Based             |
      | Credit Approval            | Slab From              | Slab Based             |
      | Credit Approval            | Slab To                | Slab Based             |
      | Credit Approval            | Charge Definition Type | Slab Based             |
      | Credit Approval            | Actual Rate/Amount     | Slab Based             |
      | Credit Approval            | Effective Rate/Amount  | Slab Based             |
      | Reconsideration            | Charge Definition Type | Amount Based           |
      | Reconsideration            | Charge Amount          | Amount Based           |
      | Reconsideration            | Effective Amount       | Amount Based           |
      | Reconsideration            | Charge Definition Type | Rate Based             |
      | Reconsideration            | Charge Rate            | Rate Based             |
      | Reconsideration            | Effective Rate         | Rate Based             |
      | Reconsideration            | Slab From              | Slab Based             |
      | Reconsideration            | Slab To                | Slab Based             |
      | Reconsideration            | Charge Definition Type | Slab Based             |
      | Reconsideration            | Actual Rate/Amount     | Slab Based             |
      | Reconsideration            | Effective Rate/Amount  | Slab Based             |
      | Post Approval              | Charge Definition Type | Amount Based           |
      | Post Approval              | Charge Amount          | Amount Based           |
      | Post Approval              | Effective Amount       | Amount Based           |
      | Post Approval              | Charge Definition Type | Rate Based             |
      | Post Approval              | Charge Rate            | Rate Based             |
      | Post Approval              | Effective Rate         | Rate Based             |
      | Disbursal                  | Charge Definition Type | Amount Based           |
      | Disbursal                  | Charge Amount          | Amount Based           |
      | Disbursal                  | Effective Amount       | Amount Based           |
      | Disbursal                  | Charge Definition Type | Rate Based             |
      | Disbursal                  | Charge Rate            | Rate Based             |
      | Disbursal                  | Effective Rate         | Rate Based             |
      | Tranche Initiation         | Charge Definition Type | Amount Based           |
      | Tranche Initiation         | Charge Amount          | Amount Based           |
      | Tranche Initiation         | Effective Amount       | Amount Based           |
      | Tranche Initiation         | Charge Definition Type | Rate Based             |
      | Tranche Initiation         | Charge Rate            | Rate Based             |
      | Tranche Initiation         | Effective Rate         | Rate Based             |
      | App Update Recommendation  | Charge Definition Type | Amount Based           |
      | App Update Recommendation  | Charge Amount          | Amount Based           |
      | App Update Recommendation  | Effective Amount       | Amount Based           |
      | App Update Recommendations | Charge Definition Type | Rate Based             |
      | App Update Recommendation  | Charge Rate            | Rate Based             |
      | App Update Recommendation  | Effective Rate         | Rate Based             |

  #subtask created for issue ACAUTOCAS-6482
  Scenario Outline: ACAUTOCAS-2616:  Effective Charge amount and Effective Rate should not be greater than maximum values defined at charge definition level at  "<Var_Stage>"  Stage
    And Loan application is at "<Var_Stage>" stage
    And user is already in contractual charge details section post charge policy execution
    When user edits "<Editable_Fields>" field with value greater than values defined at charge definition level
    And user saves the record at "<Var_Stage>" stage
    And user verifies that there is no validation message on the screen
    Then user verifies that "<Editable_Fields>" is replaced with the maximum amount maintained at charge definition level at "<Var_Stage>" stage
      #Then user should get a message as effective charge amount can not more than maximum charge amount while saving the values in "<Editable_Fields>" field

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
      | Tranche Initiation        | Charge Rate      |
      | Tranche Initiation        | Effective Amount |
      | App Update Recommendation | Charge Rate      |
      | App Update Recommendation | Effective Amount |

#And there will be no validation message on the screen while saving the record
  Scenario Outline: ACAUTOCAS-2617:  Charge Definition Type changes on Contractual Charges Screen when details hyperlink is clicked at  "<Var_Stage>"  Stage
    And Loan application is at "<Var_Stage>" stage
    And user is already in contractual charge details section post charge policy execution
    And modal window of contractual charges details already opened with fields as editable
    When user changes the charge definition type from "<Charge_Definition_From>" to  "<Charge_Definition_To>"  on contractual charge details screen  at "<Var_Stage>" stage
    And user enters "<Amount_Rate>" post changing charge definition type from "<Charge_Definition_From>" to  "<Charge_Definition_To>"
    Then user should be able to edit the details on contractual charge details modal window
    #And user should be able to save the charges

    Examples:

      | Var_Stage                 | Charge_Definition_From | Charge_Definition_To | Amount_Rate                     |
      | DDE                       | Amount Based           | Rate Based           | Charge Rate, Effective Rate     |
      | DDE                       | Rate Based             | Amount Based         | Charge amount, Effective amount |
      | Recommendation            | Amount Based           | Rate Based           | Charge Rate, Effective Rate     |
      | Recommendation            | Rate  Based            | Amount Based         | Charge amount, Effective amount |
      | Credit Approval           | Amount Based           | Rate Based           | Charge Rate, Effective Rate     |
      | Credit Approval           | Rate  Based            | Amount Based         | Charge amount, Effective amount |
      | Reconsideration           | Amount Based           | Rate Based           | Charge Rate, Effective Rate     |
      | Reconsideration           | Rate  Based            | Amount Based         | Charge amount, Effective amount |
      | Post Approval             | Amount Based           | Rate Based           | Charge Rate, Effective Rate     |
      | Post Approval             | Rate Based             | Amount Based         | Charge amount, Effective amount |
      | Disbursal                 | Amount Based           | Rate Based           | Charge Rate, Effective Rate     |
      | Disbursal                 | Rate Based             | Amount Based         | Charge amount, Effective amount |
      | Tranche Initiation        | Amount Based           | Rate Based           | Charge Rate, Effective Rate     |
      | Tranche Initiation        | Rate Based             | Amount Based         | Charge amount, Effective amount |
      | App Update Recommendation | Amount Based           | Rate Based           | Charge Rate, Effective Rate     |
      | App Update Recommendation | Rate Based             | Amount Based         | Charge amount, Effective amount |

#subtask created for issue ACAUTOCAS-6482
  Scenario Outline: ACAUTOCAS-2618:  Rules and Assignment Matrix mapping against Contractual Charges in Charge policy
    #CAS-63366_CLONE - Contractual Charges capturing in CAS and flow to LMS
    And Charge Policy already existed with contractual charges mapped
    When user checks rule based checkbox on charges details screen
    And user selects rule from rules List drop down for "<Charges_CASLMS>"
    And user selects assignment matrix from drop down for "<Charges_CASLMS>"
    And user should be able to map rule matrix to contractual charges
    Then on execution of charge policy contractual Charges value should come according to the Rule Matrix

    Examples:

      | Charges_CASLMS |
      | LMS            |


  Scenario Outline: ACAUTOCAS-2619:  Charge policy Execution according to Rules Matrix when all condition is "<True_False>" at "<Var_Stage>" stage
     #CAS-63366_CLONE - Contractual Charges capturing in CAS and flow to LMS
    And Charge Policy already existed with contractual charges mapped
    And user mapped rules matrix to contractual charges
    When user executes the charge policy when all condition is "<True_False>" on "<Var_Stage>" stage
    Then user should be able to get the result as "<Result>"

    Examples:

      | Var_Stage                 | True_False | Result                                                             |
      | DDE                       | True       | Contractual Charges value should come according to the Rule Matrix |
      | DDE                       | False      | Proper Validation should come on executing the Charge Policy       |
      | Recommendation            | True       | Contractual Charges value should come according to the Rule Matrix |
      | Recommendation            | False      | Proper Validation should come on executing the Charge Policy       |
      | Credit Approval           | True       | Contractual Charges value should come according to the Rule Matrix |
      | Credit Approval           | False      | Proper Validation should come on executing the Charge Policy       |
      | Reconsideration           | True       | Contractual Charges value should come according to the Rule Matrix |
      | Reconsideration           | False      | Proper Validation should come on executing the Charge Policy       |
      | Post Approval             | True       | Contractual Charges value should come according to the Rule Matrix |
      | Post Approval             | False      | Proper Validation should come on executing the Charge Policy       |
      | Disbursal                 | True       | Contractual Charges value should come according to the Rule Matrix |
      | Disbursal                 | False      | Proper Validation should come on executing the Charge Policy       |
      | Tranche Initiation        | True       | Contractual Charges value should come according to the Rule Matrix |
      | Tranche Initiation        | False      | Proper Validation should come on executing the Charge Policy       |
      | App Update Recommendation | True       | Contractual Charges value should come according to the Rule Matrix |
      | App Update Recommendation | False      | Proper Validation should come on executing the Charge Policy       |

  Scenario Outline: ACAUTOCAS-2620:  Charge policy Execution at "<Var_Stage>" stage post deleting any contractual charge from policy
    And Charge Policy already existed with contractual charges mapped to it
    When user deletes any contractual charge from policy
    And user executes the charge policy again at "<Var_Stage>" stage post deleting any contractual charge
    Then user should see only mapped contractual charges at "<Var_Stage>" stage
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

  Scenario Outline: ACAUTOCAS-2621: Charge Details should be available on various Reports and Letters generated by System at  "<Var_Stage>"  Stage
    And Loan application is at "<Var_Stage>" stage
    When user clicks on generate "<Reports>" on "<3dots_moreactions>" options at "<Var_Stage>" stage
    Then user should see "<Reports>" with charges section having charge details operation type, charge name, bptype, bpname, charge amount , effective charge amount, differential amount split id etc. for all charges applied on application
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


  Scenario Outline: ACAUTOCAS-2622:  Contractual Charges waiver and execution of charge policy on transaction at  "<Var_Stage>"  Stage
    And Loan application is
    When user navigates to Waiver "<initiate_approve>" Screen
    And user "<Waiver_Status>" waiver of any contractual charges on Waiver "<initiate_approve>" Screen
    And user completes the Waiver Through,To, seen tasks when user "<Waiver_Status>" Waiver "<initiate_approve>" Screen
    And user saves record
    And user verifies the Charge on Transaction at "<Var_Stage>" stage
    Then charges on transaction should be "<Enable_Disable>" when Waiver is "<initiate_approve>"

    Examples:

      | Var_Stage                 | Waiver_Status | Enable_Disable | initiate_approve |
      | Disbursal                 | initiates     | disabled       | initiation       |
      | DDE                       | initiates     | disabled       | initiation       |
      | Recommendation            | initiates     | disabled       | initiation       |
      | Credit Approval           | initiates     | disabled       | initiation       |
      | Reconsideration           | initiates     | disabled       | initiation       |
      | Post Approval             | initiates     | disabled       | initiation       |
      | Tranche Initiation        | initiates     | disabled       | initiation       |
      | App Update Recommendation | initiates     | disabled       | initiation       |
      | Disbursal                 | approves      | enabled        | approval         |
      | DDE                       | approves      | enabled        | approval         |
      | Recommendation            | initiates     | enabled        | approval         |
      | Credit Approval           | approves      | enabled        | approval         |
      | Tranche Initiation        | initiates     | enabled        | approval         |
      | App Update Recommendation | approves      | enabled        | approval         |


    #subtask created for issue ACAUTOCAS-6482
  Scenario Outline: ACAUTOCAS-2623:  Charge Execution Remainder and Re execution Methods while Charge policy Execution at "<Var_Stage>" Stage
    And Loan application is at "<Var_Stage>" stage
    And contractual charges already attached with application
    When user checks the Contractual Charges in case of "<Charge_Execution>" method in case of tranche splitting at "<Var_Stage>" stage
    Then Contractual Charges(Pre Approval and Post Approval) should not be Split
    #And Disbursal Contractual Charges should be applied on each tranche

    Examples:

      | Var_Stage | Charge_Execution |
      | Disbursal | Remainder        |
      | Disbursal | Re-Execution     |

#subtask created for issue ACAUTOCAS-6482
  Scenario Outline: ACAUTOCAS-2624:  Charge Execution of First Disbursal Method while Charge policy Execution at "<Var_Stage>" Stage
    And Loan application is at "<Var_Stage>" stage
    And contractual charges already attached with application
    When user checks the Contractual Charges in case of "<Charge_Execution>" method in case of tranche splitting at "<Var_Stage>" stage
    Then Both CAS and contractual charges should be applied with First tranche
    #And Disbursal Charges should be applied on each tranche

    Examples:

      | Var_Stage | Charge_Execution       |
      | Disbursal | First Disbursal Method |

#subtask created for issue ACAUTOCAS-6482
  Scenario Outline: ACAUTOCAS-2625:  Disbursal with Contractual Charges at "<Var_Stage>"
    And Loan application is at "<Var_Stage>" stage
    And contractual charges already attached with application
    When user disburse the application with contractual charges
    And checks in LMS module for respective application
    #Then application should be disbursed successfully
    Then contractual charges should be present with each tranche in LMS

    Examples:

      | Var_Stage |
      | Disbursal |


# INputs from PMG Team on SLab based contractual charges

#Slabs , from to charge definition type is editable at transaction.
#Slab applied on is non editable.
#Amount based , rate based and slab based - all the contractual charges will be editable at transaction.
#All the columns of slab are editable . It is editable till CA.
#Deviation will be raised in case definition is modified from Master at Credit approval.
#At transaction if no editing is done for slabs, than waiver will be retained, but if anything is modified at transaction then waiver will not be retained.
#At the time once it is saved with modified definition and rerun of contractual charged is happening then one confirmation box will open , to take consent from user if he wants to go with the resetting of contractual charges.
#

