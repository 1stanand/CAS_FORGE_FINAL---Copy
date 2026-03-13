@Epic-Recommendation
@ReviewedByDEV
#@AuthoredBy-vinod.pandey
@AuthoredBy-vipin.kishor
#FeatureID-ACAUTOCAS-5496
Feature:Validate CAM Report Details Generated At Post Approval Stage

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0

  @ImplementedBy-tushar.chauhan
    @Release3
  Scenario Outline: ACAUTOCAS-5789: Validate <Field_Name> within application details in CAM report generated at post approval stage of <Loan_Type> application
    And user logout from CAS
    And user logged in "CAS" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user opens an application at "<Var_Stage>" stage from application grid
    When user records the "<Field_Name>" of above application at "<Stage>"
    And user click on CAM report at "<Stage>"
    And user records the "<Field_Name>" of CAM report for "<Loan_Type>"
    Then "<Field_Name>" is same as above record

    @LoggedBug
    Examples:
      | Loan_Type     | Field_Name                | Var_Stage              | Stage         |
      | Home Loan     | Product                   | post approval_indiv_hl | Post Approval |
      | Home Loan     | Date Of Receipt           | post approval_indiv_hl | Post Approval |
      | Personal Loan | Application ID            | post approval_indiv_pl | Post Approval |
      | Personal Loan | Application Creation Date | post approval_indiv_pl | Post Approval |
      | Personal Loan | Date Of Receipt           | post approval_indiv_pl | Post Approval |
      | Auto Loan     | Product type              | post approval_indiv_mal | Post Approval |
      | Auto Loan     | Date Of Receipt           | post approval_indiv_mal | Post Approval |

    Examples:
      | Loan_Type     | Field_Name                | Var_Stage              | Stage         |
      | Home Loan     | Product type              | post approval_indiv_hl | Post Approval |
      | Home Loan     | Branch                    | post approval_indiv_hl | Post Approval |
      | Home Loan     | Application ID            | post approval_indiv_hl | Post Approval |
      | Home Loan     | Application Creation Date | post approval_indiv_hl | Post Approval |
      | Personal Loan | Product type              | post approval_indiv_pl | Post Approval |
      | Personal Loan | Product                   | post approval_indiv_pl | Post Approval |
      | Personal Loan | Branch                    | post approval_indiv_pl | Post Approval |
      | Auto Loan     | Product                   | post approval_indiv_mal | Post Approval |
      | Auto Loan     | Branch                    | post approval_indiv_mal | Post Approval |
      | Auto Loan     | Application ID            | post approval_indiv_mal | Post Approval |
      | Auto Loan     | Application Creation Date | post approval_indiv_mal | Post Approval |

  @ImplementedBy-tushar.chauhan
    @Release3
  Scenario Outline: ACAUTOCAS-5790: Validate <Field_Name> within loan details in CAM report generated at Post Approval stage of <Loan_Type> application
    And user logout from CAS
    And user logged in "CAS" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user opens an application at "<Var_Stage>" stage from application grid
    When user records the "<Field_Name>" of above application at "<Stage>"
    And user click on CAM report at "<Stage>"
    And user records the "<Field_Name>" of CAM report for "<Loan_Type>"
    Then "<Field_Name>" is same as above record

    @LoggedBug
    Examples:
      | Loan_Type     | Field_Name             | Var_Stage              | Stage         |
      | Home Loan     | Type of Loan           | post approval_indiv_hl | Post Approval |
      | Home Loan     | Loan Application Type  | post approval_indiv_hl | Post Approval |
      | Home Loan     | Total Loan Amount      | post approval_indiv_hl | Post Approval |
      | Home Loan     | Amount Requested       | post approval_indiv_hl | Post Approval |
      | Home Loan     | Loan Amount Sanctioned | post approval_indiv_hl | Post Approval |
      | Home Loan     | ROI                    | post approval_indiv_hl | Post Approval |
      | Home Loan     | Tenure                 | post approval_indiv_hl | Post Approval |
      | Home Loan     | Installment Amount     | post approval_indiv_hl | Post Approval |
      | Personal Loan | Type of Loan           | post approval_indiv_pl | Post Approval |
      | Personal Loan | Loan Application Type  | post approval_indiv_pl | Post Approval |
      | Personal Loan | Total Loan Amount      | post approval_indiv_pl | Post Approval |
      | Personal Loan | Loan Amount Sanctioned | post approval_indiv_pl | Post Approval |
      | Personal Loan | ROI                    | post approval_indiv_pl | Post Approval |
      | Personal Loan | Tenure                 | post approval_indiv_pl | Post Approval |
      | Personal Loan | Installment Amount     | post approval_indiv_pl | Post Approval |
      | Personal Loan | Sourcing RM Name       | post approval_indiv_pl | Post Approval |
      | Auto Loan     | Scheme                 | post approval_indiv_mal | Post Approval |
      | Auto Loan     | Type of Loan           | post approval_indiv_mal | Post Approval |
      | Auto Loan     | Loan Purpose           | post approval_indiv_mal | Post Approval |
      | Auto Loan     | Loan Application Type  | post approval_indiv_mal | Post Approval |
      | Auto Loan     | Total Loan Amount      | post approval_indiv_mal | Post Approval |
      | Auto Loan     | Amount Requested       | post approval_indiv_mal | Post Approval |
      | Auto Loan     | Loan Amount Sanctioned | post approval_indiv_mal | Post Approval |
      | Auto Loan     | ROI                    | post approval_indiv_mal | Post Approval |
      | Auto Loan     | Tenure                 | post approval_indiv_mal | Post Approval |
      | Auto Loan     | Installment Amount     | post approval_indiv_mal | Post Approval |
      | Auto Loan     | Sourcing RM Name       | post approval_indiv_mal | Post Approval |

    Examples:
      | Loan_Type     | Field_Name       | Var_Stage              | Stage         |
      | Home Loan     | Scheme           | post approval_indiv_hl | Post Approval |
      | Home Loan     | Channel          | post approval_indiv_hl | Post Approval |
      | Home Loan     | Loan Purpose     | post approval_indiv_hl | Post Approval |
      | Home Loan     | Sourcing RM Name | post approval_indiv_hl | Post Approval |
      | Personal Loan | Scheme           | post approval_indiv_pl | Post Approval |
      | Personal Loan | Channel          | post approval_indiv_pl | Post Approval |
      | Personal Loan | Loan Purpose     | post approval_indiv_pl | Post Approval |
      | Personal Loan | Amount Requested | post approval_indiv_pl | Post Approval |
      | Auto Loan     | Channel          | post approval_indiv_mal | Post Approval |

  @ImplementedBy-tushar.chauhan
    @Release3
  Scenario Outline: ACAUTOCAS-5792: Validate <var> within applicant personal details in CAM report generated at Post Approval stage of <Loan_Type> application
    And user logout from CAS
    And user logged in "CAS" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user opens an application at "<Var_Stage>" stage from application grid
    When user records the "<Field_Name>" of applicant profile at "<Stage>" stage
    And user click on CAM report at "<Stage>"
    And user records the "<Field_Name>" of CAM report for "<Loan_Type>"
    Then "<Field_Name>" is same as above record

    @LoggedBug
    Examples:
      | Loan_Type     | Field_Name     | Var_Stage              | Stage         |
      | Home Loan     | Applicant Type | post approval_indiv_hl | Post Approval |
      | Home Loan     | Name           | post approval_indiv_hl | Post Approval |
      | Home Loan     | Phone no       | post approval_indiv_hl | Post Approval |
      | Home Loan     | Age            | post approval_indiv_hl | Post Approval |
      | Home Loan     | Constitution   | post approval_indiv_hl | Post Approval |
      | Auto Loan     | Applicant Type | post approval_indiv_mal | Post Approval |
      | Auto Loan     | Name           | post approval_indiv_mal | Post Approval |
      | Auto Loan     | Age            | post approval_indiv_mal | Post Approval |
      | Auto Loan     | Constitution   | post approval_indiv_mal | Post Approval |
      | Personal Loan | Applicant Type | post approval_indiv_hl | Post Approval |
      | Personal Loan | Name           | post approval_indiv_hl | Post Approval |
      | Personal Loan | Phone no       | post approval_indiv_hl | Post Approval |
      | Personal Loan | Age            | post approval_indiv_hl | Post Approval |
      | Personal Loan | Constitution   | post approval_indiv_hl | Post Approval |

    Examples:
      | Loan_Type | Field_Name | Var_Stage              | Stage         |
      | Auto Loan | Phone no   | post approval_indiv_mal | Post Approval |

    @NotImplemented
    #FeatureID-ACAUTOCAS-5496
  Scenario Outline: ACAUTOCAS-5791: Validate <var> within ability indicators in CAM report generated at Post Approval stage of <Loan_Type> application
    When user selects the "<Loan_Type>" application of Post Approval stage
    And user records the "<var>" of above application
    And user click on CAM report
    Then "<var>" is same as above record
    Examples:
      | Loan_Type     | var           |
      | Home Loan     | IIR           |
      | Home Loan     | DBR           |
      | Home Loan     | Net LTV       |
      | Home Loan     | Aggregate LTV |
      | Home Loan     | VAP LTV       |
      | Home Loan     | Gross LTV     |
      | Personal Loan | IIR           |
      | Personal Loan | DBR           |
      | Personal Loan | Net LTV       |
      | Personal Loan | Aggregate LTV |
      | Personal Loan | VAP LTV       |
      | Personal Loan | Gross LTV     |
      | Auto Loan     | IIR           |
      | Auto Loan     | DBR           |
      | Auto Loan     | Net LTV       |
      | Auto Loan     | Aggregate LTV |
      | Auto Loan     | VAP LTV       |
      | Auto Loan     | Gross LTV     |

  @NotImplemented
    #FeatureID-ACAUTOCAS-5496
  Scenario Outline: ACAUTOCAS-5793: Validate <var> within employment details in CAM report generated at Post Approval stage of <Loan_Type> application
    When user selects the "<Loan_Type>" application of Post Approval stage
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

  @NotImplemented
    #FeatureID-ACAUTOCAS-5496
  Scenario Outline: ACAUTOCAS-5794:Validate <var> within <var1> in CAM report generated at post approval stage of <Loan_Type> application
    When user selects the "<Loan_Type>" application of post approval stage
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

  @NotImplemented
#    _______________doubt?
  #FeatureID-ACAUTOCAS-5496
  Scenario Outline: ACAUTOCAS-5795: Validate <var> within charge details in CAM report generated at Post Approval stage of <Loan_Type> application
    When user selects the "<Loan_Type>" application of Post Approval stage
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

  @NotImplemented
#    _______________doubt?
  #FeatureID-ACAUTOCAS-5496
  Scenario Outline: ACAUTOCAS-5796: Validate <var> within verification details in CAM report generated at Post Approval stage of <Loan_Type> application
    When user selects the "<Loan_Type>" application of Post Approval stage
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

  @NotImplemented
    #FeatureID-ACAUTOCAS-5496
  Scenario Outline: ACAUTOCAS-5797: <var> is blank with in post approval details in CAM report generated at post approval stage of <Loan_Type> application
    When user selects the "<Loan_Type>" application of post approval stage
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
