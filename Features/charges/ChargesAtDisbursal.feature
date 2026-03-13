@Epic-Charges
@AuthoredBy-aryan.jain
@ImplementedBy-aryan.jain
@PQMStory
@Order
@Release
@Perishable

#Story-CAS-75260
#Story-CAS-71126
Feature:Charges at Disbursal


  @STP
  #PQM-12_CAS-71126
  Scenario Outline:  Navigate to Charges Screen at <ApplicationStage> for <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>"
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    When user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "<disbursalWB>" under sheet "<disbursal_sheetName>" and row <disbursal_sheetName_rowNum>
    And user navigate to Charges section of "<ApplicationStage>"
    Then user should be able to navigate at charges screen
    @Charge @Disbursal
    Examples:
      | LogicalID                            | ProductType | ApplicantType | ApplicationStage | Category | Key | disbursalWB    | disbursal_sheetName | disbursal_sheetName_rowNum |
      | HL_CAS_71126_ChargePrioritization01  | HL          | indiv         | Disbursal        |          |     | disbursal.xlsx | disbursal_entry     | 52                         |
      | PL_CAS_71126_ChargePrioritization01  | PL          | indiv         | Disbursal        |          |     | disbursal.xlsx | disbursal_entry     | 52                         |
      | MAL_CAS_71126_ChargePrioritization01 | MAL         | indiv         | Disbursal        |          |     | disbursal.xlsx | disbursal_entry     | 52                         |
      | HL_CAS_71126_ChargePrioritization02  | HL          | indiv         | Disbursal        |          |     | disbursal.xlsx | disbursal_entry     | 52                         |
      | PL_CAS_71126_ChargePrioritization02  | PL          | indiv         | Disbursal        |          |     | disbursal.xlsx | disbursal_entry     | 52                         |
      | MAL_CAS_71126_ChargePrioritization02 | MAL         | indiv         | Disbursal        |          |     | disbursal.xlsx | disbursal_entry     | 52                         |

  #PQM-01_CAS-75260, 05_CAS-75260, 09_CAS-75260, 13_CAS-75260, 17_CAS-75260, 21_CAS-75260, 28_CAS-75260, 10_CAS-71126
  Scenario Outline: ACAUTOCAS-21139: Add charges at <ApplicationStage> for <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>"
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    When user apply the charges of "<ApplicationStage>"
    Then charge policy should be executed successfully for that application
    @Charge @DDE
    Examples:
      | LogicalID                            | ProductType | ApplicantType | ApplicationStage | Category | Key |
      | PL_CAS_118696_PeriodicIndiv01        | PL          | indiv         | DDE              |          |     |
      | MAL_CAS_118696_PeriodicIndiv01       | MAL         | indiv         | DDE              |          |     |
      | HL_CAS_118696_PeriodicIndiv01        | HL          | indiv         | DDE              |          |     |
      | PL_CAS_118696_PeriodicIndiv02        | PL          | indiv         | DDE              |          |     |
      | MAL_CAS_118696_PeriodicIndiv02       | MAL         | indiv         | DDE              |          |     |
      | HL_CAS_118696_PeriodicIndiv02        | HL          | indiv         | DDE              |          |     |
      | PL_CAS_118696_PeriodicIndiv03        | PL          | indiv         | DDE              |          |     |
      | MAL_CAS_118696_PeriodicIndiv03       | MAL         | indiv         | DDE              |          |     |
      | HL_CAS_118696_PeriodicIndiv03        | HL          | indiv         | DDE              |          |     |
      | HL_CAS_71126_ChargePrioritization01  | HL          | indiv         | DDE              |          |     |
      | PL_CAS_71126_ChargePrioritization01  | PL          | indiv         | DDE              |          |     |
      | MAL_CAS_71126_ChargePrioritization01 | MAL         | indiv         | DDE              |          |     |
      | HL_CAS_71126_ChargePrioritization02  | HL          | indiv         | DDE              |          |     |
      | PL_CAS_71126_ChargePrioritization02  | PL          | indiv         | DDE              |          |     |
      | MAL_CAS_71126_ChargePrioritization02 | MAL         | indiv         | DDE              |          |     |

    @Charge @Disbursal
    Examples:
      | LogicalID                      | ProductType | ApplicantType | ApplicationStage | Category | Key |
      | MAL_CAS_75260_ChargesIndiv01   | MAL         | indiv         | Disbursal        |          |     |
      | HL_CAS_75260_ChargesIndiv01    | HL          | indiv         | Disbursal        |          |     |
      | PL_CAS_75260_ChargesIndiv01    | PL          | indiv         | Disbursal        |          |     |
      | MAL_CAS_75260_ChargesIndiv02   | MAL         | indiv         | Disbursal        |          |     |
      | MAL_CAS_75260_ChargesIndiv03   | MAL         | indiv         | Disbursal        |          |     |
      | MAL_CAS_75260_ChargesIndiv04   | MAL         | indiv         | Disbursal        |          |     |
      | MAL_CAS_75260_ChargesIndiv05   | MAL         | indiv         | Disbursal        |          |     |
      | PL_CAS_118696_PeriodicIndiv03  | PL          | indiv         | Disbursal        |          |     |
      | MAL_CAS_118696_PeriodicIndiv03 | MAL         | indiv         | Disbursal        |          |     |
      | HL_CAS_118696_PeriodicIndiv03  | HL          | indiv         | Disbursal        |          |     |

  #PQM-01_CAS-75260, 05_CAS-75260, 09_CAS-75260, 13_CAS-75260, 17_CAS-75260, 21_CAS-75260, 28_CAS-75260, 10_CAS-71126
  Scenario Outline: ACAUTOCAS-21140: Verify Charges in Grid at <ApplicationStage> for <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>"
    When user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    Then User should be able to view all the charges and fees applicable
    @Charge @DDE
    Examples:
      | LogicalID                            | ProductType | ApplicantType | ApplicationStage | Category | Key |
      | HL_CAS_71126_ChargePrioritization01  | HL          | indiv         | DDE              |          |     |
      | PL_CAS_71126_ChargePrioritization01  | PL          | indiv         | DDE              |          |     |
      | MAL_CAS_71126_ChargePrioritization01 | MAL         | indiv         | DDE              |          |     |
      | HL_CAS_71126_ChargePrioritization02  | HL          | indiv         | DDE              |          |     |
      | PL_CAS_71126_ChargePrioritization02  | PL          | indiv         | DDE              |          |     |
      | MAL_CAS_71126_ChargePrioritization02 | MAL         | indiv         | DDE              |          |     |

    @Charge @Disbursal
    Examples:
      | LogicalID                    | ProductType | ApplicantType | ApplicationStage | Category | Key |
      | MAL_CAS_75260_ChargesIndiv01 | MAL         | indiv         | Disbursal        |          |     |
      | HL_CAS_75260_ChargesIndiv01  | HL          | indiv         | Disbursal        |          |     |
      | PL_CAS_75260_ChargesIndiv01  | PL          | indiv         | Disbursal        |          |     |
      | MAL_CAS_75260_ChargesIndiv02 | MAL         | indiv         | Disbursal        |          |     |
      | MAL_CAS_75260_ChargesIndiv03 | MAL         | indiv         | Disbursal        |          |     |
      | MAL_CAS_75260_ChargesIndiv04 | MAL         | indiv         | Disbursal        |          |     |
      | MAL_CAS_75260_ChargesIndiv05 | MAL         | indiv         | Disbursal        |          |     |


  #PQM-01_CAS-75260, 05_CAS-75260, 09_CAS-75260, 13_CAS-75260, 17_CAS-75260, 21_CAS-75260
  Scenario Outline: ACAUTOCAS-21141:Add manual charges at <ApplicationStage> for <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>"
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user reads data from the excel file "<chargesWB>" under sheet "<charges_sheetName>" and row <charges_sheetName_rowNum>
    When user add manual charges at "<ApplicationStage>"
    Then manual charges should be added successfully
    @Charge @Disbursal
    Examples:
      | LogicalID                    | ProductType | ApplicantType | ApplicationStage | Category | Key | chargesWB    | charges_sheetName      | charges_sheetName_rowNum |
      | MAL_CAS_75260_ChargesIndiv01 | MAL         | indiv         | Disbursal        |          |     | charges.xlsx | charge_code_defination | 18                       |
      | HL_CAS_75260_ChargesIndiv01  | HL          | indiv         | Disbursal        |          |     | charges.xlsx | charge_code_defination | 18                       |
      | PL_CAS_75260_ChargesIndiv01  | PL          | indiv         | Disbursal        |          |     | charges.xlsx | charge_code_defination | 18                       |
      | MAL_CAS_75260_ChargesIndiv02 | MAL         | indiv         | Disbursal        |          |     | charges.xlsx | charge_code_defination | 18                       |
      | MAL_CAS_75260_ChargesIndiv03 | MAL         | indiv         | Disbursal        |          |     | charges.xlsx | charge_code_defination | 18                       |
      | MAL_CAS_75260_ChargesIndiv04 | MAL         | indiv         | Disbursal        |          |     | charges.xlsx | charge_code_defination | 18                       |
      | MAL_CAS_75260_ChargesIndiv05 | MAL         | indiv         | Disbursal        |          |     | charges.xlsx | charge_code_defination | 18                       |

  #PQM-02_CAS-75260, 06_CAS-75260, 10_CAS-75260, 14_CAS-75260, 18_CAS-75260, 22_CAS-75260, 10_CAS-71126
  Scenario Outline: ACAUTOCAS-21142: Navigate to Receipt Tab at <ApplicationStage> for <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>"
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    When user navigate to receipt section of "<ApplicationStage>"
    Then user should be able to navigate at receipt screen
    @Charge @DDE
    Examples:
      | LogicalID                            | ProductType | ApplicantType | ApplicationStage | Category | Key |
      | HL_CAS_71126_ChargePrioritization01  | HL          | indiv         | DDE              |          |     |
      | PL_CAS_71126_ChargePrioritization01  | PL          | indiv         | DDE              |          |     |
      | MAL_CAS_71126_ChargePrioritization01 | MAL         | indiv         | DDE              |          |     |
      | HL_CAS_71126_ChargePrioritization02  | HL          | indiv         | DDE              |          |     |
      | PL_CAS_71126_ChargePrioritization02  | PL          | indiv         | DDE              |          |     |
      | MAL_CAS_71126_ChargePrioritization02 | MAL         | indiv         | DDE              |          |     |

    @Charge @Disbursal
    Examples:
      | LogicalID                            | ProductType | ApplicantType | ApplicationStage | Category | Key |
      | MAL_CAS_75260_ChargesIndiv01         | MAL         | indiv         | Disbursal        |          |     |
      | HL_CAS_75260_ChargesIndiv01          | HL          | indiv         | Disbursal        |          |     |
      | PL_CAS_75260_ChargesIndiv01          | PL          | indiv         | Disbursal        |          |     |
      | MAL_CAS_75260_ChargesIndiv02         | MAL         | indiv         | Disbursal        |          |     |
      | MAL_CAS_75260_ChargesIndiv03         | MAL         | indiv         | Disbursal        |          |     |
      | MAL_CAS_75260_ChargesIndiv04         | MAL         | indiv         | Disbursal        |          |     |
      | MAL_CAS_75260_ChargesIndiv05         | MAL         | indiv         | Disbursal        |          |     |
      | HL_CAS_71126_ChargePrioritization01  | HL          | indiv         | Disbursal        |          |     |
      | PL_CAS_71126_ChargePrioritization01  | PL          | indiv         | Disbursal        |          |     |
      | MAL_CAS_71126_ChargePrioritization01 | MAL         | indiv         | Disbursal        |          |     |
      | HL_CAS_71126_ChargePrioritization02  | HL          | indiv         | Disbursal        |          |     |
      | PL_CAS_71126_ChargePrioritization02  | PL          | indiv         | Disbursal        |          |     |
      | MAL_CAS_71126_ChargePrioritization02 | MAL         | indiv         | Disbursal        |          |     |

  #PQM-02_CAS-75260, 06_CAS-75260, 10_CAS-75260, 14_CAS-75260, 18_CAS-75260, 22_CAS-75260, 10_CAS-71126
  Scenario Outline: ACAUTOCAS-21143: create new receipt at <ApplicationStage> for <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>"
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user reads data from the excel file "<chargesWB>" under sheet "<charges_sheetName>" and row <charges_sheetName_rowNum>
    When user create new receipt at "<ApplicationStage>"
    Then receipt should be created successfully
    @Charge @DDE
    Examples:
      | LogicalID                            | ProductType | ApplicantType | ApplicationStage | Category | Key | chargesWB    | charges_sheetName      | charges_sheetName_rowNum |
      | HL_CAS_71126_ChargePrioritization01  | HL          | indiv         | DDE              |          |     | charges.xlsx | charge_code_defination | 22                       |
      | PL_CAS_71126_ChargePrioritization01  | PL          | indiv         | DDE              |          |     | charges.xlsx | charge_code_defination | 22                       |
      | MAL_CAS_71126_ChargePrioritization01 | MAL         | indiv         | DDE              |          |     | charges.xlsx | charge_code_defination | 22                       |
      | HL_CAS_71126_ChargePrioritization02  | HL          | indiv         | DDE              |          |     | charges.xlsx | charge_code_defination | 24                       |
      | PL_CAS_71126_ChargePrioritization02  | PL          | indiv         | DDE              |          |     | charges.xlsx | charge_code_defination | 24                       |
      | MAL_CAS_71126_ChargePrioritization02 | MAL         | indiv         | DDE              |          |     | charges.xlsx | charge_code_defination | 24                       |

    @Charge @Disbursal
    Examples:
      | LogicalID                    | ProductType | ApplicantType | ApplicationStage | Category | Key | chargesWB    | charges_sheetName      | charges_sheetName_rowNum |
      | MAL_CAS_75260_ChargesIndiv01 | MAL         | indiv         | Disbursal        |          |     | charges.xlsx | charge_code_defination | 19                       |
      | HL_CAS_75260_ChargesIndiv01  | HL          | indiv         | Disbursal        |          |     | charges.xlsx | charge_code_defination | 19                       |
      | PL_CAS_75260_ChargesIndiv01  | PL          | indiv         | Disbursal        |          |     | charges.xlsx | charge_code_defination | 19                       |
      | MAL_CAS_75260_ChargesIndiv02 | MAL         | indiv         | Disbursal        |          |     | charges.xlsx | charge_code_defination | 19                       |
      | MAL_CAS_75260_ChargesIndiv03 | MAL         | indiv         | Disbursal        |          |     | charges.xlsx | charge_code_defination | 19                       |
      | MAL_CAS_75260_ChargesIndiv04 | MAL         | indiv         | Disbursal        |          |     | charges.xlsx | charge_code_defination | 19                       |
      | MAL_CAS_75260_ChargesIndiv05 | MAL         | indiv         | Disbursal        |          |     | charges.xlsx | charge_code_defination | 19                       |

  #PQM-10_CAS-71126
  Scenario Outline: Validate auto allocate receipt button should not be present at <ApplicationStage> for <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>"
    When user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    Then verify auto allocate receipt button should not be present
    @Charge @DDE
    Examples:
      | LogicalID                            | ProductType | ApplicantType | ApplicationStage | Category | Key | chargesWB    | charges_sheetName      | charges_sheetName_rowNum |
      | HL_CAS_71126_ChargePrioritization01  | HL          | indiv         | DDE              |          |     | charges.xlsx | charge_code_defination | 22                       |
      | PL_CAS_71126_ChargePrioritization01  | PL          | indiv         | DDE              |          |     | charges.xlsx | charge_code_defination | 22                       |
      | MAL_CAS_71126_ChargePrioritization01 | MAL         | indiv         | DDE              |          |     | charges.xlsx | charge_code_defination | 22                       |
      | HL_CAS_71126_ChargePrioritization02  | HL          | indiv         | DDE              |          |     | charges.xlsx | charge_code_defination | 24                       |
      | PL_CAS_71126_ChargePrioritization02  | PL          | indiv         | DDE              |          |     | charges.xlsx | charge_code_defination | 24                       |
      | MAL_CAS_71126_ChargePrioritization02 | MAL         | indiv         | DDE              |          |     | charges.xlsx | charge_code_defination | 24                       |


  #PQM-11_CAS-71126
  Scenario Outline: Move the Application to <finalStage> stage from <ApplicationStage> stage for <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>"
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user selects document tab
    And user submit the documents with wait
    And user switch and close next tab
    When user moves from "<ApplicationStage>" to application of "<ProductType>" product type as "<ApplicantType>" applicant at "<finalStage>" for "<Category>" with "<Key>" stage
    Then Application should be sent to "<finalStage>"
    @Charge @DDE
    Examples:
      | LogicalID                            | ProductType | ApplicantType | ApplicationStage | finalStage | Category | Key |
      | HL_CAS_71126_ChargePrioritization01  | HL          | indiv         | DDE              | Disbursal  | Charges  |     |
      | PL_CAS_71126_ChargePrioritization01  | PL          | indiv         | DDE              | Disbursal  | Charges  |     |
      | MAL_CAS_71126_ChargePrioritization01 | MAL         | indiv         | DDE              | Disbursal  | Charges  |     |
      | HL_CAS_71126_ChargePrioritization02  | HL          | indiv         | DDE              | Disbursal  | Charges  |     |
      | PL_CAS_71126_ChargePrioritization02  | PL          | indiv         | DDE              | Disbursal  | Charges  |     |
      | MAL_CAS_71126_ChargePrioritization02 | MAL         | indiv         | DDE              | Disbursal  | Charges  |     |

  #PQM-12_CAS-71126
  Scenario Outline: Validate auto allocation of charges should be done on <ApplicationStage> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>"
    When user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user reads data from the excel file "<chargesWB>" under sheet "<charges_sheetName>" and row <charges_sheetName_rowNum>
    Then verify auto allocation of charges should be done on "<ApplicationStage>"
    @Charge @Disbursal
    Examples:
      | LogicalID                            | ProductType | ApplicantType | ApplicationStage | Category | Key | chargesWB    | charges_sheetName      | charges_sheetName_rowNum |
      | HL_CAS_71126_ChargePrioritization01  | HL          | indiv         | Disbursal        |          |     | charges.xlsx | charge_code_defination | 23                       |
      | PL_CAS_71126_ChargePrioritization01  | PL          | indiv         | Disbursal        |          |     | charges.xlsx | charge_code_defination | 23                       |
      | MAL_CAS_71126_ChargePrioritization01 | MAL         | indiv         | Disbursal        |          |     | charges.xlsx | charge_code_defination | 23                       |
      | HL_CAS_71126_ChargePrioritization02  | HL          | indiv         | Disbursal        |          |     | charges.xlsx | charge_code_defination | 23                       |
      | PL_CAS_71126_ChargePrioritization02  | PL          | indiv         | Disbursal        |          |     | charges.xlsx | charge_code_defination | 23                       |
      | MAL_CAS_71126_ChargePrioritization02 | MAL         | indiv         | Disbursal        |          |     | charges.xlsx | charge_code_defination | 23                       |

  #PQM-12_CAS-71126
  Scenario Outline: Validate last priority charge is remaining as receipt amount taken is less than captured charge amount in total LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>"
    When user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user reads data from the excel file "<chargesWB>" under sheet "<charges_sheetName>" and row <charges_sheetName_rowNum>
    Then verify last priority charge is remaining as receipt amount taken is less than captured charge amount in total
    @Charge @Disbursal
    Examples:
      | LogicalID                            | ProductType | ApplicantType | ApplicationStage | Category | Key | chargesWB    | charges_sheetName      | charges_sheetName_rowNum |
      | HL_CAS_71126_ChargePrioritization01  | HL          | indiv         | Disbursal        |          |     | charges.xlsx | charge_code_defination | 23                       |
      | PL_CAS_71126_ChargePrioritization01  | PL          | indiv         | Disbursal        |          |     | charges.xlsx | charge_code_defination | 23                       |
      | MAL_CAS_71126_ChargePrioritization01 | MAL         | indiv         | Disbursal        |          |     | charges.xlsx | charge_code_defination | 23                       |

  #PQM-13_CAS-71126
  Scenario Outline: Validate send back application from <ApplicationStage> to <FinalStage> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>"
    When user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user reads data from the excel file "<MoreActionsWB>" under sheet "<MoreActions_sendBack>" and row <Row_Num>
    And user send back above application to "<FinalStage>" stage
    Then above application is on "<FinalStage>" stage
    @Charge @Disbursal
    Examples:
      | LogicalID                            | ProductType | ApplicantType | ApplicationStage | Category | Key | FinalStage | MoreActionsWB     | MoreActions_sendBack | Row_Num |
      | HL_CAS_71126_ChargePrioritization01  | HL          | indiv         | Disbursal        |          |     | DDE        | more_actions.xlsx | send_back            | 14      |
      | PL_CAS_71126_ChargePrioritization01  | PL          | indiv         | Disbursal        |          |     | DDE        | more_actions.xlsx | send_back            | 14      |
      | MAL_CAS_71126_ChargePrioritization01 | MAL         | indiv         | Disbursal        |          |     | DDE        | more_actions.xlsx | send_back            | 14      |

  #PQM-13_CAS-71126
  @LoggedBug-CAS-244336
  Scenario Outline: Validate that delink of receipt charges should not happen at <ApplicationStage> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>"
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    When user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user navigate to Charges section of "<ApplicationStage>"
    And user navigate to receipt section of "<ApplicationStage>"
    And user reads data from the excel file "<chargesWB>" under sheet "<charges_sheetName>" and row <charges_sheetName_rowNum>
    Then verified that delink of receipt charges should not happen at "<ApplicationStage>"
    @Charge @Disbursal
    Examples:
      | LogicalID                            | ProductType | ApplicantType | ApplicationStage | Category | Key | chargesWB    | charges_sheetName      | charges_sheetName_rowNum |
      | HL_CAS_71126_ChargePrioritization01  | HL          | indiv         | DDE              |          |     | charges.xlsx | charge_code_defination | 23                       |
      | PL_CAS_71126_ChargePrioritization01  | PL          | indiv         | DDE              |          |     | charges.xlsx | charge_code_defination | 23                       |
      | MAL_CAS_71126_ChargePrioritization01 | MAL         | indiv         | DDE              |          |     | charges.xlsx | charge_code_defination | 23                       |


  #PQM-02_CAS-75260, 06_CAS-75260, 10_CAS-75260, 14_CAS-75260, 18_CAS-75260, 22_CAS-75260
  Scenario Outline: ACAUTOCAS-21144: Adjust charges with customer of <ApplicationStage> for <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>"
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user reads data from the excel file "<chargesWB>" under sheet "<charges_sheetName>" and row <charges_sheetName_rowNum>
    When user adjust the customer charges with customer
    Then charges should be adjusted successfully
    @Charge @Disbursal
    Examples:
      | LogicalID                    | ProductType | ApplicantType | ApplicationStage | Category | Key | chargesWB    | charges_sheetName      | charges_sheetName_rowNum |
      | MAL_CAS_75260_ChargesIndiv01 | MAL         | indiv         | Disbursal        |          |     | charges.xlsx | charge_code_defination | 18                       |
      | HL_CAS_75260_ChargesIndiv01  | HL          | indiv         | Disbursal        |          |     | charges.xlsx | charge_code_defination | 18                       |
      | PL_CAS_75260_ChargesIndiv01  | PL          | indiv         | Disbursal        |          |     | charges.xlsx | charge_code_defination | 18                       |
      | MAL_CAS_75260_ChargesIndiv02 | MAL         | indiv         | Disbursal        |          |     | charges.xlsx | charge_code_defination | 18                       |
      | MAL_CAS_75260_ChargesIndiv03 | MAL         | indiv         | Disbursal        |          |     | charges.xlsx | charge_code_defination | 18                       |
      | MAL_CAS_75260_ChargesIndiv04 | MAL         | indiv         | Disbursal        |          |     | charges.xlsx | charge_code_defination | 18                       |
      | MAL_CAS_75260_ChargesIndiv05 | MAL         | indiv         | Disbursal        |          |     | charges.xlsx | charge_code_defination | 18                       |


  #PQM-03_CAS-75260, 07_CAS-75260, 11_CAS-75260, 15_CAS-75260, 19_CAS-75260, 23_CAS-75260
  Scenario Outline: ACAUTOCAS-21145: Navigate to Disbursal Details at <ApplicationStage> for <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>"
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    When user navigates disbursal main screen
    Then user should be able to navigate at disbursal details screen
    @Charge @Disbursal
    Examples:
      | LogicalID                    | ProductType | ApplicantType | ApplicationStage | Category | Key |
      | MAL_CAS_75260_ChargesIndiv01 | MAL         | indiv         | Disbursal        |          |     |
      | HL_CAS_75260_ChargesIndiv01  | HL          | indiv         | Disbursal        |          |     |
      | PL_CAS_75260_ChargesIndiv01  | PL          | indiv         | Disbursal        |          |     |
      | MAL_CAS_75260_ChargesIndiv02 | MAL         | indiv         | Disbursal        |          |     |
      | MAL_CAS_75260_ChargesIndiv03 | MAL         | indiv         | Disbursal        |          |     |
      | MAL_CAS_75260_ChargesIndiv04 | MAL         | indiv         | Disbursal        |          |     |
      | MAL_CAS_75260_ChargesIndiv05 | MAL         | indiv         | Disbursal        |          |     |

  #PQM-03_CAS-75260, 07_CAS-75260, 11_CAS-75260, 15_CAS-75260, 19_CAS-75260, 23_CAS-75260
  Scenario Outline: ACAUTOCAS-21146: Enter BP type as <BPType> at <ApplicationStage> for <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>"
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    When user fill BP type as "<BPType>" in disbursal
    Then "<BPType>" should be added successfully
    @Charge @Disbursal
    Examples:
      | LogicalID                    | ProductType | ApplicantType | ApplicationStage | Category | Key | BPType            |
      | MAL_CAS_75260_ChargesIndiv01 | MAL         | indiv         | Disbursal        |          |     | Primary Applicant |
      | HL_CAS_75260_ChargesIndiv01  | HL          | indiv         | Disbursal        |          |     | Primary Applicant |
      | PL_CAS_75260_ChargesIndiv01  | PL          | indiv         | Disbursal        |          |     | Primary Applicant |
      | MAL_CAS_75260_ChargesIndiv02 | MAL         | indiv         | Disbursal        |          |     | Dealer/Supplier   |
      | MAL_CAS_75260_ChargesIndiv03 | MAL         | indiv         | Disbursal        |          |     | Manufacturer      |
      | MAL_CAS_75260_ChargesIndiv04 | MAL         | indiv         | Disbursal        |          |     | Primary Applicant |
      | MAL_CAS_75260_ChargesIndiv05 | MAL         | indiv         | Disbursal        |          |     | Primary Applicant |

  #PQM-24_CAS-75260, 25_CAS-75260
  Scenario Outline: ACAUTOCAS-21147: user add another entry at <ApplicationStage> for <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>"
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user reads data from the excel file "<disbursalWB>" under sheet "<disbursal_sheetName>" and row <disbursal_sheetName_rowNum>
    When user add another entry at disbursal with "<BPType>"
    Then "<BPType>" should be added successfully
    @Charge @Disbursal
    Examples:
      | LogicalID                    | ProductType | ApplicantType | ApplicationStage | Category | Key | BPType          | disbursalWB    | disbursal_sheetName | disbursal_sheetName_rowNum |
      | MAL_CAS_75260_ChargesIndiv04 | MAL         | indiv         | Disbursal        |          |     | Manufacturer    | disbursal.xlsx | disbursal_entry     | 53                         |
      | MAL_CAS_75260_ChargesIndiv05 | MAL         | indiv         | Disbursal        |          |     | Dealer/Supplier | disbursal.xlsx | disbursal_entry     | 53                         |

  #PQM-04_CAS-75260, 08_CAS-75260, 12_CAS-75260, 16_CAS-75260, 20_CAS-75260, 26_CAS-75260
  Scenario Outline: ACAUTOCAS-21148:Navigate to Charges Screen at Disbursal stage for <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>"
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    When user navigate to Charges section at disbursal
    Then user should be able to navigate at charges screen
    @Charge @Disbursal
    Examples:
      | LogicalID                    | ProductType | ApplicantType | ApplicationStage | Category | Key |
      | MAL_CAS_75260_ChargesIndiv01 | MAL         | indiv         | Disbursal        |          |     |
      | HL_CAS_75260_ChargesIndiv01  | HL          | indiv         | Disbursal        |          |     |
      | PL_CAS_75260_ChargesIndiv01  | PL          | indiv         | Disbursal        |          |     |
      | MAL_CAS_75260_ChargesIndiv02 | MAL         | indiv         | Disbursal        |          |     |
      | MAL_CAS_75260_ChargesIndiv03 | MAL         | indiv         | Disbursal        |          |     |
      | MAL_CAS_75260_ChargesIndiv04 | MAL         | indiv         | Disbursal        |          |     |
      | MAL_CAS_75260_ChargesIndiv05 | MAL         | indiv         | Disbursal        |          |     |

  #PQM-04_CAS-75260, 08_CAS-75260, 12_CAS-75260, 16_CAS-75260, 20_CAS-75260, 26_CAS-75260
  Scenario Outline: ACAUTOCAS-21149: Change the charge amount at <ApplicationStage> for <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>"
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user reads data from the excel file "<chargesWB>" under sheet "<charges_sheetName>" and row <charges_sheetName_rowNum>
    When user change the charge amount of "<ProductType>"
    Then charge amount should be saved successfully
    @Charge @Disbursal
    Examples:
      | LogicalID                    | ProductType | ApplicantType | ApplicationStage | Category | Key | chargesWB    | charges_sheetName      | charges_sheetName_rowNum |
      | MAL_CAS_75260_ChargesIndiv01 | MAL         | indiv         | Disbursal        |          |     | charges.xlsx | charge_code_defination | 20                       |
      | HL_CAS_75260_ChargesIndiv01  | HL          | indiv         | Disbursal        |          |     | charges.xlsx | charge_code_defination | 21                       |
      | PL_CAS_75260_ChargesIndiv01  | PL          | indiv         | Disbursal        |          |     | charges.xlsx | charge_code_defination | 21                       |
      | MAL_CAS_75260_ChargesIndiv02 | MAL         | indiv         | Disbursal        |          |     | charges.xlsx | charge_code_defination | 20                       |
      | MAL_CAS_75260_ChargesIndiv03 | MAL         | indiv         | Disbursal        |          |     | charges.xlsx | charge_code_defination | 20                       |
      | MAL_CAS_75260_ChargesIndiv04 | MAL         | indiv         | Disbursal        |          |     | charges.xlsx | charge_code_defination | 20                       |
      | MAL_CAS_75260_ChargesIndiv05 | MAL         | indiv         | Disbursal        |          |     | charges.xlsx | charge_code_defination | 20                       |

  #PQM-04_CAS-75260, 08_CAS-75260, 12_CAS-75260, 16_CAS-75260, 20_CAS-75260, 26_CAS-75260, 27_CAS-75260
  Scenario Outline: ACAUTOCAS-21150: Verify the adjustment amount in payee details the charge amount at <ApplicationStage> for <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>"
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    When user navigates disbursal main screen
    Then verify charge amount changed auto adjusted with disbursal amount
    @Charge @Disbursal
    Examples:
      | LogicalID                    | ProductType | ApplicantType | ApplicationStage | Category | Key |
      | MAL_CAS_75260_ChargesIndiv01 | MAL         | indiv         | Disbursal        |          |     |
      | HL_CAS_75260_ChargesIndiv01  | HL          | indiv         | Disbursal        |          |     |
      | PL_CAS_75260_ChargesIndiv01  | PL          | indiv         | Disbursal        |          |     |
      | MAL_CAS_75260_ChargesIndiv02 | MAL         | indiv         | Disbursal        |          |     |
      | MAL_CAS_75260_ChargesIndiv03 | MAL         | indiv         | Disbursal        |          |     |
      | MAL_CAS_75260_ChargesIndiv04 | MAL         | indiv         | Disbursal        |          |     |
      | MAL_CAS_75260_ChargesIndiv05 | MAL         | indiv         | Disbursal        |          |     |

  #PQM-15_CAS-71126
  @LoggedBug-CAS-244336
  Scenario Outline: Complete Disbursal initiation at disbursal stage in case of Charges for <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>"
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    When user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user open repayment instrument details
    And user deletes all existing repayment instrument details
    And user save Repayment Instrument Detail Grid
    And user moves to main tab of "disbursal"
    And user navigate to Charges section at disbursal
    And user navigate to receipt section of "<ApplicationStage>"
    And user reads data from the excel file "charges.xlsx" under sheet "charge_code_defination" and row 21
    And user adjusts the charges from "CUSTOMER" at Disbursal
    And user navigates disbursal main screen
    And user reads data from the excel file "disbursal.xlsx" under sheet "disbursal_entry" and row 49
    And user fills disbursal Checklist
    And user opens payee details on disbursal
    And user selects payment mode as "Cheque"
    And user fills dealing bank in payee details
    And user saves the disbursal
    And user initiate disbursal
    Then Application should move to "<FinalStage>" Stage
    @Charge @Disbursal
    Examples:
      | LogicalID                           | ProductType | Category | Key | ApplicationStage | FinalStage       |
      | PL_CAS_71126_ChargePrioritization02 | PL          | Charges  |     | Disbursal        | Disbursal Author |
      | HL_CAS_71126_ChargePrioritization02 | HL          | Charges  |     | Disbursal        | Disbursal Author |

  #PQM-15_CAS-71126
  @LoggedBug-CAS-244336
  Scenario Outline: Validate Disbursal initiation at disbursal stage in case of Charges handling Dealer and Manufacturer Charges for <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>"
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    When user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user open repayment instrument details
    And user deletes all existing repayment instrument details
    And user save Repayment Instrument Detail Grid
    And user moves to main tab of "disbursal"
    And user navigate to Charges section at disbursal
    And user waives dealer and manufacturer charges
    And user navigate to receipt section of "<ApplicationStage>"
    And user reads data from the excel file "charges.xlsx" under sheet "charge_code_defination" and row 21
    And user adjusts the charges from "CUSTOMER" at Disbursal
    And user navigates disbursal main screen
    And user reads data from the excel file "disbursal.xlsx" under sheet "disbursal_entry" and row 49
    And user fills disbursal Checklist
    And user opens payee details on disbursal
    And user selects payment mode as "Cheque"
    And user fills dealing bank in payee details
    And user saves the disbursal
    And user initiate disbursal
    Then Application should move to "<FinalStage>" Stage
    @Charge @Disbursal
    Examples:
      | LogicalID                            | ProductType | Category | Key | ApplicationStage | FinalStage       |
      | MAL_CAS_71126_ChargePrioritization02 | MAL         | Charges  |     | Disbursal        | Disbursal Author |


