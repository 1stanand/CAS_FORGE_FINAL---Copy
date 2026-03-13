@Epic-Loan_Application_Details
@AuthoredBy-harshita.nayak
@TechReviewedBy-
@ReviewedByDEV

Feature: Kyc Check Dedupe Details for Partner Director in Summary Analysis
  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0

  #FeatureID-ACAUTOCAS-299
  @ImplementedBy-deep.maurya
  @Release3
  Scenario Outline: ACAUTOCAS-10272: <No of Matches> for Kyc Dedupe Partner must be same for Applicant Details with <Loan_Type> in Summary Analysis
    And user opens an application at "<var_stage>" stage from application grid
    And user reads data from the excel file "summary_analysis.xlsx" under sheet "kyc_check" and row 0
    And user click and view application
    And user click on Partner Director Tab
    And user add partner on Applicant Information Page
    When user check the "<No of Matches>" for Kyc Dedupe Partner
    And user click on done button at partner details page
    And user is on kyc check in summary Analysis
    And user expand the partner details
    Then "<No of Matches>" Kyc Dedupe Partner must be same for Applicant Details
    Examples:
      | No of Matches     | Loan_Type     | var_stage          |
      | Application Match | Home Loan     | dde_nonindiv_pd_hl |
      | Customer Match    | Home Loan     | dde_nonindiv_pd_hl |
      | Negative Match    | Home Loan     | dde_nonindiv_pd_hl |
      | Application Match | Personal Loan | dde_nonindiv_pd_pl |
      | Customer Match    | Personal Loan | dde_nonindiv_pd_pl |
      | Negative Match    | Personal Loan | dde_nonindiv_pd_pl |
      | Application Match | Auto Loan     | dde_nonindiv_pd_al |
      | Customer Match    | Auto Loan     | dde_nonindiv_pd_al |
      | Negative Match    | Auto Loan     | dde_nonindiv_pd_al |

  @ImplementedBy-deep.maurya
  @Release3
  Scenario Outline: ACAUTOCAS-10274: On <Field_Name> No of Dedupe Match hyperlink Partner Dedupe result displayed for Partner with <Loan_Type> in Summary Analysis
    And user opens an application at "<var_stage>" stage from application grid
    And user reads data from the excel file "summary_analysis.xlsx" under sheet "kyc_check" and row 0
    And user click and view application
    And user click on Partner Director Tab
    And user add partner on Applicant Information Page
    And user click on done button at partner details page
    And user is on kyc check in summary Analysis
    And user expand the partner details
    When user click on "<Field_Name>" No of Dedupe Match hyperlink on Summary Analysis
    Then Partner Dedupe result should be displayed for Partner
    Examples:
      | Field_Name        | Loan_Type     | var_stage          |
      | Application Match | Home Loan     | dde_nonindiv_pd_hl |
      | Customer Match    | Home Loan     | dde_nonindiv_pd_hl |
      | Application Match | Personal Loan | dde_nonindiv_pd_pl |
      | Customer Match    | Personal Loan | dde_nonindiv_pd_pl |
      | Application Match | Auto Loan     | dde_nonindiv_pd_al |
      | Customer Match    | Auto Loan     | dde_nonindiv_pd_al |

  @ImplementedBy-deep.maurya
  @Release3
  Scenario Outline: ACAUTOCAS-14122:  <Field_Name> Partner Dedupe result open Application Id hyperlink <Screen> must be displayed for Partner with <Loan_Type> in Summary Analysis
    And user opens an application at "<var_stage>" stage from application grid
    And user reads data from the excel file "summary_analysis.xlsx" under sheet "kyc_check" and row 0
    And user click and view application
    And user click on Partner Director Tab
    And user add partner on Applicant Information Page
    And user click on done button at partner details page
    And user is on kyc check in summary Analysis
    And user expand the partner details
    And user click on "<Field_Name>" No of Dedupe Match hyperlink on Summary Analysis
    When user on Partner Dedupe result open Application Id hyperlink
    Then "<Screen>" must be displayed
    Examples:
      | Field_Name        | Screen                      | Loan_Type     | var_stage          |
      | Application Match | Matched Application Details | Home Loan     | dde_nonindiv_pd_hl |
      | Customer Match    | Matched Application Details | Home Loan     | dde_nonindiv_pd_hl |
      | Application Match | Matched Application Details | Personal Loan | dde_nonindiv_pd_pl |
      | Customer Match    | Matched Application Details | Personal Loan | dde_nonindiv_pd_pl |
      | Application Match | Matched Application Details | Auto Loan     | dde_nonindiv_pd_al |
      | Customer Match    | Matched Application Details | Auto Loan     | dde_nonindiv_pd_al |


    #FeatureID-ACAUTOCAS-299
  @ImplementedBy-deep.maurya
  @Release3
  Scenario Outline: ACAUTOCAS-10278: Validating the <Field_Name> present in Matched Application Details of Application Match for Partner with <Loan_Type> in Summary Analysis
    And user opens an application at "<var_stage>" stage from application grid
    And user reads data from the excel file "summary_analysis.xlsx" under sheet "kyc_check" and row 0
    And user click and view application
    And user click on Partner Director Tab
    And user add partner on Applicant Information Page
    And user click on done button at partner details page
    And user is on kyc check in summary Analysis
    And user expand the partner details
    And user click "Application Match" field No of Dedupe Match hyperlink
    When user click Application Id hyperlink in Partner Dedupe result
    Then "<Field_Name>" present in Matched Application Details
    Examples:
      | Loan_Type     | Field_Name                 | var_stage          |
      | Home Loan     | Matched Application ID     | dde_nonindiv_pd_hl |
      | Home Loan     | Stage of application       | dde_nonindiv_pd_hl |
      | Home Loan     | Application Status         | dde_nonindiv_pd_hl |
      | Home Loan     | Sourcing branch            | dde_nonindiv_pd_hl |
      | Home Loan     | Application present in CAS | dde_nonindiv_pd_hl |
      | Personal Loan | Matched Application ID     | dde_nonindiv_pd_pl |
      | Personal Loan | Stage of application       | dde_nonindiv_pd_pl |
      | Personal Loan | Application Status         | dde_nonindiv_pd_pl |
      | Personal Loan | Sourcing branch            | dde_nonindiv_pd_pl |
      | Personal Loan | Application present in CAS | dde_nonindiv_pd_pl |
      | Auto Loan     | Matched Application ID     | dde_nonindiv_pd_al |
      | Auto Loan     | Stage of application       | dde_nonindiv_pd_al |
      | Auto Loan     | Application Status         | dde_nonindiv_pd_al |
      | Auto Loan     | Sourcing branch            | dde_nonindiv_pd_al |
      | Auto Loan     | Application present in CAS | dde_nonindiv_pd_al |

      #FeatureID-ACAUTOCAS-299
  @ImplementedBy-deep.maurya
  @Release3
  Scenario Outline: ACAUTOCAS-10279: Validating the <Field_Name> present in Matched Application Details of Customer Match for Partner with <Loan_Type> in Summary Analysis
    And user opens an application at "<var_stage>" stage from application grid
    And user reads data from the excel file "summary_analysis.xlsx" under sheet "kyc_check" and row 0
    And user click and view application
    And user click on Partner Director Tab
    And user add partner on Applicant Information Page
    And user click on done button at partner details page
    And user is on kyc check in summary Analysis
    And user expand the partner details
    And user click "Customer Match" field No of Dedupe Match hyperlink
    When user click Application Id hyperlink in Partner Dedupe result
    Then "<Field_Name>" present in Matched Application Details
    Examples:
      | Loan_Type     | Field_Name                 | var_stage          |
      | Home Loan     | Matched Application ID     | dde_nonindiv_pd_hl |
      | Home Loan     | Stage of application       | dde_nonindiv_pd_hl |
      | Home Loan     | Application Status         | dde_nonindiv_pd_hl |
      | Home Loan     | Sourcing branch            | dde_nonindiv_pd_hl |
      | Home Loan     | Application present in CAS | dde_nonindiv_pd_hl |
      | Personal Loan | Matched Application ID     | dde_nonindiv_pd_pl |
      | Personal Loan | Stage of application       | dde_nonindiv_pd_pl |
      | Personal Loan | Application Status         | dde_nonindiv_pd_pl |
      | Personal Loan | Sourcing branch            | dde_nonindiv_pd_pl |
      | Personal Loan | Application present in CAS | dde_nonindiv_pd_pl |
      | Auto Loan     | Matched Application ID     | dde_nonindiv_pd_al |
      | Auto Loan     | Stage of application       | dde_nonindiv_pd_al |
      | Auto Loan     | Application Status         | dde_nonindiv_pd_al |
      | Auto Loan     | Sourcing branch            | dde_nonindiv_pd_al |
      | Auto Loan     | Application present in CAS | dde_nonindiv_pd_al |

  @ImplementedBy-deep.maurya
  @Release3
  Scenario Outline: ACAUTOCAS-14123:  Customer Match field of Matched Application Details with <Action> should work properly for Partner with <Loan_Type> in Summary Analysis
    And user opens an application at "<var_stage>" stage from application grid
    And user reads data from the excel file "summary_analysis.xlsx" under sheet "kyc_check" and row 0
    And user click and view application
    And user click on Partner Director Tab
    And user add partner on Applicant Information Page
    And user click on done button at partner details page
    And user is on kyc check in summary Analysis
    And user expand the partner details
    And user click "<MatchType>" field No of Dedupe Match hyperlink
    When user take "<Action>" in Matched Application Details
    Then "<Action>" should work properly on Summary Analsys
    Examples:
      | Loan_Type     | Action       | MatchType         | var_stage          |
      | Home Loan     | Maximize     | Customer Match    | dde_nonindiv_pd_hl |
      | Home Loan     | Minimize     | Customer Match    | dde_nonindiv_pd_hl |
      | Home Loan     | Cross        | Customer Match    | dde_nonindiv_pd_hl |
      | Home Loan     | Cancel       | Customer Match    | dde_nonindiv_pd_hl |
      | Home Loan     | Maximize     | Application Match | dde_nonindiv_pd_hl |
      | Home Loan     | Minimize     | Application Match | dde_nonindiv_pd_hl |
      | Home Loan     | Cross        | Application Match | dde_nonindiv_pd_hl |
      | Home Loan     | Cancel       | Application Match | dde_nonindiv_pd_hl |
      | Personal Loan | Maximize     | Customer Match    | dde_nonindiv_pd_pl |
      | Personal Loan | Minimize     | Customer Match    | dde_nonindiv_pd_pl |
      | Personal Loan | Cross        | Customer Match    | dde_nonindiv_pd_pl |
      | Personal Loan | Cancel       | Customer Match    | dde_nonindiv_pd_pl |
      | Personal Loan | Maximize     | Application Match | dde_nonindiv_pd_pl |
      | Personal Loan | Minimize     | Application Match | dde_nonindiv_pd_pl |
      | Personal Loan | Cross        | Application Match | dde_nonindiv_pd_pl |
      | Personal Loan | Cancel       | Application Match | dde_nonindiv_pd_al |
      | Auto Loan     | Maximize     | Customer Match    | dde_nonindiv_pd_al |
      | Auto Loan     | Minimize     | Customer Match    | dde_nonindiv_pd_al |
      | Auto Loan     | Cross        | Customer Match    | dde_nonindiv_pd_al |
      | Auto Loan     | Cancel       | Customer Match    | dde_nonindiv_pd_al |
      | Auto Loan     | Expand All   | Customer Match    | dde_nonindiv_pd_al |
      | Auto Loan     | Maximize     | Application Match | dde_nonindiv_pd_al |
      | Auto Loan     | Minimize     | Application Match | dde_nonindiv_pd_al |
      | Auto Loan     | Cross        | Application Match | dde_nonindiv_pd_al |
      | Auto Loan     | Cancel       | Application Match | dde_nonindiv_pd_al |
      | Auto Loan     | Expand All   | Application Match | dde_nonindiv_pd_al |
      | Home Loan     | Expand All   | Application Match | dde_nonindiv_pd_hl |
      | Personal Loan | Expand All   | Application Match | dde_nonindiv_pd_pl |
      | Auto Loan     | Collapse All | Application Match | dde_nonindiv_pd_al |
      | Home Loan     | Collapse All | Application Match | dde_nonindiv_pd_hl |
      | Personal Loan | Collapse All | Application Match | dde_nonindiv_pd_pl |

  @ImplementedBy-aditya.tomar
  @Release3
  Scenario Outline: ACAUTOCAS-10273: <No of Matches> for Kyc Dedupe Director must be same for Applicant Details with <Loan_Type> in Summary Analysis
    And user opens an application at "<var_stage>" stage from application grid
    And user reads data from the excel file "summary_analysis.xlsx" under sheet "kyc_check" and row 6
    And user click and view application
    And user click on Partner Director Tab
    And user add Director on Applicant Information Page
    When user check the "<No of Matches>" for Kyc Dedupe Director
    And user click on done button at Director details page
    And user is on kyc check in summary Analysis
    And user expand the Director details
    Then "<No of Matches>" Kyc Dedupe Director must be same for Applicant Details
    Examples:
      | No of Matches     | Loan_Type     | var_stage          |
      | Application Match | Home Loan     | dde_nonindiv_pd_hl |
      | Customer Match    | Home Loan     | dde_nonindiv_pd_hl |
      | Negative Match    | Home Loan     | dde_nonindiv_pd_hl |
      | Application Match | Personal Loan | dde_nonindiv_pd_pl |
      | Customer Match    | Personal Loan | dde_nonindiv_pd_pl |
      | Negative Match    | Personal Loan | dde_nonindiv_pd_pl |
      | Application Match | Auto Loan     | dde_nonindiv_pd_al |
      | Customer Match    | Auto Loan     | dde_nonindiv_pd_al |
      | Negative Match    | Auto Loan     | dde_nonindiv_pd_al |


    #FeatureID-ACAUTOCAS-299
  @ImplementedBy-deep.maurya
  @Release3
  Scenario Outline: ACAUTOCAS-10286: Show the "<NumberOfRows>" rows in Customer Match of Partner Dedupe Result for Partner with all Lob's in Summary Analysis
    And user opens an application at "<var_stage>" stage from application grid
    And user reads data from the excel file "summary_analysis.xlsx" under sheet "kyc_check" and row 0
    And user click and view application
    And user click on Partner Director Tab
    And user add partner on Applicant Information Page
    And user click on done button at partner details page
    And user is on kyc check in summary Analysis
    And user expand the partner details
    And user click "<MatchType>" field No of Dedupe Match hyperlink
    When user selects "<NumberOfRows>" number of rows to show for Partner Dedupe Result
    Then selected "<NumberOfRows>" rows "<Display>" in case total enteries are "<More_Less>" than selected number on Summary Analysis
    Examples:
      | NumberOfRows | Display                                 | More_Less | MatchType      | var_stage          |
      | 10           | display                                 | more      | Customer Match | dde_nonindiv_pd_hl |
      | 25           | display                                 | more      | Customer Match | dde_nonindiv_pd_hl |
      | 50           | display                                 | more      | Customer Match | dde_nonindiv_pd_hl |
      | 100          | display                                 | more      | Customer Match | dde_nonindiv_pd_hl |
      | 10           | not display only available rows display | less      | Customer Match | dde_nonindiv_pd_hl |
      | 25           | not display only available rows display | less      | Customer Match | dde_nonindiv_pd_hl |
      | 50           | not display only available rows display | less      | Customer Match | dde_nonindiv_pd_hl |
      | 100          | not display only available rows display | less      | Customer Match | dde_nonindiv_pd_hl |


 #sort the details in ascending order
   #FeatureID-ACAUTOCAS-299
  @ImplementedBy-deep.maurya
  @Release3
  Scenario Outline: ACAUTOCAS-10292: Application Match sorting in Partner Dedupe Result with ascending order by <Field> column for Partner with all Lob's in Summary Analysis
    And user opens an application at "<var_stage>" stage from application grid
    And user reads data from the excel file "summary_analysis.xlsx" under sheet "kyc_check" and row 0
    And user click and view application
    And user click on Partner Director Tab
    And user add partner on Applicant Information Page
    And user click on done button at partner details page
    And user is on kyc check in summary Analysis
    And user expand the partner details
    And user click "<MatchType>" field No of Dedupe Match hyperlink
    When user sort the Partner Dedupe Result by "<Field>" column in "ascending" order
    Then Dedupe Match Screen should be sort in "ascending" order basis of "<Field>" on Summary Analysis
    Examples:
      | Field                  | MatchType         | var_stage          |
      | Application ID         | Application Match | dde_nonindiv_pd_hl |
      | Strength Of Match      | Application Match | dde_nonindiv_pd_hl |
      | Neo Cust ID            | Application Match | dde_nonindiv_pd_hl |
      | Customer Name          | Application Match | dde_nonindiv_pd_hl |
      | DOB/Incorporation Date | Application Match | dde_nonindiv_pd_hl |
      | Neo CIF Number         | Application Match | dde_nonindiv_pd_hl |
      | Identification Number  | Application Match | dde_nonindiv_pd_hl |
      | Unique ID              | Application Match | dde_nonindiv_pd_hl |
      | Applicant Type         | Application Match | dde_nonindiv_pd_hl |
      | Application Status     | Application Match | dde_nonindiv_pd_hl |
      | Current Stage          | Application Match | dde_nonindiv_pd_hl |

   #FeatureID-ACAUTOCAS-299
  @ImplementedBy-deep.maurya
  @Release3
  Scenario Outline: ACAUTOCAS-14124: Application Match sorting in Partner Dedupe Result with descending order by <Field> column for Partner with all Lob's in Summary Analysis
    And user opens an application at "<var_stage>" stage from application grid
    And user reads data from the excel file "summary_analysis.xlsx" under sheet "kyc_check" and row 0
    And user click and view application
    And user click on Partner Director Tab
    And user add partner on Applicant Information Page
    And user click on done button at partner details page
    And user is on kyc check in summary Analysis
    And user expand the partner details
    And user click "<MatchType>" field No of Dedupe Match hyperlink
    When user sort the Partner Dedupe Result by "<Field>" column in "descending" order
    Then Dedupe Match Screen should be sort in "descending" order basis of "<Field>" on Summary Analysis
    Examples:
      | Field                  | MatchType         | var_stage          |
      | Application ID         | Application Match | dde_nonindiv_pd_hl |
      | Strength Of Match      | Application Match | dde_nonindiv_pd_hl |
      | Neo Cust ID            | Application Match | dde_nonindiv_pd_hl |
      | Customer Name          | Application Match | dde_nonindiv_pd_hl |
      | DOB/Incorporation Date | Application Match | dde_nonindiv_pd_hl |
      | Neo CIF Number         | Application Match | dde_nonindiv_pd_hl |
      | Identification Number  | Application Match | dde_nonindiv_pd_hl |
      | Unique ID              | Application Match | dde_nonindiv_pd_hl |
      | Applicant Type         | Application Match | dde_nonindiv_pd_hl |
      | Application Status     | Application Match | dde_nonindiv_pd_hl |
      | Current Stage          | Application Match | dde_nonindiv_pd_hl |


   #FeatureID-ACAUTOCAS-299
  @ImplementedBy-deep.maurya
  @Release3
  Scenario Outline: ACAUTOCAS-14125: Customer Match sorting in Partner Dedupe Result with ascending order by <Field> column for Partner with all Lob's in Summary Analysis
    And user opens an application at "<var_stage>" stage from application grid
    And user reads data from the excel file "summary_analysis.xlsx" under sheet "kyc_check" and row 0
    And user click and view application
    And user click on Partner Director Tab
    And user add partner on Applicant Information Page
    And user click on done button at partner details page
    And user is on kyc check in summary Analysis
    And user expand the partner details
    And user click "<MatchType>" field No of Dedupe Match hyperlink
    When user sort the Partner Dedupe Result by "<Field>" column in "ascending" order
    Then Dedupe Match Screen should be sort in "ascending" order basis of "<Field>" on Summary Analysis
    Examples:
      | Field                  | MatchType      | var_stage          |
      | Application ID         | Customer Match | dde_nonindiv_pd_hl |
      | Strength Of Match      | Customer Match | dde_nonindiv_pd_hl |
      | Neo Cust ID            | Customer Match | dde_nonindiv_pd_hl |
      | Customer Name          | Customer Match | dde_nonindiv_pd_hl |
      | DOB/Incorporation Date | Customer Match | dde_nonindiv_pd_hl |
      | Neo CIF Number         | Customer Match | dde_nonindiv_pd_hl |
      | Identification Number  | Customer Match | dde_nonindiv_pd_hl |
      | Unique ID              | Customer Match | dde_nonindiv_pd_hl |
      | Applicant Type         | Customer Match | dde_nonindiv_pd_hl |
      | Application Status     | Customer Match | dde_nonindiv_pd_hl |
      | Current Stage          | Customer Match | dde_nonindiv_pd_hl |

   #FeatureID-ACAUTOCAS-299
  @ImplementedBy-deep.maurya
  @Release3
  Scenario Outline: ACAUTOCAS-14126: Customer Match sorting in Partner Dedupe Result with descending order by <Field> column for Partner with all Lob's in Summary Analysis
    And user opens an application at "<var_stage>" stage from application grid
    And user reads data from the excel file "summary_analysis.xlsx" under sheet "kyc_check" and row 0
    And user click and view application
    And user click on Partner Director Tab
    And user add partner on Applicant Information Page
    And user click on done button at partner details page
    And user is on kyc check in summary Analysis
    And user expand the partner details
    And user click "<MatchType>" field No of Dedupe Match hyperlink
    When user sort the Partner Dedupe Result by "<Field>" column in "descending" order
    Then Dedupe Match Screen should be sort in "descending" order basis of "<Field>" on Summary Analysis
    Examples:
      | Field                  | MatchType      | var_stage          |
      | Application ID         | Customer Match | dde_nonindiv_pd_hl |
      | Strength Of Match      | Customer Match | dde_nonindiv_pd_hl |
      | Neo Cust ID            | Customer Match | dde_nonindiv_pd_hl |
      | Customer Name          | Customer Match | dde_nonindiv_pd_hl |
      | DOB/Incorporation Date | Customer Match | dde_nonindiv_pd_hl |
      | Neo CIF Number         | Customer Match | dde_nonindiv_pd_hl |
      | Identification Number  | Customer Match | dde_nonindiv_pd_hl |
      | Unique ID              | Customer Match | dde_nonindiv_pd_hl |
      | Applicant Type         | Customer Match | dde_nonindiv_pd_hl |
      | Application Status     | Customer Match | dde_nonindiv_pd_hl |
      | Current Stage          | Customer Match | dde_nonindiv_pd_hl |

  @ImplementedBy-deep.maurya
  @Release3
  Scenario Outline: ACAUTOCAS-10300: While opening Application Id hyperlink in Partner Dedupe Result the correct details of the application should be visible in view mode for Partner with all Lob's in Summary Analysis
    And user opens an application at "<var_stage>" stage from application grid
    And user reads data from the excel file "summary_analysis.xlsx" under sheet "kyc_check" and row 0
    And user click and view application
    And user click on Partner Director Tab
    And user add partner on Applicant Information Page
    And user click on done button at partner details page
    And user is on kyc check in summary Analysis
    And user expand the partner details
    And user click "<Field_Name>" field No of Dedupe Match hyperlink
    When user click Application Id hyperlink in Partner Dedupe result
    Then correct details of the application should be visible in view mode in Summary Analysis
    Examples:
      | Field_Name        |var_stage          |
      | Application Match |dde_nonindiv_pd_hl |
      | Customer Match    |dde_nonindiv_pd_hl |


   #FeatureID-ACAUTOCAS-299
  @ImplementedBy-deep.maurya
  @Release3
  Scenario Outline: ACAUTOCAS-10306: The strength of Match dedupe weightage should be correct as per the definition of dedupe in master in Partner with all Lob's in Summary Analysis
    And user opens an application at "<var_stage>" stage from application grid
    And user reads data from the excel file "summary_analysis.xlsx" under sheet "kyc_check" and row 0
    And user click and view application
    And user click on Partner Director Tab
    And user add partner on Applicant Information Page
    When user check the "<MatchType>" for Kyc Dedupe Partner
    And user click on done button at partner details page
    And user is on kyc check in summary Analysis
    And user expand the partner details
    Then strength of "<MatchType>" dedupe weightage should be validate correctly
    Examples:
      | MatchType         |var_stage          |
      | Application Match |dde_nonindiv_pd_hl |
      | Customer Match    |dde_nonindiv_pd_hl |

     #FeatureID-ACAUTOCAS-299
  @ImplementedBy-deep.maurya
  @Release3
  Scenario Outline: ACAUTOCAS-10307: Validating strength of Match data in in Partner Dedupe Result should be same for Matches found in Strength of Match in Partner with all Lob's in Summary Analysis
    And user opens an application at "<var_stage>" stage from application grid
    And user reads data from the excel file "summary_analysis.xlsx" under sheet "kyc_check" and row 0
    And user click and view application
    And user click on Partner Director Tab
    And user add partner on Applicant Information Page
    And user check strength of Match data in Partner Dedupe Result
    And user click on done button at partner details page
    And user is on kyc check in summary Analysis
    And user expand the partner details
    When user click "<Field_Name>" field No of Dedupe Match hyperlink
    Then Matches found in Strength of Match should be same as dedupe strength of match
    Examples:
      | Field_Name        |var_stage          |
      | Application Match |dde_nonindiv_pd_hl |
      | Customer Match    |dde_nonindiv_pd_hl |


      #FeatureID-ACAUTOCAS-299
  @ImplementedBy-deep.maurya
  @Release3
  Scenario Outline: ACAUTOCAS-14127:  Application Match field of Partner Dedupe Screen with <Action> should work properly for Partner with all Lob's in Summary Analysis
    And user opens an application at "<var_stage>" stage from application grid
    And user reads data from the excel file "summary_analysis.xlsx" under sheet "kyc_check" and row 0
    And user click and view application
    And user click on Partner Director Tab
    And user add partner on Applicant Information Page
    And user click on done button at partner details page
    And user is on kyc check in summary Analysis
    And user expand the partner details
    And user click "<MatchType>" field No of Dedupe Match hyperlink
    When user take "<Action>" in Matched Application Details
    Then "<Action>" should work properly in Summary Analysis
    Examples:
      | Action   | MatchType         |var_stage          |
      | Maximize | Application Match |dde_nonindiv_pd_hl |
      | Minimize | Application Match |dde_nonindiv_pd_hl |
      | Cross    | Application Match |dde_nonindiv_pd_hl |
      | Cancel   | Application Match |dde_nonindiv_pd_hl |


    #FeatureID-ACAUTOCAS-299
  @ImplementedBy-deep.maurya
  @Release3
  Scenario Outline: ACAUTOCAS-14128:  Customer Match field of Partner Dedupe Result with <Action> should work properly for Partner with all Lob's in Summary Analysis
    And user opens an application at "<var_stage>" stage from application grid
    And user reads data from the excel file "summary_analysis.xlsx" under sheet "kyc_check" and row 0
    And user click and view application
    And user click on Partner Director Tab
    And user add partner on Applicant Information Page
    And user click on done button at partner details page
    And user is on kyc check in summary Analysis
    And user expand the partner details
    And user click "<MatchType>" field No of Dedupe Match hyperlink
    When user take "<Action>" in Matched Application Details
    Then "<Action>" should work properly in Summary Analysis
    Examples:
      | Action   | MatchType      |var_stage          |
      | Maximize | Customer Match |dde_nonindiv_pd_hl |
      | Minimize | Customer Match |dde_nonindiv_pd_hl |
      | Cross    | Customer Match |dde_nonindiv_pd_hl |
      | Cancel   | Customer Match |dde_nonindiv_pd_hl |


  @ImplementedBy-aditya.tomar
  @Release3
  Scenario Outline: ACAUTOCAS-14129:  <Field_Name> Director Dedupe result open Application Id hyperlink <Screen> must be displayed for Director with <Loan_Type> in Summary Analysis
    And user opens an application at "<var_stage>" stage from application grid
    And user reads data from the excel file "summary_analysis.xlsx" under sheet "kyc_check" and row 6
    And user click and view application
    And user click on Partner Director Tab
    And user add Director on Applicant Information Page
    And user click on done button at Director details page
    And user is on kyc check in summary Analysis
    And user expand the Director details
    And user click on "<Field_Name>" No of Director Dedupe Match hyperlink on Summary Analysis
    When user on Director Dedupe result open Application Id hyperlink
    Then "<Screen>" must be displayed for director
    Examples:
      | Field_Name        | Screen                      | Loan_Type     | var_stage          |
      | Application Match | Matched Application Details | Home Loan     | dde_nonindiv_pd_hl |
      | Customer Match    | Matched Application Details | Home Loan     | dde_nonindiv_pd_hl |
      | Application Match | Matched Application Details | Personal Loan | dde_nonindiv_pd_pl |
      | Customer Match    | Matched Application Details | Personal Loan | dde_nonindiv_pd_pl |
      | Application Match | Matched Application Details | Auto Loan     | dde_nonindiv_pd_al |
      | Customer Match    | Matched Application Details | Auto Loan     | dde_nonindiv_pd_al |

  @ImplementedBy-aditya.tomar
  @Release3
  Scenario Outline: ACAUTOCAS-10280: Validating the <Field_Name> present in Matched Application Details of Application Match for Director with <Loan_Type>  in Summary Analysis
    And user opens an application at "<var_stage>" stage from application grid
    And user reads data from the excel file "summary_analysis.xlsx" under sheet "kyc_check" and row 6
    And user click and view application
    And user click on Partner Director Tab
    And user add Director on Applicant Information Page
    And user click on done button at Director details page
    And user is on kyc check in summary Analysis
    And user expand the Director details
    And user click on "Application Match" No of Director Dedupe Match hyperlink on Summary Analysis
    When user on Director Dedupe result open Application Id hyperlink
    Then "<Field_Name>" present in Matched Application Details
    Examples:
      | Loan_Type     | Field_Name                 | var_stage          |
      | Home Loan     | Matched Application ID     | dde_nonindiv_pd_hl |
      | Home Loan     | Stage of application       | dde_nonindiv_pd_hl |
      | Home Loan     | Application Status         | dde_nonindiv_pd_hl |
      | Home Loan     | Sourcing branch            | dde_nonindiv_pd_hl |
      | Home Loan     | Application present in CAS | dde_nonindiv_pd_hl |
      | Personal Loan | Matched Application ID     | dde_nonindiv_pd_pl |
      | Personal Loan | Stage of application       | dde_nonindiv_pd_pl |
      | Personal Loan | Application Status         | dde_nonindiv_pd_pl |
      | Personal Loan | Sourcing branch            | dde_nonindiv_pd_pl |
      | Personal Loan | Application present in CAS | dde_nonindiv_pd_pl |
      | Auto Loan     | Matched Application ID     | dde_nonindiv_pd_al |
      | Auto Loan     | Stage of application       | dde_nonindiv_pd_al |
      | Auto Loan     | Application Status         | dde_nonindiv_pd_al |
      | Auto Loan     | Sourcing branch            | dde_nonindiv_pd_al |
      | Auto Loan     | Application present in CAS | dde_nonindiv_pd_al |

  @ImplementedBy-aditya.tomar
  @Release3
  Scenario Outline: ACAUTOCAS-10281: Validating the <Field_Name> present in Matched Application Details of Customer Match for Director with <Loan_Type> in Summary Analysis
    And user opens an application at "<var_stage>" stage from application grid
    And user reads data from the excel file "summary_analysis.xlsx" under sheet "kyc_check" and row 6
    And user click and view application
    And user click on Partner Director Tab
    And user add Director on Applicant Information Page
    And user click on done button at Director details page
    And user is on kyc check in summary Analysis
    And user expand the Director details
    And user click on "Customer Match" No of Director Dedupe Match hyperlink on Summary Analysis
    When user on Director Dedupe result open Application Id hyperlink
    Then "<Field_Name>" present in Matched Application Details
    Examples:
      | Loan_Type     | Field_Name                 | var_stage          |
      | Home Loan     | Matched Application ID     | dde_nonindiv_pd_hl |
      | Home Loan     | Stage of application       | dde_nonindiv_pd_hl |
      | Home Loan     | Application Status         | dde_nonindiv_pd_hl |
      | Home Loan     | Sourcing branch            | dde_nonindiv_pd_hl |
      | Home Loan     | Application present in CAS | dde_nonindiv_pd_hl |
      | Personal Loan | Matched Application ID     | dde_nonindiv_pd_pl |
      | Personal Loan | Stage of application       | dde_nonindiv_pd_pl |
      | Personal Loan | Application Status         | dde_nonindiv_pd_pl |
      | Personal Loan | Sourcing branch            | dde_nonindiv_pd_pl |
      | Personal Loan | Application present in CAS | dde_nonindiv_pd_pl |
      | Auto Loan     | Matched Application ID     | dde_nonindiv_pd_al |
      | Auto Loan     | Stage of application       | dde_nonindiv_pd_al |
      | Auto Loan     | Application Status         | dde_nonindiv_pd_al |
      | Auto Loan     | Sourcing branch            | dde_nonindiv_pd_al |
      | Auto Loan     | Application present in CAS | dde_nonindiv_pd_al |


      #FeatureID-ACAUTOCAS-299
  @ImplementedBy-deep.maurya
  @Release3
  Scenario Outline: ACAUTOCAS-10298: Pagination of Application Match in Partner Dedupe Result of Partner with all Lob's in Summary Analysis
    And user opens an application at "<var_stage>" stage from application grid
    And user reads data from the excel file "summary_analysis.xlsx" under sheet "kyc_check" and row 0
    And user click and view application
    And user click on Partner Director Tab
    And user add partner on Applicant Information Page
    And user click on done button at partner details page
    And user is on kyc check in summary Analysis
    And user expand the partner details
    And user click "<MatchType>" field No of Dedupe Match hyperlink
    When user select "<Page>" page in Partner Dedupe Result in Summary Analysis
    Then "<Paginate_Btn>" should be "<Disable_Enable>" for dedupe Match Screen on Summary Analysis
    Examples:
      | Page  | Paginate_Btn             | Disable_Enable | var_stage          | MatchType         |
      | first | paginate_button previous | disable        | dde_nonindiv_pd_hl | Application Match |
      | first | paginate_button next     | enable         | dde_nonindiv_pd_hl | Application Match |
      | next  | paginate_button previous | enable         | dde_nonindiv_pd_hl | Application Match |
      | last  | paginate_button first    | enable         | dde_nonindiv_pd_hl | Application Match |
      | last  | paginate_button previous | enable         | dde_nonindiv_pd_hl | Application Match |
      | last  | paginate_button next     | disable        | dde_nonindiv_pd_hl | Application Match |

     #FeatureID-ACAUTOCAS-299
  @ImplementedBy-deep.maurya
  @Release3
  Scenario Outline: ACAUTOCAS-10299: Pagination of Customer Match in Partner Dedupe Result of Partner with all Lob's in Summary Analysis
    And user opens an application at "<var_stage>" stage from application grid
    And user reads data from the excel file "summary_analysis.xlsx" under sheet "kyc_check" and row 0
    And user click and view application
    And user click on Partner Director Tab
    And user add partner on Applicant Information Page
    And user click on done button at partner details page
    And user is on kyc check in summary Analysis
    And user expand the partner details
    And user click "<MatchType>" field No of Dedupe Match hyperlink
    When user select "<Page>" page in Partner Dedupe Result in Summary Analysis
    Then "<Paginate_Btn>" should be "<Disable_Enable>" for dedupe Match Screen on Summary Analysis
    Examples:
      | Page  | Paginate_Btn             | Disable_Enable | MatchType      | var_stage          |
      | first | paginate_button previous | disable        | Customer Match | dde_nonindiv_pd_hl |
      | first | paginate_button next     | enable         | Customer Match | dde_nonindiv_pd_hl |
      | next  | paginate_button previous | enable         | Customer Match | dde_nonindiv_pd_hl |
      | last  | paginate_button first    | enable         | Customer Match | dde_nonindiv_pd_hl |
      | last  | paginate_button previous | enable         | Customer Match | dde_nonindiv_pd_hl |
      | last  | paginate_button next     | disable        | Customer Match | dde_nonindiv_pd_hl |

  @ImplementedBy-aditya.tomar
  @Release3
  Scenario Outline: ACAUTOCAS-14130: Customer Match field of Matched Application Details with <Action> should work properly for Director with <Loan_Type> in Summary Analysis
    And user opens an application at "<var_stage>" stage from application grid
    And user reads data from the excel file "summary_analysis.xlsx" under sheet "kyc_check" and row 6
    And user click and view application
    And user click on Partner Director Tab
    And user add Director on Applicant Information Page
    And user click on done button at Director details page
    And user is on kyc check in summary Analysis
    And user expand the Director details
    And user click on "<MatchType>" No of Director Dedupe Match hyperlink on Summary Analysis
    When user take "<Action>" in Matched Application Details on Director
    Then "<Action>" should work properly on Summary Analysis on Director
    Examples:
      | Loan_Type     | Action       | MatchType         | var_stage          |
      | Home Loan     | Maximize     | Customer Match    | dde_nonindiv_pd_hl |
      | Home Loan     | Minimize     | Customer Match    | dde_nonindiv_pd_hl |
      | Home Loan     | Cross        | Customer Match    | dde_nonindiv_pd_hl |
      | Home Loan     | Cancel       | Customer Match    | dde_nonindiv_pd_hl |
      | Home Loan     | Maximize     | Application Match | dde_nonindiv_pd_hl |
      | Home Loan     | Minimize     | Application Match | dde_nonindiv_pd_hl |
      | Home Loan     | Cross        | Application Match | dde_nonindiv_pd_hl |
      | Home Loan     | Cancel       | Application Match | dde_nonindiv_pd_hl |
      | Personal Loan | Maximize     | Customer Match    | dde_nonindiv_pd_pl |
      | Personal Loan | Minimize     | Customer Match    | dde_nonindiv_pd_pl |
      | Personal Loan | Cross        | Customer Match    | dde_nonindiv_pd_pl |
      | Personal Loan | Cancel       | Customer Match    | dde_nonindiv_pd_pl |
      | Personal Loan | Maximize     | Application Match | dde_nonindiv_pd_pl |
      | Personal Loan | Minimize     | Application Match | dde_nonindiv_pd_pl |
      | Personal Loan | Cross        | Application Match | dde_nonindiv_pd_pl |
      | Personal Loan | Cancel       | Application Match | dde_nonindiv_pd_al |
      | Auto Loan     | Maximize     | Customer Match    | dde_nonindiv_pd_al |
      | Auto Loan     | Minimize     | Customer Match    | dde_nonindiv_pd_al |
      | Auto Loan     | Cross        | Customer Match    | dde_nonindiv_pd_al |
      | Auto Loan     | Cancel       | Customer Match    | dde_nonindiv_pd_al |
      | Auto Loan     | Maximize     | Application Match | dde_nonindiv_pd_al |
      | Auto Loan     | Minimize     | Application Match | dde_nonindiv_pd_al |
      | Auto Loan     | Cross        | Application Match | dde_nonindiv_pd_al |
      | Auto Loan     | Cancel       | Application Match | dde_nonindiv_pd_al |
      | Auto Loan     | Expand All   | Application Match | dde_nonindiv_pd_al |
      | Home Loan     | Expand All   | Application Match | dde_nonindiv_pd_hl |
      | Personal Loan | Expand All   | Application Match | dde_nonindiv_pd_pl |
      | Auto Loan     | Collapse All | Application Match | dde_nonindiv_pd_al |
      | Home Loan     | Collapse All | Application Match | dde_nonindiv_pd_hl |
      | Personal Loan | Collapse All | Application Match | dde_nonindiv_pd_pl |

  @ImplementedBy-aditya.tomar
  @Release3
  Scenario Outline: ACAUTOCAS-10289: Show the "<NumberOfRows>" rows in Customer Match of Director Dedupe Result for Director with all Lob's in Summary Analysis
    And user opens an application at "<var_stage>" stage from application grid
    And user reads data from the excel file "summary_analysis.xlsx" under sheet "kyc_check" and row 6
    And user click and view application
    And user click on Partner Director Tab
    And user add Director on Applicant Information Page
    And user click on done button at Director details page
    And user is on kyc check in summary Analysis
    And user expand the Director details
    And user click on "<MatchType>" No of Director Dedupe Match hyperlink on Summary Analysis
    When user selects "<NumberOfRows>" number of rows to show for Director Dedupe Result
    Then selected "<NumberOfRows>" rows "<Display>" in case total entries are "<More_Less>" than selected number on Summary Analysis
    Examples:
      | NumberOfRows | Display                                 | More_Less | MatchType      | var_stage          |
      | 10           | display                                 | more      | Customer Match | dde_nonindiv_pd_hl |
      | 25           | display                                 | more      | Customer Match | dde_nonindiv_pd_hl |
      | 50           | display                                 | more      | Customer Match | dde_nonindiv_pd_hl |
      | 100          | display                                 | more      | Customer Match | dde_nonindiv_pd_hl |
      | 10           | not display only available rows display | less      | Customer Match | dde_nonindiv_pd_hl |
      | 25           | not display only available rows display | less      | Customer Match | dde_nonindiv_pd_hl |
      | 50           | not display only available rows display | less      | Customer Match | dde_nonindiv_pd_hl |
      | 100          | not display only available rows display | less      | Customer Match | dde_nonindiv_pd_hl |

  @ImplementedBy-aditya.tomar
  @Release3
  Scenario Outline: ACAUTOCAS-10291: Show the "<NumberOfRows>" rows in Application Match of Director Dedupe Result for Director with all Lob's in Summary Analysis
    And user opens an application at "<var_stage>" stage from application grid
    And user reads data from the excel file "summary_analysis.xlsx" under sheet "kyc_check" and row 6
    And user click and view application
    And user click on Partner Director Tab
    And user add Director on Applicant Information Page
    And user click on done button at Director details page
    And user is on kyc check in summary Analysis
    And user expand the Director details
    And user click on "<MatchType>" No of Director Dedupe Match hyperlink on Summary Analysis
    When user selects "<NumberOfRows>" number of rows to show for Director Dedupe Result
    Then selected "<NumberOfRows>" rows "<Display>" in case total entries are "<More_Less>" than selected number on Summary Analysis
    Examples:
      | NumberOfRows | Display                                 | More_Less | MatchType         | var_stage          |
      | 10           | display                                 | more      | Application Match | dde_nonindiv_pd_hl |
      | 25           | display                                 | more      | Application Match | dde_nonindiv_pd_hl |
      | 50           | display                                 | more      | Application Match | dde_nonindiv_pd_hl |
      | 100          | display                                 | more      | Application Match | dde_nonindiv_pd_hl |
      | 10           | not display only available rows display | less      | Application Match | dde_nonindiv_pd_hl |
      | 25           | not display only available rows display | less      | Application Match | dde_nonindiv_pd_hl |
      | 50           | not display only available rows display | less      | Application Match | dde_nonindiv_pd_hl |
      | 100          | not display only available rows display | less      | Application Match | dde_nonindiv_pd_hl |

  @ImplementedBy-aditya.tomar
  @Release3
  Scenario Outline: ACAUTOCAS-14131: Customer Match sorting in Director Dedupe Result with as order by <Field> column for Director with all Lob's in Summary Analysis
    And user opens an application at "<var_stage>" stage from application grid
    And user reads data from the excel file "summary_analysis.xlsx" under sheet "kyc_check" and row 6
    And user click and view application
    And user click on Partner Director Tab
    And user add Director on Applicant Information Page
    And user click on done button at Director details page
    And user is on kyc check in summary Analysis
    And user expand the Director details
    And user click on "<MatchType>" No of Director Dedupe Match hyperlink on Summary Analysis
    When user sort the Director Dedupe Result by "<Field>" column in "ascending" order
    Then Dedupe Match Screen should be sort in "ascending" order basis of "<Field>" on Summary Analysis on Director
    Examples:
      | Field                  | MatchType      | var_stage          |
      | Application ID         | Customer Match | dde_nonindiv_pd_hl |
      | Strength Of Match      | Customer Match | dde_nonindiv_pd_hl |
      | Neo Cust ID            | Customer Match | dde_nonindiv_pd_hl |
      | Customer Name          | Customer Match | dde_nonindiv_pd_hl |
      | DOB/Incorporation Date | Customer Match | dde_nonindiv_pd_hl |
      | Neo CIF Number         | Customer Match | dde_nonindiv_pd_hl |
      | Identification Number  | Customer Match | dde_nonindiv_pd_hl |
      | Unique ID              | Customer Match | dde_nonindiv_pd_hl |
      | Applicant Type         | Customer Match | dde_nonindiv_pd_hl |
      | Application Status     | Customer Match | dde_nonindiv_pd_hl |
      | Current Stage          | Customer Match | dde_nonindiv_pd_hl |


  @ImplementedBy-aditya.tomar
  @Release3
  Scenario Outline: ACAUTOCAS-14132: Application Match sorting in Director Dedupe Result with ascending order by <Field> column for Director with all Lob's in Summary Analysis
    And user opens an application at "<var_stage>" stage from application grid
    And user reads data from the excel file "summary_analysis.xlsx" under sheet "kyc_check" and row 6
    And user click and view application
    And user click on Partner Director Tab
    And user add Director on Applicant Information Page
    And user click on done button at Director details page
    And user is on kyc check in summary Analysis
    And user expand the Director details
    And user click on "<MatchType>" No of Director Dedupe Match hyperlink on Summary Analysis
    When user sort the Director Dedupe Result by "<Field>" column in "ascending" order
    Then Dedupe Match Screen should be sort in "ascending" order basis of "<Field>" on Summary Analysis on Director
    Examples:
      | Field                  | MatchType         | var_stage          |
      | Application ID         | Application Match | dde_nonindiv_pd_hl |
      | Strength Of Match      | Application Match | dde_nonindiv_pd_hl |
      | Neo Cust ID            | Application Match | dde_nonindiv_pd_hl |
      | Customer Name          | Application Match | dde_nonindiv_pd_hl |
      | DOB/Incorporation Date | Application Match | dde_nonindiv_pd_hl |
      | Neo CIF Number         | Application Match | dde_nonindiv_pd_hl |
      | Identification Number  | Application Match | dde_nonindiv_pd_hl |
      | Unique ID              | Application Match | dde_nonindiv_pd_hl |
      | Applicant Type         | Application Match | dde_nonindiv_pd_hl |
      | Application Status     | Application Match | dde_nonindiv_pd_hl |
      | Current Stage          | Application Match | dde_nonindiv_pd_hl |

  @ImplementedBy-aditya.tomar
  @Release3
  Scenario Outline: ACAUTOCAS-10295: Customer Match sorting in Director Dedupe Result with descending order by <Field> column for Director with all Lob's in Summary Analysis
    And user opens an application at "<var_stage>" stage from application grid
    And user reads data from the excel file "summary_analysis.xlsx" under sheet "kyc_check" and row 6
    And user click and view application
    And user click on Partner Director Tab
    And user add Director on Applicant Information Page
    And user click on done button at Director details page
    And user is on kyc check in summary Analysis
    And user expand the Director details
    And user click on "<MatchType>" No of Director Dedupe Match hyperlink on Summary Analysis
    When user sort the Director Dedupe Result by "<Field>" column in "descending" order
    Then Dedupe Match Screen should be sort in "descending" order basis of "<Field>" on Summary Analysis on Director
    Examples:
      | Field                  | MatchType      | var_stage          |
      | Application ID         | Customer Match | dde_nonindiv_pd_hl |
      | Strength Of Match      | Customer Match | dde_nonindiv_pd_hl |
      | Neo Cust ID            | Customer Match | dde_nonindiv_pd_hl |
      | Customer Name          | Customer Match | dde_nonindiv_pd_hl |
      | DOB/Incorporation Date | Customer Match | dde_nonindiv_pd_hl |
      | Neo CIF Number         | Customer Match | dde_nonindiv_pd_hl |
      | Identification Number  | Customer Match | dde_nonindiv_pd_hl |
      | Unique ID              | Customer Match | dde_nonindiv_pd_hl |
      | Applicant Type         | Customer Match | dde_nonindiv_pd_hl |
      | Application Status     | Customer Match | dde_nonindiv_pd_hl |
      | Current Stage          | Customer Match | dde_nonindiv_pd_hl |

  @ImplementedBy-aditya.tomar
    @Release3
  Scenario Outline: ACAUTOCAS-10294: Application Match sorting in Director Dedupe Result with descending order by <Field> column for Director with all Lob's in Summary Analysis
    And user opens an application at "<var_stage>" stage from application grid
    And user reads data from the excel file "summary_analysis.xlsx" under sheet "kyc_check" and row 6
    And user click and view application
    And user click on Partner Director Tab
    And user add Director on Applicant Information Page
    And user click on done button at Director details page
    And user is on kyc check in summary Analysis
    And user expand the Director details
    And user click on "<MatchType>" No of Director Dedupe Match hyperlink on Summary Analysis
    When user sort the Director Dedupe Result by "<Field>" column in "descending" order
    Then Dedupe Match Screen should be sort in "descending" order basis of "<Field>" on Summary Analysis on Director
    Examples:
      | Field                  | MatchType         | var_stage          |
      | Application ID         | Application Match | dde_nonindiv_pd_hl |
      | Strength Of Match      | Application Match | dde_nonindiv_pd_hl |
      | Neo Cust ID            | Application Match | dde_nonindiv_pd_hl |
      | Customer Name          | Application Match | dde_nonindiv_pd_hl |
      | DOB/Incorporation Date | Application Match | dde_nonindiv_pd_hl |
      | Neo CIF Number         | Application Match | dde_nonindiv_pd_hl |
      | Identification Number  | Application Match | dde_nonindiv_pd_hl |
      | Unique ID              | Application Match | dde_nonindiv_pd_hl |
      | Applicant Type         | Application Match | dde_nonindiv_pd_hl |
      | Application Status     | Application Match | dde_nonindiv_pd_hl |
      | Current Stage          | Application Match | dde_nonindiv_pd_hl |

  @ImplementedBy-aditya.tomar
  @Release3
  Scenario Outline: ACAUTOCAS-10296: Pagination of Application Match in Director Dedupe Result of Director with all Lob's in Summary Analysis
    And user opens an application at "<var_stage>" stage from application grid
    And user reads data from the excel file "summary_analysis.xlsx" under sheet "kyc_check" and row 6
    And user click and view application
    And user click on Partner Director Tab
    And user add Director on Applicant Information Page
    And user click on done button at Director details page
    And user is on kyc check in summary Analysis
    And user expand the Director details
    And user click on "<MatchType>" No of Director Dedupe Match hyperlink on Summary Analysis
    When user select "<Page>" page in Director Dedupe Result in Summary Analysis
    Then "<Paginate_Btn>" should be "<Disable_Enable>" for dedupe Match Screen on Summary Analysis on Director

    Examples:
      | Page  | Paginate_Btn             | Disable_Enable | MatchType         | var_stage          |
      | first | paginate_button previous | disable        | Application Match | dde_nonindiv_pd_hl |
      | first | paginate_button next     | enable         | Application Match | dde_nonindiv_pd_hl |
      | next  | paginate_button previous | enable         | Application Match | dde_nonindiv_pd_hl |
      | last  | paginate_button first    | enable         | Application Match | dde_nonindiv_pd_hl |
      | last  | paginate_button previous | enable         | Application Match | dde_nonindiv_pd_hl |
      | last  | paginate_button next     | disable        | Application Match | dde_nonindiv_pd_hl |

  #FeatureID-ACAUTOCAS-299
  @ImplementedBy-aditya.tomar
    @Release3
  Scenario Outline: ACAUTOCAS-10297: Pagination of Customer Match in Director Dedupe Result of Director with all Lob's in Summary Analysis
    And user opens an application at "<var_stage>" stage from application grid
    And user reads data from the excel file "summary_analysis.xlsx" under sheet "kyc_check" and row 6
    And user click and view application
    And user click on Partner Director Tab
    And user add Director on Applicant Information Page
    And user click on done button at Director details page
    And user is on kyc check in summary Analysis
    And user expand the Director details
    And user click on "<MatchType>" No of Director Dedupe Match hyperlink on Summary Analysis
    When user select "<Page>" page in Director Dedupe Result in Summary Analysis
    Then "<Paginate_Btn>" should be "<Disable_Enable>" for dedupe Match Screen on Summary Analysis on Director

    Examples:
      | Page  | Paginate_Btn             | Disable_Enable | MatchType      | var_stage          |
      | first | paginate_button previous | disable        | Customer Match | dde_nonindiv_pd_hl |
      | first | paginate_button next     | enable         | Customer Match | dde_nonindiv_pd_hl |
      | next  | paginate_button previous | enable         | Customer Match | dde_nonindiv_pd_hl |
      | last  | paginate_button first    | enable         | Customer Match | dde_nonindiv_pd_hl |
      | last  | paginate_button previous | enable         | Customer Match | dde_nonindiv_pd_hl |
      | last  | paginate_button next     | disable        | Customer Match | dde_nonindiv_pd_hl |

  @ImplementedBy-aditya.tomar
  @Release3
  Scenario Outline: ACAUTOCAS-10301: While opening Application Id hyperlink in Director Dedupe Result the correct details of the application should be visible in view mode for Director with all Lob's in Summary Analysis
    And user opens an application at "<var_stage>" stage from application grid
    And user reads data from the excel file "summary_analysis.xlsx" under sheet "kyc_check" and row 6
    And user click and view application
    And user click on Partner Director Tab
    And user add Director on Applicant Information Page
    And user click on done button at Director details page
    And user is on kyc check in summary Analysis
    And user expand the Director details
    And user click on "<Field_Name>" No of Director Dedupe Match hyperlink on Summary Analysis
    When user click Application Id hyperlink in Director Dedupe result
    Then correct details of the application should be visible in view mode in Summary Analysis

    Examples:
      | Field_Name        | var_stage          |
      | Application Match | dde_nonindiv_pd_hl |
      | Customer Match    | dde_nonindiv_pd_hl |
      | Application Match | dde_nonindiv_pd_pl |
      | Customer Match    | dde_nonindiv_pd_pl |
      | Application Match | dde_nonindiv_pd_al |
      | Customer Match    | dde_nonindiv_pd_al |

  @ImplementedBy-aditya.tomar
  @Release3
  Scenario Outline: ACAUTOCAS-10308: The strength of Match dedupe weightage should be correct as per the definition of dedupe in master in Director with all Lob's in Summary Analysis
    And user opens an application at "<var_stage>" stage from application grid
    And user reads data from the excel file "summary_analysis.xlsx" under sheet "kyc_check" and row 6
    And user click and view application
    And user click on Partner Director Tab
    And user add Director on Applicant Information Page
    When user check the "<MatchType>" for Kyc Dedupe Director
    And user click on done button at Director details page
    And user is on kyc check in summary Analysis
    And user expand the partner details
    Then strength of "<MatchType>" dedupe weightage should be validate correctly
    Examples:
      | MatchType         | var_stage          |
      | Application Match | dde_nonindiv_pd_hl |
      | Customer Match    | dde_nonindiv_pd_hl |
      | Application Match | dde_nonindiv_pd_pl |
      | Customer Match    | dde_nonindiv_pd_pl |
      | Application Match | dde_nonindiv_pd_pl |
      | Customer Match    | dde_nonindiv_pd_pl |


 #FeatureID-ACAUTOCAS-299
  @ImplementedBy-aditya.tomar
  @Release3
  Scenario Outline: ACAUTOCAS-10309: Validating strength of Match data in in Director Dedupe Result should be same for Matches found in Strength of Match in Director with all Lob's in Summary Analysis
    And user opens an application at "<var_stage>" stage from application grid
    And user reads data from the excel file "summary_analysis.xlsx" under sheet "kyc_check" and row 6
    And user click and view application
    And user click on Partner Director Tab
    And user add Director on Applicant Information Page
    And user check strength of Match data in Director Dedupe Result
    And user click on done button at Director details page
    And user is on kyc check in summary Analysis
    And user expand the Director details
    When user click on "<Field_Name>" No of Director Dedupe Match hyperlink on Summary Analysis
    Then Matches found in Strength of Match should be same as dedupe strength of match of Director

    Examples:
      | Field_Name        | var_stage          |
      | Application Match | dde_nonindiv_pd_hl |
      | Customer Match    | dde_nonindiv_pd_hl |
      | Application Match | dde_nonindiv_pd_pl |
      | Customer Match    | dde_nonindiv_pd_pl |
      | Application Match | dde_nonindiv_pd_pl |
      | Customer Match    | dde_nonindiv_pd_pl |

  @ImplementedBy-aditya.tomar
  @Release3
  Scenario Outline: ACAUTOCAS-10312: When Application Match field of Director Dedupe Screen with <Action> should work properly for Director with all Lob's in Summary Analysis
    And user opens an application at "<var_stage>" stage from application grid
    And user reads data from the excel file "summary_analysis.xlsx" under sheet "kyc_check" and row 6
    And user click and view application
    And user click on Partner Director Tab
    And user add Director on Applicant Information Page
    And user click on done button at Director details page
    And user is on kyc check in summary Analysis
    And user expand the Director details
    And user click on "<MatchType>" No of Director Dedupe Match hyperlink on Summary Analysis
    When user take "<Action>" in Matched Application Details on Director
    Then "<Action>" should work properly on Summary Analysis on Director
    Examples:
      | Action   | MatchType         |var_stage          |
      | Maximize | Application Match |dde_nonindiv_pd_hl |
      | Minimize | Application Match |dde_nonindiv_pd_hl |
      | Cross    | Application Match |dde_nonindiv_pd_hl |
      | Cancel   | Application Match |dde_nonindiv_pd_hl |


  #FeatureID-ACAUTOCAS-299
  @ImplementedBy-aditya.tomar
  @Release3
  Scenario Outline: ACAUTOCAS-10313: When Customer Match field of Director Dedupe Result with <Action> should work properly for Director with all Lob's in Summary Analysis
    And user opens an application at "<var_stage>" stage from application grid
    And user reads data from the excel file "summary_analysis.xlsx" under sheet "kyc_check" and row 6
    And user click and view application
    And user click on Partner Director Tab
    And user add Director on Applicant Information Page
    And user click on done button at Director details page
    And user is on kyc check in summary Analysis
    And user expand the Director details
    And user click on "<MatchType>" No of Director Dedupe Match hyperlink on Summary Analysis
    When user take "<Action>" in Matched Application Details on Director
    Then "<Action>" should work properly on Summary Analysis on Director
    Examples:
      | Action   | MatchType      | var_stage          |
      | Maximize | Customer Match | dde_nonindiv_pd_hl |
      | Minimize | Customer Match | dde_nonindiv_pd_hl |
      | Cross    | Customer Match | dde_nonindiv_pd_hl |
      | Cancel   | Customer Match | dde_nonindiv_pd_hl |
