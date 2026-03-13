@Epic-Recommendation
@ReviewedBy-tushar.chauhan
@ImplementedBy-piyush.agnihotri
#@AuthoredBy-vinod.pandey
@AuthoredBy-vipin.kishor
@ReviewedByDEV


Feature:Validate CAM Report Details Generated At Disbursal Initiation Stage

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0

 #FeatureID-ACAUTOCAS-5496
  Scenario Outline: ACAUTOCAS-5932: Validate <Field_Name> within application details in CAM report generated at disbursal initiation stage of <Loan_Type> application
    And user logout from CAS
    And user logged in "CAS" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user opens an application at "<Var_Stage>" stage from application grid
    When user records the "<Field_Name>" of above application at "<Stage>"
    And user click on CAM report at "<Stage>"
    And user records the "<Field_Name>" of CAM report for "<Loan_Type>"
    Then "<Field_Name>" is same as above record
    @Release3
    Examples:
      | Loan_Type     | Field_Name                | Var_Stage     | Stage     |
      | Home Loan     | Product type              | disbursal_hl  | Disbursal |
      | Home Loan     | Product                   | disbursal_hl  | Disbursal |
      | Home Loan     | Branch                    | disbursal_hl  | Disbursal |
      | Home Loan     | Application ID            | disbursal_hl  | Disbursal |
      | Home Loan     | Application Creation Date | disbursal_hl  | Disbursal |
      | Personal Loan | Product type              | disbursal     | Disbursal |
      | Personal Loan | Product                   | disbursal     | Disbursal |
      | Personal Loan | Branch                    | disbursal     | Disbursal |
      | Personal Loan | Application ID            | disbursal     | Disbursal |
      | Personal Loan | Application Creation Date | disbursal     | Disbursal |
      | Auto Loan     | Product type              | disbursal_mal | Disbursal |
      | Auto Loan     | Product                   | disbursal_mal | Disbursal |
      | Auto Loan     | Branch                    | disbursal_mal | Disbursal |
      | Auto Loan     | Application ID            | disbursal_mal | Disbursal |
      | Auto Loan     | Application Creation Date | disbursal_mal | Disbursal |
    @NotImplemented
    Examples:
      | Loan_Type     | Field_Name      | Var_Stage     | Stage     |
      | Home Loan     | Date Of Receipt | disbursal_hl  | Disbursal |
      | Personal Loan | Date Of Receipt | disbursal     | Disbursal |
      | Auto Loan     | Date Of Receipt | disbursal_mal | Disbursal |



    #FeatureID-ACAUTOCAS-5496
  Scenario Outline: ACAUTOCAS-5933: Validate <Field_Name> within loan details in CAM report generated at Disbursal Initiation stage of <Loan_Type> application
    And user logout from CAS
    And user logged in "CAS" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user opens an application at "<Var_Stage>" stage from application grid
    When user records the "<Field_Name>" of above application at "<Stage>"
    And user click on CAM report at "<Stage>"
    And user records the "<Field_Name>" of CAM report for "<Loan_Type>"
    Then "<Field_Name>" is same as above record
    @Release3
    Examples:
      | Loan_Type     | Field_Name       | Var_Stage     | Stage     |
      | Home Loan     | Scheme           | disbursal_hl  | Disbursal |
      | Home Loan     | Channel          | disbursal_hl  | Disbursal |
      | Home Loan     | Loan Purpose     | disbursal_hl  | Disbursal |
      | Home Loan     | Amount Requested | disbursal_hl  | Disbursal |
      | Home Loan     | Sourcing RM Name | disbursal_hl  | Disbursal |
      | Personal Loan | Scheme           | disbursal     | Disbursal |
      | Personal Loan | Channel          | disbursal     | Disbursal |
      | Personal Loan | Loan Purpose     | disbursal     | Disbursal |
      | Personal Loan | Amount Requested | disbursal     | Disbursal |
      | Personal Loan | Sourcing RM Name | disbursal     | Disbursal |
      | Auto Loan     | Scheme           | disbursal_mal | Disbursal |
      | Auto Loan     | Channel          | disbursal_mal | Disbursal |
      | Auto Loan     | Loan Purpose     | disbursal_mal | Disbursal |
      | Auto Loan     | Amount Requested | disbursal_mal | Disbursal |
      | Auto Loan     | Sourcing RM Name | disbursal_mal | Disbursal |
    @NotImplemented
    Examples:
      | Loan_Type     | Field_Name             | Var_Stage     | Stage     |
      | Home Loan     | Type of Loan           | disbursal_hl  | Disbursal |
      | Home Loan     | Loan Application Type  | disbursal_hl  | Disbursal |
      | Home Loan     | Total Loan Amount      | disbursal_hl  | Disbursal |
      | Home Loan     | Loan Amount Sanctioned | disbursal_hl  | Disbursal |
      | Home Loan     | ROI                    | disbursal_hl  | Disbursal |
      | Home Loan     | Tenure                 | disbursal_hl  | Disbursal |
      | Home Loan     | Installment Amount     | disbursal_hl  | Disbursal |
      | Personal Loan | Type of Loan           | disbursal     | Disbursal |
      | Personal Loan | Loan Application Type  | disbursal     | Disbursal |
      | Personal Loan | Total Loan Amount      | disbursal     | Disbursal |
      | Personal Loan | Loan Amount Sanctioned | disbursal     | Disbursal |
      | Personal Loan | ROI                    | disbursal     | Disbursal |
      | Personal Loan | Tenure                 | disbursal     | Disbursal |
      | Personal Loan | Installment Amount     | disbursal     | Disbursal |
      | Auto Loan     | Type of Loan           | disbursal_mal | Disbursal |
      | Auto Loan     | Loan Application Type  | disbursal_mal | Disbursal |
      | Auto Loan     | Total Loan Amount      | disbursal_mal | Disbursal |
      | Auto Loan     | Loan Amount Sanctioned | disbursal_mal | Disbursal |
      | Auto Loan     | ROI                    | disbursal_mal | Disbursal |
      | Auto Loan     | Tenure                 | disbursal_mal | Disbursal |
      | Auto Loan     | Installment Amount     | disbursal_mal | Disbursal |


    #FeatureID-ACAUTOCAS-5496
  Scenario Outline: ACAUTOCAS-5935: Validate <Field_Name> within applicant personal details in CAM report generated at disbursal initiation stage of <Loan_Type> application
    And user logout from CAS
    And user logged in "CAS" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user opens an application at "<Var_Stage>" stage from application grid
    When user records the "<Field_Name>" of applicant profile at "<Stage>" stage
    And user click on CAM report at "<Stage>"
    And user records the "<Field_Name>" of CAM report for "<Loan_Type>"
    Then "<Field_Name>" is same as above record
    @Release3
    Examples:
      | Loan_Type     | Field_Name     | Var_Stage     | Stage     |
      | Home Loan     | Applicant Type | disbursal_hl  | Disbursal |
      | Home Loan     | Name           | disbursal_hl  | Disbursal |
      | Home Loan     | Phone no       | disbursal_hl  | Disbursal |
      | Home Loan     | Age            | disbursal_hl  | Disbursal |
      | Auto Loan     | Applicant Type | disbursal     | Disbursal |
      | Auto Loan     | Name           | disbursal     | Disbursal |
      | Auto Loan     | Phone no       | disbursal     | Disbursal |
      | Auto Loan     | Age            | disbursal     | Disbursal |
      | Personal Loan | Applicant Type | disbursal_mal | Disbursal |
      | Personal Loan | Name           | disbursal_mal | Disbursal |
      | Personal Loan | Phone no       | disbursal_mal | Disbursal |
      | Personal Loan | Age            | disbursal_mal | Disbursal |
    @NotImplemented
    Examples:
      | Loan_Type     | Field_Name        | Var_Stage     | Stage     |
      | Home Loan     | Relationship      | disbursal_hl  | Disbursal |
      | Home Loan     | Existing Customer | disbursal_hl  | Disbursal |
      | Home Loan     | No. Of Dependents | disbursal_hl  | Disbursal |
      | Home Loan     | Constitution      | disbursal_hl  | Disbursal |
      | Auto Loan     | Relationship      | disbursal     | Disbursal |
      | Auto Loan     | Existing Customer | disbursal     | Disbursal |
      | Auto Loan     | No. Of Dependents | disbursal     | Disbursal |
      | Auto Loan     | Constitution      | disbursal     | Disbursal |
      | Personal Loan | Relationship      | disbursal_mal | Disbursal |
      | Personal Loan | Existing Customer | disbursal_mal | Disbursal |
      | Personal Loan | No. Of Dependents | disbursal_mal | Disbursal |
      | Personal Loan | Constitution      | disbursal_mal | Disbursal |

  @NotImplemented
     #FeatureID-ACAUTOCAS-5496
  Scenario Outline: ACAUTOCAS-5934: Validate <var> within ability indicators in CAM report generated at disbursal initiation stage of <Loan_Type> application
    When user selects the "<Loan_Type>" application of disbursal initiation stage
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
  Scenario Outline: ACAUTOCAS-5936: Validate <var> within employment details in CAM report generated at disbursal initiation stage of <Loan_Type> application
    When user selects the "<Loan_Type>" application of disbursal initiation stage
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
  Scenario Outline: ACAUTOCAS-5937: Validate <var> within <var1> in CAM report generated at disbursal initiation stage of <Loan_Type> application
    When user selects the "<Loan_Type>" application of disbursal initiation stage
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
  Scenario Outline: ACAUTOCAS-5938: Validate <var> with in charge details in CAM report generated at disbursal initiation stage of <Loan_Type> application
    When user selects the "<Loan_Type>" application of disbursal initiation stage
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
  Scenario Outline: ACAUTOCAS-5939: Validate <var> with in verification details in CAM report generated at disbursal initiation stage of <Loan_Type> application
    When user selects the "<Loan_Type>" application of disbursal initiation stage
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
  Scenario Outline: ACAUTOCAS-5940: Validate post approval details in CAM report generated at disbursal initiation stage of <Loan_Type> application
    When user submit the document at post approval stage of "<Loan_Type>" application
      | document description | status   | mandatory | original | remarks |
      | passport             | received | yes       | yes      | Ok      |
      | Insurance letter     | received | yes       | yes      | Ok      |
      | Driving License      | received | yes       | yes      | Ok      |
    And completes the post approval stage
    And user opens the above application of disbursal initiation stage
    And user generate CAM report
    Then post approval details in CAM report are correctly displayed
    Examples:
      | Loan_Type     |
      | Home Loan     |
      | Auto Loan     |
      | Personal Loan |