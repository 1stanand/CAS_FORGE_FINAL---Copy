@Epic-CPR
@PQMStory
@AuthoredBy-aryan.jain
@ImplementedBy-aryan.jain
@Islamic

@Perishable
@CoolOffStagePostApproval
@ReleaseIslamicCPRConfig1
 # ${ApplicantType:["indiv"]}
Feature: Cooling Off Period Master for Post Approval

  #Prerequiste Update configuration set property_value='POST_APPROVAL' where property_key='config.coolOff.stage';

  Background:
    Given user is on CAS Login Page
    And user logged in "CAS" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0

    # PQM-14_CAS-197552
  #FeatureID-ACAUTOCAS-15335
  Scenario Outline: ACAUTOCAS-15687:Verify entry in activity section at Post Approval of <ProductType> for cooling off period
    And user creates a cooling off applicable application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from web service
    When user open application manager
    And user search application using application number for "<FinalStage>"
    And user reads data from the excel file "<DisbursalWB>" under sheet "<Disbursal_coolingOffPeriod>" and row <Disbursal_coolingOffPeriod_rowNum>
    And user check Activity section
    Then Hold success message gets stamped in Activity
   # ${ProductType : ["PF","MAL","HL","LAP","CV","MHL","FE","EDU","AGRL","JLG","CEQ","MULF","BD","CashCred","BL","LC","BG"]}
   # ${ApplicationStage:["Post Approval"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key        | FinalStage         | DisbursalWB    | Disbursal_coolingOffPeriod | Disbursal_coolingOffPeriod_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          | coolingoff | <ApplicationStage> | disbursal.xlsx | cooling_off_period         | 0                                 |

    # ${ProductType:["IPF"]}
    # ${Category:["bonds","metals"]}
    #${ApplicationStage:["Post Approval"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | Key                       | FinalStage         | DisbursalWB    | Disbursal_coolingOffPeriod | Disbursal_coolingOffPeriod_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> | coolingoff                | <ApplicationStage> | disbursal.xlsx | cooling_off_period         | 0                                 |
      | IPF           | indiv           | Reconsideration    | Shares     | isPostApproval&coolingoff | <ApplicationStage> | disbursal.xlsx | cooling_off_period         | 0                                 |

    #${ProductType:["IAF","IHF"]}
    #${ApplicationStage:["Post Approval"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key        | FinalStage         | DisbursalWB    | Disbursal_coolingOffPeriod | Disbursal_coolingOffPeriod_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          | coolingoff | <ApplicationStage> | disbursal.xlsx | cooling_off_period         | 0                                 |

    # PQM-26_CAS-197552
  #FeatureID-ACAUTOCAS-15335
  Scenario Outline: ACAUTOCAS-15688: Validation of hold end date is visible on hold application in Post Approval at <ProductType>
    And user creates a cooling off applicable application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from web service
    And User opens creates application page
    When user search for an application present of "<ProductType>" application at "<Stage>" stage in hold application grid
    Then hold end date field should be visible on yellow bar for post approval
   # ${ProductType : ["PF","MAL","HL","LAP","CV","MHL","FE","EDU","AGRL","JLG","CEQ","MULF","BD","CashCred","BL","LC","BG"]}
   # ${ApplicationStage:["Post Approval"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key        | Stage         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          | coolingoff | Post Approval |

    # ${ProductType:["IPF"]}
    # ${Category:["bonds","metals"]}
    #${ApplicationStage:["Post Approval"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | Key                       | Stage         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> | coolingoff                | Post Approval |
      | IPF           | indiv           | Reconsideration    | Shares     | isPostApproval&coolingoff | Post Approval |

    #${ProductType:["IAF","IHF"]}
    #${ApplicationStage:["Post Approval"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key        | Stage         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          | coolingoff | Post Approval |


    # PQM-27_CAS-197552
  #FeatureID-ACAUTOCAS-15335
  Scenario Outline: ACAUTOCAS-15689: Validation of hold end date is not visible on unHold application in Post Approval at <ProductType>
    And user creates a cooling off applicable application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from web service
    And user save the "<Stage>" stage name
    When user hits the postman API for unHold application
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    Then hold end date field should not be visible on yellow bar
   # ${ProductType : ["PF","MAL","HL","LAP","CV","MHL","FE","EDU","AGRL","JLG","CEQ","MULF","BD","CashCred","BL","LC","BG"]}
   # ${ApplicationStage:["Post Approval"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key        | Stage              |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          | coolingoff | <ApplicationStage> |

    # ${ProductType:["IPF"]}
    # ${Category:["bonds","metals"]}
    #${ApplicationStage:["Post Approval"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | Key                       | Stage              |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> | coolingoff                | <ApplicationStage> |
      | IPF           | indiv           | Reconsideration    | Shares     | isPostApproval&coolingoff | <ApplicationStage> |

    #${ProductType:["IAF","IHF"]}
    #${ApplicationStage:["Post Approval"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key        | Stage              |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          | coolingoff | <ApplicationStage> |


    # PQM-28_CAS-197552
  #FeatureID-ACAUTOCAS-15335
  Scenario Outline: ACAUTOCAS-15690: Validation of hold end date is visible on manual hold application in Post Approval at <ProductType>
    And user creates a cooling off applicable application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from web service
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user throw the application to the hold grid for "<Stage>"
    When user search for an application present of "<ProductType>" application at "<Stage>" stage in hold application grid
    Then hold end date field should not be visible on yellow bar
   # ${ProductType : ["PF","MAL","HL","LAP","CV","MHL","FE","EDU","AGRL","JLG","CEQ","MULF","BD","CashCred","BL","LC","BG"]}
   # ${ApplicationStage:["Post Approval"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | Stage              |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <ApplicationStage> |

    # ${ProductType:["IPF"]}
    # ${Category:["bonds","metals"]}
    #${ApplicationStage:["Post Approval"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | Key            | Stage              |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |                | <ApplicationStage> |
      | IPF           | indiv           | Reconsideration    | Shares     | isPostApproval | <ApplicationStage> |

    #${ProductType:["IAF","IHF"]}
    #${ApplicationStage:["Post Approval"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | Stage              |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <ApplicationStage> |


    # PQM-31_CAS-197552
  #FeatureID-ACAUTOCAS-15335
  Scenario Outline: ACAUTOCAS-15691:Verify application search in Application grid on Post Approval at <ProductType> for using unHold service
    And user creates a cooling off applicable application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from web service
    And user save the "<Stage>" stage name
    When user hits the postman API for unHold application
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user navigates to assigned application Grid
    And user searches application in Assigned application Grid
    Then User should be able to search the application in Application grid
   # ${ProductType : ["PF","MAL","HL","LAP","CV","MHL","FE","EDU","AGRL","JLG","CEQ","MULF","BD","CashCred","BL","LC","BG"]}
   # ${ApplicationStage:["Post Approval"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key        | Stage              |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          | coolingoff | <ApplicationStage> |

    # ${ProductType:["IPF"]}
    # ${Category:["bonds","metals"]}
    #${ApplicationStage:["Post Approval"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | Key                       | Stage              |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> | coolingoff                | <ApplicationStage> |
      | IPF           | indiv           | Reconsideration    | Shares     | isPostApproval&coolingoff | <ApplicationStage> |

    #${ProductType:["IAF","IHF"]}
    #${ApplicationStage:["Post Approval"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key        | Stage              |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          | coolingoff | <ApplicationStage> |


    # PQM-36_CAS-197552
  #FeatureID-ACAUTOCAS-15335
  Scenario Outline: ACAUTOCAS-15692:Verify TAT of Application when application is on HOLD due to cooling off on Post Approval at <ProductType>
    And user creates a cooling off applicable application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from web service
    And User opens creates application page
    When user search for an application present of "<ProductType>" application at "<Stage>" stage in hold application grid
    Then Counter for TAT should not be visible
   # ${ProductType : ["PF","MAL","HL","LAP","CV","MHL","FE","EDU","AGRL","JLG","CEQ","MULF","BD","CashCred","BL","LC","BG"]}
   # ${ApplicationStage:["Post Approval"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key        | Stage         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          | coolingoff | Post Approval |

    # ${ProductType:["IPF"]}
    # ${Category:["bonds","metals"]}
    #${ApplicationStage:["Post Approval"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | Key                       | Stage         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> | coolingoff                | Post Approval |
      | IPF           | indiv           | Reconsideration    | Shares     | isPostApproval&coolingoff | Post Approval |

    #${ProductType:["IAF","IHF"]}
    #${ApplicationStage:["Post Approval"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key        | Stage         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          | coolingoff | Post Approval |
