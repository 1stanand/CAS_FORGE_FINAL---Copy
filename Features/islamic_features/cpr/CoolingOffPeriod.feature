@Epic-CPR
@PQMStory
@AuthoredBy-aryan.jain
@ImplementedBy-aryan.jain
@Islamic

@Release

@Perishable
#${ApplicantType:["indiv"]}
Feature: Cooling Off Period Master

  Background:
    Given user is on CAS Login Page
    And user logged in "CAS" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0

#PQM-7_CAS-197552
#PMG-6_CAS-197552
#FeatureID-ACAUTOCAS-15335
  Scenario Outline: ACAUTOCAS-15774: Verify the visibility of Cooling Off Period on <ApplicationStage> of <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    When user navigate to financial details tab
    Then cooling off period dropdown should be present
#${ProductType:["PF","MAL","HL","LAP","CV","MHL","FE","EDU","AGRL","JLG","CEQ","MULF","BD","CashCred","BL","LC","BG"]}
#${ApplicationStage:["Lead Details"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key        |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          | coolingoff |

#${ProductType:["IPF"]}
#${Category:["bonds","metals"]}
#${ApplicationStage:["Sourcing"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | Key        |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> | coolingoff |
      | IPF           | indiv           | Sourcing           | Shares     | coolingoff |

#${ProductType:["IAF","IHF"]}
#${ApplicationStage:["Sourcing"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key        |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          | coolingoff |


#PMG-5_CAS-197552,7_CAS-197552
#FeatureID-ACAUTOCAS-15335
  Scenario Outline: ACAUTOCAS-15775: Verify the default value of Cooling Off Period on <ApplicationStage> of <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    When user navigate to financial details tab
    Then cooling off period dropdown by default value is Applicable
#${ProductType:["PF","MAL","HL","LAP","CV","MHL","FE","EDU","AGRL","JLG","CEQ","MULF","BD","CashCred","BL","LC","BG"]}
#${ApplicationStage:["Lead Details"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key        |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          | coolingoff |

#${ProductType:["IPF"]}
#${Category:["bonds","metals"]}
#${ApplicationStage:["Sourcing"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | Key        |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> | coolingoff |
      | IPF           | indiv           | Sourcing           | Shares     | coolingoff |

#${ProductType:["IAF","IHF"]}
#${ApplicationStage:["Sourcing"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key        |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          | coolingoff |


#PMG-8_CAS-197552
#FeatureID-ACAUTOCAS-15335
  Scenario Outline: ACAUTOCAS-15776: Verify the <Value> present in Cooling Off Period dropdown on <ApplicationStage> of <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    When user navigate to financial details tab
    Then "<Value>" are present in cooling off dropdown field
#${ProductType:["PF","MAL","HL","LAP","CV","MHL","FE","EDU","AGRL","JLG","CEQ","MULF","BD","CashCred","BL","LC","BG"]}
#${ApplicationStage:["Lead Details"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key        | Value          |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          | coolingoff | Applicable     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          | coolingoff | Not Applicable |

#${ProductType:["IPF"]}
#${Category:["bonds","metals"]}
#${ApplicationStage:["Sourcing"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | Key        | Value          |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> | coolingoff | Applicable     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> | coolingoff | Not Applicable |
      | IPF           | indiv           | Sourcing           | Shares     | coolingoff | Applicable     |
      | IPF           | indiv           | Sourcing           | Shares     | coolingoff | Not Applicable |

#${ProductType:["IAF","IHF"]}
#${ApplicationStage:["Sourcing"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key        | Value          |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          | coolingoff | Applicable     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          | coolingoff | Not Applicable |


#PQM-8_CAS-197552
#PMG-3_CAS-197552
#FeatureID-ACAUTOCAS-15335
  Scenario Outline: ACAUTOCAS-15777: Verify the visibility of Cooling Off Period on <ApplicationStage> of <ProductType> with <Category> if Scheme selected does not have Cooling Off Period checkbox selected on <ApplicationStage> of <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    When user navigate to financial details tab
    Then cooling off period dropdown should not be present
#${ProductType:["PF","MAL","HL","LAP","CV","MHL","FE","EDU","AGRL","JLG","CEQ","MULF","BD","CashCred","BL","LC","BG"]}
#${ApplicationStage:["Lead Details"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |

#${ProductType:["IPF"]}
#${Category:["bonds","metals"]}
#${ApplicationStage:["Sourcing"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     |
      | IPF           | indiv           | Sourcing           | Shares     |     |

#${ProductType:["IAF","IHF"]}
#${ApplicationStage:["Sourcing"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |

#PQM-9_CAS-197552
#FeatureID-ACAUTOCAS-15335
  Scenario Outline: ACAUTOCAS-15778: Validation for cooling off period field is required in saving details  on <ApplicationStage> of <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    When user navigate to financial details tab
    And remove value from cooling off period field
    And user click on save button in sourcing details
    Then Validation for cooling off period field is required
#${ProductType:["PF","MAL","HL","LAP","CV","MHL","FE","EDU","AGRL","JLG","CEQ","MULF","BD","CashCred","BL","LC","BG"]}
#${ApplicationStage:["Lead Details"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key        |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          | coolingoff |

#${ProductType:["IPF"]}
#${Category:["bonds","metals"]}
#${ApplicationStage:["Sourcing"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | Key        |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> | coolingoff |
      | IPF           | indiv           | Sourcing           | Shares     | coolingoff |

#${ProductType:["IAF","IHF"]}
#${ApplicationStage:["Sourcing"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key        |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          | coolingoff |



#PQM-14_CAS-197552
#FeatureID-ACAUTOCAS-15335
  Scenario Outline: ACAUTOCAS-15779: Verify entry in activity section at <FinalStage> of <ProductType>  for cooling off period
    And user creates a cooling off applicable application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from web service
    When user open application manager
    And user search application using application number for "<FinalStage>"
    And user reads data from the excel file "<DisbursalWB>" under sheet "<Disbursal_coolingOffPeriod>" and row <Disbursal_coolingOffPeriod_rowNum>
    And user check Activity section
    Then Hold success message gets stamped in Activity
#${ProductType:["PF","MAL","HL","LAP","CV","MHL","FE","EDU","AGRL","JLG","CEQ","MULF","BD","CashCred","BL","LC","BG"]}
#${ApplicationStage:["Disbursal"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key        | FinalStage         | DisbursalWB    | Disbursal_coolingOffPeriod | Disbursal_coolingOffPeriod_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          | coolingoff | <ApplicationStage> | disbursal.xlsx | cooling_off_period         | 0                                 |

#${ProductType:["IPF"]}
#${Category:["bonds","metals"]}
#${ApplicationStage:["Disbursal"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | Key                    | FinalStage         | DisbursalWB    | Disbursal_coolingOffPeriod | Disbursal_coolingOffPeriod_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> | coolingoff             | <ApplicationStage> | disbursal.xlsx | cooling_off_period         | 0                                 |
      | IPF           | indiv           | Reconsideration    | Shares     | isDisbursal&coolingoff | <ApplicationStage> | disbursal.xlsx | cooling_off_period         | 0                                 |

#${ProductType:["IAF","IHF"]}
#${ApplicationStage:["Disbursal"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key        | FinalStage         | DisbursalWB    | Disbursal_coolingOffPeriod | Disbursal_coolingOffPeriod_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          | coolingoff | <ApplicationStage> | disbursal.xlsx | cooling_off_period         | 0                                 |


#PQM-25_CAS-197552
#FeatureID-ACAUTOCAS-15335
  Scenario Outline: ACAUTOCAS-15780: Verify entry in activity section at <ApplicationStage> of <ProductType>  for manual holding
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user throw the application to the hold grid for "<Stage>"
    When user open application manager
    And user search application using application number
    And user reads data from the excel file "<DisbursalWB>" under sheet "<Disbursal_coolingOffPeriod>" and row <Disbursal_coolingOffPeriod_rowNum>
    And user check Activity section
    Then Hold success message gets stamped in Activity
#${ProductType:["PF","MAL","HL","LAP","CV","MHL","FE","EDU","AGRL","JLG","CEQ","MULF","BD","CashCred","BL","LC","BG"]}
#${ApplicationStage:["Post Approval"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key        | Stage         | DisbursalWB    | Disbursal_coolingOffPeriod | Disbursal_coolingOffPeriod_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          | coolingoff | Post Approval | disbursal.xlsx | cooling_off_period         | 1                                 |

#${ProductType:["IPF"]}
#${Category:["bonds","metals"]}
#${ApplicationStage:["Post Approval"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | Key             | Stage         | DisbursalWB    | Disbursal_coolingOffPeriod | Disbursal_coolingOffPeriod_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> | coolingoff      | Post Approval | disbursal.xlsx | cooling_off_period         | 1                                 |
      | IPF           | indiv           | Reconsideration    | Shares     | isPost Approval | Post Approval | disbursal.xlsx | cooling_off_period         | 1                                 |

#${ProductType:["IAF","IHF"]}
#${ApplicationStage:["Post Approval"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key        | Stage         | DisbursalWB    | Disbursal_coolingOffPeriod | Disbursal_coolingOffPeriod_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          | coolingoff | Post Approval | disbursal.xlsx | cooling_off_period         | 1                                 |


#PQM-26_CAS-197552
#FeatureID-ACAUTOCAS-15335
  Scenario Outline: ACAUTOCAS-15781: Validation of hold end date is visible on hold application in <ApplicationStage> of <ProductType>
    And user creates a cooling off applicable application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from web service
    And User opens creates application page
    When user search for an application present of "<ProductType>" application at "<Stage>" stage in hold application grid
    Then hold end date field should be visible on yellow bar

#${ProductType:["PF","MAL","HL","LAP","CV","MHL","FE","EDU","AGRL","JLG","CEQ","MULF","BD","CashCred","BL","LC","BG"]}
#${ApplicationStage:["Disbursal"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key        | Stage     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          | coolingoff | Disbursal |

#${ProductType:["IPF"]}
#${Category:["bonds","metals"]}
#${ApplicationStage:["Disbursal"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | Key                    | Stage     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> | coolingoff             | Disbursal |
      | IPF           | indiv           | Reconsideration    | Shares     | isDisbursal&coolingoff | Disbursal |

#${ProductType:["IAF","IHF"]}
#${ApplicationStage:["Disbursal"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key        | Stage     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          | coolingoff | Disbursal |


#PQM-27_CAS-197552
#FeatureID-ACAUTOCAS-15335
  Scenario Outline: ACAUTOCAS-15782: Validation of hold end date is not visible on unHold application in <ApplicationStage> of <ProductType>
    And user creates a cooling off applicable application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from web service
    And user save the "<Stage>" stage name
    When user hits the postman API for unHold application
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    Then hold end date field should not be visible on yellow bar

#${ProductType:["PF","MAL","HL","LAP","CV","MHL","FE","EDU","AGRL","JLG","CEQ","MULF","BD","CashCred","BL","LC","BG"]}
#${ApplicationStage:["Disbursal"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key        | Stage     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          | coolingoff | Disbursal |

#${ProductType:["IPF"]}
#${Category:["bonds","metals"]}
#${ApplicationStage:["Disbursal"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | Key                    | Stage     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> | coolingoff             | Disbursal |
      | IPF           | indiv           | Reconsideration    | Shares     | isDisbursal&coolingoff | Disbursal |

#${ProductType:["IAF","IHF"]}
#${ApplicationStage:["Disbursal"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key        | Stage     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          | coolingoff | Disbursal |

#PQM-28_CAS-197552
#FeatureID-ACAUTOCAS-15335
  Scenario Outline: ACAUTOCAS-15783: Validation of hold end date is not visible on manual hold application in <ApplicationStage> of <ProductType>
    And user creates an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from web service
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    When user throw the application to the hold grid for "<Stage>"
    And user search for an application present of "<ProductType>" application at "<Stage>" stage in hold application grid
    Then hold end date field should not be visible on yellow bar

#${ProductType:["PF","MAL","HL","LAP","CV","MHL","FE","EDU","AGRL","JLG","CEQ","MULF","BD","CashCred","BL","LC","BG"]}
#${ApplicationStage:["Post Approval"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | Stage              |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <ApplicationStage> |

#${ProductType:["IPF"]}
#${Category:["bonds","metals"]}
#${ApplicationStage:["Post Approval"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | Key             | Stage         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> | coolingoff      | Post Approval |
      | IPF           | indiv           | Reconsideration    | Shares     | isPost Approval | Post Approval |

#${ProductType:["IAF","IHF"]}
#${ApplicationStage:["Post Approval"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key        | Stage              |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          | coolingoff | <ApplicationStage> |


#PQM-31_CAS-197552
#FeatureID-ACAUTOCAS-15335
  Scenario Outline: ACAUTOCAS-15784: Verify application search in Application grid at <ApplicationStage> of <ProductType> for using unHold service
    And user creates a cooling off applicable application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from web service
    And user save the "<Stage>" stage name
    When user hits the postman API for unHold application
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user navigates to assigned application Grid
    And user searches application in Assigned application Grid
    Then User should be able to search the application in Application grid

#${ProductType:["PF","MAL","HL","LAP","CV","MHL","FE","EDU","AGRL","JLG","CEQ","MULF","BD","CashCred","BL","LC","BG"]}
#${ApplicationStage:["Disbursal"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key        | Stage     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          | coolingoff | Disbursal |

#${ProductType:["IPF"]}
#${Category:["bonds","metals"]}
#${ApplicationStage:["Disbursal"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | Key                    | Stage     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> | coolingoff             | Disbursal |
      | IPF           | indiv           | Reconsideration    | Shares     | isDisbursal&coolingoff | Disbursal |

#${ProductType:["IAF","IHF"]}
#${ApplicationStage:["Disbursal"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key        | Stage     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          | coolingoff | Disbursal |

#PQM-36_CAS-197552
#FeatureID-ACAUTOCAS-15335
  Scenario Outline: ACAUTOCAS-15785: Verify TAT of Application when application is on HOLD due to cooling off on <ApplicationStage> of <ProductType>
    And user creates a cooling off applicable application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from web service
    And User opens creates application page
    When user search for an application present of "<ProductType>" application at "<Stage>" stage in hold application grid
    Then Counter for TAT should not be visible

#${ProductType:["PF","MAL","HL","LAP","CV","MHL","FE","EDU","AGRL","JLG","CEQ","MULF","BD","CashCred","BL","LC","BG"]}
#${ApplicationStage:["Disbursal"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key        | Stage     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          | coolingoff | Disbursal |

#${ProductType:["IPF"]}
#${Category:["bonds","metals"]}
#${ApplicationStage:["Disbursal"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | Key                    | Stage     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> | coolingoff             | Disbursal |
      | IPF           | indiv           | Reconsideration    | Shares     | isDisbursal&coolingoff | Disbursal |

#${ProductType:["IAF","IHF"]}
#${ApplicationStage:["Disbursal"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key        | Stage     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          | coolingoff | Disbursal |
