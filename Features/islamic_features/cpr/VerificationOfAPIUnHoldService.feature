@Epic-CPR
@PQMStory
@AuthoredBy-aryan.jain
@ImplementedBy-aryan.jain
@Release
@Islamic

@Perishable


#${ApplicantType:["indiv"]}

Feature: Verification of API UnHold Service

  Background:
    Given user is on CAS Login Page
    And user logged in "CAS" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0


#PQM-6_CAS-201335,16_CAS-201335
#FeatureID-ACAUTOCAS-15336
  Scenario Outline: ACAUTOCAS-15699: Execution of unHold service in postman with all mandatory field at <ApplicationStage> of <ProductType> application
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user save the application number
    And user save the "<Stage>" stage name
    And user throw the application to the hold grid for "<Stage>"
    When user hits the postman API for unHold application
    Then Response should get generated with status Success

#${ProductType:["PF","MAL","HL","LAP","CV","MHL","FE","EDU","AGRL","JLG","CEQ","MULF","BD","CashCred","BL","LC","BG"]}
#${ApplicationStage:["Post Approval","Recommendation","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | Stage              |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <ApplicationStage> |

#${ProductType:["IPF"]}
#${Category:["bonds","metals"]}
#${ApplicationStage:["Post Approval","Recommendation","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | Key             | Stage              |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |                 | <ApplicationStage> |
      | IPF           | indiv           | Reconsideration    | Shares     | isPost Approval | Post Approval      |
      | IPF           | indiv           | Reconsideration    | Shares     |                 | Reconsideration    |
      | IPF           | indiv           | Recommendation     | Shares     |                 | Recommendation     |

#${ProductType:["IAF","IHF"]}
#${ApplicationStage:["Post Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | Stage              |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <ApplicationStage> |


#PQM-7_CAS-201335,17_CAS-201335,20_CAS-201335
#FeatureID-ACAUTOCAS-15336
  Scenario Outline: ACAUTOCAS-15700:Verify application search through Application Manager at <ApplicationStage> of <ProductType> for unHold service
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user save the application number
    And user save the "<Stage>" stage name
    And user throw the application to the hold grid for "<Stage>"
    When user hits the postman API for unHold application
    And user open application manager
    And user search application using application number
    Then application should be allocated to the same team as of user

#${ProductType:["PF","MAL","HL","LAP","CV","MHL","FE","EDU","AGRL","JLG","CEQ","MULF","BD","CashCred","BL","LC","BG"]}
#${ApplicationStage:["Post Approval","Recommendation","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | Stage              |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <ApplicationStage> |

#${ProductType:["IPF"]}
#${Category:["bonds","metals"]}
#${ApplicationStage:["Post Approval","Recommendation","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | Key             | Stage              |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |                 | <ApplicationStage> |
      | IPF           | indiv           | Reconsideration    | Shares     | isPost Approval | Post Approval      |
      | IPF           | indiv           | Reconsideration    | Shares     |                 | Reconsideration    |
      | IPF           | indiv           | Recommendation     | Shares     |                 | Recommendation     |

#${ProductType:["IAF","IHF"]}
#${ApplicationStage:["Post Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | Stage              |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <ApplicationStage> |

#PQM-8_CAS-201335,18_CAS-201335,21_CAS-201335
#FeatureID-ACAUTOCAS-15336
  Scenario Outline: ACAUTOCAS-15701:Verify application search in Application grid at <ApplicationStage> of <ProductType> for unHold service
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user save the application number
    And user save the "<Stage>" stage name
    And user throw the application to the hold grid for "<Stage>"
    When user hits the postman API for unHold application
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user navigates to assigned application Grid
    Then User should be able to search the application in Application grid

#${ProductType:["PF","MAL","HL","LAP","CV","MHL","FE","EDU","AGRL","JLG","CEQ","MULF","BD","CashCred","BL","LC","BG"]}
#${ApplicationStage:["Post Approval","Recommendation","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | Stage              |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <ApplicationStage> |

#${ProductType:["IPF"]}
#${Category:["bonds","metals"]}
#${ApplicationStage:["Post Approval","Recommendation","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | Key             | Stage              |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |                 | <ApplicationStage> |
      | IPF           | indiv           | Reconsideration    | Shares     | isPost Approval | Post Approval      |
      | IPF           | indiv           | Reconsideration    | Shares     |                 | Reconsideration    |
      | IPF           | indiv           | Recommendation     | Shares     |                 | Recommendation     |

#${ProductType:["IAF","IHF"]}
#${ApplicationStage:["Post Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | Stage              |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <ApplicationStage> |

#PQM-9_CAS-201335
#FeatureID-ACAUTOCAS-15336
  Scenario Outline: ACAUTOCAS-15702:Verify execution of UnHold service through POSTMAN when Application Id is blank at <ApplicationStage> of <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user save the "<Stage>" stage name
    And user throw the application to the hold grid for "<Stage>"
    And user provide the application number as null
    When user hits the postman API for unHold application
    And user reads data from the excel file "<PostApprovalWB>" under sheet "<PostApproval_unHold>" and row <PostApproval_unHold_rowNum>
    Then proper error code with error message should be displayed in response

#${ProductType:["PF","MAL","HL","LAP","CV","MHL","FE","EDU","AGRL","JLG","CEQ","MULF","BD","CashCred","BL","LC","BG"]}
#${ApplicationStage:["Post Approval","Recommendation","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | Stage              | PostApprovalWB     | PostApproval_unHold | PostApproval_unHold_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <ApplicationStage> | post_approval.xlsx | unHold              | 0                          |

#${ProductType:["IPF"]}
#${Category:["bonds","metals"]}
#${ApplicationStage:["Post Approval","Recommendation","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | Key             | Stage              | PostApprovalWB     | PostApproval_unHold | PostApproval_unHold_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |                 | <ApplicationStage> | post_approval.xlsx | unHold              | 0                          |
      | IPF           | indiv           | Reconsideration    | Shares     | isPost Approval | Post Approval      | post_approval.xlsx | unHold              | 0                          |
      | IPF           | indiv           | Reconsideration    | Shares     |                 | Reconsideration    | post_approval.xlsx | unHold              | 0                          |
      | IPF           | indiv           | Recommendation     | Shares     |                 | Recommendation     | post_approval.xlsx | unHold              | 0                          |

#${ProductType:["IAF","IHF"]}
#${ApplicationStage:["Post Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | Stage              | PostApprovalWB     | PostApproval_unHold | PostApproval_unHold_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <ApplicationStage> | post_approval.xlsx | unHold              | 0                          |

#PQM-10_CAS-201335
#FeatureID-ACAUTOCAS-15336
  Scenario Outline: ACAUTOCAS-15703:Verify execution of UnHold service through POSTMAN when hold stage is blank at <ApplicationStage> of <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user save the application number
    And user provide the hold stage as null
    And user throw the application to the hold grid for "<Stage>"
    When user hits the postman API for unHold application
    And user reads data from the excel file "<PostApprovalWB>" under sheet "<PostApproval_unHold>" and row <PostApproval_unHold_rowNum>
    Then proper error code with error message should be displayed in response

#${ProductType:["PF","MAL","HL","LAP","CV","MHL","FE","EDU","AGRL","JLG","CEQ","MULF","BD","CashCred","BL","LC","BG"]}
#${ApplicationStage:["Post Approval","Recommendation","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | Stage              | PostApprovalWB     | PostApproval_unHold | PostApproval_unHold_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <ApplicationStage> | post_approval.xlsx | unHold              | 1                          |

#${ProductType:["IPF"]}
#${Category:["bonds","metals"]}
#${ApplicationStage:["Post Approval","Recommendation","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | Key             | Stage              | PostApprovalWB     | PostApproval_unHold | PostApproval_unHold_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |                 | <ApplicationStage> | post_approval.xlsx | unHold              | 1                          |
      | IPF           | indiv           | Reconsideration    | Shares     | isPost Approval | Post Approval      | post_approval.xlsx | unHold              | 1                          |
      | IPF           | indiv           | Reconsideration    | Shares     |                 | Reconsideration    | post_approval.xlsx | unHold              | 1                          |
      | IPF           | indiv           | Recommendation     | Shares     |                 | Recommendation     | post_approval.xlsx | unHold              | 1                          |

#${ProductType:["IAF","IHF"]}
#${ApplicationStage:["Post Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | Stage              | PostApprovalWB     | PostApproval_unHold | PostApproval_unHold_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <ApplicationStage> | post_approval.xlsx | unHold              | 1                          |

#PQM-11_CAS-201335
#FeatureID-ACAUTOCAS-15336
  Scenario Outline: ACAUTOCAS-15704:Verify execution of UnHold service through POSTMAN when reference number is blank at <ApplicationStage> of <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user save the application number
    And user save the "<Stage>" stage name
    And user provide the reference number as null
    And user throw the application to the hold grid for "<Stage>"
    When user hits the postman API for unHold application
    And user reads data from the excel file "<PostApprovalWB>" under sheet "<PostApproval_unHold>" and row <PostApproval_unHold_rowNum>
    Then proper error code with error message should be displayed in response

#${ProductType:["PF","MAL","HL","LAP","CV","MHL","FE","EDU","AGRL","JLG","CEQ","MULF","BD","CashCred","BL","LC","BG"]}
#${ApplicationStage:["Post Approval","Recommendation","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | Stage              | PostApprovalWB     | PostApproval_unHold | PostApproval_unHold_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <ApplicationStage> | post_approval.xlsx | unHold              | 2                          |

#${ProductType:["IPF"]}
#${Category:["bonds","metals"]}
#${ApplicationStage:["Post Approval","Recommendation","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | Key             | Stage              | PostApprovalWB     | PostApproval_unHold | PostApproval_unHold_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |                 | <ApplicationStage> | post_approval.xlsx | unHold              | 2                          |
      | IPF           | indiv           | Reconsideration    | Shares     | isPost Approval | Post Approval      | post_approval.xlsx | unHold              | 2                          |
      | IPF           | indiv           | Reconsideration    | Shares     |                 | Reconsideration    | post_approval.xlsx | unHold              | 2                          |
      | IPF           | indiv           | Recommendation     | Shares     |                 | Recommendation     | post_approval.xlsx | unHold              | 2                          |

#${ProductType:["IAF","IHF"]}
#${ApplicationStage:["Post Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | Stage              | PostApprovalWB     | PostApproval_unHold | PostApproval_unHold_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <ApplicationStage> | post_approval.xlsx | unHold              | 2                          |

#PQM-12_CAS-201335
#FeatureID-ACAUTOCAS-15336
  Scenario Outline: ACAUTOCAS-15705:Verify execution of UnHold service through POSTMAN when product processor is blank at <ApplicationStage> of <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user save the application number
    And user save the "<Stage>" stage name
    And user provide the product processor as null
    And user throw the application to the hold grid for "<Stage>"
    When user hits the postman API for unHold application
    And user reads data from the excel file "<PostApprovalWB>" under sheet "<PostApproval_unHold>" and row <PostApproval_unHold_rowNum>
    Then proper error code with error message should be displayed in response

#${ProductType:["PF","MAL","HL","LAP","CV","MHL","FE","EDU","AGRL","JLG","CEQ","MULF","BD","CashCred","BL","LC","BG"]}
#${ApplicationStage:["Post Approval","Recommendation","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | Stage              | PostApprovalWB     | PostApproval_unHold | PostApproval_unHold_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <ApplicationStage> | post_approval.xlsx | unHold              | 3                          |

#${ProductType:["IPF"]}
#${Category:["bonds","metals"]}
#${ApplicationStage:["Post Approval","Recommendation","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | Key             | Stage              | PostApprovalWB     | PostApproval_unHold | PostApproval_unHold_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |                 | <ApplicationStage> | post_approval.xlsx | unHold              | 3                          |
      | IPF           | indiv           | Reconsideration    | Shares     | isPost Approval | Post Approval      | post_approval.xlsx | unHold              | 3                          |
      | IPF           | indiv           | Reconsideration    | Shares     |                 | Reconsideration    | post_approval.xlsx | unHold              | 3                          |
      | IPF           | indiv           | Recommendation     | Shares     |                 | Recommendation     | post_approval.xlsx | unHold              | 3                          |

#${ProductType:["IAF","IHF"]}
#${ApplicationStage:["Post Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | Stage              | PostApprovalWB     | PostApproval_unHold | PostApproval_unHold_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <ApplicationStage> | post_approval.xlsx | unHold              | 3                          |

#PQM-13_CAS-201335
#FeatureID-ACAUTOCAS-15336
  Scenario Outline: ACAUTOCAS-15706:Verify execution of UnHold service through POSTMAN when Application Id is not on HOLD stage at <ApplicationStage> of <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user save the application number
    And user save the "<Stage>" stage name
    When user hits the postman API for unHold application
    And user reads data from the excel file "<PostApprovalWB>" under sheet "<PostApproval_unHold>" and row <PostApproval_unHold_rowNum>
    Then proper error code with error message should be displayed in response

#${ProductType:["PF","MAL","HL","LAP","CV","MHL","FE","EDU","AGRL","JLG","CEQ","MULF","BD","CashCred","BL","LC","BG"]}
#${ApplicationStage:["Post Approval","Recommendation","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | Stage              | PostApprovalWB     | PostApproval_unHold | PostApproval_unHold_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <ApplicationStage> | post_approval.xlsx | unHold              | 4                          |

#${ProductType:["IPF"]}
#${Category:["bonds","metals"]}
#${ApplicationStage:["Post Approval","Recommendation","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | Key             | Stage              | PostApprovalWB     | PostApproval_unHold | PostApproval_unHold_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |                 | <ApplicationStage> | post_approval.xlsx | unHold              | 4                          |
      | IPF           | indiv           | Reconsideration    | Shares     | isPost Approval | Post Approval      | post_approval.xlsx | unHold              | 4                          |
      | IPF           | indiv           | Reconsideration    | Shares     |                 | Reconsideration    | post_approval.xlsx | unHold              | 4                          |
      | IPF           | indiv           | Recommendation     | Shares     |                 | Recommendation     | post_approval.xlsx | unHold              | 4                          |

#${ProductType:["IAF","IHF"]}
#${ApplicationStage:["Post Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | Stage              | PostApprovalWB     | PostApproval_unHold | PostApproval_unHold_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <ApplicationStage> | post_approval.xlsx | unHold              | 4                          |

#PQM-14_CAS-201335
#FeatureID-ACAUTOCAS-15336
  Scenario Outline: ACAUTOCAS-15707:Verify execution of UnHold service through POSTMAN when Application Id is not present in the system at <ApplicationStage> of <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user save the "<Stage>" stage name
    And user throw the application to the hold grid for "<Stage>"
    And user provide invalid application number
    When user hits the postman API for unHold application
    And user reads data from the excel file "<PostApprovalWB>" under sheet "<PostApproval_unHold>" and row <PostApproval_unHold_rowNum>
    Then proper error code with error message should be displayed in response

#${ProductType:["PF","MAL","HL","LAP","CV","MHL","FE","EDU","AGRL","JLG","CEQ","MULF","BD","CashCred","BL","LC","BG"]}
#${ApplicationStage:["Post Approval","Recommendation","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | Stage              | PostApprovalWB     | PostApproval_unHold | PostApproval_unHold_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <ApplicationStage> | post_approval.xlsx | unHold              | 5                          |

#${ProductType:["IPF"]}
#${Category:["bonds","metals"]}
#${ApplicationStage:["Post Approval","Recommendation","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | Key             | Stage              | PostApprovalWB     | PostApproval_unHold | PostApproval_unHold_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |                 | <ApplicationStage> | post_approval.xlsx | unHold              | 5                          |
      | IPF           | indiv           | Reconsideration    | Shares     | isPost Approval | Post Approval      | post_approval.xlsx | unHold              | 5                          |
      | IPF           | indiv           | Reconsideration    | Shares     |                 | Reconsideration    | post_approval.xlsx | unHold              | 5                          |
      | IPF           | indiv           | Recommendation     | Shares     |                 | Recommendation     | post_approval.xlsx | unHold              | 5                          |

#${ProductType:["IAF","IHF"]}
#${ApplicationStage:["Post Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | Stage              | PostApprovalWB     | PostApproval_unHold | PostApproval_unHold_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <ApplicationStage> | post_approval.xlsx | unHold              | 5                          |

#PQM-15_CAS-201335
#FeatureID-ACAUTOCAS-15336
  Scenario Outline: ACAUTOCAS-15708:Verify execution of UnHold service through POSTMAN when Product Processor used is not a valid DType at <ApplicationStage> of <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user save the application number
    And user save the "<Stage>" stage name
    And user provide invalid product processor
    And user throw the application to the hold grid for "<Stage>"
    When user hits the postman API for unHold application
    And user reads data from the excel file "<PostApprovalWB>" under sheet "<PostApproval_unHold>" and row <PostApproval_unHold_rowNum>
    Then proper error code with error message should be displayed in response

#${ProductType:["PF","MAL","HL","LAP","CV","MHL","FE","EDU","AGRL","JLG","CEQ","MULF","BD","CashCred","BL","LC","BG"]}
#${ApplicationStage:["Post Approval","Recommendation","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | Stage              | PostApprovalWB     | PostApproval_unHold | PostApproval_unHold_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <ApplicationStage> | post_approval.xlsx | unHold              | 6                          |

#${ProductType:["IPF"]}
#${Category:["bonds","metals"]}
#${ApplicationStage:["Post Approval","Recommendation","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | Key             | Stage              | PostApprovalWB     | PostApproval_unHold | PostApproval_unHold_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |                 | <ApplicationStage> | post_approval.xlsx | unHold              | 6                          |
      | IPF           | indiv           | Reconsideration    | Shares     | isPost Approval | Post Approval      | post_approval.xlsx | unHold              | 6                          |
      | IPF           | indiv           | Reconsideration    | Shares     |                 | Reconsideration    | post_approval.xlsx | unHold              | 6                          |
      | IPF           | indiv           | Recommendation     | Shares     |                 | Recommendation     | post_approval.xlsx | unHold              | 6                          |

#${ProductType:["IAF","IHF"]}
#${ApplicationStage:["Post Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | Stage              | PostApprovalWB     | PostApproval_unHold | PostApproval_unHold_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <ApplicationStage> | post_approval.xlsx | unHold              | 6                          |

#PQM-23_CAS-201335
#PMG-5_CAS-201335
  @TestSessionNotCreated
#FeatureID-ACAUTOCAS-15336
  Scenario Outline: ACAUTOCAS-15709:Hit the <API Name> via try now feature for <ProductType> at <ApplicationStage> for unHold service
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user save the application number
    And user save the "<Stage>" stage name
    And user throw the application to the hold grid for "<Stage>"
    And user logged in "APIcenter" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user clicks on Documentation tab
    And user searches "<API Name>" in documentation and opens
    And user click on get access token
    And user fills details for access token
    And user generates access token
    And user copy the access token
    When user click on try now button on API center
    And user create the json for unHold application
    And user fills the requested body with the json
    And user enters access token
    And user click on send request button
    Then API hit should be "successful" with proper response

#${ProductType:["PF","MAL","HL","LAP","CV","MHL","FE","EDU","AGRL","JLG","CEQ","MULF","BD","CashCred","BL","LC","BG"]}
#${ApplicationStage:["Post Approval","Recommendation","Reconsideration"]}
    Examples:
      | API Name     | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | Stage              |
      | CAS_Appl_137 | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <ApplicationStage> |

#${ProductType:["IPF"]}
#${Category:["bonds","metals"]}
#${ApplicationStage:["Post Approval","Recommendation","Reconsideration"]}
    Examples:
      | API Name     | ProductType   | ApplicantType   | ApplicationStage   | Category   | Key             | Stage              |
      | CAS_Appl_137 | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |                 | <ApplicationStage> |
      | CAS_Appl_137 | IPF           | indiv           | Reconsideration    | Shares     | isPost Approval | Post Approval      |
      | CAS_Appl_137 | IPF           | indiv           | Reconsideration    | Shares     |                 | Reconsideration    |
      | CAS_Appl_137 | IPF           | indiv           | Recommendation     | Shares     |                 | Recommendation     |

#${ProductType:["IAF","IHF"]}
#${ApplicationStage:["Post Approval","Reconsideration"]}
    Examples:
      | API Name     | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | Stage              |
      | CAS_Appl_137 | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <ApplicationStage> |

#PQM-24_CAS-201335
#FeatureID-ACAUTOCAS-15336
  Scenario Outline: ACAUTOCAS-15710:Hit the <API Name> without access_token for <ProductType> at <ApplicationStage> for unHold service
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user save the application number
    And user save the "<Stage>" stage name
    And user throw the application to the hold grid for "<Stage>"
    And user logged in "APIcenter" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user clicks on Documentation tab
    And user searches "<API Name>" in documentation and opens
    When user click on try now button on API center
    And user create the json for unHold application
    And user fills the requested body with the json
    And user click on send request button
    Then the "<API Name>" service is not get executed

#${ProductType:["PF","MAL","HL","LAP","CV","MHL","FE","EDU","AGRL","JLG","CEQ","MULF","BD","CashCred","BL","LC","BG"]}
#${ApplicationStage:["Post Approval","Recommendation","Reconsideration"]}
    Examples:
      | API Name     | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | Stage              |
      | CAS_Appl_137 | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <ApplicationStage> |

#${ProductType:["IPF"]}
#${Category:["bonds","metals"]}
#${ApplicationStage:["Post Approval","Recommendation","Reconsideration"]}
    Examples:
      | API Name     | ProductType   | ApplicantType   | ApplicationStage   | Category   | Key             | Stage              |
      | CAS_Appl_137 | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |                 | <ApplicationStage> |
      | CAS_Appl_137 | IPF           | indiv           | Reconsideration    | Shares     | isPost Approval | Post Approval      |
      | CAS_Appl_137 | IPF           | indiv           | Reconsideration    | Shares     |                 | Reconsideration    |
      | CAS_Appl_137 | IPF           | indiv           | Recommendation     | Shares     |                 | Recommendation     |

#${ProductType:["IAF","IHF"]}
#${ApplicationStage:["Post Approval","Reconsideration"]}
    Examples:
      | API Name     | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | Stage              |
      | CAS_Appl_137 | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <ApplicationStage> |

#PQM-26_CAS-201335
#FeatureID-ACAUTOCAS-15336
  Scenario Outline: ACAUTOCAS-15711:Verify entry in workflow history at <ApplicationStage> of <ProductType> for unHold service
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user save the application number
    And user save the "<Stage>" stage name
    And user throw the application to the hold grid for "<Stage>"
    When user hits the postman API for unHold application
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user open workflow history
    Then history record should be visible

#${ProductType:["PF","MAL","HL","LAP","CV","MHL","FE","EDU","AGRL","JLG","CEQ","MULF","BD","CashCred","BL","LC","BG"]}
#${ApplicationStage:["Post Approval","Recommendation","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | Stage              |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <ApplicationStage> |

#${ProductType:["IPF"]}
#${Category:["bonds","metals"]}
#${ApplicationStage:["Post Approval","Recommendation","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | Key             | Stage              |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |                 | <ApplicationStage> |
      | IPF           | indiv           | Reconsideration    | Shares     | isPost Approval | Post Approval      |
      | IPF           | indiv           | Reconsideration    | Shares     |                 | Reconsideration    |
      | IPF           | indiv           | Recommendation     | Shares     |                 | Recommendation     |

#${ProductType:["IAF","IHF"]}
#${ApplicationStage:["Post Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | Stage              |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <ApplicationStage> |

#PQM-28_CAS-201335
#PMG-8_CAS-201335
#FeatureID-ACAUTOCAS-15336
  Scenario Outline: ACAUTOCAS-15712:Verify entry in activity section at <ApplicationStage> of <ProductType> for unHold service
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user save the application number
    And user save the "<Stage>" stage name
    And user throw the application to the hold grid for "<Stage>"
    When user hits the postman API for unHold application
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "<PostApprovalWB>" under sheet "<PostApproval_unHold>" and row <PostApproval_unHold_rowNum>
    And On PDOC Stage check Activity section
    Then unHold success message gets stamped in Activity

#${ProductType:["PF","MAL","HL","LAP","CV","MHL","FE","EDU","AGRL","JLG","CEQ","MULF","BD","CashCred","BL","LC","BG"]}
#${ApplicationStage:["Post Approval","Recommendation","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | Stage              | PostApprovalWB     | PostApproval_unHold | PostApproval_unHold_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <ApplicationStage> | post_approval.xlsx | unHold              | 7                          |

#${ProductType:["IPF"]}
#${Category:["bonds","metals"]}
#${ApplicationStage:["Post Approval","Recommendation","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | Key             | Stage              | PostApprovalWB     | PostApproval_unHold | PostApproval_unHold_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |                 | <ApplicationStage> | post_approval.xlsx | unHold              | 7                          |
      | IPF           | indiv           | Reconsideration    | Shares     | isPost Approval | Post Approval      | post_approval.xlsx | unHold              | 7                          |
      | IPF           | indiv           | Reconsideration    | Shares     |                 | Reconsideration    | post_approval.xlsx | unHold              | 7                          |
      | IPF           | indiv           | Recommendation     | Shares     |                 | Recommendation     | post_approval.xlsx | unHold              | 7                          |

#${ProductType:["IAF","IHF"]}
#${ApplicationStage:["Post Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | Stage              | PostApprovalWB     | PostApproval_unHold | PostApproval_unHold_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | <ApplicationStage> | post_approval.xlsx | unHold              | 7                          |