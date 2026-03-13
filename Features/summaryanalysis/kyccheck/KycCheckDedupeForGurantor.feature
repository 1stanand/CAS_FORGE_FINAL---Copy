@Epic-Loan_Application_Details
@AuthoredBy-harshita.nayak
@ReviewedBy-tushar.chauhan
@TechReviewedBy-harshprit.kumar
@ReviewedByDEV

Feature: Kyc Check Dedupe Details for Guarantor in Summary Analysis

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0


  #Pre-requisites to add negative checklist data is master - Negative Checklist and Negative checklist template.
  @ImplementedBy-aniket.tripathi
    @Release3
  #FeatureID-ACAUTOCAS-6508
  Scenario Outline: ACAUTOCAS-10224: <No of Matches> for Kyc Dedupe Guarantor must be same for Applicant Details with <Loan_Type> Individual in Summary Analysis
    And user opens an application of "<Var_Stage>" stage variant from "APPLICATION" grid
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row <SourcingDetails_home_rowNum>
    And user saves the application number
    And user add Guarantor in that Application
    And user is on kyc check in summary Analysis
    And user Re-initiate Applicant Information with rerun
    When user check the "<No of Matches>" for Kyc Dedupe Guarantor
    Then "<No of Matches>" Kyc Dedupe Guarantor must be same for Applicant Details

    Examples:
      | No of Matches      | Loan_Type     | Var_Stage     | SourcingDetailsWB     | SourcingDetails_home | SourcingDetails_home_rowNum |
      | Application Match  | Home Loan     | dde_indiv_hl  | sourcing_details.xlsx | home                 | 264                         |
      | Customer Match     | Home Loan     | dde_indiv_hl  | sourcing_details.xlsx | home                 | 264                         |
      | Negative Checklist | Home Loan     | dde_indiv_hl  | sourcing_details.xlsx | home                 | 264                         |
      | Application Match  | Personal Loan | dde_indiv_pl  | sourcing_details.xlsx | home                 | 262                         |
      | Customer Match     | Personal Loan | dde_indiv_pl  | sourcing_details.xlsx | home                 | 262                         |
      | Negative Checklist | Personal Loan | dde_indiv_pl  | sourcing_details.xlsx | home                 | 262                         |
      | Application Match  | Auto Loan     | dde_indiv_mal | sourcing_details.xlsx | home                 | 263                         |
      | Customer Match     | Auto Loan     | dde_indiv_mal | sourcing_details.xlsx | home                 | 263                         |
      | Negative Checklist | Auto Loan     | dde_indiv_mal | sourcing_details.xlsx | home                 | 263                         |


  #Pre-requisites to add negative checklist data is master - Negative Checklist and Negative checklist template.
  @ImplementedBy-aryan.jain
    @Release3
  #FeatureID-ACAUTOCAS-6508
  Scenario Outline: ACAUTOCAS-10225: <No of Matches> for Kyc Dedupe Guarantor must be same for Applicant Details with <Loan_Type> Non Individual in Summary Analysis
    And user opens an application of "<Var_Stage>" stage variant from "APPLICATION" grid
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row <SourcingDetails_home_rowNum>
    And user saves the application number
    And user add Guarantor in that Application
    And user is on kyc check in summary Analysis
    And user Re-initiate Applicant Information with rerun
    When user check the "<No of Matches>" for Kyc Dedupe Guarantor
    Then "<No of Matches>" Kyc Dedupe Guarantor must be same for Applicant Details

    Examples:
      | No of Matches      | Loan_Type     | Var_Stage        | SourcingDetailsWB     | SourcingDetails_home | SourcingDetails_home_rowNum |
      | Application Match  | Home Loan     | dde_nonindiv_hl  | sourcing_details.xlsx | home                 | 264                         |
      | Customer Match     | Home Loan     | dde_nonindiv_hl  | sourcing_details.xlsx | home                 | 264                         |
      | Negative Checklist | Home Loan     | dde_nonindiv_hl  | sourcing_details.xlsx | home                 | 264                         |
      | Application Match  | Personal Loan | dde_nonindiv_pl  | sourcing_details.xlsx | home                 | 262                         |
      | Customer Match     | Personal Loan | dde_nonindiv_pl  | sourcing_details.xlsx | home                 | 262                         |
      | Negative Checklist | Personal Loan | dde_nonindiv_pl  | sourcing_details.xlsx | home                 | 262                         |
      | Application Match  | Auto Loan     | dde_nonindiv_mal | sourcing_details.xlsx | home                 | 263                         |
      | Customer Match     | Auto Loan     | dde_nonindiv_mal | sourcing_details.xlsx | home                 | 263                         |
      | Negative Checklist | Auto Loan     | dde_nonindiv_mal | sourcing_details.xlsx | home                 | 263                         |

  @ImplementedBy-aniket.tripathi
    @Release3
    #FeatureID-ACAUTOCAS-6508
  Scenario Outline: ACAUTOCAS-10226: On <Field_Name> No of Dedupe Match hyperlink Dedupe Match Screen displayed for Guarantor with <Loan_Type> Non Individual in Summary Analysis
    And user opens an application of "<Var_Stage>" stage variant from "APPLICATION" grid
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row <SourcingDetails_home_rowNum>
    And user saves the application number
    And user add Guarantor in that Application
    And user is on kyc check in summary Analysis
    And user Re-initiate Applicant Information with rerun
    When user click on "<Field_Name>" No of Dedupe Match hyperlink of "Guarantor"
    Then Dedupe Match Screen should be displayed for Guarantor

    Examples:
      | Field_Name        | Loan_Type     | SourcingDetailsWB     | SourcingDetails_home | SourcingDetails_home_rowNum | Var_Stage        |
      | Application Match | Home Loan     | sourcing_details.xlsx | home                 | 264                         | dde_nonindiv_hl  |
      | Customer Match    | Home Loan     | sourcing_details.xlsx | home                 | 264                         | dde_nonindiv_hl  |
      | Application Match | Personal Loan | sourcing_details.xlsx | home                 | 262                         | dde_nonindiv_pl  |
      | Customer Match    | Personal Loan | sourcing_details.xlsx | home                 | 262                         | dde_nonindiv_pl  |
      | Application Match | Auto Loan     | sourcing_details.xlsx | home                 | 263                         | dde_nonindiv_mal |
      | Customer Match    | Auto Loan     | sourcing_details.xlsx | home                 | 263                         | dde_nonindiv_mal |

  @ImplementedBy-aryan.jain
    @Release3
   #FeatureID-ACAUTOCAS-6508
  Scenario Outline: ACAUTOCAS-10227: On <Field_Name> No of Dedupe Match hyperlink Dedupe Match Screen displayed for Guarantor with <Loan_Type> Individual in Summary Analysis
    And user opens an application of "<Var_Stage>" stage variant from "APPLICATION" grid
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row <SourcingDetails_home_rowNum>
    And user saves the application number
    And user add Guarantor in that Application
    And user is on kyc check in summary Analysis
    And user Re-initiate Applicant Information with rerun
    When user click on "<Field_Name>" No of Dedupe Match hyperlink of "Guarantor"
    Then Dedupe Match Screen should be displayed for Guarantor

    Examples:
      | Field_Name        | Loan_Type     | SourcingDetailsWB     | SourcingDetails_home | SourcingDetails_home_rowNum | Var_Stage     |
      | Application Match | Home Loan     | sourcing_details.xlsx | home                 | 264                         | dde_indiv_hl  |
      | Customer Match    | Home Loan     | sourcing_details.xlsx | home                 | 264                         | dde_indiv_hl  |
      | Application Match | Personal Loan | sourcing_details.xlsx | home                 | 262                         | dde_indiv_pl  |
      | Customer Match    | Personal Loan | sourcing_details.xlsx | home                 | 262                         | dde_indiv_pl  |
      | Application Match | Auto Loan     | sourcing_details.xlsx | home                 | 263                         | dde_indiv_mal |
      | Customer Match    | Auto Loan     | sourcing_details.xlsx | home                 | 263                         | dde_indiv_mal |

     #FeatureID-ACAUTOCAS-6508
  @ImplementedBy-richa.singh
  @Release3
  # ${ ProductType : ["IHF","IPF","PF","MAL","HL","LAP","CV","MHL","FE","EDU","AGRL","JLG","CEQ","MULF","BD","CashCred","BL","LC","BG"]}
  # ${ApplicationStage:["DDE"]}
  Scenario Outline: ACAUTOCAS-10228: On Negative Checklist No of Dedupe Match hyperlink Negative Checklist Matches displayed for Guarantor with <ProductType> in Summary Analysis at <ApplicationStage> stage
    And user creates an dedupe application of "<ProductType>" product type as "indiv" applicant at "<ApplicationStage>" for "" with "Guarantor" from web service
    And user opens an application of "<ProductType>" product type as "indiv" applicant at "<ApplicationStage>" from application grid
    And user opens applicant information page of "<ApplicationStage>"
    And user views and edit applicant details for "indiv" "Guarantor" applicant type
    And user clicks on the identification section
    And user reads data from the excel file "personal_information.xlsx" under sheet "identification" and row 121
    And user fill identification details
    And user click on check for Duplicates
    And user save the details
    And user is on kyc check in summary Analysis
    When user click on "<Match_Type>" No of Dedupe Match hyperlink of "Guarantor"
    Then Negative Checklist Matched Records should be displayed
    Examples:
      | Match_Type         | ProductType   | ApplicationStage   |
      | Negative Checklist | <ProductType> | <ApplicationStage> |

  @ImplementedBy-aniket.tripathi
    @Release3
#FeatureID-ACAUTOCAS-6508
  Scenario Outline: ACAUTOCAS-10229: When Application Match field of Dedupe Match Screen with Expand All hyperlink <Dedupe_Field_Name> should be visible for every application Guarantor with <Loan_Type> Individual in Summary Analysis
    And user opens an application of "<Var_Stage>" stage variant from "APPLICATION" grid
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row <SourcingDetails_home_rowNum>
    And user saves the application number
    And user add Guarantor in that Application
    And user is on kyc check in summary Analysis
    And user Re-initiate Applicant Information with rerun
    And user click on "<Field_Name>" No of Dedupe Match hyperlink of "Guarantor"
    When user Expand All hyperlink in Dedupe Match Screen
    Then "<Dedupe_Field_Name>" should be visible for every application

    Examples:
      | Loan_Type     | Dedupe_Field_Name | SourcingDetailsWB     | SourcingDetails_home | SourcingDetails_home_rowNum | Var_Stage     | Field_Name        |
      | Home Loan     | Current Stage     | sourcing_details.xlsx | home                 | 264                         | dde_indiv_hl  | Application Match |
      | Home Loan     | Group ID          | sourcing_details.xlsx | home                 | 264                         | dde_indiv_hl  | Application Match |
      | Home Loan     | Group Name        | sourcing_details.xlsx | home                 | 264                         | dde_indiv_hl  | Application Match |
      | Home Loan     | Exposure Detail   | sourcing_details.xlsx | home                 | 264                         | dde_indiv_hl  | Application Match |
      | Personal Loan | Current Stage     | sourcing_details.xlsx | home                 | 262                         | dde_indiv_pl  | Application Match |
      | Personal Loan | Group ID          | sourcing_details.xlsx | home                 | 262                         | dde_indiv_pl  | Application Match |
      | Personal Loan | Group Name        | sourcing_details.xlsx | home                 | 262                         | dde_indiv_pl  | Application Match |
      | Personal Loan | Exposure Detail   | sourcing_details.xlsx | home                 | 262                         | dde_indiv_pl  | Application Match |
      | Auto Loan     | Current Stage     | sourcing_details.xlsx | home                 | 263                         | dde_indiv_mal | Application Match |
      | Auto Loan     | Group ID          | sourcing_details.xlsx | home                 | 263                         | dde_indiv_mal | Application Match |
      | Auto Loan     | Group Name        | sourcing_details.xlsx | home                 | 263                         | dde_indiv_mal | Application Match |
      | Auto Loan     | Exposure Detail   | sourcing_details.xlsx | home                 | 263                         | dde_indiv_mal | Application Match |

  @ImplementedBy-aryan.jain
    @Release3
     #FeatureID-ACAUTOCAS-6508
  Scenario Outline: ACAUTOCAS-10230: When Customer Match field of Dedupe Match Screen with Expand All hyperlink <Dedupe_Field_Name> should be visible for every application Guarantor with <Loan_Type> Individual in Summary Analysis
    And user opens an application of "<Var_Stage>" stage variant from "APPLICATION" grid
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row <SourcingDetails_home_rowNum>
    And user saves the application number
    And user add Guarantor in that Application
    And user is on kyc check in summary Analysis
    And user Re-initiate Applicant Information with rerun
    And user click on "<Field_Name>" No of Dedupe Match hyperlink of "Guarantor"
    When user Expand All hyperlink in Dedupe Match Screen
    Then "<Dedupe_Field_Name>" should be visible for every application

    Examples:
      | Loan_Type     | Dedupe_Field_Name | SourcingDetailsWB     | SourcingDetails_home | SourcingDetails_home_rowNum | Var_Stage     | Field_Name     |
      | Home Loan     | Current Stage     | sourcing_details.xlsx | home                 | 264                         | dde_indiv_hl  | Customer Match |
      | Home Loan     | Group ID          | sourcing_details.xlsx | home                 | 264                         | dde_indiv_hl  | Customer Match |
      | Home Loan     | Group Name        | sourcing_details.xlsx | home                 | 264                         | dde_indiv_hl  | Customer Match |
      | Home Loan     | Exposure Detail   | sourcing_details.xlsx | home                 | 264                         | dde_indiv_hl  | Customer Match |
      | Personal Loan | Current Stage     | sourcing_details.xlsx | home                 | 262                         | dde_indiv_pl  | Customer Match |
      | Personal Loan | Group ID          | sourcing_details.xlsx | home                 | 262                         | dde_indiv_pl  | Customer Match |
      | Personal Loan | Group Name        | sourcing_details.xlsx | home                 | 262                         | dde_indiv_pl  | Customer Match |
      | Personal Loan | Exposure Detail   | sourcing_details.xlsx | home                 | 262                         | dde_indiv_pl  | Customer Match |
      | Auto Loan     | Current Stage     | sourcing_details.xlsx | home                 | 263                         | dde_indiv_mal | Customer Match |
      | Auto Loan     | Group ID          | sourcing_details.xlsx | home                 | 263                         | dde_indiv_mal | Customer Match |
      | Auto Loan     | Group Name        | sourcing_details.xlsx | home                 | 263                         | dde_indiv_mal | Customer Match |
      | Auto Loan     | Exposure Detail   | sourcing_details.xlsx | home                 | 263                         | dde_indiv_mal | Customer Match |

  @ImplementedBy-aniket.tripathi
    @Release3
    #FeatureID-ACAUTOCAS-6508
  Scenario Outline: ACAUTOCAS-10231: When Customer Match field of Dedupe Match Screen with Application Id plus icon <Dedupe_Field_Name> should be visible  Guarantor with <Loan_Type> Individual in Summary Analysis
    And user opens an application of "<Var_Stage>" stage variant from "APPLICATION" grid
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row <SourcingDetails_home_rowNum>
    And user saves the application number
    And user add Guarantor in that Application
    And user is on kyc check in summary Analysis
    And user Re-initiate Applicant Information with rerun
    And user click on "<Field_Name>" No of Dedupe Match hyperlink of "Guarantor"
    When user click Application Id plus icon in Dedupe Match Screen
    Then "<Dedupe_Field_Name>" should be visible in Dedupe Match Screen

    Examples:
      | Loan_Type     | Dedupe_Field_Name | SourcingDetailsWB     | SourcingDetails_home | SourcingDetails_home_rowNum | Var_Stage     | Field_Name     |
      | Home Loan     | Current Stage     | sourcing_details.xlsx | home                 | 264                         | dde_indiv_hl  | Customer Match |
      | Home Loan     | Group ID          | sourcing_details.xlsx | home                 | 264                         | dde_indiv_hl  | Customer Match |
      | Home Loan     | Group Name        | sourcing_details.xlsx | home                 | 264                         | dde_indiv_hl  | Customer Match |
      | Home Loan     | Exposure Detail   | sourcing_details.xlsx | home                 | 264                         | dde_indiv_hl  | Customer Match |
      | Personal Loan | Current Stage     | sourcing_details.xlsx | home                 | 262                         | dde_indiv_pl  | Customer Match |
      | Personal Loan | Group ID          | sourcing_details.xlsx | home                 | 262                         | dde_indiv_pl  | Customer Match |
      | Personal Loan | Group Name        | sourcing_details.xlsx | home                 | 262                         | dde_indiv_pl  | Customer Match |
      | Personal Loan | Exposure Detail   | sourcing_details.xlsx | home                 | 262                         | dde_indiv_pl  | Customer Match |
      | Auto Loan     | Current Stage     | sourcing_details.xlsx | home                 | 263                         | dde_indiv_mal | Customer Match |
      | Auto Loan     | Group ID          | sourcing_details.xlsx | home                 | 263                         | dde_indiv_mal | Customer Match |
      | Auto Loan     | Group Name        | sourcing_details.xlsx | home                 | 263                         | dde_indiv_mal | Customer Match |
      | Auto Loan     | Exposure Detail   | sourcing_details.xlsx | home                 | 263                         | dde_indiv_mal | Customer Match |

  @ImplementedBy-aryan.jain
    @Release3
     #FeatureID-ACAUTOCAS-6508
  Scenario Outline: ACAUTOCAS-10232: When Application Match field of Dedupe Match Screen with Application Id plus icon <Dedupe_Field_Name> should be visible  Guarantor with <Loan_Type> Individual in Summary Analysis
    And user opens an application of "<Var_Stage>" stage variant from "APPLICATION" grid
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row <SourcingDetails_home_rowNum>
    And user saves the application number
    And user add Guarantor in that Application
    And user is on kyc check in summary Analysis
    And user Re-initiate Applicant Information with rerun
    And user click on "<Field_Name>" No of Dedupe Match hyperlink of "Guarantor"
    When user click Application Id plus icon in Dedupe Match Screen
    Then "<Dedupe_Field_Name>" should be visible in Dedupe Match Screen

    Examples:
      | Loan_Type     | Dedupe_Field_Name | SourcingDetailsWB     | SourcingDetails_home | SourcingDetails_home_rowNum | Var_Stage     | Field_Name        |
      | Home Loan     | Current Stage     | sourcing_details.xlsx | home                 | 264                         | dde_indiv_hl  | Application Match |
      | Home Loan     | Group ID          | sourcing_details.xlsx | home                 | 264                         | dde_indiv_hl  | Application Match |
      | Home Loan     | Group Name        | sourcing_details.xlsx | home                 | 264                         | dde_indiv_hl  | Application Match |
      | Home Loan     | Exposure Detail   | sourcing_details.xlsx | home                 | 264                         | dde_indiv_hl  | Application Match |
      | Personal Loan | Current Stage     | sourcing_details.xlsx | home                 | 262                         | dde_indiv_pl  | Application Match |
      | Personal Loan | Group ID          | sourcing_details.xlsx | home                 | 262                         | dde_indiv_pl  | Application Match |
      | Personal Loan | Group Name        | sourcing_details.xlsx | home                 | 262                         | dde_indiv_pl  | Application Match |
      | Personal Loan | Exposure Detail   | sourcing_details.xlsx | home                 | 262                         | dde_indiv_pl  | Application Match |
      | Auto Loan     | Current Stage     | sourcing_details.xlsx | home                 | 263                         | dde_indiv_mal | Application Match |
      | Auto Loan     | Group ID          | sourcing_details.xlsx | home                 | 263                         | dde_indiv_mal | Application Match |
      | Auto Loan     | Group Name        | sourcing_details.xlsx | home                 | 263                         | dde_indiv_mal | Application Match |
      | Auto Loan     | Exposure Detail   | sourcing_details.xlsx | home                 | 263                         | dde_indiv_mal | Application Match |

  @ImplementedBy-aniket.tripathi
    @Release3
    #FeatureID-ACAUTOCAS-6508
  Scenario Outline: ACAUTOCAS-10233: When <Field_Name> Dedupe Match Screen open Application Id hyperlink <Screen> must be displayed for  Guarantor with <Loan_Type> Individual in Summary Analysis
    And user opens an application of "<Var_Stage>" stage variant from "APPLICATION" grid
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row <SourcingDetails_home_rowNum>
    And user saves the application number
    And user add Guarantor in that Application
    And user is on kyc check in summary Analysis
    And user Re-initiate Applicant Information with rerun
    And user click on "<Field_Name>" No of Dedupe Match hyperlink of "Guarantor"
    When user on Dedupe Match Screen open Application Id hyperlink
    Then KYC Internal Dedupe Matched Application Details must be displayed

    Examples:
      | Field_Name        | Screen                                          | Loan_Type     | SourcingDetailsWB     | SourcingDetails_home | SourcingDetails_home_rowNum | Field_Name        | Var_Stage     |
      | Application Match | KYC Internal Dedupe Matched Application Details | Home Loan     | sourcing_details.xlsx | home                 | 264                         | Application Match | dde_indiv_hl  |
      | Customer Match    | KYC Internal Dedupe Matched Application Details | Home Loan     | sourcing_details.xlsx | home                 | 264                         | Application Match | dde_indiv_hl  |
      | Application Match | KYC Internal Dedupe Matched Application Details | Personal Loan | sourcing_details.xlsx | home                 | 262                         | Application Match | dde_indiv_pl  |
      | Customer Match    | KYC Internal Dedupe Matched Application Details | Personal Loan | sourcing_details.xlsx | home                 | 262                         | Application Match | dde_indiv_pl  |
      | Application Match | KYC Internal Dedupe Matched Application Details | Auto Loan     | sourcing_details.xlsx | home                 | 263                         | Application Match | dde_indiv_mal |
      | Customer Match    | KYC Internal Dedupe Matched Application Details | Auto Loan     | sourcing_details.xlsx | home                 | 263                         | Application Match | dde_indiv_mal |

  @ImplementedBy-aryan.jain
    @Release3
    #FeatureID-ACAUTOCAS-6508
  Scenario Outline: ACAUTOCAS-10234: When <Field_Name> Dedupe Match Screen open Application Id hyperlink <Screen> must be displayed for  Guarantor with <Loan_Type> Non Individual in Summary Analysis
    And user opens an application of "<Var_Stage>" stage variant from "APPLICATION" grid
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row <SourcingDetails_home_rowNum>
    And user saves the application number
    And user add Guarantor in that Application
    And user is on kyc check in summary Analysis
    And user Re-initiate Applicant Information with rerun
    And user click on "<Field_Name>" No of Dedupe Match hyperlink of "Guarantor"
    When user on Dedupe Match Screen open Application Id hyperlink
    Then KYC Internal Dedupe Matched Application Details must be displayed

    Examples:
      | Field_Name        | Screen                                          | Loan_Type     | SourcingDetailsWB     | SourcingDetails_home | SourcingDetails_home_rowNum | Field_Name        | Var_Stage        |
      | Application Match | KYC Internal Dedupe Matched Application Details | Home Loan     | sourcing_details.xlsx | home                 | 264                         | Application Match | dde_nonindiv_hl  |
      | Customer Match    | KYC Internal Dedupe Matched Application Details | Home Loan     | sourcing_details.xlsx | home                 | 264                         | Application Match | dde_nonindiv_hl  |
      | Application Match | KYC Internal Dedupe Matched Application Details | Personal Loan | sourcing_details.xlsx | home                 | 262                         | Application Match | dde_nonindiv_pl  |
      | Customer Match    | KYC Internal Dedupe Matched Application Details | Personal Loan | sourcing_details.xlsx | home                 | 262                         | Application Match | dde_nonindiv_pl  |
      | Application Match | KYC Internal Dedupe Matched Application Details | Auto Loan     | sourcing_details.xlsx | home                 | 263                         | Application Match | dde_nonindiv_mal |
      | Customer Match    | KYC Internal Dedupe Matched Application Details | Auto Loan     | sourcing_details.xlsx | home                 | 263                         | Application Match | dde_nonindiv_mal |

  @ImplementedBy-aniket.tripathi
    @Release3
    #FeatureID-ACAUTOCAS-6508
  Scenario Outline: ACAUTOCAS-10235: When Application Match field of Dedupe Match Screen with <Action> should work properly for  Guarantor with <Loan_Type> Individual in Summary Analysis
    And user opens an application of "<Var_Stage>" stage variant from "APPLICATION" grid
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row <SourcingDetails_home_rowNum>
    And user saves the application number
    And user add Guarantor in that Application
    And user is on kyc check in summary Analysis
    And user Re-initiate Applicant Information with rerun
    And user click on "<Field_Name>" No of Dedupe Match hyperlink of "Guarantor"
    When user take "<Action>" in Dedupe Match Screen
    Then "<Action>" should work properly on Dedupe Match Screen

    Examples:
      | Loan_Type     | Action       | SourcingDetailsWB     | SourcingDetails_home | SourcingDetails_home_rowNum | Field_Name        | Var_Stage     |
      | Home Loan     | Maximize     | sourcing_details.xlsx | home                 | 264                         | Application Match | dde_indiv_hl  |
      | Home Loan     | Minimize     | sourcing_details.xlsx | home                 | 264                         | Application Match | dde_indiv_hl  |
      | Home Loan     | Cross        | sourcing_details.xlsx | home                 | 264                         | Application Match | dde_indiv_hl  |
      | Home Loan     | Cancel       | sourcing_details.xlsx | home                 | 264                         | Application Match | dde_indiv_hl  |
      | Home Loan     | Done         | sourcing_details.xlsx | home                 | 264                         | Application Match | dde_indiv_hl  |
      | Personal Loan | Maximize     | sourcing_details.xlsx | home                 | 262                         | Application Match | dde_indiv_pl  |
      | Personal Loan | Minimize     | sourcing_details.xlsx | home                 | 262                         | Application Match | dde_indiv_pl  |
      | Personal Loan | Cross        | sourcing_details.xlsx | home                 | 262                         | Application Match | dde_indiv_pl  |
      | Personal Loan | Cancel       | sourcing_details.xlsx | home                 | 262                         | Application Match | dde_indiv_pl  |
      | Personal Loan | Done         | sourcing_details.xlsx | home                 | 262                         | Application Match | dde_indiv_pl  |
      | Auto Loan     | Maximize     | sourcing_details.xlsx | home                 | 263                         | Application Match | dde_indiv_mal |
      | Auto Loan     | Minimize     | sourcing_details.xlsx | home                 | 263                         | Application Match | dde_indiv_mal |
      | Auto Loan     | Cross        | sourcing_details.xlsx | home                 | 263                         | Application Match | dde_indiv_mal |
      | Auto Loan     | Cancel       | sourcing_details.xlsx | home                 | 263                         | Application Match | dde_indiv_mal |
      | Auto Loan     | Done         | sourcing_details.xlsx | home                 | 263                         | Application Match | dde_indiv_mal |
      | Auto Loan     | Expand All   | sourcing_details.xlsx | home                 | 263                         | Application Match | dde_indiv_mal |
      | Home Loan     | Expand All   | sourcing_details.xlsx | home                 | 264                         | Application Match | dde_indiv_hl  |
      | Personal Loan | Expand All   | sourcing_details.xlsx | home                 | 262                         | Application Match | dde_indiv_pl  |
      | Auto Loan     | Collapse All | sourcing_details.xlsx | home                 | 263                         | Application Match | dde_indiv_mal |
      | Home Loan     | Collapse All | sourcing_details.xlsx | home                 | 264                         | Application Match | dde_indiv_hl  |
      | Personal Loan | Collapse All | sourcing_details.xlsx | home                 | 262                         | Application Match | dde_indiv_pl  |

  @ImplementedBy-aryan.jain
    @Release3
    #FeatureID-ACAUTOCAS-6508
  Scenario Outline: ACAUTOCAS-10236: When Customer Match field of Dedupe Match Screen with <Action> should work properly for  Guarantor with <Loan_Type> Individual in Summary Analysis
    And user opens an application of "<Var_Stage>" stage variant from "APPLICATION" grid
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row <SourcingDetails_home_rowNum>
    And user saves the application number
    And user add Guarantor in that Application
    And user is on kyc check in summary Analysis
    And user Re-initiate Applicant Information with rerun
    And user click on "<Field_Name>" No of Dedupe Match hyperlink of "Guarantor"
    When user take "<Action>" in Dedupe Match Screen
    Then "<Action>" should work properly on Dedupe Match Screen

    Examples:
      | Loan_Type     | Action       | SourcingDetailsWB     | SourcingDetails_home | SourcingDetails_home_rowNum | Field_Name      | Var_Stage     |
      | Home Loan     | Maximize     | sourcing_details.xlsx | home                 | 264                         | Customer  Match | dde_indiv_hl  |
      | Home Loan     | Minimize     | sourcing_details.xlsx | home                 | 264                         | Customer Match  | dde_indiv_hl  |
      | Home Loan     | Cross        | sourcing_details.xlsx | home                 | 264                         | Customer Match  | dde_indiv_hl  |
      | Home Loan     | Cancel       | sourcing_details.xlsx | home                 | 264                         | Customer Match  | dde_indiv_hl  |
      | Home Loan     | Done         | sourcing_details.xlsx | home                 | 264                         | Customer Match  | dde_indiv_hl  |
      | Personal Loan | Maximize     | sourcing_details.xlsx | home                 | 262                         | Customer Match  | dde_indiv_pl  |
      | Personal Loan | Minimize     | sourcing_details.xlsx | home                 | 262                         | Customer Match  | dde_indiv_pl  |
      | Personal Loan | Cross        | sourcing_details.xlsx | home                 | 262                         | Customer Match  | dde_indiv_pl  |
      | Personal Loan | Cancel       | sourcing_details.xlsx | home                 | 262                         | Customer Match  | dde_indiv_pl  |
      | Personal Loan | Done         | sourcing_details.xlsx | home                 | 262                         | Customer Match  | dde_indiv_pl  |
      | Auto Loan     | Maximize     | sourcing_details.xlsx | home                 | 263                         | Customer Match  | dde_indiv_mal |
      | Auto Loan     | Minimize     | sourcing_details.xlsx | home                 | 263                         | Customer Match  | dde_indiv_mal |
      | Auto Loan     | Cross        | sourcing_details.xlsx | home                 | 263                         | Customer Match  | dde_indiv_mal |
      | Auto Loan     | Cancel       | sourcing_details.xlsx | home                 | 263                         | Customer Match  | dde_indiv_mal |
      | Auto Loan     | Done         | sourcing_details.xlsx | home                 | 263                         | Customer Match  | dde_indiv_mal |
      | Auto Loan     | Expand All   | sourcing_details.xlsx | home                 | 263                         | Customer Match  | dde_indiv_mal |
      | Home Loan     | Expand All   | sourcing_details.xlsx | home                 | 264                         | Customer Match  | dde_indiv_hl  |
      | Personal Loan | Expand All   | sourcing_details.xlsx | home                 | 262                         | Customer Match  | dde_indiv_pl  |
      | Auto Loan     | Collapse All | sourcing_details.xlsx | home                 | 263                         | Customer Match  | dde_indiv_mal |
      | Home Loan     | Collapse All | sourcing_details.xlsx | home                 | 264                         | Customer Match  | dde_indiv_hl  |
      | Personal Loan | Collapse All | sourcing_details.xlsx | home                 | 262                         | Customer Match  | dde_indiv_pl  |

  @ImplementedBy-aniket.tripathi
    @Release3
    #FeatureID-ACAUTOCAS-6508
  Scenario Outline: ACAUTOCAS-10237: When Application Match field of Dedupe Match Screen with <Action> should work properly for  Guarantor with <Loan_Type> Non Individual in Summary Analysis
    And user opens an application of "<Var_Stage>" stage variant from "APPLICATION" grid
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row <SourcingDetails_home_rowNum>
    And user saves the application number
    And user add Guarantor in that Application
    And user is on kyc check in summary Analysis
    And user Re-initiate Applicant Information with rerun
    And user click on "<Field_Name>" No of Dedupe Match hyperlink of "Guarantor"
    When user take "<Action>" in Dedupe Match Screen
    Then "<Action>" should work properly on Dedupe Match Screen

    Examples:
      | Loan_Type     | Action       | SourcingDetailsWB     | SourcingDetails_home | SourcingDetails_home_rowNum | Field_Name        | Var_Stage        |
      | Home Loan     | Maximize     | sourcing_details.xlsx | home                 | 264                         | Application Match | dde_nonindiv_hl  |
      | Home Loan     | Minimize     | sourcing_details.xlsx | home                 | 264                         | Application Match | dde_nonindiv_hl  |
      | Home Loan     | Cross        | sourcing_details.xlsx | home                 | 264                         | Application Match | dde_nonindiv_hl  |
      | Home Loan     | Cancel       | sourcing_details.xlsx | home                 | 264                         | Application Match | dde_nonindiv_hl  |
      | Home Loan     | Done         | sourcing_details.xlsx | home                 | 264                         | Application Match | dde_nonindiv_hl  |
      | Personal Loan | Maximize     | sourcing_details.xlsx | home                 | 262                         | Application Match | dde_nonindiv_pl  |
      | Personal Loan | Minimize     | sourcing_details.xlsx | home                 | 262                         | Application Match | dde_nonindiv_pl  |
      | Personal Loan | Cross        | sourcing_details.xlsx | home                 | 262                         | Application Match | dde_nonindiv_pl  |
      | Personal Loan | Cancel       | sourcing_details.xlsx | home                 | 262                         | Application Match | dde_nonindiv_pl  |
      | Personal Loan | Done         | sourcing_details.xlsx | home                 | 262                         | Application Match | dde_nonindiv_pl  |
      | Auto Loan     | Maximize     | sourcing_details.xlsx | home                 | 263                         | Application Match | dde_nonindiv_mal |
      | Auto Loan     | Minimize     | sourcing_details.xlsx | home                 | 263                         | Application Match | dde_nonindiv_mal |
      | Auto Loan     | Cross        | sourcing_details.xlsx | home                 | 263                         | Application Match | dde_nonindiv_mal |
      | Auto Loan     | Cancel       | sourcing_details.xlsx | home                 | 263                         | Application Match | dde_nonindiv_mal |
      | Auto Loan     | Done         | sourcing_details.xlsx | home                 | 263                         | Application Match | dde_nonindiv_mal |
      | Auto Loan     | Expand All   | sourcing_details.xlsx | home                 | 263                         | Application Match | dde_nonindiv_mal |
      | Home Loan     | Expand All   | sourcing_details.xlsx | home                 | 264                         | Application Match | dde_nonindiv_hl  |
      | Personal Loan | Expand All   | sourcing_details.xlsx | home                 | 262                         | Application Match | dde_nonindiv_pl  |
      | Auto Loan     | Collapse All | sourcing_details.xlsx | home                 | 263                         | Application Match | dde_nonindiv_mal |
      | Home Loan     | Collapse All | sourcing_details.xlsx | home                 | 264                         | Application Match | dde_nonindiv_hl  |
      | Personal Loan | Collapse All | sourcing_details.xlsx | home                 | 262                         | Application Match | dde_nonindiv_pl  |

  @ImplementedBy-aryan.jain
    @Release3
    #FeatureID-ACAUTOCAS-6508
  Scenario Outline: ACAUTOCAS-10238: When Customer Match field of Dedupe Match Screen with <Action> should work properly for Guarantor with <Loan_Type> Non Individual in Summary Analysis
    And user opens an application of "<Var_Stage>" stage variant from "APPLICATION" grid
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row <SourcingDetails_home_rowNum>
    And user saves the application number
    And user add Guarantor in that Application
    And user is on kyc check in summary Analysis
    And user Re-initiate Applicant Information with rerun
    And user click on "<Field_Name>" No of Dedupe Match hyperlink of "Guarantor"
    When user take "<Action>" in Dedupe Match Screen
    Then "<Action>" should work properly on Dedupe Match Screen

    Examples:
      | Loan_Type     | Action       | SourcingDetailsWB     | SourcingDetails_home | SourcingDetails_home_rowNum | Field_Name     | Var_Stage        |
      | Home Loan     | Maximize     | sourcing_details.xlsx | home                 | 264                         | Customer Match | dde_nonindiv_hl  |
      | Home Loan     | Minimize     | sourcing_details.xlsx | home                 | 264                         | Customer Match | dde_nonindiv_hl  |
      | Home Loan     | Cross        | sourcing_details.xlsx | home                 | 264                         | Customer Match | dde_nonindiv_hl  |
      | Home Loan     | Cancel       | sourcing_details.xlsx | home                 | 264                         | Customer Match | dde_nonindiv_hl  |
      | Home Loan     | Done         | sourcing_details.xlsx | home                 | 264                         | Customer Match | dde_nonindiv_hl  |
      | Personal Loan | Maximize     | sourcing_details.xlsx | home                 | 262                         | Customer Match | dde_nonindiv_pl  |
      | Personal Loan | Minimize     | sourcing_details.xlsx | home                 | 262                         | Customer Match | dde_nonindiv_pl  |
      | Personal Loan | Cross        | sourcing_details.xlsx | home                 | 262                         | Customer Match | dde_nonindiv_pl  |
      | Personal Loan | Cancel       | sourcing_details.xlsx | home                 | 262                         | Customer Match | dde_nonindiv_pl  |
      | Personal Loan | Done         | sourcing_details.xlsx | home                 | 262                         | Customer Match | dde_nonindiv_pl  |
      | Auto Loan     | Maximize     | sourcing_details.xlsx | home                 | 263                         | Customer Match | dde_nonindiv_mal |
      | Auto Loan     | Minimize     | sourcing_details.xlsx | home                 | 263                         | Customer Match | dde_nonindiv_mal |
      | Auto Loan     | Cross        | sourcing_details.xlsx | home                 | 263                         | Customer Match | dde_nonindiv_mal |
      | Auto Loan     | Cancel       | sourcing_details.xlsx | home                 | 263                         | Customer Match | dde_nonindiv_mal |
      | Auto Loan     | Done         | sourcing_details.xlsx | home                 | 263                         | Customer Match | dde_nonindiv_mal |
      | Auto Loan     | Expand All   | sourcing_details.xlsx | home                 | 263                         | Customer Match | dde_nonindiv_mal |
      | Home Loan     | Expand All   | sourcing_details.xlsx | home                 | 264                         | Customer Match | dde_nonindiv_hl  |
      | Personal Loan | Expand All   | sourcing_details.xlsx | home                 | 262                         | Customer Match | dde_nonindiv_pl  |
      | Auto Loan     | Collapse All | sourcing_details.xlsx | home                 | 263                         | Customer Match | dde_nonindiv_mal |
      | Home Loan     | Collapse All | sourcing_details.xlsx | home                 | 264                         | Customer Match | dde_nonindiv_hl  |
      | Personal Loan | Collapse All | sourcing_details.xlsx | home                 | 262                         | Customer Match | dde_nonindiv_pl  |

  @ImplementedBy-aniket.tripathi
    @Release3
    #FeatureID-ACAUTOCAS-6508
  Scenario Outline: ACAUTOCAS-10239: Validating the <Field_Name> present in KYC Internal Dedupe Matched Application Details of Application Match for Guarantor with <Loan_Type> Individual in Summary Analysis
    And user opens an application of "<Var_Stage>" stage variant from "APPLICATION" grid
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row <SourcingDetails_home_rowNum>
    And user saves the application number
    And user add Guarantor in that Application
    And user is on kyc check in summary Analysis
    And user Re-initiate Applicant Information with rerun
    And user click on "<Match_Type>" No of Dedupe Match hyperlink of "Guarantor"
    When user click Application Id hyperlink in Dedupe Match Screen
    Then "<Field_Name>" present in KYC Internal Dedupe Matched Application Details

    Examples:
      | Loan_Type     | Field_Name                 | SourcingDetailsWB     | SourcingDetails_home | SourcingDetails_home_rowNum | Match_Type        | Var_Stage     |
      | Home Loan     | Matched Application ID     | sourcing_details.xlsx | home                 | 264                         | Application Match | dde_indiv_hl  |
      | Home Loan     | Stage of application       | sourcing_details.xlsx | home                 | 264                         | Application Match | dde_indiv_hl  |
      | Home Loan     | Application Status         | sourcing_details.xlsx | home                 | 264                         | Application Match | dde_indiv_hl  |
      | Home Loan     | Sourcing branch            | sourcing_details.xlsx | home                 | 264                         | Application Match | dde_indiv_hl  |
      | Home Loan     | Application present in CAS | sourcing_details.xlsx | home                 | 264                         | Application Match | dde_indiv_hl  |
      | Personal Loan | Matched Application ID     | sourcing_details.xlsx | home                 | 262                         | Application Match | dde_indiv_pl  |
      | Personal Loan | Stage of application       | sourcing_details.xlsx | home                 | 262                         | Application Match | dde_indiv_pl  |
      | Personal Loan | Application Status         | sourcing_details.xlsx | home                 | 262                         | Application Match | dde_indiv_pl  |
      | Personal Loan | Sourcing branch            | sourcing_details.xlsx | home                 | 262                         | Application Match | dde_indiv_pl  |
      | Personal Loan | Application present in CAS | sourcing_details.xlsx | home                 | 262                         | Application Match | dde_indiv_pl  |
      | Auto Loan     | Matched Application ID     | sourcing_details.xlsx | home                 | 263                         | Application Match | dde_indiv_mal |
      | Auto Loan     | Stage of application       | sourcing_details.xlsx | home                 | 263                         | Application Match | dde_indiv_mal |
      | Auto Loan     | Application Status         | sourcing_details.xlsx | home                 | 263                         | Application Match | dde_indiv_mal |
      | Auto Loan     | Sourcing branch            | sourcing_details.xlsx | home                 | 263                         | Application Match | dde_indiv_mal |
      | Auto Loan     | Application present in CAS | sourcing_details.xlsx | home                 | 263                         | Application Match | dde_indiv_mal |

  @ImplementedBy-aryan.jain
    @Release3
    #FeatureID-ACAUTOCAS-6508
  Scenario Outline: ACAUTOCAS-10240: Validating the <Field_Name> present in KYC Internal Dedupe Matched Application Details of Customer Match for Guarantor with <Loan_Type> Individual in Summary Analysis
    And user opens an application of "<Var_Stage>" stage variant from "APPLICATION" grid
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row <SourcingDetails_home_rowNum>
    And user saves the application number
    And user add Guarantor in that Application
    And user is on kyc check in summary Analysis
    And user Re-initiate Applicant Information with rerun
    And user click on "<Match_Type>" No of Dedupe Match hyperlink of "Guarantor"
    When user click Application Id hyperlink in Dedupe Match Screen
    Then "<Field_Name>" present in KYC Internal Dedupe Matched Application Details

    Examples:
      | Loan_Type     | Field_Name                 | SourcingDetailsWB     | SourcingDetails_home | SourcingDetails_home_rowNum | Match_Type      | Var_Stage     |
      | Home Loan     | Matched Application ID     | sourcing_details.xlsx | home                 | 264                         | Customer  Match | dde_indiv_hl  |
      | Home Loan     | Stage of application       | sourcing_details.xlsx | home                 | 264                         | Customer Match  | dde_indiv_hl  |
      | Home Loan     | Application Status         | sourcing_details.xlsx | home                 | 264                         | Customer Match  | dde_indiv_hl  |
      | Home Loan     | Sourcing branch            | sourcing_details.xlsx | home                 | 264                         | Customer Match  | dde_indiv_hl  |
      | Home Loan     | Application present in CAS | sourcing_details.xlsx | home                 | 264                         | Customer Match  | dde_indiv_hl  |
      | Personal Loan | Matched Application ID     | sourcing_details.xlsx | home                 | 262                         | Customer Match  | dde_indiv_pl  |
      | Personal Loan | Stage of application       | sourcing_details.xlsx | home                 | 262                         | Customer Match  | dde_indiv_pl  |
      | Personal Loan | Application Status         | sourcing_details.xlsx | home                 | 262                         | Customer Match  | dde_indiv_pl  |
      | Personal Loan | Sourcing branch            | sourcing_details.xlsx | home                 | 262                         | Customer Match  | dde_indiv_pl  |
      | Personal Loan | Application present in CAS | sourcing_details.xlsx | home                 | 262                         | Customer Match  | dde_indiv_pl  |
      | Auto Loan     | Matched Application ID     | sourcing_details.xlsx | home                 | 263                         | Customer Match  | dde_indiv_mal |
      | Auto Loan     | Stage of application       | sourcing_details.xlsx | home                 | 263                         | Customer Match  | dde_indiv_mal |
      | Auto Loan     | Application Status         | sourcing_details.xlsx | home                 | 263                         | Customer Match  | dde_indiv_mal |
      | Auto Loan     | Sourcing branch            | sourcing_details.xlsx | home                 | 263                         | Customer Match  | dde_indiv_mal |
      | Auto Loan     | Application present in CAS | sourcing_details.xlsx | home                 | 263                         | Customer Match  | dde_indiv_mal |

  @ImplementedBy-aniket.tripathi
    @Release3
  #FeatureID-ACAUTOCAS-6508
  Scenario Outline: ACAUTOCAS-10241: Validating the <Field_Name> present in KYC Internal Dedupe Matched Application Details of Application Match for  Guarantor with <Loan_Type> Non Individual in Summary Analysis
    And user opens an application of "<Var_Stage>" stage variant from "APPLICATION" grid
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row <SourcingDetails_home_rowNum>
    And user saves the application number
    And user add Guarantor in that Application
    And user is on kyc check in summary Analysis
    And user Re-initiate Applicant Information with rerun
    And user click on "<Match_Type>" No of Dedupe Match hyperlink of "Guarantor"
    When user click Application Id hyperlink in Dedupe Match Screen
    Then "<Field_Name>" present in KYC Internal Dedupe Matched Application Details

    Examples:
      | Loan_Type     | Field_Name                 | SourcingDetailsWB     | SourcingDetails_home | SourcingDetails_home_rowNum | Match_Type        | Var_Stage        |
      | Home Loan     | Matched Application ID     | sourcing_details.xlsx | home                 | 264                         | Application Match | dde_nonindiv_hl  |
      | Home Loan     | Stage of application       | sourcing_details.xlsx | home                 | 264                         | Application Match | dde_nonindiv_hl  |
      | Home Loan     | Application Status         | sourcing_details.xlsx | home                 | 264                         | Application Match | dde_nonindiv_hl  |
      | Home Loan     | Sourcing branch            | sourcing_details.xlsx | home                 | 264                         | Application Match | dde_nonindiv_hl  |
      | Home Loan     | Application present in CAS | sourcing_details.xlsx | home                 | 264                         | Application Match | dde_nonindiv_hl  |
      | Personal Loan | Matched Application ID     | sourcing_details.xlsx | home                 | 262                         | Application Match | dde_nonindiv_pl  |
      | Personal Loan | Stage of application       | sourcing_details.xlsx | home                 | 262                         | Application Match | dde_nonindiv_pl  |
      | Personal Loan | Application Status         | sourcing_details.xlsx | home                 | 262                         | Application Match | dde_nonindiv_pl  |
      | Personal Loan | Sourcing branch            | sourcing_details.xlsx | home                 | 262                         | Application Match | dde_nonindiv_pl  |
      | Personal Loan | Application present in CAS | sourcing_details.xlsx | home                 | 262                         | Application Match | dde_nonindiv_pl  |
      | Auto Loan     | Matched Application ID     | sourcing_details.xlsx | home                 | 263                         | Application Match | dde_nonindiv_mal |
      | Auto Loan     | Stage of application       | sourcing_details.xlsx | home                 | 263                         | Application Match | dde_nonindiv_mal |
      | Auto Loan     | Application Status         | sourcing_details.xlsx | home                 | 263                         | Application Match | dde_nonindiv_mal |
      | Auto Loan     | Sourcing branch            | sourcing_details.xlsx | home                 | 263                         | Application Match | dde_nonindiv_mal |
      | Auto Loan     | Application present in CAS | sourcing_details.xlsx | home                 | 263                         | Application Match | dde_nonindiv_mal |

  @ImplementedBy-aryan.jain
    @Release3
    #FeatureID-ACAUTOCAS-6508
  Scenario Outline: ACAUTOCAS-10242: Validating the <Field_Name> present in KYC Internal Dedupe Matched Application Details of Customer Match for  Guarantor with <Loan_Type> Non Individual in Summary Analysis
    And user opens an application of "<Var_Stage>" stage variant from "APPLICATION" grid
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row <SourcingDetails_home_rowNum>
    And user saves the application number
    And user add Guarantor in that Application
    And user is on kyc check in summary Analysis
    And user Re-initiate Applicant Information with rerun
    And user click on "<Match_Type>" No of Dedupe Match hyperlink of "Guarantor"
    When user click Application Id hyperlink in Dedupe Match Screen
    Then "<Field_Name>" present in KYC Internal Dedupe Matched Application Details

    Examples:
      | Loan_Type     | Field_Name                 | SourcingDetailsWB     | SourcingDetails_home | SourcingDetails_home_rowNum | Match_Type      | Var_Stage        |
      | Home Loan     | Matched Application ID     | sourcing_details.xlsx | home                 | 264                         | Customer  Match | dde_nonindiv_hl  |
      | Home Loan     | Stage of application       | sourcing_details.xlsx | home                 | 264                         | Customer Match  | dde_nonindiv_hl  |
      | Home Loan     | Application Status         | sourcing_details.xlsx | home                 | 264                         | Customer Match  | dde_nonindiv_hl  |
      | Home Loan     | Sourcing branch            | sourcing_details.xlsx | home                 | 264                         | Customer Match  | dde_nonindiv_hl  |
      | Home Loan     | Application present in CAS | sourcing_details.xlsx | home                 | 264                         | Customer Match  | dde_nonindiv_hl  |
      | Personal Loan | Matched Application ID     | sourcing_details.xlsx | home                 | 262                         | Customer Match  | dde_nonindiv_pl  |
      | Personal Loan | Stage of application       | sourcing_details.xlsx | home                 | 262                         | Customer Match  | dde_nonindiv_pl  |
      | Personal Loan | Application Status         | sourcing_details.xlsx | home                 | 262                         | Customer Match  | dde_nonindiv_pl  |
      | Personal Loan | Sourcing branch            | sourcing_details.xlsx | home                 | 262                         | Customer Match  | dde_nonindiv_pl  |
      | Personal Loan | Application present in CAS | sourcing_details.xlsx | home                 | 262                         | Customer Match  | dde_nonindiv_pl  |
      | Auto Loan     | Matched Application ID     | sourcing_details.xlsx | home                 | 263                         | Customer Match  | dde_nonindiv_mal |
      | Auto Loan     | Stage of application       | sourcing_details.xlsx | home                 | 263                         | Customer Match  | dde_nonindiv_mal |
      | Auto Loan     | Application Status         | sourcing_details.xlsx | home                 | 263                         | Customer Match  | dde_nonindiv_mal |
      | Auto Loan     | Sourcing branch            | sourcing_details.xlsx | home                 | 263                         | Customer Match  | dde_nonindiv_mal |
      | Auto Loan     | Application present in CAS | sourcing_details.xlsx | home                 | 263                         | Customer Match  | dde_nonindiv_mal |

  @ImplementedBy-aniket.tripathi
    @Release3
  #FeatureID-ACAUTOCAS-6508
  Scenario Outline: ACAUTOCAS-10243: When Application Match field of KYC Internal Dedupe Matched Application Details with <Action> should work properly for  Guarantor with <Loan_Type> Individual in Summary Analysis
    And user opens an application of "<Var_Stage>" stage variant from "APPLICATION" grid
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row <SourcingDetails_home_rowNum>
    And user saves the application number
    And user add Guarantor in that Application
    And user is on kyc check in summary Analysis
    And user Re-initiate Applicant Information with rerun
    And user click on "<Match_Type>" No of Dedupe Match hyperlink of "Guarantor"
    When user take "<Action>" in KYC Internal Dedupe Matched Screen
    Then "<Action>" should work properly on KYC Internal Dedupe Matched Screen

    Examples:
      | Loan_Type     | Action       | SourcingDetailsWB     | SourcingDetails_home | SourcingDetails_home_rowNum | Match_Type        | Var_Stage     |
      | Home Loan     | Maximize     | sourcing_details.xlsx | home                 | 264                         | Application Match | dde_indiv_hl  |
      | Home Loan     | Minimize     | sourcing_details.xlsx | home                 | 264                         | Application Match | dde_indiv_hl  |
      | Home Loan     | Cross        | sourcing_details.xlsx | home                 | 264                         | Application Match | dde_indiv_hl  |
      | Home Loan     | Cancel       | sourcing_details.xlsx | home                 | 264                         | Application Match | dde_indiv_hl  |
      | Personal Loan | Maximize     | sourcing_details.xlsx | home                 | 262                         | Application Match | dde_indiv_pl  |
      | Personal Loan | Minimize     | sourcing_details.xlsx | home                 | 262                         | Application Match | dde_indiv_pl  |
      | Personal Loan | Cross        | sourcing_details.xlsx | home                 | 262                         | Application Match | dde_indiv_pl  |
      | Personal Loan | Cancel       | sourcing_details.xlsx | home                 | 262                         | Application Match | dde_indiv_pl  |
      | Auto Loan     | Maximize     | sourcing_details.xlsx | home                 | 263                         | Application Match | dde_indiv_mal |
      | Auto Loan     | Minimize     | sourcing_details.xlsx | home                 | 263                         | Application Match | dde_indiv_mal |
      | Auto Loan     | Cross        | sourcing_details.xlsx | home                 | 263                         | Application Match | dde_indiv_mal |
      | Auto Loan     | Cancel       | sourcing_details.xlsx | home                 | 263                         | Application Match | dde_indiv_mal |
      | Auto Loan     | Expand All   | sourcing_details.xlsx | home                 | 263                         | Application Match | dde_indiv_mal |
      | Home Loan     | Expand All   | sourcing_details.xlsx | home                 | 264                         | Application Match | dde_indiv_hl  |
      | Personal Loan | Expand All   | sourcing_details.xlsx | home                 | 262                         | Application Match | dde_indiv_pl  |
      | Auto Loan     | Collapse All | sourcing_details.xlsx | home                 | 263                         | Application Match | dde_indiv_mal |
      | Home Loan     | Collapse All | sourcing_details.xlsx | home                 | 264                         | Application Match | dde_indiv_hl  |
      | Personal Loan | Collapse All | sourcing_details.xlsx | home                 | 262                         | Application Match | dde_indiv_pl  |

  @ImplementedBy-aryan.jain
    @Release3
  #FeatureID-ACAUTOCAS-6508
  Scenario Outline: ACAUTOCAS-10244: When Customer Match field of KYC Internal Dedupe Matched Application Details with <Action> should work properly for  Guarantor with <Loan_Type> Individual in Summary Analysis
    And user opens an application of "<Var_Stage>" stage variant from "APPLICATION" grid
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row <SourcingDetails_home_rowNum>
    And user saves the application number
    And user add Guarantor in that Application
    And user is on kyc check in summary Analysis
    And user Re-initiate Applicant Information with rerun
    And user click on "<Match_Type>" No of Dedupe Match hyperlink of "Guarantor"
    When user take "<Action>" in KYC Internal Dedupe Matched Screen
    Then "<Action>" should work properly on KYC Internal Dedupe Matched Screen

    Examples:
      | Loan_Type     | Action       | SourcingDetailsWB     | SourcingDetails_home | SourcingDetails_home_rowNum | Match_Type      | Var_Stage     |
      | Home Loan     | Maximize     | sourcing_details.xlsx | home                 | 264                         | Customer  Match | dde_indiv_hl  |
      | Home Loan     | Minimize     | sourcing_details.xlsx | home                 | 264                         | Customer Match  | dde_indiv_hl  |
      | Home Loan     | Cross        | sourcing_details.xlsx | home                 | 264                         | Customer Match  | dde_indiv_hl  |
      | Home Loan     | Cancel       | sourcing_details.xlsx | home                 | 264                         | Customer Match  | dde_indiv_hl  |
      | Personal Loan | Maximize     | sourcing_details.xlsx | home                 | 262                         | Customer Match  | dde_indiv_pl  |
      | Personal Loan | Minimize     | sourcing_details.xlsx | home                 | 262                         | Customer Match  | dde_indiv_pl  |
      | Personal Loan | Cross        | sourcing_details.xlsx | home                 | 262                         | Customer Match  | dde_indiv_pl  |
      | Personal Loan | Cancel       | sourcing_details.xlsx | home                 | 262                         | Customer Match  | dde_indiv_pl  |
      | Auto Loan     | Maximize     | sourcing_details.xlsx | home                 | 263                         | Customer Match  | dde_indiv_mal |
      | Auto Loan     | Minimize     | sourcing_details.xlsx | home                 | 263                         | Customer Match  | dde_indiv_mal |
      | Auto Loan     | Cross        | sourcing_details.xlsx | home                 | 263                         | Customer Match  | dde_indiv_mal |
      | Auto Loan     | Cancel       | sourcing_details.xlsx | home                 | 263                         | Customer Match  | dde_indiv_mal |
      | Auto Loan     | Expand All   | sourcing_details.xlsx | home                 | 263                         | Customer Match  | dde_indiv_mal |
      | Home Loan     | Expand All   | sourcing_details.xlsx | home                 | 264                         | Customer Match  | dde_indiv_hl  |
      | Personal Loan | Expand All   | sourcing_details.xlsx | home                 | 262                         | Customer Match  | dde_indiv_pl  |
      | Auto Loan     | Collapse All | sourcing_details.xlsx | home                 | 263                         | Customer Match  | dde_indiv_mal |
      | Home Loan     | Collapse All | sourcing_details.xlsx | home                 | 264                         | Customer Match  | dde_indiv_hl  |
      | Personal Loan | Collapse All | sourcing_details.xlsx | home                 | 262                         | Customer Match  | dde_indiv_pl  |

  @ImplementedBy-aniket.tripathi
    @Release3
  #FeatureID-ACAUTOCAS-6508
  Scenario Outline: ACAUTOCAS-10245: When Application Match field of KYC Internal Dedupe Matched Application Details with <Action> should work properly for  Guarantor with <Loan_Type> Non Individual in Summary Analysis
    And user opens an application of "<Var_Stage>" stage variant from "APPLICATION" grid
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row <SourcingDetails_home_rowNum>
    And user saves the application number
    And user add Guarantor in that Application
    And user is on kyc check in summary Analysis
    And user Re-initiate Applicant Information with rerun
    And user click on "<Match_Type>" No of Dedupe Match hyperlink of "Guarantor"
    When user take "<Action>" in KYC Internal Dedupe Matched Screen
    Then "<Action>" should work properly on KYC Internal Dedupe Matched Screen

    Examples:
      | Loan_Type     | Action       | SourcingDetailsWB     | SourcingDetails_home | SourcingDetails_home_rowNum | Match_Type        | Var_Stage        |
      | Home Loan     | Maximize     | sourcing_details.xlsx | home                 | 264                         | Application Match | dde_nonindiv_hl  |
      | Home Loan     | Minimize     | sourcing_details.xlsx | home                 | 264                         | Application Match | dde_nonindiv_hl  |
      | Home Loan     | Cross        | sourcing_details.xlsx | home                 | 264                         | Application Match | dde_nonindiv_hl  |
      | Home Loan     | Cancel       | sourcing_details.xlsx | home                 | 264                         | Application Match | dde_nonindiv_hl  |
      | Personal Loan | Maximize     | sourcing_details.xlsx | home                 | 262                         | Application Match | dde_nonindiv_pl  |
      | Personal Loan | Minimize     | sourcing_details.xlsx | home                 | 262                         | Application Match | dde_nonindiv_pl  |
      | Personal Loan | Cross        | sourcing_details.xlsx | home                 | 262                         | Application Match | dde_nonindiv_pl  |
      | Personal Loan | Cancel       | sourcing_details.xlsx | home                 | 262                         | Application Match | dde_nonindiv_pl  |
      | Auto Loan     | Maximize     | sourcing_details.xlsx | home                 | 263                         | Application Match | dde_nonindiv_mal |
      | Auto Loan     | Minimize     | sourcing_details.xlsx | home                 | 263                         | Application Match | dde_nonindiv_mal |
      | Auto Loan     | Cross        | sourcing_details.xlsx | home                 | 263                         | Application Match | dde_nonindiv_mal |
      | Auto Loan     | Cancel       | sourcing_details.xlsx | home                 | 263                         | Application Match | dde_nonindiv_mal |
      | Auto Loan     | Expand All   | sourcing_details.xlsx | home                 | 263                         | Application Match | dde_nonindiv_mal |
      | Home Loan     | Expand All   | sourcing_details.xlsx | home                 | 264                         | Application Match | dde_nonindiv_hl  |
      | Personal Loan | Expand All   | sourcing_details.xlsx | home                 | 262                         | Application Match | dde_nonindiv_pl  |
      | Auto Loan     | Collapse All | sourcing_details.xlsx | home                 | 263                         | Application Match | dde_nonindiv_mal |
      | Home Loan     | Collapse All | sourcing_details.xlsx | home                 | 264                         | Application Match | dde_nonindiv_hl  |
      | Personal Loan | Collapse All | sourcing_details.xlsx | home                 | 262                         | Application Match | dde_nonindiv_pl  |

  @ImplementedBy-aryan.jain
    @Release3
    #FeatureID-ACAUTOCAS-6508
  Scenario Outline: ACAUTOCAS-10246: When Customer Match field of KYC Internal Dedupe Matched Application Details with <Action> should work properly for Guarantor with <Loan_Type> Non Individual in Summary Analysis
    And user opens an application of "<Var_Stage>" stage variant from "APPLICATION" grid
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row <SourcingDetails_home_rowNum>
    And user saves the application number
    And user add Guarantor in that Application
    And user is on kyc check in summary Analysis
    And user Re-initiate Applicant Information with rerun
    And user click on "<Match_Type>" No of Dedupe Match hyperlink of "Guarantor"
    When user take "<Action>" in KYC Internal Dedupe Matched Screen
    Then "<Action>" should work properly on KYC Internal Dedupe Matched Screen

    Examples:
      | Loan_Type     | Action       | SourcingDetailsWB     | SourcingDetails_home | SourcingDetails_home_rowNum | Match_Type      | Var_Stage        |
      | Home Loan     | Maximize     | sourcing_details.xlsx | home                 | 264                         | Customer  Match | dde_nonindiv_hl  |
      | Home Loan     | Minimize     | sourcing_details.xlsx | home                 | 264                         | Customer Match  | dde_nonindiv_hl  |
      | Home Loan     | Cross        | sourcing_details.xlsx | home                 | 264                         | Customer Match  | dde_nonindiv_hl  |
      | Home Loan     | Cancel       | sourcing_details.xlsx | home                 | 264                         | Customer Match  | dde_nonindiv_hl  |
      | Personal Loan | Maximize     | sourcing_details.xlsx | home                 | 262                         | Customer Match  | dde_nonindiv_pl  |
      | Personal Loan | Minimize     | sourcing_details.xlsx | home                 | 262                         | Customer Match  | dde_nonindiv_pl  |
      | Personal Loan | Cross        | sourcing_details.xlsx | home                 | 262                         | Customer Match  | dde_nonindiv_pl  |
      | Personal Loan | Cancel       | sourcing_details.xlsx | home                 | 262                         | Customer Match  | dde_nonindiv_pl  |
      | Auto Loan     | Maximize     | sourcing_details.xlsx | home                 | 263                         | Customer Match  | dde_nonindiv_mal |
      | Auto Loan     | Minimize     | sourcing_details.xlsx | home                 | 263                         | Customer Match  | dde_nonindiv_mal |
      | Auto Loan     | Cross        | sourcing_details.xlsx | home                 | 263                         | Customer Match  | dde_nonindiv_mal |
      | Auto Loan     | Cancel       | sourcing_details.xlsx | home                 | 263                         | Customer Match  | dde_nonindiv_mal |
      | Auto Loan     | Expand All   | sourcing_details.xlsx | home                 | 263                         | Customer Match  | dde_nonindiv_mal |
      | Home Loan     | Expand All   | sourcing_details.xlsx | home                 | 264                         | Customer Match  | dde_nonindiv_hl  |
      | Personal Loan | Expand All   | sourcing_details.xlsx | home                 | 262                         | Customer Match  | dde_nonindiv_pl  |
      | Auto Loan     | Collapse All | sourcing_details.xlsx | home                 | 263                         | Customer Match  | dde_nonindiv_mal |
      | Home Loan     | Collapse All | sourcing_details.xlsx | home                 | 264                         | Customer Match  | dde_nonindiv_hl  |
      | Personal Loan | Collapse All | sourcing_details.xlsx | home                 | 262                         | Customer Match  | dde_nonindiv_pl  |

  @ImplementedBy-aniket.tripathi
    @Release3
  Scenario Outline: ACAUTOCAS-10247: Show the "<NumberOfRows>" rows in Customer Match of Dedupe Match Screen for Guarantor with all Lob's in Summary Analysis
    And user opens an application of "<Var_Stage>" stage variant from "APPLICATION" grid
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row <SourcingDetails_home_rowNum>
    And user saves the application number
    And user add Guarantor in that Application
    And user is on kyc check in summary Analysis
    And user Re-initiate Applicant Information with rerun
    And user click on "<Match_Type>" No of Dedupe Match hyperlink of "Guarantor"
    When user selects "<NumberOfRows>" number of rows to show for Dedupe Match Screen
    Then selected <NumberOfRows> rows "<Display>" in case total enteries are "<More_Less>" than selected number
    Examples:
      | NumberOfRows | Display                                 | More_Less | Match_Type     | SourcingDetailsWB     | SourcingDetails_home | SourcingDetails_home_rowNum | Var_Stage       |
      | 10           | display                                 | more      | Customer Match | sourcing_details.xlsx | home                 | 262                         | dde_nonindiv_hl |
      | 25           | display                                 | more      | Customer Match | sourcing_details.xlsx | home                 | 262                         | dde_nonindiv_hl |
      | 50           | display                                 | more      | Customer Match | sourcing_details.xlsx | home                 | 262                         | dde_nonindiv_hl |
      | 100          | display                                 | more      | Customer Match | sourcing_details.xlsx | home                 | 262                         | dde_nonindiv_hl |
      | 10           | not display only available rows display | less      | Customer Match | sourcing_details.xlsx | home                 | 262                         | dde_nonindiv_hl |
      | 25           | not display only available rows display | less      | Customer Match | sourcing_details.xlsx | home                 | 262                         | dde_nonindiv_hl |
      | 50           | not display only available rows display | less      | Customer Match | sourcing_details.xlsx | home                 | 262                         | dde_nonindiv_hl |
      | 100          | not display only available rows display | less      | Customer Match | sourcing_details.xlsx | home                 | 262                         | dde_nonindiv_hl |

  @ImplementedBy-aryan.jain
    @Release3
  Scenario Outline: ACAUTOCAS-10248: Show the "<NumberOfRows>" rows in Negative Checklist of Dedupe Match Screen for Guarantor with all Lob's in Summary Analysis
    And user opens an application of "<Var_Stage>" stage variant from "APPLICATION" grid
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row <SourcingDetails_home_rowNum>
    And user saves the application number
    And user add Guarantor in that Application
    And user is on kyc check in summary Analysis
    And user Re-initiate Applicant Information with rerun
    And user click on "<Match_Type>" No of Dedupe Match hyperlink of "Guarantor"
    When user selects "<NumberOfRows>" number of rows to show for Dedupe Match Screen
    Then selected <NumberOfRows> rows "<Display>" in case total enteries are "<More_Less>" than selected number
    Examples:
      | NumberOfRows | Display                                 | More_Less | Match_Type               | SourcingDetailsWB     | SourcingDetails_home | SourcingDetails_home_rowNum | Var_Stage       |
      | 10           | display                                 | more      | Negative Checklist Match | sourcing_details.xlsx | home                 | 262                         | dde_nonindiv_hl |
      | 25           | display                                 | more      | Negative Checklist Match | sourcing_details.xlsx | home                 | 262                         | dde_nonindiv_hl |
      | 50           | display                                 | more      | Negative Checklist Match | sourcing_details.xlsx | home                 | 262                         | dde_nonindiv_hl |
      | 100          | display                                 | more      | Negative Checklist Match | sourcing_details.xlsx | home                 | 262                         | dde_nonindiv_hl |
      | 10           | not display only available rows display | less      | Negative Checklist Match | sourcing_details.xlsx | home                 | 262                         | dde_nonindiv_hl |
      | 25           | not display only available rows display | less      | Negative Checklist Match | sourcing_details.xlsx | home                 | 262                         | dde_nonindiv_hl |
      | 50           | not display only available rows display | less      | Negative Checklist Match | sourcing_details.xlsx | home                 | 262                         | dde_nonindiv_hl |
      | 100          | not display only available rows display | less      | Negative Checklist Match | sourcing_details.xlsx | home                 | 262                         | dde_nonindiv_hl |

  @ImplementedBy-aniket.tripathi
    @Release3
  Scenario Outline: ACAUTOCAS-10249: Show the "<NumberOfRows>" rows in Application Match of Dedupe Match Screen for Guarantor with all Lob's in Summary Analysis
    And user opens an application of "<Var_Stage>" stage variant from "APPLICATION" grid
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row <SourcingDetails_home_rowNum>
    And user saves the application number
    And user add Guarantor in that Application
    And user is on kyc check in summary Analysis
    And user Re-initiate Applicant Information with rerun
    And user click on "<Match_Type>" No of Dedupe Match hyperlink of "Guarantor"
    When user selects "<NumberOfRows>" number of rows to show for Dedupe Match Screen
    Then selected <NumberOfRows> rows "<Display>" in case total enteries are "<More_Less>" than selected number
    Examples:
      | NumberOfRows | Display                                 | More_Less | Match_Type        | SourcingDetailsWB     | SourcingDetails_home | SourcingDetails_home_rowNum | Var_Stage       |
      | 10           | display                                 | more      | Application Match | sourcing_details.xlsx | home                 | 262                         | dde_nonindiv_hl |
      | 25           | display                                 | more      | Application Match | sourcing_details.xlsx | home                 | 262                         | dde_nonindiv_hl |
      | 50           | display                                 | more      | Application Match | sourcing_details.xlsx | home                 | 262                         | dde_nonindiv_hl |
      | 100          | display                                 | more      | Application Match | sourcing_details.xlsx | home                 | 262                         | dde_nonindiv_hl |
      | 10           | not display only available rows display | less      | Application Match | sourcing_details.xlsx | home                 | 262                         | dde_nonindiv_hl |
      | 25           | not display only available rows display | less      | Application Match | sourcing_details.xlsx | home                 | 262                         | dde_nonindiv_hl |
      | 50           | not display only available rows display | less      | Application Match | sourcing_details.xlsx | home                 | 262                         | dde_nonindiv_hl |
      | 100          | not display only available rows display | less      | Application Match | sourcing_details.xlsx | home                 | 262                         | dde_nonindiv_hl |

  @ImplementedBy-aniket.tripathi
    @Release3
  Scenario Outline: ACAUTOCAS-10250: Application Match sorting in Dedupe Match Screen with ascending order by <Field> column for Guarantor with all Lob's in Summary Analysis
    And user opens an application of "<Var_Stage>" stage variant from "APPLICATION" grid
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row <SourcingDetails_home_rowNum>
    And user saves the application number
    And user add Guarantor in that Application
    And user is on kyc check in summary Analysis
    And user Re-initiate Applicant Information with rerun
    And user click on "<Match_Type>" No of Dedupe Match hyperlink of "Guarantor"
    When user sort the Dedupe Match Screen by "<Field>" column in "Ascending" order
    Then Dedupe Match Screen should be sort in "Ascending" order basis of "<Field>"
    Examples:
      | Field                 | Match_Type        | SourcingDetailsWB     | SourcingDetails_home | SourcingDetails_home_rowNum | Var_Stage       |
      | Application Id        | Application Match | sourcing_details.xlsx | home                 | 262                         | dde_nonindiv_hl |
      | Strength Of Match     | Application Match | sourcing_details.xlsx | home                 | 262                         | dde_nonindiv_hl |
      | Neo Cust Id           | Application Match | sourcing_details.xlsx | home                 | 262                         | dde_nonindiv_hl |
      | Customer Name         | Application Match | sourcing_details.xlsx | home                 | 262                         | dde_nonindiv_hl |
      | Date Of Birth         | Application Match | sourcing_details.xlsx | home                 | 262                         | dde_nonindiv_hl |
      | Neo CIF Number        | Application Match | sourcing_details.xlsx | home                 | 262                         | dde_nonindiv_hl |
      | Identification Number | Application Match | sourcing_details.xlsx | home                 | 262                         | dde_nonindiv_hl |
      | Unique Id             | Application Match | sourcing_details.xlsx | home                 | 262                         | dde_nonindiv_hl |
      | Applicant Type        | Application Match | sourcing_details.xlsx | home                 | 262                         | dde_nonindiv_hl |

  @ImplementedBy-aryan.jain
    @Release3
  Scenario Outline: ACAUTOCAS-10251: Customer Match sorting in Dedupe Match Screen with ascending order by <Field> column for Guarantor with all Lob's in Summary Analysis
    And user opens an application of "<Var_Stage>" stage variant from "APPLICATION" grid
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row <SourcingDetails_home_rowNum>
    And user saves the application number
    And user add Guarantor in that Application
    And user is on kyc check in summary Analysis
    And user Re-initiate Applicant Information with rerun
    And user click on "<Match_Type>" No of Dedupe Match hyperlink of "Guarantor"
    When user sort the Dedupe Match Screen by "<Field>" column in "Ascending" order
    Then Dedupe Match Screen should be sort in "Ascending" order basis of "<Field>"
    Examples:
      | Field                 | Match_Type     | SourcingDetailsWB     | SourcingDetails_home | SourcingDetails_home_rowNum | Var_Stage       |
      | Application Id        | Customer Match | sourcing_details.xlsx | home                 | 262                         | dde_nonindiv_hl |
      | Strength Of Match     | Customer Match | sourcing_details.xlsx | home                 | 262                         | dde_nonindiv_hl |
      | Neo Cust Id           | Customer Match | sourcing_details.xlsx | home                 | 262                         | dde_nonindiv_hl |
      | Customer Name         | Customer Match | sourcing_details.xlsx | home                 | 262                         | dde_nonindiv_hl |
      | Date Of Birth         | Customer Match | sourcing_details.xlsx | home                 | 262                         | dde_nonindiv_hl |
      | Neo CIF Number        | Customer Match | sourcing_details.xlsx | home                 | 262                         | dde_nonindiv_hl |
      | Identification Number | Customer Match | sourcing_details.xlsx | home                 | 262                         | dde_nonindiv_hl |
      | Unique Id             | Customer Match | sourcing_details.xlsx | home                 | 262                         | dde_nonindiv_hl |
      | Applicant Type        | Customer Match | sourcing_details.xlsx | home                 | 262                         | dde_nonindiv_hl |

  @ImplementedBy-aniket.tripathi
    @Release3
  Scenario Outline: ACAUTOCAS-10252: Application Match sorting in Dedupe Match Screen with descending order by <Field> column for Guarantor with all Lob's in Summary Analysis
    And user opens an application of "<Var_Stage>" stage variant from "APPLICATION" grid
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row <SourcingDetails_home_rowNum>
    And user saves the application number
    And user add Guarantor in that Application
    And user is on kyc check in summary Analysis
    And user Re-initiate Applicant Information with rerun
    And user click on "<Match_Type>" No of Dedupe Match hyperlink of "Guarantor"
    When user sort the Dedupe Match Screen by "<Field>" column in "Descending" order
    Then Dedupe Match Screen should be sort in "Descending" order basis of "<Field>"
    Examples:
      | Field                 | Match_Type        | SourcingDetailsWB     | SourcingDetails_home | SourcingDetails_home_rowNum | Var_Stage       |
      | Application Id        | Application Match | sourcing_details.xlsx | home                 | 262                         | dde_nonindiv_hl |
      | Strength Of Match     | Application Match | sourcing_details.xlsx | home                 | 262                         | dde_nonindiv_hl |
      | Neo Cust Id           | Application Match | sourcing_details.xlsx | home                 | 262                         | dde_nonindiv_hl |
      | Customer Name         | Application Match | sourcing_details.xlsx | home                 | 262                         | dde_nonindiv_hl |
      | Date Of Birth         | Application Match | sourcing_details.xlsx | home                 | 262                         | dde_nonindiv_hl |
      | Neo CIF Number        | Application Match | sourcing_details.xlsx | home                 | 262                         | dde_nonindiv_hl |
      | Identification Number | Application Match | sourcing_details.xlsx | home                 | 262                         | dde_nonindiv_hl |
      | Unique Id             | Application Match | sourcing_details.xlsx | home                 | 262                         | dde_nonindiv_hl |
      | Applicant Type        | Application Match | sourcing_details.xlsx | home                 | 262                         | dde_nonindiv_hl |

  @ImplementedBy-aryan.jain
    @Release3
  Scenario Outline: ACAUTOCAS-10253: Customer Match sorting in Dedupe Match Screen with descending order by <Field> column for Guarantor with all Lob's in Summary Analysis
    And user opens an application of "<Var_Stage>" stage variant from "APPLICATION" grid
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row <SourcingDetails_home_rowNum>
    And user saves the application number
    And user add Guarantor in that Application
    And user is on kyc check in summary Analysis
    And user Re-initiate Applicant Information with rerun
    And user click on "<Match_Type>" No of Dedupe Match hyperlink of "Guarantor"
    When user sort the Dedupe Match Screen by "<Field>" column in "Descending" order
    Then Dedupe Match Screen should be sort in "Descending" order basis of "<Field>"
    Examples:
      | Field                 | Match_Type     | SourcingDetailsWB     | SourcingDetails_home | SourcingDetails_home_rowNum | Var_Stage       |
      | Application Id        | Customer Match | sourcing_details.xlsx | home                 | 262                         | dde_nonindiv_hl |
      | Strength Of Match     | Customer Match | sourcing_details.xlsx | home                 | 262                         | dde_nonindiv_hl |
      | Neo Cust Id           | Customer Match | sourcing_details.xlsx | home                 | 262                         | dde_nonindiv_hl |
      | Customer Name         | Customer Match | sourcing_details.xlsx | home                 | 262                         | dde_nonindiv_hl |
      | Date Of Birth         | Customer Match | sourcing_details.xlsx | home                 | 262                         | dde_nonindiv_hl |
      | Neo CIF Number        | Customer Match | sourcing_details.xlsx | home                 | 262                         | dde_nonindiv_hl |
      | Identification Number | Customer Match | sourcing_details.xlsx | home                 | 262                         | dde_nonindiv_hl |
      | Unique Id             | Customer Match | sourcing_details.xlsx | home                 | 262                         | dde_nonindiv_hl |
      | Applicant Type        | Customer Match | sourcing_details.xlsx | home                 | 262                         | dde_nonindiv_hl |

     #FeatureID-ACAUTOCAS-6508
  @ImplementedBy-aryan.jain
    @Release3
  Scenario Outline: ACAUTOCAS-10254: Pagination of Application Match in Dedupe Match Screen of Guarantor with all Lob's in Summary Analysis
    And user opens an application of "<Var_Stage>" stage variant from "APPLICATION" grid
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row <SourcingDetails_home_rowNum>
    And user saves the application number
    And user add Guarantor in that Application
    And user is on kyc check in summary Analysis
    And user Re-initiate Applicant Information with rerun
    And user click on "<Match_Type>" No of Dedupe Match hyperlink of "Guarantor"
    When user select "<Page>" page in Dedupe Match Screen
    Then "<Paginate_Btn>" should be "<Disable_Enable>" for dedupe match screen on kyc check page
    Examples:
      | Page  | Paginate_Btn             | Disable_Enable | SourcingDetailsWB     | SourcingDetails_home | SourcingDetails_home_rowNum | Var_Stage    | Match_Type        |
      | first | paginate_button previous | disable        | sourcing_details.xlsx | home                 | 262                         | dde_indiv_pl | Application Match |
      | first | paginate_button next     | enable         | sourcing_details.xlsx | home                 | 262                         | dde_indiv_pl | Application Match |
      | next  | paginate_button previous | enable         | sourcing_details.xlsx | home                 | 262                         | dde_indiv_pl | Application Match |
      | last  | paginate_button first    | enable         | sourcing_details.xlsx | home                 | 262                         | dde_indiv_pl | Application Match |
      | last  | paginate_button previous | enable         | sourcing_details.xlsx | home                 | 262                         | dde_indiv_pl | Application Match |
      | last  | paginate_button next     | disable        | sourcing_details.xlsx | home                 | 262                         | dde_indiv_pl | Application Match |

     #FeatureID-ACAUTOCAS-6508
  @ImplementedBy-aryan.jain
    @Release3
  Scenario Outline: ACAUTOCAS-10255: Pagination of Customer Match in Dedupe Match Screen of Guarantor with all Lob's in Summary Analysis
    And user opens an application of "<Var_Stage>" stage variant from "APPLICATION" grid
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row <SourcingDetails_home_rowNum>
    And user saves the application number
    And user add Guarantor in that Application
    And user is on kyc check in summary Analysis
    And user Re-initiate Applicant Information with rerun
    And user click on "<Match_Type>" No of Dedupe Match hyperlink of "Guarantor"
    When user select "<Page>" page in Dedupe Match Screen
    Then "<Paginate_Btn>" should be "<Disable_Enable>" for dedupe match screen on kyc check page
    Examples:
      | Page  | Paginate_Btn             | Disable_Enable | SourcingDetailsWB     | SourcingDetails_home | SourcingDetails_home_rowNum | Var_Stage    | Match_Type     |
      | first | paginate_button previous | disable        | sourcing_details.xlsx | home                 | 262                         | dde_indiv_pl | Customer Match |
      | first | paginate_button next     | enable         | sourcing_details.xlsx | home                 | 262                         | dde_indiv_pl | Customer Match |
      | next  | paginate_button previous | enable         | sourcing_details.xlsx | home                 | 262                         | dde_indiv_pl | Customer Match |
      | last  | paginate_button first    | enable         | sourcing_details.xlsx | home                 | 262                         | dde_indiv_pl | Customer Match |
      | last  | paginate_button previous | enable         | sourcing_details.xlsx | home                 | 262                         | dde_indiv_pl | Customer Match |
      | last  | paginate_button next     | disable        | sourcing_details.xlsx | home                 | 262                         | dde_indiv_pl | Customer Match |

 #FeatureID-ACAUTOCAS-6508
  @ImplementedBy-aryan.jain
    @Release3
  Scenario Outline: ACAUTOCAS-10256: Verify result which is displaying in search results is correct for Dedupe Match Screen of Guarantor with all Lob's in Summary Analysis
    And user opens an application of "<Var_Stage>" stage variant from "APPLICATION" grid
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row <SourcingDetails_home_rowNum>
    And user saves the application number
    And user add Guarantor in that Application
    And user is on kyc check in summary Analysis
    And user Re-initiate Applicant Information with rerun
    And user click on "<Match_Type>" No of Dedupe Match hyperlink of "Guarantor"
    When user click Application Id hyperlink in Dedupe Match Screen
    Then correct details of the application should be visible in view mode
    Examples:
      | Match_Type        | SourcingDetailsWB     | SourcingDetails_home | SourcingDetails_home_rowNum | Var_Stage    |
      | Application Match | sourcing_details.xlsx | home                 | 262                         | dde_indiv_pl |
      | Customer Match    | sourcing_details.xlsx | home                 | 262                         | dde_indiv_pl |

#prerequisite: dedupe weightage should be correct as per the definition of dedupe in master.
   #FeatureID-ACAUTOCAS-6508
  @ImplementedBy-aryan.jain
    @Release3
  Scenario Outline: ACAUTOCAS-10257: The strength of Match dedupe weightage should be correct as per the definition of dedupe in master in Guarantor with all Lob's in Summary Analysis
    And user opens an application of "<Var_Stage>" stage variant from "APPLICATION" grid
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row <SourcingDetails_home_rowNum>
    And user saves the application number
    And user add Guarantor in that Application
    And user is on kyc check in summary Analysis
    And user Re-initiate Applicant Information with rerun
    And user click on "<Match_Type>" No of Dedupe Match hyperlink of "Guarantor"
    When user check results of strength of Match
    Then strength of Match dedupe weightage should be validate correctly

    Examples:
      | Match_Type        | SourcingDetailsWB     | SourcingDetails_home | SourcingDetails_home_rowNum | Var_Stage     |
      | Application Match | sourcing_details.xlsx | home                 | 263                         | dde_indiv_mal |
      | Customer Match    | sourcing_details.xlsx | home                 | 263                         | dde_indiv_mal |

 #FeatureID-ACAUTOCAS-6508
  @ImplementedBy-aryan.jain
    @Release3
  Scenario Outline: ACAUTOCAS-10258: Validating strength of Match data in Dedupe Match Screen should be same for Matches found in Strength of Match in Guarantor with all Lob's in Summary Analysis
    And user opens an application of "<Var_Stage>" stage variant from "APPLICATION" grid
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row <SourcingDetails_home_rowNum>
    And user saves the application number
    And user add Guarantor in that Application
    And user is on kyc check in summary Analysis
    And user Re-initiate Applicant Information with rerun
    And user click on "<Match_Type>" No of Dedupe Match hyperlink of "Guarantor"
    When user check results of strength of Match
    Then Match found in Strength of Match should be same as dedupe strength of match
    Examples:
      | Match_Type        | SourcingDetailsWB     | SourcingDetails_home | SourcingDetails_home_rowNum | Var_Stage     |
      | Application Match | sourcing_details.xlsx | home                 | 263                         | dde_indiv_mal |
      | Customer Match    | sourcing_details.xlsx | home                 | 263                         | dde_indiv_mal |


#FeatureID-ACAUTOCAS-6508
  @ImplementedBy-aryan.jain
    @Release3
  Scenario Outline: ACAUTOCAS-10259: While opening Application Id hyperlink in Dedupe Match Screen the correct details of the application should be visible in view mode for Guarantor with all Lob's in Summary Analysis
    And user opens an application of "<Var_Stage>" stage variant from "APPLICATION" grid
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row <SourcingDetails_home_rowNum>
    And user saves the application number
    And user add Guarantor in that Application
    And user is on kyc check in summary Analysis
    And user Re-initiate Applicant Information with rerun
    And user click on "<Match_Type>" No of Dedupe Match hyperlink of "Guarantor"
    When user click Application Id hyperlink in Dedupe Match Screen
    Then correct details of the application should be visible in view mode
    Examples:
      | Match_Type        | SourcingDetailsWB     | SourcingDetails_home | SourcingDetails_home_rowNum | Var_Stage     |
      | Application Match | sourcing_details.xlsx | home                 | 263                         | dde_indiv_mal |
      | Customer Match    | sourcing_details.xlsx | home                 | 263                         | dde_indiv_mal |


  #Pre-requisites to add negative checklist data is master - Negative Checklist and Negative checklist template
 #FeatureID-ACAUTOCAS-6508
  @ImplementedBy-aniket.tripathi
    @Release3
  Scenario Outline: ACAUTOCAS-10260: Matches Records Pages should be displayed on Negative checklist Matches for Guarantor with all Lob's in Summary Analysis
    And user opens an application of "<Var_Stage>" stage variant from "APPLICATION" grid
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row <SourcingDetails_home_rowNum>
    And user saves the application number
    And user add Guarantor in that Application
    And user is on kyc check in summary Analysis
    And user Re-initiate Applicant Information with rerun
    And user click on "<Match_Type>" No of Dedupe Match hyperlink of "Guarantor"
    When user click on Negative checklist Matched record
    Then Negative Checklist Matched Records should be displayed
    Examples:
      | Match_Type         | Var_Stage     | SourcingDetailsWB     | SourcingDetails_home | SourcingDetails_home_rowNum |
      | Negative Checklist | dde_indiv_mal | sourcing_details.xlsx | home                 | 263                         |

  #Pre-requisites to add negative checklist data is master - Negative Checklist and Negative checklist template
   #FeatureID-ACAUTOCAS-6508
  @ImplementedBy-aniket.tripathi
    @Release3
  Scenario Outline: ACAUTOCAS-10261: Added negative checklist data is master should display in negative checklist Matches for Guarantor with all Lob's in Summary Analysis
    And user opens an application of "<Var_Stage>" stage variant from "APPLICATION" grid
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row <SourcingDetails_home_rowNum>
    And user saves the application number
    And user add Guarantor in that Application
    And user is on kyc check in summary Analysis
    And user Re-initiate Applicant Information with rerun
    When user click on "<Match_Type>" No of Dedupe Match hyperlink of "Guarantor"
    Then master data should displayed for negative checklist Matches

    Examples:
      | Match_Type         | Var_Stage     | SourcingDetailsWB     | SourcingDetails_home | SourcingDetails_home_rowNum |
      | Negative Checklist | dde_indiv_mal | sourcing_details.xlsx | home                 | 263                         |

#FeatureID-ACAUTOCAS-6508
  @ImplementedBy-aniket.tripathi
    @Release3
  Scenario Outline: ACAUTOCAS-10262: In Application Match By default all application should be ticked to consider for exposure in Guarantor with all Lob's in Summary Analysis
    And user opens an application of "<Var_Stage>" stage variant from "APPLICATION" grid
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row <SourcingDetails_home_rowNum>
    And user saves the application number
    And user add Guarantor in that Application
    And user is on kyc check in summary Analysis
    And user Re-initiate Applicant Information with rerun
    When user click on "<Match_Type>" No of Dedupe Match hyperlink of "Guarantor"
    Then by default all application should be ticked to consider for exposure

    Examples:
      | Match_Type        | Var_Stage     | SourcingDetailsWB     | SourcingDetails_home | SourcingDetails_home_rowNum |
      | Application Match | dde_indiv_mal | sourcing_details.xlsx | home                 | 263                         |

#FeatureID-ACAUTOCAS-6508
  @ImplementedBy-aniket.tripathi
    @Release3
  Scenario Outline: ACAUTOCAS-10263: In Customer Match By default all application should be ticked to consider for exposure in Guarantor with all Lob's in Summary Analysis
    And user opens an application of "<Var_Stage>" stage variant from "APPLICATION" grid
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row <SourcingDetails_home_rowNum>
    And user saves the application number
    And user add Guarantor in that Application
    And user is on kyc check in summary Analysis
    And user Re-initiate Applicant Information with rerun
    When user click on "<Match_Type>" No of Dedupe Match hyperlink of "Guarantor"
    Then by default all application should be ticked to consider for exposure

    Examples:
      | Match_Type     | Var_Stage     | SourcingDetailsWB     | SourcingDetails_home | SourcingDetails_home_rowNum |
      | Customer Match | dde_indiv_mal | sourcing_details.xlsx | home                 | 263                         |

#FeatureID-ACAUTOCAS-6508
  @ImplementedBy-aniket.tripathi
    @Release3
  Scenario Outline: ACAUTOCAS-10264: In Customer Match System should allow to <action> consider for exposure in Guarantor with all Lob's in Summary Analysis
    And user opens an application of "<Var_Stage>" stage variant from "APPLICATION" grid
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row <SourcingDetails_home_rowNum>
    And user saves the application number
    And user add Guarantor in that Application
    And user is on kyc check in summary Analysis
    And user Re-initiate Applicant Information with rerun
    When user click on "<Match_Type>" No of Dedupe Match hyperlink of "Guarantor"
    Then System should allow to "<action>" consider for exposure for "<Match_Type>"

    Examples:
      | action | Match_Type     | Var_Stage     | SourcingDetailsWB     | SourcingDetails_home | SourcingDetails_home_rowNum |
      | Tick   | Customer Match | dde_indiv_mal | sourcing_details.xlsx | home                 | 263                         |
      | Untick | Customer Match | dde_indiv_mal | sourcing_details.xlsx | home                 | 263                         |

#FeatureID-ACAUTOCAS-6508
  @ImplementedBy-aniket.tripathi
    @Release3
  Scenario Outline: ACAUTOCAS-10265: In Application Match System should allow to <action> consider for exposure in Guarantor with all Lob's in Summary Analysis
    And user opens an application of "<Var_Stage>" stage variant from "APPLICATION" grid
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row <SourcingDetails_home_rowNum>
    And user saves the application number
    And user add Guarantor in that Application
    And user is on kyc check in summary Analysis
    And user Re-initiate Applicant Information with rerun
    When user click on "<Match_Type>" No of Dedupe Match hyperlink of "Guarantor"
    Then System should allow to "<action>" consider for exposure for "<Match_Type>"

    Examples:
      | action | Match_Type        | Var_Stage     | SourcingDetailsWB     | SourcingDetails_home | SourcingDetails_home_rowNum |
      | Tick   | Application Match | dde_indiv_mal | sourcing_details.xlsx | home                 | 263                         |
      | Untick | Application Match | dde_indiv_mal | sourcing_details.xlsx | home                 | 263                         |

#FeatureID-ACAUTOCAS-6508
  @ImplementedBy-aniket.tripathi
    @Release3
  Scenario Outline: ACAUTOCAS-10266: In Application Match Once it is linked for exposure after that exposure calculation should happen accordingly in Guarantor with all Lob's in Summary Analysis
    And user opens an application of "<Var_Stage>" stage variant from "APPLICATION" grid
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row <SourcingDetails_home_rowNum>
    And user saves the application number
    And user add Guarantor in that Application
    And user is on kyc check in summary Analysis
    And user Re-initiate Applicant Information with rerun
    When user click on "<Match_Type>" No of Dedupe Match hyperlink of "Guarantor"
    And user once linked the exposure
    Then exposure calculation should happen accordingly

    Examples:
      | Match_Type        | Var_Stage     | SourcingDetailsWB     | SourcingDetails_home | SourcingDetails_home_rowNum |
      | Application Match | dde_indiv_mal | sourcing_details.xlsx | home                 | 263                         |

#FeatureID-ACAUTOCAS-6508
  @ImplementedBy-aniket.tripathi
    @Release3
  Scenario Outline: ACAUTOCAS-10267: In Customer Match Once it is linked for exposure after that exposure calculation should happen accordingly in Guarantor with all Lob's in Summary Analysis
    And user opens an application of "<Var_Stage>" stage variant from "APPLICATION" grid
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row <SourcingDetails_home_rowNum>
    And user saves the application number
    And user add Guarantor in that Application
    And user is on kyc check in summary Analysis
    And user Re-initiate Applicant Information with rerun
    When user click on "<Match_Type>" No of Dedupe Match hyperlink of "Guarantor"
    And user once linked the exposure
    Then exposure calculation should happen accordingly

    Examples:
      | Match_Type     | Var_Stage     | SourcingDetailsWB     | SourcingDetails_home | SourcingDetails_home_rowNum |
      | Customer Match | dde_indiv_mal | sourcing_details.xlsx | home                 | 263                         |

#FeatureID-ACAUTOCAS-6508
  @ImplementedBy-aniket.tripathi
    @Release3
  Scenario Outline: ACAUTOCAS-10268: In Customer Match the linking should be allowed for every application in Guarantor with all Lob's in Summary Analysis
    And user opens an application of "<Var_Stage>" stage variant from "APPLICATION" grid
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row <SourcingDetails_home_rowNum>
    And user saves the application number
    And user add Guarantor in that Application
    And user is on kyc check in summary Analysis
    And user Re-initiate Applicant Information with rerun
    When user click on "<Match_Type>" No of Dedupe Match hyperlink of "Guarantor"
    And user once tick on link
    Then linking should work properly for every application

    Examples:
      | Match_Type     | Var_Stage     | SourcingDetailsWB     | SourcingDetails_home | SourcingDetails_home_rowNum |
      | Customer Match | dde_indiv_mal | sourcing_details.xlsx | home                 | 263                         |

#FeatureID-ACAUTOCAS-6508
  @ImplementedBy-aniket.tripathi
    @Release3
  Scenario Outline: ACAUTOCAS-10269: In Application Match the linking should be allowed for every application in Guarantor with all Lob's in Summary Analysis
    And user opens an application of "<Var_Stage>" stage variant from "APPLICATION" grid
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row <SourcingDetails_home_rowNum>
    And user saves the application number
    And user add Guarantor in that Application
    And user is on kyc check in summary Analysis
    And user Re-initiate Applicant Information with rerun
    When user click on "<Match_Type>" No of Dedupe Match hyperlink of "Guarantor"
    And user once tick on link
    Then linking should work properly for every application

    Examples:
      | Match_Type        | Var_Stage     | SourcingDetailsWB     | SourcingDetails_home | SourcingDetails_home_rowNum |
      | Application Match | dde_indiv_mal | sourcing_details.xlsx | home                 | 263                         |

#FeatureID-ACAUTOCAS-6508
  @ImplementedBy-aniket.tripathi
    @Release3
  Scenario Outline: ACAUTOCAS-10270: In Application Match once the application is linked after that in GCD the global customer ID will be same for linked applications in Guarantor with all Lob's in Summary Analysis
    And user opens an application of "<Var_Stage>" stage variant from "APPLICATION" grid
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row <SourcingDetails_home_rowNum>
    And user saves the application number
    And user add Guarantor in that Application
    And user is on kyc check in summary Analysis
    And user Re-initiate Applicant Information with rerun
    When user click on "<Match_Type>" No of Dedupe Match hyperlink of "Guarantor"
    And user link the application id with Done
    Then in GCD the global customer ID will be same for linked applications

    Examples:
      | Match_Type        | Var_Stage     | SourcingDetailsWB     | SourcingDetails_home | SourcingDetails_home_rowNum |
      | Application Match | dde_indiv_mal | sourcing_details.xlsx | home                 | 263                         |

#FeatureID-ACAUTOCAS-6508
  @ImplementedBy-aniket.tripathi
    @Release3
  Scenario Outline: ACAUTOCAS-10271: In Customer Match once the application is linked after that in GCD the global customer ID will be same for linked applications in Guarantor with all Lob's in Summary Analysis
    And user opens an application of "<Var_Stage>" stage variant from "APPLICATION" grid
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row <SourcingDetails_home_rowNum>
    And user saves the application number
    And user add Guarantor in that Application
    And user is on kyc check in summary Analysis
    And user Re-initiate Applicant Information with rerun
    When user click on "<Match_Type>" No of Dedupe Match hyperlink of "Guarantor"
    And user link the application id with Done
    Then in GCD the global customer ID will be same for linked applications
    Examples:
      | Match_Type        | Var_Stage     | SourcingDetailsWB     | SourcingDetails_home | SourcingDetails_home_rowNum |
      | Application Match | dde_indiv_mal | sourcing_details.xlsx | home                 | 263                         |





