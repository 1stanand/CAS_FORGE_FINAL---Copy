@Epic-Charges
@PQMStory
@Order
@Release
@Perishable
@AuthoredBy-yash.sharma
@ImplementedBy-yash.sharma
@NotImplemented

##Misc Policy with auto allocation is mapped with flag true

#Story-CAS-45598,45599
Feature: Externalization of Receipt Service

  #PQM-01_CAS-45598,02_CAS-45598,01_CAS-45599,02_CAS-45599
  Scenario Outline: ACAUTOCAS-20788: Pick STP application of <ApplicationStage> for <ProductType> LogicalID <LogicalID>
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    When user starts creating application of logical id "<LogicalID>"
    And user picks an application of "<ProductType>" product type as "<ApplicantType>" applicant at stage "<ApplicationStage>" for category "<Category>" with key "<Key>"
    Then set Application ID in the thread context
    @PickApplication @DDE
    Examples:
      | LogicalID                         | ProductType | ApplicantType | ApplicationStage | Category   | Key |
      | PL_CAS_45598_ExReceiptService_01  | PL          | indiv         | DDE              | allcharges |     |
      | HL_CAS_45598_ExReceiptService_01  | HL          | indiv         | DDE              | allcharges |     |
      | MAL_CAS_45598_ExReceiptService_01 | MAL         | indiv         | DDE              | allcharges |     |
      | PL_CAS_45598_ExReceiptService_03  | PL          | indiv         | DDE              | allcharges |     |
      | HL_CAS_45598_ExReceiptService_03  | HL          | indiv         | DDE              | allcharges |     |
      | MAL_CAS_45598_ExReceiptService_03 | MAL         | indiv         | DDE              | allcharges |     |

    #PQM-03_CAS-45598
  Scenario Outline: ACAUTOCAS-20789:[LogicalID-<LogicalID>][RevisitCount-<RevisitCount>] Navigate to Charges Screen at <ApplicationStage> for <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>"
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    When user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "<disbursalWB>" under sheet "<disbursal_sheetName>" and row <disbursal_sheetName_rowNum>
    And user navigate to Charges section of "<ApplicationStage>" for "<ProductType>"
    Then user should be able to navigate at charges screen
    @Charge @DDE
    Examples:
      | LogicalID                         | ProductType | ApplicantType | ApplicationStage | Category   | Key | disbursalWB    | disbursal_sheetName | disbursal_sheetName_rowNum |
      | PL_CAS_45598_ExReceiptService_01  | PL          | indiv         | DDE              | allcharges |     | disbursal.xlsx | disbursal_entry     | 52                         |
      | HL_CAS_45598_ExReceiptService_01  | HL          | indiv         | DDE              | allcharges |     | disbursal.xlsx | disbursal_entry     | 52                         |
      | MAL_CAS_45598_ExReceiptService_01 | MAL         | indiv         | DDE              | allcharges |     | disbursal.xlsx | disbursal_entry     | 52                         |

    @Charge @PostApproval
    Examples:
      | LogicalID                         | ProductType | ApplicantType | ApplicationStage | Category   | Key | disbursalWB    | disbursal_sheetName | disbursal_sheetName_rowNum |
      | PL_CAS_45598_ExReceiptService_01  | PL          | indiv         | Post Approval    | allcharges |     | disbursal.xlsx | disbursal_entry     | 52                         |
      | HL_CAS_45598_ExReceiptService_01  | HL          | indiv         | Post Approval    | allcharges |     | disbursal.xlsx | disbursal_entry     | 52                         |
      | MAL_CAS_45598_ExReceiptService_01 | MAL         | indiv         | Post Approval    | allcharges |     | disbursal.xlsx | disbursal_entry     | 52                         |

    @Charge @Disbursal
    Examples:
      | LogicalID                         | ProductType | ApplicantType | ApplicationStage | Category   | Key | disbursalWB    | disbursal_sheetName | disbursal_sheetName_rowNum |
      | PL_CAS_45598_ExReceiptService_01  | PL          | indiv         | Disbursal        | allcharges |     | disbursal.xlsx | disbursal_entry     | 52                         |
      | HL_CAS_45598_ExReceiptService_01  | HL          | indiv         | Disbursal        | allcharges |     | disbursal.xlsx | disbursal_entry     | 52                         |
      | MAL_CAS_45598_ExReceiptService_01 | MAL         | indiv         | Disbursal        | allcharges |     | disbursal.xlsx | disbursal_entry     | 52                         |
      | PL_CAS_45598_ExReceiptService_03  | PL          | indiv         | Disbursal        | allcharges |     | disbursal.xlsx | disbursal_entry     | 52                         |
      | HL_CAS_45598_ExReceiptService_03  | HL          | indiv         | Disbursal        | allcharges |     | disbursal.xlsx | disbursal_entry     | 52                         |
      | MAL_CAS_45598_ExReceiptService_03 | MAL         | indiv         | Disbursal        | allcharges |     | disbursal.xlsx | disbursal_entry     | 52                         |

    #PQM-03_CAS-45598,05_CAS-45598,03_CAS-45599,05_CAS-45599
  Scenario Outline: ACAUTOCAS-21139: Add charges at <ApplicationStage> for <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>"
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    When user apply the charges of "<ApplicationStage>"
    Then charge policy should be executed successfully for that application
    @Charge @DDE
    Examples:
      | LogicalID                         | ProductType | ApplicantType | ApplicationStage | Category   | Key |
      | PL_CAS_45598_ExReceiptService_01  | PL          | indiv         | DDE              | allcharges |     |
      | HL_CAS_45598_ExReceiptService_01  | HL          | indiv         | DDE              | allcharges |     |
      | MAL_CAS_45598_ExReceiptService_01 | MAL         | indiv         | DDE              | allcharges |     |

    @Charge @PostApproval
    Examples:
      | LogicalID                         | ProductType | ApplicantType | ApplicationStage | Category   | Key |
      | PL_CAS_45598_ExReceiptService_01  | PL          | indiv         | Post Approval    | allcharges |     |
      | HL_CAS_45598_ExReceiptService_01  | HL          | indiv         | Post Approval    | allcharges |     |
      | MAL_CAS_45598_ExReceiptService_01 | MAL         | indiv         | Post Approval    | allcharges |     |

    @Charge @Disbursal
    Examples:
      | LogicalID                         | ProductType | ApplicantType | ApplicationStage | Category   | Key |
      | PL_CAS_45598_ExReceiptService_01  | PL          | indiv         | Disbursal        | allcharges |     |
      | HL_CAS_45598_ExReceiptService_01  | HL          | indiv         | Disbursal        | allcharges |     |
      | MAL_CAS_45598_ExReceiptService_01 | MAL         | indiv         | Disbursal        | allcharges |     |

  Scenario Outline: ACAUTOCAS-21141:Add manual charges at <ApplicationStage> for <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>"
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user reads data from the excel file "<chargesWB>" under sheet "<charges_sheetName>" and row <charges_sheetName_rowNum>
    When user add manual charges at "<ApplicationStage>"
    Then manual charges should be added successfully
    @Charge @DDE
    Examples:
      | LogicalID                         | ProductType | ApplicantType | ApplicationStage | Category | Key | chargesWB    | charges_sheetName      | charges_sheetName_rowNum |
      | PL_CAS_45598_ExReceiptService_01  | MAL         | indiv         | DDE              |          |     | charges.xlsx | charge_code_defination | 18                       |
      | HL_CAS_45598_ExReceiptService_01  | HL          | indiv         | DDE              |          |     | charges.xlsx | charge_code_defination | 18                       |
      | MAL_CAS_45598_ExReceiptService_01 | PL          | indiv         | DDE              |          |     | charges.xlsx | charge_code_defination | 18                       |

    @Charge @PostApproval
    Examples:
      | LogicalID                         | ProductType | ApplicantType | ApplicationStage | Category | Key | chargesWB    | charges_sheetName      | charges_sheetName_rowNum |
      | PL_CAS_45598_ExReceiptService_01  | MAL         | indiv         | Post Approval    |          |     | charges.xlsx | charge_code_defination | 18                       |
      | HL_CAS_45598_ExReceiptService_01  | HL          | indiv         | Post Approval    |          |     | charges.xlsx | charge_code_defination | 18                       |
      | MAL_CAS_45598_ExReceiptService_01 | PL          | indiv         | Post Approval    |          |     | charges.xlsx | charge_code_defination | 18                       |

    @Charge @Disbursal
    Examples:
      | LogicalID                         | ProductType | ApplicantType | ApplicationStage | Category | Key | chargesWB    | charges_sheetName      | charges_sheetName_rowNum |
      | PL_CAS_45598_ExReceiptService_01  | MAL         | indiv         | Disbursal        |          |     | charges.xlsx | charge_code_defination | 18                       |
      | HL_CAS_45598_ExReceiptService_01  | HL          | indiv         | Disbursal        |          |     | charges.xlsx | charge_code_defination | 18                       |
      | MAL_CAS_45598_ExReceiptService_01 | PL          | indiv         | Disbursal        |          |     | charges.xlsx | charge_code_defination | 18                       |


  Scenario Outline: ACAUTOCAS-21140: Verify Charges in Grid at <ApplicationStage> for <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>"
    When user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    Then User should be able to view all the charges and fees applicable
    @Charge @DDE
    Examples:
      | LogicalID                         | ProductType | ApplicantType | ApplicationStage | Category   | Key |
      | PL_CAS_45598_ExReceiptService_01  | PL          | indiv         | DDE              | allcharges |     |
      | HL_CAS_45598_ExReceiptService_01  | PL          | indiv         | DDE              | allcharges |     |
      | MAL_CAS_45598_ExReceiptService_01 | PL          | indiv         | DDE              | allcharges |     |

    @Charge @PostApproval
    Examples:
      | LogicalID                         | ProductType | ApplicantType | ApplicationStage | Category   | Key |
      | PL_CAS_45598_ExReceiptService_01  | PL          | indiv         | Post Approval    | allcharges |     |
      | HL_CAS_45598_ExReceiptService_01  | PL          | indiv         | Post Approval    | allcharges |     |
      | MAL_CAS_45598_ExReceiptService_01 | PL          | indiv         | Post Approval    | allcharges |     |

    @Charge @Disbursal
    Examples:
      | LogicalID                         | ProductType | ApplicantType | ApplicationStage | Category   | Key |
      | PL_CAS_45598_ExReceiptService_01  | PL          | indiv         | Disbursal        | allcharges |     |
      | HL_CAS_45598_ExReceiptService_01  | PL          | indiv         | Disbursal        | allcharges |     |
      | MAL_CAS_45598_ExReceiptService_01 | PL          | indiv         | Disbursal        | allcharges |     |


  Scenario Outline: ACAUTOCAS-21142: Navigate to Receipt Tab at <ApplicationStage> for <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>"
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    When user navigate to receipt section of "<ApplicationStage>"
    Then user should be able to navigate at receipt screen
    @Charge @DDE
    Examples:
      | LogicalID                         | ProductType | ApplicantType | ApplicationStage | Category   | Key |
      | PL_CAS_45598_ExReceiptService_01  | PL          | indiv         | DDE              | allcharges |     |
      | HL_CAS_45598_ExReceiptService_01  | HL          | indiv         | DDE              | allcharges |     |
      | MAL_CAS_45598_ExReceiptService_01 | MAL         | indiv         | DDE              | allcharges |     |

    @Charge @PostApproval
    Examples:
      | LogicalID                         | ProductType | ApplicantType | ApplicationStage | Category   | Key |
      | PL_CAS_45598_ExReceiptService_01  | PL          | indiv         | Post Approval    | allcharges |     |
      | HL_CAS_45598_ExReceiptService_01  | HL          | indiv         | Post Approval    | allcharges |     |
      | MAL_CAS_45598_ExReceiptService_01 | MAL         | indiv         | Post Approval    | allcharges |     |

    @Charge @Disbursal
    Examples:
      | LogicalID                         | ProductType | ApplicantType | ApplicationStage | Category   | Key |
      | PL_CAS_45598_ExReceiptService_01  | PL          | indiv         | Disbursal        | allcharges |     |
      | HL_CAS_45598_ExReceiptService_01  | HL          | indiv         | Disbursal        | allcharges |     |
      | MAL_CAS_45598_ExReceiptService_01 | MAL         | indiv         | Disbursal        | allcharges |     |

    #PQM-32_CAS-45598,23_CAS-45599
  Scenario Outline: NDNC charges should not be visible in Receipt at <ApplicationStage> for <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>"
    When user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    Then NDNC charges should not be visible in receipt details
    @Charge @Disbursal
    Examples:
      | LogicalID                         | ProductType | ApplicantType | ApplicationStage | Category   | Key |
      | PL_CAS_45598_ExReceiptService_01  | PL          | indiv         | Disbursal        | allcharges |     |
      | HL_CAS_45598_ExReceiptService_01  | HL          | indiv         | Disbursal        | allcharges |     |
      | MAL_CAS_45598_ExReceiptService_01 | MAL         | indiv         | Disbursal        | allcharges |     |
      | PL_CAS_45598_ExReceiptService_03  | PL          | indiv         | Disbursal        | allcharges |     |
      | HL_CAS_45598_ExReceiptService_03  | HL          | indiv         | Disbursal        | allcharges |     |
      | MAL_CAS_45598_ExReceiptService_03 | MAL         | indiv         | Disbursal        | allcharges |     |

    #PQM-27_CAS-45598,28_CAS-45598
  Scenario Outline: Validate the Receipt Modal for payment mode <paymentMode>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>"
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user opens Receipt modal
    When user select the payment mode "<paymentMode>"
    Then  "<fieldName>" should be "<behaviour>"
    @Charge @Disbursal
    Examples:
      | LogicalID                         | ProductType | ApplicantType | ApplicationStage | Category   | Key | fieldName | behaviour | paymentMode |
      | PL_CAS_45598_ExReceiptService_01  | PL          | indiv         | Disbursal        | allcharges |     |           |           |             |
      | HL_CAS_45598_ExReceiptService_01  | HL          | indiv         | Disbursal        | allcharges |     |           |           |             |
      | MAL_CAS_45598_ExReceiptService_01 | MAL         | indiv         | Disbursal        | allcharges |     |           |           |             |


    #PQM-06_CAS-45598,06_CAS-45599,15_CAS-45599
  Scenario Outline: ACAUTOCAS-21143: create new receipt at <ApplicationStage> for <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>"
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user reads data from the excel file "<chargesWB>" under sheet "<charges_sheetName>" and row <charges_sheetName_rowNum>
    When user create new receipt at "<ApplicationStage>"
    Then receipt should be created successfully
    @Charge @DDE
    Examples:
      | LogicalID                         | ProductType | ApplicantType | ApplicationStage | Category | Key | chargesWB    | charges_sheetName      | charges_sheetName_rowNum |
      | PL_CAS_45598_ExReceiptService_01  | PL          | indiv         | DDE              |          |     | charges.xlsx | charge_code_defination | 22                       |
      | HL_CAS_45598_ExReceiptService_01  | HL          | indiv         | DDE              |          |     | charges.xlsx | charge_code_defination | 22                       |
      | MAL_CAS_45598_ExReceiptService_01 | MAL         | indiv         | DDE              |          |     | charges.xlsx | charge_code_defination | 22                       |
    @Charge @PostApproval
    Examples:
      | LogicalID                         | ProductType | ApplicantType | ApplicationStage | Category | Key | chargesWB    | charges_sheetName      | charges_sheetName_rowNum |
      | PL_CAS_45598_ExReceiptService_01  | PL          | indiv         | Post Approval    |          |     | charges.xlsx | charge_code_defination | 22                       |
      | HL_CAS_45598_ExReceiptService_01  | HL          | indiv         | Post Approval    |          |     | charges.xlsx | charge_code_defination | 22                       |
      | MAL_CAS_45598_ExReceiptService_01 | MAL         | indiv         | Post Approval    |          |     | charges.xlsx | charge_code_defination | 22                       |
    @Charge @Disbursal
    Examples:
      | LogicalID                         | ProductType | ApplicantType | ApplicationStage | Category | Key | chargesWB    | charges_sheetName      | charges_sheetName_rowNum |
      | PL_CAS_45598_ExReceiptService_01  | PL          | indiv         | Disbursal        |          |     | charges.xlsx | charge_code_defination | 22                       |
      | HL_CAS_45598_ExReceiptService_01  | HL          | indiv         | Disbursal        |          |     | charges.xlsx | charge_code_defination | 22                       |
      | MAL_CAS_45598_ExReceiptService_01 | MAL         | indiv         | Disbursal        |          |     | charges.xlsx | charge_code_defination | 22                       |

    #PQM-04_CAS-45598,04_CAS-45599
  Scenario Outline: ACAUTOCAS-20797: Move the Application to <finalStage> from <ApplicationStage> for <ProductType> LogicalID <LogicalID>
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
      | LogicalID                         | ProductType | ApplicantType | ApplicationStage | finalStage | Category   | Key |
      | PL_CAS_45598_ExReceiptService_01  | PL          | indiv         | DDE              | PDOC       | allcharges |     |
      | HL_CAS_45598_ExReceiptService_01  | HL          | indiv         | DDE              | PDOC       | allcharges |     |
      | MAL_CAS_45598_ExReceiptService_01 | MAL         | indiv         | DDE              | PDOC       | allcharges |     |

    @Charge @PostApproval
    Examples:
      | LogicalID                         | ProductType | ApplicantType | ApplicationStage | finalStage | Category   | Key |
      | PL_CAS_45598_ExReceiptService_01  | PL          | indiv         | Post Approval    | Disbursal  | allcharges |     |
      | HL_CAS_45598_ExReceiptService_01  | HL          | indiv         | Post Approval    | Disbursal  | allcharges |     |
      | MAL_CAS_45598_ExReceiptService_01 | MAL         | indiv         | Post Approval    | Disbursal  | allcharges |     |


  Scenario Outline: Validate the <buttonName> is <behaviour> before saving Receipt Screen at <ApplicationStage> for <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>"
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    Then "<buttonName>" should be "<behaviour>" before Saving Receipt Screen
    @Charge @Disbursal
    Examples:
      | LogicalID                         | ProductType | ApplicantType | ApplicationStage | Category | Key | buttonName | behaviour |
      | PL_CAS_45598_ExReceiptService_01  | PL          | indiv         | Disbursal        |          |     | View       | visible   |
      | PL_CAS_45598_ExReceiptService_01  | PL          | indiv         | Disbursal        |          |     | View       | editable  |
      | PL_CAS_45598_ExReceiptService_01  | PL          | indiv         | Disbursal        |          |     | Edit       | visible   |
      | PL_CAS_45598_ExReceiptService_01  | PL          | indiv         | Disbursal        |          |     | Edit       | editable  |
      | PL_CAS_45598_ExReceiptService_01  | PL          | indiv         | Disbursal        |          |     | Delete     | visible   |
      | PL_CAS_45598_ExReceiptService_01  | PL          | indiv         | Disbursal        |          |     | Delete     | editable  |
      | HL_CAS_45598_ExReceiptService_01  | HL          | indiv         | Disbursal        |          |     | View       | visible   |
      | HL_CAS_45598_ExReceiptService_01  | HL          | indiv         | Disbursal        |          |     | View       | editable  |
      | HL_CAS_45598_ExReceiptService_01  | HL          | indiv         | Disbursal        |          |     | Edit       | visible   |
      | HL_CAS_45598_ExReceiptService_01  | HL          | indiv         | Disbursal        |          |     | Edit       | editable  |
      | HL_CAS_45598_ExReceiptService_01  | HL          | indiv         | Disbursal        |          |     | Delete     | visible   |
      | HL_CAS_45598_ExReceiptService_01  | HL          | indiv         | Disbursal        |          |     | Delete     | editable  |
      | MAL_CAS_45598_ExReceiptService_01 | MAL         | indiv         | Disbursal        |          |     | View       | visible   |
      | MAL_CAS_45598_ExReceiptService_01 | MAL         | indiv         | Disbursal        |          |     | View       | editable  |
      | MAL_CAS_45598_ExReceiptService_01 | MAL         | indiv         | Disbursal        |          |     | Edit       | visible   |
      | MAL_CAS_45598_ExReceiptService_01 | MAL         | indiv         | Disbursal        |          |     | Edit       | editable  |
      | MAL_CAS_45598_ExReceiptService_01 | MAL         | indiv         | Disbursal        |          |     | Delete     | visible   |
      | MAL_CAS_45598_ExReceiptService_01 | MAL         | indiv         | Disbursal        |          |     | Delete     | editable  |


    #PQM-09_CAS-45599
  Scenario Outline:Edit created receipt at <ApplicationStage> for <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>"
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user reads data from the excel file "<chargesWB>" under sheet "<charges_sheetName>" and row <charges_sheetName_rowNum>
    When user edit created receipt at "<ApplicationStage>"
    Then receipt should be edited successfully
    @Charge @Disbursal
    Examples:
      | LogicalID                         | ProductType | ApplicantType | ApplicationStage | Category | Key | chargesWB    | charges_sheetName      | charges_sheetName_rowNum |
      | PL_CAS_45598_ExReceiptService_01  | PL          | indiv         | Disbursal        |          |     | charges.xlsx | charge_code_defination | 22                       |
      | HL_CAS_45598_ExReceiptService_01  | HL          | indiv         | Disbursal        |          |     | charges.xlsx | charge_code_defination | 22                       |
      | MAL_CAS_45598_ExReceiptService_01 | MAL         | indiv         | Disbursal        |          |     | charges.xlsx | charge_code_defination | 22                       |

 #PQM-10_CAS-45599
  Scenario Outline: Delete created receipt at <ApplicationStage> for <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>"
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    When user delete created receipt at "<ApplicationStage>"
    Then receipt should be deleted successfully
    @Charge @Disbursal
    Examples:
      | LogicalID                         | ProductType | ApplicantType | ApplicationStage | Category | Key | chargesWB    | charges_sheetName      | charges_sheetName_rowNum |
      | PL_CAS_45598_ExReceiptService_01  | PL          | indiv         | Disbursal        |          |     | charges.xlsx | charge_code_defination | 22                       |
      | HL_CAS_45598_ExReceiptService_01  | HL          | indiv         | Disbursal        |          |     | charges.xlsx | charge_code_defination | 22                       |
      | MAL_CAS_45598_ExReceiptService_01 | MAL         | indiv         | Disbursal        |          |     | charges.xlsx | charge_code_defination | 22                       |


    #PQM-13_CAS-45598,13_CAS-45599
  Scenario Outline: Check in db for the deleted receipt at <ApplicationStage> for <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>"
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    When user searches in db for the deleted query
    Then receipt details should not be there in db
    @Charge @Disbursal
    Examples:
      | LogicalID                         | ProductType | ApplicantType | ApplicationStage | Category | Key |
      | PL_CAS_45598_ExReceiptService_01  | PL          | indiv         | Disbursal        |          |     |
      | HL_CAS_45598_ExReceiptService_01  | HL          | indiv         | Disbursal        |          |     |
      | MAL_CAS_45598_ExReceiptService_01 | MAL         | indiv         | Disbursal        |          |     |

   #PQM-06_CAS-45598,06_CAS-45599,15_CAS-45599
  Scenario Outline: ACAUTOCAS-21143: create new receipt at <ApplicationStage> for <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>"
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user reads data from the excel file "<chargesWB>" under sheet "<charges_sheetName>" and row <charges_sheetName_rowNum>
    When user create new receipt at "<ApplicationStage>"
    Then receipt should be created successfully
    @Charge @Disbursal
    Examples:
      | LogicalID                         | ProductType | ApplicantType | ApplicationStage | Category | Key | chargesWB    | charges_sheetName      | charges_sheetName_rowNum |
      | PL_CAS_45598_ExReceiptService_01  | PL          | indiv         | Disbursal        |          |     | charges.xlsx | charge_code_defination | 22                       |
      | HL_CAS_45598_ExReceiptService_01  | HL          | indiv         | Disbursal        |          |     | charges.xlsx | charge_code_defination | 22                       |
      | MAL_CAS_45598_ExReceiptService_01 | MAL         | indiv         | Disbursal        |          |     | charges.xlsx | charge_code_defination | 22                       |

  Scenario Outline: Save Receipt Screen at <ApplicationStage> for <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>"
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    When user saves Receipt Screen at "<ApplicationStage>"
    Then Receipt Screen should be saved successfully
    @Charge @Disbursal
    Examples:
      | LogicalID                         | ProductType | ApplicantType | ApplicationStage | Category | Key | chargesWB    | charges_sheetName      | charges_sheetName_rowNum |
      | PL_CAS_45598_ExReceiptService_01  | PL          | indiv         | Disbursal        |          |     | charges.xlsx | charge_code_defination | 22                       |
      | HL_CAS_45598_ExReceiptService_01  | HL          | indiv         | Disbursal        |          |     | charges.xlsx | charge_code_defination | 22                       |
      | MAL_CAS_45598_ExReceiptService_01 | MAL         | indiv         | Disbursal        |          |     | charges.xlsx | charge_code_defination | 22                       |

      #PQM-19_CAS-45598,30_CAS-45598,19_CAS-45599,30_CAS-45599,17_CAS-45599
  Scenario Outline: Validate the status of Receipt as <receiptStatus> at <ApplicationStage> for <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>"
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    Then receipt status should be "<receiptStatus>"
    @Charge @Disbursal
    Examples:
      | LogicalID                         | ProductType | ApplicantType | ApplicationStage | Category | Key | receiptStatus       |
      | PL_CAS_45598_ExReceiptService_03  | PL          | indiv         | Disbursal        |          |     | RealizationAuthored |
      | HL_CAS_45598_ExReceiptService_03  | HL          | indiv         | Disbursal        |          |     | RealizationAuthored |
      | MAL_CAS_45598_ExReceiptService_03 | MAL         | indiv         | Disbursal        |          |     | RealizationAuthored |

#PQM-20_CAS-45598,20_CAS-45599
  Scenario Outline: Validate the Receipt ID of Receipt as <receiptStatus> at <ApplicationStage> for <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>"
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    Then receipt id should be valid
    @Charge @Disbursal
    Examples:
      | LogicalID                         | ProductType | ApplicantType | ApplicationStage | Category | Key |
      | PL_CAS_45598_ExReceiptService_03  | PL          | indiv         | Disbursal        |          |     |
      | HL_CAS_45598_ExReceiptService_03  | HL          | indiv         | Disbursal        |          |     |
      | MAL_CAS_45598_ExReceiptService_03 | MAL         | indiv         | Disbursal        |          |     |

        #PQM-09_CAS-45598,10_CAS-45598
  Scenario Outline: <buttonName> button should not visible after Saving Receipt Screen at <ApplicationStage> for <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>"
    When user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    Then "<buttonName>" should not visible after Saving Receipt Screen
    @Charge @Disbursal
    Examples:
      | LogicalID                         | ProductType | ApplicantType | ApplicationStage | Category | Key | buttonName |
      | PL_CAS_45598_ExReceiptService_01  | PL          | indiv         | Disbursal        |          |     | Edit       |
      | HL_CAS_45598_ExReceiptService_01  | HL          | indiv         | Disbursal        |          |     | Edit       |
      | MAL_CAS_45598_ExReceiptService_01 | MAL         | indiv         | Disbursal        |          |     | Edit       |
      | PL_CAS_45598_ExReceiptService_01  | PL          | indiv         | Disbursal        |          |     | Delete     |
      | HL_CAS_45598_ExReceiptService_01  | HL          | indiv         | Disbursal        |          |     | Delete     |
      | MAL_CAS_45598_ExReceiptService_01 | MAL         | indiv         | Disbursal        |          |     | Delete     |

        #PQM-14_CAS-45598,#PQM-14_CAS-45599
  Scenario Outline: Allocate the receipt with access amt at <ApplicationStage> for <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>"
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    When user allocate the charge from receipt
    Then user should be able to allocate the receipt with status <partially allocated>
    @Charge @Disbursal
    Examples:
      | LogicalID                         | ProductType | ApplicantType | ApplicationStage | Category | Key |
      | PL_CAS_45598_ExReceiptService_01  | PL          | indiv         | Disbursal        |          |     |
      | HL_CAS_45598_ExReceiptService_01  | HL          | indiv         | Disbursal        |          |     |
      | MAL_CAS_45598_ExReceiptService_01 | MAL         | indiv         | Disbursal        |          |     |

            #PQM-09_CAS-45598,10_CAS-45598
  Scenario Outline: <buttonName> button should not come after Allocation Receipt Screen at <ApplicationStage> for <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>"
    When user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    Then "<buttonName>" should not come after allocation
    @Charge @Disbursal
    Examples:
      | LogicalID                         | ProductType | ApplicantType | ApplicationStage | Category | Key | buttonName |
      | PL_CAS_45598_ExReceiptService_01  | PL          | indiv         | Disbursal        |          |     | Edit       |
      | HL_CAS_45598_ExReceiptService_01  | HL          | indiv         | Disbursal        |          |     | Edit       |
      | MAL_CAS_45598_ExReceiptService_01 | MAL         | indiv         | Disbursal        |          |     | Edit       |
      | PL_CAS_45598_ExReceiptService_01  | PL          | indiv         | Disbursal        |          |     | Delete     |
      | HL_CAS_45598_ExReceiptService_01  | HL          | indiv         | Disbursal        |          |     | Delete     |
      | MAL_CAS_45598_ExReceiptService_01 | MAL         | indiv         | Disbursal        |          |     | Delete     |


    #PQM-11_CAS-45598,11_CAS-45599,12_CAS-45599
  Scenario Outline: Verify after re executing the charge policy at <ApplicationStage> for <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>"
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And  user navigates to charge screen
    When user apply charges
    And user navigate to receipt screen
    Then Reciept amount allocated should not get unallocated
    @Charge @Disbursal
    Examples:
      | LogicalID                         | ProductType | ApplicantType | ApplicationStage | Category | Key |
      | PL_CAS_45598_ExReceiptService_01  | PL          | indiv         | Disbursal        |          |     |
      | HL_CAS_45598_ExReceiptService_01  | HL          | indiv         | Disbursal        |          |     |
      | MAL_CAS_45598_ExReceiptService_01 | MAL         | indiv         | Disbursal        |          |     |

          #PQM-07_CAS-45598,08_CAS-45598,12_CAS-45598,18_CAS-45598,07_CAS-45599,08_CAS-45599,14_CAS-45599,18_CAS-45599
  Scenario Outline: Allocate the receipt for all collectible charges at <ApplicationStage> for <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>"
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    When user allocate the charge from receipt
    Then user should be able to allocate the receipt
    @Charge @Disbursal
    Examples:
      | LogicalID                         | ProductType | ApplicantType | ApplicationStage | Category | Key |
      | PL_CAS_45598_ExReceiptService_01  | PL          | indiv         | Disbursal        |          |     |
      | HL_CAS_45598_ExReceiptService_01  | HL          | indiv         | Disbursal        |          |     |
      | MAL_CAS_45598_ExReceiptService_01 | MAL         | indiv         | Disbursal        |          |     |


      #PQM-29-CAS-45598,25-CAS-45598
  Scenario Outline: Disburse the loan
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>"
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    When user disburse the loan
    Then loan should be disbursed
    @Charge @Disbursal
    Examples:
      | LogicalID                         | ProductType | ApplicantType | ApplicationStage | Category | Key |
      | PL_CAS_45598_ExReceiptService_01  | PL          | indiv         | Disbursal        |          |     |
      | HL_CAS_45598_ExReceiptService_01  | HL          | indiv         | Disbursal        |          |     |
      | MAL_CAS_45598_ExReceiptService_01 | MAL         | indiv         | Disbursal        |          |     |

  #PQM-26_CAS-45598,#PQM-25_CAS-45599
  Scenario Outline: Validate NDNC charges in LMS
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>"
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    When user view NDNC charges in LMS
    Then NDNC charges should be present in LMS
    @Charge @LMS
    Examples:
      | LogicalID                         | ProductType | ApplicantType | ApplicationStage | Category | Key |
      | PL_CAS_45598_ExReceiptService_01  | PL          | indiv         | Sent To Ops      |          |     |
      | HL_CAS_45598_ExReceiptService_01  | HL          | indiv         | Sent To Ops      |          |     |
      | MAL_CAS_45598_ExReceiptService_01 | MAL         | indiv         | Sent To Ops      |          |     |

    ##Misc Policy where Auto Realization is set to false
  #PQM-31_CAS-45599
  Scenario Outline: Validate the status of the Receipt of "<ProductType>" logical id "<LogicalID>"
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>"
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    When user create a new receipt as Cheques
    Then It should work in given manner with <status>
    @Charge @Disbursal
    Examples:
      | LogicalID                         | ProductType | ApplicantType | ApplicationStage | Category | Key | status             |
      | PL_CAS_45598_ExReceiptService_04  | PL          | indiv         | Disbursal        |          |     | Deposit Maker      |
      | MAL_CAS_45598_ExReceiptService_04 | MAL         | indiv         | Disbursal        |          |     | Deposit Maker      |
      | HL_CAS_45598_ExReceiptService_04  | HL          | indiv         | Disbursal        |          |     | Deposit Maker      |
      | PL_CAS_45598_ExReceiptService_04  | PL          | indiv         | Disbursal        |          |     | Deposit Author     |
      | MAL_CAS_45598_ExReceiptService_04 | MAL         | indiv         | Disbursal        |          |     | Deposit Author     |
      | HL_CAS_45598_ExReceiptService_04  | HL          | indiv         | Disbursal        |          |     | Deposit Author     |
      | PL_CAS_45598_ExReceiptService_04  | PL          | indiv         | Disbursal        |          |     | Realization Author |
      | PL_CAS_45598_ExReceiptService_04  | PL          | indiv         | Disbursal        |          |     | Realization Author |
      | MAL_CAS_45598_ExReceiptService_04 | MAL         | indiv         | Disbursal        |          |     | Realization Author |
      | MAL_CAS_45598_ExReceiptService_04 | MAL         | indiv         | Disbursal        |          |     | Realization Maker  |
      | HL_CAS_45598_ExReceiptService_04  | HL          | indiv         | Disbursal        |          |     | Realization Maker  |
      | HL_CAS_45598_ExReceiptService_04  | HL          | indiv         | Disbursal        |          |     | Realization Maker  |


