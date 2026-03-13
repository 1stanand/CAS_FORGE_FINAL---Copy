@Epic-Loan_Application_Details
@AuthoredBy-vipin.kishor
@ReviewedBy-
@ImplementedBy-vipin.kishor
@TechReviewedBy-
@NotImplemented
@Conventional

Feature:Security interest details

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0



    # ${ ProductType : ["IAF","CON_VEH","Farm Equipment","AGRL"]}
   # ${ ApplicationStage:["LEAD DETAILS","LOGIN ACCEPTANCE","DDE","RECOMMENDATION","CREDIT APPROVAL","RECONSIDERATION"]}
   #FeatureID-ACAUTOCAS-11134
  Scenario Outline:<Field_Name> field validation in new Security Interest Details with <Validity> <InputType> under CERSAI details in asset details
    And user open "<ProductType>" application of individual applicant at "<ApplicationStage>" form application grid
    And user open asset details
    And user open CERSAI tab
    And user open security interest details accordion
    And user clicks on Create New SID
    When user fills "<Validity>" "<Field_Name>" with "<InputType>" in Security Interest Details
    Then "<Field_Name>" field "<Throws_notThrows>" error
    Examples:
      | Field_Name                      | Validity | InputType                       | Throws_notThrows | ApplicationStage   | ProductType   |
      | Transaction Reference Number    | valid    | blank value                     | throw an         | <ApplicationStage> | <ProductType> |
      | Transaction Reference Number    | valid    | minimum length                  | not throw any    | <ApplicationStage> | <ProductType> |
      | Transaction Reference Number    | valid    | maximum length                  | not throw any    | <ApplicationStage> | <ProductType> |
      | Transaction Reference Number    | valid    | in-Between length               | not throw any    | <ApplicationStage> | <ProductType> |
      | Transaction Reference Number    | invalid  | character                       | not throw any    | <ApplicationStage> | <ProductType> |
      | Transaction Reference Number    | invalid  | alphanumeric                    | not throw any    | <ApplicationStage> | <ProductType> |
      | Transaction Reference Number    | invalid  | special character               | not throw any    | <ApplicationStage> | <ProductType> |
      | Security Interest ID            | valid    | blank value                     | throw an         | <ApplicationStage> | <ProductType> |
      | Security Interest ID            | valid    | minimum length                  | not throw any    | <ApplicationStage> | <ProductType> |
      | Security Interest ID            | valid    | maximum length                  | not throw any    | <ApplicationStage> | <ProductType> |
      | Security Interest ID            | valid    | in-Between length               | not throw any    | <ApplicationStage> | <ProductType> |
      | Security Interest ID            | invalid  | more than maximum length        | throw an         | <ApplicationStage> | <ProductType> |
      | Security Interest ID            | invalid  | character                       | not throw any    | <ApplicationStage> | <ProductType> |
      | Security Interest ID            | valid    | alphanumeric                    | not throw any    | <ApplicationStage> | <ProductType> |
      | Security Interest ID            | invalid  | special character               | not throw any    | <ApplicationStage> | <ProductType> |
      | Security Interest ID            | valid    | hyphen between characters       | not throw any    | <ApplicationStage> | <ProductType> |
      | Security Interest ID            | valid    | space between characters        | not throw any    | <ApplicationStage> | <ProductType> |
      | Security Interest ID            | valid    | blank value                     | throw an         | <ApplicationStage> | <ProductType> |
      | Security Interest ID            | valid    | minimum length                  | not throw any    | <ApplicationStage> | <ProductType> |
      | Security Interest ID            | valid    | maximum length                  | not throw any    | <ApplicationStage> | <ProductType> |
      | Security Interest ID            | valid    | in-Between length               | not throw any    | <ApplicationStage> | <ProductType> |
      | Security Interest ID            | invalid  | more than maximum length        | throw an         | <ApplicationStage> | <ProductType> |
      | Security Interest ID            | invalid  | character                       | not throw any    | <ApplicationStage> | <ProductType> |
      | Security Interest ID            | valid    | alphanumeric                    | not throw any    | <ApplicationStage> | <ProductType> |
      | Security Interest ID            | invalid  | special character               | not throw any    | <ApplicationStage> | <ProductType> |
      | Security Interest ID            | valid    | hyphen between characters       | not throw any    | <ApplicationStage> | <ProductType> |
      | Security Interest ID            | valid    | space between characters        | not throw any    | <ApplicationStage> | <ProductType> |
      | No. of Borrowers                | valid    | blank value                     | throw an         | <ApplicationStage> | <ProductType> |
      | No. of Borrowers                | valid    | minimum value                   | not throw any    | <ApplicationStage> | <ProductType> |
      | No. of Borrowers                | valid    | maximum value                   | not throw any    | <ApplicationStage> | <ProductType> |
      | No. of Borrowers                | valid    | in-Between length               | not throw any    | <ApplicationStage> | <ProductType> |
      | No. of Borrowers                | invalid  | more than maximum length        | throw an         | <ApplicationStage> | <ProductType> |
      | No. of Borrowers                | invalid  | character                       | not throw any    | <ApplicationStage> | <ProductType> |
      | No. of Borrowers                | valid    | alphanumeric                    | not throw any    | <ApplicationStage> | <ProductType> |
      | No. of Borrowers                | invalid  | special character               | not throw any    | <ApplicationStage> | <ProductType> |
      | No. of Third Parties            | valid    | blank value                     | throw an         | <ApplicationStage> | <ProductType> |
      | No. of Third Parties            | valid    | minimum value                   | not throw any    | <ApplicationStage> | <ProductType> |
      | No. of Third Parties            | valid    | maximum value                   | not throw any    | <ApplicationStage> | <ProductType> |
      | No. of Third Parties            | valid    | in-Between length               | not throw any    | <ApplicationStage> | <ProductType> |
      | No. of Third Parties            | invalid  | more than maximum length        | throw an         | <ApplicationStage> | <ProductType> |
      | No. of Third Parties            | invalid  | character                       | not throw any    | <ApplicationStage> | <ProductType> |
      | No. of Third Parties            | valid    | alphanumeric                    | not throw any    | <ApplicationStage> | <ProductType> |
      | No. of Third Parties            | invalid  | special character               | not throw any    | <ApplicationStage> | <ProductType> |
      | No. of Documents                | valid    | blank value                     | throw an         | <ApplicationStage> | <ProductType> |
      | No. of Documents                | valid    | minimum value                   | not throw any    | <ApplicationStage> | <ProductType> |
      | No. of Documents                | valid    | maximum value                   | not throw any    | <ApplicationStage> | <ProductType> |
      | No. of Documents                | valid    | in-Between length               | not throw any    | <ApplicationStage> | <ProductType> |
      | No. of Documents                | invalid  | more than maximum length        | throw an         | <ApplicationStage> | <ProductType> |
      | No. of Documents                | invalid  | character                       | not throw any    | <ApplicationStage> | <ProductType> |
      | No. of Documents                | valid    | alphanumeric                    | not throw any    | <ApplicationStage> | <ProductType> |
      | No. of Documents                | invalid  | special character               | not throw any    | <ApplicationStage> | <ProductType> |
      | No. of Loans                    | valid    | blank value                     | throw an         | <ApplicationStage> | <ProductType> |
      | No. of Loans                    | valid    | minimum value                   | not throw any    | <ApplicationStage> | <ProductType> |
      | No. of Loans                    | valid    | maximum value                   | not throw any    | <ApplicationStage> | <ProductType> |
      | No. of Loans                    | valid    | in-Between length               | not throw any    | <ApplicationStage> | <ProductType> |
      | No. of Loans                    | invalid  | more than maximum length        | throw an         | <ApplicationStage> | <ProductType> |
      | No. of Loans                    | invalid  | character                       | not throw any    | <ApplicationStage> | <ProductType> |
      | No. of Loans                    | valid    | alphanumeric                    | not throw any    | <ApplicationStage> | <ProductType> |
      | No. of Loans                    | invalid  | special character               | not throw any    | <ApplicationStage> | <ProductType> |
      | Security Interest Creation Date | invalid  | blank                           | throw an         | <ApplicationStage> | <ProductType> |
      | Security Interest Creation Date | valid    | valid date                      | not throw any    | <ApplicationStage> | <ProductType> |
      | Security Interest Creation Date | invalid  | invalid date                    | throw an         | <ApplicationStage> | <ProductType> |
      | Security Interest Creation Date | invalid  | more than current date          | throw an         | <ApplicationStage> | <ProductType> |
      | Security Interest Creation Date | invalid  | before 1942                     | throw an         | <ApplicationStage> | <ProductType> |
      | Security Interest Creation Date | invalid  | Minimum value (Pas Date)        | throw an         | <ApplicationStage> | <ProductType> |
      | Security Interest Creation Date | invalid  | Maximum value (Pas Date)        | throw an         | <ApplicationStage> | <ProductType> |
      | Security Interest Creation Date | invalid  | In Between value (Present Date) | throw an         | <ApplicationStage> | <ProductType> |


  # ${ ProductType : ["IAF","CON_VEH","Farm Equipment","AGRL"]}
   # ${ ApplicationStage:["LEAD DETAILS","LOGIN ACCEPTANCE","DDE","RECOMMENDATION","CREDIT APPROVAL","RECONSIDERATION"]}
   #FeatureID-ACAUTOCAS-11134
  Scenario Outline:Fields validation after adding new Security Interest Details under CERSAI details in asset details
    And user open "<ProductType>" application of individual applicant at "<ApplicationStage>" form application grid
    And user open asset details
    And user open CERSAI tab
    And user open security interest details accordion
    And user clicks on Create New SID
    And user add new security interest details
    And user close the security interest details accordion
    When user open the security interest details accordion
    Then all field should be non editable
    Examples:
      | ApplicationStage   | ProductType   |
      | <ApplicationStage> | <ProductType> |

#    Transaction number should be unique

     #${ ProductType : ["IAF","CON_VEH","Farm Equipment","AGRL"]}
    #${ ApplicationStage:["LEAD DETAILS","LOGIN ACCEPTANCE","DDE","RECOMMENDATION","CREDIT APPROVAL","RECONSIDERATION"]}
   #FeatureID-ACAUTOCAS-11134
  Scenario Outline:After clicking on Create New SID button it should be removed in Security Interest Details under CERSAI details in asset details
    And user open "<ProductType>" application of individual applicant at "<ApplicationStage>" form application grid
    And user open asset details
    And user open CERSAI tab
    And user open security interest details accordion
    When user clicks on Create New SID
    Then Create New SID button should be removed
    Examples:
      | ApplicationStage   | ProductType   |
      | <ApplicationStage> | <ProductType> |



     # ${ ProductType : ["IAF","CON_VEH","Farm Equipment","AGRL"]}
   # ${ ApplicationStage:["LEAD DETAILS","LOGIN ACCEPTANCE","DDE","RECOMMENDATION","CREDIT APPROVAL","RECONSIDERATION"]}
   #FeatureID-ACAUTOCAS-11134
  Scenario Outline:Create multiple Security Interest Details under CERSAI details in asset details
    And user open "<ProductType>" application of individual applicant at "<ApplicationStage>" form application grid
    And user open asset details
    And user open CERSAI tab
    And user open security interest details accordion
    When user creates multiple security interest details
    Then multiple security interest details should be created
    Examples:
      | ApplicationStage   | ProductType   |
      | <ApplicationStage> | <ProductType> |


      # ${ ProductType : ["IAF","CON_VEH","Farm Equipment","AGRL"]}
   # ${ ApplicationStage:["LEAD DETAILS","LOGIN ACCEPTANCE","DDE","RECOMMENDATION","CREDIT APPROVAL","RECONSIDERATION"]}
   #FeatureID-ACAUTOCAS-11134
  Scenario Outline:Create multiple Security Interest Details with duplicate Transaction Reference Number under CERSAI details in asset details
    And user open "<ProductType>" application of individual applicant at "<ApplicationStage>" form application grid
    And user open asset details
    And user open CERSAI tab
    And user open security interest details accordion
    When user creates multiple security interest details with duplicate Transaction Reference Number
    Then security interest details with duplicate Transaction Reference Number  should not be allowed to add
    Examples:
      | ApplicationStage   | ProductType   |
      | <ApplicationStage> | <ProductType> |


   # ${ ProductType : ["IAF","CON_VEH","Farm Equipment","AGRL"]}
   # ${ ApplicationStage:["LEAD DETAILS","LOGIN ACCEPTANCE","DDE","RECOMMENDATION","CREDIT APPROVAL","RECONSIDERATION"]}
   #FeatureID-ACAUTOCAS-11134
  Scenario Outline:Cancel the creating Security Interest Details under CERSAI details in asset details
    And user open "<ProductType>" application of individual applicant at "<ApplicationStage>" form application grid
    And user open asset details
    And user open CERSAI tab
    And user open security interest details accordion
    And user creates security interest details
    When user cancel the creating security interest details
    Then security interest details accordion should be cancelled
    Examples:
      | ApplicationStage   | ProductType   |
      | <ApplicationStage> | <ProductType> |

