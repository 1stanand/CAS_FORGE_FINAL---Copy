@DevTrack
@GA-9.0
@Epic-SeparateCreditApprovalDecisioningInAnOmniLoan
@AuthoredBy-anand.singh1
@Order
@NotImplemented
@CreditApproval
@CAS-264860
Feature: Separate_Decision_OMNILoan_Committee_Approval

 ####################################################################################################
 ###### PRE-REQUISITES
 ###### --------------------------------------------------------------------------------------------------
 ###### Omni Loan Application progressed to Credit Approval stage via:
 ######   CAS-264769 feature file (Separate_Decision_OMNILoan_CreditApproval)
 ######   LogicalIDs carry over from that file.
 ######
 ###### Sub Products in Application:
 ######   - Home Loan
 ######   - Personal Loan
 ######   - Auto Loan
 ######   - Credit Card (With 2 Add-On Cards)
 ###################################################################################################

 #########################################################################################################
 ###### BUSINESS CONTEXT
 ###### --------------------------------------------------------------------------------------------------
 ###### COMMITTEE APPROVAL (initiated from Credit Approval):
 ######   - Committee can only be initiated when at least one sub-loan is marked Approved.
 ######   - If all sub-loans are Not Approved → initiation blocked with validation.
 ######   -:
 ######       * Parent-level decision → Editable
 ######       * Sub-loan level decisions → Frozen (view mode, reflects Credit Approval decisions)
 #########################################################################################################

####################################################################################################
# SECTION 1: COMMITTEE INITIATION VALIDATIONS (from Credit Approval)
####################################################################################################
  @CommitteeInitiation
   Scenario Outline:AT CREDIT APPROVAL : For App with [ <LogicalID> ]  Committee should not be Initiated when all Sub Products are Un-Checked
    Given all prerequisite are performed in previous scenario of "Omni Loan" logical id "<LogicalID>"
    And user opens an application of "Credit Approval" stage present in context from application grid
    And user reads data from the excel file "committee_approval_grid.xlsx" under sheet "committee_approval" and row <rowNum>
    When user selects a committee to take decision at "Credit Approval"
    And user initiate committee approval at "Credit Approval"
    Then user should be able to see validation message "Committee cannot be initiated for 'At least one sub-loan must be approved to initiate the committee'"
    And committee of "<Committee_type>" should not get initiated
    Examples:
      | LogicalID                       | rowNum | Committee_type    |
      | Separate_Decisions_NONE_CHECKED | 1      | Minimum Approvals |
      | Separate_Decisions_NONE_CHECKED | 2      | Decision Maker    |
      | Separate_Decisions_NONE_CHECKED | 3      | General Majority  |

  @CommitteeInitiation
   Scenario Outline:AT CREDIT APPROVAL : For App with [ <LogicalID> ]  Committee should be Initiated successfully when at least one Sub Product is Approved
    Given all prerequisite are performed in previous scenario of "Omni Loan" logical id "<LogicalID>"
    And user picks an application of "Omni Loan" product type as "individual" applicant at stage "Credit Approval" for category "" with key ""
    And user opens an application of "Credit Approval" stage present in context from application grid
    And user reads data from the excel file "committee_approval_grid.xlsx" under sheet "committee_approval" and row 1
    When user selects a committee to take decision at "Credit Approval"
    And user initiate committee approval at "Credit Approval"
    Then committee of "Minimum Approvals" should get initiated successfully
    Examples:
      | LogicalID                            |
      | Separate_Decisions_ALL_CHECKED       |
      | Separate_Decisions_HL_PL_MAL_CHECKED |
      | Separate_Decisions_HL_PL_CC_CHECKED  |
      | Separate_Decisions_HL_PL_CHECKED     |
      | Separate_Decisions_HL_MAL_CC_CHECKED |
      | Separate_Decisions_HL_MAL_CHECKED    |
      | Separate_Decisions_HL_CC_CHECKED     |
      | Separate_Decisions_HL_CHECKED        |
      | Separate_Decisions_PL_MAL_CC_CHECKED |
      | Separate_Decisions_PL_MAL_CHECKED    |
      | Separate_Decisions_PL_CC_CHECKED     |
      | Separate_Decisions_PL_CHECKED        |
      | Separate_Decisions_MAL_CC_CHECKED    |
      | Separate_Decisions_MAL_CHECKED       |
      | Separate_Decisions_CC_CHECKED        |

####################################################################################################
# SECTION 2: COMMITTEE TASK SCREEN – SUB LOAN DECISION DISPLAY
####################################################################################################
  @CommitteeApproval
   Scenario Outline:AT COMMITTEE APPROVAL : For App with [ <LogicalID> ]  Availability of Disabled Checkbox in Decision Column of Product Type Decision List for Sub Products of Omni Loan
    Given all prerequisite are performed in previous scenario of "Omni Loan" logical id "<LogicalID>" with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    When user logout from CAS
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "CommitteeUser" and 1
    And user open committee approval grid
    And search the initiated committee approval application
    And user opens the initiated committee approval application for current user
    When user clicks on Product Type Decision List accordion to expand it
    Then user should be able to see a "CheckBox" type input field in "Decision" Column for
      | Home Loan     |
      | Personal Loan |
      | Auto Loan     |
    And checkbox should be "Disabled" for all Sub products
    Examples:
      | LogicalID                            |
      | Separate_Decisions_ALL_CHECKED       |
      | Separate_Decisions_HL_PL_MAL_CHECKED |
      | Separate_Decisions_HL_PL_CC_CHECKED  |
      | Separate_Decisions_HL_PL_CHECKED     |
      | Separate_Decisions_HL_MAL_CC_CHECKED |
      | Separate_Decisions_HL_MAL_CHECKED    |
      | Separate_Decisions_HL_CC_CHECKED     |
      | Separate_Decisions_HL_CHECKED        |
      | Separate_Decisions_PL_MAL_CC_CHECKED |
      | Separate_Decisions_PL_MAL_CHECKED    |
      | Separate_Decisions_PL_CC_CHECKED     |
      | Separate_Decisions_PL_CHECKED        |
      | Separate_Decisions_MAL_CC_CHECKED    |
      | Separate_Decisions_MAL_CHECKED       |
      | Separate_Decisions_CC_CHECKED        |
      | Separate_Decisions_NONE_CHECKED      |

  @CommitteeApproval
   Scenario Outline:AT COMMITTEE APPROVAL : For App with [ <LogicalID> ]  Availability of Disabled Checkbox in Decision Column of Product Type Decision List for <CardType> of Omni Loan
    Given all prerequisite are performed in previous scenario of "Omni Loan" logical id "<LogicalID>" with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    When user logout from CAS
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "CommitteeUser" and 1
    And user open committee approval grid
    And search the initiated committee approval application
    And user opens the initiated committee approval application for current user
    When user clicks on Product Type Decision List accordion to expand it
    Then checkbox should be "Disabled" for "<CardType>" Card
    Examples:
      | LogicalID                            | CardType     |
      | Separate_Decisions_ALL_CHECKED       | Primary Card |
      | Separate_Decisions_HL_PL_MAL_CHECKED | Primary Card |
      | Separate_Decisions_HL_PL_CC_CHECKED  | Primary Card |
      | Separate_Decisions_HL_PL_CHECKED     | Primary Card |
      | Separate_Decisions_HL_MAL_CC_CHECKED | Primary Card |
      | Separate_Decisions_HL_MAL_CHECKED    | Primary Card |
      | Separate_Decisions_HL_CC_CHECKED     | Primary Card |
      | Separate_Decisions_HL_CHECKED        | Primary Card |
      | Separate_Decisions_PL_MAL_CC_CHECKED | Primary Card |
      | Separate_Decisions_PL_MAL_CHECKED    | Primary Card |
      | Separate_Decisions_PL_CC_CHECKED     | Primary Card |
      | Separate_Decisions_PL_CHECKED        | Primary Card |
      | Separate_Decisions_MAL_CC_CHECKED    | Primary Card |
      | Separate_Decisions_MAL_CHECKED       | Primary Card |
      | Separate_Decisions_CC_CHECKED        | Primary Card |
      | Separate_Decisions_ALL_CHECKED       | Add-On Card  |
      | Separate_Decisions_HL_PL_MAL_CHECKED | Add-On Card  |
      | Separate_Decisions_HL_PL_CC_CHECKED  | Add-On Card  |
      | Separate_Decisions_HL_PL_CHECKED     | Add-On Card  |
      | Separate_Decisions_HL_MAL_CC_CHECKED | Add-On Card  |
      | Separate_Decisions_HL_MAL_CHECKED    | Add-On Card  |
      | Separate_Decisions_HL_CC_CHECKED     | Add-On Card  |
      | Separate_Decisions_HL_CHECKED        | Add-On Card  |
      | Separate_Decisions_PL_MAL_CC_CHECKED | Add-On Card  |
      | Separate_Decisions_PL_MAL_CHECKED    | Add-On Card  |
      | Separate_Decisions_PL_CC_CHECKED     | Add-On Card  |
      | Separate_Decisions_PL_CHECKED        | Add-On Card  |
      | Separate_Decisions_MAL_CC_CHECKED    | Add-On Card  |
      | Separate_Decisions_MAL_CHECKED       | Add-On Card  |
      | Separate_Decisions_CC_CHECKED        | Add-On Card  |

  @CommitteeApproval
   Scenario Outline:AT COMMITTEE APPROVAL : For App with [ <LogicalID> ] Displayed Sub Loan Level Decision should reflect Credit Approval Decision for Sub Products of Omni Loan
    Given all prerequisite are performed in previous scenario of "Omni Loan" logical id "<LogicalID>" with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    When user logout from CAS
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "CommitteeUser" and 1
    And user open committee approval grid
    And search the initiated committee approval application
    And user opens the initiated committee approval application for current user
    When user clicks on Product Type Decision List accordion to expand it
    Then Decision checkboxes should be as follows
      | Home Loan     | <HL_ExpectedCheckBoxStatus>   |
      | Personal Loan | <PL_ExpectedCheckBoxStatus>   |
      | Auto Loan     | <Auto_ExpectedCheckBoxStatus> |
    Examples:
      | LogicalID                            | HL_ExpectedCheckBoxStatus | PL_ExpectedCheckBoxStatus | Auto_ExpectedCheckBoxStatus |
      | Separate_Decisions_ALL_CHECKED       | Checked                   | Checked                   | Checked                     |
      | Separate_Decisions_HL_PL_MAL_CHECKED | Checked                   | Checked                   | Checked                     |
      | Separate_Decisions_HL_PL_CC_CHECKED  | Checked                   | Checked                   | Un-Checked                  |
      | Separate_Decisions_HL_PL_CHECKED     | Checked                   | Checked                   | Un-Checked                  |
      | Separate_Decisions_HL_MAL_CC_CHECKED | Checked                   | Un-Checked                | Checked                     |
      | Separate_Decisions_HL_MAL_CHECKED    | Checked                   | Un-Checked                | Checked                     |
      | Separate_Decisions_HL_CC_CHECKED     | Checked                   | Un-Checked                | Un-Checked                  |
      | Separate_Decisions_HL_CHECKED        | Checked                   | Un-Checked                | Un-Checked                  |
      | Separate_Decisions_PL_MAL_CC_CHECKED | Un-Checked                | Checked                   | Checked                     |
      | Separate_Decisions_PL_MAL_CHECKED    | Un-Checked                | Checked                   | Checked                     |
      | Separate_Decisions_PL_CC_CHECKED     | Un-Checked                | Checked                   | Un-Checked                  |
      | Separate_Decisions_PL_CHECKED        | Un-Checked                | Checked                   | Un-Checked                  |
      | Separate_Decisions_MAL_CC_CHECKED    | Un-Checked                | Un-Checked                | Checked                     |
      | Separate_Decisions_MAL_CHECKED       | Un-Checked                | Un-Checked                | Checked                     |
      | Separate_Decisions_CC_CHECKED        | Un-Checked                | Un-Checked                | Un-Checked                  |
  @CommitteeApproval
   Scenario Outline:AT COMMITTEE APPROVAL : For App with [ <LogicalID> ]  Displayed Card Type Decision should reflect Credit Approval Decision for Sub Products of Omni Loan
    Given all prerequisite are performed in previous scenario of "Omni Loan" logical id "<LogicalID>" with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    When user logout from CAS
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "CommitteeUser" and 1
    And user open committee approval grid
    And search the initiated committee approval application
    And user opens the initiated committee approval application for current user
    When user clicks on Product Type Decision List accordion to expand it
    And Decision checkbox for cards should be as
      | Primary Card | <Status> |
      | Add On Card  | <Status> |
    Examples:
      | LogicalID                            | Status     |
      | Separate_Decisions_ALL_CHECKED       | Checked    |
      | Separate_Decisions_HL_PL_MAL_CHECKED | Un-Checked |
      | Separate_Decisions_HL_PL_CC_CHECKED  | Checked    |
      | Separate_Decisions_HL_PL_CHECKED     | Un-Checked |
      | Separate_Decisions_HL_MAL_CC_CHECKED | Checked    |
      | Separate_Decisions_HL_MAL_CHECKED    | Un-Checked |
      | Separate_Decisions_HL_CC_CHECKED     | Checked    |
      | Separate_Decisions_HL_CHECKED        | Un-Checked |
      | Separate_Decisions_PL_MAL_CC_CHECKED | Checked    |
      | Separate_Decisions_PL_MAL_CHECKED    | Un-Checked |
      | Separate_Decisions_PL_CC_CHECKED     | Checked    |
      | Separate_Decisions_PL_CHECKED        | Un-Checked |
      | Separate_Decisions_MAL_CC_CHECKED    | Checked    |
      | Separate_Decisions_MAL_CHECKED       | Un-Checked |
      | Separate_Decisions_CC_CHECKED        | Checked    |


####################################################################################################
# SECTION 3: COMMITTEE TASK SCREEN – PARENT LEVEL DECISION
####################################################################################################
  @CommitteeApproval
   Scenario Outline:AT COMMITTEE APPROVAL : For App with [ <LogicalID> ] Parent Level Decision should be Editable for Omni Loan
    Given all prerequisite are performed in previous scenario of "Omni Loan" logical id "<LogicalID>" with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    When user logout from CAS
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "CommitteeUser" and 1
    And user open committee approval grid
    And search the initiated committee approval application
    And user opens the initiated committee approval application for current user
    Then committee decision should be Dropdown should be enabled for user to take decision
    Examples:
      | LogicalID                            |
      | Separate_Decisions_ALL_CHECKED       |
      | Separate_Decisions_HL_PL_MAL_CHECKED |
      | Separate_Decisions_HL_PL_CC_CHECKED  |
      | Separate_Decisions_HL_PL_CHECKED     |
      | Separate_Decisions_HL_MAL_CC_CHECKED |
      | Separate_Decisions_HL_MAL_CHECKED    |
      | Separate_Decisions_HL_CC_CHECKED     |
      | Separate_Decisions_HL_CHECKED        |
      | Separate_Decisions_PL_MAL_CC_CHECKED |
      | Separate_Decisions_PL_MAL_CHECKED    |
      | Separate_Decisions_PL_CC_CHECKED     |
      | Separate_Decisions_PL_CHECKED        |
      | Separate_Decisions_MAL_CC_CHECKED    |
      | Separate_Decisions_MAL_CHECKED       |
      | Separate_Decisions_CC_CHECKED        |

  @CommitteeApproval
   Scenario Outline:AT COMMITTEE APPROVAL : For App with [ <LogicalID> ] Committee Member <MemberNumber> should be able to submit decision after providing Parent Level Decision
    Given all prerequisite are performed in previous scenario of "Omni Loan" logical id "<LogicalID>" with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    When user logout from CAS
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "CommitteeUser" and "<MemberNumber>"
    And user open committee approval grid
    And search the initiated committee approval application
    And user opens the initiated committee approval application for current user
    And user selects committee decision as "reject"
    And user selects reason for committee decision as "Not Approved"
    And user click on save in committee approval
    Then committee decision should be saved successfully
    Examples:
      | LogicalID                            | MemberNumber |
      | Separate_Decisions_ALL_CHECKED       | 1            |
      | Separate_Decisions_ALL_CHECKED       | 2            |
      | Separate_Decisions_ALL_CHECKED       | 3            |
      | Separate_Decisions_ALL_CHECKED       | 4            |
      | Separate_Decisions_ALL_CHECKED       | 5            |

      | Separate_Decisions_HL_PL_MAL_CHECKED | 1            |
      | Separate_Decisions_HL_PL_MAL_CHECKED | 2            |
      | Separate_Decisions_HL_PL_MAL_CHECKED | 3            |
      | Separate_Decisions_HL_PL_MAL_CHECKED | 4            |
      | Separate_Decisions_HL_PL_MAL_CHECKED | 5            |

      | Separate_Decisions_HL_PL_CC_CHECKED  | 1            |
      | Separate_Decisions_HL_PL_CC_CHECKED  | 2            |
      | Separate_Decisions_HL_PL_CC_CHECKED  | 3            |
      | Separate_Decisions_HL_PL_CC_CHECKED  | 4            |
      | Separate_Decisions_HL_PL_CC_CHECKED  | 5            |

      | Separate_Decisions_HL_PL_CHECKED     | 1            |
      | Separate_Decisions_HL_PL_CHECKED     | 2            |
      | Separate_Decisions_HL_PL_CHECKED     | 3            |
      | Separate_Decisions_HL_PL_CHECKED     | 4            |
      | Separate_Decisions_HL_PL_CHECKED     | 5            |

      | Separate_Decisions_HL_MAL_CC_CHECKED | 1            |
      | Separate_Decisions_HL_MAL_CC_CHECKED | 2            |
      | Separate_Decisions_HL_MAL_CC_CHECKED | 3            |
      | Separate_Decisions_HL_MAL_CC_CHECKED | 4            |
      | Separate_Decisions_HL_MAL_CC_CHECKED | 5            |

      | Separate_Decisions_HL_MAL_CHECKED    | 1            |
      | Separate_Decisions_HL_MAL_CHECKED    | 2            |
      | Separate_Decisions_HL_MAL_CHECKED    | 3            |
      | Separate_Decisions_HL_MAL_CHECKED    | 4            |
      | Separate_Decisions_HL_MAL_CHECKED    | 5            |

      | Separate_Decisions_HL_CC_CHECKED     | 1            |
      | Separate_Decisions_HL_CC_CHECKED     | 2            |
      | Separate_Decisions_HL_CC_CHECKED     | 3            |
      | Separate_Decisions_HL_CC_CHECKED     | 4            |
      | Separate_Decisions_HL_CC_CHECKED     | 5            |

      | Separate_Decisions_HL_CHECKED        | 1            |
      | Separate_Decisions_HL_CHECKED        | 2            |
      | Separate_Decisions_HL_CHECKED        | 3            |
      | Separate_Decisions_HL_CHECKED        | 4            |
      | Separate_Decisions_HL_CHECKED        | 5            |

      | Separate_Decisions_PL_MAL_CC_CHECKED | 1            |
      | Separate_Decisions_PL_MAL_CC_CHECKED | 2            |
      | Separate_Decisions_PL_MAL_CC_CHECKED | 3            |
      | Separate_Decisions_PL_MAL_CC_CHECKED | 4            |
      | Separate_Decisions_PL_MAL_CC_CHECKED | 5            |

      | Separate_Decisions_PL_MAL_CHECKED    | 1            |
      | Separate_Decisions_PL_MAL_CHECKED    | 2            |
      | Separate_Decisions_PL_MAL_CHECKED    | 3            |
      | Separate_Decisions_PL_MAL_CHECKED    | 4            |
      | Separate_Decisions_PL_MAL_CHECKED    | 5            |

      | Separate_Decisions_PL_CC_CHECKED     | 1            |
      | Separate_Decisions_PL_CC_CHECKED     | 2            |
      | Separate_Decisions_PL_CC_CHECKED     | 3            |
      | Separate_Decisions_PL_CC_CHECKED     | 4            |
      | Separate_Decisions_PL_CC_CHECKED     | 5            |

      | Separate_Decisions_PL_CHECKED        | 1            |
      | Separate_Decisions_PL_CHECKED        | 2            |
      | Separate_Decisions_PL_CHECKED        | 3            |
      | Separate_Decisions_PL_CHECKED        | 4            |
      | Separate_Decisions_PL_CHECKED        | 5            |

      | Separate_Decisions_MAL_CC_CHECKED    | 1            |
      | Separate_Decisions_MAL_CC_CHECKED    | 2            |
      | Separate_Decisions_MAL_CC_CHECKED    | 3            |
      | Separate_Decisions_MAL_CC_CHECKED    | 4            |
      | Separate_Decisions_MAL_CC_CHECKED    | 5            |

      | Separate_Decisions_MAL_CHECKED       | 1            |
      | Separate_Decisions_MAL_CHECKED       | 2            |
      | Separate_Decisions_MAL_CHECKED       | 3            |
      | Separate_Decisions_MAL_CHECKED       | 4            |
      | Separate_Decisions_MAL_CHECKED       | 5            |

      | Separate_Decisions_CC_CHECKED        | 1            |
      | Separate_Decisions_CC_CHECKED        | 2            |
      | Separate_Decisions_CC_CHECKED        | 3            |
      | Separate_Decisions_CC_CHECKED        | 4            |
      | Separate_Decisions_CC_CHECKED        | 5            |


   Scenario Outline:AT COMMITTEE APPROVAL : For App with [ <LogicalID> ] After Committee Approval actions original Decision should retain their status at Credit Approval Stage
    Given all prerequisite are performed in previous scenario of "Omni Loan" logical id "<LogicalID>"
    And user opens an application of "Credit Approval" stage present in context from application grid
    When user opens the Decision Drawer at Credit Approval Stage
    And user can terminate that initiated committee approval
    And user "terminate" committee approval
    And user clicks on Product Type Decision List Tab
    Then Decision checkboxes should be as follows
      | Home Loan     | <HL_ExpectedCheckBoxStatus>   |
      | Personal Loan | <PL_ExpectedCheckBoxStatus>   |
      | Auto Loan     | <Auto_ExpectedCheckBoxStatus> |
    And Decision checkbox for cards should be as
      | Primary Card | <PrimaryCardStatus> |
      | Add On Card  | <AddOnCardStatus>   |
    Examples:
      | LogicalID                            | HL_ExpectedCheckBoxStatus | PL_ExpectedCheckBoxStatus | Auto_ExpectedCheckBoxStatus | PrimaryCardStatus | AddOnCardStatus |
      | Separate_Decisions_ALL_CHECKED       | Checked                   | Checked                   | Checked                     | Checked           | Checked         |
      | Separate_Decisions_HL_PL_MAL_CHECKED | Checked                   | Checked                   | Checked                     | Un-Checked        | Un-Checked      |
      | Separate_Decisions_HL_PL_CC_CHECKED  | Checked                   | Checked                   | Un-Checked                  | Checked           | Checked         |
      | Separate_Decisions_HL_PL_CHECKED     | Checked                   | Checked                   | Un-Checked                  | Un-Checked        | Un-Checked      |
      | Separate_Decisions_HL_MAL_CC_CHECKED | Checked                   | Un-Checked                | Checked                     | Checked           | Checked         |
      | Separate_Decisions_HL_MAL_CHECKED    | Checked                   | Un-Checked                | Checked                     | Un-Checked        | Un-Checked      |
      | Separate_Decisions_HL_CC_CHECKED     | Checked                   | Un-Checked                | Un-Checked                  | Checked           | Checked         |
      | Separate_Decisions_HL_CHECKED        | Checked                   | Un-Checked                | Un-Checked                  | Un-Checked        | Un-Checked      |
      | Separate_Decisions_PL_MAL_CC_CHECKED | Un-Checked                | Checked                   | Checked                     | Checked           | Checked         |
      | Separate_Decisions_PL_MAL_CHECKED    | Un-Checked                | Checked                   | Checked                     | Un-Checked        | Un-Checked      |
      | Separate_Decisions_PL_CC_CHECKED     | Un-Checked                | Checked                   | Un-Checked                  | Checked           | Checked         |
      | Separate_Decisions_PL_CHECKED        | Un-Checked                | Checked                   | Un-Checked                  | Un-Checked        | Un-Checked      |
      | Separate_Decisions_MAL_CC_CHECKED    | Un-Checked                | Un-Checked                | Checked                     | Checked           | Checked         |
      | Separate_Decisions_MAL_CHECKED       | Un-Checked                | Un-Checked                | Checked                     | Un-Checked        | Un-Checked      |
      | Separate_Decisions_CC_CHECKED        | Un-Checked                | Un-Checked                | Un-Checked                  | Checked           | Checked         |


