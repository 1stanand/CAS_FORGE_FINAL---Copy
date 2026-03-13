@Epic-Charges
@AuthoredBy-piyush.agnihotri
@ImplementedBy-piyush.agnihotri
@PQMStory
@Order
@Release
@Perishable

#Story-CAS-118696
Feature: Validation of Periodic Charges

    #PQM-01_CAS-118696,02_CAS-118696,03_CAS-118696
  Scenario Outline: ACAUTOCAS-21151:Verify <ChargeType> charges added at <ApplicationStage> for <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>"
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    When user reads data from the excel file "charges.xlsx" under sheet "periodic_charges" and row 0
    Then Applied "<ChargeType>" charges should be added at "<ApplicationStage>"
    @PeriodicCharge @DDE
    Examples:
      | LogicalID                      | ProductType | ChargeType | ApplicationStage |
      | PL_CAS_118696_PeriodicIndiv01  | PL          | Periodic   | DDE              |
      | MAL_CAS_118696_PeriodicIndiv01 | MAL         | Periodic   | DDE              |
      | HL_CAS_118696_PeriodicIndiv01  | HL          | Periodic   | DDE              |
      | PL_CAS_118696_PeriodicIndiv02  | PL          | Periodic   | DDE              |
      | MAL_CAS_118696_PeriodicIndiv02 | MAL         | Periodic   | DDE              |
      | HL_CAS_118696_PeriodicIndiv02  | HL          | Periodic   | DDE              |
      | PL_CAS_118696_PeriodicIndiv03  | PL          | Periodic   | DDE              |
      | MAL_CAS_118696_PeriodicIndiv03 | MAL         | Periodic   | DDE              |
      | HL_CAS_118696_PeriodicIndiv03  | HL          | Periodic   | DDE              |
    @PeriodicCharge @Disbursal
    Examples:
      | LogicalID                      | ProductType | ChargeType | ApplicationStage |
      | PL_CAS_118696_PeriodicIndiv03  | PL          | Periodic   | Disbursal        |
      | MAL_CAS_118696_PeriodicIndiv03 | MAL         | Periodic   | Disbursal        |
      | HL_CAS_118696_PeriodicIndiv03  | HL          | Periodic   | Disbursal        |


      #PQM-09_CAS-118696,11_CAS-118696
  Scenario Outline: ACAUTOCAS-21152:Validate error message for End date of Periodic Charge is smaller than the start date of Periodic Charge at <ApplicationStage> for <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>"
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user reads data from the excel file "charges.xlsx" under sheet "periodic_charges" and row 1
    When user clicks on move to next stage button
    Then user should get error message that End date of Periodic Charge cannot be smaller than the start date of Periodic Charge
    @PeriodicCharge @DDE
    @LoggedBug-CAS-238302
    Examples:
      | LogicalID                      | ProductType | ApplicationStage |
      | PL_CAS_118696_PeriodicIndiv02  | PL          | DDE              |
      | MAL_CAS_118696_PeriodicIndiv02 | MAL         | DDE              |
      | HL_CAS_118696_PeriodicIndiv02  | HL          | DDE              |


   #PQM-05_CAS-118696
  Scenario Outline: ACAUTOCAS-21153: Update Interest Start Date at <ApplicationStage> for <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>"
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user reads data from the excel file "charges.xlsx" under sheet "periodic_charges" and row 0
    When user change interest start date at "<ApplicationStage>"
    Then interest start date changed successfully
    @PeriodicCharge @DDE
    Examples:
      | LogicalID                      | ProductType | ApplicationStage |
      | PL_CAS_118696_PeriodicIndiv03  | PL          | DDE              |
      | MAL_CAS_118696_PeriodicIndiv03 | MAL         | DDE              |
      | HL_CAS_118696_PeriodicIndiv03  | HL          | DDE              |
    @PeriodicCharge @Disbursal
    Examples:
      | LogicalID                      | ProductType | ApplicationStage |
      | PL_CAS_118696_PeriodicIndiv04  | PL          | Disbursal        |
      | MAL_CAS_118696_PeriodicIndiv04 | MAL         | Disbursal        |
      | HL_CAS_118696_PeriodicIndiv04  | HL          | Disbursal        |


   #PQM-06_CAS-118696
  Scenario Outline: ACAUTOCAS-21154: Update Interest Start Date along with Loan Frequency at <ApplicationStage> for <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>"
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user reads data from the excel file "charges.xlsx" under sheet "periodic_charges" and row 0
    When user change interest start date along with loan frequency at "<ApplicationStage>"
    Then interest start date along with loan frequency are changed successfully
    @PeriodicCharge @DDE
    Examples:
      | LogicalID                      | ProductType | ApplicationStage |
      | PL_CAS_118696_PeriodicIndiv01  | PL          | DDE              |
      | MAL_CAS_118696_PeriodicIndiv01 | MAL         | DDE              |
      | HL_CAS_118696_PeriodicIndiv01  | HL          | DDE              |
    @PeriodicCharge @Disbursal
    Examples:
      | LogicalID                      | ProductType | ApplicationStage |
      | PL_CAS_118696_PeriodicIndiv03  | PL          | Disbursal        |
      | MAL_CAS_118696_PeriodicIndiv03 | MAL         | Disbursal        |
      | HL_CAS_118696_PeriodicIndiv03  | HL          | Disbursal        |


   #PQM-05_CAS-118696
  Scenario Outline: ACAUTOCAS-21155:Application Charge Details modal opened successfully at <ApplicationStage> for <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>"
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user reads data from the excel file "charges.xlsx" under sheet "periodic_charges" and row 0
    When user clicks on charge details for "<chargeType>" in charge grid at "<ApplicationStage>"
    Then Application Charge Details modal opened successfully for "<chargeType>" charge
    @PeriodicCharge @DDE
    Examples:
      | LogicalID                      | ProductType | chargeType | ApplicationStage |
      | PL_CAS_118696_PeriodicIndiv01  | PL          | Periodic   | DDE              |
      | MAL_CAS_118696_PeriodicIndiv01 | MAL         | Periodic   | DDE              |
      | HL_CAS_118696_PeriodicIndiv01  | HL          | Periodic   | DDE              |
      | PL_CAS_118696_PeriodicIndiv03  | PL          | Periodic   | DDE              |
      | MAL_CAS_118696_PeriodicIndiv03 | MAL         | Periodic   | DDE              |
      | HL_CAS_118696_PeriodicIndiv03  | HL          | Periodic   | DDE              |
    @PeriodicCharge @Disbursal
    Examples:
      | LogicalID                      | ProductType | chargeType | ApplicationStage |
      | PL_CAS_118696_PeriodicIndiv03  | PL          | Periodic   | Disbursal        |
      | MAL_CAS_118696_PeriodicIndiv03 | MAL         | Periodic   | Disbursal        |
      | HL_CAS_118696_PeriodicIndiv03  | HL          | Periodic   | Disbursal        |
      | PL_CAS_118696_PeriodicIndiv04  | PL          | Periodic   | Disbursal        |
      | MAL_CAS_118696_PeriodicIndiv04 | MAL         | Periodic   | Disbursal        |
      | HL_CAS_118696_PeriodicIndiv04  | HL          | Periodic   | Disbursal        |


    #PQM-05_CAS-118696
  Scenario Outline: ACAUTOCAS-21156: Validate <chargeType> charge start date is getting automatically picked from the interest start date at <ApplicationStage> for <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>"
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    When user reads data from the excel file "charges.xlsx" under sheet "periodic_charges" and row 0
    Then periodic charge start date should be same as the interest start date
    @PeriodicCharge @DDE
    Examples:
      | LogicalID                      | ProductType | chargeType | ApplicantType | ApplicationStage | Category | Key |
      | PL_CAS_118696_PeriodicIndiv01  | PL          | Periodic   | indiv         | DDE              |          |     |
      | MAL_CAS_118696_PeriodicIndiv01 | MAL         | Periodic   | indiv         | DDE              |          |     |
      | HL_CAS_118696_PeriodicIndiv01  | HL          | Periodic   | indiv         | DDE              |          |     |
      | PL_CAS_118696_PeriodicIndiv03  | PL          | Periodic   | indiv         | DDE              |          |     |
      | MAL_CAS_118696_PeriodicIndiv03 | MAL         | Periodic   | indiv         | DDE              |          |     |
      | HL_CAS_118696_PeriodicIndiv03  | HL          | Periodic   | indiv         | DDE              |          |     |
    @PeriodicCharge @Disbursal
    Examples:
      | LogicalID                      | ProductType | chargeType | ApplicantType | ApplicationStage | Category | Key |
      | PL_CAS_118696_PeriodicIndiv03  | PL          | Periodic   | indiv         | Disbursal        |          |     |
      | MAL_CAS_118696_PeriodicIndiv03 | MAL         | Periodic   | indiv         | Disbursal        |          |     |
      | HL_CAS_118696_PeriodicIndiv03  | HL          | Periodic   | indiv         | Disbursal        |          |     |
      | PL_CAS_118696_PeriodicIndiv04  | PL          | Periodic   | indiv         | Disbursal        |          |     |
      | MAL_CAS_118696_PeriodicIndiv04 | MAL         | Periodic   | indiv         | Disbursal        |          |     |
      | HL_CAS_118696_PeriodicIndiv04  | HL          | Periodic   | indiv         | Disbursal        |          |     |


   #PQM-08_CAS-118696
  Scenario Outline: ACAUTOCAS-21157:Update <chargeType> charge End date in Application Charge Details modal at <ApplicationStage> for <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>"
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    When user updates charge end date in Application Charge Details modal
    And user submits the changes in Application Charge Details modal
    Then user submits the changes in Application Charge Details modal successfully
    @PeriodicCharge @DDE
    Examples:
      | LogicalID                      | ProductType | chargeType | ApplicantType | ApplicationStage | Category | Key |
      | PL_CAS_118696_PeriodicIndiv01  | PL          | Periodic   | indiv         | DDE              |          |     |
      | MAL_CAS_118696_PeriodicIndiv01 | MAL         | Periodic   | indiv         | DDE              |          |     |
      | HL_CAS_118696_PeriodicIndiv01  | HL          | Periodic   | indiv         | DDE              |          |     |
      | PL_CAS_118696_PeriodicIndiv03  | PL          | Periodic   | indiv         | DDE              |          |     |
      | MAL_CAS_118696_PeriodicIndiv03 | MAL         | Periodic   | indiv         | DDE              |          |     |
      | HL_CAS_118696_PeriodicIndiv03  | HL          | Periodic   | indiv         | DDE              |          |     |
    @PeriodicCharge @Disbursal
    Examples:
      | LogicalID                      | ProductType | chargeType | ApplicantType | ApplicationStage | Category | Key |
      | PL_CAS_118696_PeriodicIndiv03  | PL          | Periodic   | indiv         | Disbursal        |          |     |
      | MAL_CAS_118696_PeriodicIndiv03 | MAL         | Periodic   | indiv         | Disbursal        |          |     |
      | HL_CAS_118696_PeriodicIndiv03  | HL          | Periodic   | indiv         | Disbursal        |          |     |
      | PL_CAS_118696_PeriodicIndiv04  | PL          | Periodic   | indiv         | Disbursal        |          |     |
      | MAL_CAS_118696_PeriodicIndiv04 | MAL         | Periodic   | indiv         | Disbursal        |          |     |
      | HL_CAS_118696_PeriodicIndiv04  | HL          | Periodic   | indiv         | Disbursal        |          |     |


   #PQM-06_CAS-118696
  Scenario Outline: ACAUTOCAS-21158:Validate saving changes of Application Charge Details modal at <ApplicationStage> for <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>"
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    When user save changes of Application Charge Details modal at "<ApplicationStage>"
    Then changes of Application Charge Details modal should be saved successfully
    @PeriodicCharge @DDE
    Examples:
      | LogicalID                      | ProductType | chargeType | ApplicantType | ApplicationStage | Category | Key |
      | PL_CAS_118696_PeriodicIndiv01  | PL          | Periodic   | indiv         | DDE              |          |     |
      | MAL_CAS_118696_PeriodicIndiv01 | MAL         | Periodic   | indiv         | DDE              |          |     |
      | HL_CAS_118696_PeriodicIndiv01  | HL          | Periodic   | indiv         | DDE              |          |     |
      | PL_CAS_118696_PeriodicIndiv03  | PL          | Periodic   | indiv         | DDE              |          |     |
      | MAL_CAS_118696_PeriodicIndiv03 | MAL         | Periodic   | indiv         | DDE              |          |     |
      | HL_CAS_118696_PeriodicIndiv03  | HL          | Periodic   | indiv         | DDE              |          |     |
    @PeriodicCharge @Disbursal
    Examples:
      | LogicalID                      | ProductType | chargeType | ApplicantType | ApplicationStage | Category | Key |
      | PL_CAS_118696_PeriodicIndiv03  | PL          | Periodic   | indiv         | Disbursal        |          |     |
      | MAL_CAS_118696_PeriodicIndiv03 | MAL         | Periodic   | indiv         | Disbursal        |          |     |
      | HL_CAS_118696_PeriodicIndiv03  | HL          | Periodic   | indiv         | Disbursal        |          |     |
      | PL_CAS_118696_PeriodicIndiv04  | PL          | Periodic   | indiv         | Disbursal        |          |     |
      | MAL_CAS_118696_PeriodicIndiv04 | MAL         | Periodic   | indiv         | Disbursal        |          |     |
      | HL_CAS_118696_PeriodicIndiv04  | HL          | Periodic   | indiv         | Disbursal        |          |     |


    #PQM-06_CAS-118696
    #PQM-10_CAS-118696
  Scenario Outline: ACAUTOCAS-21159: Validate <chargeType> Charge Frequency cannot be less than loan tenure type at <ApplicationStage> for <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>"
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user reads data from the excel file "charges.xlsx" under sheet "periodic_charges" and row 0
    When user clicks on move to next stage for error message validation
    Then user should get proper validation that Periodic Charge Frequency cannot be less than loan tenure type
    @PeriodicCharge @DDE
    Examples:
      | LogicalID                      | ProductType | chargeType | ApplicantType | ApplicationStage | Category | Key |
      | PL_CAS_118696_PeriodicIndiv01  | PL          | Periodic   | indiv         | DDE              |          |     |
      | MAL_CAS_118696_PeriodicIndiv01 | MAL         | Periodic   | indiv         | DDE              |          |     |
      | HL_CAS_118696_PeriodicIndiv01  | HL          | Periodic   | indiv         | DDE              |          |     |
    @PeriodicCharge @Disbursal
    Examples:
      | LogicalID                      | ProductType | chargeType | ApplicantType | ApplicationStage | Category | Key |
      | PL_CAS_118696_PeriodicIndiv03  | PL          | Periodic   | indiv         | Disbursal        |          |     |
      | MAL_CAS_118696_PeriodicIndiv03 | MAL         | Periodic   | indiv         | Disbursal        |          |     |
      | HL_CAS_118696_PeriodicIndiv03  | HL          | Periodic   | indiv         | Disbursal        |          |     |


   #PQM-04_CAS-118696
  Scenario Outline: ACAUTOCAS-21377: Disbursal initiation at disbursal stage in case of Charges for <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>"
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user opens an application of "Disbursal" stage present in context from application grid
    When user moves to main tab of "disbursal"
    And user reads data from the excel file "<DisbursalWB>" under sheet "<DisbursalSheet>" and row <Disbursal_rowNum>
    And user open repayment instrument details
    And user deletes all existing repayment instrument details
    And user save Repayment Instrument Detail Grid
    And user moves to main tab of "disbursal"
    And user fills disbursal Checklist
    And user opens payee details on disbursal
    And user selects payment mode as "<PaymentMode>"
    And user fills payment details of "<PaymentMode>"
    And user saves the disbursal
    And user initiate disbursal
    Then Application should move to "<FinalStage>" Stage
    @PeriodicCharge @Disbursal
    Examples:
      | LogicalID                      | ProductType | FinalStage       | DisbursalWB    | DisbursalSheet  | Disbursal_rowNum | PaymentMode |
      | PL_CAS_118696_PeriodicIndiv04  | PL          | Disbursal Author | disbursal.xlsx | disbursal_entry | 49               | Cheque      |
      | HL_CAS_118696_PeriodicIndiv04  | MAL         | Disbursal Author | disbursal.xlsx | disbursal_entry | 49               | Cheque      |
      | MAL_CAS_118696_PeriodicIndiv04 | HL          | Disbursal Author | disbursal.xlsx | disbursal_entry | 49               | Cheque      |
