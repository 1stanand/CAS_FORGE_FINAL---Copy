@Epic-Loan_Application_Details
@AuthoredBy-harshita.nayak
@Conventional
@Islamic
@OnHold
@NotImplemented
Feature: Kyc Dedupe Details for Partner Director in Kyc Stage

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0

  #FeatureID-ACAUTOCAS-808
   # ${ ProductType : ["IHF","IPF","IAF","PF","MAL","HL","LAP","CV","MHL","FE","EDU","AGRL","JLG","CEQ","MULF","BD","CashCred","BL","LC","BG"]}
   # ${ApplicationStage:["KYC"]}
  Scenario Outline: ACAUTOCAS-9647: <No of Matches> for Kyc Dedupe Partner must be same for Applicant Details with <ProductType> in <ApplicationStage>
    And user opens an application of "<ProductType>" product type as "nonindiv" applicant at "<ApplicationStage>" from application grid
    And user navigate to customer details screen on "<ApplicationStage>"
    And user reads data from the excel file "summary_analysis.xlsx" under sheet "kyc_check" and row 0
    And user click on Partner Director Tab
    And user add partner on Applicant Information Page
    And user click on done button at partner details page
    When user moves application from "lead details" stage to application of "<ProductType>" product type as "nonindiv" applicant at "<ApplicationStage>" for "" with "" stage without opening it
    And user expand the partner details
    Then "<No of Matches>" Kyc Dedupe Partner must be same for Applicant Details
    Examples:
      | No of Matches     | ProductType   | ApplicationStage   |
      | Application Match | <ProductType> | <ApplicationStage> |
      | Customer Match    | <ProductType> | <ApplicationStage> |
      | Negative Match    | <ProductType> | <ApplicationStage> |

    #FeatureID-ACAUTOCAS-808
  Scenario Outline: ACAUTOCAS-9648: <No of Matches> for Kyc Dedupe Director must be same for Applicant Details with <Loan_Type> in Kyc Stage
    Given user is on CAS Login Page
    And user opens an application at Kyc stage from application grid with "<Loan_Type>"
    When user check the "<No of Matches>" for Kyc Dedupe Director
    Then "<No of Matches>" Kyc Dedupe Director must be same for Applicant Details

    Examples:
      | No of Matches     | Loan_Type     |
      | Application Match | Home Loan     |
      | Customer Match    | Home Loan     |
      | Negative Match    | Home Loan     |
      | Application Match | Personal Loan |
      | Customer Match    | Personal Loan |
      | Negative Match    | Personal Loan |
      | Application Match | Auto Loan     |
      | Customer Match    | Auto Loan     |
      | Negative Match    | Auto Loan     |

    #FeatureID-ACAUTOCAS-808
  Scenario Outline: ACAUTOCAS-9649: On <Field_Name> No of Dedupe Match hyperlink Partner Dedupe result displayed for Partner with <Loan_Type> in Kyc Stage
    Given user is on CAS Login Page
    And user opens an application at Kyc stage from application grid with "<Loan_Type>"
    When user click on <Field_Name> No of Dedupe Match hyperlink
    Then Partner Dedupe result should be displayed for Partner

    Examples:
      | Field_Name        | Loan_Type     |
      | Application Match | Home Loan     |
      | Customer Match    | Home Loan     |
      | Application Match | Personal Loan |
      | Customer Match    | Personal Loan |
      | Application Match | Auto Loan     |
      | Customer Match    | Auto Loan     |


   #FeatureID-ACAUTOCAS-808
  Scenario Outline: ACAUTOCAS-9650: On <Field_Name> No of Dedupe Match hyperlink Director Dedupe result displayed for Director with <Loan_Type> in Kyc Stage
    Given user is on CAS Login Page
    And user opens an application at Kyc stage from application grid with "<Loan_Type>"
    When user click on <Field_Name> No of Dedupe Match hyperlink
    Then Director Dedupe result should be displayed for Director

    Examples:
      | Field_Name        | Loan_Type     |
      | Application Match | Home Loan     |
      | Customer Match    | Home Loan     |
      | Application Match | Personal Loan |
      | Customer Match    | Personal Loan |
      | Application Match | Auto Loan     |
      | Customer Match    | Auto Loan     |


    #FeatureID-ACAUTOCAS-808
  Scenario Outline: ACAUTOCAS-9651: When <Field_Name> Partner Dedupe result open Application Id hyperlink <Screen> must be displayed for Partner with <Loan_Type> in Kyc Stage
    Given user is on CAS Login Page
    And user opens an application at Kyc stage from application grid with "<Loan_Type>"
    And user click on <Field_Name> No of Dedupe Match hyperlink
    When user on Partner Dedupe result open Application Id hyperlink
    Then <Screen> must be displayed

    Examples:
      | Field_Name        | Screen                      | Loan_Type     |
      | Application Match | Matched Application Details | Home Loan     |
      | Customer Match    | Matched Application Details | Home Loan     |
      | Application Match | Matched Application Details | Personal Loan |
      | Customer Match    | Matched Application Details | Personal Loan |
      | Application Match | Matched Application Details | Auto Loan     |
      | Customer Match    | Matched Application Details | Auto Loan     |

    #FeatureID-ACAUTOCAS-808
  Scenario Outline: ACAUTOCAS-9652: When <Field_Name> Director Dedupe result open Application Id hyperlink <Screen> must be displayed for Director with <Loan_Type> in Kyc Stage
    Given user is on CAS Login Page
    And user opens an application at Kyc stage from application grid with "<Loan_Type>"
    And user click on <Field_Name> No of Dedupe Match hyperlink
    When user on Director Dedupe result open Application Id hyperlink
    Then <Screen> must be displayed

    Examples:
      | Field_Name        | Screen                      | Loan_Type     |
      | Application Match | Matched Application Details | Home Loan     |
      | Customer Match    | Matched Application Details | Home Loan     |
      | Application Match | Matched Application Details | Personal Loan |
      | Customer Match    | Matched Application Details | Personal Loan |
      | Application Match | Matched Application Details | Auto Loan     |
      | Customer Match    | Matched Application Details | Auto Loan     |


#FeatureID-ACAUTOCAS-808
  Scenario Outline: ACAUTOCAS-9653: Validating the <Field_Name> present in Matched Application Details of Application Match for Partner with <Loan_Type> in Kyc Stage
    Given user is on CAS Login Page
    And user opens an application at Kyc stage from application grid with "<Loan_Type>"
    And user click Application Match field No of Dedupe Match hyperlink
    When user click Application Id hyperlink in Partner Dedupe result
    Then <Field_Name> present in Matched Application Details

    Examples:
      | Loan_Type     | Field_Name                 |
      | Home Loan     | Matched Application ID     |
      | Home Loan     | Stage of application       |
      | Home Loan     | Application Status         |
      | Home Loan     | Sourcing branch            |
      | Home Loan     | Application present in CAS |
      | Personal Loan | Matched Application ID     |
      | Personal Loan | Stage of application       |
      | Personal Loan | Application Status         |
      | Personal Loan | Sourcing branch            |
      | Personal Loan | Application present in CAS |
      | Auto Loan     | Matched Application ID     |
      | Auto Loan     | Stage of application       |
      | Auto Loan     | Application Status         |
      | Auto Loan     | Sourcing branch            |
      | Auto Loan     | Application present in CAS |

    #FeatureID-ACAUTOCAS-808
  Scenario Outline: ACAUTOCAS-9654: Validating the <Field_Name> present in Matched Application Details of Customer Match for Partner with <Loan_Type> in Kyc Stage
    Given user is on CAS Login Page
    And user opens an application at Kyc stage from application grid with "<Loan_Type>"
    And user click Customer Match field No of Dedupe Match hyperlink
    When user click Application Id hyperlink in Partner Dedupe result
    Then <Field_Name> present in Matched Application Details

    Examples:
      | Loan_Type     | Field_Name                 |
      | Home Loan     | Matched Application ID     |
      | Home Loan     | Stage of application       |
      | Home Loan     | Application Status         |
      | Home Loan     | Sourcing branch            |
      | Home Loan     | Application present in CAS |
      | Personal Loan | Matched Application ID     |
      | Personal Loan | Stage of application       |
      | Personal Loan | Application Status         |
      | Personal Loan | Sourcing branch            |
      | Personal Loan | Application present in CAS |
      | Auto Loan     | Matched Application ID     |
      | Auto Loan     | Stage of application       |
      | Auto Loan     | Application Status         |
      | Auto Loan     | Sourcing branch            |
      | Auto Loan     | Application present in CAS |

    ###

  #FeatureID-ACAUTOCAS-808
  Scenario Outline: ACAUTOCAS-9655: Validating the <Field_Name> present in Matched Application Details of Application Match for Director with <Loan_Type>  in Kyc Stage
    Given user is on CAS Login Page
    And user opens an application at Kyc stage from application grid with "<Loan_Type>"
    And user click Application Match field No of Dedupe Match hyperlink
    When user click Application Id hyperlink in Director Dedupe result
    Then <Field_Name> present in Matched Application Details

    Examples:
      | Loan_Type     | Field_Name                 |
      | Home Loan     | Matched Application ID     |
      | Home Loan     | Stage of application       |
      | Home Loan     | Application Status         |
      | Home Loan     | Sourcing branch            |
      | Home Loan     | Application present in CAS |
      | Personal Loan | Matched Application ID     |
      | Personal Loan | Stage of application       |
      | Personal Loan | Application Status         |
      | Personal Loan | Sourcing branch            |
      | Personal Loan | Application present in CAS |
      | Auto Loan     | Matched Application ID     |
      | Auto Loan     | Stage of application       |
      | Auto Loan     | Application Status         |
      | Auto Loan     | Sourcing branch            |
      | Auto Loan     | Application present in CAS |

    #FeatureID-ACAUTOCAS-808
  # ${ ProductType : ["IHF","IPF","IAF","PF","MAL","HL","LAP","CV","MHL","FE","EDU","AGRL","JLG","CEQ","MULF","BD","CashCred","BL","LC","BG"]}
   # ${ApplicationStage:["KYC"]}
  Scenario Outline: ACAUTOCAS-9656: Validating the <Field_Name> present in Matched Application Details of Customer Match for Director with <ProductType> in <ApplicationStage>
    And user opens an application of "<ProductType>" product type as "nonindiv" applicant at "<ApplicationStage>" from application grid
    And user navigate to customer details screen on "<ApplicationStage>"
    And user reads data from the excel file "summary_analysis.xlsx" under sheet "kyc_check" and row 0
    And user click on Partner Director Tab
    And user add partner on Applicant Information Page
    And user click on done button at partner details page
    And user expand the partner details
    And user click "Application Match" field No of Dedupe Match hyperlink
    When user click Application Id hyperlink in Partner Dedupe result
    Then "<Field_Name>" present in Matched Application Details
    Examples:
      | Field_Name                 | ProductType   | ApplicationStage   |
      | Matched Application ID     | <ProductType> | <ApplicationStage> |
      | Stage of application       | <ProductType> | <ApplicationStage> |
      | Application Status         | <ProductType> | <ApplicationStage> |
      | Sourcing branch            | <ProductType> | <ApplicationStage> |
      | Application present in CAS | <ProductType> | <ApplicationStage> |
      | Matched Application ID     | <ProductType> | <ApplicationStage> |
      | Stage of application       | <ProductType> | <ApplicationStage> |
      | Application Status         | <ProductType> | <ApplicationStage> |
      | Sourcing branch            | <ProductType> | <ApplicationStage> |
      | Application present in CAS | <ProductType> | <ApplicationStage> |
      | Matched Application ID     | <ProductType> | <ApplicationStage> |
      | Stage of application       | <ProductType> | <ApplicationStage> |
      | Application Status         | <ProductType> | <ApplicationStage> |
      | Sourcing branch            | <ProductType> | <ApplicationStage> |
      | Application present in CAS | <ProductType> | <ApplicationStage> |


     #FeatureID-ACAUTOCAS-808
  Scenario Outline: ACAUTOCAS-9657: When Customer Match field of Matched Application Details with <Action> should work properly for Partner with <Loan_Type> in Kyc Stage
    Given user is on CAS Login Page
    And user opens an application at Kyc stage from application grid with <Loan_Type>
    And user click Negative Checklist field of No of Dedupe Match hyperlink
    And user click Application Id hyperlink in Partner Dedupe Result
    When user take <Action> in Matched Application Details
    Then <Action> should work properly

    Examples:
      | Loan_Type     | Action       |
      | Home Loan     | Maximize     |
      | Home Loan     | Minimize     |
      | Home Loan     | Cross        |
      | Home Loan     | Cancel       |
      | Personal Loan | Maximize     |
      | Personal Loan | Minimize     |
      | Personal Loan | Cross        |
      | Personal Loan | Cancel       |
      | Auto Loan     | Maximize     |
      | Auto Loan     | Minimize     |
      | Auto Loan     | Cross        |
      | Auto Loan     | Cancel       |
      | Auto Loan     | Expand All   |
      | Home Loan     | Expand All   |
      | Personal Loan | Expand All   |
      | Auto Loan     | Collapse All |
      | Home Loan     | Collapse All |
      | Personal Loan | Collapse All |


     #FeatureID-ACAUTOCAS-808
  Scenario Outline: ACAUTOCAS-9658: When Application Match field of Matched Application Details with <Action> should work properly for Partner with <Loan_Type> in Kyc Stage
    Given user is on CAS Login Page
    And user opens an application at Kyc stage from application grid with <Loan_Type>
    And user click Customer Match field of No of Dedupe Match hyperlink
    And user click Application Id hyperlink in Partner Dedupe Result
    When user take <Action> in Matched Application Details
    Then <Action> should work properly

    Examples:
      | Loan_Type     | Action       |
      | Home Loan     | Maximize     |
      | Home Loan     | Minimize     |
      | Home Loan     | Cross        |
      | Home Loan     | Cancel       |
      | Personal Loan | Maximize     |
      | Personal Loan | Minimize     |
      | Personal Loan | Cross        |
      | Personal Loan | Cancel       |
      | Auto Loan     | Maximize     |
      | Auto Loan     | Minimize     |
      | Auto Loan     | Cross        |
      | Auto Loan     | Cancel       |
      | Auto Loan     | Expand All   |
      | Home Loan     | Expand All   |
      | Personal Loan | Expand All   |
      | Auto Loan     | Collapse All |
      | Home Loan     | Collapse All |
      | Personal Loan | Collapse All |


    #################

     #FeatureID-ACAUTOCAS-808
  Scenario Outline: ACAUTOCAS-9659: When Customer Match field of Matched Application Details with <Action> should work properly for Director with <Loan_Type> in Kyc Stage
    Given user is on CAS Login Page
    And user opens an application at Kyc stage from application grid with <Loan_Type>
    And user click Customer Match field of No of Dedupe Match hyperlink
    And user click Application Id hyperlink in Director Dedupe Result
    When user take <Action> in Matched Application Details
    Then <Action> should work properly

    Examples:
      | Loan_Type     | Action       |
      | Home Loan     | Maximize     |
      | Home Loan     | Minimize     |
      | Home Loan     | Cross        |
      | Home Loan     | Cancel       |
      | Personal Loan | Maximize     |
      | Personal Loan | Minimize     |
      | Personal Loan | Cross        |
      | Personal Loan | Cancel       |
      | Auto Loan     | Maximize     |
      | Auto Loan     | Minimize     |
      | Auto Loan     | Cross        |
      | Auto Loan     | Cancel       |
      | Auto Loan     | Expand All   |
      | Home Loan     | Expand All   |
      | Personal Loan | Expand All   |
      | Auto Loan     | Collapse All |
      | Home Loan     | Collapse All |
      | Personal Loan | Collapse All |


     #FeatureID-ACAUTOCAS-808
  Scenario Outline: ACAUTOCAS-9660: When Application Match field of Matched Application Details with <Action> should work properly for Director with <Loan_Type> in Kyc Stage
    Given user is on CAS Login Page
    And user opens an application at Kyc stage from application grid with <Loan_Type>
    And user click Application Match field of No of Dedupe Match hyperlink
    And user click Application Id hyperlink in Director Dedupe Result
    When user take <Action> in Matched Application Details
    Then <Action> should work properly

    Examples:
      | Loan_Type     | Action       |
      | Home Loan     | Maximize     |
      | Home Loan     | Minimize     |
      | Home Loan     | Cross        |
      | Home Loan     | Cancel       |
      | Personal Loan | Maximize     |
      | Personal Loan | Minimize     |
      | Personal Loan | Cross        |
      | Personal Loan | Cancel       |
      | Auto Loan     | Maximize     |
      | Auto Loan     | Minimize     |
      | Auto Loan     | Cross        |
      | Auto Loan     | Cancel       |
      | Auto Loan     | Expand All   |
      | Home Loan     | Expand All   |
      | Personal Loan | Expand All   |
      | Auto Loan     | Collapse All |
      | Home Loan     | Collapse All |
      | Personal Loan | Collapse All |


    #FeatureID-ACAUTOCAS-808
  Scenario Outline: ACAUTOCAS-9661: Show the "<NumberOfRows>" rows in Customer Match of Partner Dedupe Result for Partner with all Lob's in Kyc Stage
    Given user is on CAS Login Page
    And user opens an application at Kyc stage from application grid with all Lob's
    And user click Customer Match field of No of Dedupe Match hyperlink
    When user selects "<NumberOfRows>" number of rows to show for Partner Dedupe Result
    Then selected "<NumberOfRows>" rows "<Display>" in case total enteries are "<More_Less>" than selected number
    Examples:
      | NumberOfRows | Display                                 | More_Less |
      | 10           | display                                 | more      |
      | 25           | display                                 | more      |
      | 50           | display                                 | more      |
      | 100          | display                                 | more      |
      | 10           | not display only available rows display | less      |
      | 25           | not display only available rows display | less      |
      | 50           | not display only available rows display | less      |
      | 100          | not display only available rows display | less      |

    #FeatureID-ACAUTOCAS-808
  Scenario Outline: ACAUTOCAS-9662: Show the "<NumberOfRows>" rows in Negative Checklist of Partner Dedupe Result for Partner with all Lob's in Kyc Stage
    Given user is on CAS Login Page
    And user opens an application at Kyc stage from application grid with all Lob's
    And user click Negative Checklist field of No of Dedupe Match hyperlink
    When user selects "<NumberOfRows>" number of rows to show for Partner Dedupe Result
    Then selected "<NumberOfRows>" rows "<Display>" in case total enteries are "<More_Less>" than selected number
    Examples:
      | NumberOfRows | Display                                 | More_Less |
      | 10           | display                                 | more      |
      | 25           | display                                 | more      |
      | 50           | display                                 | more      |
      | 100          | display                                 | more      |
      | 10           | not display only available rows display | less      |
      | 25           | not display only available rows display | less      |
      | 50           | not display only available rows display | less      |
      | 100          | not display only available rows display | less      |

     #FeatureID-ACAUTOCAS-808
  Scenario Outline: ACAUTOCAS-9663: Show the "<NumberOfRows>" rows in Application Match of Partner Dedupe Result for Partner with all Lob's in Kyc Stage
    Given user is on CAS Login Page
    And user opens an application at Kyc stage from application grid with all Lob's
    And user click Application Match field of No of Dedupe Match hyperlink
    When user selects "<NumberOfRows>" number of rows to show for Partner Dedupe Result
    Then selected "<NumberOfRows>" rows "<Display>" in case total enteries are "<More_Less>" than selected number
    Examples:
      | NumberOfRows | Display                                 | More_Less |
      | 10           | display                                 | more      |
      | 25           | display                                 | more      |
      | 50           | display                                 | more      |
      | 100          | display                                 | more      |
      | 10           | not display only available rows display | less      |
      | 25           | not display only available rows display | less      |
      | 50           | not display only available rows display | less      |
      | 100          | not display only available rows display | less      |

      #FeatureID-ACAUTOCAS-808
  Scenario Outline: ACAUTOCAS-9664: Show the "<NumberOfRows>" rows in Customer Match of Director Dedupe Result for Director with all Lob's in Kyc Stage
    Given user is on CAS Login Page
    And user opens an application at Kyc stage from application grid with all Lob's
    And user click Customer Match field of No of Dedupe Match hyperlink
    When user selects "<NumberOfRows>" number of rows to show for Director Dedupe Result
    Then selected "<NumberOfRows>" rows "<Display>" in case total enteries are "<More_Less>" than selected number
    Examples:
      | NumberOfRows | Display                                 | More_Less |
      | 10           | display                                 | more      |
      | 25           | display                                 | more      |
      | 50           | display                                 | more      |
      | 100          | display                                 | more      |
      | 10           | not display only available rows display | less      |
      | 25           | not display only available rows display | less      |
      | 50           | not display only available rows display | less      |
      | 100          | not display only available rows display | less      |

    #FeatureID-ACAUTOCAS-808
  Scenario Outline: ACAUTOCAS-9665: Show the "<NumberOfRows>" rows in Negative Checklist of Director Dedupe Result for Director with all Lob's in Kyc Stage
    Given user is on CAS Login Page
    And user opens an application at Kyc stage from application grid with all Lob's
    And user click Negative Checklist field of No of Dedupe Match hyperlink
    When user selects "<NumberOfRows>" number of rows to show for Director Dedupe Result
    Then selected "<NumberOfRows>" rows "<Display>" in case total enteries are "<More_Less>" than selected number
    Examples:
      | NumberOfRows | Display                                 | More_Less |
      | 10           | display                                 | more      |
      | 25           | display                                 | more      |
      | 50           | display                                 | more      |
      | 100          | display                                 | more      |
      | 10           | not display only available rows display | less      |
      | 25           | not display only available rows display | less      |
      | 50           | not display only available rows display | less      |
      | 100          | not display only available rows display | less      |

     #FeatureID-ACAUTOCAS-808
  Scenario Outline: ACAUTOCAS-9666: Show the "<NumberOfRows>" rows in Application Match of Director Dedupe Result for Director with all Lob's in Kyc Stage
    Given user is on CAS Login Page
    And user opens an application at Kyc stage from application grid with all Lob's
    And user click Application Match field of No of Dedupe Match hyperlink
    When user selects "<NumberOfRows>" number of rows to show for Director Dedupe Result
    Then selected "<NumberOfRows>" rows "<Display>" in case total enteries are "<More_Less>" than selected number
    Examples:
      | NumberOfRows | Display                                 | More_Less |
      | 10           | display                                 | more      |
      | 25           | display                                 | more      |
      | 50           | display                                 | more      |
      | 100          | display                                 | more      |
      | 10           | not display only available rows display | less      |
      | 25           | not display only available rows display | less      |
      | 50           | not display only available rows display | less      |
      | 100          | not display only available rows display | less      |


    #sort the details in ascending order
   #FeatureID-ACAUTOCAS-808
  Scenario Outline: ACAUTOCAS-9667: Application Match sorting in Partner Dedupe Result with ascending order by <Field> column for Partner with all Lob's in Kyc Stage
    Given user is on CAS Login Page
    And user opens an application at Kyc stage from application grid with all Lob's
    And user click Application Match field of No of Dedupe Match hyperlink
    When user sort the Partner Dedupe Result by <Field> column in ascending order
    Then Partner Dedupe Result should be sort in ascending order
    Examples:
      | Field                 |
      | Application Id        |
      | Strength Of Match     |
      | Neo Cust Id           |
      | Customer Name         |
      | Date Of Birth         |
      | Neo CIF Number        |
      | Identification Number |
      | Unique Id             |
      | Applicant Type        |
      | Application Status    |
      | Current Stage         |

    #sort the details in ascending order
   #FeatureID-ACAUTOCAS-808
  Scenario Outline: ACAUTOCAS-9668: Customer Match sorting in Partner Dedupe Result with ascending order by <Field> column for Partner with all Lob's in Kyc Stage
    Given user is on CAS Login Page
    And user opens an application at Kyc stage from application grid with all Lob's
    And user click Customer Match field of No of Dedupe Match hyperlink
    When user sort the Partner Dedupe Result by <Field> column in ascending order
    Then Partner Dedupe Result should be sort in ascending order
    Examples:
      | Field                 |
      | Application Id        |
      | Strength Of Match     |
      | Neo Cust Id           |
      | Customer Name         |
      | Date Of Birth         |
      | Neo CIF Number        |
      | Identification Number |
      | Unique Id             |
      | Applicant Type        |
      | Application Status    |
      | Current Stage         |

    #sort the details in descending order
   #FeatureID-ACAUTOCAS-808
  Scenario Outline: ACAUTOCAS-9669: Application Match sorting in Director Dedupe Result with descending order by <Field> column for Director with all Lob's in Kyc Stage
    Given user is on CAS Login Page
    And user opens an application at Kyc stage from application grid with all Lob's
    And user click Application Match field of No of Dedupe Match hyperlink
    When user sort the Director Dedupe Result by <Field> column in descending order
    Then Director Dedupe Result should be sort in descending order
    Examples:
      | Field                 |
      | Application Id        |
      | Strength Of Match     |
      | Neo Cust Id           |
      | Customer Name         |
      | Date Of Birth         |
      | Neo CIF Number        |
      | Identification Number |
      | Unique Id             |
      | Applicant Type        |
      | Application Status    |
      | Current Stage         |

    #sort the details in descending order
   #FeatureID-ACAUTOCAS-808
  Scenario Outline: ACAUTOCAS-9670: Customer Match sorting in Director Dedupe Result with descending order by <Field> column for Director with all Lob's in Kyc Stage
    Given user is on CAS Login Page
    And user opens an application at Kyc stage from application grid with all Lob's
    And user click Customer Match field of No of Dedupe Match hyperlink
    When user sort the Director Dedupe Result by <Field> column in descending order
    Then Director Dedupe Result should be sort in descending order
    Examples:
      | Field                 |
      | Application Id        |
      | Strength Of Match     |
      | Neo Cust Id           |
      | Customer Name         |
      | Date Of Birth         |
      | Neo CIF Number        |
      | Identification Number |
      | Unique Id             |
      | Applicant Type        |
      | Application Status    |
      | Current Stage         |

    #FeatureID-ACAUTOCAS-808
  Scenario Outline: ACAUTOCAS-9671: Pagination of Application Match in Director Dedupe Result of Director with all Lob's in Kyc Stage
    Given user is on CAS Login Page
    And user opens an application at Kyc stage from application grid with all Lob's
    And user click Application Match field of No of Dedupe Match hyperlink
    When user select "<Page>" page in Director Dedupe Result
    Then "<Paginate_Btn>" should be "<Disable_Enable>"
    Examples:
      | Page  | Paginate_Btn             | Disable_Enable |
      | first | paginate_button previous | disable        |
      | first | paginate_button next     | enable         |
      | next  | paginate_button previous | enable         |
      | last  | paginate_button first    | enable         |
      | last  | paginate_button previous | enable         |
      | last  | paginate_button next     | disable        |

     #FeatureID-ACAUTOCAS-808
  Scenario Outline: ACAUTOCAS-9672: Pagination of Customer Match in Director Dedupe Result of Director with all Lob's in Kyc Stage
    Given user is on CAS Login Page
    And user opens an application at Kyc stage from application grid with all Lob's
    And user click Customer Match field of No of Dedupe Match hyperlink
    When user select "<Page>" page in Director Dedupe Result
    Then "<Paginate_Btn>" should be "<Disable_Enable>"
    Examples:
      | Page  | Paginate_Btn             | Disable_Enable |
      | first | paginate_button previous | disable        |
      | first | paginate_button next     | enable         |
      | next  | paginate_button previous | enable         |
      | last  | paginate_button first    | enable         |
      | last  | paginate_button previous | enable         |
      | last  | paginate_button next     | disable        |

    #FeatureID-ACAUTOCAS-808
  Scenario Outline: ACAUTOCAS-9673: Pagination of Application Match in Partner Dedupe Result of Partner with all Lob's in Kyc Stage
    Given user is on CAS Login Page
    And user opens an application at Kyc stage from application grid with all Lob's
    And user click Application Match field of No of Dedupe Match hyperlink
    When user select "<Page>" page in Partner Dedupe Result
    Then "<Paginate_Btn>" should be "<Disable_Enable>"
    Examples:
      | Page  | Paginate_Btn             | Disable_Enable |
      | first | paginate_button previous | disable        |
      | first | paginate_button next     | enable         |
      | next  | paginate_button previous | enable         |
      | last  | paginate_button first    | enable         |
      | last  | paginate_button previous | enable         |
      | last  | paginate_button next     | disable        |

     #FeatureID-ACAUTOCAS-808
  Scenario Outline: ACAUTOCAS-9674: Pagination of Customer Match in Partner Dedupe Result of Partner with all Lob's in Kyc Stage
    Given user is on CAS Login Page
    And user opens an application at Kyc stage from application grid with all Lob's
    And user click Customer Match field of No of Dedupe Match hyperlink
    When user select "<Page>" page in Partner Dedupe Result
    Then "<Paginate_Btn>" should be "<Disable_Enable>"
    Examples:
      | Page  | Paginate_Btn             | Disable_Enable |
      | first | paginate_button previous | disable        |
      | first | paginate_button next     | enable         |
      | next  | paginate_button previous | enable         |
      | last  | paginate_button first    | enable         |
      | last  | paginate_button previous | enable         |
      | last  | paginate_button next     | disable        |

#FeatureID-ACAUTOCAS-808
  Scenario Outline: ACAUTOCAS-9675: While opening Application Id hyperlink in Partner Dedupe Result the correct details of the application should be visible in view mode for Partner with all Lob's in Kyc Stage
    Given user is on CAS Login Page
    And user opens an application at Kyc stage from application grid with all Lob's
    And user click on <Field_Name> No of Dedupe Match hyperlink
    When user open Application Id hyperlink in Partner Dedupe Result
    Then correct details of the application should be visible in view mode

    Examples:
      | Field_Name        |
      | Application Match |
      | Customer Match    |

    #FeatureID-ACAUTOCAS-808
  Scenario Outline: ACAUTOCAS-9676: While opening Application Id hyperlink in Director Dedupe Result the correct details of the application should be visible in view mode for Director with all Lob's in Kyc Stage
    Given user is on CAS Login Page
    And user opens an application at Kyc stage from application grid with all Lob's
    And user click on <Field_Name> No of Dedupe Match hyperlink
    When user open Application Id hyperlink in Director Dedupe Result
    Then correct details of the application should be visible in view mode

    Examples:
      | Field_Name        |
      | Application Match |
      | Customer Match    |


  #Pre-requisites to add negative checklist data is master - Negative Checklist and Negative checklist template
 #FeatureID-ACAUTOCAS-808
  Scenario: ACAUTOCAS-9677: Matches Records Pages should be displayed on Negative checklist Matches for Partner with all Lob's in Kyc Stage
    Given user is on CAS Login Page
    And user opens an application at Kyc stage from application grid with all Lob's
    And user click on Negative Checklist No of Dedupe Match hyperlink
    When user on Negative checklist Matches
    Then Matches Records should be displayed

  #Pre-requisites to add negative checklist data is master - Negative Checklist and Negative checklist template
   #FeatureID-ACAUTOCAS-808
  Scenario: ACAUTOCAS-9678: Added negative checklist data is master should display in negative checklist Matches for Partner with all Lob's in Kyc Stage
    Given user is on CAS Login Page
    And user opens an application at Kyc stage from application grid with all Lob's
    And user click on Negative Checklist No of Dedupe Match hyperlink
    When added negative checklist data in master
    Then master data should displayed for negative checklist Matches

    #Pre-requisites to add negative checklist data is master - Negative Checklist and Negative checklist template
 #FeatureID-ACAUTOCAS-808
  Scenario: ACAUTOCAS-9679: Matches Records Pages should be displayed on Negative checklist Matches for Director with all Lob's in Kyc Stage
    Given user is on CAS Login Page
    And user opens an application at Kyc stage from application grid with all Lob's
    And user click on Negative Checklist No of Dedupe Match hyperlink
    When user on Negative checklist Matches
    Then Matches Records should be displayed

  #Pre-requisites to add negative checklist data is master - Negative Checklist and Negative checklist template
   #FeatureID-ACAUTOCAS-808
  Scenario: ACAUTOCAS-9680: Added negative checklist data is master should display in negative checklist Matches for Director with all Lob's in Kyc Stage
    Given user is on CAS Login Page
    And user opens an application at Kyc stage from application grid with all Lob's
    And user click on Negative Checklist No of Dedupe Match hyperlink
    When added negative checklist data in master
    Then master data should displayed for negative checklist Matches


    #prerequisite: dedupe weightage should be correct as per the definition of dedupe in master.
   #FeatureID-ACAUTOCAS-808
  Scenario Outline: ACAUTOCAS-9681: The strength of Match dedupe weightage should be correct as per the definition of dedupe in master in Partner with all Lob's in Kyc Stage
    Given user is on CAS Login Page
    And user opens an application at Kyc stage from application grid with all Lob's
    And user click <Field_Name> field of No of Dedupe Match hyperlink
    When user check results of strength of Match in Partner Dedupe Result
    Then strength of Match dedupe weightage should be validate correctly

    Examples:
      | Field_Name        |
      | Application Match |
      | Customer Match    |

 #FeatureID-ACAUTOCAS-808
  Scenario Outline: ACAUTOCAS-9682: Validating strength of Match data in in Partner Dedupe Result should be same for Matches found in Strength of Match in Partner with all Lob's in Kyc Stage
    Given user is on CAS Login Page
    And user opens an application at Kyc stage from application grid with all Lob's
    And user click <Field_Name> field of No of Dedupe Match hyperlink
    When user check strength of Match data in Partner Dedupe Result
    Then Matches found in Strength of Match should be same as dedupe strength of match

    Examples:
      | Field_Name        |
      | Application Match |
      | Customer Match    |


    #prerequisite: dedupe weightage should be correct as per the definition of dedupe in master.
   #FeatureID-ACAUTOCAS-808
  Scenario Outline: ACAUTOCAS-9683: The strength of Match dedupe weightage should be correct as per the definition of dedupe in master in Director with all Lob's in Kyc Stage
    Given user is on CAS Login Page
    And user opens an application at Kyc stage from application grid with all Lob's
    And user click <Field_Name> field of No of Dedupe Match hyperlink
    When user check results of strength of Match in Director Dedupe Result
    Then strength of Match dedupe weightage should be validate correctly

    Examples:
      | Field_Name        |
      | Application Match |
      | Customer Match    |

 #FeatureID-ACAUTOCAS-808
  Scenario Outline: ACAUTOCAS-9684: Validating strength of Match data in in Director Dedupe Result should be same for Matches found in Strength of Match in Director with all Lob's in Kyc Stage
    Given user is on CAS Login Page
    And user opens an application at Kyc stage from application grid with all Lob's
    And user click <Field_Name> field of No of Dedupe Match hyperlink
    When user check strength of Match data in Director Dedupe Result
    Then Matches found in Strength of Match should be same as dedupe strength of match

    Examples:
      | Field_Name        |
      | Application Match |
      | Customer Match    |

    #FeatureID-ACAUTOCAS-808
  Scenario Outline: ACAUTOCAS-9685: When Application Match field of Partner Dedupe Screen with <Action> should work properly for Partner with all Lob's in Kyc Stage
    Given user is on CAS Login Page
    And user opens an application at Kyc stage from application grid  with all Lob's
    And user click Application Match field of No of Dedupe Match hyperlink
    When user take <Action> in Partner Dedupe Screen
    Then <Action> should work properly

    Examples:
      | Action   |
      | Maximize |
      | Minimize |
      | Cross    |
      | Cancel   |


    #FeatureID-ACAUTOCAS-808
  Scenario Outline: ACAUTOCAS-9686: When Customer Match field of Partner Dedupe Result with <Action> should work properly for Partner with all Lob's in Kyc Stage
    Given user is on CAS Login Page
    And user opens an application at Kyc stage from application grid with all Lob's
    And user click Customer Match field of No of Dedupe Match hyperlink
    When user take <Action> in Partner Dedupe Result
    Then <Action> should work properly

    Examples:
      | Action   |
      | Maximize |
      | Minimize |
      | Cross    |
      | Cancel   |

    #FeatureID-ACAUTOCAS-808
  Scenario Outline: ACAUTOCAS-9687: When Application Match field of Director Dedupe Screen with <Action> should work properly for Director with all Lob's in Kyc Stage
    Given user is on CAS Login Page
    And user opens an application at Kyc stage from application grid with all Lob's
    And user click Application Match field of No of Dedupe Match hyperlink
    When user take <Action> in Director Dedupe Screen
    Then <Action> should work properly

    Examples:
      | Action   |
      | Maximize |
      | Minimize |
      | Cross    |
      | Cancel   |


    #FeatureID-ACAUTOCAS-808
  Scenario Outline: ACAUTOCAS-9688: When Customer Match field of Director Dedupe Result with <Action> should work properly for Director with all Lob's in Kyc Stage
    Given user is on CAS Login Page
    And user opens an application at Kyc stage from application grid with all Lob's
    And user click Customer Match field of No of Dedupe Match hyperlink
    When user take <Action> in Director Dedupe Result
    Then <Action> should work properly

    Examples:
      | Action   |
      | Maximize |
      | Minimize |
      | Cross    |
      | Cancel   |

     #FeatureID-ACAUTOCAS-808
  Scenario: ACAUTOCAS-9689: On Negative Checklist No of Dedupe Match hyperlink Negative Checklist Matches displayed for Partner with all Lob's in Kyc Stage
    Given user is on CAS Login Page
    And user opens an application at Kyc stage from application grid for all Lob's
    When user click on Negative Checklist No of Dedupe Match hyperlink
    Then Negative Checklist Matches should be displayed for Partner

    #FeatureID-ACAUTOCAS-808
  Scenario: ACAUTOCAS-9690: On Negative Checklist No of Dedupe Match hyperlink Negative Checklist Matches displayed for Director with all Lob's in Kyc Stage
    Given user is on CAS Login Page
    And user opens an application at Kyc stage from application grid for all Lob's
    When user click on Negative Checklist No of Dedupe Match hyperlink
    Then Negative Checklist Matches should be displayed for Director
















