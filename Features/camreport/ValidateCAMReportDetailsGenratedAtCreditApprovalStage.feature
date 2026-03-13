@Epic-Recommendation
@ReviewedBy-None
@ImplementedBy-richa.singh
#@AuthoredBy-vinod.pandey
@AuthoredBy-vipin.kishor
@ReviewedByDEV
Feature:Validate CAM Report Details Generated At Credit Approval Stage

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 7
    And user logout from CAS
    And user logged in "CAS" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0

  #FeatureID-ACAUTOCAS-5496
  Scenario Outline: ACAUTOCAS-5549: Validate <Field_Name> within application details in CAM report generated at credit approval stage of <Loan_Type> application
    When user opens an application at "<Var_Stage>" stage from application grid
    And user records the "<Field_Name>" of above application at "<Stage>"
    And user click on CAM report at "<Stage>"
    And user records the "<Field_Name>" of CAM report for "<Loan_Type>"
    Then "<Field_Name>" is same as above record
    @Release3
    Examples:
      | Loan_Type     | Field_Name                | Var_Stage           | Stage           |
      | Home Loan     | Product type              | credit approval_hl  | Credit Approval |
      | Home Loan     | Product                   | credit approval_hl  | Credit Approval |
      | Home Loan     | Branch                    | credit approval_hl  | Credit Approval |
      | Home Loan     | Application ID            | credit approval_hl  | Credit Approval |
      | Home Loan     | Application Creation Date | credit approval_hl  | Credit Approval |
      | Personal Loan | Product type              | credit approval     | Credit Approval |
      | Personal Loan | Product                   | credit approval     | Credit Approval |
      | Personal Loan | Branch                    | credit approval     | Credit Approval |
      | Personal Loan | Application ID            | credit approval     | Credit Approval |
      | Personal Loan | Application Creation Date | credit approval     | Credit Approval |
      | Auto Loan     | Product type              | credit approval_mal | Credit Approval |
      | Auto Loan     | Product                   | credit approval_mal | Credit Approval |
      | Auto Loan     | Branch                    | credit approval_mal | Credit Approval |
      | Auto Loan     | Application ID            | credit approval_mal | Credit Approval |
      | Auto Loan     | Application Creation Date | credit approval_mal | Credit Approval |

    @NotImplemented
    Examples:
      | Loan_Type     | var             |
      | Home Loan     | Date Of Receipt |
      | Personal Loan | Date Of Receipt |
      | Auto Loan     | Date Of Receipt |


    #FeatureID-ACAUTOCAS-5496
  Scenario Outline: ACAUTOCAS-5550: Validate <Field_Name> within loan details in CAM report generated at credit approval stage of <Loan_Type> application
    When user opens an application at "<Var_Stage>" stage from application grid
    And user records the "<Field_Name>" of above application at "<Stage>"
    And user click on CAM report at "<Stage>"
    And user records the "<Field_Name>" of CAM report for "<Loan_Type>"
    Then "<Field_Name>" is same as above record
    @Release3
    Examples:
      | Loan_Type     | Field_Name       | Var_Stage           | Stage           |
      | Home Loan     | Scheme           | credit approval_hl  | Credit Approval |
      | Home Loan     | Channel          | credit approval_hl  | Credit Approval |
      | Home Loan     | Loan Purpose     | credit approval_hl  | Credit Approval |
      | Home Loan     | Amount Requested | credit approval_hl  | Credit Approval |
      | Home Loan     | Sourcing RM Name | credit approval_hl  | Credit Approval |
      | Personal Loan | Scheme           | credit approval     | Credit Approval |
      | Personal Loan | Channel          | credit approval     | Credit Approval |
      | Personal Loan | Loan Purpose     | credit approval     | Credit Approval |
      | Personal Loan | Amount Requested | credit approval     | Credit Approval |
      | Personal Loan | Sourcing RM Name | credit approval     | Credit Approval |
      | Auto Loan     | Scheme           | credit approval_mal | Credit Approval |
      | Auto Loan     | Channel          | credit approval_mal | Credit Approval |
      | Auto Loan     | Loan Purpose     | credit approval_mal | Credit Approval |
      | Auto Loan     | Amount Requested | credit approval_mal | Credit Approval |
      | Auto Loan     | Sourcing RM Name | credit approval_mal | Credit Approval |

    @NotImplemented
    Examples:
      | Loan_Type     | var                    |
      | Home Loan     | Type of Loan           |
      | Home Loan     | Loan Application Type  |
      | Home Loan     | Total Loan Amount      |
      | Home Loan     | Loan Amount Sanctioned |
      | Home Loan     | ROI                    |
      | Home Loan     | Tenure                 |
      | Home Loan     | Installment Amount     |
      | Personal Loan | Type of Loan           |
      | Personal Loan | Loan Application Type  |
      | Personal Loan | Total Loan Amount      |
      | Personal Loan | Loan Amount Sanctioned |
      | Personal Loan | ROI                    |
      | Personal Loan | Tenure                 |
      | Personal Loan | Installment Amount     |
      | Auto Loan     | Type of Loan           |
      | Auto Loan     | Loan Application Type  |
      | Auto Loan     | Total Loan Amount      |
      | Auto Loan     | Loan Amount Sanctioned |
      | Auto Loan     | ROI                    |
      | Auto Loan     | Tenure                 |
      | Auto Loan     | Installment Amount     |

    #FeatureID-ACAUTOCAS-5496
  Scenario Outline: ACAUTOCAS-5552: Validate <Field_Name> within applicant personal details in CAM report generated at credit approval stage of <Loan_Type> application
    When user opens an application at "<Var_Stage>" stage from application grid
    And user records the "<Field_Name>" of applicant profile at "<Stage>" stage
    And user click on CAM report at "<Stage>"
    And user records the "<Field_Name>" of CAM report for "<Loan_Type>"
    Then "<Field_Name>" is same as above record
    @Release3
    Examples:
      | Loan_Type     | Field_Name     | Var_Stage           | Stage           |
      | Home Loan     | Applicant Type | credit approval_hl  | Credit Approval |
      | Home Loan     | Name           | credit approval_hl  | Credit Approval |
      | Home Loan     | Phone no       | credit approval_hl  | Credit Approval |
      | Home Loan     | Age            | credit approval_hl  | Credit Approval |
      | Auto Loan     | Applicant Type | credit approval_mal | Credit Approval |
      | Auto Loan     | Name           | credit approval_mal | Credit Approval |
      | Auto Loan     | Phone no       | credit approval_mal | Credit Approval |
      | Auto Loan     | Age            | credit approval_mal | Credit Approval |
      | Personal Loan | Applicant Type | credit approval     | Credit Approval |
      | Personal Loan | Name           | credit approval     | Credit Approval |
      | Personal Loan | Phone no       | credit approval     | Credit Approval |
      | Personal Loan | Age            | credit approval     | Credit Approval |

    @NotImplemented
    Examples:
      | Loan_Type     | var               |
      | Home Loan     | Relationship      |
      | Home Loan     | Existing Customer |
      | Home Loan     | No. Of Dependents |
      | Home Loan     | Constitution      |
      | Auto Loan     | Relationship      |
      | Auto Loan     | Existing Customer |
      | Auto Loan     | No. Of Dependents |
      | Auto Loan     | Constitution      |
      | Personal Loan | Relationship      |
      | Personal Loan | Existing Customer |
      | Personal Loan | No. Of Dependents |
      | Personal Loan | Constitution      |

   #FeatureID-ACAUTOCAS-5496
  Scenario Outline: ACAUTOCAS-5551: Validate <Field_Name> within ability indicators in CAM report generated at credit approval stage of <Loan_Type> application
    When user opens an application at "<Var_Stage>" stage from application grid
    And user records the "<Field_Name>" of ability indicator at "<Stage>"
    And user click on CAM report at "<Stage>"
    And user records the "<Field_Name>" of CAM report for "<Loan_Type>"
    Then "<Field_Name>" is same as above record
    @Release3
    Examples:
      | Loan_Type     | Field_Name        | Var_Stage           | Stage           |
      | Home Loan     | IIR               | credit approval_hl  | Credit Approval |
      | Home Loan     | DBR               | credit approval_hl  | Credit Approval |
      | Home Loan     | Net LTV HOME LOAN | credit approval_hl  | Credit Approval |
      | Home Loan     | Aggregate LTV     | credit approval_hl  | Credit Approval |
      | Home Loan     | Gross LTV         | credit approval_hl  | Credit Approval |
      | Personal Loan | IIR               | credit approval     | Credit Approval |
      | Personal Loan | Net LTV           | credit approval     | Credit Approval |
      | Personal Loan | Aggregate LTV     | credit approval     | Credit Approval |
      | Personal Loan | Gross LTV         | credit approval     | Credit Approval |
      | Auto Loan     | Net LTV           | credit approval_mal | Credit Approval |
      | Auto Loan     | Aggregate LTV     | credit approval_mal | Credit Approval |
      | Auto Loan     | Gross LTV         | credit approval_mal | Credit Approval |

    @NotImplemented
    Examples:
      | Loan_Type     | var           |
      | Home Loan     | VAP LTV       |
      | Personal Loan | VAP LTV       |
      | Auto Loan     | VAP LTV       |


     #FeatureID-ACAUTOCAS-5496
  @NotImplemented
  Scenario Outline: ACAUTOCAS-5554:Validate <var> within <var1> in CAM report generated at credit approval stage of <Loan_Type> application
    When user selects the "<Loan_Type>" application of credit approval stage
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

#FeatureID-ACAUTOCAS-5496
  @NotImplemented
  Scenario Outline: ACAUTOCAS-5555: Validate <var> within charge details in CAM report generated at credit approval stage of <Loan_Type> application
    When user selects the "<Loan_Type>" application of credit approval stage
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
  @NotImplemented
  Scenario Outline: ACAUTOCAS-5556: Validate <var> within verification details in CAM report generated at credit approval stage of <Loan_Type> application
    When user selects the "<Loan_Type>" application of credit approval stage
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
  @NotImplemented
  Scenario Outline: ACAUTOCAS-5557: <var> is blank within post approval details in CAM report generated at credit approval stage of <Loan_Type> application
    When user selects the "<Loan_Type>" application of credit approval stage
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

  @NotImplemented
  Scenario Outline: ACAUTOCAS-5553: Validate <var> within employment details in CAM report generated at credit approval stage of <Loan_Type> application
    When user selects the "<Loan_Type>" application of credit approval stage
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
