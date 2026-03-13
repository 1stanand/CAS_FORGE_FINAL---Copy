@Epic-Loan_Application_Details
@Release2
@AuthoredBy-harshita.nayak
@ReviewedByDEV
@ImplementedBy-tushar.chauhan
@Conventional
Feature: Dependent Field Validation Of Identification in Seller details page

  Scenario Outline: ACAUTOCAS-1919:  In Selection of Seller Type field <tab_Name> is enabled
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user creates new application for "<Loan_Type>"
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row <SourcingDetails_home_rowNum>
    And user fills sourcing details
    And user reads data from the excel file "<PropertyDetailsWB>" under sheet "<PropertyDetails_home>" and row <PropertyDetails_home_rowNum>
    And user fills property details home page for seller details
    And user reads data from the excel file "<PropertyDetailsWB>" under sheet "<PropertyDetails_SellerDetails>" and row <PropertyDetails_SellerDetails_rowNum>
    When user fills "<Field_Name>" field on seller details
    Then "<tab_Name>" tab should be enabled

    Examples:
      | tab_Name       | Field_Name  | Loan_Type | SourceDataFile       | SheetName | RowNumber | SourcingDetailsWB     | SourcingDetails_home | SourcingDetails_home_rowNum | PropertyDetailsWB     | PropertyDetails_home | PropertyDetails_home_rowNum | PropertyDetails_SellerDetails | PropertyDetails_SellerDetails_rowNum |
      | identification | Seller Type | Home Loan | LoginDetailsCAS.xlsx | LoginData | 0         | sourcing_details.xlsx | home                 | 33                          | property_details.xlsx | home                 | 25                          | seller_details                | 27                                   |

  Scenario Outline: ACAUTOCAS-1920:  In Selection of <Type_of_Identification> with <Issue_Date> and <Expiry_Date>
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user creates new application for "<Loan_Type>"
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row <SourcingDetails_home_rowNum>
    And user fills sourcing details
    And user reads data from the excel file "<PropertyDetailsWB>" under sheet "<PropertyDetails_home>" and row <PropertyDetails_home_rowNum>
    And user fills property details home page for seller details
    And user reads data from the excel file "<PropertyDetailsWB>" under sheet "<PropertyDetails_SellerDetails>" and row <PropertyDetails_SellerDetails_rowNum>
    When user selects "<Type_of_Identification>" details with "<Issue_Date>" and "<Expiry_Date>"
    Then application "<Throws_notThrows>" on seller details page

    Examples:
      | Issue_Date                        | Expiry_Date                                             | Type_of_Identification | Loan_Type | SourceDataFile       | SheetName | RowNumber | SourcingDetailsWB     | SourcingDetails_home | SourcingDetails_home_rowNum | PropertyDetailsWB     | PropertyDetails_home | PropertyDetails_home_rowNum | PropertyDetails_SellerDetails | PropertyDetails_SellerDetails_rowNum | Throws_notThrows                   |
      | issue date less than current date | valid expiry date                                       | Aadhar No.             | Home Loan | LoginDetailsCAS.xlsx | LoginData | 0         | sourcing_details.xlsx | home                 | 33                          | property_details.xlsx | home                 | 25                          | seller_details                | 72                                   | does not throw any error           |
      | valid issue date                  | expiry date more than current date                      | Aadhar No.             | Home Loan | LoginDetailsCAS.xlsx | LoginData | 0         | sourcing_details.xlsx | home                 | 33                          | property_details.xlsx | home                 | 25                          | seller_details                | 73                                   | does not throw any error           |
      | valid issue date                  | expiry date more than issue date less than current date | Aadhar No.             | Home Loan | LoginDetailsCAS.xlsx | LoginData | 0         | sourcing_details.xlsx | home                 | 33                          | property_details.xlsx | home                 | 25                          | seller_details                | 74                                   | throws an error with error message |
      | issue date less than current date | valid expiry date                                       | KYC                    | Home Loan | LoginDetailsCAS.xlsx | LoginData | 0         | sourcing_details.xlsx | home                 | 33                          | property_details.xlsx | home                 | 25                          | seller_details                | 75                                   | does not throw any error           |
      | valid issue date                  | expiry date more than current date                      | KYC                    | Home Loan | LoginDetailsCAS.xlsx | LoginData | 0         | sourcing_details.xlsx | home                 | 33                          | property_details.xlsx | home                 | 25                          | seller_details                | 76                                   | does not throw any error           |
      | valid issue date                  | expiry date more than issue date less than current date | KYC                    | Home Loan | LoginDetailsCAS.xlsx | LoginData | 0         | sourcing_details.xlsx | home                 | 33                          | property_details.xlsx | home                 | 25                          | seller_details                | 77                                   | throws an error with error message |
      | issue date less than current date | valid expiry date                                       | Pan                    | Home Loan | LoginDetailsCAS.xlsx | LoginData | 0         | sourcing_details.xlsx | home                 | 33                          | property_details.xlsx | home                 | 25                          | seller_details                | 78                                   | does not throw any error           |
      | valid issue date                  | expiry date more than current date                      | Pan                    | Home Loan | LoginDetailsCAS.xlsx | LoginData | 0         | sourcing_details.xlsx | home                 | 33                          | property_details.xlsx | home                 | 25                          | seller_details                | 79                                   | does not throw any error           |
      | valid issue date                  | expiry date more than issue date less than current date | Pan                    | Home Loan | LoginDetailsCAS.xlsx | LoginData | 0         | sourcing_details.xlsx | home                 | 33                          | property_details.xlsx | home                 | 25                          | seller_details                | 80                                   | throws an error with error message |
      | issue date less than current date | valid expiry date                                       | Passport               | Home Loan | LoginDetailsCAS.xlsx | LoginData | 0         | sourcing_details.xlsx | home                 | 33                          | property_details.xlsx | home                 | 25                          | seller_details                | 81                                   | does not throw any error           |
      | valid issue date                  | expiry date more than current date                      | Passport               | Home Loan | LoginDetailsCAS.xlsx | LoginData | 0         | sourcing_details.xlsx | home                 | 33                          | property_details.xlsx | home                 | 25                          | seller_details                | 82                                   | does not throw any error           |
      | valid issue date                  | expiry date more than issue date less than current date | Passport               | Home Loan | LoginDetailsCAS.xlsx | LoginData | 0         | sourcing_details.xlsx | home                 | 33                          | property_details.xlsx | home                 | 25                          | seller_details                | 83                                   | throws an error with error message |
      | issue date less than current date | valid expiry date                                       | UID Token              | Home Loan | LoginDetailsCAS.xlsx | LoginData | 0         | sourcing_details.xlsx | home                 | 33                          | property_details.xlsx | home                 | 25                          | seller_details                | 84                                   | does not throw any error           |
      | valid issue date                  | expiry date more than current date                      | UID Token              | Home Loan | LoginDetailsCAS.xlsx | LoginData | 0         | sourcing_details.xlsx | home                 | 33                          | property_details.xlsx | home                 | 25                          | seller_details                | 85                                   | does not throw any error           |
      | valid issue date                  | expiry date more than issue date less than current date | UID Token              | Home Loan | LoginDetailsCAS.xlsx | LoginData | 0         | sourcing_details.xlsx | home                 | 33                          | property_details.xlsx | home                 | 25                          | seller_details                | 86                                   | throws an error with error message |

  Scenario Outline: ACAUTOCAS-1921:  In Selection of Passport without Issue_Date and Expiry_Date
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user creates new application for "<Loan_Type>"
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row <SourcingDetails_home_rowNum>
    And user fills sourcing details
    And user reads data from the excel file "<PropertyDetailsWB>" under sheet "<PropertyDetails_home>" and row <PropertyDetails_home_rowNum>
    And user fills property details home page for seller details
    And user reads data from the excel file "<PropertyDetailsWB>" under sheet "<PropertyDetails_SellerDetails>" and row <PropertyDetails_SellerDetails_rowNum>
    When user selects "<Type_of_Identification>" without Issue_Date and Expiry_Date
    Then seller identification details "<Throws_notThrows>"

    Examples:
      | Type_of_Identification | Loan_Type | SourceDataFile       | SheetName | RowNumber | SourcingDetailsWB     | SourcingDetails_home | SourcingDetails_home_rowNum | PropertyDetailsWB     | PropertyDetails_home | PropertyDetails_home_rowNum | PropertyDetails_SellerDetails | PropertyDetails_SellerDetails_rowNum | Throws_notThrows                   |
      | Passport               | Home Loan | LoginDetailsCAS.xlsx | LoginData | 0         | sourcing_details.xlsx | home                 | 33                          | property_details.xlsx | home                 | 25                          | seller_details                | 96                                   | throws an error with error message |

  Scenario Outline: ACAUTOCAS-1922:  In Selection of UID Token without save
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user creates new application for "<Loan_Type>"
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row <SourcingDetails_home_rowNum>
    And user fills sourcing details
    And user reads data from the excel file "<PropertyDetailsWB>" under sheet "<PropertyDetails_home>" and row <PropertyDetails_home_rowNum>
    And user fills property details home page for seller details
    And user reads data from the excel file "<PropertyDetailsWB>" under sheet "<PropertyDetails_SellerDetails>" and row <PropertyDetails_SellerDetails_rowNum>
    When user selects "<Type_of_Identification>" in seller details
    Then Country of Issue should be "<Dependent_On_Identification>"

    Examples:
      | Type_of_Identification | Dependent_On_Identification | Loan_Type | SourceDataFile       | SheetName | RowNumber | SourcingDetailsWB     | SourcingDetails_home | SourcingDetails_home_rowNum | PropertyDetailsWB     | PropertyDetails_home | PropertyDetails_home_rowNum | PropertyDetails_SellerDetails | PropertyDetails_SellerDetails_rowNum |
      | UID Token              | autofilled                  | Home Loan | LoginDetailsCAS.xlsx | LoginData | 0         | sourcing_details.xlsx | home                 | 33                          | property_details.xlsx | home                 | 25                          | seller_details                | 97                                   |
      | UID Token              | not editable                | Home Loan | LoginDetailsCAS.xlsx | LoginData | 0         | sourcing_details.xlsx | home                 | 33                          | property_details.xlsx | home                 | 25                          | seller_details                | 98                                   |

  Scenario Outline: ACAUTOCAS-1923: In Selection of <Type_of_Identification> without <Field_Name> in seller details page
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user creates new application for "<Loan_Type>"
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row <SourcingDetails_home_rowNum>
    And user fills sourcing details
    And user reads data from the excel file "<PropertyDetailsWB>" under sheet "<PropertyDetails_home>" and row <PropertyDetails_home_rowNum>
    And user fills property details home page for seller details
    And user reads data from the excel file "<PropertyDetailsWB>" under sheet "<PropertyDetails_SellerDetails>" and row <PropertyDetails_SellerDetails_rowNum>
    When user entering without "<Field_Name>" for "<Type_of_Identification>"
    And user selects check for duplicates in seller details
    Then seller details is not saved without "<Field_Name>" showing proper message

    Examples:
      | Field_Name         | Type_of_Identification | Loan_Type | SourceDataFile       | SheetName | RowNumber | SourcingDetailsWB     | SourcingDetails_home | SourcingDetails_home_rowNum | PropertyDetailsWB     | PropertyDetails_home | PropertyDetails_home_rowNum | PropertyDetails_SellerDetails | PropertyDetails_SellerDetails_rowNum |
      | Identification No. | Aadhar No.             | Home Loan | LoginDetailsCAS.xlsx | LoginData | 0         | sourcing_details.xlsx | home                 | 33                          | property_details.xlsx | home                 | 25                          | seller_details                | 87                                   |
      | Identification No. | Pan                    | Home Loan | LoginDetailsCAS.xlsx | LoginData | 0         | sourcing_details.xlsx | home                 | 33                          | property_details.xlsx | home                 | 25                          | seller_details                | 88                                   |
      | Identification No. | Passport               | Home Loan | LoginDetailsCAS.xlsx | LoginData | 0         | sourcing_details.xlsx | home                 | 33                          | property_details.xlsx | home                 | 25                          | seller_details                | 89                                   |
      | Identification No. | UID Token              | Home Loan | LoginDetailsCAS.xlsx | LoginData | 0         | sourcing_details.xlsx | home                 | 33                          | property_details.xlsx | home                 | 25                          | seller_details                | 90                                   |
      | Identification No. | KYC                    | Home Loan | LoginDetailsCAS.xlsx | LoginData | 0         | sourcing_details.xlsx | home                 | 33                          | property_details.xlsx | home                 | 25                          | seller_details                | 91                                   |
      | Country of Issue   | Aadhar No.             | Home Loan | LoginDetailsCAS.xlsx | LoginData | 0         | sourcing_details.xlsx | home                 | 33                          | property_details.xlsx | home                 | 25                          | seller_details                | 92                                   |
      | Country of Issue   | Pan                    | Home Loan | LoginDetailsCAS.xlsx | LoginData | 0         | sourcing_details.xlsx | home                 | 33                          | property_details.xlsx | home                 | 25                          | seller_details                | 93                                   |
      | Country of Issue   | Passport               | Home Loan | LoginDetailsCAS.xlsx | LoginData | 0         | sourcing_details.xlsx | home                 | 33                          | property_details.xlsx | home                 | 25                          | seller_details                | 94                                   |
      | Country of Issue   | KYC                    | Home Loan | LoginDetailsCAS.xlsx | LoginData | 0         | sourcing_details.xlsx | home                 | 33                          | property_details.xlsx | home                 | 25                          | seller_details                | 95                                   |

