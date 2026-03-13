@Epic-Loan_Application_Details
@AuthoredBy-
@ReviewedBy-
@ImplementedBy-
@NotImplemented
@Test
Feature:Identified ready Property details Mandatory field Validation with save

  Scenario Outline: ACAUTOCAS-14076:  Saving identified property details without <FieldName>
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user create new application for <Loan_Type>
    And user reads data from the excelFile "<LoanDetailsWB>" under sheet "<LoanDetails_sourcing>" and row <LoanDetails_sourcing_rowNum>
    And user fills and save sourcing details with "<Mandatory_NonMandatory>"
    And user reads data from the excelFile "<PropertyDetailsWB>" under sheet "<PropertyDetailsxxxx>" and row <property_rowNum>
    When user fill property details without "<FieldName>"
    Then application is not saved with the error message "<Error_Message>"
    Examples:
      | FieldName                            | Error_Message           | Loan_Type | Mandatory_NonMandatory | SourceDataFile       | SheetName | RowNumber | PropertyDetailsWB | LoanDetails_sourcing | LoanDetails_sourcing_rowNum | LoanDetailWB | LoanDetails_propertyDetail | LoanDetails_propertyDetail_rowNum |
      | Collateral Sub Type/Property Details | This field is required. | Home loan | mandatory              | LoginDetailsCAS.xlsx | LoginData | 7         |                   |                      |                             |              |                            |                                   |
      | Type Of Purchase                     | This field is required. | Home loan | non mandatory          | LoginDetailsCAS.xlsx | LoginData | 7         |                   |                      |                             |              |                            |                                   |
      | Property Type                        | This field is required. | Home loan | mandatory              | LoginDetailsCAS.xlsx | LoginData | 7         |                   |                      |                             |              |                            |                                   |
      | Nature of Property                   | This field is required. | Home loan | non mandatory          | LoginDetailsCAS.xlsx | LoginData | 7         |                   |                      |                             |              |                            |                                   |
      | Property cost                        | This field is required. | Home loan | mandatory              | LoginDetailsCAS.xlsx | LoginData | 7         |                   |                      |                             |              |                            |                                   |
