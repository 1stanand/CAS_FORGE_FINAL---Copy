@Epic-RenewalAndRenewalRecom
@ReviewedBy-None
@AuthoredBy-Anand.Singh1
@NotImplemented
Feature: OmniLoans , HL, MHF Property Details

  Scenario Outline: Scenario 1 : Required Fields validation Check on Save Button
    Given user is Logged into CAS Module With Valid Credentials
    And user has application ID of "<Loan_Type>" on "<StageName>" stage present in "<SourceDataFile>" under "<SheetName>" present at "<RowNumber>"
    And user opens Application Search Grid
    And Opens The Application
    And user opens the Property Details Page
    And user adds a New Property Details
    When the user clicks "Save" without entering any required fields
    Then a warning message should be displayed "Please run dedupe before saving"
    Examples:
      | Loan_Type | StageName       | SourceDataFile       | SheetName | RowNumber |
      | Home Loan | Lead Details    | LoginDetailsCAS.xlsx | Sheet 1   | 0         |
      | Home Loan | DDE             | LoginDetailsCAS.xlsx | Sheet 1   | 1         |
      | Home Loan | Credit Approval | LoginDetailsCAS.xlsx | Sheet 1   | 2         |
      | Home Loan | Recommendation  | LoginDetailsCAS.xlsx | Sheet 1   | 3         |
      | Home Loan | Disbursal       | LoginDetailsCAS.xlsx | Sheet 1   | 4         |
      | MHF Loan  | Lead Details    | LoginDetailsCAS.xlsx | Sheet 1   | 5         |
      | MHF Loan  | DDE             | LoginDetailsCAS.xlsx | Sheet 1   | 6         |
      | MHF Loan  | Credit Approval | LoginDetailsCAS.xlsx | Sheet 1   | 7         |
      | MHF Loan  | Recommendation  | LoginDetailsCAS.xlsx | Sheet 1   | 8         |
      | MHF Loan  | Disbursal       | LoginDetailsCAS.xlsx | Sheet 1   | 9         |
      | Omni Loan | Lead Details    | LoginDetailsCAS.xlsx | Sheet 1   | 10        |
      | Omni Loan | DDE             | LoginDetailsCAS.xlsx | Sheet 1   | 11        |
      | Omni Loan | Credit Approval | LoginDetailsCAS.xlsx | Sheet 1   | 12        |
      | Omni Loan | Recommendation  | LoginDetailsCAS.xlsx | Sheet 1   | 13        |
      | Omni Loan | Disbursal       | LoginDetailsCAS.xlsx | Sheet 1   | 14        |

  Scenario Outline: Scenario 2: Required Fields validation Check on Save And Next Button in HL and MHF
    Given user is Logged into CAS Module With Valid Credentials
    And user has application ID of "<Loan_Type>" on "<StageName>" stage present in "<SourceDataFile>" under "<SheetName>" present at "<RowNumber>" present at "<RowNumber>"
    And user opens Application Search Grid And Opens The Application
    And user opens the Property Details Page
    And user adds a New Property Details
    When the user clicks "Save And Next" without entering any required fields
    Then an error message should be displayed next to each empty required field, indicating that the field is required, also the page should not navigate to any other page
    Examples:
      | Loan_Type | StageName       | SourceDataFile       | SheetName | RowNumber |
      | Home Loan | Lead Details    | LoginDetailsCAS.xlsx | Sheet 1   | 0         |
      | Home Loan | DDE             | LoginDetailsCAS.xlsx | Sheet 1   | 1         |
      | Home Loan | Credit Approval | LoginDetailsCAS.xlsx | Sheet 1   | 2         |
      | Home Loan | Recommendation  | LoginDetailsCAS.xlsx | Sheet 1   | 3         |
      | Home Loan | Disbursal       | LoginDetailsCAS.xlsx | Sheet 1   | 4         |
      | MHF Loan  | Lead Details    | LoginDetailsCAS.xlsx | Sheet 1   | 5         |
      | MHF Loan  | DDE             | LoginDetailsCAS.xlsx | Sheet 1   | 6         |
      | MHF Loan  | Credit Approval | LoginDetailsCAS.xlsx | Sheet 1   | 7         |
      | MHF Loan  | Recommendation  | LoginDetailsCAS.xlsx | Sheet 1   | 8         |
      | MHF Loan  | Disbursal       | LoginDetailsCAS.xlsx | Sheet 1   | 9         |

  Scenario Outline: Scenario 3: Required Fields validation Check on Save And Next Button in OMNI LOAN
    Given user is Logged into CAS Module With Valid Credentials
    And user has application ID of "<Loan_Type>" on "<StageName>" stage present in "<SourceDataFile>" under "<SheetName>" present at "<RowNumber>"
    And user opens Application Search Grid And Opens The Application
    And user opens the Property Details Page
    And user adds a New Property Details
    When the user clicks "Save And Next" without entering any required fields
    Then an error message should be displayed "Please map atleast one split Id", also the page should not navigate to any other page
    Examples:
      | Loan_Type | StageName       | SourceDataFile       | SheetName | RowNumber |
      | Omni Loan | Lead Details    | LoginDetailsCAS.xlsx | Sheet 1   | 10        |
      | Omni Loan | DDE             | LoginDetailsCAS.xlsx | Sheet 1   | 11        |
      | Omni Loan | Credit Approval | LoginDetailsCAS.xlsx | Sheet 1   | 12        |
      | Omni Loan | Recommendation  | LoginDetailsCAS.xlsx | Sheet 1   | 13        |
      | Omni Loan | Disbursal       | LoginDetailsCAS.xlsx | Sheet 1   | 14        |

  Scenario Outline: Scenario 4: Required Fields validation Check on Check For Dedupe Button
    Given user is Logged into CAS Module With Valid Credentials
    And user has application ID of "<Loan_Type>" on "<StageName>" stage present in "<SourceDataFile>" under "<SheetName>" present at "<RowNumber>"
    And user opens Application Search Grid And Opens The Application
    And user opens the Property Details Page
    And user adds a New Property Details
    When the user clicks "Save" without entering any required fields
    Then an error message should be displayed "Property Address is mandatory for Dedupe check"
    Examples:
      | Loan_Type | StageName       | SourceDataFile       | SheetName | RowNumber |
      | Home Loan | Lead Details    | LoginDetailsCAS.xlsx | Sheet 1   | 0         |
      | Home Loan | DDE             | LoginDetailsCAS.xlsx | Sheet 1   | 1         |
      | Home Loan | Credit Approval | LoginDetailsCAS.xlsx | Sheet 1   | 2         |
      | Home Loan | Recommendation  | LoginDetailsCAS.xlsx | Sheet 1   | 3         |
      | Home Loan | Disbursal       | LoginDetailsCAS.xlsx | Sheet 1   | 4         |
      | MHF Loan  | Lead Details    | LoginDetailsCAS.xlsx | Sheet 1   | 5         |
      | MHF Loan  | DDE             | LoginDetailsCAS.xlsx | Sheet 1   | 6         |
      | MHF Loan  | Credit Approval | LoginDetailsCAS.xlsx | Sheet 1   | 7         |
      | MHF Loan  | Recommendation  | LoginDetailsCAS.xlsx | Sheet 1   | 8         |
      | MHF Loan  | Disbursal       | LoginDetailsCAS.xlsx | Sheet 1   | 9         |
      | Omni Loan | Lead Details    | LoginDetailsCAS.xlsx | Sheet 1   | 10        |
      | Omni Loan | DDE             | LoginDetailsCAS.xlsx | Sheet 1   | 11        |
      | Omni Loan | Credit Approval | LoginDetailsCAS.xlsx | Sheet 1   | 12        |
      | Omni Loan | Recommendation  | LoginDetailsCAS.xlsx | Sheet 1   | 13        |
      | Omni Loan | Disbursal       | LoginDetailsCAS.xlsx | Sheet 1   | 14        |



  Scenario Outline: Scenario 5: Valid Data Entry and Save Button
    Given user is Logged into CAS Module With Valid Credentials
    And user has application ID of "<Loan_Type>" on "<StageName>" stage present in "<SourceDataFile>" under "<SheetName>" present at "<RowNumber>"
    And user opens Application Search Grid And Opens The Application
    And user opens the Property Details Page
    And user adds a New Property Details
    And user Fills all mandatory Fields
    When user Click on save Button
    Then the property details should be saved successfully, and a confirmation message should be displayed
    Examples:
      | Loan_Type | StageName       | SourceDataFile       | SheetName | RowNumber |
      | Home Loan | Lead Details    | LoginDetailsCAS.xlsx | Sheet 1   | 0         |
      | Home Loan | DDE             | LoginDetailsCAS.xlsx | Sheet 1   | 1         |
      | Home Loan | Credit Approval | LoginDetailsCAS.xlsx | Sheet 1   | 2         |
      | Home Loan | Recommendation  | LoginDetailsCAS.xlsx | Sheet 1   | 3         |
      | Home Loan | Disbursal       | LoginDetailsCAS.xlsx | Sheet 1   | 4         |
      | MHF Loan  | Lead Details    | LoginDetailsCAS.xlsx | Sheet 1   | 5         |
      | MHF Loan  | DDE             | LoginDetailsCAS.xlsx | Sheet 1   | 6         |
      | MHF Loan  | Credit Approval | LoginDetailsCAS.xlsx | Sheet 1   | 7         |
      | MHF Loan  | Recommendation  | LoginDetailsCAS.xlsx | Sheet 1   | 8         |
      | MHF Loan  | Disbursal       | LoginDetailsCAS.xlsx | Sheet 1   | 9         |
      | Omni Loan | Lead Details    | LoginDetailsCAS.xlsx | Sheet 1   | 10        |
      | Omni Loan | DDE             | LoginDetailsCAS.xlsx | Sheet 1   | 11        |
      | Omni Loan | Credit Approval | LoginDetailsCAS.xlsx | Sheet 1   | 12        |
      | Omni Loan | Recommendation  | LoginDetailsCAS.xlsx | Sheet 1   | 13        |
      | Omni Loan | Disbursal       | LoginDetailsCAS.xlsx | Sheet 1   | 14        |

  Scenario Outline: Scenario 6: Valid Data Entry and Save Button
    Given user is Logged into CAS Module With Valid Credentials
    And user has application ID of "<Loan_Type>" on "<StageName>" stage present in "<SourceDataFile>" under "<SheetName>" present at "<RowNumber>"
    And user opens Application Search Grid And Opens The Application
    And user opens the Property Details Page
    And user adds a New Property Details
    And user Fills all mandatory Fields
    When user Click on save Button
    Then the property details should be saved successfully, and a confirmation message should be displayed
    Examples:
      | Loan_Type | StageName       | SourceDataFile       | SheetName | RowNumber |
      | Home Loan | Lead Details    | LoginDetailsCAS.xlsx | Sheet 1   | 0         |
      | Home Loan | DDE             | LoginDetailsCAS.xlsx | Sheet 1   | 1         |
      | Home Loan | Credit Approval | LoginDetailsCAS.xlsx | Sheet 1   | 2         |
      | Home Loan | Recommendation  | LoginDetailsCAS.xlsx | Sheet 1   | 3         |
      | Home Loan | Disbursal       | LoginDetailsCAS.xlsx | Sheet 1   | 4         |
      | MHF Loan  | Lead Details    | LoginDetailsCAS.xlsx | Sheet 1   | 5         |
      | MHF Loan  | DDE             | LoginDetailsCAS.xlsx | Sheet 1   | 6         |
      | MHF Loan  | Credit Approval | LoginDetailsCAS.xlsx | Sheet 1   | 7         |
      | MHF Loan  | Recommendation  | LoginDetailsCAS.xlsx | Sheet 1   | 8         |
      | MHF Loan  | Disbursal       | LoginDetailsCAS.xlsx | Sheet 1   | 9         |
      | Omni Loan | Lead Details    | LoginDetailsCAS.xlsx | Sheet 1   | 10        |
      | Omni Loan | DDE             | LoginDetailsCAS.xlsx | Sheet 1   | 11        |
      | Omni Loan | Credit Approval | LoginDetailsCAS.xlsx | Sheet 1   | 12        |
      | Omni Loan | Recommendation  | LoginDetailsCAS.xlsx | Sheet 1   | 13        |
      | Omni Loan | Disbursal       | LoginDetailsCAS.xlsx | Sheet 1   | 14        |
