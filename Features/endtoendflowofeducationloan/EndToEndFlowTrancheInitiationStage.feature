@Epic-E2E
@Conventional
@E2EOrder
@Order
@Release
@TrancheInitiation
  #FeatureID-ACAUTOCAS-17204
Feature: End to end work flow for All LOB Order Wise

########################################## STAGE 10 : Tranche Initiation #################################################################################
  @ImplementedBy-rishabh.garg
    @AuthoredBy-anshika.gupta
  Scenario Outline: ACAUTOCAS-19878: [LogicalID-<LogicalID>][RevisitCount-<RevisitCount>] Generate first Tranche at disbursal stage for <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>" with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user opens an application of "Disbursal" stage present in context from application grid
    And user navigates to tranches tab
    When user generate first tranche
    And user saves tranche details
    Then tranche details should be save successfully
    Examples:
      | LogicalID | ProductType    |RevisitCount |
      | EDU00002  | Education Loan |             |

    @PQMStory
    Examples:
      | LogicalID                        | ProductType    | RevisitCount |
      | EDU_CAS_60813_ContractualIndiv01 | Education Loan |              |
      | EDU_CAS_60813_ContractualIndiv02 | Education Loan |              |
      | EDU_CAS_60813_ContractualIndiv03 | Education Loan |              |
      | EDU_CAS_60813_ContractualIndiv04 | Education Loan |              |
      | EDU_CAS_60813_ContractualIndiv05 | Education Loan |              |

  @ImplementedBy-rishabh.garg
    @AuthoredBy-anshika.gupta
  Scenario Outline: ACAUTOCAS-19879: Initiate <TrancheNo> Tranche from disbursal stage for <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>" with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
#    And user opens an application of "Disbursal" stage present in context from application grid
    When user moves to main tab of "disbursal"
    And user reads data from the excel file "<DisbursalWB>" under sheet "<DisbursalSheet>" and row <Disbursal_rowNum>
    And user fills disbursal Checklist
    And user fills disbursal date
    And user opens payee details on disbursal
    And user selects payment mode as "Cheque"
    And user fills dealing bank in payee details
    And user saves the disbursal
    And user initiate disbursal
    Then Application should move to "Disbursal Author" Stage
    Examples:
      | LogicalID | TrancheNo | DisbursalWB    | DisbursalSheet  | Disbursal_rowNum | ProductType    |
      | EDU00002  | first     | disbursal.xlsx | disbursal_entry | 49               | Education Loan |

  @ImplementedBy-yash.sharma
  Scenario Outline: [LogicalID-<LogicalID>][RevisitCount-<RevisitCount>] Initiate <TrancheNo> Tranche from disbursal stage waiving off charges for <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>" with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user opens an application of "Disbursal" stage present in context from application grid
    When user moves to main tab of "disbursal"
    And user reads data from the excel file "disbursal.xlsx" under sheet "disbursal_entry" and row 52
    And user navigate to Charges section of "Disbursal" for "<ProductType>"
    And user waives all the charges present at Disbursal for "<ProductType>"
    And user opens an application of "Disbursal" stage present in context from application grid
    And user reads data from the excel file "<DisbursalWB>" under sheet "<DisbursalSheet>" and row <Disbursal_rowNum>
    And user fills disbursal Checklist
    And user fills disbursal date
    And user opens payee details on disbursal
    And user selects payment mode as "Cheque"
    And user fills dealing bank in payee details
    And user saves the disbursal
    And user initiate disbursal
    Then Application should move to "Disbursal Author" Stage
    @PQMStory
    Examples:
      | LogicalID                        | TrancheNo | DisbursalWB    | DisbursalSheet  | Disbursal_rowNum | ProductType             | RevisitCount |
      | EDU_CAS_60813_ContractualIndiv01 | first     | disbursal.xlsx | disbursal_entry | 49               | Education Loan          | 2            |
      | EDU_CAS_60813_ContractualIndiv02 | first     | disbursal.xlsx | disbursal_entry | 49               | Education Loan          | 2            |
      | EDU_CAS_60813_ContractualIndiv03 | first     | disbursal.xlsx | disbursal_entry | 49               | Education Loan          | 2            |
      | EDU_CAS_60813_ContractualIndiv04 | first     | disbursal.xlsx | disbursal_entry | 49               | Education Loan          | 2            |
      | EDU_CAS_60813_ContractualIndiv05 | first     | disbursal.xlsx | disbursal_entry | 49               | Education Loan          | 2            |


  @ImplementedBy-rishabh.garg
    @AuthoredBy-anshika.gupta
  Scenario Outline: ACAUTOCAS-19880: [LogicalID-<LogicalID>][RevisitCount-<RevisitCount>] Approve the disbursal of <ProductType> at disbursal author stage LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>" with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user logout from CAS
    And user logged in "CAS" with username and password present in "LoginDetailsCAS.xlsx" under "ChildBrowserSheet" and 0
    When user navigate to disbursal author Screen
    And user opens an application present in context from disbursal author grid
    And Author accepts the disbursal application on disbursal author page
    Then Application should move to "Tranche Initiation" Stage

    Examples:
      | LogicalID | ProductType    | RevisitCount |
      | EDU00002  | Education Loan |              |
    @PQMStory
    Examples:
      | LogicalID                        | ProductType    | RevisitCount |
      | EDU_CAS_60813_ContractualIndiv01 | Education Loan | 2            |
      | EDU_CAS_60813_ContractualIndiv02 | Education Loan | 2            |
      | EDU_CAS_60813_ContractualIndiv03 | Education Loan | 2            |
      | EDU_CAS_60813_ContractualIndiv04 | Education Loan | 2            |
      | EDU_CAS_60813_ContractualIndiv05 | Education Loan | 2            |

  #for single tranche
  @ImplementedBy-rishabh.garg
    @AuthoredBy-anshika.gupta
  Scenario Outline: ACAUTOCAS-19881: [LogicalID-<LogicalID>][RevisitCount-<RevisitCount>] Tranche Initiation at Tranche Initiation stage for <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>" with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user opens an application of "Tranche Initiation" stage present in context from application grid
    When user navigates to tranches tab
    And user generate first tranche
    And user initiates the tranche
    Then tranche should initiate successfully

    Examples:
      | LogicalID | ProductType    | RevisitCount |
      | EDU00002  | Education Loan |              |
    @PQMStory
    Examples:
      | LogicalID                        | ProductType    | RevisitCount |
      | EDU_CAS_60813_ContractualIndiv01 | Education Loan | 2            |
      | EDU_CAS_60813_ContractualIndiv02 | Education Loan | 2            |
      | EDU_CAS_60813_ContractualIndiv03 | Education Loan | 2            |
      | EDU_CAS_60813_ContractualIndiv04 | Education Loan | 2            |
      | EDU_CAS_60813_ContractualIndiv05 | Education Loan | 2            |

#for single facility [tranche]
  @DevTrack
  @GA-9.0
  @AuthoredBy-ankit.yadav
  @ImplementedBy-ankit.yadav
  Scenario Outline: ACAUTOCAS-19881: [LogicalID-<LogicalID>] Fills all fields of Bill details on bill details tab at Tranche Initiation stage for <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>" with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user opens an application of "Tranche Initiation" stage present in context from application grid
    And user reads data from the excel file "<DisbursalWB>" under sheet "<DisbursalSheet>" and row <Disbursal_rowNum>
    When user navigates to bill details tab
    And user create bill for first tranche
    And user fill all the fields of Bill details
    Then bill details with calculate interest successfully
    Examples:
      | LogicalID     | ProductType    | DisbursalWB    | DisbursalSheet | Disbursal_rowNum |
      | MULF_BD_00001 | Multi Facility | disbursal.xlsx | bill_details   | 49               |

  @DevTrack
  @GA-9.0
  @AuthoredBy-ankit.yadav
  @ImplementedBy-ankit.yadav
  Scenario Outline: [LogicalID-<LogicalID>] Fills all fields of Seller Details on bill details tab at Tranche Initiation stage for <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>" with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user reads data from the excel file "<DisbursalWB>" under sheet "<DisbursalSheet>" and row <Disbursal_rowNum>
    When user fill all the fields of seller details
    And user fills identification details on tranche initiation bill details
      | personal_information_end_flow.xlsx | identification_details | 6 |
    And identification details saved successfully
    And user enters address details on tranche initiation bill details
      | personal_information_end_flow.xlsx | address_details | 3 |
    Then seller details should added successfully
    Examples:
      | LogicalID     | ProductType    | DisbursalWB    | DisbursalSheet | Disbursal_rowNum |
      | MULF_BD_00001 | Multi Facility | disbursal.xlsx | bill_details   | 49               |

  @DevTrack
  @GA-9.0
  @AuthoredBy-ankit.yadav
  @ImplementedBy-ankit.yadav
  Scenario Outline: [LogicalID-<LogicalID>] Fills all fields of Buyer Details on bill details tab at Tranche Initiation stage for <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>" with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user reads data from the excel file "<DisbursalWB>" under sheet "<DisbursalSheet>" and row <Disbursal_rowNum>
    When user fill all the fields of buyer details
    And user fills identification details on tranche initiation bill details
      | personal_information_end_flow.xlsx | identification_details | 6 |
    And identification details saved successfully
    And user enters address details on tranche initiation bill details
      | personal_information_end_flow.xlsx | address_details | 3 |
    Then seller details should added successfully
    Examples:
      | LogicalID     | ProductType    | DisbursalWB    | DisbursalSheet | Disbursal_rowNum |
      | MULF_BD_00001 | Multi Facility | disbursal.xlsx | bill_details   | 49               |

  @DevTrack
  @GA-9.0
  @AuthoredBy-ankit.yadav
  @ImplementedBy-ankit.yadav
  Scenario Outline: [LogicalID-<LogicalID>] save the bill details tab at Tranche Initiation stage for <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>" with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    When user save all bill invoice details
    Then bill details should added successfully
    Examples:
      | LogicalID     | ProductType    |
      | MULF_BD_00001 | Multi Facility |

  @DevTrack
  @GA-9.0
  @AuthoredBy-ankit.yadav
  @ImplementedBy-ankit.yadav
  Scenario Outline: [LogicalID-<LogicalID>] select the bill and add to disbursal button at Tranche Initiation stage for <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>" with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    When user select the bill details
    And user click on add to disbursal button
    Then Bill Added for Disbursal Successfully
    Examples:
      | LogicalID     | ProductType    |
      | MULF_BD_00001 | Multi Facility |

  @DevTrack
  @GA-9.0
  @AuthoredBy-ankit.yadav
  @ImplementedBy-ankit.yadav
  Scenario Outline: [LogicalID-<LogicalID>] save to tranche details at Tranche Initiation stage for <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>" with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    When user click on save to tranche button
    Then Bill should be saved to tranche Successfully
    Examples:
      | LogicalID     | ProductType    |
      | MULF_BD_00001 | Multi Facility |

  @DevTrack
  @GA-9.0
  @AuthoredBy-ankit.yadav
  @ImplementedBy-ankit.yadav
  Scenario Outline: [LogicalID-<LogicalID>] Generate first Tranche at tranche initiation stage for <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>" with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user navigates to tranches tab
    When user select all tranches to initiate
    And user refresh the tranche details
    Then limit values updated from LMS Succesfully
    Examples:
      | LogicalID     | ProductType    |
      | MULF_BD_00001 | Multi Facility |