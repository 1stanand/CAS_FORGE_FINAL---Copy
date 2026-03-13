@Epic-Charges_&_FP
@AuthoredBy-Anshu.bhaduri
@Reconciled
@ReviewedByDEV

Feature: ChargesWaiver
  Background:
    Given user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    #And Chargecodes should be maintained in Charge Code Definition Master with all Transaction types mapped
   # And Charges should be maintained in Charge Definition Master with computation details maintained

  @ImplementedBy-kanika.mahal
  @Release3
  Scenario Outline: ACAUTOCAS-2730:  Waiver Initiation Screen Details
    When user navigates to Waiver initiation screen from Menu
    Then user will see different sections as "<Waiver_Screen>" on Waiver initiation screen
    Examples:
      | Waiver_Screen             |
      | Stages                    |
      | Repayment Details         |
      | Application Rates         |
      | Waiver Initiation Reasons |
      | Through Employees         |
      | To Employees              |
      | Seen Employees            |
    @PotentialBug
    Examples:
      | Waiver_Screen             |
      | Application Charges       |
      | Contractual Charges       |
      | BT Charges                |
      | Waiver Initiation History |
  @ImplementedBy-kanika.mahal
  @Release3
  Scenario Outline: ACAUTOCAS-2731:  Waiver Summary under Waiver Initiation History on Waiver Initiation Screen
    When user navigates to Waiver initiation screen from Menu
    And user clicks on Waiver Summary details hyperlink against all history entries under "<Waiver_Screen>"
    Then user will see all previous waiver details with "<Summary>" sections on Waiver Summary Screen
    Examples:
      | Waiver_Screen             | Summary                  |
      | Waiver Initiation History | Rate Waiver Summary      |
      | Waiver Initiation History | Charge Waiver Summary    |
      | Waiver Initiation History | BT Charge Waiver Summary |
    @PotentialBug
    Examples:
      | Waiver_Screen             | Summary                           |
      | Waiver Initiation History | Contractual Charge Waiver Summary |



  #For this Scenario execution, below are pre requisites
#    Workflow is already maintained for different LOBs
#    User create OGNL for the Charges with running DB script for above OGNL to be visible in waiver rule matrix
#    User creates waiver rule matrix with attaching it to the event named as WAIVER MATRIX INITIATION
#    User attaches Waiver initiation Service task "<Product>" and move application till "<Var_Stage>" stage
#OGNL-->Rule Matrix--> attach OGNL in Rule Matrix-->Event mapping with Rule

  Scenario Outline: ACAUTOCAS-2728: Waiver Initiation Screen should be visible
    #Rule Matrix for verifying the validation on Max Waiver Limit for charges that are defined in Rule Matrix
    When user navigates to Waiver initiation Screen
    Then user should be able to initiate the waiver from Waiver Initiation Screen
    Examples:
      | Product          | Var_Stage |
      | Consumer Vehicle | DDE       |

    #contextObjectLoanApplication.assignmentMap['waiverMatrixChargeRate_5000033']
    #"<Product>" and at "<Var_Stage>" stage
#  INSERT INTO RULE_MATRIX_TYPE_OGNL_MAPPING (
#  ID,TENANT_ID,AUTHORIZATION_BUSINESS_DATE,CREATED_BY_URI,CREATION_TIME_STAMP,LAST_UPDATED_BY_URI,LAST_UPDATED_TIME_STAMP,
#  PERSISTENCE_STATUS,SNAPSHOT_RECORD,SYSTEM_MODIFIABLE_ONLY,UUID,MAKE_BUSINESS_DATE,OBJECT_GRAPH_TYPE,RULE_MATRIX_MASTER_TYPE)
#  VALUES (1036,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,5000040,403275);
#  INSERT INTO RULE_MATRIX_TYPE_OGNL_MAPPING (
#  ID,TENANT_ID,AUTHORIZATION_BUSINESS_DATE,CREATED_BY_URI,CREATION_TIME_STAMP,LAST_UPDATED_BY_URI,LAST_UPDATED_TIME_STAMP,
#  PERSISTENCE_STATUS,SNAPSHOT_RECORD,SYSTEM_MODIFIABLE_ONLY,UUID,MAKE_BUSINESS_DATE,OBJECT_GRAPH_TYPE,RULE_MATRIX_MASTER_TYPE)
#  VALUES (1037,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,5000060,403275);


  Scenario Outline: ACAUTOCAS-2729:Applications eligibility for Waiver Initiation Screen
#    And Workflow is already maintained for different LOBs
#    When user adds the Waiver service task of Waiving charges
#    And user maps this service task with "<Product>" and at "<Var_Stage>" stage
    When user moves loan application till "<Var_Stage>" stage
    Then application should be available on Waiver Initiation Screen

    Examples:

      | Product                  | Var_Stage |
      | Consumer Vehicle         | DDE       |
      | Gold Loan                | DDE       |
      | Multi Facility           | DDE       |
      | Gold Loan                | DDE       |
      | Finance Against Security | DDE       |
      | Agriculture Loan         | DDE       |

  Scenario: ACAUTOCAS-2588:  Waiver Initiation for different Charges
    And Eligible loan applications already visible on Waiver Initiation Screen
    When user navigates to Waiver initiation Screen
    And user enters all details of charge amount to be waived in waiver amount fields
    And user enters waiver initiation reasons from drop down
    And user completes the Waiver Through,To, seen tasks while initiating waiver
    And user saves the record
    Then user will be able to initiate waiver of charges


  Scenario: ACAUTOCAS-5585:  Waiver Initiation for different Rates
    And Eligible loan applications already visible on Waiver Initiation Screen
    When user navigates to Waiver initiation Screen
    And user enters all details of rate to be waived in rate fields
    And user enters waiver initiation reasons from drop down
    And user completes the Waiver Through,To, seen tasks while initiating waiver
    And user saves the record
    Then user will be able to initiate waiver of rate

  Scenario Outline: ACAUTOCAS-2732:  Waiver Approval for different "<Charges_Rates>"
    And Eligible loan applications already visible on Waiver Initiation Screen
    And user initiated the waiver from Waiver Initiation Screen
    When user navigates to Waiver Approval Screen
    And user enters decision details as "<Waiver_Decision>" for different "<Charges_Rates>"
    And user selects the reason which is populated basis decision value selected
    And user enters reason description with comments on screen
    And user "<Save>" the record with decision details as "<Waiver_Decision>" for different "<Charges_Rates>"
    Then user will be able to "<Waiver_Decision>" waiver of different "<Charges_Rates>"
    Examples:

      | Waiver_Decision | Save             | Charges_Rates |
      | Approve         | Save and Forward | charges       |
      | Approve         | Save and Submit  | charges       |
      | Approve         | Save             | charges       |
      | Reject          | Save and Forward | charges       |
      | Reject          | Save and Submit  | charges       |
      | Reject          | Save             | charges       |
      | Approve         | Save and Forward | rate          |
      | Approve         | Save and Submit  | rate          |
      | Approve         | Save             | rate          |
      | Reject          | Save and Forward | rate          |
      | Reject          | Save and Submit  | rate          |
      | Reject          | Save             | rate          |


  Scenario Outline: ACAUTOCAS-2733:  Verify the Charge on Transaction should be "<Enable_Disable>" when Waiver "<Waiver_Status>"
    And Eligible loan applications already visible on Waiver Initiation Screen
    #And waiver is already initiated for an application
    When user applies rate waive off in application rates section on waiver initiation screen
    And user verifies the charge on transaction at "<Var_Stage>" stage post waiver "<Waiver_Status>"
    Then charges on transaction should be "<Enable_Disable>" when charge waiver is "<Waiver_Status>"

    Examples:

      | Var_Stage                 | Waiver_Status | Enable_Disable |
      | DDE                       | initiated     | disabled       |
      | Recommendation            | initiated     | disabled       |
      | Credit Approval           | initiated     | disabled       |
      | Reconsideration           | initiated     | disabled       |
      | Post Approval             | initiated     | disabled       |
      | Disbursal                 | initiated     | disabled       |
      | Committee Approval        | initiated     | disabled       |
      | App Update Recommendation | initiated     | disabled       |
      | Tranche Initiation        | initiated     | disabled       |
      | DDE                       | approved      | enabled        |
      | Recommendation            | approved      | enabled        |
      | Credit Approval           | approved      | enabled        |
      | Reconsideration           | approved      | enabled        |
      | Post Approval             | approved      | enabled        |
      | Disbursal                 | approved      | enabled        |
      | Committee Approval        | approved      | enabled        |
      | App Update Recommendation | approved      | enabled        |
      | Tranche Initiation        | approved      | enabled        |


    #FeatureID-ACAUTOCAS-801,ACAUTOCAS-802,ACAUTOCAS-803,ACAUTOCAS-804
  Scenario Outline: ACAUTOCAS-4260:  To verify Rate Waived off on Transaction should be "<Enable_Disable>"
    And Eligible loan applications already visible on Waiver Initiation Screen
    #And waiver is already initiated for an application
    When user applies rate waive off in application rates section on waiver initiation screen
    And user verifies the charges rate on transaction at "<Var_Stage>" stage post waiver "<Waiver_Status>"
    Then charges rate on transaction should be "<Enable_Disable>" when rate waiver is "<Waiver_Status>"

    Examples:

      | Var_Stage                 | Waiver_Status | Enable_Disable |
      | DDE                       | initiated     | disabled       |
      | Recommendation            | initiated     | disabled       |
      | Credit Approval           | initiated     | disabled       |
      | Reconsideration           | initiated     | disabled       |
      | Post Approval             | initiated     | disabled       |
      | Disbursal                 | initiated     | disabled       |
      | Committee Approval        | initiated     | disabled       |
      | App Update Recommendation | initiated     | disabled       |
      | Tranche Initiation        | initiated     | disabled       |
      | Disbursal                 | approved      | enabled        |
      | DDE                       | approved      | enabled        |
      | Credit Approval           | approved      | enabled        |
      | Post Approval             | approved      | enabled        |
      | Committee Approval        | approved      | enabled        |
      | App Update Recommendation | approved      | enabled        |
      | Tranche Initiation        | approved      | enabled        |


  Scenario Outline: ACAUTOCAS-2735:  Validation on Waiver "<Amount_Rate_Waiver>" to be mandatory with successful waiver initiation of charges
    And Eligible loan applications already visible on Waiver Initiation Screen
    And Charges already populated on Waiver Initiation Screen
    When user saves the waiver initiation screen "<Waiver_Status>" with "<Amount_Rate_Waiver>" waiver
    Then user should get "<Validation>" on waiver initiation screen

    Examples:

      | Waiver_Status    | Validation                                         | Amount_Rate_Waiver |
      | without entering | Mandatory Validation to give waiver rate or amount | amount             |
      | with             | Success                                            | amount             |
      | without entering | Mandatory Validation to give waiver rate or amount | rate               |
      | with             | Success                                            | rate               |


#=================For BT Charges Waiver ===================
  Scenario Outline: ACAUTOCAS-2734:  Check for charges of BT records in case of total waiver and break-up waiver on Waiver Initiation Screen
    And Eligible loan applications already visible on Waiver Initiation Screen
    And BT Charges already populated on Waiver Initiation Screen
    When user Check for charges of BT records in case of "<Waiver_Status>" waiver on Waiver Initiation Screen
    Then user should see waiver amount field as "<Enable_Disable>" on waiver initiation screen for "<Waiver_Status>" waiver

    Examples:

      | Waiver_Status | Enable_Disable |
      | break-up      | disabled       |
      | total         | enabled        |


    ####### moved these scenarios to BT Charges waiver feature file

  Scenario: ACAUTOCAS-2589: BT Charges should be available on Waiver Initiation Screen
    And Eligible BT loan applications already visible on Waiver Initiation Screen
    And application already has internal integrated system BT records
    When user navigates to Waiver initiation Screen for application having internal integrated system BT records
    Then BT charges should be available on waiver initiation screen with BT breakup details


  Scenario Outline: ACAUTOCAS-2590: Capturing total waiver amount on Waiver Initiation Screen
    And Eligible BT loan applications already visible on Waiver Initiation Screen
    And BT Charges already populated on Waiver Initiation Screen
    When user navigates to BT charge breakup details records on Waiver Initiation Screen
    And user verifies charge breakup details in non editable mode
    Then user should be able to capture total waiver amount in "<Waiver_Status>" field which is "<Enable_Disable>"

    Examples:
      | Waiver_Status       | Enable_Disable |
      | total waiver amount | enabled        |

  Scenario: ACAUTOCAS-2591:  Waiver initiation with waiver amount in BT charges after doing maintenance in waiver matrix
    And Eligible loan applications already visible on Waiver Initiation Screen
    And BT Charges already populated on Waiver Initiation Screen
    And user gets breakup waiver amount after total waiver amount is entered in new field with fetch details button clicked already
    When user maintains waiver matrix with waiver amount
    And user initiates the waiver
    Then waiver should get initiated successfully


  Scenario: ACAUTOCAS-5586:  Waiver initiation with waiver rate in BT charges after doing maintenance in waiver matrix
    And Eligible loan applications already visible on Waiver Initiation Screen
    And BT Charges already populated on Waiver Initiation Screen
    And user gets breakup waiver amount after total waiver amount is entered in new field with fetch details button clicked already
    When user maintains waiver matrix with waiver rate
    And user initiates the waiver
    Then waiver should get initiated successfully


  Scenario: ACAUTOCAS-2592:  Waiver Approval for BT charges
    And Eligible loan applications already visible on Waiver Initiation Screen
    And BT Charges already populated on Waiver Initiation Screen
    And user already initiated the waiver
    When user selects multiple through to users on Waiver approver screen
    And user approves the waiver on Waiver approver screen
    Then waiver should get approved successfully after final approver approves
    And waiver changes should reflect in actual transaction screen

##===============================================================


#=================For Committee Approval Waiver ===================
  Scenario: Charges should be available on Waiver Initiation Screen
    And Eligible loan applications already visible on Waiver Initiation Screen
    And application already has internal integrated system BT records
    When user navigates to Waiver initiation Screen for application having internal integrated system BT records
    Then BT charges should be available on waiver initiation screen with BT breakup details



    ##===============================================================
