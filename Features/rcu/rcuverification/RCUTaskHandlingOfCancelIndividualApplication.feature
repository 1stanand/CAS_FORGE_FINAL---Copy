@Epic-RCU
@ReviewedBy-None
#@AuthoredBy-vinod.pandey
@AuthoredBy-vipin.kishor
Feature:RCU Task Handling Of Cancel Individual Application

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 7

    #FeatureID-ACAUTOCAS-519
  Scenario Outline: ACAUTOCAS-4807: Cancel initiated individual <Loan_type> application of <Stage> stage is shown in rcu initiation search grid
    And user initiated the individual "<Loan_Type>" application of "<Stage>" for cancellation
    When user navigates to rcu initiation screen
    And user reads data from the excel file "<RCU_WB>" under sheet "<RCU_home>" and row "<RCU_home_rowNum>"
    And user searches application using application id
    Then application is displayed in search grid
    Examples:
      | Loan_Type     | Stage            | RCU_WB | RCU_home | RCU_home_rowNum |
      | Home Loan     | RCU Initiation   |        |          |                 |
      | Home Loan     | RCU Verification |        |          |                 |
      | Home Loan     | RCU Referral     |        |          |                 |
      | Auto Loan     | RCU Initiation   |        |          |                 |
      | Auto Loan     | RCU Verification |        |          |                 |
      | Auto Loan     | RCU Referral     |        |          |                 |
      | Personal Loan | RCU Initiation   |        |          |                 |
      | Personal Loan | RCU Verification |        |          |                 |
      | Personal Loan | RCU Referral     |        |          |                 |

     #FeatureID-ACAUTOCAS-519
  Scenario Outline: ACAUTOCAS-4808: After canceling the individual <Loan_Type> application the RCU status changes from initiated to not initiated
    And user initiated the individual "<Loan_Type>" application for cancellation
    When user navigates to rcu initiation screen
    And user reads data from the excel file "<RCU_WB>" under sheet "<RCU_home>" and <RCU_home_rowNum>
    And user searches application using application id
    Then rcu status of the application is not initiated
    Examples:
      | Loan_Type     | RCU_WB | RCU_home | RCU_home_rowNum |
      | Home Loan     |        |          |                 |
      | Auto Loan     |        |          |                 |
      | Personal Loan |        |          |                 |

 #FeatureID-ACAUTOCAS-519
  Scenario Outline: ACAUTOCAS-4809: After canceling the individual <Loan_Type> application the RCU status does not change from <var>
    And user initiated the individual "<Loan_Type>" application for cancellation
    When user navigates to rcu initiation screen
    And user reads data from the excel file "<RCU_WB>" under sheet "<RCU_home>" and row "<RCU_home_rowNum>"
    And user searches application using application id
    Then rcu status of the application is "<var>"
    Examples:
      | Loan_Type     | var           | RCU_WB | RCU_home | RCU_home_rowNum |
      | Home Loan     | Completed     |        |          |                 |
      | Home Loan     | In-Progress   |        |          |                 |
      | Home Loan     | Not Initiated |        |          |                 |
      | Home Loan     | Waived        |        |          |                 |
      | Auto Loan     | Completed     |        |          |                 |
      | Auto Loan     | In-Progress   |        |          |                 |
      | Auto Loan     | Not Initiated |        |          |                 |
      | Auto Loan     | Waived        |        |          |                 |
      | Personal Loan | Completed     |        |          |                 |
      | Personal Loan | In-Progress   |        |          |                 |
      | Personal Loan | Not Initiated |        |          |                 |
      | Personal Loan | Waived        |        |          |                 |

#    doubt?-------------------------------------------------------------------
   #FeatureID-ACAUTOCAS-519
  Scenario Outline: ACAUTOCAS-4810: Cancel initiated individual <Loan_Type> application can not be <var>
    And user initiated the individual "<Loan_Type>" application for cancellation
    When user navigates to rcu initiation screen
    And user reads data from the excel file "RCU_WB" under sheet "RCU_home" and row RCU_home_rowNum
    And user searches application using application id along with status as "<var1>"
    Then user can not "<var>" the application
#Note:RCU initiated means RCU decision (Screening ok/not ok, RCU pending, Sampling required) is saved at RCU initiation stage.
    Examples:
      | Loan_Type     | var         | var1          |
      | Home Loan     | initiate    | not initiated |
      | Home Loan     | wave off    | not initiated |
      | Home Loan     | Re initiate | completed     |
      | Auto Loan     | initiate    | not initiated |
      | Auto Loan     | wave off    | not initiated |
      | Auto Loan     | Re initiate | completed     |
      | Personal Loan | initiate    | not initiated |
      | Personal Loan | wave off    | not initiated |
      | Personal Loan | Re initiate | completed     |

  #application will display or not it is configurable
   #FeatureID-ACAUTOCAS-519
  Scenario Outline: ACAUTOCAS-4811: Cancel initiated individual <Loan_Type> application of <var> stage is not shown in <var> search grid
    And user initiated the individual "<Loan_Type>" application of "<var>" for cancellation
    When user navigates to "<var>" screen
    And user reads data from the excel file "<RCU_WB>" under sheet "<RCU_home>" and row <RCU_home_rowNum>
    And user searches application using application id
    Then application is not displayed in search grid
    Examples:
      | Loan_Type     | var              | RCU_WB | RCU_home | RCU_home_rowNum |
      | Home Loan     | RCU Referral     |        |          |                 |
      | Home Loan     | RCU Verification |        |          |                 |
      | Personal Loan | RCU Referral     |        |          |                 |
      | Personal Loan | RCU Verification |        |          |                 |
      | Auto Loan     | RCU Referral     |        |          |                 |
      | Auto Loan     | RCU Verification |        |          |                 |

     #FeatureID-ACAUTOCAS-519
  Scenario Outline: ACAUTOCAS-4812: Cancelled individual <Loan_Type> application of <Stage> stage not shown in rcu initiation search grid
    And user cancel the individual "<Loan_Type>" application of "<Stage>"
    When user navigates to rcu initiation screen
    And user reads data from the excel file "<RCU_WB>" under sheet "<RCU_home>" and row "<RCU_home_rowNum>"
    And user searches application using application id
    Then application is not displayed in search grid
    Examples:
      | Loan_Type     | Stage            | RCU_WB | RCU_home | RCU_home_rowNum |
      | Home Loan     | RCU Initiation   |        |          |                 |
      | Home Loan     | RCU Verification |        |          |                 |
      | Home Loan     | RCU Referral     |        |          |                 |
      | Auto Loan     | RCU Initiation   |        |          |                 |
      | Auto Loan     | RCU Verification |        |          |                 |
      | Auto Loan     | RCU Referral     |        |          |                 |
      | Personal Loan | RCU Initiation   |        |          |                 |
      | Personal Loan | RCU Verification |        |          |                 |
      | Personal Loan | RCU Referral     |        |          |                 |

     #FeatureID-ACAUTOCAS-519
  Scenario Outline: ACAUTOCAS-4813: Cancelled individual <Loan_Type> application of <var> stage is not shown in <var> search grid
    And user cancel the individual "<Loan_Type>" application of "<Stage>"
    When user navigates to "<var>" screen
    And user reads data from the excel file "<RCU_WB>" under sheet "<RCU_home>" and row <RCU_home_rowNum>
    And user searches application using application id
    Then application is not displayed in search grid
    Examples:
      | Loan_Type     | var              | RCU_WB | RCU_home | RCU_home_rowNum |
      | Home Loan     | RCU Referral     |        |          |                 |
      | Home Loan     | RCU Verification |        |          |                 |
      | Personal Loan | RCU Referral     |        |          |                 |
      | Personal Loan | RCU Verification |        |          |                 |
      | Auto Loan     | RCU Referral     |        |          |                 |
      | Auto Loan     | RCU Verification |        |          |                 |

