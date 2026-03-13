@Epic-Loan_Application_Details
@AuthoredBy-ruchi.rawat
@ReviewedBy-aman.nagarkoti


Feature:Sourcing Details is used to capture the application sourcing details such as the Sourcing Channel, Product/Scheme applied for, Loan Amount Requested, Relationship Manager, Direct Selling Agency/ Team/ Agent etc

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0

  @ImplementedBy-deep.maurya
    @Release3
  Scenario Outline: ACAUTOCAS-2574:  Link a valid LAN
    And user create new application for "<Loan_Type>"
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row <SourcingDetails_home_rowNum>
    And clicks on the LAN Linking Details Accordion
    When the user enters a valid LAN in the LAN to be linked field
    And clicks on Validate LAN button
    Then the LAN should get validated
    And populate in the Linked LANs field
    Examples:
      | Loan_Type        | SourcingDetailsWB     | SourcingDetails_home | SourcingDetails_home_rowNum |
      | Personal Loan    | sourcing_details.xlsx | home                 | 0                           |
      | Auto Loan        | sourcing_details.xlsx | home                 | 0                           |
      | Home Loan        | sourcing_details.xlsx | home                 | 0                           |
      | Education Loan   | sourcing_details.xlsx | home                 | 0                           |
      | Agriculture Loan | sourcing_details.xlsx | home                 | 0                           |


  @ImplementedBy-deep.maurya
    @Release3
  Scenario Outline: ACAUTOCAS-2575:  Link an invalid LAN
    And user create new application for "<Loan_Type>"
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row <SourcingDetails_home_rowNum>
    And clicks on the LAN Linking Details Accordion
    When the user enters an invalid LAN in the LAN to be linked field
    And clicks on Validate LAN button
    Then the LAN should not get validated
    And should not populate in the Linked LANs field
    Examples:
      | Loan_Type        | SourcingDetailsWB     | SourcingDetails_home | SourcingDetails_home_rowNum |
      | Personal Loan    | sourcing_details.xlsx | home                 | 1                           |
      | Auto Loan        | sourcing_details.xlsx | home                 | 1                           |
      | Home Loan        | sourcing_details.xlsx | home                 | 1                           |
      | Education Loan   | sourcing_details.xlsx | home                 | 1                           |
      | Agriculture Loan | sourcing_details.xlsx | home                 | 1                           |


  @ImplementedBy-deep.maurya
    @Release3
  Scenario Outline: ACAUTOCAS-2569:  Sourcing channel is selected as Alternate Channel
    And user create new application for "<Loan_Type>"
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row <SourcingDetails_home_rowNum>
    When the Sourcing Channel is chosen as Alternate Channel
    Then the Alternate Channel Mode field is visible
    And the user is able to select it from the dropdown
    Examples:
      | Loan_Type        | SourcingDetailsWB     | SourcingDetails_home | SourcingDetails_home_rowNum |
      | Personal Loan    | sourcing_details.xlsx | home                 | 146                         |
      | Auto Loan        | sourcing_details.xlsx | home                 | 147                         |
      | Home Loan        | sourcing_details.xlsx | home                 | 148                         |
      | Education Loan   | sourcing_details.xlsx | home                 | 149                         |
      | Agriculture Loan | sourcing_details.xlsx | home                 | 150                         |

  @ImplementedBy-deep.maurya
    @Release3
  Scenario Outline: ACAUTOCAS-2570:  Sourcing channel is selected as Branch
    And user create new application for "<Loan_Type>"
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row <SourcingDetails_home_rowNum>
    When the Sourcing Channel is chosen as Branch
    Then the Sourcing Branch field is visible
    And the user is able to select it from the LoV
    Examples:
      | Loan_Type        | SourcingDetailsWB     | SourcingDetails_home | SourcingDetails_home_rowNum |
      | Personal Loan    | sourcing_details.xlsx | home                 | 146                         |
      | Auto Loan        | sourcing_details.xlsx | home                 | 147                         |
      | Home Loan        | sourcing_details.xlsx | home                 | 148                         |
      | Education Loan   | sourcing_details.xlsx | home                 | 149                         |
      | Agriculture Loan | sourcing_details.xlsx | home                 | 150                         |


  @ImplementedBy-deep.maurya
    @Release3
  Scenario Outline: ACAUTOCAS-2567:  Sourcing channel is selected as Referral
    And user create new application for "<Loan_Type>"
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row <SourcingDetails_home_rowNum>
    When the Sourcing Channel is chosen as Referral
    Then Referral Code and Referral Name fields are visible for capturing the details of the referral who sourced the application
    And the Referral code is filtered on the basis of Product mapped
    Examples:
      | Loan_Type        | SourcingDetailsWB     | SourcingDetails_home | SourcingDetails_home_rowNum |
      | Personal Loan    | sourcing_details.xlsx | home                 | 151                         |
      | Auto Loan        | sourcing_details.xlsx | home                 | 152                         |
      | Home Loan        | sourcing_details.xlsx | home                 | 153                         |
      | Education Loan   | sourcing_details.xlsx | home                 | 154                         |
      | Agriculture Loan | sourcing_details.xlsx | home                 | 155                         |


  @ImplementedBy-yash.sharma
    @Release3
  Scenario Outline: ACAUTOCAS-3466:  Validate Application Creation Date
    And user create new application for "<Loan_Type>"
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row <SourcingDetails_home_rowNum>
    When user fills and saves sourcing details with applicationPurpose
    And tries entering the Application Creation Date
    Then creation date should be auto populated as the current date
    And creation date should be disabled
    Examples:
      | Loan_Type               | SourcingDetailsWB     | SourcingDetails_home | SourcingDetails_home_rowNum |
      | Personal Loan           | sourcing_details.xlsx | home                 | 157                         |
      | Auto Loan               | sourcing_details.xlsx | home                 | 158                         |
      | Home Loan               | sourcing_details.xlsx | home                 | 159                         |
      | Education Loan          | sourcing_details.xlsx | home                 | 160                         |
      | Agriculture Loan        | sourcing_details.xlsx | home                 | 161                         |
      | Commercial Equipment    | sourcing_details.xlsx | home                 | 114                         |
      | Commercial Vehicle Loan | sourcing_details.xlsx | home                 | 115                         |
      | Loan Against Property   | sourcing_details.xlsx | home                 | 117                         |
      | Gold Loan               | sourcing_details.xlsx | home                 | 116                         |


  @ImplementedBy-yash.sharma
    @Release3
  Scenario Outline: ACAUTOCAS-3467:  Validate Application ID
    And user create new application for "<Loan_Type>"
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row <SourcingDetails_home_rowNum>
    When user fills and saves sourcing details with applicationPurpose
    And tries entering the Application ID
    Then Application ID should be disabled and null
    Examples:
      | Loan_Type               | SourcingDetailsWB     | SourcingDetails_home | SourcingDetails_home_rowNum |
      | Personal Loan           | sourcing_details.xlsx | home                 | 146                         |
      | Auto Loan               | sourcing_details.xlsx | home                 | 147                         |
      | Home Loan               | sourcing_details.xlsx | home                 | 148                         |
      | Education Loan          | sourcing_details.xlsx | home                 | 149                         |
      | Agriculture Loan        | sourcing_details.xlsx | home                 | 150                         |
      | Commercial Equipment    | sourcing_details.xlsx | home                 | 114                         |
      | Commercial Vehicle Loan | sourcing_details.xlsx | home                 | 115                         |
      | Gold Loan               | sourcing_details.xlsx | home                 | 116                         |
      | Loan Against Property   | sourcing_details.xlsx | home                 | 117                         |


  @ImplementedBy-yash.sharma
    @Release3
  Scenario Outline: ACAUTOCAS-2552:  Validate the Lead CRM number
    And user create new application for "<Loan_Type>"
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row <SourcingDetails_home_rowNum>
    And user navigates to sourcing tab
    When the user enters the Lead CRM number
    Then the value should get accepted
    Examples:
      | Loan_Type               | SourcingDetailsWB     | SourcingDetails_home | SourcingDetails_home_rowNum |
      | Personal Loan           | sourcing_details.xlsx | home                 | 63                          |
      | Auto Loan               | sourcing_details.xlsx | home                 | 64                          |
      | Home Loan               | sourcing_details.xlsx | home                 | 65                          |
      | Education Loan          | sourcing_details.xlsx | home                 | 66                          |
      | Agriculture Loan        | sourcing_details.xlsx | home                 | 67                          |
      | Commercial Equipment    | sourcing_details.xlsx | home                 | 114                         |
      | Commercial Vehicle Loan | sourcing_details.xlsx | home                 | 115                         |
      | Gold Loan               | sourcing_details.xlsx | home                 | 116                         |
      | Loan Against Property   | sourcing_details.xlsx | home                 | 117                         |
      | Omni Loan               | sourcing_details.xlsx | home                 | 118                         |


  @ImplementedBy-yash.sharma
    @Release3
  Scenario Outline: ACAUTOCAS-3471:  Marking Subsidy as <YesNo>
    And user create new application for "<Loan_Type>"
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row <SourcingDetails_home_rowNum>
    And user fills and saves sourcing details
    And Subsidy section is available on Sourcing Tab
    When the user selects the Subsidy Flag as "<YesNo>"
    Then the other subsidy field should be enabled for data capturing
    Examples:
      | Loan_Type | YesNo | SourcingDetailsWB     | SourcingDetails_home | SourcingDetails_home_rowNum |
      | Home Loan | Yes   | sourcing_details.xlsx | home                 | 65                          |
      | Home Loan | No    | sourcing_details.xlsx | home                 | 65                          |


  @ImplementedBy-yash.sharma
    @Release3
  Scenario Outline: ACAUTOCAS-4649:  Validate that multi asset application is  not available in all LoBs except Auto Loan, Commercial Vehicle, Construction Equipment, Farm Equipment
    And user create new application for "<Loan_Type>"
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row <SourcingDetails_home_rowNum>
    When user navigates to sourcing tab
    And click on Application Type dropdown
    Then Multi Asset is available as an option
    Examples:
      | Loan_Type               | SourcingDetailsWB     | SourcingDetails_home | SourcingDetails_home_rowNum |
      | Auto Loan               | sourcing_details.xlsx | home                 | 66                          |
      | Commercial Vehicle Loan | sourcing_details.xlsx | home                 | 65                          |
      | Commercial Equipment    | sourcing_details.xlsx | home                 | 66                          |
      | Farm Equipment          | sourcing_details.xlsx | home                 | 65                          |
      | Commercial Equipment    | sourcing_details.xlsx | home                 | 114                         |
      | Commercial Vehicle Loan | sourcing_details.xlsx | home                 | 115                         |


  @ImplementedBy-yash.sharma
    @Release3
  Scenario Outline: ACAUTOCAS-3470: Validate that multi asset application is available in the <Var_ProductType>
    And user create new application for "<Loan_Type>"
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row <SourcingDetails_home_rowNum>
    When user navigates to sourcing tab
    And click on Application Type dropdown
    Then Multi Asset is not available as an option
    Examples:
      | Loan_Type             | SourcingDetailsWB     | SourcingDetails_home | SourcingDetails_home_rowNum |
      | Personal Loan         | sourcing_details.xlsx | home                 | 66                          |
      | Home Loan             | sourcing_details.xlsx | home                 | 65                          |
      | Education Loan        | sourcing_details.xlsx | home                 | 65                          |
      | Gold Loan             | sourcing_details.xlsx | home                 | 116                         |
      | Loan Against Property | sourcing_details.xlsx | home                 | 117                         |
      | Omni Loan             | sourcing_details.xlsx | home                 | 118                         |


  @ImplementedBy-yash.sharma
    @Release3
  Scenario Outline: ACAUTOCAS-2554:  Validate Tenure
    And user create new application for "<Loan_Type>"
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row <SourcingDetails_home_rowNum>
    When user navigates to sourcing tab
    And the user selects the product
    And enters the amount requested
    Then the Tenure field should be defaulted as the value maintained in the repayment policy
    And the field should be enabled so that the user can change the value
    Examples:
      | Loan_Type               | SourcingDetailsWB     | SourcingDetails_home | SourcingDetails_home_rowNum |
      | Personal Loan           | sourcing_details.xlsx | home                 | 68                          |
      | Home Loan               | sourcing_details.xlsx | home                 | 65                          |
      | Education Loan          | sourcing_details.xlsx | home                 | 66                          |
      | Commercial Equipment    | sourcing_details.xlsx | home                 | 114                         |
      | Commercial Vehicle Loan | sourcing_details.xlsx | home                 | 115                         |
      | Gold Loan               | sourcing_details.xlsx | home                 | 116                         |
      | Loan Against Property   | sourcing_details.xlsx | home                 | 117                         |
      | Omni Loan               | sourcing_details.xlsx | home                 | 118                         |

  @ImplementedBy-yash.sharma
    @Release3
  Scenario Outline: ACAUTOCAS-2549:  Validate the Scheme
    And user create new application for "<Loan_Type>"
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row <SourcingDetails_home_rowNum>
    And user navigates to sourcing tab
    When the user selects a product in the product field
    Then the scheme is populated as per the selection of product
    And the scheme is enabled
    Examples:
      | Loan_Type               | SourcingDetailsWB     | SourcingDetails_home | SourcingDetails_home_rowNum |
      | Personal Loan           | sourcing_details.xlsx | home                 | 68                          |
      | Home Loan               | sourcing_details.xlsx | home                 | 108                         |
      | Education Loan          | sourcing_details.xlsx | home                 | 80                          |
      | Commercial Equipment    | sourcing_details.xlsx | home                 | 114                         |
      | Commercial Vehicle Loan | sourcing_details.xlsx | home                 | 113                         |
      | Gold Loan               | sourcing_details.xlsx | home                 | 116                         |
      | Loan Against Property   | sourcing_details.xlsx | home                 | 117                         |
      | Omni Loan               | sourcing_details.xlsx | home                 | 118                         |

  @ImplementedBy-yash.sharma
    @Release3
  Scenario Outline: ACAUTOCAS-2557:  Capturing the Application purpose
    And user create new application for "<Loan_Type>"
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row <SourcingDetails_home_rowNum>
    And user navigates to sourcing tab
    When the user can enter description using alphabets, numbers and special characters in Application Purpose Description
    Then the user can enter 4000 characters
    And the user can drag the text area to read
    Examples:
      | Loan_Type               | SourcingDetailsWB     | SourcingDetails_home | SourcingDetails_home_rowNum |
      | Personal Loan           | sourcing_details.xlsx | home                 | 83                          |
      | Home Loan               | sourcing_details.xlsx | home                 | 83                          |
      | Education Loan          | sourcing_details.xlsx | home                 | 83                          |
      | Commercial Equipment    | sourcing_details.xlsx | home                 | 83                          |
      | Commercial Vehicle Loan | sourcing_details.xlsx | home                 | 83                          |
      | Gold Loan               | sourcing_details.xlsx | home                 | 83                          |
      | Loan Against Property   | sourcing_details.xlsx | home                 | 83                          |
      | Omni Loan               | sourcing_details.xlsx | home                 | 83                          |

  @ImplementedBy-rishabh.sachan
    @Release3
  Scenario Outline: ACAUTOCAS-2546: Validate Product type for <Loan_Type>
    And user create new application for "<Loan_Type>"
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row <SourcingDetails_home_rowNum>
    When user navigates to sourcing tab
    Then the product type populated in the product type field is the one selected in create application link
    And product type field is disabled
    Examples:
      | Loan_Type               | SourcingDetailsWB     | SourcingDetails_home | SourcingDetails_home_rowNum |
      | Personal Loan           | sourcing_details.xlsx | home                 | 157                         |
      | Auto Loan               | sourcing_details.xlsx | home                 | 158                         |
      | Home Loan               | sourcing_details.xlsx | home                 | 159                         |
      | Education Loan          | sourcing_details.xlsx | home                 | 160                         |
      | Agriculture Loan        | sourcing_details.xlsx | home                 | 161                         |
      | Commercial Equipment    | sourcing_details.xlsx | home                 | 114                         |
      | Commercial Vehicle Loan | sourcing_details.xlsx | home                 | 115                         |
      | Loan Against Property   | sourcing_details.xlsx | home                 | 117                         |
      | Gold Loan               | sourcing_details.xlsx | home                 | 116                         |
      | Omni Loan               | sourcing_details.xlsx | home                 | 118                         |

  @ImplementedBy-yash.sharma
    @Release3
  Scenario Outline: ACAUTOCAS-3488:  Validate Employee Number
    And the user starts creating a "<ApplicationType>"
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row <SourcingDetails_home_rowNum>
    When the user starts filling the sourcing details
    And selects the Employee Name for "<RequestType>"
    Then the employee number field should auto populate with the employee number of the selected employee name
    Examples:
      | RequestType                      | SourcingDetailsWB     | SourcingDetails_home | SourcingDetails_home_rowNum | ApplicationType         |
      | New Credit Card Application      | sourcing_details.xlsx | home                 | 0                           | Credit Card Application |
      | Add-on Card                      | sourcing_details.xlsx | home                 | 0                           | Credit Card Application |
      | Business Credit Card             | sourcing_details.xlsx | home                 | 0                           | Credit Card Application |
      | Card Limit Update                | sourcing_details.xlsx | home                 | 0                           | Credit Card Application |
      | Corporate Credit Card            | sourcing_details.xlsx | home                 | 0                           | Credit Card Application |
      | Individual Business Credit Card  | sourcing_details.xlsx | home                 | 0                           | Credit Card Application |
      | Individual Corporate Credit Card | sourcing_details.xlsx | home                 | 0                           | Credit Card Application |


  @ImplementedBy-yash.sharma
    @Release3
  Scenario Outline: ACAUTOCAS-3487:  Validate Employee Name
    And the user starts creating a "<ApplicationType>"
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row <SourcingDetails_home_rowNum>
    When the user starts filling the sourcing details
    And selects the Employee Name for "<RequestType>"
    Then the user should be able to do so from the list of values
    And the field Employee Name should appear only when the sourcing channel is selected as internal
    Examples:
      | RequestType                      | SourcingDetailsWB     | SourcingDetails_home | SourcingDetails_home_rowNum | ApplicationType         |
      | New Credit Card Application      | sourcing_details.xlsx | home                 | 0                           | Credit Card Application |
      | Add-on Card                      | sourcing_details.xlsx | home                 | 0                           | Credit Card Application |
      | Business Credit Card             | sourcing_details.xlsx | home                 | 0                           | Credit Card Application |
      | Card Limit Update                | sourcing_details.xlsx | home                 | 0                           | Credit Card Application |
      | Corporate Credit Card            | sourcing_details.xlsx | home                 | 0                           | Credit Card Application |
      | Individual Business Credit Card  | sourcing_details.xlsx | home                 | 0                           | Credit Card Application |
      | Individual Corporate Credit Card | sourcing_details.xlsx | home                 | 0                           | Credit Card Application |

  @ImplementedBy-yash.sharma
    @Release3
  Scenario Outline: ACAUTOCAS-3476:  Validate Application Form Number
    And the user starts creating a "<ApplicationType>"
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row <SourcingDetails_home_rowNum>
    When tries entering the Application Form Number for "<RequestType>"
    Then the user should be able to enter "alphabets,numbers and hyphen"
    And the user should not be able to enter more than 13 characters
    Examples:
      | RequestType                      | SourcingDetailsWB     | SourcingDetails_home | SourcingDetails_home_rowNum | ApplicationType         |
      | New Credit Card Application      | sourcing_details.xlsx | home                 | 90                          | Credit Card Application |
      | Add-on Card                      | sourcing_details.xlsx | home                 | 90                          | Credit Card Application |
      | Business Credit Card             | sourcing_details.xlsx | home                 | 90                          | Credit Card Application |
      | Card Limit Update                | sourcing_details.xlsx | home                 | 90                          | Credit Card Application |
      | Corporate Credit Card            | sourcing_details.xlsx | home                 | 90                          | Credit Card Application |
      | Individual Business Credit Card  | sourcing_details.xlsx | home                 | 90                          | Credit Card Application |
      | Individual Corporate Credit Card | sourcing_details.xlsx | home                 | 90                          | Credit Card Application |

  @ImplementedBy-yash.sharma
    @Release3
  Scenario Outline: ACAUTOCAS-3481:  Validate Lead Number CRM
    And the user starts creating a "<ApplicationType>"
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row <SourcingDetails_home_rowNum>
    When tries entering the Lead Number CRM for "<RequestType>"
    Then the user should only be able to enter alphanumeric characters, underscore, hyphen and forward slash upto 25 characters
    Examples:
      | RequestType                      | SourcingDetailsWB     | SourcingDetails_home | SourcingDetails_home_rowNum | ApplicationType         |
      | New Credit Card Application      | sourcing_details.xlsx | home                 | 90                          | Credit Card Application |
      | Add-on Card                      | sourcing_details.xlsx | home                 | 90                          | Credit Card Application |
      | Business Credit Card             | sourcing_details.xlsx | home                 | 90                          | Credit Card Application |
      | Card Limit Update                | sourcing_details.xlsx | home                 | 90                          | Credit Card Application |
      | Corporate Credit Card            | sourcing_details.xlsx | home                 | 90                          | Credit Card Application |
      | Individual Business Credit Card  | sourcing_details.xlsx | home                 | 90                          | Credit Card Application |
      | Individual Corporate Credit Card | sourcing_details.xlsx | home                 | 90                          | Credit Card Application |

  @ImplementedBy-rishabh.sachan
    @Release3
  Scenario Outline: ACAUTOCAS-2556:  Validate the requested rate is defaulted from the repayment policy and it can be changed at sourcing for <Loan_Type>
    And user create new application for "<Loan_Type>"
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row <SourcingDetails_home_rowNum>
    And user navigates to sourcing tab
    When the user selects the product
    Then the rate is defaulted as per the repayment policy
    And rate is editable
    And the user can change the rate
    Examples:
      | Loan_Type               | SourcingDetailsWB     | SourcingDetails_home | SourcingDetails_home_rowNum |
      | Personal Loan           | sourcing_details.xlsx | home                 | 157                         |
      | Auto Loan               | sourcing_details.xlsx | home                 | 158                         |
      | Home Loan               | sourcing_details.xlsx | home                 | 159                         |
      | Education Loan          | sourcing_details.xlsx | home                 | 160                         |
      | Agriculture Loan        | sourcing_details.xlsx | home                 | 161                         |
      | Commercial Vehicle Loan | sourcing_details.xlsx | home                 | 115                         |
      | Gold Loan               | sourcing_details.xlsx | home                 | 116                         |
      | Loan Against Property   | sourcing_details.xlsx | home                 | 117                         |

  @ImplementedBy-rishabh.sachan
    @Release3
  Scenario Outline: ACAUTOCAS-2555: Validate Tenure In <Loan_Type>
    And user create new application for "<Loan_Type>"
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row <SourcingDetails_home_rowNum>
    And user navigates to sourcing tab
    When the user selects the product
    And enters the amount requested
    Then the Tenure In field should be defaulted as the value maintained in the repayment policy
    And tenure in field should be disabled
    Examples:
      | Loan_Type               | SourcingDetailsWB     | SourcingDetails_home | SourcingDetails_home_rowNum |
      | Personal Loan           | sourcing_details.xlsx | home                 | 157                         |
      | Auto Loan               | sourcing_details.xlsx | home                 | 158                         |
      | Home Loan               | sourcing_details.xlsx | home                 | 159                         |
      | Education Loan          | sourcing_details.xlsx | home                 | 160                         |
      | Agriculture Loan        | sourcing_details.xlsx | home                 | 161                         |
      | Commercial Equipment    | sourcing_details.xlsx | home                 | 114                         |
      | Commercial Vehicle Loan | sourcing_details.xlsx | home                 | 115                         |
      | Loan Against Property   | sourcing_details.xlsx | home                 | 117                         |
      | Gold Loan               | sourcing_details.xlsx | home                 | 116                         |


  @ImplementedBy-rishabh.sachan
    @Release3
  Scenario Outline: ACAUTOCAS-2560: Capture the distance from the sourcing branch <Loan_Type>
    And user create new application for "<Loan_Type>"
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row <SourcingDetails_home_rowNum>
    And user navigates to sourcing tab
    When the user enters the distance from the sourcing branch
    Then distance from the sourcing branch field should only allow capturing numeric value
    Examples:
      | Loan_Type               | SourcingDetailsWB     | SourcingDetails_home | SourcingDetails_home_rowNum |
      | Personal Loan           | sourcing_details.xlsx | home                 | 157                         |
      | Auto Loan               | sourcing_details.xlsx | home                 | 158                         |
      | Home Loan               | sourcing_details.xlsx | home                 | 159                         |
      | Education Loan          | sourcing_details.xlsx | home                 | 160                         |
      | Agriculture Loan        | sourcing_details.xlsx | home                 | 161                         |
      | Commercial Equipment    | sourcing_details.xlsx | home                 | 114                         |
      | Commercial Vehicle Loan | sourcing_details.xlsx | home                 | 115                         |
      | Loan Against Property   | sourcing_details.xlsx | home                 | 117                         |
      | Gold Loan               | sourcing_details.xlsx | home                 | 116                         |
      | Omni Loan               | sourcing_details.xlsx | home                 | 118                         |


  @ImplementedBy-manish.yadav2
    @Release3
  Scenario Outline: ACAUTOCAS-2553: Tick the Image Based processing checkbox
    And user create new application for "<Loan_Type>"
    And user reads data from the excel file "<PersonalInformationWB>" under sheet "<PersonalInformation_SheetHome>" and row <PersonalInformation_HomeRowNum>
    And user fills home page of personal information
    And user reads data from the excel file "<PersonalInformationWB>" under sheet "<PersonalInformation_SheetIdentification>" and row <PersonalInformation_IdentificationRowNum>
    And user fills identification section of personal information
    And user reads data from the excel file "<PersonalInformationWB>" under sheet "<PersonalInformation_SheetAddress>" and row <PersonalInformation_AddressRowNum>
    And user fills address
    And user clicks on checks for duplicates
    And user clicks on save and next
    And user reads data from the excel file "<EmployementDetailsWB>" under sheet "<EmployementDetails_SheetHome>" and row <EmployementDetails_HomeRowNum>
    And user fills employment details for "<OccupationType>"
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row <SourcingDetails_home_rowNum>
    And user navigates to sourcing tab
    When user fills and saves sourcing details with checks the image based processing checkbox
    Then the image based processing should be marked true for the application
    And the checkbox should be enabled
    Examples:
      | Loan_Type | SourcingDetails_home_rowNum | SourcingDetailsWB     | SourcingDetails_home | EmployementDetailsWB    | EmployementDetails_SheetHome | EmployementDetails_HomeRowNum | PersonalInformationWB     | PersonalInformation_SheetHome | PersonalInformation_HomeRowNum | PersonalInformation_SheetIdentification | PersonalInformation_IdentificationRowNum | PersonalInformation_SheetAddress | PersonalInformation_AddressRowNum | OccupationType |
      | Auto Loan | 156                         | sourcing_details.xlsx | home                 | employment_details.xlsx | home                         | 74                            | personal_information.xlsx | home                          | 0                              | identification                          | 1                                        | address                          | 28                                | Agriculture    |

  @ImplementedBy-manish.yadav2
    @Release3
  Scenario Outline: ACAUTOCAS-3468: Validate Product Processor
    And the user starts creating a "<ApplicationType>"
    When tries entering the Product Processor for "<RequestType>"
    Then the user should not be able to change the value
    And Product Processor should be auto populated as INTERNAL for applications sourced through CAS UI
    Examples:
      | RequestType                      | ApplicationType         |
      | New Credit Card Application      | Credit Card Application |
      | Add-on Card                      | Credit Card Application |
      | Business Credit Card             | Credit Card Application |
      | Card Limit Update                | Credit Card Application |
      | Corporate Credit Card            | Credit Card Application |
      | Individual Business Credit Card  | Credit Card Application |
      | Individual Corporate Credit Card | Credit Card Application |

  @ImplementedBy-manish.yadav2
    @Release3
  Scenario Outline: ACAUTOCAS-3486: Validate Channel Type
    And the user starts creating a "<ApplicationType>"
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row <SourcingDetails_home_rowNum>
    When the user starts filling the sourcing details
    And tries selecting the Channel Type for "<RequestType>"
    Then the user should be able to do so from the dropdown
    And the field channel type should appear only when the sourcing channel is selected as internal
    Examples:
      | RequestType                      | ApplicationType         | SourcingDetailsWB     | SourcingDetails_home | SourcingDetails_home_rowNum |
      | New Credit Card Application      | Credit Card Application | sourcing_details.xlsx | home                 | 0                           |
      | Add-on Card                      | Credit Card Application | sourcing_details.xlsx | home                 | 0                           |
      | Business Credit Card             | Credit Card Application | sourcing_details.xlsx | home                 | 0                           |
      | Card Limit Update                | Credit Card Application | sourcing_details.xlsx | home                 | 0                           |
      | Corporate Credit Card            | Credit Card Application | sourcing_details.xlsx | home                 | 0                           |
      | Individual Business Credit Card  | Credit Card Application | sourcing_details.xlsx | home                 | 0                           |
      | Individual Corporate Credit Card | Credit Card Application | sourcing_details.xlsx | home                 | 0                           |


  @ImplementedBy-rishabh.sachan
    @Release3
  Scenario Outline: ACAUTOCAS-3479: Validate Priority
    And the user starts creating a "<ApplicationType>"
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row <SourcingDetails_home_rowNum>
    And user fills request type of credit card application as "<RequestType>"
    When the user starts filling the sourcing details
    And tries entering the Priority for "<RequestType>"
    Then the priority should be a dropdown with values as priority and non-priority
    And the user can select any value of priority
    Examples:
      | RequestType                      | ApplicationType         | SourcingDetailsWB     | SourcingDetails_home | SourcingDetails_home_rowNum |
      | New Credit Card Application      | Credit Card Application | sourcing_details.xlsx | home                 | 93                          |
      | Add-on Card                      | Credit Card Application | sourcing_details.xlsx | home                 | 93                          |
      | Business Credit Card             | Credit Card Application | sourcing_details.xlsx | home                 | 93                          |
      | Card Limit Update                | Credit Card Application | sourcing_details.xlsx | home                 | 93                          |
      | Corporate Credit Card            | Credit Card Application | sourcing_details.xlsx | home                 | 93                          |
      | Individual Business Credit Card  | Credit Card Application | sourcing_details.xlsx | home                 | 93                          |
      | Individual Corporate Credit Card | Credit Card Application | sourcing_details.xlsx | home                 | 93                          |

  @ImplementedBy-rishabh.sachan
    @Release3
  Scenario Outline: ACAUTOCAS-3480: Validate Distance from sourcing branch in kms
    And the user starts creating a "<ApplicationType>"
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row <SourcingDetails_home_rowNum>
    And user fills request type of credit card application as "<RequestType>"
    When the user starts filling the sourcing details
    And tries entering the Distance from sourcing branch in kms for "<RequestType>"
    Then the user should be able to enter a numeric field which accepts five digits before decimal and two after it
    Examples:
      | RequestType                      | ApplicationType         | SourcingDetailsWB     | SourcingDetails_home | SourcingDetails_home_rowNum |
      | New Credit Card Application      | Credit Card Application | sourcing_details.xlsx | home                 | 93                          |
      | Add-on Card                      | Credit Card Application | sourcing_details.xlsx | home                 | 93                          |
      | Business Credit Card             | Credit Card Application | sourcing_details.xlsx | home                 | 93                          |
      | Card Limit Update                | Credit Card Application | sourcing_details.xlsx | home                 | 93                          |
      | Corporate Credit Card            | Credit Card Application | sourcing_details.xlsx | home                 | 93                          |
      | Individual Business Credit Card  | Credit Card Application | sourcing_details.xlsx | home                 | 93                          |
      | Individual Corporate Credit Card | Credit Card Application | sourcing_details.xlsx | home                 | 93                          |

  @ImplementedBy-rishabh.sachan
    @Release3
  Scenario Outline: ACAUTOCAS-3483:  Validate Sourcing Channel
    And the user starts creating a "<ApplicationType>"
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row <SourcingDetails_home_rowNum>
    And user fills request type of credit card application as "<RequestType>"
    When the user starts filling the sourcing details
    And tries selecting the Sourcing Channel for "<RequestType>"
    Then the user should be able to select the sourcing channel from a dropdown
    And the values of sourcing channel dropdown should be "<SourcingChannel>"
    Examples:
      | RequestType                      | ApplicationType         | SourcingDetailsWB     | SourcingDetails_home | SourcingDetails_home_rowNum | SourcingChannel               |
      | New Credit Card Application      | Credit Card Application | sourcing_details.xlsx | home                 | 93                          | Connector, DSA, DST, Internal |
      | Add-On Card                      | Credit Card Application | sourcing_details.xlsx | home                 | 93                          | Connector, DSA, DST, Internal |
      | Business Credit Card             | Credit Card Application | sourcing_details.xlsx | home                 | 93                          | Connector, DSA, DST, Internal |
      | Card Limit Update                | Credit Card Application | sourcing_details.xlsx | home                 | 93                          | Connector, DSA, DST, Internal |
      | Corporate Credit Card            | Credit Card Application | sourcing_details.xlsx | home                 | 93                          | Connector, DSA, DST, Internal |
      | Individual Business Credit Card  | Credit Card Application | sourcing_details.xlsx | home                 | 93                          | Connector, DSA, DST, Internal |
      | Individual Corporate Credit Card | Credit Card Application | sourcing_details.xlsx | home                 | 93                          | Connector, DSA, DST, Internal |


  @ImplementedBy-yash.sharma
    @Release3
  Scenario Outline: ACAUTOCAS-4765: Validate Amount Requested
    And user create new application for "<Loan_Type>"
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row <SourcingDetails_home_rowNum>
    And user navigates to sourcing tab
    When the user enters the amount requested
    Then the user should be able to enter amount greater than zero
    And the user should be able to enter amount in 18 , 2 format
    Examples:
      | Loan_Type               | SourcingDetailsWB     | SourcingDetails_home | SourcingDetails_home_rowNum |
      | Personal Loan           | sourcing_details.xlsx | home                 | 98                          |
      | Auto Loan               | sourcing_details.xlsx | home                 | 99                          |
      | Home Loan               | sourcing_details.xlsx | home                 | 100                         |
      | Education Loan          | sourcing_details.xlsx | home                 | 101                         |
      | Agriculture Loan        | sourcing_details.xlsx | home                 | 101                         |
      | Commercial Equipment    | sourcing_details.xlsx | home                 | 114                         |
      | Commercial Vehicle Loan | sourcing_details.xlsx | home                 | 115                         |
      | Gold Loan               | sourcing_details.xlsx | home                 | 116                         |
      | Loan Against Property   | sourcing_details.xlsx | home                 | 117                         |

  @ImplementedBy-yash.sharma
    @Release3
  Scenario Outline: ACAUTOCAS-3473:  Capturing the Subsidy Lock in Period
    And user create new application for "<Loan_Type>"
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row <SourcingDetails_home_rowNum>
    And user navigates to sourcing tab
    And subsidy is configured for "<Loan_Type>"
    And Subsidy section is available on the sourcing tab
    When the user enters the subsidy Lock in period
    Then Lock in Period should get stored
    And Lock in Period should be a numeric field
    Examples:
      | Loan_Type | SourcingDetailsWB     | SourcingDetails_home | SourcingDetails_home_rowNum |
      | Home Loan | sourcing_details.xlsx | home                 | 0                           |


  @ImplementedBy-manish.yadav2
    @Release3
  Scenario Outline: ACAUTOCAS-4766:  Validate the top up Amount field
    And user create new application for "<Loan_Type>"
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row <SourcingDetails_home_rowNum>
    And user navigates to sourcing tab
    When the user selects the Application Type as "<ApplicationType>"
    Then the Top up Amount field should be displayed for capturing the Top up amount requested
    And Amount should be an enterable money field
    And the default currency should be the scheme currency
    And the format should be 18 , 2
    Examples:
      | Loan_Type        | SourcingDetailsWB     | SourcingDetails_home | SourcingDetails_home_rowNum | ApplicationType              |
      | Education Loan   | sourcing_details.xlsx | home                 | 88                          | Balance Transfer with Top-up |
      | Home Loan        | sourcing_details.xlsx | home                 | 89                          | Balance Transfer with Top-up |
      | Auto Loan        | sourcing_details.xlsx | home                 | 90                          | Balance Transfer with Top-up |
      | Personal Loan    | sourcing_details.xlsx | home                 | 91                          | Balance Transfer with Top-up |
      | Agriculture Loan | sourcing_details.xlsx | home                 | 92                          | Balance Transfer with Top-up |


  @ImplementedBy-manish.yadav2
    @Release3
  Scenario Outline: ACAUTOCAS-3474: Capturing the Subsidy Method
    And user create new application for "<LoanType>"
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row <SourcingDetails_home_rowNum>
    And user navigates to sourcing tab
    And Subsidy section is available on the sourcing tab
    When the user selects the Subsidy Method as "<SubsidyMethod>"
    Then Subsidy Method should get stored
    And subsidy rate based field should be available for capturing the subsidy rate
    Examples:
      | LoanType  | SourcingDetailsWB     | SourcingDetails_home | SourcingDetails_home_rowNum | SubsidyMethod |
      | Home Loan | sourcing_details.xlsx | home                 | 88                          | Rate Based    |

  @ImplementedBy-manish.yadav2
    @Release3
  Scenario Outline: ACAUTOCAS-3474: Capturing the Subsidy Method
    And user create new application for "<LoanType>"
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row <SourcingDetails_home_rowNum>
    And user navigates to sourcing tab
    And Subsidy section is available on the sourcing tab
    When the user selects the Subsidy Method as "<SubsidyMethod>"
    Then Subsidy Method should get stored
    And subsidy amount based field should be available for capturing the subsidy amount
    Examples:
      | LoanType  | SourcingDetailsWB     | SourcingDetails_home | SourcingDetails_home_rowNum | SubsidyMethod |
      | Home Loan | sourcing_details.xlsx | home                 | 88                          | Amount Based  |


  @ImplementedBy-rishabh.sachan
    @Release3
  Scenario Outline: ACAUTOCAS-4650: Validate when the application type is selected as Balance Transfer without Top up, Loan Category field is displayed
    And user create new application for "<Loan_Type>"
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row <SourcingDetails_home_rowNum>
    And user navigates to sourcing tab
    When the user selects the Application type as "<Application_type>"
    Then "<Field_Name>" is displayed on sourcing detail tab
    And "<Field_Name>" is enable for selection
    Examples:
      | Loan_Type        | SourcingDetailsWB     | SourcingDetails_home | SourcingDetails_home_rowNum | Field_Name         | Application_type                |
      | Personal Loan    | sourcing_details.xlsx | home                 | 157                         | End Use of BT loan | Balance Transfer without Top-up |
      | Auto Loan        | sourcing_details.xlsx | home                 | 158                         | End Use of BT loan | Balance Transfer without Top-up |
      | Home Loan        | sourcing_details.xlsx | home                 | 159                         | End Use of BT loan | Balance Transfer without Top-up |
      | Education Loan   | sourcing_details.xlsx | home                 | 160                         | End Use of BT loan | Balance Transfer without Top-up |
      | Agriculture Loan | sourcing_details.xlsx | home                 | 161                         | End Use of BT loan | Balance Transfer without Top-up |
      | Personal Loan    | sourcing_details.xlsx | home                 | 157                         | Reason for BT      | Balance Transfer without Top-up |
      | Auto Loan        | sourcing_details.xlsx | home                 | 158                         | Reason for BT      | Balance Transfer without Top-up |
      | Home Loan        | sourcing_details.xlsx | home                 | 159                         | Reason for BT      | Balance Transfer without Top-up |
      | Education Loan   | sourcing_details.xlsx | home                 | 160                         | Reason for BT      | Balance Transfer without Top-up |
      | Agriculture Loan | sourcing_details.xlsx | home                 | 161                         | Reason for BT      | Balance Transfer without Top-up |
      | Personal Loan    | sourcing_details.xlsx | home                 | 157                         | End Use of BT loan | Balance Transfer with Top-up    |
      | Auto Loan        | sourcing_details.xlsx | home                 | 158                         | End Use of BT loan | Balance Transfer with Top-up    |
      | Home Loan        | sourcing_details.xlsx | home                 | 159                         | End Use of BT loan | Balance Transfer with Top-up    |
      | Education Loan   | sourcing_details.xlsx | home                 | 160                         | End Use of BT loan | Balance Transfer with Top-up    |
      | Agriculture Loan | sourcing_details.xlsx | home                 | 161                         | End Use of BT loan | Balance Transfer with Top-up    |
      | Personal Loan    | sourcing_details.xlsx | home                 | 157                         | Reason for BT      | Balance Transfer with Top-up    |
      | Auto Loan        | sourcing_details.xlsx | home                 | 158                         | Reason for BT      | Balance Transfer with Top-up    |
      | Home Loan        | sourcing_details.xlsx | home                 | 159                         | Reason for BT      | Balance Transfer with Top-up    |
      | Education Loan   | sourcing_details.xlsx | home                 | 160                         | Reason for BT      | Balance Transfer with Top-up    |
      | Agriculture Loan | sourcing_details.xlsx | home                 | 161                         | Reason for BT      | Balance Transfer with Top-up    |

  @ImplementedBy-rishabh.sachan
    @Release3
  Scenario Outline: ACAUTOCAS-3468:  Validate Product Processor
    And user create new application for "<Loan_Type>"
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row <SourcingDetails_home_rowNum>
    And user navigates to sourcing tab
    When tries entering the Product Processor
    Then Product Processor should be auto populated as Internal
    And Product Processor should be disabled
    Examples:
      | Loan_Type               | SourcingDetailsWB     | SourcingDetails_home | SourcingDetails_home_rowNum |
      | Personal Loan           | sourcing_details.xlsx | home                 | 157                         |
      | Auto Loan               | sourcing_details.xlsx | home                 | 158                         |
      | Home Loan               | sourcing_details.xlsx | home                 | 159                         |
      | Education Loan          | sourcing_details.xlsx | home                 | 160                         |
      | Agriculture Loan        | sourcing_details.xlsx | home                 | 161                         |
      | Commercial Equipment    | sourcing_details.xlsx | home                 | 114                         |
      | Commercial Vehicle Loan | sourcing_details.xlsx | home                 | 115                         |
      | Loan Against Property   | sourcing_details.xlsx | home                 | 117                         |
      | Gold Loan               | sourcing_details.xlsx | home                 | 116                         |
      | Omni Loan               | sourcing_details.xlsx | home                 | 118                         |


  @ImplementedBy-rishabh.sachan
    @Release3
  Scenario Outline: ACAUTOCAS-3472:  Capturing the Subsidy Type
    And user create new application for "<Loan_Type>"
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row <SourcingDetails_home_rowNum>
    And user navigates to sourcing tab
    And subsidy is configured for "<Loan_Type>"
    And Subsidy section is available on the sourcing tab
    When the user selects the Subsidy Type from the list
    Then the subsidy type should get selected as per the maintenance for the Product type
    Examples:
      | Loan_Type | SourcingDetailsWB     | SourcingDetails_home | SourcingDetails_home_rowNum |
      | Home Loan | sourcing_details.xlsx | home                 | 79                          |
      | Home Loan | sourcing_details.xlsx | home                 | 80                          |

  @ImplementedBy-kanika.mahal
    @Release3
  Scenario Outline: ACAUTOCAS-3475:  Validate Branch
    And the user starts creating a "Credit Card Application"
    And user reads data from the excel file "sourcing_details.xlsx" under sheet "home" and row 93
    And user fills request type of credit card application as "<RequestType>"
    Then Validate Branch should be auto populated as the logged in branch
    And the user should be able to change the branch to any other branch to which he has access
    Examples:
      | RequestType                      |
      | New Credit Card Application      |
      | Add-on Card                      |
      | Business Credit Card             |
      | Card Limit Update                |
      | Corporate Credit Card            |
      | Individual Business Credit Card  |
      | Individual Corporate Credit Card |

  @ImplementedBy-kanika.mahal
    @Release3
  Scenario Outline: ACAUTOCAS-3482:  Validate Branch Risk Category
    And the user starts creating a "Credit Card Application"
    And user reads data from the excel file "sourcing_details.xlsx" under sheet "home" and row 93
    When the user starts filling the sourcing details
    And tries entering the Branch Risk Category for "<RequestType>"
    Then the user should not be able to fill branch risk category
    And the field should be disabled and auto populated basis the Branch Risk Category maintained for the processing branch in the Organization Branches Master
    Examples:
      | RequestType                      |
      | New Credit Card Application      |
      | Add-On Card                      |
      | Business Credit Card             |
      | Card Limit Update                |
      | Corporate Credit Card            |
      | Individual Business Credit Card  |
      | Individual Corporate Credit Card |


  @ImplementedBy-kanika.mahal
    @Release3
  Scenario Outline: ACAUTOCAS-2566:  Sourcing channel is selected as Employee Referral
    And user create new application for "<Loan_Type>"
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row <SourcingDetails_home_rowNum>
    When user navigates to sourcing tab
    When the Sourcing Channel is chosen as Employee Referral
    Then Employee Name field is visible for capturing the details of the employee who sourced the application
    And Employee Number field is visible for capturing the details of the employee who sourced the application
    Examples:
      | Loan_Type               | SourcingDetailsWB     | SourcingDetails_home | SourcingDetails_home_rowNum |
      | Personal Loan           | sourcing_details.xlsx | home                 | 192                         |
      | Auto Loan               | sourcing_details.xlsx | home                 | 193                         |
      | Home Loan               | sourcing_details.xlsx | home                 | 194                         |
      | Education Loan          | sourcing_details.xlsx | home                 | 195                         |
      | Agriculture Loan        | sourcing_details.xlsx | home                 | 196                         |
      | Commercial Equipment    | sourcing_details.xlsx | home                 | 197                         |
      | Commercial Vehicle Loan | sourcing_details.xlsx | home                 | 198                         |
      | Gold Loan               | sourcing_details.xlsx | home                 | 199                         |
      | Loan Against Property   | sourcing_details.xlsx | home                 | 200                         |
      | Omni Loan               | sourcing_details.xlsx | home                 | 201                         |

  @ImplementedBy-kanika.mahal
    @Release3
  Scenario Outline: ACAUTOCAS-2547:  Validate the Product
    And user create new application for "<Loan_Type>"
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row <SourcingDetails_home_rowNum>
    When user navigates to sourcing tab
    Then the product is populated as the default product maintained in Product Master as per Product Type
    And it is enabled
    Examples:
      | Loan_Type               | SourcingDetailsWB     | SourcingDetails_home | SourcingDetails_home_rowNum |
      | Personal Loan           | sourcing_details.xlsx | home                 | 181                         |
      | Auto Loan               | sourcing_details.xlsx | home                 | 182                         |
      | Home Loan               | sourcing_details.xlsx | home                 | 183                         |
      | Education Loan          | sourcing_details.xlsx | home                 | 184                         |
      | Agriculture Loan        | sourcing_details.xlsx | home                 | 185                         |
      | Commercial Equipment    | sourcing_details.xlsx | home                 | 186                         |
      | Commercial Vehicle Loan | sourcing_details.xlsx | home                 | 187                         |
      | Gold Loan               | sourcing_details.xlsx | home                 | 188                         |
      | Loan Against Property   | sourcing_details.xlsx | home                 | 189                         |
      | Omni Loan               | sourcing_details.xlsx | home                 | 190                         |

  @ImplementedBy-kanika.mahal
    @Release3
  Scenario Outline: ACAUTOCAS-2568:  Sourcing channel is selected as Connector
    And user create new application for "<Loan_Type>"
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row <SourcingDetails_home_rowNum>
    When user navigates to sourcing tab
    When the Sourcing Channel is chosen as Connector
    Then Connector Code and Connector Name fields are visible for capturing details of the connector who sourced the application
    And the Connector is filtered basis the Branch and Product mapped
    Examples:
      | Loan_Type               | SourcingDetailsWB     | SourcingDetails_home | SourcingDetails_home_rowNum |
      | Personal Loan           | sourcing_details.xlsx | home                 | 191                         |
      | Auto Loan               | sourcing_details.xlsx | home                 | 202                         |
      | Home Loan               | sourcing_details.xlsx | home                 | 203                         |
      | Commercial Vehicle Loan | sourcing_details.xlsx | home                 | 204                         |
      | Loan Against Property   | sourcing_details.xlsx | home                 | 205                         |

  @ImplementedBy-kanika.mahal
    @Release3
  Scenario Outline: ACAUTOCAS-2567:  Sourcing channel is selected as Referral
    And user create new application for "<Loan_Type>"
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row <SourcingDetails_home_rowNum>
    And user navigates to sourcing tab
    When the Sourcing Channel is chosen as Referral
    And Referral Code is selected
    Then DSE Code and DSE Name fields are visible for capturing the details of the DSE mapped to the DSA of referral
    And the DSE is filtered basis the Branch, Product and DSA mapped for referral
    Examples:
      | Loan_Type               | SourcingDetailsWB     | SourcingDetails_home | SourcingDetails_home_rowNum |
      | Personal Loan           | sourcing_details.xlsx | home                 | 207                         |
      | Auto Loan               | sourcing_details.xlsx | home                 | 208                         |
      | Home Loan               | sourcing_details.xlsx | home                 | 209                         |
      | Education Loan          | sourcing_details.xlsx | home                 | 210                         |
      | Agriculture Loan        | sourcing_details.xlsx | home                 | 211                         |
      | Commercial Equipment    | sourcing_details.xlsx | home                 | 212                         |
      | Commercial Vehicle Loan | sourcing_details.xlsx | home                 | 213                         |
      | Gold Loan               | sourcing_details.xlsx | home                 | 214                         |
      | Loan Against Property   | sourcing_details.xlsx | home                 | 215                         |
      | Omni Loan               | sourcing_details.xlsx | home                 | 216                         |

  @ImplementedBy-kanika.mahal
    @Release3
  Scenario Outline: ACAUTOCAS-2568:  Sourcing channel is selected as Connector
    And user create new application for "<Loan_Type>"
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row <SourcingDetails_home_rowNum>
    And user navigates to sourcing tab
    When the Sourcing Channel is chosen as Connector
    And Connector Code is selected
    Then DSE Code and DSE Name fields are visible for capturing the details of the DSE mapped to the DSA who sourced the application
    And the DSE is filtered basis the Branch, Product and DSA mapped
    Examples:
      | Loan_Type               | SourcingDetailsWB     | SourcingDetails_home | SourcingDetails_home_rowNum |
      | Personal Loan           | sourcing_details.xlsx | home                 | 217                         |
      | Auto Loan               | sourcing_details.xlsx | home                 | 218                         |
      | Home Loan               | sourcing_details.xlsx | home                 | 219                         |
      | Commercial Vehicle Loan | sourcing_details.xlsx | home                 | 223                         |
      | Loan Against Property   | sourcing_details.xlsx | home                 | 225                         |
      | Omni Loan               | sourcing_details.xlsx | home                 | 226                         |

  @ImplementedBy-kanika.mahal
    @Release3
  Scenario Outline: ACAUTOCAS-2561:  Capture the Sourcing RM Name
    And user create new application for "<Loan_Type>"
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row <SourcingDetails_home_rowNum>
    And user navigates to sourcing tab
    When the user selects the Sourcing RM
    Then the list should only display the RMs who are mapped to the Loan Branch, Product, Active and mapped in the Officer master
    Examples:
      | Loan_Type               | SourcingDetailsWB     | SourcingDetails_home | SourcingDetails_home_rowNum |
      | Personal Loan           | sourcing_details.xlsx | home                 | 227                         |
      | Auto Loan               | sourcing_details.xlsx | home                 | 228                         |
      | Home Loan               | sourcing_details.xlsx | home                 | 229                         |
      | Education Loan          | sourcing_details.xlsx | home                 | 230                         |
      | Agriculture Loan        | sourcing_details.xlsx | home                 | 231                         |
      | Commercial Equipment    | sourcing_details.xlsx | home                 | 232                         |
      | Commercial Vehicle Loan | sourcing_details.xlsx | home                 | 233                         |
      | Gold Loan               | sourcing_details.xlsx | home                 | 234                         |
      | Loan Against Property   | sourcing_details.xlsx | home                 | 235                         |
      | Omni Loan               | sourcing_details.xlsx | home                 | 236                         |

  @ImplementedBy-kanika.mahal
    @Release3
  Scenario Outline: ACAUTOCAS-2562:  Auto population of the Reporting Supervisor Name
    And user create new application for "<Loan_Type>"
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row <SourcingDetails_home_rowNum>
    And user navigates to sourcing tab
    When the user selects the Sourcing RM Name
    Then the Reporting supervisor should get populated as the supervisor mapped to the RM in the Officer Master
    Examples:
      | Loan_Type               | SourcingDetailsWB     | SourcingDetails_home | SourcingDetails_home_rowNum |
      | Personal Loan           | sourcing_details.xlsx | home                 | 237                         |
      | Auto Loan               | sourcing_details.xlsx | home                 | 238                         |
      | Home Loan               | sourcing_details.xlsx | home                 | 239                         |
      | Education Loan          | sourcing_details.xlsx | home                 | 240                         |
      | Agriculture Loan        | sourcing_details.xlsx | home                 | 241                         |
      | Commercial Equipment    | sourcing_details.xlsx | home                 | 242                         |
      | Commercial Vehicle Loan | sourcing_details.xlsx | home                 | 243                         |
      | Gold Loan               | sourcing_details.xlsx | home                 | 244                         |
      | Loan Against Property   | sourcing_details.xlsx | home                 | 245                         |
      | Omni Loan               | sourcing_details.xlsx | home                 | 246                         |

  @ImplementedBy-kanika.mahal
    @Release3
  Scenario Outline: ACAUTOCAS-3478:  Validate Cross Sell Reference Number
    And the user starts creating a "Credit Card Application"
    And user reads data from the excel file "sourcing_details.xlsx" under sheet "home" and row 259
    When the user starts filling the sourcing details
    And tries entering the Cross Sell Reference no for "<RequestType>"
    Then the field should be editable
    Examples:
      | RequestType                      |
      | New Credit Card Application      |
      | Add-On Card                      |
      | Business Credit Card             |
      | Card Limit Update                |
      | Corporate Credit Card            |
      | Individual Business Credit Card  |
      | Individual Corporate Credit Card |

  @ImplementedBy-kanika.mahal
    @Release3
  Scenario Outline: ACAUTOCAS-3477:  Validate Lead ID
    And the user starts creating a "Credit Card Application"
    And user reads data from the excel file "sourcing_details.xlsx" under sheet "home" and row 259
    When the user starts filling the sourcing details
    And tries entering the Lead ID for "<RequestType>"
    Then the field should be disabled

    Examples:
      | RequestType                      |
      | New Credit Card Application      |
      | Add-On Card                      |
      | Business Credit Card             |
      | Card Limit Update                |
      | Corporate Credit Card            |
      | Individual Business Credit Card  |
      | Individual Corporate Credit Card |

  @ImplementedBy-kanika.mahal
    @Release3
  Scenario Outline: ACAUTOCAS-3485:  Validate Cards RM Name
    And the user starts creating a "Credit Card Application"
    And user reads data from the excel file "sourcing_details.xlsx" under sheet "home" and row 259
    When the user starts filling the sourcing details
    And tries selecting the Cards RM Name for "<RequestType>"
    Then the RMs should be filtered basis branch, product and active RMs in Officer Master
    Examples:
      | RequestType                      |
      | New Credit Card Application      |
      | Add-On Card                      |
      | Business Credit Card             |
      | Card Limit Update                |
      | Corporate Credit Card            |
      | Individual Business Credit Card  |
      | Individual Corporate Credit Card |

  @ImplementedBy-kanika.mahal
    @Release3
  Scenario Outline: ACAUTOCAS-2545: Validate Branch Risk Category
    And the user starts creating a "Credit Card Application"
    And user reads data from the excel file "sourcing_details.xlsx" under sheet "home" and row 93
    When the user starts filling the sourcing details
    And tries entering the Branch Risk Category for "<RequestType>"
    Then the Branch risk category should auto populate as per maintenance done in Organization Branch Master
    And Branch Risk Category should be disabled
    Examples:
      | RequestType                      |
      | New Credit Card Application      |
      | Add-On Card                      |
      | Business Credit Card             |
      | Card Limit Update                |
      | Corporate Credit Card            |
      | Individual Business Credit Card  |
      | Individual Corporate Credit Card |

  @ImplementedBy-kanika.mahal
    @Release3
  Scenario Outline: ACAUTOCAS-2558:  Capturing the Application Purpose Description
    And user create new application for "<Loan_Type>"
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row <SourcingDetails_home_rowNum>
    And user navigates to sourcing tab
    When the user can enter description using alphabets, numbers and special characters in Application Purpose Description
    Then the user can enter 4000 characters
    And the user can drag the text area to read
    Examples:
      | Loan_Type               | SourcingDetailsWB     | SourcingDetails_home | SourcingDetails_home_rowNum |
      | Personal Loan           | sourcing_details.xlsx | home                 | 83                          |
      | Home Loan               | sourcing_details.xlsx | home                 | 83                          |
      | Education Loan          | sourcing_details.xlsx | home                 | 83                          |
      | Commercial Equipment    | sourcing_details.xlsx | home                 | 83                          |
      | Commercial Vehicle Loan | sourcing_details.xlsx | home                 | 83                          |
      | Gold Loan               | sourcing_details.xlsx | home                 | 83                          |
      | Loan Against Property   | sourcing_details.xlsx | home                 | 83                          |
      | Omni Loan               | sourcing_details.xlsx | home                 | 83                          |

  @ImplementedBy-kanika.mahal
    @Release3
  Scenario Outline: ACAUTOCAS-2571:  Sourcing channel is selected as SLI
    And user create new application for "<Loan_Type>"
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row <SourcingDetails_home_rowNum>
    And user navigates to sourcing tab
    When the Sourcing Channel is chosen as SLI
    And user clicks on save button
    Then either of village or city is mandatory to capture
    Examples:
      | Loan_Type             | SourcingDetailsWB     | SourcingDetails_home | SourcingDetails_home_rowNum |
      | Self Help Group       | sourcing_details.xlsx | home                 | 271                         |
      | Joint Liability Group | sourcing_details.xlsx | home                 | 271                         |
