@Epic-Recommendation
@ReviewedBy-tushar.chauhan
@ImplementedBy-piyush.agnihotri
#@AuthoredBy-vinod.pandey
@AuthoredBy-vipin.kishor
@ReviewedByDEV


Feature:Validate CAM Report Details Generated At Disbursal Author Stage

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0

    #FeatureID-ACAUTOCAS-5496
  Scenario Outline: ACAUTOCAS-6147: Validate <Field_Name> within application details in CAM report generated at disbursal author stage of <Loan_Type> application
    And user logout from CAS
    And user logged in "CAS" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user opens an application of "<Var_Stage>" stage variant from disbursal author grid
    When user records the "<Field_Name>" of above application at "<Stage>"
    And user click on CAM report at "<Stage>"
    And user records the "<Field_Name>" of CAM report for "<Loan_Type>"
    Then "<Field_Name>" is same as above record
    @Release3
    Examples:
      | Loan_Type     | Field_Name                | Var_Stage                  | Stage            |
      | Home Loan     | Product type              | disbursal author_indiv_hl  | Disbursal Author |
      | Home Loan     | Product                   | disbursal author_indiv_hl  | Disbursal Author |
      | Home Loan     | Branch                    | disbursal author_indiv_hl  | Disbursal Author |
      | Home Loan     | Application ID            | disbursal author_indiv_hl  | Disbursal Author |
      | Home Loan     | Application Creation Date | disbursal author_indiv_hl  | Disbursal Author |
      | Personal Loan | Product type              | disbursal author_indiv_pl  | Disbursal Author |
      | Personal Loan | Product                   | disbursal author_indiv_pl  | Disbursal Author |
      | Personal Loan | Branch                    | disbursal author_indiv_pl  | Disbursal Author |
      | Personal Loan | Application ID            | disbursal author_indiv_pl  | Disbursal Author |
      | Personal Loan | Application Creation Date | disbursal author_indiv_pl  | Disbursal Author |
      | Auto Loan     | Product type              | disbursal author_indiv_mal | Disbursal Author |
      | Auto Loan     | Product                   | disbursal author_indiv_mal | Disbursal Author |
      | Auto Loan     | Branch                    | disbursal author_indiv_mal | Disbursal Author |
      | Auto Loan     | Application ID            | disbursal author_indiv_mal | Disbursal Author |
      | Auto Loan     | Application Creation Date | disbursal author_indiv_mal | Disbursal Author |
    @NotImplemented
    Examples:
      | Loan_Type     | Field_Name      | Var_Stage                  | Stage            |
      | Home Loan     | Date Of Receipt | disbursal author_indiv_hl  | Disbursal Author |
      | Personal Loan | Date Of Receipt | disbursal author_indiv_pl  | Disbursal Author |
      | Auto Loan     | Date Of Receipt | disbursal author_indiv_mal | Disbursal Author |

    #FeatureID-ACAUTOCAS-5496
  Scenario Outline: ACAUTOCAS-6148: Validate <Field_Name> within loan details in CAM report generated at disbursal author stage of <Loan_Type> application
    And user logout from CAS
    And user logged in "CAS" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user opens an application of "<Var_Stage>" stage variant from disbursal author grid
    When user records the "<Field_Name>" of above application at "<Stage>"
    And user click on CAM report at "<Stage>"
    And user records the "<Field_Name>" of CAM report for "<Loan_Type>"
    Then "<Field_Name>" is same as above record
    @Release3
    Examples:
      | Loan_Type     | Field_Name       | Var_Stage                  | Stage            |
      | Home Loan     | Scheme           | disbursal author_indiv_hl  | Disbursal Author |
      | Home Loan     | Channel          | disbursal author_indiv_hl  | Disbursal Author |
      | Home Loan     | Loan Purpose     | disbursal author_indiv_hl  | Disbursal Author |
      | Home Loan     | Amount Requested | disbursal author_indiv_hl  | Disbursal Author |
      | Home Loan     | Sourcing RM Name | disbursal author_indiv_hl  | Disbursal Author |
      | Personal Loan | Scheme           | disbursal author_indiv_pl  | Disbursal Author |
      | Personal Loan | Channel          | disbursal author_indiv_pl  | Disbursal Author |
      | Personal Loan | Loan Purpose     | disbursal author_indiv_pl  | Disbursal Author |
      | Personal Loan | Amount Requested | disbursal author_indiv_pl  | Disbursal Author |
      | Personal Loan | Sourcing RM Name | disbursal author_indiv_pl  | Disbursal Author |
      | Auto Loan     | Scheme           | disbursal author_indiv_mal | Disbursal Author |
      | Auto Loan     | Channel          | disbursal author_indiv_mal | Disbursal Author |
      | Auto Loan     | Loan Purpose     | disbursal author_indiv_mal | Disbursal Author |
      | Auto Loan     | Amount Requested | disbursal author_indiv_mal | Disbursal Author |
      | Auto Loan     | Sourcing RM Name | disbursal author_indiv_mal | Disbursal Author |
    @NotImplemented
    Examples:
      | Loan_Type     | Field_Name             | Var_Stage                  | Stage            |
      | Home Loan     | Type of Loan           | disbursal author_indiv_hl  | Disbursal Author |
      | Home Loan     | Loan Application Type  | disbursal author_indiv_hl  | Disbursal Author |
      | Home Loan     | Total Loan Amount      | disbursal author_indiv_hl  | Disbursal Author |
      | Home Loan     | Loan Amount Sanctioned | disbursal author_indiv_hl  | Disbursal Author |
      | Home Loan     | ROI                    | disbursal author_indiv_hl  | Disbursal Author |
      | Home Loan     | Tenure                 | disbursal author_indiv_hl  | Disbursal Author |
      | Home Loan     | Installment Amount     | disbursal author_indiv_hl  | Disbursal Author |
      | Personal Loan | Type of Loan           | disbursal author_indiv_pl  | Disbursal Author |
      | Personal Loan | Loan Application Type  | disbursal author_indiv_pl  | Disbursal Author |
      | Personal Loan | Total Loan Amount      | disbursal author_indiv_pl  | Disbursal Author |
      | Personal Loan | Loan Amount Sanctioned | disbursal author_indiv_pl  | Disbursal Author |
      | Personal Loan | ROI                    | disbursal author_indiv_pl  | Disbursal Author |
      | Personal Loan | Tenure                 | disbursal author_indiv_pl  | Disbursal Author |
      | Personal Loan | Installment Amount     | disbursal author_indiv_pl  | Disbursal Author |
      | Auto Loan     | Type of Loan           | disbursal author_indiv_mal | Disbursal Author |
      | Auto Loan     | Loan Application Type  | disbursal author_indiv_mal | Disbursal Author |
      | Auto Loan     | Total Loan Amount      | disbursal author_indiv_mal | Disbursal Author |
      | Auto Loan     | Loan Amount Sanctioned | disbursal author_indiv_mal | Disbursal Author |
      | Auto Loan     | ROI                    | disbursal author_indiv_mal | Disbursal Author |
      | Auto Loan     | Tenure                 | disbursal author_indiv_mal | Disbursal Author |
      | Auto Loan     | Installment Amount     | disbursal author_indiv_mal | Disbursal Author |


     #FeatureID-ACAUTOCAS-5496
  Scenario Outline: ACAUTOCAS-6150: Validate <Field_Name> within applicant personal details in CAM report generated at disbursal author stage of <Loan_Type> application
    And user logout from CAS
    And user logged in "CAS" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user opens an application of "<Var_Stage>" stage variant from disbursal author grid
    When user records the "<Field_Name>" of applicant profile at "<Stage>" stage
    And user click on CAM report at "<Stage>"
    And user records the "<Field_Name>" of CAM report for "<Loan_Type>"
    Then "<Field_Name>" is same as above record
    @Release3
    Examples:
      | Loan_Type     | Field_Name     | Var_Stage                  | Stage            |
      | Home Loan     | Applicant Type | disbursal author_indiv_hl  | Disbursal Author |
      | Home Loan     | Name           | disbursal author_indiv_hl  | Disbursal Author |
      | Home Loan     | Phone no       | disbursal author_indiv_hl  | Disbursal Author |
      | Home Loan     | Age            | disbursal author_indiv_hl  | Disbursal Author |
      | Auto Loan     | Applicant Type | disbursal author_indiv_mal | Disbursal Author |
      | Auto Loan     | Name           | disbursal author_indiv_mal | Disbursal Author |
      | Auto Loan     | Phone no       | disbursal author_indiv_mal | Disbursal Author |
      | Auto Loan     | Age            | disbursal author_indiv_mal | Disbursal Author |
      | Personal Loan | Applicant Type | disbursal author_indiv_pl  | Disbursal Author |
      | Personal Loan | Name           | disbursal author_indiv_pl  | Disbursal Author |
      | Personal Loan | Phone no       | disbursal author_indiv_pl  | Disbursal Author |
      | Personal Loan | Age            | disbursal author_indiv_pl  | Disbursal Author |
    @NotImplemented
    Examples:
      | Loan_Type     | Field_Name        | Var_Stage                  | Stage            |
      | Home Loan     | Relationship      | disbursal author_indiv_hl  | Disbursal Author |
      | Home Loan     | Existing Customer | disbursal author_indiv_hl  | Disbursal Author |
      | Home Loan     | No. Of Dependents | disbursal author_indiv_hl  | Disbursal Author |
      | Home Loan     | Constitution      | disbursal author_indiv_hl  | Disbursal Author |
      | Auto Loan     | Relationship      | disbursal author_indiv_mal | Disbursal Author |
      | Auto Loan     | Existing Customer | disbursal author_indiv_mal | Disbursal Author |
      | Auto Loan     | No. Of Dependents | disbursal author_indiv_mal | Disbursal Author |
      | Auto Loan     | Constitution      | disbursal author_indiv_mal | Disbursal Author |
      | Personal Loan | Relationship      | disbursal author_indiv_pl  | Disbursal Author |
      | Personal Loan | Existing Customer | disbursal author_indiv_pl  | Disbursal Author |
      | Personal Loan | No. Of Dependents | disbursal author_indiv_pl  | Disbursal Author |
      | Personal Loan | Constitution      | disbursal author_indiv_pl  | Disbursal Author |

  @NotImplemented
    #FeatureID-ACAUTOCAS-5496
  Scenario Outline: ACAUTOCAS-6149: Validate <var> within ability indicators in CAM report generated at disbursal author stage of <Loan_Type> application
    When user selects the "<Loan_Type>" application of disbursal author stage
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
  Scenario Outline: ACAUTOCAS-6151: Validate <var> within employment details in CAM report generated at disbursal author stage of <Loan_Type> application
    When user selects the "<Loan_Type>" application of disbursal author stage
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
  Scenario Outline: ACAUTOCAS-6152:Validate <var> within <var1> in CAM report generated at disbursal author stage of <Loan_Type> application
    When user selects the "<Loan_Type>" application of disbursal auhtor stage
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
  Scenario Outline: ACAUTOCAS-6153: Validate <var> with in charge details in CAM report generated at disbursal author stage of <Loan_Type> application
    When user selects the "<Loan_Type>" application of disbursal author stage
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
  Scenario Outline: ACAUTOCAS-6154: Validate <var> with in verification details in CAM report generated at disbursal author stage of <Loan_Type> application
    When user selects the "<Loan_Type>" application of disbursal author stage
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



