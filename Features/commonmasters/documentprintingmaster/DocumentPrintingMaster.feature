@Epic-Applicant_Information
@AuthoredBy-ankit.yadav
@ImplementedBy-ankit.yadav
@Conventional
@Islamic
@Release
@DocumentPrinting
@PQMStory


Feature: Document Printing Master

  Background:
    Given user is on CAS Login Page

#PQM-1_CAS-207805
  Scenario: ACAUTOCAS-17220:  Document Printing Mapping should be done for product
    And user logged in "Common Masters" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user reads data from the excel file "Document_Printing_Master.xlsx" under sheet "Home" and row 0
    And user navigates to Document Printing Master
    When user Check all mapped printing master for any product
    Then Mapping should be done for the Product

#PQM-2_CAS-207805
  Scenario Outline: ACAUTOCAS-17221:  Following <column_Name> should be present in  grid Printing Code
    And user logged in "Common Masters" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user navigates to Document Printing Master
    Then user should be able to view document printing master grid with "<column_Name>" columns
    Examples:
      | column_Name     |
      | Product Type    |
      | Product         |
      | Printing Code   |
      | Scheme          |
      | Stage           |
      | Created By      |
      | Reviewed By     |
      | Created On      |
      | Reviewed On     |
      | Status          |
      | Active/Inactive |
      | Actions         |

#PQM-2_CAS-207805
  Scenario Outline: ACAUTOCAS-17222:  Following <buttons> should be present in  grid Printing Code
    And user logged in "Common Masters" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user navigates to Document Printing Master
    Then user should be able to view document printing search grid with "<buttons>" columns
    Examples:
      | buttons                  |
      | Create Document Printing |
      | Previous                 |
      | Next                     |
      | xls                      |
      | csv                      |
      | pdf                      |

#PQM-4_CAS-207805
  Scenario Outline: ACAUTOCAS-17223:  Sorting should be applicable in all <column> in <order> except actions
    And user logged in "Common Masters" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user navigates to Document Printing Master
    When user sorts "<column>" in "<order>" order of document printing
    Then Sorting should be done on "<column>" in "<order>" order of document printing
    Examples:
      | column          | order      |
      | Product Type    | Ascending  |
      | Product         | Ascending  |
      | Printing Code   | Ascending  |
      | Stage           | Ascending  |
      | Created By      | Ascending  |
      | Created On      | Ascending  |
      | Active/Inactive | Ascending  |
      | Status          | Ascending  |
      | Product Type    | Descending |
      | Product         | Descending |
      | Printing Code   | Descending |
      | Stage           | Descending |
      | Created By      | Descending |
      | Created On      | Descending |
      | Active/Inactive | Descending |
      | Status          | Descending |

#PQM-6.1_CAS-207805
  Scenario Outline: ACAUTOCAS-17224:  User should be able to hide/show <columns>
    And user logged in "Common Masters" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user navigates to Document Printing Master
    And user clicks on ShowHide Button of Document Printing Master
    When user selects "<columns>" on Document Printing Master Grid
    Then "<columns>" should not be present in Document Printing Master Grid
    Examples:
      | columns         |
      | Product Type    |
      | Product         |
      | Stage           |
      | Created By      |
      | Created On      |
      | Reviewed By     |
      | Reviewed On     |
      | Active/Inactive |
      | Status          |

#PQM-6.2_CAS-207805
  Scenario Outline: ACAUTOCAS-17225:Show the <NumberOfRows> rows with <Display> in document printing master grid
    And user logged in "Common Masters" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user navigates to Document Printing Master
    When user selects "<NumberOfRows>" number of rows to show for Document Printing Master Grid
    Then selected <NumberOfRows> rows "<Display>" in case total entries are "<More_Less>" than selected number for Document Printing Master Grid
    Examples:
      | NumberOfRows | Display                                 | More_Less |
      | 10           | display                                 | more      |
      | 25           | display                                 | more      |
      | 50           | display                                 | more      |
      | 100          | display                                 | more      |
      | 150          | display                                 | more      |
      | 200          | display                                 | more      |
      | 10           | not display only available rows display | less      |
      | 25           | not display only available rows display | less      |
      | 50           | not display only available rows display | less      |
      | 100          | not display only available rows display | less      |
      | 150          | not display only available rows display | less      |
      | 200          | not display only available rows display | less      |

#PQM-7_CAS-207805
  Scenario: ACAUTOCAS-17226:  user Should be successfully landed on document printing master screen
    And user logged in "Common Masters" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user navigates to Document Printing Master
    When user create document printing master
    Then user Should be successfully landed on document printing master screen

#PQM-8_CAS-207805
  Scenario Outline: ACAUTOCAS-17227:  All required <fieldName> should be visible after required option
    And user logged in "Common Masters" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user navigates to Document Printing Master
    And user create document printing master
    When Click on required option on document printing master
    Then All "<Mandatory_NonMandatory>" "<fieldName>" should be visible
    Examples:
      | fieldName            | Mandatory_NonMandatory |
      | Printing Description | Non Mandatory          |
      | Printing Code        | Mandatory              |
      | Printing Name        | Mandatory              |
      | Product Type         | Mandatory              |
      | Product              | Mandatory              |
      | Stage                | Mandatory              |
      | Scheme               | Non Mandatory          |

  Scenario Outline: ACAUTOCAS-17228:  Validate hover on <fieldName> should be visible
    And user logged in "Common Masters" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user navigates to Document Printing Master
    And user create document printing master
    When user hover on "<fieldName>" in document printing master
    Then tooltip should be displayed for "<fieldName>" in document printing master
    Examples:
      | fieldName            |
      | Printing Description |
      | Printing Code        |
      | Printing Name        |
      | Product Type         |
      | Product              |
      | Stage                |
      | Scheme               |

  Scenario Outline: ACAUTOCAS-17229:  Validate tooltip name by hover on <fieldName> should be visible
    And user logged in "Common Masters" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user navigates to Document Printing Master
    And user create document printing master
    When user hover on "<fieldName>" in document printing master
    Then tooltip name should be same as "<fieldName>" in document printing master
    Examples:
      | fieldName            |
      | Printing Description |
      | Printing Code        |
      | Printing Name        |
      | Product Type         |
      | Product              |
      | Stage                |
      | Scheme               |

#PQM-9_CAS-207805
  Scenario Outline: ACAUTOCAS-17230:  Create Sequence accordian should be <Action>
    And user logged in "Common Masters" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user reads data from the excel file "Document_Printing_Master.xlsx" under sheet "document_printing_master" and row <Document_printingMaster_rowNum>
    And user navigates to Document Printing Master
    And user create document printing master
    When user check Create Sequence accordian to perform "<Action>"
    Then Create Sequence accordian should be "<Action>" in document printing master
    Examples:
      | Action | Document_printingMaster_rowNum |
      | Open   | 1                              |
      | Closed | 1                              |

#PQM-10_CAS-20780
  Scenario Outline: ACAUTOCAS-17231:  Validation should come to fill product type and product and <Action> should come
    And user logged in "Common Masters" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user reads data from the excel file "Document_Printing_Master.xlsx" under sheet "document_printing_master" and row <Document_printingMaster_rowNum>
    And user navigates to Document Printing Master
    And user create document printing master
    When user check Create Sequence accordian to perform "<Action>"
    Then Create Sequence accordian should be "<Action>" in document printing master
    Examples:
      | Action | Document_printingMaster_rowNum |
      | Error  | 0                              |

#PQM-11_CAS-207805
  Scenario: ACAUTOCAS-17232: Activity tab should not be present
    And user logged in "Common Masters" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user navigates to Document Printing Master
    When user create document printing master
    Then Activity tab should not be present

#PQM-12_CAS-207805
  Scenario Outline: ACAUTOCAS-17233:  Accordian should be open
    And user logged in "Common Masters" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user reads data from the excel file "Document_Printing_Master.xlsx" under sheet "document_printing_master" and row <Document_printingMaster_rowNum>
    And user navigates to Document Printing Master
    And user create document printing master
    When user fill details in document printing master
    And user open create sequence accordian
    Then Accordian should be open
    Examples:
      | ProductType   | ApplicantType   | Document_printingMaster_rowNum |
      | <ProductType> | <ApplicantType> | 0                              |

#PQM-13_CAS-207805
  Scenario Outline: ACAUTOCAS-17234:  Prodcut type field should be autocomplete with all available <ProductType>
    And user logged in "Common Masters" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user navigates to Document Printing Master
    And user create document printing master
    When user check "<ProductType>" field
    Then Product type field should be autocomplete with all available "<ProductType>"
    Examples:
      | ProductType              |
      | Agriculture Loan         |
      | Auto Finance             |
      | Bank Guarantee           |
      | Bill Discounting         |
      | Business Loans           |
      | Cash Credit              |
      | Commercial Equipment     |
      | Commercial Vehicle       |
      | Consumer Loans           |
      | Consumer Vehicle         |
      | Credit Card              |
      | Education Loan           |
      | Farm Equipment           |
      | Finance Against Security |
      | Gold Loan                |
      | Home Finance             |
      | Home Loan                |
      | Joint Liability Group    |
      | Kisan Credit Card        |
      | Letter of Credit         |
      | Loan Against Property    |
      | Micro Housing Finance    |
      | Multi Facility           |
      | Omni Loan                |
      | Personal Finance         |
      | Personal Loan            |
      | Self Help Group          |

#PQM-14_CAS-207805
#PQM-15_CAS-207805
  Scenario Outline: ACAUTOCAS-17235:  <Product> and <Scheme> should be come on selected <ProductType> basis
    And user logged in "Common Masters" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user navigates to Document Printing Master
    And user create document printing master
    When user select "<ProductType>" with check "<Product>" and "<Scheme>"
    Then Product with Scheme should be come on selected ProductType basis
    Examples:
      | ProductType      | Product   | Scheme |
      | Personal Finance | CM_Shares |        |
      | Personal Finance | CM_Bonds  |        |
      | Personal Finance | CM_Metal  |        |
      | Home Finance     | HF_CO     |        |
      | Auto Finance     | AUTOFIN   |        |

#PQM-16_CAS-207805
  Scenario Outline: ACAUTOCAS-17236:  After deselect <ProductType> mapped <deselectProductType> will select and <Product> and <Scheme> should be cleared
    And user logged in "Common Masters" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user navigates to Document Printing Master
    And user create document printing master
    And user select "<ProductType>" with check "<Product>" and "<Scheme>"
    When user deselect Product Type "<deselectProductType>"
    Then Product with Scheme should be cleared on deselected Product Type
    Examples:
      | ProductType      | Product   | Scheme | deselectProductType |
      | Personal Finance | CM_Shares |        | Auto Finance        |
      | Personal Finance | CM_Bonds  |        | Auto Finance        |
      | Personal Finance | CM_Metal  |        | Auto Finance        |
      | Home Finance     | HF_CO     |        | Personal Finance    |
      | Auto Finance     | AUTOFIN   |        | Personal Finance    |

#PQM-17_CAS-207805
  Scenario Outline: ACAUTOCAS-17237:  User should be able to select <Stage>
    And user logged in "Common Masters" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user reads data from the excel file "Document_Printing_Master.xlsx" under sheet "document_printing_master" and row <Document_printingMaster_rowNum>
    And user navigates to Document Printing Master
    And user create document printing master
    And user fill details in document printing master
    When user check "<Stage>" in document printing master
    Then User should be able to select "<Stage>"
    Examples:
      | Stage              | Document_printingMaster_rowNum |
      | CCDE               | 0                              |
      | CCDE_DOCUMENTATION | 0                              |
      | CREDIT APPROVAL    | 0                              |
      | DDE                | 0                              |
      | DDE QC             | 0                              |
      | DISBURSAL          | 0                              |
      | KYC                | 0                              |
      | POST APPROVAL      | 0                              |
      | PROPOSAL           | 0                              |
      | RECOMMENDATION     | 0                              |
      | RECONSIDERATION    | 0                              |
      | Sourcing           | 0                              |
      | UNDERWRITING       | 0                              |

#PQM-18_CAS-207805
#PQM-19_CAS-207805
#PQM-20_CAS-207805
  Scenario Outline: ACAUTOCAS-17238:  Document Printing Master details <Validity> Printing code with <InputType> validation
    And user logged in "Common Masters" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user reads data from the excel file "Document_Printing_Master.xlsx" under sheet "document_printing_master" and row <Document_printingMaster_rowNum>
    And user navigates to Document Printing Master
    And user create document printing master
    When user fill "<FieldName>" of Document Printing Master details
    Then "<FieldName>" field "<Throws_NotThrows>" in Document Printing Master details
    Examples:
      | Validity | FieldName     | InputType                          | Throws_NotThrows         | Document_printingMaster_rowNum |
      | valid    | Printing Code | positive digits                    | does not throw any error | 20                             |
      | valid    | Printing Code | characters                         | does not throw any error | 21                             |
      | valid    | Printing Code | both digits and characters         | does not throw any error | 22                             |
      | valid    | Printing Code | negative                           | does not throw any error | 23                             |
      | valid    | Printing Code | space                              | does not throw any error | 24                             |
      | valid    | Printing Code | first character as special symbols | does not throw any error | 25                             |
      | valid    | Printing Code | last character as special symbols  | does not throw any error | 26                             |
      | valid    | Printing Code | consecutive special characters     | does not throw any error | 27                             |
      | valid    | Printing Code | non-consecutive special characters | does not throw any error | 28                             |
      | valid    | Printing Code | special characters except / \ - _  | does not throw any error | 29                             |
      | valid    | Printing Code | more than 40 characters            | does not throw any error | 30                             |

#PQM-21_CAS-207805
#PQM-22_CAS-207805
#PQM-23_CAS-207805
  Scenario Outline: ACAUTOCAS-17239: Document Printing Master details <Validity> Printing Name with <InputType> validation
    And user logged in "Common Masters" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user reads data from the excel file "Document_Printing_Master.xlsx" under sheet "document_printing_master" and row <Document_printingMaster_rowNum>
    And user navigates to Document Printing Master
    And user create document printing master
    When user fill "<FieldName>" of Document Printing Master details
    Then "<FieldName>" field "<Throws_notThrows>" in Document Printing Master details
    Examples:
      | FieldName     | InputType                          | Validity | Throws_notThrows         | Document_printingMaster_rowNum |
      | Printing Name | with valid                         | valid    | does not throw any error | 31                             |
      | Printing Name | with both digits and character     | valid    | does not throw any error | 32                             |
      | Printing Name | with negative number               | valid    | does not throw any error | 33                             |
      | Printing Name | alphanumeric with hyphen           | valid    | does not throw any error | 34                             |
      | Printing Name | with space                         | valid    | does not throw any error | 35                             |
      | Printing Name | alphanumeric with bracket          | valid    | does not throw any error | 36                             |
      | Printing Name | alphanumeric with comma            | valid    | does not throw any error | 37                             |
      | Printing Name | alphanumeric with and operator     | valid    | does not throw any error | 38                             |
      | Printing Name | alphanumeric with exclamation mark | valid    | does not throw any error | 39                             |
      | Printing Name | alphanumeric with dot              | valid    | does not throw any error | 40                             |
      | Printing Name | alphanumeric with dollar           | valid    | does not throw any error | 41                             |
      | Printing Name | alphanumeric with forward slash    | valid    | does not throw any error | 42                             |
      | Printing Name | with special character             | valid    | does not throw any error | 43                             |
      | Printing Name | more than 200 characters           | invalid  | does not throw any error | 44                             |

#PQM-24_CAS-207805
  Scenario Outline: ACAUTOCAS-17240:  Document Printing Master details <Validity> Printing Description with <InputType> validation
    And user logged in "Common Masters" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user reads data from the excel file "Document_Printing_Master.xlsx" under sheet "document_printing_master" and row <Document_printingMaster_rowNum>
    And user navigates to Document Printing Master
    And user create document printing master
    When user fill "<FieldName>" of Document Printing Master details
    Then "<FieldName>" field "<Throws_NotThrows>" in Document Printing Master details
    Examples:
      | Validity | FieldName            | InputType                                    | Throws_NotThrows         | Document_printingMaster_rowNum |
      | valid    | Printing Description | all possible characters                      | does not throw any error | 45                             |
      | valid    | Printing Description | special characters except /' , / - & ( ) !.$ | does not throw any error | 46                             |
      | invalid  | Printing Description | more than 400 characters                     | does not throw any error | 47                             |

#PQM-25_CAS-207805
  Scenario Outline: ACAUTOCAS-17241:  Multi lingual format for <FieldName> with <Language> Should get save successfully
    And user logged in "Common Masters" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user reads data from the excel file "Document_Printing_Master.xlsx" under sheet "document_printing_master" and row 3
    And user navigates to Document Printing Master
    And user create document printing master
    When User multi lingual format for "<FieldName>" with "<Language>"
    Then "<FieldName>" with "<Language>" should be saved successfully
    Examples:
      | Language | FieldName            |
      | हिन्दी   | Printing Name        |
      | ہندی     | Printing Name        |
      | English  | Printing Name        |
      | हिन्दी   | Printing Description |
      | ہندی     | Printing Description |
      | English  | Printing Description |

#PQM-27.1_CAS-207805
  Scenario Outline: ACAUTOCAS-17242:  User should be able to select <column_Name> of only <Document_printingMaster_rowNum> letter template records where selected productType product and scheme
    And user logged in "Common Masters" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user reads data from the excel file "Document_Printing_Master.xlsx" under sheet "document_printing_master" and row <Document_printingMaster_rowNum>
    And user navigates to Document Printing Master
    And user create document printing master
    And user fill details in document printing master
    When user open create sequence accordian
    Then user should be able to view sequence with "<column_Name>" columns with Product Scheme Mappings
    Examples:
      | column_Name   | Document_printingMaster_rowNum |
      | Letter Code   | 1                              |
      | Document Code | 2                              |
      | Sequence      | 3                              |
      | Rule          | 4                              |
      | Actions       | 5                              |

#PQM-27.2_CAS-207805
  Scenario Outline: ACAUTOCAS-17243:  User should be able to view <fieldName> in table letter Document Mapping Datatable
    And user logged in "Common Masters" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user reads data from the excel file "Document_Printing_Master.xlsx" under sheet "document_printing_master" and row <Document_printingMaster_rowNum>
    And user navigates to Document Printing Master
    And user create document printing master
    Then user should be able to view "<fieldName>" in table letter Document Mapping Datatable
    Examples:
      | fieldName     | Document_printingMaster_rowNum |
      | Letter Code   | 1                              |
      | Document Code | 2                              |
      | Sequence      | 3                              |
      | Rule          | 4                              |
      | Actions       | 5                              |

#PQM-27_CAS-207805
  Scenario Outline: ACAUTOCAS-17244:  User should be able to select letterCode of only those letter template records where selected productType product and scheme
    And user logged in "Common Masters" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user reads data from the excel file "Document_Printing_Master.xlsx" under sheet "document_printing_master" and row <Document_printingMaster_rowNum>
    And user navigates to Document Printing Master
    And user create document printing master
    And user fill details in document printing master
    When user open create sequence accordian
    And user select data from letter code masters in sequence
    Then User should be able to select letterCode of only those letter template records
    Examples:
      | ProductType   | ApplicantType   | Document_printingMaster_rowNum |
      | <ProductType> | <ApplicantType> | 57                             |


#PQM-28_CAS-207805
  Scenario Outline: ACAUTOCAS-17245:  document code should be selected from document master record
    And user logged in "Common Masters" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user reads data from the excel file "Document_Printing_Master.xlsx" under sheet "document_printing_master" and row <Document_printingMaster_rowNum>
    And user navigates to Document Printing Master
    And user create document printing master
    And user fill details in document printing master
    When user open create sequence accordian
    And user fill data from letter code masters in sequence
    And User select document code from masters in sequence
    Then User should be able to document code should be selected from document master record
    Examples:
      | ProductType   | ApplicantType   | Document_printingMaster_rowNum |
      | <ProductType> | <ApplicantType> | 58                             |

#PQM-29_CAS-207805
  Scenario Outline: ACAUTOCAS-17246:  Rule should be selected from rule master record
    And user logged in "Common Masters" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user reads data from the excel file "Document_Printing_Master.xlsx" under sheet "document_printing_master" and row <Document_printingMaster_rowNum>
    And user navigates to Document Printing Master
    And user create document printing master
    And user fill details in document printing master
    When user open create sequence accordian
    And user fill data from letter code masters in sequence
    And User fill document code from masters in sequence
    And User try to select rule from rule masters in sequence
    Then User should be able to Rule should be selected from rule master record
    Examples:
      | ProductType   | ApplicantType   | Document_printingMaster_rowNum |
      | <ProductType> | <ApplicantType> | 59                             |

#PQM-31_CAS-207805
#PQM-30_CAS-207805
#PQM-32_CAS-207805
#PQM-33_CAS-207805
  Scenario Outline: ACAUTOCAS-17247:  Document Printing Master details <Validity> <FieldName> with <InputType> validation that <Throws_NotThrows>
    And user logged in "Common Masters" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user reads data from the excel file "Document_Printing_Master.xlsx" under sheet "document_printing_master" and row <Document_printingMaster_rowNum>
    And user navigates to Document Printing Master
    And user create document printing master
    And user fill details in document printing master
    When user open create sequence accordian
    When user fill "<FieldName>" of Document Printing Master details
    Then "<FieldName>" field "<Throws_NotThrows>" in Document Printing Master details
    Examples:
      | Validity | FieldName | InputType                          | Throws_NotThrows                | Document_printingMaster_rowNum |
      | valid    | Sequence  | positive digits                    | does not throw any error        | 48                             |
      | invalid  | Sequence  | characters                         | throws error with error message | 49                             |
      | invalid  | Sequence  | both digits and characters         | throws error with error message | 50                             |
      | invalid  | Sequence  | negative                           | throws error with error message | 51                             |
      | valid    | Sequence  | space                              | does not throw any error        | 52                             |
      | invalid  | Sequence  | first character as special symbols | throws error with error message | 53                             |
      | valid    | Sequence  | last character as special symbols  | does not throw any error        | 54                             |
      | invalid  | Sequence  | consecutive special characters     | throws error with error message | 55                             |
      | valid    | Sequence  | non-consecutive special characters | does not throw any error        | 56                             |

#PQM-34_CAS-207805
  Scenario Outline: ACAUTOCAS-17248:  letter document map sequence data should be cleared
    And user logged in "Common Masters" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user reads data from the excel file "Document_Printing_Master.xlsx" under sheet "document_printing_master" and row <Document_printingMaster_rowNum>
    And user navigates to Document Printing Master
    And user create document printing master
    And user fill details in document printing master
    And user open create sequence accordian
    When user fill Letter Document Sequence Map details
    And User click on reset button
    Then letter document map sequence data should be cleared
    Examples:
      | ProductType   | ApplicantType   | Document_printingMaster_rowNum |
      | <ProductType> | <ApplicantType> | 17                             |


#PQM-35.1_CAS-207805
  Scenario Outline: ACAUTOCAS-17249:  create sequence accordian should be cleared after change <fieldName>
    And user logged in "Common Masters" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user reads data from the excel file "Document_Printing_Master.xlsx" under sheet "document_printing_master" and row <Document_printingMaster_rowNum>
    And user navigates to Document Printing Master
    And user create document printing master
    And user fill details in document printing master
    And user open create sequence accordian
    When user fill Letter Document Sequence Map details
    And user click on done button
    And user reads data from the excel file "Document_Printing_Master.xlsx" under sheet "document_printing_master" and row 2
    And user change "<fieldName>"
    Then create sequence accordian should be cleared
    Examples:
      | fieldName    | Document_printingMaster_rowNum |
      | Product Type | 15                             |
      | Product      | 15                             |

#PQM-35.2_CAS-207805
  Scenario Outline: ACAUTOCAS-17250:  create sequence accordian should be cleared after <fieldName> changed with closed message
    And user logged in "Common Masters" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user reads data from the excel file "Document_Printing_Master.xlsx" under sheet "document_printing_master" and row <Document_printingMaster_rowNum>
    And user navigates to Document Printing Master
    And user create document printing master
    And user fill details in document printing master
    And user open create sequence accordian
    When user fill Letter Document Sequence Map details
    And user click on done button
    And user reads data from the excel file "Document_Printing_Master.xlsx" under sheet "document_printing_master" and row 2
    And user change "<fieldName>"
    Then create sequence accordian should be cleared with message "Product Type/ Product/ Scheme changed.Need to create sequences again."
    Examples:
      | fieldName    | Document_printingMaster_rowNum |
      | Product Type | 15                             |
      | Product      | 15                             |

#PQM-36_CAS-207805
#PQM-39_CAS-207805
  Scenario Outline: ACAUTOCAS-17251:  Validation should come that At least one sequencing record is required
    And user logged in "Common Masters" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user reads data from the excel file "Document_Printing_Master.xlsx" under sheet "document_printing_master" and row <Document_printingMaster_rowNum>
    And user navigates to Document Printing Master
    And user create document printing master
    And user fill details in document printing master
    And user open create sequence accordian
    When User try to save record without create sequence data
    Then Validation should come that "At least one sequencing record is required."
    Examples:
      | ProductType   | ApplicantType   | Document_printingMaster_rowNum |
      | <ProductType> | <ApplicantType> | 14                             |

#PQM-37_CAS-207805
  Scenario Outline: ACAUTOCAS-17252:  Filled data of <fieldName> should populate in the datatable below of create sequence
    And user logged in "Common Masters" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user reads data from the excel file "Document_Printing_Master.xlsx" under sheet "document_printing_master" and row <Document_printingMaster_rowNum>
    And user navigates to Document Printing Master
    And user create document printing master
    And user fill details in document printing master
    And user open create sequence accordian
    When user fill Letter Document Sequence Map details
    And user click on done button
    Then filled data of "<fieldName>" should populate in the datatable below
    Examples:
      | fieldName     | Document_printingMaster_rowNum |
      | Letter Code   | 4                              |
      | Document Code | 5                              |
      | Sequence      | 6                              |
      | Rule          | 7                              |

#PQM-38_CAS-207805
#PQM-39_CAS-207805
  Scenario Outline: ACAUTOCAS-17253:  Validation should come at creating sequence in letter document product mapping
    And user logged in "Common Masters" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user reads data from the excel file "Document_Printing_Master.xlsx" under sheet "document_printing_master" and row <Document_printingMaster_rowNum>
    And user navigates to Document Printing Master
    And user create document printing master
    And user fill details in document printing master
    And user open create sequence accordian
    When User try to save create sequence without any data
    Then error validation should come at creating sequence that "This field is required."
    Examples:
      | ProductType   | ApplicantType   | Document_printingMaster_rowNum |
      | <ProductType> | <ApplicantType> | 15                             |

#PQM-40_CAS-207805
#PQM-41_CAS-207805
  Scenario Outline: ACAUTOCAS-17254:  <Record> should be successfully searched in letter document product mapping
    And user logged in "Common Masters" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user reads data from the excel file "Document_Printing_Master.xlsx" under sheet "document_printing_master" and row <Document_printingMaster_rowNum>
    And user navigates to Document Printing Master
    And user create document printing master
    And user fill details in document printing master
    And user open create sequence accordian
    When user fill Letter Document Sequence Map details
    And user click on done button
    And User try to search "<Record>" create sequence
    Then filled data of "<Record>" should populate in the datatable below
    Examples:
      | Record        | Document_printingMaster_rowNum |
      | Letter Code   | 8                              |
      | Document Code | 9                              |
      | Sequence      | 10                             |
      | Rule          | 11                             |

#PQM-42_CAS-207805
  Scenario Outline: ACAUTOCAS-17255:  Letter Document Sequence Map record should be edited successfully
    And user logged in "Common Masters" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user reads data from the excel file "Document_Printing_Master.xlsx" under sheet "document_printing_master" and row <Document_printingMaster_rowNum>
    And user navigates to Document Printing Master
    And user create document printing master
    And user fill details in document printing master
    And user open create sequence accordian
    When user fill Letter Document Sequence Map details
    And user click on done button
    And user try to edit create sequence
    Then Letter Document Sequence Map should be edited successfully
    Examples:
      | ProductType   | ApplicantType   | Document_printingMaster_rowNum |
      | <ProductType> | <ApplicantType> | 3                              |

#PQM-43_CAS-207805
  Scenario Outline: ACAUTOCAS-17256: Letter Document Sequence Map should not be edited successfully
    And user logged in "Common Masters" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user reads data from the excel file "Document_Printing_Master.xlsx" under sheet "document_printing_master" and row <Document_printingMaster_rowNum>
    And user navigates to Document Printing Master
    And user create document printing master
    And user fill details in document printing master
    And user open create sequence accordian
    When user fill Letter Document Sequence Map details
    And user click on done button
    And user try to edit create sequence
    And user click on reset create sequence button
    Then Letter Document Sequence Map should not be edited successfully
    Examples:
      | ProductType   | ApplicantType   | Document_printingMaster_rowNum |
      | <ProductType> | <ApplicantType> | 5                              |

#PQM-44_CAS-207805
  Scenario Outline: ACAUTOCAS-17257:  Letter Document Sequence Map record should be deleted successfully
    And user logged in "Common Masters" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user reads data from the excel file "Document_Printing_Master.xlsx" under sheet "document_printing_master" and row <Document_printingMaster_rowNum>
    And user navigates to Document Printing Master
    And user create document printing master
    And user fill details in document printing master
    And user open create sequence accordian
    When user fill Letter Document Sequence Map details
    And user click on done button
    And user try to delete create sequence record
    Then Letter Document Sequence Map should be deleted successfully
    Examples:
      | ProductType   | ApplicantType   | Document_printingMaster_rowNum |
      | <ProductType> | <ApplicantType> | 7                              |

#PQM-45_CAS-207805
  Scenario Outline: ACAUTOCAS-17258:  Duplicacy in Mapping Validation should come in Letter Document Sequence Map
    And user logged in "Common Masters" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user reads data from the excel file "Document_Printing_Master.xlsx" under sheet "document_printing_master" and row <Document_printingMaster_rowNum>
    And user navigates to Document Printing Master
    And user create document printing master
    And user fill details in document printing master
    And user open create sequence accordian
    When user fill Letter Document Sequence Map details
    And user click on done button
    And User add same letter code with other sequence details
    And user click on done button
    Then Duplicacy in Letter Mapping Validation should come "Duplicacy In Letter Document Mapping."
    Examples:
      | ProductType   | ApplicantType   | Document_printingMaster_rowNum |
      | <ProductType> | <ApplicantType> | 11                             |

#PQM-46_CAS-207805
  Scenario Outline: ACAUTOCAS-17259:  Duplicacy in Letter Document Mapping Validation should come
    And user logged in "Common Masters" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user reads data from the excel file "Document_Printing_Master.xlsx" under sheet "document_printing_master" and row <Document_printingMaster_rowNum>
    And user navigates to Document Printing Master
    And user create document printing master
    And user fill details in document printing master
    And user open create sequence accordian
    When user fill Letter Document Sequence Map details
    And user click on done button
    When User add same document code with other sequence details
    And user click on done button
    Then Duplicacy in Document Mapping Validation should come "Duplicacy In Letter Document Mapping."
    Examples:
      | ProductType   | ApplicantType   | Document_printingMaster_rowNum |
      | <ProductType> | <ApplicantType> | 12                             |

#PQM-47_CAS-207805
  Scenario Outline: ACAUTOCAS-17260: Letter code should not be visible
    And user logged in "Common Masters" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user reads data from the excel file "Document_Printing_Master.xlsx" under sheet "document_printing_master" and row <Document_printingMaster_rowNum>
    And user navigates to Document Printing Master
    And user create document printing master
    And user fill details in document printing master
    And user open create sequence accordian
    When user enter inactive letter code
    Then Letter code should not be visible
    Examples:
      | ProductType   | ApplicantType   | Document_printingMaster_rowNum |
      | <ProductType> | <ApplicantType> | 14                             |

#PQM-48_CAS-207805
  Scenario Outline: ACAUTOCAS-17261:  Validation should come for incorrect sequence not be able to save the document printing master
    And user logged in "Common Masters" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user reads data from the excel file "Document_Printing_Master.xlsx" under sheet "document_printing_master" and row <Document_printingMaster_rowNum>
    And user navigates to Document Printing Master
    And user create document printing master
    And user fill details in document printing master
    And user open create sequence accordian
    When user fill Letter Document Sequence Map details from
      | Document_Printing_Master.xlsx | document_printing_master | 16 |
      | Document_Printing_Master.xlsx | document_printing_master | 19 |
    And User try to save record without create sequence data
    Then Validation should come for "Incorrect Sequence."
    Examples:
      | ProductType   | ApplicantType   | Document_printingMaster_rowNum |
      | <ProductType> | <ApplicantType> | 16                             |

#PQM-49_CAS-207805
  Scenario Outline: ACAUTOCAS-17262:  Proper validation should come that printing code is already exists
    And user logged in "Common Masters" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user reads data from the excel file "Document_Printing_Master.xlsx" under sheet "document_printing_master" and row <Document_printingMaster_rowNum>
    And user navigates to Document Printing Master
    And user create document printing master
    And user fill details in document printing master
    And user fill document printing code
    And user open create sequence accordian
    When user fill Letter Document Sequence Map details
    And user click on done button
    And User try to save record without create sequence data
    Then validation should come that code is already exists
    Examples:
      | ProductType   | ApplicantType   | Document_printingMaster_rowNum |
      | <ProductType> | <ApplicantType> | 64                             |

Scenario Outline: ACAUTOCAS-17727: Validate data consistency with positive cases in document printing master details at <Document_printingMaster_rowNum>
    And user logged in "Common Masters" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user reads data from the excel file "Document_Printing_Master.xlsx" under sheet "document_printing_master" and row <Document_printingMaster_rowNum>
    And user navigates to Document Printing Master
    And user create document printing master
    And user fill details in document printing master
    And user open create sequence accordian
    When user fill Letter Document Sequence Map details
    And user click on done button
    Then user save the document printing master details successfully
    Examples:
      | Document_printingMaster_rowNum |
      | 67                             |
      | 68                             |
      | 69                             |
      | 70                             |
      | 71                             |
      | 72                             |
      | 73                             |
      | 74                             |
      | 75                             |
      | 76                             |
      | 77                             |
      | 78                             |
      | 79                             |
      | 80                             |
      | 81                             |
      | 82                             |
      | 83                             |
      | 84                             |
      | 85                             |
      | 86                             |
      | 87                             |
      | 88                             |
      | 89                             |
      | 90                             |
      | 91                             |
      | 92                             |
      | 93                             |
      | 94                             |
      | 95                             |
      | 96                             |
      | 97                             |
      | 98                             |
      | 99                             |
      | 100                            |
      | 101                            |
      | 102                            |
      | 103                            |
      | 104                            |
      | 105                            |
      | 106                            |
      | 107                            |
      | 108                            |
      | 109                            |
      | 110                            |
      | 111                            |
      | 112                            |
      | 113                            |
      | 114                            |
      | 115                            |
      | 116                            |
      | 117                            |
      | 118                            |

###################################################################################################################################################################################
###Implemented Scenarios in CAS
##PQM-61_CAS-207805
##PQM-63_CAS-207805
##PQM-80_CAS-207805
##PQM-81_CAS-207805
##PQM-82_CAS-207805
##PQM-5.1_CAS-207805
##PQM-5.2_CAS-207805
##PQM-1.1_CAS-207805
##PQM-1.2_CAS-207805
##PQM-60_CAS-207805

###################################################################################################################################################################################
#Not to implement add/delete/modify masters scenarios
##PQM-50_CAS-207805
##PQM-51_CAS-207805
##PQM-52_CAS-207805
##PQM-53_CAS-207805
##PQM-54_CAS-207805
##PQM-55_CAS-207805
##PQM-56_CAS-207805
##PQM-57_CAS-207805
##PQM-58_CAS-207805
##PQM-59_CAS-207805
##PQM-64_CAS-207805
##PQM-65_CAS-207805
##PQM-66_CAS-207805
##PQM-67_CAS-207805
##PQM-77_CAS-207805
##PQM-78_CAS-207805
##PQM-79_CAS-207805
##PQM-26_CAS-207805
##PQM-62_CAS-207805
