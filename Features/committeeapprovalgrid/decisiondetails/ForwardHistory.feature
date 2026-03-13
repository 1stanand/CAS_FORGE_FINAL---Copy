@Epic-Committee_Approval
@AuthoredBy-prachi
@ReviewedBy-
@ImplementedBy-
@TechReviewedBy-


Feature: Forward History under committee approval

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user is on the Committee Approval grid

#FeatureID-ACAUTOCAS-11062
  # ${ProductType:["PF","HL","CON_VEH","MULF","FAS","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","CC","LAP","CL"]}
# ${ApplicationStage:["Committee Approval"]}
  #Negative
  Scenario Outline:Unassigned user can't open the application present at <ApplicationStage> in <ProductType>
    When user opens "<ProductType>" application of "<ApplicantType>" applicant at "<ApplicationStage>" stage from committee approval grid
    Then user should not be able to edit the application as an error message occur as "<ErrorMessage>"
    Examples:
      | ApplicationStage   | ProductType   | ErrorMessage                            | ApplicantType   |
      | <ApplicationStage> | <ProductType> | This application is not assigned to you | <ApplicantType> |

#FeatureID-ACAUTOCAS-11062
# ${ProductType:["PF","HL","CON_VEH","MULF","FAS","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","CC","LAP","CL"]}
# ${ApplicationStage:["Committee Approval"]}
# Positive
  Scenario Outline:Verify DecisionForward History accordion present in "<ApplicationStage>" in "<ProductType>"
    And user opens "<ProductType>" application of "<ApplicantType>" applicant at "<ApplicationStage>" stage from committee approval grid
    When user open decision forward history details
    Then DecisionForward History accordion should be opens
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |


#FeatureID-ACAUTOCAS-11062
# ${ProductType:["PF","HL","CON_VEH","MULF","FAS","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","CC","LAP","CL"]}
# ${ApplicationStage:["Committee Approval"]}

  Scenario Outline:Validate DecisionForward History accordion at <ApplicationStage> in <ProductType>
    And user opens "<ProductType>" application of "<ApplicantType>" applicant at "<ApplicationStage>" stage from committee approval grid
    When user expands DecisionForward History
    Then DecisionForward History should be expanded
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |

#FeatureID-ACAUTOCAS-11062
  # ${ProductType:["PF","HL","CON_VEH","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","CC","LAP","CL"]}
# ${ApplicationStage:["Committee Approval"]}

  Scenario Outline: user validate Forward history tab should be present adjacent to Decision history tab at <ApplicationStage> in <ProductType>
    And user opens "<ProductType>" application of "<ApplicantType>" applicant at "<ApplicationStage>" stage from committee approval grid
    When user open decision forward history details
    Then Forward history tab should be present adjacent to Decision history tab
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |


#FeatureID-ACAUTOCAS-11062
# ${ProductType:["PF","HL","CON_VEH","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","CC","LAP","CL"]}
## ${ApplicationStage:["Committee Approval"]}

  Scenario Outline: Verify user should be able to switch the tab under DecisionForward History accordion at <ApplicationStage> in <ProductType>
    And user opens "<ProductType>" application of "<ApplicantType>" applicant at "<ApplicationStage>" stage from committee approval grid
    When user open decision forward history details
    And user switch the tab from Decision history to Forward history
    Then user should be able to do so
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |

#FeatureID-ACAUTOCAS-11062
  # ${ProductType:["PF","HL","CON_VEH","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","CC","LAP","CL"]}
# ${ApplicationStage:["Committee Approval"]}

  Scenario Outline: Verify by default Decision history tab should open on expanding DecisionForward History accordion at <ApplicationStage> in <ProductType>
    And user opens "<ProductType>" application of "<ApplicantType>" applicant at "<ApplicationStage>" stage from committee approval grid
    When user expands the DecisionForward History
    Then By default Decision history tab should open
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |


#FeatureID-ACAUTOCAS-11062
# ${ProductType:["PF","HL","CON_VEH","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","CC","LAP","CL"]}
# ${ApplicationStage:["Committee Approval"]}
  #Positive

  Scenario Outline: DecisionForward History all fields is in view mode at <ApplicationStage> in <ProductType>
    And user opens "<ProductType>" application of "<ApplicantType>" applicant at "<ApplicationStage>" stage from committee approval grid
    When user open decision forward history details
    And user view the DecisionForward History feilds
    Then Forward History grid should be displayed with data in view mode
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |

#FeatureID-ACAUTOCAS-11062
# ${ProductType:["PF","HL","CON_VEH","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","CC","LAP","CL"]}
# ${ApplicationStage:["Committee Approval"]}

  Scenario Outline:Validate forward history tab fields is visible in DecisionForward History <ApplicationStage>" in "<ProductType>"
    And user opens "<ProductType>" application of "<ApplicantType>" applicant at "<ApplicationStage>" stage from committee approval grid
    When user open decision forward history details
    And user expands the DecisionForward History
    And open Forward history tab
    Then  Forward History grid contains below field headers with data
      | var                      |
      | Reason Description       |
      | Comments                 |
      | Forwarded By             |
      | Forwarded to (Team/User) |
      | On Behalf Of             |
      | Forward Date             |
      | Forward Time             |
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |

#FeatureID-ACAUTOCAS-11062
# ${ProductType:["PF","HL","CON_VEH","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","CC","LAP","CL"]}
# ${ApplicationStage:["Committee Approval"]}

  Scenario Outline: Verify number of rows created under Forward history should be equal to number of time application forwarded at <ApplicationStage> in <ProductType>
    And user opens "<ProductType>" application of "<ApplicantType>" applicant at "<ApplicationStage>" stage from committee approval grid
    And application Forwarded "<NoOfForwarded>" times from the credit approval stage
    When user expands the DecisionForward History
    And open Forward history tab
    Then Number of rows created under Forward history should be equal to number of time application forwared at credit approval screen
    Examples:
      | ApplicationStage   | ProductType   | NoOfForwarded |ApplicantType   |
      | <ApplicationStage> | <ProductType> | 7             |<ApplicantType> |

#FeatureID-ACAUTOCAS-11062
# ${ProductType:["PF","HL","CON_VEH","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","CC","LAP","CL"]}
# ${ApplicationStage:["Committee Approval"]}

  Scenario Outline: Verify proper stamping of Forward history at <ApplicationStage> in <ProductType>
    And user opens "<ProductType>" application of "<ApplicantType>" applicant at "<ApplicationStage>" stage from committee approval grid
    When user expands the DecisionForward History
    And open Forward history tab
    Then Stamping of Forward history should be proper
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | ApplicantType   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <ApplicantType> |

#FeatureID-ACAUTOCAS-11062
# ${ProductType:["PF","HL","CON_VEH","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","CC","LAP","CL"]}
# ${ApplicationStage:["Committee Approval"]}

#  Scenario Outline: Validate Forward History tab data
#    When user expands the DecisionForward History
#    And open Forward history tab
#    And  user views data from workbook "<SourceFile>" under sheet name in "<SheetName>" and row number as "<rownum>" accordingly
#    Then user should be able to view the fields with provided values
#
#    Examples:
#      | SourceFile                    | SheetName | rownum |
#      | DecisionForward History.xls  | Forward   | 0      |
#      | DecisionForward History.xls  | Forward   | 1      |
#      | Decision /Forward History.xls | Forward   | 2      |
#      | DecisionForward History.xls  | Forward   | 3      |


#FeatureID-ACAUTOCAS-11062
# ${ProductType:["PF","HL","CON_VEH","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","CC","LAP","CL"]}
# ${ApplicationStage:["Committee Approval"]}
  Scenario Outline: Verify if application is not forwarded even for once at credit approval in "<ApplicationStage>" in "<ProductType>"
    And user opens "<ProductType>" application of "<ApplicantType>" applicant at "<ApplicationStage>" stage from committee approval grid
    When user expands the DecisionForward History at committee approval
    And open Forward history tab
    Then Grid should be displayed with blank data
      | var                      |
      | Reason Description       |
      | Comments                 |
      | Forwarded By             |
      | Forwarded to (Team/User) |
      | On Behalf Of             |
      | Forward Date             |
      | Forward Time             |
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |