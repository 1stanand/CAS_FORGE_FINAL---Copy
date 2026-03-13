@Epic-Secondary_Collateral
@AuthoredBy-rsurya.kumar
@ReviewedByDEV
@Reconciled
@ReviewedSecCollateral
@Release
#${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal Initiation"]}
#${CollateralSubType:["Insurance"]}

Feature: Addition of Insurance as Collateral - Positive Cases

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0

#${ProductType:["PF","EDU"]}
#PF(Secured),EDU(Scecured)
  @Perishable
    @ImplementedBy-akash.bansal
  Scenario Outline: ACAUTOCAS-2193: user moves to the next stage without collateral in <CollateralSubType> of <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    When user opens Collateral Page for adding new collateral
    And user moves to the next stage in collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_insuranceDetails>" and row <Collateral_insuranceDetails_rowNum>
    Then user should get error message without adding collateral
    Examples:
      | CollateralWB    | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType   | ApplicationStage   | key     | category | applicantType | CollateralSubType   |
      | collateral.xlsx | insurance_details           | 301                                | <ProductType> | <ApplicationStage> | nocolla |          | indiv         | <CollateralSubType> |


    @ImplementedBy-akash.bansal
  Scenario Outline: ACAUTOCAS-1301: Adding insurance as a collateral to fail in <CollateralSubType> of <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_insuranceDetails>" and row <Collateral_insuranceDetails_rowNum>
    And user selects collateral type along with collateral sub type
    When user enters all mandatory information for Insurance
    And user saves the data of collateral subtype
    Then User should receive a proper failure message
    Examples:
      | ProductType   | ApplicationStage   | key | category | applicantType | CollateralSubType   | CollateralWB    | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> | collateral.xlsx | insurance_details           | 302                                |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> | collateral.xlsx | insurance_details           | 303                                |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> | collateral.xlsx | insurance_details           | 304                                |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> | collateral.xlsx | insurance_details           | 305                                |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> | collateral.xlsx | insurance_details           | 306                                |


    @ImplementedBy-akash.bansal
  Scenario Outline: ACAUTOCAS-1302: Adding insurance as a collateral to dedupe collateral with message in <CollateralSubType> of <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_insuranceDetails>" and row <Collateral_insuranceDetails_rowNum>
    And user selects collateral type along with collateral sub type
    And user enters all mandatory information for Insurance
    When user click on checks for duplicates
    Then User should receive a proper failure message
    Examples:
      | ProductType   | ApplicationStage   | key | category | applicantType | CollateralSubType   | CollateralWB    | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> | collateral.xlsx | insurance_details           | 307                                |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> | collateral.xlsx | insurance_details           | 308                                |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> | collateral.xlsx | insurance_details           | 309                                |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> | collateral.xlsx | insurance_details           | 310                                |


    @ImplementedBy-akash.bansal
  Scenario Outline: ACAUTOCAS-1303: User modifies Policy number after running dedupe and attempts to save in <CollateralSubType> of <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_insuranceDetails>" and row <Collateral_insuranceDetails_rowNum>
    And user selects collateral type along with collateral sub type
    And user enters all mandatory information for Insurance
    And user checks the duplicates on dedupe check
    When user modifies the insurance details "<Field>"
    And user saves the data of collateral subtype
    Then User should receive a proper failure message
    Examples:
      | Field         | ProductType   | ApplicationStage   | key | category | applicantType | CollateralSubType   | CollateralWB    | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum |
      | Policy Number | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> | collateral.xlsx | insurance_details           | 311                                |


    @ImplementedBy-akash.bansal
  Scenario Outline: ACAUTOCAS-1304: User modifies Cover Note number after running dedupe and attempts to save in <CollateralSubType> of <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_insuranceDetails>" and row <Collateral_insuranceDetails_rowNum>
    And user selects collateral type along with collateral sub type
    And user enters all mandatory information for Insurance
    And user checks the duplicates on collateral dedupe check
    When user modifies the insurance details "<Field>"
    And user saves the data of collateral subtype
    Then collateral should saved successfully
    Examples:
      | Field             | ProductType   | ApplicationStage   | key | category | applicantType | CollateralSubType   | CollateralWB    | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum |
      | Cover Note number | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> | collateral.xlsx | insurance_details           | 312                                |

    @LoggedBug
    @ImplementedBy-akash.bansal
  Scenario Outline: ACAUTOCAS-1305: User modifies Policy and Cover Note number after running dedupe and attempts to save in <CollateralSubType> of <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_insuranceDetails>" and row <Collateral_insuranceDetails_rowNum>
    And user selects collateral type along with collateral sub type
    And user enters all mandatory information for Insurance
    And user checks the duplicates on dedupe check
    When user modifies the insurance details "<Field>"
    And user saves the data of collateral subtype
    Then User should receive a proper failure message
    Examples:
      | Field                               | ProductType   | ApplicationStage   | key | category | applicantType | CollateralSubType   | CollateralWB    | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum |
      | Policy number and Cover Note number | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> | collateral.xlsx | insurance_details           | 313                                |

#Mandatory Validation
    @ImplementedBy-akash.bansal
  Scenario Outline: ACAUTOCAS-1306: User misses entering one or more mandatory information for Insurance and saves in <CollateralSubType> of <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_insuranceDetails>" and row <Collateral_insuranceDetails_rowNum>
    And user selects collateral type along with collateral sub type
    When user misses entering "<MandatoryField>" mandatory fields for insurance
    And user checks the duplicates on dedupe check
    And user saves the data of collateral subtype
    Then user should receive a failure "<MandatoryField>" missing message
    Examples:
      | MandatoryField                               | ProductType   | ApplicationStage   | key | category | applicantType | CollateralSubType   | CollateralWB    | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum |
      | All Empty fields                             | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> | collateral.xlsx | insurance_details           | 314                                |
      | Policy Number                                | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> | collateral.xlsx | insurance_details           | 315                                |
      | Cover Note Number                            | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> | collateral.xlsx | insurance_details           | 316                                |
      | Cover Note Number, Cover Note Creation Date  | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> | collateral.xlsx | insurance_details           | 317                                |
      | Policy Holder Name                           | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> | collateral.xlsx | insurance_details           | 318                                |
      | Insurance Provider                           | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> | collateral.xlsx | insurance_details           | 319                                |
      | Policy Number, Policy Holder Name            | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> | collateral.xlsx | insurance_details           | 320                                |
      | Insurance Provider, Cover Note Number        | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> | collateral.xlsx | insurance_details           | 321                                |
      | Insurance Provider, Cover Note Creation Date | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> | collateral.xlsx | insurance_details           | 322                                |
      | Policy Holder Name, Insurance Provider       | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> | collateral.xlsx | insurance_details           | 323                                |
      | Policy Number, Cover Note Number             | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> | collateral.xlsx | insurance_details           | 325                                |
      | Policy Holder Name, Cover Note Number        | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> | collateral.xlsx | insurance_details           | 326                                |
      | Policy Number, Issue Date                    | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> | collateral.xlsx | insurance_details           | 327                                |
      | Insurance Provider, Issue date               | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> | collateral.xlsx | insurance_details           | 328                                |
      | Insurance Provider, Maturity date            | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> | collateral.xlsx | insurance_details           | 329                                |
      | Policy Holder Name, Issue date               | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> | collateral.xlsx | insurance_details           | 330                                |
      | Policy Number, Issue date                    | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> | collateral.xlsx | insurance_details           | 331                                |
      | Policy Number,Issue date, Maturity date      | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> | collateral.xlsx | insurance_details           | 332                                |
      | Policy Holder Name, Maturity date            | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> | collateral.xlsx | insurance_details           | 333                                |

    @LoggedBug
    Examples:
      | MandatoryField                                                            | ProductType   | ApplicationStage   | key | category | applicantType | CollateralSubType   | CollateralWB    | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum |
      | Policy Number, Insurance Provider                                         | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> | collateral.xlsx | insurance_details           | 324                                |
      | Policy Number, Insurance Provider, Maturity date                          | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> | collateral.xlsx | insurance_details           | 334                                |
      | Policy Number, Insurance Provider, Issue date                             | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> | collateral.xlsx | insurance_details           | 335                                |
      | Policy Number, Insurance Provider, Maturity date, Issue date              | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> | collateral.xlsx | insurance_details           | 336                                |
      | Policy Number, Insurance Provider,Maturity date                           | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> | collateral.xlsx | insurance_details           | 337                                |
      | Policy Number, Cover Note Number, Cover Note Creation Date, Maturity date | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> | collateral.xlsx | insurance_details           | 338                                |
      | Policy Number, Insurance Provider, Maturity date                          | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> | collateral.xlsx | insurance_details           | 339                                |
      | Policy Number, Insurance Provider, Issue date                             | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> | collateral.xlsx | insurance_details           | 340                                |

    @ImplementedBy-akash.bansal
  Scenario Outline: ACAUTOCAS-1302: Adding insurance as a collateral to check dedupe collateral with message in <CollateralSubType> of <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_insuranceDetails>" and row <Collateral_insuranceDetails_rowNum>
    And user selects collateral type along with collateral sub type
    And user enters all mandatory information for Insurance
    When user click on checks for duplicates
    Then user should receive a message saying some duplicates found
    Examples:
      | ProductType   | ApplicationStage   | key | category | applicantType | CollateralSubType   | CollateralWB    | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> | collateral.xlsx | insurance_details           | 341                                |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> | collateral.xlsx | insurance_details           | 342                                |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> | collateral.xlsx | insurance_details           | 343                                |

    @ImplementedBy-akash.bansal
  Scenario Outline: ACAUTOCAS-1308: Adding insurance as a collateral in <CollateralSubType> of <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_insuranceDetails>" and row <Collateral_insuranceDetails_rowNum>
    And user selects collateral type along with collateral sub type
    When user enters all mandatory information for Insurance
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    Then collateral should saved successfully
    Examples:
      | ProductType   | ApplicationStage   | key | category | applicantType | CollateralSubType   | CollateralWB    | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> | collateral.xlsx | insurance_details           | 344                                |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> | collateral.xlsx | insurance_details           | 345                                |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> | collateral.xlsx | insurance_details           | 346                                |

  @ImplementedBy-pallavi.singh
  #user able to attach insurance as collateral with new Global Collateral No
  Scenario Outline: ACAUTOCAS-1309:  Adding insurance as a collateral with new Global Collateral No
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "collateral.xlsx" under sheet "insurance_details" and row <Collateral_insuranceDetails_rowNum>
    And user selects collateral type along with collateral sub type
    And user enters all mandatory information for Insurance
    And user checks the duplicates on collateral dedupe check
    When user saves the data
    Then new collateral should be attached to the application with new "GlobalCollateralNo"
    #Ensure below data is not saved in collaterals already
    Examples:
      | ApplicationStage   | applicantType   | ProductType   | key | category | Collateral_insuranceDetails_rowNum |
      | <ApplicationStage> | <applicantType> | <ProductType> |     |          | 581                                |
      | <ApplicationStage> | <applicantType> | <ProductType> |     |          | 582                                |
      | <ApplicationStage> | <applicantType> | <ProductType> |     |          | 583                                |

    @ImplementedBy-akash.bansal
  Scenario Outline: ACAUTOCAS-1310: Insurance as collateral with nominee details in <CollateralSubType> of <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_insuranceDetails>" and row <Collateral_insuranceDetails_rowNum>
    And user selects collateral type along with collateral sub type
    And user enters all mandatory information for Insurance
    And user enters all nominee details
    And user closes duplicate check result box after checking the duplicates
    When saves collateral data
    Then collateral should saved successfully
    Examples:
      | ProductType   | ApplicationStage   | key | category | applicantType | CollateralSubType   | CollateralWB    | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> | collateral.xlsx | insurance_details           | 351                                |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> | collateral.xlsx | insurance_details           | 352                                |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> | collateral.xlsx | insurance_details           | 353                                |
      | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> | collateral.xlsx | insurance_details           | 354                                |

  @ImplementedBy-pallavi.singh
  Scenario Outline: ACAUTOCAS-1311:  user finds duplicate collateral for non-unique policy number
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "collateral.xlsx" under sheet "insurance_details" and row <Collateral_insuranceDetails_rowNum>
    And user selects collateral type along with collateral sub type
    And user enters all mandatory information for Insurance
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    And user clicks on plus icon to add new collateral
    And user reads data from the excel file "collateral.xlsx" under sheet "insurance_details" and row <Collateral_insuranceDetails_rowNum>
    And user selects collateral type along with collateral sub type
    And user enters mandatory information for checking dedupe for insurance
    When user checks for duplicate collateral
    Then user should receive a message saying "<SaveMessage>"
    Examples:
      | ApplicationStage   | applicantType   | ProductType   | key | category | Collateral_insuranceDetails_rowNum | SaveMessage        |
      | <ApplicationStage> | <applicantType> | <ProductType> |     |          | 584                                | 1 duplicates found |
      | <ApplicationStage> | <applicantType> | <ProductType> |     |          | 585                                | 1 duplicates found |
      | <ApplicationStage> | <applicantType> | <ProductType> |     |          | 586                                | 1 duplicates found |

  @ImplementedBy-pallavi.singh
  Scenario Outline: ACAUTOCAS-1312:  user views duplicate collateral for non-unique policy number
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "collateral.xlsx" under sheet "insurance_details" and row <Collateral_insuranceDetails_rowNum>
    And user selects collateral type along with collateral sub type
    And user enters all mandatory information for Insurance
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    And user clicks on plus icon to add new collateral
    And user reads data from the excel file "collateral.xlsx" under sheet "insurance_details" and row <Collateral_insuranceDetails_rowNum>
    And user selects collateral type along with collateral sub type
    And user enters mandatory information for checking dedupe for insurance
    When user checks for duplicate collateral
    And user gets a message saying some duplicates found
    Then User should be able to view the duplicates
    Examples:
      | ApplicationStage   | applicantType   | ProductType   | key | category | Collateral_insuranceDetails_rowNum |
      | <ApplicationStage> | <applicantType> | <ProductType> |     |          | 584                                |
      | <ApplicationStage> | <applicantType> | <ProductType> |     |          | 585                                |
      | <ApplicationStage> | <applicantType> | <ProductType> |     |          | 586                                |

  #user should not be able to attach an existing collateral to the same application
  #This is an issue and should get simulated
  @ImplementedBy-pallavi.singh
  Scenario Outline: ACAUTOCAS-1313:  user views and attaches an existing collateral to the same application Case-1
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "collateral.xlsx" under sheet "insurance_details" and row 584
    And user selects collateral type along with collateral sub type
    And user enters all mandatory information for Insurance
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    And user clicks on plus icon to add new collateral
    And user reads data from the excel file "collateral.xlsx" under sheet "insurance_details" and row 584
    And user selects collateral type along with collateral sub type
    And user enters mandatory information for checking dedupe for insurance
    And user checks for duplicate collateral
    And user views the duplicate collateral
    And user select the "Insurance" collateral from dedupe result which is already attached to the application
    When user saves selected dedupe collateral
    Then user gets a message saying "This collateral is either not applicable or already mapped with this application."
    Examples:
      | ApplicationStage   | applicantType   | ProductType   | key | category |
      | <ApplicationStage> | <applicantType> | <ProductType> |     |          |


  #user should not be able to attach an existing collateral to the same application
  #This is an issue and should get simulated
  @ImplementedBy-pallavi.singh
  Scenario Outline: ACAUTOCAS-1314:  user views and attaches an existing collateral to the same application Case-2
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "collateral.xlsx" under sheet "insurance_details" and row 585
    And user selects collateral type along with collateral sub type
    And user enters all mandatory information for Insurance
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    And user clicks on plus icon to add new collateral
    And user reads data from the excel file "collateral.xlsx" under sheet "insurance_details" and row 585
    And user selects collateral type along with collateral sub type
    And user enters mandatory information for checking dedupe for insurance
    And user checks for duplicate collateral
    And user views the duplicate collateral
    And user select the "Insurance" collateral from dedupe result which is already attached to the application
    When user saves selected dedupe collateral
    Then user gets a message saying "This collateral is either not applicable or already mapped with this application."
    Examples:
      | ApplicationStage   | applicantType   | ProductType   | key | category |
      | <ApplicationStage> | <applicantType> | <ProductType> |     |          |

  #user should not be able to attach an existing collateral to the same application
  #This is an issue and should get simulated
  @ImplementedBy-pallavi.singh
  Scenario Outline: ACAUTOCAS-1315:  user views and attaches an existing collateral to the same application Case-3
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "collateral.xlsx" under sheet "insurance_details" and row 586
    And user selects collateral type along with collateral sub type
    And user enters all mandatory information for Insurance
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    And user clicks on plus icon to add new collateral
    And user reads data from the excel file "collateral.xlsx" under sheet "insurance_details" and row 586
    And user selects collateral type along with collateral sub type
    And user enters mandatory information for checking dedupe for insurance
    And user checks for duplicate collateral
    And user views the duplicate collateral
    And user select the "Insurance" collateral from dedupe result which is already attached to the application
    When user saves selected dedupe collateral
    Then user gets a message saying "This collateral is either not applicable or already mapped with this application."
    Examples:
      | ApplicationStage   | applicantType   | ProductType   | key | category |
      | <ApplicationStage> | <applicantType> | <ProductType> |     |          |

#user should be able to attach an existing collateral to a different application
  @ImplementedBy-pallavi.singh
  Scenario Outline: ACAUTOCAS-1316:  user views and attaches an existing collateral to a different application Case-1
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "collateral.xlsx" under sheet "insurance_details" and row 581
    And user selects collateral type along with collateral sub type
    And user enters all mandatory information for Insurance
    And user checks the duplicates on collateral dedupe check
    And user clicks on save collateral to save CMS data
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "collateral.xlsx" under sheet "insurance_details" and row 581
    And user selects collateral type along with collateral sub type
    And user enters mandatory information for checking dedupe for insurance
    And checks for duplicate collateral
    And user views the duplicate collateral
    And user select the "Insurance" collateral from dedupe result which is not attached to the application
    When user saves selected dedupe collateral
    Then user is able to save data successfully with existing GlobalCollateralNo
    Examples:
      | ApplicationStage   | applicantType   | ProductType   | key | category |
      | <ApplicationStage> | <applicantType> | <ProductType> |     |          |

  @ImplementedBy-pallavi.singh
  Scenario Outline: ACAUTOCAS-1317:  user views and attaches an existing collateral to a different application Case-2
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "collateral.xlsx" under sheet "insurance_details" and row 585
    And user selects collateral type along with collateral sub type
    And user enters all mandatory information for Insurance
    And user checks the duplicates on collateral dedupe check
    And user clicks on save collateral to save CMS data
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "collateral.xlsx" under sheet "insurance_details" and row 585
    And user selects collateral type along with collateral sub type
    And user enters mandatory information for checking dedupe for insurance
    And checks for duplicate collateral
    And user views the duplicate collateral
    And user select the "Insurance" collateral from dedupe result which is not attached to the application
    When user saves selected dedupe collateral
    Then user is able to save data successfully with existing GlobalCollateralNo
    Examples:
      | ApplicationStage   | applicantType   | ProductType   | key | category |
      | <ApplicationStage> | <applicantType> | <ProductType> |     |          |

  @ImplementedBy-pallavi.singh
  Scenario Outline: ACAUTOCAS-1318:  user views and attaches an existing collateral to a different application Case-3
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "collateral.xlsx" under sheet "insurance_details" and row 586
    And user selects collateral type along with collateral sub type
    And user enters all mandatory information for Insurance
    And user checks the duplicates on collateral dedupe check
    And user clicks on save collateral to save CMS data
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "collateral.xlsx" under sheet "insurance_details" and row 586
    And user selects collateral type along with collateral sub type
    And user enters mandatory information for checking dedupe for insurance
    And checks for duplicate collateral
    And user views the duplicate collateral
    And user select the "Insurance" collateral from dedupe result which is not attached to the application
    When user saves selected dedupe collateral
    Then user is able to save data successfully with existing GlobalCollateralNo
    Examples:
      | ApplicationStage   | applicantType   | ProductType   | key | category |
      | <ApplicationStage> | <applicantType> | <ProductType> |     |          |


  @ImplementedBy-pallavi.singh
  Scenario Outline: ACAUTOCAS-1319:  Capture Insurance as a collateral against an application with create another after this one
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "collateral.xlsx" under sheet "insurance_details" and row 581
    And user selects collateral type along with collateral sub type
    And user enters all mandatory information for Insurance
    And user selects create another after this one option
    And user checks the duplicates on collateral dedupe check
    When user saves the data
    And user gets saved successfully message
    Then CollateralPage remains available to create another collateral
    Examples:
      | ApplicationStage   | applicantType   | ProductType   | key | category |
      | <ApplicationStage> | <applicantType> | <ProductType> |     |          |

  @ImplementedBy-pallavi.singh
  Scenario Outline: ACAUTOCAS-3110:  CollateralPage Nominee Address Taluka and Village Validation 1
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "collateral.xlsx" under sheet "insurance_details" and row 581
    And user selects collateral type along with collateral sub type
    And user enters all mandatory information for Insurance
    And user opens address details in nominee details
    And user reads data from the excel file "collateral.xlsx" under sheet "nominee_address" and row 12
    And user fills nominee address detail
    When user opens address details in nominee details
    Then the fields Taluka and Village should accept them as if they are defined in masters
    Examples:
      | ProductType   | ApplicationStage   | key | category | applicantType   |
      | <ProductType> | <ApplicationStage> |     |          | <applicantType> |

  @ImplementedBy-pallavi.singh
  Scenario Outline: ACAUTOCAS-3111:  CollateralPage Guarantor Address Taluka and Village Validation 2
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "collateral.xlsx" under sheet "insurance_details" and row 581
    And user selects collateral type along with collateral sub type
    And user enters all mandatory information for Insurance
    And user opens address details in nominee details
    And user reads data from the excel file "collateral.xlsx" under sheet "nominee_address" and row 13
    When user fills nominee address detail for village and taluka validation without save
    Then the fields Taluka and Village should accept them as if they are not defined in masters
    #Field should populate a message saying No Data Found
    Examples:
      | ProductType   | ApplicationStage   | key | category | applicantType   |
      | <ProductType> | <ApplicationStage> |     |          | <applicantType> |


# ${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","CC","LAP","CL"]}
# ${ApplicationStage:["DDE","Credit Approval"]}
###Squash:137607
###Story:CAS-23473
  @ImplementedBy-pallavi.singh
#FeatureID-ACAUTOCAS-238,ACAUTOCAS-2
  Scenario Outline: ACAUTOCAS-16839: user adds multiple collateral to "<ProductType>" application at "<ApplicationStage>" stage with sub type as "Insurance"
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page on "<ApplicationStage>" without adding New Collateral
    When user adds collateral details with data from:
      | collateral.xlsx | insurance_details | 581 |
      | collateral.xlsx | insurance_details | 582 |
    Then collateral should saved successfully
    Examples:
      | ProductType   | ApplicationStage   | applicantType   | category | key |
      | <ProductType> | <ApplicationStage> | <applicantType> |          |     |

# ${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","CC","LAP","CL"]}
# ${ApplicationStage:["DDE","Credit Approval","Disbursal Initiation"]}
###Squash:137607
###Story:CAS-23473
#FeatureID-ACAUTOCAS-238,ACAUTOCAS-2
  @ImplementedBy-pallavi.singh
  Scenario Outline: ACAUTOCAS-16840: user views multiple collateral attached to "<ProductType>" application at "<ApplicationStage>" stage with sub type as "Insurance"
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user open collateral page of "<ApplicationStage>" stage
    When user fills mandatory fields of collateral details to attach collateral from the excel file "<CollateralWB>":
      | SourceSheet       | SourceSheetRow | CollSubType |
      | insurance_details | 587            | Insurance   |
      | insurance_details | 588            | Insurance   |
      | insurance_details | 589            | Insurance   |
      | insurance_details | 590            | Insurance   |
      | insurance_details | 591            | Insurance   |
    Then user should be able to reconcile the data for below mentioned collaterals successfully from the excel file "<CollateralWB>":
      | SourceSheet       | SourceSheetRow | CollSubType |
      | insurance_details | 587            | Insurance   |
      | insurance_details | 588            | Insurance   |
      | insurance_details | 589            | Insurance   |
      | insurance_details | 590            | Insurance   |
      | insurance_details | 591            | Insurance   |
    Examples:
      | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralWB    |
      | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | collateral.xlsx |

# ${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","CC","LAP","CL"]}
# ${ApplicationStage:["DDE","Credit Approval","Disbursal Initiation"]}
###Squash:137607
###Story:CAS-23473
#FeatureID-ACAUTOCAS-238,ACAUTOCAS-2
  @ImplementedBy-pallavi.singh
  Scenario Outline: ACAUTOCAS-16841: user views multiple collateral attached to "<ProductType>" application at "<ApplicationStage>" stage with sub type as "Insurance" at Enquiry
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user open collateral page of "<ApplicationStage>" stage
    And user fills mandatory fields of collateral details to attach collateral from the excel file "<CollateralWB>":
      | SourceSheet       | SourceSheetRow | CollSubType |
      | insurance_details | 587            | Insurance   |
      | insurance_details | 588            | Insurance   |
      | insurance_details | 589            | Insurance   |
      | insurance_details | 590            | Insurance   |
      | insurance_details | 591            | Insurance   |
    And user opens application from enquiry menu
    When user opens Collateral Page for viewing attached collaterals at "<ApplicationStage>"
    Then user should be able to reconcile the data for below mentioned collaterals successfully from the excel file "<CollateralWB>":
      | SourceSheet       | SourceSheetRow | CollSubType |
      | insurance_details | 587            | Insurance   |
      | insurance_details | 588            | Insurance   |
      | insurance_details | 589            | Insurance   |
      | insurance_details | 590            | Insurance   |
      | insurance_details | 591            | Insurance   |
    Examples:
      | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralWB    |
      | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | collateral.xlsx |
