@Epic-Secondary_Collateral
@AuthoredBy-rsurya.kumar
@ReviewedBy-None
@Release2
@Reconciled
@ReviewedByDEV
  @ReviewedSecCollateral

#${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal Initiation"]}
#${ApplicantType:["indiv", "nonIndiv"]}
Feature: Addition of Commercial Vehicle Negative Cases

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0

 #${ProductType:["PF","EDU"]}
  @ImplementedBy-ankit.yadav
    @Perishable
    #PF(Secured),EDU(Scecured)
  Scenario Outline: ACAUTOCAS-3623:  user moves to the next stage without collateral for Commercial Vehicle of "<ProductType>" application at "<ApplicationStage>" stage
    And user opens an application of "<ProductType>" product type as "<applicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    When user moves to the next stage
    Then user should get error message in collateral screen
    Examples:
      | ApplicationStage   | applicantType | Category | Key | ProductType   |
      | <ApplicationStage> | indiv         |          |     | <ProductType> |

  @ImplementedBy-ankit.yadav
  Scenario Outline: ACAUTOCAS-2901:  User enters mandatory information for Commercial Vehicle and saves without checking duplicates of "<ProductType>" application at "<ApplicationStage>" stage
    And user opens an application of "<ProductType>" product type as "<applicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_vehicleDetails>" and row <Collateral_vehicleDetails_rowNum>
    When User enters all mandatory information
    And enters unique Chassis number
    And enters unique Engine number
    And enters unique Registration number
    And user saves the Collateral Details
    And user gets a proper notification
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | ApplicationStage   | applicantType | Category | Key | ProductType   |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 97                               | <ApplicationStage> | indiv         |          |     | <ProductType> |


  @Release
  @ImplementedBy-rishabh.sachan
  Scenario Outline: ACAUTOCAS-2902:  User attaches a duplicate collateral attached to same application of <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_assetDetails>" and row <Collateral_assetDetails_rowNum>
    And user selects collateral type along with collateral sub type
    And user fills mandatory fields for "<CollateralSubType>" collateral
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    And user add new collateral details
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_assetDetails>" and row <Collateral_assetDetails_rowNum2>
    When user selects collateral type along with collateral sub type
    And user fills mandatory fields for "<CollateralSubType>" collateral
    And checks for duplicate collateral
    And user views the duplicate collateral
    And user select the "<CollateralSubType>" collateral from dedupe result which is already attached to the application
    And user saves selected dedupe collateral
    Then user gets a notification message
    Examples:
      | CollateralWB    | Collateral_assetDetails | Collateral_assetDetails_rowNum | Collateral_assetDetails_rowNum2 | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType  |
      | collateral.xlsx | asset_details           | 80                             | 81                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Commercial Vehicle |
      | collateral.xlsx | asset_details           | 80                             | 109                             | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Commercial Vehicle |
      | collateral.xlsx | asset_details           | 80                             | 110                             | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Commercial Vehicle |
      | collateral.xlsx | asset_details           | 80                             | 111                             | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Commercial Vehicle |
      | collateral.xlsx | asset_details           | 80                             | 112                             | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Commercial Vehicle |
      | collateral.xlsx | asset_details           | 80                             | 113                             | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Commercial Vehicle |
      | collateral.xlsx | asset_details           | 80                             | 114                             | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Commercial Vehicle |


  @ImplementedBy-priyanshu.kashyap
  Scenario Outline: ACAUTOCAS-2903:  User modifies Chassis number after running dedupe and attempts to save of "<ProductType>" application at "<ApplicationStage>" stage
    And user opens an application of "<ProductType>" product type as "<applicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user selects collateral type along with collateral sub type
    And user fills mandatory fields for given collateral sub type
    And user checks the duplicates on collateral dedupe check
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_vehicleDetails>" and row <Collateral_vehicleDetails_rowNum1>
    And user modifies the Chassis Number
    When user saves the Collateral Details
    Then user gets a proper notification message
    @LoggedBug
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails |Collateral_vehicleDetails_rowNum1 | ApplicationStage   | applicantType | Category | Key | ProductType   |
      | collateral.xlsx | default            | 2                         | vehicle_details           |99                                | <ApplicationStage> | indiv         |          |     | <ProductType> |

  @ImplementedBy-priyanshu.kashyap
  Scenario Outline: ACAUTOCAS-2904:  User modifies Registration number after running dedupe and attempts to save of "<ProductType>" application at "<ApplicationStage>" stage
    And user opens an application of "<ProductType>" product type as "<applicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user selects collateral type along with collateral sub type
    And user fills mandatory fields for given collateral sub type
    And user checks the duplicates on collateral dedupe check
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_vehicleDetails>" and row <Collateral_vehicleDetails_rowNum1>
    And user modifies the Registration number
    When user saves the Collateral Details
    Then user gets a proper notification message
    @LoggedBug
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum1 | ApplicationStage   | applicantType | Category | Key | ProductType   |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 104                               | <ApplicationStage> | indiv         |          |     | <ProductType> |

  @ImplementedBy-priyanshu.kashyap
  Scenario Outline: ACAUTOCAS-2905:  User modifies Engine number after running dedupe and attempts to save of "<ProductType>" application at "<ApplicationStage>" stage
    And user opens an application of "<ProductType>" product type as "<applicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user selects collateral type along with collateral sub type
    And user fills mandatory fields for given collateral sub type
    And user checks the duplicates on collateral dedupe check
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_vehicleDetails>" and row <Collateral_vehicleDetails_rowNum1>
    And user modifies the Engine number
    When user saves the Collateral Details
    Then user gets a proper notification message
    @LoggedBug
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum1 | ApplicationStage   | applicantType | Category | Key | ProductType   |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 109                               | <ApplicationStage> | indiv         |          |     | <ProductType> |

  @ImplementedBy-aditya.tomar
  Scenario Outline: ACAUTOCAS-2906:  User modifies Engine and Registration number after running dedupe and attempts to save of "<ProductType>" application at "<ApplicationStage>" stage
    And user opens an application of "<ProductType>" product type as "<applicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user selects collateral type along with collateral sub type
    And user fills mandatory fields for given collateral sub type
    And user checks the duplicates on collateral dedupe check
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_vehicleDetails>" and row <Collateral_vehicleDetails_rowNum1>
    And user modifies the Engine and Registration number
    When user saves the Collateral Details
    Then User should get message "Following dedupe parameter are changed. Engine Number, Registration number. Please run dedupe again."
    @LoggedBug
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails |Collateral_vehicleDetails_rowNum1 | ApplicationStage   | applicantType | Category | Key | ProductType   |
      | collateral.xlsx | default            | 0                         | vehicle_details           |38                                | <ApplicationStage> | indiv         |          |     | <ProductType> |

  @ImplementedBy-aditya.tomar
  Scenario Outline: ACAUTOCAS-2907:  User modifies Chassis and Registration number after running dedupe and attempts to save of "<ProductType>" application at "<ApplicationStage>" stage
    And user opens an application of "<ProductType>" product type as "<applicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user selects collateral type along with collateral sub type
    And user fills mandatory fields for given collateral sub type
    And user checks the duplicates on collateral dedupe check
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_vehicleDetails>" and row <Collateral_vehicleDetails_rowNum1>
    And user modifies the Chassis and Registration number
    When user saves the Collateral Details
    Then User should get message "Following dedupe parameter are changed. Chassis Number, Registration number. Please run dedupe again."
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails |Collateral_vehicleDetails_rowNum1 | ApplicationStage   | applicantType | Category | Key | ProductType   |
      | collateral.xlsx | default            | 2                         | vehicle_details           |38                                | <ApplicationStage> | indiv         |          |     | <ProductType> |

  @ImplementedBy-priyanshu.kashyap
  Scenario Outline: ACAUTOCAS-2908:  User modifies Chassis and Engine number after running dedupe and attempts to save of "<ProductType>" application at "<ApplicationStage>" stage
    And user opens an application of "<ProductType>" product type as "<applicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user selects collateral type along with collateral sub type
    And user fills mandatory fields for given collateral sub type
    And user checks the duplicates on collateral dedupe check
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_vehicleDetails>" and row <Collateral_vehicleDetails_rowNum1>
    And user modifies the Chassis and Engine number
    When user saves the Collateral Details
    Then user gets a proper notification message
    @LoggedBug
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails |Collateral_vehicleDetails_rowNum1 | ApplicationStage   | applicantType | Category | Key | ProductType   |
      | collateral.xlsx | default            | 2                         | vehicle_details           |124                               | <ApplicationStage> | indiv         |          |     | <ProductType> |

  @ImplementedBy-priyanshu.kashyap
  Scenario Outline:ACAUTOCAS-4298: User modifies Registration, Chassis and Engine number after running dedupe and attempts to save of "<ProductType>" application at "<ApplicationStage>" stage
    And user opens an application of "<ProductType>" product type as "<applicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user selects collateral type along with collateral sub type
    And user fills mandatory fields for given collateral sub type
    And user checks the duplicates on collateral dedupe check
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_vehicleDetails>" and row <Collateral_vehicleDetails_rowNum1>
    And user modifies the Registration number Chassis number and Engine number in commercial vehicle
    And user fills Reason Section
    When user saves the Collateral Details
    Then user gets a proper notification message
    @LoggedBug
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails |Collateral_vehicleDetails_rowNum1 | ApplicationStage   | applicantType | Category | Key | ProductType   |
      | collateral.xlsx | default            | 2                         | vehicle_details           |129                               | <ApplicationStage> | indiv         |          |     | <ProductType> |

  @ImplementedBy-aman.verma
  Scenario Outline: ACAUTOCAS-2910:  User misses entering one or more mandatory information for Commercial Vehicle and saves of "<ProductType>" application at "<ApplicationStage>" stage
    And user opens an application of "<ProductType>" product type as "<applicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user selects collateral type along with collateral sub type
    When User enters all mandatory information except "<fieldname>"
    And User enters all information in vehicle details section
    And user checks the duplicates on collateral dedupe check
    And saves the data in collateral
    Then User should receive a proper failure message
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | fieldname         | ApplicationStage   | applicantType | Category | Key | ProductType   |
      | collateral.xlsx | default            | 346                       | Asset Category    | <ApplicationStage> | indiv         |          |     | <ProductType> |
      | collateral.xlsx | default            | 346                       | Manufacturer      | <ApplicationStage> | indiv         |          |     | <ProductType> |
      | collateral.xlsx | default            | 346                       | Asset Model       | <ApplicationStage> | indiv         |          |     | <ProductType> |
      | collateral.xlsx | default            | 346                       | Asset Variant     | <ApplicationStage> | indiv         |          |     | <ProductType> |
      | collateral.xlsx | default            | 346                       | Asset Series      | <ApplicationStage> | indiv         |          |     | <ProductType> |
      | collateral.xlsx | default            | 346                       | NVIC Code         | <ApplicationStage> | indiv         |          |     | <ProductType> |
      | collateral.xlsx | default            | 346                       | Registration Year | <ApplicationStage> | indiv         |          |     | <ProductType> |
      | collateral.xlsx | default            | 346                       | Asset Cost        | <ApplicationStage> | indiv         |          |     | <ProductType> |

  @ImplementedBy-aman.verma
  Scenario Outline: ACAUTOCAS-2911:  User entering a State RTO Code not belonging to the State as in Communication Address of "<ProductType>" application at "<ApplicationStage>" stage
    And user opens an application of "<ProductType>" product type as "<applicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_vehicleDetails>" and row <Collateral_vehicleDetails_rowNum>
    When User enter different state RTO number which is not belonging to the state as in communication address
    Then User should receive a proper warning message

    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | ApplicationStage   | applicantType | Category | Key | ProductType   |
      | collateral.xlsx | default            | 346                       | vehicle_details           | 134                              | <ApplicationStage> | indiv         |          |     | <ProductType> |
      | collateral.xlsx | default            | 346                       | vehicle_details           | 237                              | <ApplicationStage> | indiv         |          |     | <ProductType> |


  @ImplementedBy-aman.verma
  Scenario Outline: ACAUTOCAS-3624:  User entering a new Commercial Vehicle to the personal loan application and enters wrong State RTO Code of "<ProductType>" application at "<ApplicationStage>" stage
    And user opens an application of "<ProductType>" product type as "<applicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user selects collateral type along with collateral sub type
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_vehicleDetails>" and row <Collateral_vehicleDetails_rowNum>
    When User enter different state RTO number which is not belonging to the state as in communication address
    Then User should receive a warning message "State RTO code does not exist in any state"

    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | ApplicationStage   | applicantType | Category | Key | ProductType   |
      | collateral.xlsx | default            | 346                       | vehicle_details           | 135                              | <ApplicationStage> | indiv         |          |     | <ProductType> |
