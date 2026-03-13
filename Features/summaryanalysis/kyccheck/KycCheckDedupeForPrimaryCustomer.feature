@Epic-Loan_Application_Details
@AuthoredBy-harshita.nayak
@ReviewedBy-
@TechReviewedBy-
@Release3
@ReviewedByDEV
@Reconciled

Feature: Kyc Check Dedupe Details for Customer in Summary Analysis

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0


  #Pre-requisites to add negative checklist data is master - Negative Checklist and Negative checklist template.
  @ImplementedBy-manish.yadav2
  #FeatureID-ACAUTOCAS-298
  Scenario Outline: ACAUTOCAS-10316: <No of Matches> for Kyc Dedupe Customer must be same for Applicant Details with <Loan_Type> Individual in Summary Analysis
    And user creates an dedupe application of "<Loan_Type>" product type as "<ApplicantType>" applicant at "dde" for "" with "" from web service
    And user opens an application of "<Var_Stage>" stage variant from "APPLICATION" grid
    And user reads data from the excel file "personal_information.xlsx" under sheet "identification" and row 116
    And user store all dedupe count in context
    And user is on kyc check in summary Analysis
    And user Re-initiate Applicant Information with rerun
    When user check the "<No of Matches>" for Kyc Dedupe Customer
    Then "<No of Matches>" Kyc Dedupe Customer must be same for Applicant Details

    Examples:
      | No of Matches      | Loan_Type | Var_Stage    | ApplicantType |
      | Application Match  | hl        | dde_indiv_hl | indiv         |
      | Customer Match     | hl        | dde_indiv_hl | indiv         |
      | Negative Checklist | hl        | dde_indiv_hl | indiv         |
      | Application Match  | pl        | dde_indiv_pl | indiv         |
      | Customer Match     | pl        | dde_indiv_pl | indiv         |
      | Negative Checklist | pl        | dde_indiv_pl | indiv         |
      | Application Match  | al        | dde_indiv_mal | indiv         |
      | Customer Match     | al        | dde_indiv_mal | indiv         |
      | Negative Checklist | al        | dde_indiv_mal | indiv         |

  #Pre-requisites to add negative checklist data is master - Negative Checklist and Negative checklist template.
  @ImplementedBy-yash.sharma
  #FeatureID-ACAUTOCAS-298
  Scenario Outline: ACAUTOCAS-10317: <No of Matches> for Kyc Dedupe Customer must be same for Applicant Details with <Loan_Type> Non Individual in Summary Analysis
    And user creates an dedupe application of "<Loan_Type>" product type as "<ApplicantType>" applicant at "dde" for "" with "" from web service
    And user opens an application of "<Var_Stage>" stage variant from "APPLICATION" grid
    And user reads data from the excel file "personal_information.xlsx" under sheet "identification" and row 116
    And user store all dedupe count in context
    And user is on kyc check in summary Analysis
    And user Re-initiate Applicant Information with rerun
    When user check the "<No of Matches>" for Kyc Dedupe Customer
    Then "<No of Matches>" Kyc Dedupe Customer must be same for Applicant Details

    Examples:
      | No of Matches      | Loan_Type | Var_Stage       | ApplicantType |
      | Application Match  | hl        | dde_nonindiv_hl | nonindiv      |
      | Customer Match     | hl        | dde_nonindiv_hl | nonindiv      |
      | Negative Checklist | hl        | dde_nonindiv_hl | nonindiv      |
      | Application Match  | pl        | dde_nonindiv_pl | nonindiv      |
      | Customer Match     | pl        | dde_nonindiv_pl | nonindiv      |
      | Negative Checklist | pl        | dde_nonindiv_pl | nonindiv      |
      | Application Match  | al        | dde_nonindiv_mal | nonindiv      |
      | Customer Match     | al        | dde_nonindiv_mal | nonindiv      |
      | Negative Checklist | al        | dde_nonindiv_mal | nonindiv      |

  @ImplementedBy-manish.yadav2
  #FeatureID-ACAUTOCAS-298
  Scenario Outline: ACAUTOCAS-10318: On <Field_Name> No of Dedupe Match hyperlink Dedupe Match Screen displayed for Customer with <Loan_Type> Non Individual in Summary Analysis
    And user creates an dedupe application of "<Loan_Type>" product type as "<ApplicantType>" applicant at "dde" for "" with "" from web service
    And user opens an application of "<Var_Stage>" stage variant from "APPLICATION" grid
    And user is on kyc check in summary Analysis
    And user Re-initiate Applicant Information with rerun
    When user click on "<Field_Name>" No of Dedupe Match hyperlink of "Primary Applicant"
    Then Dedupe Match Screen should be displayed for Customer

    Examples:
      | Field_Name        | Loan_Type | Var_Stage       | ApplicantType |
      | Application Match | hl        | dde_nonindiv_hl | nonindiv      |
      | Customer Match    | hl        | dde_nonindiv_hl | nonindiv      |
      | Application Match | pl        | dde_nonindiv_pl | nonindiv      |
      | Customer Match    | pl        | dde_nonindiv_pl | nonindiv      |
      | Application Match | al        | dde_nonindiv_mal | nonindiv      |
      | Customer Match    | al        | dde_nonindiv_mal | nonindiv      |

  @ImplementedBy-yash.sharma
  #FeatureID-ACAUTOCAS-298
  Scenario Outline: ACAUTOCAS-10319: On <Field_Name> No of Dedupe Match hyperlink Dedupe Match Screen displayed for Customer with <Loan_Type> Individual in Summary Analysis
    And user creates an dedupe application of "<Loan_Type>" product type as "<ApplicantType>" applicant at "dde" for "" with "" from web service
    And user opens an application of "<Var_Stage>" stage variant from "APPLICATION" grid
    And user is on kyc check in summary Analysis
    And user Re-initiate Applicant Information with rerun
    When user click on "<Field_Name>" No of Dedupe Match hyperlink of "Primary Applicant"
    Then Dedupe Match Screen should be displayed for Customer

    Examples:
      | Field_Name        | Loan_Type | Var_Stage    | ApplicantType |
      | Application Match | hl        | dde_indiv_hl | indiv         |
      | Customer Match    | hl        | dde_indiv_hl | indiv         |
      | Application Match | pl        | dde_indiv_pl | indiv         |
      | Customer Match    | pl        | dde_indiv_pl | indiv         |
      | Application Match | al        | dde_indiv_mal | indiv         |
      | Customer Match    | al        | dde_indiv_mal | indiv         |


  @ImplementedBy-manish.yadav2
  #FeatureID-ACAUTOCAS-298
  Scenario Outline: ACAUTOCAS-10320:  On Negative Checklist No of Dedupe Match hyperlink Negative Checklist Matches displayed for Customer with all Lob's in Summary Analysis
    And user creates an dedupe application of "<Loan_Type>" product type as "<ApplicantType>" applicant at "dde" for "" with "" from web service
    And user opens an application of "<Var_Stage>" stage variant from "APPLICATION" grid
    And user reads data from the excel file "personal_information.xlsx" under sheet "identification" and row 116
    And user perform prerequisites for negative checkList
    And user is on kyc check in summary Analysis
    And user Re-initiate Applicant Information with rerun
    When user click on "<Match_Type>" No of Dedupe Match hyperlink of "<DedupeApplicantType>"
    Then Negative Checklist Matched Records should be displayed

    Examples:
      | Match_Type         | Loan_Type | Var_Stage    | ApplicantType | DedupeApplicantType |
      | Negative Checklist | hl        | dde_indiv_hl | indiv         | Primary Applicant   |

  @ImplementedBy-manish.yadav2
  #FeatureID-ACAUTOCAS-298
  Scenario Outline: ACAUTOCAS-10321: When Application Match field of Dedupe Match Screen with Expand All hyperlink <Dedupe_Field_Name> should be visible for every application  Customer with <Loan_Type> Individual in Summary Analysis
    And user creates an dedupe application of "<Loan_Type>" product type as "<ApplicantType>" applicant at "dde" for "" with "" from web service
    And user opens an application of "<Var_Stage>" stage variant from "APPLICATION" grid
    And user is on kyc check in summary Analysis
    And user Re-initiate Applicant Information with rerun
    And user click on "Application Match" No of Dedupe Match hyperlink of "Primary Applicant"
    When user Expand All hyperlink in Dedupe Match Screen
    Then "<Dedupe_Field_Name>" should be visible for every application

    Examples:
      | Dedupe_Field_Name | Loan_Type | Var_Stage    | ApplicantType |
      | Current Stage     | hl        | dde_indiv_hl | indiv         |
      | Group ID          | hl        | dde_indiv_hl | indiv         |
      | Group Name        | hl        | dde_indiv_hl | indiv         |
      | Exposure Detail   | hl        | dde_indiv_hl | indiv         |
      | Current Stage     | pl        | dde_indiv_pl | indiv         |
      | Group ID          | pl        | dde_indiv_pl | indiv         |
      | Group Name        | pl        | dde_indiv_pl | indiv         |
      | Exposure Detail   | pl        | dde_indiv_pl | indiv         |
      | Current Stage     | al        | dde_indiv_mal | indiv         |
      | Group ID          | al        | dde_indiv_mal | indiv         |
      | Group Name        | al        | dde_indiv_mal | indiv         |
      | Exposure Detail   | al        | dde_indiv_mal | indiv         |

  @ImplementedBy-yash.sharma
  #FeatureID-ACAUTOCAS-298
  Scenario Outline: ACAUTOCAS-10322: When Customer Match field of Dedupe Match Screen with Expand All hyperlink <Dedupe_Field_Name> should be visible for every application  Customer with <Loan_Type> Individual in Summary Analysis
    And user creates an dedupe application of "<Loan_Type>" product type as "<ApplicantType>" applicant at "dde" for "" with "" from web service
    And user opens an application of "<Var_Stage>" stage variant from "APPLICATION" grid
    And user is on kyc check in summary Analysis
    And user Re-initiate Applicant Information with rerun
    And user click on "Customer Match" No of Dedupe Match hyperlink of "Primary Applicant"
    When user Expand All hyperlink in Dedupe Match Screen
    Then "<Dedupe_Field_Name>" should be visible for every application

    Examples:
      | Dedupe_Field_Name | Loan_Type | Var_Stage    | ApplicantType |
      | Current Stage     | hl        | dde_indiv_hl | indiv         |
      | Group ID          | hl        | dde_indiv_hl | indiv         |
      | Group Name        | hl        | dde_indiv_hl | indiv         |
      | Exposure Detail   | hl        | dde_indiv_hl | indiv         |
      | Current Stage     | pl        | dde_indiv_pl | indiv         |
      | Group ID          | pl        | dde_indiv_pl | indiv         |
      | Group Name        | pl        | dde_indiv_pl | indiv         |
      | Exposure Detail   | pl        | dde_indiv_pl | indiv         |
      | Current Stage     | al        | dde_indiv_mal | indiv         |
      | Group ID          | al        | dde_indiv_mal | indiv         |
      | Group Name        | al        | dde_indiv_mal | indiv         |
      | Exposure Detail   | al        | dde_indiv_mal | indiv         |

  @ImplementedBy-manish.yadav2
  #FeatureID-ACAUTOCAS-298
  Scenario Outline: ACAUTOCAS-10323: When Customer Match field of Dedupe Match Screen with Application Id plus icon <Dedupe_Field_Name> should be visible  Customer with <Loan_Type> Individual in Summary Analysis
    And user creates an dedupe application of "<Loan_Type>" product type as "<ApplicantType>" applicant at "dde" for "" with "" from web service
    And user opens an application of "<Var_Stage>" stage variant from "APPLICATION" grid
    And user is on kyc check in summary Analysis
    And user Re-initiate Applicant Information with rerun
    And user click on "Customer Match" No of Dedupe Match hyperlink of "Primary Applicant"
    When user click Application Id plus icon in Dedupe Match Screen
    Then "<Dedupe_Field_Name>" should be visible for every application

    Examples:
      | Dedupe_Field_Name | Loan_Type | Var_Stage    | ApplicantType |
      | Current Stage     | hl        | dde_indiv_hl | indiv         |
      | Group ID          | hl        | dde_indiv_hl | indiv         |
      | Group Name        | hl        | dde_indiv_hl | indiv         |
      | Exposure Detail   | hl        | dde_indiv_hl | indiv         |
      | Current Stage     | pl        | dde_indiv_pl | indiv         |
      | Group ID          | pl        | dde_indiv_pl | indiv         |
      | Group Name        | pl        | dde_indiv_pl | indiv         |
      | Exposure Detail   | pl        | dde_indiv_pl | indiv         |
      | Current Stage     | al        | dde_indiv_mal | indiv         |
      | Group ID          | al        | dde_indiv_mal | indiv         |
      | Group Name        | al        | dde_indiv_mal | indiv         |
      | Exposure Detail   | al        | dde_indiv_mal | indiv         |

  @ImplementedBy-yash.sharma
  #FeatureID-ACAUTOCAS-298
  Scenario Outline: ACAUTOCAS-10324: When Application Match field of Dedupe Match Screen with Application Id plus icon <Dedupe_Field_Name> should be visible  Customer with <Loan_Type> Individual in Summary Analysis
    And user creates an dedupe application of "<Loan_Type>" product type as "<ApplicantType>" applicant at "dde" for "" with "" from web service
    And user opens an application of "<Var_Stage>" stage variant from "APPLICATION" grid
    And user is on kyc check in summary Analysis
    And user Re-initiate Applicant Information with rerun
    And user click on "Application Match" No of Dedupe Match hyperlink of "Primary Applicant"
    When user click Application Id plus icon in Dedupe Match Screen
    Then "<Dedupe_Field_Name>" should be visible for every application

    Examples:
      | Dedupe_Field_Name | Loan_Type | Var_Stage    | ApplicantType |
      | Current Stage     | hl        | dde_indiv_hl | indiv         |
      | Group ID          | hl        | dde_indiv_hl | indiv         |
      | Group Name        | hl        | dde_indiv_hl | indiv         |
      | Exposure Detail   | hl        | dde_indiv_hl | indiv         |
      | Current Stage     | pl        | dde_indiv_pl | indiv         |
      | Group ID          | pl        | dde_indiv_pl | indiv         |
      | Group Name        | pl        | dde_indiv_pl | indiv         |
      | Exposure Detail   | pl        | dde_indiv_pl | indiv         |
      | Current Stage     | al        | dde_indiv_mal | indiv         |
      | Group ID          | al        | dde_indiv_mal | indiv         |
      | Group Name        | al        | dde_indiv_mal | indiv         |
      | Exposure Detail   | al        | dde_indiv_mal | indiv         |

  @ImplementedBy-manish.yadav2
  #FeatureID-ACAUTOCAS-298
  Scenario Outline: ACAUTOCAS-10325: When <Field_Name> Dedupe Match Screen open Application Id hyperlink <Screen> must be displayed for  Customer with <Loan_Type> Individual in Summary Analysis
    And user creates an dedupe application of "<Loan_Type>" product type as "<ApplicantType>" applicant at "dde" for "" with "" from web service
    And user opens an application of "<Var_Stage>" stage variant from "APPLICATION" grid
    And user is on kyc check in summary Analysis
    And user Re-initiate Applicant Information with rerun
    And user click on "<Field_Name>" No of Dedupe Match hyperlink of "Primary Applicant"
    When user on Dedupe Match Screen open Application Id hyperlink
    Then KYC Internal Dedupe Matched Application Details must be displayed

    Examples:
      | Field_Name        | Loan_Type | Var_Stage    | ApplicantType |
      | Application Match | hl        | dde_indiv_hl | indiv         |
      | Customer Match    | hl        | dde_indiv_hl | indiv         |
      | Application Match | pl        | dde_indiv_hl | indiv         |
      | Customer Match    | pl        | dde_indiv_hl | indiv         |
      | Application Match | al        | dde_indiv_pl | indiv         |
      | Customer Match    | al        | dde_indiv_pl | indiv         |

  @ImplementedBy-yash.sharma
  #FeatureID-ACAUTOCAS-298
  Scenario Outline: ACAUTOCAS-10326: When <Field_Name> Dedupe Match Screen open Application Id hyperlink <Screen> must be displayed for  Customer with <Loan_Type> Non Individual in Summary Analysis
    And user creates an dedupe application of "<Loan_Type>" product type as "<ApplicantType>" applicant at "dde" for "" with "" from web service
    And user opens an application of "<Var_Stage>" stage variant from "APPLICATION" grid
    And user is on kyc check in summary Analysis
    And user Re-initiate Applicant Information with rerun
    And user click on "<Field_Name>" No of Dedupe Match hyperlink of "Primary Applicant"
    When user on Dedupe Match Screen open Application Id hyperlink
    Then KYC Internal Dedupe Matched Application Details must be displayed

    Examples:
      | Field_Name        | Loan_Type | Var_Stage       | ApplicantType |
      | Application Match | hl        | dde_nonindiv_hl | nonindiv      |
      | Customer Match    | hl        | dde_nonindiv_hl | nonindiv      |
      | Application Match | pl        | dde_nonindiv_hl | nonindiv      |
      | Customer Match    | pl        | dde_nonindiv_hl | nonindiv      |
      | Application Match | al        | dde_nonindiv_pl | nonindiv      |
      | Customer Match    | al        | dde_nonindiv_pl | nonindiv      |


  @ImplementedBy-manish.yadav2
  #FeatureID-ACAUTOCAS-298
  Scenario Outline: ACAUTOCAS-10327: When Application Match field of Dedupe Match Screen with <Action> should work properly for  Customer with <Loan_Type> Individual in Summary Analysis
    And user creates an dedupe application of "<Loan_Type>" product type as "<ApplicantType>" applicant at "dde" for "" with "" from web service
    And user opens an application of "<Var_Stage>" stage variant from "APPLICATION" grid
    And user is on kyc check in summary Analysis
    And user Re-initiate Applicant Information with rerun
    And user click on "Application Match" No of Dedupe Match hyperlink of "Primary Applicant"
    When user take "<Action>" in Dedupe Match Screen
    Then "<Action>" should work properly on Dedupe Match Screen

    Examples:
      | Loan_Type     | Action       | Var_Stage    | ApplicantType |
      | hl            | Maximize     | dde_indiv_hl | indiv         |
      | hl            | Minimize     | dde_indiv_hl | indiv         |
      | hl            | Cross        | dde_indiv_hl | indiv         |
      | hl            | Cancel       | dde_indiv_hl | indiv         |
      | hl            | Done         | dde_indiv_pl | indiv         |
      | pl            | Maximize     | dde_indiv_pl | indiv         |
      | pl            | Minimize     | dde_indiv_pl | indiv         |
      | pl            | Cross        | dde_indiv_pl | indiv         |
      | pl            | Cancel       | dde_indiv_mal | indiv         |
      | pl            | Done         | dde_indiv_mal | indiv         |
      | al            | Maximize     | dde_indiv_mal | indiv         |
      | al            | Minimize     | dde_indiv_mal | indiv         |
      | al            | Cross        | dde_indiv_mal | indiv         |
      | al            | Cancel       | dde_indiv_mal | indiv         |
      | al            | Done         | dde_indiv_mal | indiv         |
      | al            | Expand All   | dde_indiv_mal | indiv         |
      | hl            | Expand All   | dde_indiv_mal | indiv         |
      | pl            | Expand All   | dde_indiv_mal | indiv         |
      | al            | Collapse All | dde_indiv_mal | indiv         |
      | hl            | Collapse All | dde_indiv_mal | indiv         |
      | pl            | Collapse All | dde_indiv_mal | indiv         |

  @ImplementedBy-yash.sharma
  #FeatureID-ACAUTOCAS-298
  Scenario Outline: ACAUTOCAS-10328: When Customer Match field of Dedupe Match Screen with <Action> should work properly for  Customer with <Loan_Type> Individual in Summary Analysis
    And user creates an dedupe application of "<Loan_Type>" product type as "<ApplicantType>" applicant at "dde" for "" with "" from web service
    And user opens an application of "<Var_Stage>" stage variant from "APPLICATION" grid
    And user is on kyc check in summary Analysis
    And user Re-initiate Applicant Information with rerun
    And user click on "Customer Match" No of Dedupe Match hyperlink of "Primary Applicant"
    When user take "<Action>" in Dedupe Match Screen
    Then "<Action>" should work properly on Dedupe Match Screen

    Examples:
      | Loan_Type     | Action       | Var_Stage    | ApplicantType |
      | hl            | Maximize     | dde_indiv_hl | indiv         |
      | hl            | Minimize     | dde_indiv_hl | indiv         |
      | hl            | Cross        | dde_indiv_hl | indiv         |
      | hl            | Cancel       | dde_indiv_hl | indiv         |
      | hl            | Done         | dde_indiv_pl | indiv         |
      | pl            | Maximize     | dde_indiv_pl | indiv         |
      | pl            | Minimize     | dde_indiv_pl | indiv         |
      | pl            | Cross        | dde_indiv_pl | indiv         |
      | pl            | Cancel       | dde_indiv_mal | indiv         |
      | pl            | Done         | dde_indiv_mal | indiv         |
      | al            | Maximize     | dde_indiv_mal | indiv         |
      | al            | Minimize     | dde_indiv_mal | indiv         |
      | al            | Cross        | dde_indiv_mal | indiv         |
      | al            | Cancel       | dde_indiv_mal | indiv         |
      | al            | Done         | dde_indiv_mal | indiv         |
      | al            | Expand All   | dde_indiv_mal | indiv         |
      | hl            | Expand All   | dde_indiv_mal | indiv         |
      | pl            | Expand All   | dde_indiv_mal | indiv         |
      | al            | Collapse All | dde_indiv_mal | indiv         |
      | hl            | Collapse All | dde_indiv_mal | indiv         |
      | pl            | Collapse All | dde_indiv_mal | indiv         |


  @ImplementedBy-manish.yadav2
  #FeatureID-ACAUTOCAS-298
  Scenario Outline: ACAUTOCAS-10329: When Application Match field of Dedupe Match Screen with <Action> should work properly for  Customer with <Loan_Type> Non Individual in Summary Analysis
    And user creates an dedupe application of "<Loan_Type>" product type as "<ApplicantType>" applicant at "dde" for "" with "" from web service
    And user opens an application of "<Var_Stage>" stage variant from "APPLICATION" grid
    And user is on kyc check in summary Analysis
    And user Re-initiate Applicant Information with rerun
    And user click on "Application Match" No of Dedupe Match hyperlink of "Primary Applicant"
    When user take "<Action>" in Dedupe Match Screen
    Then "<Action>" should work properly on Dedupe Match Screen

    Examples:
      | Loan_Type     | Action       | Var_Stage       | ApplicantType |
      | hl            | Maximize     | dde_nonindiv_hl | nonindiv      |
      | hl            | Minimize     | dde_nonindiv_hl | nonindiv      |
      | hl            | Cross        | dde_nonindiv_hl | nonindiv      |
      | hl            | Cancel       | dde_nonindiv_hl | nonindiv      |
      | hl            | Done         | dde_nonindiv_pl | nonindiv      |
      | pl            | Maximize     | dde_nonindiv_pl | nonindiv      |
      | pl            | Minimize     | dde_nonindiv_pl | nonindiv      |
      | pl            | Cross        | dde_nonindiv_pl | nonindiv      |
      | pl            | Cancel       | dde_nonindiv_mal | nonindiv      |
      | pl            | Done         | dde_nonindiv_mal | nonindiv      |
      | al            | Maximize     | dde_nonindiv_mal | nonindiv      |
      | al            | Minimize     | dde_nonindiv_mal | nonindiv      |
      | al            | Cross        | dde_nonindiv_mal | nonindiv      |
      | al            | Cancel       | dde_nonindiv_mal | nonindiv      |
      | al            | Done         | dde_nonindiv_mal | nonindiv      |
      | al            | Expand All   | dde_nonindiv_mal | nonindiv      |
      | hl            | Expand All   | dde_nonindiv_mal | nonindiv      |
      | pl            | Expand All   | dde_nonindiv_mal | nonindiv      |
      | al            | Collapse All | dde_nonindiv_mal | nonindiv      |
      | hl            | Collapse All | dde_nonindiv_mal | nonindiv      |
      | pl            | Collapse All | dde_nonindiv_mal | nonindiv      |

  @ImplementedBy-yash.sharma
  #FeatureID-ACAUTOCAS-298
  Scenario Outline: ACAUTOCAS-10330: When Customer Match field of Dedupe Match Screen with <Action> should work properly for Customer with <Loan_Type> Non Individual in Summary Analysis
    And user creates an dedupe application of "<Loan_Type>" product type as "<ApplicantType>" applicant at "dde" for "" with "" from web service
    And user opens an application of "<Var_Stage>" stage variant from "APPLICATION" grid
    And user is on kyc check in summary Analysis
    And user Re-initiate Applicant Information with rerun
    And user click on "Customer Match" No of Dedupe Match hyperlink of "Primary Applicant"
    When user take "<Action>" in Dedupe Match Screen
    Then "<Action>" should work properly on Dedupe Match Screen

    Examples:
      | Loan_Type     | Action       | Var_Stage       | ApplicantType |
      | hl            | Maximize     | dde_nonindiv_hl | nonindiv      |
      | hl            | Minimize     | dde_nonindiv_hl | nonindiv      |
      | hl            | Cross        | dde_nonindiv_hl | nonindiv      |
      | hl            | Cancel       | dde_nonindiv_hl | nonindiv      |
      | hl            | Done         | dde_nonindiv_pl | nonindiv      |
      | pl            | Maximize     | dde_nonindiv_pl | nonindiv      |
      | pl            | Minimize     | dde_nonindiv_pl | nonindiv      |
      | pl            | Cross        | dde_nonindiv_pl | nonindiv      |
      | pl            | Cancel       | dde_nonindiv_mal | nonindiv      |
      | pl            | Done         | dde_nonindiv_mal | nonindiv      |
      | al            | Maximize     | dde_nonindiv_mal | nonindiv      |
      | al            | Minimize     | dde_nonindiv_mal | nonindiv      |
      | al            | Cross        | dde_nonindiv_mal | nonindiv      |
      | al            | Cancel       | dde_nonindiv_mal | nonindiv      |
      | al            | Done         | dde_nonindiv_mal | nonindiv      |
      | al            | Expand All   | dde_nonindiv_mal | nonindiv      |
      | hl            | Expand All   | dde_nonindiv_mal | nonindiv      |
      | pl            | Expand All   | dde_nonindiv_mal | nonindiv      |
      | al            | Collapse All | dde_nonindiv_mal | nonindiv      |
      | hl            | Collapse All | dde_nonindiv_mal | nonindiv      |
      | pl            | Collapse All | dde_nonindiv_mal | nonindiv      |

  @ImplementedBy-manish.yadav2
  #FeatureID-ACAUTOCAS-298
  Scenario Outline: ACAUTOCAS-10331: Validating the <Field_Name> present in KYC Internal Dedupe Matched Application Details of Application Match for Customer with <Loan_Type> Individual in Summary Analysis
    And user creates an dedupe application of "<Loan_Type>" product type as "<ApplicantType>" applicant at "dde" for "" with "" from web service
    And user opens an application of "<Var_Stage>" stage variant from "APPLICATION" grid
    And user is on kyc check in summary Analysis
    And user Re-initiate Applicant Information with rerun
    And user click on "Application Match" No of Dedupe Match hyperlink of "Primary Applicant"
    When user click Application Id hyperlink in Dedupe Match Screen
    Then "<Field_Name>" present in KYC Internal Dedupe Matched Application Details

    Examples:
      | Loan_Type | Field_Name                 | Var_Stage    | ApplicantType |
      | hl        | Matched Application ID     | dde_indiv_hl | indiv         |
      | hl        | Stage of application       | dde_indiv_hl | indiv         |
      | hl        | Application Status         | dde_indiv_hl | indiv         |
      | hl        | Sourcing branch            | dde_indiv_hl | indiv         |
      | hl        | Application present in CAS | dde_indiv_hl | indiv         |
      | pl        | Matched Application ID     | dde_indiv_pl | indiv         |
      | pl        | Stage of application       | dde_indiv_pl | indiv         |
      | pl        | Application Status         | dde_indiv_pl | indiv         |
      | pl        | Sourcing branch            | dde_indiv_pl | indiv         |
      | pl        | Application present in CAS | dde_indiv_pl | indiv         |
      | al        | Matched Application ID     | dde_indiv_mal | indiv         |
      | al        | Stage of application       | dde_indiv_mal | indiv         |
      | al        | Application Status         | dde_indiv_mal | indiv         |
      | al        | Sourcing branch            | dde_indiv_mal | indiv         |
      | al        | Application present in CAS | dde_indiv_mal | indiv         |

  @ImplementedBy-yash.sharma
  #FeatureID-ACAUTOCAS-298
  Scenario Outline: ACAUTOCAS-10332: Validating the <Field_Name> present in KYC Internal Dedupe Matched Application Details of Customer Match for Customer with <Loan_Type> Individual in Summary Analysis
    And user creates an dedupe application of "<Loan_Type>" product type as "<ApplicantType>" applicant at "dde" for "" with "" from web service
    And user opens an application of "<Var_Stage>" stage variant from "APPLICATION" grid
    And user is on kyc check in summary Analysis
    And user Re-initiate Applicant Information with rerun
    And user click on "Customer Match" No of Dedupe Match hyperlink of "Primary Applicant"
    When user click Application Id hyperlink in Dedupe Match Screen
    Then "<Field_Name>" present in KYC Internal Dedupe Matched Application Details

    Examples:
      | Loan_Type | Field_Name                 | Var_Stage    | ApplicantType |
      | hl        | Matched Application ID     | dde_indiv_hl | indiv         |
      | hl        | Stage of application       | dde_indiv_hl | indiv         |
      | hl        | Application Status         | dde_indiv_hl | indiv         |
      | hl        | Sourcing branch            | dde_indiv_hl | indiv         |
      | hl        | Application present in CAS | dde_indiv_hl | indiv         |
      | pl        | Matched Application ID     | dde_indiv_pl | indiv         |
      | pl        | Stage of application       | dde_indiv_pl | indiv         |
      | pl        | Application Status         | dde_indiv_pl | indiv         |
      | pl        | Sourcing branch            | dde_indiv_pl | indiv         |
      | pl        | Application present in CAS | dde_indiv_pl | indiv         |
      | al        | Matched Application ID     | dde_indiv_mal | indiv         |
      | al        | Stage of application       | dde_indiv_mal | indiv         |
      | al        | Application Status         | dde_indiv_mal | indiv         |
      | al        | Sourcing branch            | dde_indiv_mal | indiv         |
      | al        | Application present in CAS | dde_indiv_mal | indiv         |

  @ImplementedBy-manish.yadav2
  #FeatureID-ACAUTOCAS-298
  Scenario Outline: ACAUTOCAS-10333: Validating the <Field_Name> present in KYC Internal Dedupe Matched Application Details of Application Match for  Customer with <Loan_Type> Non Individual in Summary Analysis
    And user creates an dedupe application of "<Loan_Type>" product type as "<ApplicantType>" applicant at "dde" for "" with "" from web service
    And user opens an application of "<Var_Stage>" stage variant from "APPLICATION" grid
    And user is on kyc check in summary Analysis
    And user Re-initiate Applicant Information with rerun
    And user click on "Application Match" No of Dedupe Match hyperlink of "Primary Applicant"
    When user click Application Id hyperlink in Dedupe Match Screen
    Then "<Field_Name>" present in KYC Internal Dedupe Matched Application Details

    Examples:
      | Loan_Type | Field_Name                 | Var_Stage       | ApplicantType |
      | hl        | Matched Application ID     | dde_nonindiv_hl | nonindiv      |
      | hl        | Stage of application       | dde_nonindiv_hl | nonindiv      |
      | hl        | Application Status         | dde_nonindiv_hl | nonindiv      |
      | hl        | Sourcing branch            | dde_nonindiv_hl | nonindiv      |
      | hl        | Application present in CAS | dde_nonindiv_hl | nonindiv      |
      | pl        | Matched Application ID     | dde_nonindiv_pl | nonindiv      |
      | pl        | Stage of application       | dde_nonindiv_pl | nonindiv      |
      | pl        | Application Status         | dde_nonindiv_pl | nonindiv      |
      | pl        | Sourcing branch            | dde_nonindiv_pl | nonindiv      |
      | pl        | Application present in CAS | dde_nonindiv_pl | nonindiv      |
      | al        | Matched Application ID     | dde_nonindiv_mal | nonindiv      |
      | al        | Stage of application       | dde_nonindiv_mal | nonindiv      |
      | al        | Application Status         | dde_nonindiv_mal | nonindiv      |
      | al        | Sourcing branch            | dde_nonindiv_mal | nonindiv      |
      | al        | Application present in CAS | dde_nonindiv_mal | nonindiv      |

  @ImplementedBy-yash.sharma
  #FeatureID-ACAUTOCAS-298
  Scenario Outline: ACAUTOCAS-10334: Validating the <Field_Name> present in KYC Internal Dedupe Matched Application Details of Customer Match for  Customer with <Loan_Type> Non Individual in Summary Analysis
    And user creates an dedupe application of "<Loan_Type>" product type as "<ApplicantType>" applicant at "dde" for "" with "" from web service
    And user opens an application of "<Var_Stage>" stage variant from "APPLICATION" grid
    And user is on kyc check in summary Analysis
    And user Re-initiate Applicant Information with rerun
    And user click on "Customer Match" No of Dedupe Match hyperlink of "Primary Applicant"
    When user click Application Id hyperlink in Dedupe Match Screen
    Then "<Field_Name>" present in KYC Internal Dedupe Matched Application Details

    Examples:
      | Loan_Type | Field_Name                 | Var_Stage       | ApplicantType |
      | hl        | Matched Application ID     | dde_nonindiv_hl | nonindiv      |
      | hl        | Stage of application       | dde_nonindiv_hl | nonindiv      |
      | hl        | Application Status         | dde_nonindiv_hl | nonindiv      |
      | hl        | Sourcing branch            | dde_nonindiv_hl | nonindiv      |
      | hl        | Application present in CAS | dde_nonindiv_hl | nonindiv      |
      | pl        | Matched Application ID     | dde_nonindiv_pl | nonindiv      |
      | pl        | Stage of application       | dde_nonindiv_pl | nonindiv      |
      | pl        | Application Status         | dde_nonindiv_pl | nonindiv      |
      | pl        | Sourcing branch            | dde_nonindiv_pl | nonindiv      |
      | pl        | Application present in CAS | dde_nonindiv_pl | nonindiv      |
      | al        | Matched Application ID     | dde_nonindiv_mal | nonindiv      |
      | al        | Stage of application       | dde_nonindiv_mal | nonindiv      |
      | al        | Application Status         | dde_nonindiv_mal | nonindiv      |
      | al        | Sourcing branch            | dde_nonindiv_mal | nonindiv      |
      | al        | Application present in CAS | dde_nonindiv_mal | nonindiv      |

  @ImplementedBy-manish.yadav2
  #FeatureID-ACAUTOCAS-298
  Scenario Outline: ACAUTOCAS-10335: When Application Match field of KYC Internal Dedupe Matched Application Details with <Action> should work properly for  Customer with <Loan_Type> Individual in Summary Analysis
    And user creates an dedupe application of "<Loan_Type>" product type as "<ApplicantType>" applicant at "dde" for "" with "" from web service
    And user opens an application of "<Var_Stage>" stage variant from "APPLICATION" grid
    And user is on kyc check in summary Analysis
    And user Re-initiate Applicant Information with rerun
    And user click on "Application Match" No of Dedupe Match hyperlink of "Primary Applicant"
    And user click Application Id hyperlink in Dedupe Match Screen
    When user take "<Action>" in KYC Internal Dedupe Matched Screen
    Then "<Action>" should work properly on KYC Internal Dedupe Matched Screen

    Examples:
      | Loan_Type | Action       | Var_Stage    | ApplicantType |
      | hl        | Maximize     | dde_indiv_hl | indiv         |
      | hl        | Minimize     | dde_indiv_hl | indiv         |
      | hl        | Cross        | dde_indiv_hl | indiv         |
      | hl        | Cancel       | dde_indiv_hl | indiv         |
      | pl        | Maximize     | dde_indiv_pl | indiv         |
      | pl        | Minimize     | dde_indiv_pl | indiv         |
      | pl        | Cross        | dde_indiv_pl | indiv         |
      | pl        | Cancel       | dde_indiv_pl | indiv         |
      | al        | Maximize     | dde_indiv_mal | indiv         |
      | al        | Minimize     | dde_indiv_mal | indiv         |
      | al        | Cross        | dde_indiv_mal | indiv         |
      | al        | Cancel       | dde_indiv_mal | indiv         |
      | al        | Expand All   | dde_indiv_mal | indiv         |
      | hl        | Expand All   | dde_indiv_hl | indiv         |
      | pl        | Expand All   | dde_indiv_pl | indiv         |
      | al        | Collapse All | dde_indiv_mal | indiv         |
      | hl        | Collapse All | dde_indiv_hl | indiv         |
      | pl        | Collapse All | dde_indiv_pl | indiv         |

  @ImplementedBy-yash.sharma
  #FeatureID-ACAUTOCAS-298
  Scenario Outline: ACAUTOCAS-10336: When Customer Match field of KYC Internal Dedupe Matched Application Details with <Action> should work properly for  Customer with <Loan_Type> Individual in Summary Analysis
    And user creates an dedupe application of "<Loan_Type>" product type as "<ApplicantType>" applicant at "dde" for "" with "" from web service
    And user opens an application of "<Var_Stage>" stage variant from "APPLICATION" grid
    And user is on kyc check in summary Analysis
    And user Re-initiate Applicant Information with rerun
    And user click on "Customer Match" No of Dedupe Match hyperlink of "Primary Applicant"
    And user click Application Id hyperlink in Dedupe Match Screen
    When user take "<Action>" in KYC Internal Dedupe Matched Screen
    Then "<Action>" should work properly on KYC Internal Dedupe Matched Screen

    Examples:
      | Loan_Type | Action       | Var_Stage    | ApplicantType |
      | hl        | Maximize     | dde_indiv_hl | indiv         |
      | hl        | Minimize     | dde_indiv_hl | indiv         |
      | hl        | Cross        | dde_indiv_hl | indiv         |
      | hl        | Cancel       | dde_indiv_hl | indiv         |
      | pl        | Maximize     | dde_indiv_pl | indiv         |
      | pl        | Minimize     | dde_indiv_pl | indiv         |
      | pl        | Cross        | dde_indiv_pl | indiv         |
      | pl        | Cancel       | dde_indiv_pl | indiv         |
      | al        | Maximize     | dde_indiv_mal | indiv         |
      | al        | Minimize     | dde_indiv_mal | indiv         |
      | al        | Cross        | dde_indiv_mal | indiv         |
      | al        | Cancel       | dde_indiv_mal | indiv         |
      | al        | Expand All   | dde_indiv_mal | indiv         |
      | hl        | Expand All   | dde_indiv_hl | indiv         |
      | pl        | Expand All   | dde_indiv_pl | indiv         |
      | al        | Collapse All | dde_indiv_mal | indiv         |
      | hl        | Collapse All | dde_indiv_hl | indiv         |
      | pl        | Collapse All | dde_indiv_pl | indiv         |

  @ImplementedBy-manish.yadav2
  #FeatureID-ACAUTOCAS-298
  Scenario Outline: ACAUTOCAS-10337: When Application Match field of KYC Internal Dedupe Matched Application Details with <Action> should work properly for  Customer with <Loan_Type> Non Individual in Summary Analysis
    And user creates an dedupe application of "<Loan_Type>" product type as "<ApplicantType>" applicant at "dde" for "" with "" from web service
    And user opens an application of "<Var_Stage>" stage variant from "APPLICATION" grid
    And user is on kyc check in summary Analysis
    And user Re-initiate Applicant Information with rerun
    And user click on "Application Match" No of Dedupe Match hyperlink of "Primary Applicant"
    And user click Application Id hyperlink in Dedupe Match Screen
    When user take "<Action>" in KYC Internal Dedupe Matched Screen
    Then "<Action>" should work properly on KYC Internal Dedupe Matched Screen

    Examples:
      | Loan_Type | Action       | Var_Stage       | ApplicantType |
      | hl        | Maximize     | dde_nonindiv_hl | nonindiv      |
      | hl        | Minimize     | dde_nonindiv_hl | nonindiv      |
      | hl        | Cross        | dde_nonindiv_hl | nonindiv      |
      | hl        | Cancel       | dde_nonindiv_hl | nonindiv      |
      | pl        | Maximize     | dde_nonindiv_pl | nonindiv      |
      | pl        | Minimize     | dde_nonindiv_pl | nonindiv      |
      | pl        | Cross        | dde_nonindiv_pl | nonindiv      |
      | pl        | Cancel       | dde_nonindiv_pl | nonindiv      |
      | al        | Maximize     | dde_nonindiv_mal | nonindiv      |
      | al        | Minimize     | dde_nonindiv_mal | nonindiv      |
      | al        | Cross        | dde_nonindiv_mal | nonindiv      |
      | al        | Cancel       | dde_nonindiv_mal | nonindiv      |
      | al        | Expand All   | dde_nonindiv_mal | nonindiv      |
      | hl        | Expand All   | dde_nonindiv_hl | nonindiv      |
      | pl        | Expand All   | dde_nonindiv_pl | nonindiv      |
      | al        | Collapse All | dde_nonindiv_mal | nonindiv      |
      | hl        | Collapse All | dde_nonindiv_hl | nonindiv      |
      | pl        | Collapse All | dde_nonindiv_pl | nonindiv      |

  @ImplementedBy-yash.sharma
  #FeatureID-ACAUTOCAS-298
  Scenario Outline: ACAUTOCAS-10338: When Customer Match field of KYC Internal Dedupe Matched Application Details with <Action> should work properly for Customer with <Loan_Type> Non Individual in Summary Analysis
    And user creates an dedupe application of "<Loan_Type>" product type as "<ApplicantType>" applicant at "dde" for "" with "" from web service
    And user opens an application of "<Var_Stage>" stage variant from "APPLICATION" grid
    And user is on kyc check in summary Analysis
    And user Re-initiate Applicant Information with rerun
    And user click on "Customer Match" No of Dedupe Match hyperlink of "Primary Applicant"
    And user click Application Id hyperlink in Dedupe Match Screen
    When user take "<Action>" in KYC Internal Dedupe Matched Screen
    Then "<Action>" should work properly on KYC Internal Dedupe Matched Screen

    Examples:
      | Loan_Type | Action       | Var_Stage       | ApplicantType |
      | hl        | Maximize     | dde_nonindiv_hl | nonindiv      |
      | hl        | Minimize     | dde_nonindiv_hl | nonindiv      |
      | hl        | Cross        | dde_nonindiv_hl | nonindiv      |
      | hl        | Cancel       | dde_nonindiv_hl | nonindiv      |
      | pl        | Maximize     | dde_nonindiv_pl | nonindiv      |
      | pl        | Minimize     | dde_nonindiv_pl | nonindiv      |
      | pl        | Cross        | dde_nonindiv_pl | nonindiv      |
      | pl        | Cancel       | dde_nonindiv_pl | nonindiv      |
      | al        | Maximize     | dde_nonindiv_mal | nonindiv      |
      | al        | Minimize     | dde_nonindiv_mal | nonindiv      |
      | al        | Cross        | dde_nonindiv_mal | nonindiv      |
      | al        | Cancel       | dde_nonindiv_mal | nonindiv      |
      | al        | Expand All   | dde_nonindiv_mal | nonindiv      |
      | hl        | Expand All   | dde_nonindiv_hl | nonindiv      |
      | pl        | Expand All   | dde_nonindiv_pl | nonindiv      |
      | al        | Collapse All | dde_nonindiv_mal | nonindiv      |
      | hl        | Collapse All | dde_nonindiv_hl | nonindiv      |
      | pl        | Collapse All | dde_nonindiv_pl | nonindiv      |

  @ImplementedBy-rishabh.sachan
  #FeatureID-ACAUTOCAS-298
  Scenario Outline: ACAUTOCAS-10339: Show the "<NumberOfRows>" rows in Customer Match of Dedupe Match Screen for Customer with all Lob's in Summary Analysis
    And user creates an dedupe application of "<Loan_Type>" product type as "<ApplicantType>" applicant at "dde" for "" with "" from web service
    And user opens an application of "<Var_Stage>" stage variant from "APPLICATION" grid
    And user is on kyc check in summary Analysis
    And user Re-initiate Applicant Information with rerun
    And user click on "Customer Match" No of Dedupe Match hyperlink of "Primary Applicant"
    When user selects "<NumberOfRows>" number of rows to show for Dedupe Match Screen
    Then selected <NumberOfRows> rows "<Display>" in case total enteries are "<More_Less>" than selected number
    Examples:
      | NumberOfRows | Display                                 | More_Less | Loan_Type | Var_Stage    | ApplicantType |
      | 10           | display                                 | more      | pl        | dde_indiv_pl | indiv         |
      | 25           | display                                 | more      | pl        | dde_indiv_pl | indiv         |
      | 50           | display                                 | more      | pl        | dde_indiv_pl | indiv         |
      | 100          | display                                 | more      | pl        | dde_indiv_pl | indiv         |
      | 10           | not display only available rows display | less      | pl        | dde_indiv_pl | indiv         |
      | 25           | not display only available rows display | less      | pl        | dde_indiv_pl | indiv         |
      | 50           | not display only available rows display | less      | pl        | dde_indiv_pl | indiv         |
      | 100          | not display only available rows display | less      | pl        | dde_indiv_pl | indiv         |

  @ImplementedBy-yash.sharma
  #FeatureID-ACAUTOCAS-298
  Scenario Outline: ACAUTOCAS-10340: Show the "<NumberOfRows>" rows in Negative Checklist of Dedupe Match Screen for Customer with all Lob's in Summary Analysis
    And user creates an dedupe application of "<Loan_Type>" product type as "<ApplicantType>" applicant at "dde" for "" with "" from web service
    And user opens an application of "<Var_Stage>" stage variant from "APPLICATION" grid
    And user is on kyc check in summary Analysis
    And user Re-initiate Applicant Information with rerun
    And user click on "Negative Checklist" No of Dedupe Match hyperlink of "Primary Applicant"
    When user selects "<NumberOfRows>" number of rows to show for Dedupe Match Screen
    Then selected <NumberOfRows> rows "<Display>" in case total enteries are "<More_Less>" than selected number
    Examples:
      | NumberOfRows | Display                                 | More_Less | Loan_Type | Var_Stage    | ApplicantType |
      | 10           | display                                 | more      | pl        | dde_indiv_pl | indiv         |
      | 25           | display                                 | more      | pl        | dde_indiv_pl | indiv         |
      | 50           | display                                 | more      | pl        | dde_indiv_pl | indiv         |
      | 100          | display                                 | more      | pl        | dde_indiv_pl | indiv         |
      | 10           | not display only available rows display | less      | pl        | dde_indiv_pl | indiv         |
      | 25           | not display only available rows display | less      | pl        | dde_indiv_pl | indiv         |
      | 50           | not display only available rows display | less      | pl        | dde_indiv_pl | indiv         |
      | 100          | not display only available rows display | less      | pl        | dde_indiv_pl | indiv         |

  @ImplementedBy-rishabh.sachan
  #FeatureID-ACAUTOCAS-298
  Scenario Outline: ACAUTOCAS-10341: Show the "<NumberOfRows>" rows in Application Match of Dedupe Match Screen for Customer with all Lob's in Summary Analysis
    And user creates an dedupe application of "<Loan_Type>" product type as "<ApplicantType>" applicant at "dde" for "" with "" from web service
    And user opens an application of "<Var_Stage>" stage variant from "APPLICATION" grid
    And user is on kyc check in summary Analysis
    And user Re-initiate Applicant Information with rerun
    And user click on "Application Match" No of Dedupe Match hyperlink of "Primary Applicant"
    When user selects "<NumberOfRows>" number of rows to show for Dedupe Match Screen
    Then selected <NumberOfRows> rows "<Display>" in case total enteries are "<More_Less>" than selected number
    Examples:
      | NumberOfRows | Display                                 | More_Less | Loan_Type | Var_Stage    | ApplicantType |
      | 10           | display                                 | more      | pl        | dde_indiv_pl | indiv         |
      | 25           | display                                 | more      | pl        | dde_indiv_pl | indiv         |
      | 50           | display                                 | more      | pl        | dde_indiv_pl | indiv         |
      | 100          | display                                 | more      | pl        | dde_indiv_pl | indiv         |
      | 10           | not display only available rows display | less      | pl        | dde_indiv_pl | indiv         |
      | 25           | not display only available rows display | less      | pl        | dde_indiv_pl | indiv         |
      | 50           | not display only available rows display | less      | pl        | dde_indiv_pl | indiv         |
      | 100          | not display only available rows display | less      | pl        | dde_indiv_pl | indiv         |

  @ImplementedBy-yash.sharma
  #FeatureID-ACAUTOCAS-298
  Scenario Outline: ACAUTOCAS-10342: Application Match sorting in Dedupe Match Screen with ascending order by <Field> column for Customer with all Lob's in Summary Analysis
    And user creates an dedupe application of "<Loan_Type>" product type as "<ApplicantType>" applicant at "dde" for "" with "" from web service
    And user opens an application of "<Var_Stage>" stage variant from "APPLICATION" grid
    And user is on kyc check in summary Analysis
    And user Re-initiate Applicant Information with rerun
    And user click on "Application Match" No of Dedupe Match hyperlink of "Primary Applicant"
    When user sort the Dedupe Match Screen by "<Field>" column in "Ascending" order
    Then Dedupe Match Screen should be sort in "Ascending" order basis of "<Field>"

    Examples:
      | Field                 | Loan_Type | Var_Stage    | ApplicantType |
      | Application Id        | pl        | dde_indiv_pl | indiv         |
      | Strength Of Match     | pl        | dde_indiv_pl | indiv         |
      | Neo Cust Id           | pl        | dde_indiv_pl | indiv         |
      | Customer Name         | pl        | dde_indiv_pl | indiv         |
      | Date Of Birth         | pl        | dde_indiv_pl | indiv         |
      | Neo CIF Number        | pl        | dde_indiv_pl | indiv         |
      | Identification Number | pl        | dde_indiv_pl | indiv         |
      | Unique Id             | pl        | dde_indiv_pl | indiv         |
      | Applicant Type        | pl        | dde_indiv_pl | indiv         |

  @ImplementedBy-manish.yadav2
  #FeatureID-ACAUTOCAS-298
  Scenario Outline: ACAUTOCAS-10343: Customer Match sorting in Dedupe Match Screen with ascending order by <Field> column for Customer with all Lob's in Summary Analysis
    And user creates an dedupe application of "<Loan_Type>" product type as "<ApplicantType>" applicant at "dde" for "" with "" from web service
    And user opens an application of "<Var_Stage>" stage variant from "APPLICATION" grid
    And user is on kyc check in summary Analysis
    And user Re-initiate Applicant Information with rerun
    And user click on "Customer Match" No of Dedupe Match hyperlink of "Primary Applicant"
    When user sort the Dedupe Match Screen by "<Field>" column in "Ascending" order
    Then Dedupe Match Screen should be sort in "Ascending" order basis of "<Field>"

    Examples:
      | Field                 | Loan_Type | Var_Stage    | ApplicantType |
      | Application Id        | pl        | dde_indiv_pl | indiv         |
      | Strength Of Match     | pl        | dde_indiv_pl | indiv         |
      | Neo Cust Id           | pl        | dde_indiv_pl | indiv         |
      | Customer Name         | pl        | dde_indiv_pl | indiv         |
      | Date Of Birth         | pl        | dde_indiv_pl | indiv         |
      | Neo CIF Number        | pl        | dde_indiv_pl | indiv         |
      | Identification Number | pl        | dde_indiv_pl | indiv         |
      | Unique Id             | pl        | dde_indiv_pl | indiv         |
      | Applicant Type        | pl        | dde_indiv_pl | indiv         |

  @ImplementedBy-yash.sharma
  #FeatureID-ACAUTOCAS-298
  Scenario Outline: ACAUTOCAS-10344: Application Match sorting in Dedupe Match Screen with descending order by <Field> column for Customer with all Lob's in Summary Analysis
    And user creates an dedupe application of "<Loan_Type>" product type as "<ApplicantType>" applicant at "dde" for "" with "" from web service
    And user opens an application of "<Var_Stage>" stage variant from "APPLICATION" grid
    And user is on kyc check in summary Analysis
    And user Re-initiate Applicant Information with rerun
    And user click on "Application Match" No of Dedupe Match hyperlink of "Primary Applicant"
    When user sort the Dedupe Match Screen by "<Field>" column in "Descending" order
    Then Dedupe Match Screen should be sort in "Descending" order basis of "<Field>"

    Examples:
      | Field                 | Loan_Type | Var_Stage    | ApplicantType |
      | Application Id        | pl        | dde_indiv_pl | indiv         |
      | Strength Of Match     | pl        | dde_indiv_pl | indiv         |
      | Neo Cust Id           | pl        | dde_indiv_pl | indiv         |
      | Customer Name         | pl        | dde_indiv_pl | indiv         |
      | Date Of Birth         | pl        | dde_indiv_pl | indiv         |
      | Neo CIF Number        | pl        | dde_indiv_pl | indiv         |
      | Identification Number | pl        | dde_indiv_pl | indiv         |
      | Unique Id             | pl        | dde_indiv_pl | indiv         |
      | Applicant Type        | pl        | dde_indiv_pl | indiv         |

  @ImplementedBy-manish.yadav2
  #FeatureID-ACAUTOCAS-298
  Scenario Outline: ACAUTOCAS-10345: Customer Match sorting in Dedupe Match Screen with descending order by <Field> column for Customer with all Lob's in Summary Analysis
    And user creates an dedupe application of "<Loan_Type>" product type as "<ApplicantType>" applicant at "dde" for "" with "" from web service
    And user opens an application of "<Var_Stage>" stage variant from "APPLICATION" grid
    And user is on kyc check in summary Analysis
    And user Re-initiate Applicant Information with rerun
    And user click on "Customer Match" No of Dedupe Match hyperlink of "Primary Applicant"
    When user sort the Dedupe Match Screen by "<Field>" column in "Descending" order
    Then Dedupe Match Screen should be sort in "Descending" order basis of "<Field>"
    Examples:
      | Field                 | Loan_Type | Var_Stage    | ApplicantType |
      | Application Id        | pl        | dde_indiv_pl | indiv         |
      | Strength Of Match     | pl        | dde_indiv_pl | indiv         |
      | Neo Cust Id           | pl        | dde_indiv_pl | indiv         |
      | Customer Name         | pl        | dde_indiv_pl | indiv         |
      | Date Of Birth         | pl        | dde_indiv_pl | indiv         |
      | Neo CIF Number        | pl        | dde_indiv_pl | indiv         |
      | Identification Number | pl        | dde_indiv_pl | indiv         |
      | Unique Id             | pl        | dde_indiv_pl | indiv         |
      | Applicant Type        | pl        | dde_indiv_pl | indiv         |

  @ImplementedBy-rishabh.sachan
  #FeatureID-ACAUTOCAS-298
  Scenario Outline: ACAUTOCAS-10346: Pagination of Application Match in Dedupe Match Screen of Customer with all Lob's in Summary Analysis
    And user creates an dedupe application of "<Loan_Type>" product type as "<ApplicantType>" applicant at "dde" for "" with "" from web service
    And user opens an application of "<Var_Stage>" stage variant from "APPLICATION" grid
    And user is on kyc check in summary Analysis
    And user Re-initiate Applicant Information with rerun
    And user click on "Application Match" No of Dedupe Match hyperlink of "Primary Applicant"
    When user select "<Page>" page in Dedupe Match Screen
    Then "<Paginate_Btn>" should be "<Disable_Enable>" for dedupe match screen on kyc check page
    Examples:
      | Page  | Paginate_Btn             | Disable_Enable | Loan_Type | Var_Stage    | ApplicantType |
      | first | paginate_button previous | disable        | pl        | dde_indiv_pl | indiv         |
      | first | paginate_button next     | enable         | pl        | dde_indiv_pl | indiv         |
      | next  | paginate_button previous | enable         | pl        | dde_indiv_pl | indiv         |
      | last  | paginate_button first    | enable         | pl        | dde_indiv_pl | indiv         |
      | last  | paginate_button previous | enable         | pl        | dde_indiv_pl | indiv         |
      | last  | paginate_button next     | disable        | pl        | dde_indiv_pl | indiv         |

  @ImplementedBy-rishabh.sachan
  #FeatureID-ACAUTOCAS-298
  Scenario Outline: ACAUTOCAS-10347: Pagination of Customer Match in Dedupe Match Screen of Customer with all Lob's in Summary Analysis
    And user creates an dedupe application of "<Loan_Type>" product type as "<ApplicantType>" applicant at "dde" for "" with "" from web service
    And user opens an application of "<Var_Stage>" stage variant from "APPLICATION" grid
    And user is on kyc check in summary Analysis
    And user Re-initiate Applicant Information with rerun
    And user click on "Customer Match" No of Dedupe Match hyperlink of "Primary Applicant"
    When user select "<Page>" page in Dedupe Match Screen
    Then "<Paginate_Btn>" should be "<Disable_Enable>" for dedupe match screen on kyc check page
    Examples:
      | Page  | Paginate_Btn             | Disable_Enable | Loan_Type | Var_Stage    | ApplicantType |
      | first | paginate_button previous | disable        | pl        | dde_indiv_pl | indiv         |
      | first | paginate_button next     | enable         | pl        | dde_indiv_pl | indiv         |
      | next  | paginate_button previous | enable         | pl        | dde_indiv_pl | indiv         |
      | last  | paginate_button first    | enable         | pl        | dde_indiv_pl | indiv         |
      | last  | paginate_button previous | enable         | pl        | dde_indiv_pl | indiv         |
      | last  | paginate_button next     | disable        | pl        | dde_indiv_pl | indiv         |

  @ImplementedBy-rishabh.sachan
  #FeatureID-ACAUTOCAS-298
  Scenario Outline: ACAUTOCAS-10348: Verify result which is displaying in search results is correct for Dedupe Match Screen of Customer with all Lob's in Summary Analysis
    And user creates an dedupe application of "<Loan_Type>" product type as "<ApplicantType>" applicant at "dde" for "" with "" from web service
    And user opens an application of "<Var_Stage>" stage variant from "APPLICATION" grid
    And user is on kyc check in summary Analysis
    And user Re-initiate Applicant Information with rerun
    And user click on "<Field_Name>" No of Dedupe Match hyperlink of "Primary Applicant"
    When user click Application Id hyperlink in Dedupe Match Screen
    Then correct details of the application should be visible in view mode
    Examples:
      | Field_Name        | Loan_Type | Var_Stage    | ApplicantType |
      | Application Match | pl        | dde_indiv_pl | indiv         |
      | Customer Match    | pl        | dde_indiv_pl | indiv         |


  #prerequisite: dedupe weightage should be correct as per the definition of dedupe in master.
  @ImplementedBy-rishabh.sachan
  #FeatureID-ACAUTOCAS-298
  Scenario Outline: ACAUTOCAS-10349: The strength of Match dedupe weightage should be correct as per the definition of dedupe in master in Customer with all Lob's in Summary Analysis
    And user creates an dedupe application of "<Loan_Type>" product type as "<ApplicantType>" applicant at "dde" for "" with "" from web service
    And user opens an application of "<Var_Stage>" stage variant from "APPLICATION" grid
    And user is on kyc check in summary Analysis
    And user Re-initiate Applicant Information with rerun
    And user click on "<Field_Name>" No of Dedupe Match hyperlink of "Primary Applicant"
    When user check results of strength of Match
    Then strength of Match dedupe weightage should be validate correctly
    Examples:
      | Field_Name        | Loan_Type | Var_Stage    | ApplicantType |
      | Application Match | pl        | dde_indiv_pl | indiv         |
      | Customer Match    | pl        | dde_indiv_pl | indiv         |

  @ImplementedBy-rishabh.sachan
  #FeatureID-ACAUTOCAS-298
  Scenario Outline: ACAUTOCAS-10350: Validating strength of Match data in Dedupe Match Screen should be same for Matches found in Strength of Match in Customer with all Lob's in Summary Analysis
    And user creates an dedupe application of "<Loan_Type>" product type as "<ApplicantType>" applicant at "dde" for "" with "" from web service
    And user opens an application of "<Var_Stage>" stage variant from "APPLICATION" grid
    And user is on kyc check in summary Analysis
    And user Re-initiate Applicant Information with rerun
    And user click on "<Field_Name>" No of Dedupe Match hyperlink of "Primary Applicant"
    When user check results of strength of Match
    Then Match found in Strength of Match should be same as dedupe strength of match
    Examples:
      | Field_Name        | Loan_Type | Var_Stage    | ApplicantType |
      | Application Match | pl        | dde_indiv_pl | indiv         |
      | Customer Match    | pl        | dde_indiv_pl | indiv         |

  @ImplementedBy-rishabh.sachan
  #FeatureID-ACAUTOCAS-298
  Scenario Outline: ACAUTOCAS-10351: While opening Application Id hyperlink in Dedupe Match Screen the correct details of the application should be visible in view mode for Customer with all Lob's in Summary Analysis
    And user creates an dedupe application of "<Loan_Type>" product type as "<ApplicantType>" applicant at "dde" for "" with "" from web service
    And user opens an application of "<Var_Stage>" stage variant from "APPLICATION" grid
    And user is on kyc check in summary Analysis
    And user Re-initiate Applicant Information with rerun
    And user click on "<Field_Name>" No of Dedupe Match hyperlink of "Primary Applicant"
    When user click Application Id hyperlink in Dedupe Match Screen
    Then correct details of the application should be visible in view mode
    Examples:
      | Field_Name        | Loan_Type | Var_Stage    | ApplicantType |
      | Application Match | pl        | dde_indiv_pl | indiv         |
      | Customer Match    | pl        | dde_indiv_pl | indiv         |


  #Pre-requisites to add negative checklist data is master - Negative Checklist and Negative checklist template
  @ImplementedBy-rishabh.sachan
  #FeatureID-ACAUTOCAS-298
  Scenario Outline: ACAUTOCAS-10352:  Matches Records Pages should be displayed on Negative checklist Matches for Customer with all Lob's in Summary Analysis
    And user creates an dedupe application of "<Loan_Type>" product type as "<ApplicantType>" applicant at "dde" for "" with "" from web service
    And user opens an application of "<Var_Stage>" stage variant from "APPLICATION" grid
    And user reads data from the excel file "personal_information.xlsx" under sheet "identification" and row 116
    And user perform prerequisites for negative checkList
    And user is on kyc check in summary Analysis
    And user Re-initiate Applicant Information with rerun
    And user click on "<Match_Type>" No of Dedupe Match hyperlink of "<DedupeApplicantType>"
    When user click on Negative checklist Matched record
    Then Negative Checklist Matched Records should be displayed
    Examples:
      | Match_Type         | Loan_Type | Var_Stage    | ApplicantType | DedupeApplicantType |
      | Negative Checklist | pl        | dde_indiv_pl | indiv         | Primary Applicant   |

  #Pre-requisites to add negative checklist data is master - Negative Checklist and Negative checklist template
  @ImplementedBy-rishabh.sachan
  #FeatureID-ACAUTOCAS-298
  Scenario Outline: ACAUTOCAS-10353:  Added negative checklist data is master should display in negative checklist Matches for Customer with all Lob's in Summary Analysis
    And user creates an dedupe application of "<Loan_Type>" product type as "<ApplicantType>" applicant at "dde" for "" with "" from web service
    And user opens an application of "<Var_Stage>" stage variant from "APPLICATION" grid
    And user reads data from the excel file "personal_information.xlsx" under sheet "identification" and row 116
    And user perform prerequisites for negative checkList
    And user is on kyc check in summary Analysis
    And user Re-initiate Applicant Information with rerun
    When user click on "<Match_Type>" No of Dedupe Match hyperlink of "<DedupeApplicantType>"
    Then master data should displayed for negative checklist Matches
    Examples:
      | Match_Type         | Loan_Type | Var_Stage    | ApplicantType | DedupeApplicantType |
      | Negative Checklist | pl        | dde_indiv_pl | indiv         | Primary Applicant   |

  @ImplementedBy-rishabh.sachan
  #FeatureID-ACAUTOCAS-298
  Scenario Outline: ACAUTOCAS-10354:  In Application Match By default all application should be ticked to consider for exposure in Customer with all Lob's in Summary Analysis
    And user creates an dedupe application of "<Loan_Type>" product type as "<ApplicantType>" applicant at "dde" for "" with "" from web service
    And user opens an application of "<Var_Stage>" stage variant from "APPLICATION" grid
    And user reads data from the excel file "personal_information.xlsx" under sheet "identification" and row 116
    And user perform prerequisites for negative checkList
    And user is on kyc check in summary Analysis
    And user Re-initiate Applicant Information with rerun
    When user click on "<Match_Type>" No of Dedupe Match hyperlink of "<DedupeApplicantType>"
    Then by default all application should be ticked to consider for exposure
    Examples:
      | Match_Type        | Loan_Type | Var_Stage    | ApplicantType | DedupeApplicantType |
      | Application Match | pl        | dde_indiv_pl | indiv         | Primary Applicant   |

  @ImplementedBy-rishabh.sachan
  #FeatureID-ACAUTOCAS-298
  Scenario Outline: ACAUTOCAS-10355:  In Customer Match By default all application should be ticked to consider for exposure in Customer with all Lob's in Summary Analysis
    And user creates an dedupe application of "<Loan_Type>" product type as "<ApplicantType>" applicant at "dde" for "" with "" from web service
    And user opens an application of "<Var_Stage>" stage variant from "APPLICATION" grid
    And user reads data from the excel file "personal_information.xlsx" under sheet "identification" and row 116
    And user perform prerequisites for negative checkList
    And user is on kyc check in summary Analysis
    And user Re-initiate Applicant Information with rerun
    When user click on "<Match_Type>" No of Dedupe Match hyperlink of "<DedupeApplicantType>"
    Then by default all application should be ticked to consider for exposure
    Examples:
      | Match_Type     | Loan_Type | Var_Stage    | ApplicantType | DedupeApplicantType |
      | Customer Match | pl        | dde_indiv_pl | indiv         | Primary Applicant   |

  @ImplementedBy-rishabh.sachan
  #FeatureID-ACAUTOCAS-298
  Scenario Outline: ACAUTOCAS-10356: In Customer Match System should allow to <action> consider for exposure in Customer with all Lob's in Summary Analysis
    And user creates an dedupe application of "<Loan_Type>" product type as "<ApplicantType>" applicant at "dde" for "" with "" from web service
    And user opens an application of "<Var_Stage>" stage variant from "APPLICATION" grid
    And user reads data from the excel file "personal_information.xlsx" under sheet "identification" and row 116
    And user perform prerequisites for negative checkList
    And user is on kyc check in summary Analysis
    And user Re-initiate Applicant Information with rerun
    When user click on "<Match_Type>" No of Dedupe Match hyperlink of "<DedupeApplicantType>"
    Then System should allow to "<action>" consider for exposure for "<Match_Type>"
    Examples:
      | action | Match_Type     | Loan_Type | Var_Stage    | ApplicantType | DedupeApplicantType |
      | Tick   | Customer Match | pl        | dde_indiv_pl | indiv         | Primary Applicant   |
      | Untick | Customer Match | pl        | dde_indiv_pl | indiv         | Primary Applicant   |

  @ImplementedBy-rishabh.sachan
  #FeatureID-ACAUTOCAS-298
  Scenario Outline: ACAUTOCAS-10357: In Application Match System should allow to <action> consider for exposure in Customer with all Lob's in Summary Analysis
    And user creates an dedupe application of "<Loan_Type>" product type as "<ApplicantType>" applicant at "dde" for "" with "" from web service
    And user opens an application of "<Var_Stage>" stage variant from "APPLICATION" grid
    And user reads data from the excel file "personal_information.xlsx" under sheet "identification" and row 116
    And user perform prerequisites for negative checkList
    And user is on kyc check in summary Analysis
    And user Re-initiate Applicant Information with rerun
    When user click on "<Match_Type>" No of Dedupe Match hyperlink of "<DedupeApplicantType>"
    Then System should allow to "<action>" consider for exposure for "<Match_Type>"
    Examples:
      | action | Match_Type        | Loan_Type | Var_Stage    | ApplicantType | DedupeApplicantType |
      | Tick   | Application Match | pl        | dde_indiv_pl | indiv         | Primary Applicant   |
      | Untick | Application Match | pl        | dde_indiv_pl | indiv         | Primary Applicant   |

  @ImplementedBy-rishabh.sachan
  #FeatureID-ACAUTOCAS-298
  Scenario Outline: ACAUTOCAS-10358:  In Application Match Once it is linked for exposure after that exposure calculation should happen accordingly in Customer with all Lob's in Summary Analysis
    And user creates an dedupe application of "<Loan_Type>" product type as "<ApplicantType>" applicant at "dde" for "" with "" from web service
    And user opens an application of "<Var_Stage>" stage variant from "APPLICATION" grid
    And user reads data from the excel file "personal_information.xlsx" under sheet "identification" and row 116
    And user perform prerequisites for negative checkList
    And user is on kyc check in summary Analysis
    And user Re-initiate Applicant Information with rerun
    When user click on "<Match_Type>" No of Dedupe Match hyperlink of "<DedupeApplicantType>"
    And user once linked the exposure
    Then exposure calculation should happen accordingly
    Examples:
      | Match_Type        | Loan_Type | Var_Stage    | ApplicantType | DedupeApplicantType |
      | Application Match | pl        | dde_indiv_pl | indiv         | Primary Applicant   |

  @ImplementedBy-rishabh.sachan
  #FeatureID-ACAUTOCAS-298
  Scenario Outline: ACAUTOCAS-10359:  In Customer Match Once it is linked for exposure after that exposure calculation should happen accordingly in Customer with all Lob's in Summary Analysis
    And user creates an dedupe application of "<Loan_Type>" product type as "<ApplicantType>" applicant at "dde" for "" with "" from web service
    And user opens an application of "<Var_Stage>" stage variant from "APPLICATION" grid
    And user reads data from the excel file "personal_information.xlsx" under sheet "identification" and row 116
    And user perform prerequisites for negative checkList
    And user is on kyc check in summary Analysis
    And user Re-initiate Applicant Information with rerun
    When user click on "<Match_Type>" No of Dedupe Match hyperlink of "<DedupeApplicantType>"
    And user once linked the exposure
    Then exposure calculation should happen accordingly
    Examples:
      | Match_Type     | Loan_Type | Var_Stage    | ApplicantType | DedupeApplicantType |
      | Customer Match | pl        | dde_indiv_pl | indiv         | Primary Applicant   |

  @ImplementedBy-rishabh.sachan
  #FeatureID-ACAUTOCAS-298
  Scenario Outline: ACAUTOCAS-10360:  In Customer Match the linking should be allowed for every application in Customer with all Lob's in Summary Analysis
    And user creates an dedupe application of "<Loan_Type>" product type as "<ApplicantType>" applicant at "dde" for "" with "" from web service
    And user opens an application of "<Var_Stage>" stage variant from "APPLICATION" grid
    And user reads data from the excel file "personal_information.xlsx" under sheet "identification" and row 116
    And user perform prerequisites for negative checkList
    And user is on kyc check in summary Analysis
    And user Re-initiate Applicant Information with rerun
    When user click on "<Match_Type>" No of Dedupe Match hyperlink of "<DedupeApplicantType>"
    And user once tick on link
    Then linking should work properly for every application
    Examples:
      | Match_Type     | Loan_Type | Var_Stage    | ApplicantType | DedupeApplicantType |
      | Customer Match | pl        | dde_indiv_pl | indiv         | Primary Applicant   |

  @ImplementedBy-rishabh.sachan
  #FeatureID-ACAUTOCAS-298
  Scenario Outline: ACAUTOCAS-10361:  In Application Match the linking should be allowed for every application in Customer with all Lob's in Summary Analysis
    And user creates an dedupe application of "<Loan_Type>" product type as "<ApplicantType>" applicant at "dde" for "" with "" from web service
    And user opens an application of "<Var_Stage>" stage variant from "APPLICATION" grid
    And user reads data from the excel file "personal_information.xlsx" under sheet "identification" and row 116
    And user perform prerequisites for negative checkList
    And user is on kyc check in summary Analysis
    And user Re-initiate Applicant Information with rerun
    When user click on "<Match_Type>" No of Dedupe Match hyperlink of "<DedupeApplicantType>"
    And user once tick on link
    Then linking should work properly for every application
    Examples:
      | Match_Type        | Loan_Type | Var_Stage    | ApplicantType | DedupeApplicantType |
      | Application Match | pl        | dde_indiv_pl | indiv         | Primary Applicant   |

  @ImplementedBy-rishabh.sachan
  #FeatureID-ACAUTOCAS-298
  Scenario Outline: ACAUTOCAS-10362:  In Application Match once the application is linked after that in GCD the global customer ID will be same for linked applications in Customer with all Lob's in Summary Analysis
    And user creates an dedupe application of "<Loan_Type>" product type as "<ApplicantType>" applicant at "dde" for "" with "" from web service
    And user opens an application of "<Var_Stage>" stage variant from "APPLICATION" grid
    And user reads data from the excel file "personal_information.xlsx" under sheet "identification" and row 116
    And user perform prerequisites for negative checkList
    And user is on kyc check in summary Analysis
    And user Re-initiate Applicant Information with rerun
    When user click on "<Match_Type>" No of Dedupe Match hyperlink of "<DedupeApplicantType>"
    And user link the application id with Done
    Then in GCD the global customer ID will be same for linked applications
    Examples:
      | Match_Type        | Loan_Type | Var_Stage    | ApplicantType | DedupeApplicantType |
      | Application Match | pl        | dde_indiv_pl | indiv         | Primary Applicant   |

  @ImplementedBy-rishabh.sachan
  #FeatureID-ACAUTOCAS-298
  Scenario Outline: ACAUTOCAS-10363:  In Customer Match once the application is linked after that in GCD the global customer ID will be same for linked applications in Customer with all Lob's in Summary Analysis
    And user creates an dedupe application of "<Loan_Type>" product type as "<ApplicantType>" applicant at "dde" for "" with "" from web service
    And user opens an application of "<Var_Stage>" stage variant from "APPLICATION" grid
    And user reads data from the excel file "personal_information.xlsx" under sheet "identification" and row 116
    And user perform prerequisites for negative checkList
    And user is on kyc check in summary Analysis
    And user Re-initiate Applicant Information with rerun
    When user click on "<Match_Type>" No of Dedupe Match hyperlink of "<DedupeApplicantType>"
    And user link the application id with Done
    Then in GCD the global customer ID will be same for linked applications
    Examples:
      | Match_Type     | Loan_Type | Var_Stage    | ApplicantType | DedupeApplicantType |
      | Customer Match | pl        | dde_indiv_pl | indiv         | Primary Applicant   |
