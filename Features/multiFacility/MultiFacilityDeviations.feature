@AuthoredBy-navneet.priyadarshi
@DevTrack
@GA-9.0
@CAS-254473
Feature: Corporate Loans - Deviation Policy (Facility-wise)

    #${ProductType:["MULF"]}
    #${ApplicationStage:["DDE","Credit Approval","Tranche Approval","Disbursal"]}

    ###########################################################################
    # BUSINESS RULES (summary for readers)
    # 1. Deal-level deviations appear ABOVE facility-level deviations.
    # 2. Deal/Application Number shown for deal-level deviations — DEAL ID in case of Deal deviation.
    #    FIRST column will be Deal/Facility ID (visible everywhere).
    # 3. Deal/Facility ID column MUST remain visible across Deviation Table, Raise Manual Deviation,
    #    CAM Report, Approval screens and Deviation History.
    # 4. Facility Initiation → bifurcation occurs → only facility-level deviations visible.
    # 5. Manual deviation:
    #       - Facility LOV: optional (non-mandatory)
    #       - Single facility per deviation (no multi-select). Each deviation maps to exactly one facility → one row.
    #       - No facility selected → deviation recorded at deal-level.
    ###########################################################################

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
#        Given user opens an application of "<ProductType>" product type at "<ApplicationStage>" with multiple facilities
#        And deviation rules are configured for deal-level and facility-level

    ###########################################################################
    # RERUN POLICY (early functional verification)
    # Functional Rerun verifies that deviations for the current stage populate the grid
    ###########################################################################

  ###########################################################################
    # SCENARIO 1: New Column Visibility
    ###########################################################################
  #For Credit Approval screen
  @Positive
    @Morax
  Scenario Outline: New column Deal/Facility ID should be available in deviation table at Credit Approval
    When user opens an application of "<Stage>" stage variant from "CREDIT_APPROVAL" grid
    And user clicks on "<Deviation_Tab>" in deviations section on "<Stage>"
    Then Deal or facility column should be visible in the deviations table on credit approval screen
    And user logout from CAS
    Examples:
      | Deviation_Tab      | Stage           |
      | credit_deviation   | Credit Approval |
      | business_deviation | Credit Approval |

  @Positive
    @Morax
  Scenario Outline: Rerun Deviation Policy populates and refreshes deviations for Credit Approval
    When user opens an application of "<Stage>" stage variant from "CREDIT_APPROVAL" grid
    And user reruns the deviation policy on credit approval
    And user clicks on "<Deviation_Tab>" in deviations section on "<Stage>"
    Then "<Deviation_Name>" should be present for "<Deal_Or_Facility_ID>"
    Examples:
      | Deal_Or_Facility_ID | Deviation_Name                                  | Deviation_Tab    | Stage           |
      | MULF3117            | DealLevelMULFDeviation, DealLevelMULFDeviation2 | credit_deviation | Credit Approval |

    ###########################################################################
    # SCENARIO 3: Deal-level & Facility-level Segregation & Sorting
    ###########################################################################
  @Positive
  Scenario Outline: System should display deal-level deviations above facility-level deviations and sort by deviation level at Credit Approval
    When user opens an application of "<Stage>" stage variant from "CREDIT_APPROVAL" grid
    And user reruns the deviation policy on credit approval
    And user clicks on "<Deviation_Tab>" in deviations section on "<Stage>"
    Then system should show deal-level deviations first followed by facility-level deviations with deal-level and facility-level grouped deviations should be sorted by deviation level in descending order
    Examples:
      | Deviation_Tab    | Stage           |
      | credit_deviation | Credit Approval |

  #############################################################################
    # SCENARIO 4: Raise Manual Deviation - Facility ID field should be visible
  #############################################################################
  @Positive
  Scenario Outline: Facility Id field should be visible in raise manual deviation modal at Credit Approval
    When user opens an application of "credit approval" stage variant from "CREDIT_APPROVAL" grid
    And open raise manual deviation modal on credit approval
    Then "<Field_Name>" field should be visible in raise manual deviation modal on Credit Approval
    Examples:
      | Field_Name  |
      | Facility ID |

  ###########################################################################
    # SCENARIO 5: Raise Manual Deviation - Positive (Deal-level)
  ###########################################################################
  @Positive
    @Morax
  Scenario Outline: User should be able to raise a deal-level deviation leaving Facility field empty at Credit Approval
    When user opens an application of "<Stage>" stage variant from "CREDIT_APPROVAL" grid
    And user clicks on "<Deviation_Tab>" in deviations section on "<Stage>"
    And open raise manual deviation modal on credit approval
    And user selects "<Deviation_Value>" in "deviation" field in raise manual deviation modal
    And user selects "<Deviation_Level_Value>" in "deviation_level" dropdown in raise manual deviation modal
    And user selects "<Role_Value>" in "roles" field in raise manual deviation modal
    And user fills "<Description_Value>" in "description" text field in raise manual deviation modal
    And user clicks on "add_deviation" button in raise manual deviation modal
    And user clicks on "submit" button in raise manual deviation modal
    And deviation should be saved successfully with message "Manual Deviations Saved"
    Then "<Deviation_Name>" should be present for "<Deal_Or_Facility_ID>"
    Examples:
      | Deviation_Tab    | Deviation_Value | Role_Value | Deviation_Level_Value | Description_Value | Deviation_Name   | Deal_Or_Facility_ID | Stage           |
      | credit_deviation | Other           | All_Roles  | L7                    | ATDDDD2           | Other -- ATDDDD2 | MULF3117            | Credit Approval |

  ###########################################################################
    # SCENARIO 6: Raise Manual Deviation - Positive (Facility-level)
  ###########################################################################
  @Positive
    @Morax
  Scenario Outline: User should be able to raise a facility-level deviation leaving Facility field empty at Credit Approval
    When user opens an application of "<Stage>" stage variant from "CREDIT_APPROVAL" grid
    And user clicks on "<Deviation_Tab>" in deviations section on "<Stage>"
    And open raise manual deviation modal on credit approval
    And user selects "<Deal_Or_Facility_ID>" in "facility_id" field in raise manual deviation modal
    And user selects "<Deviation_Value>" in "deviation" field in raise manual deviation modal
    And user selects "<Deviation_Level_Value>" in "deviation_level" dropdown in raise manual deviation modal
    And user selects "<Role_Value>" in "roles" field in raise manual deviation modal
    And user fills "<Description_Value>" in "description" text field in raise manual deviation modal
    And user clicks on "add_deviation" button in raise manual deviation modal
    And user clicks on "submit" button in raise manual deviation modal
    And deviation should be saved successfully with message "Manual Deviations Saved"
    Then "<Deviation_Name>" should be present for "<Deal_Or_Facility_ID>"
    Examples:
      | Deviation_Tab    | Deviation_Value | Role_Value | Deviation_Level_Value | Description_Value      | Deviation_Name                  | Deal_Or_Facility_ID | Stage           |
      | credit_deviation | Other           | All_Roles  | L3                    | ATDDDD_for_facility_BD | Other -- ATDDDD_for_facility_BD | MULF3117_BD_1       | Credit Approval |


  ############################################################################################
    # SCENARIO 7: Raise Manual Deviation - Negative (Facility-level) Duplicate deviation case
  ############################################################################################
  @Negative
    @Morax
  Scenario Outline: System should prevent raising the same deviation "<Deviation_Name>" again for Facility at Credit Approval
    When user opens an application of "<Stage>" stage variant from "CREDIT_APPROVAL" grid
    And user clicks on "<Deviation_Tab>" in deviations section on "<Stage>"
    And open raise manual deviation modal on credit approval
    And user selects "<Deal_Or_Facility_ID>" in "facility_id" field in raise manual deviation modal
    And user selects "<Deviation_Value>" in "deviation" field in raise manual deviation modal
    And user selects "<Deviation_Level_Value>" in "deviation_level" dropdown in raise manual deviation modal
    And user selects "<Role_Value>" in "roles" field in raise manual deviation modal
    And user fills "<Description_Value>" in "description" text field in raise manual deviation modal
    And user clicks on "add_deviation" button in raise manual deviation modal
    And user clicks on "submit" button in raise manual deviation modal
    And deviation should be saved successfully with message "Manual Deviations Saved"
    And "<Deviation_Name>" should be present for "<Deal_Or_Facility_ID>"
    And open raise manual deviation modal on credit approval
    And user selects "<Deal_Or_Facility_ID>" in "facility_id" field in raise manual deviation modal
    And user selects "<Deviation_Value>" in "deviation" field in raise manual deviation modal
    And user selects "<Deviation_Level_Value>" in "deviation_level" dropdown in raise manual deviation modal
    And user selects "<Role_Value>" in "roles" field in raise manual deviation modal
    And user fills "<Description_Value>" in "description" text field in raise manual deviation modal
    And user clicks on "add_deviation" button in raise manual deviation modal
    Then "Deviation already added" notification message is displayed on credit approval
    Examples:
      | Deviation_Tab    | Deviation_Value | Role_Value | Deviation_Level_Value | Description_Value     | Deviation_Name                 | Deal_Or_Facility_ID | Stage           |
      | credit_deviation | Other           | All_Roles  | L3                    | ATDD2_for_facility_BD | Other -- ATDD2_for_facility_BD | MULF3117_BD_1       | Credit Approval |

  ############################################################################################
  # SCENARIO 8: Filtered deviations should be visible
  ############################################################################################
  @Positive
  Scenario Outline: Deviations should be filtered based on the selected dropdown value at credit approval
    When user opens an application of "<Stage>" stage variant from "CREDIT_APPROVAL" grid
    And user clicks on "<Deviation_Tab>" in deviations section on "<Stage>"
    And user selects "<Selected_Deal_Or_Facility_ID>" in "deal_or_facility_id" field in deviations section at credit approval
    And user selects "<Selected_Deviation_Level>" in "deviation_level" field in deviations section at credit approval
    Then Deviations corresponding to selected deal or facility id with "<Selected_Deal_Or_Facility_ID>" and deviation level with "<Selected_Deviation_Level>" should be visible in the deviation table at credit approval
    Examples:
      | Deviation_Tab    | Selected_Deal_Or_Facility_ID | Selected_Deviation_Level | Stage           |
      | credit_deviation | MULF3117_BD_1                | L3                       | Credit Approval |

  ############################################################################################
  # SCENARIO 9: Facility-level Deviation should get approved successfully
  ############################################################################################
  @Positive
  Scenario Outline: Facility-level deviation should get approved at credit approval
    When user opens an application of "<Stage>" stage variant from "CREDIT_APPROVAL" grid
    And user clicks on "<Deviation_Tab>" in deviations section on "<Stage>"
    And user clicks on "Approve" button for "<Selected_Deal_Or_Facility_ID>" and "<Selected_Deviation_Name>" fills information and submits the deviation approval modal with "<Deviation_Comment>" and "Data saved successfully" message is displayed
    Then Deviation status should be "Approve" corresponding to deviation having deal or facility id "<Selected_Deal_Or_Facility_ID>" and deviation name "<Selected_Deviation_Name>" in the deviation table at credit approval
    Examples:
      | Deviation_Tab    | Selected_Deal_Or_Facility_ID | Selected_Deviation_Name          | Stage           | Deviation_Comment |
      | credit_deviation | MULF3117_BD_1                | Other -- ATDDDD3_for_facility_BD | Credit Approval | approvedd         |

  ############################################################################################
  # SCENARIO 10: Facility-level Deviation should get rejected successfully
  ############################################################################################
  @Positive
  Scenario Outline: Facility-level deviation should get rejected at credit approval
    When user opens an application of "<Stage>" stage variant from "CREDIT_APPROVAL" grid
    And user clicks on "<Deviation_Tab>" in deviations section on "<Stage>"
    And user clicks on "Reject" button for "<Selected_Deal_Or_Facility_ID>" and "<Selected_Deviation_Name>"
    And "Data saved successfully" notification message is displayed on credit approval
    Then Deviation status should be "Reject" corresponding to deviation having deal or facility id "<Selected_Deal_Or_Facility_ID>" and deviation name "<Selected_Deviation_Name>" in the deviation table at credit approval
    Examples:
      | Deviation_Tab    | Selected_Deal_Or_Facility_ID | Selected_Deviation_Name         | Stage           |
      | credit_deviation | MULF3117_BD_1                | Other -- ATDDDD_for_facility_BD | Credit Approval |

  ############################################################################################
  # SCENARIO 11: Facility-level manual Deviation should get deleted successfully
  ############################################################################################
  @Positive
  Scenario Outline: Facility-level manual deviation should get deleted at credit approval
    When user opens an application of "<Stage>" stage variant from "CREDIT_APPROVAL" grid
    And user clicks on "<Deviation_Tab>" in deviations section on "<Stage>"
    And user clicks on "Delete" button for "<Selected_Deal_Or_Facility_ID>" and "<Selected_Deviation_Name>"
    And "Manual Deviation Deleted Successfully" notification message is displayed on credit approval
    Then Deviations corresponding to selected deal or facility id with "<Selected_Deal_Or_Facility_ID>" and deviation level with "<Selected_Deviation_Level>" should not be visible in the deviation table at credit approval
    Examples:
      | Deviation_Tab    | Selected_Deal_Or_Facility_ID | Selected_Deviation_Name        | Stage           |
      | credit_deviation | MULF3117_BD_1                | Other -- ATDD2_for_facility_BD | Credit Approval |

  ################################################################################################
  # SCENARIO 12: Approved/rejected deal and facility deviations should be visible in view history
  ################################################################################################
  @Positive
  Scenario Outline: Approved/rejected deal and facility deviations should be visible in view history
    When user opens an application of "<Stage>" stage variant from "CREDIT_APPROVAL" grid
    And user clicks on "<Deviation_Tab>" in deviations section on "<Stage>"
    And user clicks on view history button in deviations section on "<Stage>"
    Then "<Deal_Or_Facility_IDs>" deviations should be present for "<Deviation_Name_Level_Status>" in the deviation history table
    Examples:
      | Deviation_Tab    | Deal_Or_Facility_IDs   | Deviation_Name_Level_Status                            | Stage           |
      | credit_deviation | MULF3117,MULF3117_LC_2 | Other~L1~APPROVED,FacilityLevelDeviationLC~L7~APPROVED | Credit Approval |

  #####################################################################################################
  # SCENARIO 13: Deal or Facility ID should be visible in deviations table on Committee Approval stage
  #####################################################################################################

  #Committee Approval
  @Positive
  Scenario Outline: New column Deal/Facility ID should be available in deviation table at "CommitteeApproval"
    When user opens an application of "committee approval" stage variant from "Committee Approval" grid
    And user opens "committee_decision" accordion on committee approval
    And user clicks "<Button_Name>" button on committee approval screen
    Then Deal or facility column should be visible in the "deviations_table"
    Examples:
      | Button_Name       |
      | raised_deviations |


  ####################################################################################################################################
  # SCENARIO 14: Deal level deviations should appear before facility level deviations in deviations table on Committee Approval stage
  ####################################################################################################################################

  #Committee Approval
  @Positive
  Scenario Outline: Deal level deviations should appear before facility level deviations at "Committee Approval"
    When user opens an application of "committee approval" stage variant from "Committee Approval" grid
    And user opens "committee_decision" accordion on committee approval
    And user clicks "<Button_Name>" button on committee approval screen
    Then Deal level deviations should appear before facility level deviations in "deviations_table"
    Examples:
      | Button_Name       |
      | raised_deviations |


  ####################################################################################################################################
  # SCENARIO 15: Deal or Facility ID should be visible in deviation details table on Committee Approval stage
  ####################################################################################################################################

  #Committee Approval
  @Positive
  Scenario Outline: New column Deal/Facility ID should be available in deviation details table at CommitteeApproval
    When user opens an application of "committee approval" stage variant from "Committee Approval" grid
    And user opens "committee_decision" accordion on committee approval
    And user clicks "raised_deviations" button on committee approval screen
    And user clicks "deviation_details" button on committee approval screen
    Then Deal or facility column should be visible in the "deviation_details_table"
    Examples:
      | Button_Name       |
      | deviation_details |


  ####################################################################################################################################
  # SCENARIO 16: Deal level deviations should appear before facility level deviations in deviation details table on Committee Approval stage
  ####################################################################################################################################

  #Committee Approval
  @Positive
  Scenario Outline: Deal level deviations should appear before facility level deviations at Committee Approval
    When user opens an application of "committee approval" stage variant from "Committee Approval" grid
    And user opens "committee_decision" accordion on committee approval
    And user clicks "raised_deviations" button on committee approval screen
    And user clicks "deviation_details" button on committee approval screen
    Then Deal level deviations should appear before facility level deviations in "deviation_details_table"
    Examples:
      | Button_Name       |
      | deviation_details |

  ##########################################################################################################################################################
  # SCENARIO 17: Deal or Facility ID should be visible in deviation details table in Committee Decision history member details on Committee Approval stage
  ##########################################################################################################################################################

  #Committee Approval
  @Positive
  Scenario Outline: New column Deal/Facility ID should be available in deviation details table in Committee Member decision details at Committee Approval
    When user opens an application of "committee approval" stage variant from "Committee Approval" grid
    And user opens "committee_decision_history" accordion on committee approval
    And user clicks on Member Details link for entry with approval status "Approved" on committee approval
    And user clicks on the View Decision link for first entry in committee member decision details modal
    Then Deal or facility column should be visible in the "deviations_table"
    Examples:
      | Button_Name       |
      | deviation_details |

  ##########################################################################################################################################################
  # SCENARIO 18: Deal or Facility ID should be visible in deviation details table in Committee Decision history member details on Committee Approval stage
  ##########################################################################################################################################################

  #Committee Approval
  @Positive
  Scenario Outline: Deal level deviations should appear before facility level deviations in Committee Member decision details at Committee Approval
    When user opens an application of "committee approval" stage variant from "Committee Approval" grid
    And user opens "committee_decision_history" accordion on committee approval
    And user clicks on Member Details link for entry with approval status "Approved" on committee approval
    And user clicks on the View Decision link for first entry in committee member decision details modal
    Then Deal level deviations should appear before facility level deviations in "deviation_details_table"
    Examples:
      | Button_Name       |
      | deviation_details |

  #####################################################################################################################################
  # SCENARIO 19: Deal or Facility ID should be not visible in deviations table in deviations section at Tranche Approval stage
  #####################################################################################################################################

  #Committee Approval
  @Positive
  Scenario Outline: Deal or facility ID column should not be visible in deviations table at Tranche Approval stage
    When user opens an application of "<Stage>" stage variant from "APPLICATION" grid
    And user clicks on "<Deviation_Tab>" in deviations section on "<Stage>"
    Then Deal or facility column should not be visible in the deviations table
    And user logout from CAS
    Examples:
      | Deviation_Tab      | Stage            |
      | credit_deviation   | Tranche Approval |
      | business_deviation | Tranche Approval |

  ######################################################################################################################################
  # SCENARIO 20: Deal or Facility ID should be visible in deviations history table in deviations history modal at Tranche Approval stage
  ######################################################################################################################################

  #Committee Approval
  @Positive
  Scenario Outline: Deal or facility ID column should be visible in deviations history table at Tranche Approval stage
    When user opens an application of "<Stage>" stage variant from "APPLICATION" grid
    And user clicks on "<Deviation_Tab>" in deviations section on "<Stage>"
    And user clicks on view history button in deviations section on "<Stage>"
    Then Deal or facility column should be visible in the "deviation_history_table"
    Examples:
      | Deviation_Tab    | Stage            |
      | credit_deviation | Tranche Approval |

  ################################################################################################################################################
  # SCENARIO 21: Approved/Rejected deviations should be visible in deviations history table in deviations history modal at Tranche Approval stage
  ################################################################################################################################################

  #Committee Approval
  @Positive
  Scenario Outline: Approved/Rejected deviations should be visible in deviations history table at Tranche Approval stage
    When user opens an application of "<Stage>" stage variant from "APPLICATION" grid
    And user clicks on "<Deviation_Tab>" in deviations section on "<Stage>"
    And user clicks on view history button in deviations section on "<Stage>"
    Then "<Deal_Or_Facility_IDs>" deviations should be present for "<Deviation_Name_Level_Status>" in the deviation history table
    Examples:
      | Deviation_Tab    | Deal_Or_Facility_IDs   | Deviation_Name_Level_Status                                               | Stage            |
      | credit_deviation | MULF3506,MULF3506_BD_1 | DealLevelMULFDeviation~L7~APPROVED,FacilityLevelDeviationBDTA~L2~APPROVED | Tranche Approval |

  ################################################################################################################################################
  # SCENARIO 22: Deal or Facility ID column should not be visible in deviations table on Disbursal stage
  ################################################################################################################################################

  @Positive
  Scenario Outline: Deal or facility ID column should not be visible in deviations table at Disbursal stage
    When user opens an application of "<Stage>" stage variant from "APPLICATION" grid
    And user clicks on Deviations tab
    And user clicks on "<Deviation_Tab>" in deviations section on "<Stage>"
    Then Deal or facility column should not be visible in the deviations table
    And user logout from CAS
    Examples:
      | Deviation_Tab      | Stage     |
      | credit_deviation   | Disbursal |
      | business_deviation | Disbursal |

  ################################################################################################################################################
  # SCENARIO 23: Deal or Facility ID column should be visible in deviations history table on Disbursal stage
  ################################################################################################################################################

  @Positive
  Scenario Outline: Deal or facility ID column should be visible in deviation history table at Disbursal stage
    When user opens an application of "<Stage>" stage variant from "APPLICATION" grid
    And user clicks on Deviations tab
    And user clicks on "<Deviation_Tab>" in deviations section on "<Stage>"
    And user clicks on view history button in deviations section on "<Stage>"
    Then Deal or facility column should not be visible in the deviations table
    Examples:
      | Deviation_Tab    | Stage     |
      | credit_deviation | Disbursal |

  ###########################################################################################################################################################
  # SCENARIO 24: Approved/Rejected deal level deviation and particular facility's deviation should be visible in deviations history table on Disbursal stage
  ###########################################################################################################################################################

  @Positive
  Scenario Outline: Approved/Rejected deal level and particular facility's deviations should be visible in deviation history table at Disbursal stage
    When user opens an application of "<Stage>" stage variant from "APPLICATION" grid
    And user clicks on Deviations tab
    And user clicks on "<Deviation_Tab>" in deviations section on "<Stage>"
    And user clicks on view history button in deviations section on "<Stage>"
    Then "<Deal_Or_Facility_IDs>" deviations should be present for "<Deviation_Name_Level_Status>" in the deviation history table
    Examples:
      | Deviation_Tab    | Deal_Or_Facility_IDs | Deviation_Name_Level_Status        | Stage     |
      | credit_deviation | MULF3307             | DealLevelMULFDeviation~L7~APPROVED | Disbursal |

  ###########################################################################################################################################################
  # SCENARIO 25: Rerun deviation policy, only the particular facility's deviation should be visible in deviations table on Disbursal stage
  ###########################################################################################################################################################

  @Positive
  Scenario Outline: Rerun deviation policy, only the particular facility's deviations should be visible in deviation history table at Disbursal stage
    When user opens an application of "<Stage>" stage variant from "APPLICATION" grid
    And user clicks on Deviations tab
    And user clicks on "<Deviation_Tab>" in deviations section on "<Stage>"
    And user clicks "<Button_Name>" button in deviations tab
    Then "<Deal_Or_Facility_IDs>" deviations should be present for "<Deviation_Name_Level_Status>" in the deviation history table
    Examples:
      | Deviation_Tab    | Deal_Or_Facility_IDs | Deviation_Name_Level_Status        | Stage     | Button_Name            |
      | credit_deviation | MULF3307_BL_1             | DealLevelMULFDeviation~L7~APPROVED | Disbursal | rerun_deviation_policy |


  ###########################################################################################################################################################
  # SCENARIO 26: Facility ID field should not be visible in raise manual deviation modal on Disbursal stage
  ###########################################################################################################################################################

  @Positive
  Scenario Outline: Facility ID field should not be visible in raise manual deviation modal on Disbursal stage
    When user opens an application of "<Stage>" stage variant from "APPLICATION" grid
    And user clicks on Deviations tab
    And user clicks on "<Deviation_Tab>" in deviations section on "<Stage>"
    And user clicks "<Button_Name>" button in deviations tab
    Then "Facility ID" field should not be visible in raise manual deviation modal on Disbursal
    Examples:
      | Deviation_Tab    | Stage     | Button_Name            |
      | credit_deviation | Disbursal | raise_manual_deviation |

#  @Positive
#  Scenario Outline: Rerun Deviation Policy populates and refreshes deviations
##        When user navigates to the deviation screen under "<ApplicationStage>"
#    And user opens an application of "<Var_Stage>" stage variant from "<Grid_Name>" grid
#    When user navigates to credit deviation tab under Deviation Section at "<Var_Stage>"
#    And user ReRun "<Deviation>"
#    And "<Deviation>" ReRun successfully
#    Then system should populate the deviation grid with mapped deviations (deal-level and facility-level where applicable)
#    And Deal/Facility ID column should be visible as the first column
#    Examples:
#      | Var_Stage            | Grid_Name   | Deal_Or_Facility_ID | Deviation_Name |
#      | disbursal_indiv_mulf | Application | MULF                |                |
#
#  @Positive
#  Scenario Outline: System should display Deal ID in Deal/Facility ID Column
#    When user views the deviation grid under "<ApplicationStage>"
#    Then Deal/Facility ID column should display Deal/Application Number for deal deviations in the first column
#    Examples:
#      | ApplicationStage   | ProductType   |
#      | <ApplicationStage> | <ProductType> |
#
#  @Positive
#  Scenario Outline: System should display Facility IDs in Deal/Facility ID Column
#    When user views the deviation grid under "<ApplicationStage>"
#    Then Deal/Facility ID column should display Facility ID Number for facility deviations in the first column
#    Examples:
#      | ApplicationStage   | ProductType   |
#      | <ApplicationStage> | <ProductType> |
#
#    ###########################################################################
#    # SCENARIO 2: Deal-level & Facility-level Segregation & Sorting
#    ###########################################################################
#  @Positive
#  Scenario Outline: System should display deal-level deviations above facility-level deviations and sort by deviation level at "<ApplicationStage>"
#    When user views the deviation grid under "<ApplicationStage>"
#    Then system should show deal-level deviations first followed by facility-level deviations
#    And within deal-level and facility-level groups deviations should be sorted by deviation level (descending)
#    Examples:
#      | ApplicationStage   | ProductType   |
#      | <ApplicationStage> | <ProductType> |
#
#    ###########################################################################
#    # SCENARIO 3: Raise Manual Deviation - Positive (Deal-level)
#    ###########################################################################
#  @Positive
#  Scenario Outline: User should be able to raise a deal-level deviation by leaving Facility LOV empty at "<ApplicationStage>"
#    Given user is on the deviation screen under "<ApplicationStage>"
#    When user clicks the "Add Deviation" button
#    And the Add Deviation popup should open
#    And user selects Deviation Name from Deviation LOV
#    And user leaves Facility LOV empty
#    And user clicks "Save" on Add Deviation popup
#    Then system should show a success message "Deviation saved successfully"
#    And the new deviation row should appear in the deviation grid with Deal/Facility ID showing Deal/Application Number in the first column
#    Examples:
#      | ApplicationStage   | ProductType   |
#      | <ApplicationStage> | <ProductType> |
#
#    ###########################################################################
#    # SCENARIO 4: Raise Manual Deviation - Positive (Facility-level)
#    ###########################################################################
#  @Positive
#  Scenario Outline: User should be able to raise a facility-level deviation by selecting a Facility in LOV at "<ApplicationStage>"
#    Given user is on the deviation screen under "<ApplicationStage>"
#    When user clicks the "Add Deviation" button
#    And the Add Deviation popup should open
#    And user selects Deviation Name from Deviation LOV
#    And user selects Facility "<FacilityID>" from Facility LOV
#    And user clicks "Save" on Add Deviation popup
#    Then system should show a success message "Deviation saved successfully"
#    And the new deviation row should appear in the deviation grid with Deal/Facility ID showing "<FacilityID>" in the first column
#    Examples:
#      | ApplicationStage   | ProductType   | FacilityID |
#      | <ApplicationStage> | <ProductType> | F001       |
#
#    ###########################################################################
#    # SCENARIO 5: Duplicate Deviation - Prevention
#    # Step A: Create baseline deviation
#    # Step B: Attempt duplicate and expect validation
#    ###########################################################################
#  @Positive
#  Scenario Outline: Precondition - User raises deviation "<DeviationName>" for Facility "<FacilityID>" at "<ApplicationStage>"
#    Given user is on the deviation screen under "<ApplicationStage>"
#    When user clicks the "Add Deviation" button
#    And the Add Deviation popup should open
#    And user selects Deviation Name "<DeviationName>" from Deviation LOV
#    And user selects Facility "<FacilityID>" from Facility LOV
#    And user clicks "Save"
#    Then system should create the deviation and show "Deviation saved successfully"
#    Examples:
#      | ApplicationStage   | ProductType   | DeviationName | FacilityID |
#      | <ApplicationStage> | <ProductType> | LIMIT_EXCEED  | F002       |
#
#  @Negative
#  Scenario Outline: System should prevent raising the same deviation "<DeviationName>" again for Facility "<FacilityID>" at "<ApplicationStage>"
#    Given a deviation "<DeviationName>" exists for Facility "<FacilityID>" in the application under "<ApplicationStage>"
#    When user clicks the "Add Deviation" button
#    And the Add Deviation popup opens
#    And user selects Deviation Name "<DeviationName>" from Deviation LOV
#    And user selects Facility "<FacilityID>" from Facility LOV
#    And user clicks "Save"
#    Then system should block the save and display validation message "Duplicate deviation not allowed for selected facility"
#    And no new row should be created in the deviation grid
#    Examples:
#      | ApplicationStage   | ProductType   | DeviationName | FacilityID |
#      | <ApplicationStage> | <ProductType> | LIMIT_EXCEED  | F002       |
#
#    ###########################################################################
#    # SCENARIO 6: Invalid Facility Selection
#    ###########################################################################
#  @Negative
#  Scenario Outline: System should block selecting a facility not belonging to the application at "<ApplicationStage>"
#    Given user is on the Add Deviation popup under "<ApplicationStage>"
#    When user attempts to select facility "<InvalidFacility>" from Facility LOV
#    Then system should not find "<InvalidFacility>" in LOV and should show "No Data Available"
#    Examples:
#      | ApplicationStage   | ProductType   | InvalidFacility |
#      | <ApplicationStage> | <ProductType> | FX999           |
#
#    ###########################################################################
#    # SCENARIO 7: Facility LOV - Pagination / Large List
#    ###########################################################################
#  @Positive
#  Scenario Outline: Facility LOV should support pagination or scrolling for large number of facilities at "<ApplicationStage>"
#    When user opens Facility LOV from Add Deviation popup under "<ApplicationStage>"
#    Then system should allow scrolling or pagination in the LOV
#    And system should load LOV values dynamically as user scrolls or paginates
#    Examples:
#      | ApplicationStage   | ProductType   |
#      | <ApplicationStage> | <ProductType> |
#
#    ###########################################################################
#    # SCENARIO 8: System-Originated Deviations For Multiple Facilities
#    # If system rule detects same deviation for multiple facilities, system creates separate rows (one per facility)
#    ###########################################################################
#  @Positive
#  Scenario Outline: System-generated deviations for multiple facilities should create separate rows per facility at "<ApplicationStage>"
#    Given system rules are executed under "<ApplicationStage>"
#    And the system identifies deviation "<DeviationName>" applicable for Facility "<FacilityA>" and Facility "<FacilityB>"
#    When user navigates to deviation table
#    Then system should create two separate deviation rows in the deviation grid: one for "<FacilityA>" and one for "<FacilityB>"
#    And Deal/Facility ID column should show respective Facility IDs in the first column
#    Examples:
#      | ApplicationStage   | ProductType   | DeviationName    | FacilityA | FacilityB |
#      | <ApplicationStage> | <ProductType> | INTEREST_MISALGN | F003      | F004      |
#
#    ###########################################################################
#    # SCENARIO 9: Approval / Reject / Forward - Literal Steps
#    ###########################################################################
#    #${ApplicationStage:["DDE","Credit Approval"]}
#  @Positive
#  Scenario Outline: User should be able to Approve a deviation from Approval screen at "<ApplicationStage>"
#    Given there is a deviation row "<DeviationName>" for "<FacilityID>" visible in the approval tab under "<ApplicationStage>"
#    When user selects the deviation row "<DeviationName>"
#    And user clicks the "Approve" button
#    Then system should mark the deviation as "Approved"
#    And the deviation should remain visible in the deviation table (status = Approved)
#    Examples:
#      | ApplicationStage   | ProductType   | DeviationName  | FacilityID |
#      | <ApplicationStage> | <ProductType> | TENOR_MISMATCH | F001       |
#
#    #${ApplicationStage:["DDE","Credit Approval"]}
#  @Positive
#  Scenario Outline: User should be able to Reject a deviation from Approval screen at "<ApplicationStage>"
#    Given there is a deviation row "<DeviationName>" for "<FacilityID>" visible in the approval tab under "<ApplicationStage>"
#    When user selects the deviation row "<DeviationName>"
#    And user clicks the "Reject" button
#    Then system should mark the deviation as "Rejected"
#    And the deviation should remain visible in the deviation table (status = Rejected)
#    Examples:
#      | ApplicationStage   | ProductType   | DeviationName | FacilityID |
#      | <ApplicationStage> | <ProductType> | LIMIT_EXCEED  | F001       |
#
#
#    ###########################################################################
#    # SCENARIO 10: Deviation History (with preconditions)
#    ###########################################################################
#  @Positive
#  Scenario Outline: Deviation History should display deal-level and facility-level deviations when there are approved or rejected deviations at "<ApplicationStage>"
#    Given application has deviations that are Approved or Rejected under "<ApplicationStage>"
#    When user navigates to View History under "<ApplicationStage>"
#    Then system should display deviation history records for both deal-level and facility-level deviations
#    And Deal/Facility ID column should be visible in the first column
#    Examples:
#      | ApplicationStage   | ProductType   |
#      | <ApplicationStage> | <ProductType> |
#
#    ###########################################################################
#    # SCENARIO 11: CAM Report Display
#    # Applicable for credit/tranche/disbursal reporting
#    ###########################################################################
#    #${ApplicationStage:["Credit Approval","Tranche Approval","Disbursal"]}
#  @Positive
#  Scenario Outline: CAM Report should show Deal/Facility ID for all deviations at "<ApplicationStage>"
#    When user opens CAM Report for "<ApplicationStage>"
#    Then system should display Deal/Facility ID next to the Deviation column as the first identifier
#    And system should show Deal/Application Number for deal-level deviations in Deal/Facility ID column
#    Examples:
#      | ApplicationStage   | ProductType   |
#      | <ApplicationStage> | <ProductType> |
#
#    ###########################################################################
#    # SCENARIO 12: Sorting Logic on History (explicit)
#    ###########################################################################
#  @Positive
#  Scenario Outline: Deviation History should follow confirmed sorting logic at "<ApplicationStage>"
#    When user reviews the history table under "<ApplicationStage>"
#    Then system should display deal-level deviations at the top sorted by deviation level
#    And system should display facility-level deviations below them sorted by deviation level
#    Examples:
#      | ApplicationStage   | ProductType   |
#      | <ApplicationStage> | <ProductType> |
#
#    ###########################################################################
#    # SCENARIO 13: Post-Bifurcation Behavior (Critical)
#    ###########################################################################
#    #${ApplicationStage:["Tranche Approval","Disbursal"]}
#  @Positive
#  Scenario Outline: Only facility-level deviations should be visible after Facility Initiation stage (post-bifurcation)
#    Given application is in a post-bifurcation stage for "<ProductType>"
#    When user views the deviation grid under "<ApplicationStage>"
#    Then system should display only facility-level deviations in the deviation grid
#    And system should not display any deal-level deviations
#    Examples:
#      | ApplicationStage   | ProductType   |
#      | <ApplicationStage> | <ProductType> |
#
#    ###########################################################################
#    # SCENARIO 14: Facility Filter on specific screens (Credit Approval, Tranche Initiation, Tranche Approval)
#    # Filters deviations by selected facility
#    # Note: This block applies only to the listed stages
#    ###########################################################################
#    #${ApplicationStage:["Credit Approval","Tranche Initiation","Tranche Approval"]}
#  @Positive
#  Scenario Outline: Facility filter dropdown should show deviations only for selected facility at "<ApplicationStage>"
#    Given user is on the deviation table under "<ApplicationStage>"
#    When user selects Facility "<FacilityID>" from the facility filter dropdown
#    Then the deviation table should refresh and display only deviations mapped to "<FacilityID>"
#    And Deal/Facility ID column should show "<FacilityID>" in the first column for each displayed row
#    Examples:
#      | ApplicationStage   | ProductType   | FacilityID |
#      | <ApplicationStage> | <ProductType> | F007       |
#
#    ###########################################################################
#    # SCENARIO 15: Negative - No Facilities configured (discarded in review)
#    # (Kept commented for reference; test discarded as per 3 Amigos)
#    ###########################################################################
#    # NOTE: This test is intentionally discarded because the application context requires at least one facility.
#    # @Edge
#    # Scenario Outline: Facility LOV should show "No Data available" when no facilities configured at "<ApplicationStage>"
#    #     When user opens the Facility LOV under Raise Manual Deviation at "<ApplicationStage>"
#    #     Then system should show "No Data available"
#    #     Examples:
#    #         | ApplicationStage   | ProductType   |
#    #         | <ApplicationStage> | <ProductType> |
#
#    ###########################################################################
#    # SCENARIO 16: Misc UI Validations (column persistence, pagination, filter retention)
#    ###########################################################################
#  @Positive
#  Scenario Outline: Deal/Facility ID column and other grid columns should persist after pagination and rerun at "<ApplicationStage>"
#    When user paginates the deviation grid under "<ApplicationStage>"
#    And user clicks "Rerun Policy"
#    Then Deal/Facility ID column should remain the first column and visible
#    And sorting and filter selections should persist where applicable
#    Examples:
#      | ApplicationStage   | ProductType   |
#      | <ApplicationStage> | <ProductType> |
