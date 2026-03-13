@Epic-Recommendation
@ReviewedBy-tushar.chauhan
#@AuthoredBy-vinod.pandey
@AuthoredBy-vipin.kishor
@ReviewedByDEV

Feature:Validate CAM Report Details Generated At Reconsideration Stage

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 7

   #FeatureID-ACAUTOCAS-5497
  @ImplementedBy-aniket.tripathi
  @Release3
  Scenario Outline: ACAUTOCAS-5505: Validate <Field_Name> within application details in CAM report generated at reconsideration stage of <Loan_Type> application
    And user logout from CAS
    And user logged in "CAS" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user opens an application at "<Var_Stage>" stage from application grid
    When user records the "<Field_Name>" of above application at "<Stage>"
    And user click on CAM report at "<Stage>"
    And user records the "<Field_Name>" of CAM report for "<Loan_Type>"
    Then "<Field_Name>" is same as above record
    Examples:
      | Loan_Type     | Field_Name                | Var_Stage                      | Stage           |
      | Home Loan     | Product type              | reconsideration_individual_hl  | Reconsideration |
      | Home Loan     | Product                   | reconsideration_individual_hl  | Reconsideration |
      | Home Loan     | Branch                    | reconsideration_individual_hl  | Reconsideration |
      | Home Loan     | Application ID            | reconsideration_individual_hl  | Reconsideration |
      | Home Loan     | Application Creation Date | reconsideration_individual_hl  | Reconsideration |
      | Personal Loan | Product type              | reconsideration_individual_pl  | Reconsideration |
      | Personal Loan | Product                   | reconsideration_individual_pl  | Reconsideration |
      | Personal Loan | Branch                    | reconsideration_individual_pl  | Reconsideration |
      | Personal Loan | Application ID            | reconsideration_individual_pl  | Reconsideration |
      | Personal Loan | Application Creation Date | reconsideration_individual_pl  | Reconsideration |
      | Auto Loan     | Product type              | reconsideration_individual_mal | Reconsideration |
      | Auto Loan     | Product                   | reconsideration_individual_mal | Reconsideration |
      | Auto Loan     | Branch                    | reconsideration_individual_mal | Reconsideration |
      | Auto Loan     | Application ID            | reconsideration_individual_mal | Reconsideration |
      | Auto Loan     | Application Creation Date | reconsideration_individual_mal | Reconsideration |

  @ImplementedBy-aniket.tripathi
  @Release3
  #FeatureID-ACAUTOCAS-5497
  Scenario Outline: ACAUTOCAS-5506: Validate <Field_Name> within loan details in CAM report generated at reconsideration stage of <Loan_Type> application
    And user logout from CAS
    And user logged in "CAS" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user opens an application at "<Var_Stage>" stage from application grid
    When user records the "<Field_Name>" of above application at "<Stage>"
    And user click on CAM report at "<Stage>"
    And user records the "<Field_Name>" of CAM report for "<Loan_Type>"
    Then "<Field_Name>" is same as above record
    Examples:
      | Loan_Type     | Field_Name       | Var_Stage                      | Stage           |
      | Home Loan     | Scheme           | reconsideration_individual_hl  | Reconsideration |
      | Home Loan     | Channel          | reconsideration_individual_hl  | Reconsideration |
      | Home Loan     | Loan Purpose     | reconsideration_individual_hl  | Reconsideration |
      | Home Loan     | Amount Requested | reconsideration_individual_hl  | Reconsideration |
      | Home Loan     | Sourcing RM Name | reconsideration_individual_hl  | Reconsideration |
      | Personal Loan | Scheme           | reconsideration_individual_pl  | Reconsideration |
      | Personal Loan | Channel          | reconsideration_individual_pl  | Reconsideration |
      | Personal Loan | Loan Purpose     | reconsideration_individual_pl  | Reconsideration |
      | Personal Loan | Amount Requested | reconsideration_individual_pl  | Reconsideration |
      | Personal Loan | Sourcing RM Name | reconsideration_individual_pl  | Reconsideration |
      | Auto Loan     | Scheme           | reconsideration_individual_mal | Reconsideration |
      | Auto Loan     | Channel          | reconsideration_individual_mal | Reconsideration |
      | Auto Loan     | Loan Purpose     | reconsideration_individual_mal | Reconsideration |
      | Auto Loan     | Amount Requested | reconsideration_individual_mal | Reconsideration |
      | Auto Loan     | Sourcing RM Name | reconsideration_individual_mal | Reconsideration |

  @ImplementedBy-aniket.tripathi
  @Release3
   #FeatureID-ACAUTOCAS-5497
  Scenario Outline: ACAUTOCAS-5508: Validate <Field_Name> within applicant personal details in CAM report generated at reconsideration stage of <Loan_Type> application
    And user logout from CAS
    And user logged in "CAS" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user opens an application at "<Var_Stage>" stage from application grid
    When user records the "<Field_Name>" of applicant profile at "<Stage>" stage
    And user click on CAM report at "<Stage>"
    And user records the "<Field_Name>" of CAM report for "<Loan_Type>"
    Then "<Field_Name>" is same as above record
    Examples:
      | Loan_Type     | Field_Name     | Var_Stage                      | Stage           |
      | Home Loan     | Applicant Type | reconsideration_individual_hl  | Reconsideration |
      | Home Loan     | Name           | reconsideration_individual_hl  | Reconsideration |
      | Home Loan     | Phone no       | reconsideration_individual_hl  | Reconsideration |
      | Home Loan     | Age            | reconsideration_individual_hl  | Reconsideration |
      | Auto Loan     | Applicant Type | reconsideration_individual_mal | Reconsideration |
      | Auto Loan     | Name           | reconsideration_individual_mal | Reconsideration |
      | Auto Loan     | Phone no       | reconsideration_individual_mal | Reconsideration |
      | Auto Loan     | Age            | reconsideration_individual_mal | Reconsideration |
      | Personal Loan | Applicant Type | reconsideration_individual_pl  | Reconsideration |
      | Personal Loan | Name           | reconsideration_individual_pl  | Reconsideration |
      | Personal Loan | Phone no       | reconsideration_individual_pl  | Reconsideration |
      | Personal Loan | Age            | reconsideration_individual_pl  | Reconsideration |

    #FeatureID-ACAUTOCAS-5496
  Scenario Outline: ACAUTOCAS-5509: Validate <var> within employment details in CAM report generated at reconsideration stage of <Loan_Type> application
    When user selects the "<Loan_Type>" application of reconsideration stage
    And user records the "<var>" of above application
    And user click on CAM report
    Then "<var>" is same as above record
    Examples:
      | Loan_Type     | var                   |
      | Home Loan     | Applicant Name        |
      | Home Loan     | Employment Type       |
      | Home Loan     | Employer Name         |
      | Home Loan     | Employer Constiution  |
      | Home Loan     | Designation           |
      | Home Loan     | Nature of Business    |
      | Auto Loan     | Applicant Name        |
      | Auto Loan     | Employment Type       |
      | Auto Loan     | Employer Name         |
      | Auto Loan     | Employer Constitution |
      | Auto Loan     | Designation           |
      | Auto Loan     | Nature of Business    |
      | Personal Loan | Applicant Name        |
      | Personal Loan | Employment Type       |
      | Personal Loan | Employer Name         |
      | Personal Loan | Employer Constitution |
      | Personal Loan | Designation           |
      | Personal Loan | Nature of Business    |

    #FeatureID-ACAUTOCAS-5496
  Scenario Outline: ACAUTOCAS-5510: Validate <var> within <var1> in CAM report generated at reconsideration stage of <Loan_Type> application
    When user selects the "<Loan_Type>" application of reconsideration stage
    And user records the "<var>" of above application
    And user click on CAM report
    Then "<var>" is same as above record
    Examples:
      | Loan_Type     | var                    | var1               |
      | Home Loan     | Collateral ID          | Property Details   |
      | Home Loan     | Property Address       | Property Details   |
      | Home Loan     | Nature Of Property     | Property Details   |
      | Home Loan     | Property Type          | Property Details   |
      | Home Loan     | Property Cost          | Property Details   |
      | Auto Loan     | Bought From            | Asset Details      |
      | Auto Loan     | Category               | Asset Details      |
      | Auto Loan     | Asset Cost             | Asset Details      |
      | Auto Loan     | Margin Money           | Asset Details      |
      | Auto Loan     | Amount Financed        | Asset Details      |
      | Personal Loan | Collateral ID          | Collateral Details |
      | Personal Loan | Collateral Type        | Collateral Details |
      | Personal Loan | Collateral SubType     | Collateral Details |
      | Personal Loan | Collateral Description | Collateral Details |
      | Personal Loan | Collateral Value       | Collateral Details |

    #    5jan-------------------------------------------------------

  #FeatureID-ACAUTOCAS-5496
  Scenario Outline: ACAUTOCAS-5546: Validate <var> with in charge details in CAM report generated at reconsideration stage of <Loan_Type> application
    When user selects the "<Loan_Type>" application of reconsideration stage
    And user records the "<var>" of above application
    And user click on CAM report
    Then "<var>" is same as above record in charge details
    Examples:
      | Loan_Type     | var            |
      | Home Loan     | Charge Name    |
      | Home Loan     | Applicant Type |
      | Home Loan     | Applicant Name |
      | Home Loan     | Charge Amount  |
      | Auto Loan     | Charge Name    |
      | Auto Loan     | Applicant Type |
      | Auto Loan     | Applicant Name |
      | Auto Loan     | Charge Amount  |
      | Personal Loan | Charge Name    |
      | Personal Loan | Applicant Type |
      | Personal Loan | Applicant Name |
      | Personal Loan | Charge Amount  |

    #FeatureID-ACAUTOCAS-5496
  Scenario Outline: ACAUTOCAS-5547: Validate <var> with in verification details in CAM report generated at reconsideration stage of <Loan_Type> application
    When user selects the "<Loan_Type>" application of reconsideration stage
    And user records the "<var>" of above application
    And user click on CAM report
    Then "<var>" is same as above record in verification details
    Examples:
      | Loan_Type     | var                        |
      | Home Loan     | Applicant                  |
      | Home Loan     | Field Investigation Status |
      | Home Loan     | RCU Status                 |
      | Auto Loan     | Applicant                  |
      | Auto Loan     | Field Investigation Status |
      | Auto Loan     | RCU Status                 |
      | Personal Loan | Applicant                  |
      | Personal Loan | Field Investigation Status |
      | Personal Loan | RCU Status                 |

    #FeatureID-ACAUTOCAS-5496
  Scenario Outline: ACAUTOCAS-5548: <var> is blank with in post approval details in CAM report generated at reconsideration stage of <Loan_Type> application
    When user selects the "<Loan_Type>" application of reconsideration stage
    And user click on CAM report
    Then no detail is av available in "<var>"
    Examples:
      | Loan_Type     | var                   |
      | Home Loan     | Document Description  |
      | Home Loan     | Document Received For |
      | Home Loan     | Status                |
      | Home Loan     | Mandatory             |
      | Home Loan     | Received Date         |
      | Home Loan     | Remarks               |
      | Auto Loan     | Document Description  |
      | Auto Loan     | Document Received For |
      | Auto Loan     | Status                |
      | Auto Loan     | Mandatory             |
      | Auto Loan     | Received Date         |
      | Auto Loan     | Remarks               |
      | Personal Loan | Document Description  |
      | Personal Loan | Document Received For |
      | Personal Loan | Status                |
      | Personal Loan | Mandatory             |
      | Personal Loan | Received Date         |
      | Personal Loan | Remarks               |

#FeatureID-ACAUTOCAS-5496
  Scenario Outline: ACAUTOCAS-5788:  <var> is blank within post approval details in CAM report generated at reconsideration stage of <Loan_Type> application
    When user selects the "<Loan_Type>" application of reconsideration stage
    And user click on CAM report
    Then no detail is available in "<var>"
    Examples:
      | Loan_Type     | var                   |
      | Home Loan     | Document Description  |
      | Home Loan     | Document Received For |
      | Home Loan     | Status                |
      | Home Loan     | Mandatory             |
      | Home Loan     | Received Date         |
      | Home Loan     | Remarks               |
      | Auto Loan     | Document Description  |
      | Auto Loan     | Document Received For |
      | Auto Loan     | Status                |
      | Auto Loan     | Mandatory             |
      | Auto Loan     | Received Date         |
      | Auto Loan     | Remarks               |
      | Personal Loan | Document Description  |
      | Personal Loan | Document Received For |
      | Personal Loan | Status                |
      | Personal Loan | Mandatory             |
      | Personal Loan | Received Date         |
      | Personal Loan | Remarks               |
